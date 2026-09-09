Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_env-45a487b3da3a2ebc.uu_env.2eeaa69494824df3-cgu.0?download=true
inline.NumInlined: 1366
inline.NumDeleted: 752
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvCs41JD7yXDh97_6uu_env12block_signal:bb.a
  %.sroa.26.2139.i = phi i64 [ %i.la, %bb.cm ], [ %i.kg, %.preheader114.i ]
  %.sroa.084.2138.i = phi i64 [ %i.ld, %bb.cm ], [ 0, %.preheader114.i ]
  %i.kv = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !421, !noalias !422, !noundef !5
  %i.kw = zext i8 %i.kv to i32
  %i.kx = add nsw i32 %i.kw, -48                  ; 2 uses
  %i.ky = icmp ult i32 %i.kx, 10
  br i1 %i.ky, label %bb.cm, label %.loopexit

bb.cm:                                            ; preds = %.lr.ph141.i
  %i.kz = mul i64 %.sroa.084.2138.i, 10
  %i.la = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.lc = zext nneg i32 %i.kx to i64
  %i.ld = sub i64 %i.kz, %i.lc                    ; 2 uses
  %.not103.i = icmp eq i64 %i.la, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.cn:                                            ; preds = %bb.ch, %bb.cg
  %.sroa.26.0.i = phi i64 [ %i.ke, %bb.ch ], [ %i.ka, %bb.cg ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.kd, %bb.ch ], [ %i.jy, %bb.cg ] ; 2 uses
  %i.le = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.le, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.cn
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.cn, %bb.cq
  %.sroa.0.3145.i = phi ptr [ %i.lf, %bb.cq ], [ %.sroa.0.0.i, %bb.cn ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.lg, %bb.cq ], [ %.sroa.26.0.i, %bb.cn ]
  %.sroa.084.3143.i = phi i64 [ %i.lr, %bb.cq ], [ 0, %bb.cn ]
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.lg = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.lh = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.li = extractvalue { i64, i1 } %i.lh, 0
  %i.lj = extractvalue { i64, i1 } %i.lh, 1
  br i1 %i.lj, label %.loopexit, label %bb.co, !prof !10

bb.co:                                            ; preds = %.preheader111.i
  %i.lk = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !421, !noalias !422, !noundef !5
  %i.ll = zext i8 %i.lk to i32
  %i.lm = add nsw i32 %i.ll, -48                  ; 2 uses
  %i.ln = icmp ult i32 %i.lm, 10
  br i1 %i.ln, label %bb.cp, label %.loopexit

bb.cp:                                            ; preds = %bb.co
  %i.lo = zext nneg i32 %i.lm to i64
  %i.lp = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.li, i64 %i.lo) ; 2 uses
  %i.lq = extractvalue { i64, i1 } %i.lp, 1
  br i1 %i.lq, label %.loopexit, label %bb.cq, !prof !10

bb.cq:                                            ; preds = %bb.cp
  %i.lr = extractvalue { i64, i1 } %i.lp, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.lg, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.cr
  %.sroa.0.4149.i = phi ptr [ %i.ly, %bb.cr ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.lx, %bb.cr ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.ma, %bb.cr ], [ 0, %.preheader.i ]
  %i.ls = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !421, !noalias !422, !noundef !5
  %i.lt = zext i8 %i.ls to i32
  %i.lu = add nsw i32 %i.lt, -48                  ; 2 uses
  %i.lv = icmp ult i32 %i.lu, 10
  br i1 %i.lv, label %bb.cr, label %.loopexit

bb.cr:                                            ; preds = %.lr.ph150.i
  %i.lw = mul i64 %.sroa.084.4147.i, 10
  %i.lx = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.lz = zext nneg i32 %i.lu to i64
  %i.ma = add i64 %i.lw, %i.lz                    ; 2 uses
  %.not105.i = icmp eq i64 %i.lx, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.loopexit:                                        ; preds = %.lr.ph.i, %bb.ck, %bb.cj, %.lr.ph141.i, %.preheader111.i, %bb.co, %bb.cp, %.lr.ph150.i, %bb.ce, %bb.cf, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jy, i64 noundef %i.ka) #27
  %i.mb = load i8, ptr %i.u, align 8, !range !16, !noundef !5
  %i.mc = trunc nuw i8 %i.mb to i1
  br i1 %i.mc, label %bb.cu, label %bb.cv

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.cl, %bb.cm, %bb.cq, %bb.cr, %.preheader.i, %.preheader114.i
  %.sroa.1563.0 = phi i64 [ %i.ma, %bb.cr ], [ %i.ld, %bb.cm ], [ %i.lr, %bb.cq ], [ 0, %.preheader.i ], [ 0, %.preheader114.i ], [ %i.ku, %bb.cl ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 6, i64 noundef %.sroa.1563.0) #26
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cv, %bb.cu, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %.sroa.011.0 = phi i1 [ false, %bb.cu ], [ true, %bb.cv ], [ true, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  %i.md = call { ptr, i64 } @_RNvMNtCsqsXNUdQJE7_3nix5errnoNtNtB2_6consts5Errno4desc(i32 noundef %i.jw) #26 ; 2 uses
  %i.me = extractvalue { ptr, i64 } %i.md, 0
  %i.mf = extractvalue { ptr, i64 } %i.md, 1      ; 16 uses
  %.not.i = icmp slt i64 %i.mf, 0
  br i1 %.not.i, label %bb.cw, label %bb.ct, !prof !17

bb.ct:                                            ; preds = %bb.cs
  %i.mg = icmp eq i64 %i.mf, 0
  br i1 %i.mg, label %.thread, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.ct
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !423
  %i.mh = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.mf, i64 noundef range(i64 1, 9) 1) #26, !noalias !423 ; 18 uses
  %i.mi = icmp eq ptr %i.mh, null
  br i1 %i.mi, label %bb.cw, label %bb.cx

bb.cu:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 6, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.t) #26
  br label %bb.cs

bb.cv:                                            ; preds = %.loopexit
  %i.mj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.mk = load double, ptr %i.mj, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 6, double noundef %i.mk) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.cs

bb.cw:                                            ; preds = %bb.cs, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.075.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.cs ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.075.ph, i64 %i.mf) #30
  unreachable

bb.cx:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mh, ptr align 1 %i.me, i64 %i.mf, i1 false)
  %cond = icmp eq i64 %i.mf, 1
  %i.ml = load i8, ptr %i.mh, align 1, !alias.scope !424, !noalias !425 ; 2 uses
  br i1 %cond, label %bb.cy, label %thread-pre-split.i54

bb.cy:                                            ; preds = %bb.cx
  switch i8 %i.ml, label %bb.df [
    i8 43, label %.thread
    i8 45, label %.thread
  ]

thread-pre-split.i54:                             ; preds = %bb.cx
  switch i8 %i.ml, label %bb.df [
    i8 43, label %bb.cz
    i8 45, label %bb.da
  ]

bb.cz:                                            ; preds = %thread-pre-split.i54
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mh, i64 1
  %i.mn = add nsw i64 %i.mf, -1
  br label %bb.df

bb.da:                                            ; preds = %thread-pre-split.i54
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mh, i64 1 ; 2 uses
  %i.mp = add nsw i64 %i.mf, -1                   ; 2 uses
  %i.mq = icmp samesign ult i64 %i.mf, 17
  br i1 %i.mq, label %.lr.ph141.i34, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %bb.da, %bb.dd
  %.sroa.0.1136.i25 = phi ptr [ %i.mr, %bb.dd ], [ %i.mo, %bb.da ] ; 2 uses
  %.sroa.26.1135.i26 = phi i64 [ %i.ms, %bb.dd ], [ %i.mp, %bb.da ]
  %.sroa.084.0134.i27 = phi i64 [ %i.nd, %bb.dd ], [ 0, %bb.da ]
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i25, i64 1
  %i.ms = add nsw i64 %.sroa.26.1135.i26, -1      ; 2 uses
  %i.mt = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i27, i64 10) ; 2 uses
  %i.mu = extractvalue { i64, i1 } %i.mt, 0
  %i.mv = extractvalue { i64, i1 } %i.mt, 1
  br i1 %i.mv, label %.thread, label %bb.db, !prof !10

bb.db:                                            ; preds = %.lr.ph.i24
  %i.mw = load i8, ptr %.sroa.0.1136.i25, align 1, !alias.scope !424, !noalias !425, !noundef !5
  %i.mx = zext i8 %i.mw to i32
  %i.my = add nsw i32 %i.mx, -48                  ; 2 uses
  %i.mz = icmp ult i32 %i.my, 10
  br i1 %i.mz, label %bb.dc, label %.thread

bb.dc:                                            ; preds = %bb.db
  %i.na = zext nneg i32 %i.my to i64
  %i.nb = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.mu, i64 %i.na) ; 2 uses
  %i.nc = extractvalue { i64, i1 } %i.nb, 1
  br i1 %i.nc, label %.thread, label %bb.dd, !prof !10

bb.dd:                                            ; preds = %bb.dc
  %i.nd = extractvalue { i64, i1 } %i.nb, 0       ; 2 uses
  %.not102.i29 = icmp eq i64 %i.ms, 0
  br i1 %.not102.i29, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit56, label %.lr.ph.i24

.lr.ph141.i34:                                    ; preds = %bb.da, %bb.de
  %.sroa.0.2140.i35 = phi ptr [ %i.nk, %bb.de ], [ %i.mo, %bb.da ] ; 2 uses
  %.sroa.26.2139.i36 = phi i64 [ %i.nj, %bb.de ], [ %i.mp, %bb.da ]
  %.sroa.084.2138.i37 = phi i64 [ %i.nm, %bb.de ], [ 0, %bb.da ]
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
  %.sroa.26.0.i39 = phi i64 [ %i.mn, %bb.cz ], [ %i.mf, %thread-pre-split.i54 ], [ %i.mf, %bb.cy ] ; 3 uses
  %.sroa.0.0.i40 = phi ptr [ %i.mm, %bb.cz ], [ %i.mh, %thread-pre-split.i54 ], [ %i.mh, %bb.cy ] ; 2 uses
  %i.nn = icmp samesign ult i64 %.sroa.26.0.i39, 16
  br i1 %i.nn, label %.lr.ph150.i49, label %.preheader111.i41

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

.lr.ph150.i49:                                    ; preds = %bb.df, %bb.dj
  %.sroa.0.4149.i50 = phi ptr [ %i.oh, %bb.dj ], [ %.sroa.0.0.i40, %bb.df ] ; 2 uses
  %.sroa.26.4148.i51 = phi i64 [ %i.og, %bb.dj ], [ %.sroa.26.0.i39, %bb.df ]
  %.sroa.084.4147.i52 = phi i64 [ %i.oj, %bb.dj ], [ 0, %bb.df ]
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

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit56: ; preds = %bb.dd, %bb.de, %bb.di, %bb.dj
  %.sroa.1569.0 = phi i64 [ %i.oa, %bb.di ], [ %i.nm, %bb.de ], [ %i.oj, %bb.dj ], [ %i.nd, %bb.dd ]
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
end_hunk_0
begin_hunk_1_@_RNvCs41JD7yXDh97_6uu_env12reset_signal:bb.a
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
  %i.bs = extractvalue { ptr, i64 } %i.br, 0
  %i.bt = extractvalue { ptr, i64 } %i.br, 1      ; 16 uses
  %.not.i = icmp slt i64 %i.bt, 0
  br i1 %.not.i, label %bb.t, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.thread, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.q
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !580
  %i.bv = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bt, i64 noundef range(i64 1, 9) 1) #26, !noalias !580 ; 18 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.t, label %bb.u

bb.r:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 6, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e) #26
  br label %bb.p

bb.s:                                             ; preds = %.loopexit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.by = load double, ptr %i.bx, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 6, double noundef %i.by) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.t:                                             ; preds = %bb.p, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.p ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.bt) #30
  unreachable

bb.u:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr align 1 %i.bs, i64 %i.bt, i1 false)
  %cond = icmp eq i64 %i.bt, 1
  %i.bz = load i8, ptr %i.bv, align 1, !alias.scope !581, !noalias !582 ; 2 uses
  br i1 %cond, label %bb.v, label %thread-pre-split.i37

bb.v:                                             ; preds = %bb.u
  switch i8 %i.bz, label %bb.ac [
    i8 43, label %.thread
    i8 45, label %.thread
  ]

thread-pre-split.i37:                             ; preds = %bb.u
  switch i8 %i.bz, label %bb.ac [
    i8 43, label %bb.w
    i8 45, label %bb.x
  ]

bb.w:                                             ; preds = %thread-pre-split.i37
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.cb = add nsw i64 %i.bt, -1
  br label %bb.ac

bb.x:                                             ; preds = %thread-pre-split.i37
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 2 uses
  %i.cd = add nsw i64 %i.bt, -1                   ; 2 uses
  %i.ce = icmp samesign ult i64 %i.bt, 17
  br i1 %i.ce, label %.lr.ph141.i17, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %bb.x, %bb.aa
  %.sroa.0.1136.i8 = phi ptr [ %i.cf, %bb.aa ], [ %i.cc, %bb.x ] ; 2 uses
  %.sroa.26.1135.i9 = phi i64 [ %i.cg, %bb.aa ], [ %i.cd, %bb.x ]
  %.sroa.084.0134.i10 = phi i64 [ %i.cr, %bb.aa ], [ 0, %bb.x ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i8, i64 1
  %i.cg = add nsw i64 %.sroa.26.1135.i9, -1       ; 2 uses
  %i.ch = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i10, i64 10) ; 2 uses
  %i.ci = extractvalue { i64, i1 } %i.ch, 0
  %i.cj = extractvalue { i64, i1 } %i.ch, 1
  br i1 %i.cj, label %.thread, label %bb.y, !prof !10

bb.y:                                             ; preds = %.lr.ph.i7
  %i.ck = load i8, ptr %.sroa.0.1136.i8, align 1, !alias.scope !581, !noalias !582, !noundef !5
  %i.cl = zext i8 %i.ck to i32
  %i.cm = add nsw i32 %i.cl, -48                  ; 2 uses
  %i.cn = icmp ult i32 %i.cm, 10
  br i1 %i.cn, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.co = zext nneg i32 %i.cm to i64
  %i.cp = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ci, i64 %i.co) ; 2 uses
  %i.cq = extractvalue { i64, i1 } %i.cp, 1
  br i1 %i.cq, label %.thread, label %bb.aa, !prof !10

bb.aa:                                            ; preds = %bb.z
  %i.cr = extractvalue { i64, i1 } %i.cp, 0       ; 2 uses
  %.not102.i12 = icmp eq i64 %i.cg, 0
  br i1 %.not102.i12, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit39, label %.lr.ph.i7

.lr.ph141.i17:                                    ; preds = %bb.x, %bb.ab
  %.sroa.0.2140.i18 = phi ptr [ %i.cy, %bb.ab ], [ %i.cc, %bb.x ] ; 2 uses
  %.sroa.26.2139.i19 = phi i64 [ %i.cx, %bb.ab ], [ %i.cd, %bb.x ]
  %.sroa.084.2138.i20 = phi i64 [ %i.da, %bb.ab ], [ 0, %bb.x ]
  %i.cs = load i8, ptr %.sroa.0.2140.i18, align 1, !alias.scope !581, !noalias !582, !noundef !5
  %i.ct = zext i8 %i.cs to i32
  %i.cu = add nsw i32 %i.ct, -48                  ; 2 uses
  %i.cv = icmp ult i32 %i.cu, 10
  br i1 %i.cv, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %.lr.ph141.i17
  %i.cw = mul i64 %.sroa.084.2138.i20, 10
  %i.cx = add nsw i64 %.sroa.26.2139.i19, -1      ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i18, i64 1
  %i.cz = zext nneg i32 %i.cu to i64
  %i.da = sub i64 %i.cw, %i.cz                    ; 2 uses
  %.not103.i21 = icmp eq i64 %i.cx, 0
  br i1 %.not103.i21, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit39, label %.lr.ph141.i17

bb.ac:                                            ; preds = %bb.v, %bb.w, %thread-pre-split.i37
  %.sroa.26.0.i22 = phi i64 [ %i.cb, %bb.w ], [ %i.bt, %thread-pre-split.i37 ], [ %i.bt, %bb.v ] ; 3 uses
  %.sroa.0.0.i23 = phi ptr [ %i.ca, %bb.w ], [ %i.bv, %thread-pre-split.i37 ], [ %i.bv, %bb.v ] ; 2 uses
  %i.db = icmp samesign ult i64 %.sroa.26.0.i22, 16
  br i1 %i.db, label %.lr.ph150.i32, label %.preheader111.i24

.preheader111.i24:                                ; preds = %bb.ac, %bb.af
  %.sroa.0.3145.i25 = phi ptr [ %i.dc, %bb.af ], [ %.sroa.0.0.i23, %bb.ac ] ; 2 uses
  %.sroa.26.3144.i26 = phi i64 [ %i.dd, %bb.af ], [ %.sroa.26.0.i22, %bb.ac ]
  %.sroa.084.3143.i27 = phi i64 [ %i.do, %bb.af ], [ 0, %bb.ac ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i25, i64 1
  %i.dd = add nsw i64 %.sroa.26.3144.i26, -1      ; 2 uses
  %i.de = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i27, i64 10) ; 2 uses
  %i.df = extractvalue { i64, i1 } %i.de, 0
  %i.dg = extractvalue { i64, i1 } %i.de, 1
  br i1 %i.dg, label %.thread, label %bb.ad, !prof !10

bb.ad:                                            ; preds = %.preheader111.i24
  %i.dh = load i8, ptr %.sroa.0.3145.i25, align 1, !alias.scope !581, !noalias !582, !noundef !5
  %i.di = zext i8 %i.dh to i32
  %i.dj = add nsw i32 %i.di, -48                  ; 2 uses
  %i.dk = icmp ult i32 %i.dj, 10
  br i1 %i.dk, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.dl = zext nneg i32 %i.dj to i64
  %i.dm = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.df, i64 %i.dl) ; 2 uses
  %i.dn = extractvalue { i64, i1 } %i.dm, 1
  br i1 %i.dn, label %.thread, label %bb.af, !prof !10

bb.af:                                            ; preds = %bb.ae
  %i.do = extractvalue { i64, i1 } %i.dm, 0       ; 2 uses
  %.not104.i29 = icmp eq i64 %i.dd, 0
  br i1 %.not104.i29, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit39, label %.preheader111.i24

.lr.ph150.i32:                                    ; preds = %bb.ac, %bb.ag
  %.sroa.0.4149.i33 = phi ptr [ %i.dv, %bb.ag ], [ %.sroa.0.0.i23, %bb.ac ] ; 2 uses
  %.sroa.26.4148.i34 = phi i64 [ %i.du, %bb.ag ], [ %.sroa.26.0.i22, %bb.ac ]
  %.sroa.084.4147.i35 = phi i64 [ %i.dx, %bb.ag ], [ 0, %bb.ac ]
  %i.dp = load i8, ptr %.sroa.0.4149.i33, align 1, !alias.scope !581, !noalias !582, !noundef !5
  %i.dq = zext i8 %i.dp to i32
  %i.dr = add nsw i32 %i.dq, -48                  ; 2 uses
  %i.ds = icmp ult i32 %i.dr, 10
  br i1 %i.ds, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %.lr.ph150.i32
  %i.dt = mul i64 %.sroa.084.4147.i35, 10
  %i.du = add nsw i64 %.sroa.26.4148.i34, -1      ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i33, i64 1
  %i.dw = zext nneg i32 %i.dr to i64
  %i.dx = add i64 %i.dt, %i.dw                    ; 2 uses
  %.not105.i36 = icmp eq i64 %i.du, 0
  br i1 %.not105.i36, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit39, label %.lr.ph150.i32

.thread:                                          ; preds = %.lr.ph.i7, %bb.z, %bb.y, %.lr.ph141.i17, %.preheader111.i24, %bb.ad, %bb.ae, %.lr.ph150.i32, %bb.v, %bb.v, %bb.q
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.q ], [ %i.bv, %.preheader111.i24 ], [ %i.bv, %.lr.ph150.i32 ], [ %i.bv, %bb.v ], [ %i.bv, %.lr.ph141.i17 ], [ %i.bv, %bb.v ], [ %i.bv, %bb.ae ], [ %i.bv, %bb.ad ], [ %i.bv, %bb.y ], [ %i.bv, %bb.z ], [ %i.bv, %.lr.ph.i7 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.bt) #27
  %i.dy = load i8, ptr %i.d, align 8, !range !16, !noundef !5
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.aj, label %bb.ak

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit39: ; preds = %bb.aa, %bb.ab, %bb.af, %bb.ag
  %.sroa.1552.0 = phi i64 [ %i.do, %bb.af ], [ %i.da, %bb.ab ], [ %i.dx, %bb.ag ], [ %i.cr, %bb.aa ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 5, i64 noundef %.sroa.1552.0) #26
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ak, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit39
  %i.ea = phi ptr [ %.ph, %bb.ak ], [ %i.bv, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit39 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 34, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.eb = icmp eq i64 %i.bt, 0
  br i1 %i.eb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ea, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !583
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit

bb.aj:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.bt, ptr %i.c, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.ph, ptr %.sroa.548.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.bt, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 34, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit

bb.ak:                                            ; preds = %.thread
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ed = load double, ptr %i.ec, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 5, double noundef %i.ed) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ah

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit: ; preds = %bb.ai, %bb.ah, %bb.aj
  br i1 %.sroa.01.0, label %bb.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit42

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit42: ; preds = %bb.an, %bb.am, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !584
  %i.ee = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #26, !noalias !584 ; 4 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.al, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !10

bb.al:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit42
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #30, !noalias !584
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store i32 125, ptr %.sroa.456.0..sroa_idx, align 8
  br label %_RINvMNtCsqsXNUdQJE7_3nix5errnoNtNtB3_6consts5Errno6resultjECs41JD7yXDh97_6uu_env.exit

bb.am:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit
  %.val.i40 = load i64, ptr %i.e, align 8, !range !6, !noundef !5 ; 2 uses
  %i.eg = icmp eq i64 %.val.i40, 0
  br i1 %i.eg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit42, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %.val.i40, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !585
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit42

