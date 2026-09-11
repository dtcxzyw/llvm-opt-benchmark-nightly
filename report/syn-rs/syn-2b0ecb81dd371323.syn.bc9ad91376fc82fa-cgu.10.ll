Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.10?download=true
inline.NumInlined: 125
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value13parse_lit_int:bb.a
  br i1 %i.g, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String6insert.exit, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.ck = invoke { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE16into_boxed_sliceCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.bb unwind label %bb.ba     ; 2 uses

bb.az:                                            ; preds = %bb.ax
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !73, !noundef !4 ; 3 uses
  %i.cn = icmp sgt i64 %i.cm, -1
  call void @llvm.assume(i1 %i.cn)
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1)
          to label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String6insert.exit unwind label %bb.bm

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String6insert.exit: ; preds = %bb.az
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !73, !nonnull !4, !noundef !4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cq, ptr nonnull align 1 %i.cp, i64 %i.cm, i1 false)
  %i.cr = load ptr, ptr %i.co, align 8, !alias.scope !73, !nonnull !4, !noundef !4
  store i8 45, ptr %i.cr, align 1
  %i.cs = add nuw i64 %i.cm, 1
  store i64 %i.cs, ptr %i.cl, align 8, !alias.scope !73
  br label %bb.ay

bb.ba:                                            ; preds = %bb.ay
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.thread288

bb.bb:                                            ; preds = %bb.ay
  %i.cu = extractvalue { ptr, i64 } %i.ck, 0      ; 3 uses
  %i.cv = extractvalue { ptr, i64 } %i.ck, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cu) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.34.2352, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.be unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bh, %bb.bf, %bb.bb
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = icmp eq i64 %i.cv, 0
  br i1 %i.cx, label %.thread288, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cu, i64 noundef range(i64 1, 0) %i.cv, i64 noundef 1) #21
  br label %.thread288

bb.be:                                            ; preds = %bb.bb
  %i.cy = load i64, ptr %i.b, align 8, !range !6, !noundef !4
  %i.cz = trunc nuw i64 %i.cy to i1
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.db = load i64, ptr %i.da, align 8, !range !7, !noundef !4 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.cz, label %bb.bf, label %bb.bg, !prof !5

bb.bf:                                            ; preds = %bb.be
  %i.dd = load i64, ptr %i.dc, align 8
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.db, i64 %i.dd) #20
          to label %bb.ae unwind label %bb.bc

bb.bg:                                            ; preds = %bb.be
  %i.de = load ptr, ptr %i.dc, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.df = icmp ule i64 %.sroa.34.2352, %i.db
  call void @llvm.assume(i1 %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.db, ptr %i.c, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.de, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.dh, align 8
  br i1 %.not151316, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bi, %bb.bg
  %i.di = invoke { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE16into_boxed_sliceCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.bj unwind label %bb.bc     ; 2 uses

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.de, ptr align 1 %.sroa.0.2336, i64 %.sroa.34.2352, i1 false)
  store i64 %.sroa.34.2352, ptr %i.dh, align 8
  br label %bb.bh

bb.bj:                                            ; preds = %bb.bh
  %i.dj = extractvalue { ptr, i64 } %i.di, 0      ; 2 uses
  %i.dk = extractvalue { ptr, i64 } %i.di, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dj) ]
  store ptr %i.cu, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cv, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dj, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.dk, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.au

bb.bk:                                            ; preds = %.thread225, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn6bigint6BigIntEBF_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn6bigint6BigIntEBF_.exit193
  ret void

bb.bl:                                            ; preds = %bb.bm, %.thread288
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.bm:                                            ; preds = %bb.az
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #19
          to label %.thread288 unwind label %bb.bl

bb.bn:                                            ; preds = %.loopexit303
  invoke void @_RNvXs0_NtCsgbWeKYPjk8w_3syn6bigintNtB5_6BigIntINtNtNtCsj6eKBz9Db1c_4core3ops5arith9MulAssignhE10mul_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i8 noundef %.sroa.065.0588596)
          to label %bb.bo unwind label %.loopexit302.split

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvXs_NtCsgbWeKYPjk8w_3syn6bigintNtB4_6BigIntINtNtNtCsj6eKBz9Db1c_4core3ops5arith9AddAssignhE10add_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i8 noundef %.lcssa)
          to label %bb.bp unwind label %.loopexit302.split

bb.bp:                                            ; preds = %bb.bo
  %.not.i194.not = icmp eq i64 %.sroa.34.2385.lcssa, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.2386.lcssa, i64 1 ; 2 uses
  br i1 %.not.i194.not, label %.thread287, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.do = load i8, ptr %i.dn, align 1, !alias.scope !70, !noundef !4
  %i.dp = icmp sgt i8 %i.do, -65
  br i1 %i.dp, label %.split.i195, label %.split420.us.invoke

