Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.11?download=true
inline.NumInlined: 4347
inline.NumDeleted: 1844
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12assert_readyNCINvMNtB4_8instanceNtBY_8Instance11new_startedNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextE0EB1J_:bb.a

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1263
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 592
  %.val27.i.i.i.i.i = load i64, ptr %i.db, align 8, !range !7, !noalias !1264, !noundef !4 ; 2 uses
  %i.dc = inttoptr i64 %.val27.i.i.i.i.i to ptr
  store ptr %i.dc, ptr %i.w, align 8, !noalias !1263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1263
  store ptr inttoptr (i64 1 to ptr), ptr %i.v, align 8, !noalias !1263
  %i.dd = icmp eq i64 %.val27.i.i.i.i.i, 1
  br i1 %i.dd, label %bb.ae, label %bb.ac, !prof !5

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedINtNtNtB4_3ptr8non_null7NonNullhEBM_ECs7gfv9tzbXmh_6yara_x(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #36
          to label %bb.aa unwind label %bb.ad, !noalias !1264

bb.ad:                                            ; preds = %bb.ac
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1263
  br label %.body.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1263
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 600
  %i.dg = load atomic i64, ptr %i.df monotonic, align 8, !noalias !1264 ; 2 uses
  store i64 %i.dg, ptr %i.u, align 8, !noalias !1263
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %.thread.i.i.i.i.i, label %bb.af, !prof !5

bb.af:                                            ; preds = %bb.ae
  invoke void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @67, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #36
          to label %bb.aa unwind label %bb.ag, !noalias !1264

bb.ag:                                            ; preds = %bb.af
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1263
  br label %.body.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1263
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ae, i64 400
  store ptr %i.da, ptr %i.dj, align 8, !noalias !1263
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 408
  store ptr %i.cq, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1263
  %.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 416
  store i8 0, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1263
  br label %bb.al

.body.i.i.i.i.i:                                  ; preds = %bb.ao, %bb.ak, %bb.ag, %bb.ad, %bb.v
  %.pn18.pn.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.cu, %bb.v ], [ %i.di, %bb.ag ], [ %i.de, %bb.ad ], [ %i.dk, %bb.ak ], [ %i.dn, %bb.ao ]
  store i8 2, ptr %i.ck, align 8, !noalias !1263
  br label %.body.i.i.i.i

bb.ah:                                            ; preds = %bb.t
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #39
          to label %.noexc16.i.i.i.i unwind label %bb.ap, !noalias !1264

.noexc16.i.i.i.i:                                 ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.t
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #39
          to label %.noexc17.i.i.i.i unwind label %bb.ap, !noalias !1264

.noexc17.i.i.i.i:                                 ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.t
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 416
  %.pre22.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !range !20, !noalias !1265
  switch i8 %.pre22.i.i.i.i.i, label %default.unreachable [
    i8 0, label %bb.al
    i8 1, label %bb.am
    i8 2, label %bb.an
  ]

bb.ak:                                            ; preds = %bb.al
  %i.dk = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.dl, align 8, !noalias !1265
  br label %.body.i.i.i.i.i

bb.al:                                            ; preds = %bb.aj, %.thread.i.i.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ae, i64 416 ; 2 uses
  %i.dm = invoke noundef nonnull ptr @_RNvMs_NtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error6macros10formattingNtNtB8_5error5Error16from_format_args(ptr noundef nonnull @76, ptr noundef nonnull inttoptr (i64 147 to ptr))
          to label %bb.aq unwind label %bb.ak, !noalias !1266

bb.am:                                            ; preds = %bb.aj
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #39
          to label %.noexc.i.i.i.i.i unwind label %bb.ao, !noalias !1264

.noexc.i.i.i.i.i:                                 ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.aj
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #39
          to label %.noexc30.i.i.i.i.i unwind label %bb.ao, !noalias !1264

.noexc30.i.i.i.i.i:                               ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.z
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ai, %bb.ah
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.aq:                                            ; preds = %bb.al
  store i8 1, ptr %i.dl, align 8, !noalias !1265
  store i8 1, ptr %i.ck, align 8, !noalias !1263
  store i8 1, ptr %i.cj, align 8, !noalias !1263
  br label %bb.ik

.critedge.i.i.i:                                  ; preds = %bb.n
  store i8 1, ptr %i.bz, align 8, !noalias !1263
  %.phi.trans.insert169.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  %.pre170.i.i.i = load ptr, ptr %.phi.trans.insert169.i.i.i, align 8, !noalias !1263 ; 2 uses
  %.val55.pre.i.i.i = load ptr, ptr %.pre170.i.i.i, align 8, !noalias !1264
  br label %bb.ar

bb.ar:                                            ; preds = %.critedge.i.i.i, %bb.j
  %i.dp = phi ptr [ %i.bw, %.critedge.i.i.i ], [ %i.ba, %bb.j ] ; 3 uses
  %i.dq = phi ptr [ %i.bx, %.critedge.i.i.i ], [ %i.bb, %bb.j ] ; 3 uses
  %.val55.i.i.i = phi ptr [ %.val55.pre.i.i.i, %.critedge.i.i.i ], [ %.val52.i.i.i, %bb.j ]
  %i.dr = phi ptr [ %.pre170.i.i.i, %.critedge.i.i.i ], [ %i.bm, %bb.j ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  %i.dt = getelementptr inbounds nuw i8, ptr %.val55.i.i.i, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.ae, i64 248
  store ptr %i.dt, ptr %i.du, align 8, !noalias !1263
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ae, i64 224 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !1263, !nonnull !4, !align !15, !noundef !4 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 176
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 536
  %i.dz = invoke { i64, ptr } @_RNvMs_NtNtNtCsiOkGTpNE17y_8wasmtime7runtime6module8registryNtB4_14ModuleRegistry15register_module(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dy)
          to label %bb.as unwind label %bb.ax, !noalias !1264 ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %i.ea = extractvalue { i64, ptr } %i.dz, 0
  %i.eb = extractvalue { i64, ptr } %i.dz, 1      ; 2 uses
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = trunc nuw i64 %i.ea to i1
  br i1 %i.ed, label %bb.ik, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9100.i.i.i)
  %i.ee = load ptr, ptr %i.dv, align 8, !noalias !1263, !nonnull !4, !align !15, !noundef !4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ae, i64 232
  %.val53.i.i.i = load ptr, ptr %i.ef, align 8, !noalias !1263, !align !15, !noundef !4
  %i.eg = load ptr, ptr %i.ds, align 8, !noalias !1263, !nonnull !4, !align !15, !noundef !4
  %.val56.i.i.i = load ptr, ptr %i.eg, align 8, !noalias !1264, !nonnull !4, !noundef !4 ; 2 uses
  %i.eh = atomicrmw add ptr %.val56.i.i.i, i64 1 monotonic, align 8, !noalias !1264
  %i.ei = icmp slt i64 %i.eh, 0
  br i1 %i.ei, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @llvm.trap()
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ae, i64 256 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ae, i64 264
  store ptr %.val56.i.i.i, ptr %i.ek, align 8, !noalias !1263
  store i64 0, ptr %i.ej, align 8, !noalias !1263
  %i.el = getelementptr inbounds nuw i8, ptr %i.ae, i64 280 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.9100.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.el, i64 80, i1 false), !noalias !1263
  store ptr %i.ee, ptr %i.el, align 8, !noalias !1263
  %.sroa.899.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 288
  store ptr %i.ej, ptr %.sroa.899.0..sroa_idx.i.i.i, align 8, !noalias !1263
  %.sroa.9100.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.9100.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.9100.i.i.i, i64 80, i1 false), !noalias !1263
  %.sroa.10101.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 376
  store ptr %.val53.i.i.i, ptr %.sroa.10101.0..sroa_idx.i.i.i, align 8, !noalias !1263
  %.sroa.11102.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 384
  store ptr null, ptr %.sroa.11102.0..sroa_idx.i.i.i, align 8, !noalias !1263
  %.sroa.11102.sroa.8.0..sroa.11102.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 392
  store i64 %i.ec, ptr %.sroa.11102.sroa.8.0..sroa.11102.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1263
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 892
  store i8 0, ptr %.sroa.13.0..sroa_idx.i.i.i, align 4, !noalias !1263
  br label %bb.az

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %bb.bk, %bb.bb, %bb.ba
  %.pn36.i.i.i = phi { ptr, i32 } [ %i.ge, %bb.bk ], [ %i.es, %bb.ba ], [ %i.es, %bb.bb ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.ae, i64 256
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm17ModuleRuntimeInfoECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(16) %i.em) #38
          to label %bb.aw unwind label %bb.ay, !noalias !1264

bb.aw:                                            ; preds = %bb.bj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit.i.i.i
  %.pn38.i.i.i = phi { ptr, i32 } [ %i.fm, %bb.bj ], [ %.pn36.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9100.i.i.i)
  br label %.body.i.i.i

bb.ax:                                            ; preds = %bb.if, %bb.ar, %bb.s, %bb.r, %bb.h, %bb.g
  %2 = phi ptr [ %4, %bb.if ], [ %i.dp, %bb.ar ], [ %.phi.trans.insert.i.i, %bb.s ], [ %.phi.trans.insert.i.i, %bb.r ], [ %i.ba, %bb.h ], [ %i.ba, %bb.g ]
  %3 = phi ptr [ %5, %bb.if ], [ %i.dq, %bb.ar ], [ %i.aw, %bb.s ], [ %i.aw, %bb.r ], [ %i.bb, %bb.h ], [ %i.bb, %bb.g ]
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.ay:                                            ; preds = %.body81.i.i.i, %bb.bb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit.i.i.i
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !1264
  unreachable

bb.az:                                            ; preds = %bb.av, %bb.e
  %i.ep = phi ptr [ %i.dp, %bb.av ], [ %.phi.trans.insert.i.i, %bb.e ] ; 4 uses
  %i.eq = phi ptr [ %i.dq, %bb.av ], [ %i.aw, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1263
  %i.er = getelementptr inbounds nuw i8, ptr %i.ae, i64 280 ; 2 uses
  invoke fastcc void @_RNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtB7_11StoreOpaque17allocate_instance0Cs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ab, ptr noundef nonnull align 8 %i.er, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %bb.bc unwind label %bb.ba, !noalias !1264

bb.ba:                                            ; preds = %bb.az
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1263
  %i.et = getelementptr inbounds nuw i8, ptr %i.ae, i64 892
  %i.eu = load i8, ptr %i.et, align 4, !range !12, !noalias !1263, !noundef !4
  %cond.i.i.i.i = icmp eq i8 %i.eu, 3
  br i1 %cond.i.i.i.i, label %bb.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit.i.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ae, i64 424
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs4_NtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocatorDNtBJ_17InstanceAllocatorEL_15allocate_module0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8 %i.ev)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit.i.i.i unwind label %bb.ay, !noalias !1264

bb.bc:                                            ; preds = %bb.az
  %i.ew = load i32, ptr %i.ab, align 8, !range !13, !noalias !1263, !noundef !4 ; 2 uses
  %i.ex = icmp eq i32 %i.ew, 2
  br i1 %i.ex, label %bb.ip, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.sroa.2.0.copyload.i.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 4, !noalias !1263 ; 3 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.3.0.copyload.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !1263 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1263
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ae, i64 892
  %i.ez = load i8, ptr %i.ey, align 4, !range !12, !noalias !1263, !noundef !4
  %cond.i62.i.i.i = icmp eq i8 %i.ez, 3
  br i1 %cond.i62.i.i.i, label %bb.be, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit64.i.i.i

bb.be:                                            ; preds = %bb.bd
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ae, i64 424
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs4_NtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocatorDNtBJ_17InstanceAllocatorEL_15allocate_module0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8 %i.fa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit64.i.i.i unwind label %bb.bk, !noalias !1264

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit64.i.i.i: ; preds = %bb.be, %bb.bd
  %i.fb = trunc nuw i32 %i.ew to i1
  br i1 %i.fb, label %bb.bl, label %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store4data10InstanceIdNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs7gfv9tzbXmh_6yara_x.exit.i.i.i

_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store4data10InstanceIdNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit64.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ae, i64 256
  call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  %i.fd = load i64, ptr %i.fc, align 8, !range !14, !alias.scope !1267, !noalias !1263, !noundef !4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ae, i64 264 ; 4 uses
  %i.ff = icmp eq i64 %i.fd, 0
  br i1 %i.ff, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store4data10InstanceIdNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs7gfv9tzbXmh_6yara_x.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  %i.fg = load ptr, ptr %i.fe, align 8, !alias.scope !1271, !noalias !1263, !nonnull !4, !noundef !4
  %i.fh = atomicrmw add ptr %i.fg, i64 -1 release, align 8, !noalias !1272
  %i.fi = icmp eq i64 %i.fh, 1
  br i1 %i.fi, label %bb.bg, label %.thread259.i.i.i

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6module11ModuleInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fe) #34
          to label %.thread259.i.i.i unwind label %bb.bj, !noalias !1264

bb.bh:                                            ; preds = %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store4data10InstanceIdNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs7gfv9tzbXmh_6yara_x.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  %i.fj = load ptr, ptr %i.fe, align 8, !alias.scope !1275, !noalias !1263, !nonnull !4, !noundef !4
  %i.fk = atomicrmw add ptr %i.fj, i64 -1 release, align 8, !noalias !1276
  %i.fl = icmp eq i64 %i.fk, 1
  br i1 %i.fl, label %bb.bi, label %.thread259.i.i.i

