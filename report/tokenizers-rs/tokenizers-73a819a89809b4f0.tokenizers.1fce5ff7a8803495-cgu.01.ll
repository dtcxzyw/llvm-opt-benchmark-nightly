Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.01?download=true
inline.NumInlined: 2320
inline.NumDeleted: 1225
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE9from_iterCs2JiOgHzbbc7_10tokenizers:bb.a
  %i.l = and i8 %i.j, 63
  %i.m = zext nneg i8 %i.l to i32                 ; 2 uses
  %i.n = or disjoint i32 %i.k, %i.m
  %i.o = icmp samesign ugt i8 %i.d, -33
  br i1 %i.o, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = zext nneg i8 %i.d to i32
  br label %bb.d

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i
  %i.q = icmp ne ptr %i.i, %2
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 3 uses
  %i.s = load i8, ptr %i.i, align 1, !noalias !2254, !noundef !3
  %i.t = shl nuw nsw i32 %i.m, 6
  %i.u = and i8 %i.s, 63
  %i.v = zext nneg i8 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v               ; 2 uses
  %i.x = shl nuw nsw i32 %i.g, 12
  %i.y = or disjoint i32 %i.w, %i.x
  %i.z = icmp samesign ugt i8 %i.d, -17
  br i1 %i.z, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i, label %bb.d

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i
  %i.aa = icmp ne ptr %i.r, %2
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = load i8, ptr %i.r, align 1, !noalias !2254, !noundef !3
  %i.ad = shl nuw nsw i32 %i.g, 18
  %i.ae = and i32 %i.ad, 1835008
  %i.af = shl nuw nsw i32 %i.w, 6
  %i.ag = and i8 %i.ac, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = or disjoint i32 %i.ai, %i.ae
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i
  %.sroa.0.0.ph = phi ptr [ %i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i ], [ %i.r, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i ], [ %i.ab, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i ], [ %i.c, %bb.c ] ; 3 uses
  %spec.select.i.ph = phi i32 [ %i.n, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i ], [ %i.y, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i ], [ %i.aj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i ], [ %i.p, %bb.c ]
  %i.ak = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.al = ptrtoint ptr %.sroa.0.0.ph to i64
  %i.am = sub nuw i64 %i.ak, %i.al                ; 2 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = and i64 %i.am, 3
  %.not.i8 = icmp ne i64 %i.ao, 0
  %i.ap = zext i1 %.not.i8 to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.an, %i.ap
  %i.aq = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 3) ; 2 uses
  %.sroa.0.0.i9 = add nuw nsw i64 %i.aq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i9, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.ar = load i64, ptr %i.a, align 8, !range !65, !noundef !3
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !557, !noundef !3 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.as, label %bb.e, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.aw = load i64, ptr %i.av, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.au, i64 %i.aw) #23
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.d
  %i.ax = load ptr, ptr %i.av, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ay = icmp ult i64 %i.aq, %i.au
  tail call void @llvm.assume(i1 %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %spec.select.i.ph, ptr %i.ax, align 4
  store i64 %i.au, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2262)
  %.not.i14.i.i = icmp eq ptr %.sroa.0.0.ph, %2
  br i1 %.not.i14.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE11spec_extendCs2JiOgHzbbc7_10tokenizers.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit, %.noexc
  %i.az = phi i64 [ %i.ct, %.noexc ], [ 1, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit ] ; 5 uses
  %.sroa.0.015.i.i = phi ptr [ %.sroa.0.1.ph.i.i, %.noexc ], [ %.sroa.0.0.ph, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i.i, i64 1 ; 3 uses
  %i.bb = load i8, ptr %.sroa.0.015.i.i, align 1, !noalias !2265, !noundef !3 ; 5 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %bb.f, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.bd = and i8 %i.bb, 31
  %i.be = zext nneg i8 %i.bd to i32               ; 3 uses
  %i.bf = icmp ne ptr %i.ba, %2
  call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i.i, i64 2 ; 3 uses
  %i.bh = load i8, ptr %i.ba, align 1, !noalias !2265, !noundef !3
  %i.bi = shl nuw nsw i32 %i.be, 6
  %i.bj = and i8 %i.bh, 63
  %i.bk = zext nneg i8 %i.bj to i32               ; 2 uses
  %i.bl = or disjoint i32 %i.bi, %i.bk
  %i.bm = icmp samesign ugt i8 %i.bb, -33
  br i1 %i.bm, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bn = zext nneg i8 %i.bb to i32
  br label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i
  %i.bo = icmp ne ptr %i.bg, %2
  call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i.i, i64 3 ; 3 uses
  %i.bq = load i8, ptr %i.bg, align 1, !noalias !2265, !noundef !3
  %i.br = shl nuw nsw i32 %i.bk, 6
  %i.bs = and i8 %i.bq, 63
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.br, %i.bt            ; 2 uses
  %i.bv = shl nuw nsw i32 %i.be, 12
  %i.bw = or disjoint i32 %i.bu, %i.bv
  %i.bx = icmp samesign ugt i8 %i.bb, -17
  br i1 %i.bx, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i, label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i
  %i.by = icmp ne ptr %i.bp, %2
  call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i.i, i64 4
  %i.ca = load i8, ptr %i.bp, align 1, !noalias !2265, !noundef !3
  %i.cb = shl nuw nsw i32 %i.be, 18
  %i.cc = and i32 %i.cb, 1835008
  %i.cd = shl nuw nsw i32 %i.bu, 6
  %i.ce = and i8 %i.ca, 63
  %i.cf = zext nneg i8 %i.ce to i32
  %i.cg = or disjoint i32 %i.cd, %i.cf
  %i.ch = or disjoint i32 %i.cg, %i.cc
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i, %bb.f, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i
  %.sroa.0.1.ph.i.i = phi ptr [ %i.bg, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i ], [ %i.bp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i ], [ %i.bz, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i ], [ %i.ba, %bb.f ] ; 3 uses
  %spec.select.i.ph.i.i = phi i32 [ %i.bl, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i ], [ %i.bw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i ], [ %i.ch, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i ], [ %i.bn, %bb.f ]
  %i.ci = icmp samesign ult i64 %i.az, 2305843009213693952
  call void @llvm.assume(i1 %i.ci)
  %i.cj = load i64, ptr %i.b, align 8, !range !13, !alias.scope !2270, !noundef !3
  %i.ck = icmp eq i64 %i.az, %i.cj
  br i1 %i.ck, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VeccE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i, label %.noexc

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VeccE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.g
  %i.cl = ptrtoint ptr %.sroa.0.1.ph.i.i to i64
  %i.cm = sub nuw i64 %i.ak, %i.cl                ; 2 uses
  %i.cn = lshr i64 %i.cm, 2
  %i.co = and i64 %i.cm, 3
  %.not.i7.i.i = icmp ne i64 %i.co, 0
  %i.cp = zext i1 %.not.i7.i.i to i64
  %.sroa.0.0.i.i.i = add nuw nsw i64 %i.cn, 1
  %i.cq = add nuw nsw i64 %.sroa.0.0.i.i.i, %i.cp
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.az, i64 noundef range(i64 1, 0) %i.cq, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VeccE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.g
  %i.cr = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2270, !nonnull !3, !noundef !3
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.az
  store i32 %spec.select.i.ph.i.i, ptr %i.cs, align 4
  %i.ct = add nuw nsw i64 %i.az, 1                ; 2 uses
  store i64 %i.ct, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2270
  %.not.i.i.i = icmp eq ptr %.sroa.0.1.ph.i.i, %2
  br i1 %.not.i.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE11spec_extendCs2JiOgHzbbc7_10tokenizers.exit, label %.lr.ph.i.i

_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cv, align 8
  br label %bb.h

bb.h:                                             ; preds = %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE11spec_extendCs2JiOgHzbbc7_10tokenizers.exit, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VeccE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeccENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VeccEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.j

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE11spec_extendCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.noexc, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VeccEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.i
  resume { ptr, i32 } %i.cw
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringEBQ_NCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB3n_9ByteLevelNtNtB3r_9tokenizer7Decoder12decode_chain0EE9from_iterB3r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i = alloca i64, align 8              ; 3 uses
  %.sroa.7.i.i = alloca i64, align 8              ; 3 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [96 x i8], align 8                ; 15 uses
  %.sroa.5 = alloca i64, align 8                  ; 3 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = invoke fastcc { i1, i8 } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB1b_6string6StringEINtB19_3VechENCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB2z_9ByteLevelNtNtB2D_9tokenizer7Decoder12decode_chain0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_(ptr noalias noundef align 8 dereferenceable(96) %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.f = extractvalue { i1, i8 } %i.d, 0
  %i.g = extractvalue { i1, i8 } %i.d, 1
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2279)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2281, !noalias !2282, !noundef !3
  %.not.i.i = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !2281, !noalias !2282, !nonnull !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val4.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !2281, !noalias !2282, !nonnull !3
  %i.l = ptrtoint ptr %.val4.i.i.i to i64
  %i.m = ptrtoint ptr %.val.i.i.i to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %.sroa.7.0.i.i = select i1 %.not.i.i, i64 0, i64 %i.n ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !2281, !noalias !2282, !noundef !3
  %.not55.i.i = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i64.i.i = load ptr, ptr %i.q, align 8, !alias.scope !2281, !noalias !2282, !nonnull !3
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val4.i65.i.i = load ptr, ptr %i.r, align 8, !alias.scope !2281, !noalias !2282, !nonnull !3
  %i.s = ptrtoint ptr %.val4.i65.i.i to i64
  %i.t = ptrtoint ptr %.val.i64.i.i to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %.sroa.8.0.i.i = select i1 %.not55.i.i, i64 0, i64 %i.u ; 2 uses
  %i.v = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i, i64 %.sroa.8.0.i.i)
  %i.w = load ptr, ptr %1, align 8, !alias.scope !2281, !noalias !2282, !noundef !3
  %.not56.i.i = icmp eq ptr %i.w, null
  br i1 %.not56.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.x, align 8, !alias.scope !2281, !noalias !2282, !nonnull !3, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val63.i.i = load ptr, ptr %i.y, align 8, !alias.scope !2281, !noalias !2282, !nonnull !3, !noundef !3
  %i.z = icmp eq ptr %.val63.i.i, %.val.i.i
  br i1 %i.z, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = add i64 %.sroa.8.0.i.i, %.sroa.7.0.i.i
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB1o_6string6StringEINtB1m_3VechENCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB2M_9ByteLevelNtNtB2Q_9tokenizer7Decoder12decode_chain0EEB2Q_(ptr noalias noundef align 8 dereferenceable(96) %1)
  br label %bb.h

