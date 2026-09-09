Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_wc-e07c7bfd28db3287.uu_wc.b87a570b18e6c4e2-cgu.0?download=true
inline.NumInlined: 1243
inline.NumDeleted: 653
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 19
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvXsm_CsfPYenFzdTHO_5uu_wcNtB5_7WcErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !3007)
  %.val.i83 = load i64, ptr %i.n, align 8, !range !5, !alias.scope !3007, !noundef !4 ; 2 uses
  %i.cn = icmp eq i64 %.val.i83, 0
  br i1 %i.cn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit85, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val1.i84 = load ptr, ptr %i.co, align 8, !alias.scope !3007, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i84, i64 noundef %.val.i83, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !3007
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit85

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit85: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ab

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.558.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.558.0 = load i64, ptr %.sroa.558.0.in, align 8, !noundef !4 ; 16 uses
  %.sroa.057.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.057.0 = load ptr, ptr %.sroa.057.0.in, align 8, !nonnull !4, !noundef !4
  %.not.i = icmp slt i64 %.sroa.558.0, 0
  br i1 %.not.i, label %bb.ac, label %bb.v, !prof !16

bb.v:                                             ; preds = %bb.u
  %i.cp = icmp eq i64 %.sroa.558.0, 0
  br i1 %i.cp, label %.thread, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.v
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !3008
  %i.cq = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.558.0, i64 noundef range(i64 1, 9) 1) #28, !noalias !3008 ; 18 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.ac, label %bb.ad

.loopexit272:                                     ; preds = %.lr.ph.i, %bb.i, %bb.h, %.lr.ph141.i, %.preheader111.i, %bb.m, %bb.n, %.lr.ph150.i, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsfPYenFzdTHO_5uu_wc.exit, %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload177, i64 noundef %.sroa.8.0.copyload180) #27
  %i.cs = load i8, ptr %i.t, align 8, !range !14, !noundef !4
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.y, label %bb.z

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.j, %bb.k, %bb.o, %bb.p, %.preheader.i, %.preheader114.i
  %.sroa.15184.0 = phi i64 [ %i.cc, %bb.p ], [ %i.bf, %bb.k ], [ %i.bt, %bb.o ], [ 0, %.preheader.i ], [ 0, %.preheader114.i ], [ %i.aw, %bb.j ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 5, i64 noundef %.sroa.15184.0) #28
  br label %bb.w

bb.w:                                             ; preds = %bb.z, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.r) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.cu = icmp eq i64 %.sroa.0.0.copyload174, 0
  br i1 %i.cu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit89, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload177, i64 noundef %.sroa.0.0.copyload174, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !3009
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit89

bb.y:                                             ; preds = %.loopexit272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 %.sroa.0.0.copyload174, ptr %i.s, align 8
  %.sroa.5.0..sroa_idx175 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.5.0.copyload177, ptr %.sroa.5.0..sroa_idx175, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.8.0.copyload180, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.s) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.r) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit89

bb.z:                                             ; preds = %.loopexit272
  %i.cv = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cw = load double, ptr %i.cv, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 5, double noundef %i.cw) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.w

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit89: ; preds = %bb.x, %bb.w, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.w, ptr %i.q, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  %i.cx = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !4, !align !6, !noundef !4
  %i.da = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cz, ptr noundef nonnull @55, ptr noundef nonnull %i.q) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !3010)
  %.val.i90 = load i64, ptr %i.w, align 8, !range !5, !alias.scope !3010, !noundef !4 ; 2 uses
  %i.db = icmp eq i64 %.val.i90, 0
  br i1 %i.db, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit92, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit89
  %i.dc = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val1.i91 = load ptr, ptr %i.dc, align 8, !alias.scope !3010, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i91, i64 noundef %.val.i90, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !3010
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit92

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit92: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit89, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit170, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit85, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit92
  %.sroa.0.1.in = phi i1 [ %i.da, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit92 ], [ %i.cg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit ], [ %i.cm, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit85 ], [ %i.hy, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit170 ]
  ret i1 %.sroa.0.1.in

