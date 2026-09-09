Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_join-0f4b036acf194488.uu_join.c1c2d3e8a40262c4-cgu.0?download=true
inline.NumInlined: 595
inline.NumDeleted: 361
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvCsgDnTRHLCOsi_7uu_join15parse_separator:bb.a
  %i.ap = shl nuw nsw i32 %i.y, 12
  %i.aq = or disjoint i32 %i.ao, %i.ap
  %i.ar = icmp samesign ugt i8 %i.v, -17
  br i1 %i.ar, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit16.i, label %bb.k

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit16.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit14.i
  %i.as = icmp samesign ne i64 %i.r, 3
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.au = load i8, ptr %i.aj, align 1, !noalias !674, !noundef !4
  %i.av = shl nuw nsw i32 %i.y, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.ao, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit12.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit16.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit14.i
  %.sroa.0.0.ph = phi ptr [ %i.aa, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit12.i ], [ %i.aj, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit14.i ], [ %i.at, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit16.i ], [ %i.u, %bb.j ] ; 5 uses
  %.sroa.4.0.i.ph = phi i32 [ %i.af, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit12.i ], [ %i.aq, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit14.i ], [ %i.bb, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit16.i ], [ %i.ah, %bb.j ] ; 2 uses
  %i.bc = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp eq ptr %.sroa.0.0.ph, %i.s
  br i1 %i.bd, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i8, ptr %.sroa.0.0.ph, align 1, !noalias !675, !noundef !4 ; 5 uses
  %i.bf = icmp sgt i8 %i.be, -1
  br i1 %i.bf, label %bb.m, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit12.i22

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit12.i22: ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph, i64 1 ; 2 uses
  %i.bh = and i8 %i.be, 31
  %i.bi = zext nneg i8 %i.bh to i32               ; 3 uses
  %i.bj = icmp ne ptr %i.bg, %i.s
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = load i8, ptr %i.bg, align 1, !noalias !675, !noundef !4
  %i.bl = shl nuw nsw i32 %i.bi, 6
  %i.bm = and i8 %i.bk, 63
  %i.bn = zext nneg i8 %i.bm to i32               ; 2 uses
  %i.bo = or disjoint i32 %i.bl, %i.bn
  %i.bp = icmp samesign ugt i8 %i.be, -33
  br i1 %i.bp, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit14.i25, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bq = zext nneg i8 %i.be to i32
  br label %bb.o

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit14.i25: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit12.i22
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph, i64 2 ; 2 uses
  %i.bs = icmp ne ptr %i.br, %i.s
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i8, ptr %i.br, align 1, !noalias !675, !noundef !4
  %i.bu = shl nuw nsw i32 %i.bn, 6
  %i.bv = and i8 %i.bt, 63
  %i.bw = zext nneg i8 %i.bv to i32
  %i.bx = or disjoint i32 %i.bu, %i.bw            ; 2 uses
  %i.by = shl nuw nsw i32 %i.bi, 12
  %i.bz = or disjoint i32 %i.bx, %i.by
  %i.ca = icmp samesign ugt i8 %i.be, -17
  br i1 %i.ca, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit16.i26, label %bb.o

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit16.i26: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit14.i25
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph, i64 3 ; 2 uses
  %i.cc = icmp ne ptr %i.cb, %i.s
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = load i8, ptr %i.cb, align 1, !noalias !675, !noundef !4
  %i.ce = shl nuw nsw i32 %i.bi, 18
  %i.cf = and i32 %i.ce, 1835008
  %i.cg = shl nuw nsw i32 %i.bx, 6
  %i.ch = and i8 %i.cd, 63
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = or disjoint i32 %i.cg, %i.ci
  %i.ck = or disjoint i32 %i.cj, %i.cf
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #25
  unreachable

bb.o:                                             ; preds = %bb.m, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit12.i22, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit16.i26, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit14.i25
  %.sroa.4.0.i23.ph = phi i32 [ %i.bz, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit14.i25 ], [ %i.ck, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit16.i26 ], [ %i.bo, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgDnTRHLCOsi_7uu_join.exit12.i22 ], [ %i.bq, %bb.m ] ; 2 uses
  %i.cl = icmp samesign ult i32 %.sroa.4.0.i23.ph, 1114112
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = icmp eq i32 %.sroa.4.0.i23.ph, 48
  %i.cn = icmp eq i32 %.sroa.4.0.i.ph, 92
  %or.cond = and i1 %i.cn, %i.cm
  br i1 %or.cond, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.k
  tail call void @_RNvXsE_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechEINtNtCs6JMX4GRUq9U_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.r) #24
  br label %bb.e

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.518.0..sroa_idx, align 8
  %.not.i = icmp slt i64 %i.r, 0
  br i1 %.not.i, label %bb.s, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i, !prof !19

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.q
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !676
  %i.co = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.r, i64 noundef range(i64 1, 9) 1) #24, !noalias !676 ; 10 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.o
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.e

