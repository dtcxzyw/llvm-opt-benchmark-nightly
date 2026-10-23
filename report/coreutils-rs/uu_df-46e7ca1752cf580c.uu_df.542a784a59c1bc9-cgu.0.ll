Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_df-46e7ca1752cf580c.uu_df.542a784a59c1bc9-cgu.0?download=true
inline.NumInlined: 1449
inline.NumDeleted: 844
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write:bb.a
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge.i

_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCss03989lGqH_5uu_df.exit: ; preds = %bb.j, %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit17.i
  %storemerge.i = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit17.i ]
  store i64 %storemerge.i, ptr %i.d, align 8, !alias.scope !2998
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs2_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtB5_6UError4code(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !noundef !6
  ret i32 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_Css03989lGqH_5uu_dfNtB5_12OptionsErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 10 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 8 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [16 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 10 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 10 uses
  %i.ap = alloca [24 x i8], align 8               ; 7 uses
  %i.aq = load i64, ptr %0, align 8, !range !13, !noundef !6
  switch i64 %i.aq, label %default.unreachable566 [
    i64 0, label %bb.b
    i64 1, label %bb.d
    i64 2, label %bb.f
    i64 3, label %.split
    i64 4, label %bb.i
  ]

default.unreachable566:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i64 0, ptr %i.ao, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar) #28
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.av = load i64, ptr %i.au, align 8, !noundef !6 ; 14 uses
  %.not.i = icmp slt i64 %i.av, 0
  br i1 %.not.i, label %bb.al, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.aw = icmp eq i64 %i.av, 0                    ; 2 uses
  br i1 %i.aw, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit.thread366, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !3100
  %i.ax = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !3100 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.al, label %bb.ba

bb.d:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 0, ptr %i.ah, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 0, ptr %.sroa.57.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az) #28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !6 ; 14 uses
  %.not.i116 = icmp slt i64 %i.bd, 0
  br i1 %.not.i116, label %bb.bh, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.be = icmp eq i64 %i.bd, 0                    ; 2 uses
  br i1 %i.be, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit119.thread374, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i117

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i117: ; preds = %bb.e
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !3101
  %i.bf = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.bd, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !3101 ; 3 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.bh, label %bb.bw

bb.f:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 0, ptr %i.aa, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 0, ptr %.sroa.54.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh) #28
  %i.bi = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !6 ; 14 uses
  %.not.i120 = icmp slt i64 %i.bl, 0
  br i1 %.not.i120, label %bb.cc, label %bb.g, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.bm = icmp eq i64 %i.bl, 0                    ; 2 uses
  br i1 %i.bm, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit123.thread382, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i121

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i121: ; preds = %bb.g
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !3102
  %i.bn = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.bl, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !3102 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.cc, label %bb.cr

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bp, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 0, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.u, ptr %i.q, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRNtNtCss03989lGqH_5uu_df7columns11ColumnErrorNtB6_7Display3fmtBA_, ptr %.sroa.469.0..sroa_idx, align 8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noundef nonnull @157, ptr noundef nonnull %i.q) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.sroa.0304.0.copyload = load i64, ptr %i.r, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx305 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx305, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.not.i124 = icmp slt i64 %.sroa.6.0.copyload, 0
  br i1 %.not.i124, label %bb.cx, label %bb.h, !prof !12

bb.h:                                             ; preds = %.split
  %i.bq = icmp eq i64 %.sroa.6.0.copyload, 0      ; 2 uses
  br i1 %i.bq, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit127.thread390, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i125

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i125: ; preds = %bb.h
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !3103
  %i.br = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %.sroa.6.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !3103 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.cx, label %bb.dm

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !6, !noundef !6
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !6 ; 5 uses
  %.idx = mul nuw i64 %i.bw, 24                   ; 6 uses
  %i.bx = icmp eq i64 %i.bw, 0                    ; 2 uses
  br i1 %i.bx, label %_RINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehNtNtB4_6string6StringECss03989lGqH_5uu_df.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !3104
  %i.by = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %.idx, i64 noundef range(i64 1, 9) 8) #28, !noalias !3104 ; 7 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx) #31, !noalias !3105
  unreachable