bb.h:                                             ; preds = %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringEBG_NCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB35_9ByteLevelNtNtB39_9tokenizer7Decoder12decode_chain0EE11spec_extendB39_.exit, %bb.g
  ret void

bb.i:                                             ; preds = %bb.k, %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.j:                                             ; preds = %bb.e, %bb.f
  %.sink81.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.f ], [ %.sroa.5, %bb.e ]
  %.sink.i.i = phi i64 [ %i.aa, %bb.f ], [ 0, %bb.e ]
  store i64 %.sink.i.i, ptr %.sink81.i.i.sroa.phi, align 8, !alias.scope !2282, !noalias !2281
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.ae = tail call i64 @llvm.uadd.sat.i64(i64 %i.v, i64 1)
  %.sroa.0.0.i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.ae, i64 8) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.j
  %i.af = load i64, ptr %i.a, align 8, !range !65, !noundef !3
  %i.ag = trunc nuw i64 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !557, !noundef !3 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l, !prof !7

bb.k:                                             ; preds = %.noexc
  %i.ak = load i64, ptr %i.aj, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ai, i64 %i.ak) #23
          to label %.noexc7 unwind label %bb.i

.noexc7:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %.noexc
  %i.al = load ptr, ptr %i.aj, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.am = icmp ule i64 %.sroa.0.0.i, %i.ai
  tail call void @llvm.assume(i1 %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 %i.g, ptr %i.al, align 1
  store i64 %i.ai, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.al, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2291)
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.l
  %i.av = invoke fastcc { i1, i8 } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB1b_6string6StringEINtB19_3VechENCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB2z_9ByteLevelNtNtB2D_9tokenizer7Decoder12decode_chain0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.b)
          to label %bb.p unwind label %bb.o       ; 2 uses

