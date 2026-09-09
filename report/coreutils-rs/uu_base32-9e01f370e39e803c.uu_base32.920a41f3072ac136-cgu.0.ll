Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_base32-9e01f370e39e803c.uu_base32.920a41f3072ac136-cgu.0?download=true
inline.NumInlined: 585
inline.NumDeleted: 338
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvNtCscxmO3cvmuC8_9uu_base3211base_common8base_app:_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB3_3Arg19visible_short_aliascECscxmO3cvmuC8_9uu_base32.exit
  %.sroa.6183.0..sroa_idx184 = getelementptr inbounds nuw i8, ptr %i.l, i64 496
  store ptr %.sroa.2402.0.copyload, ptr %.sroa.6183.0..sroa_idx184, align 8
  %.sroa.7186.0..sroa_idx187 = getelementptr inbounds nuw i8, ptr %i.l, i64 504
  store i64 %.sroa.3403.0.copyload, ptr %.sroa.7186.0..sroa_idx187, align 8
  %.sroa.7186.sroa.5.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 512
  store i64 -1, ptr %.sroa.7186.sroa.5.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.7.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 552
  store i64 -2, ptr %.sroa.7186.sroa.7.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.9.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 576
  store ptr @102, ptr %.sroa.7186.sroa.9.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.10.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 584
  store i64 14, ptr %.sroa.7186.sroa.10.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.11.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 592
  store ptr @102, ptr %.sroa.7186.sroa.11.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.12.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 600
  store i64 14, ptr %.sroa.7186.sroa.12.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.13.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 608
  store ptr null, ptr %.sroa.7186.sroa.13.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.15.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 624
  store i32 105, ptr %.sroa.7186.sroa.15.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.16.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 628
  store i32 -1, ptr %.sroa.7186.sroa.16.0..sroa.7186.0..sroa_idx187.sroa_idx, align 4
  %.sroa.7186.sroa.17.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 632
  store i32 0, ptr %.sroa.7186.sroa.17.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.18.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i8 2, ptr %.sroa.7186.sroa.18.0..sroa.7186.0..sroa_idx187.sroa_idx, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 128 ; 2 uses
  %i.bk = load i64, ptr %.sroa.0179.sroa.17.0..sroa_idx, align 8, !alias.scope !659, !noalias !660, !noundef !9 ; 3 uses
  %i.bl = load i64, ptr %i.bj, align 8, !range !10, !alias.scope !659, !noalias !660, !noundef !9
  %i.bm = icmp eq i64 %i.bk, %i.bl
  br i1 %i.bm, label %bb.c, label %_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg14overrides_withReECscxmO3cvmuC8_9uu_base32.exit52

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit51
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj) #22, !noalias !660
  br label %_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg14overrides_withReECscxmO3cvmuC8_9uu_base32.exit52

_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg14overrides_withReECscxmO3cvmuC8_9uu_base32.exit52: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit51, %bb.c
  %i.bn = load ptr, ptr %.sroa.0179.sroa.16.0..sroa_idx, align 8, !alias.scope !659, !noalias !660, !nonnull !9, !noundef !9
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bk ; 2 uses
  store ptr @102, ptr %i.bo, align 8, !noalias !660
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 14, ptr %i.bp, align 8, !noalias !658
  %i.bq = add i64 %i.bk, 1
  store i64 %i.bq, ptr %.sroa.0179.sroa.17.0..sroa_idx, align 8, !alias.scope !659, !noalias !660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.m, ptr noundef nonnull align 8 dereferenceable(640) %i.l, i64 640, i1 false), !alias.scope !661, !noalias !662
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.m) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.t, ptr noundef nonnull align 8 dereferenceable(712) %i.s, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0247.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0247.sroa.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0247.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0247.sroa.21)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0247.sroa.23)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0247.sroa.25)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0247.sroa.27)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0247.sroa.32)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0247.sroa.40)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0247.sroa.42)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0247.sroa.47)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !663
  %i.br = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #23, !noalias !663 ; 4 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.d, label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscxmO3cvmuC8_9uu_base32.exit

bb.d:                                             ; preds = %_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg14overrides_withReECscxmO3cvmuC8_9uu_base32.exit52
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #26, !noalias !664
  unreachable

