Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils.coreutils.f62e4db4eae9fc3c-cgu.0?download=true
inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvMsb_CsgDnTRHLCOsi_7uu_joinNtB6_5State9next_lineNtB6_10OneByteSepECsl8pJiQOn4hA_9coreutils:bb.a
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.y:                                             ; preds = %bb.s, %bb.r
  %.sroa.26.0.i = phi i64 [ %i.cc, %bb.s ], [ %.sroa.8.0.copyload151, %bb.r ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.cb, %bb.s ], [ %.sroa.5146.0.copyload148, %bb.r ] ; 2 uses
  %i.dc = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.dc, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.y
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.y, %bb.ab
  %.sroa.0.3145.i = phi ptr [ %i.dd, %bb.ab ], [ %.sroa.0.0.i, %bb.y ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.de, %bb.ab ], [ %.sroa.26.0.i, %bb.y ]
  %.sroa.084.3143.i = phi i64 [ %i.dp, %bb.ab ], [ 0, %bb.y ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.de = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.df = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.dg = extractvalue { i64, i1 } %i.df, 0
  %i.dh = extractvalue { i64, i1 } %i.df, 1
  br i1 %i.dh, label %.loopexit239, label %bb.z, !prof !18

bb.z:                                             ; preds = %.preheader111.i
  %i.di = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !20185, !noalias !20186, !noundef !12
  %i.dj = zext i8 %i.di to i32
  %i.dk = add nsw i32 %i.dj, -48                  ; 2 uses
  %i.dl = icmp ult i32 %i.dk, 10
  br i1 %i.dl, label %bb.aa, label %.loopexit239

bb.aa:                                            ; preds = %bb.z
  %i.dm = zext nneg i32 %i.dk to i64
  %i.dn = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.dg, i64 %i.dm) ; 2 uses
  %i.do = extractvalue { i64, i1 } %i.dn, 1
  br i1 %i.do, label %.loopexit239, label %bb.ab, !prof !18

bb.ab:                                            ; preds = %bb.aa
  %i.dp = extractvalue { i64, i1 } %i.dn, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.de, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.ac
  %.sroa.0.4149.i = phi ptr [ %i.dw, %bb.ac ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.dv, %bb.ac ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.dy, %bb.ac ], [ 0, %.preheader.i ]
  %i.dq = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !20185, !noalias !20186, !noundef !12
  %i.dr = zext i8 %i.dq to i32
  %i.ds = add nsw i32 %i.dr, -48                  ; 2 uses
  %i.dt = icmp ult i32 %i.ds, 10
  br i1 %i.dt, label %bb.ac, label %.loopexit239

bb.ac:                                            ; preds = %.lr.ph150.i
  %i.du = mul i64 %.sroa.084.4147.i, 10
  %i.dv = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.dx = zext nneg i32 %i.ds to i64
  %i.dy = add i64 %i.du, %i.dx                    ; 2 uses
  %.not105.i = icmp eq i64 %i.dv, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.loopexit239:                                     ; preds = %.lr.ph.i, %bb.v, %bb.u, %.lr.ph141.i, %.preheader111.i, %bb.z, %bb.aa, %.lr.ph150.i, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit, %bb.q, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5146.0.copyload148, i64 noundef %.sroa.8.0.copyload151) #53
  %i.dz = load i8, ptr %i.y, align 8, !range !21, !noundef !12
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.ag, label %bb.ah

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.w, %bb.x, %bb.ab, %bb.ac, %.preheader.i, %.preheader114.i
  %.sroa.15155.0 = phi i64 [ %i.dy, %bb.ac ], [ %i.db, %bb.x ], [ %i.dp, %bb.ab ], [ 0, %.preheader.i ], [ 0, %.preheader114.i ], [ %i.cs, %bb.w ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 4, i64 noundef %.sroa.15155.0) #45
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ah, %bb.ag, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %.sroa.011.0.not = phi i1 [ true, %bb.ag ], [ false, %bb.ah ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ec = load i64, ptr %i.eb, align 8, !noundef !12
  %i.ed = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %i.ec, ptr noalias nofree noundef nonnull %i.l, i64 noundef 20) #45 ; 2 uses
  %i.ee = extractvalue { ptr, i64 } %i.ed, 0
  %i.ef = extractvalue { ptr, i64 } %i.ed, 1      ; 16 uses
  %.not.i48 = icmp slt i64 %i.ef, 0
  br i1 %.not.i48, label %bb.ai, label %bb.ae, !prof !27

bb.ae:                                            ; preds = %bb.ad
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %.thread, label %bb.af

.thread:                                          ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.loopexit232

bb.af:                                            ; preds = %bb.ae
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !20187
  %i.eh = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ef, i64 noundef range(i64 1, 9) 1) #45, !noalias !20187 ; 18 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.ai, label %bb.aj

bb.ag:                                            ; preds = %.loopexit239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 %.sroa.0.0.copyload145, ptr %i.x, align 8
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.5146.0.copyload148, ptr %.sroa.5146.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.8.0.copyload151, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.x) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ad

bb.ah:                                            ; preds = %.loopexit239
  %i.ej = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ek = load double, ptr %i.ej, align 8, !noundef !12
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 4, double noundef %i.ek) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ad

bb.ai:                                            ; preds = %bb.ad, %bb.af
  %.sroa.4175.0.ph = phi i64 [ 1, %bb.af ], [ 0, %bb.ad ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4175.0.ph, i64 %i.ef) #52
  unreachable

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eh, ptr align 1 %i.ee, i64 %i.ef, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %cond = icmp eq i64 %i.ef, 1
  %i.el = load i8, ptr %i.eh, align 1, !alias.scope !20188, !noalias !20189 ; 2 uses
  br i1 %cond, label %bb.ak, label %thread-pre-split.i81

bb.ak:                                            ; preds = %bb.aj
  switch i8 %i.el, label %bb.ar [
    i8 43, label %.loopexit232
    i8 45, label %.loopexit232
  ]

thread-pre-split.i81:                             ; preds = %bb.aj
  switch i8 %i.el, label %bb.ar [
    i8 43, label %bb.al
    i8 45, label %bb.am
  ]

bb.al:                                            ; preds = %thread-pre-split.i81
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  %i.en = add nsw i64 %i.ef, -1
  br label %bb.ar

bb.am:                                            ; preds = %thread-pre-split.i81
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 1 ; 2 uses
  %i.ep = add nsw i64 %i.ef, -1                   ; 2 uses
  %i.eq = icmp samesign ult i64 %i.ef, 17
  br i1 %i.eq, label %.lr.ph141.i61, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.am, %bb.ap
  %.sroa.0.1136.i52 = phi ptr [ %i.er, %bb.ap ], [ %i.eo, %bb.am ] ; 2 uses
  %.sroa.26.1135.i53 = phi i64 [ %i.es, %bb.ap ], [ %i.ep, %bb.am ]
  %.sroa.084.0134.i54 = phi i64 [ %i.fd, %bb.ap ], [ 0, %bb.am ]
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i52, i64 1
  %i.es = add nsw i64 %.sroa.26.1135.i53, -1      ; 2 uses
  %i.et = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i54, i64 10) ; 2 uses
  %i.eu = extractvalue { i64, i1 } %i.et, 0
  %i.ev = extractvalue { i64, i1 } %i.et, 1
  br i1 %i.ev, label %.loopexit232, label %bb.an, !prof !18

bb.an:                                            ; preds = %.lr.ph.i51
  %i.ew = load i8, ptr %.sroa.0.1136.i52, align 1, !alias.scope !20188, !noalias !20189, !noundef !12
  %i.ex = zext i8 %i.ew to i32
  %i.ey = add nsw i32 %i.ex, -48                  ; 2 uses
  %i.ez = icmp ult i32 %i.ey, 10
  br i1 %i.ez, label %bb.ao, label %.loopexit232

bb.ao:                                            ; preds = %bb.an
  %i.fa = zext nneg i32 %i.ey to i64
  %i.fb = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.eu, i64 %i.fa) ; 2 uses
  %i.fc = extractvalue { i64, i1 } %i.fb, 1
  br i1 %i.fc, label %.loopexit232, label %bb.ap, !prof !18

bb.ap:                                            ; preds = %bb.ao
  %i.fd = extractvalue { i64, i1 } %i.fb, 0       ; 2 uses
  %.not102.i56 = icmp eq i64 %i.es, 0
  br i1 %.not102.i56, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83, label %.lr.ph.i51

.lr.ph141.i61:                                    ; preds = %bb.am, %bb.aq
  %.sroa.0.2140.i62 = phi ptr [ %i.fk, %bb.aq ], [ %i.eo, %bb.am ] ; 2 uses
  %.sroa.26.2139.i63 = phi i64 [ %i.fj, %bb.aq ], [ %i.ep, %bb.am ]
  %.sroa.084.2138.i64 = phi i64 [ %i.fm, %bb.aq ], [ 0, %bb.am ]
  %i.fe = load i8, ptr %.sroa.0.2140.i62, align 1, !alias.scope !20188, !noalias !20189, !noundef !12
  %i.ff = zext i8 %i.fe to i32
  %i.fg = add nsw i32 %i.ff, -48                  ; 2 uses
  %i.fh = icmp ult i32 %i.fg, 10
  br i1 %i.fh, label %bb.aq, label %.loopexit232

bb.aq:                                            ; preds = %.lr.ph141.i61
  %i.fi = mul i64 %.sroa.084.2138.i64, 10
  %i.fj = add nsw i64 %.sroa.26.2139.i63, -1      ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i62, i64 1
  %i.fl = zext nneg i32 %i.fg to i64
  %i.fm = sub i64 %i.fi, %i.fl                    ; 2 uses
  %.not103.i65 = icmp eq i64 %i.fj, 0
  br i1 %.not103.i65, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83, label %.lr.ph141.i61

bb.ar:                                            ; preds = %bb.ak, %bb.al, %thread-pre-split.i81
  %.sroa.26.0.i66 = phi i64 [ %i.en, %bb.al ], [ %i.ef, %thread-pre-split.i81 ], [ %i.ef, %bb.ak ] ; 3 uses
  %.sroa.0.0.i67 = phi ptr [ %i.em, %bb.al ], [ %i.eh, %thread-pre-split.i81 ], [ %i.eh, %bb.ak ] ; 2 uses
  %i.fn = icmp samesign ult i64 %.sroa.26.0.i66, 16
  br i1 %i.fn, label %.lr.ph150.i76, label %.preheader111.i68

.preheader111.i68:                                ; preds = %bb.ar, %bb.au
  %.sroa.0.3145.i69 = phi ptr [ %i.fo, %bb.au ], [ %.sroa.0.0.i67, %bb.ar ] ; 2 uses
  %.sroa.26.3144.i70 = phi i64 [ %i.fp, %bb.au ], [ %.sroa.26.0.i66, %bb.ar ]
  %.sroa.084.3143.i71 = phi i64 [ %i.ga, %bb.au ], [ 0, %bb.ar ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i69, i64 1
  %i.fp = add nsw i64 %.sroa.26.3144.i70, -1      ; 2 uses
  %i.fq = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i71, i64 10) ; 2 uses
  %i.fr = extractvalue { i64, i1 } %i.fq, 0
  %i.fs = extractvalue { i64, i1 } %i.fq, 1
  br i1 %i.fs, label %.loopexit232, label %bb.as, !prof !18

bb.as:                                            ; preds = %.preheader111.i68
  %i.ft = load i8, ptr %.sroa.0.3145.i69, align 1, !alias.scope !20188, !noalias !20189, !noundef !12
  %i.fu = zext i8 %i.ft to i32
  %i.fv = add nsw i32 %i.fu, -48                  ; 2 uses
  %i.fw = icmp ult i32 %i.fv, 10
  br i1 %i.fw, label %bb.at, label %.loopexit232

bb.at:                                            ; preds = %bb.as
  %i.fx = zext nneg i32 %i.fv to i64
  %i.fy = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.fr, i64 %i.fx) ; 2 uses
  %i.fz = extractvalue { i64, i1 } %i.fy, 1
  br i1 %i.fz, label %.loopexit232, label %bb.au, !prof !18

bb.au:                                            ; preds = %bb.at
  %i.ga = extractvalue { i64, i1 } %i.fy, 0       ; 2 uses
  %.not104.i73 = icmp eq i64 %i.fp, 0
  br i1 %.not104.i73, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83, label %.preheader111.i68

.lr.ph150.i76:                                    ; preds = %bb.ar, %bb.av
  %.sroa.0.4149.i77 = phi ptr [ %i.gh, %bb.av ], [ %.sroa.0.0.i67, %bb.ar ] ; 2 uses
  %.sroa.26.4148.i78 = phi i64 [ %i.gg, %bb.av ], [ %.sroa.26.0.i66, %bb.ar ]
  %.sroa.084.4147.i79 = phi i64 [ %i.gj, %bb.av ], [ 0, %bb.ar ]
  %i.gb = load i8, ptr %.sroa.0.4149.i77, align 1, !alias.scope !20188, !noalias !20189, !noundef !12
  %i.gc = zext i8 %i.gb to i32
  %i.gd = add nsw i32 %i.gc, -48                  ; 2 uses
  %i.ge = icmp ult i32 %i.gd, 10
  br i1 %i.ge, label %bb.av, label %.loopexit232

bb.av:                                            ; preds = %.lr.ph150.i76
  %i.gf = mul i64 %.sroa.084.4147.i79, 10
  %i.gg = add nsw i64 %.sroa.26.4148.i78, -1      ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i77, i64 1
  %i.gi = zext nneg i32 %i.gd to i64
  %i.gj = add i64 %i.gf, %i.gi                    ; 2 uses
  %.not105.i80 = icmp eq i64 %i.gg, 0
  br i1 %.not105.i80, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83, label %.lr.ph150.i76

.loopexit232:                                     ; preds = %.lr.ph.i51, %bb.ao, %bb.an, %.lr.ph141.i61, %.preheader111.i68, %bb.as, %bb.at, %.lr.ph150.i76, %bb.ak, %bb.ak, %.thread
  %.ph = phi ptr [ %i.eh, %.preheader111.i68 ], [ %i.eh, %.lr.ph141.i61 ], [ %i.eh, %.lr.ph150.i76 ], [ %i.eh, %bb.ak ], [ inttoptr (i64 1 to ptr), %.thread ], [ %i.eh, %bb.ak ], [ %i.eh, %bb.at ], [ %i.eh, %bb.as ], [ %i.eh, %bb.an ], [ %i.eh, %bb.ao ], [ %i.eh, %.lr.ph.i51 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.ef) #53
  %i.gk = load i8, ptr %i.w, align 8, !range !21, !noundef !12
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.az, label %bb.ba

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83: ; preds = %bb.ap, %bb.aq, %bb.au, %bb.av
  %.sroa.15162.0 = phi i64 [ %i.ga, %bb.au ], [ %i.fm, %bb.aq ], [ %i.gj, %bb.av ], [ %i.fd, %bb.ap ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @280, i64 noundef 8, i64 noundef %.sroa.15162.0) #45
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ba, %bb.az, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83
  %i.gm = phi ptr [ %.ph, %bb.az ], [ %.ph, %bb.ba ], [ %i.eh, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83 ]
  %.sroa.010.0.not = phi i1 [ true, %bb.az ], [ false, %bb.ba ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !nonnull !12, !noundef !12
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.gq = load i64, ptr %i.gp, align 8, !noundef !12
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.go, i64 noundef %i.gq) #45
  %i.gr = load i64, ptr %i.u, align 8, !range !13, !noundef !12 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8            ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.gv = load i64, ptr %i.gu, align 8            ; 14 uses
  %.not.i84 = icmp slt i64 %i.gv, 0
  br i1 %.not.i84, label %bb.bb, label %bb.ax, !prof !27

bb.ax:                                            ; preds = %bb.aw
  %i.gw = icmp eq i64 %i.gv, 0                    ; 2 uses
  br i1 %i.gw, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit86.thread216, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !20190
  %i.gx = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.gv, i64 noundef range(i64 1, 9) 1) #45, !noalias !20190 ; 3 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %bb.bb, label %bb.bq

bb.az:                                            ; preds = %.loopexit232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 %i.ef, ptr %i.v, align 8
  %.sroa.5157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.ph, ptr %.sroa.5157.0..sroa_idx, align 8
  %.sroa.8158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.ef, ptr %.sroa.8158.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @280, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.v) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.aw

bb.ba:                                            ; preds = %.loopexit232
  %i.gz = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ha = load double, ptr %i.gz, align 8, !noundef !12
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @280, i64 noundef 8, double noundef %i.ha) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.aw

bb.bb:                                            ; preds = %bb.aw, %bb.ay
  %.sroa.4178.0.ph = phi i64 [ 1, %bb.ay ], [ 0, %bb.aw ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4178.0.ph, i64 %i.gv) #52
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit86.thread216: ; preds = %bb.ax, %bb.bq
  %i.hb = phi ptr [ %i.gx, %bb.bq ], [ inttoptr (i64 1 to ptr), %bb.ax ] ; 8 uses
  %i.hc = icmp sgt i64 %i.gr, 0
  br i1 %i.hc, label %bb.bc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit

bb.bc:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit86.thread216
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gt) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gt, i64 noundef %i.gr, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !20191
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit86.thread216, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  switch i64 %i.gv, label %thread-pre-split.i118 [
    i64 0, label %.loopexit
    i64 1, label %bb.bd
  ]

bb.bd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit
  %i.hd = load i8, ptr %i.hb, align 1, !alias.scope !20192, !noalias !20193, !noundef !12 ; 2 uses
  switch i8 %i.hd, label %bb.be [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i118:                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit
  %.pr.i119 = load i8, ptr %i.hb, align 1, !alias.scope !20192, !noalias !20193
  br label %bb.be

bb.be:                                            ; preds = %thread-pre-split.i118, %bb.bd
  %i.he = phi i8 [ %.pr.i119, %thread-pre-split.i118 ], [ %i.hd, %bb.bd ]
  switch i8 %i.he, label %bb.bl [
    i8 43, label %bb.bf
    i8 45, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  %i.hg = add nsw i64 %i.gv, -1
  br label %bb.bl

bb.bg:                                            ; preds = %bb.be
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 1 ; 2 uses
  %i.hi = add nsw i64 %i.gv, -1                   ; 3 uses
  %i.hj = icmp samesign ult i64 %i.gv, 17
  br i1 %i.hj, label %.preheader114.i96, label %.lr.ph.i88

.preheader114.i96:                                ; preds = %bb.bg
  %.not103137.i97 = icmp eq i64 %i.hi, 0
  br i1 %.not103137.i97, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit120, label %.lr.ph141.i98

.lr.ph.i88:                                       ; preds = %bb.bg, %bb.bj
  %.sroa.0.1136.i89 = phi ptr [ %i.hk, %bb.bj ], [ %i.hh, %bb.bg ] ; 2 uses
  %.sroa.26.1135.i90 = phi i64 [ %i.hl, %bb.bj ], [ %i.hi, %bb.bg ]
  %.sroa.084.0134.i91 = phi i64 [ %i.hw, %bb.bj ], [ 0, %bb.bg ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i89, i64 1
  %i.hl = add nsw i64 %.sroa.26.1135.i90, -1      ; 2 uses
  %i.hm = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i91, i64 10) ; 2 uses
  %i.hn = extractvalue { i64, i1 } %i.hm, 0
  %i.ho = extractvalue { i64, i1 } %i.hm, 1
  br i1 %i.ho, label %.loopexit, label %bb.bh, !prof !18

bb.bh:                                            ; preds = %.lr.ph.i88
  %i.hp = load i8, ptr %.sroa.0.1136.i89, align 1, !alias.scope !20192, !noalias !20193, !noundef !12
  %i.hq = zext i8 %i.hp to i32
  %i.hr = add nsw i32 %i.hq, -48                  ; 2 uses
  %i.hs = icmp ult i32 %i.hr, 10
  br i1 %i.hs, label %bb.bi, label %.loopexit

bb.bi:                                            ; preds = %bb.bh
  %i.ht = zext nneg i32 %i.hr to i64
  %i.hu = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.hn, i64 %i.ht) ; 2 uses
  %i.hv = extractvalue { i64, i1 } %i.hu, 1
  br i1 %i.hv, label %.loopexit, label %bb.bj, !prof !18

bb.bj:                                            ; preds = %bb.bi
  %i.hw = extractvalue { i64, i1 } %i.hu, 0       ; 2 uses
  %.not102.i93 = icmp eq i64 %i.hl, 0
  br i1 %.not102.i93, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit120, label %.lr.ph.i88

.lr.ph141.i98:                                    ; preds = %.preheader114.i96, %bb.bk
  %.sroa.0.2140.i99 = phi ptr [ %i.id, %bb.bk ], [ %i.hh, %.preheader114.i96 ] ; 2 uses
  %.sroa.26.2139.i100 = phi i64 [ %i.ic, %bb.bk ], [ %i.hi, %.preheader114.i96 ]
  %.sroa.084.2138.i101 = phi i64 [ %i.if, %bb.bk ], [ 0, %.preheader114.i96 ]
  %i.hx = load i8, ptr %.sroa.0.2140.i99, align 1, !alias.scope !20192, !noalias !20193, !noundef !12
  %i.hy = zext i8 %i.hx to i32
  %i.hz = add nsw i32 %i.hy, -48                  ; 2 uses
  %i.ia = icmp ult i32 %i.hz, 10
  br i1 %i.ia, label %bb.bk, label %.loopexit

bb.bk:                                            ; preds = %.lr.ph141.i98
  %i.ib = mul i64 %.sroa.084.2138.i101, 10
  %i.ic = add nsw i64 %.sroa.26.2139.i100, -1     ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i99, i64 1
  %i.ie = zext nneg i32 %i.hz to i64
  %i.if = sub i64 %i.ib, %i.ie                    ; 2 uses
  %.not103.i102 = icmp eq i64 %i.ic, 0
  br i1 %.not103.i102, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit120, label %.lr.ph141.i98

bb.bl:                                            ; preds = %bb.bf, %bb.be
  %.sroa.26.0.i103 = phi i64 [ %i.hg, %bb.bf ], [ %i.gv, %bb.be ] ; 4 uses
  %.sroa.0.0.i104 = phi ptr [ %i.hf, %bb.bf ], [ %i.hb, %bb.be ] ; 2 uses
  %i.ig = icmp samesign ult i64 %.sroa.26.0.i103, 16
  br i1 %i.ig, label %.preheader.i111, label %.preheader111.i105

.preheader.i111:                                  ; preds = %bb.bl
  %.not105146.i112 = icmp eq i64 %.sroa.26.0.i103, 0
  br i1 %.not105146.i112, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit120, label %.lr.ph150.i113

.preheader111.i105:                               ; preds = %bb.bl, %bb.bo
  %.sroa.0.3145.i106 = phi ptr [ %i.ih, %bb.bo ], [ %.sroa.0.0.i104, %bb.bl ] ; 2 uses
  %.sroa.26.3144.i107 = phi i64 [ %i.ii, %bb.bo ], [ %.sroa.26.0.i103, %bb.bl ]
  %.sroa.084.3143.i108 = phi i64 [ %i.it, %bb.bo ], [ 0, %bb.bl ]
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i106, i64 1
  %i.ii = add nsw i64 %.sroa.26.3144.i107, -1     ; 2 uses
  %i.ij = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i108, i64 10) ; 2 uses
  %i.ik = extractvalue { i64, i1 } %i.ij, 0
  %i.il = extractvalue { i64, i1 } %i.ij, 1
  br i1 %i.il, label %.loopexit, label %bb.bm, !prof !18