bb.n:                                             ; preds = %bb.u, %bb.o
  %.pn.i.i = phi { ptr, i32 } [ %i.bs, %bb.u ], [ %i.aw, %bb.o ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB1o_6string6StringEINtB1m_3VechENCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB2M_9ByteLevelNtNtB2Q_9tokenizer7Decoder12decode_chain0EEB2Q_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.b) #27
          to label %.body unwind label %bb.w

bb.o:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.m
  %i.ax = extractvalue { i1, i8 } %i.av, 0
  %i.ay = extractvalue { i1, i8 } %i.av, 1
  br i1 %i.ax, label %bb.q, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringEBv_NCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB2T_9ByteLevelNtNtB2X_9tokenizer7Decoder12decode_chain0EEB2X_.exit.i

bb.q:                                             ; preds = %bb.p
  %i.az = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2293, !noalias !2294, !noundef !3 ; 5 uses
  %i.ba = icmp sgt i64 %i.az, -1
  call void @llvm.assume(i1 %i.ba)
  %i.bb = load i64, ptr %i.c, align 8, !range !13, !alias.scope !2293, !noalias !2294, !noundef !3
  %i.bc = icmp eq i64 %i.az, %i.bb
  br i1 %i.bc, label %bb.r, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2295)
  call void @llvm.experimental.noalias.scope.decl(metadata !2298)
  call void @llvm.experimental.noalias.scope.decl(metadata !2300)
  call void @llvm.experimental.noalias.scope.decl(metadata !2303)
  %i.bd = load ptr, ptr %i.an, align 8, !alias.scope !2305, !noalias !2306, !noundef !3
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  %.val.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !2305, !noalias !2306, !nonnull !3
  %.val4.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !2305, !noalias !2306, !nonnull !3
  %i.be = ptrtoint ptr %.val4.i.i.i.i.i to i64
  %i.bf = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.bg = sub nuw i64 %i.be, %i.bf
  %.sroa.7.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 %i.bg ; 2 uses
  %i.bh = load ptr, ptr %i.aq, align 8, !alias.scope !2305, !noalias !2306, !noundef !3
  %.not55.i.i.i.i = icmp eq ptr %i.bh, null
  %.val.i64.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !2305, !noalias !2306, !nonnull !3
  %.val4.i65.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !2305, !noalias !2306, !nonnull !3
  %i.bi = ptrtoint ptr %.val4.i65.i.i.i.i to i64
  %i.bj = ptrtoint ptr %.val.i64.i.i.i.i to i64
  %i.bk = sub nuw i64 %i.bi, %i.bj
  %.sroa.8.0.i.i.i.i = select i1 %.not55.i.i.i.i, i64 0, i64 %i.bk ; 2 uses
  %i.bl = call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i.i, i64 %.sroa.8.0.i.i.i.i)
  %i.bm = load ptr, ptr %i.b, align 8, !alias.scope !2305, !noalias !2306, !noundef !3
  %.not56.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not56.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !2305, !noalias !2306, !nonnull !3, !noundef !3
  %.val63.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !2305, !noalias !2306, !nonnull !3, !noundef !3
  %i.bn = icmp eq ptr %.val63.i.i.i.i, %.val.i.i.i.i
  br i1 %i.bn, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bo = add i64 %.sroa.8.0.i.i.i.i, %.sroa.7.0.i.i.i.i
  br label %bb.v

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.v, %bb.q
  %i.bp = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2293, !noalias !2294, !nonnull !3, !noundef !3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.az
  store i8 %i.ay, ptr %i.bq, align 1
  %i.br = add nuw i64 %i.az, 1
  store i64 %i.br, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2293, !noalias !2294
  br label %bb.m

