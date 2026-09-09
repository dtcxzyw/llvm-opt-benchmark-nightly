Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_dd-289641d59659d41f.uu_dd.8952a91ac67bbfe3-cgu.0?download=true
inline.NumInlined: 1600
inline.NumDeleted: 713
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RINvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB3_10ProgUpdate14write_io_linesNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StderrEB5_:bb.a
  br i1 %.not105.i47.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit50.i, label %.lr.ph150.i43.i

.loopexit.i34:                                    ; preds = %bb.bs, %bb.br, %.lr.ph.i18.i, %.lr.ph141.i28.i, %bb.bx, %bb.bw, %.preheader111.i35.i, %.lr.ph150.i43.i, %bb.bo, %bb.bo, %.thread54.i
  %.ph62.i = phi ptr [ %i.ho, %bb.bx ], [ %i.ho, %.lr.ph150.i43.i ], [ %i.ho, %.lr.ph141.i28.i ], [ %i.ho, %bb.bo ], [ inttoptr (i64 1 to ptr), %.thread54.i ], [ %i.ho, %bb.bo ], [ %i.ho, %.preheader111.i35.i ], [ %i.ho, %bb.bw ], [ %i.ho, %.lr.ph.i18.i ], [ %i.ho, %bb.br ], [ %i.ho, %bb.bs ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !241
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph62.i, i64 noundef %i.hm) #31, !noalias !241
  %i.jr = load i8, ptr %i.f, align 8, !range !11, !noalias !241, !noundef !8
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %bb.cc, label %bb.cd

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit50.i: ; preds = %bb.bt, %bb.bu, %bb.by, %bb.bz
  %.sroa.1511.0.i39 = phi i64 [ %i.jh, %bb.by ], [ %i.it, %bb.bu ], [ %i.jq, %bb.bz ], [ %i.ik, %bb.bt ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 7, i64 noundef %.sroa.1511.0.i39) #27, !noalias !241
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cd, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit50.i
  %i.jt = phi ptr [ %.ph62.i, %bb.cd ], [ %i.ho, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit50.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !241
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d) #27, !noalias !241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !241
  br i1 %i.hn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit.i35, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jt, i64 noundef %i.hm, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !248
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit.i35

bb.cc:                                            ; preds = %.loopexit.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !241
  store i64 %i.hm, ptr %i.e, align 8, !noalias !241
  %.sroa.56.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.ph62.i, ptr %.sroa.56.0..sroa_idx.i37, align 8, !noalias !241
  %.sroa.87.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.hm, ptr %.sroa.87.0..sroa_idx.i38, align 8, !noalias !241
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 7, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e) #27, !noalias !241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !241
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d) #27, !noalias !241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !241
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit.i35

bb.cd:                                            ; preds = %.loopexit.i34
  %i.ju = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.jv = load double, ptr %i.ju, align 8, !noalias !241, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 7, double noundef %i.jv) #27, !noalias !241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !241
  br label %bb.ca

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit.i35: ; preds = %bb.cc, %bb.cb, %bb.ca
  br i1 %.sroa.0.0.not.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit56.i, label %bb.cf

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit56.i: ; preds = %bb.cf, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !241
  store ptr %i.j, ptr %i.c, align 8, !noalias !241
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !241
  %i.jw = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @6, ptr noundef nonnull %i.c) #27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !241
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %.val.i51.i = load i64, ptr %i.j, align 8, !range !18, !alias.scope !249, !noalias !241, !noundef !8 ; 2 uses
  %i.jx = icmp eq i64 %.val.i51.i, 0
  br i1 %i.jx, label %_RINvMs1_NtCsbMXVmEvvZJf_5uu_dd8progressNtB6_9WriteStat6reportNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StderrEB8_.exit, label %bb.ce

bb.ce:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit56.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val1.i52.i = load ptr, ptr %i.jy, align 8, !alias.scope !249, !noalias !241, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i52.i, i64 noundef %.val.i51.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !249
  br label %_RINvMs1_NtCsbMXVmEvvZJf_5uu_dd8progressNtB6_9WriteStat6reportNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StderrEB8_.exit

bb.cf:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit.i35
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hj, i64 noundef %i.fe, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !250
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit56.i

_RINvMs1_NtCsbMXVmEvvZJf_5uu_dd8progressNtB6_9WriteStat6reportNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StderrEB8_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit56.i, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !241
  %.not18 = icmp eq ptr %i.jw, null
  br i1 %.not18, label %bb.cg, label %bb.dd

bb.cg:                                            ; preds = %_RINvMs1_NtCsbMXVmEvvZJf_5uu_dd8progressNtB6_9WriteStat6reportNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StderrEB8_.exit
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ka = load i32, ptr %i.jz, align 8, !noundef !8 ; 2 uses
  %i.kb = icmp eq i32 %i.ka, 0
  br i1 %i.kb, label %bb.dd, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 0, ptr %i.z, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.kc = call { ptr, i64 } @_RNvMsa_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impm4__fmt(i32 noundef %i.ka, ptr noalias nofree noundef nonnull %i.u, i64 noundef 10) #27 ; 2 uses
  %i.kd = extractvalue { ptr, i64 } %i.kc, 0
  %i.ke = extractvalue { ptr, i64 } %i.kc, 1      ; 16 uses
  %.not.i = icmp slt i64 %i.ke, 0
  br i1 %.not.i, label %bb.ck, label %bb.ci, !prof !17

bb.ci:                                            ; preds = %bb.ch
  %i.kf = icmp eq i64 %i.ke, 0
  br i1 %i.kf, label %.thread, label %bb.cj

.thread:                                          ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %.loopexit

bb.cj:                                            ; preds = %bb.ci
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !251
  %i.kg = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ke, i64 noundef range(i64 1, 9) 1) #27, !noalias !251 ; 18 uses
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.ch, %bb.cj
  %.sroa.4.0.ph = phi i64 [ 1, %bb.cj ], [ 0, %bb.ch ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.ke) #32
  unreachable

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kg, ptr align 1 %i.kd, i64 %i.ke, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %cond = icmp eq i64 %i.ke, 1
  %i.ki = load i8, ptr %i.kg, align 1, !alias.scope !252, !noalias !253 ; 2 uses
  br i1 %cond, label %bb.cm, label %thread-pre-split.i

bb.cm:                                            ; preds = %bb.cl
  switch i8 %i.ki, label %bb.ct [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.cl
  switch i8 %i.ki, label %bb.ct [
    i8 43, label %bb.cn
    i8 45, label %bb.co
  ]

bb.cn:                                            ; preds = %thread-pre-split.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 1
  %i.kk = add nsw i64 %i.ke, -1
  br label %bb.ct

bb.co:                                            ; preds = %thread-pre-split.i
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 1 ; 2 uses
  %i.km = add nsw i64 %i.ke, -1                   ; 2 uses
  %i.kn = icmp samesign ult i64 %i.ke, 17
  br i1 %i.kn, label %.lr.ph141.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.co, %bb.cr
  %.sroa.0.1136.i = phi ptr [ %i.ko, %bb.cr ], [ %i.kl, %bb.co ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.kp, %bb.cr ], [ %i.km, %bb.co ]
  %.sroa.084.0134.i = phi i64 [ %i.la, %bb.cr ], [ 0, %bb.co ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.kp = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.kq = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.kr = extractvalue { i64, i1 } %i.kq, 0
  %i.ks = extractvalue { i64, i1 } %i.kq, 1
  br i1 %i.ks, label %.loopexit, label %bb.cp, !prof !10

bb.cp:                                            ; preds = %.lr.ph.i
  %i.kt = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !252, !noalias !253, !noundef !8
  %i.ku = zext i8 %i.kt to i32
  %i.kv = add nsw i32 %i.ku, -48                  ; 2 uses
  %i.kw = icmp ult i32 %i.kv, 10
  br i1 %i.kw, label %bb.cq, label %.loopexit

bb.cq:                                            ; preds = %bb.cp
  %i.kx = zext nneg i32 %i.kv to i64
  %i.ky = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.kr, i64 %i.kx) ; 2 uses
  %i.kz = extractvalue { i64, i1 } %i.ky, 1
  br i1 %i.kz, label %.loopexit, label %bb.cr, !prof !10

bb.cr:                                            ; preds = %bb.cq
  %i.la = extractvalue { i64, i1 } %i.ky, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.kp, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %bb.co, %bb.cs
  %.sroa.0.2140.i = phi ptr [ %i.lh, %bb.cs ], [ %i.kl, %bb.co ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.lg, %bb.cs ], [ %i.km, %bb.co ]
  %.sroa.084.2138.i = phi i64 [ %i.lj, %bb.cs ], [ 0, %bb.co ]
  %i.lb = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !252, !noalias !253, !noundef !8
  %i.lc = zext i8 %i.lb to i32
  %i.ld = add nsw i32 %i.lc, -48                  ; 2 uses
  %i.le = icmp ult i32 %i.ld, 10
  br i1 %i.le, label %bb.cs, label %.loopexit

bb.cs:                                            ; preds = %.lr.ph141.i
  %i.lf = mul i64 %.sroa.084.2138.i, 10
  %i.lg = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.li = zext nneg i32 %i.ld to i64
  %i.lj = sub i64 %i.lf, %i.li                    ; 2 uses
  %.not103.i = icmp eq i64 %i.lg, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.ct:                                            ; preds = %bb.cm, %bb.cn, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.kk, %bb.cn ], [ %i.ke, %thread-pre-split.i ], [ %i.ke, %bb.cm ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.kj, %bb.cn ], [ %i.kg, %thread-pre-split.i ], [ %i.kg, %bb.cm ] ; 2 uses
  %i.lk = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.lk, label %.lr.ph150.i, label %.preheader111.i

.preheader111.i:                                  ; preds = %bb.ct, %bb.cw
  %.sroa.0.3145.i = phi ptr [ %i.ll, %bb.cw ], [ %.sroa.0.0.i, %bb.ct ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.lm, %bb.cw ], [ %.sroa.26.0.i, %bb.ct ]
  %.sroa.084.3143.i = phi i64 [ %i.lx, %bb.cw ], [ 0, %bb.ct ]
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.lm = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.ln = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.lo = extractvalue { i64, i1 } %i.ln, 0
  %i.lp = extractvalue { i64, i1 } %i.ln, 1
  br i1 %i.lp, label %.loopexit, label %bb.cu, !prof !10

bb.cu:                                            ; preds = %.preheader111.i
  %i.lq = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !252, !noalias !253, !noundef !8
  %i.lr = zext i8 %i.lq to i32
  %i.ls = add nsw i32 %i.lr, -48                  ; 2 uses
  %i.lt = icmp ult i32 %i.ls, 10
  br i1 %i.lt, label %bb.cv, label %.loopexit

bb.cv:                                            ; preds = %bb.cu
  %i.lu = zext nneg i32 %i.ls to i64
  %i.lv = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.lo, i64 %i.lu) ; 2 uses
  %i.lw = extractvalue { i64, i1 } %i.lv, 1
  br i1 %i.lw, label %.loopexit, label %bb.cw, !prof !10

bb.cw:                                            ; preds = %bb.cv
  %i.lx = extractvalue { i64, i1 } %i.lv, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.lm, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %bb.ct, %bb.cx
  %.sroa.0.4149.i = phi ptr [ %i.me, %bb.cx ], [ %.sroa.0.0.i, %bb.ct ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.md, %bb.cx ], [ %.sroa.26.0.i, %bb.ct ]
  %.sroa.084.4147.i = phi i64 [ %i.mg, %bb.cx ], [ 0, %bb.ct ]
  %i.ly = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !252, !noalias !253, !noundef !8
  %i.lz = zext i8 %i.ly to i32
  %i.ma = add nsw i32 %i.lz, -48                  ; 2 uses
  %i.mb = icmp ult i32 %i.ma, 10
  br i1 %i.mb, label %bb.cx, label %.loopexit

bb.cx:                                            ; preds = %.lr.ph150.i
  %i.mc = mul i64 %.sroa.084.4147.i, 10
  %i.md = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.mf = zext nneg i32 %i.ma to i64
  %i.mg = add i64 %i.mc, %i.mf                    ; 2 uses
  %.not105.i = icmp eq i64 %i.md, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.loopexit:                                        ; preds = %.lr.ph.i, %bb.cq, %bb.cp, %.lr.ph141.i, %.preheader111.i, %bb.cu, %bb.cv, %.lr.ph150.i, %bb.cm, %bb.cm, %.thread
  %.ph = phi ptr [ %i.kg, %.preheader111.i ], [ %i.kg, %.lr.ph141.i ], [ %i.kg, %.lr.ph150.i ], [ %i.kg, %bb.cm ], [ inttoptr (i64 1 to ptr), %.thread ], [ %i.kg, %bb.cm ], [ %i.kg, %bb.cv ], [ %i.kg, %bb.cu ], [ %i.kg, %bb.cp ], [ %i.kg, %bb.cq ], [ %i.kg, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.ke) #31
  %i.mh = load i8, ptr %i.y, align 8, !range !11, !noundef !8
  %i.mi = trunc nuw i8 %i.mh to i1
  br i1 %i.mi, label %bb.da, label %bb.db

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.cr, %bb.cs, %bb.cw, %bb.cx
  %.sroa.1578.0 = phi i64 [ %i.lx, %bb.cw ], [ %i.lj, %bb.cs ], [ %i.mg, %bb.cx ], [ %i.la, %bb.cr ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 5, i64 noundef %.sroa.1578.0) #27
  br label %bb.cy

bb.cy:                                            ; preds = %bb.db, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.mj = phi ptr [ %.ph, %bb.db ], [ %i.kg, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 28, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.mk = icmp eq i64 %i.ke, 0
  br i1 %i.mk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mj, i64 noundef %i.ke, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !254
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit

bb.da:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 %i.ke, ptr %i.x, align 8
  %.sroa.5.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.ph, ptr %.sroa.5.0..sroa_idx75, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.ke, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.x) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 28, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit

bb.db:                                            ; preds = %.loopexit
  %i.ml = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.mm = load double, ptr %i.ml, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 5, double noundef %i.mm) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.cy

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit: ; preds = %bb.cz, %bb.cy, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.aa, ptr %i.v, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.416.0..sroa_idx, align 8
  %i.mn = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @6, ptr noundef nonnull %i.v) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %.val.i72 = load i64, ptr %i.aa, align 8, !range !18, !alias.scope !255, !noundef !8 ; 2 uses
  %i.mo = icmp eq i64 %.val.i72, 0
  br i1 %i.mo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit74, label %bb.dc

bb.dc:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit
  %i.mp = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.val1.i73 = load ptr, ptr %i.mp, align 8, !alias.scope !255, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i73, i64 noundef %.val.i72, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !255
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit74

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit74: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.dd

bb.dd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit74, %bb.cg, %_RINvMs1_NtCsbMXVmEvvZJf_5uu_dd8progressNtB6_9WriteStat6reportNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StderrEB8_.exit, %_RINvMs_NtCsbMXVmEvvZJf_5uu_dd8progressNtB5_8ReadStat6reportNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StderrEB7_.exit
  %.sroa.0.0 = phi ptr [ %i.mn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit74 ], [ %i.ex, %_RINvMs_NtCsbMXVmEvvZJf_5uu_dd8progressNtB5_8ReadStat6reportNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StderrEB7_.exit ], [ %i.jw, %_RINvMs1_NtCsbMXVmEvvZJf_5uu_dd8progressNtB6_9WriteStat6reportNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StderrEB8_.exit ], [ null, %bb.cg ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB3_10ProgUpdate15write_prog_lineNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StderrEB5_(ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [40 x i8], align 8                ; 15 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 3 uses
  %i.j = alloca [39 x i8], align 1                ; 4 uses
  %i.k = alloca [39 x i8], align 1                ; 4 uses
  %i.l = alloca [39 x i8], align 1                ; 4 uses
  %i.m = alloca [39 x i8], align 1                ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 10 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 22 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [16 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 19 uses
  %i.ak = alloca [24 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [16 x i8], align 8               ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [16 x i8], align 8               ; 6 uses
  %i.ar = alloca [24 x i8], align 8               ; 16 uses
  %i.as = alloca [24 x i8], align 8               ; 8 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [16 x i8], align 8               ; 6 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [16 x i8], align 8               ; 6 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [16 x i8], align 8               ; 6 uses
  %i.az = alloca [24 x i8], align 8               ; 16 uses
  %i.ba = alloca [24 x i8], align 8               ; 16 uses
  %i.bb = alloca [24 x i8], align 8               ; 7 uses
  %i.bc = alloca [40 x i8], align 8               ; 11 uses
  %i.bd = alloca [24 x i8], align 8               ; 11 uses
  %i.be = alloca [16 x i8], align 8               ; 6 uses
  %i.bf = alloca [16 x i8], align 8               ; 6 uses
  %i.bg = alloca [24 x i8], align 8               ; 16 uses
  %i.bh = alloca [24 x i8], align 8               ; 10 uses
  %i.bi = alloca [24 x i8], align 8               ; 10 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bk = load i128, ptr %i.bj, align 16, !noundef !8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call fastcc void @_RNvNtCsbMXVmEvvZJf_5uu_dd7numbers23to_magnitude_and_suffix(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bi, i128 noundef %i.bk, i1 noundef zeroext true) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call fastcc void @_RNvNtCsbMXVmEvvZJf_5uu_dd7numbers23to_magnitude_and_suffix(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bh, i128 noundef %i.bk, i1 noundef zeroext false) #27
  %i.bl = load i64, ptr %0, align 16, !noundef !8 ; 2 uses
  %i.bm = uitofp i64 %i.bl to double
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !range !19, !noundef !8 ; 2 uses
  %i.bp = uitofp nneg i32 %i.bo to double
  %i.bq = fdiv double %i.bp, 1.000000e+09
  %i.br = fadd double %i.bq, %i.bm
  %i.bs = zext i64 %i.bl to i128
  %i.bt = mul nuw nsw i128 %i.bs, 1000
  %i.bu = udiv i32 %i.bo, 1000000
  %i.bv = zext nneg i32 %i.bu to i128
  %i.bw = add nuw nsw i128 %i.bt, %i.bv
  %..i = tail call noundef range(i128 1, 18446744073709551616000) i128 @llvm.umax.i128(i128 range(i128 0, 18446744073709551616000) %i.bw, i128 1)
  %i.bx = mul i128 %i.bk, 1000
  %i.by = udiv i128 %i.bx, %..i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call fastcc void @_RNvNtCsbMXVmEvvZJf_5uu_dd7numbers23to_magnitude_and_suffix(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bg, i128 noundef %i.by, i1 noundef zeroext true) #27
  %. = select i1 %2, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.119 = zext i1 %2 to i64
  %.120 = select i1 %2, ptr inttoptr (i64 1 to ptr), ptr @8
  %not. = xor i1 %2, true
  %.121 = zext i1 %not. to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store ptr %., ptr %i.bf, align 8, !captures !20
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %.119, ptr %i.bz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store ptr %.120, ptr %i.be, align 8, !captures !20
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %.121, ptr %i.ca, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i64 0, ptr %i.bd, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  store i64 0, ptr %i.cc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @_RNvXNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimalNtB2_18ExtendedBigDecimalINtNtCs6JMX4GRUq9U_4core7convert4FromdE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bc, double noundef %i.br) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cd = load i64, ptr %i.bc, align 8, !range !397, !alias.scope !396, !noalias !398, !noundef !8 ; 7 uses
  %i.ce = icmp slt i64 %i.cd, -9223372036854775803
  %i.cf = add i64 %i.cd, -9223372036854775807
  %i.cg = select i1 %i.ce, i64 %i.cf, i64 0
  switch i64 %i.cg, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.p
    i64 2, label %bb.q
    i64 3, label %bb.r
    i64 4, label %bb.s
    i64 5, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.ci = load i8, ptr %i.ch, align 8, !range !21, !alias.scope !400, !noalias !401, !noundef !8 ; 5 uses
  %i.cj = icmp eq i8 %i.ci, 0                     ; 2 uses
  %.not1.i.i = icmp eq i64 %i.cd, -1              ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB3_10ProgUpdate15write_prog_lineNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StderrEB5_:bb.a
_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs50dz3u0MOxO_10bigdecimal10BigDecimalECsbMXVmEvvZJf_5uu_dd.exit.i: ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !410
  br label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs50dz3u0MOxO_10bigdecimal10BigDecimalECsbMXVmEvvZJf_5uu_dd.exit.i, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !410
  call void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6format10num_format18get_sign_indicator(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i8 noundef 0, i1 noundef zeroext %.sroa.03.0.i) #27, !noalias !410
  %i.dw = call fastcc noundef ptr @_RINvNtNtNtCsh036I4OHgIr_6uucore8features6format10num_format12write_outputQINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, i64 noundef 0, i8 noundef 0) #27, !noalias !411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !410
  br label %_RINvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6format10num_formatNtB6_5FloatINtB6_9FormatterRNtNtBa_18extendedbigdecimal18ExtendedBigDecimalE3fmtQINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit

_RINvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6format10num_formatNtB6_5FloatINtB6_9FormatterRNtNtBa_18extendedbigdecimal18ExtendedBigDecimalE3fmtQINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit.i, %bb.z, %bb.ad
  %.sroa.0.0.i = phi ptr [ %i.dw, %bb.ad ], [ %i.dp, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit.i ], [ %i.dp, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %_RINvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6format10num_formatNtB6_5FloatINtB6_9FormatterRNtNtBa_18extendedbigdecimal18ExtendedBigDecimalE3fmtQINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit
  %i.dx = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %.sroa.0.0.i) #27
  switch i64 %i.cd, label %bb.af [
    i64 -1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit
    i64 -9223372036854775804, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit
    i64 -9223372036854775805, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit
    i64 -9223372036854775806, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit
    i64 -9223372036854775807, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit
    i64 -9223372036854775808, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit
  ]

bb.af:                                            ; preds = %bb.ae
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.val128 = load ptr, ptr %i.dy, align 8, !nonnull !8, !noundef !8
  %i.dz = shl nuw i64 %i.cd, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val128, i64 noundef %i.dz, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit: ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %bb.ml

bb.ag:                                            ; preds = %_RINvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6format10num_formatNtB6_5FloatINtB6_9FormatterRNtNtBa_18extendedbigdecimal18ExtendedBigDecimalE3fmtQINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit
  switch i64 %i.cd, label %bb.ah [
    i64 -1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit131
    i64 -9223372036854775804, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit131
    i64 -9223372036854775805, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit131
    i64 -9223372036854775806, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit131
    i64 -9223372036854775807, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit131
    i64 -9223372036854775808, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit131
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit131
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.val126 = load ptr, ptr %i.ea, align 8, !nonnull !8, !noundef !8
  %i.eb = shl nuw i64 %i.cd, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val126, i64 noundef %i.eb, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit131

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit131: ; preds = %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %i.ec = load ptr, ptr %i.cb, align 8, !nonnull !8, !noundef !8
  %i.ed = load i64, ptr %i.cc, align 8, !noundef !8
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ec, i64 noundef %i.ed) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.ee = load i64, ptr %i.bb, align 8, !range !9, !alias.scope !412, !noundef !8
  %i.ef = trunc nuw i64 %i.ee to i1
  br i1 %i.ef, label %bb.ai, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCsbMXVmEvvZJf_5uu_dd.exit, !prof !10

bb.ai:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !412
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.eg, i64 16, i1 false)
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 43, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @111, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #30, !noalias !412
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCsbMXVmEvvZJf_5uu_dd.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit131
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !alias.scope !412, !nonnull !8, !noundef !8 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !412, !noundef !8 ; 64 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %i.el = icmp eq i128 %i.bk, 1
  br i1 %i.el, label %bb.aj, label %bb.ct

bb.aj:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCsbMXVmEvvZJf_5uu_dd.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i64 0, ptr %i.az, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 0, ptr %.sroa.528.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.em = call { ptr, i64 } @_RNvMs0_NtNtCs6JMX4GRUq9U_4core3fmt3numo4__fmt(i128 noundef 1, ptr noalias nofree noundef nonnull %i.m, i64 noundef 39) #27 ; 2 uses
  %i.en = extractvalue { ptr, i64 } %i.em, 0
  %i.eo = extractvalue { ptr, i64 } %i.em, 1      ; 16 uses
  %.not.i = icmp slt i64 %i.eo, 0
  br i1 %.not.i, label %bb.am, label %bb.ak, !prof !17

bb.ak:                                            ; preds = %bb.aj
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %.thread919, label %bb.al

.thread919:                                       ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.loopexit

bb.al:                                            ; preds = %bb.ak
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !413
  %i.eq = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.eo, i64 noundef range(i64 1, 9) 1) #27, !noalias !413 ; 18 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.aj, %bb.al
  %.sroa.4.0906.ph = phi i64 [ 1, %bb.al ], [ 0, %bb.aj ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0906.ph, i64 %i.eo) #32
  unreachable

bb.an:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eq, ptr align 1 %i.en, i64 %i.eo, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %cond1313 = icmp eq i64 %i.eo, 1
  %i.es = load i8, ptr %i.eq, align 1, !alias.scope !414, !noalias !415 ; 2 uses
  br i1 %cond1313, label %bb.ao, label %thread-pre-split.i

bb.ao:                                            ; preds = %bb.an
  switch i8 %i.es, label %bb.av [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.an
  switch i8 %i.es, label %bb.av [
    i8 43, label %bb.ap
    i8 45, label %bb.aq
  ]

bb.ap:                                            ; preds = %thread-pre-split.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.eu = add nsw i64 %i.eo, -1
  br label %bb.av

bb.aq:                                            ; preds = %thread-pre-split.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 1 ; 2 uses
  %i.ew = add nsw i64 %i.eo, -1                   ; 2 uses
  %i.ex = icmp samesign ult i64 %i.eo, 17
  br i1 %i.ex, label %.lr.ph141.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aq, %bb.at
  %.sroa.0.1136.i = phi ptr [ %i.ey, %bb.at ], [ %i.ev, %bb.aq ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.ez, %bb.at ], [ %i.ew, %bb.aq ]
  %.sroa.084.0134.i = phi i64 [ %i.fk, %bb.at ], [ 0, %bb.aq ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.ez = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.fa = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.fb = extractvalue { i64, i1 } %i.fa, 0
  %i.fc = extractvalue { i64, i1 } %i.fa, 1
  br i1 %i.fc, label %.loopexit, label %bb.ar, !prof !10

bb.ar:                                            ; preds = %.lr.ph.i
  %i.fd = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !414, !noalias !415, !noundef !8
  %i.fe = zext i8 %i.fd to i32
  %i.ff = add nsw i32 %i.fe, -48                  ; 2 uses
  %i.fg = icmp ult i32 %i.ff, 10
  br i1 %i.fg, label %bb.as, label %.loopexit

bb.as:                                            ; preds = %bb.ar
  %i.fh = zext nneg i32 %i.ff to i64
  %i.fi = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.fb, i64 %i.fh) ; 2 uses
  %i.fj = extractvalue { i64, i1 } %i.fi, 1
  br i1 %i.fj, label %.loopexit, label %bb.at, !prof !10

bb.at:                                            ; preds = %bb.as
  %i.fk = extractvalue { i64, i1 } %i.fi, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.ez, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %bb.aq, %bb.au
  %.sroa.0.2140.i = phi ptr [ %i.fr, %bb.au ], [ %i.ev, %bb.aq ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.fq, %bb.au ], [ %i.ew, %bb.aq ]
  %.sroa.084.2138.i = phi i64 [ %i.ft, %bb.au ], [ 0, %bb.aq ]
  %i.fl = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !414, !noalias !415, !noundef !8
  %i.fm = zext i8 %i.fl to i32
  %i.fn = add nsw i32 %i.fm, -48                  ; 2 uses
  %i.fo = icmp ult i32 %i.fn, 10
  br i1 %i.fo, label %bb.au, label %.loopexit

bb.au:                                            ; preds = %.lr.ph141.i
  %i.fp = mul i64 %.sroa.084.2138.i, 10
  %i.fq = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.fs = zext nneg i32 %i.fn to i64
  %i.ft = sub i64 %i.fp, %i.fs                    ; 2 uses
  %.not103.i = icmp eq i64 %i.fq, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.av:                                            ; preds = %bb.ao, %bb.ap, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.eu, %bb.ap ], [ %i.eo, %thread-pre-split.i ], [ %i.eo, %bb.ao ] ; 3 uses
  %.sroa.0.0.i134 = phi ptr [ %i.et, %bb.ap ], [ %i.eq, %thread-pre-split.i ], [ %i.eq, %bb.ao ] ; 2 uses
  %i.fu = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.fu, label %.lr.ph150.i, label %.preheader111.i

.preheader111.i:                                  ; preds = %bb.av, %bb.ay
  %.sroa.0.3145.i = phi ptr [ %i.fv, %bb.ay ], [ %.sroa.0.0.i134, %bb.av ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.fw, %bb.ay ], [ %.sroa.26.0.i, %bb.av ]
  %.sroa.084.3143.i = phi i64 [ %i.gh, %bb.ay ], [ 0, %bb.av ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.fw = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.fx = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.fy = extractvalue { i64, i1 } %i.fx, 0
  %i.fz = extractvalue { i64, i1 } %i.fx, 1
  br i1 %i.fz, label %.loopexit, label %bb.aw, !prof !10

bb.aw:                                            ; preds = %.preheader111.i
  %i.ga = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !414, !noalias !415, !noundef !8
  %i.gb = zext i8 %i.ga to i32
  %i.gc = add nsw i32 %i.gb, -48                  ; 2 uses
  %i.gd = icmp ult i32 %i.gc, 10
  br i1 %i.gd, label %bb.ax, label %.loopexit

bb.ax:                                            ; preds = %bb.aw
  %i.ge = zext nneg i32 %i.gc to i64
  %i.gf = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.fy, i64 %i.ge) ; 2 uses
  %i.gg = extractvalue { i64, i1 } %i.gf, 1
  br i1 %i.gg, label %.loopexit, label %bb.ay, !prof !10

