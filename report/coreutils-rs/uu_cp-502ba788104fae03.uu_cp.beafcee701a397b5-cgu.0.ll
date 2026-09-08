Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_cp-502ba788104fae03.uu_cp.beafcee701a397b5-cgu.0?download=true
inline.NumInlined: 2514
inline.NumDeleted: 1152
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RNvCsgn1j6LDYpaP_5uu_cp11copy_helper:bb.a

.loopexit.i.i59:                                  ; preds = %bb.cc, %bb.cb, %.lr.ph.i.i.i61, %.lr.ph141.i.i.i69, %bb.ch, %bb.cg, %.preheader111.i.i.i76, %.lr.ph150.i.i.i83, %bb.bx, %bb.bx, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgn1j6LDYpaP_5uu_cp.exit.i.i58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !2112
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload48.i.i, i64 noundef %.sroa.8.0.copyload51.i.i) #40, !noalias !2118
  %i.my = load i8, ptr %i.bo, align 8, !range !22, !noalias !2112, !noundef !7
  %i.mz = trunc nuw i8 %i.my to i1
  br i1 %i.mz, label %bb.cn, label %bb.co

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i66: ; preds = %bb.cd, %bb.ce, %bb.ci, %bb.cj, %.preheader.i.i.i81, %.preheader114.i.i.i67
  %.sroa.1555.0.i.i = phi i64 [ %i.mx, %bb.cj ], [ %i.ma, %bb.ce ], [ %i.mo, %bb.ci ], [ 0, %.preheader.i.i.i81 ], [ 0, %.preheader114.i.i.i67 ], [ %i.lr, %bb.cd ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 4, i64 noundef %.sroa.1555.0.i.i) #39, !noalias !2118
  br label %bb.ck

bb.ck:                                            ; preds = %bb.co, %bb.cn, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i66
  %.sroa.0.0.not.i.i = phi i1 [ true, %bb.cn ], [ false, %bb.co ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i66 ]
  %i.na = call { ptr, i64 } @_RNvMNtCsqsXNUdQJE7_3nix5errnoNtNtB2_6consts5Errno4desc(i32 noundef range(i32 0, 134) %.sroa.0.1.i15.i) #39, !noalias !2118 ; 2 uses
  %i.nb = extractvalue { ptr, i64 } %i.na, 0
  %i.nc = extractvalue { ptr, i64 } %i.na, 1      ; 14 uses
  %.not.i.i.i = icmp slt i64 %i.nc, 0
  br i1 %.not.i.i.i, label %bb.cp, label %bb.cl, !prof !19

bb.cl:                                            ; preds = %bb.ck
  %i.nd = icmp eq i64 %i.nc, 0                    ; 2 uses
  br i1 %i.nd, label %.thread.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !2119
  %i.ne = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.nc, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !2119 ; 18 uses
  %i.nf = icmp eq ptr %i.ne, null
  br i1 %i.nf, label %bb.cp, label %bb.cq

bb.cn:                                            ; preds = %.loopexit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !2112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !2112
  store i64 %.sroa.0.0.copyload45.i.i, ptr %i.bn, align 8, !noalias !2112
  %.sroa.5.0..sroa_idx46.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %.sroa.5.0.copyload48.i.i, ptr %.sroa.5.0..sroa_idx46.i.i, align 8, !noalias !2112
  %.sroa.8.0..sroa_idx.i.i60 = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %.sroa.8.0.copyload51.i.i, ptr %.sroa.8.0..sroa_idx.i.i60, align 8, !noalias !2112
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bn) #39, !noalias !2118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !2112
  br label %bb.ck

bb.co:                                            ; preds = %.loopexit.i.i59
  %i.ng = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.nh = load double, ptr %i.ng, align 8, !noalias !2112, !noundef !7
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 4, double noundef %i.nh) #39, !noalias !2118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !2112
  br label %bb.ck

bb.cp:                                            ; preds = %bb.cm, %bb.ck
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.cm ], [ 0, %bb.ck ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.nc) #43, !noalias !2118
  unreachable

bb.cq:                                            ; preds = %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ne, ptr align 1 %i.nb, i64 %i.nc, i1 false), !noalias !2118
  %cond.i.i = icmp eq i64 %i.nc, 1
  %i.ni = load i8, ptr %i.ne, align 1, !alias.scope !2120, !noalias !2121 ; 2 uses
  br i1 %cond.i.i, label %bb.cr, label %thread-pre-split.i39.i.i

bb.cr:                                            ; preds = %bb.cq
  switch i8 %i.ni, label %.lr.ph150.i34.i.i.preheader [
    i8 43, label %.thread.i.i
    i8 45, label %.thread.i.i
  ]

.lr.ph150.i34.i.i.preheader:                      ; preds = %bb.cy, %bb.cr
  %.sroa.0.4149.i35.i.i.ph = phi ptr [ %i.ne, %bb.cr ], [ %.sroa.0.0.i25.i.i, %bb.cy ]
  %.sroa.26.4148.i36.i.i.ph = phi i64 [ 1, %bb.cr ], [ %.sroa.26.0.i24.i.i, %bb.cy ]
  br label %.lr.ph150.i34.i.i

thread-pre-split.i39.i.i:                         ; preds = %bb.cq
  switch i8 %i.ni, label %bb.cy [
    i8 43, label %bb.cs
    i8 45, label %bb.ct
  ]

bb.cs:                                            ; preds = %thread-pre-split.i39.i.i
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ne, i64 1
  %i.nk = add nsw i64 %i.nc, -1
  br label %bb.cy

bb.ct:                                            ; preds = %thread-pre-split.i39.i.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ne, i64 1 ; 2 uses
  %i.nm = add nsw i64 %i.nc, -1                   ; 2 uses
  %i.nn = icmp samesign ult i64 %i.nc, 17
  br i1 %i.nn, label %.lr.ph141.i19.i.i, label %.lr.ph.i9.i.i

.lr.ph.i9.i.i:                                    ; preds = %bb.ct, %bb.cw
  %.sroa.0.1136.i10.i.i = phi ptr [ %i.no, %bb.cw ], [ %i.nl, %bb.ct ] ; 2 uses
  %.sroa.26.1135.i11.i.i = phi i64 [ %i.np, %bb.cw ], [ %i.nm, %bb.ct ]
  %.sroa.084.0134.i12.i.i = phi i64 [ %i.oa, %bb.cw ], [ 0, %bb.ct ]
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i10.i.i, i64 1
  %i.np = add nsw i64 %.sroa.26.1135.i11.i.i, -1  ; 2 uses
  %i.nq = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i12.i.i, i64 10) ; 2 uses
  %i.nr = extractvalue { i64, i1 } %i.nq, 0
  %i.ns = extractvalue { i64, i1 } %i.nq, 1
  br i1 %i.ns, label %.thread.i.i, label %bb.cu, !prof !10