bb.u:                                             ; preds = %bb.v
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.v:                                             ; preds = %bb.t, %bb.s
  %.sink81.i.i.sroa.phi.i.i = phi ptr [ %.sroa.7.i.i, %bb.t ], [ %.sroa.5.i.i, %bb.s ]
  %.sink.i.i.i.i = phi i64 [ %i.bo, %bb.t ], [ 0, %bb.s ]
  store i64 %.sink.i.i.i.i, ptr %.sink81.i.i.sroa.phi.i.i, align 8, !alias.scope !2307, !noalias !2308
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.bt = call i64 @llvm.uadd.sat.i64(i64 %i.bl, i64 1)
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.az, i64 noundef %i.bt, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.u

bb.w:                                             ; preds = %bb.n
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringEBv_NCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB2T_9ByteLevelNtNtB2X_9tokenizer7Decoder12decode_chain0EEB2X_.exit.i: ; preds = %bb.p
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB1o_6string6StringEINtB1m_3VechENCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB2M_9ByteLevelNtNtB2Q_9tokenizer7Decoder12decode_chain0EEB2Q_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.b)
          to label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringEBG_NCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB35_9ByteLevelNtNtB39_9tokenizer7Decoder12decode_chain0EE11spec_extendB39_.exit unwind label %bb.x