bb.ay:                                            ; preds = %bb.ax
  %i.gh = extractvalue { i64, i1 } %i.gf, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.fw, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %bb.av, %bb.az
  %.sroa.0.4149.i = phi ptr [ %i.go, %bb.az ], [ %.sroa.0.0.i134, %bb.av ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.gn, %bb.az ], [ %.sroa.26.0.i, %bb.av ]
  %.sroa.084.4147.i = phi i64 [ %i.gq, %bb.az ], [ 0, %bb.av ]
  %i.gi = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !414, !noalias !415, !noundef !8
  %i.gj = zext i8 %i.gi to i32
  %i.gk = add nsw i32 %i.gj, -48                  ; 2 uses
  %i.gl = icmp ult i32 %i.gk, 10
  br i1 %i.gl, label %bb.az, label %.loopexit

bb.az:                                            ; preds = %.lr.ph150.i
  %i.gm = mul i64 %.sroa.084.4147.i, 10
  %i.gn = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.gp = zext nneg i32 %i.gk to i64
  %i.gq = add i64 %i.gm, %i.gp                    ; 2 uses
  %.not105.i = icmp eq i64 %i.gn, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.loopexit:                                        ; preds = %.lr.ph.i, %bb.as, %bb.ar, %.lr.ph141.i, %.preheader111.i, %bb.aw, %bb.ax, %.lr.ph150.i, %bb.ao, %bb.ao, %.thread919
  %.ph = phi ptr [ %i.eq, %.preheader111.i ], [ %i.eq, %.lr.ph141.i ], [ %i.eq, %.lr.ph150.i ], [ %i.eq, %bb.ao ], [ inttoptr (i64 1 to ptr), %.thread919 ], [ %i.eq, %bb.ao ], [ %i.eq, %bb.ax ], [ %i.eq, %bb.aw ], [ %i.eq, %bb.ar ], [ %i.eq, %bb.as ], [ %i.eq, %.lr.ph.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.eo) #31
  %i.gr = load i8, ptr %i.ay, align 8, !range !11, !noundef !8
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %bb.bd, label %bb.be

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.at, %bb.au, %bb.ay, %bb.az
  %.sroa.15749.0 = phi i64 [ %i.gh, %bb.ay ], [ %i.ft, %bb.au ], [ %i.gq, %bb.az ], [ %i.fk, %bb.at ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 5, i64 noundef %.sroa.15749.0) #27
  br label %bb.ba

bb.ba:                                            ; preds = %bb.be, %bb.bd, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.gt = phi ptr [ %.ph, %bb.bd ], [ %.ph, %bb.be ], [ %i.eq, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  %.sroa.08.0.not = phi i1 [ true, %bb.bd ], [ false, %bb.be ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  %.not.i135 = icmp slt i64 %i.ek, 0
  br i1 %.not.i135, label %bb.bf, label %bb.bb, !prof !17

bb.bb:                                            ; preds = %bb.ba
  %i.gu = icmp eq i64 %i.ek, 0
  br i1 %i.gu, label %.thread945, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !416
  %i.gv = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ek, i64 noundef range(i64 1, 9) 1) #27, !noalias !416 ; 18 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.bf, label %bb.bg

bb.bd:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store i64 %i.eo, ptr %i.ax, align 8
  %.sroa.5745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.ph, ptr %.sroa.5745.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %i.eo, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ax) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.ba

bb.be:                                            ; preds = %.loopexit
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.gy = load double, ptr %i.gx, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 5, double noundef %i.gy) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.ba

bb.bf:                                            ; preds = %bb.ba, %bb.bc
  %.sroa.4851.0.ph = phi i64 [ 1, %bb.bc ], [ 0, %bb.ba ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4851.0.ph, i64 %i.ek) #32
  unreachable

bb.bg:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gv, ptr nonnull align 1 %i.ei, i64 %i.ek, i1 false)
  %cond1312 = icmp eq i64 %i.ek, 1
  %i.gz = load i8, ptr %i.gv, align 1, !alias.scope !417, !noalias !418 ; 2 uses
  br i1 %cond1312, label %bb.bh, label %thread-pre-split.i170

bb.bh:                                            ; preds = %bb.bg
  switch i8 %i.gz, label %bb.bo [
    i8 43, label %.thread945
    i8 45, label %.thread945
  ]

thread-pre-split.i170:                            ; preds = %bb.bg
  switch i8 %i.gz, label %bb.bo [
    i8 43, label %bb.bi
    i8 45, label %bb.bj
  ]

bb.bi:                                            ; preds = %thread-pre-split.i170
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 1
  %i.hb = add nsw i64 %i.ek, -1
  br label %bb.bo

bb.bj:                                            ; preds = %thread-pre-split.i170
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gv, i64 1 ; 2 uses
  %i.hd = add nsw i64 %i.ek, -1                   ; 2 uses
  %i.he = icmp samesign ult i64 %i.ek, 17
  br i1 %i.he, label %.lr.ph141.i150, label %.lr.ph.i140

.lr.ph.i140:                                      ; preds = %bb.bj, %bb.bm
  %.sroa.0.1136.i141 = phi ptr [ %i.hf, %bb.bm ], [ %i.hc, %bb.bj ] ; 2 uses
  %.sroa.26.1135.i142 = phi i64 [ %i.hg, %bb.bm ], [ %i.hd, %bb.bj ]
  %.sroa.084.0134.i143 = phi i64 [ %i.hr, %bb.bm ], [ 0, %bb.bj ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i141, i64 1
  %i.hg = add nsw i64 %.sroa.26.1135.i142, -1     ; 2 uses
  %i.hh = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i143, i64 10) ; 2 uses
  %i.hi = extractvalue { i64, i1 } %i.hh, 0
  %i.hj = extractvalue { i64, i1 } %i.hh, 1
  br i1 %i.hj, label %.thread945, label %bb.bk, !prof !10

bb.bk:                                            ; preds = %.lr.ph.i140
  %i.hk = load i8, ptr %.sroa.0.1136.i141, align 1, !alias.scope !417, !noalias !418, !noundef !8
  %i.hl = zext i8 %i.hk to i32
  %i.hm = add nsw i32 %i.hl, -48                  ; 2 uses
  %i.hn = icmp ult i32 %i.hm, 10
  br i1 %i.hn, label %bb.bl, label %.thread945

bb.bl:                                            ; preds = %bb.bk
  %i.ho = zext nneg i32 %i.hm to i64
  %i.hp = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.hi, i64 %i.ho) ; 2 uses
  %i.hq = extractvalue { i64, i1 } %i.hp, 1
  br i1 %i.hq, label %.thread945, label %bb.bm, !prof !10

bb.bm:                                            ; preds = %bb.bl
  %i.hr = extractvalue { i64, i1 } %i.hp, 0       ; 2 uses
  %.not102.i145 = icmp eq i64 %i.hg, 0
  br i1 %.not102.i145, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit172, label %.lr.ph.i140

.lr.ph141.i150:                                   ; preds = %bb.bj, %bb.bn
  %.sroa.0.2140.i151 = phi ptr [ %i.hy, %bb.bn ], [ %i.hc, %bb.bj ] ; 2 uses
  %.sroa.26.2139.i152 = phi i64 [ %i.hx, %bb.bn ], [ %i.hd, %bb.bj ]
  %.sroa.084.2138.i153 = phi i64 [ %i.ia, %bb.bn ], [ 0, %bb.bj ]
  %i.hs = load i8, ptr %.sroa.0.2140.i151, align 1, !alias.scope !417, !noalias !418, !noundef !8
  %i.ht = zext i8 %i.hs to i32
  %i.hu = add nsw i32 %i.ht, -48                  ; 2 uses
  %i.hv = icmp ult i32 %i.hu, 10
  br i1 %i.hv, label %bb.bn, label %.thread945

bb.bn:                                            ; preds = %.lr.ph141.i150
  %i.hw = mul i64 %.sroa.084.2138.i153, 10
  %i.hx = add nsw i64 %.sroa.26.2139.i152, -1     ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i151, i64 1
  %i.hz = zext nneg i32 %i.hu to i64
  %i.ia = sub i64 %i.hw, %i.hz                    ; 2 uses
  %.not103.i154 = icmp eq i64 %i.hx, 0
  br i1 %.not103.i154, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit172, label %.lr.ph141.i150

bb.bo:                                            ; preds = %bb.bh, %bb.bi, %thread-pre-split.i170
  %.sroa.26.0.i155 = phi i64 [ %i.hb, %bb.bi ], [ %i.ek, %thread-pre-split.i170 ], [ %i.ek, %bb.bh ] ; 4 uses
  %.sroa.0.0.i156 = phi ptr [ %i.ha, %bb.bi ], [ %i.gv, %thread-pre-split.i170 ], [ %i.gv, %bb.bh ] ; 2 uses
  %i.ib = icmp samesign ult i64 %.sroa.26.0.i155, 16
  br i1 %i.ib, label %.preheader.i163, label %.preheader111.i157

.preheader.i163:                                  ; preds = %bb.bo
  %.not105146.i164 = icmp eq i64 %.sroa.26.0.i155, 0
  br i1 %.not105146.i164, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit172, label %.lr.ph150.i165

.preheader111.i157:                               ; preds = %bb.bo, %bb.br
  %.sroa.0.3145.i158 = phi ptr [ %i.ic, %bb.br ], [ %.sroa.0.0.i156, %bb.bo ] ; 2 uses
  %.sroa.26.3144.i159 = phi i64 [ %i.id, %bb.br ], [ %.sroa.26.0.i155, %bb.bo ]
  %.sroa.084.3143.i160 = phi i64 [ %i.io, %bb.br ], [ 0, %bb.bo ]
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i158, i64 1
  %i.id = add nsw i64 %.sroa.26.3144.i159, -1     ; 2 uses
  %i.ie = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i160, i64 10) ; 2 uses
  %i.if = extractvalue { i64, i1 } %i.ie, 0
  %i.ig = extractvalue { i64, i1 } %i.ie, 1
  br i1 %i.ig, label %.thread945, label %bb.bp, !prof !10

bb.bp:                                            ; preds = %.preheader111.i157
  %i.ih = load i8, ptr %.sroa.0.3145.i158, align 1, !alias.scope !417, !noalias !418, !noundef !8
  %i.ii = zext i8 %i.ih to i32
  %i.ij = add nsw i32 %i.ii, -48                  ; 2 uses
  %i.ik = icmp ult i32 %i.ij, 10
  br i1 %i.ik, label %bb.bq, label %.thread945

bb.bq:                                            ; preds = %bb.bp
  %i.il = zext nneg i32 %i.ij to i64
  %i.im = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.if, i64 %i.il) ; 2 uses
  %i.in = extractvalue { i64, i1 } %i.im, 1
  br i1 %i.in, label %.thread945, label %bb.br, !prof !10

bb.br:                                            ; preds = %bb.bq
  %i.io = extractvalue { i64, i1 } %i.im, 0       ; 2 uses
  %.not104.i162 = icmp eq i64 %i.id, 0
  br i1 %.not104.i162, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit172, label %.preheader111.i157

.lr.ph150.i165:                                   ; preds = %.preheader.i163, %bb.bs
  %.sroa.0.4149.i166 = phi ptr [ %i.iv, %bb.bs ], [ %.sroa.0.0.i156, %.preheader.i163 ] ; 2 uses
  %.sroa.26.4148.i167 = phi i64 [ %i.iu, %bb.bs ], [ %.sroa.26.0.i155, %.preheader.i163 ]
  %.sroa.084.4147.i168 = phi i64 [ %i.ix, %bb.bs ], [ 0, %.preheader.i163 ]
  %i.ip = load i8, ptr %.sroa.0.4149.i166, align 1, !alias.scope !417, !noalias !418, !noundef !8
  %i.iq = zext i8 %i.ip to i32
  %i.ir = add nsw i32 %i.iq, -48                  ; 2 uses
  %i.is = icmp ult i32 %i.ir, 10
  br i1 %i.is, label %bb.bs, label %.thread945

bb.bs:                                            ; preds = %.lr.ph150.i165
  %i.it = mul i64 %.sroa.084.4147.i168, 10
  %i.iu = add nsw i64 %.sroa.26.4148.i167, -1     ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i166, i64 1
  %i.iw = zext nneg i32 %i.ir to i64
  %i.ix = add i64 %i.it, %i.iw                    ; 2 uses
  %.not105.i169 = icmp eq i64 %i.iu, 0
  br i1 %.not105.i169, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit172, label %.lr.ph150.i165

.thread945:                                       ; preds = %.lr.ph.i140, %bb.bl, %bb.bk, %.lr.ph141.i150, %.preheader111.i157, %bb.bp, %bb.bq, %.lr.ph150.i165, %bb.bh, %bb.bh, %bb.bb
  %.ph953 = phi ptr [ inttoptr (i64 1 to ptr), %bb.bb ], [ %i.gv, %.preheader111.i157 ], [ %i.gv, %.lr.ph150.i165 ], [ %i.gv, %bb.bh ], [ %i.gv, %.lr.ph141.i150 ], [ %i.gv, %bb.bh ], [ %i.gv, %bb.bq ], [ %i.gv, %bb.bp ], [ %i.gv, %bb.bk ], [ %i.gv, %bb.bl ], [ %i.gv, %.lr.ph.i140 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.aw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph953, i64 noundef %i.ek) #31
  %i.iy = load i8, ptr %i.aw, align 8, !range !11, !noundef !8
  %i.iz = trunc nuw i8 %i.iy to i1
  br i1 %i.iz, label %bb.bw, label %bb.bx

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit172: ; preds = %bb.bm, %bb.bn, %bb.br, %bb.bs, %.preheader.i163
  %.sroa.15756.0 = phi i64 [ %i.io, %bb.br ], [ %i.ia, %bb.bn ], [ %i.ix, %bb.bs ], [ 0, %.preheader.i163 ], [ %i.hr, %bb.bm ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 8, i64 noundef %.sroa.15756.0) #27
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bx, %bb.bw, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit172
  %i.ja = phi ptr [ %.ph953, %bb.bw ], [ %.ph953, %bb.bx ], [ %i.gv, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit172 ]
  %.sroa.07.0.not = phi i1 [ true, %bb.bw ], [ false, %bb.bx ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit172 ]
  %i.jb = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !nonnull !8, !noundef !8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.je = load i64, ptr %i.jd, align 8, !noundef !8 ; 16 uses
  %.not.i173 = icmp slt i64 %i.je, 0
  br i1 %.not.i173, label %bb.by, label %bb.bu, !prof !17

bb.bu:                                            ; preds = %bb.bt
  %i.jf = icmp eq i64 %i.je, 0
  br i1 %i.jf, label %.thread972, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !419
  %i.jg = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.je, i64 noundef range(i64 1, 9) 1) #27, !noalias !419 ; 18 uses
  %i.jh = icmp eq ptr %i.jg, null
  br i1 %i.jh, label %bb.by, label %bb.bz

bb.bw:                                            ; preds = %.thread945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i64 %i.ek, ptr %i.av, align 8
  %.sroa.5751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %.ph953, ptr %.sroa.5751.0..sroa_idx, align 8
  %.sroa.8752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %i.ek, ptr %.sroa.8752.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.av) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.bt

bb.bx:                                            ; preds = %.thread945
  %i.ji = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.jj = load double, ptr %i.ji, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 8, double noundef %i.jj) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.bt

bb.by:                                            ; preds = %bb.bt, %bb.bv
  %.sroa.4855.0.ph = phi i64 [ 1, %bb.bv ], [ 0, %bb.bt ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4855.0.ph, i64 %i.je) #32
  unreachable

bb.bz:                                            ; preds = %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jg, ptr nonnull align 1 %i.jc, i64 %i.je, i1 false)
  %cond = icmp eq i64 %i.je, 1
  %i.jk = load i8, ptr %i.jg, align 1, !alias.scope !420, !noalias !421 ; 2 uses
  br i1 %cond, label %bb.ca, label %thread-pre-split.i208

bb.ca:                                            ; preds = %bb.bz
  switch i8 %i.jk, label %bb.ch [
    i8 43, label %.thread972
    i8 45, label %.thread972
  ]

thread-pre-split.i208:                            ; preds = %bb.bz
  switch i8 %i.jk, label %bb.ch [
    i8 43, label %bb.cb
    i8 45, label %bb.cc
  ]

bb.cb:                                            ; preds = %thread-pre-split.i208
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 1
  %i.jm = add nsw i64 %i.je, -1
  br label %bb.ch

bb.cc:                                            ; preds = %thread-pre-split.i208
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jg, i64 1 ; 2 uses
  %i.jo = add nsw i64 %i.je, -1                   ; 2 uses
  %i.jp = icmp samesign ult i64 %i.je, 17
  br i1 %i.jp, label %.lr.ph141.i188, label %.lr.ph.i178

.lr.ph.i178:                                      ; preds = %bb.cc, %bb.cf
  %.sroa.0.1136.i179 = phi ptr [ %i.jq, %bb.cf ], [ %i.jn, %bb.cc ] ; 2 uses
  %.sroa.26.1135.i180 = phi i64 [ %i.jr, %bb.cf ], [ %i.jo, %bb.cc ]
  %.sroa.084.0134.i181 = phi i64 [ %i.kc, %bb.cf ], [ 0, %bb.cc ]
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i179, i64 1
  %i.jr = add nsw i64 %.sroa.26.1135.i180, -1     ; 2 uses
  %i.js = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i181, i64 10) ; 2 uses
  %i.jt = extractvalue { i64, i1 } %i.js, 0
  %i.ju = extractvalue { i64, i1 } %i.js, 1
  br i1 %i.ju, label %.thread972, label %bb.cd, !prof !10

bb.cd:                                            ; preds = %.lr.ph.i178
  %i.jv = load i8, ptr %.sroa.0.1136.i179, align 1, !alias.scope !420, !noalias !421, !noundef !8
  %i.jw = zext i8 %i.jv to i32
  %i.jx = add nsw i32 %i.jw, -48                  ; 2 uses
  %i.jy = icmp ult i32 %i.jx, 10
  br i1 %i.jy, label %bb.ce, label %.thread972

bb.ce:                                            ; preds = %bb.cd
  %i.jz = zext nneg i32 %i.jx to i64
  %i.ka = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.jt, i64 %i.jz) ; 2 uses
  %i.kb = extractvalue { i64, i1 } %i.ka, 1
  br i1 %i.kb, label %.thread972, label %bb.cf, !prof !10

bb.cf:                                            ; preds = %bb.ce
  %i.kc = extractvalue { i64, i1 } %i.ka, 0       ; 2 uses
  %.not102.i183 = icmp eq i64 %i.jr, 0
  br i1 %.not102.i183, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit210, label %.lr.ph.i178

.lr.ph141.i188:                                   ; preds = %bb.cc, %bb.cg
  %.sroa.0.2140.i189 = phi ptr [ %i.kj, %bb.cg ], [ %i.jn, %bb.cc ] ; 2 uses
  %.sroa.26.2139.i190 = phi i64 [ %i.ki, %bb.cg ], [ %i.jo, %bb.cc ]
  %.sroa.084.2138.i191 = phi i64 [ %i.kl, %bb.cg ], [ 0, %bb.cc ]
  %i.kd = load i8, ptr %.sroa.0.2140.i189, align 1, !alias.scope !420, !noalias !421, !noundef !8
  %i.ke = zext i8 %i.kd to i32
  %i.kf = add nsw i32 %i.ke, -48                  ; 2 uses
  %i.kg = icmp ult i32 %i.kf, 10
  br i1 %i.kg, label %bb.cg, label %.thread972

bb.cg:                                            ; preds = %.lr.ph141.i188
  %i.kh = mul i64 %.sroa.084.2138.i191, 10
  %i.ki = add nsw i64 %.sroa.26.2139.i190, -1     ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i189, i64 1
  %i.kk = zext nneg i32 %i.kf to i64
  %i.kl = sub i64 %i.kh, %i.kk                    ; 2 uses
  %.not103.i192 = icmp eq i64 %i.ki, 0
  br i1 %.not103.i192, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit210, label %.lr.ph141.i188

bb.ch:                                            ; preds = %bb.ca, %bb.cb, %thread-pre-split.i208
  %.sroa.26.0.i193 = phi i64 [ %i.jm, %bb.cb ], [ %i.je, %thread-pre-split.i208 ], [ %i.je, %bb.ca ] ; 3 uses
  %.sroa.0.0.i194 = phi ptr [ %i.jl, %bb.cb ], [ %i.jg, %thread-pre-split.i208 ], [ %i.jg, %bb.ca ] ; 2 uses
  %i.km = icmp samesign ult i64 %.sroa.26.0.i193, 16
  br i1 %i.km, label %.lr.ph150.i203, label %.preheader111.i195

.preheader111.i195:                               ; preds = %bb.ch, %bb.ck
  %.sroa.0.3145.i196 = phi ptr [ %i.kn, %bb.ck ], [ %.sroa.0.0.i194, %bb.ch ] ; 2 uses
  %.sroa.26.3144.i197 = phi i64 [ %i.ko, %bb.ck ], [ %.sroa.26.0.i193, %bb.ch ]
  %.sroa.084.3143.i198 = phi i64 [ %i.kz, %bb.ck ], [ 0, %bb.ch ]
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i196, i64 1
  %i.ko = add nsw i64 %.sroa.26.3144.i197, -1     ; 2 uses
  %i.kp = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i198, i64 10) ; 2 uses
  %i.kq = extractvalue { i64, i1 } %i.kp, 0
  %i.kr = extractvalue { i64, i1 } %i.kp, 1
  br i1 %i.kr, label %.thread972, label %bb.ci, !prof !10

bb.ci:                                            ; preds = %.preheader111.i195
  %i.ks = load i8, ptr %.sroa.0.3145.i196, align 1, !alias.scope !420, !noalias !421, !noundef !8
  %i.kt = zext i8 %i.ks to i32
  %i.ku = add nsw i32 %i.kt, -48                  ; 2 uses
  %i.kv = icmp ult i32 %i.ku, 10
  br i1 %i.kv, label %bb.cj, label %.thread972

bb.cj:                                            ; preds = %bb.ci
  %i.kw = zext nneg i32 %i.ku to i64
  %i.kx = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.kq, i64 %i.kw) ; 2 uses
  %i.ky = extractvalue { i64, i1 } %i.kx, 1
  br i1 %i.ky, label %.thread972, label %bb.ck, !prof !10

bb.ck:                                            ; preds = %bb.cj
  %i.kz = extractvalue { i64, i1 } %i.kx, 0       ; 2 uses
  %.not104.i200 = icmp eq i64 %i.ko, 0
  br i1 %.not104.i200, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit210, label %.preheader111.i195

.lr.ph150.i203:                                   ; preds = %bb.ch, %bb.cl
  %.sroa.0.4149.i204 = phi ptr [ %i.lg, %bb.cl ], [ %.sroa.0.0.i194, %bb.ch ] ; 2 uses
  %.sroa.26.4148.i205 = phi i64 [ %i.lf, %bb.cl ], [ %.sroa.26.0.i193, %bb.ch ]
  %.sroa.084.4147.i206 = phi i64 [ %i.li, %bb.cl ], [ 0, %bb.ch ]
  %i.la = load i8, ptr %.sroa.0.4149.i204, align 1, !alias.scope !420, !noalias !421, !noundef !8
  %i.lb = zext i8 %i.la to i32
  %i.lc = add nsw i32 %i.lb, -48                  ; 2 uses
  %i.ld = icmp ult i32 %i.lc, 10
  br i1 %i.ld, label %bb.cl, label %.thread972

bb.cl:                                            ; preds = %.lr.ph150.i203
  %i.le = mul i64 %.sroa.084.4147.i206, 10
  %i.lf = add nsw i64 %.sroa.26.4148.i205, -1     ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i204, i64 1
  %i.lh = zext nneg i32 %i.lc to i64
  %i.li = add i64 %i.le, %i.lh                    ; 2 uses
  %.not105.i207 = icmp eq i64 %i.lf, 0
  br i1 %.not105.i207, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit210, label %.lr.ph150.i203

.thread972:                                       ; preds = %.lr.ph.i178, %bb.ce, %bb.cd, %.lr.ph141.i188, %.preheader111.i195, %bb.ci, %bb.cj, %.lr.ph150.i203, %bb.ca, %bb.ca, %bb.bu
  %.ph980 = phi ptr [ inttoptr (i64 1 to ptr), %bb.bu ], [ %i.jg, %.preheader111.i195 ], [ %i.jg, %.lr.ph150.i203 ], [ %i.jg, %bb.ca ], [ %i.jg, %.lr.ph141.i188 ], [ %i.jg, %bb.ca ], [ %i.jg, %bb.cj ], [ %i.jg, %bb.ci ], [ %i.jg, %bb.cd ], [ %i.jg, %bb.ce ], [ %i.jg, %.lr.ph.i178 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph980, i64 noundef %i.je) #31
  %i.lj = load i8, ptr %i.au, align 8, !range !11, !noundef !8
  %i.lk = trunc nuw i8 %i.lj to i1
  br i1 %i.lk, label %bb.co, label %bb.cp

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit210: ; preds = %bb.cf, %bb.cg, %bb.ck, %bb.cl
  %.sroa.15763.0 = phi i64 [ %i.kz, %bb.ck ], [ %i.kl, %bb.cg ], [ %i.li, %bb.cl ], [ %i.kc, %bb.cf ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, i64 noundef %.sroa.15763.0) #27
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cp, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit210
  %i.ll = phi ptr [ %.ph980, %bb.cp ], [ %i.jg, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit210 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.as) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.lm = icmp eq i64 %i.je, 0
  br i1 %i.lm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ll, i64 noundef %i.je, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !422
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit

bb.co:                                            ; preds = %.thread972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i64 %i.je, ptr %i.at, align 8
  %.sroa.5758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %.ph980, ptr %.sroa.5758.0..sroa_idx, align 8
  %.sroa.8759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %i.je, ptr %.sroa.8759.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.at) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.as) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit

bb.cp:                                            ; preds = %.thread972
  %i.ln = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.lo = load double, ptr %i.ln, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, double noundef %i.lo) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.cm

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit: ; preds = %bb.cn, %bb.cm, %bb.co
  %i.lp = icmp eq i64 %i.ek, 0
  %or.cond = or i1 %.sroa.07.0.not, %i.lp
  br i1 %or.cond, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit214, label %bb.cq

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit214: ; preds = %bb.cq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit
  %i.lq = icmp eq i64 %i.eo, 0
  %or.cond1326 = or i1 %.sroa.08.0.not, %i.lq
  br i1 %or.cond1326, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit217, label %bb.cr

bb.cq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ja, i64 noundef %i.ek, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !423
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit214

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit217: ; preds = %bb.cr, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.cs

bb.cr:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit214
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gt, i64 noundef %i.eo, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !424
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit217

bb.cs:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit709, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit590, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit430, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.bf, ptr %i.n, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsbMXVmEvvZJf_5uu_dd, ptr %.sroa.476.0..sroa_idx, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.ba, ptr %i.lr, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.480.0..sroa_idx, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.be, ptr %i.ls, align 8
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsbMXVmEvvZJf_5uu_dd, ptr %.sroa.484.0..sroa_idx, align 8
  %i.lt = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @20, ptr noundef nonnull %i.n) #27 ; 2 uses
  %.not117 = icmp eq ptr %i.lt, null
  br i1 %.not117, label %bb.mg, label %bb.me

bb.ct:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCsbMXVmEvvZJf_5uu_dd.exit
  %i.lu = icmp ult i128 %i.bk, 1000
  br i1 %i.lu, label %bb.cu, label %bb.da

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i64 0, ptr %i.ar, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 0, ptr %.sroa.522.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.lv = call { ptr, i64 } @_RNvMs0_NtNtCs6JMX4GRUq9U_4core3fmt3numo4__fmt(i128 noundef %i.bk, ptr noalias nofree noundef nonnull %i.l, i64 noundef 39) #27 ; 2 uses
  %i.lw = extractvalue { ptr, i64 } %i.lv, 0
  %i.lx = extractvalue { ptr, i64 } %i.lv, 1      ; 16 uses
  %.not.i218 = icmp slt i64 %i.lx, 0
  br i1 %.not.i218, label %bb.jy, label %bb.cv, !prof !17

bb.cv:                                            ; preds = %bb.cu
  %i.ly = icmp eq i64 %i.lx, 0
  br i1 %i.ly, label %.thread1242, label %bb.cw

.thread1242:                                      ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.loopexit1366

bb.cw:                                            ; preds = %bb.cv
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !425
  %i.lz = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.lx, i64 noundef range(i64 1, 9) 1) #27, !noalias !425 ; 18 uses
  %i.ma = icmp eq ptr %i.lz, null
  br i1 %i.ma, label %bb.jy, label %bb.jz

bb.cx:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 0, ptr %i.z, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.mb = call { ptr, i64 } @_RNvMs0_NtNtCs6JMX4GRUq9U_4core3fmt3numo4__fmt(i128 noundef %i.bk, ptr noalias nofree noundef nonnull %i.j, i64 noundef 39) #27 ; 2 uses
  %i.mc = extractvalue { ptr, i64 } %i.mb, 0
  %i.md = extractvalue { ptr, i64 } %i.mb, 1      ; 16 uses
  %.not.i222 = icmp slt i64 %i.md, 0
  br i1 %.not.i222, label %bb.de, label %bb.cy, !prof !17

