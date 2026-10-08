Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_env-45a487b3da3a2ebc.uu_env.2eeaa69494824df3-cgu.0?download=true
inline.NumInlined: 1366
inline.NumDeleted: 752
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RNvCs41JD7yXDh97_6uu_env12block_signal:bb.a
  br i1 %.not102.i29, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit56, label %.lr.ph.i24

.lr.ph141.i34:                                    ; preds = %.preheader114.i32, %bb.de
  %.sroa.0.2140.i35 = phi ptr [ %i.nk, %bb.de ], [ %i.mo, %.preheader114.i32 ] ; 2 uses
  %.sroa.26.2139.i36 = phi i64 [ %i.nj, %bb.de ], [ %i.mp, %.preheader114.i32 ]
  %.sroa.084.2138.i37 = phi i64 [ %i.nm, %bb.de ], [ 0, %.preheader114.i32 ]
  %i.ne = load i8, ptr %.sroa.0.2140.i35, align 1, !alias.scope !424, !noalias !425, !noundef !5
  %i.nf = zext i8 %i.ne to i32
  %i.ng = add nsw i32 %i.nf, -48                  ; 2 uses
  %i.nh = icmp ult i32 %i.ng, 10
  br i1 %i.nh, label %bb.de, label %.thread

bb.de:                                            ; preds = %.lr.ph141.i34
  %i.ni = mul i64 %.sroa.084.2138.i37, 10
  %i.nj = add nsw i64 %.sroa.26.2139.i36, -1      ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i35, i64 1
  %i.nl = zext nneg i32 %i.ng to i64
  %i.nm = sub i64 %i.ni, %i.nl                    ; 2 uses
  %.not103.i38 = icmp eq i64 %i.nj, 0
  br i1 %.not103.i38, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit56, label %.lr.ph141.i34

bb.df:                                            ; preds = %bb.cy, %bb.cz, %thread-pre-split.i54
  %.sroa.26.0.i39 = phi i64 [ %i.mn, %bb.cz ], [ %i.mf, %thread-pre-split.i54 ], [ %i.mf, %bb.cy ] ; 4 uses
  %.sroa.0.0.i40 = phi ptr [ %i.mm, %bb.cz ], [ %i.mh, %thread-pre-split.i54 ], [ %i.mh, %bb.cy ] ; 2 uses
  %i.nn = icmp samesign ult i64 %.sroa.26.0.i39, 16
  br i1 %i.nn, label %.preheader.i47, label %.preheader111.i41

.preheader.i47:                                   ; preds = %bb.df
  %.not105146.i48 = icmp eq i64 %.sroa.26.0.i39, 0
  br i1 %.not105146.i48, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit56, label %.lr.ph150.i49

.preheader111.i41:                                ; preds = %bb.df, %bb.di
  %.sroa.0.3145.i42 = phi ptr [ %i.no, %bb.di ], [ %.sroa.0.0.i40, %bb.df ] ; 2 uses
  %.sroa.26.3144.i43 = phi i64 [ %i.np, %bb.di ], [ %.sroa.26.0.i39, %bb.df ]
  %.sroa.084.3143.i44 = phi i64 [ %i.oa, %bb.di ], [ 0, %bb.df ]
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i42, i64 1
  %i.np = add nsw i64 %.sroa.26.3144.i43, -1      ; 2 uses
  %i.nq = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i44, i64 10) ; 2 uses
  %i.nr = extractvalue { i64, i1 } %i.nq, 0
  %i.ns = extractvalue { i64, i1 } %i.nq, 1
  br i1 %i.ns, label %.thread, label %bb.dg, !prof !10

bb.dg:                                            ; preds = %.preheader111.i41
  %i.nt = load i8, ptr %.sroa.0.3145.i42, align 1, !alias.scope !424, !noalias !425, !noundef !5
  %i.nu = zext i8 %i.nt to i32
  %i.nv = add nsw i32 %i.nu, -48                  ; 2 uses
  %i.nw = icmp ult i32 %i.nv, 10
  br i1 %i.nw, label %bb.dh, label %.thread

bb.dh:                                            ; preds = %bb.dg
  %i.nx = zext nneg i32 %i.nv to i64
  %i.ny = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.nr, i64 %i.nx) ; 2 uses
  %i.nz = extractvalue { i64, i1 } %i.ny, 1
  br i1 %i.nz, label %.thread, label %bb.di, !prof !10

bb.di:                                            ; preds = %bb.dh
  %i.oa = extractvalue { i64, i1 } %i.ny, 0       ; 2 uses
  %.not104.i46 = icmp eq i64 %i.np, 0
  br i1 %.not104.i46, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit56, label %.preheader111.i41

.lr.ph150.i49:                                    ; preds = %.preheader.i47, %bb.dj
  %.sroa.0.4149.i50 = phi ptr [ %i.oh, %bb.dj ], [ %.sroa.0.0.i40, %.preheader.i47 ] ; 2 uses
  %.sroa.26.4148.i51 = phi i64 [ %i.og, %bb.dj ], [ %.sroa.26.0.i39, %.preheader.i47 ]
  %.sroa.084.4147.i52 = phi i64 [ %i.oj, %bb.dj ], [ 0, %.preheader.i47 ]
  %i.ob = load i8, ptr %.sroa.0.4149.i50, align 1, !alias.scope !424, !noalias !425, !noundef !5
  %i.oc = zext i8 %i.ob to i32
  %i.od = add nsw i32 %i.oc, -48                  ; 2 uses
  %i.oe = icmp ult i32 %i.od, 10
  br i1 %i.oe, label %bb.dj, label %.thread

bb.dj:                                            ; preds = %.lr.ph150.i49
  %i.of = mul i64 %.sroa.084.4147.i52, 10
  %i.og = add nsw i64 %.sroa.26.4148.i51, -1      ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i50, i64 1
  %i.oi = zext nneg i32 %i.od to i64
  %i.oj = add i64 %i.of, %i.oi                    ; 2 uses
  %.not105.i53 = icmp eq i64 %i.og, 0
  br i1 %.not105.i53, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit56, label %.lr.ph150.i49