_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscxmO3cvmuC8_9uu_base32.exit: ; preds = %_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg14overrides_withReECscxmO3cvmuC8_9uu_base32.exit52
  store ptr @84, ptr %i.br, align 8, !noalias !665
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 4, ptr %i.bt, align 8, !noalias !666
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.15, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.17, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.19, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.21, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.23, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.25, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.27, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.32, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.40, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.42, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.47, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bu = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef 76, ptr noalias nofree noundef nonnull %i.a, i64 noundef 20) #23 ; 2 uses
  %i.bv = extractvalue { ptr, i64 } %i.bu, 0
  %i.bw = extractvalue { ptr, i64 } %i.bu, 1      ; 16 uses
  %.not.i = icmp slt i64 %i.bw, 0
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !25

bb.e:                                             ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscxmO3cvmuC8_9uu_base32.exit
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %.thread, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.e
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !667
  %i.by = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bw, i64 noundef range(i64 1, 9) 1) #23, !noalias !667 ; 18 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscxmO3cvmuC8_9uu_base32.exit, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4407.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscxmO3cvmuC8_9uu_base32.exit ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4407.0.ph, i64 %i.bw) #26
  unreachable

bb.g:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr align 1 %i.bv, i64 %i.bw, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %cond = icmp eq i64 %i.bw, 1
  %i.ca = load i8, ptr %i.by, align 1, !alias.scope !668, !noalias !669 ; 2 uses
  br i1 %cond, label %bb.h, label %thread-pre-split.i

bb.h:                                             ; preds = %bb.g
  switch i8 %i.ca, label %bb.o [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.g
  switch i8 %i.ca, label %bb.o [
    i8 43, label %bb.i
    i8 45, label %bb.j
  ]

bb.i:                                             ; preds = %thread-pre-split.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.cc = add nsw i64 %i.bw, -1
  br label %bb.o

bb.j:                                             ; preds = %thread-pre-split.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 1 ; 2 uses
  %i.ce = add nsw i64 %i.bw, -1                   ; 2 uses
  %i.cf = icmp samesign ult i64 %i.bw, 17
  br i1 %i.cf, label %.lr.ph141.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.m
  %.sroa.0.1136.i = phi ptr [ %i.cg, %bb.m ], [ %i.cd, %bb.j ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.ch, %bb.m ], [ %i.ce, %bb.j ]
  %.sroa.084.0134.i = phi i64 [ %i.cs, %bb.m ], [ 0, %bb.j ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.ch = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.ci = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.cj = extractvalue { i64, i1 } %i.ci, 0
  %i.ck = extractvalue { i64, i1 } %i.ci, 1
  br i1 %i.ck, label %.loopexit, label %bb.k, !prof !21

bb.k:                                             ; preds = %.lr.ph.i
  %i.cl = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !668, !noalias !669, !noundef !9
  %i.cm = zext i8 %i.cl to i32
  %i.cn = add nsw i32 %i.cm, -48                  ; 2 uses
  %i.co = icmp ult i32 %i.cn, 10
  br i1 %i.co, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.cp = zext nneg i32 %i.cn to i64
  %i.cq = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.cj, i64 %i.cp) ; 2 uses
  %i.cr = extractvalue { i64, i1 } %i.cq, 1
  br i1 %i.cr, label %.loopexit, label %bb.m, !prof !21

bb.m:                                             ; preds = %bb.l
  %i.cs = extractvalue { i64, i1 } %i.cq, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.ch, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %bb.j, %bb.n
  %.sroa.0.2140.i = phi ptr [ %i.cz, %bb.n ], [ %i.cd, %bb.j ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.cy, %bb.n ], [ %i.ce, %bb.j ]
  %.sroa.084.2138.i = phi i64 [ %i.db, %bb.n ], [ 0, %bb.j ]
  %i.ct = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !668, !noalias !669, !noundef !9
  %i.cu = zext i8 %i.ct to i32
  %i.cv = add nsw i32 %i.cu, -48                  ; 2 uses
  %i.cw = icmp ult i32 %i.cv, 10
  br i1 %i.cw, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.lr.ph141.i
  %i.cx = mul i64 %.sroa.084.2138.i, 10
  %i.cy = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.da = zext nneg i32 %i.cv to i64
  %i.db = sub i64 %i.cx, %i.da                    ; 2 uses
  %.not103.i = icmp eq i64 %i.cy, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.o:                                             ; preds = %bb.h, %bb.i, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.cc, %bb.i ], [ %i.bw, %thread-pre-split.i ], [ %i.bw, %bb.h ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.cb, %bb.i ], [ %i.by, %thread-pre-split.i ], [ %i.by, %bb.h ] ; 2 uses
  %i.dc = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.dc, label %.lr.ph150.i, label %.preheader111.i