_RINvMNtCsqsXNUdQJE7_3nix5errnoNtNtB3_6consts5Errno6resultjECs41JD7yXDh97_6uu_env.exit: ; preds = %bb.a, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  %.sroa.0.0 = phi ptr [ %i.ee, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ null, %bb.a ]
  %i.eh = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.ei = insertvalue { ptr, ptr } %i.eh, ptr @35, 1
  ret { ptr, ptr } %i.ei
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvCs41JD7yXDh97_6uu_env13ignore_signal(i64 noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  %i.h = trunc i64 %0 to i32                      ; 2 uses
  %i.i = tail call noundef i64 @signal(i32 noundef %i.h, i64 noundef 1) #26
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %bb.b, label %_RINvMNtCsqsXNUdQJE7_3nix5errnoNtNtB3_6consts5Errno6resultjECs41JD7yXDh97_6uu_env.exit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef i32 @_RNvMNtCsqsXNUdQJE7_3nix5errnoNtNtB2_6consts5Errno4last() #26, !noalias !602
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
  %i.p = load i8, ptr %i.m, align 1, !alias.scope !603, !noalias !604, !noundef !5 ; 2 uses
  switch i8 %i.p, label %bb.d [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.b
  %.pr.i = load i8, ptr %i.m, align 1, !alias.scope !603, !noalias !604
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
  %i.ab = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !603, !noalias !604, !noundef !5
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
  %i.aj = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !603, !noalias !604, !noundef !5
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
  %i.ay = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !603, !noalias !604, !noundef !5
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
  %i.bg = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !603, !noalias !604, !noundef !5
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
  %i.bs = extractvalue { ptr, i64 } %i.br, 0
  %i.bt = extractvalue { ptr, i64 } %i.br, 1      ; 16 uses
  %.not.i = icmp slt i64 %i.bt, 0
  br i1 %.not.i, label %bb.t, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.thread, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.q
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !605
  %i.bv = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bt, i64 noundef range(i64 1, 9) 1) #26, !noalias !605 ; 18 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.t, label %bb.u

bb.r:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 6, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e) #26
  br label %bb.p

bb.s:                                             ; preds = %.loopexit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.by = load double, ptr %i.bx, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 6, double noundef %i.by) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.t:                                             ; preds = %bb.p, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.p ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.bt) #30
  unreachable

bb.u:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr align 1 %i.bs, i64 %i.bt, i1 false)
  %cond = icmp eq i64 %i.bt, 1
  %i.bz = load i8, ptr %i.bv, align 1, !alias.scope !606, !noalias !607 ; 2 uses
  br i1 %cond, label %bb.v, label %thread-pre-split.i37

bb.v:                                             ; preds = %bb.u
  switch i8 %i.bz, label %bb.ac [
    i8 43, label %.thread
    i8 45, label %.thread
  ]

thread-pre-split.i37:                             ; preds = %bb.u
  switch i8 %i.bz, label %bb.ac [
    i8 43, label %bb.w
    i8 45, label %bb.x
  ]

bb.w:                                             ; preds = %thread-pre-split.i37
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.cb = add nsw i64 %i.bt, -1
  br label %bb.ac

bb.x:                                             ; preds = %thread-pre-split.i37
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 2 uses
  %i.cd = add nsw i64 %i.bt, -1                   ; 2 uses
  %i.ce = icmp samesign ult i64 %i.bt, 17
  br i1 %i.ce, label %.lr.ph141.i17, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %bb.x, %bb.aa
  %.sroa.0.1136.i8 = phi ptr [ %i.cf, %bb.aa ], [ %i.cc, %bb.x ] ; 2 uses
  %.sroa.26.1135.i9 = phi i64 [ %i.cg, %bb.aa ], [ %i.cd, %bb.x ]
  %.sroa.084.0134.i10 = phi i64 [ %i.cr, %bb.aa ], [ 0, %bb.x ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i8, i64 1
  %i.cg = add nsw i64 %.sroa.26.1135.i9, -1       ; 2 uses
  %i.ch = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i10, i64 10) ; 2 uses
  %i.ci = extractvalue { i64, i1 } %i.ch, 0
  %i.cj = extractvalue { i64, i1 } %i.ch, 1
  br i1 %i.cj, label %.thread, label %bb.y, !prof !10

bb.y:                                             ; preds = %.lr.ph.i7
  %i.ck = load i8, ptr %.sroa.0.1136.i8, align 1, !alias.scope !606, !noalias !607, !noundef !5
  %i.cl = zext i8 %i.ck to i32
  %i.cm = add nsw i32 %i.cl, -48                  ; 2 uses
  %i.cn = icmp ult i32 %i.cm, 10
  br i1 %i.cn, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.co = zext nneg i32 %i.cm to i64
  %i.cp = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ci, i64 %i.co) ; 2 uses
  %i.cq = extractvalue { i64, i1 } %i.cp, 1
  br i1 %i.cq, label %.thread, label %bb.aa, !prof !10

bb.aa:                                            ; preds = %bb.z
  %i.cr = extractvalue { i64, i1 } %i.cp, 0       ; 2 uses
  %.not102.i12 = icmp eq i64 %i.cg, 0
  br i1 %.not102.i12, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit39, label %.lr.ph.i7

.lr.ph141.i17:                                    ; preds = %bb.x, %bb.ab
  %.sroa.0.2140.i18 = phi ptr [ %i.cy, %bb.ab ], [ %i.cc, %bb.x ] ; 2 uses
  %.sroa.26.2139.i19 = phi i64 [ %i.cx, %bb.ab ], [ %i.cd, %bb.x ]
  %.sroa.084.2138.i20 = phi i64 [ %i.da, %bb.ab ], [ 0, %bb.x ]
  %i.cs = load i8, ptr %.sroa.0.2140.i18, align 1, !alias.scope !606, !noalias !607, !noundef !5
  %i.ct = zext i8 %i.cs to i32
  %i.cu = add nsw i32 %i.ct, -48                  ; 2 uses
  %i.cv = icmp ult i32 %i.cu, 10
  br i1 %i.cv, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %.lr.ph141.i17
  %i.cw = mul i64 %.sroa.084.2138.i20, 10
  %i.cx = add nsw i64 %.sroa.26.2139.i19, -1      ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i18, i64 1
  %i.cz = zext nneg i32 %i.cu to i64
  %i.da = sub i64 %i.cw, %i.cz                    ; 2 uses
  %.not103.i21 = icmp eq i64 %i.cx, 0
  br i1 %.not103.i21, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit39, label %.lr.ph141.i17

bb.ac:                                            ; preds = %bb.v, %bb.w, %thread-pre-split.i37
  %.sroa.26.0.i22 = phi i64 [ %i.cb, %bb.w ], [ %i.bt, %thread-pre-split.i37 ], [ %i.bt, %bb.v ] ; 3 uses
  %.sroa.0.0.i23 = phi ptr [ %i.ca, %bb.w ], [ %i.bv, %thread-pre-split.i37 ], [ %i.bv, %bb.v ] ; 2 uses
  %i.db = icmp samesign ult i64 %.sroa.26.0.i22, 16
  br i1 %i.db, label %.lr.ph150.i32, label %.preheader111.i24

.preheader111.i24:                                ; preds = %bb.ac, %bb.af
  %.sroa.0.3145.i25 = phi ptr [ %i.dc, %bb.af ], [ %.sroa.0.0.i23, %bb.ac ] ; 2 uses
  %.sroa.26.3144.i26 = phi i64 [ %i.dd, %bb.af ], [ %.sroa.26.0.i22, %bb.ac ]
  %.sroa.084.3143.i27 = phi i64 [ %i.do, %bb.af ], [ 0, %bb.ac ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i25, i64 1
  %i.dd = add nsw i64 %.sroa.26.3144.i26, -1      ; 2 uses
  %i.de = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i27, i64 10) ; 2 uses
  %i.df = extractvalue { i64, i1 } %i.de, 0
  %i.dg = extractvalue { i64, i1 } %i.de, 1
  br i1 %i.dg, label %.thread, label %bb.ad, !prof !10

bb.ad:                                            ; preds = %.preheader111.i24
  %i.dh = load i8, ptr %.sroa.0.3145.i25, align 1, !alias.scope !606, !noalias !607, !noundef !5
  %i.di = zext i8 %i.dh to i32
  %i.dj = add nsw i32 %i.di, -48                  ; 2 uses
  %i.dk = icmp ult i32 %i.dj, 10
  br i1 %i.dk, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.dl = zext nneg i32 %i.dj to i64
  %i.dm = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.df, i64 %i.dl) ; 2 uses
  %i.dn = extractvalue { i64, i1 } %i.dm, 1
  br i1 %i.dn, label %.thread, label %bb.af, !prof !10

bb.af:                                            ; preds = %bb.ae
  %i.do = extractvalue { i64, i1 } %i.dm, 0       ; 2 uses
  %.not104.i29 = icmp eq i64 %i.dd, 0
  br i1 %.not104.i29, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit39, label %.preheader111.i24

.lr.ph150.i32:                                    ; preds = %bb.ac, %bb.ag
  %.sroa.0.4149.i33 = phi ptr [ %i.dv, %bb.ag ], [ %.sroa.0.0.i23, %bb.ac ] ; 2 uses
  %.sroa.26.4148.i34 = phi i64 [ %i.du, %bb.ag ], [ %.sroa.26.0.i22, %bb.ac ]
  %.sroa.084.4147.i35 = phi i64 [ %i.dx, %bb.ag ], [ 0, %bb.ac ]
  %i.dp = load i8, ptr %.sroa.0.4149.i33, align 1, !alias.scope !606, !noalias !607, !noundef !5
  %i.dq = zext i8 %i.dp to i32
  %i.dr = add nsw i32 %i.dq, -48                  ; 2 uses
  %i.ds = icmp ult i32 %i.dr, 10
  br i1 %i.ds, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %.lr.ph150.i32
  %i.dt = mul i64 %.sroa.084.4147.i35, 10
  %i.du = add nsw i64 %.sroa.26.4148.i34, -1      ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i33, i64 1
  %i.dw = zext nneg i32 %i.dr to i64
  %i.dx = add i64 %i.dt, %i.dw                    ; 2 uses
  %.not105.i36 = icmp eq i64 %i.du, 0
  br i1 %.not105.i36, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit39, label %.lr.ph150.i32

.thread:                                          ; preds = %.lr.ph.i7, %bb.z, %bb.y, %.lr.ph141.i17, %.preheader111.i24, %bb.ad, %bb.ae, %.lr.ph150.i32, %bb.v, %bb.v, %bb.q
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.q ], [ %i.bv, %.preheader111.i24 ], [ %i.bv, %.lr.ph150.i32 ], [ %i.bv, %bb.v ], [ %i.bv, %.lr.ph141.i17 ], [ %i.bv, %bb.v ], [ %i.bv, %bb.ae ], [ %i.bv, %bb.ad ], [ %i.bv, %bb.y ], [ %i.bv, %bb.z ], [ %i.bv, %.lr.ph.i7 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.bt) #27
  %i.dy = load i8, ptr %i.d, align 8, !range !16, !noundef !5
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.aj, label %bb.ak

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit39: ; preds = %bb.aa, %bb.ab, %bb.af, %bb.ag
  %.sroa.1552.0 = phi i64 [ %i.do, %bb.af ], [ %i.da, %bb.ab ], [ %i.dx, %bb.ag ], [ %i.cr, %bb.aa ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 5, i64 noundef %.sroa.1552.0) #26
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ak, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit39
  %i.ea = phi ptr [ %.ph, %bb.ak ], [ %i.bv, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit39 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 34, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.eb = icmp eq i64 %i.bt, 0
  br i1 %i.eb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ea, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !608
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit

bb.aj:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.bt, ptr %i.c, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.ph, ptr %.sroa.548.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.bt, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 34, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit

bb.ak:                                            ; preds = %.thread
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ed = load double, ptr %i.ec, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 5, double noundef %i.ed) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ah

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit: ; preds = %bb.ai, %bb.ah, %bb.aj
  br i1 %.sroa.01.0, label %bb.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit42

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit42: ; preds = %bb.an, %bb.am, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !609
  %i.ee = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #26, !noalias !609 ; 4 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.al, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !10

bb.al:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit42
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #30, !noalias !609
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store i32 125, ptr %.sroa.456.0..sroa_idx, align 8
  br label %_RINvMNtCsqsXNUdQJE7_3nix5errnoNtNtB3_6consts5Errno6resultjECs41JD7yXDh97_6uu_env.exit

bb.am:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit
  %.val.i40 = load i64, ptr %i.e, align 8, !range !6, !noundef !5 ; 2 uses
  %i.eg = icmp eq i64 %.val.i40, 0
  br i1 %i.eg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit42, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %.val.i40, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !610
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit42

_RINvMNtCsqsXNUdQJE7_3nix5errnoNtNtB3_6consts5Errno6resultjECs41JD7yXDh97_6uu_env.exit: ; preds = %bb.a, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  %.sroa.0.0 = phi ptr [ %i.ee, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ null, %bb.a ]
  %i.eh = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.ei = insertvalue { ptr, ptr } %i.eh, ptr @35, 1
  ret { ptr, ptr } %i.ei
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvCs41JD7yXDh97_6uu_env15signal_is_valid(i64 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = trunc i64 %0 to i32
  %i.c = add i32 %i.b, -1
  %i.d = icmp ult i32 %i.c, 31
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals22realtime_signal_bounds(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a) #26
  %i.e = load i64, ptr %i.a, align 8, !range !14, !noundef !5
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sroa.0.0.ph = phi i1 [ %.sroa.0.1, %bb.d ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  %.not1 = icmp uge i64 %0, %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp ule i64 %0, %i.j
  %.sroa.0.1 = select i1 %.not1, i1 %i.k, i1 false
  br label %.sink.split
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCs41JD7yXDh97_6uu_env16debug_print_args(ptr noalias nofree noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.h, align 8
  %i.j = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h) #26
  store ptr %i.j, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.k = call noundef ptr @_RNvXss_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StderrLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 12) #26 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs41JD7yXDh97_6uu_env.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = and i64 %i.m, 3
  switch i64 %i.n, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs41JD7yXDh97_6uu_env.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs41JD7yXDh97_6uu_env.exit.i
    i64 1, label %bb.d
  ], !prof !11

default.unreachable:                              ; preds = %bb.l, %bb.h, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ult ptr %i.k, inttoptr (i64 188978561024 to ptr)
  %i.p = and i64 %i.m, 1095216660480
  %i.q = icmp ne i64 %i.p, 1095216660480
  call void @llvm.assume(i1 %i.o)
  call void @llvm.assume(i1 %i.q)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs41JD7yXDh97_6uu_env.exit.i

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.k, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !alias.scope !621
  store i8 3, ptr %i.d, align 8, !alias.scope !621
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #26
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs41JD7yXDh97_6uu_env.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs41JD7yXDh97_6uu_env.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs41JD7yXDh97_6uu_env.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs41JD7yXDh97_6uu_env.exit: ; preds = %bb.a, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs41JD7yXDh97_6uu_env.exit.i
  %.idx = mul nuw nsw i64 %1, 24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.u = icmp eq i64 %1, 0
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs41JD7yXDh97_6uu_env.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs41JD7yXDh97_6uu_env.exit19
  %.sroa.020.028 = phi ptr [ %0, %.lr.ph ], [ %i.aa, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs41JD7yXDh97_6uu_env.exit19 ] ; 3 uses
  %.sroa.7.027 = phi i64 [ 0, %.lr.ph ], [ %i.ab, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs41JD7yXDh97_6uu_env.exit19 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.020.028, i64 24 ; 2 uses
  %i.ab = add nuw nsw i64 %.sroa.7.027, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.sroa.7.027, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.020.028, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.020.028, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !5
  store i64 1, ptr %i.f, align 8
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_1
begin_hunk_2_@_RNvXs4_Cs41JD7yXDh97_6uu_envNtB5_8EnvErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt:bb.a
  %i.di = load i64, ptr %i.dh, align 8, !noundef !5
  %i.dj = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %i.di, ptr noalias nofree noundef nonnull %i.c, i64 noundef 20) #26 ; 2 uses
  %i.dk = extractvalue { ptr, i64 } %i.dj, 0
  %i.dl = extractvalue { ptr, i64 } %i.dj, 1      ; 16 uses
  %.not.i245 = icmp slt i64 %i.dl, 0
  br i1 %.not.i245, label %bb.fn, label %bb.m, !prof !17

bb.m:                                             ; preds = %bb.l
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %.thread1024, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i246

.thread1024:                                      ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit1156

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i246: ; preds = %bb.m
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3313
  %i.dn = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.dl, i64 noundef range(i64 1, 9) 1) #26, !noalias !3313 ; 18 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.fn, label %bb.fo

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 0, ptr %i.y, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !5
  %i.dr = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %i.dq, ptr noalias nofree noundef nonnull %i.b, i64 noundef 20) #26 ; 2 uses
  %i.ds = extractvalue { ptr, i64 } %i.dr, 0
  %i.dt = extractvalue { ptr, i64 } %i.dr, 1      ; 16 uses
  %.not.i249 = icmp slt i64 %i.dt, 0
  br i1 %.not.i249, label %bb.gg, label %bb.o, !prof !17

bb.o:                                             ; preds = %bb.n
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %.thread1046, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i250

.thread1046:                                      ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit1163

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i250: ; preds = %bb.o
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3314
  %i.dv = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.dt, i64 noundef range(i64 1, 9) 1) #26, !noalias !3314 ; 18 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.gg, label %bb.gh

bb.p:                                             ; preds = %bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 0, ptr %i.s, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !noundef !5
  %i.ea = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %i.dz, ptr noalias nofree noundef nonnull %i.a, i64 noundef 20) #26 ; 2 uses
  %i.eb = extractvalue { ptr, i64 } %i.ea, 0
  %i.ec = extractvalue { ptr, i64 } %i.ea, 1      ; 16 uses
  %.not.i253 = icmp slt i64 %i.ec, 0
  br i1 %.not.i253, label %bb.gz, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %.thread1068, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i254

.thread1068:                                      ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit1177

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i254: ; preds = %bb.q
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3315
  %i.ee = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ec, i64 noundef range(i64 1, 9) 1) #26, !noalias !3315 ; 18 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.gz, label %bb.ha

bb.r:                                             ; preds = %bb.a
  %i.eg = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0) #26
  br label %bb.bd

bb.s:                                             ; preds = %bb.a
  %i.eh = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0) #26
  br label %bb.bd

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ei, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ej, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.k, ptr %i.i, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRjNtB6_7Display3fmtCs41JD7yXDh97_6uu_env, ptr %.sroa.47.0..sroa_idx, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.ek, align 8
  %.sroa.4196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs41JD7yXDh97_6uu_env13string_parser5ErrorNtB6_5Debug3fmtBA_, ptr %.sroa.4196.0..sroa_idx, align 8
  %i.el = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !nonnull !5, !align !7, !noundef !5
  %i.eo = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.el, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.en, ptr noundef nonnull @174, ptr noundef nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bd

bb.u:                                             ; preds = %bb.b, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.b ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.bw) #30
  unreachable

bb.v:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr align 1 %i.bv, i64 %i.bw, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %cond1097 = icmp eq i64 %i.bw, 1
  %i.ep = load i8, ptr %i.by, align 1, !alias.scope !3316, !noalias !3317 ; 2 uses
  br i1 %cond1097, label %bb.w, label %thread-pre-split.i

bb.w:                                             ; preds = %bb.v
  switch i8 %i.ep, label %bb.ad [
    i8 43, label %.loopexit1111
    i8 45, label %.loopexit1111
  ]

thread-pre-split.i:                               ; preds = %bb.v
  switch i8 %i.ep, label %bb.ad [
    i8 43, label %bb.x
    i8 45, label %bb.y
  ]

bb.x:                                             ; preds = %thread-pre-split.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.er = add nsw i64 %i.bw, -1
  br label %bb.ad

bb.y:                                             ; preds = %thread-pre-split.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.by, i64 1 ; 2 uses
  %i.et = add nsw i64 %i.bw, -1                   ; 2 uses
  %i.eu = icmp samesign ult i64 %i.bw, 17
  br i1 %i.eu, label %.lr.ph141.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y, %bb.ab
  %.sroa.0.1136.i = phi ptr [ %i.ev, %bb.ab ], [ %i.es, %bb.y ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.ew, %bb.ab ], [ %i.et, %bb.y ]
  %.sroa.084.0134.i = phi i64 [ %i.fh, %bb.ab ], [ 0, %bb.y ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.ew = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.ex = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.ey = extractvalue { i64, i1 } %i.ex, 0
  %i.ez = extractvalue { i64, i1 } %i.ex, 1
  br i1 %i.ez, label %.loopexit1111, label %bb.z, !prof !10

bb.z:                                             ; preds = %.lr.ph.i
  %i.fa = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !3316, !noalias !3317, !noundef !5
  %i.fb = zext i8 %i.fa to i32
  %i.fc = add nsw i32 %i.fb, -48                  ; 2 uses
  %i.fd = icmp ult i32 %i.fc, 10
  br i1 %i.fd, label %bb.aa, label %.loopexit1111

bb.aa:                                            ; preds = %bb.z
  %i.fe = zext nneg i32 %i.fc to i64
  %i.ff = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ey, i64 %i.fe) ; 2 uses
  %i.fg = extractvalue { i64, i1 } %i.ff, 1
  br i1 %i.fg, label %.loopexit1111, label %bb.ab, !prof !10

bb.ab:                                            ; preds = %bb.aa
  %i.fh = extractvalue { i64, i1 } %i.ff, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.ew, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %bb.y, %bb.ac
  %.sroa.0.2140.i = phi ptr [ %i.fo, %bb.ac ], [ %i.es, %bb.y ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.fn, %bb.ac ], [ %i.et, %bb.y ]
  %.sroa.084.2138.i = phi i64 [ %i.fq, %bb.ac ], [ 0, %bb.y ]
  %i.fi = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !3316, !noalias !3317, !noundef !5
  %i.fj = zext i8 %i.fi to i32
  %i.fk = add nsw i32 %i.fj, -48                  ; 2 uses
  %i.fl = icmp ult i32 %i.fk, 10
  br i1 %i.fl, label %bb.ac, label %.loopexit1111

bb.ac:                                            ; preds = %.lr.ph141.i
  %i.fm = mul i64 %.sroa.084.2138.i, 10
  %i.fn = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.fp = zext nneg i32 %i.fk to i64
  %i.fq = sub i64 %i.fm, %i.fp                    ; 2 uses
  %.not103.i = icmp eq i64 %i.fn, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.ad:                                            ; preds = %bb.w, %bb.x, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.er, %bb.x ], [ %i.bw, %thread-pre-split.i ], [ %i.bw, %bb.w ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.eq, %bb.x ], [ %i.by, %thread-pre-split.i ], [ %i.by, %bb.w ] ; 2 uses
  %i.fr = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.fr, label %.lr.ph150.i, label %.preheader111.i