bb.ac:                                            ; preds = %bb.u, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.u ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %.sroa.558.0) #30
  unreachable

bb.ad:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cq, ptr nonnull align 1 %.sroa.057.0, i64 %.sroa.558.0, i1 false)
  %cond259 = icmp eq i64 %.sroa.558.0, 1
  %i.dd = load i8, ptr %i.cq, align 1, !alias.scope !3011, !noalias !3012 ; 2 uses
  br i1 %cond259, label %bb.ae, label %thread-pre-split.i124

bb.ae:                                            ; preds = %bb.ad
  switch i8 %i.dd, label %bb.al [
    i8 43, label %.thread
    i8 45, label %.thread
  ]

thread-pre-split.i124:                            ; preds = %bb.ad
  switch i8 %i.dd, label %bb.al [
    i8 43, label %bb.af
    i8 45, label %bb.ag
  ]

bb.af:                                            ; preds = %thread-pre-split.i124
  %i.de = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.df = add nsw i64 %.sroa.558.0, -1
  br label %bb.al

bb.ag:                                            ; preds = %thread-pre-split.i124
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 2 uses
  %i.dh = add nsw i64 %.sroa.558.0, -1            ; 2 uses
  %i.di = icmp samesign ult i64 %.sroa.558.0, 17
  br i1 %i.di, label %.lr.ph141.i104, label %.lr.ph.i94

.lr.ph.i94:                                       ; preds = %bb.ag, %bb.aj
  %.sroa.0.1136.i95 = phi ptr [ %i.dj, %bb.aj ], [ %i.dg, %bb.ag ] ; 2 uses
  %.sroa.26.1135.i96 = phi i64 [ %i.dk, %bb.aj ], [ %i.dh, %bb.ag ]
  %.sroa.084.0134.i97 = phi i64 [ %i.dv, %bb.aj ], [ 0, %bb.ag ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i95, i64 1
  %i.dk = add nsw i64 %.sroa.26.1135.i96, -1      ; 2 uses
  %i.dl = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i97, i64 10) ; 2 uses
  %i.dm = extractvalue { i64, i1 } %i.dl, 0
  %i.dn = extractvalue { i64, i1 } %i.dl, 1
  br i1 %i.dn, label %.thread, label %bb.ah, !prof !9

bb.ah:                                            ; preds = %.lr.ph.i94
  %i.do = load i8, ptr %.sroa.0.1136.i95, align 1, !alias.scope !3011, !noalias !3012, !noundef !4
  %i.dp = zext i8 %i.do to i32
  %i.dq = add nsw i32 %i.dp, -48                  ; 2 uses
  %i.dr = icmp ult i32 %i.dq, 10
  br i1 %i.dr, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.ds = zext nneg i32 %i.dq to i64
  %i.dt = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.dm, i64 %i.ds) ; 2 uses
  %i.du = extractvalue { i64, i1 } %i.dt, 1
  br i1 %i.du, label %.thread, label %bb.aj, !prof !9

bb.aj:                                            ; preds = %bb.ai
  %i.dv = extractvalue { i64, i1 } %i.dt, 0       ; 2 uses
  %.not102.i99 = icmp eq i64 %i.dk, 0
  br i1 %.not102.i99, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit126, label %.lr.ph.i94

