Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_shred-63e63590a0cb34bc.uu_shred.3238d4a09dffc9fb-cgu.0?download=true
inline.NumInlined: 951
inline.NumDeleted: 514
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCs4jkuqUqsG0h_8uu_shred9wipe_files3_0EB3d_:bb.a
bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload7.i, i64 1 ; 2 uses
  %i.s = add nsw i64 %.sroa.8.0.copyload10.i, -1  ; 3 uses
  %i.t = icmp samesign ult i64 %.sroa.8.0.copyload10.i, 17
  br i1 %i.t, label %.preheader114.i.i, label %.lr.ph.i.i

.preheader114.i.i:                                ; preds = %bb.g
  %.not103137.i.i = icmp eq i64 %i.s, 0
  br i1 %.not103137.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph141.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.j
  %.sroa.0.1136.i.i = phi ptr [ %i.u, %bb.j ], [ %i.r, %bb.g ] ; 2 uses
  %.sroa.26.1135.i.i = phi i64 [ %i.v, %bb.j ], [ %i.s, %bb.g ]
  %.sroa.084.0134.i.i = phi i64 [ %i.ag, %bb.j ], [ 0, %bb.g ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i, i64 1
  %i.v = add nsw i64 %.sroa.26.1135.i.i, -1       ; 2 uses
  %i.w = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i, i64 10) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 0
  %i.y = extractvalue { i64, i1 } %i.w, 1
  br i1 %i.y, label %.loopexit.i, label %bb.h, !prof !5

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.z = load i8, ptr %.sroa.0.1136.i.i, align 1, !alias.scope !342, !noalias !343, !noundef !4
  %i.aa = zext i8 %i.z to i32
  %i.ab = add nsw i32 %i.aa, -48                  ; 2 uses
  %i.ac = icmp ult i32 %i.ab, 10
  br i1 %i.ac, label %bb.i, label %.loopexit.i

bb.i:                                             ; preds = %bb.h
  %i.ad = zext nneg i32 %i.ab to i64
  %i.ae = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.x, i64 %i.ad) ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %.loopexit.i, label %bb.j, !prof !5

bb.j:                                             ; preds = %bb.i
  %i.ag = extractvalue { i64, i1 } %i.ae, 0       ; 2 uses
  %.not102.i.i = icmp eq i64 %i.v, 0
  br i1 %.not102.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i.i

.lr.ph141.i.i:                                    ; preds = %.preheader114.i.i, %bb.k
  %.sroa.0.2140.i.i = phi ptr [ %i.an, %bb.k ], [ %i.r, %.preheader114.i.i ] ; 2 uses
  %.sroa.26.2139.i.i = phi i64 [ %i.am, %bb.k ], [ %i.s, %.preheader114.i.i ]
  %.sroa.084.2138.i.i = phi i64 [ %i.ap, %bb.k ], [ 0, %.preheader114.i.i ]
  %i.ah = load i8, ptr %.sroa.0.2140.i.i, align 1, !alias.scope !342, !noalias !343, !noundef !4
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add nsw i32 %i.ai, -48                  ; 2 uses
  %i.ak = icmp ult i32 %i.aj, 10
  br i1 %i.ak, label %bb.k, label %.loopexit.i

bb.k:                                             ; preds = %.lr.ph141.i.i
  %i.al = mul i64 %.sroa.084.2138.i.i, 10
  %i.am = add nsw i64 %.sroa.26.2139.i.i, -1      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i, i64 1
  %i.ao = zext nneg i32 %i.aj to i64
  %i.ap = sub i64 %i.al, %i.ao                    ; 2 uses
  %.not103.i.i = icmp eq i64 %i.am, 0
  br i1 %.not103.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph141.i.i

bb.l:                                             ; preds = %bb.f, %bb.e
  %.sroa.26.0.i.i = phi i64 [ %i.q, %bb.f ], [ %.sroa.8.0.copyload10.i, %bb.e ] ; 4 uses
  %.sroa.0.0.i.i = phi ptr [ %i.p, %bb.f ], [ %.sroa.5.0.copyload7.i, %bb.e ] ; 2 uses
  %i.aq = icmp samesign ult i64 %.sroa.26.0.i.i, 16
  br i1 %i.aq, label %.preheader.i.i, label %.preheader111.i.i

.preheader.i.i:                                   ; preds = %bb.l
  %.not105146.i.i = icmp eq i64 %.sroa.26.0.i.i, 0
  br i1 %.not105146.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph150.i.i

.preheader111.i.i:                                ; preds = %bb.l, %bb.o
  %.sroa.0.3145.i.i = phi ptr [ %i.ar, %bb.o ], [ %.sroa.0.0.i.i, %bb.l ] ; 2 uses
  %.sroa.26.3144.i.i = phi i64 [ %i.as, %bb.o ], [ %.sroa.26.0.i.i, %bb.l ]
  %.sroa.084.3143.i.i = phi i64 [ %i.bd, %bb.o ], [ 0, %bb.l ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i, i64 1
  %i.as = add nsw i64 %.sroa.26.3144.i.i, -1      ; 2 uses
  %i.at = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i, i64 10) ; 2 uses
  %i.au = extractvalue { i64, i1 } %i.at, 0
  %i.av = extractvalue { i64, i1 } %i.at, 1
  br i1 %i.av, label %.loopexit.i, label %bb.m, !prof !5

bb.m:                                             ; preds = %.preheader111.i.i
  %i.aw = load i8, ptr %.sroa.0.3145.i.i, align 1, !alias.scope !342, !noalias !343, !noundef !4
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add nsw i32 %i.ax, -48                  ; 2 uses
  %i.az = icmp ult i32 %i.ay, 10
  br i1 %i.az, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %i.ba = zext nneg i32 %i.ay to i64
  %i.bb = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.au, i64 %i.ba) ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 1
  br i1 %i.bc, label %.loopexit.i, label %bb.o, !prof !5

bb.o:                                             ; preds = %bb.n
  %i.bd = extractvalue { i64, i1 } %i.bb, 0       ; 2 uses
  %.not104.i.i = icmp eq i64 %i.as, 0
  br i1 %.not104.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.preheader111.i.i

.lr.ph150.i.i:                                    ; preds = %.preheader.i.i, %bb.p
  %.sroa.0.4149.i.i = phi ptr [ %i.bk, %bb.p ], [ %.sroa.0.0.i.i, %.preheader.i.i ] ; 2 uses
  %.sroa.26.4148.i.i = phi i64 [ %i.bj, %bb.p ], [ %.sroa.26.0.i.i, %.preheader.i.i ]
  %.sroa.084.4147.i.i = phi i64 [ %i.bm, %bb.p ], [ 0, %.preheader.i.i ]
  %i.be = load i8, ptr %.sroa.0.4149.i.i, align 1, !alias.scope !342, !noalias !343, !noundef !4
  %i.bf = zext i8 %i.be to i32
  %i.bg = add nsw i32 %i.bf, -48                  ; 2 uses
  %i.bh = icmp ult i32 %i.bg, 10
  br i1 %i.bh, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.lr.ph150.i.i
  %i.bi = mul i64 %.sroa.084.4147.i.i, 10
  %i.bj = add nsw i64 %.sroa.26.4148.i.i, -1      ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i, i64 1
  %i.bl = zext nneg i32 %i.bg to i64
  %i.bm = add i64 %i.bi, %i.bl                    ; 2 uses
  %.not105.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not105.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph150.i.i

.loopexit.i:                                      ; preds = %bb.i, %bb.h, %.lr.ph.i.i, %.lr.ph141.i.i, %bb.n, %bb.m, %.preheader111.i.i, %.lr.ph150.i.i, %bb.d, %bb.d, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs4jkuqUqsG0h_8uu_shred.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !338
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload7.i, i64 noundef %.sroa.8.0.copyload10.i) #27, !noalias !344
  %i.bn = load i8, ptr %i.f, align 8, !range !14, !noalias !338, !noundef !4
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.s, label %bb.t

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i: ; preds = %bb.j, %bb.k, %bb.o, %bb.p, %.preheader.i.i, %.preheader114.i.i
  %.sroa.1514.0.i = phi i64 [ %i.bm, %bb.p ], [ %i.ap, %bb.k ], [ %i.bd, %bb.o ], [ 0, %.preheader.i.i ], [ 0, %.preheader114.i.i ], [ %i.ag, %bb.j ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs4jkuqUqsG0h_8uu_shred(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 4, i64 noundef %.sroa.1514.0.i) #26, !noalias !344
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i
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
  %i.l = phi i64 [ 1, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit ], [ %i.fu, %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.014.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.014.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) @36, i64 88, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %i.k, ptr %.sroa.2.0..sroa_idx, align 8
  %i.m = icmp eq i64 %i.k, 0
  br i1 %i.m, label %.lr.ph99.preheader, label %.lr.ph91

bb.a:                                             ; preds = %.lr.ph, %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79.thread
  %i.n = phi ptr [ %i.g, %.lr.ph ], [ %i.ft, %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79.thread ]
  %i.o = phi i64 [ 1, %.lr.ph ], [ %i.fu, %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79.thread ]
  %.sroa.046.089 = phi i64 [ 0, %.lr.ph ], [ %i.p, %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79.thread ]
  %i.p = add nuw nsw i64 %.sroa.046.089, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.533.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) @36, i64 88, i1 false)
  br label %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79