bb.k:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.l

bb.l:                                             ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtCs7tKScEop1B6_5alloc6string6StringBV_uNCNvXs4_Css03989lGqH_5uu_dfNtB1J_12OptionsErrorNtNtBa_3fmt7Display3fmt0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtBZ_3vecINtB3P_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1B_EE0E0E0B1J_.exit.i.i.i.i.i.i, %bb.k
  %i.ce = phi i64 [ 0, %bb.k ], [ %i.eo, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtCs7tKScEop1B6_5alloc6string6StringBV_uNCNvXs4_Css03989lGqH_5uu_dfNtB1J_12OptionsErrorNtNtBa_3fmt7Display3fmt0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtBZ_3vecINtB3P_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1B_EE0E0E0B1J_.exit.i.i.i.i.i.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %i.ce ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  %.val11.i.i.i.i.i.i = load ptr, ptr %i.cg, align 8, !noalias !3106, !nonnull !6, !noundef !6
  %i.ch = getelementptr i8, ptr %i.cf, i64 16
  %.val12.i.i.i.i.i.i = load i64, ptr %i.ch, align 8, !noalias !3106, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3107
  store i64 0, ptr %i.i, align 8, !noalias !3107
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !3107
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !3107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3107
  store i64 0, ptr %i.h, align 8, !noalias !3107
  store ptr %.val11.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !3107
  store i64 %.val12.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !3107
  store i8 1, ptr %i.ca, align 8, !noalias !3107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3108
  store i64 0, ptr %i.d, align 8, !noalias !3108
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !3108
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !3108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3108
  store i64 1610612768, ptr %i.cb, align 8, !noalias !3108
  store ptr %i.d, ptr %i.c, align 8, !noalias !3108
  store ptr @200, ptr %i.cc, align 8, !noalias !3108
  %i.ci = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #28, !noalias !3109
  br i1 %i.ci, label %bb.m, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCss03989lGqH_5uu_df.exit.i.i.i.i.i.i.i.i, !prof !11

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @201, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @109, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #29, !noalias !3109
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCss03989lGqH_5uu_df.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !3110 ; 3 uses
  %.sroa.5.0.copyload4.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !3110, !nonnull !6, !noundef !6 ; 8 uses
  %.sroa.8.0.copyload7.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !3110 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3107
  switch i64 %.sroa.8.0.copyload7.i.i.i.i.i.i.i.i, label %thread-pre-split.i.i.i.i.i.i.i.i.i [
    i64 0, label %.loopexit.i.i.i.i.i.i.i.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCss03989lGqH_5uu_df.exit.i.i.i.i.i.i.i.i
  %i.cj = load i8, ptr %.sroa.5.0.copyload4.i.i.i.i.i.i.i.i, align 1, !alias.scope !3111, !noalias !3107, !noundef !6 ; 2 uses
  switch i8 %i.cj, label %bb.o [
    i8 43, label %.loopexit.i.i.i.i.i.i.i.i
    i8 45, label %.loopexit.i.i.i.i.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i.i.i.i.i:               ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCss03989lGqH_5uu_df.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.5.0.copyload4.i.i.i.i.i.i.i.i, align 1, !alias.scope !3111, !noalias !3107
  br label %bb.o

bb.o:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i, %bb.n
  %i.ck = phi i8 [ %.pr.i.i.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i.i.i ], [ %i.cj, %bb.n ]
  switch i8 %i.ck, label %bb.v [
    i8 43, label %bb.p
    i8 45, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload4.i.i.i.i.i.i.i.i, i64 1
  %i.cm = add nsw i64 %.sroa.8.0.copyload7.i.i.i.i.i.i.i.i, -1
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload4.i.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.co = add nsw i64 %.sroa.8.0.copyload7.i.i.i.i.i.i.i.i, -1 ; 3 uses
  %i.cp = icmp samesign ult i64 %.sroa.8.0.copyload7.i.i.i.i.i.i.i.i, 17
  br i1 %i.cp, label %.preheader114.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.preheader114.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.q
  %.not103137.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.co, 0
  br i1 %.not103137.i.i.i.i.i.i.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i.i.i.i.i.i, label %.lr.ph141.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.q, %bb.t
  %.sroa.0.1136.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cq, %bb.t ], [ %i.cn, %bb.q ] ; 2 uses
  %.sroa.26.1135.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cr, %bb.t ], [ %i.co, %bb.q ]
  %.sroa.084.0134.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dc, %bb.t ], [ 0, %bb.q ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i.i.i.i.i.i.i.i, i64 1
  %i.cr = add nsw i64 %.sroa.26.1135.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.cs = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i.i.i.i.i.i.i.i, i64 10) ; 2 uses
  %i.ct = extractvalue { i64, i1 } %i.cs, 0
  %i.cu = extractvalue { i64, i1 } %i.cs, 1
  br i1 %i.cu, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.r, !prof !11

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cv = load i8, ptr %.sroa.0.1136.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !3111, !noalias !3107, !noundef !6
  %i.cw = zext i8 %i.cv to i32
  %i.cx = add nsw i32 %i.cw, -48                  ; 2 uses
  %i.cy = icmp ult i32 %i.cx, 10
  br i1 %i.cy, label %bb.s, label %.loopexit.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.cz = zext nneg i32 %i.cx to i64
  %i.da = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ct, i64 %i.cz) ; 2 uses
  %i.db = extractvalue { i64, i1 } %i.da, 1
  br i1 %i.db, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.t, !prof !11

