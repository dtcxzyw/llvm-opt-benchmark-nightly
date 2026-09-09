Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_pathchk-3ad53cb33571552c.uu_pathchk.cc7c464f9cfbfef5-cgu.0?download=true
inline.NumInlined: 274
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvCshytdrR3ujnR_10uu_pathchk11check_basic:bb.a
  store ptr %.sroa.581.0.copyload83.i, ptr %.sroa.581.0..sroa_idx.i, align 8, !noalias !267
  %.sroa.885.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.885.0.copyload87.i, ptr %.sroa.885.0..sroa_idx.i, align 8, !noalias !267
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 9, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !267
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 35, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !267
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit.i

bb.ba:                                            ; preds = %.loopexit.i
  %i.is = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.it = load double, ptr %i.is, align 8, !noalias !267, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 9, double noundef %i.it) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !267
  br label %bb.ay

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit.i: ; preds = %bb.az, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.ay
  br i1 %.sroa.06.0.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i68.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit70.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit70.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i68.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !267
  store ptr %i.q, ptr %i.i, align 8, !noalias !267
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !267
  %i.iu = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @9, ptr noundef nonnull %i.i) #18 ; 4 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshytdrR3ujnR_10uu_pathchk.exit.i, label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit70.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !267
  %i.iw = ptrtoint ptr %i.iu to i64               ; 2 uses
  %i.ix = and i64 %i.iw, 3
  switch i64 %i.ix, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i.i
    i64 3, label %bb.bc
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i.i
    i64 1, label %bb.bd
  ], !prof !8

bb.bc:                                            ; preds = %bb.bb
  %i.iy = icmp ult ptr %i.iu, inttoptr (i64 188978561024 to ptr)
  %i.iz = and i64 %i.iw, 1095216660480
  %i.ja = icmp ne i64 %i.iz, 1095216660480
  call void @llvm.assume(i1 %i.iy)
  call void @llvm.assume(i1 %i.ja)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.jb = getelementptr i8, ptr %i.iu, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jb) ]
  %i.jc = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.jb, ptr %i.jc, align 8, !alias.scope !280, !noalias !267
  store i8 3, ptr %i.f, align 8, !alias.scope !280, !noalias !267
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jc) #18
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i.i: ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !267
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshytdrR3ujnR_10uu_pathchk.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshytdrR3ujnR_10uu_pathchk.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit70.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !267
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %.val.i63.i = load i64, ptr %i.q, align 8, !range !5, !alias.scope !281, !noalias !267, !noundef !4 ; 2 uses
  %i.jd = icmp eq i64 %.val.i63.i, 0
  br i1 %i.jd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit66.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i64.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i64.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshytdrR3ujnR_10uu_pathchk.exit.i
  %i.je = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val1.i65.i = load ptr, ptr %i.je, align 8, !alias.scope !281, !noalias !267, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i65.i, i64 noundef %.val.i63.i, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !281
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit66.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit66.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i64.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshytdrR3ujnR_10uu_pathchk.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !267
  br label %bb.dj

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i68.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ez, i64 noundef %.sroa.0.05.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !282
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit70.i

bb.be:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 0, ptr %i.ah, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 0, ptr %.sroa.526.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.jf = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef 14, ptr noalias nofree noundef nonnull %i.u, i64 noundef 20) #18 ; 2 uses
  %i.jg = extractvalue { ptr, i64 } %i.jf, 0
  %i.jh = extractvalue { ptr, i64 } %i.jf, 1      ; 16 uses
  %i.ji = icmp sgt i64 %i.jh, -1
  br i1 %i.ji, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.jj = icmp eq i64 %i.jh, 0
  br i1 %i.jj, label %.thread, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i59

.thread:                                          ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %.loopexit516

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i59: ; preds = %bb.bf
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !283
  %i.jk = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.jh, i64 noundef 1) #18, !noalias !283 ; 18 uses
  %i.jl = icmp eq ptr %i.jk, null
  br i1 %i.jl, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.be, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i59
  %.sroa.4353.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i59 ], [ 0, %bb.be ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4353.0.ph, i64 %i.jh) #21
  unreachable

bb.bh:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i59
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jk, ptr align 1 %i.jg, i64 %i.jh, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %cond480 = icmp eq i64 %i.jh, 1
  %i.jm = load i8, ptr %i.jk, align 1, !alias.scope !284, !noalias !285 ; 2 uses
  br i1 %cond480, label %bb.bi, label %thread-pre-split.i

bb.bi:                                            ; preds = %bb.bh
  switch i8 %i.jm, label %bb.bp [
    i8 43, label %.loopexit516
    i8 45, label %.loopexit516
  ]

thread-pre-split.i:                               ; preds = %bb.bh
  switch i8 %i.jm, label %bb.bp [
    i8 43, label %bb.bj
    i8 45, label %bb.bk
  ]

bb.bj:                                            ; preds = %thread-pre-split.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 1
  %i.jo = add nsw i64 %i.jh, -1
  br label %bb.bp

bb.bk:                                            ; preds = %thread-pre-split.i
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 1 ; 2 uses
  %i.jq = add nsw i64 %i.jh, -1                   ; 2 uses
  %i.jr = icmp samesign ult i64 %i.jh, 17
  br i1 %i.jr, label %.lr.ph141.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bk, %bb.bn
  %.sroa.0.1136.i = phi ptr [ %i.js, %bb.bn ], [ %i.jp, %bb.bk ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.jt, %bb.bn ], [ %i.jq, %bb.bk ]
  %.sroa.084.0134.i = phi i64 [ %i.ke, %bb.bn ], [ 0, %bb.bk ]
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.jt = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.ju = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.jv = extractvalue { i64, i1 } %i.ju, 0
  %i.jw = extractvalue { i64, i1 } %i.ju, 1
  br i1 %i.jw, label %.loopexit516, label %bb.bl, !prof !7

bb.bl:                                            ; preds = %.lr.ph.i
  %i.jx = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !284, !noalias !285, !noundef !4
  %i.jy = zext i8 %i.jx to i32
  %i.jz = add nsw i32 %i.jy, -48                  ; 2 uses
  %i.ka = icmp ult i32 %i.jz, 10
  br i1 %i.ka, label %bb.bm, label %.loopexit516

bb.bm:                                            ; preds = %bb.bl
  %i.kb = zext nneg i32 %i.jz to i64
  %i.kc = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.jv, i64 %i.kb) ; 2 uses
  %i.kd = extractvalue { i64, i1 } %i.kc, 1
  br i1 %i.kd, label %.loopexit516, label %bb.bn, !prof !7

bb.bn:                                            ; preds = %bb.bm
  %i.ke = extractvalue { i64, i1 } %i.kc, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.jt, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %bb.bk, %bb.bo
  %.sroa.0.2140.i = phi ptr [ %i.kl, %bb.bo ], [ %i.jp, %bb.bk ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.kk, %bb.bo ], [ %i.jq, %bb.bk ]
  %.sroa.084.2138.i = phi i64 [ %i.kn, %bb.bo ], [ 0, %bb.bk ]
  %i.kf = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !284, !noalias !285, !noundef !4
  %i.kg = zext i8 %i.kf to i32
  %i.kh = add nsw i32 %i.kg, -48                  ; 2 uses
  %i.ki = icmp ult i32 %i.kh, 10
  br i1 %i.ki, label %bb.bo, label %.loopexit516

bb.bo:                                            ; preds = %.lr.ph141.i
  %i.kj = mul i64 %.sroa.084.2138.i, 10
  %i.kk = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.km = zext nneg i32 %i.kh to i64
  %i.kn = sub i64 %i.kj, %i.km                    ; 2 uses
  %.not103.i = icmp eq i64 %i.kk, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.bp:                                            ; preds = %bb.bi, %bb.bj, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.jo, %bb.bj ], [ %i.jh, %thread-pre-split.i ], [ %i.jh, %bb.bi ] ; 3 uses
  %.sroa.0.0.i63 = phi ptr [ %i.jn, %bb.bj ], [ %i.jk, %thread-pre-split.i ], [ %i.jk, %bb.bi ] ; 2 uses
  %i.ko = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.ko, label %.lr.ph150.i, label %.preheader111.i

.preheader111.i:                                  ; preds = %bb.bp, %bb.bs
  %.sroa.0.3145.i = phi ptr [ %i.kp, %bb.bs ], [ %.sroa.0.0.i63, %bb.bp ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.kq, %bb.bs ], [ %.sroa.26.0.i, %bb.bp ]
  %.sroa.084.3143.i = phi i64 [ %i.lb, %bb.bs ], [ 0, %bb.bp ]
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.kq = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.kr = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.ks = extractvalue { i64, i1 } %i.kr, 0
  %i.kt = extractvalue { i64, i1 } %i.kr, 1
  br i1 %i.kt, label %.loopexit516, label %bb.bq, !prof !7

bb.bq:                                            ; preds = %.preheader111.i
  %i.ku = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !284, !noalias !285, !noundef !4
  %i.kv = zext i8 %i.ku to i32
  %i.kw = add nsw i32 %i.kv, -48                  ; 2 uses
  %i.kx = icmp ult i32 %i.kw, 10
  br i1 %i.kx, label %bb.br, label %.loopexit516

bb.br:                                            ; preds = %bb.bq
  %i.ky = zext nneg i32 %i.kw to i64
  %i.kz = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ks, i64 %i.ky) ; 2 uses
  %i.la = extractvalue { i64, i1 } %i.kz, 1
  br i1 %i.la, label %.loopexit516, label %bb.bs, !prof !7

bb.bs:                                            ; preds = %bb.br
  %i.lb = extractvalue { i64, i1 } %i.kz, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.kq, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %bb.bp, %bb.bt
  %.sroa.0.4149.i = phi ptr [ %i.li, %bb.bt ], [ %.sroa.0.0.i63, %bb.bp ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.lh, %bb.bt ], [ %.sroa.26.0.i, %bb.bp ]
  %.sroa.084.4147.i = phi i64 [ %i.lk, %bb.bt ], [ 0, %bb.bp ]
  %i.lc = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !284, !noalias !285, !noundef !4
  %i.ld = zext i8 %i.lc to i32
  %i.le = add nsw i32 %i.ld, -48                  ; 2 uses
  %i.lf = icmp ult i32 %i.le, 10
  br i1 %i.lf, label %bb.bt, label %.loopexit516

bb.bt:                                            ; preds = %.lr.ph150.i
  %i.lg = mul i64 %.sroa.084.4147.i, 10
  %i.lh = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.lj = zext nneg i32 %i.le to i64
  %i.lk = add i64 %i.lg, %i.lj                    ; 2 uses
  %.not105.i = icmp eq i64 %i.lh, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.loopexit516:                                     ; preds = %.lr.ph.i, %bb.bm, %bb.bl, %.lr.ph141.i, %.preheader111.i, %bb.bq, %bb.br, %.lr.ph150.i, %bb.bi, %bb.bi, %.thread
  %.ph = phi ptr [ %i.jk, %.preheader111.i ], [ %i.jk, %.lr.ph141.i ], [ %i.jk, %.lr.ph150.i ], [ %i.jk, %bb.bi ], [ inttoptr (i64 1 to ptr), %.thread ], [ %i.jk, %bb.bi ], [ %i.jk, %bb.br ], [ %i.jk, %bb.bq ], [ %i.jk, %bb.bl ], [ %i.jk, %bb.bm ], [ %i.jk, %.lr.ph.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.jh) #17
  %i.ll = load i8, ptr %i.ag, align 8, !range !9, !noundef !4
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %bb.bw, label %bb.bx

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.bn, %bb.bo, %bb.bs, %bb.bt
  %.sroa.15319.0 = phi i64 [ %i.lb, %bb.bs ], [ %i.kn, %bb.bo ], [ %i.lk, %bb.bt ], [ %i.ke, %bb.bn ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 5, i64 noundef %.sroa.15319.0) #18
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bx, %bb.bw, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.ln = phi ptr [ %.ph, %bb.bw ], [ %.ph, %bb.bx ], [ %i.jk, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  %.sroa.06.0.not = phi i1 [ true, %bb.bw ], [ false, %bb.bx ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.lo = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %i.by, ptr noalias nofree noundef nonnull %i.t, i64 noundef 20) #18 ; 2 uses
  %i.lp = extractvalue { ptr, i64 } %i.lo, 0
  %i.lq = extractvalue { ptr, i64 } %i.lo, 1      ; 16 uses
  %i.lr = icmp sgt i64 %i.lq, -1
  br i1 %i.lr, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.ls = icmp eq i64 %i.lq, 0
  br i1 %i.ls, label %.thread404, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i65

.thread404:                                       ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %.loopexit509

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i65: ; preds = %bb.bv
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !286
  %i.lt = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.lq, i64 noundef 1) #18, !noalias !286 ; 18 uses
  %i.lu = icmp eq ptr %i.lt, null
  br i1 %i.lu, label %bb.by, label %bb.bz

bb.bw:                                            ; preds = %.loopexit516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 %i.jh, ptr %i.af, align 8
  %.sroa.5314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %.ph, ptr %.sroa.5314.0..sroa_idx, align 8
  %.sroa.8315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %i.jh, ptr %.sroa.8315.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.af) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.bu

bb.bx:                                            ; preds = %.loopexit516
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.lw = load double, ptr %i.lv, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 5, double noundef %i.lw) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.bu

bb.by:                                            ; preds = %bb.bu, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i65
  %.sroa.4357.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i65 ], [ 0, %bb.bu ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4357.0.ph, i64 %i.lq) #21
  unreachable

bb.bz:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i65
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lt, ptr align 1 %i.lp, i64 %i.lq, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %cond479 = icmp eq i64 %i.lq, 1
  %i.lx = load i8, ptr %i.lt, align 1, !alias.scope !287, !noalias !288 ; 2 uses
  br i1 %cond479, label %bb.ca, label %thread-pre-split.i98

bb.ca:                                            ; preds = %bb.bz
  switch i8 %i.lx, label %bb.ch [
    i8 43, label %.loopexit509
    i8 45, label %.loopexit509
  ]

thread-pre-split.i98:                             ; preds = %bb.bz
  switch i8 %i.lx, label %bb.ch [
    i8 43, label %bb.cb
    i8 45, label %bb.cc
  ]

bb.cb:                                            ; preds = %thread-pre-split.i98
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lt, i64 1
  %i.lz = add nsw i64 %i.lq, -1
  br label %bb.ch

bb.cc:                                            ; preds = %thread-pre-split.i98
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lt, i64 1 ; 2 uses
  %i.mb = add nsw i64 %i.lq, -1                   ; 2 uses
  %i.mc = icmp samesign ult i64 %i.lq, 17
  br i1 %i.mc, label %.lr.ph141.i78, label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %bb.cc, %bb.cf
  %.sroa.0.1136.i69 = phi ptr [ %i.md, %bb.cf ], [ %i.ma, %bb.cc ] ; 2 uses
  %.sroa.26.1135.i70 = phi i64 [ %i.me, %bb.cf ], [ %i.mb, %bb.cc ]
  %.sroa.084.0134.i71 = phi i64 [ %i.mp, %bb.cf ], [ 0, %bb.cc ]
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i69, i64 1
  %i.me = add nsw i64 %.sroa.26.1135.i70, -1      ; 2 uses
  %i.mf = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i71, i64 10) ; 2 uses
  %i.mg = extractvalue { i64, i1 } %i.mf, 0
  %i.mh = extractvalue { i64, i1 } %i.mf, 1
  br i1 %i.mh, label %.loopexit509, label %bb.cd, !prof !7

bb.cd:                                            ; preds = %.lr.ph.i68
  %i.mi = load i8, ptr %.sroa.0.1136.i69, align 1, !alias.scope !287, !noalias !288, !noundef !4
  %i.mj = zext i8 %i.mi to i32
  %i.mk = add nsw i32 %i.mj, -48                  ; 2 uses
  %i.ml = icmp ult i32 %i.mk, 10
  br i1 %i.ml, label %bb.ce, label %.loopexit509

bb.ce:                                            ; preds = %bb.cd
  %i.mm = zext nneg i32 %i.mk to i64
  %i.mn = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.mg, i64 %i.mm) ; 2 uses
  %i.mo = extractvalue { i64, i1 } %i.mn, 1
  br i1 %i.mo, label %.loopexit509, label %bb.cf, !prof !7

bb.cf:                                            ; preds = %bb.ce
  %i.mp = extractvalue { i64, i1 } %i.mn, 0       ; 2 uses
  %.not102.i73 = icmp eq i64 %i.me, 0
  br i1 %.not102.i73, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit100, label %.lr.ph.i68

.lr.ph141.i78:                                    ; preds = %bb.cc, %bb.cg
  %.sroa.0.2140.i79 = phi ptr [ %i.mw, %bb.cg ], [ %i.ma, %bb.cc ] ; 2 uses
  %.sroa.26.2139.i80 = phi i64 [ %i.mv, %bb.cg ], [ %i.mb, %bb.cc ]
  %.sroa.084.2138.i81 = phi i64 [ %i.my, %bb.cg ], [ 0, %bb.cc ]
  %i.mq = load i8, ptr %.sroa.0.2140.i79, align 1, !alias.scope !287, !noalias !288, !noundef !4
  %i.mr = zext i8 %i.mq to i32
  %i.ms = add nsw i32 %i.mr, -48                  ; 2 uses
  %i.mt = icmp ult i32 %i.ms, 10
  br i1 %i.mt, label %bb.cg, label %.loopexit509