.split.i195:                                      ; preds = %bb.bq
  %i.dq = add i64 %.sroa.34.2385.lcssa, -1
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.2386.lcssa, i64 1
  br label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value13parse_lit_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 18 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %1, align 1, !noundef !4
  switch i8 %i.f, label %.thread [
    i8 34, label %bb.c
    i8 114, label %bb.bw
  ], !prof !8

.thread:                                          ; preds = %bb.a, %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #17
  unreachable

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.not.i.not.i = icmp eq i64 %2, 1
  br i1 %.not.i.not.i, label %.split.i.thread.i, label %bb.d

.split.i.thread.i:                                ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !106
  store i64 0, ptr %i.e, align 8, !noalias !106
  %.sroa.478.0..sroa_idx309.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.478.0..sroa_idx309.i, align 8, !noalias !106
  %.sroa.579.0..sroa_idx310.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.579.0..sroa_idx310.i, align 8, !noalias !106
  br label %.split.i144.thread.i

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !107, !noalias !104, !noundef !4
  %i.i = icmp sgt i8 %i.h, -65
  br i1 %i.i, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.d
  %i.j = add i64 %2, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !106
  store i64 0, ptr %i.e, align 8, !noalias !106
  %.sroa.478.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.478.0..sroa_idx.i, align 8, !noalias !106
  %.sroa.579.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.579.0..sroa_idx.i, align 8, !noalias !106
  %.sroa.586.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.687.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #17, !noalias !104
  unreachable

bb.f:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.k = phi i64 [ 0, %.lr.ph.i ], [ %i.ef, %.backedge.i ] ; 4 uses
  %.sroa.0.0263.i = phi ptr [ %i.g, %.lr.ph.i ], [ %.sroa.0.0.be.i, %.backedge.i ] ; 18 uses
  %.sroa.31.0262.i = phi i64 [ %i.j, %.lr.ph.i ], [ %.sroa.31.0.be.i, %.backedge.i ] ; 17 uses
  %i.l = load i8, ptr %.sroa.0.0263.i, align 1, !noalias !104, !noundef !4 ; 6 uses
  switch i8 %i.l, label %bb.g [
    i8 34, label %bb.k
    i8 92, label %bb.i
    i8 13, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.m = icmp sgt i8 %i.l, -1
  br i1 %i.m, label %bb.h, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit12.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit12.i.i.i: ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0263.i, i64 1
  %i.o = and i8 %i.l, 31
  %i.p = zext nneg i8 %i.o to i32                 ; 3 uses
  %i.q = icmp samesign ne i64 %.sroa.31.0262.i, 1
  call void @llvm.assume(i1 %i.q)
  %i.r = load i8, ptr %i.n, align 1, !alias.scope !108, !noalias !109, !noundef !4
  %i.s = shl nuw nsw i32 %i.p, 6
  %i.t = and i8 %i.r, 63
  %i.u = zext nneg i8 %i.t to i32                 ; 2 uses
  %i.v = or disjoint i32 %i.s, %i.u
  %i.w = icmp samesign ugt i8 %i.l, -33
  br i1 %i.w, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit14.i.i.i, label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value8next_chr.exit.i

bb.h:                                             ; preds = %bb.g
  %i.x = zext nneg i8 %i.l to i32
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value8next_chr.exit.thread.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit12.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0263.i, i64 2
  %i.z = icmp samesign ne i64 %.sroa.31.0262.i, 2
  call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.y, align 1, !alias.scope !108, !noalias !109, !noundef !4
  %i.ab = shl nuw nsw i32 %i.u, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.ab, %i.ad            ; 2 uses
  %i.af = shl nuw nsw i32 %i.p, 12
  %i.ag = or disjoint i32 %i.ae, %i.af
  %i.ah = icmp samesign ugt i8 %i.l, -17
  br i1 %i.ah, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit16.i.i.i, label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value8next_chr.exit.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit14.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0263.i, i64 3
  %i.aj = icmp samesign ne i64 %.sroa.31.0262.i, 3
  call void @llvm.assume(i1 %i.aj)
  %i.ak = load i8, ptr %i.ai, align 1, !alias.scope !108, !noalias !109, !noundef !4
  %i.al = shl nuw nsw i32 %i.p, 18
  %i.am = and i32 %i.al, 1835008
  %i.an = shl nuw nsw i32 %i.ae, 6
  %i.ao = and i8 %i.ak, 63
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.an, %i.ap
  %i.ar = or disjoint i32 %i.aq, %i.am
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value8next_chr.exit.i

bb.i:                                             ; preds = %bb.f
  %.not224.i = icmp eq i64 %.sroa.31.0262.i, 1
  br i1 %.not224.i, label %.split.i144.thread.i, label %bb.x

bb.j:                                             ; preds = %bb.f
  %.not223.i = icmp eq i64 %.sroa.31.0262.i, 1
  br i1 %.not223.i, label %.split.i144.thread.i, label %bb.bm

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !106
  %i.as = call { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE16into_boxed_sliceCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !104 ; 2 uses
  %i.at = extractvalue { ptr, i64 } %i.as, 0      ; 3 uses
  %i.au = extractvalue { ptr, i64 } %i.as, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !106
  %.not.i120.not.i = icmp eq i64 %.sroa.31.0262.i, 1
  br i1 %.not.i120.not.i, label %.split.i121.i, label %bb.m

bb.l:                                             ; preds = %bb.r, %bb.p
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0263.i, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !110, !noalias !104, !noundef !4
  %i.ax = icmp sgt i8 %i.aw, -65
  br i1 %i.ax, label %.split.i121.i, label %bb.p

bb.n:                                             ; preds = %bb.t, %bb.r, %bb.p, %.split.i121.i
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = icmp eq i64 %i.au, 0
  br i1 %i.az, label %common.resume.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef range(i64 1, 0) %i.au, i64 noundef 1) #21, !noalias !104
  br label %common.resume.i

.split.i121.i:                                    ; preds = %bb.m, %bb.k
  %i.ba = add i64 %.sroa.31.0262.i, -1            ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0263.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !106
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.ba, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.q unwind label %bb.n, !noalias !104

bb.p:                                             ; preds = %bb.m
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0263.i, i64 noundef %.sroa.31.0262.i, i64 noundef 1, i64 noundef %.sroa.31.0262.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #20
          to label %bb.l unwind label %bb.n, !noalias !104

bb.q:                                             ; preds = %.split.i121.i
  %i.bc = load i64, ptr %i.b, align 8, !range !6, !noalias !106, !noundef !4
  %i.bd = trunc nuw i64 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !7, !noalias !106, !noundef !4 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.bd, label %bb.r, label %bb.s, !prof !5

bb.r:                                             ; preds = %bb.q
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !106
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.bf, i64 %i.bh) #20
          to label %bb.l unwind label %bb.n, !noalias !104