.thread:                                          ; preds = %.lr.ph.i24, %bb.dc, %bb.db, %.lr.ph141.i34, %.preheader111.i41, %bb.dg, %bb.dh, %.lr.ph150.i49, %bb.cy, %bb.cy, %bb.ct
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.ct ], [ %i.mh, %.preheader111.i41 ], [ %i.mh, %.lr.ph150.i49 ], [ %i.mh, %bb.cy ], [ %i.mh, %.lr.ph141.i34 ], [ %i.mh, %bb.cy ], [ %i.mh, %bb.dh ], [ %i.mh, %bb.dg ], [ %i.mh, %bb.db ], [ %i.mh, %bb.dc ], [ %i.mh, %.lr.ph.i24 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.mf) #27
  %i.ok = load i8, ptr %i.s, align 8, !range !16, !noundef !5
  %i.ol = trunc nuw i8 %i.ok to i1
  br i1 %i.ol, label %bb.dm, label %bb.dn

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit56: ; preds = %bb.dd, %bb.de, %bb.di, %bb.dj, %.preheader.i47, %.preheader114.i32
  %.sroa.1569.0 = phi i64 [ %i.nm, %bb.de ], [ 0, %.preheader114.i32 ], [ %i.oj, %bb.dj ], [ 0, %.preheader.i47 ], [ %i.oa, %bb.di ], [ %i.nd, %bb.dd ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 5, i64 noundef %.sroa.1569.0) #26
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dn, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit56
  %i.om = phi ptr [ %.ph, %bb.dn ], [ %i.mh, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit56 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 34, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.on = icmp eq i64 %i.mf, 0
  br i1 %i.on, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.om, i64 noundef %i.mf, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !426
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit

bb.dm:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 %i.mf, ptr %i.r, align 8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.ph, ptr %.sroa.565.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.mf, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 34, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit

bb.dn:                                            ; preds = %.thread
  %i.oo = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.op = load double, ptr %i.oo, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 5, double noundef %i.op) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.dk

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit: ; preds = %bb.dl, %bb.dk, %bb.dm
  br i1 %.sroa.011.0, label %bb.dp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit59

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit59: ; preds = %bb.dq, %bb.dp, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !427
  %i.oq = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #26, !noalias !427 ; 4 uses
  %i.or = icmp eq ptr %i.oq, null
  br i1 %i.or, label %bb.do, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !10

bb.do:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit59
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #30, !noalias !427
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oq, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  store i32 125, ptr %.sroa.473.0..sroa_idx, align 8
  br label %bb.dr

bb.dp:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit
  %.val.i57 = load i64, ptr %i.t, align 8, !range !6, !noundef !5 ; 2 uses
  %i.os = icmp eq i64 %.val.i57, 0
  br i1 %i.os, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit59, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jy, i64 noundef %.val.i57, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !428
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit59

bb.dr:                                            ; preds = %bb.cc, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.cd
  %.sroa.0.1 = phi ptr [ null, %bb.cd ], [ %.sink396.i, %bb.cc ], [ %i.oq, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.ot = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1, 0
  %i.ou = insertvalue { ptr, ptr } %i.ot, ptr @35, 1
  ret { ptr, ptr } %i.ou
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCs41JD7yXDh97_6uu_env12make_options(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([232 x i8]) align 8 captures(none) dereferenceable(232) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [40 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [40 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [72 x i8], align 8                ; 11 uses
  %i.u = alloca [40 x i8], align 8                ; 6 uses
  %i.v = alloca [72 x i8], align 8                ; 6 uses
  %i.w = alloca [72 x i8], align 8                ; 6 uses
  %i.x = alloca [40 x i8], align 8                ; 6 uses
  %i.y = alloca [232 x i8], align 8               ; 29 uses
  %i.z = alloca [32 x i8], align 8                ; 9 uses
  %i.aa = alloca [32 x i8], align 8               ; 9 uses
  %i.ab = alloca [32 x i8], align 8               ; 11 uses
  %i.ac = alloca [32 x i8], align 8               ; 9 uses
  %i.ad = alloca [32 x i8], align 8               ; 12 uses
  %i.ae = alloca [64 x i8], align 8               ; 5 uses
  %.sroa.5154 = alloca [56 x i8], align 8         ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 12 uses
  %i.ag = alloca [64 x i8], align 8               ; 5 uses
  %.sroa.5 = alloca [56 x i8], align 8            ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 9 uses
  %i.ai = tail call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 18) #26
  %i.aj = tail call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 4) #26
  %. = select i1 %i.aj, i8 0, i8 10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr @54, ptr %i.s, align 8, !noalias !495
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 5, ptr %i.ak, align 8, !noalias !495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !495
  %i.al = load i64, ptr %i.x, align 8, !range !496, !alias.scope !494, !noalias !497, !noundef !5
  %.not.i = icmp eq i64 %i.al, 2
  br i1 %.not.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs41JD7yXDh97_6uu_env.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.x, i64 40, i1 false), !noalias !497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !495
  store ptr %i.s, ptr %i.q, align 8, !noalias !495
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs41JD7yXDh97_6uu_env, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !495
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.r, ptr %i.am, align 8, !noalias !495
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !495
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #28, !noalias !494
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs41JD7yXDh97_6uu_env.exit: ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !494, !noalias !497, !align !7, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs41JD7yXDh97_6uu_env.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs41JD7yXDh97_6uu_env.exit, %bb.c
  %.sroa.3.0 = phi i64 [ %i.as, %bb.c ], [ undef, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs41JD7yXDh97_6uu_env.exit ]
  %.sroa.01.0 = phi ptr [ %i.aq, %bb.c ], [ null, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs41JD7yXDh97_6uu_env.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 4) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr @55, ptr %i.p, align 8, !noalias !500
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 4, ptr %i.at, align 8, !noalias !500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !500
  %i.au = load i64, ptr %i.w, align 8, !range !14, !alias.scope !499, !noalias !501, !noundef !5
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  br i1 %i.av, label %bb.e, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECs41JD7yXDh97_6uu_env.exit, !prof !10

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.aw, i64 40, i1 false), !noalias !501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !500
  store ptr %i.p, ptr %i.n, align 8, !noalias !500
  %.sroa.42.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs41JD7yXDh97_6uu_env, ptr %.sroa.42.0..sroa_idx.i110, align 8, !noalias !500
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.ax, align 8, !noalias !500
  %.sroa.46.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i111, align 8, !noalias !500
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #28, !noalias !502
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECs41JD7yXDh97_6uu_env.exit: ; preds = %bb.d
  %.sroa.0.0.copyload147 = load ptr, ptr %i.aw, align 8, !alias.scope !502, !noalias !503 ; 2 uses
  %.sroa.5.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx149, i64 56, i1 false), !alias.scope !502, !noalias !503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.not91 = icmp eq ptr %.sroa.0.0.copyload147, null
  br i1 %.not91, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECs41JD7yXDh97_6uu_env.exit
  %.sroa.4.0..sroa_idx151 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx151, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5, i64 56, i1 false)
  store ptr %.sroa.0.0.copyload147, ptr %i.ag, align 8
  call fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtB14_8OsStringENvMB14_B4d_9as_os_strEE9from_iterCs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.ag) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.h