bb.cu:                                            ; preds = %.lr.ph.i9.i.i
  %i.nt = load i8, ptr %.sroa.0.1136.i10.i.i, align 1, !alias.scope !2120, !noalias !2121, !noundef !7
  %i.nu = zext i8 %i.nt to i32
  %i.nv = add nsw i32 %i.nu, -48                  ; 2 uses
  %i.nw = icmp ult i32 %i.nv, 10
  br i1 %i.nw, label %bb.cv, label %.thread.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.nx = zext nneg i32 %i.nv to i64
  %i.ny = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.nr, i64 %i.nx) ; 2 uses
  %i.nz = extractvalue { i64, i1 } %i.ny, 1
  br i1 %i.nz, label %.thread.i.i, label %bb.cw, !prof !10

bb.cw:                                            ; preds = %bb.cv
  %i.oa = extractvalue { i64, i1 } %i.ny, 0       ; 2 uses
  %.not102.i14.i.i = icmp eq i64 %i.np, 0
  br i1 %.not102.i14.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit41.i.i, label %.lr.ph.i9.i.i

.lr.ph141.i19.i.i:                                ; preds = %bb.ct, %bb.cx
  %.sroa.0.2140.i20.i.i = phi ptr [ %i.oh, %bb.cx ], [ %i.nl, %bb.ct ] ; 2 uses
  %.sroa.26.2139.i21.i.i = phi i64 [ %i.og, %bb.cx ], [ %i.nm, %bb.ct ]
  %.sroa.084.2138.i22.i.i = phi i64 [ %i.oj, %bb.cx ], [ 0, %bb.ct ]
  %i.ob = load i8, ptr %.sroa.0.2140.i20.i.i, align 1, !alias.scope !2120, !noalias !2121, !noundef !7
  %i.oc = zext i8 %i.ob to i32
  %i.od = add nsw i32 %i.oc, -48                  ; 2 uses
  %i.oe = icmp ult i32 %i.od, 10
  br i1 %i.oe, label %bb.cx, label %.thread.i.i

bb.cx:                                            ; preds = %.lr.ph141.i19.i.i
  %i.of = mul i64 %.sroa.084.2138.i22.i.i, 10
  %i.og = add nsw i64 %.sroa.26.2139.i21.i.i, -1  ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i20.i.i, i64 1
  %i.oi = zext nneg i32 %i.od to i64
  %i.oj = sub i64 %i.of, %i.oi                    ; 2 uses
  %.not103.i23.i.i = icmp eq i64 %i.og, 0
  br i1 %.not103.i23.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit41.i.i, label %.lr.ph141.i19.i.i

bb.cy:                                            ; preds = %bb.cs, %thread-pre-split.i39.i.i
  %.sroa.26.0.i24.i.i = phi i64 [ %i.nk, %bb.cs ], [ %i.nc, %thread-pre-split.i39.i.i ] ; 3 uses
  %.sroa.0.0.i25.i.i = phi ptr [ %i.nj, %bb.cs ], [ %i.ne, %thread-pre-split.i39.i.i ] ; 2 uses
  %i.ok = icmp samesign ult i64 %.sroa.26.0.i24.i.i, 16
  br i1 %i.ok, label %.lr.ph150.i34.i.i.preheader, label %.preheader111.i26.i.i

.preheader111.i26.i.i:                            ; preds = %bb.cy, %bb.db
  %.sroa.0.3145.i27.i.i = phi ptr [ %i.ol, %bb.db ], [ %.sroa.0.0.i25.i.i, %bb.cy ] ; 2 uses
  %.sroa.26.3144.i28.i.i = phi i64 [ %i.om, %bb.db ], [ %.sroa.26.0.i24.i.i, %bb.cy ]
  %.sroa.084.3143.i29.i.i = phi i64 [ %i.ox, %bb.db ], [ 0, %bb.cy ]
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i27.i.i, i64 1
  %i.om = add nsw i64 %.sroa.26.3144.i28.i.i, -1  ; 2 uses
  %i.on = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i29.i.i, i64 10) ; 2 uses
  %i.oo = extractvalue { i64, i1 } %i.on, 0
  %i.op = extractvalue { i64, i1 } %i.on, 1
  br i1 %i.op, label %.thread.i.i, label %bb.cz, !prof !10

bb.cz:                                            ; preds = %.preheader111.i26.i.i
  %i.oq = load i8, ptr %.sroa.0.3145.i27.i.i, align 1, !alias.scope !2120, !noalias !2121, !noundef !7
  %i.or = zext i8 %i.oq to i32
  %i.os = add nsw i32 %i.or, -48                  ; 2 uses
  %i.ot = icmp ult i32 %i.os, 10
  br i1 %i.ot, label %bb.da, label %.thread.i.i

bb.da:                                            ; preds = %bb.cz
  %i.ou = zext nneg i32 %i.os to i64
  %i.ov = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.oo, i64 %i.ou) ; 2 uses
  %i.ow = extractvalue { i64, i1 } %i.ov, 1
  br i1 %i.ow, label %.thread.i.i, label %bb.db, !prof !10

bb.db:                                            ; preds = %bb.da
  %i.ox = extractvalue { i64, i1 } %i.ov, 0       ; 2 uses
  %.not104.i31.i.i = icmp eq i64 %i.om, 0
  br i1 %.not104.i31.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit41.i.i, label %.preheader111.i26.i.i

.lr.ph150.i34.i.i:                                ; preds = %.lr.ph150.i34.i.i.preheader, %bb.dc
  %.sroa.0.4149.i35.i.i = phi ptr [ %i.pe, %bb.dc ], [ %.sroa.0.4149.i35.i.i.ph, %.lr.ph150.i34.i.i.preheader ] ; 2 uses
  %.sroa.26.4148.i36.i.i = phi i64 [ %i.pd, %bb.dc ], [ %.sroa.26.4148.i36.i.i.ph, %.lr.ph150.i34.i.i.preheader ]
  %.sroa.084.4147.i37.i.i = phi i64 [ %i.pg, %bb.dc ], [ 0, %.lr.ph150.i34.i.i.preheader ]
  %i.oy = load i8, ptr %.sroa.0.4149.i35.i.i, align 1, !alias.scope !2120, !noalias !2121, !noundef !7
  %i.oz = zext i8 %i.oy to i32
  %i.pa = add nsw i32 %i.oz, -48                  ; 2 uses
  %i.pb = icmp ult i32 %i.pa, 10
  br i1 %i.pb, label %bb.dc, label %.thread.i.i

bb.dc:                                            ; preds = %.lr.ph150.i34.i.i
  %i.pc = mul i64 %.sroa.084.4147.i37.i.i, 10
  %i.pd = add nsw i64 %.sroa.26.4148.i36.i.i, -1  ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i35.i.i, i64 1
  %i.pf = zext nneg i32 %i.pa to i64
  %i.pg = add i64 %i.pc, %i.pf                    ; 2 uses
  %.not105.i38.i.i = icmp eq i64 %i.pd, 0
  br i1 %.not105.i38.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit41.i.i, label %.lr.ph150.i34.i.i