bb.bm:                                            ; preds = %.preheader111.i105
  %i.im = load i8, ptr %.sroa.0.3145.i106, align 1, !alias.scope !20192, !noalias !20193, !noundef !12
  %i.in = zext i8 %i.im to i32
  %i.io = add nsw i32 %i.in, -48                  ; 2 uses
  %i.ip = icmp ult i32 %i.io, 10
  br i1 %i.ip, label %bb.bn, label %.loopexit

bb.bn:                                            ; preds = %bb.bm
  %i.iq = zext nneg i32 %i.io to i64
  %i.ir = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ik, i64 %i.iq) ; 2 uses
  %i.is = extractvalue { i64, i1 } %i.ir, 1
  br i1 %i.is, label %.loopexit, label %bb.bo, !prof !18

bb.bo:                                            ; preds = %bb.bn
  %i.it = extractvalue { i64, i1 } %i.ir, 0       ; 2 uses
  %.not104.i110 = icmp eq i64 %i.ii, 0
  br i1 %.not104.i110, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit120, label %.preheader111.i105

.lr.ph150.i113:                                   ; preds = %.preheader.i111, %bb.bp
  %.sroa.0.4149.i114 = phi ptr [ %i.ja, %bb.bp ], [ %.sroa.0.0.i104, %.preheader.i111 ] ; 2 uses
  %.sroa.26.4148.i115 = phi i64 [ %i.iz, %bb.bp ], [ %.sroa.26.0.i103, %.preheader.i111 ]
  %.sroa.084.4147.i116 = phi i64 [ %i.jc, %bb.bp ], [ 0, %.preheader.i111 ]
  %i.iu = load i8, ptr %.sroa.0.4149.i114, align 1, !alias.scope !20192, !noalias !20193, !noundef !12
  %i.iv = zext i8 %i.iu to i32
  %i.iw = add nsw i32 %i.iv, -48                  ; 2 uses
  %i.ix = icmp ult i32 %i.iw, 10
  br i1 %i.ix, label %bb.bp, label %.loopexit
end_hunk_0
begin_hunk_1_@_RINvMsb_CsgDnTRHLCOsi_7uu_joinNtB6_5State9next_lineNtB6_12MultiByteSepECsl8pJiQOn4hA_9coreutils:bb.a
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.y:                                             ; preds = %bb.s, %bb.r
  %.sroa.26.0.i = phi i64 [ %i.cc, %bb.s ], [ %.sroa.8.0.copyload151, %bb.r ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.cb, %bb.s ], [ %.sroa.5146.0.copyload148, %bb.r ] ; 2 uses
  %i.dc = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.dc, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.y
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.y, %bb.ab
  %.sroa.0.3145.i = phi ptr [ %i.dd, %bb.ab ], [ %.sroa.0.0.i, %bb.y ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.de, %bb.ab ], [ %.sroa.26.0.i, %bb.y ]
  %.sroa.084.3143.i = phi i64 [ %i.dp, %bb.ab ], [ 0, %bb.y ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.de = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.df = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.dg = extractvalue { i64, i1 } %i.df, 0
  %i.dh = extractvalue { i64, i1 } %i.df, 1
  br i1 %i.dh, label %.loopexit239, label %bb.z, !prof !18

bb.z:                                             ; preds = %.preheader111.i
  %i.di = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !20288, !noalias !20289, !noundef !12
  %i.dj = zext i8 %i.di to i32
  %i.dk = add nsw i32 %i.dj, -48                  ; 2 uses
  %i.dl = icmp ult i32 %i.dk, 10
  br i1 %i.dl, label %bb.aa, label %.loopexit239

bb.aa:                                            ; preds = %bb.z
  %i.dm = zext nneg i32 %i.dk to i64
  %i.dn = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.dg, i64 %i.dm) ; 2 uses
  %i.do = extractvalue { i64, i1 } %i.dn, 1
  br i1 %i.do, label %.loopexit239, label %bb.ab, !prof !18

bb.ab:                                            ; preds = %bb.aa
  %i.dp = extractvalue { i64, i1 } %i.dn, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.de, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.ac
  %.sroa.0.4149.i = phi ptr [ %i.dw, %bb.ac ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.dv, %bb.ac ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.dy, %bb.ac ], [ 0, %.preheader.i ]
  %i.dq = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !20288, !noalias !20289, !noundef !12
  %i.dr = zext i8 %i.dq to i32
  %i.ds = add nsw i32 %i.dr, -48                  ; 2 uses
  %i.dt = icmp ult i32 %i.ds, 10
  br i1 %i.dt, label %bb.ac, label %.loopexit239

bb.ac:                                            ; preds = %.lr.ph150.i
  %i.du = mul i64 %.sroa.084.4147.i, 10
  %i.dv = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.dx = zext nneg i32 %i.ds to i64
  %i.dy = add i64 %i.du, %i.dx                    ; 2 uses
  %.not105.i = icmp eq i64 %i.dv, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.loopexit239:                                     ; preds = %.lr.ph.i, %bb.v, %bb.u, %.lr.ph141.i, %.preheader111.i, %bb.z, %bb.aa, %.lr.ph150.i, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit, %bb.q, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5146.0.copyload148, i64 noundef %.sroa.8.0.copyload151) #53
  %i.dz = load i8, ptr %i.y, align 8, !range !21, !noundef !12
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.ag, label %bb.ah

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.w, %bb.x, %bb.ab, %bb.ac, %.preheader.i, %.preheader114.i
  %.sroa.15155.0 = phi i64 [ %i.dy, %bb.ac ], [ %i.db, %bb.x ], [ %i.dp, %bb.ab ], [ 0, %.preheader.i ], [ 0, %.preheader114.i ], [ %i.cs, %bb.w ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 4, i64 noundef %.sroa.15155.0) #45
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ah, %bb.ag, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %.sroa.011.0.not = phi i1 [ true, %bb.ag ], [ false, %bb.ah ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ec = load i64, ptr %i.eb, align 8, !noundef !12
  %i.ed = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %i.ec, ptr noalias nofree noundef nonnull %i.l, i64 noundef 20) #45 ; 2 uses
  %i.ee = extractvalue { ptr, i64 } %i.ed, 0
  %i.ef = extractvalue { ptr, i64 } %i.ed, 1      ; 16 uses
  %.not.i48 = icmp slt i64 %i.ef, 0
  br i1 %.not.i48, label %bb.ai, label %bb.ae, !prof !27

bb.ae:                                            ; preds = %bb.ad
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %.thread, label %bb.af

.thread:                                          ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.loopexit232

bb.af:                                            ; preds = %bb.ae
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !20290
  %i.eh = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ef, i64 noundef range(i64 1, 9) 1) #45, !noalias !20290 ; 18 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.ai, label %bb.aj

bb.ag:                                            ; preds = %.loopexit239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 %.sroa.0.0.copyload145, ptr %i.x, align 8
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.5146.0.copyload148, ptr %.sroa.5146.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.8.0.copyload151, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.x) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ad

bb.ah:                                            ; preds = %.loopexit239
  %i.ej = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ek = load double, ptr %i.ej, align 8, !noundef !12
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 4, double noundef %i.ek) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ad

bb.ai:                                            ; preds = %bb.ad, %bb.af
  %.sroa.4175.0.ph = phi i64 [ 1, %bb.af ], [ 0, %bb.ad ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4175.0.ph, i64 %i.ef) #52
  unreachable

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eh, ptr align 1 %i.ee, i64 %i.ef, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %cond = icmp eq i64 %i.ef, 1
  %i.el = load i8, ptr %i.eh, align 1, !alias.scope !20291, !noalias !20292 ; 2 uses
  br i1 %cond, label %bb.ak, label %thread-pre-split.i81

bb.ak:                                            ; preds = %bb.aj
  switch i8 %i.el, label %bb.ar [
    i8 43, label %.loopexit232
    i8 45, label %.loopexit232
  ]

thread-pre-split.i81:                             ; preds = %bb.aj
  switch i8 %i.el, label %bb.ar [
    i8 43, label %bb.al
    i8 45, label %bb.am
  ]

bb.al:                                            ; preds = %thread-pre-split.i81
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  %i.en = add nsw i64 %i.ef, -1
  br label %bb.ar

bb.am:                                            ; preds = %thread-pre-split.i81
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 1 ; 2 uses
  %i.ep = add nsw i64 %i.ef, -1                   ; 2 uses
  %i.eq = icmp samesign ult i64 %i.ef, 17
  br i1 %i.eq, label %.lr.ph141.i61, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.am, %bb.ap
  %.sroa.0.1136.i52 = phi ptr [ %i.er, %bb.ap ], [ %i.eo, %bb.am ] ; 2 uses
  %.sroa.26.1135.i53 = phi i64 [ %i.es, %bb.ap ], [ %i.ep, %bb.am ]
  %.sroa.084.0134.i54 = phi i64 [ %i.fd, %bb.ap ], [ 0, %bb.am ]
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i52, i64 1
  %i.es = add nsw i64 %.sroa.26.1135.i53, -1      ; 2 uses
  %i.et = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i54, i64 10) ; 2 uses
  %i.eu = extractvalue { i64, i1 } %i.et, 0
  %i.ev = extractvalue { i64, i1 } %i.et, 1
  br i1 %i.ev, label %.loopexit232, label %bb.an, !prof !18

bb.an:                                            ; preds = %.lr.ph.i51
  %i.ew = load i8, ptr %.sroa.0.1136.i52, align 1, !alias.scope !20291, !noalias !20292, !noundef !12
  %i.ex = zext i8 %i.ew to i32
  %i.ey = add nsw i32 %i.ex, -48                  ; 2 uses
  %i.ez = icmp ult i32 %i.ey, 10
  br i1 %i.ez, label %bb.ao, label %.loopexit232

bb.ao:                                            ; preds = %bb.an
  %i.fa = zext nneg i32 %i.ey to i64
  %i.fb = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.eu, i64 %i.fa) ; 2 uses
  %i.fc = extractvalue { i64, i1 } %i.fb, 1
  br i1 %i.fc, label %.loopexit232, label %bb.ap, !prof !18

bb.ap:                                            ; preds = %bb.ao
  %i.fd = extractvalue { i64, i1 } %i.fb, 0       ; 2 uses
  %.not102.i56 = icmp eq i64 %i.es, 0
  br i1 %.not102.i56, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83, label %.lr.ph.i51

.lr.ph141.i61:                                    ; preds = %bb.am, %bb.aq
  %.sroa.0.2140.i62 = phi ptr [ %i.fk, %bb.aq ], [ %i.eo, %bb.am ] ; 2 uses
  %.sroa.26.2139.i63 = phi i64 [ %i.fj, %bb.aq ], [ %i.ep, %bb.am ]
  %.sroa.084.2138.i64 = phi i64 [ %i.fm, %bb.aq ], [ 0, %bb.am ]
  %i.fe = load i8, ptr %.sroa.0.2140.i62, align 1, !alias.scope !20291, !noalias !20292, !noundef !12
  %i.ff = zext i8 %i.fe to i32
  %i.fg = add nsw i32 %i.ff, -48                  ; 2 uses
  %i.fh = icmp ult i32 %i.fg, 10
  br i1 %i.fh, label %bb.aq, label %.loopexit232

bb.aq:                                            ; preds = %.lr.ph141.i61
  %i.fi = mul i64 %.sroa.084.2138.i64, 10
  %i.fj = add nsw i64 %.sroa.26.2139.i63, -1      ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i62, i64 1
  %i.fl = zext nneg i32 %i.fg to i64
  %i.fm = sub i64 %i.fi, %i.fl                    ; 2 uses
  %.not103.i65 = icmp eq i64 %i.fj, 0
  br i1 %.not103.i65, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83, label %.lr.ph141.i61

bb.ar:                                            ; preds = %bb.ak, %bb.al, %thread-pre-split.i81
  %.sroa.26.0.i66 = phi i64 [ %i.en, %bb.al ], [ %i.ef, %thread-pre-split.i81 ], [ %i.ef, %bb.ak ] ; 3 uses
  %.sroa.0.0.i67 = phi ptr [ %i.em, %bb.al ], [ %i.eh, %thread-pre-split.i81 ], [ %i.eh, %bb.ak ] ; 2 uses
  %i.fn = icmp samesign ult i64 %.sroa.26.0.i66, 16
  br i1 %i.fn, label %.lr.ph150.i76, label %.preheader111.i68

.preheader111.i68:                                ; preds = %bb.ar, %bb.au
  %.sroa.0.3145.i69 = phi ptr [ %i.fo, %bb.au ], [ %.sroa.0.0.i67, %bb.ar ] ; 2 uses
  %.sroa.26.3144.i70 = phi i64 [ %i.fp, %bb.au ], [ %.sroa.26.0.i66, %bb.ar ]
  %.sroa.084.3143.i71 = phi i64 [ %i.ga, %bb.au ], [ 0, %bb.ar ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i69, i64 1
  %i.fp = add nsw i64 %.sroa.26.3144.i70, -1      ; 2 uses
  %i.fq = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i71, i64 10) ; 2 uses
  %i.fr = extractvalue { i64, i1 } %i.fq, 0
  %i.fs = extractvalue { i64, i1 } %i.fq, 1
  br i1 %i.fs, label %.loopexit232, label %bb.as, !prof !18

bb.as:                                            ; preds = %.preheader111.i68
  %i.ft = load i8, ptr %.sroa.0.3145.i69, align 1, !alias.scope !20291, !noalias !20292, !noundef !12
  %i.fu = zext i8 %i.ft to i32
  %i.fv = add nsw i32 %i.fu, -48                  ; 2 uses
  %i.fw = icmp ult i32 %i.fv, 10
  br i1 %i.fw, label %bb.at, label %.loopexit232

bb.at:                                            ; preds = %bb.as
  %i.fx = zext nneg i32 %i.fv to i64
  %i.fy = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.fr, i64 %i.fx) ; 2 uses
  %i.fz = extractvalue { i64, i1 } %i.fy, 1
  br i1 %i.fz, label %.loopexit232, label %bb.au, !prof !18

bb.au:                                            ; preds = %bb.at
  %i.ga = extractvalue { i64, i1 } %i.fy, 0       ; 2 uses
  %.not104.i73 = icmp eq i64 %i.fp, 0
  br i1 %.not104.i73, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83, label %.preheader111.i68

.lr.ph150.i76:                                    ; preds = %bb.ar, %bb.av
  %.sroa.0.4149.i77 = phi ptr [ %i.gh, %bb.av ], [ %.sroa.0.0.i67, %bb.ar ] ; 2 uses
  %.sroa.26.4148.i78 = phi i64 [ %i.gg, %bb.av ], [ %.sroa.26.0.i66, %bb.ar ]
  %.sroa.084.4147.i79 = phi i64 [ %i.gj, %bb.av ], [ 0, %bb.ar ]
  %i.gb = load i8, ptr %.sroa.0.4149.i77, align 1, !alias.scope !20291, !noalias !20292, !noundef !12
  %i.gc = zext i8 %i.gb to i32
  %i.gd = add nsw i32 %i.gc, -48                  ; 2 uses
  %i.ge = icmp ult i32 %i.gd, 10
  br i1 %i.ge, label %bb.av, label %.loopexit232

bb.av:                                            ; preds = %.lr.ph150.i76
  %i.gf = mul i64 %.sroa.084.4147.i79, 10
  %i.gg = add nsw i64 %.sroa.26.4148.i78, -1      ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i77, i64 1
  %i.gi = zext nneg i32 %i.gd to i64
  %i.gj = add i64 %i.gf, %i.gi                    ; 2 uses
  %.not105.i80 = icmp eq i64 %i.gg, 0
  br i1 %.not105.i80, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83, label %.lr.ph150.i76

.loopexit232:                                     ; preds = %.lr.ph.i51, %bb.ao, %bb.an, %.lr.ph141.i61, %.preheader111.i68, %bb.as, %bb.at, %.lr.ph150.i76, %bb.ak, %bb.ak, %.thread
  %.ph = phi ptr [ %i.eh, %.preheader111.i68 ], [ %i.eh, %.lr.ph141.i61 ], [ %i.eh, %.lr.ph150.i76 ], [ %i.eh, %bb.ak ], [ inttoptr (i64 1 to ptr), %.thread ], [ %i.eh, %bb.ak ], [ %i.eh, %bb.at ], [ %i.eh, %bb.as ], [ %i.eh, %bb.an ], [ %i.eh, %bb.ao ], [ %i.eh, %.lr.ph.i51 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.ef) #53
  %i.gk = load i8, ptr %i.w, align 8, !range !21, !noundef !12
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.az, label %bb.ba

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83: ; preds = %bb.ap, %bb.aq, %bb.au, %bb.av
  %.sroa.15162.0 = phi i64 [ %i.ga, %bb.au ], [ %i.fm, %bb.aq ], [ %i.gj, %bb.av ], [ %i.fd, %bb.ap ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @280, i64 noundef 8, i64 noundef %.sroa.15162.0) #45
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ba, %bb.az, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83
  %i.gm = phi ptr [ %.ph, %bb.az ], [ %.ph, %bb.ba ], [ %i.eh, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83 ]
  %.sroa.010.0.not = phi i1 [ true, %bb.az ], [ false, %bb.ba ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !nonnull !12, !noundef !12
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.gq = load i64, ptr %i.gp, align 8, !noundef !12
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.go, i64 noundef %i.gq) #45
  %i.gr = load i64, ptr %i.u, align 8, !range !13, !noundef !12 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8            ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.gv = load i64, ptr %i.gu, align 8            ; 14 uses
  %.not.i84 = icmp slt i64 %i.gv, 0
  br i1 %.not.i84, label %bb.bb, label %bb.ax, !prof !27

bb.ax:                                            ; preds = %bb.aw
  %i.gw = icmp eq i64 %i.gv, 0                    ; 2 uses
  br i1 %i.gw, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit86.thread216, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !20293
  %i.gx = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.gv, i64 noundef range(i64 1, 9) 1) #45, !noalias !20293 ; 3 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %bb.bb, label %bb.bq

bb.az:                                            ; preds = %.loopexit232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 %i.ef, ptr %i.v, align 8
  %.sroa.5157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.ph, ptr %.sroa.5157.0..sroa_idx, align 8
  %.sroa.8158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.ef, ptr %.sroa.8158.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @280, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.v) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.aw

bb.ba:                                            ; preds = %.loopexit232
  %i.gz = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ha = load double, ptr %i.gz, align 8, !noundef !12
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @280, i64 noundef 8, double noundef %i.ha) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.aw

bb.bb:                                            ; preds = %bb.aw, %bb.ay
  %.sroa.4178.0.ph = phi i64 [ 1, %bb.ay ], [ 0, %bb.aw ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4178.0.ph, i64 %i.gv) #52
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit86.thread216: ; preds = %bb.ax, %bb.bq
  %i.hb = phi ptr [ %i.gx, %bb.bq ], [ inttoptr (i64 1 to ptr), %bb.ax ] ; 8 uses
  %i.hc = icmp sgt i64 %i.gr, 0
  br i1 %i.hc, label %bb.bc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit

bb.bc:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit86.thread216
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gt) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gt, i64 noundef %i.gr, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !20294
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit86.thread216, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  switch i64 %i.gv, label %thread-pre-split.i118 [
    i64 0, label %.loopexit
    i64 1, label %bb.bd
  ]