.preheader111.i:                                  ; preds = %bb.ad, %bb.ag
  %.sroa.0.3145.i = phi ptr [ %i.fs, %bb.ag ], [ %.sroa.0.0.i, %bb.ad ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.ft, %bb.ag ], [ %.sroa.26.0.i, %bb.ad ]
  %.sroa.084.3143.i = phi i64 [ %i.ge, %bb.ag ], [ 0, %bb.ad ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.ft = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.fu = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.fv = extractvalue { i64, i1 } %i.fu, 0
  %i.fw = extractvalue { i64, i1 } %i.fu, 1
  br i1 %i.fw, label %.loopexit1111, label %bb.ae, !prof !10

bb.ae:                                            ; preds = %.preheader111.i
  %i.fx = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !3316, !noalias !3317, !noundef !5
  %i.fy = zext i8 %i.fx to i32
  %i.fz = add nsw i32 %i.fy, -48                  ; 2 uses
  %i.ga = icmp ult i32 %i.fz, 10
  br i1 %i.ga, label %bb.af, label %.loopexit1111

bb.af:                                            ; preds = %bb.ae
  %i.gb = zext nneg i32 %i.fz to i64
  %i.gc = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.fv, i64 %i.gb) ; 2 uses
  %i.gd = extractvalue { i64, i1 } %i.gc, 1
  br i1 %i.gd, label %.loopexit1111, label %bb.ag, !prof !10

bb.ag:                                            ; preds = %bb.af
  %i.ge = extractvalue { i64, i1 } %i.gc, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.ft, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %bb.ad, %bb.ah
  %.sroa.0.4149.i = phi ptr [ %i.gl, %bb.ah ], [ %.sroa.0.0.i, %bb.ad ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.gk, %bb.ah ], [ %.sroa.26.0.i, %bb.ad ]
  %.sroa.084.4147.i = phi i64 [ %i.gn, %bb.ah ], [ 0, %bb.ad ]
  %i.gf = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !3316, !noalias !3317, !noundef !5
  %i.gg = zext i8 %i.gf to i32
  %i.gh = add nsw i32 %i.gg, -48                  ; 2 uses
  %i.gi = icmp ult i32 %i.gh, 10
  br i1 %i.gi, label %bb.ah, label %.loopexit1111

bb.ah:                                            ; preds = %.lr.ph150.i
  %i.gj = mul i64 %.sroa.084.4147.i, 10
  %i.gk = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.gm = zext nneg i32 %i.gh to i64
  %i.gn = add i64 %i.gj, %i.gm                    ; 2 uses
  %.not105.i = icmp eq i64 %i.gk, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.loopexit1111:                                    ; preds = %.lr.ph.i, %bb.aa, %bb.z, %.lr.ph141.i, %.preheader111.i, %bb.ae, %bb.af, %.lr.ph150.i, %bb.w, %bb.w, %.thread
  %.ph = phi ptr [ %i.by, %.preheader111.i ], [ %i.by, %.lr.ph141.i ], [ %i.by, %.lr.ph150.i ], [ %i.by, %bb.w ], [ inttoptr (i64 1 to ptr), %.thread ], [ %i.by, %bb.w ], [ %i.by, %bb.af ], [ %i.by, %bb.ae ], [ %i.by, %bb.z ], [ %i.by, %bb.aa ], [ %i.by, %.lr.ph.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.bw) #27
  %i.go = load i8, ptr %i.bo, align 8, !range !16, !noundef !5
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.ap, label %bb.aq

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.ab, %bb.ac, %bb.ag, %bb.ah
  %.sroa.15716.0 = phi i64 [ %i.ge, %bb.ag ], [ %i.fq, %bb.ac ], [ %i.gn, %bb.ah ], [ %i.fh, %bb.ab ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8, i64 noundef %.sroa.15716.0) #26
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aq, %bb.ap, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.gq = phi ptr [ %.ph, %bb.ap ], [ %.ph, %bb.aq ], [ %i.by, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  %.sroa.01.0.not = phi i1 [ true, %bb.ap ], [ false, %bb.aq ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.gs = load i32, ptr %i.gr, align 4, !range !24, !noundef !5 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i32 0, ptr %.sroa.0, align 4
  %i.gt = icmp samesign ult i32 %i.gs, 128        ; 3 uses
  br i1 %i.gt, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gu = icmp samesign ult i32 %i.gs, 2048
  %i.gv = trunc i32 %i.gs to i8
  %i.gw = and i8 %i.gv, 63
  %i.gx = or disjoint i8 %i.gw, -128              ; 3 uses
  %i.gy = lshr i32 %i.gs, 6
  %i.gz = trunc i32 %i.gy to i8                   ; 2 uses
  %i.ha = and i8 %i.gz, 63
  %i.hb = or disjoint i8 %i.ha, -128              ; 2 uses
  %i.hc = lshr i32 %i.gs, 12
  %i.hd = trunc i32 %i.hc to i8                   ; 2 uses
  %i.he = and i8 %i.hd, 63
  %i.hf = or disjoint i8 %i.he, -128
  %i.hg = lshr i32 %i.gs, 18
  %i.hh = trunc nuw nsw i32 %i.hg to i8
  %i.hi = or disjoint i8 %i.hh, -16
  br i1 %i.gu, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.hj = trunc nuw nsw i32 %i.gs to i8
  store i8 %i.hj, ptr %.sroa.0, align 4, !alias.scope !3318
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i259

bb.al:                                            ; preds = %bb.aj
  %i.hk = or disjoint i8 %i.gz, -64
  store i8 %i.hk, ptr %.sroa.0, align 4, !alias.scope !3318
  %.sroa.0.1..sroa_idx1810 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.gx, ptr %.sroa.0.1..sroa_idx1810, align 1, !alias.scope !3318
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i259

bb.am:                                            ; preds = %bb.aj
  %i.hl = icmp samesign ult i32 %i.gs, 65536
  br i1 %i.hl, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hm = or disjoint i8 %i.hd, -32
  store i8 %i.hm, ptr %.sroa.0, align 4, !alias.scope !3318
  %.sroa.0.1..sroa_idx1809 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.hb, ptr %.sroa.0.1..sroa_idx1809, align 1, !alias.scope !3318
  %.sroa.0.2..sroa_idx1811 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  store i8 %i.gx, ptr %.sroa.0.2..sroa_idx1811, align 2, !alias.scope !3318
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i259

bb.ao:                                            ; preds = %bb.am
  store i8 %i.hi, ptr %.sroa.0, align 4, !alias.scope !3318
  %.sroa.0.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.hf, ptr %.sroa.0.1..sroa_idx, align 1, !alias.scope !3318
  %.sroa.0.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  store i8 %i.hb, ptr %.sroa.0.2..sroa_idx, align 2, !alias.scope !3318
  %.sroa.0.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3
  store i8 %i.gx, ptr %.sroa.0.3..sroa_idx, align 1, !alias.scope !3318
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i259

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i259: ; preds = %bb.ak, %bb.al, %bb.an, %bb.ao
  %.not103.i277 = phi i1 [ false, %bb.ak ], [ true, %bb.al ], [ false, %bb.an ], [ false, %bb.ao ]
  %.not103.i277.1 = phi i1 [ false, %bb.ak ], [ false, %bb.al ], [ true, %bb.an ], [ false, %bb.ao ]
  %.sroa.0.05.i = phi i64 [ 1, %bb.ak ], [ 2, %bb.al ], [ 3, %bb.an ], [ 4, %bb.ao ] ; 10 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3319
  %i.hn = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.05.i, i64 noundef range(i64 1, 9) 1) #26, !noalias !3319 ; 12 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %bb.ar, label %bb.as

bb.ap:                                            ; preds = %.loopexit1111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  store i64 %i.bw, ptr %i.bn, align 8
  %.sroa.5.0..sroa_idx713 = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %.ph, ptr %.sroa.5.0..sroa_idx713, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %i.bw, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bn) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br label %bb.ai

bb.aq:                                            ; preds = %.loopexit1111
  %i.hp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.hq = load double, ptr %i.hp, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8, double noundef %i.hq) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.ai

bb.ar:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i259
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.sroa.0.05.i) #30
  unreachable

bb.as:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hn, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0, i64 %.sroa.0.05.i, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.hr = load i8, ptr %i.hn, align 1, !alias.scope !3320, !noalias !3321 ; 2 uses
  br i1 %i.gt, label %bb.at, label %thread-pre-split.i293

bb.at:                                            ; preds = %bb.as
  switch i8 %i.hr, label %.lr.ph150.i288.preheader [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i293:                            ; preds = %bb.as
  switch i8 %i.hr, label %.lr.ph150.i288.preheader [
    i8 43, label %.preheader.i286
    i8 45, label %.preheader114.i271
  ]

.preheader114.i271:                               ; preds = %thread-pre-split.i293
  br i1 %i.gt, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295, label %.lr.ph141.i273

.lr.ph141.i273:                                   ; preds = %.preheader114.i271
  %.sroa.0.2140.i274 = getelementptr inbounds nuw i8, ptr %i.hn, i64 1
  %i.hs = load i8, ptr %.sroa.0.2140.i274, align 1, !alias.scope !3320, !noalias !3321, !noundef !5
  %i.ht = zext i8 %i.hs to i32
  %i.hu = add nsw i32 %i.ht, -48                  ; 2 uses
  %i.hv = icmp ult i32 %i.hu, 10
  br i1 %i.hv, label %bb.au, label %.loopexit

bb.au:                                            ; preds = %.lr.ph141.i273
  %i.hw = zext nneg i32 %i.hu to i64              ; 2 uses
  %i.hx = sub nsw i64 0, %i.hw
  br i1 %.not103.i277, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295, label %.lr.ph141.i273.1

.lr.ph141.i273.1:                                 ; preds = %bb.au
  %.sroa.0.2140.i274.1 = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  %i.hy = load i8, ptr %.sroa.0.2140.i274.1, align 1, !alias.scope !3320, !noalias !3321, !noundef !5
  %i.hz = zext i8 %i.hy to i32
  %i.ia = add nsw i32 %i.hz, -48                  ; 2 uses
  %i.ib = icmp ult i32 %i.ia, 10
  br i1 %i.ib, label %bb.av, label %.loopexit

bb.av:                                            ; preds = %.lr.ph141.i273.1
  %i.ic = mul nsw i64 %i.hw, -10
  %i.id = zext nneg i32 %i.ia to i64
  %i.ie = sub nsw i64 %i.ic, %i.id                ; 2 uses
  br i1 %.not103.i277.1, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295, label %.lr.ph141.i273.2

.lr.ph141.i273.2:                                 ; preds = %bb.av
  %.sroa.0.2140.i274.2 = getelementptr inbounds nuw i8, ptr %i.hn, i64 3
  %i.if = load i8, ptr %.sroa.0.2140.i274.2, align 1, !alias.scope !3320, !noalias !3321, !noundef !5
  %i.ig = zext i8 %i.if to i32
  %i.ih = add nsw i32 %i.ig, -48                  ; 2 uses
  %i.ii = icmp ult i32 %i.ih, 10
  br i1 %i.ii, label %bb.aw, label %.loopexit

bb.aw:                                            ; preds = %.lr.ph141.i273.2
  %i.ij = mul nsw i64 %i.ie, 10
  %i.ik = zext nneg i32 %i.ih to i64
  %i.il = sub nsw i64 %i.ij, %i.ik
  br label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295

.preheader.i286:                                  ; preds = %thread-pre-split.i293
  %i.im = getelementptr inbounds nuw i8, ptr %i.hn, i64 1
  %i.in = add nsw i64 %.sroa.0.05.i, -1           ; 2 uses
  %.not105146.i287 = icmp eq i64 %i.in, 0
  br i1 %.not105146.i287, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295, label %.lr.ph150.i288.preheader

.lr.ph150.i288.preheader:                         ; preds = %bb.at, %thread-pre-split.i293, %.preheader.i286
  %.sroa.0.4149.i289.ph = phi ptr [ %i.hn, %bb.at ], [ %i.hn, %thread-pre-split.i293 ], [ %i.im, %.preheader.i286 ]
  %.sroa.26.4148.i290.ph = phi i64 [ %.sroa.0.05.i, %bb.at ], [ %.sroa.0.05.i, %thread-pre-split.i293 ], [ %i.in, %.preheader.i286 ]
  br label %.lr.ph150.i288

.lr.ph150.i288:                                   ; preds = %.lr.ph150.i288.preheader, %bb.ax
  %.sroa.0.4149.i289 = phi ptr [ %i.iu, %bb.ax ], [ %.sroa.0.4149.i289.ph, %.lr.ph150.i288.preheader ] ; 2 uses
  %.sroa.26.4148.i290 = phi i64 [ %i.it, %bb.ax ], [ %.sroa.26.4148.i290.ph, %.lr.ph150.i288.preheader ]
  %.sroa.084.4147.i291 = phi i64 [ %i.iw, %bb.ax ], [ 0, %.lr.ph150.i288.preheader ]
  %i.io = load i8, ptr %.sroa.0.4149.i289, align 1, !alias.scope !3320, !noalias !3321, !noundef !5
  %i.ip = zext i8 %i.io to i32
  %i.iq = add nsw i32 %i.ip, -48                  ; 2 uses
  %i.ir = icmp ult i32 %i.iq, 10
  br i1 %i.ir, label %bb.ax, label %.loopexit

bb.ax:                                            ; preds = %.lr.ph150.i288
  %i.is = mul i64 %.sroa.084.4147.i291, 10
  %i.it = add nsw i64 %.sroa.26.4148.i290, -1     ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i289, i64 1
  %i.iv = zext nneg i32 %i.iq to i64
  %i.iw = add i64 %i.is, %i.iv                    ; 2 uses
  %.not105.i292 = icmp eq i64 %i.it, 0
  br i1 %.not105.i292, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295, label %.lr.ph150.i288

.loopexit:                                        ; preds = %.lr.ph141.i273, %.lr.ph141.i273.1, %.lr.ph141.i273.2, %.lr.ph150.i288, %bb.at, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hn, i64 noundef %.sroa.0.05.i) #27
  %i.ix = load i8, ptr %i.bm, align 8, !range !16, !noundef !5
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %bb.az, label %bb.ba

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295: ; preds = %bb.au, %bb.av, %bb.aw, %bb.ax, %.preheader.i286, %.preheader114.i271
  %.sroa.15723.0 = phi i64 [ 0, %.preheader114.i271 ], [ 0, %.preheader.i286 ], [ %i.iw, %bb.ax ], [ %i.hx, %bb.au ], [ %i.ie, %bb.av ], [ %i.il, %bb.aw ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 5, i64 noundef %.sroa.15723.0) #26
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 31, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bk) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef %.sroa.0.05.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3322
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit

bb.az:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  store i64 %.sroa.0.05.i, ptr %i.bl, align 8
  %.sroa.5718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.hn, ptr %.sroa.5718.0..sroa_idx, align 8
  %.sroa.8719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 %.sroa.0.05.i, ptr %.sroa.8719.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bl) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 31, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bk) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit

bb.ba:                                            ; preds = %.loopexit
  %i.iz = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.ja = load double, ptr %i.iz, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 5, double noundef %i.ja) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.ay

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit: ; preds = %bb.ay, %bb.az
  %i.jb = icmp eq i64 %i.bw, 0
  %or.cond = or i1 %.sroa.01.0.not, %i.jb
  br i1 %or.cond, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit301, label %bb.bc

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit301: ; preds = %bb.bc, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  store ptr %i.bq, ptr %i.bj, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.439.0..sroa_idx, align 8
  %i.jc = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !nonnull !5, !align !7, !noundef !5
  %i.jf = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.jc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.je, ptr noundef nonnull @42, ptr noundef nonnull %i.bj) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.experimental.noalias.scope.decl(metadata !3323)
  %.val.i296 = load i64, ptr %i.bq, align 8, !range !6, !alias.scope !3323, !noundef !5 ; 2 uses
  %i.jg = icmp eq i64 %.val.i296, 0
  br i1 %i.jg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit298, label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit301
  %i.jh = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.val1.i297 = load ptr, ptr %i.jh, align 8, !alias.scope !3323, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i297, i64 noundef %.val.i296, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3323
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit298

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit298: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit301, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br label %bb.bd

bb.bc:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gq, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3324
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit301

bb.bd:                                            ; preds = %bb.t, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit709, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit628, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit588, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit548, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit505, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit425, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit382, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit298, %bb.s, %bb.r
  %.sroa.0.1.in = phi i1 [ %i.jf, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit298 ], [ %i.od, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit382 ], [ %i.qo, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit425 ], [ %i.vh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit505 ], [ %i.xs, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit548 ], [ %i.aad, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit588 ], [ %i.aco, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit628 ], [ %i.ahm, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit709 ], [ %i.eg, %bb.r ], [ %i.eh, %bb.s ], [ %i.eo, %bb.t ]
  ret i1 %.sroa.0.1.in

bb.be:                                            ; preds = %bb.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i230
  %.sroa.4804.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i230 ], [ 0, %bb.d ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4804.0.ph, i64 %i.cf) #30
  unreachable

bb.bf:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i230
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr align 1 %i.ce, i64 %i.cf, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %cond1098 = icmp eq i64 %i.cf, 1
  %i.ji = load i8, ptr %i.ch, align 1, !alias.scope !3325, !noalias !3326 ; 2 uses
  br i1 %cond1098, label %bb.bg, label %thread-pre-split.i333

bb.bg:                                            ; preds = %bb.bf
  switch i8 %i.ji, label %bb.bn [
    i8 43, label %.loopexit1125
    i8 45, label %.loopexit1125
  ]

thread-pre-split.i333:                            ; preds = %bb.bf
  switch i8 %i.ji, label %bb.bn [
    i8 43, label %bb.bh
    i8 45, label %bb.bi
  ]

bb.bh:                                            ; preds = %thread-pre-split.i333
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.jk = add nsw i64 %i.cf, -1
  br label %bb.bn

bb.bi:                                            ; preds = %thread-pre-split.i333
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 2 uses
  %i.jm = add nsw i64 %i.cf, -1                   ; 2 uses
  %i.jn = icmp samesign ult i64 %i.cf, 17
  br i1 %i.jn, label %.lr.ph141.i313, label %.lr.ph.i303

.lr.ph.i303:                                      ; preds = %bb.bi, %bb.bl
  %.sroa.0.1136.i304 = phi ptr [ %i.jo, %bb.bl ], [ %i.jl, %bb.bi ] ; 2 uses
  %.sroa.26.1135.i305 = phi i64 [ %i.jp, %bb.bl ], [ %i.jm, %bb.bi ]
  %.sroa.084.0134.i306 = phi i64 [ %i.ka, %bb.bl ], [ 0, %bb.bi ]
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i304, i64 1
  %i.jp = add nsw i64 %.sroa.26.1135.i305, -1     ; 2 uses
  %i.jq = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i306, i64 10) ; 2 uses
  %i.jr = extractvalue { i64, i1 } %i.jq, 0
  %i.js = extractvalue { i64, i1 } %i.jq, 1
  br i1 %i.js, label %.loopexit1125, label %bb.bj, !prof !10

bb.bj:                                            ; preds = %.lr.ph.i303
  %i.jt = load i8, ptr %.sroa.0.1136.i304, align 1, !alias.scope !3325, !noalias !3326, !noundef !5
  %i.ju = zext i8 %i.jt to i32
  %i.jv = add nsw i32 %i.ju, -48                  ; 2 uses
  %i.jw = icmp ult i32 %i.jv, 10
  br i1 %i.jw, label %bb.bk, label %.loopexit1125

bb.bk:                                            ; preds = %bb.bj
  %i.jx = zext nneg i32 %i.jv to i64
  %i.jy = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.jr, i64 %i.jx) ; 2 uses
  %i.jz = extractvalue { i64, i1 } %i.jy, 1
  br i1 %i.jz, label %.loopexit1125, label %bb.bl, !prof !10

bb.bl:                                            ; preds = %bb.bk
  %i.ka = extractvalue { i64, i1 } %i.jy, 0       ; 2 uses
  %.not102.i308 = icmp eq i64 %i.jp, 0
  br i1 %.not102.i308, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335, label %.lr.ph.i303

.lr.ph141.i313:                                   ; preds = %bb.bi, %bb.bm
  %.sroa.0.2140.i314 = phi ptr [ %i.kh, %bb.bm ], [ %i.jl, %bb.bi ] ; 2 uses
  %.sroa.26.2139.i315 = phi i64 [ %i.kg, %bb.bm ], [ %i.jm, %bb.bi ]
  %.sroa.084.2138.i316 = phi i64 [ %i.kj, %bb.bm ], [ 0, %bb.bi ]
  %i.kb = load i8, ptr %.sroa.0.2140.i314, align 1, !alias.scope !3325, !noalias !3326, !noundef !5
  %i.kc = zext i8 %i.kb to i32
  %i.kd = add nsw i32 %i.kc, -48                  ; 2 uses
  %i.ke = icmp ult i32 %i.kd, 10
  br i1 %i.ke, label %bb.bm, label %.loopexit1125

bb.bm:                                            ; preds = %.lr.ph141.i313
  %i.kf = mul i64 %.sroa.084.2138.i316, 10
  %i.kg = add nsw i64 %.sroa.26.2139.i315, -1     ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i314, i64 1
  %i.ki = zext nneg i32 %i.kd to i64
  %i.kj = sub i64 %i.kf, %i.ki                    ; 2 uses
  %.not103.i317 = icmp eq i64 %i.kg, 0
  br i1 %.not103.i317, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335, label %.lr.ph141.i313

bb.bn:                                            ; preds = %bb.bg, %bb.bh, %thread-pre-split.i333
  %.sroa.26.0.i318 = phi i64 [ %i.jk, %bb.bh ], [ %i.cf, %thread-pre-split.i333 ], [ %i.cf, %bb.bg ] ; 3 uses
  %.sroa.0.0.i319 = phi ptr [ %i.jj, %bb.bh ], [ %i.ch, %thread-pre-split.i333 ], [ %i.ch, %bb.bg ] ; 2 uses
  %i.kk = icmp samesign ult i64 %.sroa.26.0.i318, 16
  br i1 %i.kk, label %.lr.ph150.i328, label %.preheader111.i320