bb.cg:                                            ; preds = %.lr.ph141.i78
  %i.mu = mul i64 %.sroa.084.2138.i81, 10
  %i.mv = add nsw i64 %.sroa.26.2139.i80, -1      ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i79, i64 1
  %i.mx = zext nneg i32 %i.ms to i64
  %i.my = sub i64 %i.mu, %i.mx                    ; 2 uses
  %.not103.i82 = icmp eq i64 %i.mv, 0
  br i1 %.not103.i82, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit100, label %.lr.ph141.i78

bb.ch:                                            ; preds = %bb.ca, %bb.cb, %thread-pre-split.i98
  %.sroa.26.0.i83 = phi i64 [ %i.lz, %bb.cb ], [ %i.lq, %thread-pre-split.i98 ], [ %i.lq, %bb.ca ] ; 3 uses
  %.sroa.0.0.i84 = phi ptr [ %i.ly, %bb.cb ], [ %i.lt, %thread-pre-split.i98 ], [ %i.lt, %bb.ca ] ; 2 uses
  %i.mz = icmp samesign ult i64 %.sroa.26.0.i83, 16
  br i1 %i.mz, label %.lr.ph150.i93, label %.preheader111.i85

.preheader111.i85:                                ; preds = %bb.ch, %bb.ck
  %.sroa.0.3145.i86 = phi ptr [ %i.na, %bb.ck ], [ %.sroa.0.0.i84, %bb.ch ] ; 2 uses
  %.sroa.26.3144.i87 = phi i64 [ %i.nb, %bb.ck ], [ %.sroa.26.0.i83, %bb.ch ]
  %.sroa.084.3143.i88 = phi i64 [ %i.nm, %bb.ck ], [ 0, %bb.ch ]
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i86, i64 1
  %i.nb = add nsw i64 %.sroa.26.3144.i87, -1      ; 2 uses
  %i.nc = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i88, i64 10) ; 2 uses
  %i.nd = extractvalue { i64, i1 } %i.nc, 0
  %i.ne = extractvalue { i64, i1 } %i.nc, 1
  br i1 %i.ne, label %.loopexit509, label %bb.ci, !prof !7

bb.ci:                                            ; preds = %.preheader111.i85
  %i.nf = load i8, ptr %.sroa.0.3145.i86, align 1, !alias.scope !287, !noalias !288, !noundef !4
  %i.ng = zext i8 %i.nf to i32
  %i.nh = add nsw i32 %i.ng, -48                  ; 2 uses
  %i.ni = icmp ult i32 %i.nh, 10
  br i1 %i.ni, label %bb.cj, label %.loopexit509

bb.cj:                                            ; preds = %bb.ci
  %i.nj = zext nneg i32 %i.nh to i64
  %i.nk = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.nd, i64 %i.nj) ; 2 uses
  %i.nl = extractvalue { i64, i1 } %i.nk, 1
  br i1 %i.nl, label %.loopexit509, label %bb.ck, !prof !7

bb.ck:                                            ; preds = %bb.cj
  %i.nm = extractvalue { i64, i1 } %i.nk, 0       ; 2 uses
  %.not104.i90 = icmp eq i64 %i.nb, 0
  br i1 %.not104.i90, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit100, label %.preheader111.i85

.lr.ph150.i93:                                    ; preds = %bb.ch, %bb.cl
  %.sroa.0.4149.i94 = phi ptr [ %i.nt, %bb.cl ], [ %.sroa.0.0.i84, %bb.ch ] ; 2 uses
  %.sroa.26.4148.i95 = phi i64 [ %i.ns, %bb.cl ], [ %.sroa.26.0.i83, %bb.ch ]
  %.sroa.084.4147.i96 = phi i64 [ %i.nv, %bb.cl ], [ 0, %bb.ch ]
  %i.nn = load i8, ptr %.sroa.0.4149.i94, align 1, !alias.scope !287, !noalias !288, !noundef !4
  %i.no = zext i8 %i.nn to i32
  %i.np = add nsw i32 %i.no, -48                  ; 2 uses
  %i.nq = icmp ult i32 %i.np, 10
  br i1 %i.nq, label %bb.cl, label %.loopexit509

bb.cl:                                            ; preds = %.lr.ph150.i93
  %i.nr = mul i64 %.sroa.084.4147.i96, 10
  %i.ns = add nsw i64 %.sroa.26.4148.i95, -1      ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i94, i64 1
  %i.nu = zext nneg i32 %i.np to i64
  %i.nv = add i64 %i.nr, %i.nu                    ; 2 uses
  %.not105.i97 = icmp eq i64 %i.ns, 0
  br i1 %.not105.i97, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit100, label %.lr.ph150.i93

.loopexit509:                                     ; preds = %.lr.ph.i68, %bb.ce, %bb.cd, %.lr.ph141.i78, %.preheader111.i85, %bb.ci, %bb.cj, %.lr.ph150.i93, %bb.ca, %bb.ca, %.thread404
  %.ph412 = phi ptr [ %i.lt, %.preheader111.i85 ], [ %i.lt, %.lr.ph141.i78 ], [ %i.lt, %.lr.ph150.i93 ], [ %i.lt, %bb.ca ], [ inttoptr (i64 1 to ptr), %.thread404 ], [ %i.lt, %bb.ca ], [ %i.lt, %bb.cj ], [ %i.lt, %bb.ci ], [ %i.lt, %bb.cd ], [ %i.lt, %bb.ce ], [ %i.lt, %.lr.ph.i68 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph412, i64 noundef %i.lq) #17
  %i.nw = load i8, ptr %i.ae, align 8, !range !9, !noundef !4
  %i.nx = trunc nuw i8 %i.nw to i1
  br i1 %i.nx, label %bb.db, label %bb.dc

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit100: ; preds = %bb.cf, %bb.cg, %bb.ck, %bb.cl
  %.sroa.15326.0 = phi i64 [ %i.nm, %bb.ck ], [ %i.my, %bb.cg ], [ %i.nv, %bb.cl ], [ %i.mp, %bb.cf ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 6, i64 noundef %.sroa.15326.0) #18
  br label %bb.cm

bb.cm:                                            ; preds = %bb.dc, %bb.db, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit100
  %i.ny = phi ptr [ %.ph412, %bb.db ], [ %.ph412, %bb.dc ], [ %i.lt, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit100 ]
  %.sroa.05.0.not = phi i1 [ true, %bb.db ], [ false, %bb.dc ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit100 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.01.0566, i64 8
  %i.oa = load ptr, ptr %i.nz, align 8, !nonnull !4, !noundef !4
  store i64 0, ptr %i.ac, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.oa, ptr %.sroa.434.0..sroa_idx, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %i.by, ptr %.sroa.535.0..sroa_idx, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i8 1, ptr %i.ob, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !289
  store i64 0, ptr %i.e, align 8, !noalias !289
  %.sroa.4.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i101, align 8, !noalias !289
  %.sroa.5.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i102, align 8, !noalias !289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !289
  %i.oc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1610612768, ptr %i.oc, align 8, !noalias !289
  store ptr %i.e, ptr %i.d, align 8, !noalias !289
  %i.od = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @38, ptr %i.od, align 8, !noalias !289
  %i.oe = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #18, !noalias !290
  br i1 %i.oe, label %bb.cn, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCshytdrR3ujnR_10uu_pathchk.exit, !prof !7

bb.cn:                                            ; preds = %bb.cm
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #19, !noalias !290
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCshytdrR3ujnR_10uu_pathchk.exit: ; preds = %bb.cm
  %.sroa.0327.0.copyload328 = load i64, ptr %i.e, align 8, !noalias !291 ; 3 uses
  %.sroa.5329.0.copyload331 = load ptr, ptr %.sroa.4.0..sroa_idx.i101, align 8, !noalias !291, !nonnull !4, !noundef !4 ; 8 uses
  %.sroa.8333.0.copyload335 = load i64, ptr %.sroa.5.0..sroa_idx.i102, align 8, !noalias !291 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  switch i64 %.sroa.8333.0.copyload335, label %thread-pre-split.i134 [
    i64 0, label %.loopexit502
    i64 1, label %bb.co
  ]

bb.co:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCshytdrR3ujnR_10uu_pathchk.exit
  %i.of = load i8, ptr %.sroa.5329.0.copyload331, align 1, !alias.scope !292, !noalias !293, !noundef !4 ; 2 uses
  switch i8 %i.of, label %bb.cp [
    i8 43, label %.loopexit502
    i8 45, label %.loopexit502
  ]

thread-pre-split.i134:                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCshytdrR3ujnR_10uu_pathchk.exit
  %.pr.i135 = load i8, ptr %.sroa.5329.0.copyload331, align 1, !alias.scope !292, !noalias !293
  br label %bb.cp

bb.cp:                                            ; preds = %thread-pre-split.i134, %bb.co
  %i.og = phi i8 [ %.pr.i135, %thread-pre-split.i134 ], [ %i.of, %bb.co ]
  switch i8 %i.og, label %bb.cw [
    i8 43, label %bb.cq
    i8 45, label %bb.cr
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.5329.0.copyload331, i64 1
  %i.oi = add nsw i64 %.sroa.8333.0.copyload335, -1
  br label %bb.cw

bb.cr:                                            ; preds = %bb.cp
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.5329.0.copyload331, i64 1 ; 2 uses
  %i.ok = add nsw i64 %.sroa.8333.0.copyload335, -1 ; 3 uses
  %i.ol = icmp samesign ult i64 %.sroa.8333.0.copyload335, 17
  br i1 %i.ol, label %.preheader114.i112, label %.lr.ph.i104

.preheader114.i112:                               ; preds = %bb.cr
  %.not103137.i113 = icmp eq i64 %i.ok, 0
  br i1 %.not103137.i113, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit136, label %.lr.ph141.i114

.lr.ph.i104:                                      ; preds = %bb.cr, %bb.cu
  %.sroa.0.1136.i105 = phi ptr [ %i.om, %bb.cu ], [ %i.oj, %bb.cr ] ; 2 uses
  %.sroa.26.1135.i106 = phi i64 [ %i.on, %bb.cu ], [ %i.ok, %bb.cr ]
  %.sroa.084.0134.i107 = phi i64 [ %i.oy, %bb.cu ], [ 0, %bb.cr ]
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i105, i64 1
  %i.on = add nsw i64 %.sroa.26.1135.i106, -1     ; 2 uses
  %i.oo = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i107, i64 10) ; 2 uses
  %i.op = extractvalue { i64, i1 } %i.oo, 0
  %i.oq = extractvalue { i64, i1 } %i.oo, 1
  br i1 %i.oq, label %.loopexit502, label %bb.cs, !prof !7

bb.cs:                                            ; preds = %.lr.ph.i104
  %i.or = load i8, ptr %.sroa.0.1136.i105, align 1, !alias.scope !292, !noalias !293, !noundef !4
  %i.os = zext i8 %i.or to i32
  %i.ot = add nsw i32 %i.os, -48                  ; 2 uses
  %i.ou = icmp ult i32 %i.ot, 10
  br i1 %i.ou, label %bb.ct, label %.loopexit502

bb.ct:                                            ; preds = %bb.cs
  %i.ov = zext nneg i32 %i.ot to i64
  %i.ow = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.op, i64 %i.ov) ; 2 uses
  %i.ox = extractvalue { i64, i1 } %i.ow, 1
  br i1 %i.ox, label %.loopexit502, label %bb.cu, !prof !7

bb.cu:                                            ; preds = %bb.ct
  %i.oy = extractvalue { i64, i1 } %i.ow, 0       ; 2 uses
  %.not102.i109 = icmp eq i64 %i.on, 0
  br i1 %.not102.i109, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit136, label %.lr.ph.i104

.lr.ph141.i114:                                   ; preds = %.preheader114.i112, %bb.cv
  %.sroa.0.2140.i115 = phi ptr [ %i.pf, %bb.cv ], [ %i.oj, %.preheader114.i112 ] ; 2 uses
  %.sroa.26.2139.i116 = phi i64 [ %i.pe, %bb.cv ], [ %i.ok, %.preheader114.i112 ]
  %.sroa.084.2138.i117 = phi i64 [ %i.ph, %bb.cv ], [ 0, %.preheader114.i112 ]
  %i.oz = load i8, ptr %.sroa.0.2140.i115, align 1, !alias.scope !292, !noalias !293, !noundef !4
  %i.pa = zext i8 %i.oz to i32
  %i.pb = add nsw i32 %i.pa, -48                  ; 2 uses
  %i.pc = icmp ult i32 %i.pb, 10
  br i1 %i.pc, label %bb.cv, label %.loopexit502

bb.cv:                                            ; preds = %.lr.ph141.i114
  %i.pd = mul i64 %.sroa.084.2138.i117, 10
  %i.pe = add nsw i64 %.sroa.26.2139.i116, -1     ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i115, i64 1
  %i.pg = zext nneg i32 %i.pb to i64
  %i.ph = sub i64 %i.pd, %i.pg                    ; 2 uses
  %.not103.i118 = icmp eq i64 %i.pe, 0
  br i1 %.not103.i118, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit136, label %.lr.ph141.i114

bb.cw:                                            ; preds = %bb.cq, %bb.cp
  %.sroa.26.0.i119 = phi i64 [ %i.oi, %bb.cq ], [ %.sroa.8333.0.copyload335, %bb.cp ] ; 4 uses
  %.sroa.0.0.i120 = phi ptr [ %i.oh, %bb.cq ], [ %.sroa.5329.0.copyload331, %bb.cp ] ; 2 uses
  %i.pi = icmp samesign ult i64 %.sroa.26.0.i119, 16
  br i1 %i.pi, label %.preheader.i127, label %.preheader111.i121

.preheader.i127:                                  ; preds = %bb.cw
  %.not105146.i128 = icmp eq i64 %.sroa.26.0.i119, 0
  br i1 %.not105146.i128, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit136, label %.lr.ph150.i129

.preheader111.i121:                               ; preds = %bb.cw, %bb.cz
  %.sroa.0.3145.i122 = phi ptr [ %i.pj, %bb.cz ], [ %.sroa.0.0.i120, %bb.cw ] ; 2 uses
  %.sroa.26.3144.i123 = phi i64 [ %i.pk, %bb.cz ], [ %.sroa.26.0.i119, %bb.cw ]
  %.sroa.084.3143.i124 = phi i64 [ %i.pv, %bb.cz ], [ 0, %bb.cw ]
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i122, i64 1
  %i.pk = add nsw i64 %.sroa.26.3144.i123, -1     ; 2 uses
  %i.pl = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i124, i64 10) ; 2 uses
  %i.pm = extractvalue { i64, i1 } %i.pl, 0
  %i.pn = extractvalue { i64, i1 } %i.pl, 1
  br i1 %i.pn, label %.loopexit502, label %bb.cx, !prof !7

bb.cx:                                            ; preds = %.preheader111.i121
  %i.po = load i8, ptr %.sroa.0.3145.i122, align 1, !alias.scope !292, !noalias !293, !noundef !4
  %i.pp = zext i8 %i.po to i32
  %i.pq = add nsw i32 %i.pp, -48                  ; 2 uses
  %i.pr = icmp ult i32 %i.pq, 10
  br i1 %i.pr, label %bb.cy, label %.loopexit502

bb.cy:                                            ; preds = %bb.cx
  %i.ps = zext nneg i32 %i.pq to i64
  %i.pt = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.pm, i64 %i.ps) ; 2 uses
  %i.pu = extractvalue { i64, i1 } %i.pt, 1
  br i1 %i.pu, label %.loopexit502, label %bb.cz, !prof !7

bb.cz:                                            ; preds = %bb.cy
  %i.pv = extractvalue { i64, i1 } %i.pt, 0       ; 2 uses
  %.not104.i126 = icmp eq i64 %i.pk, 0
  br i1 %.not104.i126, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit136, label %.preheader111.i121

.lr.ph150.i129:                                   ; preds = %.preheader.i127, %bb.da
  %.sroa.0.4149.i130 = phi ptr [ %i.qc, %bb.da ], [ %.sroa.0.0.i120, %.preheader.i127 ] ; 2 uses
  %.sroa.26.4148.i131 = phi i64 [ %i.qb, %bb.da ], [ %.sroa.26.0.i119, %.preheader.i127 ]
  %.sroa.084.4147.i132 = phi i64 [ %i.qe, %bb.da ], [ 0, %.preheader.i127 ]
  %i.pw = load i8, ptr %.sroa.0.4149.i130, align 1, !alias.scope !292, !noalias !293, !noundef !4
  %i.px = zext i8 %i.pw to i32
  %i.py = add nsw i32 %i.px, -48                  ; 2 uses
  %i.pz = icmp ult i32 %i.py, 10
  br i1 %i.pz, label %bb.da, label %.loopexit502

bb.da:                                            ; preds = %.lr.ph150.i129
  %i.qa = mul i64 %.sroa.084.4147.i132, 10
  %i.qb = add nsw i64 %.sroa.26.4148.i131, -1     ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i130, i64 1
  %i.qd = zext nneg i32 %i.py to i64
  %i.qe = add i64 %i.qa, %i.qd                    ; 2 uses
  %.not105.i133 = icmp eq i64 %i.qb, 0
  br i1 %.not105.i133, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit136, label %.lr.ph150.i129

bb.db:                                            ; preds = %.loopexit509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 %i.lq, ptr %i.ad, align 8
  %.sroa.5321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.ph412, ptr %.sroa.5321.0..sroa_idx, align 8
  %.sroa.8322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.lq, ptr %.sroa.8322.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 6, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ad) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.cm