.lr.ph141.i104:                                   ; preds = %bb.ag, %bb.ak
  %.sroa.0.2140.i105 = phi ptr [ %i.ec, %bb.ak ], [ %i.dg, %bb.ag ] ; 2 uses
  %.sroa.26.2139.i106 = phi i64 [ %i.eb, %bb.ak ], [ %i.dh, %bb.ag ]
  %.sroa.084.2138.i107 = phi i64 [ %i.ee, %bb.ak ], [ 0, %bb.ag ]
  %i.dw = load i8, ptr %.sroa.0.2140.i105, align 1, !alias.scope !3011, !noalias !3012, !noundef !4
  %i.dx = zext i8 %i.dw to i32
  %i.dy = add nsw i32 %i.dx, -48                  ; 2 uses
  %i.dz = icmp ult i32 %i.dy, 10
  br i1 %i.dz, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %.lr.ph141.i104
  %i.ea = mul i64 %.sroa.084.2138.i107, 10
  %i.eb = add nsw i64 %.sroa.26.2139.i106, -1     ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i105, i64 1
  %i.ed = zext nneg i32 %i.dy to i64
  %i.ee = sub i64 %i.ea, %i.ed                    ; 2 uses
  %.not103.i108 = icmp eq i64 %i.eb, 0
  br i1 %.not103.i108, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit126, label %.lr.ph141.i104

bb.al:                                            ; preds = %bb.ae, %bb.af, %thread-pre-split.i124
  %.sroa.26.0.i109 = phi i64 [ %i.df, %bb.af ], [ %.sroa.558.0, %thread-pre-split.i124 ], [ %.sroa.558.0, %bb.ae ] ; 3 uses
  %.sroa.0.0.i110 = phi ptr [ %i.de, %bb.af ], [ %i.cq, %thread-pre-split.i124 ], [ %i.cq, %bb.ae ] ; 2 uses
  %i.ef = icmp samesign ult i64 %.sroa.26.0.i109, 16
  br i1 %i.ef, label %.lr.ph150.i119, label %.preheader111.i111

.preheader111.i111:                               ; preds = %bb.al, %bb.ao
  %.sroa.0.3145.i112 = phi ptr [ %i.eg, %bb.ao ], [ %.sroa.0.0.i110, %bb.al ] ; 2 uses
  %.sroa.26.3144.i113 = phi i64 [ %i.eh, %bb.ao ], [ %.sroa.26.0.i109, %bb.al ]
  %.sroa.084.3143.i114 = phi i64 [ %i.es, %bb.ao ], [ 0, %bb.al ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i112, i64 1
  %i.eh = add nsw i64 %.sroa.26.3144.i113, -1     ; 2 uses
  %i.ei = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i114, i64 10) ; 2 uses
  %i.ej = extractvalue { i64, i1 } %i.ei, 0
  %i.ek = extractvalue { i64, i1 } %i.ei, 1
  br i1 %i.ek, label %.thread, label %bb.am, !prof !9

bb.am:                                            ; preds = %.preheader111.i111
  %i.el = load i8, ptr %.sroa.0.3145.i112, align 1, !alias.scope !3011, !noalias !3012, !noundef !4
  %i.em = zext i8 %i.el to i32
  %i.en = add nsw i32 %i.em, -48                  ; 2 uses
  %i.eo = icmp ult i32 %i.en, 10
  br i1 %i.eo, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.ep = zext nneg i32 %i.en to i64
  %i.eq = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ej, i64 %i.ep) ; 2 uses
  %i.er = extractvalue { i64, i1 } %i.eq, 1
  br i1 %i.er, label %.thread, label %bb.ao, !prof !9

bb.ao:                                            ; preds = %bb.an
  %i.es = extractvalue { i64, i1 } %i.eq, 0       ; 2 uses
  %.not104.i116 = icmp eq i64 %i.eh, 0
  br i1 %.not104.i116, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit126, label %.preheader111.i111

.lr.ph150.i119:                                   ; preds = %bb.al, %bb.ap
  %.sroa.0.4149.i120 = phi ptr [ %i.ez, %bb.ap ], [ %.sroa.0.0.i110, %bb.al ] ; 2 uses
  %.sroa.26.4148.i121 = phi i64 [ %i.ey, %bb.ap ], [ %.sroa.26.0.i109, %bb.al ]
  %.sroa.084.4147.i122 = phi i64 [ %i.fb, %bb.ap ], [ 0, %bb.al ]
  %i.et = load i8, ptr %.sroa.0.4149.i120, align 1, !alias.scope !3011, !noalias !3012, !noundef !4
  %i.eu = zext i8 %i.et to i32
  %i.ev = add nsw i32 %i.eu, -48                  ; 2 uses
  %i.ew = icmp ult i32 %i.ev, 10
  br i1 %i.ew, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %.lr.ph150.i119
  %i.ex = mul i64 %.sroa.084.4147.i122, 10
  %i.ey = add nsw i64 %.sroa.26.4148.i121, -1     ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i120, i64 1
  %i.fa = zext nneg i32 %i.ev to i64
  %i.fb = add i64 %i.ex, %i.fa                    ; 2 uses
  %.not105.i123 = icmp eq i64 %i.ey, 0
  br i1 %.not105.i123, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit126, label %.lr.ph150.i119