.lr.ph91:                                         ; preds = %._crit_edge, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit71
  %i.q = phi i64 [ %i.ac, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit71 ], [ %i.l, %._crit_edge ] ; 5 uses
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
  %i.x = phi i64 [ %i.l, %._crit_edge ], [ %i.q, %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit ], [ %i.ac, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit71 ], [ %i.q, %.lr.ph91 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre110.a = load i64, ptr %i.d, align 8, !range !7, !alias.scope !425
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
  %2 = load ptr, ptr %i.e, align 8, !alias.scope !426, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.q
  store i32 %.sroa.013.0.copyload.i, ptr %i.ab, align 1, !noalias !426
  %i.ac = add i64 %i.q, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.f, align 8, !alias.scope !426
  %i.ad = icmp eq i64 %i.t, 0
  br i1 %i.ad, label %.lr.ph99.preheader, label %.lr.ph91

._crit_edge100:                                   ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvCs7g3JyErIm42_4rand8make_rngNtNtNtB2_4rngs3std6StdRngECs4jkuqUqsG0h_8uu_shred(ptr noalias nofree noundef align 4 captures(address) dereferenceable(320) %i.a) #26
  %i.ae = icmp eq i64 %i.am, 0
  br i1 %i.ae, label %bb.f, label %bb.e, !prof !5

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit72
  %i.af = phi i64 [ %i.aj, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit72 ], [ %.pre110.a, %.lr.ph99.preheader ] ; 2 uses
  %i.ag = phi i64 [ %i.am, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit72 ], [ %i.x, %.lr.ph99.preheader ] ; 10 uses
  %.sroa.048.098 = phi i64 [ %i.ah, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit72 ], [ 0, %.lr.ph99.preheader ] ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.048.098, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.ai = icmp eq i64 %i.ag, %i.af
  br i1 %i.ai, label %bb.d, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit72

bb.d:                                             ; preds = %.lr.ph99
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #27
  %.pre109.a = load i64, ptr %i.d, align 8, !range !7, !alias.scope !425
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit72

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit72: ; preds = %.lr.ph99, %bb.d
  %i.aj = phi i64 [ %i.af, %.lr.ph99 ], [ %.pre109.a, %bb.d ]
  %i.ak = load ptr, ptr %i.e, align 8, !alias.scope !425, !nonnull !4, !noundef !4
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ag
  store i32 2, ptr %i.al, align 1, !noalias !425
  %i.am = add i64 %i.ag, 1                        ; 7 uses
  store i64 %i.am, ptr %i.f, align 8, !alias.scope !425
  %exitcond108.not = icmp eq i64 %.sroa.048.098, %i.y
  br i1 %exitcond108.not, label %._crit_edge100, label %.lr.ph99

bb.e:                                             ; preds = %._crit_edge100
  %i.an = icmp ult i64 %i.am, 3
  br i1 %i.an, label %_RINvXs0_NtNtCs7g3JyErIm42_4rand3seq5sliceSNtCs4jkuqUqsG0h_8uu_shred8PassTypeNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs3std6StdRngEBG_.exit, label %bb.g

bb.f:                                             ; preds = %._crit_edge100
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.aq = icmp ult i64 %i.am, 4294967296
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 6 uses
  br i1 %i.aq, label %.lr.ph24.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 252 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.u, %.lr.ph.i
  %.sroa.08.019.i = phi i64 [ 0, %.lr.ph.i ], [ %i.au, %bb.u ] ; 4 uses
  %i.au = add nuw nsw i64 %.sroa.08.019.i, 1      ; 6 uses
  %i.av = icmp samesign ugt i64 %.sroa.08.019.i, 4294967294
  br i1 %i.av, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = trunc nuw i64 %i.au to i32              ; 2 uses
  %i.ax = load i32, ptr %i.a, align 4, !alias.scope !429, !noalias !430, !noundef !4 ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = icmp ugt i32 %i.ax, 63
  br i1 %i.az, label %bb.j, label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit12.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  call fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs4jkuqUqsG0h_8uu_shred(ptr noalias nofree noundef align 4 dereferenceable(64) %i.ar, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.a) #26, !noalias !430
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit12.i.i.i.i.i.i

_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit12.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i.i.i10.i.i.i.i.i.i = phi i64 [ 0, %bb.j ], [ %i.ay, %bb.i ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.0.0.i.i.i.i10.i.i.i.i.i.i
  %i.bb = load i32, ptr %i.ba, align 4, !alias.scope !431, !noalias !430, !noundef !4
  %i.bc = trunc nuw nsw i64 %.sroa.0.0.i.i.i.i10.i.i.i.i.i.i to i32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i11.i.i.i.i.i.i = add nuw nsw i32 %i.bc, 1 ; 2 uses
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i11.i.i.i.i.i.i, ptr %i.a, align 4, !alias.scope !431, !noalias !430
  %i.bd = zext i32 %i.bb to i64
  %i.be = mul nuw i64 %i.au, %i.bd                ; 2 uses
  %i.bf = lshr i64 %i.be, 32                      ; 2 uses
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  %i.bh = sub i32 0, %i.aw
  %i.bi = icmp ult i32 %i.bh, %i.bg
  br i1 %i.bi, label %bb.k, label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs4jkuqUqsG0h_8uu_shred.exit.i

bb.k:                                             ; preds = %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit12.i.i.i.i.i.i
  %i.bj = zext nneg i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i11.i.i.i.i.i.i to i64
  %i.bk = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i10.i.i.i.i.i.i, 62
  br i1 %i.bk, label %bb.l, label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit15.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  call fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs4jkuqUqsG0h_8uu_shred(ptr noalias nofree noundef align 4 dereferenceable(64) %i.ar, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.a) #26, !noalias !430
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit15.i.i.i.i.i.i

_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit15.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.i.i.i.i13.i.i.i.i.i.i = phi i64 [ 0, %bb.l ], [ %i.bj, %bb.k ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.0.0.i.i.i.i13.i.i.i.i.i.i
  %i.bm = load i32, ptr %i.bl, align 4, !alias.scope !432, !noalias !430, !noundef !4
  %i.bn = trunc nuw nsw i64 %.sroa.0.0.i.i.i.i13.i.i.i.i.i.i to i32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i.i.i.i.i = add nuw nsw i32 %i.bn, 1
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i.i.i.i.i, ptr %i.a, align 4, !alias.scope !432, !noalias !430
  %i.bo = tail call i32 @llvm.umulh.i32(i32 %i.bm, i32 %i.aw)
  %i.bp = xor i32 %i.bg, -1
  %.not9.i.i.i.i.i.i = icmp ugt i32 %i.bo, %i.bp
  %i.bq = zext i1 %.not9.i.i.i.i.i.i to i64
  %i.br = add nuw nsw i64 %i.bf, %i.bq
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs4jkuqUqsG0h_8uu_shred.exit.i

bb.m:                                             ; preds = %bb.h
  %i.bs = load i32, ptr %i.a, align 4, !alias.scope !433, !noalias !434, !noundef !4 ; 4 uses
  %i.bt = icmp ult i32 %i.bs, 63
  br i1 %i.bt, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = load i32, ptr %i.as, align 4, !alias.scope !435, !noalias !434, !noundef !4
  call fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs4jkuqUqsG0h_8uu_shred(ptr noalias nofree noundef align 4 dereferenceable(64) %i.ar, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.a) #26, !noalias !434
  %i.bv = load i32, ptr %i.a, align 4, !alias.scope !435, !noalias !434, !noundef !4 ; 2 uses
  %.not.i.i.i.i7.i.i.i.i.i.i = icmp eq i32 %i.bs, 63
  br i1 %.not.i.i.i.i7.i.i.i.i.i.i, label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit11.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = load i32, ptr %i.at, align 4, !alias.scope !435, !noalias !434, !noundef !4
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit11.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.m
  %i.bx = zext nneg i32 %i.bs to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bx ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !alias.scope !435, !noalias !434, !noundef !4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !alias.scope !435, !noalias !434, !noundef !4
  %i.cc = add nuw nsw i32 %i.bs, 2
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit11.i.i.i.i.i.i

_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit11.i.i.i.i.i.i: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0.018.i.i.i.i8.i.i.i.i.i.i = phi i32 [ %i.cc, %bb.p ], [ 1, %bb.n ], [ 2, %bb.o ] ; 5 uses
  %.sroa.02.017.i.i.i.i9.i.i.i.i.i.i = phi i32 [ %i.bz, %bb.p ], [ %i.bu, %bb.n ], [ %i.bv, %bb.o ]
  %.sroa.03.016.i.i.i.i10.i.i.i.i.i.i = phi i32 [ %i.cb, %bb.p ], [ %i.bv, %bb.n ], [ %i.bw, %bb.o ]
  store i32 %.sroa.0.018.i.i.i.i8.i.i.i.i.i.i, ptr %i.a, align 4, !alias.scope !435, !noalias !434
  %i.cd = zext i32 %.sroa.03.016.i.i.i.i10.i.i.i.i.i.i to i64
  %i.ce = shl nuw i64 %i.cd, 32
  %i.cf = zext i32 %.sroa.02.017.i.i.i.i9.i.i.i.i.i.i to i64
  %i.cg = or disjoint i64 %i.ce, %i.cf
  %i.ch = zext i64 %i.cg to i128
  %i.ci = zext nneg i64 %i.au to i128
  %i.cj = mul nuw nsw i128 %i.ch, %i.ci           ; 2 uses
  %i.ck = lshr i128 %i.cj, 64
  %i.cl = trunc nuw nsw i128 %i.ck to i64         ; 2 uses
  %i.cm = trunc i128 %i.cj to i64                 ; 2 uses
  %i.cn = xor i64 %.sroa.08.019.i, -1
  %i.co = icmp ult i64 %i.cn, %i.cm
  br i1 %i.co, label %bb.q, label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs4jkuqUqsG0h_8uu_shred.exit.i

bb.q:                                             ; preds = %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit11.i.i.i.i.i.i
  %i.cp = icmp samesign ult i32 %.sroa.0.018.i.i.i.i8.i.i.i.i.i.i, 63
  br i1 %i.cp, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cq = load i32, ptr %i.as, align 4, !alias.scope !436, !noalias !434, !noundef !4
  call fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs4jkuqUqsG0h_8uu_shred(ptr noalias nofree noundef align 4 dereferenceable(64) %i.ar, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.a) #26, !noalias !434
  %i.cr = load i32, ptr %i.a, align 4, !alias.scope !436, !noalias !434, !noundef !4 ; 2 uses
  %.not.i.i.i.i12.i.i.i.i.i.i = icmp eq i32 %.sroa.0.018.i.i.i.i8.i.i.i.i.i.i, 63
  br i1 %.not.i.i.i.i12.i.i.i.i.i.i, label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit16.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = load i32, ptr %i.at, align 4, !alias.scope !436, !noalias !434, !noundef !4
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit16.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.q
  %i.ct = zext nneg i32 %.sroa.0.018.i.i.i.i8.i.i.i.i.i.i to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ct ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !alias.scope !436, !noalias !434, !noundef !4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !alias.scope !436, !noalias !434, !noundef !4
  %i.cy = add nuw nsw i32 %.sroa.0.018.i.i.i.i8.i.i.i.i.i.i, 2
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit16.i.i.i.i.i.i

_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit16.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.018.i.i.i.i13.i.i.i.i.i.i = phi i32 [ %i.cy, %bb.t ], [ 1, %bb.r ], [ 2, %bb.s ]
  %.sroa.02.017.i.i.i.i14.i.i.i.i.i.i = phi i32 [ %i.cv, %bb.t ], [ %i.cq, %bb.r ], [ %i.cr, %bb.s ]
  %.sroa.03.016.i.i.i.i15.i.i.i.i.i.i = phi i32 [ %i.cx, %bb.t ], [ %i.cr, %bb.r ], [ %i.cs, %bb.s ]
  store i32 %.sroa.0.018.i.i.i.i13.i.i.i.i.i.i, ptr %i.a, align 4, !alias.scope !436, !noalias !434
  %i.cz = zext i32 %.sroa.03.016.i.i.i.i15.i.i.i.i.i.i to i64
  %i.da = shl nuw i64 %i.cz, 32
  %i.db = zext i32 %.sroa.02.017.i.i.i.i14.i.i.i.i.i.i to i64
  %i.dc = or disjoint i64 %i.da, %i.db
  %i.dd = tail call i64 @llvm.umulh.i64(i64 %i.dc, i64 range(i64 1, 2305843009213693952) %i.au)
  %i.de = xor i64 %i.cm, -1
  %.not6.i.i.i.i.i.i = icmp ugt i64 %i.dd, %i.de
  %i.df = zext i1 %.not6.i.i.i.i.i.i to i64
  %i.dg = add nuw nsw i64 %i.df, %i.cl
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs4jkuqUqsG0h_8uu_shred.exit.i

_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs4jkuqUqsG0h_8uu_shred.exit.i: ; preds = %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit16.i.i.i.i.i.i, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit11.i.i.i.i.i.i, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit15.i.i.i.i.i.i, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit12.i.i.i.i.i.i
  %.sroa.01.0.i.i.sink.i.i.i.i = phi i64 [ %i.cl, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit11.i.i.i.i.i.i ], [ %i.dg, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs4jkuqUqsG0h_8uu_shred.exit16.i.i.i.i.i.i ], [ %i.br, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit15.i.i.i.i.i.i ], [ %i.bf, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit12.i.i.i.i.i.i ] ; 3 uses
  %i.dh = icmp ult i64 %.sroa.01.0.i.i.sink.i.i.i.i, %i.ag
end_hunk_0
begin_hunk_1_@_RNvCs4jkuqUqsG0h_8uu_shred29create_standard_pass_sequence:_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit

bb.u:                                             ; preds = %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs4jkuqUqsG0h_8uu_shred.exit.i
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.sroa.08.019.i ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.sroa.01.0.i.i.sink.i.i.i.i ; 2 uses
  %.sroa.010.0.copyload.i = load i32, ptr %i.di, align 1, !alias.scope !427, !noalias !437
  %i.dk = load i32, ptr %i.dj, align 1, !alias.scope !427, !noalias !437
  store i32 %i.dk, ptr %i.di, align 1, !alias.scope !427, !noalias !437
  store i32 %.sroa.010.0.copyload.i, ptr %i.dj, align 1, !alias.scope !427, !noalias !437
  %exitcond.not.i = icmp eq i64 %i.au, %i.ag
  br i1 %exitcond.not.i, label %_RINvXs0_NtNtCs7g3JyErIm42_4rand3seq5sliceSNtCs4jkuqUqsG0h_8uu_shred8PassTypeNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs3std6StdRngEBG_.exit, label %bb.h

bb.v:                                             ; preds = %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs4jkuqUqsG0h_8uu_shred.exit.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.0.i.i.sink.i.i.i.i, i64 noundef range(i64 2, 2305843009213693952) %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #28, !noalias !438
  unreachable

.lr.ph24.i:                                       ; preds = %bb.g, %bb.ae
  %.sroa.04.023.i = phi i64 [ %i.dl, %bb.ae ], [ 0, %bb.g ] ; 2 uses
  %.sroa.4.022.i = phi i32 [ %i.dm, %bb.ae ], [ 0, %bb.g ] ; 3 uses
  %.sroa.7.021.i = phi i32 [ %.sroa.7.2.i, %bb.ae ], [ 0, %bb.g ]
  %.sroa.12.020.i = phi i8 [ %.sroa.01.0.i.i, %bb.ae ], [ 1, %bb.g ] ; 2 uses
  %i.dl = add nuw nsw i64 %.sroa.04.023.i, 1      ; 2 uses
  %i.dm = add nuw i32 %.sroa.4.022.i, 1           ; 6 uses
  %i.dn = icmp eq i8 %.sroa.12.020.i, 0
  br i1 %i.dn, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph24.i
  %i.do = add i8 %.sroa.12.020.i, -1
  br label %bb.ac

bb.x:                                             ; preds = %.lr.ph24.i
  %i.dp = icmp eq i32 %i.dm, 2
  br i1 %i.dp, label %.thread.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.x
  %.sroa.0.012.i.i.i = add nuw i32 %.sroa.4.022.i, 2 ; 2 uses
  %i.dq = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.dm, i32 %.sroa.0.012.i.i.i) ; 2 uses
  %i.dr = extractvalue { i32, i1 } %i.dq, 1
  br i1 %i.dr, label %.thread.i.i.i, label %.lr.ph.i.i.i, !prof !439

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  %i.ds = sub i32 %.sroa.0.013.i.i.i, %.sroa.4.022.i
  %i.dt = trunc i32 %i.ds to i8
  %i.du = add i8 %i.dt, -1
  %i.dv = icmp eq i32 %i.et, 0
  br i1 %i.dv, label %bb.ab, label %.thread.i.i.i, !prof !440

.thread.i.i.i:                                    ; preds = %.preheader.i.i.i, %._crit_edge.i.i.i, %bb.x
  %.sroa.03.010.i.i.i = phi i32 [ %i.et, %._crit_edge.i.i.i ], [ 479001600, %bb.x ], [ %i.dm, %.preheader.i.i.i ] ; 3 uses
  %.sroa.05.09.i.i.i = phi i8 [ %i.du, %._crit_edge.i.i.i ], [ 10, %bb.x ], [ 0, %.preheader.i.i.i ]
  %i.dw = load i32, ptr %i.a, align 4, !alias.scope !428, !noalias !441, !noundef !4 ; 2 uses
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = icmp ugt i32 %i.dw, 63
  br i1 %i.dy, label %bb.y, label %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtBa_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit14.i.i.i.i.i.i.i

bb.y:                                             ; preds = %.thread.i.i.i
  call fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs4jkuqUqsG0h_8uu_shred(ptr noalias nofree noundef align 4 dereferenceable(64) %i.ar, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.a) #26, !noalias !441
  br label %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtBa_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit14.i.i.i.i.i.i.i

_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtBa_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit14.i.i.i.i.i.i.i: ; preds = %bb.y, %.thread.i.i.i
  %.sroa.0.0.i.i.i.i.i12.i.i.i.i.i.i.i = phi i64 [ 0, %bb.y ], [ %i.dx, %.thread.i.i.i ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.0.0.i.i.i.i.i12.i.i.i.i.i.i.i
  %i.ea = load i32, ptr %i.dz, align 4, !alias.scope !442, !noalias !441, !noundef !4
  %i.eb = trunc nuw nsw i64 %.sroa.0.0.i.i.i.i.i12.i.i.i.i.i.i.i to i32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i13.i.i.i.i.i.i.i = add nuw nsw i32 %i.eb, 1 ; 2 uses
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i13.i.i.i.i.i.i.i, ptr %i.a, align 4, !alias.scope !442, !noalias !441
  %i.ec = zext i32 %i.ea to i64
  %i.ed = zext i32 %.sroa.03.010.i.i.i to i64
  %i.ee = mul nuw i64 %i.ec, %i.ed                ; 2 uses
  %i.ef = lshr i64 %i.ee, 32                      ; 2 uses
  %i.eg = trunc i64 %i.ee to i32                  ; 2 uses
  %i.eh = sub i32 0, %.sroa.03.010.i.i.i
  %i.ei = icmp ugt i32 %i.eg, %i.eh
  br i1 %i.ei, label %bb.z, label %_RNCNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs3std6StdRngE10next_index0Cs4jkuqUqsG0h_8uu_shred.exit.i.i

bb.z:                                             ; preds = %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtBa_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit14.i.i.i.i.i.i.i
  %i.ej = zext nneg i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i13.i.i.i.i.i.i.i to i64
  %i.ek = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i.i12.i.i.i.i.i.i.i, 62
  br i1 %i.ek, label %bb.aa, label %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtBa_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit17.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  call fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs4jkuqUqsG0h_8uu_shred(ptr noalias nofree noundef align 4 dereferenceable(64) %i.ar, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.a) #26, !noalias !441
  br label %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtBa_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit17.i.i.i.i.i.i.i

_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtBa_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit17.i.i.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.0.0.i.i.i.i.i15.i.i.i.i.i.i.i = phi i64 [ 0, %bb.aa ], [ %i.ej, %bb.z ] ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.0.0.i.i.i.i.i15.i.i.i.i.i.i.i
  %i.em = load i32, ptr %i.el, align 4, !alias.scope !443, !noalias !441, !noundef !4
  %i.en = trunc nuw nsw i64 %.sroa.0.0.i.i.i.i.i15.i.i.i.i.i.i.i to i32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i16.i.i.i.i.i.i.i = add nuw nsw i32 %i.en, 1
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i16.i.i.i.i.i.i.i, ptr %i.a, align 4, !alias.scope !443, !noalias !441
  %i.eo = tail call i32 @llvm.umulh.i32(i32 %i.em, i32 %.sroa.03.010.i.i.i)
  %i.ep = xor i32 %i.eg, -1
  %.not9.i.i.i.i.i.i.i = icmp ugt i32 %i.eo, %i.ep
  %i.eq = zext i1 %.not9.i.i.i.i.i.i.i to i64
  %i.er = add nuw nsw i64 %i.ef, %i.eq
  br label %_RNCNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs3std6StdRngE10next_index0Cs4jkuqUqsG0h_8uu_shred.exit.i.i

bb.ab:                                            ; preds = %._crit_edge.i.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #28, !noalias !444
  unreachable

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %i.es = phi { i32, i1 } [ %i.eu, %.lr.ph.i.i.i ], [ %i.dq, %.preheader.i.i.i ]
  %.sroa.0.013.i.i.i = phi i32 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.012.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %i.et = extractvalue { i32, i1 } %i.es, 0       ; 3 uses
  %.sroa.0.0.i.i.i = add i32 %.sroa.0.013.i.i.i, 1 ; 2 uses
  %i.eu = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.et, i32 %.sroa.0.0.i.i.i) ; 2 uses
  %i.ev = extractvalue { i32, i1 } %i.eu, 1
  br i1 %i.ev, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !prof !445

_RNCNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs3std6StdRngE10next_index0Cs4jkuqUqsG0h_8uu_shred.exit.i.i: ; preds = %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtBa_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit17.i.i.i.i.i.i.i, %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtBa_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit14.i.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i = phi i64 [ %i.er, %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtBa_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit17.i.i.i.i.i.i.i ], [ %i.ef, %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs3std6StdRngNtNtBa_3rng6RngExt6randommECs4jkuqUqsG0h_8uu_shred.exit14.i.i.i.i.i.i.i ]
  %.sroa.6.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.04.0.i.i.i.i.i.i.i to i32
  br label %bb.ac

bb.ac:                                            ; preds = %_RNCNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs3std6StdRngE10next_index0Cs4jkuqUqsG0h_8uu_shred.exit.i.i, %bb.w
  %.sroa.7.1.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i.i, %_RNCNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs3std6StdRngE10next_index0Cs4jkuqUqsG0h_8uu_shred.exit.i.i ], [ %.sroa.7.021.i, %bb.w ] ; 4 uses
  %.sroa.01.0.i.i = phi i8 [ %.sroa.05.09.i.i.i, %_RNCNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs3std6StdRngE10next_index0Cs4jkuqUqsG0h_8uu_shred.exit.i.i ], [ %i.do, %bb.w ] ; 2 uses
  %i.ew = icmp eq i8 %.sroa.01.0.i.i, 0
  br i1 %i.ew, label %_RNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs3std6StdRngE10next_indexCs4jkuqUqsG0h_8uu_shred.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ex = urem i32 %.sroa.7.1.i, %i.dm
  %i.ey = udiv i32 %.sroa.7.1.i, %i.dm
  br label %_RNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs3std6StdRngE10next_indexCs4jkuqUqsG0h_8uu_shred.exit.i

_RNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs3std6StdRngE10next_indexCs4jkuqUqsG0h_8uu_shred.exit.i: ; preds = %bb.ad, %bb.ac
  %.sroa.7.2.i = phi i32 [ %i.ey, %bb.ad ], [ %.sroa.7.1.i, %bb.ac ]
  %.sroa.0.0.in.i.i = phi i32 [ %i.ex, %bb.ad ], [ %.sroa.7.1.i, %bb.ac ]
  %.sroa.0.0.i.i = zext i32 %.sroa.0.0.in.i.i to i64 ; 3 uses
  %i.ez = icmp samesign ugt i64 %i.ag, %.sroa.0.0.i.i
  br i1 %i.ez, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_RNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs3std6StdRngE10next_indexCs4jkuqUqsG0h_8uu_shred.exit.i
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.sroa.04.023.i ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.sroa.0.0.i.i ; 2 uses
  %.sroa.06.0.copyload.i = load i32, ptr %i.fa, align 1, !alias.scope !427, !noalias !437
  %i.fc = load i32, ptr %i.fb, align 1, !alias.scope !427, !noalias !437
  store i32 %i.fc, ptr %i.fa, align 1, !alias.scope !427, !noalias !437
  store i32 %.sroa.06.0.copyload.i, ptr %i.fb, align 1, !alias.scope !427, !noalias !437
  %exitcond28.not.i = icmp eq i64 %i.dl, %i.ag
  br i1 %exitcond28.not.i, label %_RINvXs0_NtNtCs7g3JyErIm42_4rand3seq5sliceSNtCs4jkuqUqsG0h_8uu_shred8PassTypeNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs3std6StdRngEBG_.exit, label %.lr.ph24.i

bb.af:                                            ; preds = %_RNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs3std6StdRngE10next_indexCs4jkuqUqsG0h_8uu_shred.exit.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i.i, i64 noundef range(i64 2, 2305843009213693952) %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #28, !noalias !438
  unreachable

_RINvXs0_NtNtCs7g3JyErIm42_4rand3seq5sliceSNtCs4jkuqUqsG0h_8uu_shred8PassTypeNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs3std6StdRngEBG_.exit: ; preds = %bb.u, %bb.ae, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %i.fd = load i64, ptr %i.d, align 8, !range !7, !alias.scope !446, !noundef !4
  %i.fe = icmp eq i64 %i.am, %i.fd
  br i1 %i.fe, label %bb.ag, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit75

bb.ag:                                            ; preds = %_RINvXs0_NtNtCs7g3JyErIm42_4rand3seq5sliceSNtCs4jkuqUqsG0h_8uu_shred8PassTypeNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs3std6StdRngEBG_.exit
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #27
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit75

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit75: ; preds = %_RINvXs0_NtNtCs7g3JyErIm42_4rand3seq5sliceSNtCs4jkuqUqsG0h_8uu_shred8PassTypeNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs3std6StdRngEBG_.exit, %bb.ag
  %i.ff = load ptr, ptr %i.e, align 8, !alias.scope !446, !nonnull !4, !noundef !4
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.am
  store i32 2, ptr %i.fg, align 1, !noalias !446
  %i.fh = add i64 %i.ag, 2
  store i64 %i.fh, ptr %i.f, align 8, !alias.scope !446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79: ; preds = %bb.a, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit80
  %i.fi = phi ptr [ %i.n, %bb.a ], [ %i.fq, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit80 ] ; 2 uses
  %i.fj = phi i64 [ %i.o, %bb.a ], [ %i.fs, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit80 ] ; 4 uses
  %i.fk = phi i64 [ 0, %bb.a ], [ %i.fl, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit80 ] ; 2 uses
  %i.fl = add nuw nsw i64 %i.fk, 1                ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.533.0..sroa_idx, i64 %i.fk
  %.sroa.013.0.copyload.i77 = load i32, ptr %i.fm, align 4, !alias.scope !447 ; 2 uses
  %i.fn = and i32 %.sroa.013.0.copyload.i77, 255
  %.not70 = icmp eq i32 %i.fn, 2
  br i1 %.not70, label %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79.thread, label %bb.ah

bb.ah:                                            ; preds = %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %i.fo = load i64, ptr %i.d, align 8, !range !7, !alias.scope !448, !noundef !4
  %i.fp = icmp eq i64 %i.fj, %i.fo
  br i1 %i.fp, label %bb.ai, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit80

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #27
  %.pre = load ptr, ptr %i.e, align 8, !alias.scope !448
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit80

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit80: ; preds = %bb.ah, %bb.ai
  %i.fq = phi ptr [ %i.fi, %bb.ah ], [ %.pre, %bb.ai ] ; 3 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fj
  store i32 %.sroa.013.0.copyload.i77, ptr %i.fr, align 1, !noalias !448
  %i.fs = add i64 %i.fj, 1                        ; 3 uses
  store i64 %i.fs, ptr %i.f, align 8, !alias.scope !448
  %.not.i76 = icmp eq i64 %i.fl, 22
  br i1 %.not.i76, label %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79.thread, label %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79

_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79.thread: ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit80, %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79
  %i.ft = phi ptr [ %i.fq, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit80 ], [ %i.fi, %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79 ]
  %i.fu = phi i64 [ %i.fs, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit80 ], [ %i.fj, %_RNvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCs4jkuqUqsG0h_8uu_shred7PatternEE4nextB1W_.exit79 ] ; 2 uses
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
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.22.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
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
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !4
  call void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %i.aq) #26
  %.sroa.0.0.copyload.i33 = load i64, ptr %i.w, align 8, !alias.scope !774, !noalias !775 ; 2 uses
  %i.ar = icmp eq i64 %.sroa.0.0.copyload.i33, -1 ; 2 uses
  %.sroa.55.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.5.i32.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i34, align 8
  %.sroa.5.i32.sroa.4.0..sroa.55.0..sroa_idx.i34.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.5.i32.sroa.4.0.copyload = load i64, ptr %.sroa.5.i32.sroa.4.0..sroa.55.0..sroa_idx.i34.sroa_idx, align 8
  %.sroa.5.i32.sroa.0.0 = select i1 %i.ar, ptr undef, ptr %.sroa.5.i32.sroa.0.0.copyload
  %.sroa.5.i32.sroa.4.0 = select i1 %i.ar, i64 undef, i64 %.sroa.5.i32.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 0, ptr %i.aa, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 1, ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.9.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.10.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.12.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.14.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.17.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.19.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.21.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.23.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 216
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.24.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.26.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.28.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 264
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.29.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 272
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.30.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 296
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.32.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 320
  store i64 %.sroa.0.0.copyload.i21, ptr %.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 328
  store ptr %.sroa.5.i20.sroa.0.0, ptr %.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 336
  store i64 %.sroa.5.i20.sroa.4.0, ptr %.sroa.0.sroa.0.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 344
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.6.sroa.6.0..sroa.0.sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 368
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.6.sroa.6.0..sroa.0.sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.6.sroa.8.0..sroa.0.sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 392
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.6.sroa.8.0..sroa.0.sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 416
  store i64 %.sroa.0.0.copyload.i27, ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 424
  store ptr %.sroa.5.i26.sroa.0.0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 432
  store i64 %.sroa.5.i26.sroa.4.0, ptr %.sroa.0.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 440
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 464
  store i64 %.sroa.0.0.copyload.i33, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 472
  store ptr %.sroa.5.i32.sroa.0.0, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 480
  store i64 %.sroa.5.i32.sroa.4.0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 488
  store i64 -1, ptr %.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.6.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 512
  store i64 -1, ptr %.sroa.0.sroa.6.sroa.6.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.8.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 536
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.0.sroa.6.sroa.8.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.9.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 544
  store ptr %.sroa.5.i.sroa.0.0, ptr %.sroa.0.sroa.6.sroa.9.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.10.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 552
  store i64 %.sroa.5.i.sroa.4.0, ptr %.sroa.0.sroa.6.sroa.10.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.11.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 560
  store ptr @40, ptr %.sroa.0.sroa.6.sroa.11.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.12.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 568
  store i64 5, ptr %.sroa.0.sroa.6.sroa.12.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.13.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 576
  store ptr null, ptr %.sroa.0.sroa.6.sroa.13.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.15.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 592
  store ptr null, ptr %.sroa.0.sroa.6.sroa.15.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.17.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 608
  store ptr @41, ptr %.sroa.0.sroa.6.sroa.17.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