bb.g:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECs41JD7yXDh97_6uu_env.exit
  store i64 0, ptr %i.ah, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 0, ptr %i.az, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5154)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 5) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @56, ptr %i.m, align 8, !noalias !506
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 5, ptr %i.ba, align 8, !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !506
  %i.bb = load i64, ptr %i.v, align 8, !range !14, !alias.scope !505, !noalias !507, !noundef !5
  %i.bc = trunc nuw i64 %i.bb to i1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  br i1 %i.bc, label %bb.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECs41JD7yXDh97_6uu_env.exit114, !prof !10

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.bd, i64 40, i1 false), !noalias !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !506
  store ptr %i.m, ptr %i.k, align 8, !noalias !506
  %.sroa.42.0..sroa_idx.i112 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs41JD7yXDh97_6uu_env, ptr %.sroa.42.0..sroa_idx.i112, align 8, !noalias !506
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.be, align 8, !noalias !506
  %.sroa.46.0..sroa_idx.i113 = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i113, align 8, !noalias !506
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #28, !noalias !508
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECs41JD7yXDh97_6uu_env.exit114: ; preds = %bb.h
  %.sroa.0152.0.copyload153 = load ptr, ptr %i.bd, align 8, !alias.scope !508, !noalias !509 ; 2 uses
  %.sroa.5154.0..sroa_idx155 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5154, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5154.0..sroa_idx155, i64 56, i1 false), !alias.scope !508, !noalias !509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.not92 = icmp eq ptr %.sroa.0152.0.copyload153, null
  br i1 %.not92, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECs41JD7yXDh97_6uu_env.exit114
  %.sroa.4157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4157.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5154, i64 56, i1 false)
  store ptr %.sroa.0152.0.copyload153, ptr %i.ae, align 8
  call fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtB14_8OsStringENvMB14_B4d_9as_os_strEE9from_iterCs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.af, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.ae) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.l

bb.k:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECs41JD7yXDh97_6uu_env.exit114
  store i64 0, ptr %i.af, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 0, ptr %i.bg, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5154)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @57, ptr %i.j, align 8, !noalias !511
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 5, ptr %i.bh, align 8, !noalias !511
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !511
  %i.bi = load i64, ptr %i.u, align 8, !range !496, !alias.scope !510, !noalias !512, !noundef !5
  %.not.i115 = icmp eq i64 %i.bi, 2
  br i1 %.not.i115, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs41JD7yXDh97_6uu_env.exit118, label %bb.m, !prof !9

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.u, i64 40, i1 false), !noalias !512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !511
  store ptr %i.j, ptr %i.h, align 8, !noalias !511
  %.sroa.42.0..sroa_idx.i116 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs41JD7yXDh97_6uu_env, ptr %.sroa.42.0..sroa_idx.i116, align 8, !noalias !511
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %i.bj, align 8, !noalias !511
  %.sroa.46.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i117, align 8, !noalias !511
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #28, !noalias !510
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs41JD7yXDh97_6uu_env.exit118: ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !510, !noalias !512, !align !7, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.not93 = icmp eq ptr %i.bl, null
  br i1 %.not93, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs41JD7yXDh97_6uu_env.exit118
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !5, !noundef !5
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !5
  br label %bb.o

bb.o:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs41JD7yXDh97_6uu_env.exit118, %bb.n
  %.sroa.35.0 = phi i64 [ %i.bp, %bb.n ], [ undef, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs41JD7yXDh97_6uu_env.exit118 ]
  %.sroa.04.0 = phi ptr [ %i.bn, %bb.n ], [ null, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs41JD7yXDh97_6uu_env.exit118 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %.val102 = load ptr, ptr %2, align 8            ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val103 = load i64, ptr %i.bq, align 8         ; 3 uses
  call fastcc void @_RNvCs41JD7yXDh97_6uu_env20build_signal_request(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 13, ptr %.val102, i64 %.val103) #26
  %i.br = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.bs = load i8, ptr %i.br, align 8, !range !18, !noundef !5 ; 2 uses
  %i.bt = icmp eq i8 %i.bs, 2
  %i.bu = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  br i1 %i.bt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bu, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bw, ptr %i.by, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.val108 = load i64, ptr %i.af, align 8, !range !6, !noundef !5 ; 2 uses
  %i.bz = icmp eq i64 %.val108, 0
  br i1 %i.bz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit.sink.split

bb.q:                                             ; preds = %bb.o
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.578.0.copyload = load i64, ptr %.sroa.578.0..sroa_idx, align 8
  %.sroa.780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 25
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.719.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.780.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  store ptr %i.bu, ptr %i.ad, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.bw, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %.sroa.578.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i8 %i.bs, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call fastcc void @_RNvCs41JD7yXDh97_6uu_env20build_signal_request(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 14, ptr %.val102, i64 %.val103) #26
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.cb = load i8, ptr %i.ca, align 8, !range !18, !noundef !5 ; 2 uses
  %i.cc = icmp eq i8 %i.cb, 2
  %i.cd = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  br i1 %i.cc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cd, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cf, ptr %i.ch, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.az

bb.s:                                             ; preds = %bb.q
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.583.0.copyload = load i64, ptr %.sroa.583.0..sroa_idx, align 8
  %.sroa.785.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 25
  %.sroa.737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.737.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.785.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store ptr %i.cd, ptr %i.ab, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.cf, ptr %.sroa.434.0..sroa_idx, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %.sroa.583.0.copyload, ptr %.sroa.535.0..sroa_idx, align 8
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i8 %i.cb, ptr %.sroa.636.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call fastcc void @_RNvCs41JD7yXDh97_6uu_env20build_signal_request(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 12, ptr %.val102, i64 %.val103) #26
  %i.ci = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.cj = load i8, ptr %i.ci, align 8, !range !18, !noundef !5 ; 2 uses
  %i.ck = icmp eq i8 %i.cj, 2
  %i.cl = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  br i1 %i.ck, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cl, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cn, ptr %i.cp, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs41JD7yXDh97_6uu_env13SignalRequestEBD_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ab) #26
  br label %bb.az

