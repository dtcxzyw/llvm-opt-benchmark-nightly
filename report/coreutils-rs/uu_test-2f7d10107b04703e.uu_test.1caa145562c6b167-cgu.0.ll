Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_test-2f7d10107b04703e.uu_test.1caa145562c6b167-cgu.0?download=true
inline.NumInlined: 491
inline.NumDeleted: 233
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs0_NtCs2szWGFz6wmN_7uu_test5errorNtB5_10ParseErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt:bb.a
  %.not.i155 = icmp slt i64 %i.bd, 0
  br i1 %.not.i155, label %bb.aj, label %bb.g, !prof !17

bb.g:                                             ; preds = %bb.f
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.thread499, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i156

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i156: ; preds = %bb.g
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1443
  %i.bf = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bd, i64 noundef range(i64 1, 9) 1) #21, !noalias !1443 ; 18 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.aj, label %bb.ak

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 0, ptr %i.w, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !4, !noundef !4
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !4 ; 16 uses
  %.not.i159 = icmp slt i64 %i.bk, 0
  br i1 %.not.i159, label %bb.bc, label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.h
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.thread521, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i160

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i160: ; preds = %bb.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1444
  %i.bm = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bk, i64 noundef range(i64 1, 9) 1) #21, !noalias !1444 ; 18 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.bc, label %bb.bd

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 0, ptr %i.q, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %.sroa.57.0..sroa_idx, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !4, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !noundef !4 ; 16 uses
  %.not.i163 = icmp slt i64 %i.br, 0
  br i1 %.not.i163, label %bb.bv, label %bb.k, !prof !17

bb.k:                                             ; preds = %bb.j
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %.thread543, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i164

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i164: ; preds = %bb.k
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1445
  %i.bt = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.br, i64 noundef range(i64 1, 9) 1) #21, !noalias !1445 ; 18 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.bv, label %bb.bw

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.54.0..sroa_idx, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !4, !noundef !4
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !noundef !4 ; 16 uses
  %.not.i167 = icmp slt i64 %i.by, 0
  br i1 %.not.i167, label %bb.co, label %bb.m, !prof !17

bb.m:                                             ; preds = %bb.l
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %.thread565, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i168

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i168: ; preds = %bb.m
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1446
  %i.ca = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.by, i64 noundef range(i64 1, 9) 1) #21, !noalias !1446 ; 18 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.co, label %bb.cp

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !4, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !4 ; 16 uses
  %.not.i171 = icmp slt i64 %i.cf, 0
  br i1 %.not.i171, label %bb.dh, label %bb.o, !prof !17

bb.o:                                             ; preds = %bb.n
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %.thread587, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i172

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i172: ; preds = %bb.o
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1447
  %i.ch = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.cf, i64 noundef range(i64 1, 9) 1) #21, !noalias !1447 ; 18 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.dh, label %bb.di

bb.p:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit381, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit341, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit301, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit261, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit221, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit181, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit
  %.sroa.0.1.in = phi i1 [ %i.aq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit ], [ %i.er, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit181 ], [ %i.hc, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit221 ], [ %i.jn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit261 ], [ %i.ly, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit301 ], [ %i.oj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit341 ], [ %i.qu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit381 ]
  ret i1 %.sroa.0.1.in

bb.q:                                             ; preds = %bb.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.d ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.aw) #24
  unreachable

bb.r:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull align 1 %i.au, i64 %i.aw, i1 false)
  %cond = icmp eq i64 %i.aw, 1
  %i.cj = load i8, ptr %i.ay, align 1, !alias.scope !1448, !noalias !1449 ; 2 uses
  br i1 %cond, label %bb.s, label %thread-pre-split.i

bb.s:                                             ; preds = %bb.r
  switch i8 %i.cj, label %bb.z [
    i8 43, label %.thread
    i8 45, label %.thread
  ]

thread-pre-split.i:                               ; preds = %bb.r
  switch i8 %i.cj, label %bb.z [
    i8 43, label %bb.t
    i8 45, label %bb.u
  ]

bb.t:                                             ; preds = %thread-pre-split.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.cl = add nsw i64 %i.aw, -1
  br label %bb.z

bb.u:                                             ; preds = %thread-pre-split.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %i.cn = add nsw i64 %i.aw, -1                   ; 2 uses
  %i.co = icmp samesign ult i64 %i.aw, 17
  br i1 %i.co, label %.lr.ph141.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u, %bb.x
  %.sroa.0.1136.i = phi ptr [ %i.cp, %bb.x ], [ %i.cm, %bb.u ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.cq, %bb.x ], [ %i.cn, %bb.u ]
  %.sroa.084.0134.i = phi i64 [ %i.db, %bb.x ], [ 0, %bb.u ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.cq = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.cr = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.cs = extractvalue { i64, i1 } %i.cr, 0
  %i.ct = extractvalue { i64, i1 } %i.cr, 1
  br i1 %i.ct, label %.thread, label %bb.v, !prof !13

bb.v:                                             ; preds = %.lr.ph.i
  %i.cu = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !1448, !noalias !1449, !noundef !4
  %i.cv = zext i8 %i.cu to i32
  %i.cw = add nsw i32 %i.cv, -48                  ; 2 uses
  %i.cx = icmp ult i32 %i.cw, 10
  br i1 %i.cx, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.cy = zext nneg i32 %i.cw to i64
  %i.cz = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.cs, i64 %i.cy) ; 2 uses
  %i.da = extractvalue { i64, i1 } %i.cz, 1
  br i1 %i.da, label %.thread, label %bb.x, !prof !13

bb.x:                                             ; preds = %bb.w
  %i.db = extractvalue { i64, i1 } %i.cz, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.cq, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %bb.u, %bb.y
  %.sroa.0.2140.i = phi ptr [ %i.di, %bb.y ], [ %i.cm, %bb.u ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.dh, %bb.y ], [ %i.cn, %bb.u ]
  %.sroa.084.2138.i = phi i64 [ %i.dk, %bb.y ], [ 0, %bb.u ]
  %i.dc = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !1448, !noalias !1449, !noundef !4
  %i.dd = zext i8 %i.dc to i32
  %i.de = add nsw i32 %i.dd, -48                  ; 2 uses
  %i.df = icmp ult i32 %i.de, 10
  br i1 %i.df, label %bb.y, label %.thread

bb.y:                                             ; preds = %.lr.ph141.i
  %i.dg = mul i64 %.sroa.084.2138.i, 10
  %i.dh = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.dj = zext nneg i32 %i.de to i64
  %i.dk = sub i64 %i.dg, %i.dj                    ; 2 uses
  %.not103.i = icmp eq i64 %i.dh, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.z:                                             ; preds = %bb.s, %bb.t, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.cl, %bb.t ], [ %i.aw, %thread-pre-split.i ], [ %i.aw, %bb.s ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.ck, %bb.t ], [ %i.ay, %thread-pre-split.i ], [ %i.ay, %bb.s ] ; 2 uses
  %i.dl = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.dl, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.z
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.z, %bb.ac
  %.sroa.0.3145.i = phi ptr [ %i.dm, %bb.ac ], [ %.sroa.0.0.i, %bb.z ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.dn, %bb.ac ], [ %.sroa.26.0.i, %bb.z ]
  %.sroa.084.3143.i = phi i64 [ %i.dy, %bb.ac ], [ 0, %bb.z ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.dn = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.do = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.dp = extractvalue { i64, i1 } %i.do, 0
  %i.dq = extractvalue { i64, i1 } %i.do, 1
  br i1 %i.dq, label %.thread, label %bb.aa, !prof !13

bb.aa:                                            ; preds = %.preheader111.i
  %i.dr = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !1448, !noalias !1449, !noundef !4
  %i.ds = zext i8 %i.dr to i32
  %i.dt = add nsw i32 %i.ds, -48                  ; 2 uses
  %i.du = icmp ult i32 %i.dt, 10
  br i1 %i.du, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.dv = zext nneg i32 %i.dt to i64
  %i.dw = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.dp, i64 %i.dv) ; 2 uses
  %i.dx = extractvalue { i64, i1 } %i.dw, 1
  br i1 %i.dx, label %.thread, label %bb.ac, !prof !13

bb.ac:                                            ; preds = %bb.ab
  %i.dy = extractvalue { i64, i1 } %i.dw, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.dn, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.ad
  %.sroa.0.4149.i = phi ptr [ %i.ef, %bb.ad ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.ee, %bb.ad ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.eh, %bb.ad ], [ 0, %.preheader.i ]
  %i.dz = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !1448, !noalias !1449, !noundef !4
  %i.ea = zext i8 %i.dz to i32
  %i.eb = add nsw i32 %i.ea, -48                  ; 2 uses
  %i.ec = icmp ult i32 %i.eb, 10
  br i1 %i.ec, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %.lr.ph150.i
  %i.ed = mul i64 %.sroa.084.4147.i, 10
  %i.ee = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.eg = zext nneg i32 %i.eb to i64
  %i.eh = add i64 %i.ed, %i.eg                    ; 2 uses
  %.not105.i = icmp eq i64 %i.ee, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.thread:                                          ; preds = %.lr.ph.i, %bb.w, %bb.v, %.lr.ph141.i, %.preheader111.i, %bb.aa, %bb.ab, %.lr.ph150.i, %bb.s, %bb.s, %bb.e
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.e ], [ %i.ay, %.preheader111.i ], [ %i.ay, %.lr.ph150.i ], [ %i.ay, %bb.s ], [ %i.ay, %.lr.ph141.i ], [ %i.ay, %bb.s ], [ %i.ay, %bb.ab ], [ %i.ay, %bb.aa ], [ %i.ay, %bb.v ], [ %i.ay, %bb.w ], [ %i.ay, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.aw) #20
  %i.ei = load i8, ptr %i.ah, align 8, !range !18, !noundef !4
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.ag, label %bb.ah

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.x, %bb.y, %bb.ac, %bb.ad, %.preheader.i
  %.sroa.15385.0 = phi i64 [ %i.dy, %bb.ac ], [ %i.dk, %bb.y ], [ %i.eh, %bb.ad ], [ 0, %.preheader.i ], [ %i.db, %bb.x ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 5, i64 noundef %.sroa.15385.0) #21
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ah, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.ek = phi ptr [ %.ph, %bb.ah ], [ %i.ay, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.af) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.el = icmp eq i64 %i.aw, 0
  br i1 %i.el, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit178, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ek, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1450
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit178