end_hunk_1
begin_hunk_2_@_RNvCs4jkuqUqsG0h_8uu_shred9wipe_file:bb.a

bb.dg:                                            ; preds = %_RNCNvCs4jkuqUqsG0h_8uu_shred9wipe_files1_0B3_.exit.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #29, !noalias !1355
  unreachable

bb.dh:                                            ; preds = %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCs4jkuqUqsG0h_8uu_shred9wipe_files0_0EB3d_.exit.thread
  %i.rf = icmp ult i64 %1, 4
  br i1 %i.rf, label %.preheader, label %bb.di

.preheader:                                       ; preds = %bb.dh
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit651, label %.lr.ph

bb.di:                                            ; preds = %bb.dh
  %.not149 = icmp eq ptr %7, null
  br i1 %.not149, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.rg = load i64, ptr %7, align 8, !noalias !1356, !noundef !4
  %i.rh = icmp eq i64 %i.rg, 0
  br i1 %i.rh, label %bb.dk, label %bb.dn, !prof !19

bb.dk:                                            ; preds = %bb.dj
  store i64 -1, ptr %7, align 8, !noalias !1356
  %i.ri = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.rj = call { i64, ptr } @_RNvXsc_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io4seek4Seek4seek(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.ri, i64 noundef 0, i64 noundef 0) #26, !noalias !1356 ; 2 uses
  %i.rk = extractvalue { i64, ptr } %i.rj, 0
  %i.rl = extractvalue { i64, ptr } %i.rj, 1
  %i.rm = trunc nuw i64 %i.rk to i1
  br i1 %i.rm, label %bb.dl, label %bb.do

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i), !noalias !1357
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.0.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 25) #26, !noalias !1357
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1358
  %i.rn = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #26, !noalias !1358 ; 4 uses
  %i.ro = icmp eq ptr %i.rn, null
  br i1 %i.ro, label %bb.dm, label %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit.thread, !prof !5