.thread:                                          ; preds = %.lr.ph.i94, %bb.ai, %bb.ah, %.lr.ph141.i104, %.preheader111.i111, %bb.am, %bb.an, %.lr.ph150.i119, %bb.ae, %bb.ae, %bb.v
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.v ], [ %i.cq, %.preheader111.i111 ], [ %i.cq, %.lr.ph150.i119 ], [ %i.cq, %bb.ae ], [ %i.cq, %.lr.ph141.i104 ], [ %i.cq, %bb.ae ], [ %i.cq, %bb.an ], [ %i.cq, %bb.am ], [ %i.cq, %bb.ah ], [ %i.cq, %bb.ai ], [ %i.cq, %.lr.ph.i94 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %.sroa.558.0) #27
  %i.fc = load i8, ptr %i.j, align 8, !range !14, !noundef !4
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.as, label %bb.at

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit126: ; preds = %bb.aj, %bb.ak, %bb.ao, %bb.ap
  %.sroa.15191.0 = phi i64 [ %i.es, %bb.ao ], [ %i.ee, %bb.ak ], [ %i.fb, %bb.ap ], [ %i.dv, %bb.aj ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 4, i64 noundef %.sroa.15191.0) #28
  br label %bb.aq

bb.aq:                                            ; preds = %bb.at, %bb.as, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit126
  %i.fe = phi ptr [ %.ph, %bb.as ], [ %.ph, %bb.at ], [ %i.cq, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit126 ]
  %.sroa.02.0.not = phi i1 [ true, %bb.as ], [ false, %bb.at ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit126 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fg = load i64, ptr %i.ff, align 8, !noundef !4
  %i.fh = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %i.fg, ptr noalias nofree noundef nonnull %i.d, i64 noundef 20) #28 ; 2 uses
  %i.fi = extractvalue { ptr, i64 } %i.fh, 0
  %i.fj = extractvalue { ptr, i64 } %i.fh, 1      ; 16 uses
  %.not.i127 = icmp slt i64 %i.fj, 0
  br i1 %.not.i127, label %bb.au, label %bb.ar, !prof !16

bb.ar:                                            ; preds = %bb.aq
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %.thread243, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i128

.thread243:                                       ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i128: ; preds = %bb.ar
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !3013
  %i.fl = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.fj, i64 noundef range(i64 1, 9) 1) #28, !noalias !3013 ; 18 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.au, label %bb.av

bb.as:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.sroa.558.0, ptr %i.i, align 8
  %.sroa.5186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.ph, ptr %.sroa.5186.0..sroa_idx, align 8
  %.sroa.8187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.558.0, ptr %.sroa.8187.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.aq

bb.at:                                            ; preds = %.thread
  %i.fn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.fo = load double, ptr %i.fn, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 4, double noundef %i.fo) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.aq

bb.au:                                            ; preds = %bb.aq, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i128
  %.sroa.4202.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i128 ], [ 0, %bb.aq ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4202.0.ph, i64 %i.fj) #30
  unreachable

bb.av:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i128
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fl, ptr align 1 %i.fi, i64 %i.fj, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %cond = icmp eq i64 %i.fj, 1
  %i.fp = load i8, ptr %i.fl, align 1, !alias.scope !3014, !noalias !3015 ; 2 uses
  br i1 %cond, label %bb.aw, label %thread-pre-split.i162