bb.bd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit
  %i.hd = load i8, ptr %i.hb, align 1, !alias.scope !20295, !noalias !20296, !noundef !12 ; 2 uses
  switch i8 %i.hd, label %bb.be [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i118:                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit
  %.pr.i119 = load i8, ptr %i.hb, align 1, !alias.scope !20295, !noalias !20296
  br label %bb.be

bb.be:                                            ; preds = %thread-pre-split.i118, %bb.bd
  %i.he = phi i8 [ %.pr.i119, %thread-pre-split.i118 ], [ %i.hd, %bb.bd ]
  switch i8 %i.he, label %bb.bl [
    i8 43, label %bb.bf
    i8 45, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  %i.hg = add nsw i64 %i.gv, -1
  br label %bb.bl

bb.bg:                                            ; preds = %bb.be
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 1 ; 2 uses
  %i.hi = add nsw i64 %i.gv, -1                   ; 3 uses
  %i.hj = icmp samesign ult i64 %i.gv, 17
  br i1 %i.hj, label %.preheader114.i96, label %.lr.ph.i88

.preheader114.i96:                                ; preds = %bb.bg
  %.not103137.i97 = icmp eq i64 %i.hi, 0
  br i1 %.not103137.i97, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit120, label %.lr.ph141.i98

.lr.ph.i88:                                       ; preds = %bb.bg, %bb.bj
  %.sroa.0.1136.i89 = phi ptr [ %i.hk, %bb.bj ], [ %i.hh, %bb.bg ] ; 2 uses
  %.sroa.26.1135.i90 = phi i64 [ %i.hl, %bb.bj ], [ %i.hi, %bb.bg ]
  %.sroa.084.0134.i91 = phi i64 [ %i.hw, %bb.bj ], [ 0, %bb.bg ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i89, i64 1
  %i.hl = add nsw i64 %.sroa.26.1135.i90, -1      ; 2 uses
  %i.hm = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i91, i64 10) ; 2 uses
  %i.hn = extractvalue { i64, i1 } %i.hm, 0
  %i.ho = extractvalue { i64, i1 } %i.hm, 1
  br i1 %i.ho, label %.loopexit, label %bb.bh, !prof !18

bb.bh:                                            ; preds = %.lr.ph.i88
  %i.hp = load i8, ptr %.sroa.0.1136.i89, align 1, !alias.scope !20295, !noalias !20296, !noundef !12
  %i.hq = zext i8 %i.hp to i32
  %i.hr = add nsw i32 %i.hq, -48                  ; 2 uses
  %i.hs = icmp ult i32 %i.hr, 10
  br i1 %i.hs, label %bb.bi, label %.loopexit

bb.bi:                                            ; preds = %bb.bh
  %i.ht = zext nneg i32 %i.hr to i64
  %i.hu = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.hn, i64 %i.ht) ; 2 uses
  %i.hv = extractvalue { i64, i1 } %i.hu, 1
  br i1 %i.hv, label %.loopexit, label %bb.bj, !prof !18

bb.bj:                                            ; preds = %bb.bi
  %i.hw = extractvalue { i64, i1 } %i.hu, 0       ; 2 uses
  %.not102.i93 = icmp eq i64 %i.hl, 0
  br i1 %.not102.i93, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit120, label %.lr.ph.i88

.lr.ph141.i98:                                    ; preds = %.preheader114.i96, %bb.bk
  %.sroa.0.2140.i99 = phi ptr [ %i.id, %bb.bk ], [ %i.hh, %.preheader114.i96 ] ; 2 uses
  %.sroa.26.2139.i100 = phi i64 [ %i.ic, %bb.bk ], [ %i.hi, %.preheader114.i96 ]
  %.sroa.084.2138.i101 = phi i64 [ %i.if, %bb.bk ], [ 0, %.preheader114.i96 ]
  %i.hx = load i8, ptr %.sroa.0.2140.i99, align 1, !alias.scope !20295, !noalias !20296, !noundef !12
  %i.hy = zext i8 %i.hx to i32
  %i.hz = add nsw i32 %i.hy, -48                  ; 2 uses
  %i.ia = icmp ult i32 %i.hz, 10
  br i1 %i.ia, label %bb.bk, label %.loopexit

bb.bk:                                            ; preds = %.lr.ph141.i98
  %i.ib = mul i64 %.sroa.084.2138.i101, 10
  %i.ic = add nsw i64 %.sroa.26.2139.i100, -1     ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i99, i64 1
  %i.ie = zext nneg i32 %i.hz to i64
  %i.if = sub i64 %i.ib, %i.ie                    ; 2 uses
  %.not103.i102 = icmp eq i64 %i.ic, 0
  br i1 %.not103.i102, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit120, label %.lr.ph141.i98

bb.bl:                                            ; preds = %bb.bf, %bb.be
  %.sroa.26.0.i103 = phi i64 [ %i.hg, %bb.bf ], [ %i.gv, %bb.be ] ; 4 uses
  %.sroa.0.0.i104 = phi ptr [ %i.hf, %bb.bf ], [ %i.hb, %bb.be ] ; 2 uses
  %i.ig = icmp samesign ult i64 %.sroa.26.0.i103, 16
  br i1 %i.ig, label %.preheader.i111, label %.preheader111.i105

.preheader.i111:                                  ; preds = %bb.bl
  %.not105146.i112 = icmp eq i64 %.sroa.26.0.i103, 0
  br i1 %.not105146.i112, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit120, label %.lr.ph150.i113

.preheader111.i105:                               ; preds = %bb.bl, %bb.bo
  %.sroa.0.3145.i106 = phi ptr [ %i.ih, %bb.bo ], [ %.sroa.0.0.i104, %bb.bl ] ; 2 uses
  %.sroa.26.3144.i107 = phi i64 [ %i.ii, %bb.bo ], [ %.sroa.26.0.i103, %bb.bl ]
  %.sroa.084.3143.i108 = phi i64 [ %i.it, %bb.bo ], [ 0, %bb.bl ]
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i106, i64 1
  %i.ii = add nsw i64 %.sroa.26.3144.i107, -1     ; 2 uses
  %i.ij = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i108, i64 10) ; 2 uses
  %i.ik = extractvalue { i64, i1 } %i.ij, 0
  %i.il = extractvalue { i64, i1 } %i.ij, 1
  br i1 %i.il, label %.loopexit, label %bb.bm, !prof !18

bb.bm:                                            ; preds = %.preheader111.i105
  %i.im = load i8, ptr %.sroa.0.3145.i106, align 1, !alias.scope !20295, !noalias !20296, !noundef !12
  %i.in = zext i8 %i.im to i32
  %i.io = add nsw i32 %i.in, -48                  ; 2 uses
  %i.ip = icmp ult i32 %i.io, 10
  br i1 %i.ip, label %bb.bn, label %.loopexit

bb.bn:                                            ; preds = %bb.bm
  %i.iq = zext nneg i32 %i.io to i64
  %i.ir = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ik, i64 %i.iq) ; 2 uses
  %i.is = extractvalue { i64, i1 } %i.ir, 1
  br i1 %i.is, label %.loopexit, label %bb.bo, !prof !18

bb.bo:                                            ; preds = %bb.bn
  %i.it = extractvalue { i64, i1 } %i.ir, 0       ; 2 uses
  %.not104.i110 = icmp eq i64 %i.ii, 0
  br i1 %.not104.i110, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit120, label %.preheader111.i105

.lr.ph150.i113:                                   ; preds = %.preheader.i111, %bb.bp
  %.sroa.0.4149.i114 = phi ptr [ %i.ja, %bb.bp ], [ %.sroa.0.0.i104, %.preheader.i111 ] ; 2 uses
  %.sroa.26.4148.i115 = phi i64 [ %i.iz, %bb.bp ], [ %.sroa.26.0.i103, %.preheader.i111 ]
  %.sroa.084.4147.i116 = phi i64 [ %i.jc, %bb.bp ], [ 0, %.preheader.i111 ]
  %i.iu = load i8, ptr %.sroa.0.4149.i114, align 1, !alias.scope !20295, !noalias !20296, !noundef !12
  %i.iv = zext i8 %i.iu to i32
  %i.iw = add nsw i32 %i.iv, -48                  ; 2 uses
  %i.ix = icmp ult i32 %i.iw, 10
  br i1 %i.ix, label %bb.bp, label %.loopexit
end_hunk_1
begin_hunk_2_@_RINvMsb_CsgDnTRHLCOsi_7uu_joinNtB6_5State9next_lineNtB6_13WhitespaceSepECsl8pJiQOn4hA_9coreutils:bb.a
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.y:                                             ; preds = %bb.s, %bb.r
  %.sroa.26.0.i = phi i64 [ %i.cc, %bb.s ], [ %.sroa.8.0.copyload151, %bb.r ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.cb, %bb.s ], [ %.sroa.5146.0.copyload148, %bb.r ] ; 2 uses
  %i.dc = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.dc, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.y
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.y, %bb.ab
  %.sroa.0.3145.i = phi ptr [ %i.dd, %bb.ab ], [ %.sroa.0.0.i, %bb.y ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.de, %bb.ab ], [ %.sroa.26.0.i, %bb.y ]
  %.sroa.084.3143.i = phi i64 [ %i.dp, %bb.ab ], [ 0, %bb.y ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.de = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.df = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.dg = extractvalue { i64, i1 } %i.df, 0
  %i.dh = extractvalue { i64, i1 } %i.df, 1
  br i1 %i.dh, label %.loopexit239, label %bb.z, !prof !18

bb.z:                                             ; preds = %.preheader111.i
  %i.di = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !20391, !noalias !20392, !noundef !12
  %i.dj = zext i8 %i.di to i32
  %i.dk = add nsw i32 %i.dj, -48                  ; 2 uses
  %i.dl = icmp ult i32 %i.dk, 10
  br i1 %i.dl, label %bb.aa, label %.loopexit239

bb.aa:                                            ; preds = %bb.z
  %i.dm = zext nneg i32 %i.dk to i64
  %i.dn = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.dg, i64 %i.dm) ; 2 uses
  %i.do = extractvalue { i64, i1 } %i.dn, 1
  br i1 %i.do, label %.loopexit239, label %bb.ab, !prof !18

bb.ab:                                            ; preds = %bb.aa
  %i.dp = extractvalue { i64, i1 } %i.dn, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.de, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.ac
  %.sroa.0.4149.i = phi ptr [ %i.dw, %bb.ac ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.dv, %bb.ac ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.dy, %bb.ac ], [ 0, %.preheader.i ]
  %i.dq = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !20391, !noalias !20392, !noundef !12
  %i.dr = zext i8 %i.dq to i32
  %i.ds = add nsw i32 %i.dr, -48                  ; 2 uses
  %i.dt = icmp ult i32 %i.ds, 10
  br i1 %i.dt, label %bb.ac, label %.loopexit239

bb.ac:                                            ; preds = %.lr.ph150.i
  %i.du = mul i64 %.sroa.084.4147.i, 10
  %i.dv = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.dx = zext nneg i32 %i.ds to i64
  %i.dy = add i64 %i.du, %i.dx                    ; 2 uses
  %.not105.i = icmp eq i64 %i.dv, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.loopexit239:                                     ; preds = %.lr.ph.i, %bb.v, %bb.u, %.lr.ph141.i, %.preheader111.i, %bb.z, %bb.aa, %.lr.ph150.i, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit, %bb.q, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5146.0.copyload148, i64 noundef %.sroa.8.0.copyload151) #53
  %i.dz = load i8, ptr %i.y, align 8, !range !21, !noundef !12
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.ag, label %bb.ah

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.w, %bb.x, %bb.ab, %bb.ac, %.preheader.i, %.preheader114.i
  %.sroa.15155.0 = phi i64 [ %i.dy, %bb.ac ], [ %i.db, %bb.x ], [ %i.dp, %bb.ab ], [ 0, %.preheader.i ], [ 0, %.preheader114.i ], [ %i.cs, %bb.w ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 4, i64 noundef %.sroa.15155.0) #45
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ah, %bb.ag, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %.sroa.011.0.not = phi i1 [ true, %bb.ag ], [ false, %bb.ah ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ec = load i64, ptr %i.eb, align 8, !noundef !12
  %i.ed = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %i.ec, ptr noalias nofree noundef nonnull %i.l, i64 noundef 20) #45 ; 2 uses
  %i.ee = extractvalue { ptr, i64 } %i.ed, 0
  %i.ef = extractvalue { ptr, i64 } %i.ed, 1      ; 16 uses
  %.not.i48 = icmp slt i64 %i.ef, 0
  br i1 %.not.i48, label %bb.ai, label %bb.ae, !prof !27

bb.ae:                                            ; preds = %bb.ad
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %.thread, label %bb.af

.thread:                                          ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.loopexit232

bb.af:                                            ; preds = %bb.ae
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !20393
  %i.eh = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ef, i64 noundef range(i64 1, 9) 1) #45, !noalias !20393 ; 18 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.ai, label %bb.aj

bb.ag:                                            ; preds = %.loopexit239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 %.sroa.0.0.copyload145, ptr %i.x, align 8
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.5146.0.copyload148, ptr %.sroa.5146.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.8.0.copyload151, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.x) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ad

bb.ah:                                            ; preds = %.loopexit239
  %i.ej = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ek = load double, ptr %i.ej, align 8, !noundef !12
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 4, double noundef %i.ek) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ad

bb.ai:                                            ; preds = %bb.ad, %bb.af
  %.sroa.4175.0.ph = phi i64 [ 1, %bb.af ], [ 0, %bb.ad ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4175.0.ph, i64 %i.ef) #52
  unreachable

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eh, ptr align 1 %i.ee, i64 %i.ef, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %cond = icmp eq i64 %i.ef, 1
  %i.el = load i8, ptr %i.eh, align 1, !alias.scope !20394, !noalias !20395 ; 2 uses
  br i1 %cond, label %bb.ak, label %thread-pre-split.i81

bb.ak:                                            ; preds = %bb.aj
  switch i8 %i.el, label %bb.ar [
    i8 43, label %.loopexit232
    i8 45, label %.loopexit232
  ]

thread-pre-split.i81:                             ; preds = %bb.aj
  switch i8 %i.el, label %bb.ar [
    i8 43, label %bb.al
    i8 45, label %bb.am
  ]

bb.al:                                            ; preds = %thread-pre-split.i81
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  %i.en = add nsw i64 %i.ef, -1
  br label %bb.ar

bb.am:                                            ; preds = %thread-pre-split.i81
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 1 ; 2 uses
  %i.ep = add nsw i64 %i.ef, -1                   ; 2 uses
  %i.eq = icmp samesign ult i64 %i.ef, 17
  br i1 %i.eq, label %.lr.ph141.i61, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.am, %bb.ap
  %.sroa.0.1136.i52 = phi ptr [ %i.er, %bb.ap ], [ %i.eo, %bb.am ] ; 2 uses
  %.sroa.26.1135.i53 = phi i64 [ %i.es, %bb.ap ], [ %i.ep, %bb.am ]
  %.sroa.084.0134.i54 = phi i64 [ %i.fd, %bb.ap ], [ 0, %bb.am ]
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i52, i64 1
  %i.es = add nsw i64 %.sroa.26.1135.i53, -1      ; 2 uses
  %i.et = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i54, i64 10) ; 2 uses
  %i.eu = extractvalue { i64, i1 } %i.et, 0
  %i.ev = extractvalue { i64, i1 } %i.et, 1
  br i1 %i.ev, label %.loopexit232, label %bb.an, !prof !18

bb.an:                                            ; preds = %.lr.ph.i51
  %i.ew = load i8, ptr %.sroa.0.1136.i52, align 1, !alias.scope !20394, !noalias !20395, !noundef !12
  %i.ex = zext i8 %i.ew to i32
  %i.ey = add nsw i32 %i.ex, -48                  ; 2 uses
  %i.ez = icmp ult i32 %i.ey, 10
  br i1 %i.ez, label %bb.ao, label %.loopexit232

bb.ao:                                            ; preds = %bb.an
  %i.fa = zext nneg i32 %i.ey to i64
  %i.fb = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.eu, i64 %i.fa) ; 2 uses
  %i.fc = extractvalue { i64, i1 } %i.fb, 1
  br i1 %i.fc, label %.loopexit232, label %bb.ap, !prof !18

bb.ap:                                            ; preds = %bb.ao
  %i.fd = extractvalue { i64, i1 } %i.fb, 0       ; 2 uses
  %.not102.i56 = icmp eq i64 %i.es, 0
  br i1 %.not102.i56, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83, label %.lr.ph.i51

.lr.ph141.i61:                                    ; preds = %bb.am, %bb.aq
  %.sroa.0.2140.i62 = phi ptr [ %i.fk, %bb.aq ], [ %i.eo, %bb.am ] ; 2 uses
  %.sroa.26.2139.i63 = phi i64 [ %i.fj, %bb.aq ], [ %i.ep, %bb.am ]
  %.sroa.084.2138.i64 = phi i64 [ %i.fm, %bb.aq ], [ 0, %bb.am ]
  %i.fe = load i8, ptr %.sroa.0.2140.i62, align 1, !alias.scope !20394, !noalias !20395, !noundef !12
  %i.ff = zext i8 %i.fe to i32
  %i.fg = add nsw i32 %i.ff, -48                  ; 2 uses
  %i.fh = icmp ult i32 %i.fg, 10
  br i1 %i.fh, label %bb.aq, label %.loopexit232

bb.aq:                                            ; preds = %.lr.ph141.i61
  %i.fi = mul i64 %.sroa.084.2138.i64, 10
  %i.fj = add nsw i64 %.sroa.26.2139.i63, -1      ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i62, i64 1
  %i.fl = zext nneg i32 %i.fg to i64
  %i.fm = sub i64 %i.fi, %i.fl                    ; 2 uses
  %.not103.i65 = icmp eq i64 %i.fj, 0
  br i1 %.not103.i65, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83, label %.lr.ph141.i61

bb.ar:                                            ; preds = %bb.ak, %bb.al, %thread-pre-split.i81
  %.sroa.26.0.i66 = phi i64 [ %i.en, %bb.al ], [ %i.ef, %thread-pre-split.i81 ], [ %i.ef, %bb.ak ] ; 3 uses
  %.sroa.0.0.i67 = phi ptr [ %i.em, %bb.al ], [ %i.eh, %thread-pre-split.i81 ], [ %i.eh, %bb.ak ] ; 2 uses
  %i.fn = icmp samesign ult i64 %.sroa.26.0.i66, 16
  br i1 %i.fn, label %.lr.ph150.i76, label %.preheader111.i68

.preheader111.i68:                                ; preds = %bb.ar, %bb.au
  %.sroa.0.3145.i69 = phi ptr [ %i.fo, %bb.au ], [ %.sroa.0.0.i67, %bb.ar ] ; 2 uses
  %.sroa.26.3144.i70 = phi i64 [ %i.fp, %bb.au ], [ %.sroa.26.0.i66, %bb.ar ]
  %.sroa.084.3143.i71 = phi i64 [ %i.ga, %bb.au ], [ 0, %bb.ar ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i69, i64 1
  %i.fp = add nsw i64 %.sroa.26.3144.i70, -1      ; 2 uses
  %i.fq = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i71, i64 10) ; 2 uses
  %i.fr = extractvalue { i64, i1 } %i.fq, 0
  %i.fs = extractvalue { i64, i1 } %i.fq, 1
  br i1 %i.fs, label %.loopexit232, label %bb.as, !prof !18

bb.as:                                            ; preds = %.preheader111.i68
  %i.ft = load i8, ptr %.sroa.0.3145.i69, align 1, !alias.scope !20394, !noalias !20395, !noundef !12
  %i.fu = zext i8 %i.ft to i32
  %i.fv = add nsw i32 %i.fu, -48                  ; 2 uses
  %i.fw = icmp ult i32 %i.fv, 10
  br i1 %i.fw, label %bb.at, label %.loopexit232

bb.at:                                            ; preds = %bb.as
  %i.fx = zext nneg i32 %i.fv to i64
  %i.fy = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.fr, i64 %i.fx) ; 2 uses
  %i.fz = extractvalue { i64, i1 } %i.fy, 1
  br i1 %i.fz, label %.loopexit232, label %bb.au, !prof !18

bb.au:                                            ; preds = %bb.at
  %i.ga = extractvalue { i64, i1 } %i.fy, 0       ; 2 uses
  %.not104.i73 = icmp eq i64 %i.fp, 0
  br i1 %.not104.i73, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83, label %.preheader111.i68

.lr.ph150.i76:                                    ; preds = %bb.ar, %bb.av
  %.sroa.0.4149.i77 = phi ptr [ %i.gh, %bb.av ], [ %.sroa.0.0.i67, %bb.ar ] ; 2 uses
  %.sroa.26.4148.i78 = phi i64 [ %i.gg, %bb.av ], [ %.sroa.26.0.i66, %bb.ar ]
  %.sroa.084.4147.i79 = phi i64 [ %i.gj, %bb.av ], [ 0, %bb.ar ]
  %i.gb = load i8, ptr %.sroa.0.4149.i77, align 1, !alias.scope !20394, !noalias !20395, !noundef !12
  %i.gc = zext i8 %i.gb to i32
  %i.gd = add nsw i32 %i.gc, -48                  ; 2 uses
  %i.ge = icmp ult i32 %i.gd, 10
  br i1 %i.ge, label %bb.av, label %.loopexit232

bb.av:                                            ; preds = %.lr.ph150.i76
  %i.gf = mul i64 %.sroa.084.4147.i79, 10
  %i.gg = add nsw i64 %.sroa.26.4148.i78, -1      ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i77, i64 1
  %i.gi = zext nneg i32 %i.gd to i64
  %i.gj = add i64 %i.gf, %i.gi                    ; 2 uses
  %.not105.i80 = icmp eq i64 %i.gg, 0
  br i1 %.not105.i80, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83, label %.lr.ph150.i76

.loopexit232:                                     ; preds = %.lr.ph.i51, %bb.ao, %bb.an, %.lr.ph141.i61, %.preheader111.i68, %bb.as, %bb.at, %.lr.ph150.i76, %bb.ak, %bb.ak, %.thread
  %.ph = phi ptr [ %i.eh, %.preheader111.i68 ], [ %i.eh, %.lr.ph141.i61 ], [ %i.eh, %.lr.ph150.i76 ], [ %i.eh, %bb.ak ], [ inttoptr (i64 1 to ptr), %.thread ], [ %i.eh, %bb.ak ], [ %i.eh, %bb.at ], [ %i.eh, %bb.as ], [ %i.eh, %bb.an ], [ %i.eh, %bb.ao ], [ %i.eh, %.lr.ph.i51 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.ef) #53
  %i.gk = load i8, ptr %i.w, align 8, !range !21, !noundef !12
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.az, label %bb.ba

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83: ; preds = %bb.ap, %bb.aq, %bb.au, %bb.av
  %.sroa.15162.0 = phi i64 [ %i.ga, %bb.au ], [ %i.fm, %bb.aq ], [ %i.gj, %bb.av ], [ %i.fd, %bb.ap ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @280, i64 noundef 8, i64 noundef %.sroa.15162.0) #45
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ba, %bb.az, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83
  %i.gm = phi ptr [ %.ph, %bb.az ], [ %.ph, %bb.ba ], [ %i.eh, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83 ]
  %.sroa.010.0.not = phi i1 [ true, %bb.az ], [ false, %bb.ba ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !nonnull !12, !noundef !12
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.gq = load i64, ptr %i.gp, align 8, !noundef !12
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.go, i64 noundef %i.gq) #45
  %i.gr = load i64, ptr %i.u, align 8, !range !13, !noundef !12 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8            ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.gv = load i64, ptr %i.gu, align 8            ; 14 uses
  %.not.i84 = icmp slt i64 %i.gv, 0
  br i1 %.not.i84, label %bb.bb, label %bb.ax, !prof !27

bb.ax:                                            ; preds = %bb.aw
  %i.gw = icmp eq i64 %i.gv, 0                    ; 2 uses
  br i1 %i.gw, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit86.thread216, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !20396
  %i.gx = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.gv, i64 noundef range(i64 1, 9) 1) #45, !noalias !20396 ; 3 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %bb.bb, label %bb.bq

bb.az:                                            ; preds = %.loopexit232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 %i.ef, ptr %i.v, align 8
  %.sroa.5157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.ph, ptr %.sroa.5157.0..sroa_idx, align 8
  %.sroa.8158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.ef, ptr %.sroa.8158.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @280, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.v) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.aw

bb.ba:                                            ; preds = %.loopexit232
  %i.gz = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ha = load double, ptr %i.gz, align 8, !noundef !12
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @280, i64 noundef 8, double noundef %i.ha) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.aw