bb.s:                                             ; preds = %bb.q, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.410.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.q ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.410.0.ph, i64 %i.r) #27
  unreachable

bb.t:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.co, ptr nonnull align 1 %i.p, i64 %i.r, i1 false)
  %cond = icmp eq i64 %i.r, 1
  %i.cq = load i8, ptr %i.co, align 1, !alias.scope !677, !noalias !678 ; 2 uses
  br i1 %cond, label %bb.u, label %thread-pre-split.i

bb.u:                                             ; preds = %bb.t
  switch i8 %i.cq, label %bb.ab [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.t
  switch i8 %i.cq, label %bb.ab [
    i8 43, label %bb.v
    i8 45, label %bb.w
  ]

bb.v:                                             ; preds = %thread-pre-split.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cs = add nsw i64 %i.r, -1
  br label %bb.ab

bb.w:                                             ; preds = %thread-pre-split.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 1 ; 2 uses
  %i.cu = add nsw i64 %i.r, -1                    ; 2 uses
  %i.cv = icmp samesign ult i64 %i.r, 17
  br i1 %i.cv, label %.lr.ph141.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %bb.z
  %.sroa.0.1136.i = phi ptr [ %i.cw, %bb.z ], [ %i.ct, %bb.w ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.cx, %bb.z ], [ %i.cu, %bb.w ]
  %.sroa.084.0134.i = phi i64 [ %i.di, %bb.z ], [ 0, %bb.w ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.cx = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.cy = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.cz = extractvalue { i64, i1 } %i.cy, 0
  %i.da = extractvalue { i64, i1 } %i.cy, 1
  br i1 %i.da, label %.loopexit, label %bb.x, !prof !10

bb.x:                                             ; preds = %.lr.ph.i
  %i.db = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !677, !noalias !678, !noundef !4
  %i.dc = zext i8 %i.db to i32
  %i.dd = add nsw i32 %i.dc, -48                  ; 2 uses
  %i.de = icmp ult i32 %i.dd, 10
  br i1 %i.de, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.df = zext nneg i32 %i.dd to i64
  %i.dg = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.cz, i64 %i.df) ; 2 uses
  %i.dh = extractvalue { i64, i1 } %i.dg, 1
  br i1 %i.dh, label %.loopexit, label %bb.z, !prof !10

bb.z:                                             ; preds = %bb.y
  %i.di = extractvalue { i64, i1 } %i.dg, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.cx, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %bb.w, %bb.aa
  %.sroa.0.2140.i = phi ptr [ %i.dp, %bb.aa ], [ %i.ct, %bb.w ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.do, %bb.aa ], [ %i.cu, %bb.w ]
  %.sroa.084.2138.i = phi i64 [ %i.dr, %bb.aa ], [ 0, %bb.w ]
  %i.dj = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !677, !noalias !678, !noundef !4
  %i.dk = zext i8 %i.dj to i32
  %i.dl = add nsw i32 %i.dk, -48                  ; 2 uses
  %i.dm = icmp ult i32 %i.dl, 10
  br i1 %i.dm, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %.lr.ph141.i
  %i.dn = mul i64 %.sroa.084.2138.i, 10
  %i.do = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.dq = zext nneg i32 %i.dl to i64
  %i.dr = sub i64 %i.dn, %i.dq                    ; 2 uses
  %.not103.i = icmp eq i64 %i.do, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.ab:                                            ; preds = %bb.u, %bb.v, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.cs, %bb.v ], [ %i.r, %thread-pre-split.i ], [ %i.r, %bb.u ] ; 4 uses
  %.sroa.0.0.i29 = phi ptr [ %i.cr, %bb.v ], [ %i.co, %thread-pre-split.i ], [ %i.co, %bb.u ] ; 2 uses
  %i.ds = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.ds, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.ab
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.ab, %bb.ae
  %.sroa.0.3145.i = phi ptr [ %i.dt, %bb.ae ], [ %.sroa.0.0.i29, %bb.ab ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.du, %bb.ae ], [ %.sroa.26.0.i, %bb.ab ]
  %.sroa.084.3143.i = phi i64 [ %i.ef, %bb.ae ], [ 0, %bb.ab ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.du = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.dv = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.dw = extractvalue { i64, i1 } %i.dv, 0
  %i.dx = extractvalue { i64, i1 } %i.dv, 1
  br i1 %i.dx, label %.loopexit, label %bb.ac, !prof !10

bb.ac:                                            ; preds = %.preheader111.i
  %i.dy = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !677, !noalias !678, !noundef !4
  %i.dz = zext i8 %i.dy to i32
  %i.ea = add nsw i32 %i.dz, -48                  ; 2 uses
  %i.eb = icmp ult i32 %i.ea, 10
  br i1 %i.eb, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.ec = zext nneg i32 %i.ea to i64
  %i.ed = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.dw, i64 %i.ec) ; 2 uses
  %i.ee = extractvalue { i64, i1 } %i.ed, 1
  br i1 %i.ee, label %.loopexit, label %bb.ae, !prof !10