bb.cy:                                            ; preds = %bb.cx
  %i.me = icmp eq i64 %i.md, 0
  br i1 %i.me, label %.thread1009, label %bb.cz

.thread1009:                                      ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.loopexit1422

bb.cz:                                            ; preds = %bb.cy
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !426
  %i.mf = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.md, i64 noundef range(i64 1, 9) 1) #27, !noalias !426 ; 18 uses
  %i.mg = icmp eq ptr %i.mf, null
  br i1 %i.mg, label %bb.de, label %bb.df

bb.da:                                            ; preds = %bb.ct
  %i.mh = icmp ult i128 %i.bk, 1024
  br i1 %i.mh, label %bb.db, label %bb.cx

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 0, ptr %i.aj, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 0, ptr %.sroa.525.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.mi = call { ptr, i64 } @_RNvMs0_NtNtCs6JMX4GRUq9U_4core3fmt3numo4__fmt(i128 noundef %i.bk, ptr noalias nofree noundef nonnull %i.k, i64 noundef 39) #27 ; 2 uses
  %i.mj = extractvalue { ptr, i64 } %i.mi, 0
  %i.mk = extractvalue { ptr, i64 } %i.mi, 1      ; 16 uses
  %.not.i226 = icmp slt i64 %i.mk, 0
  br i1 %.not.i226, label %bb.gy, label %bb.dc, !prof !17

bb.dc:                                            ; preds = %bb.db
  %i.ml = icmp eq i64 %i.mk, 0
  br i1 %i.ml, label %.thread1139, label %bb.dd

.thread1139:                                      ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.loopexit1391

bb.dd:                                            ; preds = %bb.dc
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !427
  %i.mm = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.mk, i64 noundef range(i64 1, 9) 1) #27, !noalias !427 ; 18 uses
  %i.mn = icmp eq ptr %i.mm, null
  br i1 %i.mn, label %bb.gy, label %bb.gz

bb.de:                                            ; preds = %bb.cx, %bb.cz
  %.sroa.4887.0.ph = phi i64 [ 1, %bb.cz ], [ 0, %bb.cx ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4887.0.ph, i64 %i.md) #32
  unreachable

bb.df:                                            ; preds = %bb.cz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mf, ptr align 1 %i.mc, i64 %i.md, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %cond1325 = icmp eq i64 %i.md, 1
  %i.mo = load i8, ptr %i.mf, align 1, !alias.scope !428, !noalias !429 ; 2 uses
  br i1 %cond1325, label %bb.dg, label %thread-pre-split.i261

bb.dg:                                            ; preds = %bb.df
  switch i8 %i.mo, label %bb.dn [
    i8 43, label %.loopexit1422
    i8 45, label %.loopexit1422
  ]

thread-pre-split.i261:                            ; preds = %bb.df
  switch i8 %i.mo, label %bb.dn [
    i8 43, label %bb.dh
    i8 45, label %bb.di
  ]

bb.dh:                                            ; preds = %thread-pre-split.i261
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mf, i64 1
  %i.mq = add nsw i64 %i.md, -1
  br label %bb.dn

bb.di:                                            ; preds = %thread-pre-split.i261
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mf, i64 1 ; 2 uses
  %i.ms = add nsw i64 %i.md, -1                   ; 2 uses
  %i.mt = icmp samesign ult i64 %i.md, 17
  br i1 %i.mt, label %.lr.ph141.i241, label %.lr.ph.i231

.lr.ph.i231:                                      ; preds = %bb.di, %bb.dl
  %.sroa.0.1136.i232 = phi ptr [ %i.mu, %bb.dl ], [ %i.mr, %bb.di ] ; 2 uses
  %.sroa.26.1135.i233 = phi i64 [ %i.mv, %bb.dl ], [ %i.ms, %bb.di ]
  %.sroa.084.0134.i234 = phi i64 [ %i.ng, %bb.dl ], [ 0, %bb.di ]
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i232, i64 1
  %i.mv = add nsw i64 %.sroa.26.1135.i233, -1     ; 2 uses
  %i.mw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i234, i64 10) ; 2 uses
  %i.mx = extractvalue { i64, i1 } %i.mw, 0
  %i.my = extractvalue { i64, i1 } %i.mw, 1
  br i1 %i.my, label %.loopexit1422, label %bb.dj, !prof !10

bb.dj:                                            ; preds = %.lr.ph.i231
  %i.mz = load i8, ptr %.sroa.0.1136.i232, align 1, !alias.scope !428, !noalias !429, !noundef !8
  %i.na = zext i8 %i.mz to i32
  %i.nb = add nsw i32 %i.na, -48                  ; 2 uses
  %i.nc = icmp ult i32 %i.nb, 10
  br i1 %i.nc, label %bb.dk, label %.loopexit1422

bb.dk:                                            ; preds = %bb.dj
  %i.nd = zext nneg i32 %i.nb to i64
  %i.ne = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.mx, i64 %i.nd) ; 2 uses
  %i.nf = extractvalue { i64, i1 } %i.ne, 1
  br i1 %i.nf, label %.loopexit1422, label %bb.dl, !prof !10

bb.dl:                                            ; preds = %bb.dk
  %i.ng = extractvalue { i64, i1 } %i.ne, 0       ; 2 uses
  %.not102.i236 = icmp eq i64 %i.mv, 0
  br i1 %.not102.i236, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit263, label %.lr.ph.i231

.lr.ph141.i241:                                   ; preds = %bb.di, %bb.dm
  %.sroa.0.2140.i242 = phi ptr [ %i.nn, %bb.dm ], [ %i.mr, %bb.di ] ; 2 uses
  %.sroa.26.2139.i243 = phi i64 [ %i.nm, %bb.dm ], [ %i.ms, %bb.di ]
  %.sroa.084.2138.i244 = phi i64 [ %i.np, %bb.dm ], [ 0, %bb.di ]
  %i.nh = load i8, ptr %.sroa.0.2140.i242, align 1, !alias.scope !428, !noalias !429, !noundef !8
  %i.ni = zext i8 %i.nh to i32
  %i.nj = add nsw i32 %i.ni, -48                  ; 2 uses
  %i.nk = icmp ult i32 %i.nj, 10
  br i1 %i.nk, label %bb.dm, label %.loopexit1422

bb.dm:                                            ; preds = %.lr.ph141.i241
  %i.nl = mul i64 %.sroa.084.2138.i244, 10
  %i.nm = add nsw i64 %.sroa.26.2139.i243, -1     ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i242, i64 1
  %i.no = zext nneg i32 %i.nj to i64
  %i.np = sub i64 %i.nl, %i.no                    ; 2 uses
  %.not103.i245 = icmp eq i64 %i.nm, 0
  br i1 %.not103.i245, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit263, label %.lr.ph141.i241

bb.dn:                                            ; preds = %bb.dg, %bb.dh, %thread-pre-split.i261
  %.sroa.26.0.i246 = phi i64 [ %i.mq, %bb.dh ], [ %i.md, %thread-pre-split.i261 ], [ %i.md, %bb.dg ] ; 3 uses
  %.sroa.0.0.i247 = phi ptr [ %i.mp, %bb.dh ], [ %i.mf, %thread-pre-split.i261 ], [ %i.mf, %bb.dg ] ; 2 uses
  %i.nq = icmp samesign ult i64 %.sroa.26.0.i246, 16
  br i1 %i.nq, label %.lr.ph150.i256, label %.preheader111.i248

.preheader111.i248:                               ; preds = %bb.dn, %bb.dq
  %.sroa.0.3145.i249 = phi ptr [ %i.nr, %bb.dq ], [ %.sroa.0.0.i247, %bb.dn ] ; 2 uses
  %.sroa.26.3144.i250 = phi i64 [ %i.ns, %bb.dq ], [ %.sroa.26.0.i246, %bb.dn ]
  %.sroa.084.3143.i251 = phi i64 [ %i.od, %bb.dq ], [ 0, %bb.dn ]
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i249, i64 1
  %i.ns = add nsw i64 %.sroa.26.3144.i250, -1     ; 2 uses
  %i.nt = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i251, i64 10) ; 2 uses
  %i.nu = extractvalue { i64, i1 } %i.nt, 0
  %i.nv = extractvalue { i64, i1 } %i.nt, 1
  br i1 %i.nv, label %.loopexit1422, label %bb.do, !prof !10

bb.do:                                            ; preds = %.preheader111.i248
  %i.nw = load i8, ptr %.sroa.0.3145.i249, align 1, !alias.scope !428, !noalias !429, !noundef !8
  %i.nx = zext i8 %i.nw to i32
  %i.ny = add nsw i32 %i.nx, -48                  ; 2 uses
  %i.nz = icmp ult i32 %i.ny, 10
  br i1 %i.nz, label %bb.dp, label %.loopexit1422

bb.dp:                                            ; preds = %bb.do
  %i.oa = zext nneg i32 %i.ny to i64
  %i.ob = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.nu, i64 %i.oa) ; 2 uses
  %i.oc = extractvalue { i64, i1 } %i.ob, 1
  br i1 %i.oc, label %.loopexit1422, label %bb.dq, !prof !10

bb.dq:                                            ; preds = %bb.dp
  %i.od = extractvalue { i64, i1 } %i.ob, 0       ; 2 uses
  %.not104.i253 = icmp eq i64 %i.ns, 0
  br i1 %.not104.i253, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit263, label %.preheader111.i248

.lr.ph150.i256:                                   ; preds = %bb.dn, %bb.dr
  %.sroa.0.4149.i257 = phi ptr [ %i.ok, %bb.dr ], [ %.sroa.0.0.i247, %bb.dn ] ; 2 uses
  %.sroa.26.4148.i258 = phi i64 [ %i.oj, %bb.dr ], [ %.sroa.26.0.i246, %bb.dn ]
  %.sroa.084.4147.i259 = phi i64 [ %i.om, %bb.dr ], [ 0, %bb.dn ]
  %i.oe = load i8, ptr %.sroa.0.4149.i257, align 1, !alias.scope !428, !noalias !429, !noundef !8
  %i.of = zext i8 %i.oe to i32
  %i.og = add nsw i32 %i.of, -48                  ; 2 uses
  %i.oh = icmp ult i32 %i.og, 10
  br i1 %i.oh, label %bb.dr, label %.loopexit1422

bb.dr:                                            ; preds = %.lr.ph150.i256
  %i.oi = mul i64 %.sroa.084.4147.i259, 10
  %i.oj = add nsw i64 %.sroa.26.4148.i258, -1     ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i257, i64 1
  %i.ol = zext nneg i32 %i.og to i64
  %i.om = add i64 %i.oi, %i.ol                    ; 2 uses
  %.not105.i260 = icmp eq i64 %i.oj, 0
  br i1 %.not105.i260, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit263, label %.lr.ph150.i256

.loopexit1422:                                    ; preds = %.lr.ph.i231, %bb.dk, %bb.dj, %.lr.ph141.i241, %.preheader111.i248, %bb.do, %bb.dp, %.lr.ph150.i256, %bb.dg, %bb.dg, %.thread1009
  %.ph1017 = phi ptr [ %i.mf, %.preheader111.i248 ], [ %i.mf, %.lr.ph141.i241 ], [ %i.mf, %.lr.ph150.i256 ], [ %i.mf, %bb.dg ], [ inttoptr (i64 1 to ptr), %.thread1009 ], [ %i.mf, %bb.dg ], [ %i.mf, %bb.dp ], [ %i.mf, %bb.do ], [ %i.mf, %bb.dj ], [ %i.mf, %bb.dk ], [ %i.mf, %.lr.ph.i231 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1017, i64 noundef %i.md) #31
  %i.on = load i8, ptr %i.y, align 8, !range !11, !noundef !8
  %i.oo = trunc nuw i8 %i.on to i1
  br i1 %i.oo, label %bb.dv, label %bb.dw

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit263: ; preds = %bb.dl, %bb.dm, %bb.dq, %bb.dr
  %.sroa.15819.0 = phi i64 [ %i.od, %bb.dq ], [ %i.np, %bb.dm ], [ %i.om, %bb.dr ], [ %i.ng, %bb.dl ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 5, i64 noundef %.sroa.15819.0) #27
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dw, %bb.dv, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit263
  %i.op = phi ptr [ %.ph1017, %bb.dv ], [ %.ph1017, %bb.dw ], [ %i.mf, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit263 ]
  %.sroa.017.0.not = phi i1 [ true, %bb.dv ], [ false, %bb.dw ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit263 ]
  %i.oq = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.or = load ptr, ptr %i.oq, align 8, !nonnull !8, !noundef !8
  %i.os = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.ot = load i64, ptr %i.os, align 8, !noundef !8 ; 16 uses
  %.not.i264 = icmp slt i64 %i.ot, 0
  br i1 %.not.i264, label %bb.dx, label %bb.dt, !prof !17

bb.dt:                                            ; preds = %bb.ds
  %i.ou = icmp eq i64 %i.ot, 0
  br i1 %i.ou, label %.thread1036, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !430
  %i.ov = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ot, i64 noundef range(i64 1, 9) 1) #27, !noalias !430 ; 18 uses
  %i.ow = icmp eq ptr %i.ov, null
  br i1 %i.ow, label %bb.dx, label %bb.dy

bb.dv:                                            ; preds = %.loopexit1422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 %i.md, ptr %i.x, align 8
  %.sroa.5814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.ph1017, ptr %.sroa.5814.0..sroa_idx, align 8
  %.sroa.8815.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.md, ptr %.sroa.8815.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.x) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ds

bb.dw:                                            ; preds = %.loopexit1422
  %i.ox = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.oy = load double, ptr %i.ox, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 5, double noundef %i.oy) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ds

bb.dx:                                            ; preds = %bb.ds, %bb.du
  %.sroa.4891.0.ph = phi i64 [ 1, %bb.du ], [ 0, %bb.ds ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4891.0.ph, i64 %i.ot) #32
  unreachable

bb.dy:                                            ; preds = %bb.du
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ov, ptr nonnull align 1 %i.or, i64 %i.ot, i1 false)
  %cond1324 = icmp eq i64 %i.ot, 1
  %i.oz = load i8, ptr %i.ov, align 1, !alias.scope !431, !noalias !432 ; 2 uses
  br i1 %cond1324, label %bb.dz, label %thread-pre-split.i299

bb.dz:                                            ; preds = %bb.dy
  switch i8 %i.oz, label %bb.eg [
    i8 43, label %.thread1036
    i8 45, label %.thread1036
  ]

thread-pre-split.i299:                            ; preds = %bb.dy
  switch i8 %i.oz, label %bb.eg [
    i8 43, label %bb.ea
    i8 45, label %bb.eb
  ]

bb.ea:                                            ; preds = %thread-pre-split.i299
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ov, i64 1
  %i.pb = add nsw i64 %i.ot, -1
  br label %bb.eg

bb.eb:                                            ; preds = %thread-pre-split.i299
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ov, i64 1 ; 2 uses
  %i.pd = add nsw i64 %i.ot, -1                   ; 2 uses
  %i.pe = icmp samesign ult i64 %i.ot, 17
  br i1 %i.pe, label %.lr.ph141.i279, label %.lr.ph.i269

.lr.ph.i269:                                      ; preds = %bb.eb, %bb.ee
  %.sroa.0.1136.i270 = phi ptr [ %i.pf, %bb.ee ], [ %i.pc, %bb.eb ] ; 2 uses
  %.sroa.26.1135.i271 = phi i64 [ %i.pg, %bb.ee ], [ %i.pd, %bb.eb ]
  %.sroa.084.0134.i272 = phi i64 [ %i.pr, %bb.ee ], [ 0, %bb.eb ]
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i270, i64 1
  %i.pg = add nsw i64 %.sroa.26.1135.i271, -1     ; 2 uses
  %i.ph = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i272, i64 10) ; 2 uses
  %i.pi = extractvalue { i64, i1 } %i.ph, 0
  %i.pj = extractvalue { i64, i1 } %i.ph, 1
  br i1 %i.pj, label %.thread1036, label %bb.ec, !prof !10

bb.ec:                                            ; preds = %.lr.ph.i269
  %i.pk = load i8, ptr %.sroa.0.1136.i270, align 1, !alias.scope !431, !noalias !432, !noundef !8
  %i.pl = zext i8 %i.pk to i32
  %i.pm = add nsw i32 %i.pl, -48                  ; 2 uses
  %i.pn = icmp ult i32 %i.pm, 10
  br i1 %i.pn, label %bb.ed, label %.thread1036

bb.ed:                                            ; preds = %bb.ec
  %i.po = zext nneg i32 %i.pm to i64
  %i.pp = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.pi, i64 %i.po) ; 2 uses
  %i.pq = extractvalue { i64, i1 } %i.pp, 1
  br i1 %i.pq, label %.thread1036, label %bb.ee, !prof !10

bb.ee:                                            ; preds = %bb.ed
  %i.pr = extractvalue { i64, i1 } %i.pp, 0       ; 2 uses
  %.not102.i274 = icmp eq i64 %i.pg, 0
  br i1 %.not102.i274, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit301, label %.lr.ph.i269

.lr.ph141.i279:                                   ; preds = %bb.eb, %bb.ef
  %.sroa.0.2140.i280 = phi ptr [ %i.py, %bb.ef ], [ %i.pc, %bb.eb ] ; 2 uses
  %.sroa.26.2139.i281 = phi i64 [ %i.px, %bb.ef ], [ %i.pd, %bb.eb ]
  %.sroa.084.2138.i282 = phi i64 [ %i.qa, %bb.ef ], [ 0, %bb.eb ]
  %i.ps = load i8, ptr %.sroa.0.2140.i280, align 1, !alias.scope !431, !noalias !432, !noundef !8
  %i.pt = zext i8 %i.ps to i32
  %i.pu = add nsw i32 %i.pt, -48                  ; 2 uses
  %i.pv = icmp ult i32 %i.pu, 10
  br i1 %i.pv, label %bb.ef, label %.thread1036

bb.ef:                                            ; preds = %.lr.ph141.i279
  %i.pw = mul i64 %.sroa.084.2138.i282, 10
  %i.px = add nsw i64 %.sroa.26.2139.i281, -1     ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i280, i64 1
  %i.pz = zext nneg i32 %i.pu to i64
  %i.qa = sub i64 %i.pw, %i.pz                    ; 2 uses
  %.not103.i283 = icmp eq i64 %i.px, 0
  br i1 %.not103.i283, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit301, label %.lr.ph141.i279

bb.eg:                                            ; preds = %bb.dz, %bb.ea, %thread-pre-split.i299
  %.sroa.26.0.i284 = phi i64 [ %i.pb, %bb.ea ], [ %i.ot, %thread-pre-split.i299 ], [ %i.ot, %bb.dz ] ; 3 uses
  %.sroa.0.0.i285 = phi ptr [ %i.pa, %bb.ea ], [ %i.ov, %thread-pre-split.i299 ], [ %i.ov, %bb.dz ] ; 2 uses
  %i.qb = icmp samesign ult i64 %.sroa.26.0.i284, 16
  br i1 %i.qb, label %.lr.ph150.i294, label %.preheader111.i286

.preheader111.i286:                               ; preds = %bb.eg, %bb.ej
  %.sroa.0.3145.i287 = phi ptr [ %i.qc, %bb.ej ], [ %.sroa.0.0.i285, %bb.eg ] ; 2 uses
  %.sroa.26.3144.i288 = phi i64 [ %i.qd, %bb.ej ], [ %.sroa.26.0.i284, %bb.eg ]
  %.sroa.084.3143.i289 = phi i64 [ %i.qo, %bb.ej ], [ 0, %bb.eg ]
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i287, i64 1
  %i.qd = add nsw i64 %.sroa.26.3144.i288, -1     ; 2 uses
  %i.qe = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i289, i64 10) ; 2 uses
  %i.qf = extractvalue { i64, i1 } %i.qe, 0
  %i.qg = extractvalue { i64, i1 } %i.qe, 1
  br i1 %i.qg, label %.thread1036, label %bb.eh, !prof !10

bb.eh:                                            ; preds = %.preheader111.i286
  %i.qh = load i8, ptr %.sroa.0.3145.i287, align 1, !alias.scope !431, !noalias !432, !noundef !8
  %i.qi = zext i8 %i.qh to i32
  %i.qj = add nsw i32 %i.qi, -48                  ; 2 uses
  %i.qk = icmp ult i32 %i.qj, 10
  br i1 %i.qk, label %bb.ei, label %.thread1036

bb.ei:                                            ; preds = %bb.eh
  %i.ql = zext nneg i32 %i.qj to i64
  %i.qm = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.qf, i64 %i.ql) ; 2 uses
  %i.qn = extractvalue { i64, i1 } %i.qm, 1
  br i1 %i.qn, label %.thread1036, label %bb.ej, !prof !10

bb.ej:                                            ; preds = %bb.ei
  %i.qo = extractvalue { i64, i1 } %i.qm, 0       ; 2 uses
  %.not104.i291 = icmp eq i64 %i.qd, 0
  br i1 %.not104.i291, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit301, label %.preheader111.i286

.lr.ph150.i294:                                   ; preds = %bb.eg, %bb.ek
  %.sroa.0.4149.i295 = phi ptr [ %i.qv, %bb.ek ], [ %.sroa.0.0.i285, %bb.eg ] ; 2 uses
  %.sroa.26.4148.i296 = phi i64 [ %i.qu, %bb.ek ], [ %.sroa.26.0.i284, %bb.eg ]
  %.sroa.084.4147.i297 = phi i64 [ %i.qx, %bb.ek ], [ 0, %bb.eg ]
  %i.qp = load i8, ptr %.sroa.0.4149.i295, align 1, !alias.scope !431, !noalias !432, !noundef !8
  %i.qq = zext i8 %i.qp to i32
  %i.qr = add nsw i32 %i.qq, -48                  ; 2 uses
  %i.qs = icmp ult i32 %i.qr, 10
  br i1 %i.qs, label %bb.ek, label %.thread1036

bb.ek:                                            ; preds = %.lr.ph150.i294
  %i.qt = mul i64 %.sroa.084.4147.i297, 10
  %i.qu = add nsw i64 %.sroa.26.4148.i296, -1     ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i295, i64 1
  %i.qw = zext nneg i32 %i.qr to i64
  %i.qx = add i64 %i.qt, %i.qw                    ; 2 uses
  %.not105.i298 = icmp eq i64 %i.qu, 0
  br i1 %.not105.i298, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit301, label %.lr.ph150.i294

.thread1036:                                      ; preds = %.lr.ph.i269, %bb.ed, %bb.ec, %.lr.ph141.i279, %.preheader111.i286, %bb.eh, %bb.ei, %.lr.ph150.i294, %bb.dz, %bb.dz, %bb.dt
  %.ph1044 = phi ptr [ inttoptr (i64 1 to ptr), %bb.dt ], [ %i.ov, %.preheader111.i286 ], [ %i.ov, %.lr.ph150.i294 ], [ %i.ov, %bb.dz ], [ %i.ov, %.lr.ph141.i279 ], [ %i.ov, %bb.dz ], [ %i.ov, %bb.ei ], [ %i.ov, %bb.eh ], [ %i.ov, %bb.ec ], [ %i.ov, %bb.ed ], [ %i.ov, %.lr.ph.i269 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1044, i64 noundef %i.ot) #31
  %i.qy = load i8, ptr %i.w, align 8, !range !11, !noundef !8
  %i.qz = trunc nuw i8 %i.qy to i1
  br i1 %i.qz, label %bb.eo, label %bb.ep

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit301: ; preds = %bb.ee, %bb.ef, %bb.ej, %bb.ek
  %.sroa.15826.0 = phi i64 [ %i.qo, %bb.ej ], [ %i.qa, %bb.ef ], [ %i.qx, %bb.ek ], [ %i.pr, %bb.ee ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 2, i64 noundef %.sroa.15826.0) #27
  br label %bb.el

bb.el:                                            ; preds = %bb.ep, %bb.eo, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit301
  %i.ra = phi ptr [ %.ph1044, %bb.eo ], [ %.ph1044, %bb.ep ], [ %i.ov, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit301 ]
  %.sroa.016.0.not = phi i1 [ true, %bb.eo ], [ false, %bb.ep ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit301 ]
  %i.rb = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8, !nonnull !8, !noundef !8
  %i.rd = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.re = load i64, ptr %i.rd, align 8, !noundef !8 ; 16 uses
  %.not.i302 = icmp slt i64 %i.re, 0
  br i1 %.not.i302, label %bb.eq, label %bb.em, !prof !17

bb.em:                                            ; preds = %bb.el
  %i.rf = icmp eq i64 %i.re, 0
  br i1 %i.rf, label %.thread1063, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !433
  %i.rg = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.re, i64 noundef range(i64 1, 9) 1) #27, !noalias !433 ; 18 uses
  %i.rh = icmp eq ptr %i.rg, null
  br i1 %i.rh, label %bb.eq, label %bb.er

bb.eo:                                            ; preds = %.thread1036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 %i.ot, ptr %i.v, align 8
  %.sroa.5821.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.ph1044, ptr %.sroa.5821.0..sroa_idx, align 8
  %.sroa.8822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.ot, ptr %.sroa.8822.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.v) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.el

bb.ep:                                            ; preds = %.thread1036
  %i.ri = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.rj = load double, ptr %i.ri, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 2, double noundef %i.rj) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.el

bb.eq:                                            ; preds = %bb.el, %bb.en
  %.sroa.4895.0.ph = phi i64 [ 1, %bb.en ], [ 0, %bb.el ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4895.0.ph, i64 %i.re) #32
  unreachable

bb.er:                                            ; preds = %bb.en
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rg, ptr nonnull align 1 %i.rc, i64 %i.re, i1 false)
  %cond1323 = icmp eq i64 %i.re, 1
  %i.rk = load i8, ptr %i.rg, align 1, !alias.scope !434, !noalias !435 ; 2 uses
  br i1 %cond1323, label %bb.es, label %thread-pre-split.i337

bb.es:                                            ; preds = %bb.er
  switch i8 %i.rk, label %bb.ez [
    i8 43, label %.thread1063
    i8 45, label %.thread1063
  ]

thread-pre-split.i337:                            ; preds = %bb.er
  switch i8 %i.rk, label %bb.ez [
    i8 43, label %bb.et
    i8 45, label %bb.eu
  ]

bb.et:                                            ; preds = %thread-pre-split.i337
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rg, i64 1
  %i.rm = add nsw i64 %i.re, -1
  br label %bb.ez

bb.eu:                                            ; preds = %thread-pre-split.i337
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rg, i64 1 ; 2 uses
  %i.ro = add nsw i64 %i.re, -1                   ; 2 uses
  %i.rp = icmp samesign ult i64 %i.re, 17
  br i1 %i.rp, label %.lr.ph141.i317, label %.lr.ph.i307

.lr.ph.i307:                                      ; preds = %bb.eu, %bb.ex
  %.sroa.0.1136.i308 = phi ptr [ %i.rq, %bb.ex ], [ %i.rn, %bb.eu ] ; 2 uses
  %.sroa.26.1135.i309 = phi i64 [ %i.rr, %bb.ex ], [ %i.ro, %bb.eu ]
  %.sroa.084.0134.i310 = phi i64 [ %i.sc, %bb.ex ], [ 0, %bb.eu ]
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i308, i64 1
  %i.rr = add nsw i64 %.sroa.26.1135.i309, -1     ; 2 uses
  %i.rs = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i310, i64 10) ; 2 uses
  %i.rt = extractvalue { i64, i1 } %i.rs, 0
  %i.ru = extractvalue { i64, i1 } %i.rs, 1
  br i1 %i.ru, label %.thread1063, label %bb.ev, !prof !10

bb.ev:                                            ; preds = %.lr.ph.i307
  %i.rv = load i8, ptr %.sroa.0.1136.i308, align 1, !alias.scope !434, !noalias !435, !noundef !8
  %i.rw = zext i8 %i.rv to i32
  %i.rx = add nsw i32 %i.rw, -48                  ; 2 uses
  %i.ry = icmp ult i32 %i.rx, 10
  br i1 %i.ry, label %bb.ew, label %.thread1063

bb.ew:                                            ; preds = %bb.ev
  %i.rz = zext nneg i32 %i.rx to i64
  %i.sa = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.rt, i64 %i.rz) ; 2 uses
  %i.sb = extractvalue { i64, i1 } %i.sa, 1
  br i1 %i.sb, label %.thread1063, label %bb.ex, !prof !10

bb.ex:                                            ; preds = %bb.ew
  %i.sc = extractvalue { i64, i1 } %i.sa, 0       ; 2 uses
  %.not102.i312 = icmp eq i64 %i.rr, 0
  br i1 %.not102.i312, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit339, label %.lr.ph.i307

.lr.ph141.i317:                                   ; preds = %bb.eu, %bb.ey
  %.sroa.0.2140.i318 = phi ptr [ %i.sj, %bb.ey ], [ %i.rn, %bb.eu ] ; 2 uses
  %.sroa.26.2139.i319 = phi i64 [ %i.si, %bb.ey ], [ %i.ro, %bb.eu ]
  %.sroa.084.2138.i320 = phi i64 [ %i.sl, %bb.ey ], [ 0, %bb.eu ]
  %i.sd = load i8, ptr %.sroa.0.2140.i318, align 1, !alias.scope !434, !noalias !435, !noundef !8
  %i.se = zext i8 %i.sd to i32
  %i.sf = add nsw i32 %i.se, -48                  ; 2 uses
  %i.sg = icmp ult i32 %i.sf, 10
  br i1 %i.sg, label %bb.ey, label %.thread1063