bb.aw:                                            ; preds = %bb.av
  switch i8 %i.fp, label %bb.bd [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i162:                            ; preds = %bb.av
  switch i8 %i.fp, label %bb.bd [
    i8 43, label %bb.ax
    i8 45, label %bb.ay
  ]

bb.ax:                                            ; preds = %thread-pre-split.i162
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fr = add nsw i64 %i.fj, -1
  br label %bb.bd

bb.ay:                                            ; preds = %thread-pre-split.i162
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 1 ; 2 uses
  %i.ft = add nsw i64 %i.fj, -1                   ; 2 uses
  %i.fu = icmp samesign ult i64 %i.fj, 17
  br i1 %i.fu, label %.lr.ph141.i142, label %.lr.ph.i132

.lr.ph.i132:                                      ; preds = %bb.ay, %bb.bb
  %.sroa.0.1136.i133 = phi ptr [ %i.fv, %bb.bb ], [ %i.fs, %bb.ay ] ; 2 uses
  %.sroa.26.1135.i134 = phi i64 [ %i.fw, %bb.bb ], [ %i.ft, %bb.ay ]
  %.sroa.084.0134.i135 = phi i64 [ %i.gh, %bb.bb ], [ 0, %bb.ay ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i133, i64 1
  %i.fw = add nsw i64 %.sroa.26.1135.i134, -1     ; 2 uses
  %i.fx = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i135, i64 10) ; 2 uses
  %i.fy = extractvalue { i64, i1 } %i.fx, 0
  %i.fz = extractvalue { i64, i1 } %i.fx, 1
  br i1 %i.fz, label %.loopexit, label %bb.az, !prof !9

bb.az:                                            ; preds = %.lr.ph.i132
  %i.ga = load i8, ptr %.sroa.0.1136.i133, align 1, !alias.scope !3014, !noalias !3015, !noundef !4
  %i.gb = zext i8 %i.ga to i32
  %i.gc = add nsw i32 %i.gb, -48                  ; 2 uses
  %i.gd = icmp ult i32 %i.gc, 10
  br i1 %i.gd, label %bb.ba, label %.loopexit

bb.ba:                                            ; preds = %bb.az
  %i.ge = zext nneg i32 %i.gc to i64
  %i.gf = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.fy, i64 %i.ge) ; 2 uses
  %i.gg = extractvalue { i64, i1 } %i.gf, 1
  br i1 %i.gg, label %.loopexit, label %bb.bb, !prof !9

bb.bb:                                            ; preds = %bb.ba
  %i.gh = extractvalue { i64, i1 } %i.gf, 0       ; 2 uses
  %.not102.i137 = icmp eq i64 %i.fw, 0
  br i1 %.not102.i137, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit164, label %.lr.ph.i132

.lr.ph141.i142:                                   ; preds = %bb.ay, %bb.bc
  %.sroa.0.2140.i143 = phi ptr [ %i.go, %bb.bc ], [ %i.fs, %bb.ay ] ; 2 uses
  %.sroa.26.2139.i144 = phi i64 [ %i.gn, %bb.bc ], [ %i.ft, %bb.ay ]
  %.sroa.084.2138.i145 = phi i64 [ %i.gq, %bb.bc ], [ 0, %bb.ay ]
  %i.gi = load i8, ptr %.sroa.0.2140.i143, align 1, !alias.scope !3014, !noalias !3015, !noundef !4
  %i.gj = zext i8 %i.gi to i32
  %i.gk = add nsw i32 %i.gj, -48                  ; 2 uses
  %i.gl = icmp ult i32 %i.gk, 10
  br i1 %i.gl, label %bb.bc, label %.loopexit

bb.bc:                                            ; preds = %.lr.ph141.i142
  %i.gm = mul i64 %.sroa.084.2138.i145, 10
  %i.gn = add nsw i64 %.sroa.26.2139.i144, -1     ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i143, i64 1
  %i.gp = zext nneg i32 %i.gk to i64
  %i.gq = sub i64 %i.gm, %i.gp                    ; 2 uses
  %.not103.i146 = icmp eq i64 %i.gn, 0
  br i1 %.not103.i146, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit164, label %.lr.ph141.i142

