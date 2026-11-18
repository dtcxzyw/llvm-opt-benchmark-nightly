Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_env-45a487b3da3a2ebc.uu_env.2eeaa69494824df3-cgu.0?download=true
inline.NumInlined: 1366
inline.NumDeleted: 752
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RNvMs1_Cs41JD7yXDh97_6uu_envNtB5_10EnvAppData28process_all_string_arguments:bb.a
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2813
  %i.bg = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val128, i64 noundef range(i64 1, 9) 1) #26, !noalias !2813 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val128) #30, !noalias !2814
  unreachable

bb.k:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull readonly align 1 %.val127, i64 range(i64 0, -9223372036854775808) %.val128, i1 false), !noalias !2815
  br label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit: ; preds = %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread, %bb.k
  %.sroa.5206.0 = phi ptr [ %i.bg, %bb.k ], [ inttoptr (i64 1 to ptr), %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread ] ; 2 uses
  %i.bi = load i64, ptr %i.p, align 8, !alias.scope !2816, !noundef !5 ; 3 uses
  %i.bj = load i64, ptr %i.n, align 8, !range !6, !alias.scope !2816, !noundef !5
  %i.bk = icmp eq i64 %i.bi, %i.bj
  br i1 %i.bk, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8push_mutCs41JD7yXDh97_6uu_env.exit183.sink.split, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8push_mutCs41JD7yXDh97_6uu_env.exit183

bb.l:                                             ; preds = %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %.val135 = load ptr, ptr %i.ah, align 8, !nonnull !5, !noundef !5
  %.val136 = load i64, ptr %i.aj, align 8, !noundef !5
  call fastcc void @_RNvCs41JD7yXDh97_6uu_env28check_and_handle_string_args(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.l, ptr nonnull %.val135, i64 %.val136, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 14, ptr noalias nofree noundef align 8 dereferenceable(24) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, i1 noundef zeroext true) #26
  %i.bl = load ptr, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %.not92 = icmp eq ptr %i.bl, null
  br i1 %.not92, label %bb.n, label %bb.m

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8push_mutCs41JD7yXDh97_6uu_env.exit183.sink.split: ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit182
  %.sink443.ph = phi i64 [ %i.ji, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit182 ], [ %i.bi, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit ]
  %.sink440.ph = phi i64 [ %i.ce, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit182 ], [ %.val128, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit ]
  %.sink438.ph = phi ptr [ %i.jg, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit182 ], [ %.sroa.5206.0, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit ]
  %.sroa.047.1.ph = phi i1 [ false, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit182 ], [ %.sroa.047.0324, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit ]
  %.sroa.0.2.ph = phi i8 [ 1, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit182 ], [ 0, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit ]
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #27, !noalias !5
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8push_mutCs41JD7yXDh97_6uu_env.exit183

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8push_mutCs41JD7yXDh97_6uu_env.exit183: ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8push_mutCs41JD7yXDh97_6uu_env.exit183.sink.split, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit182
  %.sink443 = phi i64 [ %i.bi, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit ], [ %i.ji, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit182 ], [ %.sink443.ph, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8push_mutCs41JD7yXDh97_6uu_env.exit183.sink.split ] ; 2 uses
  %.sink440 = phi i64 [ %.val128, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit ], [ %i.ce, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit182 ], [ %.sink440.ph, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8push_mutCs41JD7yXDh97_6uu_env.exit183.sink.split ] ; 2 uses
  %.sink438 = phi ptr [ %.sroa.5206.0, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit ], [ %i.jg, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit182 ], [ %.sink438.ph, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8push_mutCs41JD7yXDh97_6uu_env.exit183.sink.split ]
  %.sroa.047.1 = phi i1 [ %.sroa.047.0324, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit ], [ false, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit182 ], [ %.sroa.047.1.ph, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8push_mutCs41JD7yXDh97_6uu_env.exit183.sink.split ] ; 2 uses
  %.sroa.0.2 = phi i8 [ 0, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit ], [ 1, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit182 ], [ %.sroa.0.2.ph, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8push_mutCs41JD7yXDh97_6uu_env.exit183.sink.split ] ; 2 uses
  %i.bm = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.sink443 ; 3 uses
  store i64 %.sink440, ptr %i.bn, align 8
  %.sroa.4221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %.sink438, ptr %.sroa.4221.0..sroa_idx, align 8
  %.sroa.5222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %.sink440, ptr %.sroa.5222.0..sroa_idx, align 8
  %storemerge = add i64 %.sink443, 1
  store i64 %storemerge, ptr %i.p, align 8
  %.val116 = load i64, ptr %i.m, align 8, !range !12, !noundef !5 ; 2 uses
  %i.bo = icmp sgt i64 %.val116, 0
  br i1 %i.bo, label %.backedge.sink.split.sink.split, label %.backedge.sink.split

