Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet-02d1abad6e587b92.xet.9ce171721425479-cgu.07?download=true
inline.NumInlined: 1304
inline.NumDeleted: 562
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory31consolidate_shards_in_directoryRNtNtCsG258MDvU3F_3std4path4PathECsQbU2fm3lSD_3xet:bb.a

bb.z:                                             ; preds = %bb.y
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !1288
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.dj, i64 %i.dl) #36
          to label %bb.em unwind label %bb.x, !noalias !1294

.body152.i:                                       ; preds = %bb.ai, %bb.aj, %bb.aa, %bb.bi, %bb.bb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit.i
  %.pn118.i = phi { ptr, i32 } [ %i.gz, %bb.bb ], [ %.pn116.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit.i ], [ %i.hd, %bb.bi ], [ %i.dm, %bb.aa ], [ %i.ez, %bb.aj ], [ %i.ez, %bb.ai ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao) #37
          to label %.body.i unwind label %bb.bp, !noalias !1294

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit174.i, %bb.bj, %bb.ba, %bb.ay, %bb.aq, %bb.ap, %bb.ad, %._crit_edge.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body152.i

bb.ab:                                            ; preds = %bb.y
  %i.dn = load ptr, ptr %i.dk, align 8, !noalias !1288, !nonnull !8, !noundef !8
  %i.do = icmp samesign ule i64 %i.dd, %i.dj
  call void @llvm.assume(i1 %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1288
  store i64 %i.dj, ptr %i.ap, align 8, !noalias !1288
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  store ptr %i.dn, ptr %i.dp, align 8, !noalias !1288
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 4 uses
  store i64 0, ptr %i.dq, align 8, !noalias !1288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1288
  store i64 0, ptr %i.ao, align 8, !noalias !1288
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.dr, align 8, !noalias !1288
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 4 uses
  store i64 0, ptr %i.ds, align 8, !noalias !1288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(248) %i.an, ptr noundef nonnull align 8 dereferenceable(32) @228, i64 32, i1 false), !noalias !1288
  %.sroa.4.0..sroa_idx.i140.i = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  store i64 2, ptr %.sroa.4.0..sroa_idx.i140.i, align 16, !alias.scope !1298, !noalias !1288
  %.sroa.5.0..sroa_idx.i141.i = getelementptr inbounds nuw i8, ptr %i.an, i64 40 ; 2 uses
  store i64 200, ptr %.sroa.5.0..sroa_idx.i141.i, align 8, !alias.scope !1298, !noalias !1288
  %i.dt = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.dt, i8 0, i64 80, i1 false), !noalias !1288
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  store i64 1, ptr %.sroa.52.0..sroa_idx.i.i, align 16, !alias.scope !1298, !noalias !1288
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 136
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 72, i1 false), !alias.scope !1298, !noalias !1288
  store i64 -1, ptr %.sroa.15.0..sroa_idx.i.i, align 16, !alias.scope !1298, !noalias !1288
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16.0..sroa_idx.i.i, i8 0, i64 32, i1 false), !alias.scope !1298, !noalias !1288
  %i.du = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !1288, !nonnull !8, !noundef !8 ; 4 uses
  %i.dw = load i64, ptr %i.au, align 8, !range !19, !noalias !1288, !noundef !8
  %i.dx = load i64, ptr %i.bg, align 8, !noalias !1288, !noundef !8 ; 3 uses
  %i.dy = icmp ult i64 %i.dx, 1152921504606846976
  call void @llvm.assume(i1 %i.dy)
  %.idx.i = shl nuw nsw i64 %i.dx, 3
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !1288
  store ptr %i.dv, ptr %i.am, align 8, !noalias !1288
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  store ptr %i.dv, ptr %.sroa.57.0..sroa_idx.i, align 8, !noalias !1288
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %i.dw, ptr %.sroa.68.0..sroa_idx.i, align 8, !noalias !1288
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  store ptr %i.dz, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1288
  %i.ea = icmp eq i64 %i.dx, 0
  br i1 %i.ea, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val22) ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %.sroa.469.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.473.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.019.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.019.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ef = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.532.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.532.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.532.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %.sroa.532.i.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %.sroa.532.i.sroa.8.0..sroa_idx117 = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.532.i.sroa.9.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  br label %bb.ac

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit.i: ; preds = %bb.bq, %.body182.i, %.loopexit.split-lp36.i, %.loopexit35.i
  %.pn116.i = phi { ptr, i32 } [ %.pn.i, %.body182.i ], [ %.pn.i, %bb.bq ], [ %lpad.loopexit37.i, %.loopexit35.i ], [ %lpad.loopexit.split-lp38.i, %.loopexit.split-lp36.i ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %.body152.i unwind label %bb.bp, !noalias !1294

.loopexit35.i:                                    ; preds = %.invoke.i
  %lpad.loopexit37.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit.i

.loopexit.split-lp36.i:                           ; preds = %bb.cf
  %lpad.loopexit.split-lp38.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit.i

bb.ac:                                            ; preds = %.backedge.i, %.lr.ph.i
  %i.ek = phi ptr [ %i.dv, %.lr.ph.i ], [ %i.jm, %.backedge.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %i.el, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !1301, !noalias !1288
  %i.em = load ptr, ptr %i.ek, align 8, !noalias !1304, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1288
  store ptr %i.em, ptr %i.al, align 8, !noalias !1288
  %i.en = invoke noundef zeroext i1 @_RNvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2_10XetRuntime18in_sigint_shutdown(ptr noundef nonnull align 8 %i.eb)
          to label %bb.bs unwind label %bb.br, !noalias !1294

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.ab
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit144.i unwind label %bb.aa, !noalias !1294

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit144.i: ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1288
  %i.eo = load i64, ptr %i.bt, align 8, !noalias !1288, !noundef !8 ; 2 uses
  %i.ep = icmp sgt i64 %i.eo, -1
  call void @llvm.assume(i1 %i.ep)
  %i.eq = icmp eq i64 %i.eo, 0
  br i1 %i.eq, label %bb.ap, label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit144.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1288
  store ptr %i.at, ptr %i.s, align 8, !noalias !1288
  %i.er = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 0, ptr %i.er, align 8, !noalias !1288
  invoke void @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handleNtB5_12MDBShardFile21write_out_from_readerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEERRNtNtCsG258MDvU3F_3std4path4PathECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %6)
          to label %bb.ae unwind label %bb.aa, !noalias !1294

bb.ae:                                            ; preds = %bb.ad
  %i.es = load i64, ptr %i.t, align 8, !range !1193, !noalias !1288, !noundef !8 ; 2 uses
  %.not111.i = icmp eq i64 %i.es, -1
  %i.et = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !noalias !1288 ; 4 uses
  br i1 %.not111.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.5103.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.27.24.copyload = load i64, ptr %.sroa.5103.0..sroa_idx.i, align 8, !noalias !1305
  %.sroa.29.24..sroa.5103.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.29.24.copyload = load ptr, ptr %.sroa.29.24..sroa.5103.0..sroa_idx.i.sroa_idx, align 8, !noalias !1305
  %.sroa.30.24..sroa.5103.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.30.24.copyload = load i64, ptr %.sroa.30.24..sroa.5103.0..sroa_idx.i.sroa_idx, align 8, !noalias !1305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1288
  %i.ev = ptrtoint ptr %i.eu to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1288
  br label %bb.al

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1288
  call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.eu, ptr %i.b, align 8, !noalias !1309
  %i.ew = load i64, ptr %i.dc, align 8, !alias.scope !1306, !noalias !1294, !noundef !8 ; 3 uses
  %i.ex = load i64, ptr %i.aq, align 8, !range !19, !alias.scope !1306, !noalias !1294, !noundef !8
  %i.ey = icmp eq i64 %i.ew, %i.ex
  br i1 %i.ey, label %bb.ah, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEE8push_mutCsQbU2fm3lSD_3xet.exit

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEE8grow_oneCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEE8push_mutCsQbU2fm3lSD_3xet.exit unwind label %bb.ai, !noalias !1294

bb.ai:                                            ; preds = %bb.ah
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = atomicrmw sub ptr %i.eu, i64 1 release, align 8, !noalias !1310
  %i.fb = icmp eq i64 %i.fa, 1
  br i1 %i.fb, label %bb.aj, label %.body152.i

bb.aj:                                            ; preds = %bb.ai
  fence acquire, !noalias !1294
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #40
          to label %.body152.i unwind label %bb.ak, !noalias !1294

bb.ak:                                            ; preds = %bb.aj
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !1294
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEE8push_mutCsQbU2fm3lSD_3xet.exit: ; preds = %bb.ag, %bb.ah
  %i.fd = load ptr, ptr %i.db, align 8, !alias.scope !1306, !noalias !1294, !nonnull !8, !noundef !8
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.ew
  store ptr %i.eu, ptr %i.fe, align 8, !noalias !1294
  %i.ff = add i64 %i.ew, 1
  store i64 %i.ff, ptr %i.dc, align 8, !alias.scope !1306, !noalias !1294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ap

bb.al:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit194.i, %bb.af
  %.sroa.22.1.a = phi i64 [ %i.ev, %bb.af ], [ %.sroa.22.0.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit194.i ]
  %.sroa.27.1 = phi i64 [ %.sroa.27.24.copyload, %bb.af ], [ %.sroa.27.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit194.i ]
  %.sroa.30.1 = phi i64 [ %.sroa.30.24.copyload, %bb.af ], [ %.sroa.30.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit194.i ]
  %.sroa.29.1 = phi ptr [ %.sroa.29.24.copyload, %bb.af ], [ %.sroa.29.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit194.i ]
  %.sroa.13.1 = phi i64 [ %i.es, %bb.af ], [ %.sroa.13.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit194.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1288
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.an unwind label %bb.am, !noalias !1294

bb.am:                                            ; preds = %bb.al
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %.body.i unwind label %bb.ao, !noalias !1294

bb.an:                                            ; preds = %bb.al
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit.i unwind label %bb.dx, !noalias !1294

bb.ao:                                            ; preds = %bb.am
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !1294
  unreachable

bb.ap:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEE8push_mutCsQbU2fm3lSD_3xet.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit144.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1288
  invoke void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.aq unwind label %bb.aa, !noalias !1294

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1288
  invoke void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.ar unwind label %bb.aa, !noalias !1294

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518.i.i)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !1315, !noalias !1320, !noundef !8 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !1318, !noalias !1321, !noundef !8 ; 2 uses
  %i.fm = icmp eq i64 %i.fj, %i.fl
  br i1 %i.fm, label %bb.as, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ar
  %.pre.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1315, !noalias !1320
  br label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fn = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.fo = load i8, ptr %i.fn, align 8, !range !240, !alias.scope !1315, !noalias !1320, !noundef !8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.fq = load i8, ptr %i.fp, align 8, !range !240, !alias.scope !1318, !noalias !1321, !noundef !8
  %i.fr = icmp eq i8 %i.fo, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.l, i64 57
  %i.ft = load i8, ptr %i.fs, align 1, !range !240, !alias.scope !1315, !noalias !1320
  %i.fu = icmp eq i8 %i.ft, 2
  %or.cond.i.i = select i1 %i.fr, i1 %i.fu, i1 false
  %i.fv = getelementptr inbounds nuw i8, ptr %i.k, i64 57
  %i.fw = load i8, ptr %i.fv, align 1, !range !240, !alias.scope !1318, !noalias !1321
  %i.fx = icmp eq i8 %i.fw, 2
  %or.cond7.i.i = select i1 %or.cond.i.i, i1 %i.fx, i1 false
  %.pre27.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1315, !noalias !1320 ; 3 uses
  br i1 %or.cond7.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.au, %bb.as, %._crit_edge.i.i
  %i.fy = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %.pre27.i.i, %bb.au ], [ %.pre27.i.i, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1322
  %i.fz = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ga = load i8, ptr %i.fz, align 8, !range !1210, !alias.scope !1315, !noalias !1320, !noundef !8 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ga, -1
  br i1 %.not.i.i, label %bb.aw, label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.gb = load ptr, ptr %i.k, align 8, !alias.scope !1318, !noalias !1321, !nonnull !8, !noundef !8
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %.pre27.i.i, ptr nonnull %i.gb, i64 %i.fj), !noalias !1323
  %i.gc = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.gc, label %.thread33.i, label %bb.at