bb.bi:                                            ; preds = %bb.bh
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm14BareModuleInfoE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fe) #34
          to label %.thread259.i.i.i unwind label %bb.bj, !noalias !1264

bb.bj:                                            ; preds = %bb.bp, %bb.bn, %bb.bi, %bb.bg
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.thread259.i.i.i:                                 ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9100.i.i.i)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ae, i64 224
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !1263, !nonnull !4, !align !15, !noundef !4 ; 4 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 544
  %.val57.i.i.i = load i64, ptr %i.fp, align 8, !range !7, !noalias !1264, !noundef !4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ae, i64 672
  store i64 %.val57.i.i.i, ptr %i.fq, align 8, !noalias !1263
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ae, i64 680
  store i32 %.sroa.2.0.copyload.i.i.i, ptr %i.fr, align 8, !noalias !1263
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 536
  %.val58.i.i.i = load ptr, ptr %i.fs, align 8, !noalias !1264, !nonnull !4, !noundef !4
  %i.ft = getelementptr inbounds nuw i8, ptr %.val58.i.i.i, i64 600
  %i.fu = load i64, ptr %i.ft, align 8, !noalias !1264, !noundef !4
  %i.fv = and i64 %i.fu, 34359738400
  %i.fw = icmp eq i64 %i.fv, 34359738400
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ae, i64 232
  %i.fy = load ptr, ptr %i.fx, align 8, !noalias !1263, !align !15, !noundef !4 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ae, i64 248
  %i.ga = load ptr, ptr %i.fz, align 8, !noalias !1263, !nonnull !4, !align !15, !noundef !4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 80
  %.val47.i.i.i = load ptr, ptr %i.gb, align 8, !noalias !1264, !nonnull !4, !noundef !4
  %i.gc = getelementptr inbounds nuw i8, ptr %.val47.i.i.i, i64 16 ; 2 uses
  %i.gd = zext i1 %i.fw to i8                     ; 2 uses
  %.sroa.7118.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 328
  store ptr %i.fy, ptr %.sroa.7118.0..sroa_idx.i.i.i, align 8, !noalias !1263
  %.sroa.9120.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 360
  store ptr %i.fo, ptr %.sroa.9120.0..sroa_idx.i.i.i, align 8, !noalias !1263
  %.sroa.10121.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 368
  store ptr %i.gc, ptr %.sroa.10121.0..sroa_idx.i.i.i, align 8, !noalias !1263
  %.sroa.11122.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 376
  store i32 %.sroa.2.0.copyload.i.i.i, ptr %.sroa.11122.0..sroa_idx.i.i.i, align 8, !noalias !1263
  %.sroa.13124.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 385 ; 2 uses
  store i8 0, ptr %.sroa.13124.0..sroa_idx.i.i.i, align 1, !noalias !1263
  %.sroa.14125.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 386
  store i8 %i.gd, ptr %.sroa.14125.0..sroa_idx.i.i.i, align 2, !noalias !1263
  br label %bb.bs

bb.bk:                                            ; preds = %bb.be
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit.i.i.i

bb.bl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit64.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.i) ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ae, i64 256
  call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  %i.gg = load i64, ptr %i.gf, align 8, !range !14, !alias.scope !1277, !noalias !1263, !noundef !4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ae, i64 264 ; 4 uses
  %i.gi = icmp eq i64 %i.gg, 0
  br i1 %i.gi, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  %i.gj = load ptr, ptr %i.gh, align 8, !alias.scope !1281, !noalias !1263, !nonnull !4, !noundef !4
  %i.gk = atomicrmw add ptr %i.gj, i64 -1 release, align 8, !noalias !1282
  %i.gl = icmp eq i64 %i.gk, 1
  br i1 %i.gl, label %bb.bn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm17ModuleRuntimeInfoECs7gfv9tzbXmh_6yara_x.exit69.i.i.i

bb.bn:                                            ; preds = %bb.bm
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6module11ModuleInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gh) #34
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm17ModuleRuntimeInfoECs7gfv9tzbXmh_6yara_x.exit69.i.i.i unwind label %bb.bj, !noalias !1264

bb.bo:                                            ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  %i.gm = load ptr, ptr %i.gh, align 8, !alias.scope !1285, !noalias !1263, !nonnull !4, !noundef !4
  %i.gn = atomicrmw add ptr %i.gm, i64 -1 release, align 8, !noalias !1286
  %i.go = icmp eq i64 %i.gn, 1
  br i1 %i.go, label %bb.bp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm17ModuleRuntimeInfoECs7gfv9tzbXmh_6yara_x.exit69.i.i.i

bb.bp:                                            ; preds = %bb.bo
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm14BareModuleInfoE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gh) #34
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm17ModuleRuntimeInfoECs7gfv9tzbXmh_6yara_x.exit69.i.i.i unwind label %bb.bj, !noalias !1264

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm17ModuleRuntimeInfoECs7gfv9tzbXmh_6yara_x.exit69.i.i.i: ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9100.i.i.i)
  br label %bb.ik

bb.bq:                                            ; preds = %bb.d
  %.phi.trans.insert173.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 385 ; 12 uses
  %.pre174.i.i.i = load i8, ptr %.phi.trans.insert173.i.i.i, align 1, !range !21, !noalias !1263
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ae, i64 280 ; 12 uses
  switch i8 %.pre174.i.i.i, label %default.unreachable [
    i8 0, label %._crit_edge86.i.i
    i8 1, label %bb.by
    i8 2, label %bb.bz
    i8 3, label %bb.ca
    i8 4, label %bb.dd
    i8 5, label %bb.fx
  ]

._crit_edge86.i.i:                                ; preds = %bb.bq
  %.phi.trans.insert87.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 360
  %.pre88.i.i = load ptr, ptr %.phi.trans.insert87.i.i, align 8, !noalias !1263
  %.phi.trans.insert89.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 328
  %.pre90.i.i = load ptr, ptr %.phi.trans.insert89.i.i, align 8, !noalias !1263
  %.phi.trans.insert91.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 376
  %.pre92.i.i = load i32, ptr %.phi.trans.insert91.i.i, align 8, !noalias !1263
  %.phi.trans.insert93.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 368
  %.pre94.i.i = load ptr, ptr %.phi.trans.insert93.i.i, align 8, !noalias !1263
  %.phi.trans.insert95.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 386
  %.pre96.i.i = load i8, ptr %.phi.trans.insert95.i.i, align 2, !range !6, !noalias !1263
  br label %bb.bs

.body.i70.i.i.i:                                  ; preds = %bb.fu, %.body56.i.i.i.i, %bb.bw, %bb.br
  %i.gq = phi ptr [ %i.hw, %.body56.i.i.i.i ], [ %i.hq, %bb.bw ], [ %i.gu, %bb.br ], [ %i.xh, %bb.fu ]
  %i.gr = phi ptr [ %i.hx, %.body56.i.i.i.i ], [ %i.hr, %bb.bw ], [ %i.gv, %bb.br ], [ %i.xi, %bb.fu ]
  %i.gs = phi ptr [ %i.hy, %.body56.i.i.i.i ], [ %i.hs, %bb.bw ], [ %i.gw, %bb.br ], [ %i.xj, %bb.fu ]
  %i.gt = phi ptr [ %i.hz, %.body56.i.i.i.i ], [ %i.ht, %bb.bw ], [ %i.gx, %bb.br ], [ %i.xk, %bb.fu ]
  %.pn53.i.i.i.i = phi { ptr, i32 } [ %.pn50.pn.i.i.i.i, %.body56.i.i.i.i ], [ %i.hu, %bb.bw ], [ %i.gy, %bb.br ], [ %i.xl, %bb.fu ]
  store i8 2, ptr %i.gs, align 1, !noalias !1263
  br label %.body81.i.i.i

bb.br:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i75.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.gu = phi ptr [ %i.xh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i75.i.i.i.i ], [ %i.hq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ]
  %i.gv = phi ptr [ %i.xi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i75.i.i.i.i ], [ %i.hr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ]
  %i.gw = phi ptr [ %i.xj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i75.i.i.i.i ], [ %i.hs, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ]
  %i.gx = phi ptr [ %i.xk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i75.i.i.i.i ], [ %i.ht, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ]
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i70.i.i.i

bb.bs:                                            ; preds = %._crit_edge86.i.i, %.thread259.i.i.i
  %i.gz = phi ptr [ %i.ep, %.thread259.i.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge86.i.i ] ; 3 uses
  %i.ha = phi ptr [ %i.eq, %.thread259.i.i.i ], [ %i.aw, %._crit_edge86.i.i ] ; 3 uses
  %i.hb = phi i8 [ %i.gd, %.thread259.i.i.i ], [ %.pre96.i.i, %._crit_edge86.i.i ] ; 2 uses
  %i.hc = phi ptr [ %i.gc, %.thread259.i.i.i ], [ %.pre94.i.i, %._crit_edge86.i.i ] ; 3 uses
  %i.hd = phi i32 [ %.sroa.2.0.copyload.i.i.i, %.thread259.i.i.i ], [ %.pre92.i.i, %._crit_edge86.i.i ] ; 2 uses
  %i.he = phi ptr [ %i.fy, %.thread259.i.i.i ], [ %.pre90.i.i, %._crit_edge86.i.i ] ; 2 uses
  %i.hf = phi ptr [ %i.fo, %.thread259.i.i.i ], [ %.pre88.i.i, %._crit_edge86.i.i ] ; 3 uses
  %i.hg = phi ptr [ %.sroa.13124.0..sroa_idx.i.i.i, %.thread259.i.i.i ], [ %.phi.trans.insert173.i.i.i, %._crit_edge86.i.i ] ; 3 uses
  %i.hh = phi ptr [ %i.er, %.thread259.i.i.i ], [ %i.gp, %._crit_edge86.i.i ] ; 7 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ae, i64 336 ; 2 uses
  store ptr %i.hf, ptr %i.hi, align 8, !noalias !1263
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ae, i64 344 ; 2 uses
  store ptr %i.he, ptr %i.hj, align 8, !noalias !1263
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ae, i64 352 ; 2 uses
  store ptr %i.hc, ptr %i.hk, align 8, !noalias !1263, !captures !25
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ae, i64 384
  store i8 %i.hb, ptr %i.hl, align 8, !noalias !1263
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ae, i64 380 ; 4 uses
  store i32 %i.hd, ptr %i.hm, align 4, !noalias !1263
  store i64 0, ptr %i.hh, align 8, !alias.scope !1287, !noalias !1263
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 288
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !1287, !noalias !1263
  %.sroa.5.0..sroa_idx.i.i79.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 296
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i79.i.i.i, align 8, !alias.scope !1287, !noalias !1263
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ae, i64 304
  store i8 0, ptr %i.hn, align 8, !alias.scope !1287, !noalias !1263
  %.sroa.43.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 308
  store i32 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i, align 4, !alias.scope !1287, !noalias !1263
  %i.ho = trunc nuw i8 %i.hb to i1
  br i1 %i.ho, label %.thread166.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hp = invoke noundef ptr @_RNvNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator17check_init_bounds(ptr noundef nonnull align 8 %i.hf, i32 noundef %i.hd, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.hm, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.hh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.hc)
          to label %bb.bu unwind label %bb.fw, !noalias !1264 ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  %.not.i80.i.i.i = icmp eq ptr %i.hp, null
  br i1 %.not.i80.i.i.i, label %._crit_edge.i.i.i.i, label %bb.bv

._crit_edge.i.i.i.i:                              ; preds = %bb.bu
  %.pre.i.i.i.i = load ptr, ptr %i.hi, align 8, !noalias !1263
  %.val55.pre.i.i.i.i = load ptr, ptr %i.hj, align 8, !noalias !1263
  %.pre105.i.i.i.i = load ptr, ptr %i.hk, align 8, !noalias !1263
  br label %.thread166.i.i.i.i

bb.bv:                                            ; preds = %bb.id, %.thread54.i.i.i.i, %.thread61.i.i.i.i, %bb.fr, %bb.fp, %.thread46.i.i.i.i, %bb.db, %.thread42.i.i.i.i, %bb.bu
  %i.hq = phi ptr [ %i.wu, %bb.fr ], [ %i.ka, %bb.db ], [ %i.gz, %bb.bu ], [ %i.wp, %bb.fp ], [ %i.kl, %.thread42.i.i.i.i ], [ %i.wk, %.thread46.i.i.i.i ], [ %i.ahf, %.thread54.i.i.i.i ], [ %i.afi, %bb.id ], [ %i.zl, %.thread61.i.i.i.i ] ; 3 uses
  %i.hr = phi ptr [ %i.wv, %bb.fr ], [ %i.kb, %bb.db ], [ %i.ha, %bb.bu ], [ %i.wq, %bb.fp ], [ %i.km, %.thread42.i.i.i.i ], [ %i.wl, %.thread46.i.i.i.i ], [ %i.ahg, %.thread54.i.i.i.i ], [ %i.afj, %bb.id ], [ %i.zm, %.thread61.i.i.i.i ] ; 3 uses
  %i.hs = phi ptr [ %i.ww, %bb.fr ], [ %i.kc, %bb.db ], [ %i.hg, %bb.bu ], [ %i.wr, %bb.fp ], [ %i.kn, %.thread42.i.i.i.i ], [ %i.wm, %.thread46.i.i.i.i ], [ %i.ahh, %.thread54.i.i.i.i ], [ %i.afk, %bb.id ], [ %i.zn, %.thread61.i.i.i.i ] ; 3 uses
  %i.ht = phi ptr [ %i.wx, %bb.fr ], [ %i.kd, %bb.db ], [ %i.hh, %bb.bu ], [ %i.ws, %bb.fp ], [ %i.ko, %.thread42.i.i.i.i ], [ %i.wn, %.thread46.i.i.i.i ], [ %i.ahi, %.thread54.i.i.i.i ], [ %i.afl, %bb.id ], [ %i.zo, %.thread61.i.i.i.i ] ; 6 uses
  %.sroa.025.0.i.i.i.i = phi ptr [ %i.xd, %bb.fr ], [ %i.kj, %bb.db ], [ %i.hp, %bb.bu ], [ %.sroa.039.1.i.i.i.i.i, %bb.fp ], [ %i.lx, %.thread42.i.i.i.i ], [ %.sroa.039.1.i.ph.i.i.i.i, %.thread46.i.i.i.i ], [ %.sroa.029.0.i.ph.i.i.i.i, %.thread54.i.i.i.i ], [ %.sroa.029.5.i.i.i.i.i, %bb.id ], [ %i.aev, %.thread61.i.i.i.i ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ht)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i unwind label %bb.bw, !noalias !1264

