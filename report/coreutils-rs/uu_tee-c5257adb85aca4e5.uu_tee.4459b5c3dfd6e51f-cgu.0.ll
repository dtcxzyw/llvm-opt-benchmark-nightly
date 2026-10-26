Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tee-c5257adb85aca4e5.uu_tee.4459b5c3dfd6e51f-cgu.0?download=true
inline.NumInlined: 474
inline.NumDeleted: 321
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvCs5RPjO8Kzn89_6uu_tee3tee:bb.a
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 7 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !376
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !376
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error11strip_errno(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p) #20
  %i.kk = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !noalias !376, !nonnull !5, !noundef !5 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.kn = load i64, ptr %i.km, align 8, !noalias !376, !noundef !5 ; 16 uses
  %.not.i108.i = icmp slt i64 %i.kn, 0
  br i1 %.not.i108.i, label %bb.bp, label %bb.bo, !prof !12

bb.bo:                                            ; preds = %bb.bn
  %i.ko = icmp eq i64 %i.kn, 0                    ; 2 uses
  br i1 %i.ko, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5RPjO8Kzn89_6uu_tee.exit.thread300.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.bo
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !411
  %i.kp = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.kn, i64 noundef range(i64 1, 9) 1) #20, !noalias !411 ; 3 uses
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %bb.bp, label %bb.ce

bb.bp:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, %bb.bn
  %.sroa.4258.0.ph.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.bn ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4258.0.ph.i, i64 %i.kn) #23
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5RPjO8Kzn89_6uu_tee.exit.thread300.i: ; preds = %bb.ce, %bb.bo
  %i.kr = phi ptr [ %i.kp, %bb.ce ], [ inttoptr (i64 1 to ptr), %bb.bo ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %.val.i110.i = load i64, ptr %i.l, align 8, !range !6, !alias.scope !412, !noalias !376, !noundef !5 ; 2 uses
  %i.ks = icmp eq i64 %.val.i110.i, 0
  br i1 %i.ks, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i, label %bb.bq

bb.bq:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5RPjO8Kzn89_6uu_tee.exit.thread300.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kl, i64 noundef %.val.i110.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !412
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i: ; preds = %bb.bq, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5RPjO8Kzn89_6uu_tee.exit.thread300.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !376
  switch i64 %i.kn, label %thread-pre-split.i.i [
    i64 0, label %.loopexit.i
    i64 1, label %bb.br
  ]

bb.br:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i
  %i.kt = load i8, ptr %i.kr, align 1, !alias.scope !413, !noundef !5 ; 2 uses
  switch i8 %i.kt, label %bb.bs [
    i8 43, label %.loopexit.i
    i8 45, label %.loopexit.i
  ]

thread-pre-split.i.i:                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i
  %.pr.i.i = load i8, ptr %i.kr, align 1, !alias.scope !413
  br label %bb.bs

bb.bs:                                            ; preds = %thread-pre-split.i.i, %bb.br
  %i.ku = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.kt, %bb.br ]
  switch i8 %i.ku, label %bb.bz [
    i8 43, label %bb.bt
    i8 45, label %bb.bu
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  %i.kw = add nsw i64 %i.kn, -1
  br label %bb.bz

bb.bu:                                            ; preds = %bb.bs
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 1 ; 2 uses
  %i.ky = add nsw i64 %i.kn, -1                   ; 3 uses
  %i.kz = icmp samesign ult i64 %i.kn, 17
  br i1 %i.kz, label %.preheader114.i.i, label %.lr.ph.i.i

.preheader114.i.i:                                ; preds = %bb.bu
  %.not103137.i.i = icmp eq i64 %i.ky, 0
  br i1 %.not103137.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph141.i.i

.lr.ph.i.i:                                       ; preds = %bb.bu, %bb.bx
  %.sroa.0.1136.i.i = phi ptr [ %i.la, %bb.bx ], [ %i.kx, %bb.bu ] ; 2 uses
  %.sroa.26.1135.i.i = phi i64 [ %i.lb, %bb.bx ], [ %i.ky, %bb.bu ]
  %.sroa.084.0134.i.i = phi i64 [ %i.lm, %bb.bx ], [ 0, %bb.bu ]
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i, i64 1
  %i.lb = add nsw i64 %.sroa.26.1135.i.i, -1      ; 2 uses
  %i.lc = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i, i64 10) ; 2 uses
  %i.ld = extractvalue { i64, i1 } %i.lc, 0
  %i.le = extractvalue { i64, i1 } %i.lc, 1
  br i1 %i.le, label %.loopexit.i, label %bb.bv, !prof !17

bb.bv:                                            ; preds = %.lr.ph.i.i
  %i.lf = load i8, ptr %.sroa.0.1136.i.i, align 1, !alias.scope !413, !noundef !5
  %i.lg = zext i8 %i.lf to i32
  %i.lh = add nsw i32 %i.lg, -48                  ; 2 uses
  %i.li = icmp ult i32 %i.lh, 10
  br i1 %i.li, label %bb.bw, label %.loopexit.i

bb.bw:                                            ; preds = %bb.bv
  %i.lj = zext nneg i32 %i.lh to i64
  %i.lk = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ld, i64 %i.lj) ; 2 uses
  %i.ll = extractvalue { i64, i1 } %i.lk, 1
  br i1 %i.ll, label %.loopexit.i, label %bb.bx, !prof !17

bb.bx:                                            ; preds = %bb.bw
  %i.lm = extractvalue { i64, i1 } %i.lk, 0       ; 2 uses
  %.not102.i.i = icmp eq i64 %i.lb, 0
  br i1 %.not102.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i.i

.lr.ph141.i.i:                                    ; preds = %.preheader114.i.i, %bb.by
  %.sroa.0.2140.i.i = phi ptr [ %i.lt, %bb.by ], [ %i.kx, %.preheader114.i.i ] ; 2 uses
  %.sroa.26.2139.i.i = phi i64 [ %i.ls, %bb.by ], [ %i.ky, %.preheader114.i.i ]
  %.sroa.084.2138.i.i = phi i64 [ %i.lv, %bb.by ], [ 0, %.preheader114.i.i ]
  %i.ln = load i8, ptr %.sroa.0.2140.i.i, align 1, !alias.scope !413, !noundef !5
  %i.lo = zext i8 %i.ln to i32
  %i.lp = add nsw i32 %i.lo, -48                  ; 2 uses
  %i.lq = icmp ult i32 %i.lp, 10
  br i1 %i.lq, label %bb.by, label %.loopexit.i

bb.by:                                            ; preds = %.lr.ph141.i.i
  %i.lr = mul i64 %.sroa.084.2138.i.i, 10
  %i.ls = add nsw i64 %.sroa.26.2139.i.i, -1      ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i, i64 1
  %i.lu = zext nneg i32 %i.lp to i64
  %i.lv = sub i64 %i.lr, %i.lu                    ; 2 uses
  %.not103.i.i = icmp eq i64 %i.ls, 0
  br i1 %.not103.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph141.i.i

bb.bz:                                            ; preds = %bb.bt, %bb.bs
  %.sroa.26.0.i.i = phi i64 [ %i.kw, %bb.bt ], [ %i.kn, %bb.bs ] ; 4 uses
  %.sroa.0.0.i113.i = phi ptr [ %i.kv, %bb.bt ], [ %i.kr, %bb.bs ] ; 2 uses
  %i.lw = icmp samesign ult i64 %.sroa.26.0.i.i, 16
  br i1 %i.lw, label %.preheader.i.i, label %.preheader111.i.i