.thread33.i:                                      ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1288
  br label %bb.ba

bb.av:                                            ; preds = %bb.at
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518.i.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.420.0..sroa_idx.i.i, i64 39, i1 false), !noalias !1320
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.at
  %i.gd = getelementptr inbounds nuw i8, ptr %i.l, i64 58
  %i.ge = load i8, ptr %i.gd, align 2, !range !11, !alias.scope !1315, !noalias !1320, !noundef !8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.gg = load i8, ptr %i.gf, align 8, !range !240, !alias.scope !1315, !noalias !1320, !noundef !8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.l, i64 57
  %i.gi = load i8, ptr %i.gh, align 1, !range !240, !alias.scope !1315, !noalias !1320, !noundef !8
  store ptr %i.fy, ptr %i.i, align 8, !noalias !1322
  %.sroa.4.0..sroa_idx.i146.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.fj, ptr %.sroa.4.0..sroa_idx.i146.i, align 8, !noalias !1322
  %.sroa.5.0..sroa_idx.i147.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i8 %i.ga, ptr %.sroa.5.0..sroa_idx.i147.i, align 8, !noalias !1322
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518.i.i, i64 39, i1 false), !noalias !1322
  %.sroa.6.0..sroa_idx.i148.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i8 %i.gg, ptr %.sroa.6.0..sroa_idx.i148.i, align 8, !noalias !1322
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 57
  store i8 %i.gi, ptr %.sroa.7.0..sroa_idx.i.i, align 1, !noalias !1322
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 58
  store i8 %i.ge, ptr %.sroa.8.0..sroa_idx.i.i, align 2, !noalias !1322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1322
  %i.gj = load ptr, ptr %i.k, align 8, !alias.scope !1318, !noalias !1321, !nonnull !8, !noundef !8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.gl = load i8, ptr %i.gk, align 8, !range !1210, !alias.scope !1318, !noalias !1321, !noundef !8 ; 2 uses
  %.not26.i.i = icmp eq i8 %i.gl, -1
  br i1 %.not26.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.425.0..sroa_idx.i.i, i64 39, i1 false), !noalias !1321
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gm = getelementptr inbounds nuw i8, ptr %i.k, i64 58
  %i.gn = load i8, ptr %i.gm, align 2, !range !11, !alias.scope !1318, !noalias !1321, !noundef !8
  %i.go = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.gp = load i8, ptr %i.go, align 8, !range !240, !alias.scope !1318, !noalias !1321, !noundef !8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.k, i64 57
  %i.gr = load i8, ptr %i.gq, align 1, !range !240, !alias.scope !1318, !noalias !1321, !noundef !8
  store ptr %i.gj, ptr %i.h, align 8, !noalias !1322
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.fl, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !1322
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i8 %i.gl, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !1322
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i.i, i64 39, i1 false), !noalias !1322
  %.sroa.612.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i8 %i.gp, ptr %.sroa.612.0..sroa_idx.i.i, align 8, !noalias !1322
  %.sroa.713.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 57
  store i8 %i.gr, ptr %.sroa.713.0..sroa_idx.i.i, align 1, !noalias !1322
  %.sroa.814.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 58
  store i8 %i.gn, ptr %.sroa.814.0..sroa_idx.i.i, align 2, !noalias !1322
  %i.gs = invoke noundef zeroext i1 @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1u_2eqB3_E0ECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.h)
          to label %bb.az unwind label %bb.aa, !noalias !1294

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1322
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1288
  br i1 %i.gs, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az, %.thread33.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1288
  %i.gt = load ptr, ptr %i.db, align 8, !noalias !1288, !nonnull !8, !noundef !8 ; 2 uses
  %i.gu = load i64, ptr %i.dc, align 8, !noalias !1288, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1324
  %i.gv = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @192)
          to label %.noexc151.i unwind label %bb.aa, !noalias !1294 ; 2 uses