.thread.i.i:                                      ; preds = %bb.cv, %bb.cu, %.lr.ph.i9.i.i, %.lr.ph141.i19.i.i, %bb.da, %bb.cz, %.preheader111.i26.i.i, %.lr.ph150.i34.i.i, %bb.cr, %bb.cr, %bb.cl
  %.ph.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.cl ], [ %i.ne, %bb.da ], [ %i.ne, %.lr.ph150.i34.i.i ], [ %i.ne, %bb.cr ], [ %i.ne, %.lr.ph141.i19.i.i ], [ %i.ne, %bb.cr ], [ %i.ne, %.preheader111.i26.i.i ], [ %i.ne, %bb.cz ], [ %i.ne, %.lr.ph.i9.i.i ], [ %i.ne, %bb.cu ], [ %i.ne, %bb.cv ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !2112
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph.i.i, i64 noundef %i.nc) #40, !noalias !2118
  %i.ph = load i8, ptr %i.bm, align 8, !range !22, !noalias !2112, !noundef !7
  %i.pi = trunc nuw i8 %i.ph to i1
  br i1 %i.pi, label %bb.df, label %bb.dg

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit41.i.i: ; preds = %bb.cw, %bb.cx, %bb.db, %bb.dc
  %.sroa.1562.0.i.i = phi i64 [ %i.ox, %bb.db ], [ %i.oj, %bb.cx ], [ %i.pg, %bb.dc ], [ %i.oa, %bb.cw ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5, i64 noundef %.sroa.1562.0.i.i) #39, !noalias !2118
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dg, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit41.i.i
  %i.pj = phi ptr [ %.ph.i.i, %bb.dg ], [ %i.ne, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit41.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !2112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !noalias !2112
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 35, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bk) #39, !noalias !2098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !2112
  br i1 %i.nd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pj, i64 noundef %i.nc, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !2122
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit.i.i

bb.df:                                            ; preds = %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !2112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !2112
  store i64 %i.nc, ptr %i.bl, align 8, !noalias !2112
  %.sroa.557.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %.ph.i.i, ptr %.sroa.557.0..sroa_idx.i.i, align 8, !noalias !2112
  %.sroa.858.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 %i.nc, ptr %.sroa.858.0..sroa_idx.i.i, align 8, !noalias !2112
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bl) #39, !noalias !2118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !2112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !2112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !noalias !2112
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 35, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bk) #39, !noalias !2098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !2112
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit.i.i

bb.dg:                                            ; preds = %.thread.i.i
  %i.pk = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.pl = load double, ptr %i.pk, align 8, !noalias !2112, !noundef !7
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5, double noundef %i.pl) #39, !noalias !2118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !2112
  br label %bb.dd

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit.i.i: ; preds = %bb.df, %bb.de, %bb.dd
  %i.pm = icmp eq i64 %.sroa.0.0.copyload45.i.i, 0
  %or.cond.i.i = select i1 %.sroa.0.0.not.i.i, i1 true, i1 %i.pm
  br i1 %or.cond.i.i, label %_RNCNvCsgn1j6LDYpaP_5uu_cp9copy_node0B3_.exit.i, label %bb.dh

bb.dh:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload48.i.i, i64 noundef %.sroa.0.0.copyload45.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !2123
  br label %_RNCNvCsgn1j6LDYpaP_5uu_cp9copy_node0B3_.exit.i

_RNCNvCsgn1j6LDYpaP_5uu_cp9copy_node0B3_.exit.i:  ; preds = %bb.dh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !2112
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !2098, !noalias !2111
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false), !noalias !2111
  br label %_RNvCsgn1j6LDYpaP_5uu_cp9copy_node.exit

bb.di:                                            ; preds = %_RINvNtNtCsqsXNUdQJE7_3nix3sys4stat5mknodNtNtCs2vKOLqTMYjT_3std4path4PathECsgn1j6LDYpaP_5uu_cp.exit.i, %_RINvNtNtCsqsXNUdQJE7_3nix3sys4stat5mknodNtNtCs2vKOLqTMYjT_3std4path4PathECsgn1j6LDYpaP_5uu_cp.exit.thread16.i
  store i64 -2, ptr %0, align 8, !alias.scope !2098, !noalias !2111
  br label %_RNvCsgn1j6LDYpaP_5uu_cp9copy_node.exit

_RNvCsgn1j6LDYpaP_5uu_cp9copy_node.exit:          ; preds = %bb.bs, %bb.bu, %_RNCNvCsgn1j6LDYpaP_5uu_cp9copy_node0B3_.exit.i, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br label %_RNvCsgn1j6LDYpaP_5uu_cp11copy_socket.exit

bb.dj:                                            ; preds = %._crit_edge
  %i.pn = getelementptr inbounds nuw i8, ptr %5, i64 88
  %.val = load i8, ptr %i.pn, align 8
  %i.po = getelementptr inbounds nuw i8, ptr %5, i64 89
  %.val42 = load i8, ptr %i.po, align 1, !range !22, !noundef !7
  %i.pp = trunc nuw i8 %.val42 to i1
  %i.pq = trunc nuw i8 %.val to i1
  %i.pr = select i1 %9, i1 %i.pq, i1 false
  %.sroa.0.0.i = select i1 %i.pp, i1 true, i1 %i.pr
  %i.ps = xor i1 %.sroa.0.0.i, true               ; 35 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  %i.pt = getelementptr inbounds nuw i8, ptr %5, i64 100
  %i.pu = load i8, ptr %i.pt, align 4, !range !35, !noundef !7
  %i.pv = getelementptr inbounds nuw i8, ptr %5, i64 99
  %i.pw = load i8, ptr %i.pv, align 1, !range !35, !noundef !7 ; 3 uses
  %trunc.i = trunc nuw i32 %.pre to i16
  switch i16 %trunc.i, label %bb.dk [
    i16 4096, label %_RNvCsgn1j6LDYpaP_5uu_cp9is_stream.exit
    i16 8192, label %_RNvCsgn1j6LDYpaP_5uu_cp9is_stream.exit
  ]

bb.dk:                                            ; preds = %bb.dj
  %i.px = icmp eq i32 %.pre, 24576
  br label %_RNvCsgn1j6LDYpaP_5uu_cp9is_stream.exit

_RNvCsgn1j6LDYpaP_5uu_cp9is_stream.exit:          ; preds = %bb.dj, %bb.dj, %bb.dk
  %.sroa.0.0.i93 = phi i1 [ %i.px, %bb.dk ], [ true, %bb.dj ], [ true, %bb.dj ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2124)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  switch i8 %i.pu, label %default.unreachable [
    i8 0, label %bb.dl
    i8 1, label %bb.dm
    i8 2, label %bb.dn
  ]