.preheader111.i320:                               ; preds = %bb.bn, %bb.bq
  %.sroa.0.3145.i321 = phi ptr [ %i.kl, %bb.bq ], [ %.sroa.0.0.i319, %bb.bn ] ; 2 uses
  %.sroa.26.3144.i322 = phi i64 [ %i.km, %bb.bq ], [ %.sroa.26.0.i318, %bb.bn ]
  %.sroa.084.3143.i323 = phi i64 [ %i.kx, %bb.bq ], [ 0, %bb.bn ]
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i321, i64 1
  %i.km = add nsw i64 %.sroa.26.3144.i322, -1     ; 2 uses
  %i.kn = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i323, i64 10) ; 2 uses
  %i.ko = extractvalue { i64, i1 } %i.kn, 0
  %i.kp = extractvalue { i64, i1 } %i.kn, 1
  br i1 %i.kp, label %.loopexit1125, label %bb.bo, !prof !10

bb.bo:                                            ; preds = %.preheader111.i320
  %i.kq = load i8, ptr %.sroa.0.3145.i321, align 1, !alias.scope !3325, !noalias !3326, !noundef !5
  %i.kr = zext i8 %i.kq to i32
  %i.ks = add nsw i32 %i.kr, -48                  ; 2 uses
  %i.kt = icmp ult i32 %i.ks, 10
  br i1 %i.kt, label %bb.bp, label %.loopexit1125

bb.bp:                                            ; preds = %bb.bo
  %i.ku = zext nneg i32 %i.ks to i64
  %i.kv = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ko, i64 %i.ku) ; 2 uses
  %i.kw = extractvalue { i64, i1 } %i.kv, 1
  br i1 %i.kw, label %.loopexit1125, label %bb.bq, !prof !10

bb.bq:                                            ; preds = %bb.bp
  %i.kx = extractvalue { i64, i1 } %i.kv, 0       ; 2 uses
  %.not104.i325 = icmp eq i64 %i.km, 0
  br i1 %.not104.i325, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335, label %.preheader111.i320

.lr.ph150.i328:                                   ; preds = %bb.bn, %bb.br
  %.sroa.0.4149.i329 = phi ptr [ %i.le, %bb.br ], [ %.sroa.0.0.i319, %bb.bn ] ; 2 uses
  %.sroa.26.4148.i330 = phi i64 [ %i.ld, %bb.br ], [ %.sroa.26.0.i318, %bb.bn ]
  %.sroa.084.4147.i331 = phi i64 [ %i.lg, %bb.br ], [ 0, %bb.bn ]
  %i.ky = load i8, ptr %.sroa.0.4149.i329, align 1, !alias.scope !3325, !noalias !3326, !noundef !5
  %i.kz = zext i8 %i.ky to i32
  %i.la = add nsw i32 %i.kz, -48                  ; 2 uses
  %i.lb = icmp ult i32 %i.la, 10
  br i1 %i.lb, label %bb.br, label %.loopexit1125

bb.br:                                            ; preds = %.lr.ph150.i328
  %i.lc = mul i64 %.sroa.084.4147.i331, 10
  %i.ld = add nsw i64 %.sroa.26.4148.i330, -1     ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i329, i64 1
  %i.lf = zext nneg i32 %i.la to i64
  %i.lg = add i64 %i.lc, %i.lf                    ; 2 uses
  %.not105.i332 = icmp eq i64 %i.ld, 0
  br i1 %.not105.i332, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335, label %.lr.ph150.i328

.loopexit1125:                                    ; preds = %.lr.ph.i303, %bb.bk, %bb.bj, %.lr.ph141.i313, %.preheader111.i320, %bb.bo, %bb.bp, %.lr.ph150.i328, %bb.bg, %bb.bg, %.thread916
  %.ph924 = phi ptr [ %i.ch, %.preheader111.i320 ], [ %i.ch, %.lr.ph141.i313 ], [ %i.ch, %.lr.ph150.i328 ], [ %i.ch, %bb.bg ], [ inttoptr (i64 1 to ptr), %.thread916 ], [ %i.ch, %bb.bg ], [ %i.ch, %bb.bp ], [ %i.ch, %bb.bo ], [ %i.ch, %bb.bj ], [ %i.ch, %bb.bk ], [ %i.ch, %.lr.ph.i303 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph924, i64 noundef %i.cf) #27
  %i.lh = load i8, ptr %i.bg, align 8, !range !16, !noundef !5
  %i.li = trunc nuw i8 %i.lh to i1
  br i1 %i.li, label %bb.bu, label %bb.bv

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335: ; preds = %bb.bl, %bb.bm, %bb.bq, %bb.br
  %.sroa.15730.0 = phi i64 [ %i.kx, %bb.bq ], [ %i.kj, %bb.bm ], [ %i.lg, %bb.br ], [ %i.ka, %bb.bl ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8, i64 noundef %.sroa.15730.0) #26
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bv, %bb.bu, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335
  %i.lj = phi ptr [ %.ph924, %bb.bu ], [ %.ph924, %bb.bv ], [ %i.ch, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335 ]
  %.sroa.02.0.not = phi i1 [ true, %bb.bu ], [ false, %bb.bv ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ca) #26
  %i.lk = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.ln = load i64, ptr %i.lm, align 8, !noundef !5 ; 14 uses
  %.not.i336 = icmp slt i64 %i.ln, 0
  br i1 %.not.i336, label %bb.bw, label %bb.bt, !prof !17

bb.bt:                                            ; preds = %bb.bs
  %i.lo = icmp eq i64 %i.ln, 0                    ; 2 uses
  br i1 %i.lo, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs41JD7yXDh97_6uu_env.exit339.thread937, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i337

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i337: ; preds = %bb.bt
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3327
  %i.lp = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ln, i64 noundef range(i64 1, 9) 1) #26, !noalias !3327 ; 3 uses
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %bb.bw, label %bb.cl

bb.bu:                                            ; preds = %.loopexit1125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i64 %i.cf, ptr %i.bf, align 8
  %.sroa.5725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %.ph924, ptr %.sroa.5725.0..sroa_idx, align 8
  %.sroa.8726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %i.cf, ptr %.sroa.8726.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bf) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.bs

bb.bv:                                            ; preds = %.loopexit1125
  %i.lr = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.ls = load double, ptr %i.lr, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8, double noundef %i.ls) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %bb.bs

bb.bw:                                            ; preds = %bb.bs, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i337
  %.sroa.4808.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i337 ], [ 0, %bb.bs ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4808.0.ph, i64 %i.ln) #30
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs41JD7yXDh97_6uu_env.exit339.thread937: ; preds = %bb.bt, %bb.cl
  %i.lt = phi ptr [ %i.lp, %bb.cl ], [ inttoptr (i64 1 to ptr), %bb.bt ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3328)
  %.val.i340 = load i64, ptr %i.be, align 8, !range !6, !alias.scope !3328, !noundef !5 ; 2 uses
  %i.lu = icmp eq i64 %.val.i340, 0
  br i1 %i.lu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit342, label %bb.bx

bb.bx:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs41JD7yXDh97_6uu_env.exit339.thread937
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ll, i64 noundef %.val.i340, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3328
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit342

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit342: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs41JD7yXDh97_6uu_env.exit339.thread937, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  switch i64 %i.ln, label %thread-pre-split.i374 [
    i64 0, label %.loopexit1118
    i64 1, label %bb.by
  ]

bb.by:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit342
  %i.lv = load i8, ptr %i.lt, align 1, !alias.scope !3329, !noalias !3330, !noundef !5 ; 2 uses
  switch i8 %i.lv, label %bb.bz [
    i8 43, label %.loopexit1118
    i8 45, label %.loopexit1118
  ]

thread-pre-split.i374:                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit342
  %.pr.i375 = load i8, ptr %i.lt, align 1, !alias.scope !3329, !noalias !3330
  br label %bb.bz

bb.bz:                                            ; preds = %thread-pre-split.i374, %bb.by
  %i.lw = phi i8 [ %.pr.i375, %thread-pre-split.i374 ], [ %i.lv, %bb.by ]
  switch i8 %i.lw, label %bb.cg [
    i8 43, label %bb.ca
    i8 45, label %bb.cb
  ]

bb.ca:                                            ; preds = %bb.bz
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 1
  %i.ly = add nsw i64 %i.ln, -1
  br label %bb.cg

bb.cb:                                            ; preds = %bb.bz
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lt, i64 1 ; 2 uses
  %i.ma = add nsw i64 %i.ln, -1                   ; 3 uses
  %i.mb = icmp samesign ult i64 %i.ln, 17
  br i1 %i.mb, label %.preheader114.i352, label %.lr.ph.i344

.preheader114.i352:                               ; preds = %bb.cb
  %.not103137.i353 = icmp eq i64 %i.ma, 0
  br i1 %.not103137.i353, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit376, label %.lr.ph141.i354

.lr.ph.i344:                                      ; preds = %bb.cb, %bb.ce
  %.sroa.0.1136.i345 = phi ptr [ %i.mc, %bb.ce ], [ %i.lz, %bb.cb ] ; 2 uses
  %.sroa.26.1135.i346 = phi i64 [ %i.md, %bb.ce ], [ %i.ma, %bb.cb ]
  %.sroa.084.0134.i347 = phi i64 [ %i.mo, %bb.ce ], [ 0, %bb.cb ]
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i345, i64 1
  %i.md = add nsw i64 %.sroa.26.1135.i346, -1     ; 2 uses
  %i.me = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i347, i64 10) ; 2 uses
  %i.mf = extractvalue { i64, i1 } %i.me, 0
  %i.mg = extractvalue { i64, i1 } %i.me, 1
  br i1 %i.mg, label %.loopexit1118, label %bb.cc, !prof !10

bb.cc:                                            ; preds = %.lr.ph.i344
  %i.mh = load i8, ptr %.sroa.0.1136.i345, align 1, !alias.scope !3329, !noalias !3330, !noundef !5
  %i.mi = zext i8 %i.mh to i32
  %i.mj = add nsw i32 %i.mi, -48                  ; 2 uses
  %i.mk = icmp ult i32 %i.mj, 10
  br i1 %i.mk, label %bb.cd, label %.loopexit1118

bb.cd:                                            ; preds = %bb.cc
  %i.ml = zext nneg i32 %i.mj to i64
  %i.mm = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.mf, i64 %i.ml) ; 2 uses
  %i.mn = extractvalue { i64, i1 } %i.mm, 1
  br i1 %i.mn, label %.loopexit1118, label %bb.ce, !prof !10

bb.ce:                                            ; preds = %bb.cd
  %i.mo = extractvalue { i64, i1 } %i.mm, 0       ; 2 uses
  %.not102.i349 = icmp eq i64 %i.md, 0
  br i1 %.not102.i349, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit376, label %.lr.ph.i344

.lr.ph141.i354:                                   ; preds = %.preheader114.i352, %bb.cf
  %.sroa.0.2140.i355 = phi ptr [ %i.mv, %bb.cf ], [ %i.lz, %.preheader114.i352 ] ; 2 uses
  %.sroa.26.2139.i356 = phi i64 [ %i.mu, %bb.cf ], [ %i.ma, %.preheader114.i352 ]
  %.sroa.084.2138.i357 = phi i64 [ %i.mx, %bb.cf ], [ 0, %.preheader114.i352 ]
  %i.mp = load i8, ptr %.sroa.0.2140.i355, align 1, !alias.scope !3329, !noalias !3330, !noundef !5
  %i.mq = zext i8 %i.mp to i32
  %i.mr = add nsw i32 %i.mq, -48                  ; 2 uses
  %i.ms = icmp ult i32 %i.mr, 10
  br i1 %i.ms, label %bb.cf, label %.loopexit1118

bb.cf:                                            ; preds = %.lr.ph141.i354
  %i.mt = mul i64 %.sroa.084.2138.i357, 10
  %i.mu = add nsw i64 %.sroa.26.2139.i356, -1     ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i355, i64 1
  %i.mw = zext nneg i32 %i.mr to i64
  %i.mx = sub i64 %i.mt, %i.mw                    ; 2 uses
  %.not103.i358 = icmp eq i64 %i.mu, 0
  br i1 %.not103.i358, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit376, label %.lr.ph141.i354

bb.cg:                                            ; preds = %bb.ca, %bb.bz
  %.sroa.26.0.i359 = phi i64 [ %i.ly, %bb.ca ], [ %i.ln, %bb.bz ] ; 4 uses
  %.sroa.0.0.i360 = phi ptr [ %i.lx, %bb.ca ], [ %i.lt, %bb.bz ] ; 2 uses
  %i.my = icmp samesign ult i64 %.sroa.26.0.i359, 16
  br i1 %i.my, label %.preheader.i367, label %.preheader111.i361

.preheader.i367:                                  ; preds = %bb.cg
  %.not105146.i368 = icmp eq i64 %.sroa.26.0.i359, 0
  br i1 %.not105146.i368, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit376, label %.lr.ph150.i369

.preheader111.i361:                               ; preds = %bb.cg, %bb.cj
  %.sroa.0.3145.i362 = phi ptr [ %i.mz, %bb.cj ], [ %.sroa.0.0.i360, %bb.cg ] ; 2 uses
  %.sroa.26.3144.i363 = phi i64 [ %i.na, %bb.cj ], [ %.sroa.26.0.i359, %bb.cg ]
  %.sroa.084.3143.i364 = phi i64 [ %i.nl, %bb.cj ], [ 0, %bb.cg ]
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i362, i64 1
  %i.na = add nsw i64 %.sroa.26.3144.i363, -1     ; 2 uses
  %i.nb = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i364, i64 10) ; 2 uses
  %i.nc = extractvalue { i64, i1 } %i.nb, 0
  %i.nd = extractvalue { i64, i1 } %i.nb, 1
  br i1 %i.nd, label %.loopexit1118, label %bb.ch, !prof !10

bb.ch:                                            ; preds = %.preheader111.i361
  %i.ne = load i8, ptr %.sroa.0.3145.i362, align 1, !alias.scope !3329, !noalias !3330, !noundef !5
  %i.nf = zext i8 %i.ne to i32
  %i.ng = add nsw i32 %i.nf, -48                  ; 2 uses
  %i.nh = icmp ult i32 %i.ng, 10
  br i1 %i.nh, label %bb.ci, label %.loopexit1118

bb.ci:                                            ; preds = %bb.ch
  %i.ni = zext nneg i32 %i.ng to i64
  %i.nj = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.nc, i64 %i.ni) ; 2 uses
  %i.nk = extractvalue { i64, i1 } %i.nj, 1
  br i1 %i.nk, label %.loopexit1118, label %bb.cj, !prof !10

bb.cj:                                            ; preds = %bb.ci
  %i.nl = extractvalue { i64, i1 } %i.nj, 0       ; 2 uses
  %.not104.i366 = icmp eq i64 %i.na, 0
  br i1 %.not104.i366, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit376, label %.preheader111.i361

.lr.ph150.i369:                                   ; preds = %.preheader.i367, %bb.ck
  %.sroa.0.4149.i370 = phi ptr [ %i.ns, %bb.ck ], [ %.sroa.0.0.i360, %.preheader.i367 ] ; 2 uses
  %.sroa.26.4148.i371 = phi i64 [ %i.nr, %bb.ck ], [ %.sroa.26.0.i359, %.preheader.i367 ]
  %.sroa.084.4147.i372 = phi i64 [ %i.nu, %bb.ck ], [ 0, %.preheader.i367 ]
  %i.nm = load i8, ptr %.sroa.0.4149.i370, align 1, !alias.scope !3329, !noalias !3330, !noundef !5
  %i.nn = zext i8 %i.nm to i32
  %i.no = add nsw i32 %i.nn, -48                  ; 2 uses
  %i.np = icmp ult i32 %i.no, 10
  br i1 %i.np, label %bb.ck, label %.loopexit1118

bb.ck:                                            ; preds = %.lr.ph150.i369
  %i.nq = mul i64 %.sroa.084.4147.i372, 10
  %i.nr = add nsw i64 %.sroa.26.4148.i371, -1     ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i370, i64 1
  %i.nt = zext nneg i32 %i.no to i64
  %i.nu = add i64 %i.nq, %i.nt                    ; 2 uses
  %.not105.i373 = icmp eq i64 %i.nr, 0
  br i1 %.not105.i373, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit376, label %.lr.ph150.i369

bb.cl:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i337
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lp, ptr nonnull align 1 %i.ll, i64 %i.ln, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs41JD7yXDh97_6uu_env.exit339.thread937

.loopexit1118:                                    ; preds = %.lr.ph.i344, %bb.cd, %bb.cc, %.lr.ph141.i354, %.preheader111.i361, %bb.ch, %bb.ci, %.lr.ph150.i369, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit342, %bb.by, %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.lt, i64 noundef %i.ln) #27
  %i.nv = load i8, ptr %i.bd, align 8, !range !16, !noundef !5
  %i.nw = trunc nuw i8 %i.nv to i1
  br i1 %i.nw, label %bb.co, label %bb.cp

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit376: ; preds = %bb.ce, %bb.cf, %bb.cj, %bb.ck, %.preheader.i367, %.preheader114.i352
  %.sroa.15738.0 = phi i64 [ %i.nu, %bb.ck ], [ %i.mx, %bb.cf ], [ %i.nl, %bb.cj ], [ 0, %.preheader.i367 ], [ 0, %.preheader114.i352 ], [ %i.mo, %bb.ce ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @165, i64 noundef 7, i64 noundef %.sroa.15738.0) #26
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cp, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 34, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bb) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br i1 %i.lo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit379, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lt, i64 noundef %i.ln, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3331
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit379

bb.co:                                            ; preds = %.loopexit1118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store i64 %i.ln, ptr %i.bc, align 8
  %.sroa.5732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.lt, ptr %.sroa.5732.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 %i.ln, ptr %.sroa.9.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @165, i64 noundef 7, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bc) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 34, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bb) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit379

bb.cp:                                            ; preds = %.loopexit1118
  %i.nx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.ny = load double, ptr %i.nx, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @165, i64 noundef 7, double noundef %i.ny) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.cm

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit379: ; preds = %bb.cn, %bb.cm, %bb.co
  %i.nz = icmp eq i64 %i.cf, 0
  %or.cond1106 = or i1 %.sroa.02.0.not, %i.nz
  br i1 %or.cond1106, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit385, label %bb.cr

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit385: ; preds = %bb.cr, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store ptr %i.bi, ptr %i.ba, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.460.0..sroa_idx, align 8
  %i.oa = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.oc = load ptr, ptr %i.ob, align 8, !nonnull !5, !align !7, !noundef !5
  %i.od = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.oa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.oc, ptr noundef nonnull @42, ptr noundef nonnull %i.ba) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.experimental.noalias.scope.decl(metadata !3332)
  %.val.i380 = load i64, ptr %i.bi, align 8, !range !6, !alias.scope !3332, !noundef !5 ; 2 uses
  %i.oe = icmp eq i64 %.val.i380, 0
  br i1 %i.oe, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit382, label %bb.cq

bb.cq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit385
  %i.of = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.val1.i381 = load ptr, ptr %i.of, align 8, !alias.scope !3332, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i381, i64 noundef %.val.i380, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3332
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit382

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit382: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit385, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  br label %bb.bd

bb.cr:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit379
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lj, i64 noundef %i.cf, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3333
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit385

bb.cs:                                            ; preds = %bb.f, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i234
  %.sroa.4812.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i234 ], [ 0, %bb.f ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4812.0.ph, i64 %i.cn) #30
  unreachable

bb.ct:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i234
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr align 1 %i.cm, i64 %i.cn, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %cond1099 = icmp eq i64 %i.cn, 1
  %i.og = load i8, ptr %i.cp, align 1, !alias.scope !3334, !noalias !3335 ; 2 uses
  br i1 %cond1099, label %bb.cu, label %thread-pre-split.i417

bb.cu:                                            ; preds = %bb.ct
  switch i8 %i.og, label %bb.db [
    i8 43, label %.loopexit1132
    i8 45, label %.loopexit1132
  ]

thread-pre-split.i417:                            ; preds = %bb.ct
  switch i8 %i.og, label %bb.db [
    i8 43, label %bb.cv
    i8 45, label %bb.cw
  ]

bb.cv:                                            ; preds = %thread-pre-split.i417
  %i.oh = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.oi = add nsw i64 %i.cn, -1
  br label %bb.db

bb.cw:                                            ; preds = %thread-pre-split.i417
  %i.oj = getelementptr inbounds nuw i8, ptr %i.cp, i64 1 ; 2 uses
  %i.ok = add nsw i64 %i.cn, -1                   ; 2 uses
  %i.ol = icmp samesign ult i64 %i.cn, 17
  br i1 %i.ol, label %.lr.ph141.i397, label %.lr.ph.i387

.lr.ph.i387:                                      ; preds = %bb.cw, %bb.cz
  %.sroa.0.1136.i388 = phi ptr [ %i.om, %bb.cz ], [ %i.oj, %bb.cw ] ; 2 uses
  %.sroa.26.1135.i389 = phi i64 [ %i.on, %bb.cz ], [ %i.ok, %bb.cw ]
  %.sroa.084.0134.i390 = phi i64 [ %i.oy, %bb.cz ], [ 0, %bb.cw ]
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i388, i64 1
  %i.on = add nsw i64 %.sroa.26.1135.i389, -1     ; 2 uses
  %i.oo = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i390, i64 10) ; 2 uses
  %i.op = extractvalue { i64, i1 } %i.oo, 0
  %i.oq = extractvalue { i64, i1 } %i.oo, 1
  br i1 %i.oq, label %.loopexit1132, label %bb.cx, !prof !10

bb.cx:                                            ; preds = %.lr.ph.i387
  %i.or = load i8, ptr %.sroa.0.1136.i388, align 1, !alias.scope !3334, !noalias !3335, !noundef !5
  %i.os = zext i8 %i.or to i32
  %i.ot = add nsw i32 %i.os, -48                  ; 2 uses
  %i.ou = icmp ult i32 %i.ot, 10
  br i1 %i.ou, label %bb.cy, label %.loopexit1132

bb.cy:                                            ; preds = %bb.cx
  %i.ov = zext nneg i32 %i.ot to i64
  %i.ow = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.op, i64 %i.ov) ; 2 uses
  %i.ox = extractvalue { i64, i1 } %i.ow, 1
  br i1 %i.ox, label %.loopexit1132, label %bb.cz, !prof !10

bb.cz:                                            ; preds = %bb.cy
  %i.oy = extractvalue { i64, i1 } %i.ow, 0       ; 2 uses
  %.not102.i392 = icmp eq i64 %i.on, 0
  br i1 %.not102.i392, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit419, label %.lr.ph.i387

