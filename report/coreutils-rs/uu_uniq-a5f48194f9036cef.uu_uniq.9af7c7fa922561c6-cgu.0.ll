Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_uniq-a5f48194f9036cef.uu_uniq.9af7c7fa922561c6-cgu.0?download=true
inline.NumInlined: 823
inline.NumDeleted: 494
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvCsdiTcXS7gKpe_7uu_uniq10opt_parsed:bb.a
    i8 45, label %.loopexit126
  ]

thread-pre-split.i:                               ; preds = %bb.c
  %.pr.i = load i8, ptr %i.v, align 1, !alias.scope !360, !noalias !361
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split.i, %bb.d
  %i.z = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.y, %bb.d ]
  %cond.i = icmp eq i8 %i.z, 43                   ; 2 uses
  %i.aa = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.x, %i.aa         ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.ab = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.ab, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.e
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.h
  %.not52.i = icmp eq i64 %i.ad, 0
  br i1 %.not52.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.e, %.preheader56.i
  %.sroa.0.1.i255 = phi ptr [ %i.ac, %.preheader56.i ], [ %.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sroa.15.1.i254 = phi i64 [ %i.ad, %.preheader56.i ], [ %.sroa.15.0.i, %bb.e ]
  %.sroa.042.0.i253 = phi i64 [ %i.ao, %.preheader56.i ], [ 0, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i255, i64 1
  %i.ad = add nsw i64 %.sroa.15.1.i254, -1        ; 2 uses
  %i.ae = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i253, i64 10) ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 0       ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.ae, 1
  %i.ah = load i8, ptr %.sroa.0.1.i255, align 1, !alias.scope !360, !noalias !361, !noundef !5 ; 2 uses
  br i1 %i.ag, label %bb.g, label %bb.f, !prof !14

bb.f:                                             ; preds = %.preheader56.i.preheader
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add nsw i32 %i.ai, -48                  ; 2 uses
  %i.ak = icmp ult i32 %i.aj, 10
  br i1 %i.ak, label %bb.h, label %.loopexit126

bb.g:                                             ; preds = %.preheader56.i.preheader
  %i.al = add i8 %i.ah, -48
  %i.am = icmp ult i8 %i.al, 10
  br i1 %i.am, label %.loopexit129, label %.loopexit126

bb.h:                                             ; preds = %bb.f
  %i.an = zext nneg i32 %i.aj to i64
  %i.ao = add i64 %i.af, %i.an                    ; 3 uses
  %i.ap = icmp ult i64 %i.ao, %i.af
  br i1 %i.ap, label %.loopexit129, label %.preheader56.i, !prof !14

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.sroa.0.269.i = phi ptr [ %i.aw, %bb.i ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.av, %bb.i ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.ay, %bb.i ], [ 0, %.preheader.i ]
  %i.aq = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !360, !noalias !361, !noundef !5
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -48                  ; 2 uses
  %i.at = icmp ult i32 %i.as, 10
  br i1 %i.at, label %bb.i, label %.loopexit126

bb.i:                                             ; preds = %.lr.ph.i
  %i.au = mul i64 %.sroa.042.267.i, 10
  %i.av = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.ax = zext nneg i32 %i.as to i64
  %i.ay = add i64 %i.au, %i.ax                    ; 2 uses
  %.not53.i = icmp eq i64 %i.av, 0
  br i1 %.not53.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

bb.j:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsdiTcXS7gKpe_7uu_uniq.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %.loopexit129, %bb.j
  ret void

_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit: ; preds = %.preheader56.i, %bb.i, %.preheader.i
  %.sroa.1156.0 = phi i64 [ %i.ay, %bb.i ], [ 0, %.preheader.i ], [ %i.ao, %.preheader56.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.1156.0, ptr %i.ba, align 8
  store i64 0, ptr %0, align 8
  br label %bb.k

.loopexit129:                                     ; preds = %bb.h, %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.bc, align 8
  store i64 0, ptr %0, align 8
  br label %bb.k

.loopexit126:                                     ; preds = %bb.f, %.lr.ph.i, %bb.g, %bb.d, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 0, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.not.i10 = icmp slt i64 %2, 0
  br i1 %.not.i10, label %bb.m, label %bb.l, !prof !19

bb.l:                                             ; preds = %.loopexit126
  %i.bd = icmp eq i64 %2, 0
  br i1 %i.bd, label %.thread, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !362
  %i.be = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, 9) 1) #23, !noalias !362 ; 18 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit126, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.477.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %.loopexit126 ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.477.0.ph, i64 %2) #26
  unreachable