bb.ag:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 %i.aw, ptr %i.ag, align 8
  %.sroa.5.0..sroa_idx382 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %.ph, ptr %.sroa.5.0..sroa_idx382, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %i.aw, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ag) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.af) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit178

bb.ah:                                            ; preds = %.thread
  %i.em = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.en = load double, ptr %i.em, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 5, double noundef %i.en) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.ae

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit178: ; preds = %bb.af, %bb.ae, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %i.aj, ptr %i.ae, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.437.0..sroa_idx, align 8
  %i.eo = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !nonnull !4, !align !9, !noundef !4
  %i.er = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.eo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.eq, ptr noundef nonnull @35, ptr noundef nonnull %i.ae) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  %.val.i179 = load i64, ptr %i.aj, align 8, !range !5, !alias.scope !1451, !noundef !4 ; 2 uses
  %i.es = icmp eq i64 %.val.i179, 0
  br i1 %i.es, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit181, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit178
  %i.et = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.val1.i180 = load ptr, ptr %i.et, align 8, !alias.scope !1451, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i180, i64 noundef %.val.i179, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1451
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit181

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit181: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit178, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.p

bb.aj:                                            ; preds = %bb.f, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i156
  %.sroa.4424.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i156 ], [ 0, %bb.f ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4424.0.ph, i64 %i.bd) #24
  unreachable

bb.ak:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i156
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr nonnull align 1 %i.bb, i64 %i.bd, i1 false)
  %cond603 = icmp eq i64 %i.bd, 1
  %i.eu = load i8, ptr %i.bf, align 1, !alias.scope !1452, !noalias !1453 ; 2 uses
  br i1 %cond603, label %bb.al, label %thread-pre-split.i213

bb.al:                                            ; preds = %bb.ak
  switch i8 %i.eu, label %bb.as [
    i8 43, label %.thread499
    i8 45, label %.thread499
  ]

thread-pre-split.i213:                            ; preds = %bb.ak
  switch i8 %i.eu, label %bb.as [
    i8 43, label %bb.am
    i8 45, label %bb.an
  ]

bb.am:                                            ; preds = %thread-pre-split.i213
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.ew = add nsw i64 %i.bd, -1
  br label %bb.as

bb.an:                                            ; preds = %thread-pre-split.i213
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  %i.ey = add nsw i64 %i.bd, -1                   ; 2 uses
  %i.ez = icmp samesign ult i64 %i.bd, 17
  br i1 %i.ez, label %.lr.ph141.i193, label %.lr.ph.i183

.lr.ph.i183:                                      ; preds = %bb.an, %bb.aq
  %.sroa.0.1136.i184 = phi ptr [ %i.fa, %bb.aq ], [ %i.ex, %bb.an ] ; 2 uses
  %.sroa.26.1135.i185 = phi i64 [ %i.fb, %bb.aq ], [ %i.ey, %bb.an ]
  %.sroa.084.0134.i186 = phi i64 [ %i.fm, %bb.aq ], [ 0, %bb.an ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i184, i64 1
  %i.fb = add nsw i64 %.sroa.26.1135.i185, -1     ; 2 uses
  %i.fc = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i186, i64 10) ; 2 uses
  %i.fd = extractvalue { i64, i1 } %i.fc, 0
  %i.fe = extractvalue { i64, i1 } %i.fc, 1
  br i1 %i.fe, label %.thread499, label %bb.ao, !prof !13

bb.ao:                                            ; preds = %.lr.ph.i183
  %i.ff = load i8, ptr %.sroa.0.1136.i184, align 1, !alias.scope !1452, !noalias !1453, !noundef !4
  %i.fg = zext i8 %i.ff to i32
  %i.fh = add nsw i32 %i.fg, -48                  ; 2 uses
  %i.fi = icmp ult i32 %i.fh, 10
  br i1 %i.fi, label %bb.ap, label %.thread499

bb.ap:                                            ; preds = %bb.ao
  %i.fj = zext nneg i32 %i.fh to i64
  %i.fk = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.fd, i64 %i.fj) ; 2 uses
  %i.fl = extractvalue { i64, i1 } %i.fk, 1
  br i1 %i.fl, label %.thread499, label %bb.aq, !prof !13

bb.aq:                                            ; preds = %bb.ap
  %i.fm = extractvalue { i64, i1 } %i.fk, 0       ; 2 uses
  %.not102.i188 = icmp eq i64 %i.fb, 0
  br i1 %.not102.i188, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit215, label %.lr.ph.i183

.lr.ph141.i193:                                   ; preds = %bb.an, %bb.ar
  %.sroa.0.2140.i194 = phi ptr [ %i.ft, %bb.ar ], [ %i.ex, %bb.an ] ; 2 uses
  %.sroa.26.2139.i195 = phi i64 [ %i.fs, %bb.ar ], [ %i.ey, %bb.an ]
  %.sroa.084.2138.i196 = phi i64 [ %i.fv, %bb.ar ], [ 0, %bb.an ]
  %i.fn = load i8, ptr %.sroa.0.2140.i194, align 1, !alias.scope !1452, !noalias !1453, !noundef !4
  %i.fo = zext i8 %i.fn to i32
  %i.fp = add nsw i32 %i.fo, -48                  ; 2 uses
  %i.fq = icmp ult i32 %i.fp, 10
  br i1 %i.fq, label %bb.ar, label %.thread499

bb.ar:                                            ; preds = %.lr.ph141.i193
  %i.fr = mul i64 %.sroa.084.2138.i196, 10
  %i.fs = add nsw i64 %.sroa.26.2139.i195, -1     ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i194, i64 1
  %i.fu = zext nneg i32 %i.fp to i64
  %i.fv = sub i64 %i.fr, %i.fu                    ; 2 uses
  %.not103.i197 = icmp eq i64 %i.fs, 0
  br i1 %.not103.i197, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit215, label %.lr.ph141.i193

bb.as:                                            ; preds = %bb.al, %bb.am, %thread-pre-split.i213
  %.sroa.26.0.i198 = phi i64 [ %i.ew, %bb.am ], [ %i.bd, %thread-pre-split.i213 ], [ %i.bd, %bb.al ] ; 4 uses
  %.sroa.0.0.i199 = phi ptr [ %i.ev, %bb.am ], [ %i.bf, %thread-pre-split.i213 ], [ %i.bf, %bb.al ] ; 2 uses
  %i.fw = icmp samesign ult i64 %.sroa.26.0.i198, 16
  br i1 %i.fw, label %.preheader.i206, label %.preheader111.i200

.preheader.i206:                                  ; preds = %bb.as
  %.not105146.i207 = icmp eq i64 %.sroa.26.0.i198, 0
  br i1 %.not105146.i207, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit215, label %.lr.ph150.i208

.preheader111.i200:                               ; preds = %bb.as, %bb.av
  %.sroa.0.3145.i201 = phi ptr [ %i.fx, %bb.av ], [ %.sroa.0.0.i199, %bb.as ] ; 2 uses
  %.sroa.26.3144.i202 = phi i64 [ %i.fy, %bb.av ], [ %.sroa.26.0.i198, %bb.as ]
  %.sroa.084.3143.i203 = phi i64 [ %i.gj, %bb.av ], [ 0, %bb.as ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i201, i64 1
  %i.fy = add nsw i64 %.sroa.26.3144.i202, -1     ; 2 uses
  %i.fz = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i203, i64 10) ; 2 uses
  %i.ga = extractvalue { i64, i1 } %i.fz, 0
  %i.gb = extractvalue { i64, i1 } %i.fz, 1
  br i1 %i.gb, label %.thread499, label %bb.at, !prof !13

bb.at:                                            ; preds = %.preheader111.i200
  %i.gc = load i8, ptr %.sroa.0.3145.i201, align 1, !alias.scope !1452, !noalias !1453, !noundef !4
  %i.gd = zext i8 %i.gc to i32
  %i.ge = add nsw i32 %i.gd, -48                  ; 2 uses
  %i.gf = icmp ult i32 %i.ge, 10
  br i1 %i.gf, label %bb.au, label %.thread499

bb.au:                                            ; preds = %bb.at
  %i.gg = zext nneg i32 %i.ge to i64
  %i.gh = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ga, i64 %i.gg) ; 2 uses
  %i.gi = extractvalue { i64, i1 } %i.gh, 1
  br i1 %i.gi, label %.thread499, label %bb.av, !prof !13

bb.av:                                            ; preds = %bb.au
  %i.gj = extractvalue { i64, i1 } %i.gh, 0       ; 2 uses
  %.not104.i205 = icmp eq i64 %i.fy, 0
  br i1 %.not104.i205, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit215, label %.preheader111.i200