bb.s:                                             ; preds = %bb.q
  %i.bi = load ptr, ptr %i.bg, align 8, !noalias !106, !nonnull !4, !noundef !4 ; 2 uses
  %i.bj = icmp ule i64 %i.ba, %i.bf
  call void @llvm.assume(i1 %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !106
  store i64 %i.bf, ptr %i.c, align 8, !noalias !106
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.bi, ptr %i.bk, align 8, !noalias !106
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.bl, align 8, !noalias !106
  %.not113.i = icmp eq i64 %i.ba, 0
  br i1 %.not113.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.bm = invoke { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE16into_boxed_sliceCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.v unwind label %bb.n, !noalias !104 ; 2 uses

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr nonnull align 1 %i.bb, i64 %i.ba, i1 false), !noalias !104
  store i64 %i.ba, ptr %i.bl, align 8, !noalias !106
  br label %bb.t

bb.v:                                             ; preds = %bb.t
  %i.bn = extractvalue { ptr, i64 } %i.bm, 0      ; 2 uses
  %i.bo = extractvalue { ptr, i64 } %i.bm, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  store ptr %i.at, ptr %0, align 8, !alias.scope !104, !noalias !105
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.au, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !104, !noalias !105
  %.sroa.570.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bn, ptr %.sroa.570.0..sroa_idx.i, align 8, !alias.scope !104, !noalias !105
  %.sroa.671.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bo, ptr %.sroa.671.0..sroa_idx.i, align 8, !alias.scope !104, !noalias !105
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value20parse_lit_str_cooked.exit

bb.w:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit.i.i
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.bu, %bb.w
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !104
  unreachable

bb.x:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0263.i, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !noalias !104, !noundef !4
  %.not.i125.i = icmp ugt i64 %.sroa.31.0262.i, 2
  br i1 %.not.i125.i, label %bb.y, label %.split.i126.i

bb.y:                                             ; preds = %bb.x
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0263.i, i64 2
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !111, !noalias !104, !noundef !4
  %i.bu = icmp sgt i8 %i.bt, -65
  br i1 %i.bu, label %.split.i126.i, label %.split.i144.thread.i

.split.i126.i:                                    ; preds = %bb.x, %bb.y
  %i.bv = add i64 %.sroa.31.0262.i, -2            ; 16 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0263.i, i64 2 ; 12 uses
  switch i8 %i.br, label %.split.i144.thread.i [
    i8 120, label %bb.z
    i8 117, label %bb.ap
    i8 110, label %.thread186.i
    i8 114, label %bb.aq
    i8 116, label %bb.ar
    i8 92, label %bb.as
    i8 48, label %bb.at
    i8 39, label %bb.au
    i8 34, label %bb.av
    i8 13, label %.preheader.i
    i8 10, label %.preheader.i
  ]

.preheader.i:                                     ; preds = %.split.i126.i, %.split.i126.i
  %.not108.i29 = icmp eq i64 %i.bv, 0
  br i1 %.not108.i29, label %.split.i144.thread.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader.i
  %.pr = load i8, ptr %i.bw, align 1, !noalias !104
  br label %.lr.ph

bb.z:                                             ; preds = %.split.i126.i
  %.not.i130.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i130.i, label %.split.i144.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = load i8, ptr %i.bw, align 1, !alias.scope !112, !noalias !113, !noundef !4 ; 5 uses
  %.not55.i.i = icmp eq i64 %i.bv, 1
  br i1 %.not55.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0263.i, i64 3
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !112, !noalias !113, !noundef !4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.023.0.i.i = phi i8 [ %i.bz, %bb.ab ], [ 0, %bb.aa ] ; 5 uses
  %i.ca = add i8 %i.bx, -48                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.ca, 10
  br i1 %or.cond.i.i, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cb = add i8 %i.bx, -97
  %or.cond3.i.i = icmp ult i8 %i.cb, 6
  br i1 %or.cond3.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cc = add i8 %i.bx, -65
  %or.cond5.i.i = icmp ult i8 %i.cc, 6
  br i1 %or.cond5.i.i, label %bb.ag, label %.split.i144.thread.i

bb.af:                                            ; preds = %bb.ad
  %i.cd = add nsw i8 %i.bx, -87
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ce = add nsw i8 %i.bx, -55
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ac
  %.sroa.032.0.i.i = phi i8 [ %i.ce, %bb.ag ], [ %i.cd, %bb.af ], [ %i.ca, %bb.ac ]
  %i.cf = shl nuw i8 %.sroa.032.0.i.i, 4
  %i.cg = add i8 %.sroa.023.0.i.i, -48            ; 2 uses
  %or.cond7.i.i = icmp ult i8 %i.cg, 10
  br i1 %or.cond7.i.i, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ch = add i8 %.sroa.023.0.i.i, -97
  %or.cond9.i.i = icmp ult i8 %i.ch, 6
  br i1 %or.cond9.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ci = add i8 %.sroa.023.0.i.i, -65
  %or.cond11.i.i = icmp ult i8 %i.ci, 6
  br i1 %or.cond11.i.i, label %bb.al, label %.split.i144.thread.i

bb.ak:                                            ; preds = %bb.ai
  %i.cj = add nsw i8 %.sroa.023.0.i.i, -87
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.ck = add nsw i8 %.sroa.023.0.i.i, -55
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ah
  %.sroa.033.0.i.i = phi i8 [ %i.ck, %bb.al ], [ %i.cj, %bb.ak ], [ %i.cg, %bb.ah ]
  %i.cl = add nuw i8 %.sroa.033.0.i.i, %i.cf      ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.bv, 2
  br i1 %.not.i.i.i.i.i, label %bb.an, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.am
  %i.cm = icmp eq i64 %i.bv, 2
  br i1 %i.cm, label %bb.aw, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0263.i, i64 4
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !114, !noalias !115, !noundef !4
  %i.cp = icmp sgt i8 %i.co, -65
  br i1 %i.cp, label %bb.aw, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.split.i.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %i.bv, i64 noundef range(i64 1, 3) 2, i64 noundef %i.bv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #17
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !104

.noexc.i:                                         ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %.split.i126.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !106
  invoke fastcc void @_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_ueEB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %i.bv)
          to label %bb.ay unwind label %.loopexit225.i, !noalias !104