bb.ae:                                            ; preds = %bb.ad
  %i.ef = extractvalue { i64, i1 } %i.ed, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.du, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.af
  %.sroa.0.4149.i = phi ptr [ %i.em, %bb.af ], [ %.sroa.0.0.i29, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.el, %bb.af ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.eo, %bb.af ], [ 0, %.preheader.i ]
  %i.eg = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !677, !noalias !678, !noundef !4
  %i.eh = zext i8 %i.eg to i32
  %i.ei = add nsw i32 %i.eh, -48                  ; 2 uses
  %i.ej = icmp ult i32 %i.ei, 10
  br i1 %i.ej, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %.lr.ph150.i
  %i.ek = mul i64 %.sroa.084.4147.i, 10
  %i.el = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.en = zext nneg i32 %i.ei to i64
  %i.eo = add i64 %i.ek, %i.en                    ; 2 uses
  %.not105.i = icmp eq i64 %i.el, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.loopexit:                                        ; preds = %.lr.ph.i, %bb.y, %bb.x, %.lr.ph141.i, %.preheader111.i, %bb.ac, %bb.ad, %.lr.ph150.i, %bb.u, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef %i.r) #23
  %i.ep = load i8, ptr %i.f, align 8, !range !14, !noundef !4
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.ah, label %bb.ai

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.z, %bb.aa, %bb.ae, %bb.af, %.preheader.i
  %.sroa.156.0 = phi i64 [ %i.ef, %bb.ae ], [ %i.dr, %bb.aa ], [ %i.eo, %bb.af ], [ 0, %.preheader.i ], [ %i.di, %bb.z ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 5, i64 noundef %.sroa.156.0) #24
  br label %bb.ag

bb.ag:                                            ; preds = %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 30, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.co, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !679
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit

bb.ah:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.r, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.co, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.r, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 30, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit

bb.ai:                                            ; preds = %.loopexit
  %i.er = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.es = load double, ptr %i.er, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 5, double noundef %i.es) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ag

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !680
  %i.et = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #24, !noalias !680 ; 4 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.aj, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit30, !prof !10

bb.aj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #27, !noalias !680
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit30: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.et, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store i32 1, ptr %.sroa.413.0..sroa_idx, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.et, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @44, ptr %i.ew, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvCsgDnTRHLCOsi_7uu_join16get_field_number(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 0, 2) %1, i64 %2, i64 noundef range(i64 0, 2) %3, i64 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [20 x i8], align 1                ; 4 uses
  %i.c = alloca [20 x i8], align 1                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 13 uses
  %i.j = trunc nuw i64 %1 to i1
  %i.k = trunc nuw i64 %3 to i1                   ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp ne i64 %2, %4
  %or.cond.not = select i1 %i.k, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.d, label %bb.as

bb.c:                                             ; preds = %bb.a
  br i1 %i.k, label %bb.as, label %bb.at

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.l = add i64 %2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %i.l, ptr noalias nofree noundef nonnull %i.c, i64 noundef 20) #24 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0
  %i.o = extractvalue { ptr, i64 } %i.m, 1        ; 16 uses
  %.not.i = icmp slt i64 %i.o, 0
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !19

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.thread, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit143

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.e
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !697
  %i.q = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.o, i64 noundef range(i64 1, 9) 1) #24, !noalias !697 ; 18 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.d ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.o) #27
  unreachable

bb.g:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.n, i64 %i.o, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %cond136 = icmp eq i64 %i.o, 1
  %i.s = load i8, ptr %i.q, align 1, !alias.scope !698, !noalias !699 ; 2 uses
  br i1 %cond136, label %bb.h, label %thread-pre-split.i

bb.h:                                             ; preds = %bb.g
  switch i8 %i.s, label %bb.o [
    i8 43, label %.loopexit143
    i8 45, label %.loopexit143
  ]