.preheader.i.i:                                   ; preds = %bb.bz
  %.not105146.i.i = icmp eq i64 %.sroa.26.0.i.i, 0
  br i1 %.not105146.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph150.i.i

.preheader111.i.i:                                ; preds = %bb.bz, %bb.cc
  %.sroa.0.3145.i.i = phi ptr [ %i.lx, %bb.cc ], [ %.sroa.0.0.i113.i, %bb.bz ] ; 2 uses
  %.sroa.26.3144.i.i = phi i64 [ %i.ly, %bb.cc ], [ %.sroa.26.0.i.i, %bb.bz ]
  %.sroa.084.3143.i.i = phi i64 [ %i.mj, %bb.cc ], [ 0, %bb.bz ]
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i, i64 1
  %i.ly = add nsw i64 %.sroa.26.3144.i.i, -1      ; 2 uses
  %i.lz = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i, i64 10) ; 2 uses
  %i.ma = extractvalue { i64, i1 } %i.lz, 0
  %i.mb = extractvalue { i64, i1 } %i.lz, 1
  br i1 %i.mb, label %.loopexit.i, label %bb.ca, !prof !17

bb.ca:                                            ; preds = %.preheader111.i.i
  %i.mc = load i8, ptr %.sroa.0.3145.i.i, align 1, !alias.scope !413, !noundef !5
  %i.md = zext i8 %i.mc to i32
  %i.me = add nsw i32 %i.md, -48                  ; 2 uses
  %i.mf = icmp ult i32 %i.me, 10
  br i1 %i.mf, label %bb.cb, label %.loopexit.i

bb.cb:                                            ; preds = %bb.ca
  %i.mg = zext nneg i32 %i.me to i64
  %i.mh = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ma, i64 %i.mg) ; 2 uses
  %i.mi = extractvalue { i64, i1 } %i.mh, 1
  br i1 %i.mi, label %.loopexit.i, label %bb.cc, !prof !17

bb.cc:                                            ; preds = %bb.cb
  %i.mj = extractvalue { i64, i1 } %i.mh, 0       ; 2 uses
  %.not104.i.i = icmp eq i64 %i.ly, 0
  br i1 %.not104.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.preheader111.i.i

.lr.ph150.i.i:                                    ; preds = %.preheader.i.i, %bb.cd
  %.sroa.0.4149.i.i = phi ptr [ %i.mq, %bb.cd ], [ %.sroa.0.0.i113.i, %.preheader.i.i ] ; 2 uses
  %.sroa.26.4148.i.i = phi i64 [ %i.mp, %bb.cd ], [ %.sroa.26.0.i.i, %.preheader.i.i ]
  %.sroa.084.4147.i.i = phi i64 [ %i.ms, %bb.cd ], [ 0, %.preheader.i.i ]
  %i.mk = load i8, ptr %.sroa.0.4149.i.i, align 1, !alias.scope !413, !noundef !5
  %i.ml = zext i8 %i.mk to i32
  %i.mm = add nsw i32 %i.ml, -48                  ; 2 uses
  %i.mn = icmp ult i32 %i.mm, 10
  br i1 %i.mn, label %bb.cd, label %.loopexit.i

bb.cd:                                            ; preds = %.lr.ph150.i.i
  %i.mo = mul i64 %.sroa.084.4147.i.i, 10
  %i.mp = add nsw i64 %.sroa.26.4148.i.i, -1      ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i, i64 1
  %i.mr = zext nneg i32 %i.mm to i64
  %i.ms = add i64 %i.mo, %i.mr                    ; 2 uses
  %.not105.i.i = icmp eq i64 %i.mp, 0
  br i1 %.not105.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph150.i.i

bb.ce:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kp, ptr nonnull align 1 %i.kl, i64 %i.kn, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5RPjO8Kzn89_6uu_tee.exit.thread300.i

.loopexit.i:                                      ; preds = %bb.bw, %bb.bv, %.lr.ph.i.i, %.lr.ph141.i.i, %bb.cb, %bb.ca, %.preheader111.i.i, %.lr.ph150.i.i, %bb.br, %bb.br, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !376
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kr, i64 noundef %i.kn) #25
  %i.mt = load i8, ptr %i.k, align 8, !range !14, !noalias !376, !noundef !5
  %i.mu = trunc nuw i8 %i.mt to i1
  br i1 %i.mu, label %bb.cn, label %bb.cw

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i: ; preds = %bb.bx, %bb.by, %bb.cc, %bb.cd, %.preheader.i.i, %.preheader114.i.i
  %.sroa.15250.0.i = phi i64 [ %i.ms, %bb.cd ], [ %i.lv, %bb.by ], [ %i.mj, %bb.cc ], [ 0, %.preheader.i.i ], [ 0, %.preheader114.i.i ], [ %i.lm, %bb.bx ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.mv = load ptr, ptr %.sroa.410.0..sroa_idx.i, align 8, !alias.scope !414, !noalias !376, !nonnull !5, !noundef !5 ; 3 uses
  %i.mw = load i64, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !414, !noalias !376, !noundef !5 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  switch i64 %i.mw, label %.lr.ph.i.i.i.i11 [
    i64 0, label %.thread.i.i
    i64 1, label %._crit_edge.i.i.i.i
  ]

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i11, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i ], [ %i.nm, %.lr.ph.i.i.i.i11 ] ; 4 uses
  %i.mx = getelementptr inbounds nuw [144 x i8], ptr %i.mv, i64 %.sroa.05.0.lcssa.i.i.i.i ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %.sroa.0.0.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mx, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i.i.i, align 8, !alias.scope !419, !noalias !414, !nonnull !5, !noundef !5
  %.sroa.3.0.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mx, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i.i.i, align 8, !alias.scope !419, !noalias !414, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i.i.i, i64 5)
  %i.my = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i.i.i, ptr nonnull readonly @14, i64 %spec.store.select.i.i.i.i.i.i.i.i), !alias.scope !420, !noalias !421 ; 2 uses
  %i.mz = sext i32 %i.my to i64
  %i.na = icmp eq i32 %i.my, 0
  %i.nb = add i64 %.sroa.3.0.i.i.i.i.i.i.i, -5
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.na, i64 %i.nb, i64 %i.mz ; 2 uses
  %i.nc = icmp eq i64 %spec.select.i.i.i.i.i.i.i.i, 0
  br i1 %i.nc, label %bb.cj, label %bb.cf