bb.aq:                                            ; preds = %.split.i126.i
  br label %.thread186.i

bb.ar:                                            ; preds = %.split.i126.i
  br label %.thread186.i

bb.as:                                            ; preds = %.split.i126.i
  br label %.thread186.i

bb.at:                                            ; preds = %.split.i126.i
  br label %.thread186.i

bb.au:                                            ; preds = %.split.i126.i
  br label %.thread186.i

bb.av:                                            ; preds = %.split.i126.i
  br label %.thread186.i

bb.aw:                                            ; preds = %bb.an, %.split.i.i.i.i.i
  %i.cq = icmp slt i8 %i.cl, 0
  br i1 %i.cq, label %.split.i144.thread.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0263.i, i64 4
  %i.cs = add i64 %.sroa.31.0262.i, -4
  %i.ct = zext nneg i8 %i.cl to i32
  br label %.thread186.i

bb.ay:                                            ; preds = %bb.ap
  %i.cu = load i32, ptr %i.d, align 8, !range !9, !noalias !106, !noundef !4 ; 2 uses
  %.not110.i = icmp eq i32 %i.cu, -1
  br i1 %.not110.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.sroa.586.0.copyload.i = load ptr, ptr %.sroa.586.0..sroa_idx.i, align 8, !noalias !106, !nonnull !4, !noundef !4
  %.sroa.687.0.copyload.i = load i64, ptr %.sroa.687.0..sroa_idx.i, align 8, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !106
  %.pre.i = load i64, ptr %.sroa.579.0..sroa_idx.i, align 8, !alias.scope !116, !noalias !106
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !106
  br label %.split.i144.thread.i