bb.dc:                                            ; preds = %.loopexit509
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
end_hunk_0
begin_hunk_1_@_RNvCshytdrR3ujnR_10uu_pathchk11check_basic:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 %.sroa.0327.0.copyload328, ptr %i.aa, align 8
  %.sroa.5329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.sroa.5329.0.copyload331, ptr %.sroa.5329.0..sroa_idx, align 8
  %.sroa.8333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %.sroa.8333.0.copyload335, ptr %.sroa.8333.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 9, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aa) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.z) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit140

bb.df:                                            ; preds = %.loopexit502
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ql = load double, ptr %i.qk, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 9, double noundef %i.ql) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.dd

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit140: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i138, %bb.dd, %bb.de
  %i.qm = icmp eq i64 %i.lq, 0
  %or.cond = or i1 %.sroa.05.0.not, %i.qm
  br i1 %or.cond, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit144, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i142

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit144: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i142, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit140
  %i.qn = icmp eq i64 %i.jh, 0
  %or.cond481 = or i1 %.sroa.06.0.not, %i.qn
  br i1 %or.cond481, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit155, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i153

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i142: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit140
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ny, i64 noundef %i.lq, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !295
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit144

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit155: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i153, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.ai, ptr %i.y, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.439.0..sroa_idx, align 8
  %i.qo = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @9, ptr noundef nonnull %i.y) #18 ; 4 uses
  %i.qp = icmp eq ptr %i.qo, null
  br i1 %i.qp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshytdrR3ujnR_10uu_pathchk.exit147, label %bb.dg

bb.dg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.qq = ptrtoint ptr %i.qo to i64               ; 2 uses
  %i.qr = and i64 %i.qq, 3
  switch i64 %i.qr, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i145
    i64 3, label %bb.dh
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i145
    i64 1, label %bb.di
  ], !prof !8

bb.dh:                                            ; preds = %bb.dg
  %i.qs = icmp ult ptr %i.qo, inttoptr (i64 188978561024 to ptr)
  %i.qt = and i64 %i.qq, 1095216660480
  %i.qu = icmp ne i64 %i.qt, 1095216660480
  call void @llvm.assume(i1 %i.qs)
  call void @llvm.assume(i1 %i.qu)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i145

bb.di:                                            ; preds = %bb.dg
  %i.qv = getelementptr i8, ptr %i.qo, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qv) ]
  %i.qw = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.qv, ptr %i.qw, align 8, !alias.scope !296
  store i8 3, ptr %i.c, align 8, !alias.scope !296
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.qw) #18
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i145

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i145: ; preds = %bb.di, %bb.dh, %bb.dg, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshytdrR3ujnR_10uu_pathchk.exit147

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshytdrR3ujnR_10uu_pathchk.exit147: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit155, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %.val.i148 = load i64, ptr %i.ai, align 8, !range !5, !alias.scope !297, !noundef !4 ; 2 uses
  %i.qx = icmp eq i64 %.val.i148, 0
  br i1 %i.qx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit151, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i149

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i149: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshytdrR3ujnR_10uu_pathchk.exit147
  %i.qy = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.val1.i150 = load ptr, ptr %i.qy, align 8, !alias.scope !297, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i150, i64 noundef %.val.i148, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !297
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit151

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit151: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshytdrR3ujnR_10uu_pathchk.exit147, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.dj

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i153: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit144
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ln, i64 noundef %i.jh, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !298
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit155

bb.dj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit66.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit151, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit282
  %i.qz = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.qz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit56, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i157

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i157: ; preds = %bb.dj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit56.sink.split

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit56.sink.split: ; preds = %.critedge._crit_edge, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i157
  %.sroa.0.2.ph = phi i1 [ false, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i157 ], [ %i.cb, %.critedge._crit_edge ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !4
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit56

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit56: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit56.sink.split, %bb.dj, %.critedge._crit_edge
  %.sroa.0.2 = phi i1 [ false, %bb.dj ], [ %i.cb, %.critedge._crit_edge ], [ %.sroa.0.2.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit56.sink.split ]
  ret i1 %.sroa.0.2

bb.dk:                                            ; preds = %bb.c, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.c ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.bd) #21
  unreachable

bb.dl:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr align 1 %i.bc, i64 %i.bd, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %cond478 = icmp eq i64 %i.bd, 1
  %i.ra = load i8, ptr %i.bg, align 1, !alias.scope !299, !noalias !300 ; 2 uses
  br i1 %cond478, label %bb.dm, label %thread-pre-split.i191

bb.dm:                                            ; preds = %bb.dl
  switch i8 %i.ra, label %bb.dt [
    i8 43, label %.loopexit495
    i8 45, label %.loopexit495
  ]

thread-pre-split.i191:                            ; preds = %bb.dl
  switch i8 %i.ra, label %bb.dt [
    i8 43, label %bb.dn
    i8 45, label %bb.do
  ]

bb.dn:                                            ; preds = %thread-pre-split.i191
  %i.rb = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.rc = add nsw i64 %i.bd, -1
  br label %bb.dt

bb.do:                                            ; preds = %thread-pre-split.i191
  %i.rd = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 2 uses
  %i.re = add nsw i64 %i.bd, -1                   ; 2 uses
  %i.rf = icmp samesign ult i64 %i.bd, 17
  br i1 %i.rf, label %.lr.ph141.i171, label %.lr.ph.i161

.lr.ph.i161:                                      ; preds = %bb.do, %bb.dr
  %.sroa.0.1136.i162 = phi ptr [ %i.rg, %bb.dr ], [ %i.rd, %bb.do ] ; 2 uses
  %.sroa.26.1135.i163 = phi i64 [ %i.rh, %bb.dr ], [ %i.re, %bb.do ]
  %.sroa.084.0134.i164 = phi i64 [ %i.rs, %bb.dr ], [ 0, %bb.do ]
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i162, i64 1
  %i.rh = add nsw i64 %.sroa.26.1135.i163, -1     ; 2 uses
  %i.ri = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i164, i64 10) ; 2 uses
  %i.rj = extractvalue { i64, i1 } %i.ri, 0
  %i.rk = extractvalue { i64, i1 } %i.ri, 1
  br i1 %i.rk, label %.loopexit495, label %bb.dp, !prof !7

bb.dp:                                            ; preds = %.lr.ph.i161
  %i.rl = load i8, ptr %.sroa.0.1136.i162, align 1, !alias.scope !299, !noalias !300, !noundef !4
  %i.rm = zext i8 %i.rl to i32
  %i.rn = add nsw i32 %i.rm, -48                  ; 2 uses
  %i.ro = icmp ult i32 %i.rn, 10
  br i1 %i.ro, label %bb.dq, label %.loopexit495

bb.dq:                                            ; preds = %bb.dp
  %i.rp = zext nneg i32 %i.rn to i64
  %i.rq = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.rj, i64 %i.rp) ; 2 uses
  %i.rr = extractvalue { i64, i1 } %i.rq, 1
  br i1 %i.rr, label %.loopexit495, label %bb.dr, !prof !7

bb.dr:                                            ; preds = %bb.dq
  %i.rs = extractvalue { i64, i1 } %i.rq, 0       ; 2 uses
  %.not102.i166 = icmp eq i64 %i.rh, 0
  br i1 %.not102.i166, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit193, label %.lr.ph.i161

.lr.ph141.i171:                                   ; preds = %bb.do, %bb.ds
  %.sroa.0.2140.i172 = phi ptr [ %i.rz, %bb.ds ], [ %i.rd, %bb.do ] ; 2 uses
  %.sroa.26.2139.i173 = phi i64 [ %i.ry, %bb.ds ], [ %i.re, %bb.do ]
  %.sroa.084.2138.i174 = phi i64 [ %i.sb, %bb.ds ], [ 0, %bb.do ]
  %i.rt = load i8, ptr %.sroa.0.2140.i172, align 1, !alias.scope !299, !noalias !300, !noundef !4
  %i.ru = zext i8 %i.rt to i32
  %i.rv = add nsw i32 %i.ru, -48                  ; 2 uses
  %i.rw = icmp ult i32 %i.rv, 10
  br i1 %i.rw, label %bb.ds, label %.loopexit495

bb.ds:                                            ; preds = %.lr.ph141.i171
  %i.rx = mul i64 %.sroa.084.2138.i174, 10
  %i.ry = add nsw i64 %.sroa.26.2139.i173, -1     ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i172, i64 1
  %i.sa = zext nneg i32 %i.rv to i64
  %i.sb = sub i64 %i.rx, %i.sa                    ; 2 uses
  %.not103.i175 = icmp eq i64 %i.ry, 0
  br i1 %.not103.i175, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit193, label %.lr.ph141.i171

bb.dt:                                            ; preds = %bb.dm, %bb.dn, %thread-pre-split.i191
  %.sroa.26.0.i176 = phi i64 [ %i.rc, %bb.dn ], [ %i.bd, %thread-pre-split.i191 ], [ %i.bd, %bb.dm ] ; 3 uses
  %.sroa.0.0.i177 = phi ptr [ %i.rb, %bb.dn ], [ %i.bg, %thread-pre-split.i191 ], [ %i.bg, %bb.dm ] ; 2 uses
  %i.sc = icmp samesign ult i64 %.sroa.26.0.i176, 16
  br i1 %i.sc, label %.lr.ph150.i186, label %.preheader111.i178

.preheader111.i178:                               ; preds = %bb.dt, %bb.dw
  %.sroa.0.3145.i179 = phi ptr [ %i.sd, %bb.dw ], [ %.sroa.0.0.i177, %bb.dt ] ; 2 uses
  %.sroa.26.3144.i180 = phi i64 [ %i.se, %bb.dw ], [ %.sroa.26.0.i176, %bb.dt ]
  %.sroa.084.3143.i181 = phi i64 [ %i.sp, %bb.dw ], [ 0, %bb.dt ]
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i179, i64 1
  %i.se = add nsw i64 %.sroa.26.3144.i180, -1     ; 2 uses
  %i.sf = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i181, i64 10) ; 2 uses
  %i.sg = extractvalue { i64, i1 } %i.sf, 0
  %i.sh = extractvalue { i64, i1 } %i.sf, 1
  br i1 %i.sh, label %.loopexit495, label %bb.du, !prof !7

bb.du:                                            ; preds = %.preheader111.i178
  %i.si = load i8, ptr %.sroa.0.3145.i179, align 1, !alias.scope !299, !noalias !300, !noundef !4
  %i.sj = zext i8 %i.si to i32
  %i.sk = add nsw i32 %i.sj, -48                  ; 2 uses
  %i.sl = icmp ult i32 %i.sk, 10
  br i1 %i.sl, label %bb.dv, label %.loopexit495

bb.dv:                                            ; preds = %bb.du
  %i.sm = zext nneg i32 %i.sk to i64
  %i.sn = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.sg, i64 %i.sm) ; 2 uses
  %i.so = extractvalue { i64, i1 } %i.sn, 1
  br i1 %i.so, label %.loopexit495, label %bb.dw, !prof !7

bb.dw:                                            ; preds = %bb.dv
  %i.sp = extractvalue { i64, i1 } %i.sn, 0       ; 2 uses
  %.not104.i183 = icmp eq i64 %i.se, 0
  br i1 %.not104.i183, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit193, label %.preheader111.i178

.lr.ph150.i186:                                   ; preds = %bb.dt, %bb.dx
  %.sroa.0.4149.i187 = phi ptr [ %i.sw, %bb.dx ], [ %.sroa.0.0.i177, %bb.dt ] ; 2 uses
  %.sroa.26.4148.i188 = phi i64 [ %i.sv, %bb.dx ], [ %.sroa.26.0.i176, %bb.dt ]
  %.sroa.084.4147.i189 = phi i64 [ %i.sy, %bb.dx ], [ 0, %bb.dt ]
  %i.sq = load i8, ptr %.sroa.0.4149.i187, align 1, !alias.scope !299, !noalias !300, !noundef !4
  %i.sr = zext i8 %i.sq to i32
  %i.ss = add nsw i32 %i.sr, -48                  ; 2 uses
  %i.st = icmp ult i32 %i.ss, 10
  br i1 %i.st, label %bb.dx, label %.loopexit495

bb.dx:                                            ; preds = %.lr.ph150.i186
  %i.su = mul i64 %.sroa.084.4147.i189, 10
  %i.sv = add nsw i64 %.sroa.26.4148.i188, -1     ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i187, i64 1
  %i.sx = zext nneg i32 %i.ss to i64
  %i.sy = add i64 %i.su, %i.sx                    ; 2 uses
  %.not105.i190 = icmp eq i64 %i.sv, 0
  br i1 %.not105.i190, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit193, label %.lr.ph150.i186

.loopexit495:                                     ; preds = %.lr.ph.i161, %bb.dq, %bb.dp, %.lr.ph141.i171, %.preheader111.i178, %bb.du, %bb.dv, %.lr.ph150.i186, %bb.dm, %bb.dm, %.thread428
  %.ph436 = phi ptr [ %i.bg, %.preheader111.i178 ], [ %i.bg, %.lr.ph141.i171 ], [ %i.bg, %.lr.ph150.i186 ], [ %i.bg, %bb.dm ], [ inttoptr (i64 1 to ptr), %.thread428 ], [ %i.bg, %bb.dm ], [ %i.bg, %bb.dv ], [ %i.bg, %bb.du ], [ %i.bg, %bb.dp ], [ %i.bg, %bb.dq ], [ %i.bg, %.lr.ph.i161 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph436, i64 noundef %i.bd) #17
  %i.sz = load i8, ptr %i.au, align 8, !range !9, !noundef !4
  %i.ta = trunc nuw i8 %i.sz to i1
  br i1 %i.ta, label %bb.ea, label %bb.eb

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit193: ; preds = %bb.dr, %bb.ds, %bb.dw, %bb.dx
  %.sroa.15296.0 = phi i64 [ %i.sp, %bb.dw ], [ %i.sb, %bb.ds ], [ %i.sy, %bb.dx ], [ %i.rs, %bb.dr ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 5, i64 noundef %.sroa.15296.0) #18
  br label %bb.dy

bb.dy:                                            ; preds = %bb.eb, %bb.ea, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit193
  %i.tb = phi ptr [ %.ph436, %bb.ea ], [ %.ph436, %bb.eb ], [ %i.bg, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit193 ]
  %.sroa.04.0.not = phi i1 [ true, %bb.ea ], [ false, %bb.eb ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit193 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.tc = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %.sroa.10.0.copyload, ptr noalias nofree noundef nonnull %i.v, i64 noundef 20) #18 ; 2 uses
  %i.td = extractvalue { ptr, i64 } %i.tc, 0
  %i.te = extractvalue { ptr, i64 } %i.tc, 1      ; 16 uses
  %i.tf = icmp sgt i64 %i.te, -1
  br i1 %i.tf, label %bb.dz, label %bb.ec

bb.dz:                                            ; preds = %bb.dy
  %i.tg = icmp eq i64 %i.te, 0
  br i1 %i.tg, label %.thread455, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i195

.thread455:                                       ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %.loopexit488

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i195: ; preds = %bb.dz
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !301
  %i.th = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.te, i64 noundef 1) #18, !noalias !301 ; 18 uses
  %i.ti = icmp eq ptr %i.th, null
  br i1 %i.ti, label %bb.ec, label %bb.ed

bb.ea:                                            ; preds = %.loopexit495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i64 %i.bd, ptr %i.at, align 8
  %.sroa.5.0..sroa_idx293 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %.ph436, ptr %.sroa.5.0..sroa_idx293, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %i.bd, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.at) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.dy

bb.eb:                                            ; preds = %.loopexit495
  %i.tj = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.tk = load double, ptr %i.tj, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 5, double noundef %i.tk) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.dy

bb.ec:                                            ; preds = %bb.dy, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i195
  %.sroa.4345.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i195 ], [ 0, %bb.dy ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4345.0.ph, i64 %i.te) #21
  unreachable

bb.ed:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i195
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.th, ptr align 1 %i.td, i64 %i.te, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %cond = icmp eq i64 %i.te, 1
  %i.tl = load i8, ptr %i.th, align 1, !alias.scope !302, !noalias !303 ; 2 uses
  br i1 %cond, label %bb.ee, label %thread-pre-split.i228

bb.ee:                                            ; preds = %bb.ed
  switch i8 %i.tl, label %bb.el [
    i8 43, label %.loopexit488
    i8 45, label %.loopexit488
  ]

thread-pre-split.i228:                            ; preds = %bb.ed
  switch i8 %i.tl, label %bb.el [
    i8 43, label %bb.ef
    i8 45, label %bb.eg
  ]

bb.ef:                                            ; preds = %thread-pre-split.i228
  %i.tm = getelementptr inbounds nuw i8, ptr %i.th, i64 1
  %i.tn = add nsw i64 %i.te, -1
  br label %bb.el

bb.eg:                                            ; preds = %thread-pre-split.i228
  %i.to = getelementptr inbounds nuw i8, ptr %i.th, i64 1 ; 2 uses
  %i.tp = add nsw i64 %i.te, -1                   ; 2 uses
  %i.tq = icmp samesign ult i64 %i.te, 17
  br i1 %i.tq, label %.lr.ph141.i208, label %.lr.ph.i198

.lr.ph.i198:                                      ; preds = %bb.eg, %bb.ej
  %.sroa.0.1136.i199 = phi ptr [ %i.tr, %bb.ej ], [ %i.to, %bb.eg ] ; 2 uses
  %.sroa.26.1135.i200 = phi i64 [ %i.ts, %bb.ej ], [ %i.tp, %bb.eg ]
  %.sroa.084.0134.i201 = phi i64 [ %i.ud, %bb.ej ], [ 0, %bb.eg ]
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i199, i64 1
  %i.ts = add nsw i64 %.sroa.26.1135.i200, -1     ; 2 uses
  %i.tt = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i201, i64 10) ; 2 uses
  %i.tu = extractvalue { i64, i1 } %i.tt, 0
  %i.tv = extractvalue { i64, i1 } %i.tt, 1
  br i1 %i.tv, label %.loopexit488, label %bb.eh, !prof !7