thread-pre-split.i:                               ; preds = %bb.g
  switch i8 %i.s, label %bb.o [
    i8 43, label %bb.i
    i8 45, label %bb.j
  ]

bb.i:                                             ; preds = %thread-pre-split.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.u = add nsw i64 %i.o, -1
  br label %bb.o

bb.j:                                             ; preds = %thread-pre-split.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %i.w = add nsw i64 %i.o, -1                     ; 2 uses
  %i.x = icmp samesign ult i64 %i.o, 17
  br i1 %i.x, label %.lr.ph141.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.m
  %.sroa.0.1136.i = phi ptr [ %i.y, %bb.m ], [ %i.v, %bb.j ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.z, %bb.m ], [ %i.w, %bb.j ]
  %.sroa.084.0134.i = phi i64 [ %i.ak, %bb.m ], [ 0, %bb.j ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.z = add nsw i64 %.sroa.26.1135.i, -1         ; 2 uses
  %i.aa = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 0
  %i.ac = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ac, label %.loopexit143, label %bb.k, !prof !10

bb.k:                                             ; preds = %.lr.ph.i
  %i.ad = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !698, !noalias !699, !noundef !4
  %i.ae = zext i8 %i.ad to i32
  %i.af = add nsw i32 %i.ae, -48                  ; 2 uses
  %i.ag = icmp ult i32 %i.af, 10
  br i1 %i.ag, label %bb.l, label %.loopexit143

bb.l:                                             ; preds = %bb.k
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ab, i64 %i.ah) ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.aj, label %.loopexit143, label %bb.m, !prof !10

bb.m:                                             ; preds = %bb.l
  %i.ak = extractvalue { i64, i1 } %i.ai, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.z, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %bb.j, %bb.n
  %.sroa.0.2140.i = phi ptr [ %i.ar, %bb.n ], [ %i.v, %bb.j ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.aq, %bb.n ], [ %i.w, %bb.j ]
  %.sroa.084.2138.i = phi i64 [ %i.at, %bb.n ], [ 0, %bb.j ]
  %i.al = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !698, !noalias !699, !noundef !4
  %i.am = zext i8 %i.al to i32
  %i.an = add nsw i32 %i.am, -48                  ; 2 uses
  %i.ao = icmp ult i32 %i.an, 10
  br i1 %i.ao, label %bb.n, label %.loopexit143

bb.n:                                             ; preds = %.lr.ph141.i
  %i.ap = mul i64 %.sroa.084.2138.i, 10
  %i.aq = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.as = zext nneg i32 %i.an to i64
  %i.at = sub i64 %i.ap, %i.as                    ; 2 uses
  %.not103.i = icmp eq i64 %i.aq, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.o:                                             ; preds = %bb.h, %bb.i, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.u, %bb.i ], [ %i.o, %thread-pre-split.i ], [ %i.o, %bb.h ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.t, %bb.i ], [ %i.q, %thread-pre-split.i ], [ %i.q, %bb.h ] ; 2 uses
  %i.au = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.au, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.o
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.o, %bb.r
  %.sroa.0.3145.i = phi ptr [ %i.av, %bb.r ], [ %.sroa.0.0.i, %bb.o ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.aw, %bb.r ], [ %.sroa.26.0.i, %bb.o ]
  %.sroa.084.3143.i = phi i64 [ %i.bh, %bb.r ], [ 0, %bb.o ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.aw = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.ax = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.ay = extractvalue { i64, i1 } %i.ax, 0
  %i.az = extractvalue { i64, i1 } %i.ax, 1
  br i1 %i.az, label %.loopexit143, label %bb.p, !prof !10

bb.p:                                             ; preds = %.preheader111.i
  %i.ba = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !698, !noalias !699, !noundef !4
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add nsw i32 %i.bb, -48                  ; 2 uses
  %i.bd = icmp ult i32 %i.bc, 10
  br i1 %i.bd, label %bb.q, label %.loopexit143

bb.q:                                             ; preds = %bb.p
  %i.be = zext nneg i32 %i.bc to i64
  %i.bf = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ay, i64 %i.be) ; 2 uses
  %i.bg = extractvalue { i64, i1 } %i.bf, 1
  br i1 %i.bg, label %.loopexit143, label %bb.r, !prof !10

bb.r:                                             ; preds = %bb.q
  %i.bh = extractvalue { i64, i1 } %i.bf, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.aw, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.s
  %.sroa.0.4149.i = phi ptr [ %i.bo, %bb.s ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.bn, %bb.s ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.bq, %bb.s ], [ 0, %.preheader.i ]
  %i.bi = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !698, !noalias !699, !noundef !4
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add nsw i32 %i.bj, -48                  ; 2 uses
  %i.bl = icmp ult i32 %i.bk, 10
  br i1 %i.bl, label %bb.s, label %.loopexit143

