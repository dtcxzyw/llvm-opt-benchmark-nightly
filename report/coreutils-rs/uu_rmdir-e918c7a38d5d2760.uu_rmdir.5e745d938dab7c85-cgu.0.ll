Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_rmdir-e918c7a38d5d2760.uu_rmdir.5e745d938dab7c85-cgu.0?download=true
inline.NumInlined: 197
inline.NumDeleted: 140
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvCs86MjTkXjVIv_8uu_rmdir13dir_not_empty:bb.a
  %i.ao = icmp ult ptr %.sink2.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ap = and i64 %i.am, 1095216660480
  %i.aq = icmp ne i64 %i.ap, 1095216660480
  call void @llvm.assume(i1 %i.ao)
  call void @llvm.assume(i1 %i.aq)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs86MjTkXjVIv_8uu_rmdir.exit.i.i

bb.o:                                             ; preds = %.thread.i.i
  %i.ar = getelementptr i8, ptr %.sink2.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8, !alias.scope !198, !noalias !195
  store i8 3, ptr %i.a, align 8, !alias.scope !198, !noalias !195
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.as) #19, !noalias !195
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs86MjTkXjVIv_8uu_rmdir.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs86MjTkXjVIv_8uu_rmdir.exit.i.i: ; preds = %bb.o, %bb.n, %.thread.i.i, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !195
  br label %_RNCNvCs86MjTkXjVIv_8uu_rmdir13dir_not_empty0B3_.exit

_RNvXsF_NtNtCs6JMX4GRUq9U_4core5slice3cmplNtB5_13SliceContains14slice_contains.exit4.fold.split.i: ; preds = %bb.c
  br label %_RNCNvCs86MjTkXjVIv_8uu_rmdir13dir_not_empty0B3_.exit

_RNCNvCs86MjTkXjVIv_8uu_rmdir13dir_not_empty0B3_.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RNvXsF_NtNtCs6JMX4GRUq9U_4core5slice3cmplNtB5_13SliceContains14slice_contains.exit4.fold.split.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs86MjTkXjVIv_8uu_rmdir.exit.i.i, %bb.m, %bb.c, %bb.c
  %.sroa.0.0 = phi i1 [ false, %_RNvXsF_NtNtCs6JMX4GRUq9U_4core5slice3cmplNtB5_13SliceContains14slice_contains.exit4.fold.split.i ], [ %i.al, %bb.m ], [ true, %bb.c ], [ false, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs86MjTkXjVIv_8uu_rmdir.exit.i.i ], [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvCs86MjTkXjVIv_8uu_rmdir13remove_single(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i24 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = and i24 %3, 65536
  %.not = icmp eq i24 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit41, %bb.a
  %i.n = call noundef ptr @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs10remove_dir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #19 ; 2 uses
  %.not19 = icmp eq ptr %i.n, null
  br i1 %.not19, label %bb.y, label %bb.x

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !201
  %i.o = tail call noundef dereferenceable_or_null(5) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 5, i64 noundef 1) #19, !noalias !201 ; 8 uses
  %i.p = icmp eq ptr %i.o, null                   ; 3 uses
  %.sink6.i = select i1 %i.p, i64 1, i64 5        ; 2 uses
  %.sink.i = select i1 %i.p, ptr inttoptr (i64 5 to ptr), ptr %i.o ; 3 uses
  br i1 %i.p, label %bb.d, label %.lr.ph150.i, !prof !204

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 5) #22
  unreachable

.lr.ph150.i:                                      ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.o, ptr noundef nonnull align 1 dereferenceable(5) @7, i64 5, i1 false)
  %i.q = load i8, ptr %i.o, align 1, !alias.scope !205, !noalias !208, !noundef !4
  %i.r = zext i8 %i.q to i32
  %i.s = add nsw i32 %i.r, -48                    ; 2 uses
  %i.t = icmp ult i32 %i.s, 10
  br i1 %i.t, label %.lr.ph150.i.1, label %.loopexit75