bb.bw:                                            ; preds = %bb.bv
  %i.hu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ht)
          to label %.body.i70.i.i.i unwind label %bb.bx, !noalias !1264

bb.bx:                                            ; preds = %bb.bw
  %i.hv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !1264
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.bv
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ht)
          to label %bb.if unwind label %bb.br, !noalias !1264

.body56.i.i.i.i:                                  ; preds = %.body94.i.i.i.i, %bb.fw, %.body.i.i71.i.i.i, %bb.cf
  %i.hw = phi ptr [ %i.nl, %.body.i.i71.i.i.i ], [ %i.jh, %bb.cf ], [ %i.xs, %bb.fw ], [ %i.aha, %.body94.i.i.i.i ]
  %i.hx = phi ptr [ %i.nm, %.body.i.i71.i.i.i ], [ %i.ji, %bb.cf ], [ %i.xt, %bb.fw ], [ %i.ahb, %.body94.i.i.i.i ]
  %i.hy = phi ptr [ %i.nn, %.body.i.i71.i.i.i ], [ %i.jj, %bb.cf ], [ %i.xu, %bb.fw ], [ %i.ahc, %.body94.i.i.i.i ]
  %i.hz = phi ptr [ %i.no, %.body.i.i71.i.i.i ], [ %i.jk, %bb.cf ], [ %i.xv, %bb.fw ], [ %i.ahd, %.body94.i.i.i.i ] ; 2 uses
  %.pn50.pn.i.i.i.i = phi { ptr, i32 } [ %.pn85.pn.pn.pn.i.i.i.i.i, %.body.i.i71.i.i.i ], [ %.pn31.pn.pn.pn.pn.pn.pn.i.i.i.i.i, %bb.cf ], [ %i.xw, %bb.fw ], [ %eh.lpad-body95.i.i.i.i, %.body94.i.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm10const_expr18ConstExprEvaluatorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.hz) #38
          to label %.body.i70.i.i.i unwind label %bb.dc, !noalias !1264

.thread166.i.i.i.i:                               ; preds = %._crit_edge.i.i.i.i, %bb.bs
  %i.ia = phi ptr [ %.pre105.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.hc, %bb.bs ] ; 2 uses
  %.val55.i.i.i.i = phi ptr [ %.val55.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.he, %bb.bs ] ; 2 uses
  %i.ib = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.hf, %bb.bs ] ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ae, i64 392 ; 2 uses
  store ptr %i.ib, ptr %i.ic, align 8, !noalias !1263
  %.sroa.73.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 400
  store ptr %i.hm, ptr %.sroa.73.0..sroa_idx.i.i.i.i, align 8, !noalias !1263
  %.sroa.84.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 408
  store ptr %i.hh, ptr %.sroa.84.0..sroa_idx.i.i.i.i, align 8, !noalias !1263
  %.sroa.95.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 416
  store ptr %i.ia, ptr %.sroa.95.0..sroa_idx.i.i.i.i, align 8, !noalias !1263
  %.sroa.106.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 424
  store ptr %.val55.i.i.i.i, ptr %.sroa.106.0..sroa_idx.i.i.i.i, align 8, !noalias !1263
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 596 ; 2 uses
  store i8 0, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 4, !noalias !1263
  br label %bb.cb

bb.by:                                            ; preds = %bb.bq
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #39
          to label %.noexc83.i.i.i unwind label %bb.ie, !noalias !1264

.noexc83.i.i.i:                                   ; preds = %bb.by
  unreachable

bb.bz:                                            ; preds = %bb.bq
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #39
          to label %.noexc84.i.i.i unwind label %bb.ie, !noalias !1264

.noexc84.i.i.i:                                   ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %bb.bq
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 596 ; 3 uses
  %.pre107.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !range !12, !noalias !1263
  %i.id = getelementptr inbounds nuw i8, ptr %i.ae, i64 392 ; 3 uses
  switch i8 %.pre107.i.i.i.i, label %default.unreachable [
    i8 0, label %._crit_edge175.i.i.i
    i8 1, label %.invoke.i.i.i.i
    i8 2, label %.invoke186.i.i.i.i
    i8 3, label %bb.ci
  ]

._crit_edge175.i.i.i:                             ; preds = %bb.ca
  %.pre176.i.i.i = load ptr, ptr %i.id, align 8, !noalias !1263
  %.phi.trans.insert177.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 424
  %.pre178.i.i.i = load ptr, ptr %.phi.trans.insert177.i.i.i, align 8, !noalias !1263
  %.phi.trans.insert179.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 400
  %.pre180.i.i.i = load ptr, ptr %.phi.trans.insert179.i.i.i, align 8, !noalias !1263
  %.phi.trans.insert181.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 408
  %.pre182.i.i.i = load ptr, ptr %.phi.trans.insert181.i.i.i, align 8, !noalias !1263
  %.phi.trans.insert183.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 416
  %.pre184.i.i.i = load ptr, ptr %.phi.trans.insert183.i.i.i, align 8, !noalias !1263
  br label %bb.cb

bb.cb:                                            ; preds = %._crit_edge175.i.i.i, %.thread166.i.i.i.i
  %i.ie = phi ptr [ %i.gz, %.thread166.i.i.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge175.i.i.i ] ; 3 uses
  %i.if = phi ptr [ %i.ha, %.thread166.i.i.i.i ], [ %i.aw, %._crit_edge175.i.i.i ] ; 3 uses
  %i.ig = phi ptr [ %i.hg, %.thread166.i.i.i.i ], [ %.phi.trans.insert173.i.i.i, %._crit_edge175.i.i.i ] ; 3 uses
  %i.ih = phi ptr [ %i.hh, %.thread166.i.i.i.i ], [ %i.gp, %._crit_edge175.i.i.i ] ; 3 uses
  %i.ii = phi ptr [ %i.ia, %.thread166.i.i.i.i ], [ %.pre184.i.i.i, %._crit_edge175.i.i.i ] ; 4 uses
  %i.ij = phi ptr [ %i.hh, %.thread166.i.i.i.i ], [ %.pre182.i.i.i, %._crit_edge175.i.i.i ]
  %i.ik = phi ptr [ %i.hm, %.thread166.i.i.i.i ], [ %.pre180.i.i.i, %._crit_edge175.i.i.i ] ; 2 uses
  %i.il = phi ptr [ %.val55.i.i.i.i, %.thread166.i.i.i.i ], [ %.pre178.i.i.i, %._crit_edge175.i.i.i ]
  %i.im = phi ptr [ %i.ib, %.thread166.i.i.i.i ], [ %.pre176.i.i.i, %._crit_edge175.i.i.i ] ; 3 uses
  %i.in = phi ptr [ %.sroa.12.0..sroa_idx.i.i.i.i, %.thread166.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i, %._crit_edge175.i.i.i ] ; 3 uses
  %i.io = phi ptr [ %i.ic, %.thread166.i.i.i.i ], [ %i.id, %._crit_edge175.i.i.i ]
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ae, i64 432
  store ptr %i.il, ptr %i.ip, align 8, !noalias !1263
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ae, i64 440
  store ptr %i.ik, ptr %i.iq, align 8, !noalias !1263
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ae, i64 448
  store ptr %i.ij, ptr %i.ir, align 8, !noalias !1263
  %i.is = getelementptr inbounds nuw i8, ptr %i.ae, i64 456
  store ptr %i.ii, ptr %i.is, align 8, !noalias !1263, !captures !25
  %i.it = load i32, ptr %i.ik, align 4, !noalias !1264, !noundef !4
  %i.iu = zext i32 %i.it to i64                   ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.im, i64 168
  %i.iw = load i64, ptr %i.iv, align 8, !alias.scope !1288, !noalias !1264, !noundef !4 ; 2 uses
  %i.ix = icmp ugt i64 %i.iw, %i.iu
  br i1 %i.ix, label %bb.cc, label %.invoke.i.i.i.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.iy = getelementptr inbounds nuw i8, ptr %i.im, i64 160
  %i.iz = load ptr, ptr %i.iy, align 8, !alias.scope !1288, !noalias !1264, !nonnull !4, !noundef !4
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %i.iz, i64 %i.iu
  %i.jb = load ptr, ptr %i.ja, align 8, !noalias !1264, !nonnull !4, !noundef !4 ; 2 uses
  %i.jc = getelementptr i8, ptr %i.jb, i64 8
  %.val41.i.i.i.i.i = load i64, ptr %i.jc, align 8, !range !14, !noalias !1264, !noundef !4
  %i.jd = getelementptr i8, ptr %i.jb, i64 16
  %.val42.i.i.i.i.i = load ptr, ptr %i.jd, align 8, !noalias !1264
  %i.je = trunc nuw i64 %.val41.i.i.i.i.i to i1
  %.sroa.0.0.v.i.i.i.i.i.i = select i1 %i.je, i64 64, i64 96
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val42.i.i.i.i.i, i64 %.sroa.0.0.v.i.i.i.i.i.i
  %.val39.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !noalias !1264, !nonnull !4, !noundef !4
  %i.jf = getelementptr inbounds nuw i8, ptr %.val39.i.i.i.i.i, i64 16
  %i.jg = icmp eq ptr %i.jf, %i.ii
  br i1 %i.jg, label %bb.cg, label %bb.cd, !prof !5

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 89, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #36
          to label %bb.ce unwind label %bb.cx, !noalias !1264

bb.ce:                                            ; preds = %bb.cd
  unreachable

bb.cf:                                            ; preds = %bb.da, %bb.cx
  %i.jh = phi ptr [ %i.kl, %bb.da ], [ %i.mj, %bb.cx ]
  %i.ji = phi ptr [ %i.km, %bb.da ], [ %i.mk, %bb.cx ]
  %i.jj = phi ptr [ %i.kn, %bb.da ], [ %i.ml, %bb.cx ]
  %i.jk = phi ptr [ %i.ko, %bb.da ], [ %i.mm, %bb.cx ]
  %i.jl = phi ptr [ %i.kp, %bb.da ], [ %i.mn, %bb.cx ]
  %.pn31.pn.pn.pn.pn.pn.pn.i.i.i.i.i = phi { ptr, i32 } [ %.pn31.pn.i.i.i.i.i, %bb.da ], [ %i.mo, %bb.cx ]
  store i8 2, ptr %i.jl, align 4, !noalias !1263
  br label %.body56.i.i.i.i

bb.cg:                                            ; preds = %bb.cc
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ae, i64 464
  store ptr %i.im, ptr %i.jm, align 8, !noalias !1263
  %i.jn = getelementptr i8, ptr %i.ii, i64 400
  %.val43.i.i.i.i.i = load ptr, ptr %i.jn, align 8, !noalias !1264, !nonnull !4, !noundef !4 ; 3 uses
  %i.jo = getelementptr i8, ptr %i.ii, i64 408
  %.val44.i.i.i.i.i = load i64, ptr %i.jo, align 8, !noalias !1264, !noundef !4
  %i.jp = getelementptr inbounds nuw [80 x i8], ptr %.val43.i.i.i.i.i, i64 %.val44.i.i.i.i.i ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ae, i64 472
  store ptr %.val43.i.i.i.i.i, ptr %i.jq, align 8, !noalias !1263
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 480
  store ptr %i.jp, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1263
  %.sroa.8.0..sroa_idx.i.i78.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 488
  store i64 0, ptr %.sroa.8.0..sroa_idx.i.i78.i.i.i, align 8, !noalias !1263
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cp, %bb.cg
  %i.jr = phi ptr [ %i.kl, %bb.cp ], [ %i.ie, %bb.cg ] ; 8 uses
  %i.js = phi ptr [ %i.km, %bb.cp ], [ %i.if, %bb.cg ] ; 8 uses
  %i.jt = phi ptr [ %i.kn, %bb.cp ], [ %i.ig, %bb.cg ] ; 8 uses
  %i.ju = phi ptr [ %i.ko, %bb.cp ], [ %i.ih, %bb.cg ] ; 8 uses
  %i.jv = phi ptr [ %i.kp, %bb.cp ], [ %i.in, %bb.cg ] ; 8 uses
  %i.jw = phi ptr [ %i.kq, %bb.cp ], [ %i.io, %bb.cg ] ; 7 uses
  %i.jx = phi ptr [ %.pre20.i.i.i.i.i, %bb.cp ], [ %i.jp, %bb.cg ]
  %i.jy = phi ptr [ %.pre.i.i75.i.i.i, %bb.cp ], [ %.val43.i.i.i.i.i, %bb.cg ] ; 4 uses
  %i.jz = icmp eq ptr %i.jy, %i.jx
  br i1 %i.jz, label %.thread.i.i.i.i, label %bb.cq

