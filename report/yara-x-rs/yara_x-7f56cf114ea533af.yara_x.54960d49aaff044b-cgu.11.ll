Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.11?download=true
inline.NumInlined: 4347
inline.NumDeleted: 1844
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12assert_readyNCINvMNtB4_8instanceNtBY_8Instance11new_startedNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextE0EB1J_:bb.a
  unreachable

bb.s:                                             ; preds = %bb.m
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #39
          to label %.noexc60.i.i.i unwind label %bb.aw, !noalias !1264

.noexc60.i.i.i:                                   ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.q, %bb.m
  %i.ch = phi ptr [ %.phi.trans.insert.i.i, %bb.m ], [ %i.bw, %bb.q ] ; 3 uses
  %i.ci = phi ptr [ %i.aw, %bb.m ], [ %i.bx, %bb.q ] ; 3 uses
  %i.cj = phi ptr [ %.phi.trans.insert.i.i.i, %bb.m ], [ %i.bz, %bb.q ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ae, i64 424 ; 3 uses
  %i.cl = load i8, ptr %i.ck, align 8, !range !12, !noalias !1263, !noundef !4
  switch i8 %i.cl, label %default.unreachable [
    i8 0, label %bb.u
    i8 1, label %bb.ah
    i8 2, label %bb.ai
    i8 3, label %bb.aj
  ]

bb.u:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ae, i64 376
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ae, i64 392 ; 2 uses
  %i.co = load ptr, ptr %i.cm, align 8, !noalias !1263, !nonnull !4, !align !15, !noundef !4 ; 3 uses
  store ptr %i.co, ptr %i.cn, align 8, !noalias !1263
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ae, i64 384
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !1263, !align !15, !noundef !4
  %i.cr = load atomic i64, ptr @_RNvCs71WB3uNJSA6_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1263 ; 2 uses
  %i.cs = icmp ult i64 %i.cr, 6
  call void @llvm.assume(i1 %i.cs)
  %i.ct = icmp samesign ugt i64 %i.cr, 4
  br i1 %i.ct, label %bb.w, label %bb.y

bb.v:                                             ; preds = %bb.w
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1263
  br label %.body.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1263
  %i.cv = getelementptr i8, ptr %i.co, i64 544
  %.val.i.i.i.i.i = load i64, ptr %i.cv, align 8, !range !7, !noalias !1264, !noundef !4
  store i64 %.val.i.i.i.i.i, ptr %i.z, align 8, !noalias !1263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1263
  store ptr %i.z, ptr %i.y, align 8, !noalias !1263
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXsj_NtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store4dataNtB5_7StoreIdNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1263
  store ptr @63, ptr %i.x, align 8, !noalias !1263
  %i.cw = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 24, ptr %i.cw, align 8, !noalias !1263
  %i.cx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr @63, ptr %i.cx, align 8, !noalias !1263
  %i.cy = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 24, ptr %i.cy, align 8, !noalias !1263
  %i.cz = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr @62, ptr %i.cz, align 8, !noalias !1263
  invoke void @_RINvNtCs71WB3uNJSA6_3log13___private_api3loguNtB2_12GlobalLoggerECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull @61, ptr noundef nonnull %i.y, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.x)
          to label %bb.x unwind label %bb.v, !noalias !1264

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1263
  %.pre.i.i.i.i.i = load ptr, ptr %i.cn, align 8, !noalias !1263
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %i.da = phi ptr [ %.pre.i.i.i.i.i, %bb.x ], [ %i.co, %bb.u ] ; 4 uses
  %.val26.i.i.i.i.i = load i64, ptr %i.da, align 8, !range !11, !noalias !1264, !noundef !4
  %.not.i.i.i.i.i.i = icmp eq i64 %.val26.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i, label %bb.ab, label %bb.z, !prof !5

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #36
          to label %bb.aa unwind label %bb.ao, !noalias !1264

bb.aa:                                            ; preds = %bb.af, %bb.ac, %bb.z
  unreachable

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
          to label %2 unwind label %bb.ak, !noalias !1266

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

2:                                                ; preds = %bb.al
  store i8 1, ptr %i.dl, align 8, !noalias !1265
  store i8 1, ptr %i.ck, align 8, !noalias !1263
  store i8 1, ptr %i.cj, align 8, !noalias !1263
  br label %bb.ik