bb.ey:                                            ; preds = %.lr.ph141.i317
  %i.sh = mul i64 %.sroa.084.2138.i320, 10
  %i.si = add nsw i64 %.sroa.26.2139.i319, -1     ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i318, i64 1
  %i.sk = zext nneg i32 %i.sf to i64
  %i.sl = sub i64 %i.sh, %i.sk                    ; 2 uses
  %.not103.i321 = icmp eq i64 %i.si, 0
  br i1 %.not103.i321, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit339, label %.lr.ph141.i317

bb.ez:                                            ; preds = %bb.es, %bb.et, %thread-pre-split.i337
  %.sroa.26.0.i322 = phi i64 [ %i.rm, %bb.et ], [ %i.re, %thread-pre-split.i337 ], [ %i.re, %bb.es ] ; 3 uses
  %.sroa.0.0.i323 = phi ptr [ %i.rl, %bb.et ], [ %i.rg, %thread-pre-split.i337 ], [ %i.rg, %bb.es ] ; 2 uses
  %i.sm = icmp samesign ult i64 %.sroa.26.0.i322, 16
  br i1 %i.sm, label %.lr.ph150.i332, label %.preheader111.i324

.preheader111.i324:                               ; preds = %bb.ez, %bb.fc
  %.sroa.0.3145.i325 = phi ptr [ %i.sn, %bb.fc ], [ %.sroa.0.0.i323, %bb.ez ] ; 2 uses
  %.sroa.26.3144.i326 = phi i64 [ %i.so, %bb.fc ], [ %.sroa.26.0.i322, %bb.ez ]
  %.sroa.084.3143.i327 = phi i64 [ %i.sz, %bb.fc ], [ 0, %bb.ez ]
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i325, i64 1
  %i.so = add nsw i64 %.sroa.26.3144.i326, -1     ; 2 uses
  %i.sp = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i327, i64 10) ; 2 uses
  %i.sq = extractvalue { i64, i1 } %i.sp, 0
  %i.sr = extractvalue { i64, i1 } %i.sp, 1
  br i1 %i.sr, label %.thread1063, label %bb.fa, !prof !10

bb.fa:                                            ; preds = %.preheader111.i324
  %i.ss = load i8, ptr %.sroa.0.3145.i325, align 1, !alias.scope !434, !noalias !435, !noundef !8
  %i.st = zext i8 %i.ss to i32
  %i.su = add nsw i32 %i.st, -48                  ; 2 uses
  %i.sv = icmp ult i32 %i.su, 10
  br i1 %i.sv, label %bb.fb, label %.thread1063

bb.fb:                                            ; preds = %bb.fa
  %i.sw = zext nneg i32 %i.su to i64
  %i.sx = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.sq, i64 %i.sw) ; 2 uses
  %i.sy = extractvalue { i64, i1 } %i.sx, 1
  br i1 %i.sy, label %.thread1063, label %bb.fc, !prof !10

bb.fc:                                            ; preds = %bb.fb
  %i.sz = extractvalue { i64, i1 } %i.sx, 0       ; 2 uses
  %.not104.i329 = icmp eq i64 %i.so, 0
  br i1 %.not104.i329, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit339, label %.preheader111.i324

.lr.ph150.i332:                                   ; preds = %bb.ez, %bb.fd
  %.sroa.0.4149.i333 = phi ptr [ %i.tg, %bb.fd ], [ %.sroa.0.0.i323, %bb.ez ] ; 2 uses
  %.sroa.26.4148.i334 = phi i64 [ %i.tf, %bb.fd ], [ %.sroa.26.0.i322, %bb.ez ]
  %.sroa.084.4147.i335 = phi i64 [ %i.ti, %bb.fd ], [ 0, %bb.ez ]
  %i.ta = load i8, ptr %.sroa.0.4149.i333, align 1, !alias.scope !434, !noalias !435, !noundef !8
  %i.tb = zext i8 %i.ta to i32
  %i.tc = add nsw i32 %i.tb, -48                  ; 2 uses
  %i.td = icmp ult i32 %i.tc, 10
  br i1 %i.td, label %bb.fd, label %.thread1063

bb.fd:                                            ; preds = %.lr.ph150.i332
  %i.te = mul i64 %.sroa.084.4147.i335, 10
  %i.tf = add nsw i64 %.sroa.26.4148.i334, -1     ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i333, i64 1
  %i.th = zext nneg i32 %i.tc to i64
  %i.ti = add i64 %i.te, %i.th                    ; 2 uses
  %.not105.i336 = icmp eq i64 %i.tf, 0
  br i1 %.not105.i336, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit339, label %.lr.ph150.i332

.thread1063:                                      ; preds = %.lr.ph.i307, %bb.ew, %bb.ev, %.lr.ph141.i317, %.preheader111.i324, %bb.fa, %bb.fb, %.lr.ph150.i332, %bb.es, %bb.es, %bb.em
  %.ph1071 = phi ptr [ inttoptr (i64 1 to ptr), %bb.em ], [ %i.rg, %.preheader111.i324 ], [ %i.rg, %.lr.ph150.i332 ], [ %i.rg, %bb.es ], [ %i.rg, %.lr.ph141.i317 ], [ %i.rg, %bb.es ], [ %i.rg, %bb.fb ], [ %i.rg, %bb.fa ], [ %i.rg, %bb.ev ], [ %i.rg, %bb.ew ], [ %i.rg, %.lr.ph.i307 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1071, i64 noundef %i.re) #31
  %i.tj = load i8, ptr %i.u, align 8, !range !11, !noundef !8
  %i.tk = trunc nuw i8 %i.tj to i1
  br i1 %i.tk, label %bb.fh, label %bb.fi

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit339: ; preds = %bb.ex, %bb.ey, %bb.fc, %bb.fd
  %.sroa.15833.0 = phi i64 [ %i.sz, %bb.fc ], [ %i.sl, %bb.ey ], [ %i.ti, %bb.fd ], [ %i.sc, %bb.ex ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 3, i64 noundef %.sroa.15833.0) #27
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fi, %bb.fh, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit339
  %i.tl = phi ptr [ %.ph1071, %bb.fh ], [ %.ph1071, %bb.fi ], [ %i.rg, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit339 ]
  %.sroa.015.0.not = phi i1 [ true, %bb.fh ], [ false, %bb.fi ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit339 ]
  %.not.i340 = icmp slt i64 %i.ek, 0
  br i1 %.not.i340, label %bb.fj, label %bb.ff, !prof !17

bb.ff:                                            ; preds = %bb.fe
  %i.tm = icmp eq i64 %i.ek, 0
  br i1 %i.tm, label %.thread1090, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !436
  %i.tn = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ek, i64 noundef range(i64 1, 9) 1) #27, !noalias !436 ; 18 uses
  %i.to = icmp eq ptr %i.tn, null
  br i1 %i.to, label %bb.fj, label %bb.fk

bb.fh:                                            ; preds = %.thread1063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 %i.re, ptr %i.t, align 8
  %.sroa.5828.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.ph1071, ptr %.sroa.5828.0..sroa_idx, align 8
  %.sroa.8829.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.re, ptr %.sroa.8829.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.t) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.fe

bb.fi:                                            ; preds = %.thread1063
  %i.tp = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.tq = load double, ptr %i.tp, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 3, double noundef %i.tq) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.fe

bb.fj:                                            ; preds = %bb.fe, %bb.fg
  %.sroa.4899.0.ph = phi i64 [ 1, %bb.fg ], [ 0, %bb.fe ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4899.0.ph, i64 %i.ek) #32
  unreachable

bb.fk:                                            ; preds = %bb.fg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.tn, ptr nonnull align 1 %i.ei, i64 %i.ek, i1 false)
  %cond1322 = icmp eq i64 %i.ek, 1
  %i.tr = load i8, ptr %i.tn, align 1, !alias.scope !437, !noalias !438 ; 2 uses
  br i1 %cond1322, label %bb.fl, label %thread-pre-split.i375

bb.fl:                                            ; preds = %bb.fk
  switch i8 %i.tr, label %bb.fs [
    i8 43, label %.thread1090
    i8 45, label %.thread1090
  ]

thread-pre-split.i375:                            ; preds = %bb.fk
  switch i8 %i.tr, label %bb.fs [
    i8 43, label %bb.fm
    i8 45, label %bb.fn
  ]

bb.fm:                                            ; preds = %thread-pre-split.i375
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tn, i64 1
  %i.tt = add nsw i64 %i.ek, -1
  br label %bb.fs

bb.fn:                                            ; preds = %thread-pre-split.i375
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tn, i64 1 ; 2 uses
  %i.tv = add nsw i64 %i.ek, -1                   ; 2 uses
  %i.tw = icmp samesign ult i64 %i.ek, 17
  br i1 %i.tw, label %.lr.ph141.i355, label %.lr.ph.i345

.lr.ph.i345:                                      ; preds = %bb.fn, %bb.fq
  %.sroa.0.1136.i346 = phi ptr [ %i.tx, %bb.fq ], [ %i.tu, %bb.fn ] ; 2 uses
  %.sroa.26.1135.i347 = phi i64 [ %i.ty, %bb.fq ], [ %i.tv, %bb.fn ]
  %.sroa.084.0134.i348 = phi i64 [ %i.uj, %bb.fq ], [ 0, %bb.fn ]
  %i.tx = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i346, i64 1
  %i.ty = add nsw i64 %.sroa.26.1135.i347, -1     ; 2 uses
  %i.tz = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i348, i64 10) ; 2 uses
  %i.ua = extractvalue { i64, i1 } %i.tz, 0
  %i.ub = extractvalue { i64, i1 } %i.tz, 1
  br i1 %i.ub, label %.thread1090, label %bb.fo, !prof !10

bb.fo:                                            ; preds = %.lr.ph.i345
  %i.uc = load i8, ptr %.sroa.0.1136.i346, align 1, !alias.scope !437, !noalias !438, !noundef !8
  %i.ud = zext i8 %i.uc to i32
  %i.ue = add nsw i32 %i.ud, -48                  ; 2 uses
  %i.uf = icmp ult i32 %i.ue, 10
  br i1 %i.uf, label %bb.fp, label %.thread1090

bb.fp:                                            ; preds = %bb.fo
  %i.ug = zext nneg i32 %i.ue to i64
  %i.uh = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ua, i64 %i.ug) ; 2 uses
  %i.ui = extractvalue { i64, i1 } %i.uh, 1
  br i1 %i.ui, label %.thread1090, label %bb.fq, !prof !10

bb.fq:                                            ; preds = %bb.fp
  %i.uj = extractvalue { i64, i1 } %i.uh, 0       ; 2 uses
  %.not102.i350 = icmp eq i64 %i.ty, 0
  br i1 %.not102.i350, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit377, label %.lr.ph.i345

.lr.ph141.i355:                                   ; preds = %bb.fn, %bb.fr
  %.sroa.0.2140.i356 = phi ptr [ %i.uq, %bb.fr ], [ %i.tu, %bb.fn ] ; 2 uses
  %.sroa.26.2139.i357 = phi i64 [ %i.up, %bb.fr ], [ %i.tv, %bb.fn ]
  %.sroa.084.2138.i358 = phi i64 [ %i.us, %bb.fr ], [ 0, %bb.fn ]
  %i.uk = load i8, ptr %.sroa.0.2140.i356, align 1, !alias.scope !437, !noalias !438, !noundef !8
  %i.ul = zext i8 %i.uk to i32
  %i.um = add nsw i32 %i.ul, -48                  ; 2 uses
  %i.un = icmp ult i32 %i.um, 10
  br i1 %i.un, label %bb.fr, label %.thread1090

bb.fr:                                            ; preds = %.lr.ph141.i355
  %i.uo = mul i64 %.sroa.084.2138.i358, 10
  %i.up = add nsw i64 %.sroa.26.2139.i357, -1     ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i356, i64 1
  %i.ur = zext nneg i32 %i.um to i64
  %i.us = sub i64 %i.uo, %i.ur                    ; 2 uses
  %.not103.i359 = icmp eq i64 %i.up, 0
  br i1 %.not103.i359, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit377, label %.lr.ph141.i355

bb.fs:                                            ; preds = %bb.fl, %bb.fm, %thread-pre-split.i375
  %.sroa.26.0.i360 = phi i64 [ %i.tt, %bb.fm ], [ %i.ek, %thread-pre-split.i375 ], [ %i.ek, %bb.fl ] ; 4 uses
  %.sroa.0.0.i361 = phi ptr [ %i.ts, %bb.fm ], [ %i.tn, %thread-pre-split.i375 ], [ %i.tn, %bb.fl ] ; 2 uses
  %i.ut = icmp samesign ult i64 %.sroa.26.0.i360, 16
  br i1 %i.ut, label %.preheader.i368, label %.preheader111.i362

.preheader.i368:                                  ; preds = %bb.fs
  %.not105146.i369 = icmp eq i64 %.sroa.26.0.i360, 0
  br i1 %.not105146.i369, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit377, label %.lr.ph150.i370

.preheader111.i362:                               ; preds = %bb.fs, %bb.fv
  %.sroa.0.3145.i363 = phi ptr [ %i.uu, %bb.fv ], [ %.sroa.0.0.i361, %bb.fs ] ; 2 uses
  %.sroa.26.3144.i364 = phi i64 [ %i.uv, %bb.fv ], [ %.sroa.26.0.i360, %bb.fs ]
  %.sroa.084.3143.i365 = phi i64 [ %i.vg, %bb.fv ], [ 0, %bb.fs ]
  %i.uu = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i363, i64 1
  %i.uv = add nsw i64 %.sroa.26.3144.i364, -1     ; 2 uses
  %i.uw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i365, i64 10) ; 2 uses
  %i.ux = extractvalue { i64, i1 } %i.uw, 0
  %i.uy = extractvalue { i64, i1 } %i.uw, 1
  br i1 %i.uy, label %.thread1090, label %bb.ft, !prof !10

bb.ft:                                            ; preds = %.preheader111.i362
  %i.uz = load i8, ptr %.sroa.0.3145.i363, align 1, !alias.scope !437, !noalias !438, !noundef !8
  %i.va = zext i8 %i.uz to i32
  %i.vb = add nsw i32 %i.va, -48                  ; 2 uses
  %i.vc = icmp ult i32 %i.vb, 10
  br i1 %i.vc, label %bb.fu, label %.thread1090

bb.fu:                                            ; preds = %bb.ft
  %i.vd = zext nneg i32 %i.vb to i64
  %i.ve = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ux, i64 %i.vd) ; 2 uses
  %i.vf = extractvalue { i64, i1 } %i.ve, 1
  br i1 %i.vf, label %.thread1090, label %bb.fv, !prof !10

bb.fv:                                            ; preds = %bb.fu
  %i.vg = extractvalue { i64, i1 } %i.ve, 0       ; 2 uses
  %.not104.i367 = icmp eq i64 %i.uv, 0
  br i1 %.not104.i367, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit377, label %.preheader111.i362

.lr.ph150.i370:                                   ; preds = %.preheader.i368, %bb.fw
  %.sroa.0.4149.i371 = phi ptr [ %i.vn, %bb.fw ], [ %.sroa.0.0.i361, %.preheader.i368 ] ; 2 uses
  %.sroa.26.4148.i372 = phi i64 [ %i.vm, %bb.fw ], [ %.sroa.26.0.i360, %.preheader.i368 ]
  %.sroa.084.4147.i373 = phi i64 [ %i.vp, %bb.fw ], [ 0, %.preheader.i368 ]
  %i.vh = load i8, ptr %.sroa.0.4149.i371, align 1, !alias.scope !437, !noalias !438, !noundef !8
  %i.vi = zext i8 %i.vh to i32
  %i.vj = add nsw i32 %i.vi, -48                  ; 2 uses
  %i.vk = icmp ult i32 %i.vj, 10
  br i1 %i.vk, label %bb.fw, label %.thread1090

bb.fw:                                            ; preds = %.lr.ph150.i370
  %i.vl = mul i64 %.sroa.084.4147.i373, 10
  %i.vm = add nsw i64 %.sroa.26.4148.i372, -1     ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i371, i64 1
  %i.vo = zext nneg i32 %i.vj to i64
  %i.vp = add i64 %i.vl, %i.vo                    ; 2 uses
  %.not105.i374 = icmp eq i64 %i.vm, 0
  br i1 %.not105.i374, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit377, label %.lr.ph150.i370

.thread1090:                                      ; preds = %.lr.ph.i345, %bb.fp, %bb.fo, %.lr.ph141.i355, %.preheader111.i362, %bb.ft, %bb.fu, %.lr.ph150.i370, %bb.fl, %bb.fl, %bb.ff
  %.ph1098 = phi ptr [ inttoptr (i64 1 to ptr), %bb.ff ], [ %i.tn, %.preheader111.i362 ], [ %i.tn, %.lr.ph150.i370 ], [ %i.tn, %bb.fl ], [ %i.tn, %.lr.ph141.i355 ], [ %i.tn, %bb.fl ], [ %i.tn, %bb.fu ], [ %i.tn, %bb.ft ], [ %i.tn, %bb.fo ], [ %i.tn, %bb.fp ], [ %i.tn, %.lr.ph.i345 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1098, i64 noundef %i.ek) #31
  %i.vq = load i8, ptr %i.s, align 8, !range !11, !noundef !8
  %i.vr = trunc nuw i8 %i.vq to i1
  br i1 %i.vr, label %bb.ga, label %bb.gb

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit377: ; preds = %bb.fq, %bb.fr, %bb.fv, %bb.fw, %.preheader.i368
  %.sroa.15840.0 = phi i64 [ %i.vg, %bb.fv ], [ %i.us, %bb.fr ], [ %i.vp, %bb.fw ], [ 0, %.preheader.i368 ], [ %i.uj, %bb.fq ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 8, i64 noundef %.sroa.15840.0) #27
  br label %bb.fx

bb.fx:                                            ; preds = %bb.gb, %bb.ga, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit377
  %i.vs = phi ptr [ %.ph1098, %bb.ga ], [ %.ph1098, %bb.gb ], [ %i.tn, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit377 ]
  %.sroa.014.0.not = phi i1 [ true, %bb.ga ], [ false, %bb.gb ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit377 ]
  %i.vt = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.vu = load ptr, ptr %i.vt, align 8, !nonnull !8, !noundef !8
  %i.vv = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.vw = load i64, ptr %i.vv, align 8, !noundef !8 ; 16 uses
  %.not.i378 = icmp slt i64 %i.vw, 0
  br i1 %.not.i378, label %bb.gc, label %bb.fy, !prof !17

bb.fy:                                            ; preds = %bb.fx
  %i.vx = icmp eq i64 %i.vw, 0
  br i1 %i.vx, label %.thread1117, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !439
  %i.vy = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.vw, i64 noundef range(i64 1, 9) 1) #27, !noalias !439 ; 18 uses
  %i.vz = icmp eq ptr %i.vy, null
  br i1 %i.vz, label %bb.gc, label %bb.gd

bb.ga:                                            ; preds = %.thread1090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 %i.ek, ptr %i.r, align 8
  %.sroa.5835.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.ph1098, ptr %.sroa.5835.0..sroa_idx, align 8
  %.sroa.8836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.ek, ptr %.sroa.8836.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.fx

bb.gb:                                            ; preds = %.thread1090
  %i.wa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.wb = load double, ptr %i.wa, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 8, double noundef %i.wb) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.fx

bb.gc:                                            ; preds = %bb.fx, %bb.fz
  %.sroa.4903.0.ph = phi i64 [ 1, %bb.fz ], [ 0, %bb.fx ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4903.0.ph, i64 %i.vw) #32
  unreachable

bb.gd:                                            ; preds = %bb.fz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vy, ptr nonnull align 1 %i.vu, i64 %i.vw, i1 false)
  %cond1321 = icmp eq i64 %i.vw, 1
  %i.wc = load i8, ptr %i.vy, align 1, !alias.scope !440, !noalias !441 ; 2 uses
  br i1 %cond1321, label %bb.ge, label %thread-pre-split.i413

bb.ge:                                            ; preds = %bb.gd
  switch i8 %i.wc, label %bb.gl [
    i8 43, label %.thread1117
    i8 45, label %.thread1117
  ]

thread-pre-split.i413:                            ; preds = %bb.gd
  switch i8 %i.wc, label %bb.gl [
    i8 43, label %bb.gf
    i8 45, label %bb.gg
  ]

bb.gf:                                            ; preds = %thread-pre-split.i413
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vy, i64 1
  %i.we = add nsw i64 %i.vw, -1
  br label %bb.gl

bb.gg:                                            ; preds = %thread-pre-split.i413
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vy, i64 1 ; 2 uses
  %i.wg = add nsw i64 %i.vw, -1                   ; 2 uses
  %i.wh = icmp samesign ult i64 %i.vw, 17
  br i1 %i.wh, label %.lr.ph141.i393, label %.lr.ph.i383

.lr.ph.i383:                                      ; preds = %bb.gg, %bb.gj
  %.sroa.0.1136.i384 = phi ptr [ %i.wi, %bb.gj ], [ %i.wf, %bb.gg ] ; 2 uses
  %.sroa.26.1135.i385 = phi i64 [ %i.wj, %bb.gj ], [ %i.wg, %bb.gg ]
  %.sroa.084.0134.i386 = phi i64 [ %i.wu, %bb.gj ], [ 0, %bb.gg ]
  %i.wi = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i384, i64 1
  %i.wj = add nsw i64 %.sroa.26.1135.i385, -1     ; 2 uses
  %i.wk = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i386, i64 10) ; 2 uses
  %i.wl = extractvalue { i64, i1 } %i.wk, 0
  %i.wm = extractvalue { i64, i1 } %i.wk, 1
  br i1 %i.wm, label %.thread1117, label %bb.gh, !prof !10

bb.gh:                                            ; preds = %.lr.ph.i383
  %i.wn = load i8, ptr %.sroa.0.1136.i384, align 1, !alias.scope !440, !noalias !441, !noundef !8
  %i.wo = zext i8 %i.wn to i32
  %i.wp = add nsw i32 %i.wo, -48                  ; 2 uses
  %i.wq = icmp ult i32 %i.wp, 10
  br i1 %i.wq, label %bb.gi, label %.thread1117

bb.gi:                                            ; preds = %bb.gh
  %i.wr = zext nneg i32 %i.wp to i64
  %i.ws = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.wl, i64 %i.wr) ; 2 uses
  %i.wt = extractvalue { i64, i1 } %i.ws, 1
  br i1 %i.wt, label %.thread1117, label %bb.gj, !prof !10

bb.gj:                                            ; preds = %bb.gi
  %i.wu = extractvalue { i64, i1 } %i.ws, 0       ; 2 uses
  %.not102.i388 = icmp eq i64 %i.wj, 0
  br i1 %.not102.i388, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit415, label %.lr.ph.i383

.lr.ph141.i393:                                   ; preds = %bb.gg, %bb.gk
  %.sroa.0.2140.i394 = phi ptr [ %i.xb, %bb.gk ], [ %i.wf, %bb.gg ] ; 2 uses
  %.sroa.26.2139.i395 = phi i64 [ %i.xa, %bb.gk ], [ %i.wg, %bb.gg ]
  %.sroa.084.2138.i396 = phi i64 [ %i.xd, %bb.gk ], [ 0, %bb.gg ]
  %i.wv = load i8, ptr %.sroa.0.2140.i394, align 1, !alias.scope !440, !noalias !441, !noundef !8
  %i.ww = zext i8 %i.wv to i32
  %i.wx = add nsw i32 %i.ww, -48                  ; 2 uses
  %i.wy = icmp ult i32 %i.wx, 10
  br i1 %i.wy, label %bb.gk, label %.thread1117

bb.gk:                                            ; preds = %.lr.ph141.i393
  %i.wz = mul i64 %.sroa.084.2138.i396, 10
  %i.xa = add nsw i64 %.sroa.26.2139.i395, -1     ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i394, i64 1
  %i.xc = zext nneg i32 %i.wx to i64
  %i.xd = sub i64 %i.wz, %i.xc                    ; 2 uses
  %.not103.i397 = icmp eq i64 %i.xa, 0
  br i1 %.not103.i397, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit415, label %.lr.ph141.i393

bb.gl:                                            ; preds = %bb.ge, %bb.gf, %thread-pre-split.i413
  %.sroa.26.0.i398 = phi i64 [ %i.we, %bb.gf ], [ %i.vw, %thread-pre-split.i413 ], [ %i.vw, %bb.ge ] ; 3 uses
  %.sroa.0.0.i399 = phi ptr [ %i.wd, %bb.gf ], [ %i.vy, %thread-pre-split.i413 ], [ %i.vy, %bb.ge ] ; 2 uses
  %i.xe = icmp samesign ult i64 %.sroa.26.0.i398, 16
  br i1 %i.xe, label %.lr.ph150.i408, label %.preheader111.i400

.preheader111.i400:                               ; preds = %bb.gl, %bb.go
  %.sroa.0.3145.i401 = phi ptr [ %i.xf, %bb.go ], [ %.sroa.0.0.i399, %bb.gl ] ; 2 uses
  %.sroa.26.3144.i402 = phi i64 [ %i.xg, %bb.go ], [ %.sroa.26.0.i398, %bb.gl ]
  %.sroa.084.3143.i403 = phi i64 [ %i.xr, %bb.go ], [ 0, %bb.gl ]
  %i.xf = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i401, i64 1
  %i.xg = add nsw i64 %.sroa.26.3144.i402, -1     ; 2 uses
  %i.xh = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i403, i64 10) ; 2 uses
  %i.xi = extractvalue { i64, i1 } %i.xh, 0
  %i.xj = extractvalue { i64, i1 } %i.xh, 1
  br i1 %i.xj, label %.thread1117, label %bb.gm, !prof !10

bb.gm:                                            ; preds = %.preheader111.i400
  %i.xk = load i8, ptr %.sroa.0.3145.i401, align 1, !alias.scope !440, !noalias !441, !noundef !8
  %i.xl = zext i8 %i.xk to i32
  %i.xm = add nsw i32 %i.xl, -48                  ; 2 uses
  %i.xn = icmp ult i32 %i.xm, 10
  br i1 %i.xn, label %bb.gn, label %.thread1117

bb.gn:                                            ; preds = %bb.gm
  %i.xo = zext nneg i32 %i.xm to i64
  %i.xp = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.xi, i64 %i.xo) ; 2 uses
  %i.xq = extractvalue { i64, i1 } %i.xp, 1
  br i1 %i.xq, label %.thread1117, label %bb.go, !prof !10

bb.go:                                            ; preds = %bb.gn
  %i.xr = extractvalue { i64, i1 } %i.xp, 0       ; 2 uses
  %.not104.i405 = icmp eq i64 %i.xg, 0
  br i1 %.not104.i405, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit415, label %.preheader111.i400

.lr.ph150.i408:                                   ; preds = %bb.gl, %bb.gp
  %.sroa.0.4149.i409 = phi ptr [ %i.xy, %bb.gp ], [ %.sroa.0.0.i399, %bb.gl ] ; 2 uses
  %.sroa.26.4148.i410 = phi i64 [ %i.xx, %bb.gp ], [ %.sroa.26.0.i398, %bb.gl ]
  %.sroa.084.4147.i411 = phi i64 [ %i.ya, %bb.gp ], [ 0, %bb.gl ]
  %i.xs = load i8, ptr %.sroa.0.4149.i409, align 1, !alias.scope !440, !noalias !441, !noundef !8
  %i.xt = zext i8 %i.xs to i32
  %i.xu = add nsw i32 %i.xt, -48                  ; 2 uses
  %i.xv = icmp ult i32 %i.xu, 10
  br i1 %i.xv, label %bb.gp, label %.thread1117

bb.gp:                                            ; preds = %.lr.ph150.i408
  %i.xw = mul i64 %.sroa.084.4147.i411, 10
  %i.xx = add nsw i64 %.sroa.26.4148.i410, -1     ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i409, i64 1
  %i.xz = zext nneg i32 %i.xu to i64
  %i.ya = add i64 %i.xw, %i.xz                    ; 2 uses
  %.not105.i412 = icmp eq i64 %i.xx, 0
  br i1 %.not105.i412, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit415, label %.lr.ph150.i408