bb.s:                                             ; preds = %.lr.ph150.i
  %i.bm = mul i64 %.sroa.084.4147.i, 10
  %i.bn = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.bp = zext nneg i32 %i.bk to i64
  %i.bq = add i64 %i.bm, %i.bp                    ; 2 uses
  %.not105.i = icmp eq i64 %i.bn, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.loopexit143:                                     ; preds = %.lr.ph.i, %bb.l, %bb.k, %.lr.ph141.i, %.preheader111.i, %bb.p, %bb.q, %.lr.ph150.i, %bb.h, %bb.h, %.thread
  %.ph = phi ptr [ %i.q, %.preheader111.i ], [ %i.q, %.lr.ph141.i ], [ %i.q, %.lr.ph150.i ], [ %i.q, %bb.h ], [ inttoptr (i64 1 to ptr), %.thread ], [ %i.q, %bb.h ], [ %i.q, %bb.q ], [ %i.q, %bb.p ], [ %i.q, %bb.k ], [ %i.q, %bb.l ], [ %i.q, %.lr.ph.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.o) #23
  %i.br = load i8, ptr %i.h, align 8, !range !14, !noundef !4
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.v, label %bb.w

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.m, %bb.n, %bb.r, %bb.s, %.preheader.i
  %.sroa.1567.0 = phi i64 [ %i.bh, %bb.r ], [ %i.at, %bb.n ], [ %i.bq, %bb.s ], [ 0, %.preheader.i ], [ %i.ak, %bb.m ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 6, i64 noundef %.sroa.1567.0) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %bb.v, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.bt = phi ptr [ %.ph, %bb.v ], [ %.ph, %bb.w ], [ %i.q, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  %.sroa.09.0.not = phi i1 [ true, %bb.v ], [ false, %bb.w ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  %i.bu = add i64 %4, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bv = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %i.bu, ptr noalias nofree noundef nonnull %i.b, i64 noundef 20) #24 ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bv, 0
  %i.bx = extractvalue { ptr, i64 } %i.bv, 1      ; 16 uses
  %.not.i23 = icmp slt i64 %i.bx, 0
  br i1 %.not.i23, label %bb.x, label %bb.u, !prof !19

bb.u:                                             ; preds = %bb.t
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %.thread120, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i24

.thread120:                                       ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i24: ; preds = %bb.u
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !700
  %i.bz = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bx, i64 noundef range(i64 1, 9) 1) #24, !noalias !700 ; 18 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.x, label %bb.y

bb.v:                                             ; preds = %.loopexit143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.o, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.ph, ptr %.sroa.5.0..sroa_idx64, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.o, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 6, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.t

bb.w:                                             ; preds = %.loopexit143
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cc = load double, ptr %i.cb, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 6, double noundef %i.cc) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.t

bb.x:                                             ; preds = %bb.t, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i24
  %.sroa.478.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i24 ], [ 0, %bb.t ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.478.0.ph, i64 %i.bx) #27
  unreachable

bb.y:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr align 1 %i.bw, i64 %i.bx, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %cond = icmp eq i64 %i.bx, 1
  %i.cd = load i8, ptr %i.bz, align 1, !alias.scope !701, !noalias !702 ; 2 uses
  br i1 %cond, label %bb.z, label %thread-pre-split.i58