.lr.ph150.i.1:                                    ; preds = %.lr.ph150.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !205, !noalias !208, !noundef !4
  %i.w = zext i8 %i.v to i32
  %i.x = add nsw i32 %i.w, -48                    ; 2 uses
  %i.y = icmp ult i32 %i.x, 10
  br i1 %i.y, label %.lr.ph150.i.2, label %.loopexit75

.lr.ph150.i.2:                                    ; preds = %.lr.ph150.i.1
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !205, !noalias !208, !noundef !4
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 10
  br i1 %i.ad, label %.lr.ph150.i.3, label %.loopexit75

.lr.ph150.i.3:                                    ; preds = %.lr.ph150.i.2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !205, !noalias !208, !noundef !4
  %i.ag = zext i8 %i.af to i32
  %i.ah = add nsw i32 %i.ag, -48                  ; 2 uses
  %i.ai = icmp ult i32 %i.ah, 10
  br i1 %i.ai, label %.lr.ph150.i.4, label %.loopexit75

.lr.ph150.i.4:                                    ; preds = %.lr.ph150.i.3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !205, !noalias !208, !noundef !4
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.loopexit75

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %.lr.ph150.i.4
  %narrow = mul nuw nsw i32 %i.s, 10
  %narrow141 = add nuw nsw i32 %narrow, %i.x
  %narrow142 = mul nuw nsw i32 %narrow141, 10
  %narrow143 = add nuw nsw i32 %narrow142, %i.ac
  %narrow144 = mul nuw nsw i32 %narrow143, 10
  %narrow145 = add nuw nsw i32 %narrow144, %i.ah
  %i.ao = zext nneg i32 %narrow145 to i64
  %i.ap = mul nuw nsw i64 %i.ao, 10
  %i.aq = zext nneg i32 %i.am to i64
  %i.ar = add nuw nsw i64 %i.ap, %i.aq
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs86MjTkXjVIv_8uu_rmdir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 9, i64 noundef %i.ar) #19
  br label %bb.e

.loopexit75:                                      ; preds = %.lr.ph150.i.4, %.lr.ph150.i.3, %.lr.ph150.i.2, %.lr.ph150.i.1, %.lr.ph150.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sink.i, i64 noundef 5) #18
  %i.as = load i8, ptr %i.j, align 8, !range !210, !noundef !4
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.r, label %bb.s