.thread1117:                                      ; preds = %.lr.ph.i383, %bb.gi, %bb.gh, %.lr.ph141.i393, %.preheader111.i400, %bb.gm, %bb.gn, %.lr.ph150.i408, %bb.ge, %bb.ge, %bb.fy
  %.ph1125 = phi ptr [ inttoptr (i64 1 to ptr), %bb.fy ], [ %i.vy, %.preheader111.i400 ], [ %i.vy, %.lr.ph150.i408 ], [ %i.vy, %bb.ge ], [ %i.vy, %.lr.ph141.i393 ], [ %i.vy, %bb.ge ], [ %i.vy, %bb.gn ], [ %i.vy, %bb.gm ], [ %i.vy, %bb.gh ], [ %i.vy, %bb.gi ], [ %i.vy, %.lr.ph.i383 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1125, i64 noundef %i.vw) #31
  %i.yb = load i8, ptr %i.q, align 8, !range !11, !noundef !8
  %i.yc = trunc nuw i8 %i.yb to i1
  br i1 %i.yc, label %bb.gs, label %bb.gt

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit415: ; preds = %bb.gj, %bb.gk, %bb.go, %bb.gp
  %.sroa.15847.0 = phi i64 [ %i.xr, %bb.go ], [ %i.xd, %bb.gk ], [ %i.ya, %bb.gp ], [ %i.wu, %bb.gj ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, i64 noundef %.sroa.15847.0) #27
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gt, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit415
  %i.yd = phi ptr [ %.ph1125, %bb.gt ], [ %i.vy, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit415 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 31, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ye = icmp eq i64 %i.vw, 0
  br i1 %i.ye, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit418, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.yd, i64 noundef %i.vw, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !442
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit418

bb.gs:                                            ; preds = %.thread1117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %i.vw, ptr %i.p, align 8
  %.sroa.5842.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.ph1125, ptr %.sroa.5842.0..sroa_idx, align 8
  %.sroa.8843.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.vw, ptr %.sroa.8843.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 31, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit418

bb.gt:                                            ; preds = %.thread1117
  %i.yf = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.yg = load double, ptr %i.yf, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, double noundef %i.yg) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.gq

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit418: ; preds = %bb.gr, %bb.gq, %bb.gs
  %i.yh = icmp eq i64 %i.ek, 0
  %or.cond1327 = or i1 %.sroa.014.0.not, %i.yh
  br i1 %or.cond1327, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit421, label %bb.gu

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit421: ; preds = %bb.gu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit418
  %i.yi = icmp eq i64 %i.re, 0
  %or.cond1328 = or i1 %.sroa.015.0.not, %i.yi
  br i1 %or.cond1328, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit424, label %bb.gv

bb.gu:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit418
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vs, i64 noundef %i.ek, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !443
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit421

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit424: ; preds = %bb.gv, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit421
  %i.yj = icmp eq i64 %i.ot, 0
  %or.cond1329 = or i1 %.sroa.016.0.not, %i.yj
  br i1 %or.cond1329, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit427, label %bb.gw

bb.gv:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit421
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tl, i64 noundef %i.re, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !444
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit424

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit427: ; preds = %bb.gw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit424
  %i.yk = icmp eq i64 %i.md, 0
  %or.cond1330 = or i1 %.sroa.017.0.not, %i.yk
  br i1 %or.cond1330, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit430, label %bb.gx

bb.gw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit424
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ra, i64 noundef %i.ot, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !445
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit427

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit430: ; preds = %bb.gx, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.cs

bb.gx:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit427
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.op, i64 noundef %i.md, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !446
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit430

bb.gy:                                            ; preds = %bb.db, %bb.dd
  %.sroa.4871.0.ph = phi i64 [ 1, %bb.dd ], [ 0, %bb.db ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4871.0.ph, i64 %i.mk) #32
  unreachable

bb.gz:                                            ; preds = %bb.dd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mm, ptr align 1 %i.mj, i64 %i.mk, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %cond1320 = icmp eq i64 %i.mk, 1
  %i.yl = load i8, ptr %i.mm, align 1, !alias.scope !447, !noalias !448 ; 2 uses
  br i1 %cond1320, label %bb.ha, label %thread-pre-split.i462

bb.ha:                                            ; preds = %bb.gz
  switch i8 %i.yl, label %bb.hh [
    i8 43, label %.loopexit1391
    i8 45, label %.loopexit1391
  ]

thread-pre-split.i462:                            ; preds = %bb.gz
  switch i8 %i.yl, label %bb.hh [
    i8 43, label %bb.hb
    i8 45, label %bb.hc
  ]

bb.hb:                                            ; preds = %thread-pre-split.i462
  %i.ym = getelementptr inbounds nuw i8, ptr %i.mm, i64 1
  %i.yn = add nsw i64 %i.mk, -1
  br label %bb.hh

bb.hc:                                            ; preds = %thread-pre-split.i462
  %i.yo = getelementptr inbounds nuw i8, ptr %i.mm, i64 1 ; 2 uses
  %i.yp = add nsw i64 %i.mk, -1                   ; 2 uses
  %i.yq = icmp samesign ult i64 %i.mk, 17
  br i1 %i.yq, label %.lr.ph141.i442, label %.lr.ph.i432

.lr.ph.i432:                                      ; preds = %bb.hc, %bb.hf
  %.sroa.0.1136.i433 = phi ptr [ %i.yr, %bb.hf ], [ %i.yo, %bb.hc ] ; 2 uses
  %.sroa.26.1135.i434 = phi i64 [ %i.ys, %bb.hf ], [ %i.yp, %bb.hc ]
  %.sroa.084.0134.i435 = phi i64 [ %i.zd, %bb.hf ], [ 0, %bb.hc ]
  %i.yr = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i433, i64 1
  %i.ys = add nsw i64 %.sroa.26.1135.i434, -1     ; 2 uses
  %i.yt = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i435, i64 10) ; 2 uses
  %i.yu = extractvalue { i64, i1 } %i.yt, 0
  %i.yv = extractvalue { i64, i1 } %i.yt, 1
  br i1 %i.yv, label %.loopexit1391, label %bb.hd, !prof !10

bb.hd:                                            ; preds = %.lr.ph.i432
  %i.yw = load i8, ptr %.sroa.0.1136.i433, align 1, !alias.scope !447, !noalias !448, !noundef !8
  %i.yx = zext i8 %i.yw to i32
  %i.yy = add nsw i32 %i.yx, -48                  ; 2 uses
  %i.yz = icmp ult i32 %i.yy, 10
  br i1 %i.yz, label %bb.he, label %.loopexit1391

bb.he:                                            ; preds = %bb.hd
  %i.za = zext nneg i32 %i.yy to i64
  %i.zb = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.yu, i64 %i.za) ; 2 uses
  %i.zc = extractvalue { i64, i1 } %i.zb, 1
  br i1 %i.zc, label %.loopexit1391, label %bb.hf, !prof !10

bb.hf:                                            ; preds = %bb.he
  %i.zd = extractvalue { i64, i1 } %i.zb, 0       ; 2 uses
  %.not102.i437 = icmp eq i64 %i.ys, 0
  br i1 %.not102.i437, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit464, label %.lr.ph.i432

.lr.ph141.i442:                                   ; preds = %bb.hc, %bb.hg
  %.sroa.0.2140.i443 = phi ptr [ %i.zk, %bb.hg ], [ %i.yo, %bb.hc ] ; 2 uses
  %.sroa.26.2139.i444 = phi i64 [ %i.zj, %bb.hg ], [ %i.yp, %bb.hc ]
  %.sroa.084.2138.i445 = phi i64 [ %i.zm, %bb.hg ], [ 0, %bb.hc ]
  %i.ze = load i8, ptr %.sroa.0.2140.i443, align 1, !alias.scope !447, !noalias !448, !noundef !8
  %i.zf = zext i8 %i.ze to i32
  %i.zg = add nsw i32 %i.zf, -48                  ; 2 uses
  %i.zh = icmp ult i32 %i.zg, 10
  br i1 %i.zh, label %bb.hg, label %.loopexit1391

bb.hg:                                            ; preds = %.lr.ph141.i442
  %i.zi = mul i64 %.sroa.084.2138.i445, 10
  %i.zj = add nsw i64 %.sroa.26.2139.i444, -1     ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i443, i64 1
  %i.zl = zext nneg i32 %i.zg to i64
  %i.zm = sub i64 %i.zi, %i.zl                    ; 2 uses
  %.not103.i446 = icmp eq i64 %i.zj, 0
  br i1 %.not103.i446, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit464, label %.lr.ph141.i442

bb.hh:                                            ; preds = %bb.ha, %bb.hb, %thread-pre-split.i462
  %.sroa.26.0.i447 = phi i64 [ %i.yn, %bb.hb ], [ %i.mk, %thread-pre-split.i462 ], [ %i.mk, %bb.ha ] ; 3 uses
  %.sroa.0.0.i448 = phi ptr [ %i.ym, %bb.hb ], [ %i.mm, %thread-pre-split.i462 ], [ %i.mm, %bb.ha ] ; 2 uses
  %i.zn = icmp samesign ult i64 %.sroa.26.0.i447, 16
  br i1 %i.zn, label %.lr.ph150.i457, label %.preheader111.i449

.preheader111.i449:                               ; preds = %bb.hh, %bb.hk
  %.sroa.0.3145.i450 = phi ptr [ %i.zo, %bb.hk ], [ %.sroa.0.0.i448, %bb.hh ] ; 2 uses
  %.sroa.26.3144.i451 = phi i64 [ %i.zp, %bb.hk ], [ %.sroa.26.0.i447, %bb.hh ]
  %.sroa.084.3143.i452 = phi i64 [ %i.aaa, %bb.hk ], [ 0, %bb.hh ]
  %i.zo = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i450, i64 1
  %i.zp = add nsw i64 %.sroa.26.3144.i451, -1     ; 2 uses
  %i.zq = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i452, i64 10) ; 2 uses
  %i.zr = extractvalue { i64, i1 } %i.zq, 0
  %i.zs = extractvalue { i64, i1 } %i.zq, 1
  br i1 %i.zs, label %.loopexit1391, label %bb.hi, !prof !10

bb.hi:                                            ; preds = %.preheader111.i449
  %i.zt = load i8, ptr %.sroa.0.3145.i450, align 1, !alias.scope !447, !noalias !448, !noundef !8
  %i.zu = zext i8 %i.zt to i32
  %i.zv = add nsw i32 %i.zu, -48                  ; 2 uses
  %i.zw = icmp ult i32 %i.zv, 10
  br i1 %i.zw, label %bb.hj, label %.loopexit1391

bb.hj:                                            ; preds = %bb.hi
  %i.zx = zext nneg i32 %i.zv to i64
  %i.zy = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.zr, i64 %i.zx) ; 2 uses
  %i.zz = extractvalue { i64, i1 } %i.zy, 1
  br i1 %i.zz, label %.loopexit1391, label %bb.hk, !prof !10

bb.hk:                                            ; preds = %bb.hj
  %i.aaa = extractvalue { i64, i1 } %i.zy, 0      ; 2 uses
  %.not104.i454 = icmp eq i64 %i.zp, 0
  br i1 %.not104.i454, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit464, label %.preheader111.i449

.lr.ph150.i457:                                   ; preds = %bb.hh, %bb.hl
  %.sroa.0.4149.i458 = phi ptr [ %i.aah, %bb.hl ], [ %.sroa.0.0.i448, %bb.hh ] ; 2 uses
  %.sroa.26.4148.i459 = phi i64 [ %i.aag, %bb.hl ], [ %.sroa.26.0.i447, %bb.hh ]
  %.sroa.084.4147.i460 = phi i64 [ %i.aaj, %bb.hl ], [ 0, %bb.hh ]
  %i.aab = load i8, ptr %.sroa.0.4149.i458, align 1, !alias.scope !447, !noalias !448, !noundef !8
  %i.aac = zext i8 %i.aab to i32
  %i.aad = add nsw i32 %i.aac, -48                ; 2 uses
  %i.aae = icmp ult i32 %i.aad, 10
  br i1 %i.aae, label %bb.hl, label %.loopexit1391

bb.hl:                                            ; preds = %.lr.ph150.i457
  %i.aaf = mul i64 %.sroa.084.4147.i460, 10
  %i.aag = add nsw i64 %.sroa.26.4148.i459, -1    ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i458, i64 1
  %i.aai = zext nneg i32 %i.aad to i64
  %i.aaj = add i64 %i.aaf, %i.aai                 ; 2 uses
  %.not105.i461 = icmp eq i64 %i.aag, 0
  br i1 %.not105.i461, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit464, label %.lr.ph150.i457

.loopexit1391:                                    ; preds = %.lr.ph.i432, %bb.he, %bb.hd, %.lr.ph141.i442, %.preheader111.i449, %bb.hi, %bb.hj, %.lr.ph150.i457, %bb.ha, %bb.ha, %.thread1139
  %.ph1147 = phi ptr [ %i.mm, %.preheader111.i449 ], [ %i.mm, %.lr.ph141.i442 ], [ %i.mm, %.lr.ph150.i457 ], [ %i.mm, %bb.ha ], [ inttoptr (i64 1 to ptr), %.thread1139 ], [ %i.mm, %bb.ha ], [ %i.mm, %bb.hj ], [ %i.mm, %bb.hi ], [ %i.mm, %bb.hd ], [ %i.mm, %bb.he ], [ %i.mm, %.lr.ph.i432 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1147, i64 noundef %i.mk) #31
  %i.aak = load i8, ptr %i.ai, align 8, !range !11, !noundef !8
  %i.aal = trunc nuw i8 %i.aak to i1
  br i1 %i.aal, label %bb.hp, label %bb.hq

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit464: ; preds = %bb.hf, %bb.hg, %bb.hk, %bb.hl
  %.sroa.15791.0 = phi i64 [ %i.aaa, %bb.hk ], [ %i.zm, %bb.hg ], [ %i.aaj, %bb.hl ], [ %i.zd, %bb.hf ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 5, i64 noundef %.sroa.15791.0) #27
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hq, %bb.hp, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit464
  %i.aam = phi ptr [ %.ph1147, %bb.hp ], [ %.ph1147, %bb.hq ], [ %i.mm, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit464 ]
  %.sroa.013.0.not = phi i1 [ true, %bb.hp ], [ false, %bb.hq ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit464 ]
  %i.aan = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.aao = load ptr, ptr %i.aan, align 8, !nonnull !8, !noundef !8
  %i.aap = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.aaq = load i64, ptr %i.aap, align 8, !noundef !8 ; 16 uses
  %.not.i465 = icmp slt i64 %i.aaq, 0
  br i1 %.not.i465, label %bb.hr, label %bb.hn, !prof !17

bb.hn:                                            ; preds = %bb.hm
  %i.aar = icmp eq i64 %i.aaq, 0
  br i1 %i.aar, label %.thread1166, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !449
  %i.aas = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aaq, i64 noundef range(i64 1, 9) 1) #27, !noalias !449 ; 18 uses
  %i.aat = icmp eq ptr %i.aas, null
  br i1 %i.aat, label %bb.hr, label %bb.hs

bb.hp:                                            ; preds = %.loopexit1391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %i.mk, ptr %i.ah, align 8
  %.sroa.5786.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.ph1147, ptr %.sroa.5786.0..sroa_idx, align 8
  %.sroa.8787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %i.mk, ptr %.sroa.8787.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ah) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.hm

bb.hq:                                            ; preds = %.loopexit1391
  %i.aau = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.aav = load double, ptr %i.aau, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 5, double noundef %i.aav) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.hm

bb.hr:                                            ; preds = %bb.hm, %bb.ho
  %.sroa.4875.0.ph = phi i64 [ 1, %bb.ho ], [ 0, %bb.hm ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4875.0.ph, i64 %i.aaq) #32
  unreachable

bb.hs:                                            ; preds = %bb.ho
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aas, ptr nonnull align 1 %i.aao, i64 %i.aaq, i1 false)
  %cond1319 = icmp eq i64 %i.aaq, 1
  %i.aaw = load i8, ptr %i.aas, align 1, !alias.scope !450, !noalias !451 ; 2 uses
  br i1 %cond1319, label %bb.ht, label %thread-pre-split.i500

bb.ht:                                            ; preds = %bb.hs
  switch i8 %i.aaw, label %bb.ia [
    i8 43, label %.thread1166
    i8 45, label %.thread1166
  ]

thread-pre-split.i500:                            ; preds = %bb.hs
  switch i8 %i.aaw, label %bb.ia [
    i8 43, label %bb.hu
    i8 45, label %bb.hv
  ]

bb.hu:                                            ; preds = %thread-pre-split.i500
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aas, i64 1
  %i.aay = add nsw i64 %i.aaq, -1
  br label %bb.ia

bb.hv:                                            ; preds = %thread-pre-split.i500
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aas, i64 1 ; 2 uses
  %i.aba = add nsw i64 %i.aaq, -1                 ; 2 uses
  %i.abb = icmp samesign ult i64 %i.aaq, 17
  br i1 %i.abb, label %.lr.ph141.i480, label %.lr.ph.i470

.lr.ph.i470:                                      ; preds = %bb.hv, %bb.hy
  %.sroa.0.1136.i471 = phi ptr [ %i.abc, %bb.hy ], [ %i.aaz, %bb.hv ] ; 2 uses
  %.sroa.26.1135.i472 = phi i64 [ %i.abd, %bb.hy ], [ %i.aba, %bb.hv ]
  %.sroa.084.0134.i473 = phi i64 [ %i.abo, %bb.hy ], [ 0, %bb.hv ]
  %i.abc = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i471, i64 1
  %i.abd = add nsw i64 %.sroa.26.1135.i472, -1    ; 2 uses
  %i.abe = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i473, i64 10) ; 2 uses
  %i.abf = extractvalue { i64, i1 } %i.abe, 0
  %i.abg = extractvalue { i64, i1 } %i.abe, 1
  br i1 %i.abg, label %.thread1166, label %bb.hw, !prof !10

bb.hw:                                            ; preds = %.lr.ph.i470
  %i.abh = load i8, ptr %.sroa.0.1136.i471, align 1, !alias.scope !450, !noalias !451, !noundef !8
  %i.abi = zext i8 %i.abh to i32
  %i.abj = add nsw i32 %i.abi, -48                ; 2 uses
  %i.abk = icmp ult i32 %i.abj, 10
  br i1 %i.abk, label %bb.hx, label %.thread1166

bb.hx:                                            ; preds = %bb.hw
  %i.abl = zext nneg i32 %i.abj to i64
  %i.abm = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.abf, i64 %i.abl) ; 2 uses
  %i.abn = extractvalue { i64, i1 } %i.abm, 1
  br i1 %i.abn, label %.thread1166, label %bb.hy, !prof !10

bb.hy:                                            ; preds = %bb.hx
  %i.abo = extractvalue { i64, i1 } %i.abm, 0     ; 2 uses
  %.not102.i475 = icmp eq i64 %i.abd, 0
  br i1 %.not102.i475, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit502, label %.lr.ph.i470

.lr.ph141.i480:                                   ; preds = %bb.hv, %bb.hz
  %.sroa.0.2140.i481 = phi ptr [ %i.abv, %bb.hz ], [ %i.aaz, %bb.hv ] ; 2 uses
  %.sroa.26.2139.i482 = phi i64 [ %i.abu, %bb.hz ], [ %i.aba, %bb.hv ]
  %.sroa.084.2138.i483 = phi i64 [ %i.abx, %bb.hz ], [ 0, %bb.hv ]
  %i.abp = load i8, ptr %.sroa.0.2140.i481, align 1, !alias.scope !450, !noalias !451, !noundef !8
  %i.abq = zext i8 %i.abp to i32
  %i.abr = add nsw i32 %i.abq, -48                ; 2 uses
  %i.abs = icmp ult i32 %i.abr, 10
  br i1 %i.abs, label %bb.hz, label %.thread1166

bb.hz:                                            ; preds = %.lr.ph141.i480
  %i.abt = mul i64 %.sroa.084.2138.i483, 10
  %i.abu = add nsw i64 %.sroa.26.2139.i482, -1    ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i481, i64 1
  %i.abw = zext nneg i32 %i.abr to i64
  %i.abx = sub i64 %i.abt, %i.abw                 ; 2 uses
  %.not103.i484 = icmp eq i64 %i.abu, 0
  br i1 %.not103.i484, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit502, label %.lr.ph141.i480

bb.ia:                                            ; preds = %bb.ht, %bb.hu, %thread-pre-split.i500
  %.sroa.26.0.i485 = phi i64 [ %i.aay, %bb.hu ], [ %i.aaq, %thread-pre-split.i500 ], [ %i.aaq, %bb.ht ] ; 3 uses
  %.sroa.0.0.i486 = phi ptr [ %i.aax, %bb.hu ], [ %i.aas, %thread-pre-split.i500 ], [ %i.aas, %bb.ht ] ; 2 uses
  %i.aby = icmp samesign ult i64 %.sroa.26.0.i485, 16
  br i1 %i.aby, label %.lr.ph150.i495, label %.preheader111.i487

.preheader111.i487:                               ; preds = %bb.ia, %bb.id
  %.sroa.0.3145.i488 = phi ptr [ %i.abz, %bb.id ], [ %.sroa.0.0.i486, %bb.ia ] ; 2 uses
  %.sroa.26.3144.i489 = phi i64 [ %i.aca, %bb.id ], [ %.sroa.26.0.i485, %bb.ia ]
  %.sroa.084.3143.i490 = phi i64 [ %i.acl, %bb.id ], [ 0, %bb.ia ]
  %i.abz = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i488, i64 1
  %i.aca = add nsw i64 %.sroa.26.3144.i489, -1    ; 2 uses
  %i.acb = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i490, i64 10) ; 2 uses
  %i.acc = extractvalue { i64, i1 } %i.acb, 0
  %i.acd = extractvalue { i64, i1 } %i.acb, 1
  br i1 %i.acd, label %.thread1166, label %bb.ib, !prof !10

bb.ib:                                            ; preds = %.preheader111.i487
  %i.ace = load i8, ptr %.sroa.0.3145.i488, align 1, !alias.scope !450, !noalias !451, !noundef !8
  %i.acf = zext i8 %i.ace to i32
  %i.acg = add nsw i32 %i.acf, -48                ; 2 uses
  %i.ach = icmp ult i32 %i.acg, 10
  br i1 %i.ach, label %bb.ic, label %.thread1166

bb.ic:                                            ; preds = %bb.ib
  %i.aci = zext nneg i32 %i.acg to i64
  %i.acj = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.acc, i64 %i.aci) ; 2 uses
  %i.ack = extractvalue { i64, i1 } %i.acj, 1
  br i1 %i.ack, label %.thread1166, label %bb.id, !prof !10

bb.id:                                            ; preds = %bb.ic
  %i.acl = extractvalue { i64, i1 } %i.acj, 0     ; 2 uses
  %.not104.i492 = icmp eq i64 %i.aca, 0
  br i1 %.not104.i492, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit502, label %.preheader111.i487

.lr.ph150.i495:                                   ; preds = %bb.ia, %bb.ie
  %.sroa.0.4149.i496 = phi ptr [ %i.acs, %bb.ie ], [ %.sroa.0.0.i486, %bb.ia ] ; 2 uses
  %.sroa.26.4148.i497 = phi i64 [ %i.acr, %bb.ie ], [ %.sroa.26.0.i485, %bb.ia ]
  %.sroa.084.4147.i498 = phi i64 [ %i.acu, %bb.ie ], [ 0, %bb.ia ]
  %i.acm = load i8, ptr %.sroa.0.4149.i496, align 1, !alias.scope !450, !noalias !451, !noundef !8
  %i.acn = zext i8 %i.acm to i32
  %i.aco = add nsw i32 %i.acn, -48                ; 2 uses
  %i.acp = icmp ult i32 %i.aco, 10
  br i1 %i.acp, label %bb.ie, label %.thread1166

bb.ie:                                            ; preds = %.lr.ph150.i495
  %i.acq = mul i64 %.sroa.084.4147.i498, 10
  %i.acr = add nsw i64 %.sroa.26.4148.i497, -1    ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i496, i64 1
  %i.act = zext nneg i32 %i.aco to i64
  %i.acu = add i64 %i.acq, %i.act                 ; 2 uses
  %.not105.i499 = icmp eq i64 %i.acr, 0
  br i1 %.not105.i499, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit502, label %.lr.ph150.i495

.thread1166:                                      ; preds = %.lr.ph.i470, %bb.hx, %bb.hw, %.lr.ph141.i480, %.preheader111.i487, %bb.ib, %bb.ic, %.lr.ph150.i495, %bb.ht, %bb.ht, %bb.hn
  %.ph1174 = phi ptr [ inttoptr (i64 1 to ptr), %bb.hn ], [ %i.aas, %.preheader111.i487 ], [ %i.aas, %.lr.ph150.i495 ], [ %i.aas, %bb.ht ], [ %i.aas, %.lr.ph141.i480 ], [ %i.aas, %bb.ht ], [ %i.aas, %bb.ic ], [ %i.aas, %bb.ib ], [ %i.aas, %bb.hw ], [ %i.aas, %bb.hx ], [ %i.aas, %.lr.ph.i470 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1174, i64 noundef %i.aaq) #31
  %i.acv = load i8, ptr %i.ag, align 8, !range !11, !noundef !8
  %i.acw = trunc nuw i8 %i.acv to i1
  br i1 %i.acw, label %bb.ii, label %bb.ij

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit502: ; preds = %bb.hy, %bb.hz, %bb.id, %bb.ie
  %.sroa.15798.0 = phi i64 [ %i.acl, %bb.id ], [ %i.abx, %bb.hz ], [ %i.acu, %bb.ie ], [ %i.abo, %bb.hy ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 2, i64 noundef %.sroa.15798.0) #27
  br label %bb.if

bb.if:                                            ; preds = %bb.ij, %bb.ii, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit502
  %i.acx = phi ptr [ %.ph1174, %bb.ii ], [ %.ph1174, %bb.ij ], [ %i.aas, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit502 ]
  %.sroa.012.0.not = phi i1 [ true, %bb.ii ], [ false, %bb.ij ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit502 ]
  %.not.i503 = icmp slt i64 %i.ek, 0
  br i1 %.not.i503, label %bb.ik, label %bb.ig, !prof !17

bb.ig:                                            ; preds = %bb.if
  %i.acy = icmp eq i64 %i.ek, 0
  br i1 %i.acy, label %.thread1193, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !452
  %i.acz = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ek, i64 noundef range(i64 1, 9) 1) #27, !noalias !452 ; 18 uses
  %i.ada = icmp eq ptr %i.acz, null
  br i1 %i.ada, label %bb.ik, label %bb.il

bb.ii:                                            ; preds = %.thread1166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 %i.aaq, ptr %i.af, align 8
  %.sroa.5793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %.ph1174, ptr %.sroa.5793.0..sroa_idx, align 8
  %.sroa.8794.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %i.aaq, ptr %.sroa.8794.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.af) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.if

bb.ij:                                            ; preds = %.thread1166
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.adc = load double, ptr %i.adb, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 2, double noundef %i.adc) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.if

bb.ik:                                            ; preds = %bb.if, %bb.ih
  %.sroa.4879.0.ph = phi i64 [ 1, %bb.ih ], [ 0, %bb.if ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4879.0.ph, i64 %i.ek) #32
  unreachable

bb.il:                                            ; preds = %bb.ih
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.acz, ptr nonnull align 1 %i.ei, i64 %i.ek, i1 false)
  %cond1318 = icmp eq i64 %i.ek, 1
  %i.add = load i8, ptr %i.acz, align 1, !alias.scope !453, !noalias !454 ; 2 uses
  br i1 %cond1318, label %bb.im, label %thread-pre-split.i538

bb.im:                                            ; preds = %bb.il
  switch i8 %i.add, label %bb.it [
    i8 43, label %.thread1193
    i8 45, label %.thread1193
  ]

thread-pre-split.i538:                            ; preds = %bb.il
  switch i8 %i.add, label %bb.it [
    i8 43, label %bb.in
    i8 45, label %bb.io
  ]

bb.in:                                            ; preds = %thread-pre-split.i538
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acz, i64 1
  %i.adf = add nsw i64 %i.ek, -1
  br label %bb.it

bb.io:                                            ; preds = %thread-pre-split.i538
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acz, i64 1 ; 2 uses
  %i.adh = add nsw i64 %i.ek, -1                  ; 2 uses
  %i.adi = icmp samesign ult i64 %i.ek, 17
  br i1 %i.adi, label %.lr.ph141.i518, label %.lr.ph.i508

.lr.ph.i508:                                      ; preds = %bb.io, %bb.ir
  %.sroa.0.1136.i509 = phi ptr [ %i.adj, %bb.ir ], [ %i.adg, %bb.io ] ; 2 uses
  %.sroa.26.1135.i510 = phi i64 [ %i.adk, %bb.ir ], [ %i.adh, %bb.io ]
  %.sroa.084.0134.i511 = phi i64 [ %i.adv, %bb.ir ], [ 0, %bb.io ]
  %i.adj = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i509, i64 1
  %i.adk = add nsw i64 %.sroa.26.1135.i510, -1    ; 2 uses
  %i.adl = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i511, i64 10) ; 2 uses
  %i.adm = extractvalue { i64, i1 } %i.adl, 0
  %i.adn = extractvalue { i64, i1 } %i.adl, 1
  br i1 %i.adn, label %.thread1193, label %bb.ip, !prof !10

bb.ip:                                            ; preds = %.lr.ph.i508
  %i.ado = load i8, ptr %.sroa.0.1136.i509, align 1, !alias.scope !453, !noalias !454, !noundef !8
  %i.adp = zext i8 %i.ado to i32
  %i.adq = add nsw i32 %i.adp, -48                ; 2 uses
  %i.adr = icmp ult i32 %i.adq, 10
  br i1 %i.adr, label %bb.iq, label %.thread1193

bb.iq:                                            ; preds = %bb.ip
  %i.ads = zext nneg i32 %i.adq to i64
  %i.adt = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.adm, i64 %i.ads) ; 2 uses
  %i.adu = extractvalue { i64, i1 } %i.adt, 1
  br i1 %i.adu, label %.thread1193, label %bb.ir, !prof !10

bb.ir:                                            ; preds = %bb.iq
  %i.adv = extractvalue { i64, i1 } %i.adt, 0     ; 2 uses
  %.not102.i513 = icmp eq i64 %i.adk, 0
  br i1 %.not102.i513, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit540, label %.lr.ph.i508