.lr.ph.i.i.i.i11:                                 ; preds = %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, %.lr.ph.i.i.i.i11
  %.sroa.01.025.i.i.i.i = phi i64 [ %i.nn, %.lr.ph.i.i.i.i11 ], [ %i.mw, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i ] ; 2 uses
  %.sroa.05.024.i.i.i.i = phi i64 [ %i.nm, %.lr.ph.i.i.i.i11 ], [ 0, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i ] ; 2 uses
  %i.nd = lshr i64 %.sroa.01.025.i.i.i.i, 1       ; 2 uses
  %i.ne = add nuw nsw i64 %i.nd, %.sroa.05.024.i.i.i.i ; 3 uses
  %i.nf = icmp ult i64 %i.ne, %i.mw
  call void @llvm.assume(i1 %i.nf)
  %i.ng = getelementptr inbounds nuw [144 x i8], ptr %i.mv, i64 %i.ne ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %.sroa.0.0.in.i.i.i14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %.sroa.0.0.i.i.i15.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i.i.i, align 8, !alias.scope !424, !noalias !414, !nonnull !5, !noundef !5
  %.sroa.3.0.in.i.i.i16.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %.sroa.3.0.i.i.i17.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i.i.i, align 8, !alias.scope !424, !noalias !414, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i.i.i, i64 5)
  %i.nh = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i.i.i, ptr nonnull readonly @14, i64 %spec.store.select.i.i.i.i22.i.i.i.i), !alias.scope !425, !noalias !426 ; 2 uses
  %i.ni = sext i32 %i.nh to i64
  %i.nj = icmp eq i32 %i.nh, 0
  %i.nk = add i64 %.sroa.3.0.i.i.i17.i.i.i.i, -5
  %spec.select.i.i.i.i23.i.i.i.i = select i1 %i.nj, i64 %i.nk, i64 %i.ni
  %i.nl = icmp sgt i64 %spec.select.i.i.i.i23.i.i.i.i, 0
  %i.nm = select i1 %i.nl, i64 %.sroa.05.024.i.i.i.i, i64 %i.ne, !unpredictable !5 ; 2 uses
  %i.nn = sub nuw nsw i64 %.sroa.01.025.i.i.i.i, %i.nd ; 2 uses
  %i.no = icmp ugt i64 %i.nn, 1
  br i1 %i.no, label %.lr.ph.i.i.i.i11, label %._crit_edge.i.i.i.i

bb.cf:                                            ; preds = %._crit_edge.i.i.i.i
  %spec.select.i.i.i.i.lobit.i.i.i.i = lshr i64 %spec.select.i.i.i.i.i.i.i.i, 63
  %i.np = add nuw nsw i64 %spec.select.i.i.i.i.lobit.i.i.i.i, %.sroa.05.0.lcssa.i.i.i.i ; 2 uses
  %i.nq = icmp ule i64 %i.np, %i.mw
  call void @llvm.assume(i1 %i.nq)
  %i.nr = icmp ult i64 %i.mw, 64051194700380388
  call void @llvm.assume(i1 %i.nr)
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.cf, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i
  %.sroa.4.0.i.i.ph47.i.i = phi i64 [ %i.np, %bb.cf ], [ 0, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i ] ; 3 uses
  %i.ns = sitofp i64 %.sroa.15250.0.i to double
  %i.nt = load i64, ptr %i.m, align 8, !range !6, !alias.scope !427, !noalias !376, !noundef !5
  %i.nu = icmp eq i64 %i.mw, %i.nt
  br i1 %i.nu, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.thread.i.i
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #25, !noalias !428
  %.pre.i.i = load ptr, ptr %.sroa.410.0..sroa_idx.i, align 8, !alias.scope !427, !noalias !376
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.thread.i.i
  %i.nv = phi ptr [ %.pre.i.i, %bb.cg ], [ %i.mv, %.thread.i.i ]
  %i.nw = getelementptr inbounds nuw [144 x i8], ptr %i.nv, i64 %.sroa.4.0.i.i.ph47.i.i ; 13 uses
  %i.nx = icmp samesign ult i64 %.sroa.4.0.i.i.ph47.i.i, %i.mw
  br i1 %i.nx, label %bb.ci, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5RPjO8Kzn89_6uu_tee.exit.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 144
  %i.nz = sub nuw nsw i64 %i.mw, %.sroa.4.0.i.i.ph47.i.i
  %i.oa = mul nuw nsw i64 %i.nz, 144
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ny, ptr nonnull align 8 %i.nw, i64 %i.oa, i1 false), !noalias !428
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5RPjO8Kzn89_6uu_tee.exit.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5RPjO8Kzn89_6uu_tee.exit.i.i: ; preds = %bb.ci, %bb.ch
  store i64 -1, ptr %i.nw, align 8
  %.sroa.027.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  store ptr @14, ptr %.sroa.027.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.027.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  store i64 5, ptr %.sroa.027.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 24
  store i64 0, ptr %.sroa.428.0..sroa_idx.i.i, align 8
  %.sroa.630.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 40
  store i64 0, ptr %.sroa.630.0..sroa_idx.i.i, align 8
  %.sroa.832.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 56
  store i64 0, ptr %.sroa.832.0..sroa_idx.i.i, align 8
  %.sroa.1034.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 72
  store i64 0, ptr %.sroa.1034.0..sroa_idx.i.i, align 8
  %.sroa.1236.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 88
  store i64 0, ptr %.sroa.1236.0..sroa_idx.i.i, align 8
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 104
  store i64 -1, ptr %.sroa.14.0..sroa_idx.i.i, align 8
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.16.0..sroa_idx.i.i, align 8
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 136
  store double %i.ns, ptr %.sroa.21.0..sroa_idx.i.i, align 8
  %i.ob = add nuw nsw i64 %i.mw, 1
  store i64 %i.ob, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !427, !noalias !376
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs5RPjO8Kzn89_6uu_tee.exit.i

bb.cj:                                            ; preds = %._crit_edge.i.i.i.i
  %i.oc = icmp ult i64 %.sroa.05.0.lcssa.i.i.i.i, %i.mw
  br i1 %i.oc, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.od = sitofp i64 %.sroa.15250.0.i to double
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef align 8 dereferenceable(144) %i.mx) #20, !noalias !414
  store i64 -1, ptr %i.mx, align 8, !noalias !414
  store ptr @14, ptr %.sroa.0.0.in.i.i.i.i.i.i.i, align 8, !noalias !414
  store i64 5, ptr %.sroa.3.0.in.i.i.i.i.i.i.i, align 8, !noalias !414
  %i.oe = getelementptr inbounds nuw i8, ptr %i.mx, i64 24
  store i64 0, ptr %i.oe, align 8, !noalias !414
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mx, i64 40
  store i64 0, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !414
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mx, i64 56
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !414
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mx, i64 72
  store i64 0, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !noalias !414
  %.sroa.75.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mx, i64 88
  store i64 0, ptr %.sroa.75.0..sroa_idx.i.i, align 8, !noalias !414
  %.sroa.86.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mx, i64 104
  store i64 -1, ptr %.sroa.86.0..sroa_idx.i.i, align 8, !noalias !414
  %.sroa.97.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mx, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.97.0..sroa_idx.i.i, align 8, !noalias !414
  %.sroa.138.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mx, i64 136
  store double %i.od, ptr %.sroa.138.0..sroa_idx.i.i, align 8, !noalias !414
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs5RPjO8Kzn89_6uu_tee.exit.i

bb.cl:                                            ; preds = %bb.cj
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i.i.i, i64 noundef %i.mw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !414
  unreachable

_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs5RPjO8Kzn89_6uu_tee.exit.i: ; preds = %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs5RPjO8Kzn89_6uu_tee.exit.i, %bb.ck, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5RPjO8Kzn89_6uu_tee.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !376
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 15, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !376
  br i1 %i.ko, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit116.i, label %bb.cm

bb.cm:                                            ; preds = %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs5RPjO8Kzn89_6uu_tee.exit.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kr, i64 noundef %i.kn, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !429
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit116.i

bb.cn:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !376
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %i.of = load ptr, ptr %.sroa.410.0..sroa_idx.i, align 8, !alias.scope !430, !noalias !376, !nonnull !5, !noundef !5 ; 3 uses
  %i.og = load i64, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !430, !noalias !376, !noundef !5 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !431)
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  switch i64 %i.og, label %.lr.ph.i.i.i130.i [
    i64 0, label %bb.cp
    i64 1, label %._crit_edge.i.i.i117.i
  ]