bb.t:                                             ; preds = %bb.s
  %i.dc = extractvalue { i64, i1 } %i.da, 0       ; 2 uses
  %.not102.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not102.i.i.i.i.i.i.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph141.i.i.i.i.i.i.i.i.i:                      ; preds = %.preheader114.i.i.i.i.i.i.i.i.i, %bb.u
  %.sroa.0.2140.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dj, %bb.u ], [ %i.cn, %.preheader114.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.26.2139.i.i.i.i.i.i.i.i.i = phi i64 [ %i.di, %bb.u ], [ %i.co, %.preheader114.i.i.i.i.i.i.i.i.i ]
  %.sroa.084.2138.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dl, %bb.u ], [ 0, %.preheader114.i.i.i.i.i.i.i.i.i ]
  %i.dd = load i8, ptr %.sroa.0.2140.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !3111, !noalias !3107, !noundef !6
  %i.de = zext i8 %i.dd to i32
  %i.df = add nsw i32 %i.de, -48                  ; 2 uses
  %i.dg = icmp ult i32 %i.df, 10
  br i1 %i.dg, label %bb.u, label %.loopexit.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %.lr.ph141.i.i.i.i.i.i.i.i.i
  %i.dh = mul i64 %.sroa.084.2138.i.i.i.i.i.i.i.i.i, 10
  %i.di = add nsw i64 %.sroa.26.2139.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i.i.i.i.i.i.i.i, i64 1
  %i.dk = zext nneg i32 %i.df to i64
  %i.dl = sub i64 %i.dh, %i.dk                    ; 2 uses
  %.not103.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.di, 0
  br i1 %.not103.i.i.i.i.i.i.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i.i.i.i.i.i, label %.lr.ph141.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.p, %bb.o
  %.sroa.26.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cm, %bb.p ], [ %.sroa.8.0.copyload7.i.i.i.i.i.i.i.i, %bb.o ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cl, %bb.p ], [ %.sroa.5.0.copyload4.i.i.i.i.i.i.i.i, %bb.o ] ; 2 uses
  %i.dm = icmp samesign ult i64 %.sroa.26.0.i.i.i.i.i.i.i.i.i, 16
  br i1 %i.dm, label %.preheader.i.i.i.i.i.i.i.i.i, label %.preheader111.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.v
  %.not105146.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not105146.i.i.i.i.i.i.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i.i.i.i.i.i, label %.lr.ph150.i.i.i.i.i.i.i.i.i