bb.bd:                                            ; preds = %bb.aw, %bb.ax, %thread-pre-split.i162
  %.sroa.26.0.i147 = phi i64 [ %i.fr, %bb.ax ], [ %i.fj, %thread-pre-split.i162 ], [ %i.fj, %bb.aw ] ; 3 uses
  %.sroa.0.0.i148 = phi ptr [ %i.fq, %bb.ax ], [ %i.fl, %thread-pre-split.i162 ], [ %i.fl, %bb.aw ] ; 2 uses
  %i.gr = icmp samesign ult i64 %.sroa.26.0.i147, 16
  br i1 %i.gr, label %.lr.ph150.i157, label %.preheader111.i149

.preheader111.i149:                               ; preds = %bb.bd, %bb.bg
  %.sroa.0.3145.i150 = phi ptr [ %i.gs, %bb.bg ], [ %.sroa.0.0.i148, %bb.bd ] ; 2 uses
  %.sroa.26.3144.i151 = phi i64 [ %i.gt, %bb.bg ], [ %.sroa.26.0.i147, %bb.bd ]
  %.sroa.084.3143.i152 = phi i64 [ %i.he, %bb.bg ], [ 0, %bb.bd ]
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i150, i64 1
  %i.gt = add nsw i64 %.sroa.26.3144.i151, -1     ; 2 uses
  %i.gu = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i152, i64 10) ; 2 uses
  %i.gv = extractvalue { i64, i1 } %i.gu, 0
  %i.gw = extractvalue { i64, i1 } %i.gu, 1
  br i1 %i.gw, label %.loopexit, label %bb.be, !prof !9

bb.be:                                            ; preds = %.preheader111.i149
  %i.gx = load i8, ptr %.sroa.0.3145.i150, align 1, !alias.scope !3014, !noalias !3015, !noundef !4
  %i.gy = zext i8 %i.gx to i32
  %i.gz = add nsw i32 %i.gy, -48                  ; 2 uses
  %i.ha = icmp ult i32 %i.gz, 10
  br i1 %i.ha, label %bb.bf, label %.loopexit

bb.bf:                                            ; preds = %bb.be
  %i.hb = zext nneg i32 %i.gz to i64
  %i.hc = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.gv, i64 %i.hb) ; 2 uses
  %i.hd = extractvalue { i64, i1 } %i.hc, 1
  br i1 %i.hd, label %.loopexit, label %bb.bg, !prof !9

bb.bg:                                            ; preds = %bb.bf
  %i.he = extractvalue { i64, i1 } %i.hc, 0       ; 2 uses
  %.not104.i154 = icmp eq i64 %i.gt, 0
  br i1 %.not104.i154, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit164, label %.preheader111.i149

.lr.ph150.i157:                                   ; preds = %bb.bd, %bb.bh
  %.sroa.0.4149.i158 = phi ptr [ %i.hl, %bb.bh ], [ %.sroa.0.0.i148, %bb.bd ] ; 2 uses
  %.sroa.26.4148.i159 = phi i64 [ %i.hk, %bb.bh ], [ %.sroa.26.0.i147, %bb.bd ]
  %.sroa.084.4147.i160 = phi i64 [ %i.hn, %bb.bh ], [ 0, %bb.bd ]
  %i.hf = load i8, ptr %.sroa.0.4149.i158, align 1, !alias.scope !3014, !noalias !3015, !noundef !4
  %i.hg = zext i8 %i.hf to i32
  %i.hh = add nsw i32 %i.hg, -48                  ; 2 uses
  %i.hi = icmp ult i32 %i.hh, 10
  br i1 %i.hi, label %bb.bh, label %.loopexit