._crit_edge.i.i.i117.i:                           ; preds = %.lr.ph.i.i.i130.i, %bb.cn
  %.sroa.05.0.lcssa.i.i.i118.i = phi i64 [ 0, %bb.cn ], [ %i.ow, %.lr.ph.i.i.i130.i ] ; 4 uses
  %i.oh = getelementptr inbounds nuw [144 x i8], ptr %i.of, i64 %.sroa.05.0.lcssa.i.i.i118.i ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !433)
  call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %.sroa.0.0.in.i.i.i.i.i.i119.i = getelementptr inbounds nuw i8, ptr %i.oh, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i120.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i.i119.i, align 8, !alias.scope !435, !noalias !436, !nonnull !5, !noundef !5
  %.sroa.3.0.in.i.i.i.i.i.i121.i = getelementptr inbounds nuw i8, ptr %i.oh, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i.i122.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i.i121.i, align 8, !alias.scope !435, !noalias !436, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i123.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i.i122.i, i64 5)
  %i.oi = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i.i120.i, ptr nonnull readonly @14, i64 %spec.store.select.i.i.i.i.i.i.i123.i), !alias.scope !437, !noalias !438 ; 2 uses
  %i.oj = sext i32 %i.oi to i64
  %i.ok = icmp eq i32 %i.oi, 0
  %i.ol = add i64 %.sroa.3.0.i.i.i.i.i.i122.i, -5
  %spec.select.i.i.i.i.i.i.i124.i = select i1 %i.ok, i64 %i.ol, i64 %i.oj ; 2 uses
  %i.om = icmp eq i64 %spec.select.i.i.i.i.i.i.i124.i, 0
  br i1 %i.om, label %bb.ct, label %bb.co

.lr.ph.i.i.i130.i:                                ; preds = %bb.cn, %.lr.ph.i.i.i130.i
  %.sroa.01.025.i.i.i131.i = phi i64 [ %i.ox, %.lr.ph.i.i.i130.i ], [ %i.og, %bb.cn ] ; 2 uses
  %.sroa.05.024.i.i.i132.i = phi i64 [ %i.ow, %.lr.ph.i.i.i130.i ], [ 0, %bb.cn ] ; 2 uses
  %i.on = lshr i64 %.sroa.01.025.i.i.i131.i, 1    ; 2 uses
  %i.oo = add nuw nsw i64 %i.on, %.sroa.05.024.i.i.i132.i ; 3 uses
  %i.op = icmp ult i64 %i.oo, %i.og
  call void @llvm.assume(i1 %i.op)
  %i.oq = getelementptr inbounds nuw [144 x i8], ptr %i.of, i64 %i.oo ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !439)
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %.sroa.0.0.in.i.i.i14.i.i.i133.i = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %.sroa.0.0.i.i.i15.i.i.i134.i = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i.i133.i, align 8, !alias.scope !441, !noalias !436, !nonnull !5, !noundef !5
  %.sroa.3.0.in.i.i.i16.i.i.i135.i = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %.sroa.3.0.i.i.i17.i.i.i136.i = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i.i135.i, align 8, !alias.scope !441, !noalias !436, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i.i137.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i.i136.i, i64 5)
  %i.or = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i.i134.i, ptr nonnull readonly @14, i64 %spec.store.select.i.i.i.i22.i.i.i137.i), !alias.scope !442, !noalias !443 ; 2 uses
  %i.os = sext i32 %i.or to i64
  %i.ot = icmp eq i32 %i.or, 0
  %i.ou = add i64 %.sroa.3.0.i.i.i17.i.i.i136.i, -5
  %spec.select.i.i.i.i23.i.i.i138.i = select i1 %i.ot, i64 %i.ou, i64 %i.os
  %i.ov = icmp sgt i64 %spec.select.i.i.i.i23.i.i.i138.i, 0
  %i.ow = select i1 %i.ov, i64 %.sroa.05.024.i.i.i132.i, i64 %i.oo, !unpredictable !5 ; 2 uses
  %i.ox = sub nuw nsw i64 %.sroa.01.025.i.i.i131.i, %i.on ; 2 uses
  %i.oy = icmp ugt i64 %i.ox, 1
  br i1 %i.oy, label %.lr.ph.i.i.i130.i, label %._crit_edge.i.i.i117.i

bb.co:                                            ; preds = %._crit_edge.i.i.i117.i
  %spec.select.i.i.i.i.lobit.i.i.i125.i = lshr i64 %spec.select.i.i.i.i.i.i.i124.i, 63
  %i.oz = add nuw nsw i64 %spec.select.i.i.i.i.lobit.i.i.i125.i, %.sroa.05.0.lcssa.i.i.i118.i ; 2 uses
  %i.pa = icmp ule i64 %i.oz, %i.og
  call void @llvm.assume(i1 %i.pa)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.sroa.4.0.i.i.ph.i.i = phi i64 [ %i.oz, %bb.co ], [ 0, %bb.cn ] ; 3 uses
  %i.pb = icmp ult i64 %i.og, 64051194700380388
  call void @llvm.assume(i1 %i.pb)
  %i.pc = load i64, ptr %i.m, align 8, !range !6, !alias.scope !444, !noalias !376, !noundef !5
  %i.pd = icmp eq i64 %i.og, %i.pc
  br i1 %i.pd, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #25, !noalias !445
  %.pre.i128.i = load ptr, ptr %.sroa.410.0..sroa_idx.i, align 8, !alias.scope !444, !noalias !376
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.pe = phi ptr [ %.pre.i128.i, %bb.cq ], [ %i.of, %bb.cp ]
  %i.pf = getelementptr inbounds nuw [144 x i8], ptr %i.pe, i64 %.sroa.4.0.i.i.ph.i.i ; 9 uses
  %i.pg = icmp samesign ult i64 %.sroa.4.0.i.i.ph.i.i, %i.og
  br i1 %i.pg, label %bb.cs, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5RPjO8Kzn89_6uu_tee.exit.i126.i

bb.cs:                                            ; preds = %bb.cr
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 144
  %i.pi = sub nuw nsw i64 %i.og, %.sroa.4.0.i.i.ph.i.i
  %i.pj = mul nuw nsw i64 %i.pi, 144
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ph, ptr nonnull align 8 %i.pf, i64 %i.pj, i1 false), !noalias !445
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5RPjO8Kzn89_6uu_tee.exit.i126.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5RPjO8Kzn89_6uu_tee.exit.i126.i: ; preds = %bb.cs, %bb.cr
  store i64 -1, ptr %i.pf, align 8, !noalias !446
  %.sroa.05.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  store ptr @14, ptr %.sroa.05.sroa.4.0..sroa_idx.i.i, align 8, !noalias !446
  %.sroa.05.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  store i64 5, ptr %.sroa.05.sroa.5.0..sroa_idx.i.i, align 8, !noalias !446
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pf, i64 24
  store i64 2, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !446
  %.sroa.57.0..sroa_idx.i127.i = getelementptr inbounds nuw i8, ptr %i.pf, i64 32
  store i64 %i.kn, ptr %.sroa.57.0..sroa_idx.i127.i, align 8
  %.sroa.5253.0..sroa.57.0..sroa_idx.i127.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pf, i64 40
  store ptr %i.kr, ptr %.sroa.5253.0..sroa.57.0..sroa_idx.i127.sroa_idx.i, align 8
  %.sroa.6255.0..sroa.57.0..sroa_idx.i127.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pf, i64 48
  store i64 %i.kn, ptr %.sroa.6255.0..sroa.57.0..sroa_idx.i127.sroa_idx.i, align 8
  %i.pk = add nuw nsw i64 %i.og, 1
  store i64 %i.pk, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !444, !noalias !376
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i