.thread186.i:                                     ; preds = %.split.i139.i, %bb.ax, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %.split.i126.i
  %.sroa.060.1.ph.i = phi i32 [ 10, %.split.i126.i ], [ 39, %bb.au ], [ 0, %bb.at ], [ 92, %bb.as ], [ 9, %bb.ar ], [ 13, %bb.aq ], [ 34, %bb.av ], [ %i.ct, %bb.ax ], [ 10, %.split.i139.i ]
  %.sroa.31.3.ph.i = phi i64 [ %i.bv, %.split.i126.i ], [ %i.bv, %bb.au ], [ %i.bv, %bb.at ], [ %i.bv, %bb.as ], [ %i.bv, %bb.ar ], [ %i.bv, %bb.aq ], [ %i.bv, %bb.av ], [ %i.cs, %bb.ax ], [ %i.et, %.split.i139.i ]
  %.sroa.0.3.ph.i = phi ptr [ %i.bw, %.split.i126.i ], [ %i.bw, %bb.au ], [ %i.bw, %bb.at ], [ %i.bw, %bb.as ], [ %i.bw, %bb.ar ], [ %i.bw, %bb.aq ], [ %i.bw, %bb.av ], [ %i.cr, %bb.ax ], [ %i.eu, %.split.i139.i ]
  %i.cv = icmp sgt i64 %i.k, -1
  call void @llvm.assume(i1 %i.cv)
  br label %bb.bd

bb.bb:                                            ; preds = %bb.bs, %bb.az
  %i.cw = phi i64 [ %i.k, %bb.bs ], [ %.pre.i, %bb.az ] ; 6 uses
  %.sroa.060.1.i = phi i32 [ %spec.select.i206.i, %bb.bs ], [ %i.cu, %bb.az ] ; 8 uses
  %.sroa.31.3.i = phi i64 [ %i.ff, %bb.bs ], [ %.sroa.687.0.copyload.i, %bb.az ] ; 4 uses
  %.sroa.0.3.i = phi ptr [ %i.fc, %bb.bs ], [ %.sroa.586.0.copyload.i, %bb.az ] ; 4 uses
  %i.cx = icmp sgt i64 %i.cw, -1
  call void @llvm.assume(i1 %i.cx)
  %i.cy = icmp samesign ult i32 %.sroa.060.1.i, 128
  br i1 %i.cy, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cz = icmp samesign ult i32 %.sroa.060.1.i, 2048 ; 2 uses
  %i.da = icmp samesign ult i32 %.sroa.060.1.i, 65536 ; 2 uses
  %..i.i = select i1 %i.da, i64 3, i64 4
  %.sroa.0.0.ph.i.i = select i1 %i.cz, i64 2, i64 %..i.i
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.sroa.0.0.ph.i.i)
          to label %.noexc131.i unwind label %.loopexit225.i, !noalias !104

.noexc131.i:                                      ; preds = %bb.bc
  %i.db = load ptr, ptr %.sroa.478.0..sroa_idx.i, align 8, !alias.scope !116, !noalias !106, !nonnull !4, !noundef !4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cw ; 9 uses
  %i.dd = trunc i32 %.sroa.060.1.i to i8
  %i.de = and i8 %i.dd, 63
  %i.df = or disjoint i8 %i.de, -128              ; 3 uses
  %i.dg = lshr i32 %.sroa.060.1.i, 6
  %i.dh = trunc i32 %i.dg to i8                   ; 2 uses
  %i.di = and i8 %i.dh, 63
  %i.dj = or disjoint i8 %i.di, -128              ; 2 uses
  %i.dk = lshr i32 %.sroa.060.1.i, 12
  %i.dl = trunc i32 %i.dk to i8                   ; 2 uses
  %i.dm = and i8 %i.dl, 63
  %i.dn = or disjoint i8 %i.dm, -128
  %i.do = lshr i32 %.sroa.060.1.i, 18
  %i.dp = trunc nuw nsw i32 %i.do to i8
  %i.dq = or disjoint i8 %i.dp, -16
  br i1 %i.cz, label %bb.be, label %bb.bf

bb.bd:                                            ; preds = %bb.bb, %.thread186.i
  %i.dr = phi i64 [ %i.k, %.thread186.i ], [ %i.cw, %bb.bb ] ; 2 uses
  %.sroa.0.3194.i = phi ptr [ %.sroa.0.3.ph.i, %.thread186.i ], [ %.sroa.0.3.i, %bb.bb ]
  %.sroa.31.3192.i = phi i64 [ %.sroa.31.3.ph.i, %.thread186.i ], [ %.sroa.31.3.i, %bb.bb ]
  %.sroa.060.1190.i = phi i32 [ %.sroa.060.1.ph.i, %.thread186.i ], [ %.sroa.060.1.i, %bb.bb ]
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 1)
          to label %.noexc132.i unwind label %.loopexit225.i, !noalias !104

.noexc132.i:                                      ; preds = %bb.bd
  %i.ds = load ptr, ptr %.sroa.478.0..sroa_idx.i, align 8, !alias.scope !116, !noalias !106, !nonnull !4, !noundef !4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dr
  %i.du = trunc nuw nsw i32 %.sroa.060.1190.i to i8
  store i8 %i.du, ptr %i.dt, align 1, !noalias !104
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit.i