bb.eh:                                            ; preds = %.lr.ph.i198
  %i.tw = load i8, ptr %.sroa.0.1136.i199, align 1, !alias.scope !302, !noalias !303, !noundef !4
  %i.tx = zext i8 %i.tw to i32
  %i.ty = add nsw i32 %i.tx, -48                  ; 2 uses
  %i.tz = icmp ult i32 %i.ty, 10
  br i1 %i.tz, label %bb.ei, label %.loopexit488

bb.ei:                                            ; preds = %bb.eh
  %i.ua = zext nneg i32 %i.ty to i64
  %i.ub = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.tu, i64 %i.ua) ; 2 uses
  %i.uc = extractvalue { i64, i1 } %i.ub, 1
  br i1 %i.uc, label %.loopexit488, label %bb.ej, !prof !7

bb.ej:                                            ; preds = %bb.ei
  %i.ud = extractvalue { i64, i1 } %i.ub, 0       ; 2 uses
  %.not102.i203 = icmp eq i64 %i.ts, 0
  br i1 %.not102.i203, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit230, label %.lr.ph.i198

.lr.ph141.i208:                                   ; preds = %bb.eg, %bb.ek
  %.sroa.0.2140.i209 = phi ptr [ %i.uk, %bb.ek ], [ %i.to, %bb.eg ] ; 2 uses
  %.sroa.26.2139.i210 = phi i64 [ %i.uj, %bb.ek ], [ %i.tp, %bb.eg ]
  %.sroa.084.2138.i211 = phi i64 [ %i.um, %bb.ek ], [ 0, %bb.eg ]
  %i.ue = load i8, ptr %.sroa.0.2140.i209, align 1, !alias.scope !302, !noalias !303, !noundef !4
  %i.uf = zext i8 %i.ue to i32
  %i.ug = add nsw i32 %i.uf, -48                  ; 2 uses
  %i.uh = icmp ult i32 %i.ug, 10
  br i1 %i.uh, label %bb.ek, label %.loopexit488

bb.ek:                                            ; preds = %.lr.ph141.i208
  %i.ui = mul i64 %.sroa.084.2138.i211, 10
  %i.uj = add nsw i64 %.sroa.26.2139.i210, -1     ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i209, i64 1
  %i.ul = zext nneg i32 %i.ug to i64
  %i.um = sub i64 %i.ui, %i.ul                    ; 2 uses
  %.not103.i212 = icmp eq i64 %i.uj, 0
  br i1 %.not103.i212, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit230, label %.lr.ph141.i208

bb.el:                                            ; preds = %bb.ee, %bb.ef, %thread-pre-split.i228
  %.sroa.26.0.i213 = phi i64 [ %i.tn, %bb.ef ], [ %i.te, %thread-pre-split.i228 ], [ %i.te, %bb.ee ] ; 3 uses
  %.sroa.0.0.i214 = phi ptr [ %i.tm, %bb.ef ], [ %i.th, %thread-pre-split.i228 ], [ %i.th, %bb.ee ] ; 2 uses
  %i.un = icmp samesign ult i64 %.sroa.26.0.i213, 16
  br i1 %i.un, label %.lr.ph150.i223, label %.preheader111.i215

.preheader111.i215:                               ; preds = %bb.el, %bb.eo
  %.sroa.0.3145.i216 = phi ptr [ %i.uo, %bb.eo ], [ %.sroa.0.0.i214, %bb.el ] ; 2 uses
  %.sroa.26.3144.i217 = phi i64 [ %i.up, %bb.eo ], [ %.sroa.26.0.i213, %bb.el ]
  %.sroa.084.3143.i218 = phi i64 [ %i.va, %bb.eo ], [ 0, %bb.el ]
  %i.uo = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i216, i64 1
  %i.up = add nsw i64 %.sroa.26.3144.i217, -1     ; 2 uses
  %i.uq = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i218, i64 10) ; 2 uses
  %i.ur = extractvalue { i64, i1 } %i.uq, 0
  %i.us = extractvalue { i64, i1 } %i.uq, 1
  br i1 %i.us, label %.loopexit488, label %bb.em, !prof !7

bb.em:                                            ; preds = %.preheader111.i215
  %i.ut = load i8, ptr %.sroa.0.3145.i216, align 1, !alias.scope !302, !noalias !303, !noundef !4
  %i.uu = zext i8 %i.ut to i32
  %i.uv = add nsw i32 %i.uu, -48                  ; 2 uses
  %i.uw = icmp ult i32 %i.uv, 10
  br i1 %i.uw, label %bb.en, label %.loopexit488

bb.en:                                            ; preds = %bb.em
  %i.ux = zext nneg i32 %i.uv to i64
  %i.uy = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ur, i64 %i.ux) ; 2 uses
  %i.uz = extractvalue { i64, i1 } %i.uy, 1
  br i1 %i.uz, label %.loopexit488, label %bb.eo, !prof !7

bb.eo:                                            ; preds = %bb.en
  %i.va = extractvalue { i64, i1 } %i.uy, 0       ; 2 uses
  %.not104.i220 = icmp eq i64 %i.up, 0
  br i1 %.not104.i220, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit230, label %.preheader111.i215

.lr.ph150.i223:                                   ; preds = %bb.el, %bb.ep
  %.sroa.0.4149.i224 = phi ptr [ %i.vh, %bb.ep ], [ %.sroa.0.0.i214, %bb.el ] ; 2 uses
  %.sroa.26.4148.i225 = phi i64 [ %i.vg, %bb.ep ], [ %.sroa.26.0.i213, %bb.el ]
  %.sroa.084.4147.i226 = phi i64 [ %i.vj, %bb.ep ], [ 0, %bb.el ]
  %i.vb = load i8, ptr %.sroa.0.4149.i224, align 1, !alias.scope !302, !noalias !303, !noundef !4
  %i.vc = zext i8 %i.vb to i32
  %i.vd = add nsw i32 %i.vc, -48                  ; 2 uses
  %i.ve = icmp ult i32 %i.vd, 10
  br i1 %i.ve, label %bb.ep, label %.loopexit488

bb.ep:                                            ; preds = %.lr.ph150.i223
  %i.vf = mul i64 %.sroa.084.4147.i226, 10
  %i.vg = add nsw i64 %.sroa.26.4148.i225, -1     ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i224, i64 1
  %i.vi = zext nneg i32 %i.vd to i64
  %i.vj = add i64 %i.vf, %i.vi                    ; 2 uses
  %.not105.i227 = icmp eq i64 %i.vg, 0
  br i1 %.not105.i227, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit230, label %.lr.ph150.i223

.loopexit488:                                     ; preds = %.lr.ph.i198, %bb.ei, %bb.eh, %.lr.ph141.i208, %.preheader111.i215, %bb.em, %bb.en, %.lr.ph150.i223, %bb.ee, %bb.ee, %.thread455
  %.ph463 = phi ptr [ %i.th, %.preheader111.i215 ], [ %i.th, %.lr.ph141.i208 ], [ %i.th, %.lr.ph150.i223 ], [ %i.th, %bb.ee ], [ inttoptr (i64 1 to ptr), %.thread455 ], [ %i.th, %bb.ee ], [ %i.th, %bb.en ], [ %i.th, %bb.em ], [ %i.th, %bb.eh ], [ %i.th, %bb.ei ], [ %i.th, %.lr.ph.i198 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph463, i64 noundef %i.te) #17
  %i.vk = load i8, ptr %i.as, align 8, !range !9, !noundef !4
  %i.vl = trunc nuw i8 %i.vk to i1
  br i1 %i.vl, label %bb.eq, label %bb.er

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit230: ; preds = %bb.ej, %bb.ek, %bb.eo, %bb.ep
  %.sroa.15303.0 = phi i64 [ %i.va, %bb.eo ], [ %i.um, %bb.ek ], [ %i.vj, %bb.ep ], [ %i.ud, %bb.ej ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 6, i64 noundef %.sroa.15303.0) #18
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i232

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i232: ; preds = %bb.er, %bb.eq, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit230
  %i.vm = phi ptr [ %.ph463, %bb.eq ], [ %.ph463, %bb.er ], [ %i.th, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit230 ]
  %.sroa.03.0.not = phi i1 [ true, %bb.eq ], [ false, %bb.er ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit230 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !304
  %i.vn = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.10.0.copyload, i64 noundef 1) #18, !noalias !304 ; 9 uses
  %i.vo = icmp eq ptr %i.vn, null
  br i1 %i.vo, label %bb.es, label %bb.et

bb.eq:                                            ; preds = %.loopexit488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i64 %i.te, ptr %i.ar, align 8
  %.sroa.5298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %.ph463, ptr %.sroa.5298.0..sroa_idx, align 8
  %.sroa.8299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %i.te, ptr %.sroa.8299.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 6, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ar) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i232

bb.er:                                            ; preds = %.loopexit488
  %i.vp = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.vq = load double, ptr %i.vp, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 6, double noundef %i.vq) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i232

bb.es:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i232
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.sroa.10.0.copyload) #21
  unreachable

bb.et:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i232
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vn, ptr nonnull align 1 %.sroa.6.0.copyload, i64 %.sroa.10.0.copyload, i1 false)
  %.pr.i266 = load i8, ptr %i.vn, align 1, !alias.scope !305, !noalias !306
  switch i8 %.pr.i266, label %.preheader111.i252.preheader [
    i8 43, label %bb.eu
    i8 45, label %bb.ev
  ]

bb.eu:                                            ; preds = %bb.et
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vn, i64 1
  %i.vs = add nsw i64 %.sroa.10.0.copyload, -1
  br label %.preheader111.i252.preheader

.preheader111.i252.preheader:                     ; preds = %bb.et, %bb.eu
  %.sroa.0.3145.i253.ph = phi ptr [ %i.vn, %bb.et ], [ %i.vr, %bb.eu ]
  %.sroa.26.3144.i254.ph = phi i64 [ %.sroa.10.0.copyload, %bb.et ], [ %i.vs, %bb.eu ]
  br label %.preheader111.i252

bb.ev:                                            ; preds = %bb.et
  %i.vt = add nsw i64 %.sroa.10.0.copyload, -1
  br label %.lr.ph.i235

.lr.ph.i235:                                      ; preds = %bb.ev, %bb.ey
  %.sroa.0.1136.i236.pn = phi ptr [ %.sroa.0.1136.i236, %bb.ey ], [ %i.vn, %bb.ev ]
  %.sroa.26.1135.i237 = phi i64 [ %i.vu, %bb.ey ], [ %i.vt, %bb.ev ]
  %.sroa.084.0134.i238 = phi i64 [ %i.wf, %bb.ey ], [ 0, %bb.ev ]
  %.sroa.0.1136.i236 = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i236.pn, i64 1 ; 2 uses
  %i.vu = add nsw i64 %.sroa.26.1135.i237, -1     ; 2 uses
  %i.vv = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i238, i64 10) ; 2 uses
  %i.vw = extractvalue { i64, i1 } %i.vv, 0
  %i.vx = extractvalue { i64, i1 } %i.vv, 1
  br i1 %i.vx, label %.loopexit, label %bb.ew, !prof !7

bb.ew:                                            ; preds = %.lr.ph.i235
  %i.vy = load i8, ptr %.sroa.0.1136.i236, align 1, !alias.scope !305, !noalias !306, !noundef !4
  %i.vz = zext i8 %i.vy to i32
  %i.wa = add nsw i32 %i.vz, -48                  ; 2 uses
  %i.wb = icmp ult i32 %i.wa, 10
  br i1 %i.wb, label %bb.ex, label %.loopexit

bb.ex:                                            ; preds = %bb.ew
  %i.wc = zext nneg i32 %i.wa to i64
  %i.wd = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.vw, i64 %i.wc) ; 2 uses
  %i.we = extractvalue { i64, i1 } %i.wd, 1
  br i1 %i.we, label %.loopexit, label %bb.ey, !prof !7

bb.ey:                                            ; preds = %bb.ex
  %i.wf = extractvalue { i64, i1 } %i.wd, 0       ; 2 uses
  %.not102.i240 = icmp eq i64 %i.vu, 0
  br i1 %.not102.i240, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit267, label %.lr.ph.i235

.preheader111.i252:                               ; preds = %.preheader111.i252.preheader, %bb.fb
  %.sroa.0.3145.i253 = phi ptr [ %i.wg, %bb.fb ], [ %.sroa.0.3145.i253.ph, %.preheader111.i252.preheader ] ; 2 uses
  %.sroa.26.3144.i254 = phi i64 [ %i.wh, %bb.fb ], [ %.sroa.26.3144.i254.ph, %.preheader111.i252.preheader ]
  %.sroa.084.3143.i255 = phi i64 [ %i.ws, %bb.fb ], [ 0, %.preheader111.i252.preheader ]
  %i.wg = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i253, i64 1
  %i.wh = add nsw i64 %.sroa.26.3144.i254, -1     ; 2 uses
  %i.wi = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i255, i64 10) ; 2 uses
  %i.wj = extractvalue { i64, i1 } %i.wi, 0
  %i.wk = extractvalue { i64, i1 } %i.wi, 1
  br i1 %i.wk, label %.loopexit, label %bb.ez, !prof !7

bb.ez:                                            ; preds = %.preheader111.i252
  %i.wl = load i8, ptr %.sroa.0.3145.i253, align 1, !alias.scope !305, !noalias !306, !noundef !4
  %i.wm = zext i8 %i.wl to i32
  %i.wn = add nsw i32 %i.wm, -48                  ; 2 uses
  %i.wo = icmp ult i32 %i.wn, 10
  br i1 %i.wo, label %bb.fa, label %.loopexit

bb.fa:                                            ; preds = %bb.ez
  %i.wp = zext nneg i32 %i.wn to i64
  %i.wq = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.wj, i64 %i.wp) ; 2 uses
  %i.wr = extractvalue { i64, i1 } %i.wq, 1
  br i1 %i.wr, label %.loopexit, label %bb.fb, !prof !7

bb.fb:                                            ; preds = %bb.fa
  %i.ws = extractvalue { i64, i1 } %i.wq, 0       ; 2 uses
  %.not104.i257 = icmp eq i64 %i.wh, 0
  br i1 %.not104.i257, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit267, label %.preheader111.i252

.loopexit:                                        ; preds = %.lr.ph.i235, %bb.ex, %bb.ew, %.preheader111.i252, %bb.ez, %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.vn, i64 noundef %.sroa.10.0.copyload) #17
  %i.wt = load i8, ptr %i.aq, align 8, !range !9, !noundef !4
  %i.wu = trunc nuw i8 %i.wt to i1
  br i1 %i.wu, label %bb.fc, label %bb.fd

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit267: ; preds = %bb.ey, %bb.fb
  %.sroa.15310.0 = phi i64 [ %i.ws, %bb.fb ], [ %i.wf, %bb.ey ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 4, i64 noundef %.sroa.15310.0) #18
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i269

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i269: ; preds = %bb.fd, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ao) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vn, i64 noundef %.sroa.10.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !307
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit271

bb.fc:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i64 %.sroa.10.0.copyload, ptr %i.ap, align 8
  %.sroa.5305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.vn, ptr %.sroa.5305.0..sroa_idx, align 8
  %.sroa.8306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %.sroa.10.0.copyload, ptr %.sroa.8306.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ap) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ao) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit271

bb.fd:                                            ; preds = %.loopexit
  %i.wv = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ww = load double, ptr %i.wv, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 4, double noundef %i.ww) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i269

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit271: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i269, %bb.fc
  %i.wx = icmp eq i64 %i.te, 0
  %or.cond482 = or i1 %.sroa.03.0.not, %i.wx
  br i1 %or.cond482, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit275, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i273

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit275: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i273, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit271
  %i.wy = icmp eq i64 %i.bd, 0
  %or.cond483 = or i1 %.sroa.04.0.not, %i.wy
  br i1 %or.cond483, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit286, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i284

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i273: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit271
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vm, i64 noundef %i.te, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !308
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit275

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit286: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i284, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr %i.aw, ptr %i.an, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  %i.wz = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @9, ptr noundef nonnull %i.an) #18 ; 4 uses
  %i.xa = icmp eq ptr %i.wz, null
  br i1 %i.xa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshytdrR3ujnR_10uu_pathchk.exit278, label %bb.fe

bb.fe:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.xb = ptrtoint ptr %i.wz to i64               ; 2 uses
  %i.xc = and i64 %i.xb, 3
  switch i64 %i.xc, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i276
    i64 3, label %bb.ff
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i276
    i64 1, label %bb.fg
  ], !prof !8

bb.ff:                                            ; preds = %bb.fe
  %i.xd = icmp ult ptr %i.wz, inttoptr (i64 188978561024 to ptr)
  %i.xe = and i64 %i.xb, 1095216660480
  %i.xf = icmp ne i64 %i.xe, 1095216660480
  call void @llvm.assume(i1 %i.xd)
  call void @llvm.assume(i1 %i.xf)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i276
end_hunk_1
begin_hunk_2_@_RNvCshytdrR3ujnR_10uu_pathchk13check_default:bb.a
  store ptr %i.ac, ptr %i.ab, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.423.0..sroa_idx, align 8
  %i.bn = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @9, ptr noundef nonnull %i.ab) #18 ; 4 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshytdrR3ujnR_10uu_pathchk.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECshytdrR3ujnR_10uu_pathchk.exit58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bp = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bq = and i64 %i.bp, 3
  switch i64 %i.bq, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i59
    i64 3, label %bb.k
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i59
    i64 1, label %bb.l
  ], !prof !8