.preheader111.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.v, %bb.y
  %.sroa.0.3145.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dn, %bb.y ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %bb.v ] ; 2 uses
  %.sroa.26.3144.i.i.i.i.i.i.i.i.i = phi i64 [ %i.do, %bb.y ], [ %.sroa.26.0.i.i.i.i.i.i.i.i.i, %bb.v ]
  %.sroa.084.3143.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dz, %bb.y ], [ 0, %bb.v ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i.i.i.i.i.i.i.i, i64 1
  %i.do = add nsw i64 %.sroa.26.3144.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.dp = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i.i.i.i.i.i.i.i, i64 10) ; 2 uses
  %i.dq = extractvalue { i64, i1 } %i.dp, 0
  %i.dr = extractvalue { i64, i1 } %i.dp, 1
  br i1 %i.dr, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.w, !prof !11

bb.w:                                             ; preds = %.preheader111.i.i.i.i.i.i.i.i.i
  %i.ds = load i8, ptr %.sroa.0.3145.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !3111, !noalias !3107, !noundef !6
  %i.dt = zext i8 %i.ds to i32
  %i.du = add nsw i32 %i.dt, -48                  ; 2 uses
  %i.dv = icmp ult i32 %i.du, 10
  br i1 %i.dv, label %bb.x, label %.loopexit.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.dw = zext nneg i32 %i.du to i64
  %i.dx = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.dq, i64 %i.dw) ; 2 uses
  %i.dy = extractvalue { i64, i1 } %i.dx, 1
  br i1 %i.dy, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.y, !prof !11

bb.y:                                             ; preds = %bb.x
  %i.dz = extractvalue { i64, i1 } %i.dx, 0       ; 2 uses
  %.not104.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.do, 0
  br i1 %.not104.i.i.i.i.i.i.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i.i.i.i.i.i, label %.preheader111.i.i.i.i.i.i.i.i.i

.lr.ph150.i.i.i.i.i.i.i.i.i:                      ; preds = %.preheader.i.i.i.i.i.i.i.i.i, %bb.z
  %.sroa.0.4149.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eg, %bb.z ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.26.4148.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ef, %bb.z ], [ %.sroa.26.0.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ]
  %.sroa.084.4147.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ei, %bb.z ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i ]
  %i.ea = load i8, ptr %.sroa.0.4149.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !3111, !noalias !3107, !noundef !6
  %i.eb = zext i8 %i.ea to i32
  %i.ec = add nsw i32 %i.eb, -48                  ; 2 uses
  %i.ed = icmp ult i32 %i.ec, 10
  br i1 %i.ed, label %bb.z, label %.loopexit.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %.lr.ph150.i.i.i.i.i.i.i.i.i
  %i.ee = mul i64 %.sroa.084.4147.i.i.i.i.i.i.i.i.i, 10
  %i.ef = add nsw i64 %.sroa.26.4148.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i.i.i.i.i.i.i.i, i64 1
  %i.eh = zext nneg i32 %i.ec to i64
  %i.ei = add i64 %i.ee, %i.eh                    ; 2 uses
  %.not105.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not105.i.i.i.i.i.i.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i.i.i.i.i.i, label %.lr.ph150.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.s, %bb.r, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph141.i.i.i.i.i.i.i.i.i, %bb.x, %bb.w, %.preheader111.i.i.i.i.i.i.i.i.i, %.lr.ph150.i.i.i.i.i.i.i.i.i, %bb.n, %bb.n, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCss03989lGqH_5uu_df.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3107
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload4.i.i.i.i.i.i.i.i, i64 noundef %.sroa.8.0.copyload7.i.i.i.i.i.i.i.i) #27, !noalias !3107
  %i.ej = load i8, ptr %i.g, align 8, !range !14, !noalias !3107, !noundef !6
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.ac, label %bb.ad

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.u, %bb.y, %bb.z, %.preheader.i.i.i.i.i.i.i.i.i, %.preheader114.i.i.i.i.i.i.i.i.i
  %.sroa.1511.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ei, %bb.z ], [ %i.dl, %bb.u ], [ %i.dz, %bb.y ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader114.i.i.i.i.i.i.i.i.i ], [ %i.dc, %bb.t ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECss03989lGqH_5uu_df(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 4, i64 noundef %.sroa.1511.0.i.i.i.i.i.i.i.i) #28, !noalias !3107
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ad, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !3107
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 51, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e) #28, !noalias !3112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3107
  %i.el = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, 0
  br i1 %i.el, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtCs7tKScEop1B6_5alloc6string6StringBV_uNCNvXs4_Css03989lGqH_5uu_dfNtB1J_12OptionsErrorNtNtBa_3fmt7Display3fmt0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtBZ_3vecINtB3P_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1B_EE0E0E0B1J_.exit.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload4.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !3113
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtCs7tKScEop1B6_5alloc6string6StringBV_uNCNvXs4_Css03989lGqH_5uu_dfNtB1J_12OptionsErrorNtNtBa_3fmt7Display3fmt0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtBZ_3vecINtB3P_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1B_EE0E0E0B1J_.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3107
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, ptr %i.f, align 8, !noalias !3107
  store ptr %.sroa.5.0.copyload4.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i, align 8, !noalias !3107
  store i64 %.sroa.8.0.copyload7.i.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !3107
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f) #28, !noalias !3107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !3107
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 51, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e) #28, !noalias !3112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3107
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtCs7tKScEop1B6_5alloc6string6StringBV_uNCNvXs4_Css03989lGqH_5uu_dfNtB1J_12OptionsErrorNtNtBa_3fmt7Display3fmt0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtBZ_3vecINtB3P_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1B_EE0E0E0B1J_.exit.i.i.i.i.i.i