bb.m:                                             ; preds = %bb.l
  %i.bp = load ptr, ptr %i.y, align 8, !nonnull !5, !align !7, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bg

bb.n:                                             ; preds = %bb.l
  %i.bq = load i8, ptr %i.y, align 8, !range !16, !noundef !5
  %i.br = trunc nuw i8 %i.bq to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %i.br, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.val133 = load ptr, ptr %i.ah, align 8, !nonnull !5, !noundef !5
  %.val134 = load i64, ptr %i.aj, align 8, !noundef !5
  call fastcc void @_RNvCs41JD7yXDh97_6uu_env28check_and_handle_string_args(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.k, ptr nonnull %.val133, i64 %.val134, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef 2, ptr noalias nofree noundef align 8 dereferenceable(24) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, i1 noundef zeroext false) #26
  %i.bs = load ptr, ptr %i.k, align 8, !noundef !5 ; 2 uses
  %.not93 = icmp eq ptr %i.bs, null
  br i1 %.not93, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.n
  store i8 1, ptr %i.ad, align 1
  br label %bb.bk

bb.q:                                             ; preds = %bb.o
  %i.bt = load ptr, ptr %i.z, align 8, !nonnull !5, !align !7, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bg

bb.r:                                             ; preds = %bb.o
  %i.bu = load i8, ptr %i.z, align 8, !range !16, !noundef !5
  %i.bv = trunc nuw i8 %i.bu to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.bv, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.val131 = load ptr, ptr %i.ah, align 8, !nonnull !5, !noundef !5
  %.val132 = load i64, ptr %i.aj, align 8, !noundef !5
  call fastcc void @_RNvCs41JD7yXDh97_6uu_env28check_and_handle_string_args(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.j, ptr nonnull %.val131, i64 %.val132, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 3, ptr noalias nofree noundef align 8 dereferenceable(24) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, i1 noundef zeroext false) #26
  %i.bw = load ptr, ptr %i.j, align 8, !noundef !5 ; 2 uses
  %.not94 = icmp eq ptr %i.bw, null
  br i1 %.not94, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.r
  store i8 1, ptr %i.ad, align 1
  br label %bb.bk

bb.u:                                             ; preds = %bb.s
  %i.bx = load ptr, ptr %i.aa, align 8, !nonnull !5, !align !7, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bg

bb.v:                                             ; preds = %bb.s
  %i.by = load i8, ptr %i.aa, align 8, !range !16, !noundef !5
  %i.bz = trunc nuw i8 %i.by to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.bz, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.val129 = load ptr, ptr %i.ah, align 8, !nonnull !5, !noundef !5
  %.val130 = load i64, ptr %i.aj, align 8, !noundef !5
  call fastcc void @_RNvCs41JD7yXDh97_6uu_env28check_and_handle_string_args(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.i, ptr nonnull %.val129, i64 %.val130, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef 4, ptr noalias nofree noundef align 8 dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %2, i1 noundef zeroext false) #26
  %i.ca = load ptr, ptr %i.i, align 8, !noundef !5 ; 2 uses
  %.not95 = icmp eq ptr %i.ca, null
  br i1 %.not95, label %bb.z, label %bb.y