bb.bh:                                            ; preds = %.lr.ph150.i157
  %i.hj = mul i64 %.sroa.084.4147.i160, 10
  %i.hk = add nsw i64 %.sroa.26.4148.i159, -1     ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i158, i64 1
  %i.hm = zext nneg i32 %i.hh to i64
  %i.hn = add i64 %i.hj, %i.hm                    ; 2 uses
  %.not105.i161 = icmp eq i64 %i.hk, 0
  br i1 %.not105.i161, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit164, label %.lr.ph150.i157

.loopexit:                                        ; preds = %.lr.ph.i132, %bb.ba, %bb.az, %.lr.ph141.i142, %.preheader111.i149, %bb.be, %bb.bf, %.lr.ph150.i157, %bb.aw, %bb.aw, %.thread243
  %.ph251 = phi ptr [ %i.fl, %.preheader111.i149 ], [ %i.fl, %.lr.ph141.i142 ], [ %i.fl, %.lr.ph150.i157 ], [ %i.fl, %bb.aw ], [ inttoptr (i64 1 to ptr), %.thread243 ], [ %i.fl, %bb.aw ], [ %i.fl, %bb.bf ], [ %i.fl, %bb.be ], [ %i.fl, %bb.az ], [ %i.fl, %bb.ba ], [ %i.fl, %.lr.ph.i132 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph251, i64 noundef %i.fj) #27
  %i.ho = load i8, ptr %i.h, align 8, !range !14, !noundef !4
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.bk, label %bb.bl

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit164: ; preds = %bb.bb, %bb.bc, %bb.bg, %bb.bh
  %.sroa.15198.0 = phi i64 [ %i.he, %bb.bg ], [ %i.gq, %bb.bc ], [ %i.hn, %bb.bh ], [ %i.gh, %bb.bb ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 3, i64 noundef %.sroa.15198.0) #28
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bl, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit164
  %i.hq = phi ptr [ %.ph251, %bb.bl ], [ %i.fl, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit164 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 33, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.hr = icmp eq i64 %i.fj, 0
  br i1 %i.hr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit167, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hq, i64 noundef %i.fj, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !3016
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit167

bb.bk:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.fj, ptr %i.g, align 8
  %.sroa.5193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.ph251, ptr %.sroa.5193.0..sroa_idx, align 8
  %.sroa.8194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.fj, ptr %.sroa.8194.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 33, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit167

bb.bl:                                            ; preds = %.loopexit
  %i.hs = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ht = load double, ptr %i.hs, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 3, double noundef %i.ht) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.bi

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit167: ; preds = %bb.bj, %bb.bi, %bb.bk
  %i.hu = icmp eq i64 %.sroa.558.0, 0
  %or.cond = or i1 %.sroa.02.0.not, %i.hu
  br i1 %or.cond, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit173, label %bb.bn

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit173: ; preds = %bb.bn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.l, ptr %i.e, align 8
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.467.0..sroa_idx, align 8
  %i.hv = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !nonnull !4, !align !6, !noundef !4
  %i.hy = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.hv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hx, ptr noundef nonnull @55, ptr noundef nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !3017)
  %.val.i168 = load i64, ptr %i.l, align 8, !range !5, !alias.scope !3017, !noundef !4 ; 2 uses
  %i.hz = icmp eq i64 %.val.i168, 0
  br i1 %i.hz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit170, label %bb.bm

bb.bm:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit173
  %i.ia = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val1.i169 = load ptr, ptr %i.ia, align 8, !alias.scope !3017, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i169, i64 noundef %.val.i168, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !3017
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit170

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit170: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit173, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ab