.lr.ph141.i518:                                   ; preds = %bb.io, %bb.is
  %.sroa.0.2140.i519 = phi ptr [ %i.aec, %bb.is ], [ %i.adg, %bb.io ] ; 2 uses
  %.sroa.26.2139.i520 = phi i64 [ %i.aeb, %bb.is ], [ %i.adh, %bb.io ]
  %.sroa.084.2138.i521 = phi i64 [ %i.aee, %bb.is ], [ 0, %bb.io ]
  %i.adw = load i8, ptr %.sroa.0.2140.i519, align 1, !alias.scope !453, !noalias !454, !noundef !8
  %i.adx = zext i8 %i.adw to i32
  %i.ady = add nsw i32 %i.adx, -48                ; 2 uses
  %i.adz = icmp ult i32 %i.ady, 10
  br i1 %i.adz, label %bb.is, label %.thread1193

bb.is:                                            ; preds = %.lr.ph141.i518
  %i.aea = mul i64 %.sroa.084.2138.i521, 10
  %i.aeb = add nsw i64 %.sroa.26.2139.i520, -1    ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i519, i64 1
  %i.aed = zext nneg i32 %i.ady to i64
  %i.aee = sub i64 %i.aea, %i.aed                 ; 2 uses
  %.not103.i522 = icmp eq i64 %i.aeb, 0
  br i1 %.not103.i522, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit540, label %.lr.ph141.i518

bb.it:                                            ; preds = %bb.im, %bb.in, %thread-pre-split.i538
  %.sroa.26.0.i523 = phi i64 [ %i.adf, %bb.in ], [ %i.ek, %thread-pre-split.i538 ], [ %i.ek, %bb.im ] ; 4 uses
  %.sroa.0.0.i524 = phi ptr [ %i.ade, %bb.in ], [ %i.acz, %thread-pre-split.i538 ], [ %i.acz, %bb.im ] ; 2 uses
  %i.aef = icmp samesign ult i64 %.sroa.26.0.i523, 16
  br i1 %i.aef, label %.preheader.i531, label %.preheader111.i525

.preheader.i531:                                  ; preds = %bb.it
  %.not105146.i532 = icmp eq i64 %.sroa.26.0.i523, 0
  br i1 %.not105146.i532, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit540, label %.lr.ph150.i533

.preheader111.i525:                               ; preds = %bb.it, %bb.iw
  %.sroa.0.3145.i526 = phi ptr [ %i.aeg, %bb.iw ], [ %.sroa.0.0.i524, %bb.it ] ; 2 uses
  %.sroa.26.3144.i527 = phi i64 [ %i.aeh, %bb.iw ], [ %.sroa.26.0.i523, %bb.it ]
  %.sroa.084.3143.i528 = phi i64 [ %i.aes, %bb.iw ], [ 0, %bb.it ]
  %i.aeg = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i526, i64 1
  %i.aeh = add nsw i64 %.sroa.26.3144.i527, -1    ; 2 uses
  %i.aei = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i528, i64 10) ; 2 uses
  %i.aej = extractvalue { i64, i1 } %i.aei, 0
  %i.aek = extractvalue { i64, i1 } %i.aei, 1
  br i1 %i.aek, label %.thread1193, label %bb.iu, !prof !10

bb.iu:                                            ; preds = %.preheader111.i525
  %i.ael = load i8, ptr %.sroa.0.3145.i526, align 1, !alias.scope !453, !noalias !454, !noundef !8
  %i.aem = zext i8 %i.ael to i32
  %i.aen = add nsw i32 %i.aem, -48                ; 2 uses
  %i.aeo = icmp ult i32 %i.aen, 10
  br i1 %i.aeo, label %bb.iv, label %.thread1193

bb.iv:                                            ; preds = %bb.iu
  %i.aep = zext nneg i32 %i.aen to i64
  %i.aeq = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aej, i64 %i.aep) ; 2 uses
  %i.aer = extractvalue { i64, i1 } %i.aeq, 1
  br i1 %i.aer, label %.thread1193, label %bb.iw, !prof !10

bb.iw:                                            ; preds = %bb.iv
  %i.aes = extractvalue { i64, i1 } %i.aeq, 0     ; 2 uses
  %.not104.i530 = icmp eq i64 %i.aeh, 0
  br i1 %.not104.i530, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit540, label %.preheader111.i525

.lr.ph150.i533:                                   ; preds = %.preheader.i531, %bb.ix
  %.sroa.0.4149.i534 = phi ptr [ %i.aez, %bb.ix ], [ %.sroa.0.0.i524, %.preheader.i531 ] ; 2 uses
  %.sroa.26.4148.i535 = phi i64 [ %i.aey, %bb.ix ], [ %.sroa.26.0.i523, %.preheader.i531 ]
  %.sroa.084.4147.i536 = phi i64 [ %i.afb, %bb.ix ], [ 0, %.preheader.i531 ]
  %i.aet = load i8, ptr %.sroa.0.4149.i534, align 1, !alias.scope !453, !noalias !454, !noundef !8
  %i.aeu = zext i8 %i.aet to i32
  %i.aev = add nsw i32 %i.aeu, -48                ; 2 uses
  %i.aew = icmp ult i32 %i.aev, 10
  br i1 %i.aew, label %bb.ix, label %.thread1193

bb.ix:                                            ; preds = %.lr.ph150.i533
  %i.aex = mul i64 %.sroa.084.4147.i536, 10
  %i.aey = add nsw i64 %.sroa.26.4148.i535, -1    ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i534, i64 1
  %i.afa = zext nneg i32 %i.aev to i64
  %i.afb = add i64 %i.aex, %i.afa                 ; 2 uses
  %.not105.i537 = icmp eq i64 %i.aey, 0
  br i1 %.not105.i537, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit540, label %.lr.ph150.i533

.thread1193:                                      ; preds = %.lr.ph.i508, %bb.iq, %bb.ip, %.lr.ph141.i518, %.preheader111.i525, %bb.iu, %bb.iv, %.lr.ph150.i533, %bb.im, %bb.im, %bb.ig
  %.ph1201 = phi ptr [ inttoptr (i64 1 to ptr), %bb.ig ], [ %i.acz, %.preheader111.i525 ], [ %i.acz, %.lr.ph150.i533 ], [ %i.acz, %bb.im ], [ %i.acz, %.lr.ph141.i518 ], [ %i.acz, %bb.im ], [ %i.acz, %bb.iv ], [ %i.acz, %bb.iu ], [ %i.acz, %bb.ip ], [ %i.acz, %bb.iq ], [ %i.acz, %.lr.ph.i508 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1201, i64 noundef %i.ek) #31
  %i.afc = load i8, ptr %i.ae, align 8, !range !11, !noundef !8
  %i.afd = trunc nuw i8 %i.afc to i1
  br i1 %i.afd, label %bb.jb, label %bb.jc

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit540: ; preds = %bb.ir, %bb.is, %bb.iw, %bb.ix, %.preheader.i531
  %.sroa.15805.0 = phi i64 [ %i.aes, %bb.iw ], [ %i.aee, %bb.is ], [ %i.afb, %bb.ix ], [ 0, %.preheader.i531 ], [ %i.adv, %bb.ir ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 8, i64 noundef %.sroa.15805.0) #27
  br label %bb.iy

bb.iy:                                            ; preds = %bb.jc, %bb.jb, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit540
  %i.afe = phi ptr [ %.ph1201, %bb.jb ], [ %.ph1201, %bb.jc ], [ %i.acz, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit540 ]
  %.sroa.011.0.not = phi i1 [ true, %bb.jb ], [ false, %bb.jc ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit540 ]
  %i.aff = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.afg = load ptr, ptr %i.aff, align 8, !nonnull !8, !noundef !8
  %i.afh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.afi = load i64, ptr %i.afh, align 8, !noundef !8 ; 16 uses
  %.not.i541 = icmp slt i64 %i.afi, 0
  br i1 %.not.i541, label %bb.jd, label %bb.iz, !prof !17

bb.iz:                                            ; preds = %bb.iy
  %i.afj = icmp eq i64 %i.afi, 0
  br i1 %i.afj, label %.thread1220, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !455
  %i.afk = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.afi, i64 noundef range(i64 1, 9) 1) #27, !noalias !455 ; 18 uses
  %i.afl = icmp eq ptr %i.afk, null
  br i1 %i.afl, label %bb.jd, label %bb.je

bb.jb:                                            ; preds = %.thread1193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 %i.ek, ptr %i.ad, align 8
  %.sroa.5800.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.ph1201, ptr %.sroa.5800.0..sroa_idx, align 8
  %.sroa.8801.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.ek, ptr %.sroa.8801.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ad) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.iy

bb.jc:                                            ; preds = %.thread1193
  %i.afm = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.afn = load double, ptr %i.afm, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 8, double noundef %i.afn) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.iy

bb.jd:                                            ; preds = %bb.iy, %bb.ja
  %.sroa.4883.0.ph = phi i64 [ 1, %bb.ja ], [ 0, %bb.iy ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4883.0.ph, i64 %i.afi) #32
  unreachable

bb.je:                                            ; preds = %bb.ja
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.afk, ptr nonnull align 1 %i.afg, i64 %i.afi, i1 false)
  %cond1317 = icmp eq i64 %i.afi, 1
  %i.afo = load i8, ptr %i.afk, align 1, !alias.scope !456, !noalias !457 ; 2 uses
  br i1 %cond1317, label %bb.jf, label %thread-pre-split.i576

bb.jf:                                            ; preds = %bb.je
  switch i8 %i.afo, label %bb.jm [
    i8 43, label %.thread1220
    i8 45, label %.thread1220
  ]

thread-pre-split.i576:                            ; preds = %bb.je
  switch i8 %i.afo, label %bb.jm [
    i8 43, label %bb.jg
    i8 45, label %bb.jh
  ]

bb.jg:                                            ; preds = %thread-pre-split.i576
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afk, i64 1
  %i.afq = add nsw i64 %i.afi, -1
  br label %bb.jm

bb.jh:                                            ; preds = %thread-pre-split.i576
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afk, i64 1 ; 2 uses
  %i.afs = add nsw i64 %i.afi, -1                 ; 2 uses
  %i.aft = icmp samesign ult i64 %i.afi, 17
  br i1 %i.aft, label %.lr.ph141.i556, label %.lr.ph.i546

.lr.ph.i546:                                      ; preds = %bb.jh, %bb.jk
  %.sroa.0.1136.i547 = phi ptr [ %i.afu, %bb.jk ], [ %i.afr, %bb.jh ] ; 2 uses
  %.sroa.26.1135.i548 = phi i64 [ %i.afv, %bb.jk ], [ %i.afs, %bb.jh ]
  %.sroa.084.0134.i549 = phi i64 [ %i.agg, %bb.jk ], [ 0, %bb.jh ]
  %i.afu = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i547, i64 1
  %i.afv = add nsw i64 %.sroa.26.1135.i548, -1    ; 2 uses
  %i.afw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i549, i64 10) ; 2 uses
  %i.afx = extractvalue { i64, i1 } %i.afw, 0
  %i.afy = extractvalue { i64, i1 } %i.afw, 1
  br i1 %i.afy, label %.thread1220, label %bb.ji, !prof !10

bb.ji:                                            ; preds = %.lr.ph.i546
  %i.afz = load i8, ptr %.sroa.0.1136.i547, align 1, !alias.scope !456, !noalias !457, !noundef !8
  %i.aga = zext i8 %i.afz to i32
  %i.agb = add nsw i32 %i.aga, -48                ; 2 uses
  %i.agc = icmp ult i32 %i.agb, 10
  br i1 %i.agc, label %bb.jj, label %.thread1220

bb.jj:                                            ; preds = %bb.ji
  %i.agd = zext nneg i32 %i.agb to i64
  %i.age = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.afx, i64 %i.agd) ; 2 uses
  %i.agf = extractvalue { i64, i1 } %i.age, 1
  br i1 %i.agf, label %.thread1220, label %bb.jk, !prof !10

bb.jk:                                            ; preds = %bb.jj
  %i.agg = extractvalue { i64, i1 } %i.age, 0     ; 2 uses
  %.not102.i551 = icmp eq i64 %i.afv, 0
  br i1 %.not102.i551, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit578, label %.lr.ph.i546

.lr.ph141.i556:                                   ; preds = %bb.jh, %bb.jl
  %.sroa.0.2140.i557 = phi ptr [ %i.agn, %bb.jl ], [ %i.afr, %bb.jh ] ; 2 uses
  %.sroa.26.2139.i558 = phi i64 [ %i.agm, %bb.jl ], [ %i.afs, %bb.jh ]
  %.sroa.084.2138.i559 = phi i64 [ %i.agp, %bb.jl ], [ 0, %bb.jh ]
  %i.agh = load i8, ptr %.sroa.0.2140.i557, align 1, !alias.scope !456, !noalias !457, !noundef !8
  %i.agi = zext i8 %i.agh to i32
  %i.agj = add nsw i32 %i.agi, -48                ; 2 uses
  %i.agk = icmp ult i32 %i.agj, 10
  br i1 %i.agk, label %bb.jl, label %.thread1220

bb.jl:                                            ; preds = %.lr.ph141.i556
  %i.agl = mul i64 %.sroa.084.2138.i559, 10
  %i.agm = add nsw i64 %.sroa.26.2139.i558, -1    ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i557, i64 1
  %i.ago = zext nneg i32 %i.agj to i64
  %i.agp = sub i64 %i.agl, %i.ago                 ; 2 uses
  %.not103.i560 = icmp eq i64 %i.agm, 0
  br i1 %.not103.i560, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit578, label %.lr.ph141.i556

bb.jm:                                            ; preds = %bb.jf, %bb.jg, %thread-pre-split.i576
  %.sroa.26.0.i561 = phi i64 [ %i.afq, %bb.jg ], [ %i.afi, %thread-pre-split.i576 ], [ %i.afi, %bb.jf ] ; 3 uses
  %.sroa.0.0.i562 = phi ptr [ %i.afp, %bb.jg ], [ %i.afk, %thread-pre-split.i576 ], [ %i.afk, %bb.jf ] ; 2 uses
  %i.agq = icmp samesign ult i64 %.sroa.26.0.i561, 16
  br i1 %i.agq, label %.lr.ph150.i571, label %.preheader111.i563

.preheader111.i563:                               ; preds = %bb.jm, %bb.jp
  %.sroa.0.3145.i564 = phi ptr [ %i.agr, %bb.jp ], [ %.sroa.0.0.i562, %bb.jm ] ; 2 uses
  %.sroa.26.3144.i565 = phi i64 [ %i.ags, %bb.jp ], [ %.sroa.26.0.i561, %bb.jm ]
  %.sroa.084.3143.i566 = phi i64 [ %i.ahd, %bb.jp ], [ 0, %bb.jm ]
  %i.agr = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i564, i64 1
  %i.ags = add nsw i64 %.sroa.26.3144.i565, -1    ; 2 uses
  %i.agt = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i566, i64 10) ; 2 uses
  %i.agu = extractvalue { i64, i1 } %i.agt, 0
  %i.agv = extractvalue { i64, i1 } %i.agt, 1
  br i1 %i.agv, label %.thread1220, label %bb.jn, !prof !10

bb.jn:                                            ; preds = %.preheader111.i563
  %i.agw = load i8, ptr %.sroa.0.3145.i564, align 1, !alias.scope !456, !noalias !457, !noundef !8
  %i.agx = zext i8 %i.agw to i32
  %i.agy = add nsw i32 %i.agx, -48                ; 2 uses
  %i.agz = icmp ult i32 %i.agy, 10
  br i1 %i.agz, label %bb.jo, label %.thread1220

bb.jo:                                            ; preds = %bb.jn
  %i.aha = zext nneg i32 %i.agy to i64
  %i.ahb = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.agu, i64 %i.aha) ; 2 uses
  %i.ahc = extractvalue { i64, i1 } %i.ahb, 1
  br i1 %i.ahc, label %.thread1220, label %bb.jp, !prof !10

bb.jp:                                            ; preds = %bb.jo
  %i.ahd = extractvalue { i64, i1 } %i.ahb, 0     ; 2 uses
  %.not104.i568 = icmp eq i64 %i.ags, 0
  br i1 %.not104.i568, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit578, label %.preheader111.i563

.lr.ph150.i571:                                   ; preds = %bb.jm, %bb.jq
  %.sroa.0.4149.i572 = phi ptr [ %i.ahk, %bb.jq ], [ %.sroa.0.0.i562, %bb.jm ] ; 2 uses
  %.sroa.26.4148.i573 = phi i64 [ %i.ahj, %bb.jq ], [ %.sroa.26.0.i561, %bb.jm ]
  %.sroa.084.4147.i574 = phi i64 [ %i.ahm, %bb.jq ], [ 0, %bb.jm ]
  %i.ahe = load i8, ptr %.sroa.0.4149.i572, align 1, !alias.scope !456, !noalias !457, !noundef !8
  %i.ahf = zext i8 %i.ahe to i32
  %i.ahg = add nsw i32 %i.ahf, -48                ; 2 uses
  %i.ahh = icmp ult i32 %i.ahg, 10
  br i1 %i.ahh, label %bb.jq, label %.thread1220

bb.jq:                                            ; preds = %.lr.ph150.i571
  %i.ahi = mul i64 %.sroa.084.4147.i574, 10
  %i.ahj = add nsw i64 %.sroa.26.4148.i573, -1    ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i572, i64 1
  %i.ahl = zext nneg i32 %i.ahg to i64
  %i.ahm = add i64 %i.ahi, %i.ahl                 ; 2 uses
  %.not105.i575 = icmp eq i64 %i.ahj, 0
  br i1 %.not105.i575, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit578, label %.lr.ph150.i571

.thread1220:                                      ; preds = %.lr.ph.i546, %bb.jj, %bb.ji, %.lr.ph141.i556, %.preheader111.i563, %bb.jn, %bb.jo, %.lr.ph150.i571, %bb.jf, %bb.jf, %bb.iz
  %.ph1228 = phi ptr [ inttoptr (i64 1 to ptr), %bb.iz ], [ %i.afk, %.preheader111.i563 ], [ %i.afk, %.lr.ph150.i571 ], [ %i.afk, %bb.jf ], [ %i.afk, %.lr.ph141.i556 ], [ %i.afk, %bb.jf ], [ %i.afk, %bb.jo ], [ %i.afk, %bb.jn ], [ %i.afk, %bb.ji ], [ %i.afk, %bb.jj ], [ %i.afk, %.lr.ph.i546 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1228, i64 noundef %i.afi) #31
  %i.ahn = load i8, ptr %i.ac, align 8, !range !11, !noundef !8
  %i.aho = trunc nuw i8 %i.ahn to i1
  br i1 %i.aho, label %bb.jt, label %bb.ju

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit578: ; preds = %bb.jk, %bb.jl, %bb.jp, %bb.jq
  %.sroa.15812.0 = phi i64 [ %i.ahd, %bb.jp ], [ %i.agp, %bb.jl ], [ %i.ahm, %bb.jq ], [ %i.agg, %bb.jk ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, i64 noundef %.sroa.15812.0) #27
  br label %bb.jr

bb.jr:                                            ; preds = %bb.ju, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit578
  %i.ahp = phi ptr [ %.ph1228, %bb.ju ], [ %i.afk, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit578 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aa) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.ahq = icmp eq i64 %i.afi, 0
  br i1 %i.ahq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit581, label %bb.js

bb.js:                                            ; preds = %bb.jr
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ahp, i64 noundef %i.afi, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !458
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit581

bb.jt:                                            ; preds = %.thread1220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 %i.afi, ptr %i.ab, align 8
  %.sroa.5807.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.ph1228, ptr %.sroa.5807.0..sroa_idx, align 8
  %.sroa.8808.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %i.afi, ptr %.sroa.8808.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ab) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aa) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit581

bb.ju:                                            ; preds = %.thread1220
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ahs = load double, ptr %i.ahr, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, double noundef %i.ahs) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.jr

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit581: ; preds = %bb.js, %bb.jr, %bb.jt
  %i.aht = icmp eq i64 %i.ek, 0
  %or.cond1331 = or i1 %.sroa.011.0.not, %i.aht
  br i1 %or.cond1331, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit584, label %bb.jv

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit584: ; preds = %bb.jv, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit581
  %i.ahu = icmp eq i64 %i.aaq, 0
  %or.cond1332 = or i1 %.sroa.012.0.not, %i.ahu
  br i1 %or.cond1332, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit587, label %bb.jw

bb.jv:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit581
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.afe, i64 noundef %i.ek, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !459
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit584

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit587: ; preds = %bb.jw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit584
  %i.ahv = icmp eq i64 %i.mk, 0
  %or.cond1333 = or i1 %.sroa.013.0.not, %i.ahv
  br i1 %or.cond1333, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit590, label %bb.jx

bb.jw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit584
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.acx, i64 noundef %i.aaq, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !460
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit587

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit590: ; preds = %bb.jx, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.cs

bb.jx:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit587
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aam, i64 noundef %i.mk, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !461
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit590

bb.jy:                                            ; preds = %bb.cu, %bb.cw
  %.sroa.4859.0.ph = phi i64 [ 1, %bb.cw ], [ 0, %bb.cu ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4859.0.ph, i64 %i.lx) #32
  unreachable

bb.jz:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lz, ptr align 1 %i.lw, i64 %i.lx, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %cond1316 = icmp eq i64 %i.lx, 1
  %i.ahw = load i8, ptr %i.lz, align 1, !alias.scope !462, !noalias !463 ; 2 uses
  br i1 %cond1316, label %bb.ka, label %thread-pre-split.i622

bb.ka:                                            ; preds = %bb.jz
  switch i8 %i.ahw, label %bb.kh [
    i8 43, label %.loopexit1366
    i8 45, label %.loopexit1366
  ]

thread-pre-split.i622:                            ; preds = %bb.jz
  switch i8 %i.ahw, label %bb.kh [
    i8 43, label %bb.kb
    i8 45, label %bb.kc
  ]

bb.kb:                                            ; preds = %thread-pre-split.i622
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.lz, i64 1
  %i.ahy = add nsw i64 %i.lx, -1
  br label %bb.kh

bb.kc:                                            ; preds = %thread-pre-split.i622
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.lz, i64 1 ; 2 uses
  %i.aia = add nsw i64 %i.lx, -1                  ; 2 uses
  %i.aib = icmp samesign ult i64 %i.lx, 17
  br i1 %i.aib, label %.lr.ph141.i602, label %.lr.ph.i592

.lr.ph.i592:                                      ; preds = %bb.kc, %bb.kf
  %.sroa.0.1136.i593 = phi ptr [ %i.aic, %bb.kf ], [ %i.ahz, %bb.kc ] ; 2 uses
  %.sroa.26.1135.i594 = phi i64 [ %i.aid, %bb.kf ], [ %i.aia, %bb.kc ]
  %.sroa.084.0134.i595 = phi i64 [ %i.aio, %bb.kf ], [ 0, %bb.kc ]
  %i.aic = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i593, i64 1
  %i.aid = add nsw i64 %.sroa.26.1135.i594, -1    ; 2 uses
  %i.aie = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i595, i64 10) ; 2 uses
  %i.aif = extractvalue { i64, i1 } %i.aie, 0
  %i.aig = extractvalue { i64, i1 } %i.aie, 1
  br i1 %i.aig, label %.loopexit1366, label %bb.kd, !prof !10

bb.kd:                                            ; preds = %.lr.ph.i592
  %i.aih = load i8, ptr %.sroa.0.1136.i593, align 1, !alias.scope !462, !noalias !463, !noundef !8
  %i.aii = zext i8 %i.aih to i32
  %i.aij = add nsw i32 %i.aii, -48                ; 2 uses
  %i.aik = icmp ult i32 %i.aij, 10
  br i1 %i.aik, label %bb.ke, label %.loopexit1366

bb.ke:                                            ; preds = %bb.kd
  %i.ail = zext nneg i32 %i.aij to i64
  %i.aim = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.aif, i64 %i.ail) ; 2 uses
  %i.ain = extractvalue { i64, i1 } %i.aim, 1
  br i1 %i.ain, label %.loopexit1366, label %bb.kf, !prof !10

bb.kf:                                            ; preds = %bb.ke
  %i.aio = extractvalue { i64, i1 } %i.aim, 0     ; 2 uses
  %.not102.i597 = icmp eq i64 %i.aid, 0
  br i1 %.not102.i597, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit624, label %.lr.ph.i592

.lr.ph141.i602:                                   ; preds = %bb.kc, %bb.kg
  %.sroa.0.2140.i603 = phi ptr [ %i.aiv, %bb.kg ], [ %i.ahz, %bb.kc ] ; 2 uses
  %.sroa.26.2139.i604 = phi i64 [ %i.aiu, %bb.kg ], [ %i.aia, %bb.kc ]
  %.sroa.084.2138.i605 = phi i64 [ %i.aix, %bb.kg ], [ 0, %bb.kc ]
  %i.aip = load i8, ptr %.sroa.0.2140.i603, align 1, !alias.scope !462, !noalias !463, !noundef !8
  %i.aiq = zext i8 %i.aip to i32
  %i.air = add nsw i32 %i.aiq, -48                ; 2 uses
  %i.ais = icmp ult i32 %i.air, 10
  br i1 %i.ais, label %bb.kg, label %.loopexit1366

bb.kg:                                            ; preds = %.lr.ph141.i602
  %i.ait = mul i64 %.sroa.084.2138.i605, 10
  %i.aiu = add nsw i64 %.sroa.26.2139.i604, -1    ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i603, i64 1
  %i.aiw = zext nneg i32 %i.air to i64
  %i.aix = sub i64 %i.ait, %i.aiw                 ; 2 uses
  %.not103.i606 = icmp eq i64 %i.aiu, 0
  br i1 %.not103.i606, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit624, label %.lr.ph141.i602

bb.kh:                                            ; preds = %bb.ka, %bb.kb, %thread-pre-split.i622
  %.sroa.26.0.i607 = phi i64 [ %i.ahy, %bb.kb ], [ %i.lx, %thread-pre-split.i622 ], [ %i.lx, %bb.ka ] ; 3 uses
  %.sroa.0.0.i608 = phi ptr [ %i.ahx, %bb.kb ], [ %i.lz, %thread-pre-split.i622 ], [ %i.lz, %bb.ka ] ; 2 uses
  %i.aiy = icmp samesign ult i64 %.sroa.26.0.i607, 16
  br i1 %i.aiy, label %.lr.ph150.i617, label %.preheader111.i609

.preheader111.i609:                               ; preds = %bb.kh, %bb.kk
  %.sroa.0.3145.i610 = phi ptr [ %i.aiz, %bb.kk ], [ %.sroa.0.0.i608, %bb.kh ] ; 2 uses
  %.sroa.26.3144.i611 = phi i64 [ %i.aja, %bb.kk ], [ %.sroa.26.0.i607, %bb.kh ]
  %.sroa.084.3143.i612 = phi i64 [ %i.ajl, %bb.kk ], [ 0, %bb.kh ]
  %i.aiz = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i610, i64 1
  %i.aja = add nsw i64 %.sroa.26.3144.i611, -1    ; 2 uses
  %i.ajb = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i612, i64 10) ; 2 uses
  %i.ajc = extractvalue { i64, i1 } %i.ajb, 0
  %i.ajd = extractvalue { i64, i1 } %i.ajb, 1
  br i1 %i.ajd, label %.loopexit1366, label %bb.ki, !prof !10

bb.ki:                                            ; preds = %.preheader111.i609
  %i.aje = load i8, ptr %.sroa.0.3145.i610, align 1, !alias.scope !462, !noalias !463, !noundef !8
  %i.ajf = zext i8 %i.aje to i32
  %i.ajg = add nsw i32 %i.ajf, -48                ; 2 uses
  %i.ajh = icmp ult i32 %i.ajg, 10
  br i1 %i.ajh, label %bb.kj, label %.loopexit1366

bb.kj:                                            ; preds = %bb.ki
  %i.aji = zext nneg i32 %i.ajg to i64
  %i.ajj = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ajc, i64 %i.aji) ; 2 uses
  %i.ajk = extractvalue { i64, i1 } %i.ajj, 1
  br i1 %i.ajk, label %.loopexit1366, label %bb.kk, !prof !10

bb.kk:                                            ; preds = %bb.kj
  %i.ajl = extractvalue { i64, i1 } %i.ajj, 0     ; 2 uses
  %.not104.i614 = icmp eq i64 %i.aja, 0
  br i1 %.not104.i614, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit624, label %.preheader111.i609

.lr.ph150.i617:                                   ; preds = %bb.kh, %bb.kl
  %.sroa.0.4149.i618 = phi ptr [ %i.ajs, %bb.kl ], [ %.sroa.0.0.i608, %bb.kh ] ; 2 uses
  %.sroa.26.4148.i619 = phi i64 [ %i.ajr, %bb.kl ], [ %.sroa.26.0.i607, %bb.kh ]
  %.sroa.084.4147.i620 = phi i64 [ %i.aju, %bb.kl ], [ 0, %bb.kh ]
  %i.ajm = load i8, ptr %.sroa.0.4149.i618, align 1, !alias.scope !462, !noalias !463, !noundef !8
  %i.ajn = zext i8 %i.ajm to i32
  %i.ajo = add nsw i32 %i.ajn, -48                ; 2 uses
  %i.ajp = icmp ult i32 %i.ajo, 10
  br i1 %i.ajp, label %bb.kl, label %.loopexit1366