bb.k:                                             ; preds = %bb.j
  %i.br = icmp ult ptr %i.bn, inttoptr (i64 188978561024 to ptr)
  %i.bs = and i64 %i.bp, 1095216660480
  %i.bt = icmp ne i64 %i.bs, 1095216660480
  call void @llvm.assume(i1 %i.br)
  call void @llvm.assume(i1 %i.bt)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i59

bb.l:                                             ; preds = %bb.j
  %i.bu = getelementptr i8, ptr %i.bn, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.bu, ptr %i.bv, align 8, !alias.scope !408
  store i8 3, ptr %i.h, align 8, !alias.scope !408
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bv) #18
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i59

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i59: ; preds = %bb.l, %bb.k, %bb.j, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshytdrR3ujnR_10uu_pathchk.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshytdrR3ujnR_10uu_pathchk.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECshytdrR3ujnR_10uu_pathchk.exit58, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %.val.i = load i64, ptr %i.ac, align 8, !range !5, !alias.scope !409, !noundef !4 ; 2 uses
  %i.bw = icmp eq i64 %.val.i, 0
  br i1 %i.bw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshytdrR3ujnR_10uu_pathchk.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.val1.i = load ptr, ptr %i.bx, align 8, !alias.scope !409, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !409
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshytdrR3ujnR_10uu_pathchk.exit, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.m

bb.m:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit285, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit158, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit
  %i.by = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.by, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit64, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i62

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i62: ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit64.sink.split

.lr.ph:                                           ; preds = %bb.f, %bb.n
  %.sroa.01.0555 = phi ptr [ %i.cf, %bb.n ], [ %0, %bb.f ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.01.0555, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !4 ; 4 uses
  %i.cb = icmp sgt i64 %i.ca, -1
  call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp samesign ugt i64 %i.ca, 4096
  br i1 %i.cc, label %bb.o, label %bb.n

._crit_edge:                                      ; preds = %bb.n, %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.cd = call fastcc noundef zeroext i1 @_RNvCshytdrR3ujnR_10uu_pathchk16check_searchable(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.0.copyload, i64 noundef %.sroa.11.0.copyload) #18 ; 2 uses
  %i.ce = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.ce, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit64, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit64.sink.split

bb.n:                                             ; preds = %.lr.ph
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.01.0555, i64 24 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bc
  br i1 %i.cg, label %._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 0, ptr %i.y, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 0, ptr %.sroa.526.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ch = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef 4096, ptr noalias nofree noundef nonnull %i.l, i64 noundef 20) #18 ; 2 uses
  %i.ci = extractvalue { ptr, i64 } %i.ch, 0
  %i.cj = extractvalue { ptr, i64 } %i.ch, 1      ; 16 uses
  %i.ck = icmp sgt i64 %i.cj, -1
  br i1 %i.ck, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cl = icmp eq i64 %i.cj, 0
  br i1 %i.cl, label %.thread, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i70

.thread:                                          ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.loopexit523

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i70: ; preds = %bb.p
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !410
  %i.cm = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.cj, i64 noundef 1) #18, !noalias !410 ; 18 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.o, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i70
  %.sroa.4362.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i70 ], [ 0, %bb.o ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4362.0.ph, i64 %i.cj) #21
  unreachable

bb.r:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i70
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cm, ptr align 1 %i.ci, i64 %i.cj, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %cond485 = icmp eq i64 %i.cj, 1
  %i.co = load i8, ptr %i.cm, align 1, !alias.scope !411, !noalias !412 ; 2 uses
  br i1 %cond485, label %bb.s, label %thread-pre-split.i

bb.s:                                             ; preds = %bb.r
  switch i8 %i.co, label %bb.z [
    i8 43, label %.loopexit523
    i8 45, label %.loopexit523
  ]

thread-pre-split.i:                               ; preds = %bb.r
  switch i8 %i.co, label %bb.z [
    i8 43, label %bb.t
    i8 45, label %bb.u
  ]

bb.t:                                             ; preds = %thread-pre-split.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.cq = add nsw i64 %i.cj, -1
  br label %bb.z

bb.u:                                             ; preds = %thread-pre-split.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 2 uses
  %i.cs = add nsw i64 %i.cj, -1                   ; 2 uses
  %i.ct = icmp samesign ult i64 %i.cj, 17
  br i1 %i.ct, label %.lr.ph141.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u, %bb.x
  %.sroa.0.1136.i = phi ptr [ %i.cu, %bb.x ], [ %i.cr, %bb.u ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.cv, %bb.x ], [ %i.cs, %bb.u ]
  %.sroa.084.0134.i = phi i64 [ %i.dg, %bb.x ], [ 0, %bb.u ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.cv = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.cw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.cx = extractvalue { i64, i1 } %i.cw, 0
  %i.cy = extractvalue { i64, i1 } %i.cw, 1
  br i1 %i.cy, label %.loopexit523, label %bb.v, !prof !7

bb.v:                                             ; preds = %.lr.ph.i
  %i.cz = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !411, !noalias !412, !noundef !4
  %i.da = zext i8 %i.cz to i32
  %i.db = add nsw i32 %i.da, -48                  ; 2 uses
  %i.dc = icmp ult i32 %i.db, 10
  br i1 %i.dc, label %bb.w, label %.loopexit523

bb.w:                                             ; preds = %bb.v
  %i.dd = zext nneg i32 %i.db to i64
  %i.de = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.cx, i64 %i.dd) ; 2 uses
  %i.df = extractvalue { i64, i1 } %i.de, 1
  br i1 %i.df, label %.loopexit523, label %bb.x, !prof !7

bb.x:                                             ; preds = %bb.w
  %i.dg = extractvalue { i64, i1 } %i.de, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.cv, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %bb.u, %bb.y
  %.sroa.0.2140.i = phi ptr [ %i.dn, %bb.y ], [ %i.cr, %bb.u ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.dm, %bb.y ], [ %i.cs, %bb.u ]
  %.sroa.084.2138.i = phi i64 [ %i.dp, %bb.y ], [ 0, %bb.u ]
  %i.dh = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !411, !noalias !412, !noundef !4
  %i.di = zext i8 %i.dh to i32
  %i.dj = add nsw i32 %i.di, -48                  ; 2 uses
  %i.dk = icmp ult i32 %i.dj, 10
  br i1 %i.dk, label %bb.y, label %.loopexit523

bb.y:                                             ; preds = %.lr.ph141.i
  %i.dl = mul i64 %.sroa.084.2138.i, 10
  %i.dm = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.do = zext nneg i32 %i.dj to i64
  %i.dp = sub i64 %i.dl, %i.do                    ; 2 uses
  %.not103.i = icmp eq i64 %i.dm, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.z:                                             ; preds = %bb.s, %bb.t, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.cq, %bb.t ], [ %i.cj, %thread-pre-split.i ], [ %i.cj, %bb.s ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.cp, %bb.t ], [ %i.cm, %thread-pre-split.i ], [ %i.cm, %bb.s ] ; 2 uses
  %i.dq = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.dq, label %.lr.ph150.i, label %.preheader111.i

.preheader111.i:                                  ; preds = %bb.z, %bb.ac
  %.sroa.0.3145.i = phi ptr [ %i.dr, %bb.ac ], [ %.sroa.0.0.i, %bb.z ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.ds, %bb.ac ], [ %.sroa.26.0.i, %bb.z ]
  %.sroa.084.3143.i = phi i64 [ %i.ed, %bb.ac ], [ 0, %bb.z ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.ds = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.dt = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.du = extractvalue { i64, i1 } %i.dt, 0
  %i.dv = extractvalue { i64, i1 } %i.dt, 1
  br i1 %i.dv, label %.loopexit523, label %bb.aa, !prof !7

bb.aa:                                            ; preds = %.preheader111.i
  %i.dw = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !411, !noalias !412, !noundef !4
  %i.dx = zext i8 %i.dw to i32
  %i.dy = add nsw i32 %i.dx, -48                  ; 2 uses
  %i.dz = icmp ult i32 %i.dy, 10
  br i1 %i.dz, label %bb.ab, label %.loopexit523

bb.ab:                                            ; preds = %bb.aa
  %i.ea = zext nneg i32 %i.dy to i64
  %i.eb = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.du, i64 %i.ea) ; 2 uses
  %i.ec = extractvalue { i64, i1 } %i.eb, 1
  br i1 %i.ec, label %.loopexit523, label %bb.ac, !prof !7

bb.ac:                                            ; preds = %bb.ab
  %i.ed = extractvalue { i64, i1 } %i.eb, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.ds, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %bb.z, %bb.ad
  %.sroa.0.4149.i = phi ptr [ %i.ek, %bb.ad ], [ %.sroa.0.0.i, %bb.z ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.ej, %bb.ad ], [ %.sroa.26.0.i, %bb.z ]
  %.sroa.084.4147.i = phi i64 [ %i.em, %bb.ad ], [ 0, %bb.z ]
  %i.ee = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !411, !noalias !412, !noundef !4
  %i.ef = zext i8 %i.ee to i32
  %i.eg = add nsw i32 %i.ef, -48                  ; 2 uses
  %i.eh = icmp ult i32 %i.eg, 10
  br i1 %i.eh, label %bb.ad, label %.loopexit523

bb.ad:                                            ; preds = %.lr.ph150.i
  %i.ei = mul i64 %.sroa.084.4147.i, 10
  %i.ej = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.el = zext nneg i32 %i.eg to i64
  %i.em = add i64 %i.ei, %i.el                    ; 2 uses
  %.not105.i = icmp eq i64 %i.ej, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.loopexit523:                                     ; preds = %.lr.ph.i, %bb.w, %bb.v, %.lr.ph141.i, %.preheader111.i, %bb.aa, %bb.ab, %.lr.ph150.i, %bb.s, %bb.s, %.thread
  %.ph = phi ptr [ %i.cm, %.preheader111.i ], [ %i.cm, %.lr.ph141.i ], [ %i.cm, %.lr.ph150.i ], [ %i.cm, %bb.s ], [ inttoptr (i64 1 to ptr), %.thread ], [ %i.cm, %bb.s ], [ %i.cm, %bb.ab ], [ %i.cm, %bb.aa ], [ %i.cm, %bb.v ], [ %i.cm, %bb.w ], [ %i.cm, %.lr.ph.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.cj) #17
  %i.en = load i8, ptr %i.x, align 8, !range !9, !noundef !4
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.ag, label %bb.ah

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.x, %bb.y, %bb.ac, %bb.ad
  %.sroa.15333.0 = phi i64 [ %i.ed, %bb.ac ], [ %i.dp, %bb.y ], [ %i.em, %bb.ad ], [ %i.dg, %bb.x ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 5, i64 noundef %.sroa.15333.0) #18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ah, %bb.ag, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.ep = phi ptr [ %.ph, %bb.ag ], [ %.ph, %bb.ah ], [ %i.cm, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  %.sroa.06.0.not = phi i1 [ true, %bb.ag ], [ false, %bb.ah ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.eq = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %i.ca, ptr noalias nofree noundef nonnull %i.k, i64 noundef 20) #18 ; 2 uses
  %i.er = extractvalue { ptr, i64 } %i.eq, 0
  %i.es = extractvalue { ptr, i64 } %i.eq, 1      ; 16 uses
  %i.et = icmp sgt i64 %i.es, -1
  br i1 %i.et, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.eu = icmp eq i64 %i.es, 0
  br i1 %i.eu, label %.thread414, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i74

.thread414:                                       ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.loopexit516

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i74: ; preds = %bb.af
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !413
  %i.ev = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.es, i64 noundef 1) #18, !noalias !413 ; 18 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.ai, label %bb.aj

bb.ag:                                            ; preds = %.loopexit523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 %i.cj, ptr %i.w, align 8
  %.sroa.5328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.ph, ptr %.sroa.5328.0..sroa_idx, align 8
  %.sroa.8329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.cj, ptr %.sroa.8329.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.w) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ae

bb.ah:                                            ; preds = %.loopexit523
  %i.ex = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ey = load double, ptr %i.ex, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 5, double noundef %i.ey) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ae

bb.ai:                                            ; preds = %bb.ae, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i74
  %.sroa.4366.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i74 ], [ 0, %bb.ae ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4366.0.ph, i64 %i.es) #21
  unreachable

bb.aj:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i74
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ev, ptr align 1 %i.er, i64 %i.es, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %cond484 = icmp eq i64 %i.es, 1
  %i.ez = load i8, ptr %i.ev, align 1, !alias.scope !414, !noalias !415 ; 2 uses
  br i1 %cond484, label %bb.ak, label %thread-pre-split.i107

bb.ak:                                            ; preds = %bb.aj
  switch i8 %i.ez, label %bb.ar [
    i8 43, label %.loopexit516
    i8 45, label %.loopexit516
  ]

thread-pre-split.i107:                            ; preds = %bb.aj
  switch i8 %i.ez, label %bb.ar [
    i8 43, label %bb.al
    i8 45, label %bb.am
  ]

bb.al:                                            ; preds = %thread-pre-split.i107
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  %i.fb = add nsw i64 %i.es, -1
  br label %bb.ar

bb.am:                                            ; preds = %thread-pre-split.i107
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 1 ; 2 uses
  %i.fd = add nsw i64 %i.es, -1                   ; 2 uses
  %i.fe = icmp samesign ult i64 %i.es, 17
  br i1 %i.fe, label %.lr.ph141.i87, label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %bb.am, %bb.ap
  %.sroa.0.1136.i78 = phi ptr [ %i.ff, %bb.ap ], [ %i.fc, %bb.am ] ; 2 uses
  %.sroa.26.1135.i79 = phi i64 [ %i.fg, %bb.ap ], [ %i.fd, %bb.am ]
  %.sroa.084.0134.i80 = phi i64 [ %i.fr, %bb.ap ], [ 0, %bb.am ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i78, i64 1
  %i.fg = add nsw i64 %.sroa.26.1135.i79, -1      ; 2 uses
  %i.fh = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i80, i64 10) ; 2 uses
  %i.fi = extractvalue { i64, i1 } %i.fh, 0
  %i.fj = extractvalue { i64, i1 } %i.fh, 1
  br i1 %i.fj, label %.loopexit516, label %bb.an, !prof !7

bb.an:                                            ; preds = %.lr.ph.i77
  %i.fk = load i8, ptr %.sroa.0.1136.i78, align 1, !alias.scope !414, !noalias !415, !noundef !4
  %i.fl = zext i8 %i.fk to i32
  %i.fm = add nsw i32 %i.fl, -48                  ; 2 uses
  %i.fn = icmp ult i32 %i.fm, 10
  br i1 %i.fn, label %bb.ao, label %.loopexit516

bb.ao:                                            ; preds = %bb.an
  %i.fo = zext nneg i32 %i.fm to i64
  %i.fp = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.fi, i64 %i.fo) ; 2 uses
  %i.fq = extractvalue { i64, i1 } %i.fp, 1
  br i1 %i.fq, label %.loopexit516, label %bb.ap, !prof !7

bb.ap:                                            ; preds = %bb.ao
  %i.fr = extractvalue { i64, i1 } %i.fp, 0       ; 2 uses
  %.not102.i82 = icmp eq i64 %i.fg, 0
  br i1 %.not102.i82, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit109, label %.lr.ph.i77

.lr.ph141.i87:                                    ; preds = %bb.am, %bb.aq
  %.sroa.0.2140.i88 = phi ptr [ %i.fy, %bb.aq ], [ %i.fc, %bb.am ] ; 2 uses
  %.sroa.26.2139.i89 = phi i64 [ %i.fx, %bb.aq ], [ %i.fd, %bb.am ]
  %.sroa.084.2138.i90 = phi i64 [ %i.ga, %bb.aq ], [ 0, %bb.am ]
  %i.fs = load i8, ptr %.sroa.0.2140.i88, align 1, !alias.scope !414, !noalias !415, !noundef !4
  %i.ft = zext i8 %i.fs to i32
  %i.fu = add nsw i32 %i.ft, -48                  ; 2 uses
  %i.fv = icmp ult i32 %i.fu, 10
  br i1 %i.fv, label %bb.aq, label %.loopexit516

bb.aq:                                            ; preds = %.lr.ph141.i87
  %i.fw = mul i64 %.sroa.084.2138.i90, 10
  %i.fx = add nsw i64 %.sroa.26.2139.i89, -1      ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i88, i64 1
  %i.fz = zext nneg i32 %i.fu to i64
  %i.ga = sub i64 %i.fw, %i.fz                    ; 2 uses
  %.not103.i91 = icmp eq i64 %i.fx, 0
  br i1 %.not103.i91, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit109, label %.lr.ph141.i87

bb.ar:                                            ; preds = %bb.ak, %bb.al, %thread-pre-split.i107
  %.sroa.26.0.i92 = phi i64 [ %i.fb, %bb.al ], [ %i.es, %thread-pre-split.i107 ], [ %i.es, %bb.ak ] ; 3 uses
  %.sroa.0.0.i93 = phi ptr [ %i.fa, %bb.al ], [ %i.ev, %thread-pre-split.i107 ], [ %i.ev, %bb.ak ] ; 2 uses
  %i.gb = icmp samesign ult i64 %.sroa.26.0.i92, 16
  br i1 %i.gb, label %.lr.ph150.i102, label %.preheader111.i94