bb.be:                                            ; preds = %.noexc131.i
  %i.dv = or disjoint i8 %i.dh, -64
  store i8 %i.dv, ptr %i.dc, align 1, !noalias !104
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  store i8 %i.df, ptr %i.dw, align 1, !noalias !104
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit.i

bb.bf:                                            ; preds = %.noexc131.i
  br i1 %i.da, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.dx = or disjoint i8 %i.dl, -32
  store i8 %i.dx, ptr %i.dc, align 1, !noalias !104
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  store i8 %i.dj, ptr %i.dy, align 1, !noalias !104
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  store i8 %i.df, ptr %i.dz, align 1, !noalias !104
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit.i

bb.bh:                                            ; preds = %bb.bf
  store i8 %i.dq, ptr %i.dc, align 1, !noalias !104
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  store i8 %i.dn, ptr %i.ea, align 1, !noalias !104
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  store i8 %i.dj, ptr %i.eb, align 1, !noalias !104
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dc, i64 3
  store i8 %i.df, ptr %i.ec, align 1, !noalias !104
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit.i

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit.i: ; preds = %bb.bh, %bb.bg, %bb.be, %.noexc132.i
  %i.ed = phi i64 [ %i.dr, %.noexc132.i ], [ %i.cw, %bb.be ], [ %i.cw, %bb.bg ], [ %i.cw, %bb.bh ]
  %.sroa.0.3193.i = phi ptr [ %.sroa.0.3194.i, %.noexc132.i ], [ %.sroa.0.3.i, %bb.be ], [ %.sroa.0.3.i, %bb.bg ], [ %.sroa.0.3.i, %bb.bh ]
  %.sroa.31.3191.i = phi i64 [ %.sroa.31.3192.i, %.noexc132.i ], [ %.sroa.31.3.i, %bb.be ], [ %.sroa.31.3.i, %bb.bg ], [ %.sroa.31.3.i, %bb.bh ]
  %.sroa.0.03.i.i = phi i64 [ 1, %.noexc132.i ], [ 2, %bb.be ], [ 3, %bb.bg ], [ 4, %bb.bh ]
  %i.ee = add nuw i64 %.sroa.0.03.i.i, %i.ed      ; 2 uses
  store i64 %i.ee, ptr %.sroa.579.0..sroa_idx.i, align 8, !alias.scope !116, !noalias !106
  br label %.backedge.i

.backedge.i:                                      ; preds = %.lr.ph, %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit.i
  %i.ef = phi i64 [ %i.ee, %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit.i ], [ %i.k, %.lr.ph ]
  %.sroa.31.0.be.i = phi i64 [ %.sroa.31.3191.i, %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit.i ], [ %.sroa.31.1.i30, %.lr.ph ] ; 2 uses
  %.sroa.0.0.be.i = phi ptr [ %.sroa.0.3193.i, %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit.i ], [ %.sroa.0.1.i31, %.lr.ph ]
  %.not104.i = icmp eq i64 %.sroa.31.0.be.i, 0
  br i1 %.not104.i, label %.split.i144.thread.i, label %bb.f

.lr.ph:                                           ; preds = %.split.i134.i, %.lr.ph.preheader
  %i.eg = phi i8 [ %i.ei, %.split.i134.i ], [ %.pr, %.lr.ph.preheader ]
  %.sroa.0.1.i31 = phi ptr [ %i.el, %.split.i134.i ], [ %i.bw, %.lr.ph.preheader ] ; 4 uses
  %.sroa.31.1.i30 = phi i64 [ %i.ek, %.split.i134.i ], [ %i.bv, %.lr.ph.preheader ] ; 4 uses
  switch i8 %i.eg, label %.backedge.i [
    i8 32, label %bb.bi
    i8 9, label %bb.bi
    i8 10, label %bb.bi
    i8 13, label %bb.bi
  ]

bb.bi:                                            ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.not.i133.not.i = icmp eq i64 %.sroa.31.1.i30, 1
  br i1 %.not.i133.not.i, label %.split.i144.thread.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i31, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !noalias !104, !noundef !4 ; 2 uses
  %i.ej = icmp sgt i8 %i.ei, -65
  br i1 %i.ej, label %.split.i134.i, label %.invoke.i

.split.i134.i:                                    ; preds = %bb.bj
  %i.ek = add i64 %.sroa.31.1.i30, -1
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i31, i64 1
  br label %.lr.ph

.split.i144.thread.i:                             ; preds = %bb.br, %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value8next_chr.exit.thread.i, %bb.bm, %.backedge.i, %bb.aw, %bb.aj, %bb.ae, %bb.z, %.split.i126.i, %bb.y, %bb.j, %bb.i, %.preheader.i, %bb.bi, %bb.ba, %.split.i.thread.i
  store ptr null, ptr %0, align 8, !alias.scope !104, !noalias !105
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit.i unwind label %bb.bk, !noalias !104