.noexc151.i:                                      ; preds = %bb.ba
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gu
  %i.gx = extractvalue { i64, i64 } %i.gv, 0
  %i.gy = extractvalue { i64, i64 } %i.gv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @56, i64 32, i1 false), !noalias !1324
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %i.gx, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1324
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %i.gy, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !1324
  invoke void @_RINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB6_7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2S_8adapters3map3MapINtNtNtB2U_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBU_14metadata_shard17shard_file_handle12MDBShardFileEENCINvNtB5k_17session_directory12merge_shardsRNtNtB24_4path4PathB6W_Es_0EECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull %i.gt, ptr noundef nonnull %i.gw)
          to label %bb.bh unwind label %bb.bb, !noalias !1327

bb.bb:                                            ; preds = %.noexc151.i
  %i.gz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %.body152.i unwind label %bb.bc, !noalias !1327

bb.bc:                                            ; preds = %bb.bb
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !1327
  unreachable

bb.bd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsQbU2fm3lSD_3xet.exit159.i, %bb.az
  %.sroa.0130.0.copyload = load i64, ptr %i.aq, align 8, !noalias !1288
  %.sroa.4131.0.copyload = load i64, ptr %i.db, align 8, !noalias !1288
  %.sroa.5132.0.copyload = load i64, ptr %i.dc, align 8, !noalias !1288
  %.sroa.6133.24.copyload = load i64, ptr %i.ap, align 8, !noalias !1288
  %.sroa.8134.24.copyload = load ptr, ptr %i.dp, align 8, !noalias !1288
  %.sroa.9.24.copyload = load i64, ptr %i.dq, align 8, !noalias !1288
  %.sroa.10135.48.copyload = load i64, ptr %i.ao, align 8, !noalias !1288
  %.sroa.12.48.copyload = load ptr, ptr %i.dr, align 8, !noalias !1288
  %.sroa.13136.48.copyload = load i64, ptr %i.ds, align 8, !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1288
end_hunk_0
begin_hunk_1_@_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory31consolidate_shards_in_directoryRNtNtCsG258MDvU3F_3std4path4PathECsQbU2fm3lSD_3xet:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1288
  br label %bb.bd

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit.i: ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1288
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %bb.bl unwind label %bb.bk, !noalias !1294

bb.bk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit.i
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %.body162.i unwind label %bb.bm, !noalias !1294

bb.bl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit164.i unwind label %bb.l, !noalias !1294

bb.bm:                                            ; preds = %bb.bk
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !1294
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit164.i: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1288
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit169.i unwind label %bb.bn, !noalias !1294

bb.bn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit164.i
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %common.resume unwind label %bb.bo, !noalias !1294

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit169.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit164.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at), !noalias !1294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1288
  br label %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB1s_ECsQbU2fm3lSD_3xet.exit

bb.bo:                                            ; preds = %bb.bn
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !1294
  unreachable

bb.bp:                                            ; preds = %bb.es, %bb.er, %.body.i, %.body177.i, %bb.bq, %bb.bi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit.i, %.body152.i, %.body197.i, %.body202.i, %.body155.i, %.body162.i
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !1294
  unreachable

.body182.i:                                       ; preds = %bb.dn, %bb.dm, %bb.cz, %bb.cy, %.body177.i, %bb.br
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body178.i, %.body177.i ], [ %i.js, %bb.cy ], [ %i.hm, %bb.br ], [ %i.js, %bb.cz ], [ %i.kp, %bb.dn ], [ %i.kp, %bb.dm ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  %i.hj = load ptr, ptr %i.al, align 8, !alias.scope !1334, !noalias !1288, !nonnull !8, !noundef !8
  %i.hk = atomicrmw sub ptr %i.hj, i64 1 release, align 8, !noalias !1335
  %i.hl = icmp eq i64 %i.hk, 1
  br i1 %i.hl, label %bb.bq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit.i

bb.bq:                                            ; preds = %.body182.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al) #40
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit.i unwind label %bb.bp, !noalias !1294

bb.br:                                            ; preds = %bb.dh, %bb.dg, %bb.cu, %bb.bt, %bb.ac
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %.body182.i