bb.t:                                             ; preds = %bb.s
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.588.0.copyload = load i64, ptr %.sroa.588.0..sroa_idx, align 8
  %.sroa.790.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 25
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.554.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.790.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.cq = tail call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 20) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.y, i64 96 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.y, i64 128 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.y, i64 224 ; 2 uses
  %i.cv = zext i1 %i.ai to i8
  store i8 %i.cv, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.y, i64 226 ; 3 uses
  store i8 %., ptr %i.cw, align 2
  %i.cx = getelementptr inbounds nuw i8, ptr %i.y, i64 192
  store ptr %.sroa.01.0, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.y, i64 200
  store i64 %.sroa.3.0, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 4 uses
  store i64 0, ptr %i.cz, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 56 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 64 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.y, i64 72 ; 5 uses
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.557.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 88 ; 5 uses
  store i64 0, ptr %.sroa.560.0..sroa_idx, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.y, i64 208
  store ptr %.sroa.04.0, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.y, i64 216
  store i64 %.sroa.35.0, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.y, i64 160 ; 2 uses
  store ptr %i.cl, ptr %i.dd, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 168
  store ptr %i.cn, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 176
  store i64 %.sroa.588.0.copyload, ptr %.sroa.352.0..sroa_idx, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 184
  store i8 %i.cj, ptr %.sroa.453.0..sroa_idx, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.y, i64 225
  %i.df = zext i1 %i.cq to i8
  store i8 %i.df, ptr %i.de, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 4) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @62, ptr %i.g, align 8, !noalias !515
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 4, ptr %i.dg, align 8, !noalias !515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !515
  %i.dh = load i64, ptr %i.t, align 8, !range !14, !alias.scope !514, !noalias !516, !noundef !5
  %i.di = trunc nuw i64 %i.dh to i1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br i1 %i.di, label %bb.u, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECs41JD7yXDh97_6uu_env.exit121, !prof !10

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.dj, i64 40, i1 false), !noalias !516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !515
  store ptr %i.g, ptr %i.e, align 8, !noalias !515
  %.sroa.42.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs41JD7yXDh97_6uu_env, ptr %.sroa.42.0..sroa_idx.i119, align 8, !noalias !515
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.dk, align 8, !noalias !515
  %.sroa.46.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i120, align 8, !noalias !515
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #28, !noalias !517
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECs41JD7yXDh97_6uu_env.exit121: ; preds = %bb.t
  %.sroa.0158.0.copyload159 = load ptr, ptr %i.dj, align 8, !alias.scope !517, !noalias !518 ; 3 uses
  %.sroa.7.0..sroa_idx160 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.7.sroa.0.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx160, align 8, !alias.scope !517, !noalias !518
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx160.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.7.sroa.6.0.copyload = load ptr, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx160.sroa_idx, align 8, !alias.scope !517, !noalias !518 ; 2 uses
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx160.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.7.sroa.7.0.copyload = load ptr, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx160.sroa_idx, align 8, !alias.scope !517, !noalias !518
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx160.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.sroa.7.sroa.8.0.copyload = load ptr, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx160.sroa_idx, align 8, !alias.scope !517, !noalias !518
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx160.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.sroa.7.sroa.9.0.copyload = load ptr, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx160.sroa_idx, align 8, !alias.scope !517, !noalias !518
  %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx160.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %.sroa.7.sroa.10.0.copyload = load ptr, ptr %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx160.sroa_idx, align 8, !alias.scope !517, !noalias !518 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.not94 = icmp eq ptr %.sroa.0158.0.copyload159, null
  br i1 %.not94, label %.loopexit199, label %.preheader201

.preheader201:                                    ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECs41JD7yXDh97_6uu_env.exit121
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %.preheader.outer