.lr.ph150.i208:                                   ; preds = %.preheader.i206, %bb.aw
  %.sroa.0.4149.i209 = phi ptr [ %i.gq, %bb.aw ], [ %.sroa.0.0.i199, %.preheader.i206 ] ; 2 uses
  %.sroa.26.4148.i210 = phi i64 [ %i.gp, %bb.aw ], [ %.sroa.26.0.i198, %.preheader.i206 ]
  %.sroa.084.4147.i211 = phi i64 [ %i.gs, %bb.aw ], [ 0, %.preheader.i206 ]
  %i.gk = load i8, ptr %.sroa.0.4149.i209, align 1, !alias.scope !1452, !noalias !1453, !noundef !4
  %i.gl = zext i8 %i.gk to i32
  %i.gm = add nsw i32 %i.gl, -48                  ; 2 uses
  %i.gn = icmp ult i32 %i.gm, 10
  br i1 %i.gn, label %bb.aw, label %.thread499

bb.aw:                                            ; preds = %.lr.ph150.i208
  %i.go = mul i64 %.sroa.084.4147.i211, 10
  %i.gp = add nsw i64 %.sroa.26.4148.i210, -1     ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i209, i64 1
  %i.gr = zext nneg i32 %i.gm to i64
  %i.gs = add i64 %i.go, %i.gr                    ; 2 uses
  %.not105.i212 = icmp eq i64 %i.gp, 0
  br i1 %.not105.i212, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit215, label %.lr.ph150.i208

.thread499:                                       ; preds = %.lr.ph.i183, %bb.ap, %bb.ao, %.lr.ph141.i193, %.preheader111.i200, %bb.at, %bb.au, %.lr.ph150.i208, %bb.al, %bb.al, %bb.g
  %.ph507 = phi ptr [ inttoptr (i64 1 to ptr), %bb.g ], [ %i.bf, %.preheader111.i200 ], [ %i.bf, %.lr.ph150.i208 ], [ %i.bf, %bb.al ], [ %i.bf, %.lr.ph141.i193 ], [ %i.bf, %bb.al ], [ %i.bf, %bb.au ], [ %i.bf, %bb.at ], [ %i.bf, %bb.ao ], [ %i.bf, %bb.ap ], [ %i.bf, %.lr.ph.i183 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph507, i64 noundef %i.bd) #20
  %i.gt = load i8, ptr %i.ab, align 8, !range !18, !noundef !4
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.az, label %bb.ba

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit215: ; preds = %bb.aq, %bb.ar, %bb.av, %bb.aw, %.preheader.i206
  %.sroa.15392.0 = phi i64 [ %i.gj, %bb.av ], [ %i.fv, %bb.ar ], [ %i.gs, %bb.aw ], [ 0, %.preheader.i206 ], [ %i.fm, %bb.aq ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 8, i64 noundef %.sroa.15392.0) #21
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ba, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit215
  %i.gv = phi ptr [ %.ph507, %bb.ba ], [ %i.bf, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit215 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 25, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.z) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.gw = icmp eq i64 %i.bd, 0
  br i1 %i.gw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit218, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gv, i64 noundef %i.bd, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1454
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit218

bb.az:                                            ; preds = %.thread499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 %i.bd, ptr %i.aa, align 8
  %.sroa.5387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.ph507, ptr %.sroa.5387.0..sroa_idx, align 8
  %.sroa.8388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %i.bd, ptr %.sroa.8388.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aa) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 25, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.z) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit218

bb.ba:                                            ; preds = %.thread499
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.gy = load double, ptr %i.gx, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 8, double noundef %i.gy) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.ax

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit218: ; preds = %bb.ay, %bb.ax, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.ad, ptr %i.y, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.456.0..sroa_idx, align 8
  %i.gz = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !nonnull !4, !align !9, !noundef !4
  %i.hc = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.gz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hb, ptr noundef nonnull @35, ptr noundef nonnull %i.y) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  %.val.i219 = load i64, ptr %i.ad, align 8, !range !5, !alias.scope !1455, !noundef !4 ; 2 uses
  %i.hd = icmp eq i64 %.val.i219, 0
  br i1 %i.hd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit221, label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit218
  %i.he = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.val1.i220 = load ptr, ptr %i.he, align 8, !alias.scope !1455, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i220, i64 noundef %.val.i219, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1455
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit221

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit221: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit218, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.p

bb.bc:                                            ; preds = %bb.h, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i160
  %.sroa.4428.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i160 ], [ 0, %bb.h ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4428.0.ph, i64 %i.bk) #24
  unreachable

bb.bd:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i160
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull align 1 %i.bi, i64 %i.bk, i1 false)
  %cond604 = icmp eq i64 %i.bk, 1
  %i.hf = load i8, ptr %i.bm, align 1, !alias.scope !1456, !noalias !1457 ; 2 uses
  br i1 %cond604, label %bb.be, label %thread-pre-split.i253

bb.be:                                            ; preds = %bb.bd
  switch i8 %i.hf, label %bb.bl [
    i8 43, label %.thread521
    i8 45, label %.thread521
  ]

thread-pre-split.i253:                            ; preds = %bb.bd
  switch i8 %i.hf, label %bb.bl [
    i8 43, label %bb.bf
    i8 45, label %bb.bg
  ]

bb.bf:                                            ; preds = %thread-pre-split.i253
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.hh = add nsw i64 %i.bk, -1
  br label %bb.bl

bb.bg:                                            ; preds = %thread-pre-split.i253
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 2 uses
  %i.hj = add nsw i64 %i.bk, -1                   ; 2 uses
  %i.hk = icmp samesign ult i64 %i.bk, 17
  br i1 %i.hk, label %.lr.ph141.i233, label %.lr.ph.i223

.lr.ph.i223:                                      ; preds = %bb.bg, %bb.bj
  %.sroa.0.1136.i224 = phi ptr [ %i.hl, %bb.bj ], [ %i.hi, %bb.bg ] ; 2 uses
  %.sroa.26.1135.i225 = phi i64 [ %i.hm, %bb.bj ], [ %i.hj, %bb.bg ]
  %.sroa.084.0134.i226 = phi i64 [ %i.hx, %bb.bj ], [ 0, %bb.bg ]
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i224, i64 1
  %i.hm = add nsw i64 %.sroa.26.1135.i225, -1     ; 2 uses
  %i.hn = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i226, i64 10) ; 2 uses
  %i.ho = extractvalue { i64, i1 } %i.hn, 0
  %i.hp = extractvalue { i64, i1 } %i.hn, 1
  br i1 %i.hp, label %.thread521, label %bb.bh, !prof !13

bb.bh:                                            ; preds = %.lr.ph.i223
  %i.hq = load i8, ptr %.sroa.0.1136.i224, align 1, !alias.scope !1456, !noalias !1457, !noundef !4
  %i.hr = zext i8 %i.hq to i32
  %i.hs = add nsw i32 %i.hr, -48                  ; 2 uses
  %i.ht = icmp ult i32 %i.hs, 10
  br i1 %i.ht, label %bb.bi, label %.thread521

bb.bi:                                            ; preds = %bb.bh
  %i.hu = zext nneg i32 %i.hs to i64
  %i.hv = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ho, i64 %i.hu) ; 2 uses
  %i.hw = extractvalue { i64, i1 } %i.hv, 1
  br i1 %i.hw, label %.thread521, label %bb.bj, !prof !13

bb.bj:                                            ; preds = %bb.bi
  %i.hx = extractvalue { i64, i1 } %i.hv, 0       ; 2 uses
  %.not102.i228 = icmp eq i64 %i.hm, 0
  br i1 %.not102.i228, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit255, label %.lr.ph.i223

.lr.ph141.i233:                                   ; preds = %bb.bg, %bb.bk
  %.sroa.0.2140.i234 = phi ptr [ %i.ie, %bb.bk ], [ %i.hi, %bb.bg ] ; 2 uses
  %.sroa.26.2139.i235 = phi i64 [ %i.id, %bb.bk ], [ %i.hj, %bb.bg ]
  %.sroa.084.2138.i236 = phi i64 [ %i.ig, %bb.bk ], [ 0, %bb.bg ]
  %i.hy = load i8, ptr %.sroa.0.2140.i234, align 1, !alias.scope !1456, !noalias !1457, !noundef !4
  %i.hz = zext i8 %i.hy to i32
  %i.ia = add nsw i32 %i.hz, -48                  ; 2 uses
  %i.ib = icmp ult i32 %i.ia, 10
  br i1 %i.ib, label %bb.bk, label %.thread521

bb.bk:                                            ; preds = %.lr.ph141.i233
  %i.ic = mul i64 %.sroa.084.2138.i236, 10
  %i.id = add nsw i64 %.sroa.26.2139.i235, -1     ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i234, i64 1
  %i.if = zext nneg i32 %i.ia to i64
  %i.ig = sub i64 %i.ic, %i.if                    ; 2 uses
  %.not103.i237 = icmp eq i64 %i.id, 0
  br i1 %.not103.i237, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit255, label %.lr.ph141.i233

bb.bl:                                            ; preds = %bb.be, %bb.bf, %thread-pre-split.i253
  %.sroa.26.0.i238 = phi i64 [ %i.hh, %bb.bf ], [ %i.bk, %thread-pre-split.i253 ], [ %i.bk, %bb.be ] ; 4 uses
  %.sroa.0.0.i239 = phi ptr [ %i.hg, %bb.bf ], [ %i.bm, %thread-pre-split.i253 ], [ %i.bm, %bb.be ] ; 2 uses
  %i.ih = icmp samesign ult i64 %.sroa.26.0.i238, 16
  br i1 %i.ih, label %.preheader.i246, label %.preheader111.i240