.lr.ph141.i397:                                   ; preds = %bb.cw, %bb.da
  %.sroa.0.2140.i398 = phi ptr [ %i.pf, %bb.da ], [ %i.oj, %bb.cw ] ; 2 uses
  %.sroa.26.2139.i399 = phi i64 [ %i.pe, %bb.da ], [ %i.ok, %bb.cw ]
  %.sroa.084.2138.i400 = phi i64 [ %i.ph, %bb.da ], [ 0, %bb.cw ]
  %i.oz = load i8, ptr %.sroa.0.2140.i398, align 1, !alias.scope !3334, !noalias !3335, !noundef !5
  %i.pa = zext i8 %i.oz to i32
  %i.pb = add nsw i32 %i.pa, -48                  ; 2 uses
  %i.pc = icmp ult i32 %i.pb, 10
  br i1 %i.pc, label %bb.da, label %.loopexit1132

bb.da:                                            ; preds = %.lr.ph141.i397
  %i.pd = mul i64 %.sroa.084.2138.i400, 10
  %i.pe = add nsw i64 %.sroa.26.2139.i399, -1     ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i398, i64 1
  %i.pg = zext nneg i32 %i.pb to i64
  %i.ph = sub i64 %i.pd, %i.pg                    ; 2 uses
  %.not103.i401 = icmp eq i64 %i.pe, 0
  br i1 %.not103.i401, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit419, label %.lr.ph141.i397

bb.db:                                            ; preds = %bb.cu, %bb.cv, %thread-pre-split.i417
  %.sroa.26.0.i402 = phi i64 [ %i.oi, %bb.cv ], [ %i.cn, %thread-pre-split.i417 ], [ %i.cn, %bb.cu ] ; 3 uses
  %.sroa.0.0.i403 = phi ptr [ %i.oh, %bb.cv ], [ %i.cp, %thread-pre-split.i417 ], [ %i.cp, %bb.cu ] ; 2 uses
  %i.pi = icmp samesign ult i64 %.sroa.26.0.i402, 16
  br i1 %i.pi, label %.lr.ph150.i412, label %.preheader111.i404

.preheader111.i404:                               ; preds = %bb.db, %bb.de
  %.sroa.0.3145.i405 = phi ptr [ %i.pj, %bb.de ], [ %.sroa.0.0.i403, %bb.db ] ; 2 uses
  %.sroa.26.3144.i406 = phi i64 [ %i.pk, %bb.de ], [ %.sroa.26.0.i402, %bb.db ]
  %.sroa.084.3143.i407 = phi i64 [ %i.pv, %bb.de ], [ 0, %bb.db ]
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i405, i64 1
  %i.pk = add nsw i64 %.sroa.26.3144.i406, -1     ; 2 uses
  %i.pl = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i407, i64 10) ; 2 uses
  %i.pm = extractvalue { i64, i1 } %i.pl, 0
  %i.pn = extractvalue { i64, i1 } %i.pl, 1
  br i1 %i.pn, label %.loopexit1132, label %bb.dc, !prof !10

bb.dc:                                            ; preds = %.preheader111.i404
  %i.po = load i8, ptr %.sroa.0.3145.i405, align 1, !alias.scope !3334, !noalias !3335, !noundef !5
  %i.pp = zext i8 %i.po to i32
  %i.pq = add nsw i32 %i.pp, -48                  ; 2 uses
  %i.pr = icmp ult i32 %i.pq, 10
  br i1 %i.pr, label %bb.dd, label %.loopexit1132

bb.dd:                                            ; preds = %bb.dc
  %i.ps = zext nneg i32 %i.pq to i64
  %i.pt = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.pm, i64 %i.ps) ; 2 uses
  %i.pu = extractvalue { i64, i1 } %i.pt, 1
  br i1 %i.pu, label %.loopexit1132, label %bb.de, !prof !10

bb.de:                                            ; preds = %bb.dd
  %i.pv = extractvalue { i64, i1 } %i.pt, 0       ; 2 uses
  %.not104.i409 = icmp eq i64 %i.pk, 0
  br i1 %.not104.i409, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit419, label %.preheader111.i404

.lr.ph150.i412:                                   ; preds = %bb.db, %bb.df
  %.sroa.0.4149.i413 = phi ptr [ %i.qc, %bb.df ], [ %.sroa.0.0.i403, %bb.db ] ; 2 uses
  %.sroa.26.4148.i414 = phi i64 [ %i.qb, %bb.df ], [ %.sroa.26.0.i402, %bb.db ]
  %.sroa.084.4147.i415 = phi i64 [ %i.qe, %bb.df ], [ 0, %bb.db ]
  %i.pw = load i8, ptr %.sroa.0.4149.i413, align 1, !alias.scope !3334, !noalias !3335, !noundef !5
  %i.px = zext i8 %i.pw to i32
  %i.py = add nsw i32 %i.px, -48                  ; 2 uses
  %i.pz = icmp ult i32 %i.py, 10
  br i1 %i.pz, label %bb.df, label %.loopexit1132

bb.df:                                            ; preds = %.lr.ph150.i412
  %i.qa = mul i64 %.sroa.084.4147.i415, 10
  %i.qb = add nsw i64 %.sroa.26.4148.i414, -1     ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i413, i64 1
  %i.qd = zext nneg i32 %i.py to i64
  %i.qe = add i64 %i.qa, %i.qd                    ; 2 uses
  %.not105.i416 = icmp eq i64 %i.qb, 0
  br i1 %.not105.i416, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit419, label %.lr.ph150.i412

.loopexit1132:                                    ; preds = %.lr.ph.i387, %bb.cy, %bb.cx, %.lr.ph141.i397, %.preheader111.i404, %bb.dc, %bb.dd, %.lr.ph150.i412, %bb.cu, %bb.cu, %.thread951
  %.ph959 = phi ptr [ %i.cp, %.preheader111.i404 ], [ %i.cp, %.lr.ph141.i397 ], [ %i.cp, %.lr.ph150.i412 ], [ %i.cp, %bb.cu ], [ inttoptr (i64 1 to ptr), %.thread951 ], [ %i.cp, %bb.cu ], [ %i.cp, %bb.dd ], [ %i.cp, %bb.dc ], [ %i.cp, %bb.cx ], [ %i.cp, %bb.cy ], [ %i.cp, %.lr.ph.i387 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ax, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph959, i64 noundef %i.cn) #27
  %i.qf = load i8, ptr %i.ax, align 8, !range !16, !noundef !5
  %i.qg = trunc nuw i8 %i.qf to i1
  br i1 %i.qg, label %bb.di, label %bb.dj

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit419: ; preds = %bb.cz, %bb.da, %bb.de, %bb.df
  %.sroa.15745.0 = phi i64 [ %i.pv, %bb.de ], [ %i.ph, %bb.da ], [ %i.qe, %bb.df ], [ %i.oy, %bb.cz ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8, i64 noundef %.sroa.15745.0) #26
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dj, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit419
  %i.qh = phi ptr [ %.ph959, %bb.dj ], [ %i.cp, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit419 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 33, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.av) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %i.qi = icmp eq i64 %i.cn, 0
  br i1 %i.qi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit422, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qh, i64 noundef %i.cn, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3336
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit422

bb.di:                                            ; preds = %.loopexit1132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store i64 %i.cn, ptr %i.aw, align 8
  %.sroa.5740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.ph959, ptr %.sroa.5740.0..sroa_idx, align 8
  %.sroa.8741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %i.cn, ptr %.sroa.8741.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aw) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 33, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.av) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit422

bb.dj:                                            ; preds = %.loopexit1132
  %i.qj = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.qk = load double, ptr %i.qj, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8, double noundef %i.qk) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.dg

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit422: ; preds = %bb.dh, %bb.dg, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store ptr %i.az, ptr %i.au, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.479.0..sroa_idx, align 8
  %i.ql = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qn = load ptr, ptr %i.qm, align 8, !nonnull !5, !align !7, !noundef !5
  %i.qo = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.ql, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qn, ptr noundef nonnull @42, ptr noundef nonnull %i.au) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.experimental.noalias.scope.decl(metadata !3337)
  %.val.i423 = load i64, ptr %i.az, align 8, !range !6, !alias.scope !3337, !noundef !5 ; 2 uses
  %i.qp = icmp eq i64 %.val.i423, 0
  br i1 %i.qp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit425, label %bb.dk

bb.dk:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit422
  %i.qq = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.val1.i424 = load ptr, ptr %i.qq, align 8, !alias.scope !3337, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i424, i64 noundef %.val.i423, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3337
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit425

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit425: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit422, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.bd

bb.dl:                                            ; preds = %bb.h, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i238
  %.sroa.4816.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i238 ], [ 0, %bb.h ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4816.0.ph, i64 %i.cv) #30
  unreachable

bb.dm:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i238
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cx, ptr align 1 %i.cu, i64 %i.cv, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %cond1101 = icmp eq i64 %i.cv, 1
  %i.qr = load i8, ptr %i.cx, align 1, !alias.scope !3338, !noalias !3339 ; 2 uses
  br i1 %cond1101, label %bb.dn, label %thread-pre-split.i457

bb.dn:                                            ; preds = %bb.dm
  switch i8 %i.qr, label %bb.du [
    i8 43, label %.loopexit1142
    i8 45, label %.loopexit1142
  ]

thread-pre-split.i457:                            ; preds = %bb.dm
  switch i8 %i.qr, label %bb.du [
    i8 43, label %bb.do
    i8 45, label %bb.dp
  ]

bb.do:                                            ; preds = %thread-pre-split.i457
  %i.qs = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  %i.qt = add nsw i64 %i.cv, -1
  br label %bb.du

bb.dp:                                            ; preds = %thread-pre-split.i457
  %i.qu = getelementptr inbounds nuw i8, ptr %i.cx, i64 1 ; 2 uses
  %i.qv = add nsw i64 %i.cv, -1                   ; 2 uses
  %i.qw = icmp samesign ult i64 %i.cv, 17
  br i1 %i.qw, label %.lr.ph141.i437, label %.lr.ph.i427

.lr.ph.i427:                                      ; preds = %bb.dp, %bb.ds
  %.sroa.0.1136.i428 = phi ptr [ %i.qx, %bb.ds ], [ %i.qu, %bb.dp ] ; 2 uses
  %.sroa.26.1135.i429 = phi i64 [ %i.qy, %bb.ds ], [ %i.qv, %bb.dp ]
  %.sroa.084.0134.i430 = phi i64 [ %i.rj, %bb.ds ], [ 0, %bb.dp ]
  %i.qx = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i428, i64 1
  %i.qy = add nsw i64 %.sroa.26.1135.i429, -1     ; 2 uses
  %i.qz = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i430, i64 10) ; 2 uses
  %i.ra = extractvalue { i64, i1 } %i.qz, 0
  %i.rb = extractvalue { i64, i1 } %i.qz, 1
  br i1 %i.rb, label %.loopexit1142, label %bb.dq, !prof !10

bb.dq:                                            ; preds = %.lr.ph.i427
  %i.rc = load i8, ptr %.sroa.0.1136.i428, align 1, !alias.scope !3338, !noalias !3339, !noundef !5
  %i.rd = zext i8 %i.rc to i32
  %i.re = add nsw i32 %i.rd, -48                  ; 2 uses
  %i.rf = icmp ult i32 %i.re, 10
  br i1 %i.rf, label %bb.dr, label %.loopexit1142

bb.dr:                                            ; preds = %bb.dq
  %i.rg = zext nneg i32 %i.re to i64
  %i.rh = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ra, i64 %i.rg) ; 2 uses
  %i.ri = extractvalue { i64, i1 } %i.rh, 1
  br i1 %i.ri, label %.loopexit1142, label %bb.ds, !prof !10

bb.ds:                                            ; preds = %bb.dr
  %i.rj = extractvalue { i64, i1 } %i.rh, 0       ; 2 uses
  %.not102.i432 = icmp eq i64 %i.qy, 0
  br i1 %.not102.i432, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit459, label %.lr.ph.i427

.lr.ph141.i437:                                   ; preds = %bb.dp, %bb.dt
  %.sroa.0.2140.i438 = phi ptr [ %i.rq, %bb.dt ], [ %i.qu, %bb.dp ] ; 2 uses
  %.sroa.26.2139.i439 = phi i64 [ %i.rp, %bb.dt ], [ %i.qv, %bb.dp ]
  %.sroa.084.2138.i440 = phi i64 [ %i.rs, %bb.dt ], [ 0, %bb.dp ]
  %i.rk = load i8, ptr %.sroa.0.2140.i438, align 1, !alias.scope !3338, !noalias !3339, !noundef !5
  %i.rl = zext i8 %i.rk to i32
  %i.rm = add nsw i32 %i.rl, -48                  ; 2 uses
  %i.rn = icmp ult i32 %i.rm, 10
  br i1 %i.rn, label %bb.dt, label %.loopexit1142

bb.dt:                                            ; preds = %.lr.ph141.i437
  %i.ro = mul i64 %.sroa.084.2138.i440, 10
  %i.rp = add nsw i64 %.sroa.26.2139.i439, -1     ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i438, i64 1
  %i.rr = zext nneg i32 %i.rm to i64
  %i.rs = sub i64 %i.ro, %i.rr                    ; 2 uses
  %.not103.i441 = icmp eq i64 %i.rp, 0
  br i1 %.not103.i441, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit459, label %.lr.ph141.i437

bb.du:                                            ; preds = %bb.dn, %bb.do, %thread-pre-split.i457
  %.sroa.26.0.i442 = phi i64 [ %i.qt, %bb.do ], [ %i.cv, %thread-pre-split.i457 ], [ %i.cv, %bb.dn ] ; 3 uses
  %.sroa.0.0.i443 = phi ptr [ %i.qs, %bb.do ], [ %i.cx, %thread-pre-split.i457 ], [ %i.cx, %bb.dn ] ; 2 uses
  %i.rt = icmp samesign ult i64 %.sroa.26.0.i442, 16
  br i1 %i.rt, label %.lr.ph150.i452, label %.preheader111.i444

.preheader111.i444:                               ; preds = %bb.du, %bb.dx
  %.sroa.0.3145.i445 = phi ptr [ %i.ru, %bb.dx ], [ %.sroa.0.0.i443, %bb.du ] ; 2 uses
  %.sroa.26.3144.i446 = phi i64 [ %i.rv, %bb.dx ], [ %.sroa.26.0.i442, %bb.du ]
  %.sroa.084.3143.i447 = phi i64 [ %i.sg, %bb.dx ], [ 0, %bb.du ]
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i445, i64 1
  %i.rv = add nsw i64 %.sroa.26.3144.i446, -1     ; 2 uses
  %i.rw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i447, i64 10) ; 2 uses
  %i.rx = extractvalue { i64, i1 } %i.rw, 0
  %i.ry = extractvalue { i64, i1 } %i.rw, 1
  br i1 %i.ry, label %.loopexit1142, label %bb.dv, !prof !10

bb.dv:                                            ; preds = %.preheader111.i444
  %i.rz = load i8, ptr %.sroa.0.3145.i445, align 1, !alias.scope !3338, !noalias !3339, !noundef !5
  %i.sa = zext i8 %i.rz to i32
  %i.sb = add nsw i32 %i.sa, -48                  ; 2 uses
  %i.sc = icmp ult i32 %i.sb, 10
  br i1 %i.sc, label %bb.dw, label %.loopexit1142

bb.dw:                                            ; preds = %bb.dv
  %i.sd = zext nneg i32 %i.sb to i64
  %i.se = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.rx, i64 %i.sd) ; 2 uses
  %i.sf = extractvalue { i64, i1 } %i.se, 1
  br i1 %i.sf, label %.loopexit1142, label %bb.dx, !prof !10

bb.dx:                                            ; preds = %bb.dw
  %i.sg = extractvalue { i64, i1 } %i.se, 0       ; 2 uses
  %.not104.i449 = icmp eq i64 %i.rv, 0
  br i1 %.not104.i449, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit459, label %.preheader111.i444

.lr.ph150.i452:                                   ; preds = %bb.du, %bb.dy
  %.sroa.0.4149.i453 = phi ptr [ %i.sn, %bb.dy ], [ %.sroa.0.0.i443, %bb.du ] ; 2 uses
  %.sroa.26.4148.i454 = phi i64 [ %i.sm, %bb.dy ], [ %.sroa.26.0.i442, %bb.du ]
  %.sroa.084.4147.i455 = phi i64 [ %i.sp, %bb.dy ], [ 0, %bb.du ]
  %i.sh = load i8, ptr %.sroa.0.4149.i453, align 1, !alias.scope !3338, !noalias !3339, !noundef !5
  %i.si = zext i8 %i.sh to i32
  %i.sj = add nsw i32 %i.si, -48                  ; 2 uses
  %i.sk = icmp ult i32 %i.sj, 10
  br i1 %i.sk, label %bb.dy, label %.loopexit1142

bb.dy:                                            ; preds = %.lr.ph150.i452
  %i.sl = mul i64 %.sroa.084.4147.i455, 10
  %i.sm = add nsw i64 %.sroa.26.4148.i454, -1     ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i453, i64 1
  %i.so = zext nneg i32 %i.sj to i64
  %i.sp = add i64 %i.sl, %i.so                    ; 2 uses
  %.not105.i456 = icmp eq i64 %i.sm, 0
  br i1 %.not105.i456, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit459, label %.lr.ph150.i452

.loopexit1142:                                    ; preds = %.lr.ph.i427, %bb.dr, %bb.dq, %.lr.ph141.i437, %.preheader111.i444, %bb.dv, %bb.dw, %.lr.ph150.i452, %bb.dn, %bb.dn, %.thread973
  %.ph981 = phi ptr [ %i.cx, %.preheader111.i444 ], [ %i.cx, %.lr.ph141.i437 ], [ %i.cx, %.lr.ph150.i452 ], [ %i.cx, %bb.dn ], [ inttoptr (i64 1 to ptr), %.thread973 ], [ %i.cx, %bb.dn ], [ %i.cx, %bb.dw ], [ %i.cx, %bb.dv ], [ %i.cx, %bb.dq ], [ %i.cx, %bb.dr ], [ %i.cx, %.lr.ph.i427 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph981, i64 noundef %i.cv) #27
  %i.sq = load i8, ptr %i.ar, align 8, !range !16, !noundef !5
  %i.sr = trunc nuw i8 %i.sq to i1
  br i1 %i.sr, label %bb.eg, label %bb.eh

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit459: ; preds = %bb.ds, %bb.dt, %bb.dx, %bb.dy
  %.sroa.15752.0 = phi i64 [ %i.sg, %bb.dx ], [ %i.rs, %bb.dt ], [ %i.sp, %bb.dy ], [ %i.rj, %bb.ds ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8, i64 noundef %.sroa.15752.0) #26
  br label %bb.dz

bb.dz:                                            ; preds = %bb.eh, %bb.eg, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit459
  %i.ss = phi ptr [ %.ph981, %bb.eg ], [ %.ph981, %bb.eh ], [ %i.cx, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit459 ]
  %.sroa.03.0.not = phi i1 [ true, %bb.eg ], [ false, %bb.eh ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit459 ]
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.su = load i32, ptr %i.st, align 4, !range !24, !noundef !5 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01343)
  store i32 0, ptr %.sroa.01343, align 4
  %i.sv = icmp samesign ult i32 %i.su, 128        ; 3 uses
  br i1 %i.sv, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.sw = icmp samesign ult i32 %i.su, 2048
  %i.sx = trunc i32 %i.su to i8
  %i.sy = and i8 %i.sx, 63
  %i.sz = or disjoint i8 %i.sy, -128              ; 3 uses
  %i.ta = lshr i32 %i.su, 6
  %i.tb = trunc i32 %i.ta to i8                   ; 2 uses
  %i.tc = and i8 %i.tb, 63
  %i.td = or disjoint i8 %i.tc, -128              ; 2 uses
  %i.te = lshr i32 %i.su, 12
  %i.tf = trunc i32 %i.te to i8                   ; 2 uses
  %i.tg = and i8 %i.tf, 63
  %i.th = or disjoint i8 %i.tg, -128
  %i.ti = lshr i32 %i.su, 18
  %i.tj = trunc nuw nsw i32 %i.ti to i8
  %i.tk = or disjoint i8 %i.tj, -16
  br i1 %i.sw, label %bb.ec, label %bb.ed

bb.eb:                                            ; preds = %bb.dz
  %i.tl = trunc nuw nsw i32 %i.su to i8
  store i8 %i.tl, ptr %.sroa.01343, align 4, !alias.scope !3340
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i463

bb.ec:                                            ; preds = %bb.ea
  %i.tm = or disjoint i8 %i.tb, -64
  store i8 %i.tm, ptr %.sroa.01343, align 4, !alias.scope !3340
  %.sroa.01343.1..sroa_idx1813 = getelementptr inbounds nuw i8, ptr %.sroa.01343, i64 1
  store i8 %i.sz, ptr %.sroa.01343.1..sroa_idx1813, align 1, !alias.scope !3340
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i463

bb.ed:                                            ; preds = %bb.ea
  %i.tn = icmp samesign ult i32 %i.su, 65536
  br i1 %i.tn, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.to = or disjoint i8 %i.tf, -32
  store i8 %i.to, ptr %.sroa.01343, align 4, !alias.scope !3340
  %.sroa.01343.1..sroa_idx1812 = getelementptr inbounds nuw i8, ptr %.sroa.01343, i64 1
  store i8 %i.td, ptr %.sroa.01343.1..sroa_idx1812, align 1, !alias.scope !3340
  %.sroa.01343.2..sroa_idx1814 = getelementptr inbounds nuw i8, ptr %.sroa.01343, i64 2
  store i8 %i.sz, ptr %.sroa.01343.2..sroa_idx1814, align 2, !alias.scope !3340
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i463

bb.ef:                                            ; preds = %bb.ed
  store i8 %i.tk, ptr %.sroa.01343, align 4, !alias.scope !3340
  %.sroa.01343.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01343, i64 1
  store i8 %i.th, ptr %.sroa.01343.1..sroa_idx, align 1, !alias.scope !3340
  %.sroa.01343.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01343, i64 2
  store i8 %i.td, ptr %.sroa.01343.2..sroa_idx, align 2, !alias.scope !3340
  %.sroa.01343.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01343, i64 3
  store i8 %i.sz, ptr %.sroa.01343.3..sroa_idx, align 1, !alias.scope !3340
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i463

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i463: ; preds = %bb.eb, %bb.ec, %bb.ee, %bb.ef
  %.not103.i481 = phi i1 [ false, %bb.eb ], [ true, %bb.ec ], [ false, %bb.ee ], [ false, %bb.ef ]
  %.not103.i481.1 = phi i1 [ false, %bb.eb ], [ false, %bb.ec ], [ true, %bb.ee ], [ false, %bb.ef ]
  %.sroa.0.05.i460 = phi i64 [ 1, %bb.eb ], [ 2, %bb.ec ], [ 3, %bb.ee ], [ 4, %bb.ef ] ; 10 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3341
  %i.tp = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.05.i460, i64 noundef range(i64 1, 9) 1) #26, !noalias !3341 ; 12 uses
  %i.tq = icmp eq ptr %i.tp, null
  br i1 %i.tq, label %bb.ei, label %bb.ej