.preheader.outer:                                 ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTINtNtB7_6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEBG_EE8push_mutCs41JD7yXDh97_6uu_env.exit.i, %.preheader201
  %.ph = phi ptr [ %i.eo, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTINtNtB7_6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEBG_EE8push_mutCs41JD7yXDh97_6uu_env.exit.i ], [ inttoptr (i64 8 to ptr), %.preheader201 ]
  %.ph329 = phi i64 [ %i.eq, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTINtNtB7_6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEBG_EE8push_mutCs41JD7yXDh97_6uu_env.exit.i ], [ 0, %.preheader201 ] ; 3 uses
  %.sroa.6.0218.ph = phi ptr [ %.sroa.6.2294, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTINtNtB7_6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEBG_EE8push_mutCs41JD7yXDh97_6uu_env.exit.i ], [ %.sroa.7.sroa.0.0.copyload, %.preheader201 ]
  %.sroa.10163.0217.ph = phi ptr [ %.sroa.10163.3, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTINtNtB7_6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEBG_EE8push_mutCs41JD7yXDh97_6uu_env.exit.i ], [ %.sroa.7.sroa.7.0.copyload, %.preheader201 ]
  %.sroa.13.0216.ph = phi ptr [ %.sroa.13.2300, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTINtNtB7_6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEBG_EE8push_mutCs41JD7yXDh97_6uu_env.exit.i ], [ %.sroa.7.sroa.8.0.copyload, %.preheader201 ]
  %.sroa.15.0215.ph = phi ptr [ %.sroa.15.2, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTINtNtB7_6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEBG_EE8push_mutCs41JD7yXDh97_6uu_env.exit.i ], [ %.sroa.7.sroa.9.0.copyload, %.preheader201 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.outer, %.preheader.critedge
  %.sroa.6.0218 = phi ptr [ %.sroa.6.2294, %.preheader.critedge ], [ %.sroa.6.0218.ph, %.preheader.outer ] ; 2 uses
  %.sroa.10163.0217 = phi ptr [ %.sroa.10163.3, %.preheader.critedge ], [ %.sroa.10163.0217.ph, %.preheader.outer ] ; 3 uses
  %.sroa.13.0216 = phi ptr [ %.sroa.13.2300, %.preheader.critedge ], [ %.sroa.13.0216.ph, %.preheader.outer ] ; 3 uses
  %.sroa.15.0215 = phi ptr [ %.sroa.15.2, %.preheader.critedge ], [ %.sroa.15.0215.ph, %.preheader.outer ] ; 5 uses
  %.not.i.i.i311 = icmp eq ptr %.sroa.10163.0217, null
  %i.dn = icmp eq ptr %.sroa.10163.0217, %.sroa.13.0216
  %or.cond312 = select i1 %.not.i.i.i311, i1 true, i1 %i.dn
  br i1 %or.cond312, label %select.unfold.i.i, label %.loopexit200

select.unfold.i.i:                                ; preds = %.preheader, %bb.v
  %.sroa.6.2314 = phi ptr [ %i.dp, %bb.v ], [ %.sroa.6.0218, %.preheader ] ; 8 uses
  %.sroa.13.2313 = phi ptr [ %i.ds, %bb.v ], [ %.sroa.13.0216, %.preheader ] ; 3 uses
  %.not.i5.i.i = icmp eq ptr %.sroa.6.2314, null
  %i.do = icmp eq ptr %.sroa.6.2314, %.sroa.7.sroa.6.0.copyload
  %or.cond.i.i.i = select i1 %.not.i5.i.i, i1 true, i1 %i.do
end_hunk_0
begin_hunk_1_@_RNvCs41JD7yXDh97_6uu_env12make_options:bb.a
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @67, ptr %i.fd, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %.val4.i = load i64, ptr %i.y, align 8, !range !6, !alias.scope !544, !noundef !5 ; 2 uses
  %i.fe = icmp eq i64 %.val4.i, 0
  br i1 %i.fe, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ff = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.val5.i = load ptr, ptr %i.ff, align 8, !alias.scope !544, !nonnull !5, !noundef !5
  %i.fg = shl nuw i64 %.val4.i, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %i.fg, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !544
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit.i: ; preds = %bb.ak, %bb.aj
  %.val2.i = load i64, ptr %i.cr, align 8, !range !6, !alias.scope !544, !noundef !5 ; 2 uses
  %i.fh = icmp eq i64 %.val2.i, 0
  br i1 %i.fh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit6.i, label %bb.al

bb.al:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.val3.i = load ptr, ptr %i.fi, align 8, !alias.scope !544, !nonnull !5, !noundef !5
  %i.fj = shl nuw i64 %.val2.i, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.fj, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !544
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit6.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit6.i: ; preds = %bb.al, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %.val.i.i123 = load ptr, ptr %.sroa.456.0..sroa_idx, align 8, !alias.scope !546, !nonnull !5, !noundef !5 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.557.0..sroa_idx, align 8, !alias.scope !546, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.fk = icmp eq i64 %.val1.i.i, 0
  br i1 %i.fk, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTINtNtB7_6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEBG_EENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs41JD7yXDh97_6uu_env.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit6.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEBC_EECs41JD7yXDh97_6uu_env.exit.i.i.i.i
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.fm, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEBC_EECs41JD7yXDh97_6uu_env.exit.i.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit6.i ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [48 x i8], ptr %.val.i.i123, i64 %.sroa.0.03.i.i.i.i ; 4 uses
  %i.fm = add nuw nsw i64 %.sroa.0.03.i.i.i.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %.val2.i.i.i.i.i = load i64, ptr %i.fl, align 8, !range !12, !alias.scope !549, !noalias !546, !noundef !5 ; 2 uses
  %i.fn = icmp sgt i64 %.val2.i.i.i.i.i, 0
  br i1 %i.fn, label %bb.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i

bb.am:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %.val3.i.i.i.i.i = load ptr, ptr %i.fo, align 8, !alias.scope !549, !noalias !546, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !550
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i: ; preds = %bb.am, %.lr.ph.i.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %.val.i.i.i.i.i = load i64, ptr %i.fp, align 8, !range !12, !alias.scope !549, !noalias !546, !noundef !5 ; 2 uses
  %i.fq = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.fq, label %bb.an, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEBC_EECs41JD7yXDh97_6uu_env.exit.i.i.i.i

bb.an:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %.val1.i.i.i.i.i = load ptr, ptr %i.fr, align 8, !alias.scope !549, !noalias !546, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !550
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEBC_EECs41JD7yXDh97_6uu_env.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEBC_EECs41JD7yXDh97_6uu_env.exit.i.i.i.i: ; preds = %bb.an, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i
  %i.fs = icmp eq i64 %i.fm, %.val1.i.i
  br i1 %i.fs, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTINtNtB7_6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEBG_EENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs41JD7yXDh97_6uu_env.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTINtNtB7_6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEBG_EENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs41JD7yXDh97_6uu_env.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEBC_EECs41JD7yXDh97_6uu_env.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit6.i
  %.val2.i.i = load i64, ptr %i.cz, align 8, !range !6, !alias.scope !546, !noundef !5 ; 2 uses
  %i.ft = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ft, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecTINtNtBG_6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEB19_EEECs41JD7yXDh97_6uu_env.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTINtNtB7_6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEBG_EENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs41JD7yXDh97_6uu_env.exit.i.i
  %i.fu = mul nuw i64 %.val2.i.i, 48
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i123, i64 noundef %i.fu, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !546
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecTINtNtBG_6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEB19_EEECs41JD7yXDh97_6uu_env.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecTINtNtBG_6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEB19_EEECs41JD7yXDh97_6uu_env.exit.i: ; preds = %bb.ao, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTINtNtB7_6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEBG_EENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs41JD7yXDh97_6uu_env.exit.i.i
  %.val.i = load i64, ptr %i.da, align 8, !range !6, !alias.scope !544, !noundef !5 ; 2 uses
  %i.fv = icmp eq i64 %.val.i, 0
  br i1 %i.fv, label %bb.ay, label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecTINtNtBG_6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEB19_EEECs41JD7yXDh97_6uu_env.exit.i
  %.val1.i = load ptr, ptr %.sroa.459.0..sroa_idx, align 8, !alias.scope !544, !nonnull !5, !noundef !5
  %i.fw = shl nuw i64 %.val.i, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.fw, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !544
  br label %bb.ay

_RNvXs9_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit.thread: ; preds = %_RNvXs9_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit.thread.preheader, %_RNvCs41JD7yXDh97_6uu_env17parse_program_opt.exit
  %.sroa.5175.0 = phi ptr [ %.sroa.5175.1291, %_RNvCs41JD7yXDh97_6uu_env17parse_program_opt.exit ], [ %.sroa.5175.0.ph, %_RNvXs9_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit.thread.preheader ] ; 2 uses
  %.sroa.10177.0 = phi ptr [ %.sroa.10177.2, %_RNvCs41JD7yXDh97_6uu_env17parse_program_opt.exit ], [ %.sroa.10177.0.ph, %_RNvXs9_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit.thread.preheader ] ; 3 uses
  %.sroa.14.0 = phi ptr [ %.sroa.14.1288, %_RNvCs41JD7yXDh97_6uu_env17parse_program_opt.exit ], [ %.sroa.14.0.ph, %_RNvXs9_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit.thread.preheader ] ; 3 uses
  %.sroa.17178.0 = phi ptr [ %.sroa.17178.1, %_RNvCs41JD7yXDh97_6uu_env17parse_program_opt.exit ], [ %.sroa.17178.0.ph, %_RNvXs9_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit.thread.preheader ] ; 5 uses
  %.not.i.i.i128317 = icmp eq ptr %.sroa.10177.0, null
  %i.fx = icmp eq ptr %.sroa.10177.0, %.sroa.14.0
  %or.cond283318 = select i1 %.not.i.i.i128317, i1 true, i1 %i.fx
  br i1 %or.cond283318, label %select.unfold.i.i134, label %.loopexit

select.unfold.i.i134:                             ; preds = %_RNvXs9_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit.thread, %bb.aq
  %.sroa.14.1320 = phi ptr [ %i.gc, %bb.aq ], [ %.sroa.14.0, %_RNvXs9_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit.thread ]
  %.sroa.5175.1319 = phi ptr [ %i.fz, %bb.aq ], [ %.sroa.5175.0, %_RNvXs9_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit.thread ] ; 6 uses
  %.not.i5.i.i135 = icmp eq ptr %.sroa.5175.1319, null
  %i.fy = icmp eq ptr %.sroa.5175.1319, %.sroa.7.sroa.6.0.copyload
  %or.cond.i.i.i136 = select i1 %.not.i5.i.i135, i1 true, i1 %i.fy
  br i1 %or.cond.i.i.i136, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %select.unfold.i.i134
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.5175.1319, i64 24 ; 2 uses
  %i.ga = getelementptr i8, ptr %.sroa.5175.1319, i64 8
  %.val.i.i137 = load ptr, ptr %i.ga, align 8, !noalias !551, !nonnull !5, !noundef !5 ; 2 uses
  %i.gb = getelementptr i8, ptr %.sroa.5175.1319, i64 16
  %.val4.i.i138 = load i64, ptr %i.gb, align 8, !noalias !551, !noundef !5 ; 2 uses
  %.idx324 = shl nuw nsw i64 %.val4.i.i138, 5
  %i.gc = getelementptr inbounds nuw i8, ptr %.val.i.i137, i64 %.idx324 ; 2 uses
  %i.gd = icmp eq i64 %.val4.i.i138, 0
  br i1 %i.gd, label %select.unfold.i.i134, label %.loopexit

bb.ar:                                            ; preds = %select.unfold.i.i134
  %.not.i7.i.i139 = icmp eq ptr %.sroa.17178.0, null
  br i1 %.not.i7.i.i139, label %.loopexit199, label %.sink.split.i8.i.i140

.sink.split.i8.i.i140:                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.10.0.copyload) ]
  %i.ge = icmp eq ptr %.sroa.17178.0, %.sroa.7.sroa.10.0.copyload
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.17178.0, i64 32
  br i1 %i.ge, label %.loopexit199, label %bb.as