.thread.i.i.i.i:                                  ; preds = %bb.ch
  store i8 1, ptr %i.jv, align 4, !noalias !1263
  br label %.thread167.i.i.i.i

bb.ci:                                            ; preds = %bb.cy, %bb.ca
  %i.ka = phi ptr [ %i.jr, %bb.cy ], [ %.phi.trans.insert.i.i, %bb.ca ] ; 4 uses
  %i.kb = phi ptr [ %i.js, %bb.cy ], [ %i.aw, %bb.ca ] ; 4 uses
  %i.kc = phi ptr [ %i.jt, %bb.cy ], [ %.phi.trans.insert173.i.i.i, %bb.ca ] ; 4 uses
  %i.kd = phi ptr [ %i.ju, %bb.cy ], [ %i.gp, %bb.ca ] ; 4 uses
  %i.ke = phi ptr [ %i.jv, %bb.cy ], [ %.phi.trans.insert.i.i.i.i, %bb.ca ] ; 3 uses
  %i.kf = phi ptr [ %i.jw, %bb.cy ], [ %i.id, %bb.ca ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ae, i64 496
  %i.kh = invoke fastcc { i64, ptr } @_RNCNvMs0_NtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm10const_exprNtB7_18ConstExprEvaluator4eval0Cs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8 %i.kg)
          to label %bb.cj unwind label %bb.cx, !noalias !1264 ; 2 uses

bb.cj:                                            ; preds = %bb.ci
  %i.ki = extractvalue { i64, ptr } %i.kh, 0
  %i.kj = extractvalue { i64, ptr } %i.kh, 1      ; 3 uses
  %i.kk = trunc nuw i64 %i.ki to i1
  br i1 %i.kk, label %bb.db, label %_RNvMs0_NtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm10const_exprNtB5_18ConstExprEvaluator10try_simple.exit.thread.i.i.i.i.i

_RNvMs0_NtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm10const_exprNtB5_18ConstExprEvaluator10try_simple.exit.thread.i.i.i.i.i: ; preds = %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cj
  %i.kl = phi ptr [ %i.jr, %bb.cw ], [ %i.jr, %bb.cs ], [ %i.jr, %bb.ct ], [ %i.jr, %bb.cu ], [ %i.jr, %bb.cv ], [ %i.ka, %bb.cj ] ; 4 uses
  %i.km = phi ptr [ %i.js, %bb.cw ], [ %i.js, %bb.cs ], [ %i.js, %bb.ct ], [ %i.js, %bb.cu ], [ %i.js, %bb.cv ], [ %i.kb, %bb.cj ] ; 4 uses
  %i.kn = phi ptr [ %i.jt, %bb.cw ], [ %i.jt, %bb.cs ], [ %i.jt, %bb.ct ], [ %i.jt, %bb.cu ], [ %i.jt, %bb.cv ], [ %i.kc, %bb.cj ] ; 4 uses
  %i.ko = phi ptr [ %i.ju, %bb.cw ], [ %i.ju, %bb.cs ], [ %i.ju, %bb.ct ], [ %i.ju, %bb.cu ], [ %i.ju, %bb.cv ], [ %i.kd, %bb.cj ] ; 4 uses
  %i.kp = phi ptr [ %i.jv, %bb.cw ], [ %i.jv, %bb.cs ], [ %i.jv, %bb.ct ], [ %i.jv, %bb.cu ], [ %i.jv, %bb.cv ], [ %i.ke, %bb.cj ] ; 4 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12assert_readyNCINvMNtB4_8instanceNtBY_8Instance11new_startedNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextE0EB1J_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1263
  %.val109.i.i.i.i.i = load ptr, ptr %i.ul, align 8, !noalias !1264, !nonnull !4, !noundef !4 ; 2 uses
  %i.um = getelementptr i8, ptr %i.qu, i64 16
  %.val110.i.i.i.i.i = load i64, ptr %i.um, align 16, !noalias !1264, !noundef !4
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %.val109.i.i.i.i.i, i64 %.val110.i.i.i.i.i
  invoke void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangeyEINtNtNtBb_5slice4iter4IterNtNtCsbhAup8j5lif_16wasmtime_environ5types9FuncIndexEEINtB5_7ZipImplBW_B1o_E3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, i64 noundef %i.tm, i64 noundef %i.to, ptr noundef nonnull %.val109.i.i.i.i.i, ptr noundef nonnull %i.un)
          to label %bb.fg unwind label %bb.ff, !noalias !1264

bb.ff:                                            ; preds = %bb.fe
  %i.uo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1263
  br label %.body.i.i71.i.i.i

bb.fg:                                            ; preds = %bb.fe
  %.sroa.034.0.copyload.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !1303, !noalias !1263 ; 2 uses
  %.sroa.736.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.736.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.736.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !1303, !noalias !1263
  %.sroa.938.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.938.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.938.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !1303, !noalias !1263 ; 3 uses
  %.sroa.1039.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.1039.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.1039.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !1303, !noalias !1263 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1263
  %i.up = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.uq = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.1039.0.copyload.i.i.i.i.i, i64 %.sroa.938.0.copyload.i.i.i.i.i)
  %exitcond.not.i.i.i.i.i135.not = icmp ult i64 %.sroa.938.0.copyload.i.i.i.i.i, %.sroa.1039.0.copyload.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i135.not, label %.lr.ph.preheader, label %.thread88.i.i.i.i.i

.lr.ph.preheader:                                 ; preds = %bb.fg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.034.0.copyload.i.i.i.i.i) ]
  br label %.lr.ph

bb.fh:                                            ; preds = %bb.fl
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ur, %umax.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.thread88.i.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.fh
  %.sroa.732.0.i.i.i.i.i136 = phi i64 [ %i.ur, %bb.fh ], [ %.sroa.938.0.copyload.i.i.i.i.i, %.lr.ph.preheader ] ; 3 uses
  %i.ur = add i64 %.sroa.732.0.i.i.i.i.i136, 1    ; 2 uses
  %i.us = add nuw i64 %.sroa.732.0.i.i.i.i.i136, %.sroa.736.0.copyload.i.i.i.i.i
  %i.ut = load ptr, ptr %i.sp, align 8, !noalias !1263, !nonnull !4, !align !15, !noundef !4 ; 3 uses
  %i.uu = load ptr, ptr %i.sr, align 8, !noalias !1263, !nonnull !4, !align !26, !noundef !4
  %i.uv = load i32, ptr %i.uu, align 4, !noalias !1264, !noundef !4
  %i.uw = zext i32 %i.uv to i64                   ; 3 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ut, i64 168
  %i.uy = load i64, ptr %i.ux, align 8, !alias.scope !1304, !noalias !1264, !noundef !4 ; 2 uses
  %i.uz = icmp ugt i64 %i.uy, %i.uw
  br i1 %i.uz, label %bb.fi, label %.invoke.i59.i.i.i.i

.invoke.i59.i.i.i.i:                              ; preds = %.lr.ph, %bb.ey, %bb.eu
  %i.va = phi i64 [ %i.tt, %bb.ey ], [ %i.tf, %bb.eu ], [ %i.uw, %.lr.ph ]
  %i.vb = phi i64 [ %i.tv, %bb.ey ], [ %.val106.i.i.i.i.i, %bb.eu ], [ %i.uy, %.lr.ph ]
  %i.vc = phi ptr [ @225, %bb.ey ], [ @95, %bb.eu ], [ @357, %.lr.ph ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.va, i64 noundef %i.vb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vc) #39
          to label %.cont.i60.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !1264

.cont.i60.i.i.i.i:                                ; preds = %.invoke.i59.i.i.i.i
  unreachable

bb.fi:                                            ; preds = %.lr.ph
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.034.0.copyload.i.i.i.i.i, i64 %.sroa.732.0.i.i.i.i.i136
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ut, i64 160
  %i.vf = load ptr, ptr %i.ve, align 8, !alias.scope !1304, !noalias !1264, !nonnull !4, !noundef !4
  %i.vg = getelementptr inbounds nuw [16 x i8], ptr %i.vf, i64 %i.uw
  %i.vh = load ptr, ptr %i.vg, align 8, !noalias !1264, !nonnull !4, !noundef !4
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ut, i64 176
  %i.vj = load i32, ptr %i.vd, align 4, !noalias !1264, !noundef !4
  %i.vk = invoke { i64, ptr } @_RNvMNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instanceNtB2_8Instance17get_exported_func(ptr noundef nonnull align 16 %i.vh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %i.vi, i64 noundef %.val.i61.i.i.i.i, i32 noundef %i.vj)
          to label %bb.fk unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.i.i.i.i, !noalias !1264 ; 2 uses

bb.fj:                                            ; preds = %bb.fk
  %i.vl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1263
  br label %.body.i.i71.i.i.i

bb.fk:                                            ; preds = %bb.fi
  %i.vm = extractvalue { i64, ptr } %i.vk, 1
  %i.vn = extractvalue { i64, ptr } %i.vk, 0
  %i.vo = load ptr, ptr %i.sp, align 8, !noalias !1263, !nonnull !4, !align !15, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1263
  store i64 %i.vn, ptr %i.up, align 8, !alias.scope !1305, !noalias !1263
  store ptr %i.vm, ptr %i.uq, align 8, !alias.scope !1305, !noalias !1263
  store i64 0, ptr %i.m, align 8, !alias.scope !1305, !noalias !1263
  %i.vp = invoke noundef ptr @_RNvMNtNtNtCsiOkGTpNE17y_8wasmtime7runtime9externals5tableNtB2_5Table4set_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.uc, ptr noundef nonnull align 8 %i.vo, i64 noundef %i.us, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
          to label %bb.fl unwind label %bb.fj, !noalias !1264 ; 2 uses

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1263
  %.not47.i.i.i.i.i = icmp eq ptr %i.vp, null
  br i1 %.not47.i.i.i.i.i, label %bb.fh, label %.thread46.i.i.i.i

bb.fm:                                            ; preds = %bb.fd
  %i.vq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1263
  br label %.body.i.i71.i.i.i

bb.fn:                                            ; preds = %bb.fd
  %i.vr = getelementptr inbounds nuw i8, ptr %i.ae, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.vr, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.l, i64 48, i1 false), !noalias !1263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1263
  br label %bb.en

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.i.i.i.i: ; preds = %bb.fi
  %lpad.loopexit85.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i71.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.i.i: ; preds = %.invoke.i59.i.i.i.i, %.invoke145.i.i.i.i.i, %bb.fa, %bb.ez, %bb.ew, %bb.ev, %bb.eo, %bb.ed, %bb.dg
  %i.vs = phi ptr [ %i.rf, %bb.ed ], [ %i.qo, %.invoke.i59.i.i.i.i ], [ %i.qo, %.invoke145.i.i.i.i.i ], [ %i.qo, %bb.fa ], [ %i.qo, %bb.ez ], [ %i.qo, %bb.ew ], [ %i.qo, %bb.ev ], [ %i.qo, %bb.eo ], [ %i.oq, %bb.dg ]
  %i.vt = phi ptr [ %i.rg, %bb.ed ], [ %i.qp, %.invoke.i59.i.i.i.i ], [ %i.qp, %.invoke145.i.i.i.i.i ], [ %i.qp, %bb.fa ], [ %i.qp, %bb.ez ], [ %i.qp, %bb.ew ], [ %i.qp, %bb.ev ], [ %i.qp, %bb.eo ], [ %i.or, %bb.dg ]
  %i.vu = phi ptr [ %i.rh, %bb.ed ], [ %i.qq, %.invoke.i59.i.i.i.i ], [ %i.qq, %.invoke145.i.i.i.i.i ], [ %i.qq, %bb.fa ], [ %i.qq, %bb.ez ], [ %i.qq, %bb.ew ], [ %i.qq, %bb.ev ], [ %i.qq, %bb.eo ], [ %i.os, %bb.dg ]
  %i.vv = phi ptr [ %i.ri, %bb.ed ], [ %i.qr, %.invoke.i59.i.i.i.i ], [ %i.qr, %.invoke145.i.i.i.i.i ], [ %i.qr, %bb.fa ], [ %i.qr, %bb.ez ], [ %i.qr, %bb.ew ], [ %i.qr, %bb.ev ], [ %i.qr, %bb.eo ], [ %i.ot, %bb.dg ]
  %i.vw = phi ptr [ %i.rj, %bb.ed ], [ %i.qs, %.invoke.i59.i.i.i.i ], [ %i.qs, %.invoke145.i.i.i.i.i ], [ %i.qs, %bb.fa ], [ %i.qs, %bb.ez ], [ %i.qs, %bb.ew ], [ %i.qs, %bb.ev ], [ %i.qs, %bb.eo ], [ %i.ou, %bb.dg ]
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i71.i.i.i