bb.bb:                                            ; preds = %bb.aw, %bb.ay
  %.sroa.4178.0.ph = phi i64 [ 1, %bb.ay ], [ 0, %bb.aw ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4178.0.ph, i64 %i.gv) #52
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit86.thread216: ; preds = %bb.ax, %bb.bq
  %i.hb = phi ptr [ %i.gx, %bb.bq ], [ inttoptr (i64 1 to ptr), %bb.ax ] ; 8 uses
  %i.hc = icmp sgt i64 %i.gr, 0
  br i1 %i.hc, label %bb.bc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit

bb.bc:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit86.thread216
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gt) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gt, i64 noundef %i.gr, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !20397
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit86.thread216, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  switch i64 %i.gv, label %thread-pre-split.i118 [
    i64 0, label %.loopexit
    i64 1, label %bb.bd
  ]

bb.bd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit
  %i.hd = load i8, ptr %i.hb, align 1, !alias.scope !20398, !noalias !20399, !noundef !12 ; 2 uses
  switch i8 %i.hd, label %bb.be [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i118:                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit
  %.pr.i119 = load i8, ptr %i.hb, align 1, !alias.scope !20398, !noalias !20399
  br label %bb.be

bb.be:                                            ; preds = %thread-pre-split.i118, %bb.bd
  %i.he = phi i8 [ %.pr.i119, %thread-pre-split.i118 ], [ %i.hd, %bb.bd ]
  switch i8 %i.he, label %bb.bl [
    i8 43, label %bb.bf
    i8 45, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  %i.hg = add nsw i64 %i.gv, -1
  br label %bb.bl

bb.bg:                                            ; preds = %bb.be
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 1 ; 2 uses
  %i.hi = add nsw i64 %i.gv, -1                   ; 3 uses
  %i.hj = icmp samesign ult i64 %i.gv, 17
  br i1 %i.hj, label %.preheader114.i96, label %.lr.ph.i88

.preheader114.i96:                                ; preds = %bb.bg
  %.not103137.i97 = icmp eq i64 %i.hi, 0
  br i1 %.not103137.i97, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit120, label %.lr.ph141.i98

.lr.ph.i88:                                       ; preds = %bb.bg, %bb.bj
  %.sroa.0.1136.i89 = phi ptr [ %i.hk, %bb.bj ], [ %i.hh, %bb.bg ] ; 2 uses
  %.sroa.26.1135.i90 = phi i64 [ %i.hl, %bb.bj ], [ %i.hi, %bb.bg ]
  %.sroa.084.0134.i91 = phi i64 [ %i.hw, %bb.bj ], [ 0, %bb.bg ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i89, i64 1
  %i.hl = add nsw i64 %.sroa.26.1135.i90, -1      ; 2 uses
  %i.hm = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i91, i64 10) ; 2 uses
  %i.hn = extractvalue { i64, i1 } %i.hm, 0
  %i.ho = extractvalue { i64, i1 } %i.hm, 1
  br i1 %i.ho, label %.loopexit, label %bb.bh, !prof !18

bb.bh:                                            ; preds = %.lr.ph.i88
  %i.hp = load i8, ptr %.sroa.0.1136.i89, align 1, !alias.scope !20398, !noalias !20399, !noundef !12
  %i.hq = zext i8 %i.hp to i32
  %i.hr = add nsw i32 %i.hq, -48                  ; 2 uses
  %i.hs = icmp ult i32 %i.hr, 10
  br i1 %i.hs, label %bb.bi, label %.loopexit

bb.bi:                                            ; preds = %bb.bh
  %i.ht = zext nneg i32 %i.hr to i64
  %i.hu = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.hn, i64 %i.ht) ; 2 uses
  %i.hv = extractvalue { i64, i1 } %i.hu, 1
  br i1 %i.hv, label %.loopexit, label %bb.bj, !prof !18

bb.bj:                                            ; preds = %bb.bi
  %i.hw = extractvalue { i64, i1 } %i.hu, 0       ; 2 uses
  %.not102.i93 = icmp eq i64 %i.hl, 0
  br i1 %.not102.i93, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit120, label %.lr.ph.i88

.lr.ph141.i98:                                    ; preds = %.preheader114.i96, %bb.bk
  %.sroa.0.2140.i99 = phi ptr [ %i.id, %bb.bk ], [ %i.hh, %.preheader114.i96 ] ; 2 uses
  %.sroa.26.2139.i100 = phi i64 [ %i.ic, %bb.bk ], [ %i.hi, %.preheader114.i96 ]
  %.sroa.084.2138.i101 = phi i64 [ %i.if, %bb.bk ], [ 0, %.preheader114.i96 ]
  %i.hx = load i8, ptr %.sroa.0.2140.i99, align 1, !alias.scope !20398, !noalias !20399, !noundef !12
  %i.hy = zext i8 %i.hx to i32
  %i.hz = add nsw i32 %i.hy, -48                  ; 2 uses
  %i.ia = icmp ult i32 %i.hz, 10
  br i1 %i.ia, label %bb.bk, label %.loopexit

bb.bk:                                            ; preds = %.lr.ph141.i98
  %i.ib = mul i64 %.sroa.084.2138.i101, 10
  %i.ic = add nsw i64 %.sroa.26.2139.i100, -1     ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i99, i64 1
  %i.ie = zext nneg i32 %i.hz to i64
  %i.if = sub i64 %i.ib, %i.ie                    ; 2 uses
  %.not103.i102 = icmp eq i64 %i.ic, 0
  br i1 %.not103.i102, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit120, label %.lr.ph141.i98

bb.bl:                                            ; preds = %bb.bf, %bb.be
  %.sroa.26.0.i103 = phi i64 [ %i.hg, %bb.bf ], [ %i.gv, %bb.be ] ; 4 uses
  %.sroa.0.0.i104 = phi ptr [ %i.hf, %bb.bf ], [ %i.hb, %bb.be ] ; 2 uses
  %i.ig = icmp samesign ult i64 %.sroa.26.0.i103, 16
  br i1 %i.ig, label %.preheader.i111, label %.preheader111.i105

.preheader.i111:                                  ; preds = %bb.bl
  %.not105146.i112 = icmp eq i64 %.sroa.26.0.i103, 0
  br i1 %.not105146.i112, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit120, label %.lr.ph150.i113

.preheader111.i105:                               ; preds = %bb.bl, %bb.bo
  %.sroa.0.3145.i106 = phi ptr [ %i.ih, %bb.bo ], [ %.sroa.0.0.i104, %bb.bl ] ; 2 uses
  %.sroa.26.3144.i107 = phi i64 [ %i.ii, %bb.bo ], [ %.sroa.26.0.i103, %bb.bl ]
  %.sroa.084.3143.i108 = phi i64 [ %i.it, %bb.bo ], [ 0, %bb.bl ]
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i106, i64 1
  %i.ii = add nsw i64 %.sroa.26.3144.i107, -1     ; 2 uses
  %i.ij = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i108, i64 10) ; 2 uses
  %i.ik = extractvalue { i64, i1 } %i.ij, 0
  %i.il = extractvalue { i64, i1 } %i.ij, 1
  br i1 %i.il, label %.loopexit, label %bb.bm, !prof !18

bb.bm:                                            ; preds = %.preheader111.i105
  %i.im = load i8, ptr %.sroa.0.3145.i106, align 1, !alias.scope !20398, !noalias !20399, !noundef !12
  %i.in = zext i8 %i.im to i32
  %i.io = add nsw i32 %i.in, -48                  ; 2 uses
  %i.ip = icmp ult i32 %i.io, 10
  br i1 %i.ip, label %bb.bn, label %.loopexit

bb.bn:                                            ; preds = %bb.bm
  %i.iq = zext nneg i32 %i.io to i64
  %i.ir = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ik, i64 %i.iq) ; 2 uses
  %i.is = extractvalue { i64, i1 } %i.ir, 1
  br i1 %i.is, label %.loopexit, label %bb.bo, !prof !18

bb.bo:                                            ; preds = %bb.bn
  %i.it = extractvalue { i64, i1 } %i.ir, 0       ; 2 uses
  %.not104.i110 = icmp eq i64 %i.ii, 0
  br i1 %.not104.i110, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit120, label %.preheader111.i105

.lr.ph150.i113:                                   ; preds = %.preheader.i111, %bb.bp
  %.sroa.0.4149.i114 = phi ptr [ %i.ja, %bb.bp ], [ %.sroa.0.0.i104, %.preheader.i111 ] ; 2 uses
  %.sroa.26.4148.i115 = phi i64 [ %i.iz, %bb.bp ], [ %.sroa.26.0.i103, %.preheader.i111 ]
  %.sroa.084.4147.i116 = phi i64 [ %i.jc, %bb.bp ], [ 0, %.preheader.i111 ]
  %i.iu = load i8, ptr %.sroa.0.4149.i114, align 1, !alias.scope !20398, !noalias !20399, !noundef !12
  %i.iv = zext i8 %i.iu to i32
  %i.iw = add nsw i32 %i.iv, -48                  ; 2 uses
  %i.ix = icmp ult i32 %i.iw, 10
  br i1 %i.ix, label %bb.bp, label %.loopexit
end_hunk_2
begin_hunk_3_@_RINvMsb_CsgDnTRHLCOsi_7uu_joinNtB6_5State9next_lineNtB6_7LineSepECsl8pJiQOn4hA_9coreutils:bb.a
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.y:                                             ; preds = %bb.s, %bb.r
  %.sroa.26.0.i = phi i64 [ %i.cc, %bb.s ], [ %.sroa.8.0.copyload151, %bb.r ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.cb, %bb.s ], [ %.sroa.5146.0.copyload148, %bb.r ] ; 2 uses
  %i.dc = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.dc, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.y
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.y, %bb.ab
  %.sroa.0.3145.i = phi ptr [ %i.dd, %bb.ab ], [ %.sroa.0.0.i, %bb.y ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.de, %bb.ab ], [ %.sroa.26.0.i, %bb.y ]
  %.sroa.084.3143.i = phi i64 [ %i.dp, %bb.ab ], [ 0, %bb.y ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.de = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.df = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.dg = extractvalue { i64, i1 } %i.df, 0
  %i.dh = extractvalue { i64, i1 } %i.df, 1
  br i1 %i.dh, label %.loopexit239, label %bb.z, !prof !18

bb.z:                                             ; preds = %.preheader111.i
  %i.di = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !20494, !noalias !20495, !noundef !12
  %i.dj = zext i8 %i.di to i32
  %i.dk = add nsw i32 %i.dj, -48                  ; 2 uses
  %i.dl = icmp ult i32 %i.dk, 10
  br i1 %i.dl, label %bb.aa, label %.loopexit239

bb.aa:                                            ; preds = %bb.z
  %i.dm = zext nneg i32 %i.dk to i64
  %i.dn = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.dg, i64 %i.dm) ; 2 uses
  %i.do = extractvalue { i64, i1 } %i.dn, 1
  br i1 %i.do, label %.loopexit239, label %bb.ab, !prof !18

bb.ab:                                            ; preds = %bb.aa
  %i.dp = extractvalue { i64, i1 } %i.dn, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.de, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.ac
  %.sroa.0.4149.i = phi ptr [ %i.dw, %bb.ac ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.dv, %bb.ac ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.dy, %bb.ac ], [ 0, %.preheader.i ]
  %i.dq = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !20494, !noalias !20495, !noundef !12
  %i.dr = zext i8 %i.dq to i32
  %i.ds = add nsw i32 %i.dr, -48                  ; 2 uses
  %i.dt = icmp ult i32 %i.ds, 10
  br i1 %i.dt, label %bb.ac, label %.loopexit239

bb.ac:                                            ; preds = %.lr.ph150.i
  %i.du = mul i64 %.sroa.084.4147.i, 10
  %i.dv = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.dx = zext nneg i32 %i.ds to i64
  %i.dy = add i64 %i.du, %i.dx                    ; 2 uses
  %.not105.i = icmp eq i64 %i.dv, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.loopexit239:                                     ; preds = %.lr.ph.i, %bb.v, %bb.u, %.lr.ph141.i, %.preheader111.i, %bb.z, %bb.aa, %.lr.ph150.i, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit, %bb.q, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5146.0.copyload148, i64 noundef %.sroa.8.0.copyload151) #53
  %i.dz = load i8, ptr %i.y, align 8, !range !21, !noundef !12
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.ag, label %bb.ah

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.w, %bb.x, %bb.ab, %bb.ac, %.preheader.i, %.preheader114.i
  %.sroa.15155.0 = phi i64 [ %i.dy, %bb.ac ], [ %i.db, %bb.x ], [ %i.dp, %bb.ab ], [ 0, %.preheader.i ], [ 0, %.preheader114.i ], [ %i.cs, %bb.w ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 4, i64 noundef %.sroa.15155.0) #45
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ah, %bb.ag, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %.sroa.011.0.not = phi i1 [ true, %bb.ag ], [ false, %bb.ah ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ec = load i64, ptr %i.eb, align 8, !noundef !12
  %i.ed = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %i.ec, ptr noalias nofree noundef nonnull %i.l, i64 noundef 20) #45 ; 2 uses
  %i.ee = extractvalue { ptr, i64 } %i.ed, 0
  %i.ef = extractvalue { ptr, i64 } %i.ed, 1      ; 16 uses
  %.not.i48 = icmp slt i64 %i.ef, 0
  br i1 %.not.i48, label %bb.ai, label %bb.ae, !prof !27

bb.ae:                                            ; preds = %bb.ad
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %.thread, label %bb.af

.thread:                                          ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.loopexit232

bb.af:                                            ; preds = %bb.ae
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !20496
  %i.eh = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ef, i64 noundef range(i64 1, 9) 1) #45, !noalias !20496 ; 18 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.ai, label %bb.aj

bb.ag:                                            ; preds = %.loopexit239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 %.sroa.0.0.copyload145, ptr %i.x, align 8
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.5146.0.copyload148, ptr %.sroa.5146.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.8.0.copyload151, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.x) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ad

bb.ah:                                            ; preds = %.loopexit239
  %i.ej = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ek = load double, ptr %i.ej, align 8, !noundef !12
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 4, double noundef %i.ek) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ad

bb.ai:                                            ; preds = %bb.ad, %bb.af
  %.sroa.4175.0.ph = phi i64 [ 1, %bb.af ], [ 0, %bb.ad ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4175.0.ph, i64 %i.ef) #52
  unreachable

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eh, ptr align 1 %i.ee, i64 %i.ef, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %cond = icmp eq i64 %i.ef, 1
  %i.el = load i8, ptr %i.eh, align 1, !alias.scope !20497, !noalias !20498 ; 2 uses
  br i1 %cond, label %bb.ak, label %thread-pre-split.i81

bb.ak:                                            ; preds = %bb.aj
  switch i8 %i.el, label %bb.ar [
    i8 43, label %.loopexit232
    i8 45, label %.loopexit232
  ]

thread-pre-split.i81:                             ; preds = %bb.aj
  switch i8 %i.el, label %bb.ar [
    i8 43, label %bb.al
    i8 45, label %bb.am
  ]

bb.al:                                            ; preds = %thread-pre-split.i81
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  %i.en = add nsw i64 %i.ef, -1
  br label %bb.ar

bb.am:                                            ; preds = %thread-pre-split.i81
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 1 ; 2 uses
  %i.ep = add nsw i64 %i.ef, -1                   ; 2 uses
  %i.eq = icmp samesign ult i64 %i.ef, 17
  br i1 %i.eq, label %.lr.ph141.i61, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.am, %bb.ap
  %.sroa.0.1136.i52 = phi ptr [ %i.er, %bb.ap ], [ %i.eo, %bb.am ] ; 2 uses
  %.sroa.26.1135.i53 = phi i64 [ %i.es, %bb.ap ], [ %i.ep, %bb.am ]
  %.sroa.084.0134.i54 = phi i64 [ %i.fd, %bb.ap ], [ 0, %bb.am ]
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i52, i64 1
  %i.es = add nsw i64 %.sroa.26.1135.i53, -1      ; 2 uses
  %i.et = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i54, i64 10) ; 2 uses
  %i.eu = extractvalue { i64, i1 } %i.et, 0
  %i.ev = extractvalue { i64, i1 } %i.et, 1
  br i1 %i.ev, label %.loopexit232, label %bb.an, !prof !18

bb.an:                                            ; preds = %.lr.ph.i51
  %i.ew = load i8, ptr %.sroa.0.1136.i52, align 1, !alias.scope !20497, !noalias !20498, !noundef !12
  %i.ex = zext i8 %i.ew to i32
  %i.ey = add nsw i32 %i.ex, -48                  ; 2 uses
  %i.ez = icmp ult i32 %i.ey, 10
  br i1 %i.ez, label %bb.ao, label %.loopexit232

bb.ao:                                            ; preds = %bb.an
  %i.fa = zext nneg i32 %i.ey to i64
  %i.fb = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.eu, i64 %i.fa) ; 2 uses
  %i.fc = extractvalue { i64, i1 } %i.fb, 1
  br i1 %i.fc, label %.loopexit232, label %bb.ap, !prof !18

bb.ap:                                            ; preds = %bb.ao
  %i.fd = extractvalue { i64, i1 } %i.fb, 0       ; 2 uses
  %.not102.i56 = icmp eq i64 %i.es, 0
  br i1 %.not102.i56, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83, label %.lr.ph.i51

.lr.ph141.i61:                                    ; preds = %bb.am, %bb.aq
  %.sroa.0.2140.i62 = phi ptr [ %i.fk, %bb.aq ], [ %i.eo, %bb.am ] ; 2 uses
  %.sroa.26.2139.i63 = phi i64 [ %i.fj, %bb.aq ], [ %i.ep, %bb.am ]
  %.sroa.084.2138.i64 = phi i64 [ %i.fm, %bb.aq ], [ 0, %bb.am ]
  %i.fe = load i8, ptr %.sroa.0.2140.i62, align 1, !alias.scope !20497, !noalias !20498, !noundef !12
  %i.ff = zext i8 %i.fe to i32
  %i.fg = add nsw i32 %i.ff, -48                  ; 2 uses
  %i.fh = icmp ult i32 %i.fg, 10
  br i1 %i.fh, label %bb.aq, label %.loopexit232

bb.aq:                                            ; preds = %.lr.ph141.i61
  %i.fi = mul i64 %.sroa.084.2138.i64, 10
  %i.fj = add nsw i64 %.sroa.26.2139.i63, -1      ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i62, i64 1
  %i.fl = zext nneg i32 %i.fg to i64
  %i.fm = sub i64 %i.fi, %i.fl                    ; 2 uses
  %.not103.i65 = icmp eq i64 %i.fj, 0
  br i1 %.not103.i65, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83, label %.lr.ph141.i61

bb.ar:                                            ; preds = %bb.ak, %bb.al, %thread-pre-split.i81
  %.sroa.26.0.i66 = phi i64 [ %i.en, %bb.al ], [ %i.ef, %thread-pre-split.i81 ], [ %i.ef, %bb.ak ] ; 3 uses
  %.sroa.0.0.i67 = phi ptr [ %i.em, %bb.al ], [ %i.eh, %thread-pre-split.i81 ], [ %i.eh, %bb.ak ] ; 2 uses
  %i.fn = icmp samesign ult i64 %.sroa.26.0.i66, 16
  br i1 %i.fn, label %.lr.ph150.i76, label %.preheader111.i68

.preheader111.i68:                                ; preds = %bb.ar, %bb.au
  %.sroa.0.3145.i69 = phi ptr [ %i.fo, %bb.au ], [ %.sroa.0.0.i67, %bb.ar ] ; 2 uses
  %.sroa.26.3144.i70 = phi i64 [ %i.fp, %bb.au ], [ %.sroa.26.0.i66, %bb.ar ]
  %.sroa.084.3143.i71 = phi i64 [ %i.ga, %bb.au ], [ 0, %bb.ar ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i69, i64 1
  %i.fp = add nsw i64 %.sroa.26.3144.i70, -1      ; 2 uses
  %i.fq = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i71, i64 10) ; 2 uses
  %i.fr = extractvalue { i64, i1 } %i.fq, 0
  %i.fs = extractvalue { i64, i1 } %i.fq, 1
  br i1 %i.fs, label %.loopexit232, label %bb.as, !prof !18

bb.as:                                            ; preds = %.preheader111.i68
  %i.ft = load i8, ptr %.sroa.0.3145.i69, align 1, !alias.scope !20497, !noalias !20498, !noundef !12
  %i.fu = zext i8 %i.ft to i32
  %i.fv = add nsw i32 %i.fu, -48                  ; 2 uses
  %i.fw = icmp ult i32 %i.fv, 10
  br i1 %i.fw, label %bb.at, label %.loopexit232

bb.at:                                            ; preds = %bb.as
  %i.fx = zext nneg i32 %i.fv to i64
  %i.fy = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.fr, i64 %i.fx) ; 2 uses
  %i.fz = extractvalue { i64, i1 } %i.fy, 1
  br i1 %i.fz, label %.loopexit232, label %bb.au, !prof !18

bb.au:                                            ; preds = %bb.at
  %i.ga = extractvalue { i64, i1 } %i.fy, 0       ; 2 uses
  %.not104.i73 = icmp eq i64 %i.fp, 0
  br i1 %.not104.i73, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83, label %.preheader111.i68

.lr.ph150.i76:                                    ; preds = %bb.ar, %bb.av
  %.sroa.0.4149.i77 = phi ptr [ %i.gh, %bb.av ], [ %.sroa.0.0.i67, %bb.ar ] ; 2 uses
  %.sroa.26.4148.i78 = phi i64 [ %i.gg, %bb.av ], [ %.sroa.26.0.i66, %bb.ar ]
  %.sroa.084.4147.i79 = phi i64 [ %i.gj, %bb.av ], [ 0, %bb.ar ]
  %i.gb = load i8, ptr %.sroa.0.4149.i77, align 1, !alias.scope !20497, !noalias !20498, !noundef !12
  %i.gc = zext i8 %i.gb to i32
  %i.gd = add nsw i32 %i.gc, -48                  ; 2 uses
  %i.ge = icmp ult i32 %i.gd, 10
  br i1 %i.ge, label %bb.av, label %.loopexit232

bb.av:                                            ; preds = %.lr.ph150.i76
  %i.gf = mul i64 %.sroa.084.4147.i79, 10
  %i.gg = add nsw i64 %.sroa.26.4148.i78, -1      ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i77, i64 1
  %i.gi = zext nneg i32 %i.gd to i64
  %i.gj = add i64 %i.gf, %i.gi                    ; 2 uses
  %.not105.i80 = icmp eq i64 %i.gg, 0
  br i1 %.not105.i80, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83, label %.lr.ph150.i76