bb.e:                                             ; preds = %bb.s, %bb.r, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %.sroa.04.0 = phi i1 [ false, %bb.r ], [ true, %bb.s ], [ true, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 1, ptr %i.h, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %1, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %2, ptr %.sroa.511.0..sroa_idx, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i8 1, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !211
  store i64 0, ptr %i.c, align 8, !noalias !211
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !211
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !211
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.av, align 8, !noalias !211
  store ptr %i.c, ptr %i.b, align 8, !noalias !211
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @22, ptr %i.aw, align 8, !noalias !211
  %i.ax = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #19, !noalias !215
  br i1 %i.ax, label %bb.f, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs86MjTkXjVIv_8uu_rmdir.exit, !prof !204

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #20, !noalias !215
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs86MjTkXjVIv_8uu_rmdir.exit: ; preds = %bb.e
  %.sroa.049.0.copyload50 = load i64, ptr %i.c, align 8, !noalias !216 ; 3 uses
  %.sroa.551.0.copyload53 = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !216, !nonnull !4, !noundef !4 ; 8 uses
  %.sroa.855.0.copyload57 = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !216 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  switch i64 %.sroa.855.0.copyload57, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs86MjTkXjVIv_8uu_rmdir.exit
  %i.ay = load i8, ptr %.sroa.551.0.copyload53, align 1, !alias.scope !217, !noalias !220, !noundef !4 ; 2 uses
  switch i8 %i.ay, label %bb.h [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs86MjTkXjVIv_8uu_rmdir.exit
  %.pr.i36 = load i8, ptr %.sroa.551.0.copyload53, align 1, !alias.scope !217, !noalias !220
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i, %bb.g
  %i.az = phi i8 [ %.pr.i36, %thread-pre-split.i ], [ %i.ay, %bb.g ]
  switch i8 %i.az, label %bb.n [
    i8 43, label %bb.i
    i8 45, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.551.0.copyload53, i64 1
  %i.bb = add nsw i64 %.sroa.855.0.copyload57, -1
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.551.0.copyload53, i64 1 ; 2 uses
  %i.bd = add nsw i64 %.sroa.855.0.copyload57, -1 ; 3 uses
  %i.be = icmp samesign ult i64 %.sroa.855.0.copyload57, 17
  br i1 %i.be, label %.preheader114.i.a, label %.lr.ph.i

.preheader114.i.a:                                ; preds = %bb.j
  %.not103137.i.a = icmp eq i64 %i.bd, 0
  br i1 %.not103137.i.a, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit37, label %.lr.ph141.i24

.lr.ph.i:                                         ; preds = %bb.j, %7
  %.sroa.0.1136.i = phi ptr [ %i.bf, %7 ], [ %i.bc, %bb.j ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.bg, %7 ], [ %i.bd, %bb.j ]
  %.sroa.084.0134.i = phi i64 [ %8, %7 ], [ 0, %bb.j ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.bg = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %4 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %5 = extractvalue { i64, i1 } %4, 0
  %6 = extractvalue { i64, i1 } %4, 1
  br i1 %6, label %.loopexit, label %bb.k, !prof !204

bb.k:                                             ; preds = %.lr.ph.i
  %i.bh = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !217, !noalias !220, !noundef !4
  %i.bi = zext i8 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, -48                  ; 2 uses
  %i.bk = icmp ult i32 %i.bj, 10
  br i1 %i.bk, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.bl = zext nneg i32 %i.bj to i64
  %i.bm = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %5, i64 %i.bl) ; 2 uses
  %i.bn = extractvalue { i64, i1 } %i.bm, 1
  br i1 %i.bn, label %.loopexit, label %7, !prof !204

7:                                                ; preds = %bb.l
  %8 = extractvalue { i64, i1 } %i.bm, 0          ; 2 uses
  %.not102.i = icmp eq i64 %i.bg, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit37, label %.lr.ph.i

.lr.ph141.i24:                                    ; preds = %.preheader114.i.a, %bb.m
  %.sroa.0.2140.i25 = phi ptr [ %i.bu, %bb.m ], [ %i.bc, %.preheader114.i.a ] ; 2 uses
  %.sroa.26.2139.i26 = phi i64 [ %i.bt, %bb.m ], [ %i.bd, %.preheader114.i.a ]
  %.sroa.084.2138.i27 = phi i64 [ %i.bw, %bb.m ], [ 0, %.preheader114.i.a ]
  %i.bo = load i8, ptr %.sroa.0.2140.i25, align 1, !alias.scope !217, !noalias !220, !noundef !4
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, -48                  ; 2 uses
  %i.br = icmp ult i32 %i.bq, 10
  br i1 %i.br, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.lr.ph141.i24
  %i.bs = mul i64 %.sroa.084.2138.i27, 10
  %i.bt = add nsw i64 %.sroa.26.2139.i26, -1      ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i25, i64 1
  %i.bv = zext nneg i32 %i.bq to i64
  %i.bw = sub i64 %i.bs, %i.bv                    ; 2 uses
  %.not103.i28 = icmp eq i64 %i.bt, 0
  br i1 %.not103.i28, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit37, label %.lr.ph141.i24

bb.n:                                             ; preds = %bb.i, %bb.h
  %.sroa.26.0.i29 = phi i64 [ %i.bb, %bb.i ], [ %.sroa.855.0.copyload57, %bb.h ] ; 4 uses
  %.sroa.0.0.i30 = phi ptr [ %i.ba, %bb.i ], [ %.sroa.551.0.copyload53, %bb.h ] ; 2 uses
  %i.bx = icmp samesign ult i64 %.sroa.26.0.i29, 16
  br i1 %i.bx, label %.preheader.i.a, label %.preheader111.i

.preheader.i.a:                                   ; preds = %bb.n
  %.not105146.i.a = icmp eq i64 %.sroa.26.0.i29, 0
  br i1 %.not105146.i.a, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit37, label %.lr.ph150.i31

.preheader111.i:                                  ; preds = %bb.n, %12
  %.sroa.0.3145.i = phi ptr [ %i.by, %12 ], [ %.sroa.0.0.i30, %bb.n ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.bz, %12 ], [ %.sroa.26.0.i29, %bb.n ]
  %.sroa.084.3143.i = phi i64 [ %13, %12 ], [ 0, %bb.n ]
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.bz = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %9 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %10 = extractvalue { i64, i1 } %9, 0
  %11 = extractvalue { i64, i1 } %9, 1
  br i1 %11, label %.loopexit, label %bb.o, !prof !204

bb.o:                                             ; preds = %.preheader111.i
  %i.ca = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !217, !noalias !220, !noundef !4
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nsw i32 %i.cb, -48                  ; 2 uses
  %i.cd = icmp ult i32 %i.cc, 10
  br i1 %i.cd, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.ce = zext nneg i32 %i.cc to i64
  %i.cf = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %10, i64 %i.ce) ; 2 uses
  %i.cg = extractvalue { i64, i1 } %i.cf, 1
  br i1 %i.cg, label %.loopexit, label %12, !prof !204

12:                                               ; preds = %bb.p
  %13 = extractvalue { i64, i1 } %i.cf, 0         ; 2 uses
  %.not104.i = icmp eq i64 %i.bz, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit37, label %.preheader111.i

.lr.ph150.i31:                                    ; preds = %.preheader.i.a, %bb.q
  %.sroa.0.4149.i32 = phi ptr [ %i.cn, %bb.q ], [ %.sroa.0.0.i30, %.preheader.i.a ] ; 2 uses
  %.sroa.26.4148.i33 = phi i64 [ %i.cm, %bb.q ], [ %.sroa.26.0.i29, %.preheader.i.a ]
  %.sroa.084.4147.i34 = phi i64 [ %i.cp, %bb.q ], [ 0, %.preheader.i.a ]
  %i.ch = load i8, ptr %.sroa.0.4149.i32, align 1, !alias.scope !217, !noalias !220, !noundef !4
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, -48                  ; 2 uses
  %i.ck = icmp ult i32 %i.cj, 10
  br i1 %i.ck, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %.lr.ph150.i31
  %i.cl = mul i64 %.sroa.084.4147.i34, 10
  %i.cm = add nsw i64 %.sroa.26.4148.i33, -1      ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i32, i64 1
  %i.co = zext nneg i32 %i.cj to i64
  %i.cp = add i64 %i.cl, %i.co                    ; 2 uses
  %.not105.i35 = icmp eq i64 %i.cm, 0
  br i1 %.not105.i35, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit37, label %.lr.ph150.i31

bb.r:                                             ; preds = %.loopexit75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.sink6.i, ptr %i.i, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sink.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 5, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 9, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.e

bb.s:                                             ; preds = %.loopexit75
  %i.cq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cr = load double, ptr %i.cq, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs86MjTkXjVIv_8uu_rmdir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 9, double noundef %i.cr) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.e

.loopexit:                                        ; preds = %.lr.ph.i, %bb.l, %bb.k, %.lr.ph141.i24, %.preheader111.i, %bb.o, %bb.p, %.lr.ph150.i31, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs86MjTkXjVIv_8uu_rmdir.exit, %bb.g, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.551.0.copyload53, i64 noundef %.sroa.855.0.copyload57) #18
  %i.cs = load i8, ptr %i.g, align 8, !range !210, !noundef !4
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.u, label %bb.v

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit37: ; preds = %7, %bb.m, %12, %bb.q, %.preheader.i.a, %.preheader114.i.a
  %.sroa.1561.0 = phi i64 [ %i.cp, %bb.q ], [ %i.bw, %bb.m ], [ %13, %12 ], [ 0, %.preheader.i.a ], [ 0, %.preheader114.i.a ], [ %8, %7 ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs86MjTkXjVIv_8uu_rmdir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 4, i64 noundef %.sroa.1561.0) #19
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 32, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cu = icmp eq i64 %.sroa.049.0.copyload50, 0
  br i1 %i.cu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.t
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.551.0.copyload53, i64 noundef %.sroa.049.0.copyload50, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !222
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit

bb.u:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.sroa.049.0.copyload50, ptr %i.f, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.551.0.copyload53, ptr %.sroa.551.0..sroa_idx, align 8
  %.sroa.855.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.855.0.copyload57, ptr %.sroa.855.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 32, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit

bb.v:                                             ; preds = %.loopexit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cw = load double, ptr %i.cv, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs86MjTkXjVIv_8uu_rmdir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 4, double noundef %i.cw) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.t

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.t, %bb.u
  br i1 %.sroa.04.0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit45, label %bb.w

bb.w:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit45, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.l, ptr %i.d, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  call void @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6__print(ptr noundef nonnull @11, ptr noundef nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %.val.i38 = load i64, ptr %i.l, align 8, !range !40, !alias.scope !225, !noundef !4 ; 2 uses
  %i.cx = icmp eq i64 %.val.i38, 0
  br i1 %i.cx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit41, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i39

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i39: ; preds = %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val1.i40 = load ptr, ptr %i.cy, align 8, !alias.scope !225, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i40, i64 noundef %.val.i38, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !225
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit41

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit41: ; preds = %bb.w, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.b

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit45: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink.i, i64 noundef %.sink6.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !228
  br label %bb.w

bb.x:                                             ; preds = %bb.b
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.518.0..sroa_idx, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.b, %bb.x
  store ptr %i.n, ptr %0, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define { ptr, i64 } @_RNvCs86MjTkXjVIv_8uu_rmdir32strip_trailing_slashes_from_path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #2 {
.split:
  %.not12 = icmp eq i64 %1, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

bb.a:                                             ; preds = %.lr.ph
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.split, %bb.a
  %.sroa.0.013 = phi i64 [ %i.a, %bb.a ], [ %1, %.split ] ; 2 uses
  %i.a = add nsw i64 %.sroa.0.013, -1             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !noundef !4
  %i.d = icmp eq i8 %i.c, 47
  br i1 %i.d, label %bb.a, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a, %.split
  %.sroa.0.0.lcssa = phi i64 [ %1, %.split ], [ %.sroa.0.013, %.lr.ph ], [ %i.a, %bb.a ]
  %i.e = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %.sroa.0.0.lcssa, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCs86MjTkXjVIv_8uu_rmdir6remove(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i24 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvCs86MjTkXjVIv_8uu_rmdir13remove_single(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i24 %3) #19
  %i.c = load ptr, ptr %i.b, align 8, !noundef !4
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = and i24 %3, 256
  %.not27 = icmp eq i24 %i.d, 0
  br i1 %.not27, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.e = tail call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #19 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 2 uses
  %.not2830 = icmp eq ptr %i.f, null
  %i.h = icmp eq i64 %i.g, 0
  %or.cond31 = select i1 %.not2830, i1 true, i1 %i.h
  br i1 %or.cond31, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.c
  store ptr null, ptr %0, align 8
  br label %bb.f

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %i.i = phi i64 [ %i.n, %bb.e ], [ %i.g, %.preheader ] ; 2 uses
  %i.j = phi ptr [ %i.m, %bb.e ], [ %i.f, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvCs86MjTkXjVIv_8uu_rmdir13remove_single(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.i, i24 %3) #19
  %i.k = load ptr, ptr %i.a, align 8, !noundef !4
  %.not29 = icmp eq ptr %i.k, null
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = tail call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.i) #19 ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0        ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.l, 1        ; 2 uses
  %.not28 = icmp eq ptr %i.m, null
  %i.o = icmp eq i64 %i.n, 0
  %or.cond = select i1 %.not28, i1 true, i1 %i.o
  br i1 %or.cond, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %bb.d, %.loopexit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCs86MjTkXjVIv_8uu_rmdir6uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECs86MjTkXjVIv_8uu_rmdir.exit:
  %i.a = alloca [640 x i8], align 8               ; 56 uses
  %i.b = alloca [640 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [640 x i8], align 8               ; 53 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [640 x i8], align 8               ; 53 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [640 x i8], align 8               ; 53 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [712 x i8], align 8               ; 57 uses
  %i.n = alloca [712 x i8], align 8               ; 5 uses
  %i.o = alloca [712 x i8], align 8               ; 5 uses
  %i.p = alloca [712 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 5) #19
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 8, !alias.scope !231, !noalias !237 ; 2 uses
  %i.q = icmp eq i64 %.sroa.0.0.copyload.i, -1    ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5.i.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 8
  %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.i.sroa.0.0 = select i1 %i.q, ptr undef, ptr %.sroa.5.i.sroa.0.0.copyload
end_hunk_0
begin_hunk_1_@_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_char:bb.a
  %i.t = or disjoint i8 %i.s, -128                ; 2 uses
  %i.u = lshr i32 %1, 12
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  %i.y = lshr i32 %1, 18
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = or disjoint i8 %i.z, -16
  br i1 %i.m, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs86MjTkXjVIv_8uu_rmdir.exit.i
  %i.ab = trunc nuw nsw i32 %1 to i8
  store i8 %i.ab, ptr %i.l, align 1, !noalias !308
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = or disjoint i8 %i.r, -64
  store i8 %i.ac, ptr %i.l, align 1, !noalias !308
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.p, ptr %i.ad, align 1, !noalias !308
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = icmp samesign ult i32 %1, 65536
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = or disjoint i8 %i.v, -32
  store i8 %i.af, ptr %i.l, align 1, !noalias !308
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.t, ptr %i.ag, align 1, !noalias !308
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.p, ptr %i.ah, align 1, !noalias !308
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.aa, ptr %i.l, align 1, !noalias !308
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.x, ptr %i.ai, align 1, !noalias !308
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.t, ptr %i.aj, align 1, !noalias !308
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  store i8 %i.p, ptr %i.ak, align 1, !noalias !308
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.al = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.al, ptr %i.a, align 8, !alias.scope !308
  ret i1 false
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !320, !noalias !323, !noundef !4 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !40, !alias.scope !320, !noalias !323, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs86MjTkXjVIv_8uu_rmdir.exit.thread.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs86MjTkXjVIv_8uu_rmdir.exit.i.i, !prof !204

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs86MjTkXjVIv_8uu_rmdir.exit.thread.i.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs86MjTkXjVIv_8uu_rmdir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2) #19
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !325, !noalias !323, !noundef !4 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs86MjTkXjVIv_8uu_rmdir.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs86MjTkXjVIv_8uu_rmdir.exit.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs86MjTkXjVIv_8uu_rmdir.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs86MjTkXjVIv_8uu_rmdir.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs86MjTkXjVIv_8uu_rmdir.exit.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !325, !noalias !323, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !325
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs86MjTkXjVIv_8uu_rmdir.exit.i.i, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.b, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs86MjTkXjVIv_8uu_rmdir.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !325, !noalias !323
  ret i1 false
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #19
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_fmtCs86MjTkXjVIv_8uu_rmdir(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_fmtQNtNtCs7tKScEop1B6_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCs86MjTkXjVIv_8uu_rmdir.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @22, ptr noundef nonnull %1, ptr noundef nonnull %2) #19, !inline_history !326
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs10remove_dir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8metadata(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(address) dereferenceable(176), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8read_dir(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #9

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsz_NtCs2vKOLqTMYjT_3std2fsNtB5_7ReadDirNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6__print(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals21capture_startup_state() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef align 8 dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(640)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #11

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #12

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #14

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { noinline nounwind }
attributes #19 = { nounwind }
attributes #20 = { noinline noreturn nounwind }
attributes #21 = { inlinehint nounwind }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (7608eb7b0 2026-08-05)"}
!4 = !{}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setReNtNtBB_6string6StringE0ECs86MjTkXjVIv_8uu_rmdir: argument 0"}
!7 = distinct !{!7, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setReNtNtBB_6string6StringE0ECs86MjTkXjVIv_8uu_rmdir"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReNtNtBB_6string6StringE0E0ECs86MjTkXjVIv_8uu_rmdir: argument 0"}
!10 = distinct !{!10, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReNtNtBB_6string6StringE0E0ECs86MjTkXjVIv_8uu_rmdir"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Cs86MjTkXjVIv_8uu_rmdir: argument 0"}
!13 = distinct !{!13, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Cs86MjTkXjVIv_8uu_rmdir"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs86MjTkXjVIv_8uu_rmdir: argument 0"}
!16 = distinct !{!16, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs86MjTkXjVIv_8uu_rmdir"}
!17 = !{!15, !12, !9, !6}
!18 = !{!19, !20}
!19 = distinct !{!19, !16, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs86MjTkXjVIv_8uu_rmdir: argument 1"}
!20 = distinct !{!20, !10, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReNtNtBB_6string6StringE0E0ECs86MjTkXjVIv_8uu_rmdir: argument 1"}
!21 = !{!22, !24}
!22 = distinct !{!22, !23, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!23 = distinct !{!23, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!24 = distinct !{!24, !23, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!25 = !{!15, !19, !12, !9, !20, !6}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Cs86MjTkXjVIv_8uu_rmdir: argument 0"}
!28 = distinct !{!28, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Cs86MjTkXjVIv_8uu_rmdir"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs86MjTkXjVIv_8uu_rmdir: argument 0"}
!31 = distinct !{!31, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs86MjTkXjVIv_8uu_rmdir"}
!32 = !{!30, !27, !9, !6}
!33 = !{!34, !20}
!34 = distinct !{!34, !31, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs86MjTkXjVIv_8uu_rmdir: argument 1"}
!35 = !{!36, !38}
!36 = distinct !{!36, !37, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!37 = distinct !{!37, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!38 = distinct !{!38, !37, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!39 = !{!30, !34, !27, !9, !20, !6}
!40 = !{i64 0, i64 -9223372036854775808}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs86MjTkXjVIv_8uu_rmdir: argument 0"}
!43 = distinct !{!43, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs86MjTkXjVIv_8uu_rmdir"}
!44 = !{!45}
!45 = distinct !{!45, !43, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs86MjTkXjVIv_8uu_rmdir: argument 1"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRedE0ECs86MjTkXjVIv_8uu_rmdir: argument 0"}
!48 = distinct !{!48, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRedE0ECs86MjTkXjVIv_8uu_rmdir"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRedE0E0ECs86MjTkXjVIv_8uu_rmdir: argument 0"}
!51 = distinct !{!51, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRedE0E0ECs86MjTkXjVIv_8uu_rmdir"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Cs86MjTkXjVIv_8uu_rmdir: argument 0"}
!54 = distinct !{!54, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Cs86MjTkXjVIv_8uu_rmdir"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs86MjTkXjVIv_8uu_rmdir: argument 0"}
!57 = distinct !{!57, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs86MjTkXjVIv_8uu_rmdir"}
!58 = !{!56, !53, !50, !47}
!59 = !{!60, !61}
!60 = distinct !{!60, !57, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs86MjTkXjVIv_8uu_rmdir: argument 1"}
!61 = distinct !{!61, !51, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRedE0E0ECs86MjTkXjVIv_8uu_rmdir: argument 1"}
!62 = !{!63, !65}
!63 = distinct !{!63, !64, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!64 = distinct !{!64, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!65 = distinct !{!65, !64, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!66 = !{!56, !60, !53, !50, !61, !47}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Cs86MjTkXjVIv_8uu_rmdir: argument 0"}
!69 = distinct !{!69, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Cs86MjTkXjVIv_8uu_rmdir"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs86MjTkXjVIv_8uu_rmdir: argument 0"}
!72 = distinct !{!72, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs86MjTkXjVIv_8uu_rmdir"}
!73 = !{!71, !68, !50, !47}
!74 = !{!75, !61}
!75 = distinct !{!75, !72, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs86MjTkXjVIv_8uu_rmdir: argument 1"}
!76 = !{!77, !79}
!77 = distinct !{!77, !78, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!78 = distinct !{!78, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!79 = distinct !{!79, !78, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!80 = !{!71, !75, !68, !50, !61, !47}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs86MjTkXjVIv_8uu_rmdir: argument 0"}
!83 = distinct !{!83, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs86MjTkXjVIv_8uu_rmdir"}
!84 = !{!85}
!85 = distinct !{!85, !83, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs86MjTkXjVIv_8uu_rmdir: argument 1"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRexE0ECs86MjTkXjVIv_8uu_rmdir: argument 0"}
!88 = distinct !{!88, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRexE0ECs86MjTkXjVIv_8uu_rmdir"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRexE0E0ECs86MjTkXjVIv_8uu_rmdir: argument 0"}
!91 = distinct !{!91, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRexE0E0ECs86MjTkXjVIv_8uu_rmdir"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0Cs86MjTkXjVIv_8uu_rmdir: argument 0"}
!94 = distinct !{!94, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0Cs86MjTkXjVIv_8uu_rmdir"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs86MjTkXjVIv_8uu_rmdir: argument 0"}
!97 = distinct !{!97, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs86MjTkXjVIv_8uu_rmdir"}
!98 = !{!96, !93, !90, !87}
!99 = !{!100, !101}
!100 = distinct !{!100, !97, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs86MjTkXjVIv_8uu_rmdir: argument 1"}
!101 = distinct !{!101, !91, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRexE0E0ECs86MjTkXjVIv_8uu_rmdir: argument 1"}
!102 = !{!103, !105}
!103 = distinct !{!103, !104, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!104 = distinct !{!104, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!105 = distinct !{!105, !104, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!106 = !{!96, !100, !93, !90, !101, !87}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0Cs86MjTkXjVIv_8uu_rmdir: argument 0"}
!109 = distinct !{!109, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0Cs86MjTkXjVIv_8uu_rmdir"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs86MjTkXjVIv_8uu_rmdir: argument 0"}
!112 = distinct !{!112, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs86MjTkXjVIv_8uu_rmdir"}
!113 = !{!111, !108, !90, !87}
!114 = !{!115, !101}
!115 = distinct !{!115, !112, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs86MjTkXjVIv_8uu_rmdir: argument 1"}
!116 = !{!117, !119}
!117 = distinct !{!117, !118, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!118 = distinct !{!118, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!119 = distinct !{!119, !118, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!120 = !{!111, !115, !108, !90, !101, !87}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs86MjTkXjVIv_8uu_rmdir: argument 0"}
!123 = distinct !{!123, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs86MjTkXjVIv_8uu_rmdir"}
!124 = !{!125}
!125 = distinct !{!125, !123, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs86MjTkXjVIv_8uu_rmdir: argument 1"}
!126 = !{i64 -1, i64 -9223372036854775808}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir: argument 0"}
!129 = distinct !{!129, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs86MjTkXjVIv_8uu_rmdir: argument 0"}
!132 = distinct !{!132, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs86MjTkXjVIv_8uu_rmdir"}
!133 = !{i64 0, i64 7}
!134 = !{!135, !131}
end_hunk_1