bb.ad:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i
  %i.em = load double, ptr %i.cd, align 8, !noalias !3107, !noundef !6
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECss03989lGqH_5uu_df(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 4, double noundef %i.em) #28, !noalias !3107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3107
  br label %bb.aa

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtCs7tKScEop1B6_5alloc6string6StringBV_uNCNvXs4_Css03989lGqH_5uu_dfNtB1J_12OptionsErrorNtNtBa_3fmt7Display3fmt0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtBZ_3vecINtB3P_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1B_EE0E0E0B1J_.exit.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3107
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %i.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !3112
  %i.eo = add nuw i64 %i.ce, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3106
  %i.ep = icmp eq i64 %i.eo, %i.bw
  br i1 %i.ep, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterB13_ENCNvXs4_Css03989lGqH_5uu_dfNtB3l_12OptionsErrorNtNtB22_3fmt7Display3fmt0EE9from_iterB3l_.exit, label %bb.l

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterB13_ENCNvXs4_Css03989lGqH_5uu_dfNtB3l_12OptionsErrorNtNtB22_3fmt7Display3fmt0EE9from_iterB3l_.exit: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtCs7tKScEop1B6_5alloc6string6StringBV_uNCNvXs4_Css03989lGqH_5uu_dfNtB1J_12OptionsErrorNtNtBa_3fmt7Display3fmt0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtBZ_3vecINtB3P_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1B_EE0E0E0B1J_.exit.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3114)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 2 uses
  %i.es = getelementptr i8, ptr %i.by, i64 8
  %.val.i = load ptr, ptr %i.es, align 8, !alias.scope !3114, !nonnull !6, !noundef !6
  %i.et = getelementptr i8, ptr %i.by, i64 16
  %.val75.i = load i64, ptr %i.et, align 8, !alias.scope !3114, !noundef !6 ; 6 uses
  %gepdiff.i = add nsw i64 %.idx, -24
  %i.eu = udiv exact i64 %gepdiff.i, 24
  %i.ev = mul nuw nsw i64 %i.eu, 5                ; 2 uses
  %i.ew = add i64 %.val75.i, %i.ev                ; 3 uses
  %i.ex = icmp ult i64 %i.ew, %i.ev
  br i1 %i.ex, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECss03989lGqH_5uu_df.exit.i, label %.preheader.i.preheader, !prof !11