bb.ct:                                            ; preds = %._crit_edge.i.i.i117.i
  %i.pl = icmp ult i64 %.sroa.05.0.lcssa.i.i.i118.i, %i.og
  br i1 %i.pl, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef align 8 dereferenceable(144) %i.oh) #20, !noalias !436
  store i64 -1, ptr %i.oh, align 8, !noalias !436
  store ptr @14, ptr %.sroa.0.0.in.i.i.i.i.i.i119.i, align 8, !noalias !436
  store i64 5, ptr %.sroa.3.0.in.i.i.i.i.i.i121.i, align 8, !noalias !436
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  store i64 2, ptr %i.pm, align 8, !noalias !436
  %.sroa.4.0..sroa_idx.i129.i = getelementptr inbounds nuw i8, ptr %i.oh, i64 32
  store i64 %i.kn, ptr %.sroa.4.0..sroa_idx.i129.i, align 8, !noalias !430
  %.sroa.5253.0..sroa.4.0..sroa_idx.i129.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.oh, i64 40
  store ptr %i.kr, ptr %.sroa.5253.0..sroa.4.0..sroa_idx.i129.sroa_idx.i, align 8, !noalias !430
  %.sroa.6255.0..sroa.4.0..sroa_idx.i129.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.oh, i64 48
  store i64 %i.kn, ptr %.sroa.6255.0..sroa.4.0..sroa_idx.i129.sroa_idx.i, align 8, !noalias !430
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i

bb.cv:                                            ; preds = %bb.ct
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i.i118.i, i64 noundef %i.og, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !436
  unreachable

_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i: ; preds = %bb.cu, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5RPjO8Kzn89_6uu_tee.exit.i126.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !376
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 15, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !376
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit116.i

bb.cw:                                            ; preds = %.loopexit.i
  %i.pn = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.po = load double, ptr %i.pn, align 8, !noalias !376, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %i.pp = load ptr, ptr %.sroa.410.0..sroa_idx.i, align 8, !alias.scope !447, !noalias !376, !nonnull !5, !noundef !5 ; 3 uses
  %i.pq = load i64, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !447, !noalias !376, !noundef !5 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !448)
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  switch i64 %i.pq, label %.lr.ph.i.i.i175.i [
    i64 0, label %.thread.i148.i
    i64 1, label %._crit_edge.i.i.i139.i
  ]

._crit_edge.i.i.i139.i:                           ; preds = %.lr.ph.i.i.i175.i, %bb.cw
  %.sroa.05.0.lcssa.i.i.i140.i = phi i64 [ 0, %bb.cw ], [ %i.qg, %.lr.ph.i.i.i175.i ] ; 4 uses
  %i.pr = getelementptr inbounds nuw [144 x i8], ptr %i.pp, i64 %.sroa.05.0.lcssa.i.i.i140.i ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %.sroa.0.0.in.i.i.i.i.i.i141.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i142.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i.i141.i, align 8, !alias.scope !452, !noalias !447, !nonnull !5, !noundef !5
  %.sroa.3.0.in.i.i.i.i.i.i143.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i.i144.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i.i143.i, align 8, !alias.scope !452, !noalias !447, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i145.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i.i144.i, i64 5)
  %i.ps = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i.i142.i, ptr nonnull readonly @14, i64 %spec.store.select.i.i.i.i.i.i.i145.i), !alias.scope !453, !noalias !454 ; 2 uses
  %i.pt = sext i32 %i.ps to i64
  %i.pu = icmp eq i32 %i.ps, 0
  %i.pv = add i64 %.sroa.3.0.i.i.i.i.i.i144.i, -5
  %spec.select.i.i.i.i.i.i.i146.i = select i1 %i.pu, i64 %i.pv, i64 %i.pt ; 2 uses
  %i.pw = icmp eq i64 %spec.select.i.i.i.i.i.i.i146.i, 0
  br i1 %i.pw, label %bb.db, label %bb.cx

.lr.ph.i.i.i175.i:                                ; preds = %bb.cw, %.lr.ph.i.i.i175.i
  %.sroa.01.025.i.i.i176.i = phi i64 [ %i.qh, %.lr.ph.i.i.i175.i ], [ %i.pq, %bb.cw ] ; 2 uses
  %.sroa.05.024.i.i.i177.i = phi i64 [ %i.qg, %.lr.ph.i.i.i175.i ], [ 0, %bb.cw ] ; 2 uses
  %i.px = lshr i64 %.sroa.01.025.i.i.i176.i, 1    ; 2 uses
  %i.py = add nuw nsw i64 %i.px, %.sroa.05.024.i.i.i177.i ; 3 uses
  %i.pz = icmp ult i64 %i.py, %i.pq
  call void @llvm.assume(i1 %i.pz)
  %i.qa = getelementptr inbounds nuw [144 x i8], ptr %i.pp, i64 %i.py ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  call void @llvm.experimental.noalias.scope.decl(metadata !456)
  %.sroa.0.0.in.i.i.i14.i.i.i178.i = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %.sroa.0.0.i.i.i15.i.i.i179.i = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i.i178.i, align 8, !alias.scope !457, !noalias !447, !nonnull !5, !noundef !5
  %.sroa.3.0.in.i.i.i16.i.i.i180.i = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  %.sroa.3.0.i.i.i17.i.i.i181.i = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i.i180.i, align 8, !alias.scope !457, !noalias !447, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i.i182.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i.i181.i, i64 5)
  %i.qb = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i.i179.i, ptr nonnull readonly @14, i64 %spec.store.select.i.i.i.i22.i.i.i182.i), !alias.scope !458, !noalias !459 ; 2 uses
  %i.qc = sext i32 %i.qb to i64
  %i.qd = icmp eq i32 %i.qb, 0
  %i.qe = add i64 %.sroa.3.0.i.i.i17.i.i.i181.i, -5
  %spec.select.i.i.i.i23.i.i.i183.i = select i1 %i.qd, i64 %i.qe, i64 %i.qc
  %i.qf = icmp sgt i64 %spec.select.i.i.i.i23.i.i.i183.i, 0
  %i.qg = select i1 %i.qf, i64 %.sroa.05.024.i.i.i177.i, i64 %i.py, !unpredictable !5 ; 2 uses
  %i.qh = sub nuw nsw i64 %.sroa.01.025.i.i.i176.i, %i.px ; 2 uses
  %i.qi = icmp ugt i64 %i.qh, 1
  br i1 %i.qi, label %.lr.ph.i.i.i175.i, label %._crit_edge.i.i.i139.i

bb.cx:                                            ; preds = %._crit_edge.i.i.i139.i
  %spec.select.i.i.i.i.lobit.i.i.i147.i = lshr i64 %spec.select.i.i.i.i.i.i.i146.i, 63
  %i.qj = add nuw nsw i64 %spec.select.i.i.i.i.lobit.i.i.i147.i, %.sroa.05.0.lcssa.i.i.i140.i ; 2 uses
  %i.qk = icmp ule i64 %i.qj, %i.pq
  call void @llvm.assume(i1 %i.qk)
  %i.ql = icmp ult i64 %i.pq, 64051194700380388
  call void @llvm.assume(i1 %i.ql)
  br label %.thread.i148.i