bb.x:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringEBv_NCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB2T_9ByteLevelNtNtB2X_9tokenizer7Decoder12decode_chain0EEB2X_.exit.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %i.bv, %bb.x ], [ %.pn.i.i, %bb.n ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.z unwind label %bb.y

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringEBG_NCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB35_9ByteLevelNtNtB39_9tokenizer7Decoder12decode_chain0EE11spec_extendB39_.exit: ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringEBv_NCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB2T_9ByteLevelNtNtB2X_9tokenizer7Decoder12decode_chain0EEB2X_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.y:                                             ; preds = %.body, %bb.aa
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.z:                                             ; preds = %.body, %bb.aa
  %.pn13 = phi { ptr, i32 } [ %.pn.ph, %bb.aa ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn13

bb.aa:                                            ; preds = %bb.i, %bb.b
  %.pn.ph = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.ad, %bb.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB1o_6string6StringEINtB1m_3VechENCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB2M_9ByteLevelNtNtB2Q_9tokenizer7Decoder12decode_chain0EEB2Q_(ptr noalias noundef align 8 dereferenceable(96) %1) #27
          to label %bb.z unwind label %bb.y
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB4_9into_iter8IntoIterTRNtNtB6_6string6StringRmEEBQ_NCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3s_9WordPieceNtNtB3w_9tokenizer5Model4saves_0EE9from_iterB3w_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i = alloca i64, align 8              ; 3 uses
  %.sroa.7.i.i = alloca i64, align 8              ; 3 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [96 x i8], align 8                ; 15 uses
  %.sroa.5 = alloca i64, align 8                  ; 3 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = invoke fastcc { i1, i8 } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRNtNtB1b_6string6StringRmEEINtB19_3VechENCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2E_9WordPieceNtNtB2I_9tokenizer5Model4saves_0ENtNtNtB9_6traits8iterator8Iterator4nextB2I_(ptr noalias noundef align 8 dereferenceable(96) %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.f = extractvalue { i1, i8 } %i.d, 0
  %i.g = extractvalue { i1, i8 } %i.d, 1
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2317)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2319, !noalias !2320, !noundef !3
  %.not.i.i = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !2319, !noalias !2320, !nonnull !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val4.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !2319, !noalias !2320, !nonnull !3
  %i.l = ptrtoint ptr %.val4.i.i.i to i64
  %i.m = ptrtoint ptr %.val.i.i.i to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %.sroa.7.0.i.i = select i1 %.not.i.i, i64 0, i64 %i.n ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !2319, !noalias !2320, !noundef !3
  %.not55.i.i = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i64.i.i = load ptr, ptr %i.q, align 8, !alias.scope !2319, !noalias !2320, !nonnull !3
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val4.i65.i.i = load ptr, ptr %i.r, align 8, !alias.scope !2319, !noalias !2320, !nonnull !3
  %i.s = ptrtoint ptr %.val4.i65.i.i to i64
  %i.t = ptrtoint ptr %.val.i64.i.i to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %.sroa.8.0.i.i = select i1 %.not55.i.i, i64 0, i64 %i.u ; 2 uses
  %i.v = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i, i64 %.sroa.8.0.i.i)
  %i.w = load ptr, ptr %1, align 8, !alias.scope !2319, !noalias !2320, !noundef !3
  %.not56.i.i = icmp eq ptr %i.w, null
  br i1 %.not56.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.x, align 8, !alias.scope !2319, !noalias !2320, !nonnull !3, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val63.i.i = load ptr, ptr %i.y, align 8, !alias.scope !2319, !noalias !2320, !nonnull !3, !noundef !3
  %i.z = icmp eq ptr %.val63.i.i, %.val.i.i
  br i1 %i.z, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = add i64 %.sroa.8.0.i.i, %.sroa.7.0.i.i
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRNtNtB1o_6string6StringRmEEINtB1m_3VechENCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2R_9WordPieceNtNtB2V_9tokenizer5Model4saves_0EEB2V_(ptr noalias noundef align 8 dereferenceable(96) %1)
  br label %bb.h

bb.h:                                             ; preds = %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB4_9into_iter8IntoIterTRNtNtB6_6string6StringRmEEBG_NCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3a_9WordPieceNtNtB3e_9tokenizer5Model4saves_0EE11spec_extendB3e_.exit, %bb.g
  ret void

bb.i:                                             ; preds = %bb.k, %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.j:                                             ; preds = %bb.e, %bb.f
  %.sink81.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.f ], [ %.sroa.5, %bb.e ]
  %.sink.i.i = phi i64 [ %i.aa, %bb.f ], [ 0, %bb.e ]
  store i64 %.sink.i.i, ptr %.sink81.i.i.sroa.phi, align 8, !alias.scope !2320, !noalias !2319
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.ae = tail call i64 @llvm.uadd.sat.i64(i64 %i.v, i64 1)
  %.sroa.0.0.i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.ae, i64 8) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.j
  %i.af = load i64, ptr %i.a, align 8, !range !65, !noundef !3
  %i.ag = trunc nuw i64 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !557, !noundef !3 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l, !prof !7

bb.k:                                             ; preds = %.noexc
  %i.ak = load i64, ptr %i.aj, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ai, i64 %i.ak) #23
          to label %.noexc7 unwind label %bb.i

.noexc7:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %.noexc
  %i.al = load ptr, ptr %i.aj, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.am = icmp ule i64 %.sroa.0.0.i, %i.ai
  tail call void @llvm.assume(i1 %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 %i.g, ptr %i.al, align 1
  store i64 %i.ai, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.al, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2329)
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.l
  %i.av = invoke fastcc { i1, i8 } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRNtNtB1b_6string6StringRmEEINtB19_3VechENCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2E_9WordPieceNtNtB2I_9tokenizer5Model4saves_0ENtNtNtB9_6traits8iterator8Iterator4nextB2I_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.b)
          to label %bb.p unwind label %bb.o       ; 2 uses

bb.n:                                             ; preds = %bb.u, %bb.o
  %.pn.i.i = phi { ptr, i32 } [ %i.bs, %bb.u ], [ %i.aw, %bb.o ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRNtNtB1o_6string6StringRmEEINtB1m_3VechENCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2R_9WordPieceNtNtB2V_9tokenizer5Model4saves_0EEB2V_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.b) #27
          to label %.body unwind label %bb.w