bb.dl:                                            ; preds = %_RNvCsgn1j6LDYpaP_5uu_cp9is_stream.exit
  %i.py = icmp eq i8 %i.pw, 1
  br i1 %i.py, label %bb.do, label %_RNvNtNtCsgn1j6LDYpaP_5uu_cp8platform5linux13copy_on_write.exit.thread2

bb.dm:                                            ; preds = %_RNvCsgn1j6LDYpaP_5uu_cp9is_stream.exit
  switch i8 %i.pw, label %default.unreachable [
    i8 0, label %bb.dq
    i8 1, label %bb.dr
    i8 2, label %bb.ds
  ]

bb.dn:                                            ; preds = %_RNvCsgn1j6LDYpaP_5uu_cp9is_stream.exit
  switch i8 %i.pw, label %default.unreachable [
    i8 0, label %bb.fo
    i8 1, label %bb.fp
    i8 2, label %bb.fq
  ]

bb.do:                                            ; preds = %bb.dl
  call fastcc void @_RINvNtNtCsgn1j6LDYpaP_5uu_cp8platform5linux5cloneRNtNtCs2vKOLqTMYjT_3std4path4PathEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, i8 noundef 0, i1 noundef zeroext %i.ps, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef %7) #39, !noalias !2124
  br label %bb.dp

_RNvNtNtCsgn1j6LDYpaP_5uu_cp8platform5linux13copy_on_write.exit.thread2: ; preds = %bb.dl
  %.sroa.4.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.4.0..sroa_idx.i95, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @236, i64 noundef 35) #39, !noalias !2125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.hz

bb.dp:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsgn1j6LDYpaP_5uu_cp9CopyDebugNtNtNtB4_2io5error5ErrorEEBZ_.exit129.i, %bb.hk, %_RNvNtNtCsgn1j6LDYpaP_5uu_cp8platform5linux33handle_reflink_never_sparse_never.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtCsgn1j6LDYpaP_5uu_cp9CopyDebugNtNtNtB10_8platform5linux10CopyMethodENtNtNtB4_2io5error5ErrorEEB10_.exit114.i, %.thread291.i, %.thread284.i, %bb.gz, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtCsgn1j6LDYpaP_5uu_cp9CopyDebugNtNtNtB10_8platform5linux10CopyMethodENtNtNtB4_2io5error5ErrorEEB10_.exit91.i, %bb.gh, %.thread257.i, %bb.gg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsgn1j6LDYpaP_5uu_cp9CopyDebugNtNtNtB4_2io5error5ErrorEEBZ_.exit.i, %bb.fk, %_RNvNtNtCsgn1j6LDYpaP_5uu_cp8platform5linux32handle_reflink_auto_sparse_never.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtCsgn1j6LDYpaP_5uu_cp9CopyDebugNtNtNtB10_8platform5linux10CopyMethodENtNtNtB4_2io5error5ErrorEEB10_.exit62.i, %.thread225.i, %.thread219.i, %bb.ez, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtCsgn1j6LDYpaP_5uu_cp9CopyDebugNtNtNtB10_8platform5linux10CopyMethodENtNtNtB4_2io5error5ErrorEEB10_.exit.i, %bb.ef, %.thread.i, %bb.ee, %bb.do
  %.sroa.20.0.i = phi i8 [ 1, %bb.do ], [ 2, %bb.ee ], [ %.sroa.5.0.i.i, %.thread291.i ], [ 1, %bb.ez ], [ %.27.i.i, %bb.ef ], [ 1, %bb.fk ], [ %.sroa.7.0.i.i, %.thread225.i ], [ 2, %bb.gg ], [ %spec.select.i67.i, %_RNvNtNtCsgn1j6LDYpaP_5uu_cp8platform5linux32handle_reflink_auto_sparse_never.exit.i ], [ 1, %bb.gz ], [ %.sroa.6.0.i.i, %bb.gh ], [ 1, %bb.hk ], [ %.27.i.i, %.thread.i ], [ 2, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtCsgn1j6LDYpaP_5uu_cp9CopyDebugNtNtNtB10_8platform5linux10CopyMethodENtNtNtB4_2io5error5ErrorEEB10_.exit.i ], [ %.sroa.7.0.i.i, %.thread219.i ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtCsgn1j6LDYpaP_5uu_cp9CopyDebugNtNtNtB10_8platform5linux10CopyMethodENtNtNtB4_2io5error5ErrorEEB10_.exit62.i ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsgn1j6LDYpaP_5uu_cp9CopyDebugNtNtNtB4_2io5error5ErrorEEBZ_.exit.i ], [ %.sroa.6.0.i.i, %.thread257.i ], [ 2, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtCsgn1j6LDYpaP_5uu_cp9CopyDebugNtNtNtB10_8platform5linux10CopyMethodENtNtNtB4_2io5error5ErrorEEB10_.exit91.i ], [ %.sroa.5.0.i.i, %.thread284.i ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtCsgn1j6LDYpaP_5uu_cp9CopyDebugNtNtNtB10_8platform5linux10CopyMethodENtNtNtB4_2io5error5ErrorEEB10_.exit114.i ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsgn1j6LDYpaP_5uu_cp9CopyDebugNtNtNtB4_2io5error5ErrorEEBZ_.exit129.i ], [ %spec.select.i120.i, %_RNvNtNtCsgn1j6LDYpaP_5uu_cp8platform5linux33handle_reflink_never_sparse_never.exit.i ]
  %.sroa.14.0.i = phi i8 [ 2, %bb.do ], [ 4, %bb.ee ], [ 1, %.thread291.i ], [ 4, %bb.ez ], [ 4, %bb.ef ], [ 1, %bb.fk ], [ 4, %.thread225.i ], [ 1, %bb.gg ], [ 1, %_RNvNtNtCsgn1j6LDYpaP_5uu_cp8platform5linux32handle_reflink_auto_sparse_never.exit.i ], [ 1, %bb.gz ], [ 1, %bb.gh ], [ 1, %bb.hk ], [ 4, %.thread.i ], [ 4, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtCsgn1j6LDYpaP_5uu_cp9CopyDebugNtNtNtB10_8platform5linux10CopyMethodENtNtNtB4_2io5error5ErrorEEB10_.exit.i ], [ 4, %.thread219.i ], [ 4, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtCsgn1j6LDYpaP_5uu_cp9CopyDebugNtNtNtB10_8platform5linux10CopyMethodENtNtNtB4_2io5error5ErrorEEB10_.exit62.i ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsgn1j6LDYpaP_5uu_cp9CopyDebugNtNtNtB4_2io5error5ErrorEEBZ_.exit.i ], [ 1, %.thread257.i ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtCsgn1j6LDYpaP_5uu_cp9CopyDebugNtNtNtB10_8platform5linux10CopyMethodENtNtNtB4_2io5error5ErrorEEB10_.exit91.i ], [ 1, %.thread284.i ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtCsgn1j6LDYpaP_5uu_cp9CopyDebugNtNtNtB10_8platform5linux10CopyMethodENtNtNtB4_2io5error5ErrorEEB10_.exit114.i ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsgn1j6LDYpaP_5uu_cp9CopyDebugNtNtNtB4_2io5error5ErrorEEBZ_.exit129.i ], [ 1, %_RNvNtNtCsgn1j6LDYpaP_5uu_cp8platform5linux33handle_reflink_never_sparse_never.exit.i ]
  %.sroa.03.0.i = phi i8 [ 0, %bb.do ], [ 3, %bb.ee ], [ %.sroa.0.1.i101.i, %.thread291.i ], [ 4, %bb.ez ], [ %.sroa.0.1.i.i, %bb.ef ], [ 3, %bb.fk ], [ %.sroa.0.2.i.i, %.thread225.i ], [ 3, %bb.gg ], [ %.sroa.0.0.i.i, %_RNvNtNtCsgn1j6LDYpaP_5uu_cp8platform5linux32handle_reflink_auto_sparse_never.exit.i ], [ 3, %bb.gz ], [ %.sroa.0.1.i80.i, %bb.gh ], [ 3, %bb.hk ], [ %.sroa.0.1.i.i, %.thread.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtCsgn1j6LDYpaP_5uu_cp9CopyDebugNtNtNtB10_8platform5linux10CopyMethodENtNtNtB4_2io5error5ErrorEEB10_.exit.i ], [ %.sroa.0.2.i.i, %.thread219.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtCsgn1j6LDYpaP_5uu_cp9CopyDebugNtNtNtB10_8platform5linux10CopyMethodENtNtNtB4_2io5error5ErrorEEB10_.exit62.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsgn1j6LDYpaP_5uu_cp9CopyDebugNtNtNtB4_2io5error5ErrorEEBZ_.exit.i ], [ %.sroa.0.1.i80.i, %.thread257.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtCsgn1j6LDYpaP_5uu_cp9CopyDebugNtNtNtB10_8platform5linux10CopyMethodENtNtNtB4_2io5error5ErrorEEB10_.exit91.i ], [ %.sroa.0.1.i101.i, %.thread284.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtCsgn1j6LDYpaP_5uu_cp9CopyDebugNtNtNtB10_8platform5linux10CopyMethodENtNtNtB4_2io5error5ErrorEEB10_.exit114.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsgn1j6LDYpaP_5uu_cp9CopyDebugNtNtNtB4_2io5error5ErrorEEBZ_.exit129.i ], [ %.sroa.0.0.i122.i, %_RNvNtNtCsgn1j6LDYpaP_5uu_cp8platform5linux33handle_reflink_never_sparse_never.exit.i ]
  %i.pz = load i64, ptr %i.bh, align 8, !range !20, !noalias !2126, !noundef !7
  %.not.i = icmp eq i64 %i.pz, -2
  br i1 %.not.i, label %_RNvNtNtCsgn1j6LDYpaP_5uu_cp8platform5linux13copy_on_write.exit.thread, label %_RNvNtNtCsgn1j6LDYpaP_5uu_cp8platform5linux13copy_on_write.exit