.loopexit232:                                     ; preds = %.lr.ph.i51, %bb.ao, %bb.an, %.lr.ph141.i61, %.preheader111.i68, %bb.as, %bb.at, %.lr.ph150.i76, %bb.ak, %bb.ak, %.thread
  %.ph = phi ptr [ %i.eh, %.preheader111.i68 ], [ %i.eh, %.lr.ph141.i61 ], [ %i.eh, %.lr.ph150.i76 ], [ %i.eh, %bb.ak ], [ inttoptr (i64 1 to ptr), %.thread ], [ %i.eh, %bb.ak ], [ %i.eh, %bb.at ], [ %i.eh, %bb.as ], [ %i.eh, %bb.an ], [ %i.eh, %bb.ao ], [ %i.eh, %.lr.ph.i51 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.ef) #53
  %i.gk = load i8, ptr %i.w, align 8, !range !21, !noundef !12
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.az, label %bb.ba

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83: ; preds = %bb.ap, %bb.aq, %bb.au, %bb.av
  %.sroa.15162.0 = phi i64 [ %i.ga, %bb.au ], [ %i.fm, %bb.aq ], [ %i.gj, %bb.av ], [ %i.fd, %bb.ap ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @280, i64 noundef 8, i64 noundef %.sroa.15162.0) #45
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ba, %bb.az, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83
  %i.gm = phi ptr [ %.ph, %bb.az ], [ %.ph, %bb.ba ], [ %i.eh, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83 ]
  %.sroa.010.0.not = phi i1 [ true, %bb.az ], [ false, %bb.ba ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !nonnull !12, !noundef !12
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.gq = load i64, ptr %i.gp, align 8, !noundef !12
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.go, i64 noundef %i.gq) #45
  %i.gr = load i64, ptr %i.u, align 8, !range !13, !noundef !12 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8            ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.gv = load i64, ptr %i.gu, align 8            ; 14 uses
  %.not.i84 = icmp slt i64 %i.gv, 0
  br i1 %.not.i84, label %bb.bb, label %bb.ax, !prof !27

bb.ax:                                            ; preds = %bb.aw
  %i.gw = icmp eq i64 %i.gv, 0                    ; 2 uses
  br i1 %i.gw, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit86.thread216, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !20499
  %i.gx = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.gv, i64 noundef range(i64 1, 9) 1) #45, !noalias !20499 ; 3 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %bb.bb, label %bb.bq

bb.az:                                            ; preds = %.loopexit232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 %i.ef, ptr %i.v, align 8
  %.sroa.5157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.ph, ptr %.sroa.5157.0..sroa_idx, align 8
  %.sroa.8158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.ef, ptr %.sroa.8158.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @280, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.v) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.aw

bb.ba:                                            ; preds = %.loopexit232
  %i.gz = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ha = load double, ptr %i.gz, align 8, !noundef !12
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @280, i64 noundef 8, double noundef %i.ha) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.aw

bb.bb:                                            ; preds = %bb.aw, %bb.ay
  %.sroa.4178.0.ph = phi i64 [ 1, %bb.ay ], [ 0, %bb.aw ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4178.0.ph, i64 %i.gv) #52
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit86.thread216: ; preds = %bb.ax, %bb.bq
  %i.hb = phi ptr [ %i.gx, %bb.bq ], [ inttoptr (i64 1 to ptr), %bb.ax ] ; 8 uses
  %i.hc = icmp sgt i64 %i.gr, 0
  br i1 %i.hc, label %bb.bc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit

bb.bc:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit86.thread216
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gt) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gt, i64 noundef %i.gr, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !20500
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit86.thread216, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  switch i64 %i.gv, label %thread-pre-split.i118 [
    i64 0, label %.loopexit
    i64 1, label %bb.bd
  ]

bb.bd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit
  %i.hd = load i8, ptr %i.hb, align 1, !alias.scope !20501, !noalias !20502, !noundef !12 ; 2 uses
  switch i8 %i.hd, label %bb.be [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i118:                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit
  %.pr.i119 = load i8, ptr %i.hb, align 1, !alias.scope !20501, !noalias !20502
  br label %bb.be

bb.be:                                            ; preds = %thread-pre-split.i118, %bb.bd
  %i.he = phi i8 [ %.pr.i119, %thread-pre-split.i118 ], [ %i.hd, %bb.bd ]
  switch i8 %i.he, label %bb.bl [
    i8 43, label %bb.bf
    i8 45, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  %i.hg = add nsw i64 %i.gv, -1
  br label %bb.bl

bb.bg:                                            ; preds = %bb.be
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 1 ; 2 uses
  %i.hi = add nsw i64 %i.gv, -1                   ; 3 uses
  %i.hj = icmp samesign ult i64 %i.gv, 17
  br i1 %i.hj, label %.preheader114.i96, label %.lr.ph.i88

.preheader114.i96:                                ; preds = %bb.bg
  %.not103137.i97 = icmp eq i64 %i.hi, 0
  br i1 %.not103137.i97, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit120, label %.lr.ph141.i98

.lr.ph.i88:                                       ; preds = %bb.bg, %bb.bj
  %.sroa.0.1136.i89 = phi ptr [ %i.hk, %bb.bj ], [ %i.hh, %bb.bg ] ; 2 uses
  %.sroa.26.1135.i90 = phi i64 [ %i.hl, %bb.bj ], [ %i.hi, %bb.bg ]
  %.sroa.084.0134.i91 = phi i64 [ %i.hw, %bb.bj ], [ 0, %bb.bg ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i89, i64 1
  %i.hl = add nsw i64 %.sroa.26.1135.i90, -1      ; 2 uses
  %i.hm = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i91, i64 10) ; 2 uses
  %i.hn = extractvalue { i64, i1 } %i.hm, 0
  %i.ho = extractvalue { i64, i1 } %i.hm, 1
  br i1 %i.ho, label %.loopexit, label %bb.bh, !prof !18

bb.bh:                                            ; preds = %.lr.ph.i88
  %i.hp = load i8, ptr %.sroa.0.1136.i89, align 1, !alias.scope !20501, !noalias !20502, !noundef !12
  %i.hq = zext i8 %i.hp to i32
  %i.hr = add nsw i32 %i.hq, -48                  ; 2 uses
  %i.hs = icmp ult i32 %i.hr, 10
  br i1 %i.hs, label %bb.bi, label %.loopexit

bb.bi:                                            ; preds = %bb.bh
  %i.ht = zext nneg i32 %i.hr to i64
  %i.hu = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.hn, i64 %i.ht) ; 2 uses
  %i.hv = extractvalue { i64, i1 } %i.hu, 1
  br i1 %i.hv, label %.loopexit, label %bb.bj, !prof !18

bb.bj:                                            ; preds = %bb.bi
  %i.hw = extractvalue { i64, i1 } %i.hu, 0       ; 2 uses
  %.not102.i93 = icmp eq i64 %i.hl, 0
  br i1 %.not102.i93, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit120, label %.lr.ph.i88

.lr.ph141.i98:                                    ; preds = %.preheader114.i96, %bb.bk
  %.sroa.0.2140.i99 = phi ptr [ %i.id, %bb.bk ], [ %i.hh, %.preheader114.i96 ] ; 2 uses
  %.sroa.26.2139.i100 = phi i64 [ %i.ic, %bb.bk ], [ %i.hi, %.preheader114.i96 ]
  %.sroa.084.2138.i101 = phi i64 [ %i.if, %bb.bk ], [ 0, %.preheader114.i96 ]
  %i.hx = load i8, ptr %.sroa.0.2140.i99, align 1, !alias.scope !20501, !noalias !20502, !noundef !12
  %i.hy = zext i8 %i.hx to i32
  %i.hz = add nsw i32 %i.hy, -48                  ; 2 uses
  %i.ia = icmp ult i32 %i.hz, 10
  br i1 %i.ia, label %bb.bk, label %.loopexit

bb.bk:                                            ; preds = %.lr.ph141.i98
  %i.ib = mul i64 %.sroa.084.2138.i101, 10
  %i.ic = add nsw i64 %.sroa.26.2139.i100, -1     ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i99, i64 1
  %i.ie = zext nneg i32 %i.hz to i64
  %i.if = sub i64 %i.ib, %i.ie                    ; 2 uses
  %.not103.i102 = icmp eq i64 %i.ic, 0
  br i1 %.not103.i102, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit120, label %.lr.ph141.i98

bb.bl:                                            ; preds = %bb.bf, %bb.be
  %.sroa.26.0.i103 = phi i64 [ %i.hg, %bb.bf ], [ %i.gv, %bb.be ] ; 4 uses
  %.sroa.0.0.i104 = phi ptr [ %i.hf, %bb.bf ], [ %i.hb, %bb.be ] ; 2 uses
  %i.ig = icmp samesign ult i64 %.sroa.26.0.i103, 16
  br i1 %i.ig, label %.preheader.i111, label %.preheader111.i105

.preheader.i111:                                  ; preds = %bb.bl
  %.not105146.i112 = icmp eq i64 %.sroa.26.0.i103, 0
  br i1 %.not105146.i112, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit120, label %.lr.ph150.i113

.preheader111.i105:                               ; preds = %bb.bl, %bb.bo
  %.sroa.0.3145.i106 = phi ptr [ %i.ih, %bb.bo ], [ %.sroa.0.0.i104, %bb.bl ] ; 2 uses
  %.sroa.26.3144.i107 = phi i64 [ %i.ii, %bb.bo ], [ %.sroa.26.0.i103, %bb.bl ]
  %.sroa.084.3143.i108 = phi i64 [ %i.it, %bb.bo ], [ 0, %bb.bl ]
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i106, i64 1
  %i.ii = add nsw i64 %.sroa.26.3144.i107, -1     ; 2 uses
  %i.ij = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i108, i64 10) ; 2 uses
  %i.ik = extractvalue { i64, i1 } %i.ij, 0
  %i.il = extractvalue { i64, i1 } %i.ij, 1
  br i1 %i.il, label %.loopexit, label %bb.bm, !prof !18

bb.bm:                                            ; preds = %.preheader111.i105
  %i.im = load i8, ptr %.sroa.0.3145.i106, align 1, !alias.scope !20501, !noalias !20502, !noundef !12
  %i.in = zext i8 %i.im to i32
  %i.io = add nsw i32 %i.in, -48                  ; 2 uses
  %i.ip = icmp ult i32 %i.io, 10
  br i1 %i.ip, label %bb.bn, label %.loopexit

bb.bn:                                            ; preds = %bb.bm
  %i.iq = zext nneg i32 %i.io to i64
  %i.ir = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ik, i64 %i.iq) ; 2 uses
  %i.is = extractvalue { i64, i1 } %i.ir, 1
  br i1 %i.is, label %.loopexit, label %bb.bo, !prof !18

bb.bo:                                            ; preds = %bb.bn
  %i.it = extractvalue { i64, i1 } %i.ir, 0       ; 2 uses
  %.not104.i110 = icmp eq i64 %i.ii, 0
  br i1 %.not104.i110, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit120, label %.preheader111.i105

.lr.ph150.i113:                                   ; preds = %.preheader.i111, %bb.bp
  %.sroa.0.4149.i114 = phi ptr [ %i.ja, %bb.bp ], [ %.sroa.0.0.i104, %.preheader.i111 ] ; 2 uses
  %.sroa.26.4148.i115 = phi i64 [ %i.iz, %bb.bp ], [ %.sroa.26.0.i103, %.preheader.i111 ]
  %.sroa.084.4147.i116 = phi i64 [ %i.jc, %bb.bp ], [ 0, %.preheader.i111 ]
  %i.iu = load i8, ptr %.sroa.0.4149.i114, align 1, !alias.scope !20501, !noalias !20502, !noundef !12
  %i.iv = zext i8 %i.iu to i32
  %i.iw = add nsw i32 %i.iv, -48                  ; 2 uses
  %i.ix = icmp ult i32 %i.iw, 10
  br i1 %i.ix, label %bb.bp, label %.loopexit
end_hunk_3
begin_hunk_4_@_RINvNvCsiibOIv6tv3q_7uu_date6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  br i1 %i.jp, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit.thread1235, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !30332
  %i.jq = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.jo, i64 noundef range(i64 1, 9) 1) #45, !noalias !30332 ; 3 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit638
  %i.js = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.hj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @647, i64 noundef 10) #45
  %spec.select = select i1 %i.js, i64 5, i64 0
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit.thread1235

bb.ac:                                            ; preds = %bb.y, %bb.aa
  %.sroa.41147.0.ph = phi i64 [ 1, %bb.aa ], [ 0, %bb.y ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.41147.0.ph, i64 %i.jo) #52
  unreachable

bb.ad:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jq, ptr nonnull align 1 %i.jm, i64 %i.jo, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit.thread1235

bb.ae:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hg)
  store ptr %.sroa.0992.0.copyload993, ptr %i.hg, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hf)
  call fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB12_EE9from_iterCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.hf, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.hg) #45
  %i.jt = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.ju = load i64, ptr %i.jt, align 8, !noundef !12 ; 2 uses
  %i.jv = icmp ult i64 %i.ju, 1152921504606846976
  call void @llvm.assume(i1 %i.jv)
  %i.jw = icmp samesign ugt i64 %i.ju, 1
  br i1 %i.jw, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.val586 = load i64, ptr %i.hf, align 8, !range !19, !noundef !12 ; 2 uses
  %i.jx = icmp eq i64 %.val586, 0
  br i1 %i.jx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBG_6string6StringEECsl8pJiQOn4hA_9coreutils.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jy = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %.val587 = load ptr, ptr %i.jy, align 8, !nonnull !12, !noundef !12
  %i.jz = shl nuw i64 %.val586, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val587, i64 noundef %i.jz, i64 noundef range(i64 1, -9223372036854775807) 8) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBG_6string6StringEECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBG_6string6StringEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hg)
  br label %bb.ah

bb.ah:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBG_6string6StringEECsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.dl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.hj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @648, i64 noundef 6) #45
  call void @llvm.experimental.noalias.scope.decl(metadata !30333)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  store ptr @648, ptr %i.cf, align 8, !noalias !30334
  %i.ka = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 6, ptr %i.ka, align 8, !noalias !30334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !30334
  %i.kb = load i64, ptr %i.dl, align 8, !range !26, !alias.scope !30333, !noalias !30335, !noundef !12
  %.not.i645 = icmp eq i64 %i.kb, 2
  br i1 %.not.i645, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit648, label %bb.ai, !prof !11

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ce, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.dl, i64 40, i1 false), !noalias !30335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !30334
  store ptr %i.cf, ptr %i.cd, align 8, !noalias !30334
  %.sroa.42.0..sroa_idx.i646 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i646, align 8, !noalias !30334
  %i.kc = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr %i.ce, ptr %i.kc, align 8, !noalias !30334
  %.sroa.46.0..sroa_idx.i647 = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i647, align 8, !noalias !30334
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.cd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !30333
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit648: ; preds = %bb.ah
  %i.kd = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !alias.scope !30333, !noalias !30335, !align !23, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !30334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  %.not541 = icmp eq ptr %i.ke, null
  br i1 %.not541, label %bb.bl, label %bb.bk

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.he)
  store i64 0, ptr %i.he, align 8
  %.sroa.4210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4210.0..sroa_idx, align 8
  %.sroa.5211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store i64 0, ptr %.sroa.5211.0..sroa_idx, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !nonnull !12, !align !23, !noundef !12 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !nonnull !12, !noundef !12
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.km = load i64, ptr %i.kl, align 8, !noundef !12 ; 16 uses
  %.not.i649 = icmp slt i64 %i.km, 0
  br i1 %.not.i649, label %bb.am, label %bb.ak, !prof !27

bb.ak:                                            ; preds = %bb.aj
  %i.kn = icmp eq i64 %i.km, 0
  br i1 %i.kn, label %.thread1276, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !30336
  %i.ko = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.km, i64 noundef range(i64 1, 9) 1) #45, !noalias !30336 ; 18 uses
  %i.kp = icmp eq ptr %i.ko, null
  br i1 %i.kp, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.aj, %bb.al
  %.sroa.41151.0.ph = phi i64 [ 1, %bb.al ], [ 0, %bb.aj ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.41151.0.ph, i64 %i.km) #52
  unreachable

bb.an:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ko, ptr nonnull align 1 %i.kk, i64 %i.km, i1 false)
  %cond1454 = icmp eq i64 %i.km, 1
  %i.kq = load i8, ptr %i.ko, align 1, !alias.scope !30337, !noalias !30338 ; 2 uses
  br i1 %cond1454, label %bb.ao, label %thread-pre-split.i

bb.ao:                                            ; preds = %bb.an
  switch i8 %i.kq, label %bb.av [
    i8 43, label %.thread1276
    i8 45, label %.thread1276
  ]

thread-pre-split.i:                               ; preds = %bb.an
  switch i8 %i.kq, label %bb.av [
    i8 43, label %bb.ap
    i8 45, label %bb.aq
  ]

bb.ap:                                            ; preds = %thread-pre-split.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 1
  %i.ks = add nsw i64 %i.km, -1
  br label %bb.av

bb.aq:                                            ; preds = %thread-pre-split.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 1 ; 2 uses
  %i.ku = add nsw i64 %i.km, -1                   ; 2 uses
  %i.kv = icmp samesign ult i64 %i.km, 17
  br i1 %i.kv, label %.lr.ph141.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aq, %bb.at
  %.sroa.0.1136.i = phi ptr [ %i.kw, %bb.at ], [ %i.kt, %bb.aq ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.kx, %bb.at ], [ %i.ku, %bb.aq ]
  %.sroa.084.0134.i = phi i64 [ %i.li, %bb.at ], [ 0, %bb.aq ]
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.kx = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.ky = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.kz = extractvalue { i64, i1 } %i.ky, 0
  %i.la = extractvalue { i64, i1 } %i.ky, 1
  br i1 %i.la, label %.thread1276, label %bb.ar, !prof !18

bb.ar:                                            ; preds = %.lr.ph.i
  %i.lb = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !30337, !noalias !30338, !noundef !12
  %i.lc = zext i8 %i.lb to i32
  %i.ld = add nsw i32 %i.lc, -48                  ; 2 uses
  %i.le = icmp ult i32 %i.ld, 10
  br i1 %i.le, label %bb.as, label %.thread1276

bb.as:                                            ; preds = %bb.ar
  %i.lf = zext nneg i32 %i.ld to i64
  %i.lg = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.kz, i64 %i.lf) ; 2 uses
  %i.lh = extractvalue { i64, i1 } %i.lg, 1
  br i1 %i.lh, label %.thread1276, label %bb.at, !prof !18

bb.at:                                            ; preds = %bb.as
  %i.li = extractvalue { i64, i1 } %i.lg, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.kx, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %bb.aq, %bb.au
  %.sroa.0.2140.i = phi ptr [ %i.lp, %bb.au ], [ %i.kt, %bb.aq ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.lo, %bb.au ], [ %i.ku, %bb.aq ]
  %.sroa.084.2138.i = phi i64 [ %i.lr, %bb.au ], [ 0, %bb.aq ]
  %i.lj = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !30337, !noalias !30338, !noundef !12
  %i.lk = zext i8 %i.lj to i32
  %i.ll = add nsw i32 %i.lk, -48                  ; 2 uses
  %i.lm = icmp ult i32 %i.ll, 10
  br i1 %i.lm, label %bb.au, label %.thread1276

bb.au:                                            ; preds = %.lr.ph141.i
  %i.ln = mul i64 %.sroa.084.2138.i, 10
  %i.lo = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.lq = zext nneg i32 %i.ll to i64
  %i.lr = sub i64 %i.ln, %i.lq                    ; 2 uses
  %.not103.i = icmp eq i64 %i.lo, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.av:                                            ; preds = %bb.ao, %bb.ap, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.ks, %bb.ap ], [ %i.km, %thread-pre-split.i ], [ %i.km, %bb.ao ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.kr, %bb.ap ], [ %i.ko, %thread-pre-split.i ], [ %i.ko, %bb.ao ] ; 2 uses
  %i.ls = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.ls, label %.lr.ph150.i, label %.preheader111.i

.preheader111.i:                                  ; preds = %bb.av, %bb.ay
  %.sroa.0.3145.i = phi ptr [ %i.lt, %bb.ay ], [ %.sroa.0.0.i, %bb.av ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.lu, %bb.ay ], [ %.sroa.26.0.i, %bb.av ]
  %.sroa.084.3143.i = phi i64 [ %i.mf, %bb.ay ], [ 0, %bb.av ]
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.lu = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.lv = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.lw = extractvalue { i64, i1 } %i.lv, 0
  %i.lx = extractvalue { i64, i1 } %i.lv, 1
  br i1 %i.lx, label %.thread1276, label %bb.aw, !prof !18

bb.aw:                                            ; preds = %.preheader111.i
  %i.ly = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !30337, !noalias !30338, !noundef !12
  %i.lz = zext i8 %i.ly to i32
  %i.ma = add nsw i32 %i.lz, -48                  ; 2 uses
  %i.mb = icmp ult i32 %i.ma, 10
  br i1 %i.mb, label %bb.ax, label %.thread1276

bb.ax:                                            ; preds = %bb.aw
  %i.mc = zext nneg i32 %i.ma to i64
  %i.md = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.lw, i64 %i.mc) ; 2 uses
  %i.me = extractvalue { i64, i1 } %i.md, 1
  br i1 %i.me, label %.thread1276, label %bb.ay, !prof !18

bb.ay:                                            ; preds = %bb.ax
  %i.mf = extractvalue { i64, i1 } %i.md, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.lu, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %bb.av, %bb.az
  %.sroa.0.4149.i = phi ptr [ %i.mm, %bb.az ], [ %.sroa.0.0.i, %bb.av ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.ml, %bb.az ], [ %.sroa.26.0.i, %bb.av ]
  %.sroa.084.4147.i = phi i64 [ %i.mo, %bb.az ], [ 0, %bb.av ]
  %i.mg = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !30337, !noalias !30338, !noundef !12
  %i.mh = zext i8 %i.mg to i32
  %i.mi = add nsw i32 %i.mh, -48                  ; 2 uses
  %i.mj = icmp ult i32 %i.mi, 10
  br i1 %i.mj, label %bb.az, label %.thread1276