bb.o:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.m
  %i.ax = extractvalue { i1, i8 } %i.av, 0
  %i.ay = extractvalue { i1, i8 } %i.av, 1
  br i1 %i.ax, label %bb.q, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB6_9into_iter8IntoIterTRNtNtB8_6string6StringRmEEBv_NCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2Y_9WordPieceNtNtB32_9tokenizer5Model4saves_0EEB32_.exit.i

bb.q:                                             ; preds = %bb.p
  %i.az = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2331, !noalias !2332, !noundef !3 ; 5 uses
  %i.ba = icmp sgt i64 %i.az, -1
  call void @llvm.assume(i1 %i.ba)
  %i.bb = load i64, ptr %i.c, align 8, !range !13, !alias.scope !2331, !noalias !2332, !noundef !3
  %i.bc = icmp eq i64 %i.az, %i.bb
  br i1 %i.bc, label %bb.r, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2333)
  call void @llvm.experimental.noalias.scope.decl(metadata !2336)
  call void @llvm.experimental.noalias.scope.decl(metadata !2338)
  call void @llvm.experimental.noalias.scope.decl(metadata !2341)
  %i.bd = load ptr, ptr %i.an, align 8, !alias.scope !2343, !noalias !2344, !noundef !3
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  %.val.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !2343, !noalias !2344, !nonnull !3
  %.val4.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !2343, !noalias !2344, !nonnull !3
  %i.be = ptrtoint ptr %.val4.i.i.i.i.i to i64
  %i.bf = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.bg = sub nuw i64 %i.be, %i.bf
  %.sroa.7.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 %i.bg ; 2 uses
  %i.bh = load ptr, ptr %i.aq, align 8, !alias.scope !2343, !noalias !2344, !noundef !3
  %.not55.i.i.i.i = icmp eq ptr %i.bh, null
  %.val.i64.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !2343, !noalias !2344, !nonnull !3
  %.val4.i65.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !2343, !noalias !2344, !nonnull !3
  %i.bi = ptrtoint ptr %.val4.i65.i.i.i.i to i64
  %i.bj = ptrtoint ptr %.val.i64.i.i.i.i to i64
  %i.bk = sub nuw i64 %i.bi, %i.bj
  %.sroa.8.0.i.i.i.i = select i1 %.not55.i.i.i.i, i64 0, i64 %i.bk ; 2 uses
  %i.bl = call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i.i, i64 %.sroa.8.0.i.i.i.i)
  %i.bm = load ptr, ptr %i.b, align 8, !alias.scope !2343, !noalias !2344, !noundef !3
  %.not56.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not56.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !2343, !noalias !2344, !nonnull !3, !noundef !3
  %.val63.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !2343, !noalias !2344, !nonnull !3, !noundef !3
  %i.bn = icmp eq ptr %.val63.i.i.i.i, %.val.i.i.i.i
  br i1 %i.bn, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bo = add i64 %.sroa.8.0.i.i.i.i, %.sroa.7.0.i.i.i.i
  br label %bb.v

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.v, %bb.q
  %i.bp = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2331, !noalias !2332, !nonnull !3, !noundef !3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.az
  store i8 %i.ay, ptr %i.bq, align 1
  %i.br = add nuw i64 %i.az, 1
  store i64 %i.br, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2331, !noalias !2332
  br label %bb.m

bb.u:                                             ; preds = %bb.v
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.v:                                             ; preds = %bb.t, %bb.s
  %.sink81.i.i.sroa.phi.i.i = phi ptr [ %.sroa.7.i.i, %bb.t ], [ %.sroa.5.i.i, %bb.s ]
  %.sink.i.i.i.i = phi i64 [ %i.bo, %bb.t ], [ 0, %bb.s ]
  store i64 %.sink.i.i.i.i, ptr %.sink81.i.i.sroa.phi.i.i, align 8, !alias.scope !2345, !noalias !2346
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.bt = call i64 @llvm.uadd.sat.i64(i64 %i.bl, i64 1)
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.az, i64 noundef %i.bt, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.u

bb.w:                                             ; preds = %bb.n
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB6_9into_iter8IntoIterTRNtNtB8_6string6StringRmEEBv_NCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2Y_9WordPieceNtNtB32_9tokenizer5Model4saves_0EEB32_.exit.i: ; preds = %bb.p
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRNtNtB1o_6string6StringRmEEINtB1m_3VechENCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2R_9WordPieceNtNtB2V_9tokenizer5Model4saves_0EEB2V_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.b)
          to label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB4_9into_iter8IntoIterTRNtNtB6_6string6StringRmEEBG_NCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3a_9WordPieceNtNtB3e_9tokenizer5Model4saves_0EE11spec_extendB3e_.exit unwind label %bb.x