.preheader.i246:                                  ; preds = %bb.bl
  %.not105146.i247 = icmp eq i64 %.sroa.26.0.i238, 0
  br i1 %.not105146.i247, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit255, label %.lr.ph150.i248

.preheader111.i240:                               ; preds = %bb.bl, %bb.bo
  %.sroa.0.3145.i241 = phi ptr [ %i.ii, %bb.bo ], [ %.sroa.0.0.i239, %bb.bl ] ; 2 uses
  %.sroa.26.3144.i242 = phi i64 [ %i.ij, %bb.bo ], [ %.sroa.26.0.i238, %bb.bl ]
  %.sroa.084.3143.i243 = phi i64 [ %i.iu, %bb.bo ], [ 0, %bb.bl ]
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i241, i64 1
  %i.ij = add nsw i64 %.sroa.26.3144.i242, -1     ; 2 uses
  %i.ik = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i243, i64 10) ; 2 uses
  %i.il = extractvalue { i64, i1 } %i.ik, 0
  %i.im = extractvalue { i64, i1 } %i.ik, 1
  br i1 %i.im, label %.thread521, label %bb.bm, !prof !13

bb.bm:                                            ; preds = %.preheader111.i240
  %i.in = load i8, ptr %.sroa.0.3145.i241, align 1, !alias.scope !1456, !noalias !1457, !noundef !4
  %i.io = zext i8 %i.in to i32
  %i.ip = add nsw i32 %i.io, -48                  ; 2 uses
  %i.iq = icmp ult i32 %i.ip, 10
  br i1 %i.iq, label %bb.bn, label %.thread521

bb.bn:                                            ; preds = %bb.bm
  %i.ir = zext nneg i32 %i.ip to i64
  %i.is = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.il, i64 %i.ir) ; 2 uses
  %i.it = extractvalue { i64, i1 } %i.is, 1
  br i1 %i.it, label %.thread521, label %bb.bo, !prof !13

bb.bo:                                            ; preds = %bb.bn
  %i.iu = extractvalue { i64, i1 } %i.is, 0       ; 2 uses
  %.not104.i245 = icmp eq i64 %i.ij, 0
  br i1 %.not104.i245, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit255, label %.preheader111.i240

.lr.ph150.i248:                                   ; preds = %.preheader.i246, %bb.bp
  %.sroa.0.4149.i249 = phi ptr [ %i.jb, %bb.bp ], [ %.sroa.0.0.i239, %.preheader.i246 ] ; 2 uses
  %.sroa.26.4148.i250 = phi i64 [ %i.ja, %bb.bp ], [ %.sroa.26.0.i238, %.preheader.i246 ]
  %.sroa.084.4147.i251 = phi i64 [ %i.jd, %bb.bp ], [ 0, %.preheader.i246 ]
  %i.iv = load i8, ptr %.sroa.0.4149.i249, align 1, !alias.scope !1456, !noalias !1457, !noundef !4
  %i.iw = zext i8 %i.iv to i32
  %i.ix = add nsw i32 %i.iw, -48                  ; 2 uses
  %i.iy = icmp ult i32 %i.ix, 10
  br i1 %i.iy, label %bb.bp, label %.thread521

bb.bp:                                            ; preds = %.lr.ph150.i248
  %i.iz = mul i64 %.sroa.084.4147.i251, 10
  %i.ja = add nsw i64 %.sroa.26.4148.i250, -1     ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i249, i64 1
  %i.jc = zext nneg i32 %i.ix to i64
  %i.jd = add i64 %i.iz, %i.jc                    ; 2 uses
  %.not105.i252 = icmp eq i64 %i.ja, 0
  br i1 %.not105.i252, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit255, label %.lr.ph150.i248

.thread521:                                       ; preds = %.lr.ph.i223, %bb.bi, %bb.bh, %.lr.ph141.i233, %.preheader111.i240, %bb.bm, %bb.bn, %.lr.ph150.i248, %bb.be, %bb.be, %bb.i
  %.ph529 = phi ptr [ inttoptr (i64 1 to ptr), %bb.i ], [ %i.bm, %.preheader111.i240 ], [ %i.bm, %.lr.ph150.i248 ], [ %i.bm, %bb.be ], [ %i.bm, %.lr.ph141.i233 ], [ %i.bm, %bb.be ], [ %i.bm, %bb.bn ], [ %i.bm, %bb.bm ], [ %i.bm, %bb.bh ], [ %i.bm, %bb.bi ], [ %i.bm, %.lr.ph.i223 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph529, i64 noundef %i.bk) #20
  %i.je = load i8, ptr %i.v, align 8, !range !18, !noundef !4
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %bb.bs, label %bb.bt

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit255: ; preds = %bb.bj, %bb.bk, %bb.bo, %bb.bp, %.preheader.i246
  %.sroa.15399.0 = phi i64 [ %i.iu, %bb.bo ], [ %i.ig, %bb.bk ], [ %i.jd, %bb.bp ], [ 0, %.preheader.i246 ], [ %i.hx, %bb.bj ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 8, i64 noundef %.sroa.15399.0) #21
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bt, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit255
  %i.jg = phi ptr [ %.ph529, %bb.bt ], [ %i.bm, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit255 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.t) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.jh = icmp eq i64 %i.bk, 0
  br i1 %i.jh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit258, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jg, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1458
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit258

bb.bs:                                            ; preds = %.thread521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 %i.bk, ptr %i.u, align 8
  %.sroa.5394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.ph529, ptr %.sroa.5394.0..sroa_idx, align 8
  %.sroa.8395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.bk, ptr %.sroa.8395.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.u) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.t) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit258

bb.bt:                                            ; preds = %.thread521
  %i.ji = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.jj = load double, ptr %i.ji, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 8, double noundef %i.jj) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.bq

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit258: ; preds = %bb.br, %bb.bq, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.x, ptr %i.s, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.475.0..sroa_idx, align 8
  %i.jk = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8, !nonnull !4, !align !9, !noundef !4
  %i.jn = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.jk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jm, ptr noundef nonnull @35, ptr noundef nonnull %i.s) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  %.val.i259 = load i64, ptr %i.x, align 8, !range !5, !alias.scope !1459, !noundef !4 ; 2 uses
  %i.jo = icmp eq i64 %.val.i259, 0
  br i1 %i.jo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit261, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit258
  %i.jp = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val1.i260 = load ptr, ptr %i.jp, align 8, !alias.scope !1459, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i260, i64 noundef %.val.i259, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1459
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit261

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit261: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit258, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.p

bb.bv:                                            ; preds = %bb.j, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i164
  %.sroa.4432.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i164 ], [ 0, %bb.j ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4432.0.ph, i64 %i.br) #24
  unreachable

bb.bw:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i164
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr nonnull align 1 %i.bp, i64 %i.br, i1 false)
  %cond605 = icmp eq i64 %i.br, 1
  %i.jq = load i8, ptr %i.bt, align 1, !alias.scope !1460, !noalias !1461 ; 2 uses
  br i1 %cond605, label %bb.bx, label %thread-pre-split.i293

bb.bx:                                            ; preds = %bb.bw
  switch i8 %i.jq, label %bb.ce [
    i8 43, label %.thread543
    i8 45, label %.thread543
  ]

thread-pre-split.i293:                            ; preds = %bb.bw
  switch i8 %i.jq, label %bb.ce [
    i8 43, label %bb.by
    i8 45, label %bb.bz
  ]

bb.by:                                            ; preds = %thread-pre-split.i293
  %i.jr = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.js = add nsw i64 %i.br, -1
  br label %bb.ce

bb.bz:                                            ; preds = %thread-pre-split.i293
  %i.jt = getelementptr inbounds nuw i8, ptr %i.bt, i64 1 ; 2 uses
  %i.ju = add nsw i64 %i.br, -1                   ; 2 uses
  %i.jv = icmp samesign ult i64 %i.br, 17
  br i1 %i.jv, label %.lr.ph141.i273, label %.lr.ph.i263

.lr.ph.i263:                                      ; preds = %bb.bz, %bb.cc
  %.sroa.0.1136.i264 = phi ptr [ %i.jw, %bb.cc ], [ %i.jt, %bb.bz ] ; 2 uses
  %.sroa.26.1135.i265 = phi i64 [ %i.jx, %bb.cc ], [ %i.ju, %bb.bz ]
  %.sroa.084.0134.i266 = phi i64 [ %i.ki, %bb.cc ], [ 0, %bb.bz ]
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i264, i64 1
  %i.jx = add nsw i64 %.sroa.26.1135.i265, -1     ; 2 uses
  %i.jy = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i266, i64 10) ; 2 uses
  %i.jz = extractvalue { i64, i1 } %i.jy, 0
  %i.ka = extractvalue { i64, i1 } %i.jy, 1
  br i1 %i.ka, label %.thread543, label %bb.ca, !prof !13

bb.ca:                                            ; preds = %.lr.ph.i263
  %i.kb = load i8, ptr %.sroa.0.1136.i264, align 1, !alias.scope !1460, !noalias !1461, !noundef !4
  %i.kc = zext i8 %i.kb to i32
  %i.kd = add nsw i32 %i.kc, -48                  ; 2 uses
  %i.ke = icmp ult i32 %i.kd, 10
  br i1 %i.ke, label %bb.cb, label %.thread543