bb.az:                                            ; preds = %.lr.ph150.i
  %i.mk = mul i64 %.sroa.084.4147.i, 10
  %i.ml = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.mn = zext nneg i32 %i.mi to i64
  %i.mo = add i64 %i.mk, %i.mn                    ; 2 uses
  %.not105.i = icmp eq i64 %i.ml, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.thread1276:                                      ; preds = %.lr.ph.i, %bb.as, %bb.ar, %.lr.ph141.i, %.preheader111.i, %bb.aw, %bb.ax, %.lr.ph150.i, %bb.ao, %bb.ao, %bb.ak
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.ak ], [ %i.ko, %.preheader111.i ], [ %i.ko, %.lr.ph150.i ], [ %i.ko, %bb.ao ], [ %i.ko, %.lr.ph141.i ], [ %i.ko, %bb.ao ], [ %i.ko, %bb.ax ], [ %i.ko, %bb.aw ], [ %i.ko, %bb.ar ], [ %i.ko, %bb.as ], [ %i.ko, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hd)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.hd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.km) #53
  %i.mp = load i8, ptr %i.hd, align 8, !range !21, !noundef !12
  %i.mq = trunc nuw i8 %i.mp to i1
  br i1 %i.mq, label %bb.bc, label %bb.bd

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.at, %bb.au, %bb.ay, %bb.az
  %.sroa.15999.0 = phi i64 [ %i.mf, %bb.ay ], [ %i.lr, %bb.au ], [ %i.mo, %bb.az ], [ %i.li, %bb.at ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.he, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @377, i64 noundef 7, i64 noundef %.sroa.15999.0) #45
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bd, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.mr = phi ptr [ %.ph, %bb.bd ], [ %i.ko, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef nonnull align 8 dereferenceable(24) %i.he, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @649, i64 noundef 24, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.hb) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb)
  %i.ms = icmp eq i64 %i.km, 0
  br i1 %i.ms, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mr, i64 noundef %i.km, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !30339
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit

bb.bc:                                            ; preds = %.thread1276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hc)
  store i64 %i.km, ptr %i.hc, align 8
  %.sroa.5.0..sroa_idx996 = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store ptr %.ph, ptr %.sroa.5.0..sroa_idx996, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  store i64 %i.km, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.he, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @377, i64 noundef 7, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.hc) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef nonnull align 8 dereferenceable(24) %i.he, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @649, i64 noundef 24, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.hb) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit

bb.bd:                                            ; preds = %.thread1276
  %i.mt = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.mu = load double, ptr %i.mt, align 8, !noundef !12
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.he, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @377, i64 noundef 7, double noundef %i.mu) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hd)
  br label %bb.ba

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.bb, %bb.ba, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.he)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !30340
  %i.mv = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !30340 ; 4 uses
  %i.mw = icmp eq ptr %i.mv, null
  br i1 %i.mw, label %bb.be, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !15

bb.be:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #52, !noalias !30340
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mv, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false)
  %.sroa.41155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  store i32 1, ptr %.sroa.41155.0..sroa_idx, align 8
  %.val584 = load i64, ptr %i.hf, align 8, !range !19, !noundef !12 ; 2 uses
  %i.mx = icmp eq i64 %.val584, 0
  br i1 %i.mx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBG_6string6StringEECsl8pJiQOn4hA_9coreutils.exit653, label %bb.bf

bb.bf:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  %i.my = shl nuw i64 %.val584, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kg, i64 noundef %i.my, i64 noundef range(i64 1, -9223372036854775807) 8) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBG_6string6StringEECsl8pJiQOn4hA_9coreutils.exit653

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBG_6string6StringEECsl8pJiQOn4hA_9coreutils.exit653: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hg)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5zoned5ZonedECsl8pJiQOn4hA_9coreutils.exit987, %bb.so, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit705, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit743, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBG_6string6StringEECsl8pJiQOn4hA_9coreutils.exit653
  %.sroa.0.1 = phi ptr [ %i.mv, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBG_6string6StringEECsl8pJiQOn4hA_9coreutils.exit653 ], [ %i.qg, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit705 ], [ %i.sn, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit743 ], [ %i.baf, %bb.so ], [ %i.baf, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5zoned5ZonedECsl8pJiQOn4hA_9coreutils.exit987 ] ; 5 uses
  switch i64 %.sroa.0.01227, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsiibOIv6tv3q_7uu_date10DateSourceECsl8pJiQOn4hA_9coreutils.exit [
    i64 1, label %bb.bh
    i64 2, label %bb.bi
    i64 4, label %bb.bj
  ]

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.sink.split.i: ; preds = %bb.bj, %bb.bi, %bb.bh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.17.01228) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.17.01228, i64 noundef %.sroa.21.0, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !30341
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsiibOIv6tv3q_7uu_date10DateSourceECsl8pJiQOn4hA_9coreutils.exit

bb.bh:                                            ; preds = %bb.bg
  %i.mz = icmp eq i64 %.sroa.21.0, 0
  br i1 %i.mz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsiibOIv6tv3q_7uu_date10DateSourceECsl8pJiQOn4hA_9coreutils.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.sink.split.i

bb.bi:                                            ; preds = %bb.bg
  %i.na = icmp eq i64 %.sroa.21.0, 0
  br i1 %i.na, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsiibOIv6tv3q_7uu_date10DateSourceECsl8pJiQOn4hA_9coreutils.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.sink.split.i

bb.bj:                                            ; preds = %bb.bg
  %i.nb = icmp eq i64 %.sroa.21.0, 0
  br i1 %i.nb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsiibOIv6tv3q_7uu_date10DateSourceECsl8pJiQOn4hA_9coreutils.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.sink.split.i

bb.bk:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit648
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ke, i64 8 ; 3 uses
  %i.nd = load ptr, ptr %i.nc, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ke, i64 16 ; 3 uses
  %i.nf = load i64, ptr %i.ne, align 8, !noundef !12 ; 5 uses
  %.not.i655 = icmp eq i64 %i.nf, 0
  br i1 %.not.i655, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.bk
  %rhsc = load i8, ptr %i.nd, align 1
  %i.ng = icmp eq i8 %rhsc, 43
  br i1 %i.ng, label %bb.bn, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread

bb.bl:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.di, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.hj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @653, i64 noundef 8) #45
  call void @llvm.experimental.noalias.scope.decl(metadata !30342)
  call void @llvm.experimental.noalias.scope.decl(metadata !30343)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  store ptr @653, ptr %i.cc, align 8, !noalias !30344
  %i.nh = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 8, ptr %i.nh, align 8, !noalias !30344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !30344
  %i.ni = load i64, ptr %i.di, align 8, !range !16, !alias.scope !30343, !noalias !30345, !noundef !12
  %i.nj = trunc nuw i64 %i.ni to i1
  %i.nk = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  br i1 %i.nj, label %bb.bm, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit659, !prof !18

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cb, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.nk, i64 40, i1 false), !noalias !30345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !30344
  store ptr %i.cc, ptr %i.ca, align 8, !noalias !30344
  %.sroa.42.0..sroa_idx.i657 = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i657, align 8, !noalias !30344
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store ptr %i.cb, ptr %i.nl, align 8, !noalias !30344
  %.sroa.46.0..sroa_idx.i658 = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i658, align 8, !noalias !30344
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !30346
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit659: ; preds = %bb.bl
  %.sroa.01019.0.copyload1020 = load ptr, ptr %i.nk, align 8, !alias.scope !30346, !noalias !30347 ; 2 uses
  %.sroa.6.0..sroa_idx1021 = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %.sroa.6.sroa.0.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx1021, align 8, !alias.scope !30346, !noalias !30347
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx1021.sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %.sroa.6.sroa.5.0.copyload = load ptr, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx1021.sroa_idx, align 8, !alias.scope !30346, !noalias !30347
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx1021.sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %.sroa.6.sroa.6.0.copyload = load ptr, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx1021.sroa_idx, align 8, !alias.scope !30346, !noalias !30347 ; 3 uses
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx1021.sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %.sroa.6.sroa.7.0.copyload = load ptr, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx1021.sroa_idx, align 8, !alias.scope !30346, !noalias !30347
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx1021.sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %.sroa.6.sroa.8.0.copyload = load ptr, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx1021.sroa_idx, align 8, !alias.scope !30346, !noalias !30347 ; 3 uses
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx1021.sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %.sroa.6.sroa.9.0.copyload = load ptr, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx1021.sroa_idx, align 8, !alias.scope !30346, !noalias !30347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !30344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  %.not542 = icmp eq ptr %.sroa.01019.0.copyload1020, null
  br i1 %.not542, label %bb.dq, label %.preheader

.preheader:                                       ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit659
  %.not.i.i.i.i1518 = icmp eq ptr %.sroa.6.sroa.6.0.copyload, null
  %i.nm = icmp eq ptr %.sroa.6.sroa.6.0.copyload, %.sroa.6.sroa.7.0.copyload
  %or.cond.i1519 = select i1 %.not.i.i.i.i1518, i1 true, i1 %i.nm
  br i1 %or.cond.i1519, label %select.unfold.i.i.i, label %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread: ; preds = %bb.bk, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit
  %i.nn = icmp eq i64 %.sroa.0.01227, 4
  br i1 %i.nn, label %bb.bs, label %bb.bp

bb.bn:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit
  %.not.i660.not = icmp eq i64 %i.nf, 1
  br i1 %.not.i660.not, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit746.thread1359, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.no = getelementptr inbounds nuw i8, ptr %i.nd, i64 1 ; 2 uses
  %i.np = load i8, ptr %i.no, align 1, !alias.scope !30348, !noundef !12
  %i.nq = icmp sgt i8 %i.np, -65
  br i1 %i.nq, label %bb.dh, label %bb.dj

bb.bp:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha)
  store i64 0, ptr %i.ha, align 8
  %.sroa.4220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4220.0..sroa_idx, align 8
  %.sroa.5221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store i64 0, ptr %.sroa.5221.0..sroa_idx, align 8
  %i.nr = load ptr, ptr %i.nc, align 8, !nonnull !12, !noundef !12
  %i.ns = load i64, ptr %i.ne, align 8, !noundef !12 ; 16 uses
  %.not.i662 = icmp slt i64 %i.ns, 0
  br i1 %.not.i662, label %bb.bv, label %bb.bq, !prof !27

bb.bq:                                            ; preds = %bb.bp
  %i.nt = icmp eq i64 %i.ns, 0
  br i1 %i.nt, label %.thread1311, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !30349
  %i.nu = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ns, i64 noundef range(i64 1, 9) 1) #45, !noalias !30349 ; 18 uses
  %i.nv = icmp eq ptr %i.nu, null
  br i1 %i.nv, label %bb.bv, label %bb.bw

bb.bs:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gw)
  store i64 0, ptr %i.gw, align 8
  %.sroa.4226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4226.0..sroa_idx, align 8
  %.sroa.5227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store i64 0, ptr %.sroa.5227.0..sroa_idx, align 8
  %i.nw = load ptr, ptr %i.nc, align 8, !nonnull !12, !noundef !12
  %i.nx = load i64, ptr %i.ne, align 8, !noundef !12 ; 16 uses
  %.not.i665 = icmp slt i64 %i.nx, 0
  br i1 %.not.i665, label %bb.co, label %bb.bt, !prof !27

bb.bt:                                            ; preds = %bb.bs
  %i.ny = icmp eq i64 %i.nx, 0
  br i1 %i.ny, label %.thread1333, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !30350
  %i.nz = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.nx, i64 noundef range(i64 1, 9) 1) #45, !noalias !30350 ; 18 uses
  %i.oa = icmp eq ptr %i.nz, null
  br i1 %i.oa, label %bb.co, label %bb.cp

bb.bv:                                            ; preds = %bb.bp, %bb.br
  %.sroa.41158.0.ph = phi i64 [ 1, %bb.br ], [ 0, %bb.bp ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.41158.0.ph, i64 %i.ns) #52
  unreachable

bb.bw:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nu, ptr nonnull align 1 %i.nr, i64 %i.ns, i1 false)
  %cond1453 = icmp eq i64 %i.ns, 1
  %i.ob = load i8, ptr %i.nu, align 1, !alias.scope !30351, !noalias !30352 ; 2 uses
  br i1 %cond1453, label %bb.bx, label %thread-pre-split.i699

bb.bx:                                            ; preds = %bb.bw
  switch i8 %i.ob, label %bb.ce [
    i8 43, label %.thread1311
    i8 45, label %.thread1311
  ]

thread-pre-split.i699:                            ; preds = %bb.bw
  switch i8 %i.ob, label %bb.ce [
    i8 43, label %bb.by
    i8 45, label %bb.bz
  ]

bb.by:                                            ; preds = %thread-pre-split.i699
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nu, i64 1
  %i.od = add nsw i64 %i.ns, -1
  br label %bb.ce

bb.bz:                                            ; preds = %thread-pre-split.i699
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nu, i64 1 ; 2 uses
  %i.of = add nsw i64 %i.ns, -1                   ; 2 uses
  %i.og = icmp samesign ult i64 %i.ns, 17
  br i1 %i.og, label %.lr.ph141.i679, label %.lr.ph.i669

.lr.ph.i669:                                      ; preds = %bb.bz, %bb.cc
  %.sroa.0.1136.i670 = phi ptr [ %i.oh, %bb.cc ], [ %i.oe, %bb.bz ] ; 2 uses
  %.sroa.26.1135.i671 = phi i64 [ %i.oi, %bb.cc ], [ %i.of, %bb.bz ]
  %.sroa.084.0134.i672 = phi i64 [ %i.ot, %bb.cc ], [ 0, %bb.bz ]
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i670, i64 1
  %i.oi = add nsw i64 %.sroa.26.1135.i671, -1     ; 2 uses
  %i.oj = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i672, i64 10) ; 2 uses
  %i.ok = extractvalue { i64, i1 } %i.oj, 0
  %i.ol = extractvalue { i64, i1 } %i.oj, 1
  br i1 %i.ol, label %.thread1311, label %bb.ca, !prof !18

bb.ca:                                            ; preds = %.lr.ph.i669
  %i.om = load i8, ptr %.sroa.0.1136.i670, align 1, !alias.scope !30351, !noalias !30352, !noundef !12
  %i.on = zext i8 %i.om to i32
  %i.oo = add nsw i32 %i.on, -48                  ; 2 uses
  %i.op = icmp ult i32 %i.oo, 10
  br i1 %i.op, label %bb.cb, label %.thread1311

bb.cb:                                            ; preds = %bb.ca
  %i.oq = zext nneg i32 %i.oo to i64
  %i.or = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ok, i64 %i.oq) ; 2 uses
  %i.os = extractvalue { i64, i1 } %i.or, 1
  br i1 %i.os, label %.thread1311, label %bb.cc, !prof !18

bb.cc:                                            ; preds = %bb.cb
  %i.ot = extractvalue { i64, i1 } %i.or, 0       ; 2 uses
  %.not102.i674 = icmp eq i64 %i.oi, 0
  br i1 %.not102.i674, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit701, label %.lr.ph.i669

.lr.ph141.i679:                                   ; preds = %bb.bz, %bb.cd
  %.sroa.0.2140.i680 = phi ptr [ %i.pa, %bb.cd ], [ %i.oe, %bb.bz ] ; 2 uses
  %.sroa.26.2139.i681 = phi i64 [ %i.oz, %bb.cd ], [ %i.of, %bb.bz ]
  %.sroa.084.2138.i682 = phi i64 [ %i.pc, %bb.cd ], [ 0, %bb.bz ]
  %i.ou = load i8, ptr %.sroa.0.2140.i680, align 1, !alias.scope !30351, !noalias !30352, !noundef !12
  %i.ov = zext i8 %i.ou to i32
  %i.ow = add nsw i32 %i.ov, -48                  ; 2 uses
  %i.ox = icmp ult i32 %i.ow, 10
  br i1 %i.ox, label %bb.cd, label %.thread1311

bb.cd:                                            ; preds = %.lr.ph141.i679
  %i.oy = mul i64 %.sroa.084.2138.i682, 10
  %i.oz = add nsw i64 %.sroa.26.2139.i681, -1     ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i680, i64 1
  %i.pb = zext nneg i32 %i.ow to i64
  %i.pc = sub i64 %i.oy, %i.pb                    ; 2 uses
  %.not103.i683 = icmp eq i64 %i.oz, 0
  br i1 %.not103.i683, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit701, label %.lr.ph141.i679

bb.ce:                                            ; preds = %bb.bx, %bb.by, %thread-pre-split.i699
  %.sroa.26.0.i684 = phi i64 [ %i.od, %bb.by ], [ %i.ns, %thread-pre-split.i699 ], [ %i.ns, %bb.bx ] ; 3 uses
  %.sroa.0.0.i685 = phi ptr [ %i.oc, %bb.by ], [ %i.nu, %thread-pre-split.i699 ], [ %i.nu, %bb.bx ] ; 2 uses
  %i.pd = icmp samesign ult i64 %.sroa.26.0.i684, 16
  br i1 %i.pd, label %.lr.ph150.i694, label %.preheader111.i686

.preheader111.i686:                               ; preds = %bb.ce, %bb.ch
  %.sroa.0.3145.i687 = phi ptr [ %i.pe, %bb.ch ], [ %.sroa.0.0.i685, %bb.ce ] ; 2 uses
  %.sroa.26.3144.i688 = phi i64 [ %i.pf, %bb.ch ], [ %.sroa.26.0.i684, %bb.ce ]
  %.sroa.084.3143.i689 = phi i64 [ %i.pq, %bb.ch ], [ 0, %bb.ce ]
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i687, i64 1
  %i.pf = add nsw i64 %.sroa.26.3144.i688, -1     ; 2 uses
  %i.pg = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i689, i64 10) ; 2 uses
  %i.ph = extractvalue { i64, i1 } %i.pg, 0
  %i.pi = extractvalue { i64, i1 } %i.pg, 1
  br i1 %i.pi, label %.thread1311, label %bb.cf, !prof !18

bb.cf:                                            ; preds = %.preheader111.i686
  %i.pj = load i8, ptr %.sroa.0.3145.i687, align 1, !alias.scope !30351, !noalias !30352, !noundef !12
  %i.pk = zext i8 %i.pj to i32
  %i.pl = add nsw i32 %i.pk, -48                  ; 2 uses
  %i.pm = icmp ult i32 %i.pl, 10
  br i1 %i.pm, label %bb.cg, label %.thread1311

bb.cg:                                            ; preds = %bb.cf
  %i.pn = zext nneg i32 %i.pl to i64
  %i.po = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ph, i64 %i.pn) ; 2 uses
  %i.pp = extractvalue { i64, i1 } %i.po, 1
  br i1 %i.pp, label %.thread1311, label %bb.ch, !prof !18

bb.ch:                                            ; preds = %bb.cg
  %i.pq = extractvalue { i64, i1 } %i.po, 0       ; 2 uses
  %.not104.i691 = icmp eq i64 %i.pf, 0
  br i1 %.not104.i691, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit701, label %.preheader111.i686

.lr.ph150.i694:                                   ; preds = %bb.ce, %bb.ci
  %.sroa.0.4149.i695 = phi ptr [ %i.px, %bb.ci ], [ %.sroa.0.0.i685, %bb.ce ] ; 2 uses
  %.sroa.26.4148.i696 = phi i64 [ %i.pw, %bb.ci ], [ %.sroa.26.0.i684, %bb.ce ]
  %.sroa.084.4147.i697 = phi i64 [ %i.pz, %bb.ci ], [ 0, %bb.ce ]
  %i.pr = load i8, ptr %.sroa.0.4149.i695, align 1, !alias.scope !30351, !noalias !30352, !noundef !12
  %i.ps = zext i8 %i.pr to i32
  %i.pt = add nsw i32 %i.ps, -48                  ; 2 uses
  %i.pu = icmp ult i32 %i.pt, 10
  br i1 %i.pu, label %bb.ci, label %.thread1311

bb.ci:                                            ; preds = %.lr.ph150.i694
  %i.pv = mul i64 %.sroa.084.4147.i697, 10
  %i.pw = add nsw i64 %.sroa.26.4148.i696, -1     ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i695, i64 1
  %i.py = zext nneg i32 %i.pt to i64
  %i.pz = add i64 %i.pv, %i.py                    ; 2 uses
  %.not105.i698 = icmp eq i64 %i.pw, 0
  br i1 %.not105.i698, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit701, label %.lr.ph150.i694

.thread1311:                                      ; preds = %.lr.ph.i669, %bb.cb, %bb.ca, %.lr.ph141.i679, %.preheader111.i686, %bb.cf, %bb.cg, %.lr.ph150.i694, %bb.bx, %bb.bx, %bb.bq
  %.ph1319 = phi ptr [ inttoptr (i64 1 to ptr), %bb.bq ], [ %i.nu, %.preheader111.i686 ], [ %i.nu, %.lr.ph150.i694 ], [ %i.nu, %bb.bx ], [ %i.nu, %.lr.ph141.i679 ], [ %i.nu, %bb.bx ], [ %i.nu, %bb.cg ], [ %i.nu, %bb.cf ], [ %i.nu, %bb.ca ], [ %i.nu, %bb.cb ], [ %i.nu, %.lr.ph.i669 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gz)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.gz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1319, i64 noundef %i.ns) #53
  %i.qa = load i8, ptr %i.gz, align 8, !range !21, !noundef !12
  %i.qb = trunc nuw i8 %i.qa to i1
  br i1 %i.qb, label %bb.cl, label %bb.cm

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit701: ; preds = %bb.cc, %bb.cd, %bb.ch, %bb.ci
  %.sroa.151011.0 = phi i64 [ %i.pq, %bb.ch ], [ %i.pc, %bb.cd ], [ %i.pz, %bb.ci ], [ %i.ot, %bb.cc ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ha, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @645, i64 noundef 4, i64 noundef %.sroa.151011.0) #45
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cm, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit701
  %i.qc = phi ptr [ %.ph1319, %bb.cm ], [ %i.nu, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit701 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gx, ptr noundef nonnull align 8 dereferenceable(24) %i.ha, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @650, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.gx) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gx)
  %i.qd = icmp eq i64 %i.ns, 0
  br i1 %i.qd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit704, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qc, i64 noundef %i.ns, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !30353
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit704

bb.cl:                                            ; preds = %.thread1311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gy)
  store i64 %i.ns, ptr %i.gy, align 8
  %.sroa.51006.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store ptr %.ph1319, ptr %.sroa.51006.0..sroa_idx, align 8
  %.sroa.81007.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store i64 %i.ns, ptr %.sroa.81007.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ha, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @645, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.gy) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gx, ptr noundef nonnull align 8 dereferenceable(24) %i.ha, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @650, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.gx) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gx)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit704

bb.cm:                                            ; preds = %.thread1311
  %i.qe = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.qf = load double, ptr %i.qe, align 8, !noundef !12
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ha, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @645, i64 noundef 4, double noundef %i.qf) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gz)
  br label %bb.cj

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit704: ; preds = %bb.ck, %bb.cj, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !30354
  %i.qg = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !30354 ; 4 uses
  %i.qh = icmp eq ptr %i.qg, null
  br i1 %i.qh, label %bb.cn, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit705, !prof !15