.preheader111.i94:                                ; preds = %bb.ar, %bb.au
  %.sroa.0.3145.i95 = phi ptr [ %i.gc, %bb.au ], [ %.sroa.0.0.i93, %bb.ar ] ; 2 uses
  %.sroa.26.3144.i96 = phi i64 [ %i.gd, %bb.au ], [ %.sroa.26.0.i92, %bb.ar ]
  %.sroa.084.3143.i97 = phi i64 [ %i.go, %bb.au ], [ 0, %bb.ar ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i95, i64 1
  %i.gd = add nsw i64 %.sroa.26.3144.i96, -1      ; 2 uses
  %i.ge = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i97, i64 10) ; 2 uses
  %i.gf = extractvalue { i64, i1 } %i.ge, 0
  %i.gg = extractvalue { i64, i1 } %i.ge, 1
  br i1 %i.gg, label %.loopexit516, label %bb.as, !prof !7

bb.as:                                            ; preds = %.preheader111.i94
  %i.gh = load i8, ptr %.sroa.0.3145.i95, align 1, !alias.scope !414, !noalias !415, !noundef !4
  %i.gi = zext i8 %i.gh to i32
  %i.gj = add nsw i32 %i.gi, -48                  ; 2 uses
  %i.gk = icmp ult i32 %i.gj, 10
  br i1 %i.gk, label %bb.at, label %.loopexit516

bb.at:                                            ; preds = %bb.as
  %i.gl = zext nneg i32 %i.gj to i64
  %i.gm = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.gf, i64 %i.gl) ; 2 uses
  %i.gn = extractvalue { i64, i1 } %i.gm, 1
  br i1 %i.gn, label %.loopexit516, label %bb.au, !prof !7

bb.au:                                            ; preds = %bb.at
  %i.go = extractvalue { i64, i1 } %i.gm, 0       ; 2 uses
  %.not104.i99 = icmp eq i64 %i.gd, 0
  br i1 %.not104.i99, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit109, label %.preheader111.i94

.lr.ph150.i102:                                   ; preds = %bb.ar, %bb.av
  %.sroa.0.4149.i103 = phi ptr [ %i.gv, %bb.av ], [ %.sroa.0.0.i93, %bb.ar ] ; 2 uses
  %.sroa.26.4148.i104 = phi i64 [ %i.gu, %bb.av ], [ %.sroa.26.0.i92, %bb.ar ]
  %.sroa.084.4147.i105 = phi i64 [ %i.gx, %bb.av ], [ 0, %bb.ar ]
  %i.gp = load i8, ptr %.sroa.0.4149.i103, align 1, !alias.scope !414, !noalias !415, !noundef !4
  %i.gq = zext i8 %i.gp to i32
  %i.gr = add nsw i32 %i.gq, -48                  ; 2 uses
  %i.gs = icmp ult i32 %i.gr, 10
  br i1 %i.gs, label %bb.av, label %.loopexit516

bb.av:                                            ; preds = %.lr.ph150.i102
  %i.gt = mul i64 %.sroa.084.4147.i105, 10
  %i.gu = add nsw i64 %.sroa.26.4148.i104, -1     ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i103, i64 1
  %i.gw = zext nneg i32 %i.gr to i64
  %i.gx = add i64 %i.gt, %i.gw                    ; 2 uses
  %.not105.i106 = icmp eq i64 %i.gu, 0
  br i1 %.not105.i106, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit109, label %.lr.ph150.i102

.loopexit516:                                     ; preds = %.lr.ph.i77, %bb.ao, %bb.an, %.lr.ph141.i87, %.preheader111.i94, %bb.as, %bb.at, %.lr.ph150.i102, %bb.ak, %bb.ak, %.thread414
  %.ph422 = phi ptr [ %i.ev, %.preheader111.i94 ], [ %i.ev, %.lr.ph141.i87 ], [ %i.ev, %.lr.ph150.i102 ], [ %i.ev, %bb.ak ], [ inttoptr (i64 1 to ptr), %.thread414 ], [ %i.ev, %bb.ak ], [ %i.ev, %bb.at ], [ %i.ev, %bb.as ], [ %i.ev, %bb.an ], [ %i.ev, %bb.ao ], [ %i.ev, %.lr.ph.i77 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph422, i64 noundef %i.es) #17
  %i.gy = load i8, ptr %i.v, align 8, !range !9, !noundef !4
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %bb.bl, label %bb.bm

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit109: ; preds = %bb.ap, %bb.aq, %bb.au, %bb.av
  %.sroa.15340.0 = phi i64 [ %i.go, %bb.au ], [ %i.ga, %bb.aq ], [ %i.gx, %bb.av ], [ %i.fr, %bb.ap ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 6, i64 noundef %.sroa.15340.0) #18
  br label %bb.aw

bb.aw:                                            ; preds = %bb.bm, %bb.bl, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit109
  %i.ha = phi ptr [ %.ph422, %bb.bl ], [ %.ph422, %bb.bm ], [ %i.ev, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit109 ]
  %.sroa.05.0.not = phi i1 [ true, %bb.bl ], [ false, %bb.bm ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit109 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.01.0555, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !nonnull !4, !noundef !4
  store i64 0, ptr %i.t, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.hc, ptr %.sroa.434.0..sroa_idx, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.ca, ptr %.sroa.535.0..sroa_idx, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i8 1, ptr %i.hd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !416
  store i64 0, ptr %i.g, align 8, !noalias !416
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !416
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !416
  %i.he = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 1610612768, ptr %i.he, align 8, !noalias !416
  store ptr %i.g, ptr %i.f, align 8, !noalias !416
  %i.hf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @38, ptr %i.hf, align 8, !noalias !416
  %i.hg = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #18, !noalias !417
  br i1 %i.hg, label %bb.ax, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCshytdrR3ujnR_10uu_pathchk.exit, !prof !7

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #19, !noalias !417
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCshytdrR3ujnR_10uu_pathchk.exit: ; preds = %bb.aw
  %.sroa.0341.0.copyload342 = load i64, ptr %i.g, align 8, !noalias !418 ; 3 uses
  %.sroa.5343.0.copyload345 = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !418, !nonnull !4, !noundef !4 ; 8 uses
  %.sroa.8347.0.copyload349 = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !418 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  switch i64 %.sroa.8347.0.copyload349, label %thread-pre-split.i141 [
    i64 0, label %.loopexit509
    i64 1, label %bb.ay
  ]

bb.ay:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCshytdrR3ujnR_10uu_pathchk.exit
  %i.hh = load i8, ptr %.sroa.5343.0.copyload345, align 1, !alias.scope !419, !noalias !420, !noundef !4 ; 2 uses
  switch i8 %i.hh, label %bb.az [
    i8 43, label %.loopexit509
    i8 45, label %.loopexit509
  ]

thread-pre-split.i141:                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCshytdrR3ujnR_10uu_pathchk.exit
  %.pr.i142 = load i8, ptr %.sroa.5343.0.copyload345, align 1, !alias.scope !419, !noalias !420
  br label %bb.az

bb.az:                                            ; preds = %thread-pre-split.i141, %bb.ay
  %i.hi = phi i8 [ %.pr.i142, %thread-pre-split.i141 ], [ %i.hh, %bb.ay ]
  switch i8 %i.hi, label %bb.bg [
    i8 43, label %bb.ba
    i8 45, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.5343.0.copyload345, i64 1
  %i.hk = add nsw i64 %.sroa.8347.0.copyload349, -1
  br label %bb.bg

bb.bb:                                            ; preds = %bb.az
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.5343.0.copyload345, i64 1 ; 2 uses
  %i.hm = add nsw i64 %.sroa.8347.0.copyload349, -1 ; 3 uses
  %i.hn = icmp samesign ult i64 %.sroa.8347.0.copyload349, 17
  br i1 %i.hn, label %.preheader114.i119, label %.lr.ph.i111

.preheader114.i119:                               ; preds = %bb.bb
  %.not103137.i120 = icmp eq i64 %i.hm, 0
  br i1 %.not103137.i120, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit143, label %.lr.ph141.i121

.lr.ph.i111:                                      ; preds = %bb.bb, %bb.be
  %.sroa.0.1136.i112 = phi ptr [ %i.ho, %bb.be ], [ %i.hl, %bb.bb ] ; 2 uses
  %.sroa.26.1135.i113 = phi i64 [ %i.hp, %bb.be ], [ %i.hm, %bb.bb ]
  %.sroa.084.0134.i114 = phi i64 [ %i.ia, %bb.be ], [ 0, %bb.bb ]
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i112, i64 1
  %i.hp = add nsw i64 %.sroa.26.1135.i113, -1     ; 2 uses
  %i.hq = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i114, i64 10) ; 2 uses
  %i.hr = extractvalue { i64, i1 } %i.hq, 0
  %i.hs = extractvalue { i64, i1 } %i.hq, 1
  br i1 %i.hs, label %.loopexit509, label %bb.bc, !prof !7

bb.bc:                                            ; preds = %.lr.ph.i111
  %i.ht = load i8, ptr %.sroa.0.1136.i112, align 1, !alias.scope !419, !noalias !420, !noundef !4
  %i.hu = zext i8 %i.ht to i32
  %i.hv = add nsw i32 %i.hu, -48                  ; 2 uses
  %i.hw = icmp ult i32 %i.hv, 10
  br i1 %i.hw, label %bb.bd, label %.loopexit509

bb.bd:                                            ; preds = %bb.bc
  %i.hx = zext nneg i32 %i.hv to i64
  %i.hy = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.hr, i64 %i.hx) ; 2 uses
  %i.hz = extractvalue { i64, i1 } %i.hy, 1
  br i1 %i.hz, label %.loopexit509, label %bb.be, !prof !7

bb.be:                                            ; preds = %bb.bd
  %i.ia = extractvalue { i64, i1 } %i.hy, 0       ; 2 uses
  %.not102.i116 = icmp eq i64 %i.hp, 0
  br i1 %.not102.i116, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit143, label %.lr.ph.i111

.lr.ph141.i121:                                   ; preds = %.preheader114.i119, %bb.bf
  %.sroa.0.2140.i122 = phi ptr [ %i.ih, %bb.bf ], [ %i.hl, %.preheader114.i119 ] ; 2 uses
  %.sroa.26.2139.i123 = phi i64 [ %i.ig, %bb.bf ], [ %i.hm, %.preheader114.i119 ]
  %.sroa.084.2138.i124 = phi i64 [ %i.ij, %bb.bf ], [ 0, %.preheader114.i119 ]
  %i.ib = load i8, ptr %.sroa.0.2140.i122, align 1, !alias.scope !419, !noalias !420, !noundef !4
  %i.ic = zext i8 %i.ib to i32
  %i.id = add nsw i32 %i.ic, -48                  ; 2 uses
  %i.ie = icmp ult i32 %i.id, 10
  br i1 %i.ie, label %bb.bf, label %.loopexit509

bb.bf:                                            ; preds = %.lr.ph141.i121
  %i.if = mul i64 %.sroa.084.2138.i124, 10
  %i.ig = add nsw i64 %.sroa.26.2139.i123, -1     ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i122, i64 1
  %i.ii = zext nneg i32 %i.id to i64
  %i.ij = sub i64 %i.if, %i.ii                    ; 2 uses
  %.not103.i125 = icmp eq i64 %i.ig, 0
  br i1 %.not103.i125, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit143, label %.lr.ph141.i121

bb.bg:                                            ; preds = %bb.ba, %bb.az
  %.sroa.26.0.i126 = phi i64 [ %i.hk, %bb.ba ], [ %.sroa.8347.0.copyload349, %bb.az ] ; 4 uses
  %.sroa.0.0.i127 = phi ptr [ %i.hj, %bb.ba ], [ %.sroa.5343.0.copyload345, %bb.az ] ; 2 uses
  %i.ik = icmp samesign ult i64 %.sroa.26.0.i126, 16
  br i1 %i.ik, label %.preheader.i134, label %.preheader111.i128

.preheader.i134:                                  ; preds = %bb.bg
  %.not105146.i135 = icmp eq i64 %.sroa.26.0.i126, 0
  br i1 %.not105146.i135, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit143, label %.lr.ph150.i136

.preheader111.i128:                               ; preds = %bb.bg, %bb.bj
  %.sroa.0.3145.i129 = phi ptr [ %i.il, %bb.bj ], [ %.sroa.0.0.i127, %bb.bg ] ; 2 uses
  %.sroa.26.3144.i130 = phi i64 [ %i.im, %bb.bj ], [ %.sroa.26.0.i126, %bb.bg ]
  %.sroa.084.3143.i131 = phi i64 [ %i.ix, %bb.bj ], [ 0, %bb.bg ]
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i129, i64 1
  %i.im = add nsw i64 %.sroa.26.3144.i130, -1     ; 2 uses
  %i.in = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i131, i64 10) ; 2 uses
  %i.io = extractvalue { i64, i1 } %i.in, 0
  %i.ip = extractvalue { i64, i1 } %i.in, 1
  br i1 %i.ip, label %.loopexit509, label %bb.bh, !prof !7

bb.bh:                                            ; preds = %.preheader111.i128
  %i.iq = load i8, ptr %.sroa.0.3145.i129, align 1, !alias.scope !419, !noalias !420, !noundef !4
  %i.ir = zext i8 %i.iq to i32
  %i.is = add nsw i32 %i.ir, -48                  ; 2 uses
  %i.it = icmp ult i32 %i.is, 10
  br i1 %i.it, label %bb.bi, label %.loopexit509

bb.bi:                                            ; preds = %bb.bh
  %i.iu = zext nneg i32 %i.is to i64
  %i.iv = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.io, i64 %i.iu) ; 2 uses
  %i.iw = extractvalue { i64, i1 } %i.iv, 1
  br i1 %i.iw, label %.loopexit509, label %bb.bj, !prof !7

bb.bj:                                            ; preds = %bb.bi
  %i.ix = extractvalue { i64, i1 } %i.iv, 0       ; 2 uses
  %.not104.i133 = icmp eq i64 %i.im, 0
  br i1 %.not104.i133, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit143, label %.preheader111.i128

.lr.ph150.i136:                                   ; preds = %.preheader.i134, %bb.bk
  %.sroa.0.4149.i137 = phi ptr [ %i.je, %bb.bk ], [ %.sroa.0.0.i127, %.preheader.i134 ] ; 2 uses
  %.sroa.26.4148.i138 = phi i64 [ %i.jd, %bb.bk ], [ %.sroa.26.0.i126, %.preheader.i134 ]
  %.sroa.084.4147.i139 = phi i64 [ %i.jg, %bb.bk ], [ 0, %.preheader.i134 ]
  %i.iy = load i8, ptr %.sroa.0.4149.i137, align 1, !alias.scope !419, !noalias !420, !noundef !4
  %i.iz = zext i8 %i.iy to i32
  %i.ja = add nsw i32 %i.iz, -48                  ; 2 uses
  %i.jb = icmp ult i32 %i.ja, 10
  br i1 %i.jb, label %bb.bk, label %.loopexit509

bb.bk:                                            ; preds = %.lr.ph150.i136
  %i.jc = mul i64 %.sroa.084.4147.i139, 10
  %i.jd = add nsw i64 %.sroa.26.4148.i138, -1     ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i137, i64 1
  %i.jf = zext nneg i32 %i.ja to i64
  %i.jg = add i64 %i.jc, %i.jf                    ; 2 uses
  %.not105.i140 = icmp eq i64 %i.jd, 0
  br i1 %.not105.i140, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit143, label %.lr.ph150.i136

bb.bl:                                            ; preds = %.loopexit516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 %i.es, ptr %i.u, align 8
  %.sroa.5335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.ph422, ptr %.sroa.5335.0..sroa_idx, align 8
  %.sroa.8336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.es, ptr %.sroa.8336.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 6, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.u) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.aw

bb.bm:                                            ; preds = %.loopexit516
  %i.jh = getelementptr inbounds nuw i8, ptr %i.v, i64 8
end_hunk_2
begin_hunk_3_@_RNvCshytdrR3ujnR_10uu_pathchk13check_default:bb.a
  br i1 %i.jl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit147, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i145

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i145: ; preds = %bb.bn
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5343.0.copyload345, i64 noundef %.sroa.0341.0.copyload342, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !421
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit147

bb.bo:                                            ; preds = %.loopexit509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 %.sroa.0341.0.copyload342, ptr %i.r, align 8
  %.sroa.5343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.sroa.5343.0.copyload345, ptr %.sroa.5343.0..sroa_idx, align 8
  %.sroa.8347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.8347.0.copyload349, ptr %.sroa.8347.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 9, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 34, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit147

bb.bp:                                            ; preds = %.loopexit509
  %i.jm = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.jn = load double, ptr %i.jm, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 9, double noundef %i.jn) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.bn

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit147: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i145, %bb.bn, %bb.bo
  %i.jo = icmp eq i64 %i.es, 0
  %or.cond = or i1 %.sroa.05.0.not, %i.jo
  br i1 %or.cond, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit151, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i149

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit151: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i149, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit147
  %i.jp = icmp eq i64 %i.cj, 0
  %or.cond486 = or i1 %.sroa.06.0.not, %i.jp
  br i1 %or.cond486, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit162, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i160

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i149: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit147
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ha, i64 noundef %i.es, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !422
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit151

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit162: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i160, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.z, ptr %i.p, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.439.0..sroa_idx, align 8
  %i.jq = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @9, ptr noundef nonnull %i.p) #18 ; 4 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshytdrR3ujnR_10uu_pathchk.exit154, label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.js = ptrtoint ptr %i.jq to i64               ; 2 uses
  %i.jt = and i64 %i.js, 3
  switch i64 %i.jt, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i152
    i64 3, label %bb.br
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i152
    i64 1, label %bb.bs
  ], !prof !8