bb.kl:                                            ; preds = %.lr.ph150.i617
  %i.ajq = mul i64 %.sroa.084.4147.i620, 10
  %i.ajr = add nsw i64 %.sroa.26.4148.i619, -1    ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i618, i64 1
  %i.ajt = zext nneg i32 %i.ajo to i64
  %i.aju = add i64 %i.ajq, %i.ajt                 ; 2 uses
  %.not105.i621 = icmp eq i64 %i.ajr, 0
  br i1 %.not105.i621, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit624, label %.lr.ph150.i617

.loopexit1366:                                    ; preds = %.lr.ph.i592, %bb.ke, %bb.kd, %.lr.ph141.i602, %.preheader111.i609, %bb.ki, %bb.kj, %.lr.ph150.i617, %bb.ka, %bb.ka, %.thread1242
  %.ph1250 = phi ptr [ %i.lz, %.preheader111.i609 ], [ %i.lz, %.lr.ph141.i602 ], [ %i.lz, %.lr.ph150.i617 ], [ %i.lz, %bb.ka ], [ inttoptr (i64 1 to ptr), %.thread1242 ], [ %i.lz, %bb.ka ], [ %i.lz, %bb.kj ], [ %i.lz, %bb.ki ], [ %i.lz, %bb.kd ], [ %i.lz, %bb.ke ], [ %i.lz, %.lr.ph.i592 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1250, i64 noundef %i.lx) #31
  %i.ajv = load i8, ptr %i.aq, align 8, !range !11, !noundef !8
  %i.ajw = trunc nuw i8 %i.ajv to i1
  br i1 %i.ajw, label %bb.kp, label %bb.kq

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit624: ; preds = %bb.kf, %bb.kg, %bb.kk, %bb.kl
  %.sroa.15770.0 = phi i64 [ %i.ajl, %bb.kk ], [ %i.aix, %bb.kg ], [ %i.aju, %bb.kl ], [ %i.aio, %bb.kf ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 5, i64 noundef %.sroa.15770.0) #27
  br label %bb.km

bb.km:                                            ; preds = %bb.kq, %bb.kp, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit624
  %i.ajx = phi ptr [ %.ph1250, %bb.kp ], [ %.ph1250, %bb.kq ], [ %i.lz, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit624 ]
  %.sroa.010.0.not = phi i1 [ true, %bb.kp ], [ false, %bb.kq ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit624 ]
  %.not.i625 = icmp slt i64 %i.ek, 0
  br i1 %.not.i625, label %bb.kr, label %bb.kn, !prof !17

bb.kn:                                            ; preds = %bb.km
  %i.ajy = icmp eq i64 %i.ek, 0
  br i1 %i.ajy, label %.thread1269, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !464
  %i.ajz = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ek, i64 noundef range(i64 1, 9) 1) #27, !noalias !464 ; 18 uses
  %i.aka = icmp eq ptr %i.ajz, null
  br i1 %i.aka, label %bb.kr, label %bb.ks

bb.kp:                                            ; preds = %.loopexit1366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i64 %i.lx, ptr %i.ap, align 8
  %.sroa.5765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %.ph1250, ptr %.sroa.5765.0..sroa_idx, align 8
  %.sroa.8766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.lx, ptr %.sroa.8766.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ap) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.km

bb.kq:                                            ; preds = %.loopexit1366
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.akc = load double, ptr %i.akb, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 5, double noundef %i.akc) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.km

bb.kr:                                            ; preds = %bb.km, %bb.ko
  %.sroa.4863.0.ph = phi i64 [ 1, %bb.ko ], [ 0, %bb.km ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4863.0.ph, i64 %i.ek) #32
  unreachable

bb.ks:                                            ; preds = %bb.ko
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ajz, ptr nonnull align 1 %i.ei, i64 %i.ek, i1 false)
  %cond1315 = icmp eq i64 %i.ek, 1
  %i.akd = load i8, ptr %i.ajz, align 1, !alias.scope !465, !noalias !466 ; 2 uses
  br i1 %cond1315, label %bb.kt, label %thread-pre-split.i660

bb.kt:                                            ; preds = %bb.ks
  switch i8 %i.akd, label %bb.la [
    i8 43, label %.thread1269
    i8 45, label %.thread1269
  ]

thread-pre-split.i660:                            ; preds = %bb.ks
  switch i8 %i.akd, label %bb.la [
    i8 43, label %bb.ku
    i8 45, label %bb.kv
  ]

bb.ku:                                            ; preds = %thread-pre-split.i660
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajz, i64 1
  %i.akf = add nsw i64 %i.ek, -1
  br label %bb.la

bb.kv:                                            ; preds = %thread-pre-split.i660
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ajz, i64 1 ; 2 uses
  %i.akh = add nsw i64 %i.ek, -1                  ; 2 uses
  %i.aki = icmp samesign ult i64 %i.ek, 17
  br i1 %i.aki, label %.lr.ph141.i640, label %.lr.ph.i630

.lr.ph.i630:                                      ; preds = %bb.kv, %bb.ky
  %.sroa.0.1136.i631 = phi ptr [ %i.akj, %bb.ky ], [ %i.akg, %bb.kv ] ; 2 uses
  %.sroa.26.1135.i632 = phi i64 [ %i.akk, %bb.ky ], [ %i.akh, %bb.kv ]
  %.sroa.084.0134.i633 = phi i64 [ %i.akv, %bb.ky ], [ 0, %bb.kv ]
  %i.akj = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i631, i64 1
  %i.akk = add nsw i64 %.sroa.26.1135.i632, -1    ; 2 uses
  %i.akl = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i633, i64 10) ; 2 uses
  %i.akm = extractvalue { i64, i1 } %i.akl, 0
  %i.akn = extractvalue { i64, i1 } %i.akl, 1
  br i1 %i.akn, label %.thread1269, label %bb.kw, !prof !10

bb.kw:                                            ; preds = %.lr.ph.i630
  %i.ako = load i8, ptr %.sroa.0.1136.i631, align 1, !alias.scope !465, !noalias !466, !noundef !8
  %i.akp = zext i8 %i.ako to i32
  %i.akq = add nsw i32 %i.akp, -48                ; 2 uses
  %i.akr = icmp ult i32 %i.akq, 10
  br i1 %i.akr, label %bb.kx, label %.thread1269

bb.kx:                                            ; preds = %bb.kw
  %i.aks = zext nneg i32 %i.akq to i64
  %i.akt = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.akm, i64 %i.aks) ; 2 uses
  %i.aku = extractvalue { i64, i1 } %i.akt, 1
  br i1 %i.aku, label %.thread1269, label %bb.ky, !prof !10

bb.ky:                                            ; preds = %bb.kx
  %i.akv = extractvalue { i64, i1 } %i.akt, 0     ; 2 uses
  %.not102.i635 = icmp eq i64 %i.akk, 0
  br i1 %.not102.i635, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit662, label %.lr.ph.i630

.lr.ph141.i640:                                   ; preds = %bb.kv, %bb.kz
  %.sroa.0.2140.i641 = phi ptr [ %i.alc, %bb.kz ], [ %i.akg, %bb.kv ] ; 2 uses
  %.sroa.26.2139.i642 = phi i64 [ %i.alb, %bb.kz ], [ %i.akh, %bb.kv ]
  %.sroa.084.2138.i643 = phi i64 [ %i.ale, %bb.kz ], [ 0, %bb.kv ]
  %i.akw = load i8, ptr %.sroa.0.2140.i641, align 1, !alias.scope !465, !noalias !466, !noundef !8
  %i.akx = zext i8 %i.akw to i32
  %i.aky = add nsw i32 %i.akx, -48                ; 2 uses
  %i.akz = icmp ult i32 %i.aky, 10
  br i1 %i.akz, label %bb.kz, label %.thread1269

bb.kz:                                            ; preds = %.lr.ph141.i640
  %i.ala = mul i64 %.sroa.084.2138.i643, 10
  %i.alb = add nsw i64 %.sroa.26.2139.i642, -1    ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i641, i64 1
  %i.ald = zext nneg i32 %i.aky to i64
  %i.ale = sub i64 %i.ala, %i.ald                 ; 2 uses
  %.not103.i644 = icmp eq i64 %i.alb, 0
  br i1 %.not103.i644, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit662, label %.lr.ph141.i640

bb.la:                                            ; preds = %bb.kt, %bb.ku, %thread-pre-split.i660
  %.sroa.26.0.i645 = phi i64 [ %i.akf, %bb.ku ], [ %i.ek, %thread-pre-split.i660 ], [ %i.ek, %bb.kt ] ; 4 uses
  %.sroa.0.0.i646 = phi ptr [ %i.ake, %bb.ku ], [ %i.ajz, %thread-pre-split.i660 ], [ %i.ajz, %bb.kt ] ; 2 uses
  %i.alf = icmp samesign ult i64 %.sroa.26.0.i645, 16
  br i1 %i.alf, label %.preheader.i653, label %.preheader111.i647

.preheader.i653:                                  ; preds = %bb.la
  %.not105146.i654 = icmp eq i64 %.sroa.26.0.i645, 0
  br i1 %.not105146.i654, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit662, label %.lr.ph150.i655

.preheader111.i647:                               ; preds = %bb.la, %bb.ld
  %.sroa.0.3145.i648 = phi ptr [ %i.alg, %bb.ld ], [ %.sroa.0.0.i646, %bb.la ] ; 2 uses
  %.sroa.26.3144.i649 = phi i64 [ %i.alh, %bb.ld ], [ %.sroa.26.0.i645, %bb.la ]
  %.sroa.084.3143.i650 = phi i64 [ %i.als, %bb.ld ], [ 0, %bb.la ]
  %i.alg = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i648, i64 1
  %i.alh = add nsw i64 %.sroa.26.3144.i649, -1    ; 2 uses
  %i.ali = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i650, i64 10) ; 2 uses
  %i.alj = extractvalue { i64, i1 } %i.ali, 0
  %i.alk = extractvalue { i64, i1 } %i.ali, 1
  br i1 %i.alk, label %.thread1269, label %bb.lb, !prof !10

bb.lb:                                            ; preds = %.preheader111.i647
  %i.all = load i8, ptr %.sroa.0.3145.i648, align 1, !alias.scope !465, !noalias !466, !noundef !8
  %i.alm = zext i8 %i.all to i32
  %i.aln = add nsw i32 %i.alm, -48                ; 2 uses
  %i.alo = icmp ult i32 %i.aln, 10
  br i1 %i.alo, label %bb.lc, label %.thread1269

bb.lc:                                            ; preds = %bb.lb
  %i.alp = zext nneg i32 %i.aln to i64
  %i.alq = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.alj, i64 %i.alp) ; 2 uses
  %i.alr = extractvalue { i64, i1 } %i.alq, 1
  br i1 %i.alr, label %.thread1269, label %bb.ld, !prof !10

bb.ld:                                            ; preds = %bb.lc
  %i.als = extractvalue { i64, i1 } %i.alq, 0     ; 2 uses
  %.not104.i652 = icmp eq i64 %i.alh, 0
  br i1 %.not104.i652, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit662, label %.preheader111.i647

.lr.ph150.i655:                                   ; preds = %.preheader.i653, %bb.le
  %.sroa.0.4149.i656 = phi ptr [ %i.alz, %bb.le ], [ %.sroa.0.0.i646, %.preheader.i653 ] ; 2 uses
  %.sroa.26.4148.i657 = phi i64 [ %i.aly, %bb.le ], [ %.sroa.26.0.i645, %.preheader.i653 ]
  %.sroa.084.4147.i658 = phi i64 [ %i.amb, %bb.le ], [ 0, %.preheader.i653 ]
  %i.alt = load i8, ptr %.sroa.0.4149.i656, align 1, !alias.scope !465, !noalias !466, !noundef !8
  %i.alu = zext i8 %i.alt to i32
  %i.alv = add nsw i32 %i.alu, -48                ; 2 uses
  %i.alw = icmp ult i32 %i.alv, 10
  br i1 %i.alw, label %bb.le, label %.thread1269

bb.le:                                            ; preds = %.lr.ph150.i655
  %i.alx = mul i64 %.sroa.084.4147.i658, 10
  %i.aly = add nsw i64 %.sroa.26.4148.i657, -1    ; 2 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i656, i64 1
  %i.ama = zext nneg i32 %i.alv to i64
  %i.amb = add i64 %i.alx, %i.ama                 ; 2 uses
  %.not105.i659 = icmp eq i64 %i.aly, 0
  br i1 %.not105.i659, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit662, label %.lr.ph150.i655

.thread1269:                                      ; preds = %.lr.ph.i630, %bb.kx, %bb.kw, %.lr.ph141.i640, %.preheader111.i647, %bb.lb, %bb.lc, %.lr.ph150.i655, %bb.kt, %bb.kt, %bb.kn
  %.ph1277 = phi ptr [ inttoptr (i64 1 to ptr), %bb.kn ], [ %i.ajz, %.preheader111.i647 ], [ %i.ajz, %.lr.ph150.i655 ], [ %i.ajz, %bb.kt ], [ %i.ajz, %.lr.ph141.i640 ], [ %i.ajz, %bb.kt ], [ %i.ajz, %bb.lc ], [ %i.ajz, %bb.lb ], [ %i.ajz, %bb.kw ], [ %i.ajz, %bb.kx ], [ %i.ajz, %.lr.ph.i630 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1277, i64 noundef %i.ek) #31
  %i.amc = load i8, ptr %i.ao, align 8, !range !11, !noundef !8
  %i.amd = trunc nuw i8 %i.amc to i1
  br i1 %i.amd, label %bb.li, label %bb.lj

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit662: ; preds = %bb.ky, %bb.kz, %bb.ld, %bb.le, %.preheader.i653
  %.sroa.15777.0 = phi i64 [ %i.als, %bb.ld ], [ %i.ale, %bb.kz ], [ %i.amb, %bb.le ], [ 0, %.preheader.i653 ], [ %i.akv, %bb.ky ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 8, i64 noundef %.sroa.15777.0) #27
  br label %bb.lf

bb.lf:                                            ; preds = %bb.lj, %bb.li, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit662
  %i.ame = phi ptr [ %.ph1277, %bb.li ], [ %.ph1277, %bb.lj ], [ %i.ajz, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit662 ]
  %.sroa.09.0.not = phi i1 [ true, %bb.li ], [ false, %bb.lj ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit662 ]
  %i.amf = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.amg = load ptr, ptr %i.amf, align 8, !nonnull !8, !noundef !8
  %i.amh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.ami = load i64, ptr %i.amh, align 8, !noundef !8 ; 16 uses
  %.not.i663 = icmp slt i64 %i.ami, 0
  br i1 %.not.i663, label %bb.lk, label %bb.lg, !prof !17

bb.lg:                                            ; preds = %bb.lf
  %i.amj = icmp eq i64 %i.ami, 0
  br i1 %i.amj, label %.thread1296, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !467
  %i.amk = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ami, i64 noundef range(i64 1, 9) 1) #27, !noalias !467 ; 18 uses
  %i.aml = icmp eq ptr %i.amk, null
  br i1 %i.aml, label %bb.lk, label %bb.ll

bb.li:                                            ; preds = %.thread1269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i64 %i.ek, ptr %i.an, align 8
  %.sroa.5772.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %.ph1277, ptr %.sroa.5772.0..sroa_idx, align 8
  %.sroa.8773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %i.ek, ptr %.sroa.8773.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.an) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.lf

bb.lj:                                            ; preds = %.thread1269
  %i.amm = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.amn = load double, ptr %i.amm, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 8, double noundef %i.amn) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.lf

bb.lk:                                            ; preds = %bb.lf, %bb.lh
  %.sroa.4867.0.ph = phi i64 [ 1, %bb.lh ], [ 0, %bb.lf ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4867.0.ph, i64 %i.ami) #32
  unreachable

bb.ll:                                            ; preds = %bb.lh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.amk, ptr nonnull align 1 %i.amg, i64 %i.ami, i1 false)
  %cond1314 = icmp eq i64 %i.ami, 1
  %i.amo = load i8, ptr %i.amk, align 1, !alias.scope !468, !noalias !469 ; 2 uses
  br i1 %cond1314, label %bb.lm, label %thread-pre-split.i698

bb.lm:                                            ; preds = %bb.ll
  switch i8 %i.amo, label %bb.lt [
    i8 43, label %.thread1296
    i8 45, label %.thread1296
  ]

thread-pre-split.i698:                            ; preds = %bb.ll
  switch i8 %i.amo, label %bb.lt [
    i8 43, label %bb.ln
    i8 45, label %bb.lo
  ]

bb.ln:                                            ; preds = %thread-pre-split.i698
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amk, i64 1
  %i.amq = add nsw i64 %i.ami, -1
  br label %bb.lt

bb.lo:                                            ; preds = %thread-pre-split.i698
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amk, i64 1 ; 2 uses
  %i.ams = add nsw i64 %i.ami, -1                 ; 2 uses
  %i.amt = icmp samesign ult i64 %i.ami, 17
  br i1 %i.amt, label %.lr.ph141.i678, label %.lr.ph.i668

.lr.ph.i668:                                      ; preds = %bb.lo, %bb.lr
  %.sroa.0.1136.i669 = phi ptr [ %i.amu, %bb.lr ], [ %i.amr, %bb.lo ] ; 2 uses
  %.sroa.26.1135.i670 = phi i64 [ %i.amv, %bb.lr ], [ %i.ams, %bb.lo ]
  %.sroa.084.0134.i671 = phi i64 [ %i.ang, %bb.lr ], [ 0, %bb.lo ]
  %i.amu = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i669, i64 1
  %i.amv = add nsw i64 %.sroa.26.1135.i670, -1    ; 2 uses
  %i.amw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i671, i64 10) ; 2 uses
  %i.amx = extractvalue { i64, i1 } %i.amw, 0
  %i.amy = extractvalue { i64, i1 } %i.amw, 1
  br i1 %i.amy, label %.thread1296, label %bb.lp, !prof !10

bb.lp:                                            ; preds = %.lr.ph.i668
  %i.amz = load i8, ptr %.sroa.0.1136.i669, align 1, !alias.scope !468, !noalias !469, !noundef !8
  %i.ana = zext i8 %i.amz to i32
  %i.anb = add nsw i32 %i.ana, -48                ; 2 uses
  %i.anc = icmp ult i32 %i.anb, 10
  br i1 %i.anc, label %bb.lq, label %.thread1296

bb.lq:                                            ; preds = %bb.lp
  %i.and = zext nneg i32 %i.anb to i64
  %i.ane = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.amx, i64 %i.and) ; 2 uses
  %i.anf = extractvalue { i64, i1 } %i.ane, 1
  br i1 %i.anf, label %.thread1296, label %bb.lr, !prof !10

bb.lr:                                            ; preds = %bb.lq
  %i.ang = extractvalue { i64, i1 } %i.ane, 0     ; 2 uses
  %.not102.i673 = icmp eq i64 %i.amv, 0
  br i1 %.not102.i673, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit700, label %.lr.ph.i668

.lr.ph141.i678:                                   ; preds = %bb.lo, %bb.ls
  %.sroa.0.2140.i679 = phi ptr [ %i.ann, %bb.ls ], [ %i.amr, %bb.lo ] ; 2 uses
  %.sroa.26.2139.i680 = phi i64 [ %i.anm, %bb.ls ], [ %i.ams, %bb.lo ]
  %.sroa.084.2138.i681 = phi i64 [ %i.anp, %bb.ls ], [ 0, %bb.lo ]
  %i.anh = load i8, ptr %.sroa.0.2140.i679, align 1, !alias.scope !468, !noalias !469, !noundef !8
  %i.ani = zext i8 %i.anh to i32
  %i.anj = add nsw i32 %i.ani, -48                ; 2 uses
  %i.ank = icmp ult i32 %i.anj, 10
  br i1 %i.ank, label %bb.ls, label %.thread1296

bb.ls:                                            ; preds = %.lr.ph141.i678
  %i.anl = mul i64 %.sroa.084.2138.i681, 10
  %i.anm = add nsw i64 %.sroa.26.2139.i680, -1    ; 2 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i679, i64 1
  %i.ano = zext nneg i32 %i.anj to i64
  %i.anp = sub i64 %i.anl, %i.ano                 ; 2 uses
  %.not103.i682 = icmp eq i64 %i.anm, 0
  br i1 %.not103.i682, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit700, label %.lr.ph141.i678

bb.lt:                                            ; preds = %bb.lm, %bb.ln, %thread-pre-split.i698
  %.sroa.26.0.i683 = phi i64 [ %i.amq, %bb.ln ], [ %i.ami, %thread-pre-split.i698 ], [ %i.ami, %bb.lm ] ; 3 uses
  %.sroa.0.0.i684 = phi ptr [ %i.amp, %bb.ln ], [ %i.amk, %thread-pre-split.i698 ], [ %i.amk, %bb.lm ] ; 2 uses
  %i.anq = icmp samesign ult i64 %.sroa.26.0.i683, 16
  br i1 %i.anq, label %.lr.ph150.i693, label %.preheader111.i685

.preheader111.i685:                               ; preds = %bb.lt, %bb.lw
  %.sroa.0.3145.i686 = phi ptr [ %i.anr, %bb.lw ], [ %.sroa.0.0.i684, %bb.lt ] ; 2 uses
  %.sroa.26.3144.i687 = phi i64 [ %i.ans, %bb.lw ], [ %.sroa.26.0.i683, %bb.lt ]
  %.sroa.084.3143.i688 = phi i64 [ %i.aod, %bb.lw ], [ 0, %bb.lt ]
  %i.anr = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i686, i64 1
  %i.ans = add nsw i64 %.sroa.26.3144.i687, -1    ; 2 uses
  %i.ant = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i688, i64 10) ; 2 uses
  %i.anu = extractvalue { i64, i1 } %i.ant, 0
  %i.anv = extractvalue { i64, i1 } %i.ant, 1
  br i1 %i.anv, label %.thread1296, label %bb.lu, !prof !10

bb.lu:                                            ; preds = %.preheader111.i685
  %i.anw = load i8, ptr %.sroa.0.3145.i686, align 1, !alias.scope !468, !noalias !469, !noundef !8
  %i.anx = zext i8 %i.anw to i32
  %i.any = add nsw i32 %i.anx, -48                ; 2 uses
  %i.anz = icmp ult i32 %i.any, 10
  br i1 %i.anz, label %bb.lv, label %.thread1296

bb.lv:                                            ; preds = %bb.lu
  %i.aoa = zext nneg i32 %i.any to i64
  %i.aob = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.anu, i64 %i.aoa) ; 2 uses
  %i.aoc = extractvalue { i64, i1 } %i.aob, 1
  br i1 %i.aoc, label %.thread1296, label %bb.lw, !prof !10

bb.lw:                                            ; preds = %bb.lv
  %i.aod = extractvalue { i64, i1 } %i.aob, 0     ; 2 uses
  %.not104.i690 = icmp eq i64 %i.ans, 0
  br i1 %.not104.i690, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit700, label %.preheader111.i685

.lr.ph150.i693:                                   ; preds = %bb.lt, %bb.lx
  %.sroa.0.4149.i694 = phi ptr [ %i.aok, %bb.lx ], [ %.sroa.0.0.i684, %bb.lt ] ; 2 uses
  %.sroa.26.4148.i695 = phi i64 [ %i.aoj, %bb.lx ], [ %.sroa.26.0.i683, %bb.lt ]
  %.sroa.084.4147.i696 = phi i64 [ %i.aom, %bb.lx ], [ 0, %bb.lt ]
  %i.aoe = load i8, ptr %.sroa.0.4149.i694, align 1, !alias.scope !468, !noalias !469, !noundef !8
  %i.aof = zext i8 %i.aoe to i32
  %i.aog = add nsw i32 %i.aof, -48                ; 2 uses
  %i.aoh = icmp ult i32 %i.aog, 10
  br i1 %i.aoh, label %bb.lx, label %.thread1296

bb.lx:                                            ; preds = %.lr.ph150.i693
  %i.aoi = mul i64 %.sroa.084.4147.i696, 10
  %i.aoj = add nsw i64 %.sroa.26.4148.i695, -1    ; 2 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i694, i64 1
  %i.aol = zext nneg i32 %i.aog to i64
  %i.aom = add i64 %i.aoi, %i.aol                 ; 2 uses
  %.not105.i697 = icmp eq i64 %i.aoj, 0
  br i1 %.not105.i697, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit700, label %.lr.ph150.i693

.thread1296:                                      ; preds = %.lr.ph.i668, %bb.lq, %bb.lp, %.lr.ph141.i678, %.preheader111.i685, %bb.lu, %bb.lv, %.lr.ph150.i693, %bb.lm, %bb.lm, %bb.lg
  %.ph1304 = phi ptr [ inttoptr (i64 1 to ptr), %bb.lg ], [ %i.amk, %.preheader111.i685 ], [ %i.amk, %.lr.ph150.i693 ], [ %i.amk, %bb.lm ], [ %i.amk, %.lr.ph141.i678 ], [ %i.amk, %bb.lm ], [ %i.amk, %bb.lv ], [ %i.amk, %bb.lu ], [ %i.amk, %bb.lp ], [ %i.amk, %bb.lq ], [ %i.amk, %.lr.ph.i668 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1304, i64 noundef %i.ami) #31
  %i.aon = load i8, ptr %i.am, align 8, !range !11, !noundef !8
  %i.aoo = trunc nuw i8 %i.aon to i1
  br i1 %i.aoo, label %bb.ma, label %bb.mb

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit700: ; preds = %bb.lr, %bb.ls, %bb.lw, %bb.lx
  %.sroa.15784.0 = phi i64 [ %i.aod, %bb.lw ], [ %i.anp, %bb.ls ], [ %i.aom, %bb.lx ], [ %i.ang, %bb.lr ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, i64 noundef %.sroa.15784.0) #27
  br label %bb.ly

bb.ly:                                            ; preds = %bb.mb, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit700
  %i.aop = phi ptr [ %.ph1304, %bb.mb ], [ %i.amk, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit700 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 24, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ak) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.aoq = icmp eq i64 %i.ami, 0
  br i1 %i.aoq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit703, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aop, i64 noundef %i.ami, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !470
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit703

bb.ma:                                            ; preds = %.thread1296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 %i.ami, ptr %i.al, align 8
  %.sroa.5779.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %.ph1304, ptr %.sroa.5779.0..sroa_idx, align 8
  %.sroa.8780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.ami, ptr %.sroa.8780.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.al) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 24, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ak) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit703

bb.mb:                                            ; preds = %.thread1296
  %i.aor = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aos = load double, ptr %i.aor, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, double noundef %i.aos) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.ly

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit703: ; preds = %bb.lz, %bb.ly, %bb.ma
  %i.aot = icmp eq i64 %i.ek, 0
  %or.cond1334 = or i1 %.sroa.09.0.not, %i.aot
  br i1 %or.cond1334, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit706, label %bb.mc

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit706: ; preds = %bb.mc, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit703
  %i.aou = icmp eq i64 %i.lx, 0
  %or.cond1335 = or i1 %.sroa.010.0.not, %i.aou
  br i1 %or.cond1335, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit709, label %bb.md

bb.mc:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit703
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ame, i64 noundef %i.ek, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !471
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit706

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit709: ; preds = %bb.md, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.cs

bb.md:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit706
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ajx, i64 noundef %i.lx, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !472
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit709

bb.me:                                            ; preds = %bb.cs
  %i.aov = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.lt) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %.val.i710 = load i64, ptr %i.ba, align 8, !range !18, !alias.scope !473, !noundef !8 ; 2 uses
  %i.aow = icmp eq i64 %.val.i710, 0
  br i1 %i.aow, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit712, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.aox = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.val1.i711 = load ptr, ptr %i.aox, align 8, !alias.scope !473, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i711, i64 noundef %.val.i710, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !473
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit712

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit712: ; preds = %bb.me, %bb.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.ml

bb.mg:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %.val.i713 = load i64, ptr %i.ba, align 8, !range !18, !alias.scope !474, !noundef !8 ; 2 uses
  %i.aoy = icmp eq i64 %.val.i713, 0
  br i1 %i.aoy, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit715, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.val1.i714 = load ptr, ptr %i.aoz, align 8, !alias.scope !474, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i714, i64 noundef %.val.i713, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !474
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit715

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit715: ; preds = %bb.mg, %bb.mh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %.val123 = load i64, ptr %i.bd, align 8, !range !18, !noundef !8 ; 2 uses
  %i.apa = icmp eq i64 %.val123, 0
  br i1 %i.apa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit, label %bb.mi

bb.mi:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit715
  %.val124 = load ptr, ptr %i.cb, align 8, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val124, i64 noundef %.val123, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit715, %bb.mi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.experimental.noalias.scope.decl(metadata !475)
  %.val.i716 = load i64, ptr %i.bg, align 8, !range !18, !alias.scope !475, !noundef !8 ; 2 uses
  %i.apb = icmp eq i64 %.val.i716, 0
  br i1 %i.apb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit718, label %bb.mj

bb.mj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit
  %i.apc = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.val1.i717 = load ptr, ptr %i.apc, align 8, !alias.scope !475, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i717, i64 noundef %.val.i716, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !475
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit718

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit718: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit, %bb.mj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %.val.i719 = load i64, ptr %i.bh, align 8, !range !18, !alias.scope !476, !noundef !8 ; 2 uses
  %i.apd = icmp eq i64 %.val.i719, 0
  br i1 %i.apd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit721, label %bb.mk