bb.x:                                             ; preds = %bb.v
  store i8 1, ptr %1, align 1
  store i8 1, ptr %i.ad, align 1
  br label %bb.bk

bb.y:                                             ; preds = %bb.w
  %i.cb = load ptr, ptr %i.ab, align 8, !nonnull !5, !align !7, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.bg

bb.z:                                             ; preds = %bb.w
  %i.cc = load i8, ptr %i.ab, align 8, !range !16, !noundef !5
  %i.cd = trunc nuw i8 %i.cc to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.cd, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ce = load i64, ptr %i.aj, align 8, !noundef !5 ; 8 uses
  switch i64 %i.ce, label %.thread248 [
    i64 14, label %bb.ac
    i64 2, label %bb.ad
    i64 3, label %bb.ae
    i64 4, label %bb.af
  ]

bb.ab:                                            ; preds = %bb.z
  store i8 1, ptr %1, align 1
  store i8 0, ptr %i.ac, align 1
  store i8 1, ptr %i.ad, align 1
  br label %bb.bk

bb.ac:                                            ; preds = %bb.aa
  %i.cf = load ptr, ptr %i.ah, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.cg = load i64, ptr %i.cf, align 1
  %i.ch = xor i64 %i.cg, 3275358743469174061
  %i.ci = getelementptr i8, ptr %i.cf, i64 6
  %i.cj = load i64, ptr %i.ci, align 1
  %i.ck = xor i64 %i.cj, 7453010373645643124
  %i.cl = or i64 %i.ch, %i.ck
  %i.cm = icmp ne i64 %i.cl, 0
  %i.cn = zext i1 %i.cm to i32
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.bl, label %.thread248

bb.ad:                                            ; preds = %bb.aa
  %i.cp = load ptr, ptr %i.ah, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 1
  %i.cr = icmp ne i16 %i.cq, 21293
  %i.cs = zext i1 %i.cr to i32
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.bl, label %.thread248

bb.ae:                                            ; preds = %bb.aa
  %i.cu = load ptr, ptr %i.ah, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.cv = load i16, ptr %i.cu, align 1
  %i.cw = xor i16 %i.cv, 30253
  %i.cx = getelementptr i8, ptr %i.cu, i64 2
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = zext i8 %i.cy to i16
  %i.da = xor i16 %i.cz, 83
  %i.db = or i16 %i.cw, %i.da
  %i.dc = icmp ne i16 %i.db, 0
  %i.dd = zext i1 %i.dc to i32
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %.thread280, label %.thread248

bb.af:                                            ; preds = %bb.aa
  %i.df = load ptr, ptr %i.ah, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 1
  %i.dh = icmp ne i32 %i.dg, 1400272429
  %i.di = zext i1 %i.dh to i32
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.bl, label %.thread248

.thread248:                                       ; preds = %bb.aa, %bb.ad, %bb.ac, %bb.ae, %bb.af
  %i.dk = load ptr, ptr %i.w, align 8, !nonnull !5 ; 15 uses
  %i.dl = load i64, ptr %i.x, align 8             ; 15 uses
  %.not.i140 = icmp samesign ult i64 %i.dl, 2     ; 2 uses
  br i1 %.not.i140, label %3, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs41JD7yXDh97_6uu_env.exit143

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs41JD7yXDh97_6uu_env.exit143: ; preds = %.thread248
  %i.dm = load i16, ptr %i.dk, align 1
  %i.dn = icmp ne i16 11565, %i.dm
  %i.do = zext i1 %i.dn to i32
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.ah, label %bb.ag

3:                                                ; preds = %.thread248
  %.not.i144 = icmp eq i64 %i.dl, 0
  br i1 %.not.i144, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit155.thread, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs41JD7yXDh97_6uu_env.exit147