bb.z:                                             ; preds = %bb.y
  switch i8 %i.cd, label %bb.ag [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i58:                             ; preds = %bb.y
  switch i8 %i.cd, label %bb.ag [
    i8 43, label %bb.aa
    i8 45, label %bb.ab
  ]

bb.aa:                                            ; preds = %thread-pre-split.i58
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cf = add nsw i64 %i.bx, -1
  br label %bb.ag

bb.ab:                                            ; preds = %thread-pre-split.i58
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 2 uses
  %i.ch = add nsw i64 %i.bx, -1                   ; 2 uses
  %i.ci = icmp samesign ult i64 %i.bx, 17
  br i1 %i.ci, label %.lr.ph141.i38, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.ab, %bb.ae
  %.sroa.0.1136.i29 = phi ptr [ %i.cj, %bb.ae ], [ %i.cg, %bb.ab ] ; 2 uses
  %.sroa.26.1135.i30 = phi i64 [ %i.ck, %bb.ae ], [ %i.ch, %bb.ab ]
  %.sroa.084.0134.i31 = phi i64 [ %i.cv, %bb.ae ], [ 0, %bb.ab ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i29, i64 1
  %i.ck = add nsw i64 %.sroa.26.1135.i30, -1      ; 2 uses
  %i.cl = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i31, i64 10) ; 2 uses
  %i.cm = extractvalue { i64, i1 } %i.cl, 0
  %i.cn = extractvalue { i64, i1 } %i.cl, 1
  br i1 %i.cn, label %.loopexit, label %bb.ac, !prof !10

bb.ac:                                            ; preds = %.lr.ph.i28
  %i.co = load i8, ptr %.sroa.0.1136.i29, align 1, !alias.scope !701, !noalias !702, !noundef !4
  %i.cp = zext i8 %i.co to i32
  %i.cq = add nsw i32 %i.cp, -48                  ; 2 uses
  %i.cr = icmp ult i32 %i.cq, 10
  br i1 %i.cr, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.cs = zext nneg i32 %i.cq to i64
  %i.ct = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.cm, i64 %i.cs) ; 2 uses
  %i.cu = extractvalue { i64, i1 } %i.ct, 1
  br i1 %i.cu, label %.loopexit, label %bb.ae, !prof !10

bb.ae:                                            ; preds = %bb.ad
  %i.cv = extractvalue { i64, i1 } %i.ct, 0       ; 2 uses
  %.not102.i33 = icmp eq i64 %i.ck, 0
  br i1 %.not102.i33, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit60, label %.lr.ph.i28

.lr.ph141.i38:                                    ; preds = %bb.ab, %bb.af
  %.sroa.0.2140.i39 = phi ptr [ %i.dc, %bb.af ], [ %i.cg, %bb.ab ] ; 2 uses
  %.sroa.26.2139.i40 = phi i64 [ %i.db, %bb.af ], [ %i.ch, %bb.ab ]
  %.sroa.084.2138.i41 = phi i64 [ %i.de, %bb.af ], [ 0, %bb.ab ]
  %i.cw = load i8, ptr %.sroa.0.2140.i39, align 1, !alias.scope !701, !noalias !702, !noundef !4
  %i.cx = zext i8 %i.cw to i32
  %i.cy = add nsw i32 %i.cx, -48                  ; 2 uses
  %i.cz = icmp ult i32 %i.cy, 10
  br i1 %i.cz, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %.lr.ph141.i38
  %i.da = mul i64 %.sroa.084.2138.i41, 10
  %i.db = add nsw i64 %.sroa.26.2139.i40, -1      ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i39, i64 1
  %i.dd = zext nneg i32 %i.cy to i64
  %i.de = sub i64 %i.da, %i.dd                    ; 2 uses
  %.not103.i42 = icmp eq i64 %i.db, 0
  br i1 %.not103.i42, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit60, label %.lr.ph141.i38

bb.ag:                                            ; preds = %bb.z, %bb.aa, %thread-pre-split.i58
  %.sroa.26.0.i43 = phi i64 [ %i.cf, %bb.aa ], [ %i.bx, %thread-pre-split.i58 ], [ %i.bx, %bb.z ] ; 4 uses
  %.sroa.0.0.i44 = phi ptr [ %i.ce, %bb.aa ], [ %i.bz, %thread-pre-split.i58 ], [ %i.bz, %bb.z ] ; 2 uses
  %i.df = icmp samesign ult i64 %.sroa.26.0.i43, 16
  br i1 %i.df, label %.preheader.i51, label %.preheader111.i45

.preheader.i51:                                   ; preds = %bb.ag
  %.not105146.i52 = icmp eq i64 %.sroa.26.0.i43, 0
  br i1 %.not105146.i52, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit60, label %.lr.ph150.i53

.preheader111.i45:                                ; preds = %bb.ag, %bb.aj
  %.sroa.0.3145.i46 = phi ptr [ %i.dg, %bb.aj ], [ %.sroa.0.0.i44, %bb.ag ] ; 2 uses
  %.sroa.26.3144.i47 = phi i64 [ %i.dh, %bb.aj ], [ %.sroa.26.0.i43, %bb.ag ]
  %.sroa.084.3143.i48 = phi i64 [ %i.ds, %bb.aj ], [ 0, %bb.ag ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i46, i64 1
  %i.dh = add nsw i64 %.sroa.26.3144.i47, -1      ; 2 uses
  %i.di = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i48, i64 10) ; 2 uses
  %i.dj = extractvalue { i64, i1 } %i.di, 0
  %i.dk = extractvalue { i64, i1 } %i.di, 1
  br i1 %i.dk, label %.loopexit, label %bb.ah, !prof !10