.critedge.i.i.i:                                  ; preds = %bb.n
  store i8 1, ptr %i.bz, align 8, !noalias !1263
  %.phi.trans.insert169.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  %.pre170.i.i.i = load ptr, ptr %.phi.trans.insert169.i.i.i, align 8, !noalias !1263 ; 2 uses
  %.val55.pre.i.i.i = load ptr, ptr %.pre170.i.i.i, align 8, !noalias !1264
  br label %bb.aq

bb.aq:                                            ; preds = %.critedge.i.i.i, %bb.j
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
          to label %bb.ar unwind label %bb.aw, !noalias !1264 ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  %i.ea = extractvalue { i64, ptr } %i.dz, 0
  %i.eb = extractvalue { i64, ptr } %i.dz, 1      ; 2 uses
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = trunc nuw i64 %i.ea to i1
  br i1 %i.ed, label %bb.ik, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9100.i.i.i)
  %i.ee = load ptr, ptr %i.dv, align 8, !noalias !1263, !nonnull !4, !align !15, !noundef !4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ae, i64 232
  %.val53.i.i.i = load ptr, ptr %i.ef, align 8, !noalias !1263, !align !15, !noundef !4
  %i.eg = load ptr, ptr %i.ds, align 8, !noalias !1263, !nonnull !4, !align !15, !noundef !4
  %.val56.i.i.i = load ptr, ptr %i.eg, align 8, !noalias !1264, !nonnull !4, !noundef !4 ; 2 uses
  %i.eh = atomicrmw add ptr %.val56.i.i.i, i64 1 monotonic, align 8, !noalias !1264
  %i.ei = icmp slt i64 %i.eh, 0
  br i1 %i.ei, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.trap()
  unreachable

bb.au:                                            ; preds = %bb.as
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
  br label %bb.ay

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %bb.bj, %bb.ba, %bb.az
  %.pn36.i.i.i = phi { ptr, i32 } [ %i.gg, %bb.bj ], [ %i.eu, %bb.az ], [ %i.eu, %bb.ba ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.ae, i64 256
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm17ModuleRuntimeInfoECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(16) %i.em) #38
          to label %bb.av unwind label %bb.ax, !noalias !1264

bb.av:                                            ; preds = %bb.bi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit.i.i.i
  %.pn38.i.i.i = phi { ptr, i32 } [ %i.fo, %bb.bi ], [ %.pn36.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9100.i.i.i)
  br label %.body.i.i.i

bb.aw:                                            ; preds = %bb.ie, %bb.aq, %bb.s, %bb.r, %bb.h, %bb.g
  %i.en = phi ptr [ %i.ahq, %bb.ie ], [ %i.dp, %bb.aq ], [ %.phi.trans.insert.i.i, %bb.s ], [ %.phi.trans.insert.i.i, %bb.r ], [ %i.ba, %bb.h ], [ %i.ba, %bb.g ]
  %i.eo = phi ptr [ %i.ahr, %bb.ie ], [ %i.dq, %bb.aq ], [ %i.aw, %bb.s ], [ %i.aw, %bb.r ], [ %i.bb, %bb.h ], [ %i.bb, %bb.g ]
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.ax:                                            ; preds = %.body81.i.i.i, %bb.ba, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit.i.i.i
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !1264
  unreachable

bb.ay:                                            ; preds = %bb.au, %bb.e
  %i.er = phi ptr [ %i.dp, %bb.au ], [ %.phi.trans.insert.i.i, %bb.e ] ; 4 uses
  %i.es = phi ptr [ %i.dq, %bb.au ], [ %i.aw, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1263
  %i.et = getelementptr inbounds nuw i8, ptr %i.ae, i64 280 ; 2 uses
  invoke fastcc void @_RNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtB7_11StoreOpaque17allocate_instance0Cs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ab, ptr noundef nonnull align 8 %i.et, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %bb.bb unwind label %bb.az, !noalias !1264

bb.az:                                            ; preds = %bb.ay
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1263
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ae, i64 892
  %i.ew = load i8, ptr %i.ev, align 4, !range !12, !noalias !1263, !noundef !4
  %cond.i.i.i.i = icmp eq i8 %i.ew, 3
  br i1 %cond.i.i.i.i, label %bb.ba, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ae, i64 424
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs4_NtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocatorDNtBJ_17InstanceAllocatorEL_15allocate_module0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8 %i.ex)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit.i.i.i unwind label %bb.ax, !noalias !1264