bb.mk:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit718
  %i.ape = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.val1.i720 = load ptr, ptr %i.ape, align 8, !alias.scope !476, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i720, i64 noundef %.val.i719, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !476
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit721

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit721: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit718, %bb.mk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %.val.i722 = load i64, ptr %i.bi, align 8, !range !18, !alias.scope !477, !noundef !8 ; 2 uses
  %i.apf = icmp eq i64 %.val.i722, 0
  br i1 %i.apf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit734, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit734.sink.split

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit734.sink.split: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit721, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit731
  %.val.i722.sink = phi i64 [ %.val.i732, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit731 ], [ %.val.i722, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit721 ]
  %.sroa.4.0.ph = phi ptr [ %.sroa.4.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit731 ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit721 ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit731 ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit721 ]
  %i.apg = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.val1.i723 = load ptr, ptr %i.apg, align 8, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i723, i64 noundef %.val.i722.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit734

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit734: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit734.sink.split, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit721, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit731
  %.sroa.4.0 = phi ptr [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit721 ], [ %.sroa.4.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit731 ], [ %.sroa.4.0.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit734.sink.split ]
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit721 ], [ %.sroa.0.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit731 ], [ %.sroa.0.0.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit734.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  %i.aph = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.api = insertvalue { ptr, ptr } %i.aph, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.api

bb.ml:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit712, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit
  %.pn = phi { ptr, ptr } [ %i.dx, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit ], [ %i.aov, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit712 ] ; 2 uses
  %.sroa.0.1 = extractvalue { ptr, ptr } %.pn, 0  ; 2 uses
  %.sroa.4.1 = extractvalue { ptr, ptr } %.pn, 1  ; 2 uses
  %.val = load i64, ptr %i.bd, align 8, !range !18, !noundef !8 ; 2 uses
  %i.apj = icmp eq i64 %.val, 0
  br i1 %i.apj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit725, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %.val122 = load ptr, ptr %i.cb, align 8, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val122, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit725

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit725: ; preds = %bb.ml, %bb.mm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.experimental.noalias.scope.decl(metadata !478)
  %.val.i726 = load i64, ptr %i.bg, align 8, !range !18, !alias.scope !478, !noundef !8 ; 2 uses
  %i.apk = icmp eq i64 %.val.i726, 0
  br i1 %i.apk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit728, label %bb.mn

bb.mn:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit725
  %i.apl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.val1.i727 = load ptr, ptr %i.apl, align 8, !alias.scope !478, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i727, i64 noundef %.val.i726, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !478
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit728

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit728: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit725, %bb.mn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %.val.i729 = load i64, ptr %i.bh, align 8, !range !18, !alias.scope !479, !noundef !8 ; 2 uses
  %i.apm = icmp eq i64 %.val.i729, 0
  br i1 %i.apm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit731, label %bb.mo

bb.mo:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit728
  %i.apn = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.val1.i730 = load ptr, ptr %i.apn, align 8, !alias.scope !479, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i730, i64 noundef %.val.i729, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !479
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit731

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit731: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit728, %bb.mo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %.val.i732 = load i64, ptr %i.bi, align 8, !range !18, !alias.scope !480, !noundef !8 ; 2 uses
  %i.apo = icmp eq i64 %.val.i732, 0
  br i1 %i.apo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit734, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit734.sink.split
end_hunk_1
begin_hunk_2_@_RNvXs5_NtCsbMXVmEvvZJf_5uu_dd9parseargsNtB5_10ParseErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt:bb.a
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i378, i64 1
  %i.jx = zext nneg i32 %i.js to i64
  %i.jy = sub i64 %i.ju, %i.jx                    ; 2 uses
  %.not103.i381 = icmp eq i64 %i.jv, 0
  br i1 %.not103.i381, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit399, label %.lr.ph141.i377

bb.bu:                                            ; preds = %bb.bo, %bb.bn
  %.sroa.26.0.i382 = phi i64 [ %i.iz, %bb.bo ], [ %i.do, %bb.bn ] ; 4 uses
  %.sroa.0.0.i383 = phi ptr [ %i.iy, %bb.bo ], [ %i.iu, %bb.bn ] ; 2 uses
  %i.jz = icmp samesign ult i64 %.sroa.26.0.i382, 16
  br i1 %i.jz, label %.preheader.i390, label %.preheader111.i384

.preheader.i390:                                  ; preds = %bb.bu
  %.not105146.i391 = icmp eq i64 %.sroa.26.0.i382, 0
  br i1 %.not105146.i391, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit399, label %.lr.ph150.i392

.preheader111.i384:                               ; preds = %bb.bu, %bb.bx
  %.sroa.0.3145.i385 = phi ptr [ %i.ka, %bb.bx ], [ %.sroa.0.0.i383, %bb.bu ] ; 2 uses
  %.sroa.26.3144.i386 = phi i64 [ %i.kb, %bb.bx ], [ %.sroa.26.0.i382, %bb.bu ]
  %.sroa.084.3143.i387 = phi i64 [ %i.km, %bb.bx ], [ 0, %bb.bu ]
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i385, i64 1
  %i.kb = add nsw i64 %.sroa.26.3144.i386, -1     ; 2 uses
  %i.kc = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i387, i64 10) ; 2 uses
  %i.kd = extractvalue { i64, i1 } %i.kc, 0
  %i.ke = extractvalue { i64, i1 } %i.kc, 1
  br i1 %i.ke, label %.loopexit1023, label %bb.bv, !prof !10

bb.bv:                                            ; preds = %.preheader111.i384
  %i.kf = load i8, ptr %.sroa.0.3145.i385, align 1, !alias.scope !4277, !noalias !4278, !noundef !8
  %i.kg = zext i8 %i.kf to i32
  %i.kh = add nsw i32 %i.kg, -48                  ; 2 uses
  %i.ki = icmp ult i32 %i.kh, 10
  br i1 %i.ki, label %bb.bw, label %.loopexit1023

bb.bw:                                            ; preds = %bb.bv
  %i.kj = zext nneg i32 %i.kh to i64
  %i.kk = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.kd, i64 %i.kj) ; 2 uses
  %i.kl = extractvalue { i64, i1 } %i.kk, 1
  br i1 %i.kl, label %.loopexit1023, label %bb.bx, !prof !10

bb.bx:                                            ; preds = %bb.bw
  %i.km = extractvalue { i64, i1 } %i.kk, 0       ; 2 uses
  %.not104.i389 = icmp eq i64 %i.kb, 0
  br i1 %.not104.i389, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit399, label %.preheader111.i384

.lr.ph150.i392:                                   ; preds = %.preheader.i390, %bb.by
  %.sroa.0.4149.i393 = phi ptr [ %i.kt, %bb.by ], [ %.sroa.0.0.i383, %.preheader.i390 ] ; 2 uses
  %.sroa.26.4148.i394 = phi i64 [ %i.ks, %bb.by ], [ %.sroa.26.0.i382, %.preheader.i390 ]
  %.sroa.084.4147.i395 = phi i64 [ %i.kv, %bb.by ], [ 0, %.preheader.i390 ]
  %i.kn = load i8, ptr %.sroa.0.4149.i393, align 1, !alias.scope !4277, !noalias !4278, !noundef !8
  %i.ko = zext i8 %i.kn to i32
  %i.kp = add nsw i32 %i.ko, -48                  ; 2 uses
  %i.kq = icmp ult i32 %i.kp, 10
  br i1 %i.kq, label %bb.by, label %.loopexit1023

bb.by:                                            ; preds = %.lr.ph150.i392
  %i.kr = mul i64 %.sroa.084.4147.i395, 10
  %i.ks = add nsw i64 %.sroa.26.4148.i394, -1     ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i393, i64 1
  %i.ku = zext nneg i32 %i.kp to i64
  %i.kv = add i64 %i.kr, %i.ku                    ; 2 uses
  %.not105.i396 = icmp eq i64 %i.ks, 0
  br i1 %.not105.i396, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit399, label %.lr.ph150.i392

bb.bz:                                            ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr nonnull align 1 %i.dm, i64 %i.do, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit328.thread922

.loopexit1023:                                    ; preds = %.lr.ph.i367, %bb.br, %bb.bq, %.lr.ph141.i377, %.preheader111.i384, %bb.bv, %bb.bw, %.lr.ph150.i392, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit365, %bb.bm, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.iu, i64 noundef %i.do) #31
  %i.kw = load i8, ptr %i.bh, align 8, !range !11, !noundef !8
  %i.kx = trunc nuw i8 %i.kw to i1
  br i1 %i.kx, label %bb.cd, label %bb.ce

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit399: ; preds = %bb.bs, %bb.bt, %bb.bx, %bb.by, %.preheader.i390, %.preheader114.i375
  %.sroa.15761.0 = phi i64 [ %i.kv, %bb.by ], [ %i.jy, %bb.bt ], [ %i.km, %bb.bx ], [ 0, %.preheader.i390 ], [ 0, %.preheader114.i375 ], [ %i.jp, %bb.bs ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @216, i64 noundef 4, i64 noundef %.sroa.15761.0) #27
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ce, %bb.cd, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit399
  %.sroa.01.0.not = phi i1 [ true, %bb.cd ], [ %i.dp, %bb.ce ], [ %i.dp, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit399 ]
  %i.ky = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore16execution_phrase() #27 ; 2 uses
  %i.kz = extractvalue { ptr, i64 } %i.ky, 0
  %i.la = extractvalue { ptr, i64 } %i.ky, 1      ; 16 uses
  %.not.i400 = icmp slt i64 %i.la, 0
  br i1 %.not.i400, label %bb.cf, label %bb.cb, !prof !17

bb.cb:                                            ; preds = %bb.ca
  %i.lb = icmp eq i64 %i.la, 0
  br i1 %i.lb, label %.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !4279
  %i.lc = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.la, i64 noundef range(i64 1, 9) 1) #27, !noalias !4279 ; 18 uses
  %i.ld = icmp eq ptr %i.lc, null
  br i1 %i.ld, label %bb.cf, label %bb.cg

bb.cd:                                            ; preds = %.loopexit1023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  store i64 %i.do, ptr %i.bg, align 8
  %.sroa.5754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.iu, ptr %.sroa.5754.0..sroa_idx, align 8
  %.sroa.9756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %i.do, ptr %.sroa.9756.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @216, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bg) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %bb.ca

bb.ce:                                            ; preds = %.loopexit1023
  %i.le = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.lf = load double, ptr %i.le, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @216, i64 noundef 4, double noundef %i.lf) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.ca

bb.cf:                                            ; preds = %bb.ca, %bb.cc
  %.sroa.4838.0.ph = phi i64 [ 1, %bb.cc ], [ 0, %bb.ca ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4838.0.ph, i64 %i.la) #32
  unreachable

bb.cg:                                            ; preds = %bb.cc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lc, ptr align 1 %i.kz, i64 %i.la, i1 false)
  %cond = icmp eq i64 %i.la, 1
  %i.lg = load i8, ptr %i.lc, align 1, !alias.scope !4280, !noalias !4281 ; 2 uses
  br i1 %cond, label %bb.ch, label %thread-pre-split.i434

bb.ch:                                            ; preds = %bb.cg
  switch i8 %i.lg, label %bb.co [
    i8 43, label %.thread
    i8 45, label %.thread
  ]

thread-pre-split.i434:                            ; preds = %bb.cg
  switch i8 %i.lg, label %bb.co [
    i8 43, label %bb.ci
    i8 45, label %bb.cj
  ]

bb.ci:                                            ; preds = %thread-pre-split.i434
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 1
  %i.li = add nsw i64 %i.la, -1
  br label %bb.co

bb.cj:                                            ; preds = %thread-pre-split.i434
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lc, i64 1 ; 2 uses
  %i.lk = add nsw i64 %i.la, -1                   ; 2 uses
  %i.ll = icmp samesign ult i64 %i.la, 17
  br i1 %i.ll, label %.lr.ph141.i414, label %.lr.ph.i404

.lr.ph.i404:                                      ; preds = %bb.cj, %bb.cm
  %.sroa.0.1136.i405 = phi ptr [ %i.lm, %bb.cm ], [ %i.lj, %bb.cj ] ; 2 uses
  %.sroa.26.1135.i406 = phi i64 [ %i.ln, %bb.cm ], [ %i.lk, %bb.cj ]
  %.sroa.084.0134.i407 = phi i64 [ %i.ly, %bb.cm ], [ 0, %bb.cj ]
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i405, i64 1
  %i.ln = add nsw i64 %.sroa.26.1135.i406, -1     ; 2 uses
  %i.lo = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i407, i64 10) ; 2 uses
  %i.lp = extractvalue { i64, i1 } %i.lo, 0
  %i.lq = extractvalue { i64, i1 } %i.lo, 1
  br i1 %i.lq, label %.thread, label %bb.ck, !prof !10

bb.ck:                                            ; preds = %.lr.ph.i404
  %i.lr = load i8, ptr %.sroa.0.1136.i405, align 1, !alias.scope !4280, !noalias !4281, !noundef !8
  %i.ls = zext i8 %i.lr to i32
  %i.lt = add nsw i32 %i.ls, -48                  ; 2 uses
  %i.lu = icmp ult i32 %i.lt, 10
  br i1 %i.lu, label %bb.cl, label %.thread

bb.cl:                                            ; preds = %bb.ck
  %i.lv = zext nneg i32 %i.lt to i64
  %i.lw = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.lp, i64 %i.lv) ; 2 uses
  %i.lx = extractvalue { i64, i1 } %i.lw, 1
  br i1 %i.lx, label %.thread, label %bb.cm, !prof !10

bb.cm:                                            ; preds = %bb.cl
  %i.ly = extractvalue { i64, i1 } %i.lw, 0       ; 2 uses
  %.not102.i409 = icmp eq i64 %i.ln, 0
  br i1 %.not102.i409, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit436, label %.lr.ph.i404

.lr.ph141.i414:                                   ; preds = %bb.cj, %bb.cn
  %.sroa.0.2140.i415 = phi ptr [ %i.mf, %bb.cn ], [ %i.lj, %bb.cj ] ; 2 uses
  %.sroa.26.2139.i416 = phi i64 [ %i.me, %bb.cn ], [ %i.lk, %bb.cj ]
  %.sroa.084.2138.i417 = phi i64 [ %i.mh, %bb.cn ], [ 0, %bb.cj ]
  %i.lz = load i8, ptr %.sroa.0.2140.i415, align 1, !alias.scope !4280, !noalias !4281, !noundef !8
  %i.ma = zext i8 %i.lz to i32
  %i.mb = add nsw i32 %i.ma, -48                  ; 2 uses
  %i.mc = icmp ult i32 %i.mb, 10
  br i1 %i.mc, label %bb.cn, label %.thread

bb.cn:                                            ; preds = %.lr.ph141.i414
  %i.md = mul i64 %.sroa.084.2138.i417, 10
  %i.me = add nsw i64 %.sroa.26.2139.i416, -1     ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i415, i64 1
  %i.mg = zext nneg i32 %i.mb to i64
  %i.mh = sub i64 %i.md, %i.mg                    ; 2 uses
  %.not103.i418 = icmp eq i64 %i.me, 0
  br i1 %.not103.i418, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit436, label %.lr.ph141.i414

bb.co:                                            ; preds = %bb.ch, %bb.ci, %thread-pre-split.i434
  %.sroa.26.0.i419 = phi i64 [ %i.li, %bb.ci ], [ %i.la, %thread-pre-split.i434 ], [ %i.la, %bb.ch ] ; 3 uses
  %.sroa.0.0.i420 = phi ptr [ %i.lh, %bb.ci ], [ %i.lc, %thread-pre-split.i434 ], [ %i.lc, %bb.ch ] ; 2 uses
  %i.mi = icmp samesign ult i64 %.sroa.26.0.i419, 16
  br i1 %i.mi, label %.lr.ph150.i429, label %.preheader111.i421

.preheader111.i421:                               ; preds = %bb.co, %bb.cr
  %.sroa.0.3145.i422 = phi ptr [ %i.mj, %bb.cr ], [ %.sroa.0.0.i420, %bb.co ] ; 2 uses
  %.sroa.26.3144.i423 = phi i64 [ %i.mk, %bb.cr ], [ %.sroa.26.0.i419, %bb.co ]
  %.sroa.084.3143.i424 = phi i64 [ %i.mv, %bb.cr ], [ 0, %bb.co ]
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i422, i64 1
  %i.mk = add nsw i64 %.sroa.26.3144.i423, -1     ; 2 uses
  %i.ml = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i424, i64 10) ; 2 uses
  %i.mm = extractvalue { i64, i1 } %i.ml, 0
  %i.mn = extractvalue { i64, i1 } %i.ml, 1
  br i1 %i.mn, label %.thread, label %bb.cp, !prof !10

bb.cp:                                            ; preds = %.preheader111.i421
  %i.mo = load i8, ptr %.sroa.0.3145.i422, align 1, !alias.scope !4280, !noalias !4281, !noundef !8
  %i.mp = zext i8 %i.mo to i32
  %i.mq = add nsw i32 %i.mp, -48                  ; 2 uses
  %i.mr = icmp ult i32 %i.mq, 10
  br i1 %i.mr, label %bb.cq, label %.thread

bb.cq:                                            ; preds = %bb.cp
  %i.ms = zext nneg i32 %i.mq to i64
  %i.mt = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.mm, i64 %i.ms) ; 2 uses
  %i.mu = extractvalue { i64, i1 } %i.mt, 1
  br i1 %i.mu, label %.thread, label %bb.cr, !prof !10

bb.cr:                                            ; preds = %bb.cq
  %i.mv = extractvalue { i64, i1 } %i.mt, 0       ; 2 uses
  %.not104.i426 = icmp eq i64 %i.mk, 0
  br i1 %.not104.i426, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit436, label %.preheader111.i421

.lr.ph150.i429:                                   ; preds = %bb.co, %bb.cs
  %.sroa.0.4149.i430 = phi ptr [ %i.nc, %bb.cs ], [ %.sroa.0.0.i420, %bb.co ] ; 2 uses
  %.sroa.26.4148.i431 = phi i64 [ %i.nb, %bb.cs ], [ %.sroa.26.0.i419, %bb.co ]
  %.sroa.084.4147.i432 = phi i64 [ %i.ne, %bb.cs ], [ 0, %bb.co ]
  %i.mw = load i8, ptr %.sroa.0.4149.i430, align 1, !alias.scope !4280, !noalias !4281, !noundef !8
  %i.mx = zext i8 %i.mw to i32
  %i.my = add nsw i32 %i.mx, -48                  ; 2 uses
  %i.mz = icmp ult i32 %i.my, 10
  br i1 %i.mz, label %bb.cs, label %.thread

bb.cs:                                            ; preds = %.lr.ph150.i429
  %i.na = mul i64 %.sroa.084.4147.i432, 10
  %i.nb = add nsw i64 %.sroa.26.4148.i431, -1     ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i430, i64 1
  %i.nd = zext nneg i32 %i.my to i64
  %i.ne = add i64 %i.na, %i.nd                    ; 2 uses
  %.not105.i433 = icmp eq i64 %i.nb, 0
  br i1 %.not105.i433, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit436, label %.lr.ph150.i429

.thread:                                          ; preds = %.lr.ph.i404, %bb.cl, %bb.ck, %.lr.ph141.i414, %.preheader111.i421, %bb.cp, %bb.cq, %.lr.ph150.i429, %bb.ch, %bb.ch, %bb.cb
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.cb ], [ %i.lc, %.preheader111.i421 ], [ %i.lc, %.lr.ph150.i429 ], [ %i.lc, %bb.ch ], [ %i.lc, %.lr.ph141.i414 ], [ %i.lc, %bb.ch ], [ %i.lc, %bb.cq ], [ %i.lc, %bb.cp ], [ %i.lc, %bb.ck ], [ %i.lc, %bb.cl ], [ %i.lc, %.lr.ph.i404 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.la) #31
  %i.nf = load i8, ptr %i.bf, align 8, !range !11, !noundef !8
  %i.ng = trunc nuw i8 %i.nf to i1
  br i1 %i.ng, label %bb.cv, label %bb.cw

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit436: ; preds = %bb.cm, %bb.cn, %bb.cr, %bb.cs
  %.sroa.15767.0 = phi i64 [ %i.mv, %bb.cr ], [ %i.mh, %bb.cn ], [ %i.ne, %bb.cs ], [ %i.ly, %bb.cm ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @217, i64 noundef 3, i64 noundef %.sroa.15767.0) #27
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cw, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit436
  %i.nh = phi ptr [ %.ph, %bb.cw ], [ %i.lc, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit436 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @218, i64 noundef 21, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bd) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.ni = icmp eq i64 %i.la, 0
  br i1 %i.ni, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit439, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nh, i64 noundef %i.la, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !4282
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit439

bb.cv:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store i64 %i.la, ptr %i.be, align 8
  %.sroa.5763.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %.ph, ptr %.sroa.5763.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %i.la, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @217, i64 noundef 3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.be) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @218, i64 noundef 21, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bd) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit439

bb.cw:                                            ; preds = %.thread
  %i.nj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.nk = load double, ptr %i.nj, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @217, i64 noundef 3, double noundef %i.nk) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.ct

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit439: ; preds = %bb.cu, %bb.ct, %bb.cv
  br i1 %.sroa.01.0.not, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit445, label %bb.cy

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit445: ; preds = %bb.cy, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store ptr %i.bk, ptr %i.bc, align 8
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4117.0..sroa_idx, align 8
  %i.nl = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8, !nonnull !8, !align !13, !noundef !8
  %i.no = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.nl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.nn, ptr noundef nonnull @142, ptr noundef nonnull %i.bc) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.experimental.noalias.scope.decl(metadata !4283)
  %.val.i440 = load i64, ptr %i.bk, align 8, !range !18, !alias.scope !4283, !noundef !8 ; 2 uses
  %i.np = icmp eq i64 %.val.i440, 0
  br i1 %i.np, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit442, label %bb.cx

bb.cx:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit445
  %i.nq = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.val1.i441 = load ptr, ptr %i.nq, align 8, !alias.scope !4283, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i441, i64 noundef %.val.i440, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !4283
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit442

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit442: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit445, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.bj

bb.cy:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit439
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iu, i64 noundef %i.do, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !4284
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit445

bb.cz:                                            ; preds = %bb.q, %bb.s
  %.sroa.4842.0.ph = phi i64 [ 1, %bb.s ], [ 0, %bb.q ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4842.0.ph, i64 %i.dw) #32
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit331.thread955: ; preds = %bb.r, %bb.do
  %i.nr = phi ptr [ %i.dy, %bb.do ], [ inttoptr (i64 1 to ptr), %bb.r ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4285)
  %.val.i446 = load i64, ptr %i.az, align 8, !range !18, !alias.scope !4285, !noundef !8 ; 2 uses
  %i.ns = icmp eq i64 %.val.i446, 0
  br i1 %i.ns, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit448, label %bb.da

bb.da:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit331.thread955
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.du, i64 noundef %.val.i446, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !4285
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit448

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit448: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit331.thread955, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  switch i64 %i.dw, label %thread-pre-split.i480 [
    i64 0, label %.loopexit1030
    i64 1, label %bb.db
  ]

bb.db:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit448
  %i.nt = load i8, ptr %i.nr, align 1, !alias.scope !4286, !noalias !4287, !noundef !8 ; 2 uses
  switch i8 %i.nt, label %bb.dc [
    i8 43, label %.loopexit1030
    i8 45, label %.loopexit1030
  ]

thread-pre-split.i480:                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit448
  %.pr.i481 = load i8, ptr %i.nr, align 1, !alias.scope !4286, !noalias !4287
  br label %bb.dc

bb.dc:                                            ; preds = %thread-pre-split.i480, %bb.db
  %i.nu = phi i8 [ %.pr.i481, %thread-pre-split.i480 ], [ %i.nt, %bb.db ]
  switch i8 %i.nu, label %bb.dj [
    i8 43, label %bb.dd
    i8 45, label %bb.de
  ]

bb.dd:                                            ; preds = %bb.dc
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 1
  %i.nw = add nsw i64 %i.dw, -1
  br label %bb.dj

bb.de:                                            ; preds = %bb.dc
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nr, i64 1 ; 2 uses
  %i.ny = add nsw i64 %i.dw, -1                   ; 3 uses
  %i.nz = icmp samesign ult i64 %i.dw, 17
  br i1 %i.nz, label %.preheader114.i458, label %.lr.ph.i450

.preheader114.i458:                               ; preds = %bb.de
  %.not103137.i459 = icmp eq i64 %i.ny, 0
  br i1 %.not103137.i459, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit482, label %.lr.ph141.i460

.lr.ph.i450:                                      ; preds = %bb.de, %bb.dh
  %.sroa.0.1136.i451 = phi ptr [ %i.oa, %bb.dh ], [ %i.nx, %bb.de ] ; 2 uses
  %.sroa.26.1135.i452 = phi i64 [ %i.ob, %bb.dh ], [ %i.ny, %bb.de ]
  %.sroa.084.0134.i453 = phi i64 [ %i.om, %bb.dh ], [ 0, %bb.de ]
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i451, i64 1
  %i.ob = add nsw i64 %.sroa.26.1135.i452, -1     ; 2 uses
  %i.oc = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i453, i64 10) ; 2 uses
  %i.od = extractvalue { i64, i1 } %i.oc, 0
  %i.oe = extractvalue { i64, i1 } %i.oc, 1
  br i1 %i.oe, label %.loopexit1030, label %bb.df, !prof !10

bb.df:                                            ; preds = %.lr.ph.i450
  %i.of = load i8, ptr %.sroa.0.1136.i451, align 1, !alias.scope !4286, !noalias !4287, !noundef !8
  %i.og = zext i8 %i.of to i32
  %i.oh = add nsw i32 %i.og, -48                  ; 2 uses
  %i.oi = icmp ult i32 %i.oh, 10
  br i1 %i.oi, label %bb.dg, label %.loopexit1030

bb.dg:                                            ; preds = %bb.df
  %i.oj = zext nneg i32 %i.oh to i64
  %i.ok = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.od, i64 %i.oj) ; 2 uses
  %i.ol = extractvalue { i64, i1 } %i.ok, 1
  br i1 %i.ol, label %.loopexit1030, label %bb.dh, !prof !10

bb.dh:                                            ; preds = %bb.dg
  %i.om = extractvalue { i64, i1 } %i.ok, 0       ; 2 uses
  %.not102.i455 = icmp eq i64 %i.ob, 0
  br i1 %.not102.i455, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit482, label %.lr.ph.i450

.lr.ph141.i460:                                   ; preds = %.preheader114.i458, %bb.di
  %.sroa.0.2140.i461 = phi ptr [ %i.ot, %bb.di ], [ %i.nx, %.preheader114.i458 ] ; 2 uses
  %.sroa.26.2139.i462 = phi i64 [ %i.os, %bb.di ], [ %i.ny, %.preheader114.i458 ]
  %.sroa.084.2138.i463 = phi i64 [ %i.ov, %bb.di ], [ 0, %.preheader114.i458 ]
  %i.on = load i8, ptr %.sroa.0.2140.i461, align 1, !alias.scope !4286, !noalias !4287, !noundef !8
  %i.oo = zext i8 %i.on to i32
  %i.op = add nsw i32 %i.oo, -48                  ; 2 uses
  %i.oq = icmp ult i32 %i.op, 10
  br i1 %i.oq, label %bb.di, label %.loopexit1030

bb.di:                                            ; preds = %.lr.ph141.i460
  %i.or = mul i64 %.sroa.084.2138.i463, 10
  %i.os = add nsw i64 %.sroa.26.2139.i462, -1     ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i461, i64 1
  %i.ou = zext nneg i32 %i.op to i64
  %i.ov = sub i64 %i.or, %i.ou                    ; 2 uses
  %.not103.i464 = icmp eq i64 %i.os, 0
  br i1 %.not103.i464, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit482, label %.lr.ph141.i460

bb.dj:                                            ; preds = %bb.dd, %bb.dc
  %.sroa.26.0.i465 = phi i64 [ %i.nw, %bb.dd ], [ %i.dw, %bb.dc ] ; 4 uses
  %.sroa.0.0.i466 = phi ptr [ %i.nv, %bb.dd ], [ %i.nr, %bb.dc ] ; 2 uses
  %i.ow = icmp samesign ult i64 %.sroa.26.0.i465, 16
  br i1 %i.ow, label %.preheader.i473, label %.preheader111.i467

.preheader.i473:                                  ; preds = %bb.dj
  %.not105146.i474 = icmp eq i64 %.sroa.26.0.i465, 0
  br i1 %.not105146.i474, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit482, label %.lr.ph150.i475

.preheader111.i467:                               ; preds = %bb.dj, %bb.dm
  %.sroa.0.3145.i468 = phi ptr [ %i.ox, %bb.dm ], [ %.sroa.0.0.i466, %bb.dj ] ; 2 uses
  %.sroa.26.3144.i469 = phi i64 [ %i.oy, %bb.dm ], [ %.sroa.26.0.i465, %bb.dj ]
  %.sroa.084.3143.i470 = phi i64 [ %i.pj, %bb.dm ], [ 0, %bb.dj ]
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i468, i64 1
  %i.oy = add nsw i64 %.sroa.26.3144.i469, -1     ; 2 uses
  %i.oz = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i470, i64 10) ; 2 uses
  %i.pa = extractvalue { i64, i1 } %i.oz, 0
  %i.pb = extractvalue { i64, i1 } %i.oz, 1
  br i1 %i.pb, label %.loopexit1030, label %bb.dk, !prof !10

bb.dk:                                            ; preds = %.preheader111.i467
  %i.pc = load i8, ptr %.sroa.0.3145.i468, align 1, !alias.scope !4286, !noalias !4287, !noundef !8
  %i.pd = zext i8 %i.pc to i32
end_hunk_2