bb.ah:                                            ; preds = %.preheader111.i45
  %i.dl = load i8, ptr %.sroa.0.3145.i46, align 1, !alias.scope !701, !noalias !702, !noundef !4
  %i.dm = zext i8 %i.dl to i32
  %i.dn = add nsw i32 %i.dm, -48                  ; 2 uses
  %i.do = icmp ult i32 %i.dn, 10
  br i1 %i.do, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.dp = zext nneg i32 %i.dn to i64
  %i.dq = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.dj, i64 %i.dp) ; 2 uses
  %i.dr = extractvalue { i64, i1 } %i.dq, 1
  br i1 %i.dr, label %.loopexit, label %bb.aj, !prof !10

bb.aj:                                            ; preds = %bb.ai
  %i.ds = extractvalue { i64, i1 } %i.dq, 0       ; 2 uses
  %.not104.i50 = icmp eq i64 %i.dh, 0
  br i1 %.not104.i50, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit60, label %.preheader111.i45

.lr.ph150.i53:                                    ; preds = %.preheader.i51, %bb.ak
  %.sroa.0.4149.i54 = phi ptr [ %i.dz, %bb.ak ], [ %.sroa.0.0.i44, %.preheader.i51 ] ; 2 uses
  %.sroa.26.4148.i55 = phi i64 [ %i.dy, %bb.ak ], [ %.sroa.26.0.i43, %.preheader.i51 ]
  %.sroa.084.4147.i56 = phi i64 [ %i.eb, %bb.ak ], [ 0, %.preheader.i51 ]
  %i.dt = load i8, ptr %.sroa.0.4149.i54, align 1, !alias.scope !701, !noalias !702, !noundef !4
  %i.du = zext i8 %i.dt to i32
  %i.dv = add nsw i32 %i.du, -48                  ; 2 uses
  %i.dw = icmp ult i32 %i.dv, 10
  br i1 %i.dw, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %.lr.ph150.i53
  %i.dx = mul i64 %.sroa.084.4147.i56, 10
  %i.dy = add nsw i64 %.sroa.26.4148.i55, -1      ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i54, i64 1
  %i.ea = zext nneg i32 %i.dv to i64
  %i.eb = add i64 %i.dx, %i.ea                    ; 2 uses
  %.not105.i57 = icmp eq i64 %i.dy, 0
  br i1 %.not105.i57, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit60, label %.lr.ph150.i53

.loopexit:                                        ; preds = %.lr.ph.i28, %bb.ad, %bb.ac, %.lr.ph141.i38, %.preheader111.i45, %bb.ah, %bb.ai, %.lr.ph150.i53, %bb.z, %bb.z, %.thread120
  %.ph128 = phi ptr [ %i.bz, %.preheader111.i45 ], [ %i.bz, %.lr.ph141.i38 ], [ %i.bz, %.lr.ph150.i53 ], [ %i.bz, %bb.z ], [ inttoptr (i64 1 to ptr), %.thread120 ], [ %i.bz, %bb.z ], [ %i.bz, %bb.ai ], [ %i.bz, %bb.ah ], [ %i.bz, %bb.ac ], [ %i.bz, %bb.ad ], [ %i.bz, %.lr.ph.i28 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph128, i64 noundef %i.bx) #23
  %i.ec = load i8, ptr %i.f, align 8, !range !14, !noundef !4
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.an, label %bb.ao

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit60: ; preds = %bb.ae, %bb.af, %bb.aj, %bb.ak, %.preheader.i51
  %.sroa.1574.0 = phi i64 [ %i.ds, %bb.aj ], [ %i.de, %bb.af ], [ %i.eb, %bb.ak ], [ 0, %.preheader.i51 ], [ %i.cv, %bb.ae ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 6, i64 noundef %.sroa.1574.0) #24
  br label %bb.al

bb.al:                                            ; preds = %bb.ao, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit60
  %i.ee = phi ptr [ %.ph128, %bb.ao ], [ %i.bz, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit60 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 30, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ef = icmp eq i64 %i.bx, 0
  br i1 %i.ef, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ee, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !703
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit

bb.an:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.bx, ptr %i.e, align 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.ph128, ptr %.sroa.569.0..sroa_idx, align 8
  %.sroa.870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.bx, ptr %.sroa.870.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 6, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 30, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit

bb.ao:                                            ; preds = %.loopexit
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.eh = load double, ptr %i.eg, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 6, double noundef %i.eh) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.al

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit: ; preds = %bb.am, %bb.al, %bb.an
  %i.ei = icmp eq i64 %i.o, 0
  %or.cond = or i1 %.sroa.09.0.not, %i.ei
  br i1 %or.cond, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit63, label %bb.aq

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit63: ; preds = %bb.aq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !704
  %i.ej = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #24, !noalias !704 ; 4 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.ap, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !10