bb.bs:                                            ; preds = %bb.ac
  br i1 %i.en, label %.loopexit154, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1288
  %i.hn = load ptr, ptr %i.al, align 8, !noalias !1288, !nonnull !8, !noundef !8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  invoke void @_RNvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handleNtB4_12MDBShardFile16read_into_buffer(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %i.ho, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %bb.bu unwind label %bb.br, !noalias !1294

bb.bu:                                            ; preds = %bb.bt
  %i.hp = load i64, ptr %i.ak, align 8, !range !1193, !noalias !1288, !noundef !8
  %.not112.i = icmp eq i64 %i.hp, -1
  br i1 %.not112.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i64 40, i1 false), !noalias !1288
  %i.hq = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !1288 ; 2 uses
  br i1 %5, label %bb.cg, label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1288
  %i.hr = load ptr, ptr %i.al, align 8, !noalias !1288, !nonnull !8, !noundef !8
  %i.hs = atomicrmw add ptr %i.hr, i64 1 monotonic, align 8, !noalias !1294
  %i.ht = icmp slt i64 %i.hs, 0
  br i1 %i.ht, label %bb.db, label %bb.cw

.loopexit.i:                                      ; preds = %bb.cn, %bb.cj, %bb.ci
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body177.i

.loopexit.split-lp.i:                             ; preds = %bb.ce, %bb.ca, %bb.bz
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body177.i

.body177.i:                                       ; preds = %bb.cr, %bb.cq, %.loopexit.split-lp.i, %.loopexit.i
  %eh.lpad-body178.i = phi { ptr, i32 } [ %i.jb, %bb.cq ], [ %i.jb, %bb.cr ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs31YAwBA1AlL_19xet_core_structures5error9CoreErrorECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aj) #37
          to label %.body182.i unwind label %bb.bp, !noalias !1294

bb.bx:                                            ; preds = %bb.bv
  %i.hu = icmp ult i64 %i.hq, 5
  br i1 %i.hu, label %bb.by, label %bb.cd

bb.by:                                            ; preds = %bb.bx
  %i.hv = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardss_10___CALLSITE, i64 16) monotonic, align 8, !noalias !1288 ; 3 uses
  switch i8 %i.hv, label %bb.bz [
    i8 0, label %bb.cd
    i8 1, label %bb.ca
    i8 2, label %bb.ca
  ], !prof !1221

bb.bz:                                            ; preds = %bb.by
  %i.hw = invoke noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardss_10___CALLSITE)
          to label %bb.cb unwind label %.loopexit.split-lp.i, !noalias !1294 ; 2 uses

bb.ca:                                            ; preds = %bb.by, %bb.cb, %bb.by
  %.sroa.027.0.i = phi i8 [ %i.hw, %bb.cb ], [ %i.hv, %bb.by ], [ %i.hv, %bb.by ]
  %i.hx = load ptr, ptr @_RNvNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardss_10___CALLSITE, align 8, !noalias !1288, !nonnull !8, !align !10, !noundef !8
  %i.hy = invoke noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hx, i8 noundef %.sroa.027.0.i)
          to label %bb.cc unwind label %.loopexit.split-lp.i, !noalias !1294

bb.cb:                                            ; preds = %bb.bz
  %i.hz = icmp eq i8 %i.hw, 0
  br i1 %i.hz, label %bb.cd, label %bb.ca

bb.cc:                                            ; preds = %bb.ca
  br i1 %i.hy, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_RNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB1u_Es2_0CsQbU2fm3lSD_3xet.exit.i, %bb.cc, %bb.cb, %bb.by, %bb.bx
  %.sroa.13.8.copyload42 = load i64, ptr %i.aj, align 8, !noalias !1305
  %.sroa.22.8..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.22.8.copyload46 = load i64, ptr %.sroa.22.8..sroa_idx45, align 8, !noalias !1305
  %.sroa.27.8..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.27.8.copyload50 = load i64, ptr %.sroa.27.8..sroa_idx49, align 8, !noalias !1305
  %.sroa.29.8..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.29.8.copyload55 = load ptr, ptr %.sroa.29.8..sroa_idx54, align 8, !noalias !1305
  %.sroa.30.8..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.sroa.30.8.copyload60 = load i64, ptr %.sroa.30.8..sroa_idx59, align 8, !noalias !1305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1288
  br label %.loopexit154

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1288
  %i.ia = load ptr, ptr @_RNvNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardss_10___CALLSITE, align 8, !noalias !1288, !nonnull !8, !align !10, !noundef !8 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1288
  %i.ic = load ptr, ptr %i.al, align 8, !noalias !1288, !nonnull !8, !noundef !8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store ptr %i.id, ptr %i.aa, align 8, !noalias !1288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1288
  store ptr %i.aa, ptr %i.z, align 8, !noalias !1288
  %.sroa.481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsG258MDvU3F_3std4path7PathBufNtB6_5Debug3fmtCsQbU2fm3lSD_3xet, ptr %.sroa.481.0..sroa_idx.i, align 8, !noalias !1288
  %i.ie = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.aj, ptr %i.ie, align 8, !noalias !1288
  %.sroa.485.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @_RNvXs2_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.485.0..sroa_idx.i, align 8, !noalias !1288
  store ptr @23, ptr %i.ab, align 8, !noalias !1288
  %i.if = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.z, ptr %i.if, align 8, !noalias !1288
  store ptr %i.ab, ptr %i.ac, align 8, !noalias !1288
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @24, ptr %i.ig, align 8, !noalias !1288
  store i64 1, ptr %i.ad, align 8, !noalias !1288
  %.sroa.029.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ac, ptr %.sroa.029.sroa.4.0..sroa_idx.i, align 8, !noalias !1288
  %.sroa.029.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 1, ptr %.sroa.029.sroa.5.0..sroa_idx.i, align 8, !noalias !1288
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.ib, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !1288
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ia, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad)
          to label %_RNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB1u_Es2_0CsQbU2fm3lSD_3xet.exit.i unwind label %.loopexit.split-lp.i, !noalias !1294

_RNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB1u_Es2_0CsQbU2fm3lSD_3xet.exit.i: ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1288
  br label %bb.cd

.loopexit154:                                     ; preds = %bb.bs, %bb.dt, %bb.dj, %bb.cd
  %.sroa.22.0.a = phi i64 [ %.sroa.22.8.copyload46, %bb.cd ], [ %i.kl, %bb.dj ], [ %i.ld, %bb.dt ], [ 7, %bb.bs ]
  %.sroa.27.0 = phi i64 [ %.sroa.27.8.copyload50, %bb.cd ], [ %.sroa.27.24.copyload52, %bb.dj ], [ %.sroa.532.i.sroa.8.0.copyload120, %bb.dt ], [ undef, %bb.bs ]
  %.sroa.30.0 = phi i64 [ %.sroa.30.8.copyload60, %bb.cd ], [ %.sroa.30.24.copyload62, %bb.dj ], [ %.sroa.532.i.sroa.10.0.copyload128, %bb.dt ], [ undef, %bb.bs ]
  %.sroa.29.0 = phi ptr [ %.sroa.29.8.copyload55, %bb.cd ], [ %.sroa.29.24.copyload57, %bb.dj ], [ %.sroa.532.i.sroa.9.0.copyload124, %bb.dt ], [ undef, %bb.bs ]
  %.sroa.13.0 = phi i64 [ %.sroa.13.8.copyload42, %bb.cd ], [ %i.kj, %bb.dj ], [ %i.lc, %bb.dt ], [ 18, %bb.bs ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  %i.ih = load ptr, ptr %i.al, align 8, !alias.scope !1342, !noalias !1288, !nonnull !8, !noundef !8
  %i.ii = atomicrmw sub ptr %i.ih, i64 1 release, align 8, !noalias !1343
  %i.ij = icmp eq i64 %i.ii, 1
  br i1 %i.ij, label %bb.cf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit174.i

bb.cf:                                            ; preds = %.loopexit154
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al) #40
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit174.i unwind label %.loopexit.split-lp36.i, !noalias !1294