bb.dq:                                            ; preds = %bb.dm
  br i1 %.sroa.0.0.i93, label %bb.ee, label %bb.dt

bb.dr:                                            ; preds = %bb.dm
  br i1 %.sroa.0.0.i93, label %bb.ez, label %bb.ej

bb.ds:                                            ; preds = %bb.dm
  br i1 %.sroa.0.0.i93, label %bb.fk, label %bb.fd

bb.dt:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !2127
  call fastcc void @_RNvNtNtCsgn1j6LDYpaP_5uu_cp8platform5linux14check_for_data(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %i.ps) #39, !noalias !2128
  %i.qa = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.qb = load i8, ptr %i.qa, align 8, !range !35, !noalias !2127, !noundef !7 ; 3 uses
  %i.qc = icmp eq i8 %i.qb, 2
  br i1 %i.qc, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.qd = load ptr, ptr %i.bg, align 8, !noalias !2127, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !2127
  br label %bb.eg

bb.dv:                                            ; preds = %bb.dt
  %.sroa.012.0.copyload.i.i = load i64, ptr %i.bg, align 8, !noalias !2127
  %.sroa.615.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.sroa.615.0.copyload.i.i = load i64, ptr %.sroa.615.0..sroa_idx.i.i, align 8, !noalias !2127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !2127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !2129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !2129
  call fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore8features9safe_copy11open_sourceRNtNtCs2vKOLqTMYjT_3std4path4PathECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.be, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %i.ps) #39, !noalias !2130
  %i.qe = load i32, ptr %i.be, align 8, !range !28, !noalias !2129, !noundef !7
  %i.qf = trunc nuw i32 %i.qe to i1
  br i1 %i.qf, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.qg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8, !noalias !2129, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !2129
  br label %bb.dz

bb.dx:                                            ; preds = %bb.dv
  %i.qi = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.qj = load i32, ptr %i.qi, align 4, !range !29, !noalias !2129, !noundef !7 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !2129
  store i32 %i.qj, ptr %i.bf, align 4, !noalias !2129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !2129
  call void @_RNvMs2_NtCs2vKOLqTMYjT_3std2fsNtB5_4File8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.bd, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.bf) #39, !noalias !2130
  %i.qk = load i64, ptr %i.bd, align 8, !range !30, !noalias !2129, !noundef !7
  %i.ql = icmp eq i64 %i.qk, 2
  br i1 %i.ql, label %bb.dy, label %bb.ea