bb.bb:                                            ; preds = %bb.ay
  %i.ey = load i32, ptr %i.ab, align 8, !range !13, !noalias !1263, !noundef !4 ; 2 uses
  %i.ez = icmp eq i32 %i.ey, 2
  br i1 %i.ez, label %bb.ip, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.sroa.2.0.copyload.i.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 4, !noalias !1263 ; 3 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.3.0.copyload.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !1263 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1263
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ae, i64 892
  %i.fb = load i8, ptr %i.fa, align 4, !range !12, !noalias !1263, !noundef !4
  %cond.i62.i.i.i = icmp eq i8 %i.fb, 3
  br i1 %cond.i62.i.i.i, label %bb.bd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit64.i.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ae, i64 424
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs4_NtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocatorDNtBJ_17InstanceAllocatorEL_15allocate_module0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8 %i.fc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit64.i.i.i unwind label %bb.bj, !noalias !1264

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit64.i.i.i: ; preds = %bb.bd, %bb.bc
  %i.fd = trunc nuw i32 %i.ey to i1
  br i1 %i.fd, label %bb.bk, label %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store4data10InstanceIdNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs7gfv9tzbXmh_6yara_x.exit.i.i.i

_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store4data10InstanceIdNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit64.i.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ae, i64 256
  call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  %i.ff = load i64, ptr %i.fe, align 8, !range !14, !alias.scope !1267, !noalias !1263, !noundef !4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ae, i64 264 ; 4 uses
  %i.fh = icmp eq i64 %i.ff, 0
  br i1 %i.fh, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store4data10InstanceIdNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs7gfv9tzbXmh_6yara_x.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  %i.fi = load ptr, ptr %i.fg, align 8, !alias.scope !1271, !noalias !1263, !nonnull !4, !noundef !4
  %i.fj = atomicrmw add ptr %i.fi, i64 -1 release, align 8, !noalias !1272
  %i.fk = icmp eq i64 %i.fj, 1
  br i1 %i.fk, label %bb.bf, label %.thread259.i.i.i

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6module11ModuleInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fg) #34
          to label %.thread259.i.i.i unwind label %bb.bi, !noalias !1264

bb.bg:                                            ; preds = %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store4data10InstanceIdNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs7gfv9tzbXmh_6yara_x.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  %i.fl = load ptr, ptr %i.fg, align 8, !alias.scope !1275, !noalias !1263, !nonnull !4, !noundef !4
  %i.fm = atomicrmw add ptr %i.fl, i64 -1 release, align 8, !noalias !1276
  %i.fn = icmp eq i64 %i.fm, 1
  br i1 %i.fn, label %bb.bh, label %.thread259.i.i.i

bb.bh:                                            ; preds = %bb.bg
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm14BareModuleInfoE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fg) #34
          to label %.thread259.i.i.i unwind label %bb.bi, !noalias !1264