bb.ag:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs41JD7yXDh97_6uu_env.exit143
  %rhsc284 = load i8, ptr %i.dk, align 1
  %.not.i144.a = icmp eq i8 %rhsc284, 45
  br i1 %.not.i144.a, label %.lr.ph.preheader, label %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs41JD7yXDh97_6uu_env.exit

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs41JD7yXDh97_6uu_env.exit147: ; preds = %3
  %rhsc284.a = load i8, ptr %i.dk, align 1
  %i.dq = icmp eq i8 %rhsc284.a, 45
  br i1 %i.dq, label %.thread, label %.lr.ph.i.i152.preheader

.thread:                                          ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs41JD7yXDh97_6uu_env.exit147
  %4 = getelementptr i8, ptr %i.dk, i64 %i.dl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  br label %.lr.ph.i.i152.preheader

bb.ah:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs41JD7yXDh97_6uu_env.exit143
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 2 ; 7 uses
  switch i64 %i.dl, label %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs41JD7yXDh97_6uu_env.exit [
    i64 7, label %.split.i.i
    i64 6, label %.split.i.2.i
  ]

.split.i.i:                                       ; preds = %bb.ah
  %i.ds = load i32, ptr %i.dr, align 1
  %i.dt = xor i32 1986490977, %i.ds
  %i.du = getelementptr i8, ptr %i.dr, i64 4
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = zext i8 %i.dv to i32
  %i.dx = xor i32 48, %i.dw
  %i.dy = or i32 %i.dt, %i.dx
  %i.dz = icmp ne i32 %i.dy, 0
  %i.ea = zext i1 %i.dz to i32
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.ai, label %.split.i.1.i

.split.i.1.i:                                     ; preds = %.split.i.i
  %i.ec = load i32, ptr %i.dr, align 1
  %i.ed = xor i32 1768188003, %i.ec
  %i.ee = getelementptr i8, ptr %i.dr, i64 4
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = zext i8 %i.ef to i32
  %i.eh = xor i32 114, %i.eg
  %i.ei = or i32 %i.ed, %i.eh
  %i.ej = icmp ne i32 %i.ei, 0
  %i.ek = zext i1 %i.ej to i32
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.ai, label %.split.i.3.i

.split.i.2.i:                                     ; preds = %bb.ah
  %i.em = load i32, ptr %i.dr, align 1
  %i.en = icmp ne i32 1701603686, %i.em
  %i.eo = zext i1 %i.en to i32
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.ai, label %.lr.ph.i.i152.preheader

.split.i.3.i:                                     ; preds = %.split.i.1.i
  %i.eq = load i32, ptr %i.dr, align 1
  %i.er = xor i32 1702063733, %i.eq
  %i.es = getelementptr i8, ptr %i.dr, i64 4
  %i.et = load i8, ptr %i.es, align 1
  %i.eu = zext i8 %i.et to i32
  %i.ev = xor i32 116, %i.eu
  %i.ew = or i32 %i.er, %i.ev
  %i.ex = icmp ne i32 %i.ew, 0
  %i.ey = zext i1 %i.ex to i32
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.ai, label %.lr.ph.i.i152.preheader

bb.ai:                                            ; preds = %.split.i.i, %.split.i.1.i, %.split.i.3.i, %.split.i.2.i
  br label %.lr.ph.i.i152.preheader

.lr.ph.preheader:                                 ; preds = %bb.ag
  %i.fa = getelementptr i8, ptr %i.dk, i64 %i.dl  ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fa) ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  br label %.lr.ph

_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs41JD7yXDh97_6uu_env.exit.loopexit: ; preds = %_RNvXsL_NtNtCs6JMX4GRUq9U_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit
  %switch.tableidx = add nsw i32 %.sroa.4.0.i.ph, -67 ; 2 uses
  %i.fc = icmp ult i32 %switch.tableidx, 51
  %switch.cast = zext nneg i32 %switch.tableidx to i51
  %switch.downshift = lshr i51 -1125864473362431, %switch.cast
  %switch.masked = trunc i51 %switch.downshift to i1
  %.not.not.not.i.not.not.i.not.lcssa = select i1 %i.fc, i1 %switch.masked, i1 false
  br label %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs41JD7yXDh97_6uu_env.exit