bb.dy:                                            ; preds = %bb.dx
  %i.qm = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.qn = load ptr, ptr %i.qm, align 8, !noalias !2129, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !2129
  %i.qo = call noundef i32 @close(i32 noundef %i.qj) #39, !noalias !2130 ; 0 uses
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dw
  %.sroa.919.0.ph.i.i = phi ptr [ %i.qn, %bb.dy ], [ %i.qh, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !2129
  br label %bb.eg

bb.ea:                                            ; preds = %bb.dx
  %.sroa.1417.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
end_hunk_0
begin_hunk_1_@_RNvXs0_Csgn1j6LDYpaP_5uu_cpNtB5_11BackupErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt:bb.a

bb.i:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %i.x = add nsw i64 %i.m, -1                     ; 3 uses
  %i.y = icmp samesign ult i64 %i.m, 17
  br i1 %i.y, label %.preheader114.i, label %.lr.ph.i

.preheader114.i:                                  ; preds = %bb.i
  %.not103137.i = icmp eq i64 %i.x, 0
  br i1 %.not103137.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.l
  %.sroa.0.1136.i = phi ptr [ %i.z, %bb.l ], [ %i.w, %bb.i ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.aa, %bb.l ], [ %i.x, %bb.i ]
  %.sroa.084.0134.i = phi i64 [ %i.al, %bb.l ], [ 0, %bb.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.aa = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.ab = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 0
  %i.ad = extractvalue { i64, i1 } %i.ab, 1
  br i1 %i.ad, label %.loopexit, label %bb.j, !prof !10

bb.j:                                             ; preds = %.lr.ph.i
  %i.ae = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !6631, !noalias !6632, !noundef !7
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.af, -48                  ; 2 uses
  %i.ah = icmp ult i32 %i.ag, 10
  br i1 %i.ah, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ai = zext nneg i32 %i.ag to i64
  %i.aj = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ac, i64 %i.ai) ; 2 uses
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  br i1 %i.ak, label %.loopexit, label %bb.l, !prof !10

bb.l:                                             ; preds = %bb.k
  %i.al = extractvalue { i64, i1 } %i.aj, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.aa, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %.preheader114.i, %bb.m
  %.sroa.0.2140.i = phi ptr [ %i.as, %bb.m ], [ %i.w, %.preheader114.i ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.ar, %bb.m ], [ %i.x, %.preheader114.i ]
  %.sroa.084.2138.i = phi i64 [ %i.au, %bb.m ], [ 0, %.preheader114.i ]
  %i.am = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !6631, !noalias !6632, !noundef !7
  %i.an = zext i8 %i.am to i32
  %i.ao = add nsw i32 %i.an, -48                  ; 2 uses
  %i.ap = icmp ult i32 %i.ao, 10
  br i1 %i.ap, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.lr.ph141.i
  %i.aq = mul i64 %.sroa.084.2138.i, 10
  %i.ar = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.at = zext nneg i32 %i.ao to i64
  %i.au = sub i64 %i.aq, %i.at                    ; 2 uses
  %.not103.i = icmp eq i64 %i.ar, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.n:                                             ; preds = %bb.h, %bb.g
  %.sroa.26.0.i = phi i64 [ %i.v, %bb.h ], [ %i.m, %bb.g ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.u, %bb.h ], [ %i.q, %bb.g ] ; 2 uses
  %i.av = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.av, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.n
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.n, %bb.q
  %.sroa.0.3145.i = phi ptr [ %i.aw, %bb.q ], [ %.sroa.0.0.i, %bb.n ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.ax, %bb.q ], [ %.sroa.26.0.i, %bb.n ]
  %.sroa.084.3143.i = phi i64 [ %i.bi, %bb.q ], [ 0, %bb.n ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.ax = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.ay = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.az = extractvalue { i64, i1 } %i.ay, 0
  %i.ba = extractvalue { i64, i1 } %i.ay, 1
  br i1 %i.ba, label %.loopexit, label %bb.o, !prof !10

bb.o:                                             ; preds = %.preheader111.i
  %i.bb = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !6631, !noalias !6632, !noundef !7
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add nsw i32 %i.bc, -48                  ; 2 uses
  %i.be = icmp ult i32 %i.bd, 10
  br i1 %i.be, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.bf = zext nneg i32 %i.bd to i64
  %i.bg = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.az, i64 %i.bf) ; 2 uses
  %i.bh = extractvalue { i64, i1 } %i.bg, 1
  br i1 %i.bh, label %.loopexit, label %bb.q, !prof !10

bb.q:                                             ; preds = %bb.p
  %i.bi = extractvalue { i64, i1 } %i.bg, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.ax, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.r
  %.sroa.0.4149.i = phi ptr [ %i.bp, %bb.r ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.bo, %bb.r ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.br, %bb.r ], [ 0, %.preheader.i ]
  %i.bj = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !6631, !noalias !6632, !noundef !7
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add nsw i32 %i.bk, -48                  ; 2 uses
  %i.bm = icmp ult i32 %i.bl, 10
  br i1 %i.bm, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %.lr.ph150.i
  %i.bn = mul i64 %.sroa.084.4147.i, 10
  %i.bo = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.bq = zext nneg i32 %i.bl to i64
  %i.br = add i64 %i.bn, %i.bq                    ; 2 uses
  %.not105.i = icmp eq i64 %i.bo, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

bb.s:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.k, i64 %i.m, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgn1j6LDYpaP_5uu_cp.exit.thread95

.loopexit:                                        ; preds = %.lr.ph.i, %bb.k, %bb.j, %.lr.ph141.i, %.preheader111.i, %bb.o, %bb.p, %.lr.ph150.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit, %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.m) #40
  %i.bs = load i8, ptr %i.f, align 8, !range !22, !noundef !7
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.w, label %bb.x

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.l, %bb.m, %bb.q, %bb.r, %.preheader.i, %.preheader114.i
  %.sroa.1577.0 = phi i64 [ %i.br, %bb.r ], [ %i.au, %bb.m ], [ %i.bi, %bb.q ], [ 0, %.preheader.i ], [ 0, %.preheader114.i ], [ %i.al, %bb.l ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5, i64 noundef %.sroa.1577.0) #39
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %bb.w, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %.sroa.01.0.not = phi i1 [ true, %bb.w ], [ %i.n, %bb.x ], [ %i.n, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  %i.bu = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore16execution_phrase() #39 ; 2 uses
  %i.bv = extractvalue { ptr, i64 } %i.bu, 0
  %i.bw = extractvalue { ptr, i64 } %i.bu, 1      ; 16 uses
  %.not.i26 = icmp slt i64 %i.bw, 0
  br i1 %.not.i26, label %bb.y, label %bb.u, !prof !19

bb.u:                                             ; preds = %bb.t
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !6633
  %i.by = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !6633 ; 18 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.y, label %bb.z

bb.w:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.m, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx72, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.m, ptr %.sroa.9.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.t

bb.x:                                             ; preds = %.loopexit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cb = load double, ptr %i.ca, align 8, !noundef !7
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5, double noundef %i.cb) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.t

bb.y:                                             ; preds = %bb.t, %bb.v
  %.sroa.487.0.ph = phi i64 [ 1, %bb.v ], [ 0, %bb.t ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.487.0.ph, i64 %i.bw) #43
  unreachable

bb.z:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr align 1 %i.bv, i64 %i.bw, i1 false)
  %cond = icmp eq i64 %i.bw, 1
  %i.cc = load i8, ptr %i.by, align 1, !alias.scope !6634, !noalias !6635 ; 2 uses
  br i1 %cond, label %bb.aa, label %thread-pre-split.i60

bb.aa:                                            ; preds = %bb.z
  switch i8 %i.cc, label %bb.ah [
    i8 43, label %.thread
    i8 45, label %.thread
  ]

thread-pre-split.i60:                             ; preds = %bb.z
  switch i8 %i.cc, label %bb.ah [
    i8 43, label %bb.ab
    i8 45, label %bb.ac
  ]

bb.ab:                                            ; preds = %thread-pre-split.i60
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ce = add nsw i64 %i.bw, -1
  br label %bb.ah