bb.fo:                                            ; preds = %bb.en
  %i.vx = getelementptr inbounds nuw i8, ptr %i.ae, i64 528
  %i.vy = add nuw i64 %i.sc, 1
  store i64 %i.vy, ptr %i.sb, align 8, !alias.scope !1299, !noalias !1263
  %i.vz = getelementptr inbounds nuw i8, ptr %i.ae, i64 544
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.vz, align 8, !alias.scope !1306, !noalias !1263, !noundef !4
  %i.wa = add nuw i64 %.val.i.i.i.i.i.i.i, %i.sc
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.vx, align 8, !alias.scope !1299, !noalias !1263, !nonnull !4, !noundef !4
  %i.wb = getelementptr inbounds nuw [80 x i8], ptr %.val1.i.i.i.i.i.i.i, i64 %i.sc
  %i.wc = getelementptr inbounds nuw i8, ptr %i.ae, i64 504
  store i64 %i.wa, ptr %i.wc, align 8, !noalias !1263
  %i.wd = getelementptr inbounds nuw i8, ptr %i.ae, i64 448
  %i.we = load ptr, ptr %i.wd, align 8, !noalias !1263, !nonnull !4, !align !15, !noundef !4
  %i.wf = getelementptr inbounds nuw i8, ptr %i.ae, i64 432
  %.val94.i.i.i.i.i = load ptr, ptr %i.wf, align 8, !noalias !1263, !align !15, !noundef !4
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ae, i64 464
  %i.wh = getelementptr inbounds nuw i8, ptr %i.ae, i64 440
  %i.wi = load ptr, ptr %i.wh, align 8, !noalias !1263, !nonnull !4, !align !26, !noundef !4
  %i.wj = getelementptr inbounds nuw i8, ptr %i.ae, i64 576
  store ptr %i.we, ptr %i.wj, align 8, !noalias !1263
  %.sroa.749.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 584
  store ptr %i.wg, ptr %.sroa.749.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1263
  %.sroa.850.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 592
  store ptr %i.wi, ptr %.sroa.850.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1263
  %.sroa.951.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 600
  store ptr %i.wb, ptr %.sroa.951.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1263
  %.sroa.1052.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 608
  store ptr %.val94.i.i.i.i.i, ptr %.sroa.1052.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1263
  %.sroa.1254.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 664
  store i8 0, ptr %.sroa.1254.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1263
  br label %bb.ed

.thread46.i.i.i.i:                                ; preds = %bb.fl, %.invoke145.i.i.i.i.i, %bb.em, %bb.dv
  %i.wk = phi ptr [ %i.rf, %bb.em ], [ %i.qo, %.invoke145.i.i.i.i.i ], [ %i.oq, %bb.dv ], [ %i.qo, %bb.fl ]
  %i.wl = phi ptr [ %i.rg, %bb.em ], [ %i.qp, %.invoke145.i.i.i.i.i ], [ %i.or, %bb.dv ], [ %i.qp, %bb.fl ]
  %i.wm = phi ptr [ %i.rh, %bb.em ], [ %i.qq, %.invoke145.i.i.i.i.i ], [ %i.os, %bb.dv ], [ %i.qq, %bb.fl ]
  %i.wn = phi ptr [ %i.ri, %bb.em ], [ %i.qr, %.invoke145.i.i.i.i.i ], [ %i.ot, %bb.dv ], [ %i.qr, %bb.fl ]
  %i.wo = phi ptr [ %i.rj, %bb.em ], [ %i.qs, %.invoke145.i.i.i.i.i ], [ %i.ou, %bb.dv ], [ %i.qs, %bb.fl ]
  %.sroa.039.1.i.ph.i.i.i.i = phi ptr [ %i.ru, %bb.em ], [ %i.uh, %.invoke145.i.i.i.i.i ], [ %i.qa, %bb.dv ], [ %i.vp, %bb.fl ]
  store i8 1, ptr %i.wo, align 8, !noalias !1263
  br label %bb.bv

bb.fp:                                            ; preds = %bb.ee, %bb.dh
  %i.wp = phi ptr [ %i.rf, %bb.ee ], [ %i.oq, %bb.dh ] ; 2 uses
  %i.wq = phi ptr [ %i.rg, %bb.ee ], [ %i.or, %bb.dh ] ; 2 uses
  %i.wr = phi ptr [ %i.rh, %bb.ee ], [ %i.os, %bb.dh ] ; 2 uses
  %i.ws = phi ptr [ %i.ri, %bb.ee ], [ %i.ot, %bb.dh ] ; 2 uses
  %i.wt = phi ptr [ %i.rj, %bb.ee ], [ %i.ou, %bb.dh ]
  %.sroa.039.1.i.i.i.i.i = phi ptr [ %i.rn, %bb.ee ], [ %i.oy, %bb.dh ] ; 2 uses
  store i8 1, ptr %i.wt, align 8, !noalias !1263
  %.not37.i.i.i.i = icmp eq ptr %.sroa.039.1.i.i.i.i.i, null
  br i1 %.not37.i.i.i.i, label %bb.fq, label %bb.bv

bb.fq:                                            ; preds = %bb.fp, %.thread50.i.i.i.i
  %i.wu = phi ptr [ %i.wp, %bb.fp ], [ %i.qo, %.thread50.i.i.i.i ] ; 4 uses
  %i.wv = phi ptr [ %i.wq, %bb.fp ], [ %i.qp, %.thread50.i.i.i.i ] ; 4 uses
  %i.ww = phi ptr [ %i.wr, %bb.fp ], [ %i.qq, %.thread50.i.i.i.i ] ; 4 uses
  %i.wx = phi ptr [ %i.ws, %bb.fp ], [ %i.qr, %.thread50.i.i.i.i ] ; 7 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ae, i64 336 ; 2 uses
  %i.wz = load ptr, ptr %i.wy, align 8, !noalias !1263, !nonnull !4, !align !15, !noundef !4
  %i.xa = getelementptr inbounds nuw i8, ptr %i.ae, i64 380 ; 3 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.ae, i64 352 ; 2 uses
  %i.xc = load ptr, ptr %i.xb, align 8, !noalias !1263, !nonnull !4, !align !15, !noundef !4
  %i.xd = invoke noundef ptr @_RNvNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator19initialize_memories(ptr noundef nonnull align 8 %i.wz, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.xa, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.wx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.xc)
          to label %bb.fr unwind label %bb.fw, !noalias !1264 ; 2 uses

bb.fr:                                            ; preds = %bb.fq
  %.not38.i.i.i.i = icmp eq ptr %i.xd, null
  br i1 %.not38.i.i.i.i, label %bb.fs, label %bb.bv

bb.fs:                                            ; preds = %bb.fr
  %i.xe = getelementptr inbounds nuw i8, ptr %i.ae, i64 384
  %i.xf = load i8, ptr %i.xe, align 8, !range !6, !noalias !1263, !noundef !4
  %i.xg = trunc nuw i8 %i.xf to i1
  br i1 %i.xg, label %.thread168.i.i.i.i, label %bb.ft

bb.ft:                                            ; preds = %bb.id, %.thread58.i.i.i.i, %bb.fs
  %i.xh = phi ptr [ %i.afi, %bb.id ], [ %i.zl, %.thread58.i.i.i.i ], [ %i.wu, %bb.fs ] ; 3 uses
  %i.xi = phi ptr [ %i.afj, %bb.id ], [ %i.zm, %.thread58.i.i.i.i ], [ %i.wv, %bb.fs ] ; 3 uses
  %i.xj = phi ptr [ %i.afk, %bb.id ], [ %i.zn, %.thread58.i.i.i.i ], [ %i.ww, %bb.fs ] ; 3 uses
  %i.xk = phi ptr [ %i.afl, %bb.id ], [ %i.zo, %.thread58.i.i.i.i ], [ %i.wx, %bb.fs ] ; 6 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.xk)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i75.i.i.i.i unwind label %bb.fu, !noalias !1264

bb.fu:                                            ; preds = %bb.ft
  %i.xl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.xk)
          to label %.body.i70.i.i.i unwind label %bb.fv, !noalias !1264

bb.fv:                                            ; preds = %bb.fu
  %i.xm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !1264
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i75.i.i.i.i: ; preds = %bb.ft
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.xk)
          to label %bb.if unwind label %bb.br, !noalias !1264

.thread168.i.i.i.i:                               ; preds = %bb.fs
  %i.xn = load ptr, ptr %i.wy, align 8, !noalias !1263, !nonnull !4, !align !15, !noundef !4 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.ae, i64 344
  %i.xp = load ptr, ptr %i.xo, align 8, !noalias !1263, !align !15, !noundef !4 ; 2 uses
  %i.xq = load ptr, ptr %i.xb, align 8, !noalias !1263, !nonnull !4, !align !15, !noundef !4 ; 2 uses
  %.sroa.733.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 536
  store ptr %i.xp, ptr %.sroa.733.0..sroa_idx.i.i.i.i, align 8, !noalias !1263
  %.sroa.935.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 632
  store ptr %i.xn, ptr %.sroa.935.0..sroa_idx.i.i.i.i, align 8, !noalias !1263
  %.sroa.1036.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 640
  store ptr %i.xa, ptr %.sroa.1036.0..sroa_idx.i.i.i.i, align 8, !noalias !1263
  %.sroa.1137.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 648
  store ptr %i.wx, ptr %.sroa.1137.0..sroa_idx.i.i.i.i, align 8, !noalias !1263
  %.sroa.1238.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 656
  store ptr %i.xq, ptr %.sroa.1238.0..sroa_idx.i.i.i.i, align 8, !noalias !1263
  %.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 669 ; 2 uses
  store i8 0, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 1, !noalias !1263
  %i.xr = getelementptr inbounds nuw i8, ptr %i.ae, i64 392
  br label %bb.fy

bb.fw:                                            ; preds = %bb.fq, %.invoke186.i.i.i.i, %.invoke.i.i.i.i, %bb.bt
  %i.xs = phi ptr [ %i.wu, %bb.fq ], [ %.phi.trans.insert.i.i, %.invoke186.i.i.i.i ], [ %.phi.trans.insert.i.i, %.invoke.i.i.i.i ], [ %i.gz, %bb.bt ]
  %i.xt = phi ptr [ %i.wv, %bb.fq ], [ %i.aw, %.invoke186.i.i.i.i ], [ %i.aw, %.invoke.i.i.i.i ], [ %i.ha, %bb.bt ]
  %i.xu = phi ptr [ %i.ww, %bb.fq ], [ %.phi.trans.insert173.i.i.i, %.invoke186.i.i.i.i ], [ %.phi.trans.insert173.i.i.i, %.invoke.i.i.i.i ], [ %i.hg, %bb.bt ]
  %i.xv = phi ptr [ %i.wx, %bb.fq ], [ %i.gp, %.invoke186.i.i.i.i ], [ %i.gp, %.invoke.i.i.i.i ], [ %i.hh, %bb.bt ]
  %i.xw = landingpad { ptr, i32 }
          cleanup
  br label %.body56.i.i.i.i

bb.fx:                                            ; preds = %bb.bq
  %.phi.trans.insert112.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 669 ; 3 uses
  %.pre113.i.i.i.i = load i8, ptr %.phi.trans.insert112.i.i.i.i, align 1, !range !12, !noalias !1263
  %i.xx = getelementptr inbounds nuw i8, ptr %i.ae, i64 392 ; 3 uses
  switch i8 %.pre113.i.i.i.i, label %default.unreachable [
    i8 0, label %._crit_edge194.i.i.i
    i8 1, label %bb.gh
    i8 2, label %bb.gi
    i8 3, label %bb.gj
  ]

._crit_edge194.i.i.i:                             ; preds = %bb.fx
  %.phi.trans.insert195.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 632
  %.pre196.i.i.i = load ptr, ptr %.phi.trans.insert195.i.i.i, align 8, !noalias !1263
  %.phi.trans.insert197.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 536
  %.pre198.i.i.i = load ptr, ptr %.phi.trans.insert197.i.i.i, align 8, !noalias !1263
  %.phi.trans.insert199.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 640
  %.pre200.i.i.i = load ptr, ptr %.phi.trans.insert199.i.i.i, align 8, !noalias !1263
  %.phi.trans.insert201.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 648
  %.pre202.i.i.i = load ptr, ptr %.phi.trans.insert201.i.i.i, align 8, !noalias !1263
  %.phi.trans.insert203.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 656
  %.pre204.i.i.i = load ptr, ptr %.phi.trans.insert203.i.i.i, align 8, !noalias !1263
  br label %bb.fy