.preheader.i.preheader:                           ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterB13_ENCNvXs4_Css03989lGqH_5uu_dfNtB3l_12OptionsErrorNtNtB22_3fmt7Display3fmt0EE9from_iterB3l_.exit
  %i.ey = icmp samesign eq i64 %.idx, 24
  br i1 %i.ey, label %.preheader.i._crit_edge, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %i.ez = getelementptr inbounds nuw i8, ptr %i.fb, i64 24 ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.eq
  br i1 %i.fa, label %.preheader.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.01.0.i.i669 = phi i64 [ %i.fd, %.preheader.i ], [ %i.ew, %.preheader.i.preheader ] ; 2 uses
  %i.fb = phi ptr [ %i.ez, %.preheader.i ], [ %i.er, %.preheader.i.preheader ] ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 16
  %.val8.i.i = load i64, ptr %i.fc, align 8, !alias.scope !3114, !noalias !3115, !noundef !6
  %i.fd = add i64 %.val8.i.i, %.sroa.01.0.i.i669  ; 3 uses
  %i.fe = icmp ult i64 %i.fd, %.sroa.01.0.i.i669
  br i1 %i.fe, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECss03989lGqH_5uu_df.exit.i, label %.preheader.i

.preheader.i._crit_edge:                          ; preds = %.preheader.i, %.preheader.i.preheader
  %.sroa.01.0.i.i.lcssa = phi i64 [ %i.ew, %.preheader.i.preheader ], [ %i.fd, %.preheader.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3116
  %.not.i.i.i128 = icmp slt i64 %.sroa.01.0.i.i.lcssa, 0
  br i1 %.not.i.i.i128, label %bb.af, label %bb.ae, !prof !12

bb.ae:                                            ; preds = %.preheader.i._crit_edge
  %i.ff = icmp eq i64 %.sroa.01.0.i.i.lcssa, 0
  br i1 %i.ff, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i129

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i129: ; preds = %bb.ae
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !3117
  %i.fg = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %.sroa.01.0.i.i.lcssa, i64 noundef range(i64 1, 9) 1) #28, !noalias !3117 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.af, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i

bb.af:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i129, %.preheader.i._crit_edge
  %.sroa.4.0.ph.i.i130 = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i129 ], [ 0, %.preheader.i._crit_edge ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i130, i64 %.sroa.01.0.i.i.lcssa) #31, !noalias !3116
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i129, %bb.ae
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.ae ], [ %i.fg, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i129 ] ; 3 uses
  store i64 %.sroa.01.0.i.i.lcssa, ptr %i.b, align 8, !noalias !3116
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i, ptr %i.fi, align 8, !noalias !3116
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.fj, align 8, !noalias !3116
  call void @llvm.experimental.noalias.scope.decl(metadata !3118)
  call void @llvm.experimental.noalias.scope.decl(metadata !3119)
  %i.fk = icmp ugt i64 %.val75.i, %.sroa.01.0.i.i.lcssa
  br i1 %i.fk, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCss03989lGqH_5uu_df.exit.thread.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCss03989lGqH_5uu_df.exit.i.i.i, !prof !11

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCss03989lGqH_5uu_df.exit.thread.i.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECss03989lGqH_5uu_df(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %.val75.i, i64 noundef 1, i64 noundef 1) #28, !noalias !3116
  %i.fl = load i64, ptr %i.fj, align 8, !alias.scope !3120, !noalias !3116, !noundef !6 ; 2 uses
  %i.fm = icmp sgt i64 %i.fl, -1
  call void @llvm.assume(i1 %i.fm)
  %.pre.i = load ptr, ptr %i.fi, align 8, !alias.scope !3120, !noalias !3116
  br label %bb.ag

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCss03989lGqH_5uu_df.exit.i.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i
  %.not.i.i76.i = icmp samesign eq i64 %.val75.i, 0
  br i1 %.not.i.i76.i, label %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCss03989lGqH_5uu_df.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCss03989lGqH_5uu_df.exit.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCss03989lGqH_5uu_df.exit.thread.i.i.i
  %i.fn = phi ptr [ %.pre.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCss03989lGqH_5uu_df.exit.thread.i.i.i ], [ %.sroa.10.0.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCss03989lGqH_5uu_df.exit.i.i.i ] ; 2 uses
  %i.fo = phi i64 [ %i.fl, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCss03989lGqH_5uu_df.exit.thread.i.i.i ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCss03989lGqH_5uu_df.exit.i.i.i ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fp, ptr nonnull readonly align 1 %.val.i, i64 %.val75.i, i1 false), !noalias !3121
  br label %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCss03989lGqH_5uu_df.exit.i