bb.cb:                                            ; preds = %bb.ca
  %i.kf = zext nneg i32 %i.kd to i64
  %i.kg = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.jz, i64 %i.kf) ; 2 uses
  %i.kh = extractvalue { i64, i1 } %i.kg, 1
  br i1 %i.kh, label %.thread543, label %bb.cc, !prof !13

bb.cc:                                            ; preds = %bb.cb
  %i.ki = extractvalue { i64, i1 } %i.kg, 0       ; 2 uses
  %.not102.i268 = icmp eq i64 %i.jx, 0
  br i1 %.not102.i268, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295, label %.lr.ph.i263

.lr.ph141.i273:                                   ; preds = %bb.bz, %bb.cd
  %.sroa.0.2140.i274 = phi ptr [ %i.kp, %bb.cd ], [ %i.jt, %bb.bz ] ; 2 uses
  %.sroa.26.2139.i275 = phi i64 [ %i.ko, %bb.cd ], [ %i.ju, %bb.bz ]
  %.sroa.084.2138.i276 = phi i64 [ %i.kr, %bb.cd ], [ 0, %bb.bz ]
  %i.kj = load i8, ptr %.sroa.0.2140.i274, align 1, !alias.scope !1460, !noalias !1461, !noundef !4
  %i.kk = zext i8 %i.kj to i32
  %i.kl = add nsw i32 %i.kk, -48                  ; 2 uses
  %i.km = icmp ult i32 %i.kl, 10
  br i1 %i.km, label %bb.cd, label %.thread543

bb.cd:                                            ; preds = %.lr.ph141.i273
  %i.kn = mul i64 %.sroa.084.2138.i276, 10
  %i.ko = add nsw i64 %.sroa.26.2139.i275, -1     ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i274, i64 1
  %i.kq = zext nneg i32 %i.kl to i64
  %i.kr = sub i64 %i.kn, %i.kq                    ; 2 uses
  %.not103.i277 = icmp eq i64 %i.ko, 0
  br i1 %.not103.i277, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295, label %.lr.ph141.i273

bb.ce:                                            ; preds = %bb.bx, %bb.by, %thread-pre-split.i293
  %.sroa.26.0.i278 = phi i64 [ %i.js, %bb.by ], [ %i.br, %thread-pre-split.i293 ], [ %i.br, %bb.bx ] ; 4 uses
  %.sroa.0.0.i279 = phi ptr [ %i.jr, %bb.by ], [ %i.bt, %thread-pre-split.i293 ], [ %i.bt, %bb.bx ] ; 2 uses
  %i.ks = icmp samesign ult i64 %.sroa.26.0.i278, 16
  br i1 %i.ks, label %.preheader.i286, label %.preheader111.i280

.preheader.i286:                                  ; preds = %bb.ce
  %.not105146.i287 = icmp eq i64 %.sroa.26.0.i278, 0
  br i1 %.not105146.i287, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295, label %.lr.ph150.i288

.preheader111.i280:                               ; preds = %bb.ce, %bb.ch
  %.sroa.0.3145.i281 = phi ptr [ %i.kt, %bb.ch ], [ %.sroa.0.0.i279, %bb.ce ] ; 2 uses
  %.sroa.26.3144.i282 = phi i64 [ %i.ku, %bb.ch ], [ %.sroa.26.0.i278, %bb.ce ]
  %.sroa.084.3143.i283 = phi i64 [ %i.lf, %bb.ch ], [ 0, %bb.ce ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i281, i64 1
  %i.ku = add nsw i64 %.sroa.26.3144.i282, -1     ; 2 uses
  %i.kv = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i283, i64 10) ; 2 uses
  %i.kw = extractvalue { i64, i1 } %i.kv, 0
  %i.kx = extractvalue { i64, i1 } %i.kv, 1
  br i1 %i.kx, label %.thread543, label %bb.cf, !prof !13

bb.cf:                                            ; preds = %.preheader111.i280
  %i.ky = load i8, ptr %.sroa.0.3145.i281, align 1, !alias.scope !1460, !noalias !1461, !noundef !4
  %i.kz = zext i8 %i.ky to i32
  %i.la = add nsw i32 %i.kz, -48                  ; 2 uses
  %i.lb = icmp ult i32 %i.la, 10
  br i1 %i.lb, label %bb.cg, label %.thread543

bb.cg:                                            ; preds = %bb.cf
  %i.lc = zext nneg i32 %i.la to i64
  %i.ld = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.kw, i64 %i.lc) ; 2 uses
  %i.le = extractvalue { i64, i1 } %i.ld, 1
  br i1 %i.le, label %.thread543, label %bb.ch, !prof !13

bb.ch:                                            ; preds = %bb.cg
  %i.lf = extractvalue { i64, i1 } %i.ld, 0       ; 2 uses
  %.not104.i285 = icmp eq i64 %i.ku, 0
  br i1 %.not104.i285, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295, label %.preheader111.i280

.lr.ph150.i288:                                   ; preds = %.preheader.i286, %bb.ci
  %.sroa.0.4149.i289 = phi ptr [ %i.lm, %bb.ci ], [ %.sroa.0.0.i279, %.preheader.i286 ] ; 2 uses
  %.sroa.26.4148.i290 = phi i64 [ %i.ll, %bb.ci ], [ %.sroa.26.0.i278, %.preheader.i286 ]
  %.sroa.084.4147.i291 = phi i64 [ %i.lo, %bb.ci ], [ 0, %.preheader.i286 ]
  %i.lg = load i8, ptr %.sroa.0.4149.i289, align 1, !alias.scope !1460, !noalias !1461, !noundef !4
  %i.lh = zext i8 %i.lg to i32
  %i.li = add nsw i32 %i.lh, -48                  ; 2 uses
  %i.lj = icmp ult i32 %i.li, 10
  br i1 %i.lj, label %bb.ci, label %.thread543

bb.ci:                                            ; preds = %.lr.ph150.i288
  %i.lk = mul i64 %.sroa.084.4147.i291, 10
  %i.ll = add nsw i64 %.sroa.26.4148.i290, -1     ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i289, i64 1
  %i.ln = zext nneg i32 %i.li to i64
  %i.lo = add i64 %i.lk, %i.ln                    ; 2 uses
  %.not105.i292 = icmp eq i64 %i.ll, 0
  br i1 %.not105.i292, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295, label %.lr.ph150.i288

.thread543:                                       ; preds = %.lr.ph.i263, %bb.cb, %bb.ca, %.lr.ph141.i273, %.preheader111.i280, %bb.cf, %bb.cg, %.lr.ph150.i288, %bb.bx, %bb.bx, %bb.k
  %.ph551 = phi ptr [ inttoptr (i64 1 to ptr), %bb.k ], [ %i.bt, %.preheader111.i280 ], [ %i.bt, %.lr.ph150.i288 ], [ %i.bt, %bb.bx ], [ %i.bt, %.lr.ph141.i273 ], [ %i.bt, %bb.bx ], [ %i.bt, %bb.cg ], [ %i.bt, %bb.cf ], [ %i.bt, %bb.ca ], [ %i.bt, %bb.cb ], [ %i.bt, %.lr.ph.i263 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph551, i64 noundef %i.br) #20
  %i.lp = load i8, ptr %i.p, align 8, !range !18, !noundef !4
  %i.lq = trunc nuw i8 %i.lp to i1
  br i1 %i.lq, label %bb.cl, label %bb.cm

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295: ; preds = %bb.cc, %bb.cd, %bb.ch, %bb.ci, %.preheader.i286
  %.sroa.15406.0 = phi i64 [ %i.lf, %bb.ch ], [ %i.kr, %bb.cd ], [ %i.lo, %bb.ci ], [ 0, %.preheader.i286 ], [ %i.ki, %bb.cc ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 8, i64 noundef %.sroa.15406.0) #21
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cm, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295
  %i.lr = phi ptr [ %.ph551, %bb.cm ], [ %i.bt, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ls = icmp eq i64 %i.br, 0
  br i1 %i.ls, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit298, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lr, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1462
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit298

bb.cl:                                            ; preds = %.thread543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %i.br, ptr %i.o, align 8
  %.sroa.5401.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.ph551, ptr %.sroa.5401.0..sroa_idx, align 8
  %.sroa.8402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.br, ptr %.sroa.8402.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit298

bb.cm:                                            ; preds = %.thread543
  %i.lt = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.lu = load double, ptr %i.lt, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 8, double noundef %i.lu) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.cj

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit298: ; preds = %bb.ck, %bb.cj, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.r, ptr %i.m, align 8
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.494.0..sroa_idx, align 8
  %i.lv = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !nonnull !4, !align !9, !noundef !4
  %i.ly = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.lv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.lx, ptr noundef nonnull @35, ptr noundef nonnull %i.m) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  %.val.i299 = load i64, ptr %i.r, align 8, !range !5, !alias.scope !1463, !noundef !4 ; 2 uses
  %i.lz = icmp eq i64 %.val.i299, 0
  br i1 %i.lz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit301, label %bb.cn

bb.cn:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit298
  %i.ma = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val1.i300 = load ptr, ptr %i.ma, align 8, !alias.scope !1463, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i300, i64 noundef %.val.i299, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1463
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit301

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit301: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit298, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.p

bb.co:                                            ; preds = %bb.l, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i168
  %.sroa.4436.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i168 ], [ 0, %bb.l ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4436.0.ph, i64 %i.by) #24
  unreachable

bb.cp:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i168
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull align 1 %i.bw, i64 %i.by, i1 false)
  %cond606 = icmp eq i64 %i.by, 1
  %i.mb = load i8, ptr %i.ca, align 1, !alias.scope !1464, !noalias !1465 ; 2 uses
  br i1 %cond606, label %bb.cq, label %thread-pre-split.i333