bb.ac:                                            ; preds = %thread-pre-split.i60
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 1 ; 2 uses
  %i.cg = add nsw i64 %i.bw, -1                   ; 2 uses
  %i.ch = icmp samesign ult i64 %i.bw, 17
  br i1 %i.ch, label %.lr.ph141.i40, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.ac, %bb.af
  %.sroa.0.1136.i31 = phi ptr [ %i.ci, %bb.af ], [ %i.cf, %bb.ac ] ; 2 uses
  %.sroa.26.1135.i32 = phi i64 [ %i.cj, %bb.af ], [ %i.cg, %bb.ac ]
  %.sroa.084.0134.i33 = phi i64 [ %i.cu, %bb.af ], [ 0, %bb.ac ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i31, i64 1
  %i.cj = add nsw i64 %.sroa.26.1135.i32, -1      ; 2 uses
  %i.ck = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i33, i64 10) ; 2 uses
  %i.cl = extractvalue { i64, i1 } %i.ck, 0
  %i.cm = extractvalue { i64, i1 } %i.ck, 1
  br i1 %i.cm, label %.thread, label %bb.ad, !prof !10

bb.ad:                                            ; preds = %.lr.ph.i30
  %i.cn = load i8, ptr %.sroa.0.1136.i31, align 1, !alias.scope !6634, !noalias !6635, !noundef !7
  %i.co = zext i8 %i.cn to i32
  %i.cp = add nsw i32 %i.co, -48                  ; 2 uses
  %i.cq = icmp ult i32 %i.cp, 10
  br i1 %i.cq, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.cr = zext nneg i32 %i.cp to i64
  %i.cs = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.cl, i64 %i.cr) ; 2 uses
  %i.ct = extractvalue { i64, i1 } %i.cs, 1
  br i1 %i.ct, label %.thread, label %bb.af, !prof !10

bb.af:                                            ; preds = %bb.ae
  %i.cu = extractvalue { i64, i1 } %i.cs, 0       ; 2 uses
  %.not102.i35 = icmp eq i64 %i.cj, 0
  br i1 %.not102.i35, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit62, label %.lr.ph.i30

.lr.ph141.i40:                                    ; preds = %bb.ac, %bb.ag
  %.sroa.0.2140.i41 = phi ptr [ %i.db, %bb.ag ], [ %i.cf, %bb.ac ] ; 2 uses
  %.sroa.26.2139.i42 = phi i64 [ %i.da, %bb.ag ], [ %i.cg, %bb.ac ]
  %.sroa.084.2138.i43 = phi i64 [ %i.dd, %bb.ag ], [ 0, %bb.ac ]
  %i.cv = load i8, ptr %.sroa.0.2140.i41, align 1, !alias.scope !6634, !noalias !6635, !noundef !7
  %i.cw = zext i8 %i.cv to i32
  %i.cx = add nsw i32 %i.cw, -48                  ; 2 uses
  %i.cy = icmp ult i32 %i.cx, 10
  br i1 %i.cy, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %.lr.ph141.i40
  %i.cz = mul i64 %.sroa.084.2138.i43, 10
  %i.da = add nsw i64 %.sroa.26.2139.i42, -1      ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i41, i64 1
  %i.dc = zext nneg i32 %i.cx to i64
  %i.dd = sub i64 %i.cz, %i.dc                    ; 2 uses
  %.not103.i44 = icmp eq i64 %i.da, 0
  br i1 %.not103.i44, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit62, label %.lr.ph141.i40

bb.ah:                                            ; preds = %bb.aa, %bb.ab, %thread-pre-split.i60
  %.sroa.26.0.i45 = phi i64 [ %i.ce, %bb.ab ], [ %i.bw, %thread-pre-split.i60 ], [ %i.bw, %bb.aa ] ; 4 uses
  %.sroa.0.0.i46 = phi ptr [ %i.cd, %bb.ab ], [ %i.by, %thread-pre-split.i60 ], [ %i.by, %bb.aa ] ; 2 uses
  %i.de = icmp samesign ult i64 %.sroa.26.0.i45, 16
  br i1 %i.de, label %.preheader.i53, label %.preheader111.i47

.preheader.i53:                                   ; preds = %bb.ah
  %.not105146.i54 = icmp eq i64 %.sroa.26.0.i45, 0
  br i1 %.not105146.i54, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit62, label %.lr.ph150.i55

.preheader111.i47:                                ; preds = %bb.ah, %bb.ak
  %.sroa.0.3145.i48 = phi ptr [ %i.df, %bb.ak ], [ %.sroa.0.0.i46, %bb.ah ] ; 2 uses
  %.sroa.26.3144.i49 = phi i64 [ %i.dg, %bb.ak ], [ %.sroa.26.0.i45, %bb.ah ]
  %.sroa.084.3143.i50 = phi i64 [ %i.dr, %bb.ak ], [ 0, %bb.ah ]
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i48, i64 1
  %i.dg = add nsw i64 %.sroa.26.3144.i49, -1      ; 2 uses
  %i.dh = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i50, i64 10) ; 2 uses
  %i.di = extractvalue { i64, i1 } %i.dh, 0
  %i.dj = extractvalue { i64, i1 } %i.dh, 1
  br i1 %i.dj, label %.thread, label %bb.ai, !prof !10

bb.ai:                                            ; preds = %.preheader111.i47
  %i.dk = load i8, ptr %.sroa.0.3145.i48, align 1, !alias.scope !6634, !noalias !6635, !noundef !7
  %i.dl = zext i8 %i.dk to i32
  %i.dm = add nsw i32 %i.dl, -48                  ; 2 uses
  %i.dn = icmp ult i32 %i.dm, 10
  br i1 %i.dn, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.do = zext nneg i32 %i.dm to i64
  %i.dp = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.di, i64 %i.do) ; 2 uses
  %i.dq = extractvalue { i64, i1 } %i.dp, 1
  br i1 %i.dq, label %.thread, label %bb.ak, !prof !10

bb.ak:                                            ; preds = %bb.aj
  %i.dr = extractvalue { i64, i1 } %i.dp, 0       ; 2 uses
  %.not104.i52 = icmp eq i64 %i.dg, 0
  br i1 %.not104.i52, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit62, label %.preheader111.i47

.lr.ph150.i55:                                    ; preds = %.preheader.i53, %bb.al
  %.sroa.0.4149.i56 = phi ptr [ %i.dy, %bb.al ], [ %.sroa.0.0.i46, %.preheader.i53 ] ; 2 uses
  %.sroa.26.4148.i57 = phi i64 [ %i.dx, %bb.al ], [ %.sroa.26.0.i45, %.preheader.i53 ]
  %.sroa.084.4147.i58 = phi i64 [ %i.ea, %bb.al ], [ 0, %.preheader.i53 ]
  %i.ds = load i8, ptr %.sroa.0.4149.i56, align 1, !alias.scope !6634, !noalias !6635, !noundef !7
  %i.dt = zext i8 %i.ds to i32
  %i.du = add nsw i32 %i.dt, -48                  ; 2 uses
  %i.dv = icmp ult i32 %i.du, 10
  br i1 %i.dv, label %bb.al, label %.thread