bb.bi:                                            ; preds = %bb.bo, %bb.bm, %bb.bh, %bb.bf
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.thread259.i.i.i:                                 ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9100.i.i.i)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ae, i64 224
  %i.fq = load ptr, ptr %i.fp, align 8, !noalias !1263, !nonnull !4, !align !15, !noundef !4 ; 4 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 544
  %.val57.i.i.i = load i64, ptr %i.fr, align 8, !range !7, !noalias !1264, !noundef !4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ae, i64 672
  store i64 %.val57.i.i.i, ptr %i.fs, align 8, !noalias !1263
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ae, i64 680
  store i32 %.sroa.2.0.copyload.i.i.i, ptr %i.ft, align 8, !noalias !1263
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 536
  %.val58.i.i.i = load ptr, ptr %i.fu, align 8, !noalias !1264, !nonnull !4, !noundef !4
  %i.fv = getelementptr inbounds nuw i8, ptr %.val58.i.i.i, i64 600
  %i.fw = load i64, ptr %i.fv, align 8, !noalias !1264, !noundef !4
  %i.fx = and i64 %i.fw, 34359738400
  %i.fy = icmp eq i64 %i.fx, 34359738400
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ae, i64 232
  %i.ga = load ptr, ptr %i.fz, align 8, !noalias !1263, !align !15, !noundef !4 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ae, i64 248
  %i.gc = load ptr, ptr %i.gb, align 8, !noalias !1263, !nonnull !4, !align !15, !noundef !4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 80
  %.val47.i.i.i = load ptr, ptr %i.gd, align 8, !noalias !1264, !nonnull !4, !noundef !4
  %i.ge = getelementptr inbounds nuw i8, ptr %.val47.i.i.i, i64 16 ; 2 uses
  %i.gf = zext i1 %i.fy to i8                     ; 2 uses
  %.sroa.7118.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 328
  store ptr %i.ga, ptr %.sroa.7118.0..sroa_idx.i.i.i, align 8, !noalias !1263
  %.sroa.9120.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 360
  store ptr %i.fq, ptr %.sroa.9120.0..sroa_idx.i.i.i, align 8, !noalias !1263
  %.sroa.10121.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 368
  store ptr %i.ge, ptr %.sroa.10121.0..sroa_idx.i.i.i, align 8, !noalias !1263
  %.sroa.11122.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 376
  store i32 %.sroa.2.0.copyload.i.i.i, ptr %.sroa.11122.0..sroa_idx.i.i.i, align 8, !noalias !1263
  %.sroa.13124.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 385 ; 2 uses
  store i8 0, ptr %.sroa.13124.0..sroa_idx.i.i.i, align 1, !noalias !1263
  %.sroa.14125.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 386
  store i8 %i.gf, ptr %.sroa.14125.0..sroa_idx.i.i.i, align 2, !noalias !1263
  br label %bb.br

bb.bj:                                            ; preds = %bb.bd
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit.i.i.i

bb.bk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs7gfv9tzbXmh_6yara_x.exit64.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.i) ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ae, i64 256
  call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  %i.gi = load i64, ptr %i.gh, align 8, !range !14, !alias.scope !1277, !noalias !1263, !noundef !4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ae, i64 264 ; 4 uses
  %i.gk = icmp eq i64 %i.gi, 0
  br i1 %i.gk, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  %i.gl = load ptr, ptr %i.gj, align 8, !alias.scope !1281, !noalias !1263, !nonnull !4, !noundef !4
  %i.gm = atomicrmw add ptr %i.gl, i64 -1 release, align 8, !noalias !1282
  %i.gn = icmp eq i64 %i.gm, 1
  br i1 %i.gn, label %bb.bm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm17ModuleRuntimeInfoECs7gfv9tzbXmh_6yara_x.exit69.i.i.i

bb.bm:                                            ; preds = %bb.bl
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6module11ModuleInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gj) #34
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm17ModuleRuntimeInfoECs7gfv9tzbXmh_6yara_x.exit69.i.i.i unwind label %bb.bi, !noalias !1264

bb.bn:                                            ; preds = %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  %i.go = load ptr, ptr %i.gj, align 8, !alias.scope !1285, !noalias !1263, !nonnull !4, !noundef !4
  %i.gp = atomicrmw add ptr %i.go, i64 -1 release, align 8, !noalias !1286
  %i.gq = icmp eq i64 %i.gp, 1
  br i1 %i.gq, label %bb.bo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm17ModuleRuntimeInfoECs7gfv9tzbXmh_6yara_x.exit69.i.i.i

bb.bo:                                            ; preds = %bb.bn
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm14BareModuleInfoE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gj) #34
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm17ModuleRuntimeInfoECs7gfv9tzbXmh_6yara_x.exit69.i.i.i unwind label %bb.bi, !noalias !1264

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm17ModuleRuntimeInfoECs7gfv9tzbXmh_6yara_x.exit69.i.i.i: ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9100.i.i.i)
  br label %bb.ik

bb.bp:                                            ; preds = %bb.d
  %.phi.trans.insert173.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 385 ; 12 uses
  %.pre174.i.i.i = load i8, ptr %.phi.trans.insert173.i.i.i, align 1, !range !21, !noalias !1263
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ae, i64 280 ; 12 uses
  switch i8 %.pre174.i.i.i, label %default.unreachable [
    i8 0, label %._crit_edge86.i.i
    i8 1, label %bb.bx
    i8 2, label %bb.by
    i8 3, label %bb.bz
    i8 4, label %bb.dc
    i8 5, label %bb.fw
  ]

._crit_edge86.i.i:                                ; preds = %bb.bp
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
end_hunk_0