bb.cq:                                            ; preds = %bb.cp
  switch i8 %i.mb, label %bb.cx [
    i8 43, label %.thread565
    i8 45, label %.thread565
  ]

thread-pre-split.i333:                            ; preds = %bb.cp
  switch i8 %i.mb, label %bb.cx [
    i8 43, label %bb.cr
    i8 45, label %bb.cs
  ]

bb.cr:                                            ; preds = %thread-pre-split.i333
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.md = add nsw i64 %i.by, -1
  br label %bb.cx

bb.cs:                                            ; preds = %thread-pre-split.i333
  %i.me = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 2 uses
  %i.mf = add nsw i64 %i.by, -1                   ; 2 uses
  %i.mg = icmp samesign ult i64 %i.by, 17
  br i1 %i.mg, label %.lr.ph141.i313, label %.lr.ph.i303

.lr.ph.i303:                                      ; preds = %bb.cs, %bb.cv
  %.sroa.0.1136.i304 = phi ptr [ %i.mh, %bb.cv ], [ %i.me, %bb.cs ] ; 2 uses
  %.sroa.26.1135.i305 = phi i64 [ %i.mi, %bb.cv ], [ %i.mf, %bb.cs ]
  %.sroa.084.0134.i306 = phi i64 [ %i.mt, %bb.cv ], [ 0, %bb.cs ]
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i304, i64 1
  %i.mi = add nsw i64 %.sroa.26.1135.i305, -1     ; 2 uses
  %i.mj = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i306, i64 10) ; 2 uses
  %i.mk = extractvalue { i64, i1 } %i.mj, 0
  %i.ml = extractvalue { i64, i1 } %i.mj, 1
  br i1 %i.ml, label %.thread565, label %bb.ct, !prof !13

bb.ct:                                            ; preds = %.lr.ph.i303
  %i.mm = load i8, ptr %.sroa.0.1136.i304, align 1, !alias.scope !1464, !noalias !1465, !noundef !4
  %i.mn = zext i8 %i.mm to i32
  %i.mo = add nsw i32 %i.mn, -48                  ; 2 uses
  %i.mp = icmp ult i32 %i.mo, 10
  br i1 %i.mp, label %bb.cu, label %.thread565

bb.cu:                                            ; preds = %bb.ct
  %i.mq = zext nneg i32 %i.mo to i64
  %i.mr = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.mk, i64 %i.mq) ; 2 uses
  %i.ms = extractvalue { i64, i1 } %i.mr, 1
  br i1 %i.ms, label %.thread565, label %bb.cv, !prof !13

bb.cv:                                            ; preds = %bb.cu
  %i.mt = extractvalue { i64, i1 } %i.mr, 0       ; 2 uses
  %.not102.i308 = icmp eq i64 %i.mi, 0
  br i1 %.not102.i308, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335, label %.lr.ph.i303

.lr.ph141.i313:                                   ; preds = %bb.cs, %bb.cw
  %.sroa.0.2140.i314 = phi ptr [ %i.na, %bb.cw ], [ %i.me, %bb.cs ] ; 2 uses
  %.sroa.26.2139.i315 = phi i64 [ %i.mz, %bb.cw ], [ %i.mf, %bb.cs ]
  %.sroa.084.2138.i316 = phi i64 [ %i.nc, %bb.cw ], [ 0, %bb.cs ]
  %i.mu = load i8, ptr %.sroa.0.2140.i314, align 1, !alias.scope !1464, !noalias !1465, !noundef !4
  %i.mv = zext i8 %i.mu to i32
  %i.mw = add nsw i32 %i.mv, -48                  ; 2 uses
  %i.mx = icmp ult i32 %i.mw, 10
  br i1 %i.mx, label %bb.cw, label %.thread565

bb.cw:                                            ; preds = %.lr.ph141.i313
  %i.my = mul i64 %.sroa.084.2138.i316, 10
  %i.mz = add nsw i64 %.sroa.26.2139.i315, -1     ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i314, i64 1
  %i.nb = zext nneg i32 %i.mw to i64
  %i.nc = sub i64 %i.my, %i.nb                    ; 2 uses
  %.not103.i317 = icmp eq i64 %i.mz, 0
  br i1 %.not103.i317, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335, label %.lr.ph141.i313

bb.cx:                                            ; preds = %bb.cq, %bb.cr, %thread-pre-split.i333
  %.sroa.26.0.i318 = phi i64 [ %i.md, %bb.cr ], [ %i.by, %thread-pre-split.i333 ], [ %i.by, %bb.cq ] ; 4 uses
  %.sroa.0.0.i319 = phi ptr [ %i.mc, %bb.cr ], [ %i.ca, %thread-pre-split.i333 ], [ %i.ca, %bb.cq ] ; 2 uses
  %i.nd = icmp samesign ult i64 %.sroa.26.0.i318, 16
  br i1 %i.nd, label %.preheader.i326, label %.preheader111.i320

.preheader.i326:                                  ; preds = %bb.cx
  %.not105146.i327 = icmp eq i64 %.sroa.26.0.i318, 0
  br i1 %.not105146.i327, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335, label %.lr.ph150.i328

.preheader111.i320:                               ; preds = %bb.cx, %bb.da
  %.sroa.0.3145.i321 = phi ptr [ %i.ne, %bb.da ], [ %.sroa.0.0.i319, %bb.cx ] ; 2 uses
  %.sroa.26.3144.i322 = phi i64 [ %i.nf, %bb.da ], [ %.sroa.26.0.i318, %bb.cx ]
  %.sroa.084.3143.i323 = phi i64 [ %i.nq, %bb.da ], [ 0, %bb.cx ]
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i321, i64 1
  %i.nf = add nsw i64 %.sroa.26.3144.i322, -1     ; 2 uses
  %i.ng = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i323, i64 10) ; 2 uses
  %i.nh = extractvalue { i64, i1 } %i.ng, 0
  %i.ni = extractvalue { i64, i1 } %i.ng, 1
  br i1 %i.ni, label %.thread565, label %bb.cy, !prof !13

bb.cy:                                            ; preds = %.preheader111.i320
  %i.nj = load i8, ptr %.sroa.0.3145.i321, align 1, !alias.scope !1464, !noalias !1465, !noundef !4
  %i.nk = zext i8 %i.nj to i32
  %i.nl = add nsw i32 %i.nk, -48                  ; 2 uses
  %i.nm = icmp ult i32 %i.nl, 10
  br i1 %i.nm, label %bb.cz, label %.thread565

bb.cz:                                            ; preds = %bb.cy
  %i.nn = zext nneg i32 %i.nl to i64
  %i.no = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.nh, i64 %i.nn) ; 2 uses
  %i.np = extractvalue { i64, i1 } %i.no, 1
  br i1 %i.np, label %.thread565, label %bb.da, !prof !13

bb.da:                                            ; preds = %bb.cz
  %i.nq = extractvalue { i64, i1 } %i.no, 0       ; 2 uses
  %.not104.i325 = icmp eq i64 %i.nf, 0
  br i1 %.not104.i325, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335, label %.preheader111.i320

.lr.ph150.i328:                                   ; preds = %.preheader.i326, %bb.db
  %.sroa.0.4149.i329 = phi ptr [ %i.nx, %bb.db ], [ %.sroa.0.0.i319, %.preheader.i326 ] ; 2 uses
  %.sroa.26.4148.i330 = phi i64 [ %i.nw, %bb.db ], [ %.sroa.26.0.i318, %.preheader.i326 ]
  %.sroa.084.4147.i331 = phi i64 [ %i.nz, %bb.db ], [ 0, %.preheader.i326 ]
  %i.nr = load i8, ptr %.sroa.0.4149.i329, align 1, !alias.scope !1464, !noalias !1465, !noundef !4
  %i.ns = zext i8 %i.nr to i32
  %i.nt = add nsw i32 %i.ns, -48                  ; 2 uses
  %i.nu = icmp ult i32 %i.nt, 10
  br i1 %i.nu, label %bb.db, label %.thread565

bb.db:                                            ; preds = %.lr.ph150.i328
  %i.nv = mul i64 %.sroa.084.4147.i331, 10
  %i.nw = add nsw i64 %.sroa.26.4148.i330, -1     ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i329, i64 1
  %i.ny = zext nneg i32 %i.nt to i64
  %i.nz = add i64 %i.nv, %i.ny                    ; 2 uses
  %.not105.i332 = icmp eq i64 %i.nw, 0
  br i1 %.not105.i332, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335, label %.lr.ph150.i328

.thread565:                                       ; preds = %.lr.ph.i303, %bb.cu, %bb.ct, %.lr.ph141.i313, %.preheader111.i320, %bb.cy, %bb.cz, %.lr.ph150.i328, %bb.cq, %bb.cq, %bb.m
  %.ph573 = phi ptr [ inttoptr (i64 1 to ptr), %bb.m ], [ %i.ca, %.preheader111.i320 ], [ %i.ca, %.lr.ph150.i328 ], [ %i.ca, %bb.cq ], [ %i.ca, %.lr.ph141.i313 ], [ %i.ca, %bb.cq ], [ %i.ca, %bb.cz ], [ %i.ca, %bb.cy ], [ %i.ca, %bb.ct ], [ %i.ca, %bb.cu ], [ %i.ca, %.lr.ph.i303 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph573, i64 noundef %i.by) #20
  %i.oa = load i8, ptr %i.j, align 8, !range !18, !noundef !4
  %i.ob = trunc nuw i8 %i.oa to i1
  br i1 %i.ob, label %bb.de, label %bb.df

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335: ; preds = %bb.cv, %bb.cw, %bb.da, %bb.db, %.preheader.i326
  %.sroa.15413.0 = phi i64 [ %i.nq, %bb.da ], [ %i.nc, %bb.cw ], [ %i.nz, %bb.db ], [ 0, %.preheader.i326 ], [ %i.mt, %bb.cv ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 5, i64 noundef %.sroa.15413.0) #21
  br label %bb.dc