bb.br:                                            ; preds = %bb.bq
  %i.ju = icmp ult ptr %i.jq, inttoptr (i64 188978561024 to ptr)
  %i.jv = and i64 %i.js, 1095216660480
  %i.jw = icmp ne i64 %i.jv, 1095216660480
  call void @llvm.assume(i1 %i.ju)
  call void @llvm.assume(i1 %i.jw)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i152

bb.bs:                                            ; preds = %bb.bq
  %i.jx = getelementptr i8, ptr %i.jq, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jx) ]
  %i.jy = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.jx, ptr %i.jy, align 8, !alias.scope !423
  store i8 3, ptr %i.e, align 8, !alias.scope !423
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jy) #18
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i152

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i152: ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshytdrR3ujnR_10uu_pathchk.exit154

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshytdrR3ujnR_10uu_pathchk.exit154: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit162, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshytdrR3ujnR_10uu_pathchk.exit.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %.val.i155 = load i64, ptr %i.z, align 8, !range !5, !alias.scope !424, !noundef !4 ; 2 uses
  %i.jz = icmp eq i64 %.val.i155, 0
  br i1 %i.jz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit158, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i156

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i156: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshytdrR3ujnR_10uu_pathchk.exit154
  %i.ka = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val1.i157 = load ptr, ptr %i.ka, align 8, !alias.scope !424, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i157, i64 noundef %.val.i155, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !424
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit158

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit158: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshytdrR3ujnR_10uu_pathchk.exit154, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.m

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i160: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit151
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ep, i64 noundef %i.cj, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !425
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit162

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit64.sink.split: ; preds = %._crit_edge, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i62
  %.sroa.0.1.ph = phi i1 [ false, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i62 ], [ %i.cd, %._crit_edge ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !4
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit64

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit64: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit64.sink.split, %._crit_edge, %bb.m
  %.sroa.0.1 = phi i1 [ %i.cd, %._crit_edge ], [ false, %bb.m ], [ %.sroa.0.1.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk.exit64.sink.split ]
  ret i1 %.sroa.0.1

bb.bt:                                            ; preds = %bb.c, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.c ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.av) #21
  unreachable

bb.bu:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr align 1 %i.au, i64 %i.av, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %cond483 = icmp eq i64 %i.av, 1
  %i.kb = load i8, ptr %i.ay, align 1, !alias.scope !426, !noalias !427 ; 2 uses
  br i1 %cond483, label %bb.bv, label %thread-pre-split.i194

bb.bv:                                            ; preds = %bb.bu
  switch i8 %i.kb, label %bb.cc [
    i8 43, label %.loopexit502
    i8 45, label %.loopexit502
  ]

thread-pre-split.i194:                            ; preds = %bb.bu
  switch i8 %i.kb, label %bb.cc [
    i8 43, label %bb.bw
    i8 45, label %bb.bx
  ]

bb.bw:                                            ; preds = %thread-pre-split.i194
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.kd = add nsw i64 %i.av, -1
  br label %bb.cc

bb.bx:                                            ; preds = %thread-pre-split.i194
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %i.kf = add nsw i64 %i.av, -1                   ; 2 uses
  %i.kg = icmp samesign ult i64 %i.av, 17
  br i1 %i.kg, label %.lr.ph141.i174, label %.lr.ph.i164

.lr.ph.i164:                                      ; preds = %bb.bx, %bb.ca
  %.sroa.0.1136.i165 = phi ptr [ %i.kh, %bb.ca ], [ %i.ke, %bb.bx ] ; 2 uses
  %.sroa.26.1135.i166 = phi i64 [ %i.ki, %bb.ca ], [ %i.kf, %bb.bx ]
  %.sroa.084.0134.i167 = phi i64 [ %i.kt, %bb.ca ], [ 0, %bb.bx ]
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i165, i64 1
  %i.ki = add nsw i64 %.sroa.26.1135.i166, -1     ; 2 uses
  %i.kj = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i167, i64 10) ; 2 uses
  %i.kk = extractvalue { i64, i1 } %i.kj, 0
  %i.kl = extractvalue { i64, i1 } %i.kj, 1
  br i1 %i.kl, label %.loopexit502, label %bb.by, !prof !7

bb.by:                                            ; preds = %.lr.ph.i164
  %i.km = load i8, ptr %.sroa.0.1136.i165, align 1, !alias.scope !426, !noalias !427, !noundef !4
  %i.kn = zext i8 %i.km to i32
  %i.ko = add nsw i32 %i.kn, -48                  ; 2 uses
  %i.kp = icmp ult i32 %i.ko, 10
  br i1 %i.kp, label %bb.bz, label %.loopexit502

bb.bz:                                            ; preds = %bb.by
  %i.kq = zext nneg i32 %i.ko to i64
  %i.kr = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.kk, i64 %i.kq) ; 2 uses
  %i.ks = extractvalue { i64, i1 } %i.kr, 1
  br i1 %i.ks, label %.loopexit502, label %bb.ca, !prof !7

bb.ca:                                            ; preds = %bb.bz
  %i.kt = extractvalue { i64, i1 } %i.kr, 0       ; 2 uses
  %.not102.i169 = icmp eq i64 %i.ki, 0
  br i1 %.not102.i169, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit196, label %.lr.ph.i164

.lr.ph141.i174:                                   ; preds = %bb.bx, %bb.cb
  %.sroa.0.2140.i175 = phi ptr [ %i.la, %bb.cb ], [ %i.ke, %bb.bx ] ; 2 uses
  %.sroa.26.2139.i176 = phi i64 [ %i.kz, %bb.cb ], [ %i.kf, %bb.bx ]
  %.sroa.084.2138.i177 = phi i64 [ %i.lc, %bb.cb ], [ 0, %bb.bx ]
  %i.ku = load i8, ptr %.sroa.0.2140.i175, align 1, !alias.scope !426, !noalias !427, !noundef !4
  %i.kv = zext i8 %i.ku to i32
  %i.kw = add nsw i32 %i.kv, -48                  ; 2 uses
  %i.kx = icmp ult i32 %i.kw, 10
  br i1 %i.kx, label %bb.cb, label %.loopexit502

bb.cb:                                            ; preds = %.lr.ph141.i174
  %i.ky = mul i64 %.sroa.084.2138.i177, 10
  %i.kz = add nsw i64 %.sroa.26.2139.i176, -1     ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i175, i64 1
  %i.lb = zext nneg i32 %i.kw to i64
  %i.lc = sub i64 %i.ky, %i.lb                    ; 2 uses
  %.not103.i178 = icmp eq i64 %i.kz, 0
  br i1 %.not103.i178, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit196, label %.lr.ph141.i174

bb.cc:                                            ; preds = %bb.bv, %bb.bw, %thread-pre-split.i194
  %.sroa.26.0.i179 = phi i64 [ %i.kd, %bb.bw ], [ %i.av, %thread-pre-split.i194 ], [ %i.av, %bb.bv ] ; 3 uses
  %.sroa.0.0.i180 = phi ptr [ %i.kc, %bb.bw ], [ %i.ay, %thread-pre-split.i194 ], [ %i.ay, %bb.bv ] ; 2 uses
  %i.ld = icmp samesign ult i64 %.sroa.26.0.i179, 16
  br i1 %i.ld, label %.lr.ph150.i189, label %.preheader111.i181

.preheader111.i181:                               ; preds = %bb.cc, %bb.cf
  %.sroa.0.3145.i182 = phi ptr [ %i.le, %bb.cf ], [ %.sroa.0.0.i180, %bb.cc ] ; 2 uses
  %.sroa.26.3144.i183 = phi i64 [ %i.lf, %bb.cf ], [ %.sroa.26.0.i179, %bb.cc ]
  %.sroa.084.3143.i184 = phi i64 [ %i.lq, %bb.cf ], [ 0, %bb.cc ]
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i182, i64 1
  %i.lf = add nsw i64 %.sroa.26.3144.i183, -1     ; 2 uses
  %i.lg = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i184, i64 10) ; 2 uses
  %i.lh = extractvalue { i64, i1 } %i.lg, 0
  %i.li = extractvalue { i64, i1 } %i.lg, 1
  br i1 %i.li, label %.loopexit502, label %bb.cd, !prof !7

bb.cd:                                            ; preds = %.preheader111.i181
  %i.lj = load i8, ptr %.sroa.0.3145.i182, align 1, !alias.scope !426, !noalias !427, !noundef !4
  %i.lk = zext i8 %i.lj to i32
  %i.ll = add nsw i32 %i.lk, -48                  ; 2 uses
  %i.lm = icmp ult i32 %i.ll, 10
  br i1 %i.lm, label %bb.ce, label %.loopexit502

bb.ce:                                            ; preds = %bb.cd
  %i.ln = zext nneg i32 %i.ll to i64
  %i.lo = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.lh, i64 %i.ln) ; 2 uses
  %i.lp = extractvalue { i64, i1 } %i.lo, 1
  br i1 %i.lp, label %.loopexit502, label %bb.cf, !prof !7

bb.cf:                                            ; preds = %bb.ce
  %i.lq = extractvalue { i64, i1 } %i.lo, 0       ; 2 uses
  %.not104.i186 = icmp eq i64 %i.lf, 0
  br i1 %.not104.i186, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit196, label %.preheader111.i181

.lr.ph150.i189:                                   ; preds = %bb.cc, %bb.cg
  %.sroa.0.4149.i190 = phi ptr [ %i.lx, %bb.cg ], [ %.sroa.0.0.i180, %bb.cc ] ; 2 uses
  %.sroa.26.4148.i191 = phi i64 [ %i.lw, %bb.cg ], [ %.sroa.26.0.i179, %bb.cc ]
  %.sroa.084.4147.i192 = phi i64 [ %i.lz, %bb.cg ], [ 0, %bb.cc ]
  %i.lr = load i8, ptr %.sroa.0.4149.i190, align 1, !alias.scope !426, !noalias !427, !noundef !4
  %i.ls = zext i8 %i.lr to i32
  %i.lt = add nsw i32 %i.ls, -48                  ; 2 uses
  %i.lu = icmp ult i32 %i.lt, 10
  br i1 %i.lu, label %bb.cg, label %.loopexit502

bb.cg:                                            ; preds = %.lr.ph150.i189
  %i.lv = mul i64 %.sroa.084.4147.i192, 10
  %i.lw = add nsw i64 %.sroa.26.4148.i191, -1     ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i190, i64 1
  %i.ly = zext nneg i32 %i.lt to i64
  %i.lz = add i64 %i.lv, %i.ly                    ; 2 uses
  %.not105.i193 = icmp eq i64 %i.lw, 0
  br i1 %.not105.i193, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit196, label %.lr.ph150.i189

.loopexit502:                                     ; preds = %.lr.ph.i164, %bb.bz, %bb.by, %.lr.ph141.i174, %.preheader111.i181, %bb.cd, %bb.ce, %.lr.ph150.i189, %bb.bv, %bb.bv, %.thread438
  %.ph446 = phi ptr [ %i.ay, %.preheader111.i181 ], [ %i.ay, %.lr.ph141.i174 ], [ %i.ay, %.lr.ph150.i189 ], [ %i.ay, %bb.bv ], [ inttoptr (i64 1 to ptr), %.thread438 ], [ %i.ay, %bb.bv ], [ %i.ay, %bb.ce ], [ %i.ay, %bb.cd ], [ %i.ay, %bb.by ], [ %i.ay, %bb.bz ], [ %i.ay, %.lr.ph.i164 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph446, i64 noundef %i.av) #17
  %i.ma = load i8, ptr %i.am, align 8, !range !9, !noundef !4
  %i.mb = trunc nuw i8 %i.ma to i1
  br i1 %i.mb, label %bb.cj, label %bb.ck

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit196: ; preds = %bb.ca, %bb.cb, %bb.cf, %bb.cg
  %.sroa.15300.0 = phi i64 [ %i.lq, %bb.cf ], [ %i.lc, %bb.cb ], [ %i.lz, %bb.cg ], [ %i.kt, %bb.ca ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 5, i64 noundef %.sroa.15300.0) #18
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ck, %bb.cj, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit196
  %i.mc = phi ptr [ %.ph446, %bb.cj ], [ %.ph446, %bb.ck ], [ %i.ay, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit196 ]
  %.sroa.04.0.not = phi i1 [ true, %bb.cj ], [ false, %bb.ck ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit196 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.md = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %.sroa.11.0.copyload, ptr noalias nofree noundef nonnull %i.m, i64 noundef 20) #18 ; 2 uses
  %i.me = extractvalue { ptr, i64 } %i.md, 0
  %i.mf = extractvalue { ptr, i64 } %i.md, 1      ; 16 uses
  %i.mg = icmp sgt i64 %i.mf, -1
  br i1 %i.mg, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.mh = icmp eq i64 %i.mf, 0
  br i1 %i.mh, label %.thread465, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i198

.thread465:                                       ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.loopexit495

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i198: ; preds = %bb.ci
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !428
  %i.mi = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.mf, i64 noundef 1) #18, !noalias !428 ; 18 uses
  %i.mj = icmp eq ptr %i.mi, null
  br i1 %i.mj, label %bb.cl, label %bb.cm

bb.cj:                                            ; preds = %.loopexit502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 %i.av, ptr %i.al, align 8
  %.sroa.5.0..sroa_idx297 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %.ph446, ptr %.sroa.5.0..sroa_idx297, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.av, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.al) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.ch

bb.ck:                                            ; preds = %.loopexit502
  %i.mk = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ml = load double, ptr %i.mk, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 5, double noundef %i.ml) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.ch

bb.cl:                                            ; preds = %bb.ch, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i198
  %.sroa.4358.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i198 ], [ 0, %bb.ch ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4358.0.ph, i64 %i.mf) #21
  unreachable

bb.cm:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i198
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mi, ptr align 1 %i.me, i64 %i.mf, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %cond = icmp eq i64 %i.mf, 1
  %i.mm = load i8, ptr %i.mi, align 1, !alias.scope !429, !noalias !430 ; 2 uses
  br i1 %cond, label %bb.cn, label %thread-pre-split.i231

bb.cn:                                            ; preds = %bb.cm
  switch i8 %i.mm, label %bb.cu [
    i8 43, label %.loopexit495
    i8 45, label %.loopexit495
  ]

thread-pre-split.i231:                            ; preds = %bb.cm
  switch i8 %i.mm, label %bb.cu [
    i8 43, label %bb.co
    i8 45, label %bb.cp
  ]

bb.co:                                            ; preds = %thread-pre-split.i231
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 1
  %i.mo = add nsw i64 %i.mf, -1
  br label %bb.cu

bb.cp:                                            ; preds = %thread-pre-split.i231
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mi, i64 1 ; 2 uses
  %i.mq = add nsw i64 %i.mf, -1                   ; 2 uses
  %i.mr = icmp samesign ult i64 %i.mf, 17
  br i1 %i.mr, label %.lr.ph141.i211, label %.lr.ph.i201

.lr.ph.i201:                                      ; preds = %bb.cp, %bb.cs
  %.sroa.0.1136.i202 = phi ptr [ %i.ms, %bb.cs ], [ %i.mp, %bb.cp ] ; 2 uses
  %.sroa.26.1135.i203 = phi i64 [ %i.mt, %bb.cs ], [ %i.mq, %bb.cp ]
  %.sroa.084.0134.i204 = phi i64 [ %i.ne, %bb.cs ], [ 0, %bb.cp ]
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i202, i64 1
  %i.mt = add nsw i64 %.sroa.26.1135.i203, -1     ; 2 uses
  %i.mu = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i204, i64 10) ; 2 uses
  %i.mv = extractvalue { i64, i1 } %i.mu, 0
  %i.mw = extractvalue { i64, i1 } %i.mu, 1
  br i1 %i.mw, label %.loopexit495, label %bb.cq, !prof !7

bb.cq:                                            ; preds = %.lr.ph.i201
  %i.mx = load i8, ptr %.sroa.0.1136.i202, align 1, !alias.scope !429, !noalias !430, !noundef !4
  %i.my = zext i8 %i.mx to i32
  %i.mz = add nsw i32 %i.my, -48                  ; 2 uses
  %i.na = icmp ult i32 %i.mz, 10
  br i1 %i.na, label %bb.cr, label %.loopexit495

bb.cr:                                            ; preds = %bb.cq
  %i.nb = zext nneg i32 %i.mz to i64
  %i.nc = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.mv, i64 %i.nb) ; 2 uses
  %i.nd = extractvalue { i64, i1 } %i.nc, 1
  br i1 %i.nd, label %.loopexit495, label %bb.cs, !prof !7

bb.cs:                                            ; preds = %bb.cr
  %i.ne = extractvalue { i64, i1 } %i.nc, 0       ; 2 uses
  %.not102.i206 = icmp eq i64 %i.mt, 0
  br i1 %.not102.i206, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit233, label %.lr.ph.i201

.lr.ph141.i211:                                   ; preds = %bb.cp, %bb.ct
  %.sroa.0.2140.i212 = phi ptr [ %i.nl, %bb.ct ], [ %i.mp, %bb.cp ] ; 2 uses
  %.sroa.26.2139.i213 = phi i64 [ %i.nk, %bb.ct ], [ %i.mq, %bb.cp ]
  %.sroa.084.2138.i214 = phi i64 [ %i.nn, %bb.ct ], [ 0, %bb.cp ]
  %i.nf = load i8, ptr %.sroa.0.2140.i212, align 1, !alias.scope !429, !noalias !430, !noundef !4
  %i.ng = zext i8 %i.nf to i32
  %i.nh = add nsw i32 %i.ng, -48                  ; 2 uses
  %i.ni = icmp ult i32 %i.nh, 10
  br i1 %i.ni, label %bb.ct, label %.loopexit495