.loopexit:                                        ; preds = %bb.aq, %_RNvXs9_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit.thread
  %.sroa.5175.1.lcssa = phi ptr [ %.sroa.5175.0, %_RNvXs9_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit.thread ], [ %i.fz, %bb.aq ]
  %.sroa.10177.1.lcssa = phi ptr [ %.sroa.10177.0, %_RNvXs9_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit.thread ], [ %.val.i.i137, %bb.aq ] ; 2 uses
  %.sroa.14.1.lcssa = phi ptr [ %.sroa.14.0, %_RNvXs9_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit.thread ], [ %i.gc, %bb.aq ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.10177.1.lcssa, i64 32
  br label %bb.as

bb.as:                                            ; preds = %.loopexit, %.sink.split.i8.i.i140
  %.sroa.5175.1291 = phi ptr [ %.sroa.5175.1319, %.sink.split.i8.i.i140 ], [ %.sroa.5175.1.lcssa, %.loopexit ]
  %.sroa.14.1288 = phi ptr [ %.sroa.14.1320, %.sink.split.i8.i.i140 ], [ %.sroa.14.1.lcssa, %.loopexit ]
  %.sroa.10177.2 = phi ptr [ null, %.sink.split.i8.i.i140 ], [ %i.gg, %.loopexit ]
  %.sroa.17178.1 = phi ptr [ %i.gf, %.sink.split.i8.i.i140 ], [ %.sroa.17178.0, %.loopexit ]
  %.sroa.0.0.i.i132 = phi ptr [ %.sroa.17178.0, %.sink.split.i8.i.i140 ], [ %.sroa.10177.1.lcssa, %.loopexit ]
  %i.gh = tail call noundef nonnull align 8 ptr %.sroa.0158.0.copyload159(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i132) #26, !noalias !552, !inline_history !0 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !nonnull !5, !noundef !5
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gl = load i64, ptr %i.gk, align 8, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !553)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.gm = load i8, ptr %i.cw, align 2, !range !533, !alias.scope !553, !noalias !554, !noundef !5
  %i.gn = icmp eq i8 %i.gm, 0
  br i1 %i.gn, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555)
  %i.go = load i64, ptr %.sroa.560.0..sroa_idx, align 8, !alias.scope !556, !noalias !557, !noundef !5 ; 3 uses
  %i.gp = load i64, ptr %i.da, align 8, !range !6, !alias.scope !556, !noalias !557, !noundef !5
  %i.gq = icmp eq i64 %i.go, %i.gp
  br i1 %i.gq, label %bb.au, label %_RNvCs41JD7yXDh97_6uu_env17parse_program_opt.exit