bb.n:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr nonnull align 1 %1, i64 %2, i1 false)
  %cond = icmp eq i64 %2, 1
  %i.bg = load i8, ptr %i.be, align 1, !alias.scope !363, !noalias !364 ; 2 uses
  br i1 %cond, label %bb.o, label %thread-pre-split.i17

bb.o:                                             ; preds = %bb.n
  switch i8 %i.bg, label %bb.v [
    i8 43, label %.thread
    i8 45, label %.thread
  ]

thread-pre-split.i17:                             ; preds = %bb.n
  switch i8 %i.bg, label %bb.v [
    i8 43, label %bb.p
    i8 45, label %bb.q
  ]

bb.p:                                             ; preds = %thread-pre-split.i17
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bi = add nsw i64 %2, -1
  br label %bb.v

bb.q:                                             ; preds = %thread-pre-split.i17
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  %i.bk = add nsw i64 %2, -1                      ; 2 uses
  %i.bl = icmp samesign ult i64 %2, 17
  br i1 %i.bl, label %.lr.ph141.i, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %bb.q, %bb.t
  %.sroa.0.1136.i = phi ptr [ %i.bm, %bb.t ], [ %i.bj, %bb.q ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.bn, %bb.t ], [ %i.bk, %bb.q ]
  %.sroa.084.0134.i = phi i64 [ %i.by, %bb.t ], [ 0, %bb.q ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.bn = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.bo = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.bp = extractvalue { i64, i1 } %i.bo, 0
  %i.bq = extractvalue { i64, i1 } %i.bo, 1
  br i1 %i.bq, label %.thread, label %bb.r, !prof !14

bb.r:                                             ; preds = %.lr.ph.i13
  %i.br = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !363, !noalias !364, !noundef !5
  %i.bs = zext i8 %i.br to i32
  %i.bt = add nsw i32 %i.bs, -48                  ; 2 uses
  %i.bu = icmp ult i32 %i.bt, 10
  br i1 %i.bu, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.bp, i64 %i.bv) ; 2 uses
  %i.bx = extractvalue { i64, i1 } %i.bw, 1
  br i1 %i.bx, label %.thread, label %bb.t, !prof !14

bb.t:                                             ; preds = %bb.s
  %i.by = extractvalue { i64, i1 } %i.bw, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.bn, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i13

.lr.ph141.i:                                      ; preds = %bb.q, %bb.u
  %.sroa.0.2140.i = phi ptr [ %i.cf, %bb.u ], [ %i.bj, %bb.q ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.ce, %bb.u ], [ %i.bk, %bb.q ]
  %.sroa.084.2138.i = phi i64 [ %i.ch, %bb.u ], [ 0, %bb.q ]
  %i.bz = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !363, !noalias !364, !noundef !5
  %i.ca = zext i8 %i.bz to i32
  %i.cb = add nsw i32 %i.ca, -48                  ; 2 uses
  %i.cc = icmp ult i32 %i.cb, 10
  br i1 %i.cc, label %bb.u, label %.thread

bb.u:                                             ; preds = %.lr.ph141.i
  %i.cd = mul i64 %.sroa.084.2138.i, 10
  %i.ce = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.cg = zext nneg i32 %i.cb to i64
  %i.ch = sub i64 %i.cd, %i.cg                    ; 2 uses
  %.not103.i = icmp eq i64 %i.ce, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.v:                                             ; preds = %bb.o, %bb.p, %thread-pre-split.i17
  %.sroa.26.0.i = phi i64 [ %i.bi, %bb.p ], [ %2, %thread-pre-split.i17 ], [ %2, %bb.o ] ; 4 uses
  %.sroa.0.0.i15 = phi ptr [ %i.bh, %bb.p ], [ %i.be, %thread-pre-split.i17 ], [ %i.be, %bb.o ] ; 2 uses
  %i.ci = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.ci, label %.preheader.i16, label %.preheader111.i

.preheader.i16:                                   ; preds = %bb.v
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.v, %bb.y
  %.sroa.0.3145.i = phi ptr [ %i.cj, %bb.y ], [ %.sroa.0.0.i15, %bb.v ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.ck, %bb.y ], [ %.sroa.26.0.i, %bb.v ]
  %.sroa.084.3143.i = phi i64 [ %i.cv, %bb.y ], [ 0, %bb.v ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.ck = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.cl = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.cm = extractvalue { i64, i1 } %i.cl, 0
  %i.cn = extractvalue { i64, i1 } %i.cl, 1
  br i1 %i.cn, label %.thread, label %bb.w, !prof !14

bb.w:                                             ; preds = %.preheader111.i
  %i.co = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !363, !noalias !364, !noundef !5
  %i.cp = zext i8 %i.co to i32
  %i.cq = add nsw i32 %i.cp, -48                  ; 2 uses
  %i.cr = icmp ult i32 %i.cq, 10
  br i1 %i.cr, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.cs = zext nneg i32 %i.cq to i64
  %i.ct = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cm, i64 %i.cs) ; 2 uses
  %i.cu = extractvalue { i64, i1 } %i.ct, 1
  br i1 %i.cu, label %.thread, label %bb.y, !prof !14