bb.ct:                                            ; preds = %.lr.ph141.i211
  %i.nj = mul i64 %.sroa.084.2138.i214, 10
  %i.nk = add nsw i64 %.sroa.26.2139.i213, -1     ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i212, i64 1
  %i.nm = zext nneg i32 %i.nh to i64
  %i.nn = sub i64 %i.nj, %i.nm                    ; 2 uses
  %.not103.i215 = icmp eq i64 %i.nk, 0
  br i1 %.not103.i215, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit233, label %.lr.ph141.i211

bb.cu:                                            ; preds = %bb.cn, %bb.co, %thread-pre-split.i231
  %.sroa.26.0.i216 = phi i64 [ %i.mo, %bb.co ], [ %i.mf, %thread-pre-split.i231 ], [ %i.mf, %bb.cn ] ; 3 uses
  %.sroa.0.0.i217 = phi ptr [ %i.mn, %bb.co ], [ %i.mi, %thread-pre-split.i231 ], [ %i.mi, %bb.cn ] ; 2 uses
  %i.no = icmp samesign ult i64 %.sroa.26.0.i216, 16
  br i1 %i.no, label %.lr.ph150.i226, label %.preheader111.i218

.preheader111.i218:                               ; preds = %bb.cu, %bb.cx
  %.sroa.0.3145.i219 = phi ptr [ %i.np, %bb.cx ], [ %.sroa.0.0.i217, %bb.cu ] ; 2 uses
  %.sroa.26.3144.i220 = phi i64 [ %i.nq, %bb.cx ], [ %.sroa.26.0.i216, %bb.cu ]
  %.sroa.084.3143.i221 = phi i64 [ %i.ob, %bb.cx ], [ 0, %bb.cu ]
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i219, i64 1
  %i.nq = add nsw i64 %.sroa.26.3144.i220, -1     ; 2 uses
  %i.nr = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i221, i64 10) ; 2 uses
  %i.ns = extractvalue { i64, i1 } %i.nr, 0
  %i.nt = extractvalue { i64, i1 } %i.nr, 1
  br i1 %i.nt, label %.loopexit495, label %bb.cv, !prof !7

bb.cv:                                            ; preds = %.preheader111.i218
  %i.nu = load i8, ptr %.sroa.0.3145.i219, align 1, !alias.scope !429, !noalias !430, !noundef !4
  %i.nv = zext i8 %i.nu to i32
  %i.nw = add nsw i32 %i.nv, -48                  ; 2 uses
  %i.nx = icmp ult i32 %i.nw, 10
  br i1 %i.nx, label %bb.cw, label %.loopexit495

bb.cw:                                            ; preds = %bb.cv
  %i.ny = zext nneg i32 %i.nw to i64
  %i.nz = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ns, i64 %i.ny) ; 2 uses
  %i.oa = extractvalue { i64, i1 } %i.nz, 1
  br i1 %i.oa, label %.loopexit495, label %bb.cx, !prof !7

bb.cx:                                            ; preds = %bb.cw
  %i.ob = extractvalue { i64, i1 } %i.nz, 0       ; 2 uses
  %.not104.i223 = icmp eq i64 %i.nq, 0
  br i1 %.not104.i223, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit233, label %.preheader111.i218

.lr.ph150.i226:                                   ; preds = %bb.cu, %bb.cy
  %.sroa.0.4149.i227 = phi ptr [ %i.oi, %bb.cy ], [ %.sroa.0.0.i217, %bb.cu ] ; 2 uses
  %.sroa.26.4148.i228 = phi i64 [ %i.oh, %bb.cy ], [ %.sroa.26.0.i216, %bb.cu ]
  %.sroa.084.4147.i229 = phi i64 [ %i.ok, %bb.cy ], [ 0, %bb.cu ]
  %i.oc = load i8, ptr %.sroa.0.4149.i227, align 1, !alias.scope !429, !noalias !430, !noundef !4
  %i.od = zext i8 %i.oc to i32
  %i.oe = add nsw i32 %i.od, -48                  ; 2 uses
  %i.of = icmp ult i32 %i.oe, 10
  br i1 %i.of, label %bb.cy, label %.loopexit495

bb.cy:                                            ; preds = %.lr.ph150.i226
  %i.og = mul i64 %.sroa.084.4147.i229, 10
  %i.oh = add nsw i64 %.sroa.26.4148.i228, -1     ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i227, i64 1
  %i.oj = zext nneg i32 %i.oe to i64
  %i.ok = add i64 %i.og, %i.oj                    ; 2 uses
  %.not105.i230 = icmp eq i64 %i.oh, 0
  br i1 %.not105.i230, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit233, label %.lr.ph150.i226

.loopexit495:                                     ; preds = %.lr.ph.i201, %bb.cr, %bb.cq, %.lr.ph141.i211, %.preheader111.i218, %bb.cv, %bb.cw, %.lr.ph150.i226, %bb.cn, %bb.cn, %.thread465
  %.ph473 = phi ptr [ %i.mi, %.preheader111.i218 ], [ %i.mi, %.lr.ph141.i211 ], [ %i.mi, %.lr.ph150.i226 ], [ %i.mi, %bb.cn ], [ inttoptr (i64 1 to ptr), %.thread465 ], [ %i.mi, %bb.cn ], [ %i.mi, %bb.cw ], [ %i.mi, %bb.cv ], [ %i.mi, %bb.cq ], [ %i.mi, %bb.cr ], [ %i.mi, %.lr.ph.i201 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph473, i64 noundef %i.mf) #17
  %i.ol = load i8, ptr %i.ak, align 8, !range !9, !noundef !4
  %i.om = trunc nuw i8 %i.ol to i1
  br i1 %i.om, label %bb.do, label %bb.dp

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit233: ; preds = %bb.cs, %bb.ct, %bb.cx, %bb.cy
  %.sroa.15307.0 = phi i64 [ %i.ob, %bb.cx ], [ %i.nn, %bb.ct ], [ %i.ok, %bb.cy ], [ %i.ne, %bb.cs ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 6, i64 noundef %.sroa.15307.0) #18
  br label %bb.cz

bb.cz:                                            ; preds = %bb.dp, %bb.do, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit233
  %i.on = phi ptr [ %.ph473, %bb.do ], [ %.ph473, %bb.dp ], [ %i.mi, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit233 ]
  %.sroa.03.0.not = phi i1 [ true, %bb.do ], [ false, %bb.dp ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit233 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  store i64 0, ptr %i.ai, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.sroa.6.0.copyload, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %.sroa.11.0.copyload, ptr %.sroa.515.0..sroa_idx, align 8
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i8 1, ptr %i.oo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !431
  store i64 0, ptr %i.d, align 8, !noalias !431
  %.sroa.4.0..sroa_idx.i234 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i234, align 8, !noalias !431
  %.sroa.5.0..sroa_idx.i235 = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i235, align 8, !noalias !431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !431
  %i.op = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1610612768, ptr %i.op, align 8, !noalias !431
  store ptr %i.d, ptr %i.c, align 8, !noalias !431
  %i.oq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @38, ptr %i.oq, align 8, !noalias !431
  %i.or = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #18, !noalias !432
  br i1 %i.or, label %bb.da, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCshytdrR3ujnR_10uu_pathchk.exit236, !prof !7

bb.da:                                            ; preds = %bb.cz
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #19, !noalias !432
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCshytdrR3ujnR_10uu_pathchk.exit236: ; preds = %bb.cz
  %.sroa.0308.0.copyload309 = load i64, ptr %i.d, align 8, !noalias !433 ; 3 uses
  %.sroa.5310.0.copyload312 = load ptr, ptr %.sroa.4.0..sroa_idx.i234, align 8, !noalias !433, !nonnull !4, !noundef !4 ; 8 uses
  %.sroa.8314.0.copyload316 = load i64, ptr %.sroa.5.0..sroa_idx.i235, align 8, !noalias !433 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  switch i64 %.sroa.8314.0.copyload316, label %thread-pre-split.i268 [
    i64 0, label %.loopexit
    i64 1, label %bb.db
  ]

bb.db:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCshytdrR3ujnR_10uu_pathchk.exit236
  %i.os = load i8, ptr %.sroa.5310.0.copyload312, align 1, !alias.scope !434, !noalias !435, !noundef !4 ; 2 uses
  switch i8 %i.os, label %bb.dc [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i268:                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCshytdrR3ujnR_10uu_pathchk.exit236
  %.pr.i269 = load i8, ptr %.sroa.5310.0.copyload312, align 1, !alias.scope !434, !noalias !435
  br label %bb.dc

bb.dc:                                            ; preds = %thread-pre-split.i268, %bb.db
  %i.ot = phi i8 [ %.pr.i269, %thread-pre-split.i268 ], [ %i.os, %bb.db ]
  switch i8 %i.ot, label %bb.dj [
    i8 43, label %bb.dd
    i8 45, label %bb.de
  ]

bb.dd:                                            ; preds = %bb.dc
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.5310.0.copyload312, i64 1
  %i.ov = add nsw i64 %.sroa.8314.0.copyload316, -1
  br label %bb.dj

bb.de:                                            ; preds = %bb.dc
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.5310.0.copyload312, i64 1 ; 2 uses
  %i.ox = add nsw i64 %.sroa.8314.0.copyload316, -1 ; 3 uses
  %i.oy = icmp samesign ult i64 %.sroa.8314.0.copyload316, 17
  br i1 %i.oy, label %.preheader114.i246, label %.lr.ph.i238

.preheader114.i246:                               ; preds = %bb.de
  %.not103137.i247 = icmp eq i64 %i.ox, 0
  br i1 %.not103137.i247, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit270, label %.lr.ph141.i248

.lr.ph.i238:                                      ; preds = %bb.de, %bb.dh
  %.sroa.0.1136.i239 = phi ptr [ %i.oz, %bb.dh ], [ %i.ow, %bb.de ] ; 2 uses
  %.sroa.26.1135.i240 = phi i64 [ %i.pa, %bb.dh ], [ %i.ox, %bb.de ]
  %.sroa.084.0134.i241 = phi i64 [ %i.pl, %bb.dh ], [ 0, %bb.de ]
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i239, i64 1
  %i.pa = add nsw i64 %.sroa.26.1135.i240, -1     ; 2 uses
  %i.pb = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i241, i64 10) ; 2 uses
  %i.pc = extractvalue { i64, i1 } %i.pb, 0
  %i.pd = extractvalue { i64, i1 } %i.pb, 1
  br i1 %i.pd, label %.loopexit, label %bb.df, !prof !7

bb.df:                                            ; preds = %.lr.ph.i238
  %i.pe = load i8, ptr %.sroa.0.1136.i239, align 1, !alias.scope !434, !noalias !435, !noundef !4
  %i.pf = zext i8 %i.pe to i32
  %i.pg = add nsw i32 %i.pf, -48                  ; 2 uses
  %i.ph = icmp ult i32 %i.pg, 10
  br i1 %i.ph, label %bb.dg, label %.loopexit

bb.dg:                                            ; preds = %bb.df
  %i.pi = zext nneg i32 %i.pg to i64
  %i.pj = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.pc, i64 %i.pi) ; 2 uses
  %i.pk = extractvalue { i64, i1 } %i.pj, 1
  br i1 %i.pk, label %.loopexit, label %bb.dh, !prof !7

bb.dh:                                            ; preds = %bb.dg
  %i.pl = extractvalue { i64, i1 } %i.pj, 0       ; 2 uses
  %.not102.i243 = icmp eq i64 %i.pa, 0
  br i1 %.not102.i243, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit270, label %.lr.ph.i238

.lr.ph141.i248:                                   ; preds = %.preheader114.i246, %bb.di
  %.sroa.0.2140.i249 = phi ptr [ %i.ps, %bb.di ], [ %i.ow, %.preheader114.i246 ] ; 2 uses
  %.sroa.26.2139.i250 = phi i64 [ %i.pr, %bb.di ], [ %i.ox, %.preheader114.i246 ]
  %.sroa.084.2138.i251 = phi i64 [ %i.pu, %bb.di ], [ 0, %.preheader114.i246 ]
  %i.pm = load i8, ptr %.sroa.0.2140.i249, align 1, !alias.scope !434, !noalias !435, !noundef !4
  %i.pn = zext i8 %i.pm to i32
  %i.po = add nsw i32 %i.pn, -48                  ; 2 uses
  %i.pp = icmp ult i32 %i.po, 10
  br i1 %i.pp, label %bb.di, label %.loopexit

bb.di:                                            ; preds = %.lr.ph141.i248
  %i.pq = mul i64 %.sroa.084.2138.i251, 10
  %i.pr = add nsw i64 %.sroa.26.2139.i250, -1     ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i249, i64 1
  %i.pt = zext nneg i32 %i.po to i64
  %i.pu = sub i64 %i.pq, %i.pt                    ; 2 uses
  %.not103.i252 = icmp eq i64 %i.pr, 0
  br i1 %.not103.i252, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit270, label %.lr.ph141.i248

bb.dj:                                            ; preds = %bb.dd, %bb.dc
  %.sroa.26.0.i253 = phi i64 [ %i.ov, %bb.dd ], [ %.sroa.8314.0.copyload316, %bb.dc ] ; 4 uses
  %.sroa.0.0.i254 = phi ptr [ %i.ou, %bb.dd ], [ %.sroa.5310.0.copyload312, %bb.dc ] ; 2 uses
  %i.pv = icmp samesign ult i64 %.sroa.26.0.i253, 16
  br i1 %i.pv, label %.preheader.i261, label %.preheader111.i255

.preheader.i261:                                  ; preds = %bb.dj
  %.not105146.i262 = icmp eq i64 %.sroa.26.0.i253, 0
  br i1 %.not105146.i262, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit270, label %.lr.ph150.i263

.preheader111.i255:                               ; preds = %bb.dj, %bb.dm
  %.sroa.0.3145.i256 = phi ptr [ %i.pw, %bb.dm ], [ %.sroa.0.0.i254, %bb.dj ] ; 2 uses
  %.sroa.26.3144.i257 = phi i64 [ %i.px, %bb.dm ], [ %.sroa.26.0.i253, %bb.dj ]
  %.sroa.084.3143.i258 = phi i64 [ %i.qi, %bb.dm ], [ 0, %bb.dj ]
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i256, i64 1
  %i.px = add nsw i64 %.sroa.26.3144.i257, -1     ; 2 uses
  %i.py = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i258, i64 10) ; 2 uses
  %i.pz = extractvalue { i64, i1 } %i.py, 0
  %i.qa = extractvalue { i64, i1 } %i.py, 1
  br i1 %i.qa, label %.loopexit, label %bb.dk, !prof !7

bb.dk:                                            ; preds = %.preheader111.i255
  %i.qb = load i8, ptr %.sroa.0.3145.i256, align 1, !alias.scope !434, !noalias !435, !noundef !4
  %i.qc = zext i8 %i.qb to i32
  %i.qd = add nsw i32 %i.qc, -48                  ; 2 uses
  %i.qe = icmp ult i32 %i.qd, 10
  br i1 %i.qe, label %bb.dl, label %.loopexit

bb.dl:                                            ; preds = %bb.dk
  %i.qf = zext nneg i32 %i.qd to i64
  %i.qg = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.pz, i64 %i.qf) ; 2 uses
  %i.qh = extractvalue { i64, i1 } %i.qg, 1
  br i1 %i.qh, label %.loopexit, label %bb.dm, !prof !7

bb.dm:                                            ; preds = %bb.dl
  %i.qi = extractvalue { i64, i1 } %i.qg, 0       ; 2 uses
  %.not104.i260 = icmp eq i64 %i.px, 0
  br i1 %.not104.i260, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit270, label %.preheader111.i255

.lr.ph150.i263:                                   ; preds = %.preheader.i261, %bb.dn
  %.sroa.0.4149.i264 = phi ptr [ %i.qp, %bb.dn ], [ %.sroa.0.0.i254, %.preheader.i261 ] ; 2 uses
  %.sroa.26.4148.i265 = phi i64 [ %i.qo, %bb.dn ], [ %.sroa.26.0.i253, %.preheader.i261 ]
  %.sroa.084.4147.i266 = phi i64 [ %i.qr, %bb.dn ], [ 0, %.preheader.i261 ]
  %i.qj = load i8, ptr %.sroa.0.4149.i264, align 1, !alias.scope !434, !noalias !435, !noundef !4
  %i.qk = zext i8 %i.qj to i32
  %i.ql = add nsw i32 %i.qk, -48                  ; 2 uses
  %i.qm = icmp ult i32 %i.ql, 10
  br i1 %i.qm, label %bb.dn, label %.loopexit

bb.dn:                                            ; preds = %.lr.ph150.i263
  %i.qn = mul i64 %.sroa.084.4147.i266, 10
  %i.qo = add nsw i64 %.sroa.26.4148.i265, -1     ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i264, i64 1
  %i.qq = zext nneg i32 %i.ql to i64
  %i.qr = add i64 %i.qn, %i.qq                    ; 2 uses
  %.not105.i267 = icmp eq i64 %i.qo, 0
  br i1 %.not105.i267, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit270, label %.lr.ph150.i263

bb.do:                                            ; preds = %.loopexit495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 %i.mf, ptr %i.aj, align 8
  %.sroa.5302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %.ph473, ptr %.sroa.5302.0..sroa_idx, align 8
  %.sroa.8303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %i.mf, ptr %.sroa.8303.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECshytdrR3ujnR_10uu_pathchk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 6, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aj) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.cz

bb.dp:                                            ; preds = %.loopexit495
  %i.qs = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.qt = load double, ptr %i.qs, align 8, !noundef !4
end_hunk_3