bb.dm:                                            ; preds = %bb.dl
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #29, !noalias !1358
  unreachable

bb.dn:                                            ; preds = %bb.dj
  call void @_RNvNtCs6JMX4GRUq9U_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !1356
  unreachable

_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit.thread: ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rn, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, i64 24, i1 false), !noalias !1357
  %.sroa.4.0..sroa_idx.i.i301 = getelementptr inbounds nuw i8, ptr %i.rn, i64 24
  store ptr %i.rl, ptr %.sroa.4.0..sroa_idx.i.i301, align 8, !noalias !1357
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i), !noalias !1357
  %i.rp = load i64, ptr %7, align 8, !noalias !1356, !noundef !4
  %i.rq = add i64 %i.rp, 1
  store i64 %i.rq, ptr %7, align 8, !noalias !1356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit._crit_edge

bb.do:                                            ; preds = %bb.dk
  %i.rr = load i64, ptr %7, align 8, !noalias !1356, !noundef !4
  %i.rs = add i64 %i.rr, 1                        ; 2 uses
  store i64 %i.rs, ptr %7, align 8, !noalias !1356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1356
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.ah, i8 0, i64 1024, i1 false), !noalias !1356
  %i.rt = icmp eq i64 %i.rs, 0
  br i1 %i.rt, label %bb.dp, label %bb.dx, !prof !19