bb.dc:                                            ; preds = %bb.df, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335
  %i.oc = phi ptr [ %.ph573, %bb.df ], [ %i.ca, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 26, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.od = icmp eq i64 %i.by, 0
  br i1 %i.od, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit338, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oc, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1466
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit338

bb.de:                                            ; preds = %.thread565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %i.by, ptr %i.i, align 8
  %.sroa.5408.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.ph573, ptr %.sroa.5408.0..sroa_idx, align 8
  %.sroa.8409.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.by, ptr %.sroa.8409.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 26, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit338

bb.df:                                            ; preds = %.thread565
  %i.oe = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.of = load double, ptr %i.oe, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 5, double noundef %i.of) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.dc

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit338: ; preds = %bb.dd, %bb.dc, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.l, ptr %i.g, align 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4113.0..sroa_idx, align 8
  %i.og = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.oi = load ptr, ptr %i.oh, align 8, !nonnull !4, !align !9, !noundef !4
  %i.oj = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.og, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.oi, ptr noundef nonnull @35, ptr noundef nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !1467)
  %.val.i339 = load i64, ptr %i.l, align 8, !range !5, !alias.scope !1467, !noundef !4 ; 2 uses
  %i.ok = icmp eq i64 %.val.i339, 0
  br i1 %i.ok, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit341, label %bb.dg

bb.dg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit338
  %i.ol = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val1.i340 = load ptr, ptr %i.ol, align 8, !alias.scope !1467, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i340, i64 noundef %.val.i339, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1467
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit341

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit341: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit338, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.p

bb.dh:                                            ; preds = %bb.n, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i172
  %.sroa.4440.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i172 ], [ 0, %bb.n ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4440.0.ph, i64 %i.cf) #24
  unreachable

bb.di:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i172
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr nonnull align 1 %i.cd, i64 %i.cf, i1 false)
  %cond607 = icmp eq i64 %i.cf, 1
  %i.om = load i8, ptr %i.ch, align 1, !alias.scope !1468, !noalias !1469 ; 2 uses
  br i1 %cond607, label %bb.dj, label %thread-pre-split.i373

bb.dj:                                            ; preds = %bb.di
  switch i8 %i.om, label %bb.dq [
    i8 43, label %.thread587
    i8 45, label %.thread587
  ]

thread-pre-split.i373:                            ; preds = %bb.di
  switch i8 %i.om, label %bb.dq [
    i8 43, label %bb.dk
    i8 45, label %bb.dl
  ]

bb.dk:                                            ; preds = %thread-pre-split.i373
  %i.on = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.oo = add nsw i64 %i.cf, -1
  br label %bb.dq

bb.dl:                                            ; preds = %thread-pre-split.i373
  %i.op = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 2 uses
  %i.oq = add nsw i64 %i.cf, -1                   ; 2 uses
  %i.or = icmp samesign ult i64 %i.cf, 17
  br i1 %i.or, label %.lr.ph141.i353, label %.lr.ph.i343

.lr.ph.i343:                                      ; preds = %bb.dl, %bb.do
  %.sroa.0.1136.i344 = phi ptr [ %i.os, %bb.do ], [ %i.op, %bb.dl ] ; 2 uses
  %.sroa.26.1135.i345 = phi i64 [ %i.ot, %bb.do ], [ %i.oq, %bb.dl ]
  %.sroa.084.0134.i346 = phi i64 [ %i.pe, %bb.do ], [ 0, %bb.dl ]
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i344, i64 1
  %i.ot = add nsw i64 %.sroa.26.1135.i345, -1     ; 2 uses
  %i.ou = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i346, i64 10) ; 2 uses
  %i.ov = extractvalue { i64, i1 } %i.ou, 0
  %i.ow = extractvalue { i64, i1 } %i.ou, 1
  br i1 %i.ow, label %.thread587, label %bb.dm, !prof !13

bb.dm:                                            ; preds = %.lr.ph.i343
  %i.ox = load i8, ptr %.sroa.0.1136.i344, align 1, !alias.scope !1468, !noalias !1469, !noundef !4
  %i.oy = zext i8 %i.ox to i32
  %i.oz = add nsw i32 %i.oy, -48                  ; 2 uses
  %i.pa = icmp ult i32 %i.oz, 10
  br i1 %i.pa, label %bb.dn, label %.thread587

bb.dn:                                            ; preds = %bb.dm
  %i.pb = zext nneg i32 %i.oz to i64
  %i.pc = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ov, i64 %i.pb) ; 2 uses
  %i.pd = extractvalue { i64, i1 } %i.pc, 1
  br i1 %i.pd, label %.thread587, label %bb.do, !prof !13

bb.do:                                            ; preds = %bb.dn
  %i.pe = extractvalue { i64, i1 } %i.pc, 0       ; 2 uses
  %.not102.i348 = icmp eq i64 %i.ot, 0
  br i1 %.not102.i348, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit375, label %.lr.ph.i343

.lr.ph141.i353:                                   ; preds = %bb.dl, %bb.dp
  %.sroa.0.2140.i354 = phi ptr [ %i.pl, %bb.dp ], [ %i.op, %bb.dl ] ; 2 uses
  %.sroa.26.2139.i355 = phi i64 [ %i.pk, %bb.dp ], [ %i.oq, %bb.dl ]
  %.sroa.084.2138.i356 = phi i64 [ %i.pn, %bb.dp ], [ 0, %bb.dl ]
  %i.pf = load i8, ptr %.sroa.0.2140.i354, align 1, !alias.scope !1468, !noalias !1469, !noundef !4
  %i.pg = zext i8 %i.pf to i32
  %i.ph = add nsw i32 %i.pg, -48                  ; 2 uses
  %i.pi = icmp ult i32 %i.ph, 10
  br i1 %i.pi, label %bb.dp, label %.thread587

bb.dp:                                            ; preds = %.lr.ph141.i353
  %i.pj = mul i64 %.sroa.084.2138.i356, 10
  %i.pk = add nsw i64 %.sroa.26.2139.i355, -1     ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i354, i64 1
  %i.pm = zext nneg i32 %i.ph to i64
  %i.pn = sub i64 %i.pj, %i.pm                    ; 2 uses
  %.not103.i357 = icmp eq i64 %i.pk, 0
  br i1 %.not103.i357, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit375, label %.lr.ph141.i353

bb.dq:                                            ; preds = %bb.dj, %bb.dk, %thread-pre-split.i373
  %.sroa.26.0.i358 = phi i64 [ %i.oo, %bb.dk ], [ %i.cf, %thread-pre-split.i373 ], [ %i.cf, %bb.dj ] ; 4 uses
  %.sroa.0.0.i359 = phi ptr [ %i.on, %bb.dk ], [ %i.ch, %thread-pre-split.i373 ], [ %i.ch, %bb.dj ] ; 2 uses
  %i.po = icmp samesign ult i64 %.sroa.26.0.i358, 16
  br i1 %i.po, label %.preheader.i366, label %.preheader111.i360

.preheader.i366:                                  ; preds = %bb.dq
  %.not105146.i367 = icmp eq i64 %.sroa.26.0.i358, 0
  br i1 %.not105146.i367, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit375, label %.lr.ph150.i368

.preheader111.i360:                               ; preds = %bb.dq, %bb.dt
  %.sroa.0.3145.i361 = phi ptr [ %i.pp, %bb.dt ], [ %.sroa.0.0.i359, %bb.dq ] ; 2 uses
  %.sroa.26.3144.i362 = phi i64 [ %i.pq, %bb.dt ], [ %.sroa.26.0.i358, %bb.dq ]
  %.sroa.084.3143.i363 = phi i64 [ %i.qb, %bb.dt ], [ 0, %bb.dq ]
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i361, i64 1
  %i.pq = add nsw i64 %.sroa.26.3144.i362, -1     ; 2 uses
  %i.pr = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i363, i64 10) ; 2 uses
  %i.ps = extractvalue { i64, i1 } %i.pr, 0
  %i.pt = extractvalue { i64, i1 } %i.pr, 1
  br i1 %i.pt, label %.thread587, label %bb.dr, !prof !13

bb.dr:                                            ; preds = %.preheader111.i360
  %i.pu = load i8, ptr %.sroa.0.3145.i361, align 1, !alias.scope !1468, !noalias !1469, !noundef !4
  %i.pv = zext i8 %i.pu to i32
  %i.pw = add nsw i32 %i.pv, -48                  ; 2 uses
  %i.px = icmp ult i32 %i.pw, 10
  br i1 %i.px, label %bb.ds, label %.thread587

bb.ds:                                            ; preds = %bb.dr
  %i.py = zext nneg i32 %i.pw to i64
  %i.pz = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ps, i64 %i.py) ; 2 uses
  %i.qa = extractvalue { i64, i1 } %i.pz, 1
  br i1 %i.qa, label %.thread587, label %bb.dt, !prof !13

bb.dt:                                            ; preds = %bb.ds
  %i.qb = extractvalue { i64, i1 } %i.pz, 0       ; 2 uses
  %.not104.i365 = icmp eq i64 %i.pq, 0
  br i1 %.not104.i365, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit375, label %.preheader111.i360