.thread.i148.i:                                   ; preds = %bb.cx, %bb.cw
  %.sroa.4.0.i.i.ph47.i149.i = phi i64 [ %i.qj, %bb.cx ], [ 0, %bb.cw ] ; 3 uses
  %i.qm = load i64, ptr %i.m, align 8, !range !6, !alias.scope !460, !noalias !376, !noundef !5
  %i.qn = icmp eq i64 %i.pq, %i.qm
  br i1 %i.qn, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %.thread.i148.i
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #25, !noalias !461
  %.pre.i164.i = load ptr, ptr %.sroa.410.0..sroa_idx.i, align 8, !alias.scope !460, !noalias !376
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %.thread.i148.i
  %i.qo = phi ptr [ %.pre.i164.i, %bb.cy ], [ %i.pp, %.thread.i148.i ]
  %i.qp = getelementptr inbounds nuw [144 x i8], ptr %i.qo, i64 %.sroa.4.0.i.i.ph47.i149.i ; 13 uses
  %i.qq = icmp samesign ult i64 %.sroa.4.0.i.i.ph47.i149.i, %i.pq
  br i1 %i.qq, label %bb.da, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5RPjO8Kzn89_6uu_tee.exit.i150.i

bb.da:                                            ; preds = %bb.cz
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 144
  %i.qs = sub nuw nsw i64 %i.pq, %.sroa.4.0.i.i.ph47.i149.i
  %i.qt = mul nuw nsw i64 %i.qs, 144
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qr, ptr nonnull align 8 %i.qp, i64 %i.qt, i1 false), !noalias !461
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5RPjO8Kzn89_6uu_tee.exit.i150.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5RPjO8Kzn89_6uu_tee.exit.i150.i: ; preds = %bb.da, %bb.cz
  store i64 -1, ptr %i.qp, align 8
  %.sroa.027.sroa.4.0..sroa_idx.i151.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  store ptr @14, ptr %.sroa.027.sroa.4.0..sroa_idx.i151.i, align 8
  %.sroa.027.sroa.5.0..sroa_idx.i152.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  store i64 5, ptr %.sroa.027.sroa.5.0..sroa_idx.i152.i, align 8
  %.sroa.428.0..sroa_idx.i153.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 24
  store i64 0, ptr %.sroa.428.0..sroa_idx.i153.i, align 8
  %.sroa.630.0..sroa_idx.i154.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 40
  store i64 0, ptr %.sroa.630.0..sroa_idx.i154.i, align 8
  %.sroa.832.0..sroa_idx.i155.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 56
  store i64 0, ptr %.sroa.832.0..sroa_idx.i155.i, align 8
  %.sroa.1034.0..sroa_idx.i156.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 72
  store i64 0, ptr %.sroa.1034.0..sroa_idx.i156.i, align 8
  %.sroa.1236.0..sroa_idx.i157.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 88
  store i64 0, ptr %.sroa.1236.0..sroa_idx.i157.i, align 8
  %.sroa.14.0..sroa_idx.i158.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 104
  store i64 -1, ptr %.sroa.14.0..sroa_idx.i158.i, align 8
  %.sroa.16.0..sroa_idx.i159.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.16.0..sroa_idx.i159.i, align 8
  %.sroa.21.0..sroa_idx.i163.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 136
  store double %i.po, ptr %.sroa.21.0..sroa_idx.i163.i, align 8
  %i.qu = add nuw nsw i64 %i.pq, 1
  store i64 %i.qu, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !460, !noalias !376
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs5RPjO8Kzn89_6uu_tee.exit.i

bb.db:                                            ; preds = %._crit_edge.i.i.i139.i
  %i.qv = icmp ult i64 %.sroa.05.0.lcssa.i.i.i140.i, %i.pq
  br i1 %i.qv, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef align 8 dereferenceable(144) %i.pr) #20, !noalias !447
  store i64 -1, ptr %i.pr, align 8, !noalias !447
  store ptr @14, ptr %.sroa.0.0.in.i.i.i.i.i.i141.i, align 8, !noalias !447
  store i64 5, ptr %.sroa.3.0.in.i.i.i.i.i.i143.i, align 8, !noalias !447
  %i.qw = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  store i64 0, ptr %i.qw, align 8, !noalias !447
  %.sroa.42.0..sroa_idx.i165.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 40
  store i64 0, ptr %.sroa.42.0..sroa_idx.i165.i, align 8, !noalias !447
  %.sroa.53.0..sroa_idx.i166.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 56
  store i64 0, ptr %.sroa.53.0..sroa_idx.i166.i, align 8, !noalias !447
  %.sroa.64.0..sroa_idx.i167.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 72
  store i64 0, ptr %.sroa.64.0..sroa_idx.i167.i, align 8, !noalias !447
  %.sroa.75.0..sroa_idx.i168.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 88
  store i64 0, ptr %.sroa.75.0..sroa_idx.i168.i, align 8, !noalias !447
  %.sroa.86.0..sroa_idx.i169.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 104
  store i64 -1, ptr %.sroa.86.0..sroa_idx.i169.i, align 8, !noalias !447
  %.sroa.97.0..sroa_idx.i170.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.97.0..sroa_idx.i170.i, align 8, !noalias !447
  %.sroa.138.0..sroa_idx.i174.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 136
  store double %i.po, ptr %.sroa.138.0..sroa_idx.i174.i, align 8, !noalias !447
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs5RPjO8Kzn89_6uu_tee.exit.i

bb.dd:                                            ; preds = %bb.db
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i.i140.i, i64 noundef %i.pq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !447
  unreachable

_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs5RPjO8Kzn89_6uu_tee.exit.i: ; preds = %bb.dc, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5RPjO8Kzn89_6uu_tee.exit.i150.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !376
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs5RPjO8Kzn89_6uu_tee.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit116.i: ; preds = %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i, %bb.cm, %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs5RPjO8Kzn89_6uu_tee.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !376
  store ptr %i.n, ptr %i.i, align 8, !noalias !376
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !376
  %i.qx = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @16, ptr noundef nonnull %i.i) #20 ; 4 uses
  %i.qy = icmp eq ptr %i.qx, null
  br i1 %i.qy, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i, label %bb.de

bb.de:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit116.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !376
  %i.qz = ptrtoint ptr %i.qx to i64               ; 2 uses
  %i.ra = and i64 %i.qz, 3
  switch i64 %i.ra, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i184.i
    i64 3, label %bb.df
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i184.i
    i64 1, label %bb.dg
  ], !prof !15

bb.df:                                            ; preds = %bb.de
  %i.rb = icmp ult ptr %i.qx, inttoptr (i64 188978561024 to ptr)
  %i.rc = and i64 %i.qz, 1095216660480
  %i.rd = icmp ne i64 %i.rc, 1095216660480
  call void @llvm.assume(i1 %i.rb)
  call void @llvm.assume(i1 %i.rd)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i184.i