bb.bn:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit167
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fe, i64 noundef %.sroa.558.0, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !3018
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit173
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsm_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_ENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !6, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !nonnull !4
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
  ret i1 %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsm_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsa_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_8UIoErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #28
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #28
  ret i1 %i.e
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsx_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_8UIoErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 7, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @161, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @165, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @162) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources4once4OnceINtNtBb_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtB9_6traits8iterator8Iterator10advance_byB1f_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3033)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_7sources4once4OnceINtNtBe_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtB4_13SpecAdvanceBy15spec_advance_byB23_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3034)
  %.sroa.7.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx7.i.i, align 8, !alias.scope !3035 ; 6 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx7.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.7.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx7.sroa_idx.i.i, align 8, !alias.scope !3035 ; 4 uses
  %.promoted.i.i = load i64, ptr %0, align 8, !alias.scope !3036 ; 3 uses
  store i64 -4, ptr %0, align 8, !alias.scope !3037, !noalias !3038
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.7.sroa.6.0.copyload.i.i, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.7.sroa.6.0.copyload.i.i, i64 16
  switch i64 %.promoted.i.i, label %bb.f [
    i64 -4, label %_RNvXs_NvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_7sources4once4OnceINtNtBe_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtB4_13SpecAdvanceBy15spec_advance_byB23_.exit
    i64 -3, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.6.0.copyload.i.i) ]
  %i.c = load ptr, ptr %.sroa.7.sroa.6.0.copyload.i.i, align 8, !invariant.load !4, !noalias !3039 ; 2 uses
  %.not.i.i.i.peel.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.peel.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i) ]
  tail call void %i.c(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i) #26, !noalias !3039, !inline_history !3030
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = load i64, ptr %i.a, align 8, !range !5, !invariant.load !4, !noalias !3039 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNCNvXs_NvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtB6_13SpecAdvanceBy15spec_advance_by0B25_.exit.peel.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.peel.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.peel.i.i: ; preds = %bb.e
  %i.f = load i64, ptr %i.b, align 8, !range !7, !invariant.load !4, !noalias !3039
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %i.f) #28, !noalias !3039
  br label %_RNCNvXs_NvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtB6_13SpecAdvanceBy15spec_advance_by0B25_.exit.peel.i.i

bb.f:                                             ; preds = %bb.b
  %i.g = icmp sgt i64 %.promoted.i.i, 0
  br i1 %i.g, label %bb.g, label %_RNCNvXs_NvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtB6_13SpecAdvanceBy15spec_advance_by0B25_.exit.peel.i.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i, i64 noundef %.promoted.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !3040
  br label %_RNCNvXs_NvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtB6_13SpecAdvanceBy15spec_advance_by0B25_.exit.peel.i.i

_RNCNvXs_NvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtB6_13SpecAdvanceBy15spec_advance_by0B25_.exit.peel.i.i: ; preds = %bb.g, %bb.f, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.peel.i.i, %bb.e
  %i.h = add i64 %1, -1                           ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RNvXs_NvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_7sources4once4OnceINtNtBe_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtB4_13SpecAdvanceBy15spec_advance_byB23_.exit, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_RNCNvXs_NvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtB6_13SpecAdvanceBy15spec_advance_by0B25_.exit.peel.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3038)
  br label %_RNvXs_NvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_7sources4once4OnceINtNtBe_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtB4_13SpecAdvanceBy15spec_advance_byB23_.exit

_RNvXs_NvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_7sources4once4OnceINtNtBe_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtB4_13SpecAdvanceBy15spec_advance_byB23_.exit: ; preds = %bb.a, %bb.b, %_RNCNvXs_NvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtB6_13SpecAdvanceBy15spec_advance_by0B25_.exit.peel.i.i, %.loopexit.i.i
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %1, %bb.b ], [ 0, %_RNCNvXs_NvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources4once4OnceINtNtBg_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtB6_13SpecAdvanceBy15spec_advance_by0B25_.exit.peel.i.i ], [ %i.h, %.loopexit.i.i ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources4once4OnceINtNtBb_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtB9_6traits8iterator8Iterator3nthB1f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3061)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3062)
  %.sroa.7.0..sroa_idx7.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx7.i.i.i, align 8, !alias.scope !3063 ; 6 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx7.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.sroa.6.0.copyload.i.i.i = load ptr, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx7.sroa_idx.i.i.i, align 8, !alias.scope !3063 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %1, align 8, !alias.scope !3064 ; 3 uses
end_hunk_0