bb.fy:                                            ; preds = %._crit_edge194.i.i.i, %.thread168.i.i.i.i
  %i.xy = phi ptr [ %i.wu, %.thread168.i.i.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge194.i.i.i ] ; 3 uses
  %i.xz = phi ptr [ %i.wv, %.thread168.i.i.i.i ], [ %i.aw, %._crit_edge194.i.i.i ] ; 3 uses
  %i.ya = phi ptr [ %i.ww, %.thread168.i.i.i.i ], [ %.phi.trans.insert173.i.i.i, %._crit_edge194.i.i.i ] ; 3 uses
  %i.yb = phi ptr [ %i.wx, %.thread168.i.i.i.i ], [ %i.gp, %._crit_edge194.i.i.i ] ; 3 uses
  %i.yc = phi ptr [ %i.xq, %.thread168.i.i.i.i ], [ %.pre204.i.i.i, %._crit_edge194.i.i.i ] ; 2 uses
  %i.yd = phi ptr [ %i.wx, %.thread168.i.i.i.i ], [ %.pre202.i.i.i, %._crit_edge194.i.i.i ]
  %i.ye = phi ptr [ %i.xa, %.thread168.i.i.i.i ], [ %.pre200.i.i.i, %._crit_edge194.i.i.i ] ; 2 uses
  %i.yf = phi ptr [ %i.xp, %.thread168.i.i.i.i ], [ %.pre198.i.i.i, %._crit_edge194.i.i.i ]
  %i.yg = phi ptr [ %i.xn, %.thread168.i.i.i.i ], [ %.pre196.i.i.i, %._crit_edge194.i.i.i ] ; 4 uses
  %i.yh = phi ptr [ %.sroa.14.0..sroa_idx.i.i.i.i, %.thread168.i.i.i.i ], [ %.phi.trans.insert112.i.i.i.i, %._crit_edge194.i.i.i ] ; 3 uses
  %i.yi = phi ptr [ %i.xr, %.thread168.i.i.i.i ], [ %i.xx, %._crit_edge194.i.i.i ] ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.ae, i64 668
  store i8 0, ptr %i.yj, align 4, !noalias !1263
  %i.yk = getelementptr inbounds nuw i8, ptr %i.ae, i64 544
  store ptr %i.yg, ptr %i.yk, align 8, !noalias !1263
  %i.yl = getelementptr inbounds nuw i8, ptr %i.ae, i64 552
  store ptr %i.yf, ptr %i.yl, align 8, !noalias !1263
  %i.ym = getelementptr inbounds nuw i8, ptr %i.ae, i64 560
  store ptr %i.ye, ptr %i.ym, align 8, !noalias !1263
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ae, i64 568
  store ptr %i.yd, ptr %i.yn, align 8, !noalias !1263
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ae, i64 576 ; 2 uses
  store ptr %i.yc, ptr %i.yo, align 8, !noalias !1263, !captures !25
  %i.yp = getelementptr i8, ptr %i.yg, i64 544
  %.val.i89.i.i.i.i = load i64, ptr %i.yp, align 8, !range !7, !noalias !1264, !noundef !4
  %i.yq = getelementptr inbounds nuw i8, ptr %i.ae, i64 584
  store i64 %.val.i89.i.i.i.i, ptr %i.yq, align 8, !noalias !1263
  %i.yr = load i32, ptr %i.ye, align 4, !noalias !1264, !noundef !4
  %i.ys = zext i32 %i.yr to i64                   ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yg, i64 168
  %i.yu = load i64, ptr %i.yt, align 8, !alias.scope !1307, !noalias !1264, !noundef !4 ; 2 uses
  %i.yv = icmp ugt i64 %i.yu, %i.ys
  br i1 %i.yv, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ys, i64 noundef %i.yu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @356) #39
          to label %.noexc.i90.i.i.i.i unwind label %bb.gf, !noalias !1264

.noexc.i90.i.i.i.i:                               ; preds = %bb.fz
  unreachable

bb.ga:                                            ; preds = %bb.fy
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yg, i64 160
  %i.yx = load ptr, ptr %i.yw, align 8, !alias.scope !1307, !noalias !1264, !nonnull !4, !noundef !4
  %i.yy = getelementptr inbounds nuw [16 x i8], ptr %i.yx, i64 %i.ys
  %i.yz = load ptr, ptr %i.yy, align 8, !noalias !1264, !nonnull !4, !noundef !4 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.ae, i64 592
  store ptr %i.yz, ptr %i.za, align 8, !noalias !1263
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 72
  %i.zc = getelementptr i8, ptr %i.yc, i64 264
  %.val81.i.i.i.i.i = load i64, ptr %i.zc, align 8, !noalias !1264, !noundef !4 ; 2 uses
  %i.zd = icmp ult i64 %.val81.i.i.i.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.zd)
  %i.ze = invoke noundef ptr @_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentE7reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.zb, i64 noundef %.val81.i.i.i.i.i)
          to label %bb.gb unwind label %bb.gf, !noalias !1264 ; 2 uses

bb.gb:                                            ; preds = %bb.ga
  %.not.i91.i.i.i.i = icmp eq ptr %i.ze, null
  br i1 %.not.i91.i.i.i.i, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.zf = invoke noundef nonnull ptr @_RNvXs4_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtB7_3oom11OutOfMemoryE4fromCs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.ze)
          to label %.thread54.i.i.i.i unwind label %bb.gf, !noalias !1264

bb.gd:                                            ; preds = %bb.gb
  %i.zg = load ptr, ptr %i.yo, align 8, !noalias !1263, !nonnull !4, !align !15, !noundef !4 ; 2 uses
  %i.zh = getelementptr i8, ptr %i.zg, i64 256
  %.val82.i.i.i.i.i = load ptr, ptr %i.zh, align 8, !noalias !1264, !nonnull !4, !noundef !4 ; 3 uses
  %i.zi = getelementptr i8, ptr %i.zg, i64 264
  %.val83.i.i.i.i.i = load i64, ptr %i.zi, align 8, !noalias !1264, !noundef !4
  %i.zj = getelementptr inbounds nuw [32 x i8], ptr %.val82.i.i.i.i.i, i64 %.val83.i.i.i.i.i ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.ae, i64 600
  store ptr %.val82.i.i.i.i.i, ptr %i.zk, align 8, !noalias !1263
  %.sroa.7.0..sroa_idx.i92.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 608
  store ptr %i.zj, ptr %.sroa.7.0..sroa_idx.i92.i.i.i.i, align 8, !noalias !1263
  %.sroa.8.0..sroa_idx.i93.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 616
  store i64 0, ptr %.sroa.8.0..sroa_idx.i93.i.i.i.i, align 8, !noalias !1263
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gw, %bb.gd
  %i.zl = phi ptr [ %i.abr, %bb.gw ], [ %i.xy, %bb.gd ] ; 8 uses
  %i.zm = phi ptr [ %i.abs, %bb.gw ], [ %i.xz, %bb.gd ] ; 8 uses
  %i.zn = phi ptr [ %i.abt, %bb.gw ], [ %i.ya, %bb.gd ] ; 8 uses
  %i.zo = phi ptr [ %i.abu, %bb.gw ], [ %i.yb, %bb.gd ] ; 8 uses
  %i.zp = phi ptr [ %i.abv, %bb.gw ], [ %i.yh, %bb.gd ] ; 8 uses
  %i.zq = phi ptr [ %i.abw, %bb.gw ], [ %i.yi, %bb.gd ] ; 6 uses
  %i.zr = phi ptr [ %.pre74.i.i.i.i.i, %bb.gw ], [ %i.zj, %bb.gd ]
  %i.zs = phi ptr [ %.pre.i82.i.i.i.i, %bb.gw ], [ %.val82.i.i.i.i.i, %bb.gd ] ; 8 uses
  %i.zt = icmp eq ptr %i.zs, %i.zr
  br i1 %i.zt, label %.thread58.i.i.i.i, label %bb.gx

.thread58.i.i.i.i:                                ; preds = %bb.ge
  store i8 1, ptr %i.zp, align 1, !noalias !1263
  br label %bb.ft

bb.gf:                                            ; preds = %bb.gc, %bb.ga, %bb.fz
  %i.zu = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.gg:                                            ; preds = %bb.hv, %.body.i83.i.i.i.i, %bb.gf
  %i.zv = phi ptr [ %i.xy, %bb.gf ], [ %i.afb, %bb.hv ], [ %i.zl, %.body.i83.i.i.i.i ]
  %i.zw = phi ptr [ %i.xz, %bb.gf ], [ %i.afc, %bb.hv ], [ %i.zm, %.body.i83.i.i.i.i ]
  %i.zx = phi ptr [ %i.ya, %bb.gf ], [ %i.afd, %bb.hv ], [ %i.zn, %.body.i83.i.i.i.i ]
  %i.zy = phi ptr [ %i.yb, %bb.gf ], [ %i.afe, %bb.hv ], [ %i.zo, %.body.i83.i.i.i.i ]
  %i.zz = phi ptr [ %i.yh, %bb.gf ], [ %i.aff, %bb.hv ], [ %i.zp, %.body.i83.i.i.i.i ]
  %i.aaa = phi ptr [ %i.yi, %bb.gf ], [ %i.afg, %bb.hv ], [ %i.zq, %.body.i83.i.i.i.i ]
  %.pn68.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.zu, %bb.gf ], [ %.pn63.pn.i.i.i.i.i, %bb.hv ], [ %.pn43.pn.i.i.i.i.i, %.body.i83.i.i.i.i ]
  store i8 2, ptr %i.zz, align 1, !noalias !1263
  br label %.body94.i.i.i.i

bb.gh:                                            ; preds = %bb.fx
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #39
          to label %.noexc96.i.i.i.i unwind label %bb.ic, !noalias !1264

.noexc96.i.i.i.i:                                 ; preds = %bb.gh
  unreachable

bb.gi:                                            ; preds = %bb.fx
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #39
          to label %.noexc97.i.i.i.i unwind label %bb.ic, !noalias !1264

.noexc97.i.i.i.i:                                 ; preds = %bb.gi
  unreachable

bb.gj:                                            ; preds = %bb.hx, %bb.fx
  %i.aab = phi ptr [ %i.aaq, %bb.hx ], [ %.phi.trans.insert.i.i, %bb.fx ] ; 5 uses
  %i.aac = phi ptr [ %i.aar, %bb.hx ], [ %i.aw, %bb.fx ] ; 5 uses
  %i.aad = phi ptr [ %i.aas, %bb.hx ], [ %.phi.trans.insert173.i.i.i, %bb.fx ] ; 5 uses
  %i.aae = phi ptr [ %i.aat, %bb.hx ], [ %i.gp, %bb.fx ] ; 5 uses
  %i.aaf = phi ptr [ %i.aau, %bb.hx ], [ %.phi.trans.insert112.i.i.i.i, %bb.fx ] ; 5 uses
  %i.aag = phi ptr [ %i.aav, %bb.hx ], [ %i.xx, %bb.fx ] ; 6 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.ae, i64 424
  %i.aai = invoke fastcc { i64, ptr } @_RNCNvMs0_NtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm10const_exprNtB7_18ConstExprEvaluator4eval0Cs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8 %i.aah)
          to label %bb.gk unwind label %bb.hy, !noalias !1264 ; 2 uses

bb.gk:                                            ; preds = %bb.gj
  %i.aaj = extractvalue { i64, ptr } %i.aai, 0
  %i.aak = extractvalue { i64, ptr } %i.aai, 1    ; 2 uses
  %i.aal = trunc nuw i64 %i.aaj to i1
  br i1 %i.aal, label %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtBP_3oom11OutOfMemoryEE13from_residualCs7gfv9tzbXmh_6yara_x.exit89.i.i.i.i.i, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.aam = getelementptr inbounds nuw i8, ptr %i.ae, i64 624
  %i.aan = load ptr, ptr %i.aam, align 8, !noalias !1263, !nonnull !4, !align !15, !noundef !4
end_hunk_1
begin_hunk_2_@_RINvNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12assert_readyNCINvMNtB4_8instanceNtBY_8Instance11new_startedNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextE0EB1J_:bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #38
          to label %.body.i83.i.i.i.i unwind label %bb.hp, !noalias !1264

bb.hp:                                            ; preds = %bb.ib, %.loopexit.split-lp.i.i.i.i.i
  %i.aeo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !1264
  unreachable

bb.hq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext6ValRawEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i, %.invoke188.i.i.i.i
  %i.aep = landingpad { ptr, i32 }
          cleanup
  br label %.body.i83.i.i.i.i

bb.hr:                                            ; preds = %bb.gy
  %i.aeq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1263
  br label %bb.hv

bb.hs:                                            ; preds = %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1263
  call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  %i.aer = load i64, ptr %i.e, align 8, !range !18, !alias.scope !1319, !noalias !1263, !noundef !4 ; 2 uses
  %i.aes = icmp eq i64 %i.aer, -1
  %i.aet = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aeu = load ptr, ptr %i.aet, align 8, !alias.scope !1320, !noalias !1263 ; 2 uses
  br i1 %i.aes, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1263
  %i.aev = invoke noundef nonnull ptr @_RNvXs4_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtB7_3oom11OutOfMemoryE4fromCs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.aeu)
          to label %.thread61.i.i.i.i unwind label %bb.ia, !noalias !1264

.thread61.i.i.i.i:                                ; preds = %bb.ht
  %i.aew = getelementptr inbounds nuw i8, ptr %i.ae, i64 668
  store i8 0, ptr %i.aew, align 4, !noalias !1263
  store i8 1, ptr %i.zp, align 1, !noalias !1263
  br label %bb.bv

bb.hu:                                            ; preds = %bb.hs
  %.sroa.1017.0..sroa_idx18.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.521.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1017.0..sroa_idx18.i.i.i.i.i, i64 16, i1 false), !noalias !1263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1263
  %i.aex = getelementptr inbounds nuw i8, ptr %i.ae, i64 668
  store i8 1, ptr %i.aex, align 4, !noalias !1263
  store i64 %i.aer, ptr %i.zq, align 8, !noalias !1263
  %.sroa.420.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 400
  store ptr %i.aeu, ptr %.sroa.420.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1263
  %.val74.i.i.i.i.i = load ptr, ptr %i.acf, align 8, !noalias !1264, !nonnull !4, !noundef !4 ; 3 uses
  %.val75.i.i.i.i.i = load i64, ptr %i.acg, align 8, !noalias !1264, !noundef !4
  %i.aey = getelementptr inbounds nuw [80 x i8], ptr %.val74.i.i.i.i.i, i64 %.val75.i.i.i.i.i ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.ae, i64 520
  store ptr %.val74.i.i.i.i.i, ptr %i.aez, align 8, !noalias !1263
  %i.afa = getelementptr inbounds nuw i8, ptr %i.ae, i64 528
  store ptr %i.aey, ptr %i.afa, align 8, !noalias !1263
  br label %bb.go