.lr.ph150.i368:                                   ; preds = %.preheader.i366, %bb.du
  %.sroa.0.4149.i369 = phi ptr [ %i.qi, %bb.du ], [ %.sroa.0.0.i359, %.preheader.i366 ] ; 2 uses
  %.sroa.26.4148.i370 = phi i64 [ %i.qh, %bb.du ], [ %.sroa.26.0.i358, %.preheader.i366 ]
  %.sroa.084.4147.i371 = phi i64 [ %i.qk, %bb.du ], [ 0, %.preheader.i366 ]
  %i.qc = load i8, ptr %.sroa.0.4149.i369, align 1, !alias.scope !1468, !noalias !1469, !noundef !4
  %i.qd = zext i8 %i.qc to i32
  %i.qe = add nsw i32 %i.qd, -48                  ; 2 uses
  %i.qf = icmp ult i32 %i.qe, 10
  br i1 %i.qf, label %bb.du, label %.thread587

bb.du:                                            ; preds = %.lr.ph150.i368
  %i.qg = mul i64 %.sroa.084.4147.i371, 10
  %i.qh = add nsw i64 %.sroa.26.4148.i370, -1     ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i369, i64 1
  %i.qj = zext nneg i32 %i.qe to i64
  %i.qk = add i64 %i.qg, %i.qj                    ; 2 uses
  %.not105.i372 = icmp eq i64 %i.qh, 0
  br i1 %.not105.i372, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit375, label %.lr.ph150.i368

.thread587:                                       ; preds = %.lr.ph.i343, %bb.dn, %bb.dm, %.lr.ph141.i353, %.preheader111.i360, %bb.dr, %bb.ds, %.lr.ph150.i368, %bb.dj, %bb.dj, %bb.o
  %.ph595 = phi ptr [ inttoptr (i64 1 to ptr), %bb.o ], [ %i.ch, %.preheader111.i360 ], [ %i.ch, %.lr.ph150.i368 ], [ %i.ch, %bb.dj ], [ %i.ch, %.lr.ph141.i353 ], [ %i.ch, %bb.dj ], [ %i.ch, %bb.ds ], [ %i.ch, %bb.dr ], [ %i.ch, %bb.dm ], [ %i.ch, %bb.dn ], [ %i.ch, %.lr.ph.i343 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph595, i64 noundef %i.cf) #20
  %i.ql = load i8, ptr %i.d, align 8, !range !18, !noundef !4
  %i.qm = trunc nuw i8 %i.ql to i1
  br i1 %i.qm, label %bb.dx, label %bb.dy

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit375: ; preds = %bb.do, %bb.dp, %bb.dt, %bb.du, %.preheader.i366
  %.sroa.15420.0 = phi i64 [ %i.qb, %bb.dt ], [ %i.pn, %bb.dp ], [ %i.qk, %bb.du ], [ 0, %.preheader.i366 ], [ %i.pe, %bb.do ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 8, i64 noundef %.sroa.15420.0) #21
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dy, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit375
  %i.qn = phi ptr [ %.ph595, %bb.dy ], [ %i.ch, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit375 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 34, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.qo = icmp eq i64 %i.cf, 0
  br i1 %i.qo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit378, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qn, i64 noundef %i.cf, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1470
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit378

bb.dx:                                            ; preds = %.thread587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.cf, ptr %i.c, align 8
  %.sroa.5415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.ph595, ptr %.sroa.5415.0..sroa_idx, align 8
  %.sroa.8416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.cf, ptr %.sroa.8416.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 34, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit378

bb.dy:                                            ; preds = %.thread587
  %i.qp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.qq = load double, ptr %i.qp, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 8, double noundef %i.qq) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.dv

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit378: ; preds = %bb.dw, %bb.dv, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4132.0..sroa_idx, align 8
  %i.qr = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qt = load ptr, ptr %i.qs, align 8, !nonnull !4, !align !9, !noundef !4
  %i.qu = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.qr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qt, ptr noundef nonnull @35, ptr noundef nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  %.val.i379 = load i64, ptr %i.f, align 8, !range !5, !alias.scope !1471, !noundef !4 ; 2 uses
  %i.qv = icmp eq i64 %.val.i379, 0
  br i1 %i.qv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit381, label %bb.dz

bb.dz:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit378
  %i.qw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i380 = load ptr, ptr %i.qw, align 8, !alias.scope !1471, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i380, i64 noundef %.val.i379, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1471
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit381

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit381: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit378, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !9, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1476)
  %i.d = load i64, ptr %i.c, align 8, !range !6, !alias.scope !1475, !noalias !1476, !noundef !4
  switch i64 %i.d, label %default.unreachable [
    i64 0, label %_RNvXs_NtCs2szWGFz6wmN_7uu_test6parserNtB4_6SymbolNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt.exit
    i64 1, label %bb.b
    i64 2, label %bb.e
    i64 3, label %bb.e
    i64 4, label %bb.c
    i64 5, label %bb.c
    i64 6, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %_RNvXs_NtCs2szWGFz6wmN_7uu_test6parserNtB4_6SymbolNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt.exit

bb.c:                                             ; preds = %bb.a, %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %_RNvXs_NtCs2szWGFz6wmN_7uu_test6parserNtB4_6SymbolNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt.exit

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.a
  %.sink.i = phi i64 [ 16, %bb.c ], [ 8, %bb.a ], [ 8, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink.i ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1475, !noalias !1476, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1475, !noalias !1476, !noundef !4
  br label %_RNvXs_NtCs2szWGFz6wmN_7uu_test6parserNtB4_6SymbolNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt.exit

_RNvXs_NtCs2szWGFz6wmN_7uu_test6parserNtB4_6SymbolNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt.exit: ; preds = %bb.a, %bb.b, %bb.d, %bb.e
  %.sroa.5.0.i = phi i64 [ 4, %bb.d ], [ 1, %bb.b ], [ %i.i, %bb.e ], [ 1, %bb.a ]
  %.sroa.03.0.i = phi ptr [ @52, %bb.d ], [ @29, %bb.b ], [ %i.g, %bb.e ], [ @28, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1477
  store i64 1, ptr %i.b, align 8, !noalias !1477
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.03.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1477
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.5.0.i, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !1477
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 1, ptr %i.j, align 8, !noalias !1477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1477
  store ptr %i.b, ptr %i.a, align 8, !noalias !1477
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !1477
  %i.k = load ptr, ptr %1, align 8, !alias.scope !1476, !noalias !1475, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1476, !noalias !1475, !nonnull !4, !align !9, !noundef !4
  %i.n = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m, ptr noundef nonnull @35, ptr noundef nonnull %i.a) #21, !noalias !1477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1477
  ret i1 %i.n
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs6_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB5_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtBb_5clone5Clone5cloneCs2szWGFz6wmN_7uu_test(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val3 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = ptrtoint ptr %.val3 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 5 uses
  %i.f = udiv exact i64 %i.e, 24                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1506)
  %i.g = icmp eq ptr %.val3, %.val
  br i1 %i.g, label %_RNvXsd_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1507
  %i.h = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, 9) 8) #21, !noalias !1507 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %.lr.ph.i.i

bb.b:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #24, !noalias !1508
  unreachable

.lr.ph.i.i:                                       ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i, %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i
  %.sroa.0.034.i.i = phi ptr [ %i.l, %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i ], [ %.val, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 4 uses
  %.sroa.7.033.i.i = phi i64 [ %i.m, %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 2 uses
  %.sroa.10.032.i.i = phi i64 [ %i.j, %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i ], [ %i.f, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ]
  %i.j = add nsw i64 %.sroa.10.032.i.i, -1        ; 2 uses
  %i.k = icmp eq ptr %.sroa.0.034.i.i, %.val3
  br i1 %i.k, label %_RNvXsd_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i, i64 24
  %i.m = add nuw nsw i64 %.sroa.7.033.i.i, 1
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.7.033.i.i ; 3 uses
  %i.o = getelementptr i8, ptr %.sroa.0.034.i.i, i64 8
  %.val.i.i = load ptr, ptr %i.o, align 8, !alias.scope !1506, !noalias !1509, !nonnull !4, !noundef !4
  %i.p = getelementptr i8, ptr %.sroa.0.034.i.i, i64 16
  %.val13.i.i = load i64, ptr %i.p, align 8, !alias.scope !1506, !noalias !1509, !noundef !4 ; 6 uses
  %i.q = icmp eq i64 %.val13.i.i, 0
  br i1 %i.q, label %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1510
  %i.r = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val13.i.i, i64 noundef range(i64 1, 9) 1) #21, !noalias !1510 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val13.i.i) #24, !noalias !1511
  unreachable

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %.val.i.i, i64 range(i64 0, -9223372036854775808) %.val13.i.i, i1 false), !noalias !1512
  br label %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i

_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.e, %bb.c
  %.sroa.5.0.i.i.i = phi ptr [ %i.r, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.c ]
  store i64 %.val13.i.i, ptr %i.n, align 8, !noalias !1508
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.423.0..sroa_idx.i.i, align 8, !noalias !1508
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.val13.i.i, ptr %.sroa.524.0..sroa_idx.i.i, align 8, !noalias !1508
  %i.t = icmp eq i64 %i.j, 0
  br i1 %i.t, label %_RNvXsd_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit, label %.lr.ph.i.i

_RNvXsd_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit: ; preds = %.lr.ph.i.i, %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i, %bb.a
  %.sroa.10.0.i44.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.h, %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i ], [ %i.h, %.lr.ph.i.i ] ; 3 uses
end_hunk_0