bb.eg:                                            ; preds = %.loopexit1142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i64 %i.cv, ptr %i.aq, align 8
  %.sroa.5747.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %.ph981, ptr %.sroa.5747.0..sroa_idx, align 8
  %.sroa.8748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 %i.cv, ptr %.sroa.8748.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aq) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.dz

bb.eh:                                            ; preds = %.loopexit1142
  %i.tr = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ts = load double, ptr %i.tr, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8, double noundef %i.ts) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.dz

bb.ei:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i463
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.sroa.0.05.i460) #30
  unreachable

bb.ej:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i463
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.tp, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.01343, i64 %.sroa.0.05.i460, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01343)
  %i.tt = load i8, ptr %i.tp, align 1, !alias.scope !3342, !noalias !3343 ; 2 uses
  br i1 %i.sv, label %bb.ek, label %thread-pre-split.i497

bb.ek:                                            ; preds = %bb.ej
  switch i8 %i.tt, label %.lr.ph150.i492.preheader [
    i8 43, label %.loopexit1139
    i8 45, label %.loopexit1139
  ]

thread-pre-split.i497:                            ; preds = %bb.ej
  switch i8 %i.tt, label %.lr.ph150.i492.preheader [
    i8 43, label %.preheader.i490
    i8 45, label %.preheader114.i475
  ]

.preheader114.i475:                               ; preds = %thread-pre-split.i497
  br i1 %i.sv, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit499, label %.lr.ph141.i477

.lr.ph141.i477:                                   ; preds = %.preheader114.i475
  %.sroa.0.2140.i478 = getelementptr inbounds nuw i8, ptr %i.tp, i64 1
  %i.tu = load i8, ptr %.sroa.0.2140.i478, align 1, !alias.scope !3342, !noalias !3343, !noundef !5
  %i.tv = zext i8 %i.tu to i32
  %i.tw = add nsw i32 %i.tv, -48                  ; 2 uses
  %i.tx = icmp ult i32 %i.tw, 10
  br i1 %i.tx, label %bb.el, label %.loopexit1139

bb.el:                                            ; preds = %.lr.ph141.i477
  %i.ty = zext nneg i32 %i.tw to i64              ; 2 uses
  %i.tz = sub nsw i64 0, %i.ty
  br i1 %.not103.i481, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit499, label %.lr.ph141.i477.1

.lr.ph141.i477.1:                                 ; preds = %bb.el
  %.sroa.0.2140.i478.1 = getelementptr inbounds nuw i8, ptr %i.tp, i64 2
  %i.ua = load i8, ptr %.sroa.0.2140.i478.1, align 1, !alias.scope !3342, !noalias !3343, !noundef !5
  %i.ub = zext i8 %i.ua to i32
  %i.uc = add nsw i32 %i.ub, -48                  ; 2 uses
  %i.ud = icmp ult i32 %i.uc, 10
  br i1 %i.ud, label %bb.em, label %.loopexit1139

bb.em:                                            ; preds = %.lr.ph141.i477.1
  %i.ue = mul nsw i64 %i.ty, -10
  %i.uf = zext nneg i32 %i.uc to i64
  %i.ug = sub nsw i64 %i.ue, %i.uf                ; 2 uses
  br i1 %.not103.i481.1, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit499, label %.lr.ph141.i477.2

.lr.ph141.i477.2:                                 ; preds = %bb.em
  %.sroa.0.2140.i478.2 = getelementptr inbounds nuw i8, ptr %i.tp, i64 3
  %i.uh = load i8, ptr %.sroa.0.2140.i478.2, align 1, !alias.scope !3342, !noalias !3343, !noundef !5
  %i.ui = zext i8 %i.uh to i32
  %i.uj = add nsw i32 %i.ui, -48                  ; 2 uses
  %i.uk = icmp ult i32 %i.uj, 10
  br i1 %i.uk, label %bb.en, label %.loopexit1139

bb.en:                                            ; preds = %.lr.ph141.i477.2
  %i.ul = mul nsw i64 %i.ug, 10
  %i.um = zext nneg i32 %i.uj to i64
  %i.un = sub nsw i64 %i.ul, %i.um
  br label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit499

.preheader.i490:                                  ; preds = %thread-pre-split.i497
  %i.uo = getelementptr inbounds nuw i8, ptr %i.tp, i64 1
  %i.up = add nsw i64 %.sroa.0.05.i460, -1        ; 2 uses
  %.not105146.i491 = icmp eq i64 %i.up, 0
  br i1 %.not105146.i491, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit499, label %.lr.ph150.i492.preheader

.lr.ph150.i492.preheader:                         ; preds = %bb.ek, %thread-pre-split.i497, %.preheader.i490
  %.sroa.0.4149.i493.ph = phi ptr [ %i.tp, %bb.ek ], [ %i.tp, %thread-pre-split.i497 ], [ %i.uo, %.preheader.i490 ]
  %.sroa.26.4148.i494.ph = phi i64 [ %.sroa.0.05.i460, %bb.ek ], [ %.sroa.0.05.i460, %thread-pre-split.i497 ], [ %i.up, %.preheader.i490 ]
  br label %.lr.ph150.i492

.lr.ph150.i492:                                   ; preds = %.lr.ph150.i492.preheader, %bb.eo
  %.sroa.0.4149.i493 = phi ptr [ %i.uw, %bb.eo ], [ %.sroa.0.4149.i493.ph, %.lr.ph150.i492.preheader ] ; 2 uses
  %.sroa.26.4148.i494 = phi i64 [ %i.uv, %bb.eo ], [ %.sroa.26.4148.i494.ph, %.lr.ph150.i492.preheader ]
  %.sroa.084.4147.i495 = phi i64 [ %i.uy, %bb.eo ], [ 0, %.lr.ph150.i492.preheader ]
  %i.uq = load i8, ptr %.sroa.0.4149.i493, align 1, !alias.scope !3342, !noalias !3343, !noundef !5
  %i.ur = zext i8 %i.uq to i32
  %i.us = add nsw i32 %i.ur, -48                  ; 2 uses
  %i.ut = icmp ult i32 %i.us, 10
  br i1 %i.ut, label %bb.eo, label %.loopexit1139

bb.eo:                                            ; preds = %.lr.ph150.i492
  %i.uu = mul i64 %.sroa.084.4147.i495, 10
  %i.uv = add nsw i64 %.sroa.26.4148.i494, -1     ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i493, i64 1
  %i.ux = zext nneg i32 %i.us to i64
  %i.uy = add i64 %i.uu, %i.ux                    ; 2 uses
  %.not105.i496 = icmp eq i64 %i.uv, 0
  br i1 %.not105.i496, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit499, label %.lr.ph150.i492

.loopexit1139:                                    ; preds = %.lr.ph141.i477, %.lr.ph141.i477.1, %.lr.ph141.i477.2, %.lr.ph150.i492, %bb.ek, %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ap, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.tp, i64 noundef %.sroa.0.05.i460) #27
  %i.uz = load i8, ptr %i.ap, align 8, !range !16, !noundef !5
  %i.va = trunc nuw i8 %i.uz to i1
  br i1 %i.va, label %bb.eq, label %bb.er

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit499: ; preds = %bb.el, %bb.em, %bb.en, %bb.eo, %.preheader.i490, %.preheader114.i475
  %.sroa.15759.0 = phi i64 [ 0, %.preheader114.i475 ], [ 0, %.preheader.i490 ], [ %i.uy, %bb.eo ], [ %i.tz, %bb.el ], [ %i.ug, %bb.em ], [ %i.un, %bb.en ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 4, i64 noundef %.sroa.15759.0) #26
  br label %bb.ep

bb.ep:                                            ; preds = %bb.er, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef 26, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.an) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tp, i64 noundef %.sroa.0.05.i460, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3344
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit502

bb.eq:                                            ; preds = %.loopexit1139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i64 %.sroa.0.05.i460, ptr %i.ao, align 8
  %.sroa.5754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.tp, ptr %.sroa.5754.0..sroa_idx, align 8
  %.sroa.8755.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %.sroa.0.05.i460, ptr %.sroa.8755.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ao) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef 26, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.an) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit502

bb.er:                                            ; preds = %.loopexit1139
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.vc = load double, ptr %i.vb, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 4, double noundef %i.vc) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.ep

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit502: ; preds = %bb.ep, %bb.eq
  %i.vd = icmp eq i64 %i.cv, 0
  %or.cond1107 = or i1 %.sroa.03.0.not, %i.vd
  br i1 %or.cond1107, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit508, label %bb.et

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit508: ; preds = %bb.et, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr %i.at, ptr %i.am, align 8
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4101.0..sroa_idx, align 8
  %i.ve = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.vf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.vg = load ptr, ptr %i.vf, align 8, !nonnull !5, !align !7, !noundef !5
  %i.vh = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.ve, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.vg, ptr noundef nonnull @42, ptr noundef nonnull %i.am) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.experimental.noalias.scope.decl(metadata !3345)
  %.val.i503 = load i64, ptr %i.at, align 8, !range !6, !alias.scope !3345, !noundef !5 ; 2 uses
  %i.vi = icmp eq i64 %.val.i503, 0
  br i1 %i.vi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit505, label %bb.es

bb.es:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit508
  %i.vj = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.val1.i504 = load ptr, ptr %i.vj, align 8, !alias.scope !3345, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i504, i64 noundef %.val.i503, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3345
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit505

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit505: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit508, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.bd

bb.et:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit502
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ss, i64 noundef %i.cv, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3346
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit508

bb.eu:                                            ; preds = %bb.j, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i242
  %.sroa.4824.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i242 ], [ 0, %bb.j ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4824.0.ph, i64 %i.dd) #30
  unreachable

bb.ev:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i242
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.df, ptr align 1 %i.dc, i64 %i.dd, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %cond1102 = icmp eq i64 %i.dd, 1
  %i.vk = load i8, ptr %i.df, align 1, !alias.scope !3347, !noalias !3348 ; 2 uses
  br i1 %cond1102, label %bb.ew, label %thread-pre-split.i540

bb.ew:                                            ; preds = %bb.ev
  switch i8 %i.vk, label %bb.fd [
    i8 43, label %.loopexit1149
    i8 45, label %.loopexit1149
  ]

thread-pre-split.i540:                            ; preds = %bb.ev
  switch i8 %i.vk, label %bb.fd [
    i8 43, label %bb.ex
    i8 45, label %bb.ey
  ]

bb.ex:                                            ; preds = %thread-pre-split.i540
  %i.vl = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.vm = add nsw i64 %i.dd, -1
  br label %bb.fd

bb.ey:                                            ; preds = %thread-pre-split.i540
  %i.vn = getelementptr inbounds nuw i8, ptr %i.df, i64 1 ; 2 uses
  %i.vo = add nsw i64 %i.dd, -1                   ; 2 uses
  %i.vp = icmp samesign ult i64 %i.dd, 17
  br i1 %i.vp, label %.lr.ph141.i520, label %.lr.ph.i510

.lr.ph.i510:                                      ; preds = %bb.ey, %bb.fb
  %.sroa.0.1136.i511 = phi ptr [ %i.vq, %bb.fb ], [ %i.vn, %bb.ey ] ; 2 uses
  %.sroa.26.1135.i512 = phi i64 [ %i.vr, %bb.fb ], [ %i.vo, %bb.ey ]
  %.sroa.084.0134.i513 = phi i64 [ %i.wc, %bb.fb ], [ 0, %bb.ey ]
  %i.vq = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i511, i64 1
  %i.vr = add nsw i64 %.sroa.26.1135.i512, -1     ; 2 uses
  %i.vs = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i513, i64 10) ; 2 uses
  %i.vt = extractvalue { i64, i1 } %i.vs, 0
  %i.vu = extractvalue { i64, i1 } %i.vs, 1
  br i1 %i.vu, label %.loopexit1149, label %bb.ez, !prof !10

bb.ez:                                            ; preds = %.lr.ph.i510
  %i.vv = load i8, ptr %.sroa.0.1136.i511, align 1, !alias.scope !3347, !noalias !3348, !noundef !5
  %i.vw = zext i8 %i.vv to i32
  %i.vx = add nsw i32 %i.vw, -48                  ; 2 uses
  %i.vy = icmp ult i32 %i.vx, 10
  br i1 %i.vy, label %bb.fa, label %.loopexit1149

bb.fa:                                            ; preds = %bb.ez
  %i.vz = zext nneg i32 %i.vx to i64
  %i.wa = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.vt, i64 %i.vz) ; 2 uses
  %i.wb = extractvalue { i64, i1 } %i.wa, 1
  br i1 %i.wb, label %.loopexit1149, label %bb.fb, !prof !10

bb.fb:                                            ; preds = %bb.fa
  %i.wc = extractvalue { i64, i1 } %i.wa, 0       ; 2 uses
  %.not102.i515 = icmp eq i64 %i.vr, 0
  br i1 %.not102.i515, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit542, label %.lr.ph.i510

.lr.ph141.i520:                                   ; preds = %bb.ey, %bb.fc
  %.sroa.0.2140.i521 = phi ptr [ %i.wj, %bb.fc ], [ %i.vn, %bb.ey ] ; 2 uses
  %.sroa.26.2139.i522 = phi i64 [ %i.wi, %bb.fc ], [ %i.vo, %bb.ey ]
  %.sroa.084.2138.i523 = phi i64 [ %i.wl, %bb.fc ], [ 0, %bb.ey ]
  %i.wd = load i8, ptr %.sroa.0.2140.i521, align 1, !alias.scope !3347, !noalias !3348, !noundef !5
  %i.we = zext i8 %i.wd to i32
  %i.wf = add nsw i32 %i.we, -48                  ; 2 uses
  %i.wg = icmp ult i32 %i.wf, 10
  br i1 %i.wg, label %bb.fc, label %.loopexit1149

bb.fc:                                            ; preds = %.lr.ph141.i520
  %i.wh = mul i64 %.sroa.084.2138.i523, 10
  %i.wi = add nsw i64 %.sroa.26.2139.i522, -1     ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i521, i64 1
  %i.wk = zext nneg i32 %i.wf to i64
  %i.wl = sub i64 %i.wh, %i.wk                    ; 2 uses
  %.not103.i524 = icmp eq i64 %i.wi, 0
  br i1 %.not103.i524, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit542, label %.lr.ph141.i520

bb.fd:                                            ; preds = %bb.ew, %bb.ex, %thread-pre-split.i540
  %.sroa.26.0.i525 = phi i64 [ %i.vm, %bb.ex ], [ %i.dd, %thread-pre-split.i540 ], [ %i.dd, %bb.ew ] ; 3 uses
  %.sroa.0.0.i526 = phi ptr [ %i.vl, %bb.ex ], [ %i.df, %thread-pre-split.i540 ], [ %i.df, %bb.ew ] ; 2 uses
  %i.wm = icmp samesign ult i64 %.sroa.26.0.i525, 16
  br i1 %i.wm, label %.lr.ph150.i535, label %.preheader111.i527

.preheader111.i527:                               ; preds = %bb.fd, %bb.fg
  %.sroa.0.3145.i528 = phi ptr [ %i.wn, %bb.fg ], [ %.sroa.0.0.i526, %bb.fd ] ; 2 uses
  %.sroa.26.3144.i529 = phi i64 [ %i.wo, %bb.fg ], [ %.sroa.26.0.i525, %bb.fd ]
  %.sroa.084.3143.i530 = phi i64 [ %i.wz, %bb.fg ], [ 0, %bb.fd ]
  %i.wn = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i528, i64 1
  %i.wo = add nsw i64 %.sroa.26.3144.i529, -1     ; 2 uses
  %i.wp = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i530, i64 10) ; 2 uses
  %i.wq = extractvalue { i64, i1 } %i.wp, 0
  %i.wr = extractvalue { i64, i1 } %i.wp, 1
  br i1 %i.wr, label %.loopexit1149, label %bb.fe, !prof !10

bb.fe:                                            ; preds = %.preheader111.i527
  %i.ws = load i8, ptr %.sroa.0.3145.i528, align 1, !alias.scope !3347, !noalias !3348, !noundef !5
  %i.wt = zext i8 %i.ws to i32
  %i.wu = add nsw i32 %i.wt, -48                  ; 2 uses
  %i.wv = icmp ult i32 %i.wu, 10
  br i1 %i.wv, label %bb.ff, label %.loopexit1149

bb.ff:                                            ; preds = %bb.fe
  %i.ww = zext nneg i32 %i.wu to i64
  %i.wx = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.wq, i64 %i.ww) ; 2 uses
  %i.wy = extractvalue { i64, i1 } %i.wx, 1
  br i1 %i.wy, label %.loopexit1149, label %bb.fg, !prof !10

bb.fg:                                            ; preds = %bb.ff
  %i.wz = extractvalue { i64, i1 } %i.wx, 0       ; 2 uses
  %.not104.i532 = icmp eq i64 %i.wo, 0
  br i1 %.not104.i532, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit542, label %.preheader111.i527

.lr.ph150.i535:                                   ; preds = %bb.fd, %bb.fh
  %.sroa.0.4149.i536 = phi ptr [ %i.xg, %bb.fh ], [ %.sroa.0.0.i526, %bb.fd ] ; 2 uses
  %.sroa.26.4148.i537 = phi i64 [ %i.xf, %bb.fh ], [ %.sroa.26.0.i525, %bb.fd ]
  %.sroa.084.4147.i538 = phi i64 [ %i.xi, %bb.fh ], [ 0, %bb.fd ]
  %i.xa = load i8, ptr %.sroa.0.4149.i536, align 1, !alias.scope !3347, !noalias !3348, !noundef !5
  %i.xb = zext i8 %i.xa to i32
  %i.xc = add nsw i32 %i.xb, -48                  ; 2 uses
  %i.xd = icmp ult i32 %i.xc, 10
  br i1 %i.xd, label %bb.fh, label %.loopexit1149

bb.fh:                                            ; preds = %.lr.ph150.i535
  %i.xe = mul i64 %.sroa.084.4147.i538, 10
  %i.xf = add nsw i64 %.sroa.26.4148.i537, -1     ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i536, i64 1
  %i.xh = zext nneg i32 %i.xc to i64
  %i.xi = add i64 %i.xe, %i.xh                    ; 2 uses
  %.not105.i539 = icmp eq i64 %i.xf, 0
  br i1 %.not105.i539, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit542, label %.lr.ph150.i535

.loopexit1149:                                    ; preds = %.lr.ph.i510, %bb.fa, %bb.ez, %.lr.ph141.i520, %.preheader111.i527, %bb.fe, %bb.ff, %.lr.ph150.i535, %bb.ew, %bb.ew, %.thread1002
  %.ph1010 = phi ptr [ %i.df, %.preheader111.i527 ], [ %i.df, %.lr.ph141.i520 ], [ %i.df, %.lr.ph150.i535 ], [ %i.df, %bb.ew ], [ inttoptr (i64 1 to ptr), %.thread1002 ], [ %i.df, %bb.ew ], [ %i.df, %bb.ff ], [ %i.df, %bb.fe ], [ %i.df, %bb.ez ], [ %i.df, %bb.fa ], [ %i.df, %.lr.ph.i510 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1010, i64 noundef %i.dd) #27
  %i.xj = load i8, ptr %i.aj, align 8, !range !16, !noundef !5
  %i.xk = trunc nuw i8 %i.xj to i1
  br i1 %i.xk, label %bb.fk, label %bb.fl

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit542: ; preds = %bb.fb, %bb.fc, %bb.fg, %bb.fh
  %.sroa.15766.0 = phi i64 [ %i.wz, %bb.fg ], [ %i.wl, %bb.fc ], [ %i.xi, %bb.fh ], [ %i.wc, %bb.fb ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8, i64 noundef %.sroa.15766.0) #26
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fl, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit542
  %i.xl = phi ptr [ %.ph1010, %bb.fl ], [ %i.df, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit542 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 31, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ah) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.xm = icmp eq i64 %i.dd, 0
  br i1 %i.xm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit545, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xl, i64 noundef %i.dd, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3349
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit545

bb.fk:                                            ; preds = %.loopexit1149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i64 %i.dd, ptr %i.ai, align 8
  %.sroa.5761.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.ph1010, ptr %.sroa.5761.0..sroa_idx, align 8
  %.sroa.8762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %i.dd, ptr %.sroa.8762.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ai) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 31, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ah) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit545

bb.fl:                                            ; preds = %.loopexit1149
  %i.xn = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.xo = load double, ptr %i.xn, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8, double noundef %i.xo) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.fi

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit545: ; preds = %bb.fj, %bb.fi, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.al, ptr %i.ag, align 8
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4120.0..sroa_idx, align 8
  %i.xp = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.xq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xr = load ptr, ptr %i.xq, align 8, !nonnull !5, !align !7, !noundef !5
  %i.xs = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.xp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.xr, ptr noundef nonnull @42, ptr noundef nonnull %i.ag) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.experimental.noalias.scope.decl(metadata !3350)
  %.val.i546 = load i64, ptr %i.al, align 8, !range !6, !alias.scope !3350, !noundef !5 ; 2 uses
  %i.xt = icmp eq i64 %.val.i546, 0
  br i1 %i.xt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit548, label %bb.fm

bb.fm:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit545
  %i.xu = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.val1.i547 = load ptr, ptr %i.xu, align 8, !alias.scope !3350, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i547, i64 noundef %.val.i546, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3350
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit548

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit548: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit545, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.bd

bb.fn:                                            ; preds = %bb.l, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i246
  %.sroa.4828.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i246 ], [ 0, %bb.l ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4828.0.ph, i64 %i.dl) #30
  unreachable

bb.fo:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i246
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr align 1 %i.dk, i64 %i.dl, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %cond1103 = icmp eq i64 %i.dl, 1
  %i.xv = load i8, ptr %i.dn, align 1, !alias.scope !3351, !noalias !3352 ; 2 uses
  br i1 %cond1103, label %bb.fp, label %thread-pre-split.i580

bb.fp:                                            ; preds = %bb.fo
  switch i8 %i.xv, label %bb.fw [
    i8 43, label %.loopexit1156
    i8 45, label %.loopexit1156
  ]