bb.cg:                                            ; preds = %bb.bv
  %i.ik = icmp ult i64 %i.hq, 3
  br i1 %i.ik, label %bb.ch, label %bb.cm

bb.ch:                                            ; preds = %bb.cg
  %i.il = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shards10___CALLSITE, i64 16) monotonic, align 8, !noalias !1288 ; 3 uses
  switch i8 %i.il, label %bb.ci [
    i8 0, label %bb.cm
    i8 1, label %bb.cj
    i8 2, label %bb.cj
  ], !prof !1221

bb.ci:                                            ; preds = %bb.ch
  %i.im = invoke noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shards10___CALLSITE)
          to label %bb.ck unwind label %.loopexit.i, !noalias !1294 ; 2 uses

bb.cj:                                            ; preds = %bb.ch, %bb.ck, %bb.ch
  %.sroa.017.0.i = phi i8 [ %i.im, %bb.ck ], [ %i.il, %bb.ch ], [ %i.il, %bb.ch ]
  %i.in = load ptr, ptr @_RNvNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shards10___CALLSITE, align 8, !noalias !1288, !nonnull !8, !align !10, !noundef !8
  %i.io = invoke noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.in, i8 noundef %.sroa.017.0.i)
          to label %bb.cl unwind label %.loopexit.i, !noalias !1294

bb.ck:                                            ; preds = %bb.ci
  %i.ip = icmp eq i8 %i.im, 0
  br i1 %i.ip, label %bb.cm, label %bb.cj

bb.cl:                                            ; preds = %bb.cj
  br i1 %i.io, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %_RNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB1u_Es1_0CsQbU2fm3lSD_3xet.exit.i, %bb.cl, %bb.ck, %bb.ch, %bb.cg
  %i.iq = load ptr, ptr %i.al, align 8, !noalias !1288, !nonnull !8, !noundef !8
  %i.ir = atomicrmw add ptr %i.iq, i64 1 monotonic, align 8, !noalias !1294
  %i.is = icmp slt i64 %i.ir, 0
  br i1 %i.is, label %bb.ct, label %bb.co

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1288
  %i.it = load ptr, ptr @_RNvNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shards10___CALLSITE, align 8, !noalias !1288, !nonnull !8, !align !10, !noundef !8 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1288
  %i.iv = load ptr, ptr %i.al, align 8, !noalias !1288, !nonnull !8, !noundef !8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store ptr %i.iw, ptr %i.af, align 8, !noalias !1288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1288
  store ptr %i.af, ptr %i.ae, align 8, !noalias !1288
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsG258MDvU3F_3std4path7PathBufNtB6_5Debug3fmtCsQbU2fm3lSD_3xet, ptr %.sroa.469.0..sroa_idx.i, align 8, !noalias !1288
  store ptr %i.aj, ptr %i.ec, align 8, !noalias !1288
  store ptr @_RNvXs2_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.473.0..sroa_idx.i, align 8, !noalias !1288
  store ptr @25, ptr %i.ag, align 8, !noalias !1288
  store ptr %i.ae, ptr %i.ed, align 8, !noalias !1288
  store ptr %i.ag, ptr %i.ah, align 8, !noalias !1288
  store ptr @24, ptr %i.ee, align 8, !noalias !1288
  store i64 1, ptr %i.ai, align 8, !noalias !1288
  store ptr %i.ah, ptr %.sroa.019.sroa.4.0..sroa_idx.i, align 8, !noalias !1288
  store i64 1, ptr %.sroa.019.sroa.5.0..sroa_idx.i, align 8, !noalias !1288
  store ptr %i.iu, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !1288
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.it, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai)
          to label %_RNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB1u_Es1_0CsQbU2fm3lSD_3xet.exit.i unwind label %.loopexit.i, !noalias !1294

_RNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB1u_Es1_0CsQbU2fm3lSD_3xet.exit.i: ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1288
  br label %bb.cm

bb.co:                                            ; preds = %bb.cm
  %i.ix = load ptr, ptr %i.al, align 8, !noalias !1288, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1288
  store ptr %i.ix, ptr %i.f, align 8, !noalias !1347
  %i.iy = load i64, ptr %i.ds, align 8, !alias.scope !1344, !noalias !1288, !noundef !8 ; 3 uses
  %i.iz = load i64, ptr %i.ao, align 8, !range !19, !alias.scope !1344, !noalias !1288, !noundef !8
  %i.ja = icmp eq i64 %i.iy, %i.iz
  br i1 %i.ja, label %bb.cp, label %bb.cu

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEE8grow_oneCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.cu unwind label %bb.cq, !noalias !1294

bb.cq:                                            ; preds = %bb.cp
  %i.jb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jc = atomicrmw sub ptr %i.ix, i64 1 release, align 8, !noalias !1348
  %i.jd = icmp eq i64 %i.jc, 1
  br i1 %i.jd, label %bb.cr, label %.body177.i

bb.cr:                                            ; preds = %bb.cq
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #40
          to label %.body177.i unwind label %bb.cs, !noalias !1294

bb.cs:                                            ; preds = %bb.cr
  %i.je = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !1294
  unreachable

bb.ct:                                            ; preds = %bb.cm
  call void @llvm.trap()
  unreachable

bb.cu:                                            ; preds = %bb.cp, %bb.co
  %i.jf = load ptr, ptr %i.dr, align 8, !alias.scope !1344, !noalias !1288, !nonnull !8, !noundef !8
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.iy
  store ptr %i.ix, ptr %i.jg, align 8, !noalias !1294
  %i.jh = add i64 %i.iy, 1
  store i64 %i.jh, ptr %i.ds, align 8, !alias.scope !1344, !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1288
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs31YAwBA1AlL_19xet_core_structures5error9CoreErrorECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aj)
          to label %bb.cv unwind label %bb.br, !noalias !1294

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1288
  call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  %i.ji = load ptr, ptr %i.al, align 8, !alias.scope !1359, !noalias !1288, !nonnull !8, !noundef !8
  %i.jj = atomicrmw sub ptr %i.ji, i64 1 release, align 8, !noalias !1360
  %i.jk = icmp eq i64 %i.jj, 1
  br i1 %i.jk, label %.invoke.i, label %.backedge.i