.preheader111.i:                                  ; preds = %bb.o, %bb.r
  %.sroa.0.3145.i = phi ptr [ %i.dd, %bb.r ], [ %.sroa.0.0.i, %bb.o ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.de, %bb.r ], [ %.sroa.26.0.i, %bb.o ]
  %.sroa.084.3143.i = phi i64 [ %i.dp, %bb.r ], [ 0, %bb.o ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.de = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.df = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.dg = extractvalue { i64, i1 } %i.df, 0
  %i.dh = extractvalue { i64, i1 } %i.df, 1
  br i1 %i.dh, label %.loopexit, label %bb.p, !prof !21

bb.p:                                             ; preds = %.preheader111.i
  %i.di = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !668, !noalias !669, !noundef !9
  %i.dj = zext i8 %i.di to i32
  %i.dk = add nsw i32 %i.dj, -48                  ; 2 uses
  %i.dl = icmp ult i32 %i.dk, 10
  br i1 %i.dl, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.dm = zext nneg i32 %i.dk to i64
  %i.dn = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.dg, i64 %i.dm) ; 2 uses
  %i.do = extractvalue { i64, i1 } %i.dn, 1
  br i1 %i.do, label %.loopexit, label %bb.r, !prof !21

bb.r:                                             ; preds = %bb.q
  %i.dp = extractvalue { i64, i1 } %i.dn, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.de, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %bb.o, %bb.s
  %.sroa.0.4149.i = phi ptr [ %i.dw, %bb.s ], [ %.sroa.0.0.i, %bb.o ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.dv, %bb.s ], [ %.sroa.26.0.i, %bb.o ]
  %.sroa.084.4147.i = phi i64 [ %i.dy, %bb.s ], [ 0, %bb.o ]
  %i.dq = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !668, !noalias !669, !noundef !9
  %i.dr = zext i8 %i.dq to i32
  %i.ds = add nsw i32 %i.dr, -48                  ; 2 uses
  %i.dt = icmp ult i32 %i.ds, 10
  br i1 %i.dt, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %.lr.ph150.i
  %i.du = mul i64 %.sroa.084.4147.i, 10
  %i.dv = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.dx = zext nneg i32 %i.ds to i64
  %i.dy = add i64 %i.du, %i.dx                    ; 2 uses
  %.not105.i = icmp eq i64 %i.dv, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.loopexit:                                        ; preds = %.lr.ph.i, %bb.l, %bb.k, %.lr.ph141.i, %.preheader111.i, %bb.p, %bb.q, %.lr.ph150.i, %bb.h, %bb.h, %.thread
  %.ph = phi ptr [ %i.by, %.preheader111.i ], [ %i.by, %.lr.ph141.i ], [ %i.by, %.lr.ph150.i ], [ %i.by, %bb.h ], [ inttoptr (i64 1 to ptr), %.thread ], [ %i.by, %bb.h ], [ %i.by, %bb.q ], [ %i.by, %bb.p ], [ %i.by, %bb.k ], [ %i.by, %bb.l ], [ %i.by, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.bw) #22
  %i.dz = load i8, ptr %i.f, align 8, !range !18, !noundef !9
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.v, label %bb.w

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.m, %bb.n, %bb.r, %bb.s
  %.sroa.15324.0 = phi i64 [ %i.dp, %bb.r ], [ %i.db, %bb.n ], [ %i.dy, %bb.s ], [ %i.cs, %bb.m ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 7, i64 noundef %.sroa.15324.0) #23
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.eb = phi ptr [ %.ph, %bb.w ], [ %i.by, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 21, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ec = icmp eq i64 %i.bw, 0
  br i1 %i.ec, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit93, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eb, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !670
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit93

bb.v:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.bw, ptr %i.e, align 8
  %.sroa.5319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.ph, ptr %.sroa.5319.0..sroa_idx, align 8
  %.sroa.8320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.bw, ptr %.sroa.8320.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 7, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 21, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit93

bb.w:                                             ; preds = %.loopexit
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ee = load double, ptr %i.ed, align 8, !noundef !9
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 7, double noundef %i.ee) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.t

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit93: ; preds = %bb.v, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.0413.0.copyload = load i64, ptr %i.h, align 8
  %.sroa.2414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.2414.0.copyload = load ptr, ptr %.sroa.2414.0..sroa_idx, align 8
  %.sroa.3415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.3415.0.copyload = load i64, ptr %.sroa.3415.0..sroa_idx, align 8
  store i64 0, ptr %i.i, align 8
  %.sroa.0247.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.0247.sroa.5.0..sroa_idx, align 8
  %.sroa.0247.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 0, ptr %.sroa.0247.sroa.7.0..sroa_idx, align 8
  %.sroa.0247.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 0, ptr %.sroa.0247.sroa.9.0..sroa_idx, align 8
  %.sroa.0247.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store i64 -1, ptr %.sroa.0247.sroa.11.0..sroa_idx, align 8
  %.sroa.0247.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store i64 0, ptr %.sroa.0247.sroa.13.0..sroa_idx, align 8
  %.sroa.0247.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.14.0..sroa_idx, align 8
  %.sroa.0247.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.15, i64 16, i1 false)
  %.sroa.0247.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 136 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.16.0..sroa_idx, align 8
  %.sroa.0247.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 144 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.17.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.17, i64 16, i1 false)
  %.sroa.0247.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.18.0..sroa_idx, align 8
  %.sroa.0247.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.19.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.19, i64 16, i1 false)
  %.sroa.0247.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.20.0..sroa_idx, align 8
  %.sroa.0247.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.21.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.21, i64 16, i1 false)
  %.sroa.0247.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.22.0..sroa_idx, align 8
  %.sroa.0247.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.23.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.23, i64 16, i1 false)
  %.sroa.0247.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.24.0..sroa_idx, align 8
  %.sroa.0247.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.25.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.25, i64 16, i1 false)
  %.sroa.0247.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.26.0..sroa_idx, align 8
  %.sroa.0247.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.27.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.27, i64 16, i1 false)
  %.sroa.0247.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.28.0..sroa_idx, align 8
  %.sroa.0247.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 288
  %.sroa.0247.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.29.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.31.0..sroa_idx, align 8
  %.sroa.0247.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.32.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.32, i64 16, i1 false)
  %.sroa.0247.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0247.sroa.33.0..sroa_idx, align 8
  %.sroa.0247.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 336
  store i64 0, ptr %.sroa.0247.sroa.34.0..sroa_idx, align 8
  %.sroa.0247.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 344
  store i64 1, ptr %.sroa.0247.sroa.35.0..sroa_idx, align 8
  %.sroa.0247.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 352
  store ptr %i.br, ptr %.sroa.0247.sroa.36.0..sroa_idx, align 8
  %.sroa.0247.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 360
  store i64 1, ptr %.sroa.0247.sroa.37.0..sroa_idx, align 8
  %.sroa.0247.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 368
  store i64 0, ptr %.sroa.0247.sroa.38.0..sroa_idx, align 8
  %.sroa.0247.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.39.0..sroa_idx, align 8
  %.sroa.0247.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.40.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.40, i64 16, i1 false)
  %.sroa.0247.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.41.0..sroa_idx, align 8
  %.sroa.0247.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.42, i64 16, i1 false)
  %.sroa.0247.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.43.0..sroa_idx, align 8
  %.sroa.0247.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 432
  %.sroa.0247.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.44.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.46.0..sroa_idx, align 8
  %.sroa.0247.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.47.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.47, i64 16, i1 false)
  %.sroa.0247.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.48.0..sroa_idx, align 8
  %.sroa.0247.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 480
  store i64 0, ptr %.sroa.0247.sroa.49.0..sroa_idx, align 8
  %.sroa.4248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 488
  store i64 %.sroa.0413.0.copyload, ptr %.sroa.4248.0..sroa_idx, align 8
  %.sroa.6251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 496
  store ptr %.sroa.2414.0.copyload, ptr %.sroa.6251.0..sroa_idx, align 8
  %.sroa.7254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 504
  store i64 %.sroa.3415.0.copyload, ptr %.sroa.7254.0..sroa_idx, align 8
  %.sroa.7254.sroa.5.0..sroa.7254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 512
  store i64 -1, ptr %.sroa.7254.sroa.5.0..sroa.7254.0..sroa_idx.sroa_idx, align 8
  %.sroa.7254.sroa.7.0..sroa.7254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 552
  store i64 -2, ptr %.sroa.7254.sroa.7.0..sroa.7254.0..sroa_idx.sroa_idx, align 8
  %.sroa.7254.sroa.9.0..sroa.7254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 576
  store ptr @104, ptr %.sroa.7254.sroa.9.0..sroa.7254.0..sroa_idx.sroa_idx, align 8
  %.sroa.7254.sroa.10.0..sroa.7254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 584
  store i64 4, ptr %.sroa.7254.sroa.10.0..sroa.7254.0..sroa_idx.sroa_idx, align 8
  %.sroa.7254.sroa.11.0..sroa.7254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 592
  store ptr @104, ptr %.sroa.7254.sroa.11.0..sroa.7254.0..sroa_idx.sroa_idx, align 8
  %.sroa.7254.sroa.12.0..sroa.7254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 600
  store i64 4, ptr %.sroa.7254.sroa.12.0..sroa.7254.0..sroa_idx.sroa_idx, align 8
  %.sroa.7254.sroa.13.0..sroa.7254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 608
  store ptr null, ptr %.sroa.7254.sroa.13.0..sroa.7254.0..sroa_idx.sroa_idx, align 8
  %.sroa.7254.sroa.15.0..sroa.7254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 624
  store i32 119, ptr %.sroa.7254.sroa.15.0..sroa.7254.0..sroa_idx.sroa_idx, align 8
  %.sroa.7254.sroa.16.0..sroa.7254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 628
  store i32 -1, ptr %.sroa.7254.sroa.16.0..sroa.7254.0..sroa_idx.sroa_idx, align 4
  %.sroa.7254.sroa.17.0..sroa.7254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 632
  store i32 0, ptr %.sroa.7254.sroa.17.0..sroa.7254.0..sroa_idx.sroa_idx, align 8
  %.sroa.7254.sroa.18.0..sroa.7254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 636
  store i8 -1, ptr %.sroa.7254.sroa.18.0..sroa.7254.0..sroa_idx.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0247.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0247.sroa.17)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0247.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0247.sroa.21)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0247.sroa.23)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0247.sroa.25)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0247.sroa.27)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0247.sroa.32)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0247.sroa.40)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0247.sroa.42)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0247.sroa.47)
  call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 2 uses
  %i.eg = load i64, ptr %.sroa.0247.sroa.17.0..sroa_idx, align 8, !alias.scope !672, !noalias !673, !noundef !9 ; 3 uses
  %i.eh = load i64, ptr %i.ef, align 8, !range !10, !alias.scope !672, !noalias !673, !noundef !9
  %i.ei = icmp eq i64 %i.eg, %i.eh
  br i1 %i.ei, label %bb.x, label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECscxmO3cvmuC8_9uu_base32.exit

bb.x:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit93
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ef) #22, !noalias !673
  br label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECscxmO3cvmuC8_9uu_base32.exit

_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.x, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit93
  %i.ej = load ptr, ptr %.sroa.0247.sroa.16.0..sroa_idx, align 8, !alias.scope !672, !noalias !673, !nonnull !9, !noundef !9
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.eg ; 2 uses
  store ptr @104, ptr %i.ek, align 8, !noalias !673
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i64 4, ptr %i.el, align 8, !noalias !671
  %i.em = add i64 %i.eg, 1
  store i64 %i.em, ptr %.sroa.0247.sroa.17.0..sroa_idx, align 8, !alias.scope !672, !noalias !673
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.j, ptr noundef nonnull align 8 dereferenceable(640) %i.i, i64 640, i1 false), !alias.scope !674, !noalias !675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.j) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.u, ptr noundef nonnull align 8 dereferenceable(712) %i.t, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.15338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15338.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.17340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17340.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.19342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19342.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.21344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.21344.0..sroa_idx, i8 0, i64 16, i1 false)
end_hunk_0