thread-pre-split.i580:                            ; preds = %bb.fo
  switch i8 %i.xv, label %bb.fw [
    i8 43, label %bb.fq
    i8 45, label %bb.fr
  ]

bb.fq:                                            ; preds = %thread-pre-split.i580
  %i.xw = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.xx = add nsw i64 %i.dl, -1
  br label %bb.fw

bb.fr:                                            ; preds = %thread-pre-split.i580
  %i.xy = getelementptr inbounds nuw i8, ptr %i.dn, i64 1 ; 2 uses
  %i.xz = add nsw i64 %i.dl, -1                   ; 2 uses
  %i.ya = icmp samesign ult i64 %i.dl, 17
  br i1 %i.ya, label %.lr.ph141.i560, label %.lr.ph.i550

.lr.ph.i550:                                      ; preds = %bb.fr, %bb.fu
  %.sroa.0.1136.i551 = phi ptr [ %i.yb, %bb.fu ], [ %i.xy, %bb.fr ] ; 2 uses
  %.sroa.26.1135.i552 = phi i64 [ %i.yc, %bb.fu ], [ %i.xz, %bb.fr ]
  %.sroa.084.0134.i553 = phi i64 [ %i.yn, %bb.fu ], [ 0, %bb.fr ]
  %i.yb = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i551, i64 1
  %i.yc = add nsw i64 %.sroa.26.1135.i552, -1     ; 2 uses
  %i.yd = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i553, i64 10) ; 2 uses
  %i.ye = extractvalue { i64, i1 } %i.yd, 0
  %i.yf = extractvalue { i64, i1 } %i.yd, 1
  br i1 %i.yf, label %.loopexit1156, label %bb.fs, !prof !10

bb.fs:                                            ; preds = %.lr.ph.i550
  %i.yg = load i8, ptr %.sroa.0.1136.i551, align 1, !alias.scope !3351, !noalias !3352, !noundef !5
  %i.yh = zext i8 %i.yg to i32
  %i.yi = add nsw i32 %i.yh, -48                  ; 2 uses
  %i.yj = icmp ult i32 %i.yi, 10
  br i1 %i.yj, label %bb.ft, label %.loopexit1156

bb.ft:                                            ; preds = %bb.fs
  %i.yk = zext nneg i32 %i.yi to i64
  %i.yl = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ye, i64 %i.yk) ; 2 uses
  %i.ym = extractvalue { i64, i1 } %i.yl, 1
  br i1 %i.ym, label %.loopexit1156, label %bb.fu, !prof !10

bb.fu:                                            ; preds = %bb.ft
  %i.yn = extractvalue { i64, i1 } %i.yl, 0       ; 2 uses
  %.not102.i555 = icmp eq i64 %i.yc, 0
  br i1 %.not102.i555, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit582, label %.lr.ph.i550

.lr.ph141.i560:                                   ; preds = %bb.fr, %bb.fv
  %.sroa.0.2140.i561 = phi ptr [ %i.yu, %bb.fv ], [ %i.xy, %bb.fr ] ; 2 uses
  %.sroa.26.2139.i562 = phi i64 [ %i.yt, %bb.fv ], [ %i.xz, %bb.fr ]
  %.sroa.084.2138.i563 = phi i64 [ %i.yw, %bb.fv ], [ 0, %bb.fr ]
  %i.yo = load i8, ptr %.sroa.0.2140.i561, align 1, !alias.scope !3351, !noalias !3352, !noundef !5
  %i.yp = zext i8 %i.yo to i32
  %i.yq = add nsw i32 %i.yp, -48                  ; 2 uses
  %i.yr = icmp ult i32 %i.yq, 10
  br i1 %i.yr, label %bb.fv, label %.loopexit1156

bb.fv:                                            ; preds = %.lr.ph141.i560
  %i.ys = mul i64 %.sroa.084.2138.i563, 10
  %i.yt = add nsw i64 %.sroa.26.2139.i562, -1     ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i561, i64 1
  %i.yv = zext nneg i32 %i.yq to i64
  %i.yw = sub i64 %i.ys, %i.yv                    ; 2 uses
  %.not103.i564 = icmp eq i64 %i.yt, 0
  br i1 %.not103.i564, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit582, label %.lr.ph141.i560

bb.fw:                                            ; preds = %bb.fp, %bb.fq, %thread-pre-split.i580
  %.sroa.26.0.i565 = phi i64 [ %i.xx, %bb.fq ], [ %i.dl, %thread-pre-split.i580 ], [ %i.dl, %bb.fp ] ; 3 uses
  %.sroa.0.0.i566 = phi ptr [ %i.xw, %bb.fq ], [ %i.dn, %thread-pre-split.i580 ], [ %i.dn, %bb.fp ] ; 2 uses
  %i.yx = icmp samesign ult i64 %.sroa.26.0.i565, 16
  br i1 %i.yx, label %.lr.ph150.i575, label %.preheader111.i567

.preheader111.i567:                               ; preds = %bb.fw, %bb.fz
  %.sroa.0.3145.i568 = phi ptr [ %i.yy, %bb.fz ], [ %.sroa.0.0.i566, %bb.fw ] ; 2 uses
  %.sroa.26.3144.i569 = phi i64 [ %i.yz, %bb.fz ], [ %.sroa.26.0.i565, %bb.fw ]
  %.sroa.084.3143.i570 = phi i64 [ %i.zk, %bb.fz ], [ 0, %bb.fw ]
  %i.yy = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i568, i64 1
  %i.yz = add nsw i64 %.sroa.26.3144.i569, -1     ; 2 uses
  %i.za = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i570, i64 10) ; 2 uses
  %i.zb = extractvalue { i64, i1 } %i.za, 0
  %i.zc = extractvalue { i64, i1 } %i.za, 1
  br i1 %i.zc, label %.loopexit1156, label %bb.fx, !prof !10

bb.fx:                                            ; preds = %.preheader111.i567
  %i.zd = load i8, ptr %.sroa.0.3145.i568, align 1, !alias.scope !3351, !noalias !3352, !noundef !5
  %i.ze = zext i8 %i.zd to i32
  %i.zf = add nsw i32 %i.ze, -48                  ; 2 uses
  %i.zg = icmp ult i32 %i.zf, 10
  br i1 %i.zg, label %bb.fy, label %.loopexit1156

bb.fy:                                            ; preds = %bb.fx
  %i.zh = zext nneg i32 %i.zf to i64
  %i.zi = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.zb, i64 %i.zh) ; 2 uses
  %i.zj = extractvalue { i64, i1 } %i.zi, 1
  br i1 %i.zj, label %.loopexit1156, label %bb.fz, !prof !10

bb.fz:                                            ; preds = %bb.fy
  %i.zk = extractvalue { i64, i1 } %i.zi, 0       ; 2 uses
  %.not104.i572 = icmp eq i64 %i.yz, 0
  br i1 %.not104.i572, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit582, label %.preheader111.i567

.lr.ph150.i575:                                   ; preds = %bb.fw, %bb.ga
  %.sroa.0.4149.i576 = phi ptr [ %i.zr, %bb.ga ], [ %.sroa.0.0.i566, %bb.fw ] ; 2 uses
  %.sroa.26.4148.i577 = phi i64 [ %i.zq, %bb.ga ], [ %.sroa.26.0.i565, %bb.fw ]
  %.sroa.084.4147.i578 = phi i64 [ %i.zt, %bb.ga ], [ 0, %bb.fw ]
  %i.zl = load i8, ptr %.sroa.0.4149.i576, align 1, !alias.scope !3351, !noalias !3352, !noundef !5
  %i.zm = zext i8 %i.zl to i32
  %i.zn = add nsw i32 %i.zm, -48                  ; 2 uses
  %i.zo = icmp ult i32 %i.zn, 10
  br i1 %i.zo, label %bb.ga, label %.loopexit1156

bb.ga:                                            ; preds = %.lr.ph150.i575
  %i.zp = mul i64 %.sroa.084.4147.i578, 10
  %i.zq = add nsw i64 %.sroa.26.4148.i577, -1     ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i576, i64 1
  %i.zs = zext nneg i32 %i.zn to i64
  %i.zt = add i64 %i.zp, %i.zs                    ; 2 uses
  %.not105.i579 = icmp eq i64 %i.zq, 0
  br i1 %.not105.i579, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit582, label %.lr.ph150.i575

.loopexit1156:                                    ; preds = %.lr.ph.i550, %bb.ft, %bb.fs, %.lr.ph141.i560, %.preheader111.i567, %bb.fx, %bb.fy, %.lr.ph150.i575, %bb.fp, %bb.fp, %.thread1024
  %.ph1032 = phi ptr [ %i.dn, %.preheader111.i567 ], [ %i.dn, %.lr.ph141.i560 ], [ %i.dn, %.lr.ph150.i575 ], [ %i.dn, %bb.fp ], [ inttoptr (i64 1 to ptr), %.thread1024 ], [ %i.dn, %bb.fp ], [ %i.dn, %bb.fy ], [ %i.dn, %bb.fx ], [ %i.dn, %bb.fs ], [ %i.dn, %bb.ft ], [ %i.dn, %.lr.ph.i550 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1032, i64 noundef %i.dl) #27
  %i.zu = load i8, ptr %i.ad, align 8, !range !16, !noundef !5
  %i.zv = trunc nuw i8 %i.zu to i1
  br i1 %i.zv, label %bb.gd, label %bb.ge

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit582: ; preds = %bb.fu, %bb.fv, %bb.fz, %bb.ga
  %.sroa.15773.0 = phi i64 [ %i.zk, %bb.fz ], [ %i.yw, %bb.fv ], [ %i.zt, %bb.ga ], [ %i.yn, %bb.fu ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8, i64 noundef %.sroa.15773.0) #26
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ge, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit582
  %i.zw = phi ptr [ %.ph1032, %bb.ge ], [ %i.dn, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit582 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 26, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ab) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.zx = icmp eq i64 %i.dl, 0
  br i1 %i.zx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit585, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.zw, i64 noundef %i.dl, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3353
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit585

bb.gd:                                            ; preds = %.loopexit1156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 %i.dl, ptr %i.ac, align 8
  %.sroa.5768.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.ph1032, ptr %.sroa.5768.0..sroa_idx, align 8
  %.sroa.8769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %i.dl, ptr %.sroa.8769.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ac) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 26, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ab) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit585

bb.ge:                                            ; preds = %.loopexit1156
  %i.zy = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.zz = load double, ptr %i.zy, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8, double noundef %i.zz) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.gb

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit585: ; preds = %bb.gc, %bb.gb, %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.af, ptr %i.aa, align 8
  %.sroa.4139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4139.0..sroa_idx, align 8
  %i.aaa = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.aab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aac = load ptr, ptr %i.aab, align 8, !nonnull !5, !align !7, !noundef !5
  %i.aad = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.aaa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aac, ptr noundef nonnull @42, ptr noundef nonnull %i.aa) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.experimental.noalias.scope.decl(metadata !3354)
  %.val.i586 = load i64, ptr %i.af, align 8, !range !6, !alias.scope !3354, !noundef !5 ; 2 uses
  %i.aae = icmp eq i64 %.val.i586, 0
  br i1 %i.aae, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit588, label %bb.gf

bb.gf:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit585
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val1.i587 = load ptr, ptr %i.aaf, align 8, !alias.scope !3354, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i587, i64 noundef %.val.i586, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3354
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit588

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit588: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit585, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.bd

bb.gg:                                            ; preds = %bb.n, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i250
  %.sroa.4832.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i250 ], [ 0, %bb.n ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4832.0.ph, i64 %i.dt) #30
  unreachable

bb.gh:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i250
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dv, ptr align 1 %i.ds, i64 %i.dt, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %cond1104 = icmp eq i64 %i.dt, 1
  %i.aag = load i8, ptr %i.dv, align 1, !alias.scope !3355, !noalias !3356 ; 2 uses
  br i1 %cond1104, label %bb.gi, label %thread-pre-split.i620

bb.gi:                                            ; preds = %bb.gh
  switch i8 %i.aag, label %bb.gp [
    i8 43, label %.loopexit1163
    i8 45, label %.loopexit1163
  ]

thread-pre-split.i620:                            ; preds = %bb.gh
  switch i8 %i.aag, label %bb.gp [
    i8 43, label %bb.gj
    i8 45, label %bb.gk
  ]

bb.gj:                                            ; preds = %thread-pre-split.i620
  %i.aah = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.aai = add nsw i64 %i.dt, -1
  br label %bb.gp

bb.gk:                                            ; preds = %thread-pre-split.i620
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.dv, i64 1 ; 2 uses
  %i.aak = add nsw i64 %i.dt, -1                  ; 2 uses
  %i.aal = icmp samesign ult i64 %i.dt, 17
  br i1 %i.aal, label %.lr.ph141.i600, label %.lr.ph.i590

.lr.ph.i590:                                      ; preds = %bb.gk, %bb.gn
  %.sroa.0.1136.i591 = phi ptr [ %i.aam, %bb.gn ], [ %i.aaj, %bb.gk ] ; 2 uses
  %.sroa.26.1135.i592 = phi i64 [ %i.aan, %bb.gn ], [ %i.aak, %bb.gk ]
  %.sroa.084.0134.i593 = phi i64 [ %i.aay, %bb.gn ], [ 0, %bb.gk ]
  %i.aam = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i591, i64 1
  %i.aan = add nsw i64 %.sroa.26.1135.i592, -1    ; 2 uses
  %i.aao = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i593, i64 10) ; 2 uses
  %i.aap = extractvalue { i64, i1 } %i.aao, 0
  %i.aaq = extractvalue { i64, i1 } %i.aao, 1
  br i1 %i.aaq, label %.loopexit1163, label %bb.gl, !prof !10

bb.gl:                                            ; preds = %.lr.ph.i590
  %i.aar = load i8, ptr %.sroa.0.1136.i591, align 1, !alias.scope !3355, !noalias !3356, !noundef !5
  %i.aas = zext i8 %i.aar to i32
  %i.aat = add nsw i32 %i.aas, -48                ; 2 uses
  %i.aau = icmp ult i32 %i.aat, 10
  br i1 %i.aau, label %bb.gm, label %.loopexit1163

bb.gm:                                            ; preds = %bb.gl
  %i.aav = zext nneg i32 %i.aat to i64
  %i.aaw = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.aap, i64 %i.aav) ; 2 uses
  %i.aax = extractvalue { i64, i1 } %i.aaw, 1
  br i1 %i.aax, label %.loopexit1163, label %bb.gn, !prof !10

bb.gn:                                            ; preds = %bb.gm
  %i.aay = extractvalue { i64, i1 } %i.aaw, 0     ; 2 uses
  %.not102.i595 = icmp eq i64 %i.aan, 0
  br i1 %.not102.i595, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit622, label %.lr.ph.i590

.lr.ph141.i600:                                   ; preds = %bb.gk, %bb.go
  %.sroa.0.2140.i601 = phi ptr [ %i.abf, %bb.go ], [ %i.aaj, %bb.gk ] ; 2 uses
  %.sroa.26.2139.i602 = phi i64 [ %i.abe, %bb.go ], [ %i.aak, %bb.gk ]
  %.sroa.084.2138.i603 = phi i64 [ %i.abh, %bb.go ], [ 0, %bb.gk ]
  %i.aaz = load i8, ptr %.sroa.0.2140.i601, align 1, !alias.scope !3355, !noalias !3356, !noundef !5
  %i.aba = zext i8 %i.aaz to i32
  %i.abb = add nsw i32 %i.aba, -48                ; 2 uses
  %i.abc = icmp ult i32 %i.abb, 10
  br i1 %i.abc, label %bb.go, label %.loopexit1163

bb.go:                                            ; preds = %.lr.ph141.i600
  %i.abd = mul i64 %.sroa.084.2138.i603, 10
  %i.abe = add nsw i64 %.sroa.26.2139.i602, -1    ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i601, i64 1
  %i.abg = zext nneg i32 %i.abb to i64
  %i.abh = sub i64 %i.abd, %i.abg                 ; 2 uses
  %.not103.i604 = icmp eq i64 %i.abe, 0
  br i1 %.not103.i604, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit622, label %.lr.ph141.i600

bb.gp:                                            ; preds = %bb.gi, %bb.gj, %thread-pre-split.i620
  %.sroa.26.0.i605 = phi i64 [ %i.aai, %bb.gj ], [ %i.dt, %thread-pre-split.i620 ], [ %i.dt, %bb.gi ] ; 3 uses
  %.sroa.0.0.i606 = phi ptr [ %i.aah, %bb.gj ], [ %i.dv, %thread-pre-split.i620 ], [ %i.dv, %bb.gi ] ; 2 uses
  %i.abi = icmp samesign ult i64 %.sroa.26.0.i605, 16
  br i1 %i.abi, label %.lr.ph150.i615, label %.preheader111.i607

.preheader111.i607:                               ; preds = %bb.gp, %bb.gs
  %.sroa.0.3145.i608 = phi ptr [ %i.abj, %bb.gs ], [ %.sroa.0.0.i606, %bb.gp ] ; 2 uses
  %.sroa.26.3144.i609 = phi i64 [ %i.abk, %bb.gs ], [ %.sroa.26.0.i605, %bb.gp ]
  %.sroa.084.3143.i610 = phi i64 [ %i.abv, %bb.gs ], [ 0, %bb.gp ]
  %i.abj = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i608, i64 1
  %i.abk = add nsw i64 %.sroa.26.3144.i609, -1    ; 2 uses
  %i.abl = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i610, i64 10) ; 2 uses
  %i.abm = extractvalue { i64, i1 } %i.abl, 0
  %i.abn = extractvalue { i64, i1 } %i.abl, 1
  br i1 %i.abn, label %.loopexit1163, label %bb.gq, !prof !10

bb.gq:                                            ; preds = %.preheader111.i607
  %i.abo = load i8, ptr %.sroa.0.3145.i608, align 1, !alias.scope !3355, !noalias !3356, !noundef !5
  %i.abp = zext i8 %i.abo to i32
  %i.abq = add nsw i32 %i.abp, -48                ; 2 uses
  %i.abr = icmp ult i32 %i.abq, 10
  br i1 %i.abr, label %bb.gr, label %.loopexit1163

bb.gr:                                            ; preds = %bb.gq
  %i.abs = zext nneg i32 %i.abq to i64
  %i.abt = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.abm, i64 %i.abs) ; 2 uses
  %i.abu = extractvalue { i64, i1 } %i.abt, 1
  br i1 %i.abu, label %.loopexit1163, label %bb.gs, !prof !10

bb.gs:                                            ; preds = %bb.gr
  %i.abv = extractvalue { i64, i1 } %i.abt, 0     ; 2 uses
  %.not104.i612 = icmp eq i64 %i.abk, 0
  br i1 %.not104.i612, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit622, label %.preheader111.i607

.lr.ph150.i615:                                   ; preds = %bb.gp, %bb.gt
  %.sroa.0.4149.i616 = phi ptr [ %i.acc, %bb.gt ], [ %.sroa.0.0.i606, %bb.gp ] ; 2 uses
  %.sroa.26.4148.i617 = phi i64 [ %i.acb, %bb.gt ], [ %.sroa.26.0.i605, %bb.gp ]
  %.sroa.084.4147.i618 = phi i64 [ %i.ace, %bb.gt ], [ 0, %bb.gp ]
  %i.abw = load i8, ptr %.sroa.0.4149.i616, align 1, !alias.scope !3355, !noalias !3356, !noundef !5
  %i.abx = zext i8 %i.abw to i32
  %i.aby = add nsw i32 %i.abx, -48                ; 2 uses
  %i.abz = icmp ult i32 %i.aby, 10
  br i1 %i.abz, label %bb.gt, label %.loopexit1163

bb.gt:                                            ; preds = %.lr.ph150.i615
  %i.aca = mul i64 %.sroa.084.4147.i618, 10
  %i.acb = add nsw i64 %.sroa.26.4148.i617, -1    ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i616, i64 1
  %i.acd = zext nneg i32 %i.aby to i64
  %i.ace = add i64 %i.aca, %i.acd                 ; 2 uses
  %.not105.i619 = icmp eq i64 %i.acb, 0
  br i1 %.not105.i619, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit622, label %.lr.ph150.i615

.loopexit1163:                                    ; preds = %.lr.ph.i590, %bb.gm, %bb.gl, %.lr.ph141.i600, %.preheader111.i607, %bb.gq, %bb.gr, %.lr.ph150.i615, %bb.gi, %bb.gi, %.thread1046
  %.ph1054 = phi ptr [ %i.dv, %.preheader111.i607 ], [ %i.dv, %.lr.ph141.i600 ], [ %i.dv, %.lr.ph150.i615 ], [ %i.dv, %bb.gi ], [ inttoptr (i64 1 to ptr), %.thread1046 ], [ %i.dv, %bb.gi ], [ %i.dv, %bb.gr ], [ %i.dv, %bb.gq ], [ %i.dv, %bb.gl ], [ %i.dv, %bb.gm ], [ %i.dv, %.lr.ph.i590 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1054, i64 noundef %i.dt) #27
  %i.acf = load i8, ptr %i.x, align 8, !range !16, !noundef !5
  %i.acg = trunc nuw i8 %i.acf to i1
  br i1 %i.acg, label %bb.gw, label %bb.gx

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit622: ; preds = %bb.gn, %bb.go, %bb.gs, %bb.gt
  %.sroa.15780.0 = phi i64 [ %i.abv, %bb.gs ], [ %i.abh, %bb.go ], [ %i.ace, %bb.gt ], [ %i.aay, %bb.gn ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8, i64 noundef %.sroa.15780.0) #26
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gx, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit622
  %i.ach = phi ptr [ %.ph1054, %bb.gx ], [ %i.dv, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit622 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 30, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.v) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.aci = icmp eq i64 %i.dt, 0
  br i1 %i.aci, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit625, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ach, i64 noundef %i.dt, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3357
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit625

bb.gw:                                            ; preds = %.loopexit1163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 %i.dt, ptr %i.w, align 8
  %.sroa.5775.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.ph1054, ptr %.sroa.5775.0..sroa_idx, align 8
  %.sroa.8776.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.dt, ptr %.sroa.8776.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.w) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 30, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.v) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit625