bb.dg:                                            ; preds = %bb.de
  %i.re = getelementptr i8, ptr %i.qx, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.re) ]
  %i.rf = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.re, ptr %i.rf, align 8, !alias.scope !462, !noalias !376
  store i8 3, ptr %i.b, align 8, !alias.scope !462, !noalias !376
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.rf) #20
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i184.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i184.i: ; preds = %bb.dg, %bb.df, %bb.de, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !376
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i184.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit116.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !376
  call void @llvm.experimental.noalias.scope.decl(metadata !463)
  %.val.i186.i = load i64, ptr %i.n, align 8, !range !6, !alias.scope !463, !noalias !376, !noundef !5 ; 2 uses
  %i.rg = icmp eq i64 %.val.i186.i, 0
  br i1 %i.rg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit188.i, label %bb.dh

bb.dh:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i
  %i.rh = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val1.i187.i = load ptr, ptr %i.rh, align 8, !alias.scope !463, !noalias !376, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i187.i, i64 noundef %.val.i186.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !463
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit188.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit188.i: ; preds = %bb.dh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !376
  br label %.loopexit314.i.thread

_RNvMCs5RPjO8Kzn89_6uu_teeNtB2_11MultiWriter15copy_unbuffered.exit: ; preds = %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE6retainNCNvMBH_NtBH_11MultiWriter15copy_unbuffered0EBH_.exit.i
  %i.ri = call noundef i32 @close(i32 noundef %i.dh) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !376
  %i.rj = call noundef i32 @close(i32 noundef %i.df) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !376
  %i.rk = call noundef i32 @close(i32 noundef %i.db) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !376
  %i.rl = call noundef i32 @close(i32 noundef %i.cz) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !376
  br label %bb.dt

bb.di:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE10insert_mutBG_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals24ensure_stdout_not_broken(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ag) #20
  %i.rm = load i8, ptr %i.ag, align 8, !range !14, !noundef !5
  %i.rn = trunc nuw i8 %i.rm to i1
  br i1 %i.rn, label %bb.dj, label %bb.dm

bb.dj:                                            ; preds = %bb.di
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.rp = load ptr, ptr %i.ro, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.rq = ptrtoint ptr %i.rp to i64               ; 2 uses
  %i.rr = and i64 %i.rq, 3
  switch i64 %i.rr, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit13
    i64 3, label %bb.dk
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit13
    i64 1, label %bb.dl
  ], !prof !15

bb.dk:                                            ; preds = %bb.dj
  %i.rs = icmp ult ptr %i.rp, inttoptr (i64 188978561024 to ptr)
  %i.rt = and i64 %i.rq, 1095216660480
  %i.ru = icmp ne i64 %i.rt, 1095216660480
  call void @llvm.assume(i1 %i.rs)
  call void @llvm.assume(i1 %i.ru)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit13

bb.dl:                                            ; preds = %bb.dj
  %i.rv = getelementptr i8, ptr %i.rp, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rv) ]
  %i.rw = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.rv, ptr %i.rw, align 8, !alias.scope !464
  store i8 3, ptr %i.a, align 8, !alias.scope !464
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.rw) #20
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit13

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit13: ; preds = %bb.dj, %bb.dj, %bb.dk, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.dt

bb.dm:                                            ; preds = %bb.di
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ry = load i8, ptr %i.rx, align 1, !range !14, !noundef !5
end_hunk_0
begin_hunk_1_@_RNvXNtNtCs6JMX4GRUq9U_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2E_:bb.a
  br label %bb.i

bb.h:                                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5RPjO8Kzn89_6uu_tee.exit.thread20.i.i.i.i.i.i
  store i8 1, ptr %i.p, align 2, !noalias !707
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !707
  call void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %.val6.i.i.i) #20, !noalias !707
  %i.ak = load i32, ptr %i.h, align 8, !range !4, !noalias !707, !noundef !5
  %i.al = trunc nuw i32 %i.ak to i1
  br i1 %i.al, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !707
  %i.am = load ptr, ptr %i.r, align 8, !noalias !707, !nonnull !5, !noundef !5
  store ptr %i.am, ptr %i.g, align 8, !noalias !707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !707
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.f, align 8, !noalias !707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !707
  store i64 1, ptr %i.e, align 8, !noalias !707
  store ptr %.val5.i.i.i, ptr %.sroa.424.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !707
  store i64 %.val6.i.i.i, ptr %.sroa.525.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !707
  store i8 0, ptr %i.s, align 8, !noalias !707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !707
  store ptr %i.e, ptr %i.d, align 8, !noalias !707
  store ptr @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.429.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !707
  store ptr %i.g, ptr %i.t, align 8, !noalias !707
  store ptr @_RNvXs3_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.433.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !707
  %i.an = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @7, ptr noundef nonnull %i.d) #20, !noalias !707 ; 4 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !707
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = and i64 %i.ap, 3
  switch i64 %i.aq, label %.unreachabledefault [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i.i
    i64 3, label %bb.l
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i.i
    i64 1, label %bb.m
  ], !prof !15

.unreachabledefault:                              ; preds = %bb.k
  unreachable

default.unreachable:                              ; preds = %bb.q, %bb.u
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp ult ptr %i.an, inttoptr (i64 188978561024 to ptr)
  %i.as = and i64 %i.ap, 1095216660480
  %i.at = icmp ne i64 %i.as, 1095216660480
  call void @llvm.assume(i1 %i.ar)
  call void @llvm.assume(i1 %i.at)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.au = getelementptr i8, ptr %i.an, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  store ptr %i.au, ptr %i.u, align 8, !alias.scope !708, !noalias !707
  store i8 3, ptr %i.c, align 8, !alias.scope !708, !noalias !707
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #20, !noalias !707
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !707
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !707
  %.off.i.i.i.i.i = add nsw i8 %i.ae, -2
  %switch.i.i.i.i.i = icmp ult i8 %.off.i.i.i.i.i, -3
  %i.av = load ptr, ptr %i.g, align 8, !noalias !707, !nonnull !5, !noundef !5 ; 5 uses
  br i1 %switch.i.i.i.i.i, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i, label %bb.q

bb.n:                                             ; preds = %bb.i
  %i.aw = load i32, ptr %i.q, align 4, !range !10, !noalias !707, !noundef !5 ; 2 uses
  br i1 %i.ag, label %.thread.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !707
  br label %.loopexit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !709
  %i.ax = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val6.i.i.i, i64 noundef range(i64 1, 9) 1) #20, !noalias !709 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.o, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.thread15.i.i.i.i