bb.dp:                                            ; preds = %bb.do
  store i64 -1, ptr %7, align 8, !noalias !1356
  %i.ru = call { i64, ptr } @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.ri, ptr noalias nofree noundef nonnull %i.ah, i64 noundef 1024) #26, !noalias !1356 ; 2 uses
  %i.rv = extractvalue { i64, ptr } %i.ru, 0
  %i.rw = extractvalue { i64, ptr } %i.ru, 1      ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  %i.rx = ptrtoint ptr %i.rw to i64               ; 4 uses
  %i.ry = trunc nuw i64 %i.rv to i1
  br i1 %i.ry, label %_RNCNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequences_0B3_.exit.thread.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  %.not.i.i.i = icmp eq ptr %i.rw, null
  br i1 %.not.i.i.i, label %.loopexit.i299, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.rz = icmp ult ptr %i.rw, inttoptr (i64 1025 to ptr)
  br i1 %i.rz, label %.lr.ph1083, label %bb.ds, !prof !19

bb.ds:                                            ; preds = %bb.dr
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.rx, i64 noundef 1024, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #28, !noalias !1361
  unreachable

.lr.ph1083:                                       ; preds = %bb.dr
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.rx
  br label %bb.du

bb.dt:                                            ; preds = %bb.du
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sd, i64 1 ; 2 uses
  %i.sc = icmp eq ptr %i.sb, %i.sa
  br i1 %i.sc, label %_RINvMNtCs6JMX4GRUq9U_4core6resultINtB3_6ResultjNtNtNtB5_2io5error5ErrorE9is_ok_andNCNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequences_0EB1m_.exit.i, label %bb.du