_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs41JD7yXDh97_6uu_env.exit: ; preds = %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs41JD7yXDh97_6uu_env.exit.loopexit, %bb.ah, %bb.ag
  %.sroa.047.2 = phi i1 [ false, %bb.ah ], [ false, %bb.ag ], [ %.not.not.not.i.not.not.i.not.lcssa, %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs41JD7yXDh97_6uu_env.exit.loopexit ] ; 3 uses
  %i.fd = icmp samesign ult i64 %i.dl, 16
  br i1 %i.fd, label %.lr.ph.i.i152.preheader, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit155

.lr.ph.i.i152.preheader:                          ; preds = %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs41JD7yXDh97_6uu_env.exit, %.split.i.2.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs41JD7yXDh97_6uu_env.exit147, %.thread, %bb.ai, %.split.i.3.i
  %.sroa.047.2258392 = phi i1 [ false, %.split.i.2.i ], [ false, %.split.i.3.i ], [ true, %bb.ai ], [ false, %.thread ], [ false, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs41JD7yXDh97_6uu_env.exit147 ], [ %.sroa.047.2, %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs41JD7yXDh97_6uu_env.exit ] ; 3 uses
  br label %.lr.ph.i.i152

.lr.ph.i.i152:                                    ; preds = %.lr.ph.i.i152.preheader, %bb.aj
  %.sroa.01.05.i.i153 = phi i64 [ %i.fh, %bb.aj ], [ 0, %.lr.ph.i.i152.preheader ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.sroa.01.05.i.i153
  %i.ff = load i8, ptr %i.fe, align 1, !alias.scope !2817, !noundef !5
  %i.fg = icmp eq i8 %i.ff, 61
  br i1 %i.fg, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i152
  %i.fh = add nuw nsw i64 %.sroa.01.05.i.i153, 1  ; 2 uses
  %exitcond.not.i.i154 = icmp eq i64 %i.fh, %i.dl
  br i1 %exitcond.not.i.i154, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit155.thread, label %.lr.ph.i.i152

_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit155: ; preds = %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs41JD7yXDh97_6uu_env.exit
  %i.fi = call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef 61, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dk, i64 noundef range(i64 0, -9223372036854775808) %i.dl) #26
  %i.fj = extractvalue { i64, i64 } %i.fi, 0
  %i.fk = icmp eq i64 %i.fj, 1
  br i1 %i.fk, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs41JD7yXDh97_6uu_env.exit161, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit155.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvXsL_NtNtCs6JMX4GRUq9U_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit
  %.sroa.0199.0321 = phi ptr [ %.sroa.0199.1.ph, %_RNvXsL_NtNtCs6JMX4GRUq9U_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit ], [ %i.fb, %.lr.ph.preheader ] ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0199.0321, i64 1 ; 3 uses
  %i.fm = load i8, ptr %.sroa.0199.0321, align 1, !noalias !2818, !noundef !5 ; 5 uses
  %i.fn = icmp sgt i8 %i.fm, -1
  br i1 %i.fn, label %bb.ak, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit12.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit12.i: ; preds = %.lr.ph
  %i.fo = and i8 %i.fm, 31
  %i.fp = zext nneg i8 %i.fo to i32               ; 3 uses
  %i.fq = icmp ne ptr %i.fl, %i.fa
  call void @llvm.assume(i1 %i.fq)
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0199.0321, i64 2 ; 3 uses
  %i.fs = load i8, ptr %i.fl, align 1, !noalias !2818, !noundef !5
  %i.ft = shl nuw nsw i32 %i.fp, 6
  %i.fu = and i8 %i.fs, 63
  %i.fv = zext nneg i8 %i.fu to i32               ; 2 uses
  %i.fw = or disjoint i32 %i.ft, %i.fv
  %i.fx = icmp samesign ugt i8 %i.fm, -33
  br i1 %i.fx, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit14.i, label %_RNvXsL_NtNtCs6JMX4GRUq9U_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit

bb.ak:                                            ; preds = %.lr.ph
  %i.fy = zext nneg i8 %i.fm to i32
  br label %_RNvXsL_NtNtCs6JMX4GRUq9U_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit14.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit12.i
  %i.fz = icmp ne ptr %i.fr, %i.fa
  call void @llvm.assume(i1 %i.fz)
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0199.0321, i64 3 ; 3 uses
  %i.gb = load i8, ptr %i.fr, align 1, !noalias !2818, !noundef !5
  %i.gc = shl nuw nsw i32 %i.fv, 6
  %i.gd = and i8 %i.gb, 63
  %i.ge = zext nneg i8 %i.gd to i32
  %i.gf = or disjoint i32 %i.gc, %i.ge            ; 2 uses
  %i.gg = shl nuw nsw i32 %i.fp, 12
  %i.gh = or disjoint i32 %i.gf, %i.gg
  %i.gi = icmp samesign ugt i8 %i.fm, -17
  br i1 %i.gi, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit16.i, label %_RNvXsL_NtNtCs6JMX4GRUq9U_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit16.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit14.i
  %i.gj = icmp ne ptr %i.ga, %i.fa
  call void @llvm.assume(i1 %i.gj)
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0199.0321, i64 4
  %i.gl = load i8, ptr %i.ga, align 1, !noalias !2818, !noundef !5
  %i.gm = shl nuw nsw i32 %i.fp, 18
  %i.gn = and i32 %i.gm, 1835008
  %i.go = shl nuw nsw i32 %i.gf, 6
  %i.gp = and i8 %i.gl, 63
  %i.gq = zext nneg i8 %i.gp to i32
  %i.gr = or disjoint i32 %i.go, %i.gq
  %i.gs = or disjoint i32 %i.gr, %i.gn
  br label %_RNvXsL_NtNtCs6JMX4GRUq9U_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit

_RNvXsL_NtNtCs6JMX4GRUq9U_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.ak, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit12.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit16.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit14.i
  %.sroa.0199.1.ph = phi ptr [ %i.fr, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit12.i ], [ %i.ga, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit14.i ], [ %i.gk, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit16.i ], [ %i.fl, %bb.ak ] ; 2 uses
  %.sroa.4.0.i.ph = phi i32 [ %i.fw, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit12.i ], [ %i.gh, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit14.i ], [ %i.gs, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit16.i ], [ %i.fy, %bb.ak ] ; 2 uses
  %i.gt = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  call void @llvm.assume(i1 %i.gt)
  %i.gu = icmp eq ptr %.sroa.0199.1.ph, %i.fa
  br i1 %i.gu, label %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs41JD7yXDh97_6uu_env.exit.loopexit, label %.lr.ph

bb.al:                                            ; preds = %.lr.ph.i.i152
  br i1 %.not.i140, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit155.thread, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs41JD7yXDh97_6uu_env.exit161

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs41JD7yXDh97_6uu_env.exit161: ; preds = %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit155, %bb.al
  %.sroa.047.2257265273 = phi i1 [ %.sroa.047.2258392, %bb.al ], [ %.sroa.047.2, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit155 ] ; 2 uses
  %i.gv = load i16, ptr %i.dk, align 1
  %i.gw = icmp ne i16 29997, %i.gv
  %i.gx = zext i1 %i.gw to i32
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs41JD7yXDh97_6uu_env.exit169, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit155.thread

_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit155.thread: ; preds = %bb.aj, %3, %bb.al, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs41JD7yXDh97_6uu_env.exit169, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs41JD7yXDh97_6uu_env.exit161, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit155
  %.sroa.047.2257261 = phi i1 [ %.sroa.047.2258392, %bb.al ], [ %.sroa.047.2257265273, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs41JD7yXDh97_6uu_env.exit169 ], [ %.sroa.047.2257265273, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs41JD7yXDh97_6uu_env.exit161 ], [ %.sroa.047.2, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit155 ], [ false, %3 ], [ %.sroa.047.2258392, %bb.aj ]
  %.val125 = load ptr, ptr %i.ah, align 8, !nonnull !5, !noundef !5
  %.val126 = load i64, ptr %i.aj, align 8, !noundef !5 ; 6 uses
  %i.gz = icmp eq i64 %.val126, 0
  br i1 %i.gz, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit164, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i162

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i162: ; preds = %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit155.thread
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2819
  %i.ha = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val126, i64 noundef range(i64 1, 9) 1) #26, !noalias !2819 ; 3 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i162
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val126) #30, !noalias !2820
  unreachable