bb.au:                                            ; preds = %bb.at
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrE8grow_oneCs41JD7yXDh97_6uu_env(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.da) #27, !noalias !557
  br label %_RNvCs41JD7yXDh97_6uu_env17parse_program_opt.exit

bb.av:                                            ; preds = %bb.as
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 42) #26, !noalias !558
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !559
  %i.gr = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #26, !noalias !559 ; 4 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.aw, label %bb.ax, !prof !10

bb.aw:                                            ; preds = %bb.av
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #30, !noalias !559
  unreachable

_RNvCs41JD7yXDh97_6uu_env17parse_program_opt.exit: ; preds = %bb.at, %bb.au
  %i.gt = load ptr, ptr %.sroa.459.0..sroa_idx, align 8, !alias.scope !556, !noalias !557, !nonnull !5, !noundef !5
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.gt, i64 %i.go ; 2 uses
  store ptr %i.gj, ptr %i.gu, align 8, !noalias !560, !captures !19
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store i64 %i.gl, ptr %i.gv, align 8, !noalias !556
  %i.gw = add i64 %i.go, 1
  store i64 %i.gw, ptr %.sroa.560.0..sroa_idx, align 8, !alias.scope !556, !noalias !557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs9_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit.thread

.loopexit199:                                     ; preds = %.sink.split.i8.i.i140, %bb.ar, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECs41JD7yXDh97_6uu_env.exit121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %i.y, i64 232, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit146

bb.ax:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gr, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !558
  %.sroa.4.0..sroa_idx.i144 = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  store i32 125, ptr %.sroa.4.0..sroa_idx.i144, align 8, !noalias !558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aj

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit146: ; preds = %bb.ay, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit, %bb.ba, %.loopexit199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  ret void

bb.ay:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecTINtNtBG_6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEB19_EEECs41JD7yXDh97_6uu_env.exit.i, %bb.ap
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs41JD7yXDh97_6uu_env13SignalRequestEBD_(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.cs) #26
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs41JD7yXDh97_6uu_env13SignalRequestEBD_(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.ct) #26
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs41JD7yXDh97_6uu_env13SignalRequestEBD_(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.dd) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit146