bb.du:                                            ; preds = %.lr.ph1083, %bb.dt
  %i.sd = phi ptr [ %i.ah, %.lr.ph1083 ], [ %i.sb, %bb.dt ] ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.sd, align 1, !alias.scope !1362, !noalias !1363, !noundef !4
  %i.se = icmp eq i8 %.val.i.i.i.i, 85
  br i1 %i.se, label %bb.dt, label %.loopexit.i299

_RNCNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequences_0B3_.exit.thread.i.i: ; preds = %bb.dp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rw) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1364
  %i.sf = and i64 %i.rx, 3
  switch i64 %i.sf, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs4jkuqUqsG0h_8uu_shred.exit.i.i
    i64 3, label %bb.dv
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs4jkuqUqsG0h_8uu_shred.exit.i.i
    i64 1, label %bb.dw
  ], !prof !9

bb.dv:                                            ; preds = %_RNCNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequences_0B3_.exit.thread.i.i
  %i.sg = icmp ult ptr %i.rw, inttoptr (i64 188978561024 to ptr)
  %i.sh = and i64 %i.rx, 1095216660480
  %i.si = icmp ne i64 %i.sh, 1095216660480
  call void @llvm.assume(i1 %i.sg)
  call void @llvm.assume(i1 %i.si)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs4jkuqUqsG0h_8uu_shred.exit.i.i

bb.dw:                                            ; preds = %_RNCNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequences_0B3_.exit.thread.i.i
  %i.sj = getelementptr i8, ptr %i.rw, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sj) ]
  %i.sk = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.sj, ptr %i.sk, align 8, !alias.scope !1365, !noalias !1364
  store i8 3, ptr %i.af, align 8, !alias.scope !1365, !noalias !1364
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.sk) #26, !noalias !1364
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs4jkuqUqsG0h_8uu_shred.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs4jkuqUqsG0h_8uu_shred.exit.i.i: ; preds = %bb.dw, %bb.dv, %_RNCNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequences_0B3_.exit.thread.i.i, %_RNCNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequences_0B3_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1364
  br label %.loopexit.i299

bb.dx:                                            ; preds = %bb.do
  call void @_RNvNtCs6JMX4GRUq9U_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28, !noalias !1356
  unreachable

.loopexit.i299:                                   ; preds = %bb.du, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs4jkuqUqsG0h_8uu_shred.exit.i.i, %bb.dq
  %i.sl = load i64, ptr %7, align 8, !noalias !1356, !noundef !4
  %i.sm = add i64 %i.sl, 1
  store i64 %i.sm, ptr %7, align 8, !noalias !1356
  call fastcc void @_RNvCs4jkuqUqsG0h_8uu_shred29create_standard_pass_sequence(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ca, i64 noundef range(i64 4, 0) %1) #26
  br label %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit

_RINvMNtCs6JMX4GRUq9U_4core6resultINtB3_6ResultjNtNtNtB5_2io5error5ErrorE9is_ok_andNCNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequences_0EB1m_.exit.i: ; preds = %bb.dt
  %i.sn = load i64, ptr %7, align 8, !noalias !1356, !noundef !4
  %i.so = add i64 %i.sn, 1
  store i64 %i.so, ptr %7, align 8, !noalias !1356
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1356
  %i.sp = call noundef align 4 dereferenceable_or_null(68) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 68, i64 noundef range(i64 1, 9) 4) #26, !noalias !1356 ; 8 uses
  %i.sq = icmp eq ptr %i.sp, null
  br i1 %i.sq, label %bb.dy, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit.i, !prof !5

bb.dy:                                            ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6resultINtB3_6ResultjNtNtNtB5_2io5error5ErrorE9is_ok_andNCNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequences_0EB1m_.exit.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 68) #29, !noalias !1356
  unreachable

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit.i: ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6resultINtB3_6ResultjNtNtNtB5_2io5error5ErrorE9is_ok_andNCNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequences_0EB1m_.exit.i
  store <4 x i32> <i32 4095, i32 2340, i32 2184, i32 3510>, ptr %i.sp, align 4, !noalias !1356
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  store <4 x i32> <i32 1911, i32 1170, i32 3003, i32 1365>, ptr %i.sr, align 4, !noalias !1356
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sp, i64 32
  store <4 x i32> <i32 2730, i32 1755, i32 585, i32 2457>, ptr %i.ss, align 4, !noalias !1356
  %i.st = getelementptr inbounds nuw i8, ptr %i.sp, i64 48
  store <4 x i32> <i32 273, i32 0, i32 2925, i32 3822>, ptr %i.st, align 4, !noalias !1356
  %i.su = getelementptr inbounds nuw i8, ptr %i.sp, i64 64
  store i32 819, ptr %i.su, align 4, !noalias !1356
  store i64 0, ptr %i.ag, align 8, !noalias !1356
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.sv, align 8, !noalias !1356
  %i.sw = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 6 uses
  store i64 0, ptr %i.sw, align 8, !noalias !1356
  %i.sx = udiv i64 %1, 10
  %..i.i = call noundef i64 @llvm.umax.i64(i64 range(i64 0, -1) %i.sx, i64 3) ; 3 uses
  %i.sy = sub i64 %1, %..i.i                      ; 3 uses
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag) #27, !noalias !1356
  %i.sz = load ptr, ptr %i.sv, align 8, !noalias !1356, !nonnull !4, !noundef !4
  store i32 2, ptr %i.sz, align 1, !noalias !1366
  store i64 1, ptr %i.sw, align 8, !noalias !1356
  %i.ta = add nsw i64 %..i.i, -2
  call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1368
  store i64 0, ptr %i.ae, align 8, !noalias !1368
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.tb, align 8, !noalias !1368
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  store i64 0, ptr %i.tc, align 8, !noalias !1368
  %i.td = add nsw i64 %..i.i, -1                  ; 2 uses
  %i.te = udiv i64 %i.sy, %i.td
  %i.tf = urem i64 %i.sy, %i.td
  %i.tg = add i64 %1, -2                          ; 2 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.ec, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit.i
  %i.th = phi ptr [ %i.uk, %bb.ec ], [ inttoptr (i64 1 to ptr), %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit.i ]
  %i.ti = phi i64 [ %i.ul, %bb.ec ], [ 0, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit.i ] ; 7 uses
  %.sroa.0.147.i.i = phi i64 [ %i.ud, %bb.ec ], [ 0, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit.i ] ; 2 uses
  %.sroa.07.046.i.i = phi i64 [ %.sroa.07.1.i.i, %bb.ec ], [ 0, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit.i ] ; 4 uses
  %.sroa.09.045.i.i = phi i64 [ %.sroa.09.1.i.i, %bb.ec ], [ 0, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit.i ]
  %.sroa.011.044.i.i = phi i64 [ %.sroa.011.1.i.i, %bb.ec ], [ 0, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit.i ] ; 4 uses
  %i.tj = icmp ult i64 %i.ti, %i.tg
  br i1 %i.tj, label %bb.dz, label %_RNvCs4jkuqUqsG0h_8uu_shred37generate_patterns_with_middle_randoms.exitthread-pre-split.i