bb.o:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val6.i.i.i) #23, !noalias !710
  unreachable

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.thread15.i.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %.val5.i.i.i, i64 range(i64 0, -9223372036854775808) %.val6.i.i.i, i1 false), !noalias !711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !707
  br label %bb.p

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i64 [ -2, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i ], [ -1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !707
  br i1 %i.ag, label %_RNCNvCs5RPjO8Kzn89_6uu_tee3tees0_0B3_.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.thread15.i.i.i.i
  %.sroa.0.021.i.i.i.i = phi i64 [ %.val6.i.i.i, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.thread15.i.i.i.i ], [ %.sroa.0.1.i.i.i.i, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i ]
  %.sroa.7.020.i.i.i.i = phi ptr [ %i.ax, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.thread15.i.i.i.i ], [ %i.av, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i ]
  %.sroa.11.019.i.i.i.i = phi i32 [ %i.aw, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.thread15.i.i.i.i ], [ undef, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %.val6.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !707
  br label %_RNCNvCs5RPjO8Kzn89_6uu_tee3tees0_0B3_.exit.i.i.i.i

bb.q:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !707
  %i.az = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ba = and i64 %i.az, 3
  switch i64 %i.ba, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i
    i64 3, label %bb.r
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i
    i64 1, label %bb.s
  ], !prof !15

bb.r:                                             ; preds = %bb.q
  %i.bb = icmp ult ptr %i.av, inttoptr (i64 188978561024 to ptr)
  %i.bc = and i64 %i.az, 1095216660480
  %i.bd = icmp ne i64 %i.bc, 1095216660480
  call void @llvm.assume(i1 %i.bb)
  call void @llvm.assume(i1 %i.bd)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.be = getelementptr i8, ptr %i.av, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  store ptr %i.be, ptr %i.v, align 8, !alias.scope !712, !noalias !707
  store i8 3, ptr %i.b, align 8, !alias.scope !712, !noalias !707
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #20, !noalias !707
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !707
  br label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i

_RNCNvCs5RPjO8Kzn89_6uu_tee3tees0_0B3_.exit.i.i.i.i: ; preds = %bb.p, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i
  %.sroa.0.014.i.i.i.i = phi i64 [ %.sroa.0.021.i.i.i.i, %bb.p ], [ %.sroa.0.1.i.i.i.i, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.7.013.i.i.i.i = phi ptr [ %.sroa.7.020.i.i.i.i, %bb.p ], [ %i.av, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.11.012.i.i.i.i = phi i32 [ %.sroa.11.019.i.i.i.i, %bb.p ], [ undef, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i ]
  switch i64 %.sroa.0.014.i.i.i.i, label %.loopexit [
    i64 -2, label %bb.b
    i64 -1, label %bb.t
  ]

bb.t:                                             ; preds = %_RNCNvCs5RPjO8Kzn89_6uu_tee3tees0_0B3_.exit.i.i.i.i
  %.val.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !700, !noalias !713, !noundef !5 ; 4 uses
  %i.bf = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.bf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !714
  %i.bg = ptrtoint ptr %.val.i.i.i.i.i to i64     ; 2 uses
  %i.bh = and i64 %i.bg, 3
  switch i64 %i.bh, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i
    i64 3, label %bb.v
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i
    i64 1, label %bb.w
  ], !prof !15

bb.v:                                             ; preds = %bb.u
  %i.bi = icmp ult ptr %.val.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.bj = and i64 %i.bg, 1095216660480
  %i.bk = icmp ne i64 %i.bj, 1095216660480
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 %i.bk)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bl = getelementptr i8, ptr %.val.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !alias.scope !715, !noalias !714
  store i8 3, ptr %i.a, align 8, !alias.scope !715, !noalias !714
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bm) #20, !noalias !714
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !714
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i, %bb.t
  store ptr %.sroa.7.013.i.i.i.i, ptr %i.k, align 8, !alias.scope !700, !noalias !713
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEEB1i_.exit

.loopexit:                                        ; preds = %_RNCNvCs5RPjO8Kzn89_6uu_tee3tees0_0B3_.exit.i.i.i.i, %.thread.i.i.i.i
  %.val6.i.i.i76 = phi i64 [ 0, %.thread.i.i.i.i ], [ %.val6.i.i.i, %_RNCNvCs5RPjO8Kzn89_6uu_tee3tees0_0B3_.exit.i.i.i.i ]
  %.sroa.13.0 = phi i32 [ %i.aw, %.thread.i.i.i.i ], [ %.sroa.11.012.i.i.i.i, %_RNCNvCs5RPjO8Kzn89_6uu_tee3tees0_0B3_.exit.i.i.i.i ]
  %.sroa.8.0 = phi ptr [ inttoptr (i64 1 to ptr), %.thread.i.i.i.i ], [ %.sroa.7.013.i.i.i.i, %_RNCNvCs5RPjO8Kzn89_6uu_tee3tees0_0B3_.exit.i.i.i.i ]
  %.sroa.0.0 = phi i64 [ 0, %.thread.i.i.i.i ], [ %.sroa.0.014.i.i.i.i, %_RNCNvCs5RPjO8Kzn89_6uu_tee3tees0_0B3_.exit.i.i.i.i ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val6.i.i.i76, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.13.0, ptr %.sroa.7.0..sroa_idx, align 4
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEEB1i_.exit
  ret void

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEEB1i_.exit: ; preds = %bb.b, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i
  store i64 -1, ptr %0, align 8
  br label %bb.x
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef range(i32 0, -1) i32 @_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !range !4, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.d = trunc nuw i32 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.c, align 4, !range !10, !noundef !5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_RNvXs3_NtNtNtCs2vKOLqTMYjT_3std3sys2fd4unixNtB5_8FileDescNtNtNtNtBb_2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRINtNtB8_6result6ResultjNtNtNtNtCscC7ZI6NG8RX_6rustix7backend2io5errno5ErrnoENtB6_5Debug3fmtCs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  %i.d = load i16, ptr %i.c, align 8, !range !720, !alias.scope !719, !noundef !5
  %i.e = trunc nuw i16 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !721
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store ptr %i.f, ptr %i.a, align 8, !noalias !721
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !721
  br label %_RNvXst_NtCs6JMX4GRUq9U_4core6resultINtB5_6ResultjNtNtNtNtCscC7ZI6NG8RX_6rustix7backend2io5errno5ErrnoENtNtB7_3fmt5Debug3fmtCs5RPjO8Kzn89_6uu_tee.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !721
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %i.b, align 8, !noalias !721
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 2, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !721
  br label %_RNvXst_NtCs6JMX4GRUq9U_4core6resultINtB5_6ResultjNtNtNtNtCscC7ZI6NG8RX_6rustix7backend2io5errno5ErrnoENtNtB7_3fmt5Debug3fmtCs5RPjO8Kzn89_6uu_tee.exit

_RNvXst_NtCs6JMX4GRUq9U_4core6resultINtB5_6ResultjNtNtNtNtCscC7ZI6NG8RX_6rustix7backend2io5errno5ErrnoENtNtB7_3fmt5Debug3fmtCs5RPjO8Kzn89_6uu_tee.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtNtCscC7ZI6NG8RX_6rustix7backend2io5errno5ErrnoNtB6_5Debug3fmtCs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !722, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtCscC7ZI6NG8RX_6rustix2io5errnoNtNtNtNtB9_7backend2io5errno5ErrnoNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #20
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRjNtB6_5Debug3fmtCs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !725, !noundef !5 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs6_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #20
  br label %_RNvXsZ_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #20
  br label %_RNvXsZ_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs8_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #20
  br label %_RNvXsZ_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_5Debug3fmt.exit

_RNvXsZ_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser10parse_ref_Cs5RPjO8Kzn89_6uu_tee(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 range(i8 0, 3) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser9parse_ref(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #20
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !8, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !728
  %i.g = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef 8) #20, !noalias !728 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !17

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #23, !noalias !728
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @50, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @43, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser15possible_valuesCs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser15possible_values(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) #20
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser7type_idCs5RPjO8Kzn89_6uu_tee(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @43, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser9clone_anyCs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750)
  %i.d = mul nuw nsw i64 %.val1, 72               ; 2 uses
  %i.e = icmp eq i64 %.val1, 0
  br i1 %i.e, label %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !751
  %i.f = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef range(i64 1, 9) 8) #20, !noalias !751 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.d) #23, !noalias !752
  unreachable

.lr.ph.i.i.i:                                     ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  %i.h = getelementptr inbounds nuw [72 x i8], ptr %.val, i64 %.val1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c
end_hunk_1