bb.az:                                            ; preds = %.thread, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs41JD7yXDh97_6uu_env13SignalRequestEBD_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ad) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.val106 = load i64, ptr %i.af, align 8, !range !6, !noundef !5 ; 2 uses
  %i.gx = icmp eq i64 %.val106, 0
  br i1 %i.gx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit.sink.split

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit.sink.split: ; preds = %bb.az, %bb.p
  %.val106.sink = phi i64 [ %.val108, %bb.p ], [ %.val106, %bb.az ]
  %i.gy = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val107 = load ptr, ptr %i.gy, align 8, !nonnull !5, !noundef !5
  %i.gz = shl nuw i64 %.val106.sink, 4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val107, i64 noundef %i.gz, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit.sink.split, %bb.az, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %.val104 = load i64, ptr %i.ah, align 8, !range !6, !noundef !5 ; 2 uses
  %i.ha = icmp eq i64 %.val104, 0
  br i1 %i.ha, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit146, label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.val105 = load ptr, ptr %i.hb, align 8, !nonnull !5, !noundef !5
  %i.hc = shl nuw i64 %.val104, 4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val105, i64 noundef %i.hc, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECs41JD7yXDh97_6uu_env.exit146
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvCs41JD7yXDh97_6uu_env12reset_signal(i64 noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  %i.h = trunc i64 %0 to i32                      ; 2 uses
  %i.i = tail call noundef i64 @signal(i32 noundef %i.h, i64 noundef 0) #26
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %bb.b, label %_RINvMNtCsqsXNUdQJE7_3nix5errnoNtNtB3_6consts5Errno6resultjECs41JD7yXDh97_6uu_env.exit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef i32 @_RNvMNtCsqsXNUdQJE7_3nix5errnoNtNtB2_6consts5Errno4last() #26, !noalias !577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call fastcc void @_RNvXs1K_NtCs7tKScEop1B6_5alloc6stringlNtB6_12SpecToString14spec_to_string(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, i32 %i.h) #29
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !5 ; 6 uses
  switch i64 %i.o, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr %i.m, align 1, !alias.scope !578, !noalias !579, !noundef !5 ; 2 uses
  switch i8 %i.p, label %bb.d [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.b
  %.pr.i = load i8, ptr %i.m, align 1, !alias.scope !578, !noalias !579
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i, %bb.c
  %i.q = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.p, %bb.c ]
  switch i8 %i.q, label %bb.k [
    i8 43, label %bb.e
    i8 45, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.s = add nsw i64 %i.o, -1
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.u = add nsw i64 %i.o, -1                     ; 3 uses
  %i.v = icmp samesign ult i64 %i.o, 17
  br i1 %i.v, label %.preheader114.i, label %.lr.ph.i

.preheader114.i:                                  ; preds = %bb.f
  %.not103137.i = icmp eq i64 %i.u, 0
  br i1 %.not103137.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.i
  %.sroa.0.1136.i = phi ptr [ %i.w, %bb.i ], [ %i.t, %bb.f ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.x, %bb.i ], [ %i.u, %bb.f ]
  %.sroa.084.0134.i = phi i64 [ %i.ai, %bb.i ], [ 0, %bb.f ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.x = add nsw i64 %.sroa.26.1135.i, -1         ; 2 uses
  %i.y = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.z = extractvalue { i64, i1 } %i.y, 0
  %i.aa = extractvalue { i64, i1 } %i.y, 1
  br i1 %i.aa, label %.loopexit, label %bb.g, !prof !10

bb.g:                                             ; preds = %.lr.ph.i
  %i.ab = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !578, !noalias !579, !noundef !5
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, -48                  ; 2 uses
  %i.ae = icmp ult i32 %i.ad, 10
  br i1 %i.ae, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.z, i64 %i.af) ; 2 uses
  %i.ah = extractvalue { i64, i1 } %i.ag, 1
  br i1 %i.ah, label %.loopexit, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  %i.ai = extractvalue { i64, i1 } %i.ag, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.x, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %.preheader114.i, %bb.j
  %.sroa.0.2140.i = phi ptr [ %i.ap, %bb.j ], [ %i.t, %.preheader114.i ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.ao, %bb.j ], [ %i.u, %.preheader114.i ]
  %.sroa.084.2138.i = phi i64 [ %i.ar, %bb.j ], [ 0, %.preheader114.i ]
  %i.aj = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !578, !noalias !579, !noundef !5
  %i.ak = zext i8 %i.aj to i32
  %i.al = add nsw i32 %i.ak, -48                  ; 2 uses
  %i.am = icmp ult i32 %i.al, 10
  br i1 %i.am, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph141.i
  %i.an = mul i64 %.sroa.084.2138.i, 10
  %i.ao = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.aq = zext nneg i32 %i.al to i64
  %i.ar = sub i64 %i.an, %i.aq                    ; 2 uses
  %.not103.i = icmp eq i64 %i.ao, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.k:                                             ; preds = %bb.e, %bb.d
  %.sroa.26.0.i = phi i64 [ %i.s, %bb.e ], [ %i.o, %bb.d ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.r, %bb.e ], [ %i.m, %bb.d ] ; 2 uses
  %i.as = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.as, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.k
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.k, %bb.n
  %.sroa.0.3145.i = phi ptr [ %i.at, %bb.n ], [ %.sroa.0.0.i, %bb.k ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.au, %bb.n ], [ %.sroa.26.0.i, %bb.k ]
  %.sroa.084.3143.i = phi i64 [ %i.bf, %bb.n ], [ 0, %bb.k ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.au = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.av = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.aw = extractvalue { i64, i1 } %i.av, 0
  %i.ax = extractvalue { i64, i1 } %i.av, 1
  br i1 %i.ax, label %.loopexit, label %bb.l, !prof !10

bb.l:                                             ; preds = %.preheader111.i
  %i.ay = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !578, !noalias !579, !noundef !5
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nsw i32 %i.az, -48                  ; 2 uses
  %i.bb = icmp ult i32 %i.ba, 10
  br i1 %i.bb, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.bc = zext nneg i32 %i.ba to i64
  %i.bd = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aw, i64 %i.bc) ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 1
  br i1 %i.be, label %.loopexit, label %bb.n, !prof !10

bb.n:                                             ; preds = %bb.m
  %i.bf = extractvalue { i64, i1 } %i.bd, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.au, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.o
  %.sroa.0.4149.i = phi ptr [ %i.bm, %bb.o ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.bl, %bb.o ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.bo, %bb.o ], [ 0, %.preheader.i ]
  %i.bg = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !578, !noalias !579, !noundef !5
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, -48                  ; 2 uses
  %i.bj = icmp ult i32 %i.bi, 10
  br i1 %i.bj, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %.lr.ph150.i
  %i.bk = mul i64 %.sroa.084.4147.i, 10
  %i.bl = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.bn = zext nneg i32 %i.bi to i64
  %i.bo = add i64 %i.bk, %i.bn                    ; 2 uses
  %.not105.i = icmp eq i64 %i.bl, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.loopexit:                                        ; preds = %.lr.ph.i, %bb.h, %bb.g, %.lr.ph141.i, %.preheader111.i, %bb.l, %bb.m, %.lr.ph150.i, %bb.b, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o) #27
  %i.bp = load i8, ptr %i.f, align 8, !range !16, !noundef !5
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.r, label %bb.s

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.i, %bb.j, %bb.n, %bb.o, %.preheader.i, %.preheader114.i
  %.sroa.1546.0 = phi i64 [ %i.bo, %bb.o ], [ %i.ar, %bb.j ], [ %i.bf, %bb.n ], [ 0, %.preheader.i ], [ 0, %.preheader114.i ], [ %i.ai, %bb.i ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 6, i64 noundef %.sroa.1546.0) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.r, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %.sroa.01.0 = phi i1 [ false, %bb.r ], [ true, %bb.s ], [ true, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  %i.br = call { ptr, i64 } @_RNvMNtCsqsXNUdQJE7_3nix5errnoNtNtB2_6consts5Errno4desc(i32 noundef %i.k) #26 ; 2 uses
end_hunk_1