bb.dz:                                            ; preds = %.lr.ph.split.i.i
  %i.tk = urem i64 %.sroa.0.147.i.i, 17
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %i.tk
  %i.tm = load i32, ptr %i.tl, align 4, !alias.scope !1367, !noalias !1369, !noundef !4 ; 4 uses
  %i.tn = and i32 %i.tm, 4095
  %i.to = mul nuw nsw i32 %i.tn, 4097
  %i.tp = lshr i32 %i.tm, 4                       ; 2 uses
  %i.tq = trunc i32 %i.tp to i8
  %i.tr = lshr i32 %i.to, 8                       ; 2 uses
  %i.ts = trunc i32 %i.tr to i8                   ; 2 uses
  %i.tt = trunc i32 %i.tm to i8
  %i.tu = icmp eq i8 %i.tq, %i.ts
  %i.tv = icmp eq i8 %i.ts, %i.tt
  %or.cond.i30.i.i = and i1 %i.tu, %i.tv
  br i1 %or.cond.i30.i.i, label %_RNvCs4jkuqUqsG0h_8uu_shred24pattern_value_to_pattern.exit40.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %.sroa.4.1.insert.ext.i31.i.i = and i32 %i.tr, 255
  %.sroa.4.2.insert.ext.i32.i.i = shl i32 %i.tm, 8
  %.sroa.4.2.insert.ext.masked.i33.i.i = and i32 %.sroa.4.2.insert.ext.i32.i.i, 65280
  %i.tw = or disjoint i32 %.sroa.4.1.insert.ext.i31.i.i, %.sroa.4.2.insert.ext.masked.i33.i.i
  %i.tx = shl nuw i32 %i.tw, 16
  br label %_RNvCs4jkuqUqsG0h_8uu_shred24pattern_value_to_pattern.exit40.i.i

_RNvCs4jkuqUqsG0h_8uu_shred24pattern_value_to_pattern.exit40.i.i: ; preds = %bb.ea, %bb.dz
  %.sroa.5.0.i34.i.i = phi i32 [ %i.tx, %bb.ea ], [ 0, %bb.dz ]
  %.sroa.0.0.i35.i.i = phi i32 [ 1, %bb.ea ], [ 0, %bb.dz ]
  %.sroa.3.0.insert.ext.i36.i.i = shl i32 %i.tp, 8
  %.sroa.3.0.insert.shift.i37.i.i = and i32 %.sroa.3.0.insert.ext.i36.i.i, 65280
  %.sroa.3.0.insert.insert.i38.i.i = or disjoint i32 %.sroa.5.0.i34.i.i, %.sroa.3.0.insert.shift.i37.i.i
  %.sroa.0.0.insert.insert.i39.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i38.i.i, %.sroa.0.0.i35.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  %i.ty = load i64, ptr %i.ae, align 8, !range !7, !alias.scope !1370, !noalias !1368, !noundef !4
  %i.tz = icmp eq i64 %i.ti, %i.ty
  br i1 %i.tz, label %bb.eb, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit41.i.i

bb.eb:                                            ; preds = %_RNvCs4jkuqUqsG0h_8uu_shred24pattern_value_to_pattern.exit40.i.i
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae) #27, !noalias !1368
  %.pre.i.i = load ptr, ptr %i.tb, align 8, !alias.scope !1370, !noalias !1368
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit41.i.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit41.i.i: ; preds = %bb.eb, %_RNvCs4jkuqUqsG0h_8uu_shred24pattern_value_to_pattern.exit40.i.i
  %i.ua = phi ptr [ %i.th, %_RNvCs4jkuqUqsG0h_8uu_shred24pattern_value_to_pattern.exit40.i.i ], [ %.pre.i.i, %bb.eb ] ; 3 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %i.ti
  store i32 %.sroa.0.0.insert.insert.i39.i.i, ptr %i.ub, align 1, !noalias !1371
  %i.uc = add nuw nsw i64 %i.ti, 1                ; 6 uses
  store i64 %i.uc, ptr %i.tc, align 8, !alias.scope !1370, !noalias !1368
  %i.ud = add nuw i64 %.sroa.0.147.i.i, 1         ; 2 uses
  %i.ue = add i64 %.sroa.09.045.i.i, 1            ; 3 uses
  %i.uf = icmp ult i64 %.sroa.07.046.i.i, %i.tf
  %i.ug = zext i1 %i.uf to i64
  %i.uh = add nuw i64 %i.te, %i.ug
  %i.ui = icmp uge i64 %i.ue, %i.uh
  %i.uj = icmp ult i64 %.sroa.011.044.i.i, %i.ta
  %or.cond.i.i = select i1 %i.ui, i1 %i.uj, i1 false
  br i1 %or.cond.i.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit42.i.i, %bb.ed, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit41.i.i
  %i.uk = phi ptr [ %10, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit42.i.i ], [ %i.ua, %bb.ed ], [ %i.ua, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit41.i.i ]
  %i.ul = phi i64 [ %i.ur, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit42.i.i ], [ %i.uc, %bb.ed ], [ %i.uc, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit41.i.i ] ; 2 uses
  %.sroa.011.1.i.i = phi i64 [ %i.us, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit42.i.i ], [ %.sroa.011.044.i.i, %bb.ed ], [ %.sroa.011.044.i.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit41.i.i ]
  %.sroa.09.1.i.i = phi i64 [ 0, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit42.i.i ], [ %i.ue, %bb.ed ], [ %i.ue, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit41.i.i ]
  %.sroa.07.1.i.i = phi i64 [ %i.ut, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit42.i.i ], [ %.sroa.07.046.i.i, %bb.ed ], [ %.sroa.07.046.i.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit41.i.i ]
  %exitcond.not.i.i = icmp eq i64 %i.ud, %i.sy
  br i1 %exitcond.not.i.i, label %_RNvCs4jkuqUqsG0h_8uu_shred37generate_patterns_with_middle_randoms.exitthread-pre-split.i, label %.lr.ph.split.i.i

bb.ed:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit41.i.i
  %i.um = icmp ne i64 %i.ti, 2305843009213693951
  call void @llvm.assume(i1 %i.um)
  %i.un = icmp ult i64 %i.uc, %i.tg
  br i1 %i.un, label %bb.ee, label %bb.ec

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  %i.uo = load i64, ptr %i.ae, align 8, !range !7, !alias.scope !1372, !noalias !1368, !noundef !4
  %i.up = icmp eq i64 %i.uc, %i.uo
  br i1 %i.up, label %bb.ef, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit42.i.i

bb.ef:                                            ; preds = %bb.ee
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae) #27, !noalias !1368
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit42.i.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit42.i.i: ; preds = %bb.ef, %bb.ee
  %10 = load ptr, ptr %i.tb, align 8, !alias.scope !1372, !noalias !1368, !nonnull !4, !noundef !4 ; 2 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.uc
  store i32 2, ptr %i.uq, align 1, !noalias !1373
  %i.ur = add nuw nsw i64 %i.ti, 2                ; 2 uses
  store i64 %i.ur, ptr %i.tc, align 8, !alias.scope !1372, !noalias !1368
  %i.us = add nuw nsw i64 %.sroa.011.044.i.i, 1
  %i.ut = add i64 %.sroa.07.046.i.i, 1
  br label %bb.ec

_RNvCs4jkuqUqsG0h_8uu_shred37generate_patterns_with_middle_randoms.exitthread-pre-split.i: ; preds = %bb.ec, %.lr.ph.split.i.i
  %.sroa.625.0.copyload.pr.i = phi i64 [ %i.ul, %bb.ec ], [ %i.ti, %.lr.ph.split.i.i ] ; 5 uses
  %.sroa.023.0.copyload.i = load i64, ptr %i.ae, align 8, !noalias !1374 ; 2 uses
  %.sroa.424.0.copyload.i = load ptr, ptr %i.tb, align 8, !noalias !1374, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1368
  %i.uu = load i64, ptr %i.sw, align 8, !noalias !1356, !noundef !4 ; 5 uses
  %i.uv = load i64, ptr %i.ag, align 8, !range !7, !noalias !1356, !noundef !4 ; 3 uses
  %i.uw = sub i64 %i.uv, %i.uu
  %i.ux = icmp ugt i64 %.sroa.625.0.copyload.pr.i, %i.uw
  br i1 %i.ux, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.thread.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.i.i, !prof !5

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.thread.i.i: ; preds = %_RNvCs4jkuqUqsG0h_8uu_shred37generate_patterns_with_middle_randoms.exitthread-pre-split.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4jkuqUqsG0h_8uu_shred(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag, i64 noundef %i.uu, i64 noundef %.sroa.625.0.copyload.pr.i, i64 noundef 1, i64 noundef 4) #26, !noalias !1356
  %i.uy = load i64, ptr %i.sw, align 8, !noalias !1356, !noundef !4 ; 2 uses
  %i.uz = icmp ult i64 %i.uy, 2305843009213693952
  call void @llvm.assume(i1 %i.uz)
  %.pre.pre.i = load i64, ptr %i.ag, align 8, !range !7, !noalias !1356
  br label %bb.eg

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.i.i: ; preds = %_RNvCs4jkuqUqsG0h_8uu_shred37generate_patterns_with_middle_randoms.exitthread-pre-split.i
  %i.va = icmp ult i64 %i.uu, 2305843009213693952
  call void @llvm.assume(i1 %i.va)
  %.not.i16.i = icmp eq i64 %.sroa.625.0.copyload.pr.i, 0
  br i1 %.not.i16.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE15append_elementsBG_.exit.i, label %bb.eg