.invoke.i:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit190.i, %bb.cv
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al) #40
          to label %.backedge.i unwind label %.loopexit35.i, !noalias !1294

.backedge.i:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit190.i, %.invoke.i, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1288
  %i.jl = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1361, !noalias !1288, !nonnull !8, !noundef !8
  %i.jm = load ptr, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !1361, !noalias !1288, !nonnull !8, !noundef !8 ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.jl
  br i1 %i.jn, label %._crit_edge.i, label %bb.ac

bb.cw:                                            ; preds = %bb.bw
  %i.jo = load ptr, ptr %i.al, align 8, !noalias !1288, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1363)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1288
  store ptr %i.jo, ptr %i.e, align 8, !noalias !1366
  %i.jp = load i64, ptr %i.dq, align 8, !alias.scope !1363, !noalias !1288, !noundef !8 ; 3 uses
  %i.jq = load i64, ptr %i.ap, align 8, !range !19, !alias.scope !1363, !noalias !1288, !noundef !8
  %i.jr = icmp eq i64 %i.jp, %i.jq
  br i1 %i.jr, label %bb.cx, label %bb.dc

bb.cx:                                            ; preds = %bb.cw
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEE8grow_oneCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %bb.dc unwind label %bb.cy, !noalias !1294

bb.cy:                                            ; preds = %bb.cx
  %i.js = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jt = atomicrmw sub ptr %i.jo, i64 1 release, align 8, !noalias !1367
  %i.ju = icmp eq i64 %i.jt, 1
  br i1 %i.ju, label %bb.cz, label %.body182.i

bb.cz:                                            ; preds = %bb.cy
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #40
          to label %.body182.i unwind label %bb.da, !noalias !1294

bb.da:                                            ; preds = %bb.cz
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !1294
  unreachable

bb.db:                                            ; preds = %bb.bw
  call void @llvm.trap()
  unreachable

bb.dc:                                            ; preds = %bb.cx, %bb.cw
  %i.jw = load ptr, ptr %i.dp, align 8, !alias.scope !1363, !noalias !1288, !nonnull !8, !noundef !8
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.jp
  store ptr %i.jo, ptr %i.jx, align 8, !noalias !1294
  %i.jy = add i64 %i.jp, 1
  store i64 %i.jy, ptr %i.dq, align 8, !alias.scope !1363, !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1288
  %i.jz = load i64, ptr %i.bt, align 8, !noalias !1288, !noundef !8 ; 3 uses
  %i.ka = icmp sgt i64 %i.jz, -1
  call void @llvm.assume(i1 %i.ka)
  %i.kb = icmp eq i64 %i.jz, 0
  br i1 %i.kb, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
end_hunk_1
begin_hunk_2_@_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory31consolidate_shards_in_directoryRNtNtCsG258MDvU3F_3std4path4PathECsQbU2fm3lSD_3xet:bb.a
bb.du:                                            ; preds = %bb.ds
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.5.0..sroa_idx.i141.i, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.532.i.sroa.11.0..sroa_idx, i64 208, i1 false), !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1288
  store <2 x i64> %i.lb, ptr %i.an, align 16, !noalias !1288
  store i64 %.sroa.532.i.sroa.8.0.copyload120, ptr %.sroa.532.i.sroa.8.0..sroa_idx117, align 16, !noalias !1288
  store ptr %.sroa.532.i.sroa.9.0.copyload124, ptr %.sroa.532.i.sroa.9.0..sroa_idx121, align 8, !noalias !1288
  store i64 %.sroa.532.i.sroa.10.0.copyload128, ptr %.sroa.4.0..sroa_idx.i140.i, align 16, !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1288
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsQbU2fm3lSD_3xet(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.at, i64 noundef 3)
          to label %._RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit190_crit_edge.i unwind label %bb.dv, !noalias !1294

._RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit190_crit_edge.i: ; preds = %bb.du
  %.pre.i = load ptr, ptr %i.al, align 8, !alias.scope !1381, !noalias !1288
  br label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit190.i

bb.dv:                                            ; preds = %bb.du
  %i.le = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #38, !noalias !1294
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit190.i: ; preds = %bb.dw, %._RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit190_crit_edge.i, %bb.dr
  %i.lf = phi ptr [ %.pre.i, %._RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit190_crit_edge.i ], [ %i.kx, %bb.dr ], [ %i.li, %bb.dw ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  %i.lg = atomicrmw sub ptr %i.lf, i64 1 release, align 8, !noalias !1388
  %i.lh = icmp eq i64 %i.lg, 1
  br i1 %i.lh, label %.invoke.i, label %.backedge.i

bb.dw:                                            ; preds = %bb.de
  %i.li = load ptr, ptr %i.al, align 8, !noalias !1288, !nonnull !8, !noundef !8 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 88
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(248) %i.an, ptr noundef nonnull align 8 dereferenceable(248) %i.lj, i64 248, i1 false), !noalias !1294
  br label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit190.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit174.i: ; preds = %bb.cf, %.loopexit154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1288
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit194.i unwind label %bb.aa, !noalias !1294

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit194.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit174.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1288
  br label %bb.al

.body.i:                                          ; preds = %bb.dx, %bb.am, %.body152.i
  %.pn120.i = phi { ptr, i32 } [ %.pn118.i, %.body152.i ], [ %i.lk, %bb.dx ], [ %i.fg, %bb.am ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap) #37
          to label %.body197.i unwind label %bb.bp, !noalias !1294

bb.dx:                                            ; preds = %bb.an
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit.i: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1288
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %bb.dz unwind label %bb.dy, !noalias !1294

bb.dy:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit.i
  %i.ll = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %.body197.i unwind label %bb.ea, !noalias !1294

bb.dz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit199.i unwind label %bb.x, !noalias !1294

bb.ea:                                            ; preds = %bb.dy
  %i.lm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !1294
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit199.i: ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1288
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.ec unwind label %bb.eb, !noalias !1294

bb.eb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit199.i
  %i.ln = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %.body202.i unwind label %bb.ed, !noalias !1294

bb.ec:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit199.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit204.i unwind label %bb.t, !noalias !1294

bb.ed:                                            ; preds = %bb.eb
  %i.lo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !1294
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit204.i: ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1288
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %bb.ef unwind label %bb.ee, !noalias !1294

bb.ee:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit204.i
  %i.lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %.body155.i unwind label %bb.eg, !noalias !1294

bb.ef:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit204.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit210.i unwind label %bb.p, !noalias !1294

bb.eg:                                            ; preds = %bb.ee
  %i.lq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !1294
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit210.i: ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1288
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %bb.ei unwind label %bb.eh, !noalias !1294

bb.eh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit210.i
  %i.lr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %.body162.i unwind label %bb.ej, !noalias !1294

bb.ei:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit210.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit216.i unwind label %bb.l, !noalias !1294

