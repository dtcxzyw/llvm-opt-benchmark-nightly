Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_shred-63e63590a0cb34bc.uu_shred.3238d4a09dffc9fb-cgu.0?download=true
inline.NumInlined: 951
inline.NumDeleted: 514
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCs4jkuqUqsG0h_8uu_shred9wipe_files3_0EB3d_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !338
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !338
  %i.bp = icmp eq i64 %.sroa.0.0.copyload4.i, 0
  br i1 %i.bp, label %_RNCNvCs4jkuqUqsG0h_8uu_shred9wipe_files3_0B3_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload7.i, i64 noundef %.sroa.0.0.copyload4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !345
  br label %_RNCNvCs4jkuqUqsG0h_8uu_shred9wipe_files3_0B3_.exit

bb.s:                                             ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !338
  store i64 %.sroa.0.0.copyload4.i, ptr %i.e, align 8, !noalias !338
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.5.0.copyload7.i, ptr %.sroa.5.0..sroa_idx5.i, align 8, !noalias !338
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.8.0.copyload10.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !338
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs4jkuqUqsG0h_8uu_shred(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e) #26, !noalias !344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !338
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !338
  br label %_RNCNvCs4jkuqUqsG0h_8uu_shred9wipe_files3_0B3_.exit

bb.t:                                             ; preds = %.loopexit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.br = load double, ptr %i.bq, align 8, !noalias !338, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs4jkuqUqsG0h_8uu_shred(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 4, double noundef %i.br) #26, !noalias !344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !338
  br label %bb.q

_RNCNvCs4jkuqUqsG0h_8uu_shred9wipe_files3_0B3_.exit: ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !338
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !346
  %i.bs = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #26, !noalias !346 ; 4 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.u, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !5

bb.u:                                             ; preds = %_RNCNvCs4jkuqUqsG0h_8uu_shred9wipe_files3_0B3_.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #29, !noalias !346
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNCNvCs4jkuqUqsG0h_8uu_shred9wipe_files3_0B3_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  %.sroa.02.0 = phi ptr [ %i.bs, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ null, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvCs4jkuqUqsG0h_8uu_shred29create_standard_pass_sequence(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 4, 0) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit:
  %i.a = alloca [320 x i8], align 4               ; 29 uses
  %i.b = alloca [112 x i8], align 8               ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 6 uses
  store i64 0, ptr %i.f, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #27
  %i.g = load ptr, ptr %i.e, align 8, !alias.scope !423, !nonnull !4, !noundef !4 ; 2 uses
  store i32 2, ptr %i.g, align 1, !noalias !423
  store i64 1, ptr %i.f, align 8, !alias.scope !423
  %i.h = udiv i64 %1, 10
  %..i = tail call noundef i64 @llvm.umax.i64(i64 range(i64 0, -1) %i.h, i64 3) ; 2 uses
  %i.i = sub i64 %1, %..i                         ; 3 uses
  %i.j = udiv i64 %i.i, 22
  %i.k = urem i64 %i.i, 22                        ; 3 uses
  %.not101 = icmp ult i64 %i.i, 22
  br i1 %.not101, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br label %bb.a

._crit_edge:                                      ; preds = %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79.thread, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit
  %i.l = phi i64 [ 1, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit ], [ %i.fr, %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.014.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.014.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) @36, i64 88, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %i.k, ptr %.sroa.2.0..sroa_idx, align 8
  %i.m = icmp eq i64 %i.k, 0
  br i1 %i.m, label %.lr.ph99.preheader, label %.lr.ph91

bb.a:                                             ; preds = %.lr.ph, %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79.thread
  %i.n = phi ptr [ %i.g, %.lr.ph ], [ %i.fq, %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79.thread ]
  %i.o = phi i64 [ 1, %.lr.ph ], [ %i.fr, %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79.thread ]
  %.sroa.046.089 = phi i64 [ 0, %.lr.ph ], [ %i.p, %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79.thread ]
  %i.p = add nuw nsw i64 %.sroa.046.089, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.533.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) @36, i64 88, i1 false)
  br label %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79

.lr.ph91:                                         ; preds = %._crit_edge, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit71
  %i.q = phi i64 [ %i.ad, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit71 ], [ %i.l, %._crit_edge ] ; 5 uses
  %i.r = phi i64 [ %i.u, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit71 ], [ 0, %._crit_edge ] ; 3 uses
  %i.s = phi i64 [ %i.t, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit71 ], [ %i.k, %._crit_edge ]
  %i.t = add nsw i64 %i.s, -1                     ; 2 uses
  %.not.i = icmp eq i64 %i.r, 22
  br i1 %.not.i, label %.lr.ph99.preheader, label %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit

_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit: ; preds = %.lr.ph91
  %i.u = add nuw nsw i64 %i.r, 1
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sroa.014.sroa.3.0..sroa_idx, i64 %i.r
  %.sroa.013.0.copyload.i = load i32, ptr %i.v, align 4, !alias.scope !424 ; 2 uses
  %i.w = and i32 %.sroa.013.0.copyload.i, 255
  %.not = icmp eq i32 %i.w, 2
  br i1 %.not, label %.lr.ph99.preheader, label %bb.b