bb.al:                                            ; preds = %.lr.ph150.i55
  %i.dw = mul i64 %.sroa.084.4147.i58, 10
  %i.dx = add nsw i64 %.sroa.26.4148.i57, -1      ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i56, i64 1
  %i.dz = zext nneg i32 %i.du to i64
  %i.ea = add i64 %i.dw, %i.dz                    ; 2 uses
  %.not105.i59 = icmp eq i64 %i.dx, 0
  br i1 %.not105.i59, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit62, label %.lr.ph150.i55

.thread:                                          ; preds = %.lr.ph.i30, %bb.ae, %bb.ad, %.lr.ph141.i40, %.preheader111.i47, %bb.ai, %bb.aj, %.lr.ph150.i55, %bb.aa, %bb.aa, %bb.u
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.u ], [ %i.by, %.preheader111.i47 ], [ %i.by, %.lr.ph150.i55 ], [ %i.by, %bb.aa ], [ %i.by, %.lr.ph141.i40 ], [ %i.by, %bb.aa ], [ %i.by, %bb.aj ], [ %i.by, %bb.ai ], [ %i.by, %bb.ad ], [ %i.by, %bb.ae ], [ %i.by, %.lr.ph.i30 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.bw) #40
  %i.eb = load i8, ptr %i.d, align 8, !range !22, !noundef !7
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.ao, label %bb.ap

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit62: ; preds = %bb.af, %bb.ag, %bb.ak, %bb.al, %.preheader.i53
  %.sroa.1583.0 = phi i64 [ %i.dr, %bb.ak ], [ %i.dd, %bb.ag ], [ %i.ea, %bb.al ], [ 0, %.preheader.i53 ], [ %i.cu, %bb.af ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @237, i64 noundef 4, i64 noundef %.sroa.1583.0) #39
  br label %bb.am

bb.am:                                            ; preds = %bb.ap, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit62
  %i.ed = phi ptr [ %.ph, %bb.ap ], [ %i.by, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit62 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ee = icmp eq i64 %i.bw, 0
  br i1 %i.ee, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit65, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ed, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !6636
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit65

bb.ao:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.bw, ptr %i.c, align 8
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.ph, ptr %.sroa.579.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.bw, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @237, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit65

bb.ap:                                            ; preds = %.thread
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.eg = load double, ptr %i.ef, align 8, !noundef !7
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @237, i64 noundef 4, double noundef %i.eg) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.am

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit65: ; preds = %bb.an, %bb.am, %bb.ao
  br i1 %.sroa.01.0.not, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit71, label %bb.ar

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit71: ; preds = %bb.ar, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.eh = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !nonnull !7, !align !14, !noundef !7
  %i.ek = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.eh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ej, ptr noundef nonnull @55, ptr noundef nonnull %i.a) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !6637)
  %.val.i66 = load i64, ptr %i.i, align 8, !range !8, !alias.scope !6637, !noundef !7 ; 2 uses
  %i.el = icmp eq i64 %.val.i66, 0
  br i1 %i.el, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit68, label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit71
  %i.em = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val1.i67 = load ptr, ptr %i.em, align 8, !alias.scope !6637, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i67, i64 noundef %.val.i66, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !6637
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit68

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit68: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit71, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret i1 %i.ek

bb.ar:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit65
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !6638
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit71
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserINtNtCs6JMX4GRUq9U_4core7convert4FromRSReE4fromCsgn1j6LDYpaP_5uu_cp(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !6661
  %i.a = tail call noundef align 8 dereferenceable_or_null(504) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 504, i64 noundef range(i64 1, 9) 8) #39, !noalias !6661 ; 51 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !noalias !6662
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6662
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6662
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 -1, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6662
  %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @105, ptr %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6662
  %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 4, ptr %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6662
  %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6662
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 0, ptr %i.c, align 8, !noalias !6662
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.1, align 8, !noalias !6662
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.1, align 8, !noalias !6662
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 -1, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.1, align 8, !noalias !6662
  %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr @45, ptr %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.1, align 8, !noalias !6662
  %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 9, ptr %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.1, align 8, !noalias !6662
  %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i8 0, ptr %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.1, align 8, !noalias !6662
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 0, ptr %i.d, align 8, !noalias !6662
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.2, align 8, !noalias !6662
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.2, align 8, !noalias !6662
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i64 -1, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.2, align 8, !noalias !6662
  %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store ptr @106, ptr %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.2, align 8, !noalias !6662
  %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store i64 10, ptr %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.2, align 8, !noalias !6662
  %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i8 0, ptr %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.2, align 8, !noalias !6662
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i64 0, ptr %i.e, align 8, !noalias !6662
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.3, align 8, !noalias !6662
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.3, align 8, !noalias !6662
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i64 -1, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.3, align 8, !noalias !6662
  %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store ptr @107, ptr %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.3, align 8, !noalias !6662
  %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store i64 7, ptr %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.3, align 8, !noalias !6662
  %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store i8 0, ptr %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.3, align 8, !noalias !6662
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store i64 0, ptr %i.f, align 8, !noalias !6662
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.4, align 8, !noalias !6662
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.4, align 8, !noalias !6662
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store i64 -1, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.4, align 8, !noalias !6662
  %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store ptr @108, ptr %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.4, align 8, !noalias !6662
  %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store i64 5, ptr %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.4, align 8, !noalias !6662
  %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store i8 0, ptr %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.4, align 8, !noalias !6662
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  store i64 0, ptr %i.g, align 8, !noalias !6662
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.5, align 8, !noalias !6662
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.5, align 8, !noalias !6662
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  store i64 -1, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.5, align 8, !noalias !6662
  %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  store ptr @109, ptr %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.5, align 8, !noalias !6662
  %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  store i64 5, ptr %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.5, align 8, !noalias !6662
  %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  store i8 0, ptr %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.5, align 8, !noalias !6662
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  store i64 0, ptr %i.h, align 8, !noalias !6662
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.6, align 8, !noalias !6662
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.6, align 8, !noalias !6662
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  store i64 -1, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.6, align 8, !noalias !6662
  %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  store ptr @110, ptr %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.6, align 8, !noalias !6662
  %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  store i64 3, ptr %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.6, align 8, !noalias !6662
  %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  store i8 0, ptr %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.6, align 8, !noalias !6662
  store i64 7, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 7, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 504) #43, !noalias !6663
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRINtNtCs7tKScEop1B6_5alloc3vec3VechENtB6_5Debug3fmtCsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !7, !align !14, !noundef !7 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
end_hunk_1