bb.an:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i162
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ha, ptr nonnull readonly align 1 %.val125, i64 range(i64 0, -9223372036854775808) %.val126, i1 false), !noalias !2821
  br label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit164

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit164: ; preds = %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit155.thread, %bb.an
  %.sroa.5227.0 = phi ptr [ %i.ha, %bb.an ], [ inttoptr (i64 1 to ptr), %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit155.thread ]
  %i.hc = load i64, ptr %i.p, align 8, !alias.scope !2822, !noundef !5 ; 3 uses
  %i.hd = load i64, ptr %i.n, align 8, !range !6, !alias.scope !2822, !noundef !5
  %i.he = icmp eq i64 %i.hc, %i.hd
  br i1 %i.he, label %bb.ao, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8push_mutCs41JD7yXDh97_6uu_env.exit165

bb.ao:                                            ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit164
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #27, !noalias !2823
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8push_mutCs41JD7yXDh97_6uu_env.exit165

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8push_mutCs41JD7yXDh97_6uu_env.exit165: ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs41JD7yXDh97_6uu_env.exit164, %bb.ao
  %i.hf = load ptr, ptr %i.o, align 8, !alias.scope !2822, !nonnull !5, !noundef !5
  %i.hg = getelementptr inbounds nuw [24 x i8], ptr %i.hf, i64 %i.hc ; 3 uses
  store i64 %.val126, ptr %i.hg, align 8
  %.sroa.4233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store ptr %.sroa.5227.0, ptr %.sroa.4233.0..sroa_idx, align 8
  %.sroa.5234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store i64 %.val126, ptr %.sroa.5234.0..sroa_idx, align 8
  %i.hh = add i64 %i.hc, 1
  store i64 %i.hh, ptr %i.p, align 8, !alias.scope !2822
  br label %bb.bk

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs41JD7yXDh97_6uu_env.exit169: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs41JD7yXDh97_6uu_env.exit161
  %i.hi = load i16, ptr %i.dk, align 1
  %i.hj = icmp ne i16 11565, %i.hi
  %i.hk = zext i1 %i.hj to i32
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit155.thread, label %bb.ap

bb.ap:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs41JD7yXDh97_6uu_env.exit169
  %i.hm = call fastcc { i64, i64 } @_RINvMNtCs6JMX4GRUq9U_4core3stre4findcECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dk, i64 noundef %i.dl) #29 ; 2 uses
  %i.hn = extractvalue { i64, i64 } %i.hm, 0
  %i.ho = extractvalue { i64, i64 } %i.hm, 1      ; 8 uses
  %i.hp = trunc nuw i64 %i.hn to i1
  br i1 %i.hp, label %bb.aq, label %bb.at, !prof !9

bb.aq:                                            ; preds = %bb.ap
  %i.hq = icmp eq i64 %i.ho, 0
  br i1 %i.hq, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not.i170 = icmp ult i64 %i.ho, %i.dl
  br i1 %.not.i170, label %bb.as, label %.split.i

.split.i:                                         ; preds = %bb.ar
  %i.hr = icmp eq i64 %i.ho, %i.dl
  br i1 %i.hr, label %bb.au, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.hs = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ho
  %i.ht = load i8, ptr %i.hs, align 1, !alias.scope !2824, !noundef !5
  %i.hu = icmp sgt i8 %i.ht, -65
  br i1 %i.hu, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.ap
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #28
  unreachable