.lr.ph99.preheader:                               ; preds = %.lr.ph91, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit71, %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit, %._crit_edge
  %i.x = phi i64 [ %i.l, %._crit_edge ], [ %i.q, %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit ], [ %i.ad, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit71 ], [ %i.q, %.lr.ph91 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre110 = load i64, ptr %i.d, align 8, !range !7, !alias.scope !425
  %i.y = add nsw i64 %..i, -3
  br label %.lr.ph99

bb.b:                                             ; preds = %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.z = load i64, ptr %i.d, align 8, !range !7, !alias.scope !426, !noundef !4
  %i.aa = icmp eq i64 %i.q, %i.z
  br i1 %i.aa, label %bb.c, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit71

bb.c:                                             ; preds = %bb.b
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #27
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit71

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit71: ; preds = %bb.b, %bb.c
  %i.ab = load ptr, ptr %i.e, align 8, !alias.scope !426, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.q
  store i32 %.sroa.013.0.copyload.i, ptr %i.ac, align 1, !noalias !426
  %i.ad = add i64 %i.q, 1                         ; 3 uses
  store i64 %i.ad, ptr %i.f, align 8, !alias.scope !426
  %i.ae = icmp eq i64 %i.t, 0
  br i1 %i.ae, label %.lr.ph99.preheader, label %.lr.ph91

._crit_edge100:                                   ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvCs7g3JyErIm42_4rand8make_rngNtNtNtB2_4rngs3std6StdRngECs4jkuqUqsG0h_8uu_shred(ptr noalias nofree noundef align 4 captures(address) dereferenceable(320) %i.a) #26
  %i.af = icmp eq i64 %i.an, 0
  br i1 %i.af, label %bb.f, label %bb.e, !prof !5

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit72
  %i.ag = phi i64 [ %i.ak, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit72 ], [ %.pre110, %.lr.ph99.preheader ] ; 2 uses
  %i.ah = phi i64 [ %i.an, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit72 ], [ %i.x, %.lr.ph99.preheader ] ; 10 uses
  %.sroa.048.098 = phi i64 [ %i.ai, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit72 ], [ 0, %.lr.ph99.preheader ] ; 2 uses
  %i.ai = add nuw nsw i64 %.sroa.048.098, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.aj = icmp eq i64 %i.ah, %i.ag
  br i1 %i.aj, label %bb.d, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit72

bb.d:                                             ; preds = %.lr.ph99
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #27
  %.pre109 = load i64, ptr %i.d, align 8, !range !7, !alias.scope !425
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit72

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit72: ; preds = %.lr.ph99, %bb.d
  %i.ak = phi i64 [ %i.ag, %.lr.ph99 ], [ %.pre109, %bb.d ]
  %i.al = load ptr, ptr %i.e, align 8, !alias.scope !425, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ah
  store i32 2, ptr %i.am, align 1, !noalias !425
  %i.an = add i64 %i.ah, 1                        ; 7 uses
  store i64 %i.an, ptr %i.f, align 8, !alias.scope !425
  %exitcond108.not = icmp eq i64 %.sroa.048.098, %i.y
  br i1 %exitcond108.not, label %._crit_edge100, label %.lr.ph99

bb.e:                                             ; preds = %._crit_edge100
  %i.ao = icmp ult i64 %i.an, 3
  br i1 %i.ao, label %_RINvXs0_NtNtCs7g3JyErIm42_4rand3seq5sliceSNtCs4jkuqUqsG0h_8uu_shred8PassTypeNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs3std6StdRngEBG_.exit, label %bb.g

bb.f:                                             ; preds = %._crit_edge100
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.ar = icmp ult i64 %i.an, 4294967296
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 6 uses
  br i1 %i.ar, label %.lr.ph25.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 252 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.u, %.lr.ph.i
  %.sroa.08.020.i = phi i64 [ 0, %.lr.ph.i ], [ %i.av, %bb.u ] ; 5 uses
  %i.av = add nuw nsw i64 %.sroa.08.020.i, 1      ; 5 uses
  %i.aw = icmp samesign ugt i64 %.sroa.08.020.i, 4294967294
  br i1 %i.aw, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = trunc nuw i64 %.sroa.08.020.i to i32
  %.neg18.i = xor i32 %i.ax, -1
  %i.ay = load i32, ptr %i.a, align 4, !alias.scope !429, !noalias !430, !noundef !4 ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = icmp ugt i32 %i.ay, 63
  br i1 %i.ba, label %bb.j, label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit12.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  call fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs4jkuqUqsG0h_8uu_shred(ptr noalias nofree noundef align 4 dereferenceable(64) %i.as, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.a) #26, !noalias !430
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit12.i.i.i.i.i.i

_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit12.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i.i.i10.i.i.i.i.i.i = phi i64 [ 0, %bb.j ], [ %i.az, %bb.i ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.0.0.i.i.i.i10.i.i.i.i.i.i
  %i.bc = load i32, ptr %i.bb, align 4, !alias.scope !431, !noalias !430, !noundef !4
  %i.bd = trunc nuw nsw i64 %.sroa.0.0.i.i.i.i10.i.i.i.i.i.i to i32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i11.i.i.i.i.i.i = add nuw nsw i32 %i.bd, 1 ; 2 uses
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i11.i.i.i.i.i.i, ptr %i.a, align 4, !alias.scope !431, !noalias !430
  %i.be = zext i32 %i.bc to i64
  %i.bf = mul nuw i64 %i.av, %i.be                ; 2 uses
  %i.bg = lshr i64 %i.bf, 32                      ; 2 uses
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  %i.bi = icmp ult i32 %.neg18.i, %i.bh
  br i1 %i.bi, label %bb.k, label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs4jkuqUqsG0h_8uu_shred.exit.i

bb.k:                                             ; preds = %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit12.i.i.i.i.i.i
  %i.bj = zext nneg i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i11.i.i.i.i.i.i to i64
  %i.bk = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i10.i.i.i.i.i.i, 62
  br i1 %i.bk, label %bb.l, label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit15.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  call fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs4jkuqUqsG0h_8uu_shred(ptr noalias nofree noundef align 4 dereferenceable(64) %i.as, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.a) #26, !noalias !430
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit15.i.i.i.i.i.i

_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit15.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.i.i.i.i13.i.i.i.i.i.i = phi i64 [ 0, %bb.l ], [ %i.bj, %bb.k ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.0.0.i.i.i.i13.i.i.i.i.i.i
  %i.bm = load i32, ptr %i.bl, align 4, !alias.scope !432, !noalias !430, !noundef !4
  %i.bn = trunc nuw nsw i64 %.sroa.0.0.i.i.i.i13.i.i.i.i.i.i to i32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i.i.i.i.i = add nuw nsw i32 %i.bn, 1
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i.i.i.i.i, ptr %i.a, align 4, !alias.scope !432, !noalias !430
  %2 = zext i32 %i.bm to i64
  %3 = mul nuw i64 %i.av, %2
  %4 = lshr i64 %3, 32
  %5 = trunc nuw i64 %4 to i32
  %i.bo = xor i32 %i.bh, -1
  %.not9.i.i.i.i.i.i = icmp ult i32 %i.bo, %5
  %i.bp = zext i1 %.not9.i.i.i.i.i.i to i64
  %i.bq = add nuw nsw i64 %i.bg, %i.bp
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs4jkuqUqsG0h_8uu_shred.exit.i

bb.m:                                             ; preds = %bb.h
  %i.br = load i32, ptr %i.a, align 4, !alias.scope !433, !noalias !434, !noundef !4 ; 4 uses
  %i.bs = icmp ult i32 %i.br, 63
  br i1 %i.bs, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = load i32, ptr %i.at, align 4, !alias.scope !435, !noalias !434, !noundef !4
  call fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs4jkuqUqsG0h_8uu_shred(ptr noalias nofree noundef align 4 dereferenceable(64) %i.as, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.a) #26, !noalias !434
  %i.bu = load i32, ptr %i.a, align 4, !alias.scope !435, !noalias !434, !noundef !4 ; 2 uses
  %.not.i.i.i.i7.i.i.i.i.i.i = icmp eq i32 %i.br, 63
  br i1 %.not.i.i.i.i7.i.i.i.i.i.i, label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit11.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = load i32, ptr %i.au, align 4, !alias.scope !435, !noalias !434, !noundef !4
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit11.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.m
  %i.bw = zext nneg i32 %i.br to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !alias.scope !435, !noalias !434, !noundef !4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !alias.scope !435, !noalias !434, !noundef !4
  %i.cb = add nuw nsw i32 %i.br, 2
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit11.i.i.i.i.i.i

_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit11.i.i.i.i.i.i: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0.018.i.i.i.i8.i.i.i.i.i.i = phi i32 [ %i.cb, %bb.p ], [ 1, %bb.n ], [ 2, %bb.o ] ; 5 uses
  %.sroa.02.017.i.i.i.i9.i.i.i.i.i.i = phi i32 [ %i.by, %bb.p ], [ %i.bt, %bb.n ], [ %i.bu, %bb.o ]
  %.sroa.03.016.i.i.i.i10.i.i.i.i.i.i = phi i32 [ %i.ca, %bb.p ], [ %i.bu, %bb.n ], [ %i.bv, %bb.o ]
  store i32 %.sroa.0.018.i.i.i.i8.i.i.i.i.i.i, ptr %i.a, align 4, !alias.scope !435, !noalias !434
  %i.cc = zext i32 %.sroa.03.016.i.i.i.i10.i.i.i.i.i.i to i64
  %i.cd = shl nuw i64 %i.cc, 32
  %i.ce = zext i32 %.sroa.02.017.i.i.i.i9.i.i.i.i.i.i to i64
  %i.cf = or disjoint i64 %i.cd, %i.ce
  %i.cg = zext i64 %i.cf to i128
  %i.ch = zext nneg i64 %i.av to i128             ; 2 uses
  %i.ci = mul nuw nsw i128 %i.cg, %i.ch           ; 2 uses
  %i.cj = lshr i128 %i.ci, 64
  %i.ck = trunc nuw nsw i128 %i.cj to i64         ; 2 uses
  %i.cl = trunc i128 %i.ci to i64                 ; 2 uses
  %i.cm = xor i64 %.sroa.08.020.i, -1
  %i.cn = icmp ult i64 %i.cm, %i.cl
  br i1 %i.cn, label %bb.q, label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs4jkuqUqsG0h_8uu_shred.exit.i

bb.q:                                             ; preds = %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit11.i.i.i.i.i.i
  %i.co = icmp samesign ult i32 %.sroa.0.018.i.i.i.i8.i.i.i.i.i.i, 63
  br i1 %i.co, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = load i32, ptr %i.at, align 4, !alias.scope !436, !noalias !434, !noundef !4
  call fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs4jkuqUqsG0h_8uu_shred(ptr noalias nofree noundef align 4 dereferenceable(64) %i.as, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.a) #26, !noalias !434
  %i.cq = load i32, ptr %i.a, align 4, !alias.scope !436, !noalias !434, !noundef !4 ; 2 uses
  %.not.i.i.i.i12.i.i.i.i.i.i = icmp eq i32 %.sroa.0.018.i.i.i.i8.i.i.i.i.i.i, 63
  br i1 %.not.i.i.i.i12.i.i.i.i.i.i, label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit16.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = load i32, ptr %i.au, align 4, !alias.scope !436, !noalias !434, !noundef !4
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit16.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.q
  %i.cs = zext nneg i32 %.sroa.0.018.i.i.i.i8.i.i.i.i.i.i to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !alias.scope !436, !noalias !434, !noundef !4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !alias.scope !436, !noalias !434, !noundef !4
  %i.cx = add nuw nsw i32 %.sroa.0.018.i.i.i.i8.i.i.i.i.i.i, 2
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit16.i.i.i.i.i.i

_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit16.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.018.i.i.i.i13.i.i.i.i.i.i = phi i32 [ %i.cx, %bb.t ], [ 1, %bb.r ], [ 2, %bb.s ]
  %.sroa.02.017.i.i.i.i14.i.i.i.i.i.i = phi i32 [ %i.cu, %bb.t ], [ %i.cp, %bb.r ], [ %i.cq, %bb.s ]
  %.sroa.03.016.i.i.i.i15.i.i.i.i.i.i = phi i32 [ %i.cw, %bb.t ], [ %i.cq, %bb.r ], [ %i.cr, %bb.s ]
  store i32 %.sroa.0.018.i.i.i.i13.i.i.i.i.i.i, ptr %i.a, align 4, !alias.scope !436, !noalias !434
  %i.cy = zext i32 %.sroa.03.016.i.i.i.i15.i.i.i.i.i.i to i64
  %i.cz = shl nuw i64 %i.cy, 32
  %i.da = zext i32 %.sroa.02.017.i.i.i.i14.i.i.i.i.i.i to i64
  %i.db = or disjoint i64 %i.cz, %i.da
  %6 = zext i64 %i.db to i128
  %7 = mul nuw nsw i128 %6, %i.ch
  %8 = lshr i128 %7, 64
  %9 = trunc nuw nsw i128 %8 to i64
  %i.dc = xor i64 %i.cl, -1
  %.not6.i.i.i.i.i.i = icmp samesign ult i64 %i.dc, %9
  %i.dd = zext i1 %.not6.i.i.i.i.i.i to i64
  %i.de = add nuw nsw i64 %i.dd, %i.ck
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs4jkuqUqsG0h_8uu_shred.exit.i

_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs4jkuqUqsG0h_8uu_shred.exit.i: ; preds = %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit16.i.i.i.i.i.i, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit11.i.i.i.i.i.i, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit15.i.i.i.i.i.i, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit12.i.i.i.i.i.i
  %.sroa.01.0.i.i.sink.i.i.i.i = phi i64 [ %i.ck, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit11.i.i.i.i.i.i ], [ %i.de, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit16.i.i.i.i.i.i ], [ %i.bq, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit15.i.i.i.i.i.i ], [ %i.bg, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit12.i.i.i.i.i.i ] ; 3 uses
  %i.df = icmp ult i64 %.sroa.01.0.i.i.sink.i.i.i.i, %i.ah
  br i1 %i.df, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs4jkuqUqsG0h_8uu_shred.exit.i
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.sroa.08.020.i ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i.sink.i.i.i.i ; 2 uses
  %.sroa.010.0.copyload.i = load i32, ptr %i.dg, align 1, !alias.scope !427, !noalias !437
  %i.di = load i32, ptr %i.dh, align 1, !alias.scope !427, !noalias !437
  store i32 %i.di, ptr %i.dg, align 1, !alias.scope !427, !noalias !437
  store i32 %.sroa.010.0.copyload.i, ptr %i.dh, align 1, !alias.scope !427, !noalias !437
  %exitcond.not.i = icmp eq i64 %i.av, %i.ah
  br i1 %exitcond.not.i, label %_RINvXs0_NtNtCs7g3JyErIm42_4rand3seq5sliceSNtCs4jkuqUqsG0h_8uu_shred8PassTypeNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs3std6StdRngEBG_.exit, label %bb.h

bb.v:                                             ; preds = %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs4jkuqUqsG0h_8uu_shred.exit.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.0.i.i.sink.i.i.i.i, i64 noundef range(i64 2, 2305843009213693952) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #28, !noalias !438
  unreachable

.lr.ph25.i:                                       ; preds = %bb.g, %bb.ae
  %.sroa.04.024.i = phi i64 [ %i.dj, %bb.ae ], [ 0, %bb.g ] ; 2 uses
  %.sroa.4.023.i = phi i32 [ %i.dk, %bb.ae ], [ 0, %bb.g ] ; 3 uses
  %.sroa.7.022.i = phi i32 [ %.sroa.7.2.i, %bb.ae ], [ 0, %bb.g ]
  %.sroa.12.021.i = phi i8 [ %.sroa.01.0.i.i, %bb.ae ], [ 1, %bb.g ] ; 2 uses
  %i.dj = add nuw nsw i64 %.sroa.04.024.i, 1      ; 2 uses
  %i.dk = add nuw i32 %.sroa.4.023.i, 1           ; 6 uses
  %i.dl = icmp eq i8 %.sroa.12.021.i, 0
  br i1 %i.dl, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph25.i
  %i.dm = add i8 %.sroa.12.021.i, -1
  br label %bb.ac

bb.x:                                             ; preds = %.lr.ph25.i
  %i.dn = icmp eq i32 %i.dk, 2
  br i1 %i.dn, label %.thread.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.x
  %.sroa.0.012.i.i.i = add nuw i32 %.sroa.4.023.i, 2 ; 2 uses
  %i.do = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.dk, i32 %.sroa.0.012.i.i.i) ; 2 uses
  %i.dp = extractvalue { i32, i1 } %i.do, 1
  br i1 %i.dp, label %.thread.i.i.i, label %.lr.ph.i.i.i, !prof !439

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  %i.dq = sub i32 %.sroa.0.013.i.i.i, %.sroa.4.023.i
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = add i8 %i.dr, -1
  %i.dt = icmp eq i32 %i.eq, 0
  br i1 %i.dt, label %bb.ab, label %.thread.i.i.i, !prof !440

.thread.i.i.i:                                    ; preds = %.preheader.i.i.i, %._crit_edge.i.i.i, %bb.x
  %.sroa.03.010.i.i.i = phi i32 [ %i.eq, %._crit_edge.i.i.i ], [ 479001600, %bb.x ], [ %i.dk, %.preheader.i.i.i ] ; 2 uses
  %.sroa.05.09.i.i.i = phi i8 [ %i.ds, %._crit_edge.i.i.i ], [ 10, %bb.x ], [ 0, %.preheader.i.i.i ]
  %i.du = load i32, ptr %i.a, align 4, !alias.scope !428, !noalias !441, !noundef !4 ; 2 uses
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = icmp ugt i32 %i.du, 63
  br i1 %i.dw, label %bb.y, label %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtBa_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit14.i.i.i.i.i.i.i

bb.y:                                             ; preds = %.thread.i.i.i
  call fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs4jkuqUqsG0h_8uu_shred(ptr noalias nofree noundef align 4 dereferenceable(64) %i.as, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.a) #26, !noalias !441
  br label %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtBa_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit14.i.i.i.i.i.i.i

_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtBa_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit14.i.i.i.i.i.i.i: ; preds = %bb.y, %.thread.i.i.i
  %.sroa.0.0.i.i.i.i.i12.i.i.i.i.i.i.i = phi i64 [ 0, %bb.y ], [ %i.dv, %.thread.i.i.i ] ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.0.0.i.i.i.i.i12.i.i.i.i.i.i.i
  %i.dy = load i32, ptr %i.dx, align 4, !alias.scope !442, !noalias !441, !noundef !4
  %i.dz = trunc nuw nsw i64 %.sroa.0.0.i.i.i.i.i12.i.i.i.i.i.i.i to i32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i13.i.i.i.i.i.i.i = add nuw nsw i32 %i.dz, 1 ; 2 uses
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i13.i.i.i.i.i.i.i, ptr %i.a, align 4, !alias.scope !442, !noalias !441
  %i.ea = zext i32 %i.dy to i64
  %i.eb = zext i32 %.sroa.03.010.i.i.i to i64     ; 2 uses
  %i.ec = mul nuw i64 %i.ea, %i.eb                ; 2 uses
  %i.ed = lshr i64 %i.ec, 32                      ; 2 uses
  %i.ee = trunc i64 %i.ec to i32                  ; 2 uses
  %i.ef = sub i32 0, %.sroa.03.010.i.i.i
  %i.eg = icmp ugt i32 %i.ee, %i.ef
  br i1 %i.eg, label %bb.z, label %_RNCNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs3std6StdRngE10next_index0Cs4jkuqUqsG0h_8uu_shred.exit.i.i

bb.z:                                             ; preds = %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtBa_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit14.i.i.i.i.i.i.i
  %i.eh = zext nneg i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i13.i.i.i.i.i.i.i to i64
  %i.ei = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i.i12.i.i.i.i.i.i.i, 62
  br i1 %i.ei, label %bb.aa, label %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtBa_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit17.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  call fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs4jkuqUqsG0h_8uu_shred(ptr noalias nofree noundef align 4 dereferenceable(64) %i.as, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.a) #26, !noalias !441
  br label %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtBa_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit17.i.i.i.i.i.i.i

_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtBa_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit17.i.i.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.0.0.i.i.i.i.i15.i.i.i.i.i.i.i = phi i64 [ 0, %bb.aa ], [ %i.eh, %bb.z ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.0.0.i.i.i.i.i15.i.i.i.i.i.i.i
  %i.ek = load i32, ptr %i.ej, align 4, !alias.scope !443, !noalias !441, !noundef !4
  %i.el = trunc nuw nsw i64 %.sroa.0.0.i.i.i.i.i15.i.i.i.i.i.i.i to i32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i16.i.i.i.i.i.i.i = add nuw nsw i32 %i.el, 1
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i16.i.i.i.i.i.i.i, ptr %i.a, align 4, !alias.scope !443, !noalias !441
  %10 = zext i32 %i.ek to i64
  %11 = mul nuw i64 %10, %i.eb
  %12 = lshr i64 %11, 32
  %13 = trunc nuw i64 %12 to i32
  %i.em = xor i32 %i.ee, -1
  %.not9.i.i.i.i.i.i.i = icmp ult i32 %i.em, %13
  %i.en = zext i1 %.not9.i.i.i.i.i.i.i to i64
  %i.eo = add nuw nsw i64 %i.ed, %i.en
  br label %_RNCNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs3std6StdRngE10next_index0Cs4jkuqUqsG0h_8uu_shred.exit.i.i

bb.ab:                                            ; preds = %._crit_edge.i.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #28, !noalias !444
  unreachable

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %i.ep = phi { i32, i1 } [ %i.er, %.lr.ph.i.i.i ], [ %i.do, %.preheader.i.i.i ]
  %.sroa.0.013.i.i.i = phi i32 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.012.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %i.eq = extractvalue { i32, i1 } %i.ep, 0       ; 3 uses
  %.sroa.0.0.i.i.i = add i32 %.sroa.0.013.i.i.i, 1 ; 2 uses
  %i.er = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.eq, i32 %.sroa.0.0.i.i.i) ; 2 uses
  %i.es = extractvalue { i32, i1 } %i.er, 1
  br i1 %i.es, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !prof !445

_RNCNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs3std6StdRngE10next_index0Cs4jkuqUqsG0h_8uu_shred.exit.i.i: ; preds = %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtBa_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit17.i.i.i.i.i.i.i, %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtBa_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit14.i.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i = phi i64 [ %i.eo, %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtBa_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit17.i.i.i.i.i.i.i ], [ %i.ed, %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtBa_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit14.i.i.i.i.i.i.i ]
  %.sroa.6.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.04.0.i.i.i.i.i.i.i to i32
  br label %bb.ac

bb.ac:                                            ; preds = %_RNCNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs3std6StdRngE10next_index0Cs4jkuqUqsG0h_8uu_shred.exit.i.i, %bb.w
  %.sroa.7.1.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i.i, %_RNCNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs3std6StdRngE10next_index0Cs4jkuqUqsG0h_8uu_shred.exit.i.i ], [ %.sroa.7.022.i, %bb.w ] ; 4 uses
  %.sroa.01.0.i.i = phi i8 [ %.sroa.05.09.i.i.i, %_RNCNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs3std6StdRngE10next_index0Cs4jkuqUqsG0h_8uu_shred.exit.i.i ], [ %i.dm, %bb.w ] ; 2 uses
  %i.et = icmp eq i8 %.sroa.01.0.i.i, 0
  br i1 %i.et, label %_RNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs3std6StdRngE10next_indexCs4jkuqUqsG0h_8uu_shred.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = urem i32 %.sroa.7.1.i, %i.dk
  %i.ev = udiv i32 %.sroa.7.1.i, %i.dk
  br label %_RNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs3std6StdRngE10next_indexCs4jkuqUqsG0h_8uu_shred.exit.i

_RNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs3std6StdRngE10next_indexCs4jkuqUqsG0h_8uu_shred.exit.i: ; preds = %bb.ad, %bb.ac
  %.sroa.7.2.i = phi i32 [ %i.ev, %bb.ad ], [ %.sroa.7.1.i, %bb.ac ]
  %.sroa.0.0.in.i.i = phi i32 [ %i.eu, %bb.ad ], [ %.sroa.7.1.i, %bb.ac ]
  %.sroa.0.0.i.i = zext i32 %.sroa.0.0.in.i.i to i64 ; 3 uses
  %i.ew = icmp samesign ugt i64 %i.ah, %.sroa.0.0.i.i
  br i1 %i.ew, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_RNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs3std6StdRngE10next_indexCs4jkuqUqsG0h_8uu_shred.exit.i
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.sroa.04.024.i ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.sroa.0.0.i.i ; 2 uses
  %.sroa.06.0.copyload.i = load i32, ptr %i.ex, align 1, !alias.scope !427, !noalias !437
  %i.ez = load i32, ptr %i.ey, align 1, !alias.scope !427, !noalias !437
  store i32 %i.ez, ptr %i.ex, align 1, !alias.scope !427, !noalias !437
  store i32 %.sroa.06.0.copyload.i, ptr %i.ey, align 1, !alias.scope !427, !noalias !437
  %exitcond29.not.i = icmp eq i64 %i.dj, %i.ah
  br i1 %exitcond29.not.i, label %_RINvXs0_NtNtCs7g3JyErIm42_4rand3seq5sliceSNtCs4jkuqUqsG0h_8uu_shred8PassTypeNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs3std6StdRngEBG_.exit, label %.lr.ph25.i

bb.af:                                            ; preds = %_RNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs3std6StdRngE10next_indexCs4jkuqUqsG0h_8uu_shred.exit.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i.i, i64 noundef range(i64 2, 2305843009213693952) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #28, !noalias !438
  unreachable

_RINvXs0_NtNtCs7g3JyErIm42_4rand3seq5sliceSNtCs4jkuqUqsG0h_8uu_shred8PassTypeNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs3std6StdRngEBG_.exit: ; preds = %bb.u, %bb.ae, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %i.fa = load i64, ptr %i.d, align 8, !range !7, !alias.scope !446, !noundef !4
  %i.fb = icmp eq i64 %i.an, %i.fa
  br i1 %i.fb, label %bb.ag, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit75

bb.ag:                                            ; preds = %_RINvXs0_NtNtCs7g3JyErIm42_4rand3seq5sliceSNtCs4jkuqUqsG0h_8uu_shred8PassTypeNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs3std6StdRngEBG_.exit
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #27
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit75

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit75: ; preds = %_RINvXs0_NtNtCs7g3JyErIm42_4rand3seq5sliceSNtCs4jkuqUqsG0h_8uu_shred8PassTypeNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs3std6StdRngEBG_.exit, %bb.ag
  %i.fc = load ptr, ptr %i.e, align 8, !alias.scope !446, !nonnull !4, !noundef !4
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.an
  store i32 2, ptr %i.fd, align 1, !noalias !446
  %i.fe = add i64 %i.ah, 2
  store i64 %i.fe, ptr %i.f, align 8, !alias.scope !446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79: ; preds = %bb.a, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit80
  %i.ff = phi ptr [ %i.n, %bb.a ], [ %i.fn, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit80 ] ; 2 uses
  %i.fg = phi i64 [ %i.o, %bb.a ], [ %i.fp, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit80 ] ; 4 uses
  %i.fh = phi i64 [ 0, %bb.a ], [ %i.fi, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit80 ] ; 2 uses
  %i.fi = add nuw nsw i64 %i.fh, 1                ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.533.0..sroa_idx, i64 %i.fh
  %.sroa.013.0.copyload.i77 = load i32, ptr %i.fj, align 4, !alias.scope !447 ; 2 uses
  %i.fk = and i32 %.sroa.013.0.copyload.i77, 255
  %.not70 = icmp eq i32 %i.fk, 2
  br i1 %.not70, label %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79.thread, label %bb.ah

bb.ah:                                            ; preds = %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %i.fl = load i64, ptr %i.d, align 8, !range !7, !alias.scope !448, !noundef !4
  %i.fm = icmp eq i64 %i.fg, %i.fl
  br i1 %i.fm, label %bb.ai, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit80

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #27
  %.pre = load ptr, ptr %i.e, align 8, !alias.scope !448
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit80

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit80: ; preds = %bb.ah, %bb.ai
  %i.fn = phi ptr [ %i.ff, %bb.ah ], [ %.pre, %bb.ai ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fg
  store i32 %.sroa.013.0.copyload.i77, ptr %i.fo, align 1, !noalias !448
  %i.fp = add i64 %i.fg, 1                        ; 3 uses
  store i64 %i.fp, ptr %i.f, align 8, !alias.scope !448
  %.not.i76 = icmp eq i64 %i.fi, 22
  br i1 %.not.i76, label %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79.thread, label %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79

_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79.thread: ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit80, %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79
  %i.fq = phi ptr [ %i.fn, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit80 ], [ %i.ff, %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79 ]
  %i.fr = phi i64 [ %i.fp, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit80 ], [ %i.fg, %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond.not = icmp eq i64 %i.p, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.a
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCs4jkuqUqsG0h_8uu_shred6uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECs4jkuqUqsG0h_8uu_shred.exit:
  %i.a = alloca [640 x i8], align 8               ; 53 uses
  %i.b = alloca [640 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [640 x i8], align 8               ; 55 uses
  %i.e = alloca [640 x i8], align 8               ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [640 x i8], align 8               ; 53 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [640 x i8], align 8               ; 53 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [640 x i8], align 8               ; 53 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [640 x i8], align 8               ; 58 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [640 x i8], align 8               ; 52 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [640 x i8], align 8               ; 57 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [640 x i8], align 8               ; 58 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [640 x i8], align 8               ; 53 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [712 x i8], align 8              ; 59 uses
  %i.ab = alloca [712 x i8], align 8              ; 5 uses
  %i.ac = alloca [712 x i8], align 8              ; 5 uses
  %i.ad = alloca [712 x i8], align 8              ; 5 uses
  %i.ae = alloca [712 x i8], align 8              ; 5 uses
  %i.af = alloca [712 x i8], align 8              ; 5 uses
  %i.ag = alloca [712 x i8], align 8              ; 5 uses
  %i.ah = alloca [712 x i8], align 8              ; 5 uses
  %i.ai = alloca [712 x i8], align 8              ; 5 uses
  %i.aj = alloca [712 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 5) #26
  %.sroa.0.0.copyload.i = load i64, ptr %i.z, align 8, !alias.scope !768, !noalias !769 ; 2 uses
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i, -1   ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.5.i.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 8
  %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.5.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.i.sroa.0.0 = select i1 %i.ak, ptr undef, ptr %.sroa.5.i.sroa.0.0.copyload
  %.sroa.5.i.sroa.4.0 = select i1 %i.ak, i64 undef, i64 %.sroa.5.i.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 11) #26
  %.sroa.0.0.copyload.i21 = load i64, ptr %i.y, align 8, !alias.scope !770, !noalias !771 ; 2 uses
  %i.al = icmp eq i64 %.sroa.0.0.copyload.i21, -1 ; 2 uses
  %.sroa.55.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.5.i20.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i22, align 8
  %.sroa.5.i20.sroa.4.0..sroa.55.0..sroa_idx.i22.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.5.i20.sroa.4.0.copyload = load i64, ptr %.sroa.5.i20.sroa.4.0..sroa.55.0..sroa_idx.i22.sroa_idx, align 8
  %.sroa.5.i20.sroa.0.0 = select i1 %i.al, ptr undef, ptr %.sroa.5.i20.sroa.0.0.copyload
  %.sroa.5.i20.sroa.4.0 = select i1 %i.al, i64 undef, i64 %.sroa.5.i20.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 16) #26
  %.sroa.0.0.copyload.i27 = load i64, ptr %i.x, align 8, !alias.scope !772, !noalias !773 ; 2 uses
  %i.am = icmp eq i64 %.sroa.0.0.copyload.i27, -1 ; 2 uses
  %.sroa.55.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.5.i26.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i28, align 8
  %.sroa.5.i26.sroa.4.0..sroa.55.0..sroa_idx.i28.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.5.i26.sroa.4.0.copyload = load i64, ptr %.sroa.5.i26.sroa.4.0..sroa.55.0..sroa_idx.i28.sroa_idx, align 8
  %.sroa.5.i26.sroa.0.0 = select i1 %i.am, ptr undef, ptr %.sroa.5.i26.sroa.0.0.copyload
  %.sroa.5.i26.sroa.4.0 = select i1 %i.am, i64 undef, i64 %.sroa.5.i26.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 11) #26
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXsa_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_8UIoErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14parse_size_u64(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() unnamed_addr #0

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs2vKOLqTMYjT_3std7process4exit(i32 noundef) unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #18

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals21capture_startup_state() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXsc_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io4seek4Seek4seek(ptr noalias nofree noundef align 4 dereferenceable(4), i64 noundef range(i64 0, 3), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef align 8 dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(640)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvMs2_NtCs2vKOLqTMYjT_3std2fsNtB5_4File9sync_data(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path11to_path_buf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6is_dir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvMs2_NtCs2vKOLqTMYjT_3std2fsNtB5_4File8sync_all(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs6JMX4GRUq9U_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #20

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #21

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #22

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #23

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs2_NtCs2vKOLqTMYjT_3std2fsNtB5_4File9try_clone(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: cold nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNvNtCsjXcachvKq5y_8chacha2010avx2_cpuid8init_get10init_inner() unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #18

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #18

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: cold noinline nounwind nonlazybind uwtable
declare void @_RNvMs_NtNtCs7g3JyErIm42_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef align 4 dereferenceable(64)) unnamed_addr #4

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXss_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StderrLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1b_NtCs2vKOLqTMYjT_3std4pathNtB6_7DisplayNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcDNtNtCs6JMX4GRUq9U_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsgNwXemyrBWj_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nounwind nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, ptr } @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser15possible_values(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser9parse_ref(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs6JMX4GRUq9U_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs6_NtCs7tKScEop1B6_5alloc2rcINtB5_2RcINtNtCs6JMX4GRUq9U_4core4cell10UnsafeCellINtNtCskqYlSTCc3RA_9rand_core5block8BlockRngNtNtNtCs7g3JyErIm42_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXsb_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5write(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.fshl.v8i32(<8 x i32>, <8 x i32>, <8 x i32>) #18

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2,+sse3,+sse4.1,+ssse3" }
attributes #3 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { norecurse nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nounwind }
attributes #27 = { noinline nounwind }
attributes #28 = { noinline noreturn nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { inlinehint nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (7608eb7b0 2026-08-05)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = !{i64 0, i64 -9223372036854775808}
!8 = !{i64 -1, i64 -9223372036854775808}
!9 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!10 = !{i64 8}
!11 = !{i64 1, i64 536870913}
!12 = !{i64 0, i64 2}
!13 = !{i64 0, i64 -9223372036854775807}
!14 = !{i8 0, i8 2}
!15 = !{!"branch_weights", i32 2002, i32 2000}
!16 = !{i64 0, i64 3}
!17 = !{i32 0, i32 2}
!18 = !{i32 0, i32 -1}
!19 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!20 = !{i8 0, i8 44}
!21 = !{i8 0, i8 3}
!22 = distinct !{!22, !"_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtCskqYlSTCc3RA_9rand_core12seedable_rng11SeedableRng8from_rngNtNtB7_6thread9ThreadRngECs4jkuqUqsG0h_8uu_shred"}
!23 = distinct !{!23, !22, !"_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtCskqYlSTCc3RA_9rand_core12seedable_rng11SeedableRng8from_rngNtNtB7_6thread9ThreadRngECs4jkuqUqsG0h_8uu_shred: argument 0"}
!24 = distinct !{!24, !"_RNvMs3_NtCskqYlSTCc3RA_9rand_core5blockINtB5_8BlockRngNtNtNtCs7g3JyErIm42_4rand4rngs6thread13ReseedingCoreE10fill_bytesCs4jkuqUqsG0h_8uu_shred"}
!25 = distinct !{!25, !24, !"_RNvMs3_NtCskqYlSTCc3RA_9rand_core5blockINtB5_8BlockRngNtNtNtCs7g3JyErIm42_4rand4rngs6thread13ReseedingCoreE10fill_bytesCs4jkuqUqsG0h_8uu_shred: argument 0"}
!26 = distinct !{!26, !"_RNvXCskqYlSTCc3RA_9rand_coreNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtB2_3Rng10fill_bytesCs4jkuqUqsG0h_8uu_shred"}
!27 = distinct !{!27, !26, !"_RNvXCskqYlSTCc3RA_9rand_coreNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtB2_3Rng10fill_bytesCs4jkuqUqsG0h_8uu_shred: argument 0"}
!28 = distinct !{!28, !"_RNvXs3_NtNtCs7g3JyErIm42_4rand4rngs6threadNtB5_9ThreadRngNtCskqYlSTCc3RA_9rand_core6TryRng14try_fill_bytes"}
!29 = distinct !{!29, !28, !"_RNvXs3_NtNtCs7g3JyErIm42_4rand4rngs6threadNtB5_9ThreadRngNtCskqYlSTCc3RA_9rand_core6TryRng14try_fill_bytes: argument 0"}
!30 = distinct !{!30, !24, !"_RNvMs3_NtCskqYlSTCc3RA_9rand_core5blockINtB5_8BlockRngNtNtNtCs7g3JyErIm42_4rand4rngs6thread13ReseedingCoreE10fill_bytesCs4jkuqUqsG0h_8uu_shred: argument 1"}
!31 = distinct !{!31, !"_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate"}
!32 = distinct !{!32, !31, !"_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate: argument 0"}
!33 = distinct !{!33, !31, !"_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate: argument 1"}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !"_RNvXs_NtNtCs7g3JyErIm42_4rand4rngs3stdNtB4_6StdRngNtNtCskqYlSTCc3RA_9rand_core12seedable_rng11SeedableRng9from_seed"}
!36 = distinct !{!36, !35, !"_RNvXs_NtNtCs7g3JyErIm42_4rand4rngs3stdNtB4_6StdRngNtNtCskqYlSTCc3RA_9rand_core12seedable_rng11SeedableRng9from_seed: argument 0"}
!37 = distinct !{!37, !"_RNvXs7_NtCsjXcachvKq5y_8chacha203rngNtB5_11ChaCha12RngNtNtCskqYlSTCc3RA_9rand_core12seedable_rng11SeedableRng9from_seed"}
!38 = distinct !{!38, !37, !"_RNvXs7_NtCsjXcachvKq5y_8chacha203rngNtB5_11ChaCha12RngNtNtCskqYlSTCc3RA_9rand_core12seedable_rng11SeedableRng9from_seed: argument 1"}
!39 = distinct !{!39, !37, !"_RNvXs7_NtCsjXcachvKq5y_8chacha203rngNtB5_11ChaCha12RngNtNtCskqYlSTCc3RA_9rand_core12seedable_rng11SeedableRng9from_seed: argument 0"}
!40 = distinct !{!40, !"_RNvMs1_CsjXcachvKq5y_8chacha20INtB5_10ChaChaCoreNtB5_3R12NtNtB5_8variants6LegacyE12new_internalCs4jkuqUqsG0h_8uu_shred"}
!41 = distinct !{!41, !40, !"_RNvMs1_CsjXcachvKq5y_8chacha20INtB5_10ChaChaCoreNtB5_3R12NtNtB5_8variants6LegacyE12new_internalCs4jkuqUqsG0h_8uu_shred: argument 1"}
!42 = distinct !{!42, !40, !"_RNvMs1_CsjXcachvKq5y_8chacha20INtB5_10ChaChaCoreNtB5_3R12NtNtB5_8variants6LegacyE12new_internalCs4jkuqUqsG0h_8uu_shred: argument 0"}
!43 = distinct !{!43, !35, !"_RNvXs_NtNtCs7g3JyErIm42_4rand4rngs3stdNtB4_6StdRngNtNtCskqYlSTCc3RA_9rand_core12seedable_rng11SeedableRng9from_seed: argument 1"}
!44 = distinct !{!44, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngECs4jkuqUqsG0h_8uu_shred"}
!45 = distinct !{!45, !44, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngECs4jkuqUqsG0h_8uu_shred: argument 0"}
!46 = distinct !{!46, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc2rc2RcINtNtB4_4cell10UnsafeCellINtNtCskqYlSTCc3RA_9rand_core5block8BlockRngNtNtNtCs7g3JyErIm42_4rand4rngs6thread13ReseedingCoreEEEECs4jkuqUqsG0h_8uu_shred"}
!47 = distinct !{!47, !46, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc2rc2RcINtNtB4_4cell10UnsafeCellINtNtCskqYlSTCc3RA_9rand_core5block8BlockRngNtNtNtCs7g3JyErIm42_4rand4rngs6thread13ReseedingCoreEEEECs4jkuqUqsG0h_8uu_shred: argument 0"}
!48 = distinct !{!48, !"_RNvXsw_NtCs7tKScEop1B6_5alloc2rcINtB5_2RcINtNtCs6JMX4GRUq9U_4core4cell10UnsafeCellINtNtCskqYlSTCc3RA_9rand_core5block8BlockRngNtNtNtCs7g3JyErIm42_4rand4rngs6thread13ReseedingCoreEEENtNtNtBI_3ops4drop4Drop4dropCs4jkuqUqsG0h_8uu_shred"}
!49 = distinct !{!49, !48, !"_RNvXsw_NtCs7tKScEop1B6_5alloc2rcINtB5_2RcINtNtCs6JMX4GRUq9U_4core4cell10UnsafeCellINtNtCskqYlSTCc3RA_9rand_core5block8BlockRngNtNtNtCs7g3JyErIm42_4rand4rngs6thread13ReseedingCoreEEENtNtNtBI_3ops4drop4Drop4dropCs4jkuqUqsG0h_8uu_shred: argument 0"}
!50 = !{!23}
!51 = !{!25}
!52 = !{!30, !29, !27, !23}
!53 = !{!32, !25}
!54 = !{!33, !30, !29, !27, !23}
!55 = !{!29}
!56 = !{!42, !41, !39, !38, !36, !23}
!57 = !{!43}
!58 = !{!49, !47, !45}
!59 = distinct !{!59, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setReNtNtBB_6string6StringE0ECs4jkuqUqsG0h_8uu_shred"}
!60 = distinct !{!60, !59, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setReNtNtBB_6string6StringE0ECs4jkuqUqsG0h_8uu_shred: argument 0"}
!61 = distinct !{!61, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReNtNtBB_6string6StringE0E0ECs4jkuqUqsG0h_8uu_shred"}
!62 = distinct !{!62, !61, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReNtNtBB_6string6StringE0E0ECs4jkuqUqsG0h_8uu_shred: argument 0"}
!63 = distinct !{!63, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Cs4jkuqUqsG0h_8uu_shred"}
!64 = distinct !{!64, !63, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Cs4jkuqUqsG0h_8uu_shred: argument 0"}
!65 = distinct !{!65, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs4jkuqUqsG0h_8uu_shred"}
!66 = distinct !{!66, !65, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs4jkuqUqsG0h_8uu_shred: argument 0"}
!67 = distinct !{!67, !61, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReNtNtBB_6string6StringE0E0ECs4jkuqUqsG0h_8uu_shred: argument 1"}
!68 = distinct !{!68, !65, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs4jkuqUqsG0h_8uu_shred: argument 1"}
!69 = distinct !{!69, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!70 = distinct !{!70, !69, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!71 = distinct !{!71, !69, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!72 = distinct !{!72, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Cs4jkuqUqsG0h_8uu_shred"}
!73 = distinct !{!73, !72, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Cs4jkuqUqsG0h_8uu_shred: argument 0"}
!74 = distinct !{!74, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs4jkuqUqsG0h_8uu_shred"}
!75 = distinct !{!75, !74, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs4jkuqUqsG0h_8uu_shred: argument 0"}
!76 = distinct !{!76, !74, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs4jkuqUqsG0h_8uu_shred: argument 1"}
!77 = distinct !{!77, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!78 = distinct !{!78, !77, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!79 = distinct !{!79, !77, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!80 = distinct !{!80, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs4jkuqUqsG0h_8uu_shred"}
!81 = distinct !{!81, !80, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs4jkuqUqsG0h_8uu_shred: argument 0"}
!82 = distinct !{!82, !80, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs4jkuqUqsG0h_8uu_shred: argument 1"}
!83 = !{!60}
!84 = !{!62}
!85 = !{!64}
!86 = !{!66}
!87 = !{!66, !64, !62, !60}
!88 = !{!68, !67}
!89 = !{!71, !70}
!90 = !{!66, !68, !64, !62, !67, !60}
!91 = !{!73}
!92 = !{!75}
!93 = !{!75, !73, !62, !60}
!94 = !{!76, !67}
!95 = !{!79, !78}
!96 = !{!75, !76, !73, !62, !67, !60}
!97 = !{!81}
!98 = !{!82}
!99 = distinct !{!99, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRedE0ECs4jkuqUqsG0h_8uu_shred"}
!100 = distinct !{!100, !99, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRedE0ECs4jkuqUqsG0h_8uu_shred: argument 0"}
!101 = distinct !{!101, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRedE0E0ECs4jkuqUqsG0h_8uu_shred"}
!102 = distinct !{!102, !101, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRedE0E0ECs4jkuqUqsG0h_8uu_shred: argument 0"}
!103 = distinct !{!103, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Cs4jkuqUqsG0h_8uu_shred"}
!104 = distinct !{!104, !103, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Cs4jkuqUqsG0h_8uu_shred: argument 0"}
!105 = distinct !{!105, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs4jkuqUqsG0h_8uu_shred"}
!106 = distinct !{!106, !105, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs4jkuqUqsG0h_8uu_shred: argument 0"}
!107 = distinct !{!107, !101, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRedE0E0ECs4jkuqUqsG0h_8uu_shred: argument 1"}
!108 = distinct !{!108, !105, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs4jkuqUqsG0h_8uu_shred: argument 1"}
!109 = distinct !{!109, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!110 = distinct !{!110, !109, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!111 = distinct !{!111, !109, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!112 = distinct !{!112, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Cs4jkuqUqsG0h_8uu_shred"}
!113 = distinct !{!113, !112, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Cs4jkuqUqsG0h_8uu_shred: argument 0"}
!114 = distinct !{!114, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs4jkuqUqsG0h_8uu_shred"}
!115 = distinct !{!115, !114, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs4jkuqUqsG0h_8uu_shred: argument 0"}
!116 = distinct !{!116, !114, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs4jkuqUqsG0h_8uu_shred: argument 1"}
!117 = distinct !{!117, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!118 = distinct !{!118, !117, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!119 = distinct !{!119, !117, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!120 = distinct !{!120, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs4jkuqUqsG0h_8uu_shred"}
!121 = distinct !{!121, !120, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs4jkuqUqsG0h_8uu_shred: argument 0"}
!122 = distinct !{!122, !120, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs4jkuqUqsG0h_8uu_shred: argument 1"}
!123 = !{!100}
!124 = !{!102}
!125 = !{!104}
!126 = !{!106}
!127 = !{!106, !104, !102, !100}
!128 = !{!108, !107}
!129 = !{!111, !110}
!130 = !{!106, !108, !104, !102, !107, !100}
!131 = !{!113}
!132 = !{!115}
!133 = !{!115, !113, !102, !100}
!134 = !{!116, !107}
!135 = !{!119, !118}
!136 = !{!115, !116, !113, !102, !107, !100}
!137 = !{!121}
!138 = !{!122}
!139 = distinct !{!139, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRexE0ECs4jkuqUqsG0h_8uu_shred"}
!140 = distinct !{!140, !139, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRexE0ECs4jkuqUqsG0h_8uu_shred: argument 0"}
!141 = distinct !{!141, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRexE0E0ECs4jkuqUqsG0h_8uu_shred"}
!142 = distinct !{!142, !141, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRexE0E0ECs4jkuqUqsG0h_8uu_shred: argument 0"}
!143 = distinct !{!143, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0Cs4jkuqUqsG0h_8uu_shred"}
!144 = distinct !{!144, !143, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0Cs4jkuqUqsG0h_8uu_shred: argument 0"}
!145 = distinct !{!145, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs4jkuqUqsG0h_8uu_shred"}
!146 = distinct !{!146, !145, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs4jkuqUqsG0h_8uu_shred: argument 0"}
!147 = distinct !{!147, !141, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRexE0E0ECs4jkuqUqsG0h_8uu_shred: argument 1"}
!148 = distinct !{!148, !145, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs4jkuqUqsG0h_8uu_shred: argument 1"}
!149 = distinct !{!149, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!150 = distinct !{!150, !149, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
end_hunk_1