bb.hv:                                            ; preds = %bb.ib, %bb.ia, %bb.hw, %bb.hr
  %i.afb = phi ptr [ %i.afr, %bb.hw ], [ %i.ags, %bb.ia ], [ %i.afr, %bb.ib ], [ %i.zl, %bb.hr ]
  %i.afc = phi ptr [ %i.afs, %bb.hw ], [ %i.agt, %bb.ia ], [ %i.afs, %bb.ib ], [ %i.zm, %bb.hr ]
  %i.afd = phi ptr [ %i.aft, %bb.hw ], [ %i.agu, %bb.ia ], [ %i.aft, %bb.ib ], [ %i.zn, %bb.hr ]
  %i.afe = phi ptr [ %i.afu, %bb.hw ], [ %i.agv, %bb.ia ], [ %i.afu, %bb.ib ], [ %i.zo, %bb.hr ]
  %i.aff = phi ptr [ %i.afv, %bb.hw ], [ %i.agw, %bb.ia ], [ %i.afv, %bb.ib ], [ %i.zp, %bb.hr ]
  %i.afg = phi ptr [ %i.afw, %bb.hw ], [ %i.agx, %bb.ia ], [ %i.afw, %bb.ib ], [ %i.zq, %bb.hr ]
  %.pn63.pn.i.i.i.i.i = phi { ptr, i32 } [ %.pn59.pn.pn.i.i.i.i.i, %bb.hw ], [ %i.agy, %bb.ia ], [ %.pn59.pn.pn.i.i.i.i.i, %bb.ib ], [ %i.aeq, %bb.hr ]
  %i.afh = getelementptr inbounds nuw i8, ptr %i.ae, i64 668
  store i8 0, ptr %i.afh, align 4, !noalias !1263
  br label %bb.gg

_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtBP_3oom11OutOfMemoryEE13from_residualCs7gfv9tzbXmh_6yara_x.exit89.i.i.i.i.i: ; preds = %bb.gu, %bb.gn, %bb.gk
  %i.afi = phi ptr [ %i.aab, %bb.gn ], [ %i.aaq, %bb.gu ], [ %i.aab, %bb.gk ] ; 3 uses
  %i.afj = phi ptr [ %i.aac, %bb.gn ], [ %i.aar, %bb.gu ], [ %i.aac, %bb.gk ] ; 3 uses
  %i.afk = phi ptr [ %i.aad, %bb.gn ], [ %i.aas, %bb.gu ], [ %i.aad, %bb.gk ] ; 3 uses
  %i.afl = phi ptr [ %i.aae, %bb.gn ], [ %i.aat, %bb.gu ], [ %i.aae, %bb.gk ] ; 3 uses
  %i.afm = phi ptr [ %i.aaf, %bb.gn ], [ %i.aau, %bb.gu ], [ %i.aaf, %bb.gk ] ; 2 uses
  %i.afn = phi ptr [ %i.aag, %bb.gn ], [ %i.aav, %bb.gu ], [ %i.aag, %bb.gk ] ; 2 uses
  %.sroa.029.5.i.i.i.i.i = phi ptr [ %i.aao, %bb.gn ], [ %i.abq, %bb.gu ], [ %i.aak, %bb.gk ] ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.ae, i64 668 ; 2 uses
  %i.afp = load i8, ptr %i.afo, align 4, !range !6, !noalias !1263, !noundef !4
  %i.afq = trunc nuw i8 %i.afp to i1
  br i1 %i.afq, label %bb.hz, label %bb.id

bb.hw:                                            ; preds = %bb.hy, %bb.gs, %bb.gm
  %i.afr = phi ptr [ %i.aaq, %bb.gs ], [ %i.agl, %bb.hy ], [ %i.aab, %bb.gm ] ; 2 uses
  %i.afs = phi ptr [ %i.aar, %bb.gs ], [ %i.agm, %bb.hy ], [ %i.aac, %bb.gm ] ; 2 uses
  %i.aft = phi ptr [ %i.aas, %bb.gs ], [ %i.agn, %bb.hy ], [ %i.aad, %bb.gm ] ; 2 uses
  %i.afu = phi ptr [ %i.aat, %bb.gs ], [ %i.ago, %bb.hy ], [ %i.aae, %bb.gm ] ; 2 uses
  %i.afv = phi ptr [ %i.aau, %bb.gs ], [ %i.agp, %bb.hy ], [ %i.aaf, %bb.gm ] ; 2 uses
  %i.afw = phi ptr [ %i.aav, %bb.gs ], [ %i.agq, %bb.hy ], [ %i.aag, %bb.gm ] ; 3 uses
  %.pn59.pn.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.abp, %bb.gs ], [ %i.agr, %bb.hy ], [ %i.aap, %bb.gm ] ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %i.ae, i64 668
  %i.afy = load i8, ptr %i.afx, align 4, !range !6, !noalias !1263, !noundef !4
  %i.afz = trunc nuw i8 %i.afy to i1
  br i1 %i.afz, label %bb.ib, label %bb.hv

bb.hx:                                            ; preds = %bb.go
  %i.aga = getelementptr inbounds nuw i8, ptr %i.ae, i64 520
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aax, i64 80
  store ptr %i.agb, ptr %i.aga, align 8, !alias.scope !1308, !noalias !1263
  %i.agc = getelementptr inbounds nuw i8, ptr %i.ae, i64 544
  %i.agd = load ptr, ptr %i.agc, align 8, !noalias !1263, !nonnull !4, !align !15, !noundef !4
  %i.age = getelementptr inbounds nuw i8, ptr %i.ae, i64 624 ; 2 uses
  store ptr %i.agd, ptr %i.age, align 8, !noalias !1263
  %i.agf = getelementptr inbounds nuw i8, ptr %i.ae, i64 568
  %i.agg = load ptr, ptr %i.agf, align 8, !noalias !1263, !nonnull !4, !align !15, !noundef !4
  %i.agh = getelementptr inbounds nuw i8, ptr %i.ae, i64 552
  %.val71.i.i.i.i.i = load ptr, ptr %i.agh, align 8, !noalias !1263, !align !15, !noundef !4
  %i.agi = getelementptr inbounds nuw i8, ptr %i.ae, i64 560
  %i.agj = load ptr, ptr %i.agi, align 8, !noalias !1263, !nonnull !4, !align !26, !noundef !4
  %i.agk = getelementptr inbounds nuw i8, ptr %i.ae, i64 424
  store ptr %i.agg, ptr %i.agk, align 8, !noalias !1263
  %.sroa.729.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 432
  store ptr %i.age, ptr %.sroa.729.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1263
  %.sroa.830.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 440
  store ptr %i.agj, ptr %.sroa.830.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1263
  %.sroa.931.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 448
  store ptr %i.aax, ptr %.sroa.931.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1263
  %.sroa.1032.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 456
  store ptr %.val71.i.i.i.i.i, ptr %.sroa.1032.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1263
  %.sroa.12.0..sroa_idx.i80.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 512
  store i8 0, ptr %.sroa.12.0..sroa_idx.i80.i.i.i.i, align 8, !noalias !1263
  br label %bb.gj

bb.hy:                                            ; preds = %bb.gu, %bb.gq, %bb.gj
  %i.agl = phi ptr [ %i.aaq, %bb.gu ], [ %i.aaq, %bb.gq ], [ %i.aab, %bb.gj ]
  %i.agm = phi ptr [ %i.aar, %bb.gu ], [ %i.aar, %bb.gq ], [ %i.aac, %bb.gj ]
  %i.agn = phi ptr [ %i.aas, %bb.gu ], [ %i.aas, %bb.gq ], [ %i.aad, %bb.gj ]
  %i.ago = phi ptr [ %i.aat, %bb.gu ], [ %i.aat, %bb.gq ], [ %i.aae, %bb.gj ]
  %i.agp = phi ptr [ %i.aau, %bb.gu ], [ %i.aau, %bb.gq ], [ %i.aaf, %bb.gj ]
  %i.agq = phi ptr [ %i.aav, %bb.gu ], [ %i.aav, %bb.gq ], [ %i.aag, %bb.gj ]
  %i.agr = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

bb.hz:                                            ; preds = %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtBP_3oom11OutOfMemoryEE13from_residualCs7gfv9tzbXmh_6yara_x.exit89.i.i.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.afn)
          to label %bb.id unwind label %bb.ia, !noalias !1264

bb.ia:                                            ; preds = %bb.hz, %bb.ht
  %i.ags = phi ptr [ %i.zl, %bb.ht ], [ %i.afi, %bb.hz ]
  %i.agt = phi ptr [ %i.zm, %bb.ht ], [ %i.afj, %bb.hz ]
  %i.agu = phi ptr [ %i.zn, %bb.ht ], [ %i.afk, %bb.hz ]
  %i.agv = phi ptr [ %i.zo, %bb.ht ], [ %i.afl, %bb.hz ]
  %i.agw = phi ptr [ %i.zp, %bb.ht ], [ %i.afm, %bb.hz ]
  %i.agx = phi ptr [ %i.zq, %bb.ht ], [ %i.afn, %bb.hz ]
  %i.agy = landingpad { ptr, i32 }
          cleanup
  br label %bb.hv

bb.ib:                                            ; preds = %bb.hw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.afw) #38
          to label %bb.hv unwind label %bb.hp, !noalias !1264

bb.ic:                                            ; preds = %bb.gi, %bb.gh
  %i.agz = landingpad { ptr, i32 }
          cleanup
  br label %.body94.i.i.i.i

.body94.i.i.i.i:                                  ; preds = %bb.ic, %bb.gg
  %i.aha = phi ptr [ %.phi.trans.insert.i.i, %bb.ic ], [ %i.zv, %bb.gg ]
  %i.ahb = phi ptr [ %i.aw, %bb.ic ], [ %i.zw, %bb.gg ]
  %i.ahc = phi ptr [ %.phi.trans.insert173.i.i.i, %bb.ic ], [ %i.zx, %bb.gg ]
  %i.ahd = phi ptr [ %i.gp, %bb.ic ], [ %i.zy, %bb.gg ]
  %i.ahe = phi ptr [ %i.xx, %bb.ic ], [ %i.aaa, %bb.gg ]
  %eh.lpad-body95.i.i.i.i = phi { ptr, i32 } [ %i.agz, %bb.ic ], [ %.pn68.pn.i.i.i.i.i, %bb.gg ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator27initialize_passive_elements0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8 %i.ahe) #38
          to label %.body56.i.i.i.i unwind label %bb.dc, !noalias !1264

.thread54.i.i.i.i:                                ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %bb.gc
  %i.ahf = phi ptr [ %i.zl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ], [ %i.xy, %bb.gc ]
  %i.ahg = phi ptr [ %i.zm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ], [ %i.xz, %bb.gc ]
  %i.ahh = phi ptr [ %i.zn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ], [ %i.ya, %bb.gc ]
  %i.ahi = phi ptr [ %i.zo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ], [ %i.yb, %bb.gc ]
  %i.ahj = phi ptr [ %i.zp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ], [ %i.yh, %bb.gc ]
  %.sroa.029.0.i.ph.i.i.i.i = phi ptr [ %.sroa.029.2.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ], [ %i.zf, %bb.gc ]
  store i8 1, ptr %i.ahj, align 1, !noalias !1263
  br label %bb.bv

bb.id:                                            ; preds = %bb.hz, %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtBP_3oom11OutOfMemoryEE13from_residualCs7gfv9tzbXmh_6yara_x.exit89.i.i.i.i.i
  store i8 0, ptr %i.afo, align 4, !noalias !1263
  store i8 1, ptr %i.afm, align 1, !noalias !1263
  %.not43.i.i.i.i = icmp eq ptr %.sroa.029.5.i.i.i.i.i, null
  br i1 %.not43.i.i.i.i, label %bb.ft, label %bb.bv

bb.ie:                                            ; preds = %bb.bz, %bb.by
  %i.ahk = landingpad { ptr, i32 }
          cleanup
  br label %.body81.i.i.i

.body81.i.i.i:                                    ; preds = %bb.ie, %.body.i70.i.i.i
  %i.ahl = phi ptr [ %.phi.trans.insert.i.i, %bb.ie ], [ %i.gq, %.body.i70.i.i.i ]
  %i.ahm = phi ptr [ %i.aw, %bb.ie ], [ %i.gr, %.body.i70.i.i.i ]
  %i.ahn = phi ptr [ %i.gp, %bb.ie ], [ %i.gt, %.body.i70.i.i.i ]
  %eh.lpad-body82.i.i.i = phi { ptr, i32 } [ %i.ahk, %bb.ie ], [ %.pn53.i.i.i.i, %.body.i70.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator19initialize_instance0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8 %i.ahn) #38
          to label %.body.i.i.i unwind label %bb.ay, !noalias !1264