bb.x:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB6_9into_iter8IntoIterTRNtNtB8_6string6StringRmEEBv_NCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2Y_9WordPieceNtNtB32_9tokenizer5Model4saves_0EEB32_.exit.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %i.bv, %bb.x ], [ %.pn.i.i, %bb.n ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.z unwind label %bb.y

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB4_9into_iter8IntoIterTRNtNtB6_6string6StringRmEEBG_NCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3a_9WordPieceNtNtB3e_9tokenizer5Model4saves_0EE11spec_extendB3e_.exit: ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB6_9into_iter8IntoIterTRNtNtB8_6string6StringRmEEBv_NCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2Y_9WordPieceNtNtB32_9tokenizer5Model4saves_0EEB32_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.y:                                             ; preds = %.body, %bb.aa
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.z:                                             ; preds = %.body, %bb.aa
  %.pn13 = phi { ptr, i32 } [ %.pn.ph, %bb.aa ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn13

bb.aa:                                            ; preds = %bb.i, %bb.b
  %.pn.ph = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.ad, %bb.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRNtNtB1o_6string6StringRmEEINtB1m_3VechENCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2R_9WordPieceNtNtB2V_9tokenizer5Model4saves_0EEB2V_(ptr noalias noundef align 8 dereferenceable(96) %1) #27
          to label %bb.z unwind label %bb.y
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB4_9into_iter8IntoIterTRTmmERmEEBQ_NCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB3b_3BPENtNtB3h_9tokenizer5Model4saves0_0EE9from_iterB3h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i = alloca i64, align 8              ; 3 uses
  %.sroa.7.i.i = alloca i64, align 8              ; 3 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 15 uses
  %.sroa.5 = alloca i64, align 8                  ; 3 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = invoke fastcc { i1, i8 } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRTmmERmEEINtB19_3VechENCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2m_3BPENtNtB2s_9tokenizer5Model4saves0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2s_(ptr noalias noundef align 8 dereferenceable(104) %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.f = extractvalue { i1, i8 } %i.d, 0
  %i.g = extractvalue { i1, i8 } %i.d, 1
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2355)
  %i.h = load ptr, ptr %1, align 8, !alias.scope !2357, !noalias !2358, !noundef !3
  %.not.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !2357, !noalias !2358, !nonnull !3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val4.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !2357, !noalias !2358, !nonnull !3
  %i.k = ptrtoint ptr %.val4.i.i.i to i64
  %i.l = ptrtoint ptr %.val.i.i.i to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %.sroa.7.0.i.i = select i1 %.not.i.i, i64 0, i64 %i.m ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !2357, !noalias !2358, !noundef !3
  %.not55.i.i = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i64.i.i = load ptr, ptr %i.p, align 8, !alias.scope !2357, !noalias !2358, !nonnull !3
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val4.i65.i.i = load ptr, ptr %i.q, align 8, !alias.scope !2357, !noalias !2358, !nonnull !3
  %i.r = ptrtoint ptr %.val4.i65.i.i to i64
  %i.s = ptrtoint ptr %.val.i64.i.i to i64
  %i.t = sub nuw i64 %i.r, %i.s
  %.sroa.8.0.i.i = select i1 %.not55.i.i, i64 0, i64 %i.t ; 2 uses
  %i.u = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i, i64 %.sroa.8.0.i.i)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !2357, !noalias !2358, !noundef !3
  %.not56.i.i = icmp eq ptr %i.w, null
  br i1 %.not56.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i = load ptr, ptr %i.x, align 8, !alias.scope !2357, !noalias !2358, !nonnull !3, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val63.i.i = load ptr, ptr %i.y, align 8, !alias.scope !2357, !noalias !2358, !nonnull !3, !noundef !3
  %i.z = icmp eq ptr %.val63.i.i, %.val.i.i
  br i1 %i.z, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = add i64 %.sroa.8.0.i.i, %.sroa.7.0.i.i
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRTmmERmEEINtB1m_3VechENCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2z_3BPENtNtB2F_9tokenizer5Model4saves0_0EEB2F_(ptr noalias noundef align 8 dereferenceable(104) %1)
  br label %bb.h

bb.h:                                             ; preds = %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB4_9into_iter8IntoIterTRTmmERmEEBG_NCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2T_3BPENtNtB2Z_9tokenizer5Model4saves0_0EE11spec_extendB2Z_.exit, %bb.g
  ret void

bb.i:                                             ; preds = %bb.k, %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.j:                                             ; preds = %bb.e, %bb.f
  %.sink81.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.f ], [ %.sroa.5, %bb.e ]
  %.sink.i.i = phi i64 [ %i.aa, %bb.f ], [ 0, %bb.e ]
  store i64 %.sink.i.i, ptr %.sink81.i.i.sroa.phi, align 8, !alias.scope !2358, !noalias !2357
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.ae = tail call i64 @llvm.uadd.sat.i64(i64 %i.u, i64 1)
  %.sroa.0.0.i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.ae, i64 8) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.j
  %i.af = load i64, ptr %i.a, align 8, !range !65, !noundef !3
  %i.ag = trunc nuw i64 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !557, !noundef !3 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l, !prof !7