bb.eg:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.thread.i.i
  %.pre.i = phi i64 [ %.pre.pre.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.thread.i.i ], [ %i.uv, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.i.i ]
  %i.vb = phi i64 [ %i.uy, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.thread.i.i ], [ %i.uu, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.i.i ] ; 2 uses
  %i.vc = load ptr, ptr %i.sv, align 8, !noalias !1356, !nonnull !4, !noundef !4
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %i.vb
  %i.ve = shl nuw nsw i64 %.sroa.625.0.copyload.pr.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vd, ptr nonnull readonly align 1 %.sroa.424.0.copyload.i, i64 %i.ve, i1 false), !noalias !1375
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE15append_elementsBG_.exit.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE15append_elementsBG_.exit.i: ; preds = %bb.eg, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.i.i
  %i.vf = phi i64 [ %.pre.i, %bb.eg ], [ %i.uv, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.i.i ]
  %i.vg = phi i64 [ %i.vb, %bb.eg ], [ %i.uu, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.i.i ]
  %i.vh = add i64 %i.vg, %.sroa.625.0.copyload.pr.i ; 4 uses
  store i64 %i.vh, ptr %i.sw, align 8, !noalias !1356
  %i.vi = icmp eq i64 %i.vh, %i.vf
  br i1 %i.vi, label %bb.eh, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit17.i

bb.eh:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE15append_elementsBG_.exit.i
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag) #27, !noalias !1356
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit17.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit17.i: ; preds = %bb.eh, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE15append_elementsBG_.exit.i
  %i.vj = load ptr, ptr %i.sv, align 8, !noalias !1356, !nonnull !4, !noundef !4
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.vh
  store i32 2, ptr %i.vk, align 1, !noalias !1376
  %i.vl = add i64 %i.vh, 1
  store i64 %i.vl, ptr %i.sw, align 8, !noalias !1356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %i.vm = icmp eq i64 %.sroa.023.0.copyload.i, 0
  br i1 %i.vm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VeclEECs4jkuqUqsG0h_8uu_shred.exit.i, label %bb.ei

bb.ei:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit17.i
  %i.vn = shl nuw i64 %.sroa.023.0.copyload.i, 2
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.424.0.copyload.i, i64 noundef %i.vn, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1356
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VeclEECs4jkuqUqsG0h_8uu_shred.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VeclEECs4jkuqUqsG0h_8uu_shred.exit.i: ; preds = %bb.ei, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit17.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.sp, i64 noundef 68, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !1356
  br label %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit

_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit: ; preds = %.loopexit.i299, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VeclEECs4jkuqUqsG0h_8uu_shred.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1356
  %.pr = load i64, ptr %i.ca, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.vo = icmp eq i64 %.pr, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.phi.trans.insert807 = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.pre808 = load ptr, ptr %.phi.trans.insert807, align 8 ; 3 uses
  br i1 %i.vo, label %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit._crit_edge, label %bb.ej

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit: ; preds = %bb.di
  call fastcc void @_RNvCs4jkuqUqsG0h_8uu_shred29create_standard_pass_sequence(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cb, i64 noundef %1) #26
  %.pre812.pre = load i64, ptr %i.oh, align 8
  br label %.loopexit651

_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit._crit_edge: ; preds = %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit, %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit.thread
  %i.vp = phi ptr [ @17, %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit.thread ], [ %.pre808, %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit ]
  %i.vq = phi ptr [ %i.rn, %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit.thread ], [ %.pre, %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  br label %bb.el

bb.ej:                                            ; preds = %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  %.val163 = load i64, ptr %i.cb, align 8, !range !7, !noundef !4 ; 2 uses
  %i.vr = icmp eq i64 %.val163, 0
  br i1 %i.vr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit302, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %.val164 = load ptr, ptr %i.og, align 8, !nonnull !4, !noundef !4
  %i.vs = shl nuw i64 %.val163, 2
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val164, i64 noundef %i.vs, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit302

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit302: ; preds = %bb.ej, %bb.ek
  store i64 %.pr, ptr %i.cb, align 8
  store ptr %.pre, ptr %i.og, align 8
  store ptr %.pre808, ptr %i.oh, align 8
  %i.vt = ptrtoint ptr %.pre808 to i64
  br label %.loopexit651

.loopexit651:                                     ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit, %.preheader, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit302, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit
  %.pre812 = phi i64 [ %.pre812.pre, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit ], [ 0, %.preheader ], [ %i.vt, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit302 ], [ %i.we, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit ] ; 4 uses
  br i1 %6, label %bb.eo, label %bb.cm

bb.el:                                            ; preds = %bb.il, %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit._crit_edge
  %.sroa.12.1 = phi ptr [ @17, %bb.il ], [ %i.vp, %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit._crit_edge ] ; 2 uses
  %.sroa.05.1 = phi ptr [ %i.rd, %bb.il ], [ %i.vq, %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit._crit_edge ] ; 2 uses
  %.val161 = load i64, ptr %i.cb, align 8, !range !7, !noundef !4 ; 2 uses
  %i.vu = icmp eq i64 %.val161, 0
  br i1 %i.vu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit303, label %bb.em

bb.em:                                            ; preds = %bb.el
  %.val162 = load ptr, ptr %i.og, align 8, !nonnull !4, !noundef !4
  %i.vv = shl nuw i64 %.val161, 2
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val162, i64 noundef %i.vv, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit303

.lr.ph:                                           ; preds = %.preheader, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit
  %i.vw = phi ptr [ %i.wb, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit ], [ inttoptr (i64 1 to ptr), %.preheader ]
  %i.vx = phi i64 [ %i.wc, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit ], [ 0, %.preheader ] ; 2 uses
  %i.vy = phi i64 [ %i.we, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit ], [ 0, %.preheader ] ; 3 uses
  %.sroa.0139.0722 = phi i64 [ %i.vz, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit ], [ 0, %.preheader ]
  %i.vz = add nuw i64 %.sroa.0139.0722, 1         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1377)
  %i.wa = icmp eq i64 %i.vy, %i.vx
  br i1 %i.wa, label %bb.en, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit

bb.en:                                            ; preds = %.lr.ph
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cb) #27
  %.pre809 = load i64, ptr %i.cb, align 8, !range !7, !alias.scope !1377
  %.pre811 = load ptr, ptr %i.og, align 8, !alias.scope !1377
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit: ; preds = %.lr.ph, %bb.en
  %i.wb = phi ptr [ %i.vw, %.lr.ph ], [ %.pre811, %bb.en ] ; 2 uses
  %i.wc = phi i64 [ %i.vx, %.lr.ph ], [ %.pre809, %bb.en ]
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.wb, i64 %i.vy
  store i32 2, ptr %i.wd, align 1, !noalias !1377
  %i.we = add i64 %i.vy, 1                        ; 3 uses
  store i64 %i.we, ptr %i.oh, align 8, !alias.scope !1377
  %exitcond.not = icmp eq i64 %i.vz, %1
  br i1 %exitcond.not, label %.loopexit651, label %.lr.ph

bb.eo:                                            ; preds = %.loopexit651
  call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  %i.wf = load i64, ptr %i.cb, align 8, !range !7, !alias.scope !1378, !noundef !4
  %i.wg = icmp eq i64 %.pre812, %i.wf
  br i1 %i.wg, label %bb.ep, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit304

bb.ep:                                            ; preds = %bb.eo
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cb) #27
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit304

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit304: ; preds = %bb.eo, %bb.ep
  %i.wh = load ptr, ptr %i.og, align 8, !alias.scope !1378, !nonnull !4, !noundef !4
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %.pre812
  store i32 0, ptr %i.wi, align 1, !noalias !1378
  %i.wj = add i64 %.pre812, 1                     ; 2 uses
  store i64 %i.wj, ptr %i.oh, align 8, !alias.scope !1378
  br label %bb.cm

bb.eq:                                            ; preds = %bb.cm
  %i.wk = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.wl = load i32, ptr %i.wk, align 4, !range !18, !alias.scope !1344, !noalias !1345, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  store i32 %i.wl, ptr %i.by, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %i.wm = load ptr, ptr %i.og, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.wn = load i64, ptr %i.cb, align 8, !range !7, !noundef !4 ; 4 uses
  %.idx = shl nuw nsw i64 %i.oo, 2
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wm, i64 %.idx
  %i.wp = icmp eq i64 %i.oo, 0
  br i1 %i.wp, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeEENtNtNtB8_6traits8iterator8Iterator4nextB1X_.exit.thread, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextBY_.exit.i.lr.ph

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextBY_.exit.i.lr.ph: ; preds = %bb.eq
  %i.wq = trunc nuw i64 %3 to i1
  %spec.select = select i1 %i.wq, i64 %4, i64 %.sroa.13.0.copyload ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 6 uses
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.ws = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.wt = getelementptr inbounds nuw i8, ptr %i.bv, i64 3
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.wu = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
end_hunk_2