bb.y:                                             ; preds = %bb.x
  %i.cv = extractvalue { i64, i1 } %i.ct, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.ck, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i16, %bb.z
  %.sroa.0.4149.i = phi ptr [ %i.dc, %bb.z ], [ %.sroa.0.0.i15, %.preheader.i16 ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.db, %bb.z ], [ %.sroa.26.0.i, %.preheader.i16 ]
  %.sroa.084.4147.i = phi i64 [ %i.de, %bb.z ], [ 0, %.preheader.i16 ]
  %i.cw = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !363, !noalias !364, !noundef !5
  %i.cx = zext i8 %i.cw to i32
  %i.cy = add nsw i32 %i.cx, -48                  ; 2 uses
  %i.cz = icmp ult i32 %i.cy, 10
  br i1 %i.cz, label %bb.z, label %.thread

bb.z:                                             ; preds = %.lr.ph150.i
  %i.da = mul i64 %.sroa.084.4147.i, 10
  %i.db = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.dd = zext nneg i32 %i.cy to i64
  %i.de = add i64 %i.da, %i.dd                    ; 2 uses
  %.not105.i = icmp eq i64 %i.db, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.thread:                                          ; preds = %.lr.ph.i13, %bb.s, %bb.r, %.lr.ph141.i, %.preheader111.i, %bb.w, %bb.x, %.lr.ph150.i, %bb.o, %bb.o, %bb.l
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.l ], [ %i.be, %.preheader111.i ], [ %i.be, %.lr.ph150.i ], [ %i.be, %bb.o ], [ %i.be, %.lr.ph141.i ], [ %i.be, %bb.o ], [ %i.be, %bb.x ], [ %i.be, %bb.w ], [ %i.be, %bb.r ], [ %i.be, %bb.s ], [ %i.be, %.lr.ph.i13 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %2) #22
  %i.df = load i8, ptr %i.n, align 8, !range !12, !noundef !5
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.ap, label %bb.aq

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.t, %bb.u, %bb.y, %bb.z, %.preheader.i16
  %.sroa.1561.0 = phi i64 [ %i.cv, %bb.y ], [ %i.ch, %bb.u ], [ %i.de, %bb.z ], [ 0, %.preheader.i16 ], [ %i.by, %bb.t ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsdiTcXS7gKpe_7uu_uniq(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 8, i64 noundef %.sroa.1561.0) #23
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aq, %bb.ap, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.dh = phi ptr [ %.ph, %bb.ap ], [ %.ph, %bb.aq ], [ %i.be, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  %.sroa.02.0.not = phi i1 [ true, %bb.ap ], [ false, %bb.aq ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.di = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  %i.dj = load i64, ptr %i.w, align 8, !noundef !5
  store i64 0, ptr %i.l, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.di, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.dj, ptr %.sroa.58.0..sroa_idx, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i8 0, ptr %i.dk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !365
  store i64 0, ptr %i.c, align 8, !noalias !365
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !365
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !365
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.dl, align 8, !noalias !365
  store ptr %i.c, ptr %i.b, align 8, !noalias !365
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @100, ptr %i.dm, align 8, !noalias !365
  %i.dn = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #23, !noalias !366
  br i1 %i.dn, label %bb.ab, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdiTcXS7gKpe_7uu_uniq.exit, !prof !14

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #24, !noalias !366
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdiTcXS7gKpe_7uu_uniq.exit: ; preds = %bb.aa
  %.sroa.062.0.copyload63 = load i64, ptr %i.c, align 8, !noalias !367 ; 3 uses
  %.sroa.564.0.copyload66 = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !367, !nonnull !5, !noundef !5 ; 8 uses
  %.sroa.868.0.copyload70 = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !367 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  switch i64 %.sroa.868.0.copyload70, label %thread-pre-split.i50 [
    i64 0, label %.loopexit
    i64 1, label %bb.ac
  ]

bb.ac:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdiTcXS7gKpe_7uu_uniq.exit
  %i.do = load i8, ptr %.sroa.564.0.copyload66, align 1, !alias.scope !368, !noalias !369, !noundef !5 ; 2 uses
  switch i8 %i.do, label %bb.ad [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i50:                             ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdiTcXS7gKpe_7uu_uniq.exit
  %.pr.i51 = load i8, ptr %.sroa.564.0.copyload66, align 1, !alias.scope !368, !noalias !369
  br label %bb.ad

bb.ad:                                            ; preds = %thread-pre-split.i50, %bb.ac
  %i.dp = phi i8 [ %.pr.i51, %thread-pre-split.i50 ], [ %i.do, %bb.ac ]
  switch i8 %i.dp, label %bb.ak [
    i8 43, label %bb.ae
    i8 45, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.564.0.copyload66, i64 1
  %i.dr = add nsw i64 %.sroa.868.0.copyload70, -1
  br label %bb.ak

bb.af:                                            ; preds = %bb.ad
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.564.0.copyload66, i64 1 ; 2 uses
  %i.dt = add nsw i64 %.sroa.868.0.copyload70, -1 ; 3 uses
  %i.du = icmp samesign ult i64 %.sroa.868.0.copyload70, 17
  br i1 %i.du, label %.preheader114.i28, label %.lr.ph.i20

.preheader114.i28:                                ; preds = %bb.af
  %.not103137.i29 = icmp eq i64 %i.dt, 0
  br i1 %.not103137.i29, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit52, label %.lr.ph141.i30

.lr.ph.i20:                                       ; preds = %bb.af, %bb.ai
  %.sroa.0.1136.i21 = phi ptr [ %i.dv, %bb.ai ], [ %i.ds, %bb.af ] ; 2 uses
  %.sroa.26.1135.i22 = phi i64 [ %i.dw, %bb.ai ], [ %i.dt, %bb.af ]
  %.sroa.084.0134.i23 = phi i64 [ %i.eh, %bb.ai ], [ 0, %bb.af ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i21, i64 1
  %i.dw = add nsw i64 %.sroa.26.1135.i22, -1      ; 2 uses
  %i.dx = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i23, i64 10) ; 2 uses
  %i.dy = extractvalue { i64, i1 } %i.dx, 0
  %i.dz = extractvalue { i64, i1 } %i.dx, 1
  br i1 %i.dz, label %.loopexit, label %bb.ag, !prof !14

bb.ag:                                            ; preds = %.lr.ph.i20
  %i.ea = load i8, ptr %.sroa.0.1136.i21, align 1, !alias.scope !368, !noalias !369, !noundef !5
  %i.eb = zext i8 %i.ea to i32
  %i.ec = add nsw i32 %i.eb, -48                  ; 2 uses
  %i.ed = icmp ult i32 %i.ec, 10
  br i1 %i.ed, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.ee = zext nneg i32 %i.ec to i64
  %i.ef = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.dy, i64 %i.ee) ; 2 uses
  %i.eg = extractvalue { i64, i1 } %i.ef, 1
  br i1 %i.eg, label %.loopexit, label %bb.ai, !prof !14

bb.ai:                                            ; preds = %bb.ah
  %i.eh = extractvalue { i64, i1 } %i.ef, 0       ; 2 uses
  %.not102.i25 = icmp eq i64 %i.dw, 0
  br i1 %.not102.i25, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit52, label %.lr.ph.i20

.lr.ph141.i30:                                    ; preds = %.preheader114.i28, %bb.aj
  %.sroa.0.2140.i31 = phi ptr [ %i.eo, %bb.aj ], [ %i.ds, %.preheader114.i28 ] ; 2 uses
  %.sroa.26.2139.i32 = phi i64 [ %i.en, %bb.aj ], [ %i.dt, %.preheader114.i28 ]
  %.sroa.084.2138.i33 = phi i64 [ %i.eq, %bb.aj ], [ 0, %.preheader114.i28 ]
  %i.ei = load i8, ptr %.sroa.0.2140.i31, align 1, !alias.scope !368, !noalias !369, !noundef !5
  %i.ej = zext i8 %i.ei to i32
  %i.ek = add nsw i32 %i.ej, -48                  ; 2 uses
  %i.el = icmp ult i32 %i.ek, 10
  br i1 %i.el, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %.lr.ph141.i30
  %i.em = mul i64 %.sroa.084.2138.i33, 10
  %i.en = add nsw i64 %.sroa.26.2139.i32, -1      ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i31, i64 1
  %i.ep = zext nneg i32 %i.ek to i64
  %i.eq = sub i64 %i.em, %i.ep                    ; 2 uses
  %.not103.i34 = icmp eq i64 %i.en, 0
  br i1 %.not103.i34, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit52, label %.lr.ph141.i30

bb.ak:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.26.0.i35 = phi i64 [ %i.dr, %bb.ae ], [ %.sroa.868.0.copyload70, %bb.ad ] ; 4 uses
  %.sroa.0.0.i36 = phi ptr [ %i.dq, %bb.ae ], [ %.sroa.564.0.copyload66, %bb.ad ] ; 2 uses
  %i.er = icmp samesign ult i64 %.sroa.26.0.i35, 16
  br i1 %i.er, label %.preheader.i43, label %.preheader111.i37

.preheader.i43:                                   ; preds = %bb.ak
  %.not105146.i44 = icmp eq i64 %.sroa.26.0.i35, 0
  br i1 %.not105146.i44, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit52, label %.lr.ph150.i45

.preheader111.i37:                                ; preds = %bb.ak, %bb.an
  %.sroa.0.3145.i38 = phi ptr [ %i.es, %bb.an ], [ %.sroa.0.0.i36, %bb.ak ] ; 2 uses
  %.sroa.26.3144.i39 = phi i64 [ %i.et, %bb.an ], [ %.sroa.26.0.i35, %bb.ak ]
  %.sroa.084.3143.i40 = phi i64 [ %i.fe, %bb.an ], [ 0, %bb.ak ]
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i38, i64 1
  %i.et = add nsw i64 %.sroa.26.3144.i39, -1      ; 2 uses
  %i.eu = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i40, i64 10) ; 2 uses
  %i.ev = extractvalue { i64, i1 } %i.eu, 0
  %i.ew = extractvalue { i64, i1 } %i.eu, 1
  br i1 %i.ew, label %.loopexit, label %bb.al, !prof !14

bb.al:                                            ; preds = %.preheader111.i37
  %i.ex = load i8, ptr %.sroa.0.3145.i38, align 1, !alias.scope !368, !noalias !369, !noundef !5
  %i.ey = zext i8 %i.ex to i32
  %i.ez = add nsw i32 %i.ey, -48                  ; 2 uses
  %i.fa = icmp ult i32 %i.ez, 10
  br i1 %i.fa, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al
  %i.fb = zext nneg i32 %i.ez to i64
  %i.fc = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ev, i64 %i.fb) ; 2 uses
  %i.fd = extractvalue { i64, i1 } %i.fc, 1
  br i1 %i.fd, label %.loopexit, label %bb.an, !prof !14

bb.an:                                            ; preds = %bb.am
  %i.fe = extractvalue { i64, i1 } %i.fc, 0       ; 2 uses
  %.not104.i42 = icmp eq i64 %i.et, 0
  br i1 %.not104.i42, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit52, label %.preheader111.i37

.lr.ph150.i45:                                    ; preds = %.preheader.i43, %bb.ao
  %.sroa.0.4149.i46 = phi ptr [ %i.fl, %bb.ao ], [ %.sroa.0.0.i36, %.preheader.i43 ] ; 2 uses
  %.sroa.26.4148.i47 = phi i64 [ %i.fk, %bb.ao ], [ %.sroa.26.0.i35, %.preheader.i43 ]
  %.sroa.084.4147.i48 = phi i64 [ %i.fn, %bb.ao ], [ 0, %.preheader.i43 ]
  %i.ff = load i8, ptr %.sroa.0.4149.i46, align 1, !alias.scope !368, !noalias !369, !noundef !5
  %i.fg = zext i8 %i.ff to i32
  %i.fh = add nsw i32 %i.fg, -48                  ; 2 uses
  %i.fi = icmp ult i32 %i.fh, 10
  br i1 %i.fi, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %.lr.ph150.i45
  %i.fj = mul i64 %.sroa.084.4147.i48, 10
  %i.fk = add nsw i64 %.sroa.26.4148.i47, -1      ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i46, i64 1
  %i.fm = zext nneg i32 %i.fh to i64
  %i.fn = add i64 %i.fj, %i.fm                    ; 2 uses
  %.not105.i49 = icmp eq i64 %i.fk, 0
  br i1 %.not105.i49, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit52, label %.lr.ph150.i45

bb.ap:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 %2, ptr %i.m, align 8
  %.sroa.5.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.ph, ptr %.sroa.5.0..sroa_idx58, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %2, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsdiTcXS7gKpe_7uu_uniq(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.aa

bb.aq:                                            ; preds = %.thread
  %i.fo = getelementptr inbounds nuw i8, ptr %i.n, i64 8
end_hunk_0