bb.ej:                                            ; preds = %bb.eh
  %i.ls = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !1294
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit216.i: ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1288
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit222.i unwind label %bb.ek, !noalias !1294

bb.ek:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit216.i
  %i.lt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %common.resume unwind label %bb.el, !noalias !1294

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit222.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit216.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at), !noalias !1294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1288
  br label %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB1s_ECsQbU2fm3lSD_3xet.exit

bb.el:                                            ; preds = %bb.ek
  %i.lu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !1294
  unreachable

bb.em:                                            ; preds = %bb.z, %bb.v, %bb.r, %bb.n, %bb.j
  unreachable

bb.en:                                            ; preds = %bb.f
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %bb.ep unwind label %bb.eo, !noalias !1294

bb.eo:                                            ; preds = %bb.en
  %i.lv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %common.resume unwind label %bb.eq, !noalias !1294

bb.ep:                                            ; preds = %bb.en
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au), !noalias !1294
  br label %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB1s_ECsQbU2fm3lSD_3xet.exit

bb.eq:                                            ; preds = %bb.eo
  %i.lw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !1294
  unreachable

bb.er:                                            ; preds = %.body167.thread28.i, %bb.h
  %.pn13022.i = phi { ptr, i32 } [ %lpad.thr_comm26.i, %.body167.thread28.i ], [ %.pn128.i, %bb.h ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au) #37
          to label %common.resume unwind label %bb.bp, !noalias !1294

bb.es:                                            ; preds = %bb.e, %bb.d
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aw) #37
          to label %common.resume unwind label %bb.bp, !noalias !1294

common.resume:                                    ; preds = %.body, %bb.fr, %bb.fo, %bb.fb, %bb.h, %bb.bn, %bb.ek, %bb.eo, %bb.er, %bb.es
  %common.resume.op = phi { ptr, i32 } [ %i.nr, %bb.fo ], [ %.pn13022.i, %bb.er ], [ %i.nc, %bb.fb ], [ %i.lv, %bb.eo ], [ %i.lt, %bb.ek ], [ %lpad.thr_comm.i, %bb.es ], [ %i.hg, %bb.bn ], [ %.pn128.i, %bb.h ], [ %.pn.pn, %bb.fr ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB1s_ECsQbU2fm3lSD_3xet.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit222.i, %bb.ep, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit169.i
  %.sroa.22.3.a = phi i64 [ %.sroa.5132.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit169.i ], [ 0, %bb.ep ], [ %.sroa.22.1.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit222.i ] ; 2 uses
  %.sroa.27.3.a = phi i64 [ %.sroa.6133.24.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit169.i ], [ 0, %bb.ep ], [ %.sroa.27.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit222.i ] ; 3 uses
  %.sroa.30.3 = phi i64 [ %.sroa.9.24.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit169.i ], [ 0, %bb.ep ], [ %.sroa.30.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit222.i ] ; 5 uses
  %.sroa.32.1 = phi i64 [ %.sroa.10135.48.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit169.i ], [ 0, %bb.ep ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit222.i ]
  %.sroa.34.1 = phi i64 [ %.sroa.13136.48.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit169.i ], [ 0, %bb.ep ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit222.i ]
  %.sroa.33.1 = phi ptr [ %.sroa.12.48.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit169.i ], [ inttoptr (i64 8 to ptr), %bb.ep ], [ inttoptr (i64 8 to ptr), %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit222.i ]
  %.sroa.29.3 = phi ptr [ %.sroa.8134.24.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit169.i ], [ inttoptr (i64 8 to ptr), %bb.ep ], [ %.sroa.29.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit222.i ] ; 7 uses
  %.sroa.13.3 = phi i64 [ %.sroa.4131.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit169.i ], [ 8, %bb.ep ], [ %.sroa.13.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit222.i ] ; 2 uses
  %.sroa.040.3 = phi i64 [ %.sroa.0130.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit169.i ], [ 0, %bb.ep ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit222.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.lx = icmp eq i64 %.sroa.040.3, -1
  br i1 %i.lx, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB1s_ECsQbU2fm3lSD_3xet.exit.thread, %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB1s_ECsQbU2fm3lSD_3xet.exit
  %.sroa.13.3150 = phi i64 [ %i.bc, %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB1s_ECsQbU2fm3lSD_3xet.exit.thread ], [ %.sroa.13.3, %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB1s_ECsQbU2fm3lSD_3xet.exit ]
  %.sroa.29.3149 = phi ptr [ %.sroa.6.i.sroa.8.0.copyload108, %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB1s_ECsQbU2fm3lSD_3xet.exit.thread ], [ %.sroa.29.3, %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB1s_ECsQbU2fm3lSD_3xet.exit ]
  %.sroa.30.3148 = phi i64 [ %.sroa.561.0.copyload.i, %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB1s_ECsQbU2fm3lSD_3xet.exit.thread ], [ %.sroa.30.3, %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB1s_ECsQbU2fm3lSD_3xet.exit ]
  %.sroa.27.3147 = phi i64 [ %.sroa.6.i.sroa.7.0.copyload104, %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB1s_ECsQbU2fm3lSD_3xet.exit.thread ], [ %.sroa.27.3.a, %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB1s_ECsQbU2fm3lSD_3xet.exit ]
  %.sroa.22.3146 = phi i64 [ %.sroa.6.i.sroa.0.0.copyload101, %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB1s_ECsQbU2fm3lSD_3xet.exit.thread ], [ %.sroa.22.3.a, %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB1s_ECsQbU2fm3lSD_3xet.exit ]
  store i64 %.sroa.13.3150, ptr %0, align 8
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.22.3146, ptr %.sroa.494.0..sroa_idx, align 8
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.27.3147, ptr %.sroa.595.0..sroa_idx, align 8
  %.sroa.696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.29.3149, ptr %.sroa.696.0..sroa_idx, align 8
  %.sroa.797.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.30.3148, ptr %.sroa.797.0..sroa_idx, align 8
  br label %bb.fd

bb.eu:                                            ; preds = %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB1s_ECsQbU2fm3lSD_3xet.exit
  store i64 %.sroa.040.3, ptr %i.ba, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %.sroa.13.3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %.sroa.22.3.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i64 %.sroa.27.3.a, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store ptr %.sroa.29.3, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store i64 %.sroa.30.3, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 48 ; 9 uses
  store i64 %.sroa.32.1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  store ptr %.sroa.33.1, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  store i64 %.sroa.34.1, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %i.ly = icmp ult i64 %.sroa.30.3, 1152921504606846976
  call void @llvm.assume(i1 %i.ly)
  %.idx = shl nuw nsw i64 %.sroa.30.3, 3
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.29.3, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store ptr %.sroa.29.3, ptr %i.az, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 5 uses
  store ptr %.sroa.29.3, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %.sroa.27.3.a, ptr %.sroa.67.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 3 uses
  store ptr %i.lz, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ma = icmp eq i64 %.sroa.30.3, 0
  br i1 %i.ma, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.eu
  %i.mb = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %5, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit27.us
  %i.mc = phi ptr [ %i.ms, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit27.us ], [ %.sroa.29.3, %.lr.ph ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  store ptr %i.md, ptr %.sroa.56.0..sroa_idx, align 8, !alias.scope !1389
  %i.me = load ptr, ptr %i.mc, align 8, !noalias !1389, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store ptr %i.me, ptr %i.ay, align 8
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mg = invoke noundef ptr @_RINvNtCsG258MDvU3F_3std2fs11remove_fileRNtNtB4_4path7PathBufECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mf)
          to label %bb.ev unwind label %.split.us ; 4 uses

bb.ev:                                            ; preds = %.lr.ph.split.us
  %i.mh = icmp eq ptr %i.mg, null
  br i1 %i.mh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsQbU2fm3lSD_3xet.exit.us, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1392
  %i.mi = ptrtoint ptr %i.mg to i64               ; 2 uses
  %i.mj = and i64 %i.mi, 3
  switch i64 %i.mj, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit.i.us
    i64 3, label %bb.ey
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit.i.us
    i64 1, label %bb.ex
  ], !prof !13

bb.ex:                                            ; preds = %bb.ew
  %i.mk = getelementptr i8, ptr %i.mg, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mk) ]
  store ptr %i.mk, ptr %i.mb, align 8, !alias.scope !1395, !noalias !1392
  store i8 3, ptr %i.c, align 8, !alias.scope !1395, !noalias !1392
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.mb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit.i.us unwind label %.split.us

