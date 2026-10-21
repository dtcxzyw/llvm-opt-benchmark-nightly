Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/annotate_snippets-47999b4434a88afd.annotate_snippets.1c99614a877f4187-cgu.00?download=true
inline.NumInlined: 596
inline.NumDeleted: 318
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render20normalize_whitespace:bb.a

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit14.i.i.i
  %i.ac = icmp ne ptr %i.t, %i.c
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ae = load i8, ptr %i.t, align 1, !noalias !125, !noundef !4
  %i.af = shl nuw nsw i32 %i.i, 18
  %i.ag = and i32 %i.af, 1835008
  %i.ah = shl nuw nsw i32 %i.y, 6
  %i.ai = and i8 %i.ae, 63
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ah, %i.aj
  %i.al = or disjoint i32 %i.ak, %i.ag
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit16.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit14.i.i.i, %bb.c, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit12.i.i.i
  %i.am = phi ptr [ %i.t, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit14.i.i.i ], [ %i.ad, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit16.i.i.i ], [ %i.k, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit12.i.i.i ], [ %i.e, %bb.c ]
  %spec.select.i.ph.i = phi i32 [ %i.aa, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit14.i.i.i ], [ %i.al, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit16.i.i.i ], [ %i.p, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit12.i.i.i ], [ %i.r, %bb.c ]
  switch i32 %spec.select.i.ph.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkcNCNvNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render20normalize_whitespace0E0B1k_.exit.i [
    i32 0, label %bb.f
    i32 1, label %bb.f
    i32 2, label %bb.f
    i32 3, label %bb.f
    i32 4, label %bb.f
    i32 5, label %bb.f
    i32 6, label %bb.f
    i32 7, label %bb.f
    i32 8, label %bb.f
    i32 9, label %bb.f
    i32 11, label %bb.f
    i32 12, label %bb.f
    i32 13, label %bb.f
    i32 14, label %bb.f
    i32 15, label %bb.f
    i32 16, label %bb.f
    i32 17, label %bb.f
    i32 18, label %bb.f
    i32 19, label %bb.f
    i32 20, label %bb.f
    i32 21, label %bb.f
    i32 22, label %bb.f
    i32 23, label %bb.f
    i32 24, label %bb.f
    i32 25, label %bb.f
    i32 26, label %bb.f
    i32 27, label %bb.f
    i32 28, label %bb.f
    i32 29, label %bb.f
    i32 30, label %bb.f
    i32 31, label %bb.f
    i32 127, label %bb.f
    i32 8205, label %bb.f
    i32 8234, label %bb.f
    i32 8235, label %bb.f
    i32 8236, label %bb.f
    i32 8237, label %bb.f
    i32 8238, label %bb.f
    i32 8294, label %bb.f
    i32 8295, label %bb.f
    i32 8296, label %bb.f
    i32 8297, label %bb.f
  ]