_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCss03989lGqH_5uu_df.exit.i: ; preds = %bb.ag, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCss03989lGqH_5uu_df.exit.i.i.i
  %i.fq = phi ptr [ %i.fn, %bb.ag ], [ %.sroa.10.0.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCss03989lGqH_5uu_df.exit.i.i.i ]
  %i.fr = phi i64 [ %i.fo, %bb.ag ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCss03989lGqH_5uu_df.exit.i.i.i ]
  %i.fs = add i64 %i.fr, %.val75.i                ; 3 uses
  %i.ft = icmp sgt i64 %i.fs, -1
  call void @llvm.assume(i1 %i.ft)
  %i.fu = sub nsw i64 %.sroa.01.0.i.i.lcssa, %i.fs ; 2 uses
  %i.fv = icmp eq i64 %i.bw, 1
  br i1 %i.fv, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCss03989lGqH_5uu_df.exit.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fs
  br label %.lr.ph.i

_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECss03989lGqH_5uu_df.exit.i: ; preds = %.lr.ph, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterB13_ENCNvXs4_Css03989lGqH_5uu_dfNtB3l_12OptionsErrorNtNtB22_3fmt7Display3fmt0EE9from_iterB3l_.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #29, !noalias !3116
  unreachable

.lr.ph.i:                                         ; preds = %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECss03989lGqH_5uu_df.exit.i, %.lr.ph.preheader.i
  %.sroa.012.513.i = phi ptr [ %i.fx, %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECss03989lGqH_5uu_df.exit.i ], [ %i.er, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.035.612.i = phi ptr [ %i.gc, %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECss03989lGqH_5uu_df.exit.i ], [ %i.fw, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.26.611.i = phi i64 [ %i.gd, %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECss03989lGqH_5uu_df.exit.i ], [ %i.fu, %.lr.ph.preheader.i ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.012.513.i, i64 24 ; 2 uses
  %i.fy = getelementptr i8, ptr %.sroa.012.513.i, i64 8
  %.sroa.012.5.val.i = load ptr, ptr %i.fy, align 8, !alias.scope !3114, !nonnull !6, !noundef !6
  %i.fz = getelementptr i8, ptr %.sroa.012.513.i, i64 16
  %.sroa.012.5.val74.i = load i64, ptr %i.fz, align 8, !alias.scope !3114, !noundef !6 ; 4 uses
  %.not.i.i = icmp ult i64 %.sroa.26.611.i, 5
  br i1 %.not.i.i, label %bb.ah, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCss03989lGqH_5uu_df.exit.i, !prof !11

bb.ah:                                            ; preds = %.lr.ph.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @105, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #29, !noalias !3122
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCss03989lGqH_5uu_df.exit.i: ; preds = %.lr.ph.i
  %i.ga = add nsw i64 %.sroa.26.611.i, -5         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.035.612.i, ptr noundef nonnull align 1 dereferenceable(5) @195, i64 5, i1 false), !alias.scope !3123, !noalias !3116
  %.not.i77.i = icmp ugt i64 %.sroa.012.5.val74.i, %i.ga
  br i1 %.not.i77.i, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECss03989lGqH_5uu_df.exit.i, !prof !11

bb.ai:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCss03989lGqH_5uu_df.exit.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @105, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #29, !noalias !3124
  unreachable

_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECss03989lGqH_5uu_df.exit.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCss03989lGqH_5uu_df.exit.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.035.612.i, i64 5 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.sroa.012.5.val74.i
  %i.gd = sub nuw nsw i64 %i.ga, %.sroa.012.5.val74.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gb, ptr nonnull readonly align 1 %.sroa.012.5.val.i, i64 range(i64 0, -9223372036854775808) %.sroa.012.5.val74.i, i1 false), !alias.scope !3125, !noalias !3116
  %i.ge = icmp eq ptr %i.fx, %i.eq
  br i1 %i.ge, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECss03989lGqH_5uu_df.exit.i, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCss03989lGqH_5uu_df.exit.i
  %.sroa.26.6.lcssa.i = phi i64 [ %i.fu, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCss03989lGqH_5uu_df.exit.i ], [ %i.gd, %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECss03989lGqH_5uu_df.exit.i ]
  %i.gf = sub i64 %.sroa.01.0.i.i.lcssa, %.sroa.26.6.lcssa.i
  %.sroa.0329.0.copyload330 = load i64, ptr %i.b, align 8, !noalias !3114
  %.sroa.5331.0.copyload333 = load ptr, ptr %i.fi, align 8, !noalias !3114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3116
  br label %_RINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehNtNtB4_6string6StringECss03989lGqH_5uu_df.exit

_RINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehNtNtB4_6string6StringECss03989lGqH_5uu_df.exit: ; preds = %bb.i, %._crit_edge.i
  %.idx.i364 = phi i64 [ %.idx, %._crit_edge.i ], [ 0, %bb.i ]
  %.sroa.10.0.i38.i362 = phi ptr [ %i.by, %._crit_edge.i ], [ inttoptr (i64 8 to ptr), %bb.i ] ; 2 uses
  %.sroa.0329.0 = phi i64 [ %.sroa.0329.0.copyload330, %._crit_edge.i ], [ 0, %bb.i ]
  %.sroa.5331.0 = phi ptr [ %.sroa.5331.0.copyload333, %._crit_edge.i ], [ inttoptr (i64 1 to ptr), %bb.i ]
  %.sroa.6334.0 = phi i64 [ %i.gf, %._crit_edge.i ], [ 0, %bb.i ]
  store i64 %.sroa.0329.0, ptr %i.l, align 8
  %.sroa.5331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %.sroa.5331.0, ptr %.sroa.5331.0..sroa_idx, align 8
  %.sroa.6334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.sroa.6334.0, ptr %.sroa.6334.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.494.0..sroa_idx, align 8
  %i.gg = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !nonnull !6, !align !8, !noundef !6
  %i.gj = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.gg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gi, ptr noundef nonnull @157, ptr noundef nonnull %i.k) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !3126)
  %.val.i131 = load i64, ptr %i.l, align 8, !range !7, !alias.scope !3126, !noundef !6 ; 2 uses
  %i.gk = icmp eq i64 %.val.i131, 0
  br i1 %i.gk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehNtNtB4_6string6StringECss03989lGqH_5uu_df.exit
  %.val1.i = load ptr, ptr %.sroa.5331.0..sroa_idx, align 8, !alias.scope !3126, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i131, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !3126
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit: ; preds = %_RINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehNtNtB4_6string6StringECss03989lGqH_5uu_df.exit, %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !3127)
  br i1 %i.bx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECss03989lGqH_5uu_df.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.gm, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i38.i362, i64 %.sroa.0.03.i.i.i ; 2 uses
  %i.gm = add nuw nsw i64 %.sroa.0.03.i.i.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3128)
  %.val.i.i.i.i = load i64, ptr %i.gl, align 8, !range !7, !alias.scope !3129, !noalias !3130, !noundef !6 ; 2 uses
  %i.gn = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.gn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.go, align 8, !alias.scope !3129, !noalias !3130, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !3131
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i: ; preds = %bb.ak, %.lr.ph.i.i.i
  %i.gp = icmp eq i64 %i.gm, %i.bw
  br i1 %i.gp, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i38.i362, i64 noundef %.idx.i364, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !3130
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECss03989lGqH_5uu_df.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECss03989lGqH_5uu_df.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bg

bb.al:                                            ; preds = %bb.b, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4315.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.b ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4315.0.ph, i64 %i.av) #31
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit.thread366: ; preds = %bb.c, %bb.ba
  %i.gq = phi ptr [ %i.ax, %bb.ba ], [ inttoptr (i64 1 to ptr), %bb.c ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3132)
  %.val.i134 = load i64, ptr %i.an, align 8, !range !7, !alias.scope !3132, !noundef !6 ; 2 uses
  %i.gr = icmp eq i64 %.val.i134, 0
  br i1 %i.gr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit136, label %bb.am
end_hunk_0