bb.bk:                                            ; preds = %.split.i144.thread.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume.i unwind label %bb.bl, !noalias !104

bb.bl:                                            ; preds = %bb.bk
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !104
  unreachable

common.resume.i:                                  ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit.i.i, %bb.bk, %bb.o, %bb.n
  %common.resume.op.i = phi { ptr, i32 } [ %i.em, %bb.bk ], [ %lpad.phi.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit.i.i ], [ %i.ay, %bb.n ], [ %i.ay, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit.i: ; preds = %.split.i144.thread.i
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e), !noalias !104
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value20parse_lit_str_cooked.exit

bb.bm:                                            ; preds = %bb.j
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.0263.i, i64 1
  %i.ep = load i8, ptr %i.eo, align 1, !noalias !104, !noundef !4
  %.not105.i = icmp eq i8 %i.ep, 10
  br i1 %.not105.i, label %bb.bn, label %.split.i144.thread.i

bb.bn:                                            ; preds = %bb.bm
  %.not.i138.i = icmp ugt i64 %.sroa.31.0262.i, 2
  br i1 %.not.i138.i, label %bb.bo, label %.split.i139.i

bb.bo:                                            ; preds = %bb.bn
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0.0263.i, i64 2
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !117, !noalias !104, !noundef !4
  %i.es = icmp sgt i8 %i.er, -65
  br i1 %i.es, label %.split.i139.i, label %.invoke.i

.split.i139.i:                                    ; preds = %bb.bo, %bb.bn
  %i.et = add i64 %.sroa.31.0262.i, -2
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.0263.i, i64 2
  br label %.thread186.i

.invoke.i:                                        ; preds = %bb.bo, %bb.bj
  %i.ev = phi ptr [ %.sroa.0.1.i31, %bb.bj ], [ %.sroa.0.0263.i, %bb.bo ]
  %i.ew = phi i64 [ %.sroa.31.1.i30, %bb.bj ], [ %.sroa.31.0262.i, %bb.bo ] ; 2 uses
  %i.ex = phi i64 [ 1, %bb.bj ], [ 2, %bb.bo ]
  %i.ey = phi ptr [ @48, %bb.bj ], [ @49, %bb.bo ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ev, i64 noundef %i.ew, i64 noundef %i.ex, i64 noundef %i.ew, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ey) #20
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !104

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value8next_chr.exit.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit16.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit14.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit12.i.i.i
  %spec.select.i.i = phi i32 [ %i.ag, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit14.i.i.i ], [ %i.v, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit12.i.i.i ], [ %i.ar, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit16.i.i.i ] ; 6 uses
  %i.ez = icmp samesign ult i32 %spec.select.i.i, 128
  br i1 %i.ez, label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value8next_chr.exit.thread.i, label %bb.bp

bb.bp:                                            ; preds = %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value8next_chr.exit.i
  %i.fa = icmp samesign ult i32 %spec.select.i.i, 2048
  br i1 %i.fa, label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value8next_chr.exit.thread.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fb = icmp samesign ult i32 %spec.select.i.i, 65536
  %..i = select i1 %i.fb, i64 3, i64 4
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value8next_chr.exit.thread.i

_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value8next_chr.exit.thread.i: ; preds = %bb.bq, %bb.bp, %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value8next_chr.exit.i, %bb.h
  %spec.select.i206.i = phi i32 [ %spec.select.i.i, %bb.bp ], [ %spec.select.i.i, %bb.bq ], [ %spec.select.i.i, %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value8next_chr.exit.i ], [ %i.x, %bb.h ]
  %.sroa.068.0.i = phi i64 [ 2, %bb.bp ], [ %..i, %bb.bq ], [ 1, %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value8next_chr.exit.i ], [ 1, %bb.h ] ; 3 uses
  %.not.i143.i = icmp ult i64 %.sroa.068.0.i, %.sroa.31.0262.i
  br i1 %.not.i143.i, label %bb.br, label %.split.i144.thread.i

bb.br:                                            ; preds = %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value8next_chr.exit.thread.i
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.0263.i, i64 %.sroa.068.0.i ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !alias.scope !118, !noalias !104, !noundef !4
  %i.fe = icmp sgt i8 %i.fd, -65
  br i1 %i.fe, label %bb.bs, label %.split.i144.thread.i

bb.bs:                                            ; preds = %bb.br
  %i.ff = sub nuw i64 %.sroa.31.0262.i, %.sroa.068.0.i
  br label %bb.bb

.loopexit225.i:                                   ; preds = %bb.bd, %bb.bc, %bb.ap
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit.split-lp.i:                             ; preds = %.invoke.i, %bb.ao
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit.split-lp.i, %.loopexit225.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit225.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit.i.i unwind label %bb.bu, !noalias !104

bb.bu:                                            ; preds = %bb.bt
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i unwind label %bb.bv, !noalias !104