bb.k:                                             ; preds = %.noexc
  %i.ak = load i64, ptr %i.aj, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ai, i64 %i.ak) #23
          to label %.noexc7 unwind label %bb.i

.noexc7:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %.noexc
  %i.al = load ptr, ptr %i.aj, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.am = icmp ule i64 %.sroa.0.0.i, %i.ai
  tail call void @llvm.assume(i1 %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 %i.g, ptr %i.al, align 1
  store i64 %i.ai, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.al, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2367)
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.l
  %i.av = invoke fastcc { i1, i8 } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRTmmERmEEINtB19_3VechENCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2m_3BPENtNtB2s_9tokenizer5Model4saves0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2s_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.b)
          to label %bb.p unwind label %bb.o       ; 2 uses

bb.n:                                             ; preds = %bb.u, %bb.o
  %.pn.i.i = phi { ptr, i32 } [ %i.bs, %bb.u ], [ %i.aw, %bb.o ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRTmmERmEEINtB1m_3VechENCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2z_3BPENtNtB2F_9tokenizer5Model4saves0_0EEB2F_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.b) #27
          to label %.body unwind label %bb.w

bb.o:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.m
  %i.ax = extractvalue { i1, i8 } %i.av, 0
  %i.ay = extractvalue { i1, i8 } %i.av, 1
  br i1 %i.ax, label %bb.q, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB6_9into_iter8IntoIterTRTmmERmEEBv_NCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2H_3BPENtNtB2N_9tokenizer5Model4saves0_0EEB2N_.exit.i

bb.q:                                             ; preds = %bb.p
  %i.az = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2369, !noalias !2370, !noundef !3 ; 5 uses
  %i.ba = icmp sgt i64 %i.az, -1
  call void @llvm.assume(i1 %i.ba)
  %i.bb = load i64, ptr %i.c, align 8, !range !13, !alias.scope !2369, !noalias !2370, !noundef !3
  %i.bc = icmp eq i64 %i.az, %i.bb
  br i1 %i.bc, label %bb.r, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2371)
  call void @llvm.experimental.noalias.scope.decl(metadata !2374)
  call void @llvm.experimental.noalias.scope.decl(metadata !2376)
  call void @llvm.experimental.noalias.scope.decl(metadata !2379)
  %i.bd = load ptr, ptr %i.b, align 8, !alias.scope !2381, !noalias !2382, !noundef !3
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  %.val.i.i.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !2381, !noalias !2382, !nonnull !3
  %.val4.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !2381, !noalias !2382, !nonnull !3
  %i.be = ptrtoint ptr %.val4.i.i.i.i.i to i64
  %i.bf = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.bg = sub nuw i64 %i.be, %i.bf
  %.sroa.7.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 %i.bg ; 2 uses
  %i.bh = load ptr, ptr %i.ap, align 8, !alias.scope !2381, !noalias !2382, !noundef !3
  %.not55.i.i.i.i = icmp eq ptr %i.bh, null
  %.val.i64.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !2381, !noalias !2382, !nonnull !3
  %.val4.i65.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !2381, !noalias !2382, !nonnull !3
  %i.bi = ptrtoint ptr %.val4.i65.i.i.i.i to i64
  %i.bj = ptrtoint ptr %.val.i64.i.i.i.i to i64
  %i.bk = sub nuw i64 %i.bi, %i.bj
  %.sroa.8.0.i.i.i.i = select i1 %.not55.i.i.i.i, i64 0, i64 %i.bk ; 2 uses
  %i.bl = call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i.i, i64 %.sroa.8.0.i.i.i.i)
  %i.bm = load ptr, ptr %i.as, align 8, !alias.scope !2381, !noalias !2382, !noundef !3
  %.not56.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not56.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !2381, !noalias !2382, !nonnull !3, !noundef !3
  %.val63.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !2381, !noalias !2382, !nonnull !3, !noundef !3
  %i.bn = icmp eq ptr %.val63.i.i.i.i, %.val.i.i.i.i
  br i1 %i.bn, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bo = add i64 %.sroa.8.0.i.i.i.i, %.sroa.7.0.i.i.i.i
  br label %bb.v

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.v, %bb.q
end_hunk_0