bb.au:                                            ; preds = %bb.as, %.split.i, %bb.aq
  %i.hv = sub nuw i64 %i.dl, %i.ho                ; 6 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.476.0..sroa_idx, align 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.577.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.hv, i64 noundef 1, i64 noundef 1) #26
  %i.hx = load i64, ptr %i.b, align 8, !range !14, !noundef !5
  %i.hy = trunc nuw i64 %i.hx to i1
  %i.hz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ia = load i64, ptr %i.hz, align 8, !range !15, !noundef !5 ; 5 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.hy, label %bb.aw, label %bb.ax, !prof !10

bb.av:                                            ; preds = %bb.as, %.split.i
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dk, i64 noundef %i.dl, i64 noundef %i.ho, i64 noundef %i.dl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @134) #28
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.ic = load i64, ptr %i.ib, align 8
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.ia, i64 %i.ic) #30
  unreachable

bb.ax:                                            ; preds = %bb.au
  %i.id = load ptr, ptr %i.ib, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.ie = icmp ule i64 %i.hv, %i.ia
  call void @llvm.assume(i1 %i.ie)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not108 = icmp eq i64 %i.dl, %i.ho
  br i1 %.not108, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.az, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call fastcc void @_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.id, i64 noundef %i.hv) #29
  %i.if = load i8, ptr %i.f, align 8, !range !16, !noundef !5
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %bb.ba, label %bb.bb

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.id, ptr nonnull align 1 %i.hw, i64 %i.hv, i1 false)
  br label %bb.ay

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.id, i64 noundef %i.hv) #27
  %i.ih = load i8, ptr %i.e, align 8, !range !16, !noundef !5
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %bb.be, label %bb.bf

bb.bb:                                            ; preds = %bb.ay
  %i.ij = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ik = load i64, ptr %i.ij, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 4, i64 noundef %i.ik) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bf, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.il = icmp eq i64 %i.ia, 0
  br i1 %i.il, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.id, i64 noundef %i.ia, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2825
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit

bb.be:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.ia, ptr %i.d, align 8
  %.sroa.5203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.id, ptr %.sroa.5203.0..sroa_idx, align 8
  %.sroa.8204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.hv, ptr %.sroa.8204.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit

bb.bf:                                            ; preds = %bb.ba
  %i.im = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.in = load double, ptr %i.im, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 4, double noundef %i.in) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bc

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit: ; preds = %bb.bd, %bb.bc, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.io = call fastcc noundef nonnull align 8 ptr @_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit(i64 noundef 32) #29 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.io, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %.sroa.4224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  store i32 125, ptr %.sroa.4224.0..sroa_idx, align 8
  br label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CowShEECs41JD7yXDh97_6uu_env.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit, %bb.y, %bb.u, %bb.q, %bb.m
  %.sink446 = phi ptr [ %i.ku, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CowShEECs41JD7yXDh97_6uu_env.exit ], [ %i.io, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit ], [ %i.ca, %bb.y ], [ %i.bw, %bb.u ], [ %i.bs, %bb.q ], [ %i.bl, %bb.m ]
  %.sink444 = phi ptr [ %i.kv, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CowShEECs41JD7yXDh97_6uu_env.exit ], [ @35, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit ], [ %i.cb, %bb.y ], [ %i.bx, %bb.u ], [ %i.bt, %bb.q ], [ %i.bp, %bb.m ]
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink446, ptr %i.ip, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink444, ptr %i.iq, align 8
  store i64 -1, ptr %0, align 8
  %.val114 = load i64, ptr %i.m, align 8, !range !12, !noundef !5 ; 2 uses
  %i.ir = icmp sgt i64 %.val114, 0
  br i1 %i.ir, label %bb.bh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs41JD7yXDh97_6uu_env.exit174

bb.bh:                                            ; preds = %bb.bg
  %.val115 = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val115, i64 noundef %.val114, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2826
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs41JD7yXDh97_6uu_env.exit174

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs41JD7yXDh97_6uu_env.exit174: ; preds = %bb.bg, %bb.bh
end_hunk_0