bb.ey:                                            ; preds = %bb.ew
  %i.ml = icmp ult ptr %i.mg, inttoptr (i64 188978561024 to ptr)
  %i.mm = and i64 %i.mi, 1095216660480
  %i.mn = icmp ne i64 %i.mm, 1095216660480
  call void @llvm.assume(i1 %i.ml)
  call void @llvm.assume(i1 %i.mn)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit.i.us

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit.i.us: ; preds = %bb.ey, %bb.ex, %bb.ew, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1392
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsQbU2fm3lSD_3xet.exit.us

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsQbU2fm3lSD_3xet.exit.us: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit.i.us, %bb.ev
  call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  %i.mo = load ptr, ptr %i.ay, align 8, !alias.scope !1404, !nonnull !8, !noundef !8
  %i.mp = atomicrmw sub ptr %i.mo, i64 1 release, align 8, !noalias !1404
  %i.mq = icmp eq i64 %i.mp, 1
  br i1 %i.mq, label %bb.ez, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit27.us

bb.ez:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsQbU2fm3lSD_3xet.exit.us
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ay) #40
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit27.us unwind label %.loopexit.split.us

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit27.us: ; preds = %bb.ez, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsQbU2fm3lSD_3xet.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %i.mr = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !1405, !nonnull !8, !noundef !8
  %i.ms = load ptr, ptr %.sroa.56.0..sroa_idx, align 8, !alias.scope !1405, !nonnull !8, !noundef !8 ; 2 uses
  %i.mt = icmp eq ptr %i.ms, %i.mr
  br i1 %i.mt, label %._crit_edge, label %.lr.ph.split.us

.split.us:                                        ; preds = %bb.ex, %.lr.ph.split.us
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

default.unreachable:                              ; preds = %bb.ew
  unreachable

.loopexit.split.us:                               ; preds = %bb.ez
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit: ; preds = %.loopexit.split-lp, %.loopexit.split.us, %.loopexit.split, %bb.fe, %bb.ff
  %.pn = phi { ptr, i32 } [ %.us-phi, %bb.fe ], [ %.us-phi, %bb.ff ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.az)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit unwind label %bb.fq

.loopexit.split:                                  ; preds = %bb.fh
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit

.loopexit.split-lp:                               ; preds = %bb.fj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit

.lr.ph.split:                                     ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit27
  %i.mv = phi ptr [ %i.nv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit27 ], [ %.sroa.29.3, %.lr.ph ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  store ptr %i.mw, ptr %.sroa.56.0..sroa_idx, align 8, !alias.scope !1389
  %i.mx = load ptr, ptr %i.mv, align 8, !noalias !1389, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store ptr %i.mx, ptr %i.ay, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.mz = invoke noundef ptr @_RINvNtCsG258MDvU3F_3std2fs11remove_fileRNtNtB4_4path7PathBufECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.my)
          to label %bb.fg unwind label %.split    ; 2 uses

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit27, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit27.us, %bb.eu
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.az)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit24 unwind label %bb.fa

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit, %bb.fa
  %.pn.pn = phi { ptr, i32 } [ %i.na, %bb.fa ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba) #37
          to label %bb.fr unwind label %bb.fq

bb.fa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit29, %._crit_edge
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit24: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nb, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit unwind label %bb.fb

bb.fb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit24
  %i.nc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx)
          to label %common.resume unwind label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.nd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit24
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx)
  br label %bb.fd

bb.fd:                                            ; preds = %bb.et, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit36, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEECsQbU2fm3lSD_3xet.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  ret void

.split:                                           ; preds = %.lr.ph.split
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.fe:                                            ; preds = %.split.us, %.split
  %.us-phi = phi { ptr, i32 } [ %i.ne, %.split ], [ %i.mu, %.split.us ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  %i.nf = load ptr, ptr %i.ay, align 8, !alias.scope !1413, !nonnull !8, !noundef !8
  %i.ng = atomicrmw sub ptr %i.nf, i64 1 release, align 8, !noalias !1413
  %i.nh = icmp eq i64 %i.ng, 1
  br i1 %i.nh, label %bb.ff, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit

bb.ff:                                            ; preds = %bb.fe
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ay) #40
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit unwind label %bb.fq

bb.fg:                                            ; preds = %.lr.ph.split
  %.not17 = icmp eq ptr %i.mz, null
  br i1 %.not17, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsQbU2fm3lSD_3xet.exit, label %bb.fi

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsQbU2fm3lSD_3xet.exit: ; preds = %bb.fg
  call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  %i.ni = load ptr, ptr %i.ay, align 8, !alias.scope !1404, !nonnull !8, !noundef !8
  %i.nj = atomicrmw sub ptr %i.ni, i64 1 release, align 8, !noalias !1404
  %i.nk = icmp eq i64 %i.nj, 1
  br i1 %i.nk, label %bb.fh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit27

bb.fh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsQbU2fm3lSD_3xet.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ay) #40
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit27 unwind label %.loopexit.split

bb.fi:                                            ; preds = %bb.fg
  store i64 0, ptr %0, align 8
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mz, ptr %.sroa.499.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  %i.nl = load ptr, ptr %i.ay, align 8, !alias.scope !1420, !nonnull !8, !noundef !8
  %i.nm = atomicrmw sub ptr %i.nl, i64 1 release, align 8, !noalias !1420
  %i.nn = icmp eq i64 %i.nm, 1
end_hunk_2