bb.cn:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit704
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #52, !noalias !30354
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit705: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qg, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false)
  %.sroa.41162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  store i32 1, ptr %.sroa.41162.0..sroa_idx, align 8
  br label %bb.bg

bb.co:                                            ; preds = %bb.bs, %bb.bu
  %.sroa.41165.0.ph = phi i64 [ 1, %bb.bu ], [ 0, %bb.bs ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.41165.0.ph, i64 %i.nx) #52
  unreachable

bb.cp:                                            ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nz, ptr nonnull align 1 %i.nw, i64 %i.nx, i1 false)
  %cond1452 = icmp eq i64 %i.nx, 1
  %i.qi = load i8, ptr %i.nz, align 1, !alias.scope !30355, !noalias !30356 ; 2 uses
  br i1 %cond1452, label %bb.cq, label %thread-pre-split.i737

bb.cq:                                            ; preds = %bb.cp
  switch i8 %i.qi, label %bb.cx [
    i8 43, label %.thread1333
    i8 45, label %.thread1333
  ]

thread-pre-split.i737:                            ; preds = %bb.cp
  switch i8 %i.qi, label %bb.cx [
    i8 43, label %bb.cr
    i8 45, label %bb.cs
  ]

bb.cr:                                            ; preds = %thread-pre-split.i737
  %i.qj = getelementptr inbounds nuw i8, ptr %i.nz, i64 1
  %i.qk = add nsw i64 %i.nx, -1
  br label %bb.cx

bb.cs:                                            ; preds = %thread-pre-split.i737
  %i.ql = getelementptr inbounds nuw i8, ptr %i.nz, i64 1 ; 2 uses
  %i.qm = add nsw i64 %i.nx, -1                   ; 2 uses
  %i.qn = icmp samesign ult i64 %i.nx, 17
  br i1 %i.qn, label %.lr.ph141.i717, label %.lr.ph.i707

.lr.ph.i707:                                      ; preds = %bb.cs, %bb.cv
  %.sroa.0.1136.i708 = phi ptr [ %i.qo, %bb.cv ], [ %i.ql, %bb.cs ] ; 2 uses
  %.sroa.26.1135.i709 = phi i64 [ %i.qp, %bb.cv ], [ %i.qm, %bb.cs ]
  %.sroa.084.0134.i710 = phi i64 [ %i.ra, %bb.cv ], [ 0, %bb.cs ]
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i708, i64 1
  %i.qp = add nsw i64 %.sroa.26.1135.i709, -1     ; 2 uses
  %i.qq = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i710, i64 10) ; 2 uses
  %i.qr = extractvalue { i64, i1 } %i.qq, 0
  %i.qs = extractvalue { i64, i1 } %i.qq, 1
  br i1 %i.qs, label %.thread1333, label %bb.ct, !prof !18

bb.ct:                                            ; preds = %.lr.ph.i707
  %i.qt = load i8, ptr %.sroa.0.1136.i708, align 1, !alias.scope !30355, !noalias !30356, !noundef !12
  %i.qu = zext i8 %i.qt to i32
  %i.qv = add nsw i32 %i.qu, -48                  ; 2 uses
  %i.qw = icmp ult i32 %i.qv, 10
  br i1 %i.qw, label %bb.cu, label %.thread1333

bb.cu:                                            ; preds = %bb.ct
  %i.qx = zext nneg i32 %i.qv to i64
  %i.qy = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.qr, i64 %i.qx) ; 2 uses
  %i.qz = extractvalue { i64, i1 } %i.qy, 1
  br i1 %i.qz, label %.thread1333, label %bb.cv, !prof !18

bb.cv:                                            ; preds = %bb.cu
  %i.ra = extractvalue { i64, i1 } %i.qy, 0       ; 2 uses
  %.not102.i712 = icmp eq i64 %i.qp, 0
  br i1 %.not102.i712, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit739, label %.lr.ph.i707

.lr.ph141.i717:                                   ; preds = %bb.cs, %bb.cw
  %.sroa.0.2140.i718 = phi ptr [ %i.rh, %bb.cw ], [ %i.ql, %bb.cs ] ; 2 uses
  %.sroa.26.2139.i719 = phi i64 [ %i.rg, %bb.cw ], [ %i.qm, %bb.cs ]
  %.sroa.084.2138.i720 = phi i64 [ %i.rj, %bb.cw ], [ 0, %bb.cs ]
  %i.rb = load i8, ptr %.sroa.0.2140.i718, align 1, !alias.scope !30355, !noalias !30356, !noundef !12
  %i.rc = zext i8 %i.rb to i32
  %i.rd = add nsw i32 %i.rc, -48                  ; 2 uses
  %i.re = icmp ult i32 %i.rd, 10
  br i1 %i.re, label %bb.cw, label %.thread1333

bb.cw:                                            ; preds = %.lr.ph141.i717
  %i.rf = mul i64 %.sroa.084.2138.i720, 10
  %i.rg = add nsw i64 %.sroa.26.2139.i719, -1     ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i718, i64 1
  %i.ri = zext nneg i32 %i.rd to i64
  %i.rj = sub i64 %i.rf, %i.ri                    ; 2 uses
  %.not103.i721 = icmp eq i64 %i.rg, 0
  br i1 %.not103.i721, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit739, label %.lr.ph141.i717

bb.cx:                                            ; preds = %bb.cq, %bb.cr, %thread-pre-split.i737
  %.sroa.26.0.i722 = phi i64 [ %i.qk, %bb.cr ], [ %i.nx, %thread-pre-split.i737 ], [ %i.nx, %bb.cq ] ; 3 uses
  %.sroa.0.0.i723 = phi ptr [ %i.qj, %bb.cr ], [ %i.nz, %thread-pre-split.i737 ], [ %i.nz, %bb.cq ] ; 2 uses
  %i.rk = icmp samesign ult i64 %.sroa.26.0.i722, 16
  br i1 %i.rk, label %.lr.ph150.i732, label %.preheader111.i724

.preheader111.i724:                               ; preds = %bb.cx, %bb.da
  %.sroa.0.3145.i725 = phi ptr [ %i.rl, %bb.da ], [ %.sroa.0.0.i723, %bb.cx ] ; 2 uses
  %.sroa.26.3144.i726 = phi i64 [ %i.rm, %bb.da ], [ %.sroa.26.0.i722, %bb.cx ]
  %.sroa.084.3143.i727 = phi i64 [ %i.rx, %bb.da ], [ 0, %bb.cx ]
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i725, i64 1
  %i.rm = add nsw i64 %.sroa.26.3144.i726, -1     ; 2 uses
  %i.rn = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i727, i64 10) ; 2 uses
  %i.ro = extractvalue { i64, i1 } %i.rn, 0
  %i.rp = extractvalue { i64, i1 } %i.rn, 1
  br i1 %i.rp, label %.thread1333, label %bb.cy, !prof !18

bb.cy:                                            ; preds = %.preheader111.i724
  %i.rq = load i8, ptr %.sroa.0.3145.i725, align 1, !alias.scope !30355, !noalias !30356, !noundef !12
  %i.rr = zext i8 %i.rq to i32
  %i.rs = add nsw i32 %i.rr, -48                  ; 2 uses
  %i.rt = icmp ult i32 %i.rs, 10
  br i1 %i.rt, label %bb.cz, label %.thread1333

bb.cz:                                            ; preds = %bb.cy
  %i.ru = zext nneg i32 %i.rs to i64
  %i.rv = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ro, i64 %i.ru) ; 2 uses
  %i.rw = extractvalue { i64, i1 } %i.rv, 1
  br i1 %i.rw, label %.thread1333, label %bb.da, !prof !18

bb.da:                                            ; preds = %bb.cz
  %i.rx = extractvalue { i64, i1 } %i.rv, 0       ; 2 uses
  %.not104.i729 = icmp eq i64 %i.rm, 0
  br i1 %.not104.i729, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit739, label %.preheader111.i724

.lr.ph150.i732:                                   ; preds = %bb.cx, %bb.db
  %.sroa.0.4149.i733 = phi ptr [ %i.se, %bb.db ], [ %.sroa.0.0.i723, %bb.cx ] ; 2 uses
  %.sroa.26.4148.i734 = phi i64 [ %i.sd, %bb.db ], [ %.sroa.26.0.i722, %bb.cx ]
  %.sroa.084.4147.i735 = phi i64 [ %i.sg, %bb.db ], [ 0, %bb.cx ]
  %i.ry = load i8, ptr %.sroa.0.4149.i733, align 1, !alias.scope !30355, !noalias !30356, !noundef !12
  %i.rz = zext i8 %i.ry to i32
  %i.sa = add nsw i32 %i.rz, -48                  ; 2 uses
  %i.sb = icmp ult i32 %i.sa, 10
  br i1 %i.sb, label %bb.db, label %.thread1333

bb.db:                                            ; preds = %.lr.ph150.i732
  %i.sc = mul i64 %.sroa.084.4147.i735, 10
  %i.sd = add nsw i64 %.sroa.26.4148.i734, -1     ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i733, i64 1
  %i.sf = zext nneg i32 %i.sa to i64
  %i.sg = add i64 %i.sc, %i.sf                    ; 2 uses
  %.not105.i736 = icmp eq i64 %i.sd, 0
  br i1 %.not105.i736, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit739, label %.lr.ph150.i732

.thread1333:                                      ; preds = %.lr.ph.i707, %bb.cu, %bb.ct, %.lr.ph141.i717, %.preheader111.i724, %bb.cy, %bb.cz, %.lr.ph150.i732, %bb.cq, %bb.cq, %bb.bt
  %.ph1341 = phi ptr [ inttoptr (i64 1 to ptr), %bb.bt ], [ %i.nz, %.preheader111.i724 ], [ %i.nz, %.lr.ph150.i732 ], [ %i.nz, %bb.cq ], [ %i.nz, %.lr.ph141.i717 ], [ %i.nz, %bb.cq ], [ %i.nz, %bb.cz ], [ %i.nz, %bb.cy ], [ %i.nz, %bb.ct ], [ %i.nz, %bb.cu ], [ %i.nz, %.lr.ph.i707 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gv)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.gv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1341, i64 noundef %i.nx) #53
  %i.sh = load i8, ptr %i.gv, align 8, !range !21, !noundef !12
  %i.si = trunc nuw i8 %i.sh to i1
  br i1 %i.si, label %bb.de, label %bb.df

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit739: ; preds = %bb.cv, %bb.cw, %bb.da, %bb.db
  %.sroa.151018.0 = phi i64 [ %i.rx, %bb.da ], [ %i.rj, %bb.cw ], [ %i.sg, %bb.db ], [ %i.ra, %bb.cv ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 3, i64 noundef %.sroa.151018.0) #45
  br label %bb.dc

bb.dc:                                            ; preds = %bb.df, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit739
  %i.sj = phi ptr [ %.ph1341, %bb.df ], [ %i.nz, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit739 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gt)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gt, ptr noundef nonnull align 8 dereferenceable(24) %i.gw, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @651, i64 noundef 30, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.gt) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gt)
  %i.sk = icmp eq i64 %i.nx, 0
  br i1 %i.sk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit742, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.sj, i64 noundef %i.nx, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !30357
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit742

bb.de:                                            ; preds = %.thread1333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gu)
  store i64 %i.nx, ptr %i.gu, align 8
  %.sroa.51013.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store ptr %.ph1341, ptr %.sroa.51013.0..sroa_idx, align 8
  %.sroa.81014.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store i64 %i.nx, ptr %.sroa.81014.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.gu) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gt)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gt, ptr noundef nonnull align 8 dereferenceable(24) %i.gw, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @651, i64 noundef 30, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.gt) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gt)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit742

bb.df:                                            ; preds = %.thread1333
  %i.sl = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.sm = load double, ptr %i.sl, align 8, !noundef !12
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 3, double noundef %i.sm) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gv)
  br label %bb.dc

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit742: ; preds = %bb.dd, %bb.dc, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gw)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !30358
  %i.sn = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !30358 ; 4 uses
  %i.so = icmp eq ptr %i.sn, null
  br i1 %i.so, label %bb.dg, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit743, !prof !15

bb.dg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit742
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #52, !noalias !30358
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit743: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sn, ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i64 24, i1 false)
  %.sroa.41169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sn, i64 24
  store i32 1, ptr %.sroa.41169.0..sroa_idx, align 8
  br label %bb.bg

bb.dh:                                            ; preds = %bb.bo
  %i.sp = add i64 %i.nf, -1                       ; 6 uses
  %.not.i744 = icmp slt i64 %i.sp, 0
  br i1 %.not.i744, label %bb.dk, label %bb.di, !prof !30359

bb.di:                                            ; preds = %bb.dh
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !30360
  %i.sq = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.sp, i64 noundef range(i64 1, 9) 1) #45, !noalias !30360 ; 3 uses
  %i.sr = icmp eq ptr %i.sq, null
  br i1 %i.sr, label %bb.dk, label %bb.dl

bb.dj:                                            ; preds = %bb.bo
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.nd, i64 noundef %i.nf, i64 noundef 1, i64 noundef %i.nf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @652) #50
  unreachable

bb.dk:                                            ; preds = %bb.dh, %bb.di
  %.sroa.41172.0.ph = phi i64 [ 1, %bb.di ], [ 0, %bb.dh ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.41172.0.ph, i64 %i.sp) #52
  unreachable

bb.dl:                                            ; preds = %bb.di
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sq, ptr nonnull align 1 %i.no, i64 %i.sp, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit746.thread1359

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit746.thread1359: ; preds = %bb.bn, %bb.du, %bb.dq, %bb.dl, %bb.dt, %_RNCINvNvCsiibOIv6tv3q_7uu_date6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEEs_0Csl8pJiQOn4hA_9coreutils.exit
  %.sroa.12.0 = phi ptr [ %i.sq, %bb.dl ], [ undef, %bb.du ], [ undef, %bb.dq ], [ %i.tr, %bb.dt ], [ %i.th, %_RNCINvNvCsiibOIv6tv3q_7uu_date6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEEs_0Csl8pJiQOn4hA_9coreutils.exit ], [ inttoptr (i64 1 to ptr), %bb.bn ] ; 3 uses
  %.sroa.16.0 = phi i64 [ %i.sp, %bb.dl ], [ undef, %bb.du ], [ undef, %bb.dq ], [ undef, %bb.dt ], [ undef, %_RNCINvNvCsiibOIv6tv3q_7uu_date6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEEs_0Csl8pJiQOn4hA_9coreutils.exit ], [ 0, %bb.bn ]
  %.sroa.01000.0 = phi i64 [ %i.sp, %bb.dl ], [ %spec.select1455, %bb.du ], [ -9223372036854775807, %bb.dq ], [ -9223372036854775806, %bb.dt ], [ -9223372036854775808, %_RNCINvNvCsiibOIv6tv3q_7uu_date6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEEs_0Csl8pJiQOn4hA_9coreutils.exit ], [ 0, %bb.bn ] ; 4 uses
  %i.ss = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.hj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @656, i64 noundef 9) #45 ; 3 uses
  %i.st = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.hj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @248, i64 noundef 5) #45 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gs)
  br i1 %i.ss, label %bb.eh, label %bb.dv

select.unfold.i.i.i:                              ; preds = %.preheader, %bb.dm
  %i.su = phi ptr [ %i.sw, %bb.dm ], [ %.sroa.6.sroa.0.0.copyload, %.preheader ] ; 5 uses
  %.not.i5.i.i.i = icmp eq ptr %i.su, null
  %i.sv = icmp eq ptr %i.su, %.sroa.6.sroa.5.0.copyload
  %or.cond.i.i.i.i = select i1 %.not.i5.i.i.i, i1 true, i1 %i.sv
  br i1 %or.cond.i.i.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %select.unfold.i.i.i
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 24
  %i.sx = getelementptr i8, ptr %i.su, i64 16
  %.val4.i.i.i = load i64, ptr %i.sx, align 8, !noalias !30361, !noundef !12
  %i.sy = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.sy, label %select.unfold.i.i.i, label %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit

bb.dn:                                            ; preds = %select.unfold.i.i.i
  %.not.i7.i.i.i = icmp eq ptr %.sroa.6.sroa.8.0.copyload, null
  %i.sz = icmp eq ptr %.sroa.6.sroa.8.0.copyload, %.sroa.6.sroa.9.0.copyload
  %or.cond29.i = select i1 %.not.i7.i.i.i, i1 true, i1 %i.sz
  br i1 %or.cond29.i, label %_RNvXs9_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i, label %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i

_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit: ; preds = %bb.dm
  %i.ta = getelementptr i8, ptr %i.su, i64 8
  %.val.i.i.i748 = load ptr, ptr %i.ta, align 8, !noalias !30361, !nonnull !12, !noundef !12
  br label %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i

_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit, %.preheader, %bb.dn
  %.sroa.0.0.i.i.i = phi ptr [ %.sroa.6.sroa.8.0.copyload, %bb.dn ], [ %.sroa.6.sroa.6.0.copyload, %.preheader ], [ %.val.i.i.i748, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit ]
  %i.tb = call noundef nonnull align 8 ptr %.sroa.01019.0.copyload1020(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i) #45, !noalias !30362, !inline_history !29852
  br label %_RNvXs9_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i

_RNvXs9_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i, %bb.dn
  %.sroa.0.0.i.i = phi ptr [ %i.tb, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ null, %bb.dn ] ; 3 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !30363
  %i.tc = call noundef dereferenceable_or_null(4) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 4, i64 noundef range(i64 1, 9) 1) #45, !noalias !30363 ; 4 uses
  %i.td = icmp eq ptr %i.tc, null
  br i1 %i.td, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %_RNvXs9_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 4) #52, !noalias !30364
  unreachable

bb.dp:                                            ; preds = %_RNvXs9_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i
  store i32 1702125924, ptr %i.tc, align 1, !noalias !30364
  %.not.i747 = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not.i747, label %_RNCINvNvCsiibOIv6tv3q_7uu_date6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEEs_0Csl8pJiQOn4hA_9coreutils.exit, label %.else.i

.else.i:                                          ; preds = %bb.dp
  %.sroa.0.0.i.sroa.gep7.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %.else.val12.i = load ptr, ptr %.sroa.0.0.i.sroa.gep7.i, align 8, !noalias !30364, !nonnull !12, !noundef !12
  %.sroa.0.0.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  %.else.val.i = load i64, ptr %.sroa.0.0.i.sroa.gep.i, align 8, !noalias !30364, !noundef !12
  br label %_RNCINvNvCsiibOIv6tv3q_7uu_date6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEEs_0Csl8pJiQOn4hA_9coreutils.exit

_RNCINvNvCsiibOIv6tv3q_7uu_date6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEEs_0Csl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.dp, %.else.i
  %i.te = phi ptr [ %.else.val12.i, %.else.i ], [ %i.tc, %bb.dp ]
  %i.tf = phi i64 [ %.else.val.i, %.else.i ], [ 4, %bb.dp ]
  %i.tg = call noundef i8 @_RNvXs_CsiibOIv6tv3q_7uu_dateNtB4_13Iso8601FormatINtNtCs6JMX4GRUq9U_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.te, i64 noundef %i.tf) #45, !noalias !30364
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tc, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !30365
  %.sroa.12.0.insert.ext = zext nneg i8 %i.tg to i64
  %i.th = inttoptr i64 %.sroa.12.0.insert.ext to ptr
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit746.thread1359

bb.dq:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit659
  %i.ti = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.hj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @654, i64 noundef 9) #45
  br i1 %i.ti, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit746.thread1359, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.dh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.hj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @655, i64 noundef 8) #45
  call void @llvm.experimental.noalias.scope.decl(metadata !30366)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  store ptr @655, ptr %i.bz, align 8, !noalias !30367
  %i.tj = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 8, ptr %i.tj, align 8, !noalias !30367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !30367
  %i.tk = load i64, ptr %i.dh, align 8, !range !26, !alias.scope !30366, !noalias !30368, !noundef !12
  %.not.i749 = icmp eq i64 %i.tk, 2
  br i1 %.not.i749, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit752, label %bb.ds, !prof !11

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.by, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.dh, i64 40, i1 false), !noalias !30368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !30367
  store ptr %i.bz, ptr %i.bx, align 8, !noalias !30367
  %.sroa.42.0..sroa_idx.i750 = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i750, align 8, !noalias !30367
  %i.tl = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.by, ptr %i.tl, align 8, !noalias !30367
  %.sroa.46.0..sroa_idx.i751 = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i751, align 8, !noalias !30367
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.bx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !30366
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit752: ; preds = %bb.dr
  %i.tm = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.tn = load ptr, ptr %i.tm, align 8, !alias.scope !30366, !noalias !30368, !align !23, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !30367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  %.not543 = icmp eq ptr %i.tn, null
  br i1 %.not543, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit752
  %i.to = getelementptr i8, ptr %i.tn, i64 8
  %.val590 = load ptr, ptr %i.to, align 8, !nonnull !12, !noundef !12
  %i.tp = getelementptr i8, ptr %i.tn, i64 16
  %.val591 = load i64, ptr %i.tp, align 8, !noundef !12
  %i.tq = call noundef range(i8 0, 3) i8 @_RNvXs0_CsiibOIv6tv3q_7uu_dateNtB5_13Rfc3339FormatINtNtCs6JMX4GRUq9U_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val590, i64 noundef %.val591) #45
  %.sroa.12.0.insert.ext1002 = zext nneg i8 %i.tq to i64
  %i.tr = inttoptr i64 %.sroa.12.0.insert.ext1002 to ptr
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit746.thread1359

end_hunk_4
begin_hunk_5_@_RINvNvCsiibOIv6tv3q_7uu_date6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  %i.axa = icmp ult ptr %i.awx, inttoptr (i64 188978561024 to ptr)
  %i.axb = and i64 %i.awy, 1095216660480
  %i.axc = icmp ne i64 %i.axb, 1095216660480
  call void @llvm.assume(i1 %i.axa)
  call void @llvm.assume(i1 %i.axc)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i929

bb.rf:                                            ; preds = %bb.rd
  %i.axd = getelementptr i8, ptr %i.awx, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.axd) ]
  store ptr %i.axd, ptr %i.ajw, align 8, !alias.scope !30571, !noalias !30570
  store i8 3, ptr %i.d, align 8, !alias.scope !30571, !noalias !30570
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ajw) #45, !noalias !30572
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i929

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i929: ; preds = %bb.rf, %bb.re, %bb.rd, %bb.rd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !30570
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread

bb.rg:                                            ; preds = %bb.rb
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @319, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #50
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread: ; preds = %bb.rc, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !30569
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit934

bb.rh:                                            ; preds = %bb.rb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !30569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !30573
  %i.axe = ptrtoint ptr %i.awx to i64             ; 2 uses
  %i.axf = and i64 %i.axe, 3
  switch i64 %i.axf, label %default.unreachable1715 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i932
    i64 3, label %bb.ri
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i932
    i64 1, label %bb.rj
  ], !prof !22

bb.ri:                                            ; preds = %bb.rh
  %i.axg = icmp ult ptr %i.awx, inttoptr (i64 188978561024 to ptr)
  %i.axh = and i64 %i.axe, 1095216660480
  %i.axi = icmp ne i64 %i.axh, 1095216660480
  call void @llvm.assume(i1 %i.axg)
  call void @llvm.assume(i1 %i.axi)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i932

bb.rj:                                            ; preds = %bb.rh
  %i.axj = getelementptr i8, ptr %i.awx, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.axj) ]
  store ptr %i.axj, ptr %i.ajx, align 8, !alias.scope !30574, !noalias !30573
  store i8 3, ptr %i.c, align 8, !alias.scope !30574, !noalias !30573
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ajx) #45, !noalias !30573
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i932

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i932: ; preds = %bb.rj, %bb.ri, %bb.rh, %bb.rh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30573
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit934

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit934: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  %.val583 = load ptr, ptr %i.dv, align 8, !nonnull !12, !align !23, !noundef !12 ; 3 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %.val583, i64 12 ; 2 uses
  %i.axl = load i32, ptr %i.axk, align 4, !noundef !12
  %i.axm = add i32 %i.axl, -1                     ; 2 uses
  store i32 %i.axm, ptr %i.axk, align 4
  %i.axn = icmp eq i32 %i.axm, 0
  br i1 %i.axn, label %bb.rk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit

bb.rk:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit934
  store atomic i64 0, ptr %.val583 monotonic, align 8
  %i.axo = getelementptr inbounds nuw i8, ptr %.val583, i64 8 ; 2 uses
  %i.axp = atomicrmw xchg ptr %i.axo, i32 0 release, align 4
  %i.axq = icmp eq i32 %i.axp, 2
  br i1 %i.axq, label %bb.rl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit, !prof !18

bb.rl:                                            ; preds = %bb.rk
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.axo) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit934, %bb.rk, %bb.rl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  call void @llvm.experimental.noalias.scope.decl(metadata !30575)
  %i.axr = load ptr, ptr %i.ajs, align 8, !alias.scope !30575, !nonnull !12, !align !23, !noundef !12 ; 3 uses
  %i.axs = load ptr, ptr %i.axr, align 8, !invariant.load !12, !noalias !30575 ; 2 uses
  %.not.i935 = icmp eq ptr %i.axs, null
  br i1 %.not.i935, label %bb.rn, label %bb.rm

bb.rm:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit
  %i.axt = load ptr, ptr %i.ea, align 8, !alias.scope !30575, !nonnull !12, !noundef !12
  call void %i.axs(ptr noundef nonnull %i.axt) #51, !noalias !30575, !inline_history !24
  br label %bb.rn

bb.rn:                                            ; preds = %bb.rm, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axr, i64 8
  %i.axv = load i64, ptr %i.axu, align 8, !range !19, !invariant.load !12, !noalias !30575 ; 2 uses
  %i.axw = icmp eq i64 %i.axv, 0
  br i1 %i.axw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i936

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i936: ; preds = %bb.rn
  %.val.i = load ptr, ptr %i.ea, align 8, !alias.scope !30575, !nonnull !12, !noundef !12
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axr, i64 16
  %i.axy = load i64, ptr %i.axx, align 8, !range !25, !invariant.load !12, !noalias !30575
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.axv, i64 noundef range(i64 1, -9223372036854775807) %i.axy) #45, !noalias !30575
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.rn, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  %i.axz = icmp eq i64 %.sroa.6147.sroa.5.0.copyload, 0
  br i1 %i.axz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit939, label %bb.ro

bb.ro:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aqw, i64 noundef %.sroa.6147.sroa.5.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !30576
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit939

bb.rp:                                            ; preds = %bb.jk, %bb.jm
  %.sroa.41194.0.ph = phi i64 [ 1, %bb.jm ], [ 0, %bb.jk ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.41194.0.ph, i64 %i.age) #52
  unreachable

bb.rq:                                            ; preds = %bb.jm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.agg, ptr nonnull align 1 %i.agd, i64 %i.age, i1 false)
  %cond1451 = icmp eq i64 %i.age, 1
  %i.aya = load i8, ptr %i.agg, align 1, !alias.scope !30577, !noalias !30578 ; 2 uses
  br i1 %cond1451, label %bb.rr, label %thread-pre-split.i971

bb.rr:                                            ; preds = %bb.rq
  switch i8 %i.aya, label %bb.ry [
    i8 43, label %.thread1435
    i8 45, label %.thread1435
  ]

thread-pre-split.i971:                            ; preds = %bb.rq
  switch i8 %i.aya, label %bb.ry [
    i8 43, label %bb.rs
    i8 45, label %bb.rt
  ]

bb.rs:                                            ; preds = %thread-pre-split.i971
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.agg, i64 1
  %i.ayc = add nsw i64 %i.age, -1
  br label %bb.ry

bb.rt:                                            ; preds = %thread-pre-split.i971
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.agg, i64 1 ; 2 uses
  %i.aye = add nsw i64 %i.age, -1                 ; 2 uses
  %i.ayf = icmp samesign ult i64 %i.age, 17
  br i1 %i.ayf, label %.lr.ph141.i951, label %.lr.ph.i941

.lr.ph.i941:                                      ; preds = %bb.rt, %bb.rw
  %.sroa.0.1136.i942 = phi ptr [ %i.ayg, %bb.rw ], [ %i.ayd, %bb.rt ] ; 2 uses
  %.sroa.26.1135.i943 = phi i64 [ %i.ayh, %bb.rw ], [ %i.aye, %bb.rt ]
  %.sroa.084.0134.i944 = phi i64 [ %i.ays, %bb.rw ], [ 0, %bb.rt ]
  %i.ayg = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i942, i64 1
  %i.ayh = add nsw i64 %.sroa.26.1135.i943, -1    ; 2 uses
  %i.ayi = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i944, i64 10) ; 2 uses
  %i.ayj = extractvalue { i64, i1 } %i.ayi, 0
  %i.ayk = extractvalue { i64, i1 } %i.ayi, 1
  br i1 %i.ayk, label %.thread1435, label %bb.ru, !prof !18

bb.ru:                                            ; preds = %.lr.ph.i941
  %i.ayl = load i8, ptr %.sroa.0.1136.i942, align 1, !alias.scope !30577, !noalias !30578, !noundef !12
  %i.aym = zext i8 %i.ayl to i32
  %i.ayn = add nsw i32 %i.aym, -48                ; 2 uses
  %i.ayo = icmp ult i32 %i.ayn, 10
  br i1 %i.ayo, label %bb.rv, label %.thread1435

bb.rv:                                            ; preds = %bb.ru
  %i.ayp = zext nneg i32 %i.ayn to i64
  %i.ayq = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ayj, i64 %i.ayp) ; 2 uses
  %i.ayr = extractvalue { i64, i1 } %i.ayq, 1
  br i1 %i.ayr, label %.thread1435, label %bb.rw, !prof !18

bb.rw:                                            ; preds = %bb.rv
  %i.ays = extractvalue { i64, i1 } %i.ayq, 0     ; 2 uses
  %.not102.i946 = icmp eq i64 %i.ayh, 0
  br i1 %.not102.i946, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit973, label %.lr.ph.i941

.lr.ph141.i951:                                   ; preds = %bb.rt, %bb.rx
  %.sroa.0.2140.i952 = phi ptr [ %i.ayz, %bb.rx ], [ %i.ayd, %bb.rt ] ; 2 uses
  %.sroa.26.2139.i953 = phi i64 [ %i.ayy, %bb.rx ], [ %i.aye, %bb.rt ]
  %.sroa.084.2138.i954 = phi i64 [ %i.azb, %bb.rx ], [ 0, %bb.rt ]
  %i.ayt = load i8, ptr %.sroa.0.2140.i952, align 1, !alias.scope !30577, !noalias !30578, !noundef !12
  %i.ayu = zext i8 %i.ayt to i32
  %i.ayv = add nsw i32 %i.ayu, -48                ; 2 uses
  %i.ayw = icmp ult i32 %i.ayv, 10
  br i1 %i.ayw, label %bb.rx, label %.thread1435

bb.rx:                                            ; preds = %.lr.ph141.i951
  %i.ayx = mul i64 %.sroa.084.2138.i954, 10
  %i.ayy = add nsw i64 %.sroa.26.2139.i953, -1    ; 2 uses
  %i.ayz = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i952, i64 1
  %i.aza = zext nneg i32 %i.ayv to i64
  %i.azb = sub i64 %i.ayx, %i.aza                 ; 2 uses
  %.not103.i955 = icmp eq i64 %i.ayy, 0
  br i1 %.not103.i955, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit973, label %.lr.ph141.i951

bb.ry:                                            ; preds = %bb.rr, %bb.rs, %thread-pre-split.i971
  %.sroa.26.0.i956 = phi i64 [ %i.ayc, %bb.rs ], [ %i.age, %thread-pre-split.i971 ], [ %i.age, %bb.rr ] ; 3 uses
  %.sroa.0.0.i957 = phi ptr [ %i.ayb, %bb.rs ], [ %i.agg, %thread-pre-split.i971 ], [ %i.agg, %bb.rr ] ; 2 uses
  %i.azc = icmp samesign ult i64 %.sroa.26.0.i956, 16
  br i1 %i.azc, label %.lr.ph150.i966, label %.preheader111.i958

.preheader111.i958:                               ; preds = %bb.ry, %bb.sb
  %.sroa.0.3145.i959 = phi ptr [ %i.azd, %bb.sb ], [ %.sroa.0.0.i957, %bb.ry ] ; 2 uses
  %.sroa.26.3144.i960 = phi i64 [ %i.aze, %bb.sb ], [ %.sroa.26.0.i956, %bb.ry ]
  %.sroa.084.3143.i961 = phi i64 [ %i.azp, %bb.sb ], [ 0, %bb.ry ]
  %i.azd = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i959, i64 1
  %i.aze = add nsw i64 %.sroa.26.3144.i960, -1    ; 2 uses
  %i.azf = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i961, i64 10) ; 2 uses
  %i.azg = extractvalue { i64, i1 } %i.azf, 0
  %i.azh = extractvalue { i64, i1 } %i.azf, 1
  br i1 %i.azh, label %.thread1435, label %bb.rz, !prof !18

bb.rz:                                            ; preds = %.preheader111.i958
  %i.azi = load i8, ptr %.sroa.0.3145.i959, align 1, !alias.scope !30577, !noalias !30578, !noundef !12
  %i.azj = zext i8 %i.azi to i32
  %i.azk = add nsw i32 %i.azj, -48                ; 2 uses
  %i.azl = icmp ult i32 %i.azk, 10
  br i1 %i.azl, label %bb.sa, label %.thread1435

bb.sa:                                            ; preds = %bb.rz
  %i.azm = zext nneg i32 %i.azk to i64
  %i.azn = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.azg, i64 %i.azm) ; 2 uses
  %i.azo = extractvalue { i64, i1 } %i.azn, 1
  br i1 %i.azo, label %.thread1435, label %bb.sb, !prof !18

bb.sb:                                            ; preds = %bb.sa
  %i.azp = extractvalue { i64, i1 } %i.azn, 0     ; 2 uses
  %.not104.i963 = icmp eq i64 %i.aze, 0
  br i1 %.not104.i963, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit973, label %.preheader111.i958

.lr.ph150.i966:                                   ; preds = %bb.ry, %bb.sc
  %.sroa.0.4149.i967 = phi ptr [ %i.azw, %bb.sc ], [ %.sroa.0.0.i957, %bb.ry ] ; 2 uses
  %.sroa.26.4148.i968 = phi i64 [ %i.azv, %bb.sc ], [ %.sroa.26.0.i956, %bb.ry ]
  %.sroa.084.4147.i969 = phi i64 [ %i.azy, %bb.sc ], [ 0, %bb.ry ]
  %i.azq = load i8, ptr %.sroa.0.4149.i967, align 1, !alias.scope !30577, !noalias !30578, !noundef !12
  %i.azr = zext i8 %i.azq to i32
  %i.azs = add nsw i32 %i.azr, -48                ; 2 uses
  %i.azt = icmp ult i32 %i.azs, 10
  br i1 %i.azt, label %bb.sc, label %.thread1435

bb.sc:                                            ; preds = %.lr.ph150.i966
  %i.azu = mul i64 %.sroa.084.4147.i969, 10
  %i.azv = add nsw i64 %.sroa.26.4148.i968, -1    ; 2 uses
  %i.azw = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i967, i64 1
  %i.azx = zext nneg i32 %i.azs to i64
  %i.azy = add i64 %i.azu, %i.azx                 ; 2 uses
  %.not105.i970 = icmp eq i64 %i.azv, 0
  br i1 %.not105.i970, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit973, label %.lr.ph150.i966

.thread1435:                                      ; preds = %.lr.ph.i941, %bb.rv, %bb.ru, %.lr.ph141.i951, %.preheader111.i958, %bb.rz, %bb.sa, %.lr.ph150.i966, %bb.rr, %bb.rr, %bb.jl
  %.ph1443 = phi ptr [ inttoptr (i64 1 to ptr), %bb.jl ], [ %i.agg, %.preheader111.i958 ], [ %i.agg, %.lr.ph150.i966 ], [ %i.agg, %bb.rr ], [ %i.agg, %.lr.ph141.i951 ], [ %i.agg, %bb.rr ], [ %i.agg, %bb.sa ], [ %i.agg, %bb.rz ], [ %i.agg, %bb.ru ], [ %i.agg, %bb.rv ], [ %i.agg, %.lr.ph.i941 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gq)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.gq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1443, i64 noundef %i.age) #53
  %i.azz = load i8, ptr %i.gq, align 8, !range !21, !noundef !12
  %i.baa = trunc nuw i8 %i.azz to i1
  br i1 %i.baa, label %bb.sf, label %bb.sg

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit973: ; preds = %bb.rw, %bb.rx, %bb.sb, %bb.sc
  %.sroa.151042.0 = phi i64 [ %i.azp, %bb.sb ], [ %i.azb, %bb.rx ], [ %i.azy, %bb.sc ], [ %i.ays, %bb.rw ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @645, i64 noundef 4, i64 noundef %.sroa.151042.0) #45
  br label %bb.sd

bb.sd:                                            ; preds = %bb.sg, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit973
  %i.bab = phi ptr [ %.ph1443, %bb.sg ], [ %i.agg, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit973 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.go)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.go, ptr noundef nonnull align 8 dereferenceable(24) %i.gr, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.de, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @650, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.go) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.go)
  %i.bac = icmp eq i64 %i.age, 0
  br i1 %i.bac, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit976, label %bb.se

bb.se:                                            ; preds = %bb.sd
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bab, i64 noundef %i.age, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !30579
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit976

bb.sf:                                            ; preds = %.thread1435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gp)
  store i64 %i.age, ptr %i.gp, align 8
  %.sroa.51037.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store ptr %.ph1443, ptr %.sroa.51037.0..sroa_idx, align 8
  %.sroa.81038.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store i64 %i.age, ptr %.sroa.81038.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @645, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.gp) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.go)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.go, ptr noundef nonnull align 8 dereferenceable(24) %i.gr, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.de, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @650, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.go) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.go)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit976

bb.sg:                                            ; preds = %.thread1435
  %i.bad = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.bae = load double, ptr %i.bad, align 8, !noundef !12
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @645, i64 noundef 4, double noundef %i.bae) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gq)
  br label %bb.sd

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit976: ; preds = %bb.se, %bb.sd, %bb.sf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gr)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !30580
  %i.baf = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !30580 ; 5 uses
  %i.bag = icmp eq ptr %i.baf, null
  br i1 %i.bag, label %bb.sh, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit977, !prof !15

bb.sh:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit976
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #52, !noalias !30580
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit977: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.baf, ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 24, i1 false)
  %.sroa.41198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.baf, i64 24
  store i32 1, ptr %.sroa.41198.0..sroa_idx, align 8
  %i.bah = icmp ne i64 %.sroa.14.1, 0
  %or.cond1461.not = select i1 %i.afu, i1 %i.bah, i1 false
  br i1 %or.cond1461.not, label %bb.si, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs65h624QUiyW_14parse_datetime14ParsedDateTimeTNtNtCs7tKScEop1B6_5alloc6string6StringNtBZ_18ParseDateTimeErrorEEECsl8pJiQOn4hA_9coreutils.exit984

bb.si:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit977
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.19.1) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.19.1, i64 noundef %.sroa.14.1, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !30581
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs65h624QUiyW_14parse_datetime14ParsedDateTimeTNtNtCs7tKScEop1B6_5alloc6string6StringNtBZ_18ParseDateTimeErrorEEECsl8pJiQOn4hA_9coreutils.exit984

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs65h624QUiyW_14parse_datetime14ParsedDateTimeTNtNtCs7tKScEop1B6_5alloc6string6StringNtBZ_18ParseDateTimeErrorEEECsl8pJiQOn4hA_9coreutils.exit984: ; preds = %bb.si, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit977
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27)
  %i.bai = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %.val601 = load ptr, ptr %i.bai, align 8, !noundef !12 ; 3 uses
  %i.baj = ptrtoint ptr %.val601 to i64
  %i.bak = and i64 %i.baj, 7
  switch i64 %i.bak, label %bb.sj [
    i64 1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5zoned5ZonedECsl8pJiQOn4hA_9coreutils.exit987
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5zoned5ZonedECsl8pJiQOn4hA_9coreutils.exit987
    i64 3, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5zoned5ZonedECsl8pJiQOn4hA_9coreutils.exit987
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5zoned5ZonedECsl8pJiQOn4hA_9coreutils.exit987
    i64 4, label %bb.sk
    i64 5, label %bb.sm
  ]

bb.sj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs65h624QUiyW_14parse_datetime14ParsedDateTimeTNtNtCs7tKScEop1B6_5alloc6string6StringNtBZ_18ParseDateTimeErrorEEECsl8pJiQOn4hA_9coreutils.exit984
  unreachable

bb.sk:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs65h624QUiyW_14parse_datetime14ParsedDateTimeTNtNtCs7tKScEop1B6_5alloc6string6StringNtBZ_18ParseDateTimeErrorEEECsl8pJiQOn4hA_9coreutils.exit984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bal = getelementptr i8, ptr %.val601, i64 -20 ; 2 uses
  store ptr %i.bal, ptr %i.b, align 8
  %i.bam = atomicrmw sub ptr %i.bal, i64 1 release, align 8, !noalias !30582
  %i.ban = icmp eq i64 %i.bam, 1
  br i1 %i.ban, label %bb.sl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i986

bb.sl:                                            ; preds = %bb.sk
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCs3JjgEOiFeOI_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #53
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i986

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i986: ; preds = %bb.sl, %bb.sk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5zoned5ZonedECsl8pJiQOn4hA_9coreutils.exit987

bb.sm:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs65h624QUiyW_14parse_datetime14ParsedDateTimeTNtNtCs7tKScEop1B6_5alloc6string6StringNtBZ_18ParseDateTimeErrorEEECsl8pJiQOn4hA_9coreutils.exit984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bao = getelementptr i8, ptr %.val601, i64 -21 ; 2 uses
  store ptr %i.bao, ptr %i.a, align 8
  %i.bap = atomicrmw sub ptr %i.bao, i64 1 release, align 8, !noalias !30583
  %i.baq = icmp eq i64 %i.bap, 1
  br i1 %i.baq, label %bb.sn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i985

bb.sn:                                            ; preds = %bb.sm
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneE9drop_slowCs3JjgEOiFeOI_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #53
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i985

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i985: ; preds = %bb.sn, %bb.sm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5zoned5ZonedECsl8pJiQOn4hA_9coreutils.exit987

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5zoned5ZonedECsl8pJiQOn4hA_9coreutils.exit987: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs65h624QUiyW_14parse_datetime14ParsedDateTimeTNtNtCs7tKScEop1B6_5alloc6string6StringNtBZ_18ParseDateTimeErrorEEECsl8pJiQOn4hA_9coreutils.exit984, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs65h624QUiyW_14parse_datetime14ParsedDateTimeTNtNtCs7tKScEop1B6_5alloc6string6StringNtBZ_18ParseDateTimeErrorEEECsl8pJiQOn4hA_9coreutils.exit984, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs65h624QUiyW_14parse_datetime14ParsedDateTimeTNtNtCs7tKScEop1B6_5alloc6string6StringNtBZ_18ParseDateTimeErrorEEECsl8pJiQOn4hA_9coreutils.exit984, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs65h624QUiyW_14parse_datetime14ParsedDateTimeTNtNtCs7tKScEop1B6_5alloc6string6StringNtBZ_18ParseDateTimeErrorEEECsl8pJiQOn4hA_9coreutils.exit984, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i986, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gs)
  %or.cond.i988 = icmp slt i64 %.sroa.01000.0, 1
  br i1 %or.cond.i988, label %bb.bg, label %bb.so

bb.so:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5zoned5ZonedECsl8pJiQOn4hA_9coreutils.exit987
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.01000.0, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !30584
  br label %bb.bg
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 49) %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30587)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !19, !alias.scope !30587, !noundef !12 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !30587
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !30587
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 65) %4) #45, !noalias !30587
  %i.h = load i64, ptr %i.a, align 8, !range !16, !noalias !30587, !noundef !12
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !17, !noalias !30587, !noundef !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !30587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !30587
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #52
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !30587, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !30587
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !30587
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !30587
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_B1i_INtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCINvNvCsiibOIv6tv3q_7uu_date6uumain6uumainINtNtNtNtBL_4iter8adapters5chain5ChainINtNtNtB2B_3vec9into_iter8IntoIterNtNtNtB1m_3ffi6os_str8OsStringEINtNtB4r_6cloned6ClonedINtNtNtBL_5slice4iter4IterB5w_EEEEs6_0ECsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %1, ptr %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 4 uses
  %i.e = load i32, ptr %1, align 8, !range !31, !noundef !12
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !12, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !30595
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  store i64 1, ptr %i.d, align 8, !noalias !30595
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.8.val, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !30595
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.16.val, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !30595
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 0, ptr %i.i, align 8, !noalias !30595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !30596
end_hunk_5