bb.if:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i75.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %4 = phi ptr [ %i.hq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ], [ %i.xh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i75.i.i.i.i ] ; 3 uses
  %5 = phi ptr [ %i.hr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ], [ %i.xi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i75.i.i.i.i ] ; 3 uses
  %6 = phi ptr [ %i.hs, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ], [ %i.xj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i75.i.i.i.i ]
  %7 = phi ptr [ %i.ht, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ], [ %i.xk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i75.i.i.i.i ]
  %.sroa.025.1.i.i.i.i = phi ptr [ %.sroa.025.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ], [ null, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i75.i.i.i.i ] ; 2 uses
  store i8 1, ptr %6, align 1, !noalias !1263
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator19initialize_instance0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8 %7)
          to label %8 unwind label %bb.ax, !noalias !1264

8:                                                ; preds = %bb.if
  %.not33.i.i.i = icmp eq ptr %.sroa.025.1.i.i.i.i, null
  br i1 %.not33.i.i.i, label %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtNtCsiOkGTpNE17y_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCsbhAup8j5lif_16wasmtime_environ5types9FuncIndexEENtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs7gfv9tzbXmh_6yara_x.exit.i.i, label %bb.ik

bb.ig:                                            ; preds = %bb.l, %bb.k
  %i.aho = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ig, %.body.i.i.i
  %i.ahp = phi ptr [ %i.aw, %bb.ig ], [ %i.bv, %.body.i.i.i ]
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.aho, %bb.ig ], [ %.pn44.pn.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsiOkGTpNE17y_8wasmtime7runtime8instanceNtBG_8Instance7new_raw0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8 %i.ahp) #38
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin14PinMacroHelperNCINvMNtNtCsiOkGTpNE17y_8wasmtime7runtime8instanceNtB19_8Instance11new_startedNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextE0EEB2p_.exit.i unwind label %bb.il, !noalias !1262

_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtNtCsiOkGTpNE17y_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCsbhAup8j5lif_16wasmtime_environ5types9FuncIndexEENtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %8
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ae, i64 672
  %i.ahr = load i64, ptr %i.ahq, align 8, !range !7, !noalias !1263, !noundef !4 ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ae, i64 680
  %i.aht = load i32, ptr %i.ahs, align 8, !noalias !1263, !noundef !4 ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ae, i64 248
  %i.ahv = load ptr, ptr %i.ahu, align 8, !noalias !1263, !nonnull !4, !align !15, !noundef !4
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 80
  %.val.i.i.i = load ptr, ptr %i.ahw, align 8, !noalias !1264, !nonnull !4, !noundef !4 ; 2 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 456
  %i.ahy = load i32, ptr %i.ahx, align 8, !range !9, !noalias !1264, !noundef !4
  %i.ahz = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 460
  %i.aia = load i32, ptr %i.ahz, align 4, !noalias !1264
  store i8 1, ptr %4, align 8, !noalias !1263
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsiOkGTpNE17y_8wasmtime7runtime8instanceNtBG_8Instance7new_raw0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8 %5), !noalias !1262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1261
  store i64 %i.ahr, ptr %i.ad, align 8, !noalias !1261
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 %i.aht, ptr %i.aib, align 8, !noalias !1261
  %i.aic = trunc nuw i32 %i.ahy to i1
  br i1 %i.aic, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %bb.ii, %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtNtCsiOkGTpNE17y_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCsbhAup8j5lif_16wasmtime_environ5types9FuncIndexEENtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs7gfv9tzbXmh_6yara_x.exit.i.i
  %.sroa.4.8.insert.ext.i.i = zext i32 %i.aht to i64
  %i.aid = inttoptr i64 %.sroa.4.8.insert.ext.i.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1261
  br label %bb.io

bb.ii:                                            ; preds = %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtNtCsiOkGTpNE17y_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCsbhAup8j5lif_16wasmtime_environ5types9FuncIndexEENtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs7gfv9tzbXmh_6yara_x.exit.i.i
  %i.aie = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.aif = load ptr, ptr %i.aie, align 8, !noalias !1261, !nonnull !4, !align !15, !noundef !4
  %i.aig = call noundef ptr @_RINvMNtNtCsiOkGTpNE17y_8wasmtime7runtime8instanceNtB3_8Instance9start_rawNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEB1f_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aif, i32 noundef %i.aia), !noalias !1262 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aig, null
  br i1 %.not.i.i, label %bb.ih, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1261
  br label %bb.io

bb.ik:                                            ; preds = %8, %bb.i, %bb.h, %bb.as, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm17ModuleRuntimeInfoECs7gfv9tzbXmh_6yara_x.exit69.i.i.i, %bb.aq
  %.ph = phi ptr [ %i.ch, %bb.aq ], [ %i.dp, %bb.as ], [ %i.ep, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm17ModuleRuntimeInfoECs7gfv9tzbXmh_6yara_x.exit69.i.i.i ], [ %i.ba, %bb.i ], [ %i.ba, %bb.h ], [ %4, %8 ]
  %.ph95 = phi ptr [ %i.ci, %bb.aq ], [ %i.dq, %bb.as ], [ %i.eq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm17ModuleRuntimeInfoECs7gfv9tzbXmh_6yara_x.exit69.i.i.i ], [ %i.bb, %bb.i ], [ %i.bb, %bb.h ], [ %5, %8 ]
  %.sroa.027.0.ph.i.i.ph = phi ptr [ %i.dm, %bb.aq ], [ %i.eb, %bb.as ], [ %.sroa.3.0.copyload.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm17ModuleRuntimeInfoECs7gfv9tzbXmh_6yara_x.exit69.i.i.i ], [ %i.bk, %bb.i ], [ %i.bl, %bb.h ], [ %.sroa.025.1.i.i.i.i, %8 ]
  store i8 1, ptr %.ph, align 8, !noalias !1263
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsiOkGTpNE17y_8wasmtime7runtime8instanceNtBG_8Instance7new_raw0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8 %.ph95), !noalias !1262
  br label %bb.io

bb.il:                                            ; preds = %.body.i.i
  %i.aih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !1262
  unreachable

.body.i:                                          ; preds = %bb.c, %bb.b
  %i.aii = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr.i = load i8, ptr %i.ai, align 8, !noalias !1259
  %cond.i.i.i = icmp eq i8 %.pr.i, 3
  br i1 %cond.i.i.i, label %bb.im, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin14PinMacroHelperNCINvMNtNtCsiOkGTpNE17y_8wasmtime7runtime8instanceNtB19_8Instance11new_startedNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextE0EEB2p_.exit.i

bb.im:                                            ; preds = %.body.i
  %i.aij = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsiOkGTpNE17y_8wasmtime7runtime8instanceNtBG_8Instance7new_raw0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8 %i.aij)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin14PinMacroHelperNCINvMNtNtCsiOkGTpNE17y_8wasmtime7runtime8instanceNtB19_8Instance11new_startedNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextE0EEB2p_.exit.i unwind label %bb.in, !noalias !1259

bb.in:                                            ; preds = %bb.im
  %i.aik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !1259
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin14PinMacroHelperNCINvMNtNtCsiOkGTpNE17y_8wasmtime7runtime8instanceNtB19_8Instance11new_startedNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextE0EEB2p_.exit.i: ; preds = %.body.i.i, %bb.im, %.body.i
  %eh.lpad-body8.i = phi { ptr, i32 } [ %i.aii, %bb.im ], [ %i.aii, %.body.i ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %eh.lpad-body8.i

bb.io:                                            ; preds = %bb.ik, %bb.ij, %bb.ih
  %.sroa.7.0.ph = phi ptr [ %i.aig, %bb.ij ], [ %.sroa.027.0.ph.i.i.ph, %bb.ik ], [ %i.aid, %bb.ih ]
  %.sroa.5.0.ph = phi i64 [ 0, %bb.ij ], [ 0, %bb.ik ], [ %i.ahr, %bb.ih ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1259
  store i64 %.sroa.5.0.ph, ptr %0, align 8
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.ph, ptr %.sroa.7.8..sroa_idx, align 8
  ret void

bb.ip:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1263
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9100.i.i.i)
  store i8 4, ptr %i.ep, align 8, !noalias !1263
  store i8 3, ptr %i.ai, align 8, !noalias !1261
  %i.ail = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsiOkGTpNE17y_8wasmtime7runtime8instanceNtBG_8Instance7new_raw0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8 %i.ail), !noalias !1259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1259
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12assert_readyNCNvMsd_NtB4_5storeNtB10_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(616) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [616 x i8], align 8               ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [12 x i8], align 4            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1324
  store ptr @21, ptr %i.c, align 8, !noalias !1324
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @21, ptr %i.d, align 8, !noalias !1324
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr null, ptr %i.e, align 8, !noalias !1324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(616) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(616) %1, i64 616, i1 false), !noalias !1325
  invoke fastcc void @_RNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtB7_11StoreOpaque17allocate_instance0Cs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable(32) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !1324

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.h = load i8, ptr %i.g, align 4, !range !12, !noalias !1324, !noundef !4
  %cond.i.i.i = icmp eq i8 %i.h, 3
  br i1 %cond.i.i.i, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin14PinMacroHelperNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtB1b_11StoreOpaque17allocate_instance0EECs7gfv9tzbXmh_6yara_x.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs4_NtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocatorDNtBJ_17InstanceAllocatorEL_15allocate_module0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8 %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin14PinMacroHelperNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtB1b_11StoreOpaque17allocate_instance0EECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.h, !noalias !1324

bb.d:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.b, align 8, !range !13, !noalias !1324, !noundef !4 ; 2 uses
  %i.k = icmp eq i32 %i.j, 2                      ; 2 uses
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx2, i64 12, i1 false), !noalias !1326
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.m = load i8, ptr %i.l, align 4, !range !12, !noalias !1324, !noundef !4
  %cond.i.i1.i = icmp eq i8 %i.m, 3
  br i1 %cond.i.i1.i, label %bb.g, label %_RINvNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8one_pollNCNvMsd_NtB4_5storeNtBV_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs4_NtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocatorDNtBJ_17InstanceAllocatorEL_15allocate_module0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8 %i.n), !noalias !1324
  br label %_RINvNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8one_pollNCNvMsd_NtB4_5storeNtBV_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit

bb.h:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !1324
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin14PinMacroHelperNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtB1b_11StoreOpaque17allocate_instance0EECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_RINvNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8one_pollNCNvMsd_NtB4_5storeNtBV_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1324
  br i1 %i.k, label %bb.j, label %bb.i, !prof !16

bb.i:                                             ; preds = %_RINvNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8one_pollNCNvMsd_NtB4_5storeNtBV_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit
  store i32 %i.j, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.j:                                             ; preds = %_RINvNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8one_pollNCNvMsd_NtB4_5storeNtBV_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslcwApyVHiOd_7bincode6varint15encode_unsigned17varint_encode_u16INtNtNtB6_8features8impl_std8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtB1T_3vec3VechEEEECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2, i16 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = icmp ult i16 %3, 251
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  %i.e = load ptr, ptr %1, align 8, !alias.scope !1355, !nonnull !4, !align !15, !noundef !4 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  %i.f = load i64, ptr %i.e, align 8, !range !8, !alias.scope !1356, !noalias !1357, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1356, !noalias !1357, !noundef !4 ; 4 uses
  %i.i = icmp sgt i64 %i.h, -1
  tail call void @llvm.assume(i1 %i.i), !noalias !1357
  %i.j = sub nsw i64 %i.f, %i.h
  %i.k = icmp ugt i64 %i.j, 1
  br i1 %i.k, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtBb_3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs7gfv9tzbXmh_6yara_x.exit.thread, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtBb_3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs7gfv9tzbXmh_6yara_x.exit, !prof !5

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtBb_3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs7gfv9tzbXmh_6yara_x.exit.thread: ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358), !noalias !1357
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1359, !noalias !1357, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  store i8 -5, ptr %i.n, align 1, !noalias !1360
  %i.o = add nuw i64 %i.h, 1
  store i64 %i.o, ptr %i.g, align 8, !alias.scope !1359, !noalias !1357
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.g

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtBb_3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.b
  %i.q = tail call noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterQINtNtBa_3vec3VechEE14write_all_coldCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 1) #34, !noalias !1357 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not.i9 = icmp eq ptr %i.q, null
  br i1 %.not.i9, label %bb.g, label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.s = trunc nuw i16 %3 to i8                   ; 2 uses
  store i8 %i.s, ptr %i.c, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  %i.t = load ptr, ptr %1, align 8, !alias.scope !1362, !nonnull !4, !align !15, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1363)
  %i.u = load i64, ptr %i.t, align 8, !range !8, !alias.scope !1363, !noalias !1364, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !1363, !noalias !1364, !noundef !4 ; 4 uses
  %i.x = icmp sgt i64 %i.w, -1
  tail call void @llvm.assume(i1 %i.x), !noalias !1364
  %i.y = sub nsw i64 %i.u, %i.w
  %i.z = icmp ugt i64 %i.y, 1
  br i1 %i.z, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtBb_3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs7gfv9tzbXmh_6yara_x.exit14.thread, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtBb_3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs7gfv9tzbXmh_6yara_x.exit14, !prof !5

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterQINtNtBb_3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs7gfv9tzbXmh_6yara_x.exit14.thread: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1365), !noalias !1364
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !1366, !noalias !1364, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.w
  store i8 %i.s, ptr %i.ac, align 1, !noalias !1367
  %i.ad = add nuw i64 %i.w, 1
  store i64 %i.ad, ptr %i.v, align 8, !alias.scope !1366, !noalias !1364
end_hunk_2