bb.gx:                                            ; preds = %.loopexit1163
  %i.acj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ack = load double, ptr %i.acj, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8, double noundef %i.ack) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.gu

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit625: ; preds = %bb.gv, %bb.gu, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.z, ptr %i.u, align 8
  %.sroa.4158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4158.0..sroa_idx, align 8
  %i.acl = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.acm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.acn = load ptr, ptr %i.acm, align 8, !nonnull !5, !align !7, !noundef !5
  %i.aco = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.acl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.acn, ptr noundef nonnull @42, ptr noundef nonnull %i.u) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.experimental.noalias.scope.decl(metadata !3358)
  %.val.i626 = load i64, ptr %i.z, align 8, !range !6, !alias.scope !3358, !noundef !5 ; 2 uses
  %i.acp = icmp eq i64 %.val.i626, 0
  br i1 %i.acp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit628, label %bb.gy

bb.gy:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit625
  %i.acq = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val1.i627 = load ptr, ptr %i.acq, align 8, !alias.scope !3358, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i627, i64 noundef %.val.i626, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3358
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit628

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit628: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit625, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.bd

bb.gz:                                            ; preds = %bb.p, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i254
  %.sroa.4836.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i254 ], [ 0, %bb.p ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4836.0.ph, i64 %i.ec) #30
  unreachable

bb.ha:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i254
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ee, ptr align 1 %i.eb, i64 %i.ec, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %cond1105 = icmp eq i64 %i.ec, 1
  %i.acr = load i8, ptr %i.ee, align 1, !alias.scope !3359, !noalias !3360 ; 2 uses
  br i1 %cond1105, label %bb.hb, label %thread-pre-split.i660

bb.hb:                                            ; preds = %bb.ha
  switch i8 %i.acr, label %bb.hi [
    i8 43, label %.loopexit1177
    i8 45, label %.loopexit1177
  ]

thread-pre-split.i660:                            ; preds = %bb.ha
  switch i8 %i.acr, label %bb.hi [
    i8 43, label %bb.hc
    i8 45, label %bb.hd
  ]

bb.hc:                                            ; preds = %thread-pre-split.i660
  %i.acs = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.act = add nsw i64 %i.ec, -1
  br label %bb.hi

bb.hd:                                            ; preds = %thread-pre-split.i660
  %i.acu = getelementptr inbounds nuw i8, ptr %i.ee, i64 1 ; 2 uses
  %i.acv = add nsw i64 %i.ec, -1                  ; 2 uses
  %i.acw = icmp samesign ult i64 %i.ec, 17
  br i1 %i.acw, label %.lr.ph141.i640, label %.lr.ph.i630

.lr.ph.i630:                                      ; preds = %bb.hd, %bb.hg
  %.sroa.0.1136.i631 = phi ptr [ %i.acx, %bb.hg ], [ %i.acu, %bb.hd ] ; 2 uses
  %.sroa.26.1135.i632 = phi i64 [ %i.acy, %bb.hg ], [ %i.acv, %bb.hd ]
  %.sroa.084.0134.i633 = phi i64 [ %i.adj, %bb.hg ], [ 0, %bb.hd ]
  %i.acx = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i631, i64 1
  %i.acy = add nsw i64 %.sroa.26.1135.i632, -1    ; 2 uses
  %i.acz = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i633, i64 10) ; 2 uses
  %i.ada = extractvalue { i64, i1 } %i.acz, 0
  %i.adb = extractvalue { i64, i1 } %i.acz, 1
  br i1 %i.adb, label %.loopexit1177, label %bb.he, !prof !10

bb.he:                                            ; preds = %.lr.ph.i630
  %i.adc = load i8, ptr %.sroa.0.1136.i631, align 1, !alias.scope !3359, !noalias !3360, !noundef !5
  %i.add = zext i8 %i.adc to i32
  %i.ade = add nsw i32 %i.add, -48                ; 2 uses
  %i.adf = icmp ult i32 %i.ade, 10
  br i1 %i.adf, label %bb.hf, label %.loopexit1177

bb.hf:                                            ; preds = %bb.he
  %i.adg = zext nneg i32 %i.ade to i64
  %i.adh = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ada, i64 %i.adg) ; 2 uses
  %i.adi = extractvalue { i64, i1 } %i.adh, 1
  br i1 %i.adi, label %.loopexit1177, label %bb.hg, !prof !10

bb.hg:                                            ; preds = %bb.hf
  %i.adj = extractvalue { i64, i1 } %i.adh, 0     ; 2 uses
  %.not102.i635 = icmp eq i64 %i.acy, 0
  br i1 %.not102.i635, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit662, label %.lr.ph.i630

.lr.ph141.i640:                                   ; preds = %bb.hd, %bb.hh
  %.sroa.0.2140.i641 = phi ptr [ %i.adq, %bb.hh ], [ %i.acu, %bb.hd ] ; 2 uses
  %.sroa.26.2139.i642 = phi i64 [ %i.adp, %bb.hh ], [ %i.acv, %bb.hd ]
  %.sroa.084.2138.i643 = phi i64 [ %i.ads, %bb.hh ], [ 0, %bb.hd ]
  %i.adk = load i8, ptr %.sroa.0.2140.i641, align 1, !alias.scope !3359, !noalias !3360, !noundef !5
  %i.adl = zext i8 %i.adk to i32
  %i.adm = add nsw i32 %i.adl, -48                ; 2 uses
  %i.adn = icmp ult i32 %i.adm, 10
  br i1 %i.adn, label %bb.hh, label %.loopexit1177

bb.hh:                                            ; preds = %.lr.ph141.i640
  %i.ado = mul i64 %.sroa.084.2138.i643, 10
  %i.adp = add nsw i64 %.sroa.26.2139.i642, -1    ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i641, i64 1
  %i.adr = zext nneg i32 %i.adm to i64
  %i.ads = sub i64 %i.ado, %i.adr                 ; 2 uses
  %.not103.i644 = icmp eq i64 %i.adp, 0
  br i1 %.not103.i644, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit662, label %.lr.ph141.i640

bb.hi:                                            ; preds = %bb.hb, %bb.hc, %thread-pre-split.i660
  %.sroa.26.0.i645 = phi i64 [ %i.act, %bb.hc ], [ %i.ec, %thread-pre-split.i660 ], [ %i.ec, %bb.hb ] ; 3 uses
  %.sroa.0.0.i646 = phi ptr [ %i.acs, %bb.hc ], [ %i.ee, %thread-pre-split.i660 ], [ %i.ee, %bb.hb ] ; 2 uses
  %i.adt = icmp samesign ult i64 %.sroa.26.0.i645, 16
  br i1 %i.adt, label %.lr.ph150.i655, label %.preheader111.i647

.preheader111.i647:                               ; preds = %bb.hi, %bb.hl
  %.sroa.0.3145.i648 = phi ptr [ %i.adu, %bb.hl ], [ %.sroa.0.0.i646, %bb.hi ] ; 2 uses
  %.sroa.26.3144.i649 = phi i64 [ %i.adv, %bb.hl ], [ %.sroa.26.0.i645, %bb.hi ]
  %.sroa.084.3143.i650 = phi i64 [ %i.aeg, %bb.hl ], [ 0, %bb.hi ]
  %i.adu = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i648, i64 1
  %i.adv = add nsw i64 %.sroa.26.3144.i649, -1    ; 2 uses
  %i.adw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i650, i64 10) ; 2 uses
  %i.adx = extractvalue { i64, i1 } %i.adw, 0
  %i.ady = extractvalue { i64, i1 } %i.adw, 1
  br i1 %i.ady, label %.loopexit1177, label %bb.hj, !prof !10

bb.hj:                                            ; preds = %.preheader111.i647
  %i.adz = load i8, ptr %.sroa.0.3145.i648, align 1, !alias.scope !3359, !noalias !3360, !noundef !5
  %i.aea = zext i8 %i.adz to i32
  %i.aeb = add nsw i32 %i.aea, -48                ; 2 uses
  %i.aec = icmp ult i32 %i.aeb, 10
  br i1 %i.aec, label %bb.hk, label %.loopexit1177

bb.hk:                                            ; preds = %bb.hj
  %i.aed = zext nneg i32 %i.aeb to i64
  %i.aee = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.adx, i64 %i.aed) ; 2 uses
  %i.aef = extractvalue { i64, i1 } %i.aee, 1
  br i1 %i.aef, label %.loopexit1177, label %bb.hl, !prof !10

bb.hl:                                            ; preds = %bb.hk
  %i.aeg = extractvalue { i64, i1 } %i.aee, 0     ; 2 uses
  %.not104.i652 = icmp eq i64 %i.adv, 0
  br i1 %.not104.i652, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit662, label %.preheader111.i647

.lr.ph150.i655:                                   ; preds = %bb.hi, %bb.hm
  %.sroa.0.4149.i656 = phi ptr [ %i.aen, %bb.hm ], [ %.sroa.0.0.i646, %bb.hi ] ; 2 uses
  %.sroa.26.4148.i657 = phi i64 [ %i.aem, %bb.hm ], [ %.sroa.26.0.i645, %bb.hi ]
  %.sroa.084.4147.i658 = phi i64 [ %i.aep, %bb.hm ], [ 0, %bb.hi ]
  %i.aeh = load i8, ptr %.sroa.0.4149.i656, align 1, !alias.scope !3359, !noalias !3360, !noundef !5
  %i.aei = zext i8 %i.aeh to i32
  %i.aej = add nsw i32 %i.aei, -48                ; 2 uses
  %i.aek = icmp ult i32 %i.aej, 10
  br i1 %i.aek, label %bb.hm, label %.loopexit1177

bb.hm:                                            ; preds = %.lr.ph150.i655
  %i.ael = mul i64 %.sroa.084.4147.i658, 10
  %i.aem = add nsw i64 %.sroa.26.4148.i657, -1    ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i656, i64 1
  %i.aeo = zext nneg i32 %i.aej to i64
  %i.aep = add i64 %i.ael, %i.aeo                 ; 2 uses
  %.not105.i659 = icmp eq i64 %i.aem, 0
  br i1 %.not105.i659, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit662, label %.lr.ph150.i655

.loopexit1177:                                    ; preds = %.lr.ph.i630, %bb.hf, %bb.he, %.lr.ph141.i640, %.preheader111.i647, %bb.hj, %bb.hk, %.lr.ph150.i655, %bb.hb, %bb.hb, %.thread1068
  %.ph1076 = phi ptr [ %i.ee, %.preheader111.i647 ], [ %i.ee, %.lr.ph141.i640 ], [ %i.ee, %.lr.ph150.i655 ], [ %i.ee, %bb.hb ], [ inttoptr (i64 1 to ptr), %.thread1068 ], [ %i.ee, %bb.hb ], [ %i.ee, %bb.hk ], [ %i.ee, %bb.hj ], [ %i.ee, %bb.he ], [ %i.ee, %bb.hf ], [ %i.ee, %.lr.ph.i630 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1076, i64 noundef %i.ec) #27
  %i.aeq = load i8, ptr %i.r, align 8, !range !16, !noundef !5
  %i.aer = trunc nuw i8 %i.aeq to i1
  br i1 %i.aer, label %bb.hp, label %bb.hq

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit662: ; preds = %bb.hg, %bb.hh, %bb.hl, %bb.hm
  %.sroa.15787.0 = phi i64 [ %i.aeg, %bb.hl ], [ %i.ads, %bb.hh ], [ %i.aep, %bb.hm ], [ %i.adj, %bb.hg ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8, i64 noundef %.sroa.15787.0) #26
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hq, %bb.hp, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit662
  %i.aes = phi ptr [ %.ph1076, %bb.hp ], [ %.ph1076, %bb.hq ], [ %i.ee, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit662 ]
  %.sroa.04.0.not = phi i1 [ true, %bb.hp ], [ false, %bb.hq ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit662 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dx) #26
  %i.aet = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.aeu = load ptr, ptr %i.aet, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.aew = load i64, ptr %i.aev, align 8, !noundef !5 ; 14 uses
  %.not.i663 = icmp slt i64 %i.aew, 0
  br i1 %.not.i663, label %bb.hr, label %bb.ho, !prof !17

bb.ho:                                            ; preds = %bb.hn
  %i.aex = icmp eq i64 %i.aew, 0                  ; 2 uses
  br i1 %i.aex, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs41JD7yXDh97_6uu_env.exit666.thread1089, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i664

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i664: ; preds = %bb.ho
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3361
  %i.aey = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aew, i64 noundef range(i64 1, 9) 1) #26, !noalias !3361 ; 3 uses
  %i.aez = icmp eq ptr %i.aey, null
  br i1 %i.aez, label %bb.hr, label %bb.ig

bb.hp:                                            ; preds = %.loopexit1177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %i.ec, ptr %i.q, align 8
  %.sroa.5782.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.ph1076, ptr %.sroa.5782.0..sroa_idx, align 8
  %.sroa.8783.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ec, ptr %.sroa.8783.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.q) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.hn

bb.hq:                                            ; preds = %.loopexit1177
  %i.afa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.afb = load double, ptr %i.afa, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8, double noundef %i.afb) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.hn

bb.hr:                                            ; preds = %bb.hn, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i664
  %.sroa.4840.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i664 ], [ 0, %bb.hn ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4840.0.ph, i64 %i.aew) #30
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs41JD7yXDh97_6uu_env.exit666.thread1089: ; preds = %bb.ho, %bb.ig
  %i.afc = phi ptr [ %i.aey, %bb.ig ], [ inttoptr (i64 1 to ptr), %bb.ho ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3362)
  %.val.i667 = load i64, ptr %i.p, align 8, !range !6, !alias.scope !3362, !noundef !5 ; 2 uses
  %i.afd = icmp eq i64 %.val.i667, 0
  br i1 %i.afd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit669, label %bb.hs

bb.hs:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs41JD7yXDh97_6uu_env.exit666.thread1089
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aeu, i64 noundef %.val.i667, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3362
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit669

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit669: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs41JD7yXDh97_6uu_env.exit666.thread1089, %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  switch i64 %i.aew, label %thread-pre-split.i701 [
    i64 0, label %.loopexit1170
    i64 1, label %bb.ht
  ]

bb.ht:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit669
  %i.afe = load i8, ptr %i.afc, align 1, !alias.scope !3363, !noalias !3364, !noundef !5 ; 2 uses
  switch i8 %i.afe, label %bb.hu [
    i8 43, label %.loopexit1170
    i8 45, label %.loopexit1170
  ]

thread-pre-split.i701:                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit669
  %.pr.i702 = load i8, ptr %i.afc, align 1, !alias.scope !3363, !noalias !3364
  br label %bb.hu

bb.hu:                                            ; preds = %thread-pre-split.i701, %bb.ht
  %i.aff = phi i8 [ %.pr.i702, %thread-pre-split.i701 ], [ %i.afe, %bb.ht ]
  switch i8 %i.aff, label %bb.ib [
    i8 43, label %bb.hv
    i8 45, label %bb.hw
  ]

bb.hv:                                            ; preds = %bb.hu
  %i.afg = getelementptr inbounds nuw i8, ptr %i.afc, i64 1
  %i.afh = add nsw i64 %i.aew, -1
  br label %bb.ib

bb.hw:                                            ; preds = %bb.hu
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afc, i64 1 ; 2 uses
  %i.afj = add nsw i64 %i.aew, -1                 ; 3 uses
  %i.afk = icmp samesign ult i64 %i.aew, 17
  br i1 %i.afk, label %.preheader114.i679, label %.lr.ph.i671

.preheader114.i679:                               ; preds = %bb.hw
  %.not103137.i680 = icmp eq i64 %i.afj, 0
  br i1 %.not103137.i680, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit703, label %.lr.ph141.i681

.lr.ph.i671:                                      ; preds = %bb.hw, %bb.hz
  %.sroa.0.1136.i672 = phi ptr [ %i.afl, %bb.hz ], [ %i.afi, %bb.hw ] ; 2 uses
  %.sroa.26.1135.i673 = phi i64 [ %i.afm, %bb.hz ], [ %i.afj, %bb.hw ]
  %.sroa.084.0134.i674 = phi i64 [ %i.afx, %bb.hz ], [ 0, %bb.hw ]
  %i.afl = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i672, i64 1
  %i.afm = add nsw i64 %.sroa.26.1135.i673, -1    ; 2 uses
  %i.afn = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i674, i64 10) ; 2 uses
  %i.afo = extractvalue { i64, i1 } %i.afn, 0
  %i.afp = extractvalue { i64, i1 } %i.afn, 1
  br i1 %i.afp, label %.loopexit1170, label %bb.hx, !prof !10

bb.hx:                                            ; preds = %.lr.ph.i671
  %i.afq = load i8, ptr %.sroa.0.1136.i672, align 1, !alias.scope !3363, !noalias !3364, !noundef !5
  %i.afr = zext i8 %i.afq to i32
  %i.afs = add nsw i32 %i.afr, -48                ; 2 uses
  %i.aft = icmp ult i32 %i.afs, 10
  br i1 %i.aft, label %bb.hy, label %.loopexit1170

bb.hy:                                            ; preds = %bb.hx
  %i.afu = zext nneg i32 %i.afs to i64
  %i.afv = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.afo, i64 %i.afu) ; 2 uses
  %i.afw = extractvalue { i64, i1 } %i.afv, 1
  br i1 %i.afw, label %.loopexit1170, label %bb.hz, !prof !10

bb.hz:                                            ; preds = %bb.hy
  %i.afx = extractvalue { i64, i1 } %i.afv, 0     ; 2 uses
  %.not102.i676 = icmp eq i64 %i.afm, 0
  br i1 %.not102.i676, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit703, label %.lr.ph.i671

.lr.ph141.i681:                                   ; preds = %.preheader114.i679, %bb.ia
  %.sroa.0.2140.i682 = phi ptr [ %i.age, %bb.ia ], [ %i.afi, %.preheader114.i679 ] ; 2 uses
  %.sroa.26.2139.i683 = phi i64 [ %i.agd, %bb.ia ], [ %i.afj, %.preheader114.i679 ]
  %.sroa.084.2138.i684 = phi i64 [ %i.agg, %bb.ia ], [ 0, %.preheader114.i679 ]
  %i.afy = load i8, ptr %.sroa.0.2140.i682, align 1, !alias.scope !3363, !noalias !3364, !noundef !5
  %i.afz = zext i8 %i.afy to i32
  %i.aga = add nsw i32 %i.afz, -48                ; 2 uses
  %i.agb = icmp ult i32 %i.aga, 10
  br i1 %i.agb, label %bb.ia, label %.loopexit1170

bb.ia:                                            ; preds = %.lr.ph141.i681
  %i.agc = mul i64 %.sroa.084.2138.i684, 10
  %i.agd = add nsw i64 %.sroa.26.2139.i683, -1    ; 2 uses
  %i.age = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i682, i64 1
  %i.agf = zext nneg i32 %i.aga to i64
  %i.agg = sub i64 %i.agc, %i.agf                 ; 2 uses
  %.not103.i685 = icmp eq i64 %i.agd, 0
  br i1 %.not103.i685, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit703, label %.lr.ph141.i681

bb.ib:                                            ; preds = %bb.hv, %bb.hu
  %.sroa.26.0.i686 = phi i64 [ %i.afh, %bb.hv ], [ %i.aew, %bb.hu ] ; 4 uses
  %.sroa.0.0.i687 = phi ptr [ %i.afg, %bb.hv ], [ %i.afc, %bb.hu ] ; 2 uses
  %i.agh = icmp samesign ult i64 %.sroa.26.0.i686, 16
  br i1 %i.agh, label %.preheader.i694, label %.preheader111.i688

.preheader.i694:                                  ; preds = %bb.ib
  %.not105146.i695 = icmp eq i64 %.sroa.26.0.i686, 0
  br i1 %.not105146.i695, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit703, label %.lr.ph150.i696

.preheader111.i688:                               ; preds = %bb.ib, %bb.ie
  %.sroa.0.3145.i689 = phi ptr [ %i.agi, %bb.ie ], [ %.sroa.0.0.i687, %bb.ib ] ; 2 uses
  %.sroa.26.3144.i690 = phi i64 [ %i.agj, %bb.ie ], [ %.sroa.26.0.i686, %bb.ib ]
  %.sroa.084.3143.i691 = phi i64 [ %i.agu, %bb.ie ], [ 0, %bb.ib ]
  %i.agi = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i689, i64 1
  %i.agj = add nsw i64 %.sroa.26.3144.i690, -1    ; 2 uses
  %i.agk = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i691, i64 10) ; 2 uses
  %i.agl = extractvalue { i64, i1 } %i.agk, 0
  %i.agm = extractvalue { i64, i1 } %i.agk, 1
  br i1 %i.agm, label %.loopexit1170, label %bb.ic, !prof !10

bb.ic:                                            ; preds = %.preheader111.i688
  %i.agn = load i8, ptr %.sroa.0.3145.i689, align 1, !alias.scope !3363, !noalias !3364, !noundef !5
  %i.ago = zext i8 %i.agn to i32
  %i.agp = add nsw i32 %i.ago, -48                ; 2 uses
  %i.agq = icmp ult i32 %i.agp, 10
  br i1 %i.agq, label %bb.id, label %.loopexit1170

bb.id:                                            ; preds = %bb.ic
  %i.agr = zext nneg i32 %i.agp to i64
  %i.ags = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.agl, i64 %i.agr) ; 2 uses
  %i.agt = extractvalue { i64, i1 } %i.ags, 1
  br i1 %i.agt, label %.loopexit1170, label %bb.ie, !prof !10

bb.ie:                                            ; preds = %bb.id
  %i.agu = extractvalue { i64, i1 } %i.ags, 0     ; 2 uses
  %.not104.i693 = icmp eq i64 %i.agj, 0
  br i1 %.not104.i693, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit703, label %.preheader111.i688

.lr.ph150.i696:                                   ; preds = %.preheader.i694, %bb.if
  %.sroa.0.4149.i697 = phi ptr [ %i.ahb, %bb.if ], [ %.sroa.0.0.i687, %.preheader.i694 ] ; 2 uses
  %.sroa.26.4148.i698 = phi i64 [ %i.aha, %bb.if ], [ %.sroa.26.0.i686, %.preheader.i694 ]
  %.sroa.084.4147.i699 = phi i64 [ %i.ahd, %bb.if ], [ 0, %.preheader.i694 ]
  %i.agv = load i8, ptr %.sroa.0.4149.i697, align 1, !alias.scope !3363, !noalias !3364, !noundef !5
  %i.agw = zext i8 %i.agv to i32
  %i.agx = add nsw i32 %i.agw, -48                ; 2 uses
  %i.agy = icmp ult i32 %i.agx, 10
  br i1 %i.agy, label %bb.if, label %.loopexit1170

bb.if:                                            ; preds = %.lr.ph150.i696
  %i.agz = mul i64 %.sroa.084.4147.i699, 10
  %i.aha = add nsw i64 %.sroa.26.4148.i698, -1    ; 2 uses
end_hunk_2