bb.e:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkcNCNvNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render20normalize_whitespace0E0B1k_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.ao, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2sepWsjoOnX_17annotate_snippets(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ap = load i64, ptr %i.b, align 8, !range !11, !noundef !4
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !14, !noundef !4 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.aq, label %bb.h, label %bb.i, !prof !12

bb.g:                                             ; preds = %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator4foldNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render20normalize_whitespaces_0EB2a_.exit, %bb.e
  ret void

bb.h:                                             ; preds = %bb.f
  %i.au = load i64, ptr %i.at, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.as, i64 %i.au) #19
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.at, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.aw = icmp ule i64 %2, %i.as
  tail call void @llvm.assume(i1 %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i10.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i10.i, label %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator4foldNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render20normalize_whitespaces_0EB2a_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.z, %.lr.ph.i
  %.sroa.7.0 = phi i64 [ 0, %.lr.ph.i ], [ %storemerge.i, %bb.z ] ; 5 uses
  %.sroa.6.0 = phi ptr [ %i.av, %.lr.ph.i ], [ %.sroa.6.0.copyload14, %bb.z ]
  %.sroa.010.0 = phi i64 [ %i.as, %.lr.ph.i ], [ %.sroa.010.0.copyload11, %bb.z ]
  %.sroa.0.011.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.0.1.ph.i, %bb.z ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 1 ; 3 uses
  %i.bb = load i8, ptr %.sroa.0.011.i, align 1, !noalias !126, !noundef !4 ; 5 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %bb.k, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit12.i.i.i2

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit12.i.i.i2: ; preds = %bb.j
  %i.bd = and i8 %i.bb, 31
  %i.be = zext nneg i8 %i.bd to i32               ; 3 uses
  %i.bf = icmp ne ptr %i.ba, %i.c
  call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 2 ; 3 uses
  %i.bh = load i8, ptr %i.ba, align 1, !noalias !126, !noundef !4
  %i.bi = shl nuw nsw i32 %i.be, 6
  %i.bj = and i8 %i.bh, 63
  %i.bk = zext nneg i8 %i.bj to i32               ; 2 uses
  %i.bl = or disjoint i32 %i.bi, %i.bk
  %i.bm = icmp samesign ugt i8 %i.bb, -33
  br i1 %i.bm, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit14.i.i.i4, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bn = zext nneg i8 %i.bb to i32
  br label %bb.l

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit14.i.i.i4: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit12.i.i.i2
  %i.bo = icmp ne ptr %i.bg, %i.c
  call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 3 ; 3 uses
  %i.bq = load i8, ptr %i.bg, align 1, !noalias !126, !noundef !4
  %i.br = shl nuw nsw i32 %i.bk, 6
  %i.bs = and i8 %i.bq, 63
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.br, %i.bt            ; 2 uses
  %i.bv = shl nuw nsw i32 %i.be, 12
  %i.bw = or disjoint i32 %i.bu, %i.bv
  %i.bx = icmp samesign ugt i8 %i.bb, -17
  br i1 %i.bx, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit16.i.i.i5, label %bb.l

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit16.i.i.i5: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit14.i.i.i4
  %i.by = icmp ne ptr %i.bp, %i.c
  call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 4
  %i.ca = load i8, ptr %i.bp, align 1, !noalias !126, !noundef !4
  %i.cb = shl nuw nsw i32 %i.be, 18
  %i.cc = and i32 %i.cb, 1835008
  %i.cd = shl nuw nsw i32 %i.bu, 6
  %i.ce = and i8 %i.ca, 63
  %i.cf = zext nneg i8 %i.ce to i32
  %i.cg = or disjoint i32 %i.cd, %i.cf
  %i.ch = or disjoint i32 %i.cg, %i.cc
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit16.i.i.i5, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit14.i.i.i4, %bb.k, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit12.i.i.i2
  %.sroa.0.1.ph.i = phi ptr [ %i.bg, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit12.i.i.i2 ], [ %i.bp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit14.i.i.i4 ], [ %i.bz, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit16.i.i.i5 ], [ %i.ba, %bb.k ] ; 2 uses
  %spec.select.i.ph.i3 = phi i32 [ %i.bl, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit12.i.i.i2 ], [ %i.bw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit14.i.i.i4 ], [ %i.ch, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit16.i.i.i5 ], [ %i.bn, %bb.k ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !127
  store i64 %.sroa.010.0, ptr %i.a, align 8, !noalias !127
  store ptr %.sroa.6.0, ptr %i.az, align 8, !noalias !127
  store i64 %.sroa.7.0, ptr %i.ay, align 8, !noalias !127
  store i32 %spec.select.i.ph.i3, ptr %i.ax, align 8, !noalias !127
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.ci = icmp samesign ult i32 %spec.select.i.ph.i3, 22
  %i.cj = select i1 %i.ci, i64 0, i64 21, !unpredictable !4 ; 2 uses
  %i.ck = or disjoint i64 %i.cj, 10               ; 2 uses
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr @33, i64 %i.ck
  %.val16.1.i.i.i.i = load i32, ptr %i.cl, align 8, !range !129, !noalias !130, !noundef !4
  %i.cm = icmp samesign ugt i32 %.val16.1.i.i.i.i, %spec.select.i.ph.i3
  %i.cn = select i1 %i.cm, i64 %i.cj, i64 %i.ck, !unpredictable !4 ; 2 uses
  %i.co = add nuw nsw i64 %i.cn, 5                ; 2 uses
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr @33, i64 %i.co
  %.val16.2.i.i.i.i = load i32, ptr %i.cp, align 8, !range !129, !noalias !130, !noundef !4
  %i.cq = icmp samesign ugt i32 %.val16.2.i.i.i.i, %spec.select.i.ph.i3
  %i.cr = select i1 %i.cq, i64 %i.cn, i64 %i.co, !unpredictable !4 ; 2 uses
  %i.cs = add nuw nsw i64 %i.cr, 3                ; 2 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr @33, i64 %i.cs
  %.val16.3.i.i.i.i = load i32, ptr %i.ct, align 8, !range !129, !noalias !130, !noundef !4
  %i.cu = icmp samesign ugt i32 %.val16.3.i.i.i.i, %spec.select.i.ph.i3
  %i.cv = select i1 %i.cu, i64 %i.cr, i64 %i.cs, !unpredictable !4 ; 2 uses
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr @33, i64 %i.cw
  %.val16.4.i.i.i.i = load i32, ptr %i.cx, align 8, !range !129, !noalias !130, !noundef !4
  %i.cy = icmp samesign ugt i32 %.val16.4.i.i.i.i, %spec.select.i.ph.i3
  %i.cz = select i1 %i.cy, i64 %i.cv, i64 %i.cw, !unpredictable !4 ; 2 uses
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %i.db = getelementptr inbounds nuw [24 x i8], ptr @33, i64 %i.da
  %.val16.5.i.i.i.i = load i32, ptr %i.db, align 8, !range !129, !noalias !130, !noundef !4
  %i.dc = icmp samesign ugt i32 %.val16.5.i.i.i.i, %spec.select.i.ph.i3
  %i.dd = select i1 %i.dc, i64 %i.cz, i64 %i.da, !unpredictable !4 ; 2 uses
  %i.de = getelementptr inbounds nuw [24 x i8], ptr @33, i64 %i.dd
  %.val14.i.i.i.i = load i32, ptr %i.de, align 8, !range !129, !noalias !130, !noundef !4 ; 2 uses
  %.not.i4.i = icmp eq i32 %.val14.i.i.i.i, %spec.select.i.ph.i3
  %i.df = icmp samesign ult i32 %.val14.i.i.i.i, %spec.select.i.ph.i3
  %i.dg = zext i1 %i.df to i64
  %i.dh = add nuw nsw i64 %i.dd, %i.dg            ; 2 uses
  br i1 %.not.i4.i, label %bb.t, label %bb.m

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.o, %bb.n, %bb.w
  %lpad.loopexit.split-lp30 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2sepWsjoOnX_17annotate_snippets(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #18
          to label %bb.aa unwind label %bb.y, !noalias !131

bb.m:                                             ; preds = %bb.l
  %i.di = icmp sgt i64 %.sroa.7.0, -1
  call void @llvm.assume(i1 %i.di)
  %i.dj = icmp samesign ult i32 %spec.select.i.ph.i3, 128
  br i1 %i.dj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dk = icmp samesign ult i32 %spec.select.i.ph.i3, 2048 ; 2 uses
  %i.dl = icmp samesign ult i32 %spec.select.i.ph.i3, 65536 ; 2 uses
  %..i.i.i = select i1 %i.dl, i64 3, i64 4
  %.sroa.0.0.ph.i.i.i = select i1 %i.dk, i64 2, i64 %..i.i.i
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2sepWsjoOnX_17annotate_snippets(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.ph.i.i.i)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !131

.noexc.i.i:                                       ; preds = %bb.n
  %i.dm = load ptr, ptr %i.az, align 8, !alias.scope !132, !noalias !127, !nonnull !4, !noundef !4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.sroa.7.0 ; 9 uses
  %i.do = trunc i32 %spec.select.i.ph.i3 to i8
  %i.dp = and i8 %i.do, 63
  %i.dq = or disjoint i8 %i.dp, -128              ; 3 uses
  %i.dr = lshr i32 %spec.select.i.ph.i3, 6
  %i.ds = trunc i32 %i.dr to i8                   ; 2 uses
  %i.dt = and i8 %i.ds, 63
  %i.du = or disjoint i8 %i.dt, -128              ; 2 uses
  %i.dv = lshr i32 %spec.select.i.ph.i3, 12
  %i.dw = trunc i32 %i.dv to i8                   ; 2 uses
  %i.dx = and i8 %i.dw, 63
  %i.dy = or disjoint i8 %i.dx, -128
  %i.dz = lshr i32 %spec.select.i.ph.i3, 18
  %i.ea = trunc nuw nsw i32 %i.dz to i8
  %i.eb = or disjoint i8 %i.ea, -16
  br i1 %i.dk, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2sepWsjoOnX_17annotate_snippets(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1)
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !131

.noexc5.i.i:                                      ; preds = %bb.o
  %i.ec = load ptr, ptr %i.az, align 8, !alias.scope !132, !noalias !127, !nonnull !4, !noundef !4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.sroa.7.0
  %i.ee = trunc nuw nsw i32 %spec.select.i.ph.i3 to i8
  store i8 %i.ee, ptr %i.ed, align 1, !noalias !131
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit.i.i

bb.p:                                             ; preds = %.noexc.i.i
  %i.ef = or disjoint i8 %i.ds, -64
  store i8 %i.ef, ptr %i.dn, align 1, !noalias !131
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  store i8 %i.dq, ptr %i.eg, align 1, !noalias !131
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit.i.i

bb.q:                                             ; preds = %.noexc.i.i
  br i1 %i.dl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.eh = or disjoint i8 %i.dw, -32
  store i8 %i.eh, ptr %i.dn, align 1, !noalias !131
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  store i8 %i.du, ptr %i.ei, align 1, !noalias !131
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  store i8 %i.dq, ptr %i.ej, align 1, !noalias !131
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit.i.i

bb.s:                                             ; preds = %bb.q
  store i8 %i.eb, ptr %i.dn, align 1, !noalias !131
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  store i8 %i.dy, ptr %i.ek, align 1, !noalias !131
  %i.el = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  store i8 %i.du, ptr %i.el, align 1, !noalias !131
  %i.em = getelementptr inbounds nuw i8, ptr %i.dn, i64 3
  store i8 %i.dq, ptr %i.em, align 1, !noalias !131
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit.i.i

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit.i.i: ; preds = %bb.s, %bb.r, %bb.p, %.noexc5.i.i
  %.sroa.0.03.i.i.i = phi i64 [ 1, %.noexc5.i.i ], [ 2, %bb.p ], [ 3, %bb.r ], [ 4, %bb.s ]
  %i.en = add nuw i64 %.sroa.0.03.i.i.i, %.sroa.7.0
  br label %bb.z

bb.t:                                             ; preds = %bb.l
  %i.eo = icmp samesign ult i64 %i.dh, 42
  br i1 %i.eo, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr @33, i64 %i.dh ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !133, !nonnull !4, !noundef !4
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.et = load i64, ptr %i.es, align 8, !noalias !133, !noundef !4 ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2sepWsjoOnX_17annotate_snippets(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.et)
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !131

.noexc6.i.i:                                      ; preds = %bb.u
  %i.eu = load i64, ptr %i.ay, align 8, !alias.scope !134, !noalias !127, !noundef !4 ; 3 uses
  %i.ev = icmp sgt i64 %i.eu, -1
  call void @llvm.assume(i1 %i.ev)
  %.not.i.i.i = icmp eq i64 %i.et, 0
  br i1 %.not.i.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2sepWsjoOnX_17annotate_snippets.exit.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc6.i.i
  %i.ew = load ptr, ptr %i.az, align 8, !alias.scope !134, !noalias !127, !nonnull !4, !noundef !4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.eu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ex, ptr nonnull readonly align 1 %i.er, i64 %i.et, i1 false), !noalias !131
  %.pre.i.i.i = load i64, ptr %i.ay, align 8, !alias.scope !134, !noalias !127
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2sepWsjoOnX_17annotate_snippets.exit.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2sepWsjoOnX_17annotate_snippets.exit.i.i: ; preds = %bb.v, %.noexc6.i.i
  %i.ey = phi i64 [ %.pre.i.i.i, %bb.v ], [ %i.eu, %.noexc6.i.i ]
  %i.ez = add i64 %i.ey, %i.et
  br label %bb.z

bb.w:                                             ; preds = %bb.t
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 42, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #19
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !133

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !131
  unreachable

bb.z:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2sepWsjoOnX_17annotate_snippets.exit.i.i, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit.i.i
  %storemerge.i = phi i64 [ %i.en, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit.i.i ], [ %i.ez, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2sepWsjoOnX_17annotate_snippets.exit.i.i ] ; 2 uses
  %.sroa.010.0.copyload11 = load i64, ptr %i.a, align 8, !noalias !127 ; 2 uses
  %.sroa.6.0.copyload14 = load ptr, ptr %i.az, align 8, !noalias !127 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !127
  %.not.i.i = icmp eq ptr %.sroa.0.1.ph.i, %i.c
  br i1 %.not.i.i, label %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator4foldNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render20normalize_whitespaces_0EB2a_.exit, label %bb.j

bb.aa:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp30

_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator4foldNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render20normalize_whitespaces_0EB2a_.exit: ; preds = %bb.z, %bb.i
  %.sroa.7.1 = phi i64 [ 0, %bb.i ], [ %storemerge.i, %bb.z ]
  %.sroa.6.1 = phi ptr [ %i.av, %bb.i ], [ %.sroa.6.0.copyload14, %bb.z ]
  %.sroa.010.1 = phi i64 [ %i.as, %bb.i ], [ %.sroa.010.0.copyload11, %bb.z ]
  store i64 %.sroa.010.1, ptr %0, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.1, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.1, ptr %.sroa.523.0..sroa_idx, align 8
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render29style_substitution_highlights(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, i8 noundef range(i8 16, 18) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(24) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %1, 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 %5 ; 8 uses
  %i.d = add i64 %6, 3                            ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.0.015 = phi ptr [ %0, %.lr.ph ], [ %i.e, %bb.c ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.015, i64 16 ; 2 uses
  %i.f = load i64, ptr %.sroa.0.015, align 8, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.015, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 4 uses
  %.not = icmp eq i64 %i.f, %i.h
  br i1 %.not, label %bb.c, label %bb.d

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %_RNvNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render21extra_width_from_tabs.exit14, %bb.b
  %i.i = icmp eq ptr %i.e, %i.a
  br i1 %i.i, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %_RNvNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render21extra_width_from_tabs.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %bb.g
  %i.k = phi i64 [ %i.av, %bb.g ], [ %i.f, %bb.d ]
  %i.l = phi ptr [ %i.au, %bb.g ], [ %4, %bb.d ]  ; 6 uses
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ %i.ay, %bb.g ], [ 0, %bb.d ] ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_4take4TakeNtNtNtBb_3str4iter5CharsENCNvNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render21extra_width_from_tabs0ENtNtNtB9_6traits8iterator8Iterator5countB1R_.exit.loopexit.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 3 uses
  %i.n = load i8, ptr %i.l, align 1, !alias.scope !169, !noalias !170, !noundef !4 ; 5 uses
  %i.o = icmp sgt i8 %i.n, -1
  br i1 %i.o, label %bb.f, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit12.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit12.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.p = and i8 %i.n, 31
  %i.q = zext nneg i8 %i.p to i32                 ; 3 uses
  %i.r = icmp ne ptr %i.m, %i.c
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 3 uses
  %i.t = load i8, ptr %i.m, align 1, !alias.scope !169, !noalias !170, !noundef !4
  %i.u = shl nuw nsw i32 %i.q, 6
  %i.v = and i8 %i.t, 63
  %i.w = zext nneg i8 %i.v to i32                 ; 2 uses
  %i.x = or disjoint i32 %i.u, %i.w
  %i.y = icmp samesign ugt i8 %i.n, -33
  br i1 %i.y, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit14.i.i.i.i.i.i.i.i, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = zext nneg i8 %i.n to i32
  br label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit14.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit12.i.i.i.i.i.i.i.i
  %i.aa = icmp ne ptr %i.s, %i.c
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 3 ; 3 uses
  %i.ac = load i8, ptr %i.s, align 1, !alias.scope !169, !noalias !170, !noundef !4
  %i.ad = shl nuw nsw i32 %i.w, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af            ; 2 uses
  %i.ah = shl nuw nsw i32 %i.q, 12
  %i.ai = or disjoint i32 %i.ag, %i.ah
  %i.aj = icmp samesign ugt i8 %i.n, -17
  br i1 %i.aj, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit16.i.i.i.i.i.i.i.i, label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit16.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit14.i.i.i.i.i.i.i.i
  %i.ak = icmp ne ptr %i.ab, %i.c
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.am = load i8, ptr %i.ab, align 1, !alias.scope !169, !noalias !170, !noundef !4
  %i.an = shl nuw nsw i32 %i.q, 18
  %i.ao = and i32 %i.an, 1835008
  %i.ap = shl nuw nsw i32 %i.ag, 6
  %i.aq = and i8 %i.am, 63
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ap, %i.ar
  %i.at = or disjoint i32 %i.as, %i.ao
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit16.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit14.i.i.i.i.i.i.i.i, %bb.f, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit12.i.i.i.i.i.i.i.i
  %i.au = phi ptr [ %i.ab, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit14.i.i.i.i.i.i.i.i ], [ %i.al, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit16.i.i.i.i.i.i.i.i ], [ %i.s, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit12.i.i.i.i.i.i.i.i ], [ %i.m, %bb.f ]
  %spec.select.i.ph.i.i.i.i.i.i = phi i32 [ %i.ai, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit14.i.i.i.i.i.i.i.i ], [ %i.at, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit16.i.i.i.i.i.i.i.i ], [ %i.x, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit12.i.i.i.i.i.i.i.i ], [ %i.z, %bb.f ]
  %i.av = add i64 %i.k, -1                        ; 2 uses
  %i.aw = icmp eq i32 %spec.select.i.ph.i.i.i.i.i.i, 9
  %i.ax = zext i1 %i.aw to i64
  %i.ay = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ax  ; 2 uses
  %i.az = icmp eq i64 %i.av, 0
  br i1 %i.az, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_4take4TakeNtNtNtBb_3str4iter5CharsENCNvNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render21extra_width_from_tabs0ENtNtNtB9_6traits8iterator8Iterator5countB1R_.exit.loopexit.i, label %.preheader.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_4take4TakeNtNtNtBb_3str4iter5CharsENCNvNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render21extra_width_from_tabs0ENtNtNtB9_6traits8iterator8Iterator5countB1R_.exit.loopexit.i: ; preds = %bb.g, %.preheader.i
  %.sroa.0.0.i.i.i.i.ph.i = phi i64 [ %.sroa.01.0.i.i.i.i.i.i, %.preheader.i ], [ %i.ay, %bb.g ]
  %i.ba = mul i64 %.sroa.0.0.i.i.i.i.ph.i, 3
  br label %_RNvNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render21extra_width_from_tabs.exit

_RNvNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render21extra_width_from_tabs.exit: ; preds = %bb.d, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_4take4TakeNtNtNtBb_3str4iter5CharsENCNvNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render21extra_width_from_tabs0ENtNtNtB9_6traits8iterator8Iterator5countB1R_.exit.loopexit.i
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ba, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_4take4TakeNtNtNtBb_3str4iter5CharsENCNvNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render21extra_width_from_tabs0ENtNtNtB9_6traits8iterator8Iterator5countB1R_.exit.loopexit.i ]
  %i.bb = icmp eq i64 %i.h, 0
  br i1 %i.bb, label %_RNvNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render21extra_width_from_tabs.exit14, label %.preheader.i4

.preheader.i4:                                    ; preds = %_RNvNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render21extra_width_from_tabs.exit, %bb.j
  %i.bc = phi i64 [ %i.cn, %bb.j ], [ %i.h, %_RNvNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render21extra_width_from_tabs.exit ]
  %i.bd = phi ptr [ %i.cm, %bb.j ], [ %4, %_RNvNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render21extra_width_from_tabs.exit ] ; 6 uses
  %.sroa.01.0.i.i.i.i.i.i5 = phi i64 [ %i.cq, %bb.j ], [ 0, %_RNvNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render21extra_width_from_tabs.exit ] ; 2 uses
  %.not.i.i.i.i.i.i.i6 = icmp eq ptr %i.bd, %i.c
  br i1 %.not.i.i.i.i.i.i.i6, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_4take4TakeNtNtNtBb_3str4iter5CharsENCNvNtNtCs2sepWsjoOnX_17annotate_snippets8renderer6render21extra_width_from_tabs0ENtNtNtB9_6traits8iterator8Iterator5countB1R_.exit.loopexit.i9, label %bb.h

bb.h:                                             ; preds = %.preheader.i4
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 3 uses
  %i.bf = load i8, ptr %i.bd, align 1, !alias.scope !171, !noalias !172, !noundef !4 ; 5 uses
  %i.bg = icmp sgt i8 %i.bf, -1
  br i1 %i.bg, label %bb.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit12.i.i.i.i.i.i.i.i7

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit12.i.i.i.i.i.i.i.i7: ; preds = %bb.h
  %i.bh = and i8 %i.bf, 31
  %i.bi = zext nneg i8 %i.bh to i32               ; 3 uses
  %i.bj = icmp ne ptr %i.be, %i.c
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 2 ; 3 uses
  %i.bl = load i8, ptr %i.be, align 1, !alias.scope !171, !noalias !172, !noundef !4
  %i.bm = shl nuw nsw i32 %i.bi, 6
  %i.bn = and i8 %i.bl, 63
  %i.bo = zext nneg i8 %i.bn to i32               ; 2 uses
  %i.bp = or disjoint i32 %i.bm, %i.bo
  %i.bq = icmp samesign ugt i8 %i.bf, -33
  br i1 %i.bq, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit14.i.i.i.i.i.i.i.i12, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.br = zext nneg i8 %i.bf to i32
  br label %bb.j

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit14.i.i.i.i.i.i.i.i12: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2sepWsjoOnX_17annotate_snippets.exit12.i.i.i.i.i.i.i.i7
  %i.bs = icmp ne ptr %i.bk, %i.c
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 3 ; 3 uses
  %i.bu = load i8, ptr %i.bk, align 1, !alias.scope !171, !noalias !172, !noundef !4
  %i.bv = shl nuw nsw i32 %i.bo, 6
  %i.bw = and i8 %i.bu, 63
end_hunk_0