bb.bv:                                            ; preds = %bb.bu
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !104
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit.i.i: ; preds = %bb.bt
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume.i unwind label %bb.w, !noalias !104

_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value20parse_lit_str_cooked.exit: ; preds = %bb.v, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.bx

bb.bw:                                            ; preds = %bb.b
  tail call fastcc void @_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value17parse_lit_str_raw(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value20parse_lit_str_cooked.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value14parse_lit_byte(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store i8 0, ptr %i.e, align 1
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %1, align 1, !noundef !4    ; 2 uses
  store i8 %i.f, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 98
  br i1 %i.g, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.not62 = icmp eq i64 %2, 1
  br i1 %.not62, label %.thread53, label %bb.e

.thread53:                                        ; preds = %bb.c
  store i8 0, ptr %i.d, align 1
  br label %bb.f

bb.d:                                             ; preds = %.thread, %bb.b
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedhhECsgbWeKYPjk8w_3syn(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.e, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @20, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.i = load i8, ptr %i.h, align 1, !noundef !4  ; 2 uses
  store i8 %i.i, ptr %i.d, align 1
  %i.j = icmp eq i8 %i.i, 39
  br i1 %i.j, label %bb.g, label %bb.f, !prof !10

bb.f:                                             ; preds = %.thread53, %bb.e
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedhhECsgbWeKYPjk8w_3syn(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.d, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @21, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = add i64 %2, -2                           ; 2 uses
  %.not45 = icmp eq i64 %i.k, 0
  br i1 %.not45, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.m = load i8, ptr %i.l, align 1, !noundef !4  ; 2 uses
  %i.n = icmp eq i8 %i.m, 92
  br i1 %i.n, label %bb.i, label %bb.v

bb.i:                                             ; preds = %bb.h
  %.not46 = icmp eq i64 %i.k, 1
  br i1 %.not46, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.p = load i8, ptr %i.o, align 1, !noundef !4  ; 2 uses
  %i.q = add i64 %2, -4                           ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  switch i8 %i.p, label %bb.l [
    i8 120, label %bb.m
    i8 110, label %bb.t
    i8 114, label %bb.n
    i8 116, label %bb.o
    i8 92, label %bb.p
    i8 48, label %bb.q
    i8 39, label %bb.p
    i8 34, label %bb.p
  ]

bb.k:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.s, align 8
  br label %bb.ah

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.t, align 8
  br label %bb.ah

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_xShEB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.q)
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noundef !4 ; 2 uses
  %.not47 = icmp eq ptr %i.v, null
  br i1 %.not47, label %bb.s, label %bb.r

bb.n:                                             ; preds = %bb.j
  br label %bb.t

bb.o:                                             ; preds = %bb.j
  br label %bb.t

bb.p:                                             ; preds = %bb.j, %bb.j, %bb.j
  br label %bb.t

bb.q:                                             ; preds = %bb.j
  br label %bb.t

bb.r:                                             ; preds = %bb.m
  %.sroa.014.0.copyload = load i8, ptr %i.c, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.617.0.copyload = load i64, ptr %.sroa.617.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.t

bb.s:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.w, align 8
  br label %bb.ah

bb.t:                                             ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.j, %bb.v
  %.sroa.022.2 = phi i8 [ %i.m, %bb.v ], [ %.sroa.014.0.copyload, %bb.r ], [ 10, %bb.j ], [ 13, %bb.n ], [ 9, %bb.o ], [ %i.p, %bb.p ], [ 0, %bb.q ]
  %.sroa.024.1 = phi ptr [ %i.z, %bb.v ], [ %i.v, %bb.r ], [ %i.r, %bb.j ], [ %i.r, %bb.n ], [ %i.r, %bb.o ], [ %i.r, %bb.p ], [ %i.r, %bb.q ]
  %.sroa.13.1 = phi i64 [ %i.y, %bb.v ], [ %.sroa.617.0.copyload, %bb.r ], [ %i.q, %bb.j ], [ %i.q, %bb.n ], [ %i.q, %bb.o ], [ %i.q, %bb.p ], [ %i.q, %bb.q ] ; 2 uses
  %.not48 = icmp eq i64 %.sroa.13.1, 0
  br i1 %.not48, label %bb.x, label %bb.w

bb.u:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.x, align 8
  br label %bb.ah

bb.v:                                             ; preds = %bb.h
  %i.y = add i64 %2, -3
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 3
  br label %bb.t

bb.w:                                             ; preds = %bb.t
  %i.aa = load i8, ptr %.sroa.024.1, align 1, !noundef !4
  %.not49 = icmp eq i8 %i.aa, 39
  br i1 %.not49, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.t, %bb.w
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ab, align 8
  br label %bb.ah

bb.y:                                             ; preds = %bb.w
  %i.ac = sub i64 %2, %.sroa.13.1
  %i.ad = add i64 %i.ac, 1                        ; 8 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.ab, label %bb.z
end_hunk_0