bb.ap:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit63
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #27, !noalias !704
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  store i32 1, ptr %.sroa.482.0..sroa_idx, align 8
  store ptr %i.ej, ptr %0, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @44, ptr %i.el, align 8
  br label %bb.ar

bb.aq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bt, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !705
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit63

bb.ar:                                            ; preds = %bb.at, %bb.as, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  ret void

bb.as:                                            ; preds = %bb.c, %bb.b
  %.sroa.08.0 = phi i64 [ %2, %bb.b ], [ %4, %bb.c ]
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.08.0, ptr %i.em, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ar

bb.at:                                            ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.ar
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvCsgDnTRHLCOsi_7uu_join18parse_field_number(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread32
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %1, align 1, !alias.scope !719, !noalias !720, !noundef !4 ; 2 uses
  switch i8 %i.j, label %bb.c [
    i8 43, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread32
    i8 45, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread32
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !719, !noalias !720
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.k = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.j, %bb.b ]
  %cond.i = icmp eq i8 %i.k, 43                   ; 2 uses
  %i.l = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %2, %i.l            ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.m = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.m, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.c
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread32, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.f
  %.not52.i = icmp eq i64 %i.o, 0
  br i1 %.not52.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.c, %.preheader56.i
  %.sroa.0.1.i127 = phi ptr [ %i.n, %.preheader56.i ], [ %.sroa.0.0.i, %bb.c ] ; 2 uses
  %.sroa.15.1.i126 = phi i64 [ %i.o, %.preheader56.i ], [ %.sroa.15.0.i, %bb.c ]
  %.sroa.042.0.i125 = phi i64 [ %i.z, %.preheader56.i ], [ 0, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i127, i64 1
  %i.o = add nsw i64 %.sroa.15.1.i126, -1         ; 2 uses
  %i.p = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i125, i64 10) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 0         ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.p, 1
  %i.s = load i8, ptr %.sroa.0.1.i127, align 1, !alias.scope !719, !noalias !720, !noundef !4 ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.d, !prof !10

bb.d:                                             ; preds = %.preheader56.i.preheader
  %i.t = zext i8 %i.s to i32
  %i.u = add nsw i32 %i.t, -48                    ; 2 uses
  %i.v = icmp ult i32 %i.u, 10
  br i1 %i.v, label %bb.f, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread32

bb.e:                                             ; preds = %.preheader56.i.preheader
  %i.w = add i8 %i.s, -48
  %i.x = icmp ult i8 %i.w, 10
  br i1 %i.x, label %.loopexit47, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread32

bb.f:                                             ; preds = %bb.d
  %i.y = zext nneg i32 %i.u to i64
  %i.z = add i64 %i.q, %i.y                       ; 3 uses
  %i.aa = icmp ult i64 %i.z, %i.q
  br i1 %i.aa, label %.loopexit47, label %.preheader56.i, !prof !10

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.g
  %.sroa.0.269.i = phi ptr [ %i.ah, %bb.g ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.ag, %bb.g ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.aj, %bb.g ], [ 0, %.preheader.i ]
  %i.ab = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !719, !noalias !720, !noundef !4
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, -48                  ; 2 uses
  %i.ae = icmp ult i32 %i.ad, 10
  br i1 %i.ae, label %bb.g, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread32

bb.g:                                             ; preds = %.lr.ph.i
  %i.af = mul i64 %.sroa.042.267.i, 10
  %i.ag = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.ai = zext nneg i32 %i.ad to i64
  %i.aj = add i64 %i.af, %i.ai                    ; 2 uses
  %.not53.i = icmp eq i64 %i.ag, 0
  br i1 %.not53.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit: ; preds = %.preheader56.i, %bb.g
  %.sroa.1111.0 = phi i64 [ %i.aj, %bb.g ], [ %i.z, %.preheader56.i ] ; 2 uses
  %.not = icmp eq i64 %.sroa.1111.0, 0
  br i1 %.not, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread32, label %bb.h

bb.h:                                             ; preds = %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit
  %i.ak = add i64 %.sroa.1111.0, -1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ak, ptr %i.al, align 8
  store ptr null, ptr %0, align 8
  br label %bb.w

_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread32: ; preds = %bb.d, %.lr.ph.i, %bb.a, %bb.b, %bb.b, %bb.e, %.preheader.i, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %1, ptr %.sroa.42.0..sroa_idx, align 8
end_hunk_0
