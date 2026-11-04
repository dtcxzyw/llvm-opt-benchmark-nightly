Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.09?download=true
inline.NumInlined: 4282
inline.NumDeleted: 1610
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_RNvXs9_NtCs7gfv9tzbXmh_6yara_x5typesNtB5_9TypeValueNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq:bb.a
    i64 0, label %bb.r
    i64 1, label %bb.s
    i64 2, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit
  ]

bb.r:                                             ; preds = %bb.q
  %i.y = fcmp oeq double %.val6, %.val8
  br label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.s:                                             ; preds = %bb.q
  %i.z = fcmp oeq double %.val6, %.val8
  br label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.t:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val9 = load i64, ptr %i.aa, align 8, !range !35, !noundef !4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val10 = load i64, ptr %i.ac, align 8          ; 2 uses
  %.val11 = load i64, ptr %i.ab, align 8, !range !35, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val12 = load i64, ptr %i.ad, align 8          ; 2 uses
  %i.ae = icmp eq i64 %.val9, %.val11
  br i1 %i.ae, label %bb.u, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.u:                                             ; preds = %bb.t
  switch i64 %.val9, label %default.unreachable26 [
    i64 0, label %bb.v
    i64 1, label %bb.w
    i64 2, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit
  ]

bb.v:                                             ; preds = %bb.u
  %i.af = icmp eq i64 %.val10, %.val12
  br label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.w:                                             ; preds = %bb.u
  %i.ag = icmp eq i64 %.val10, %.val12
  br label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.x:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val13 = load i64, ptr %i.ah, align 8, !range !35, !noundef !4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val14 = load ptr, ptr %i.aj, align 8          ; 7 uses
  %.val15 = load i64, ptr %i.ai, align 8, !range !35, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val16 = load ptr, ptr %i.ak, align 8          ; 7 uses
  %i.al = icmp eq i64 %.val13, %.val15
  br i1 %i.al, label %bb.y, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.y:                                             ; preds = %bb.x
  switch i64 %.val13, label %default.unreachable26 [
    i64 0, label %bb.z
    i64 1, label %bb.ab
    i64 2, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit
  ]

_RNvXsH_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCs2AhGS15tZfv_4bstr7bstring7BStringENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit.sink.split.i: ; preds = %bb.ac, %bb.aa
  %.val2.i.i5.sink.i = phi i64 [ %.val2.i.i.i, %bb.aa ], [ %.val2.i.i5.i, %bb.ac ]
  %i.am = getelementptr i8, ptr %.val16, i64 24
  %.val3.i.i8.i = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.an = getelementptr i8, ptr %.val14, i64 24
  %.val.i.i9.i = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i.i10.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i9.i, ptr nonnull readonly %.val3.i.i8.i, i64 %.val2.i.i5.sink.i)
  %i.ao = icmp eq i32 %bcmp.i.i.i10.i, 0
  br label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14), "nonnull"(ptr %.val16) ]
  %i.ap = icmp eq ptr %.val14, %.val16
  br i1 %i.ap, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aq = getelementptr i8, ptr %.val14, i64 32
  %.val2.i.i.i = load i64, ptr %i.aq, align 8, !noundef !4 ; 2 uses
  %i.ar = getelementptr i8, ptr %.val16, i64 32
  %.val4.i.i.i = load i64, ptr %i.ar, align 8, !noundef !4
  %i.as = icmp eq i64 %.val2.i.i.i, %.val4.i.i.i
  br i1 %i.as, label %_RNvXsH_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCs2AhGS15tZfv_4bstr7bstring7BStringENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit.sink.split.i, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.ab:                                            ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14), "nonnull"(ptr %.val16) ]
  %i.at = icmp eq ptr %.val14, %.val16
  br i1 %i.at, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.au = getelementptr i8, ptr %.val14, i64 32
  %.val2.i.i5.i = load i64, ptr %i.au, align 8, !noundef !4 ; 2 uses
  %i.av = getelementptr i8, ptr %.val16, i64 32
  %.val4.i.i6.i = load i64, ptr %i.av, align 8, !noundef !4
  %i.aw = icmp eq i64 %.val2.i.i5.i, %.val4.i.i6.i
  br i1 %i.aw, label %_RNvXsH_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCs2AhGS15tZfv_4bstr7bstring7BStringENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit.sink.split.i, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.ad:                                            ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !10, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.ay, -1
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !10, !noundef !4 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, -1
  %brmerge = or i1 %.not, %i.bb
  %i.bc = and i64 %i.ay, %i.ba
  %.mux = icmp eq i64 %i.bc, -1
  br i1 %brmerge, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !noundef !4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !4
  %i.bh = icmp eq i64 %i.be, %i.bg
  br i1 %i.bh, label %bb.af, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.af:                                            ; preds = %bb.ae
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !4, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !4, !noundef !4
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.bl, ptr nonnull %i.bj, i64 %i.be)
  %i.bm = icmp eq i32 %bcmp, 0
  br label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.ag:                                            ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !4, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !4, !noundef !4
  %i.br = icmp eq ptr %i.bo, %i.bq
  br label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.ah:                                            ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !4, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !4, !noundef !4
  %i.bw = icmp eq ptr %i.bt, %i.bv
  br label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.ai:                                            ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !4, !noundef !4
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4
  %i.cb = icmp eq ptr %i.by, %i.ca
  br label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.aj:                                            ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !4, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !4, !noundef !4
  %i.cg = icmp eq ptr %i.cd, %i.cf
  br label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtCs7gfv9tzbXmh_6yara_x7symbolsNtB5_18StackedSymbolTableNtB5_12SymbolLookup6lookup(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9781)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !9781, !noundef !4
  %.val.i = load i64, ptr %1, align 8, !alias.scope !9781 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.d, align 8, !alias.scope !9781
  %i.e = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs7gfv9tzbXmh_6yara_x(i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43), !noalias !9782 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 3 uses
  %i.g = extractvalue { i64, i64 } %i.e, 1        ; 2 uses
  %i.h = sub i64 %i.g, %i.f                       ; 3 uses
  %i.i = icmp eq i64 %i.g, %i.f
  br i1 %i.i, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE4iterB1Y_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.f, %.val2.i                   ; 2 uses
  %.not.i.i = icmp ult i64 %i.j, %.val.i
  %i.k = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %i.j, %i.k        ; 4 uses
  %i.l = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.l, %i.h
  br i1 %.not11.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw i64 %i.h, %i.l
  br label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE4iterB1Y_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = add i64 %.sroa.04.0.i.i, %i.h
  br label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE4iterB1Y_.exit

_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE4iterB1Y_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.d ], [ %.sroa.04.0.i.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0.i = phi i64 [ %i.n, %bb.d ], [ %.val.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.d ], [ %i.m, %bb.c ], [ 0, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !9781, !nonnull !4, !noundef !4 ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.0.0.i
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.5.0.i
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.11.0.i
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE4iterB1Y_.exit
  %.sroa.8.sroa.0.0 = phi ptr [ %i.p, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE4iterB1Y_.exit ], [ %.sroa.8.sroa.0.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit ] ; 4 uses
  %.sroa.8.sroa.7.0 = phi ptr [ %i.s, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE4iterB1Y_.exit ], [ %i.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit ] ; 2 uses
  %.sroa.06.sroa.0.0 = phi ptr [ %i.q, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE4iterB1Y_.exit ], [ %.sroa.06.sroa.0.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit ] ; 3 uses
  %.sroa.06.sroa.6.0 = phi ptr [ %i.r, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE4iterB1Y_.exit ], [ %.sroa.06.sroa.6.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit ] ; 3 uses
  %i.t = icmp eq ptr %.sroa.8.sroa.0.0, %.sroa.8.sroa.7.0
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %.sroa.06.sroa.0.0, %.sroa.06.sroa.6.0
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.8.sroa.0.1 = phi ptr [ %.sroa.06.sroa.0.0, %bb.f ], [ %.sroa.8.sroa.0.0, %bb.e ]
  %.sroa.06.sroa.0.1 = phi ptr [ %.sroa.8.sroa.0.0, %bb.f ], [ %.sroa.06.sroa.0.0, %bb.e ]
  %.sroa.06.sroa.6.1 = phi ptr [ %.sroa.8.sroa.0.0, %bb.f ], [ %.sroa.06.sroa.6.0, %bb.e ]
  %.sink12.i = phi ptr [ %.sroa.06.sroa.6.0, %bb.f ], [ %.sroa.8.sroa.7.0, %bb.e ]
  %i.v = getelementptr inbounds i8, ptr %.sink12.i, i64 -8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  call void @_RNvXs7_NtCs7gfv9tzbXmh_6yara_x7symbolsINtNtCskKLDkoKarTP_4core4cell7RefCellNtB5_11SymbolTableENtB5_12SymbolLookup6lookup(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.a, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.y = load i64, ptr %i.a, align 8, !range !9783, !noundef !4
  %.not2 = icmp eq i64 %i.y, -2
  br i1 %.not2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit, label %bb.j

bb.h:                                             ; preds = %bb.f
  store i64 -2, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.j:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB5_13ReportBuilderNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMsa_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB5_13ReportBuilder3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs9_NvXs0_NvXNvNtCs7gfv9tzbXmh_6yara_x5typess3_1__NtBg_9TypeValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB16_7Visitor10visit_enumNtB5_s1_9___VisitorB2h_9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1796, i64 noundef 32)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsH_Cs6ObhOmryMwL_8smallvecINtB5_8IntoIterAhj4_ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !9791, !noundef !4
  %i.h = icmp ugt i64 %i.g, 4
  %i.i = load ptr, ptr %1, align 8, !alias.scope !9791, !nonnull !4
  %.sink11.i = select i1 %i.h, ptr %i.i, ptr %1   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9792
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.l, align 8, !noalias !9792
  invoke void @_RINvXsv_Cs6ObhOmryMwL_8smallvecINtB6_8SmallVecAhj4_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendhE6extendINtNtNtBV_8adapters6cloned6ClonedINtNtNtBX_5slice4iter4IterhEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k)
          to label %_RINvXsu_Cs6ObhOmryMwL_8smallvecINtB6_8SmallVecAhj4_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorhE9from_iterINtNtNtBV_8adapters6cloned6ClonedINtNtNtBX_5slice4iter4IterhEEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.b, !noalias !9792

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8SmallVecAhj4_EECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #44
          to label %bb.d unwind label %bb.c, !noalias !9792

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !9792
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.m

_RINvXsu_Cs6ObhOmryMwL_8smallvecINtB6_8SmallVecAhj4_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorhE9from_iterINtNtNtBV_8adapters6cloned6ClonedINtNtNtBX_5slice4iter4IterhEEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %i.l, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9792
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9793)
  %i.o = icmp ugt i64 %.sroa.6.0.copyload, 4      ; 3 uses
  %.sink10.i.i = select i1 %i.o, i64 %.sroa.4.0.copyload, i64 %.sroa.6.0.copyload
  %spec.select = select i1 %i.o, i64 0, i64 %.sroa.4.0.copyload
  %spec.select10 = select i1 %i.o, i64 %.sroa.6.0.copyload, i64 0
  store i64 %.sroa.0.0.copyload, ptr %0, align 8, !alias.scope !9794
  %.sroa.4.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select, ptr %.sroa.4.0..sroa_idx2, align 8, !alias.scope !9794
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select10, ptr %.sroa.6.0..sroa_idx4, align 8, !alias.scope !9794
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.p, align 8, !alias.scope !9795
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink10.i.i, ptr %i.q, align 8, !alias.scope !9795
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsI_Cs6ObhOmryMwL_8smallvecINtB5_8IntoIterANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(none) dereferenceable(440) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.promoted = load i64, ptr %i.b, align 8        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ugt i64 %i.g, 4
  %i.i = load ptr, ptr %0, align 8, !nonnull !4
  %.sink11.i = select i1 %i.h, ptr %i.i, ptr %0
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = icmp eq i64 %.promoted, %i.d
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit6, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit
  %i.m = phi i64 [ %i.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit ], [ %.promoted, %bb.a ] ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 3 uses
  store i64 %i.n, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw [104 x i8], ptr %.sink11.i, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.o, i64 104, i1 false)
  %.pre = load i8, ptr %i.e, align 8, !range !26  ; 2 uses
  %.not = icmp eq i8 %.pre, -1
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit6, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %or.cond.i = icmp samesign ugt i8 %.pre, 1
  br i1 %or.cond.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr %i.j, align 4, !range !27, !alias.scope !9804, !noundef !4 ; 3 uses
  %i.q = icmp ne i8 %i.p, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nsw i8 %i.p, -3
  %i.s = icmp sgt i8 %i.p, 2
  %narrow.i.i.i.i = select i1 %i.s, i8 %i.r, i8 13
  switch i8 %narrow.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit [
    i8 3, label %.sink.split.i.i.i.i
    i8 9, label %.sink.split.i.i.i.i
    i8 11, label %.sink.split.i.i.i.i
    i8 13, label %bb.d
    i8 14, label %.sink.split.i.i.i.i
  ]

.sink.split.i.i.i.i:                              ; preds = %bb.d, %bb.c, %bb.c, %bb.c, %bb.c
  %.sink.i.i.i.i = phi ptr [ %i.a, %bb.c ], [ %i.a, %bb.c ], [ %i.a, %bb.c ], [ %i.a, %bb.c ], [ %i.k, %bb.d ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime13type_registry14RegisteredTypeECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(48) %.sink.i.i.i.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime13type_registry14RegisteredTypeECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.a)
          to label %.sink.split.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime13type_registry14RegisteredTypeECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k) #44
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.t

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.b, %bb.c, %.sink.split.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = icmp eq i64 %i.n, %i.d
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit6, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit6: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit, %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsI_Cs6ObhOmryMwL_8smallvecINtB5_8IntoIterAhj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8
  %.not1 = icmp eq i64 %.promoted, %i.c
  br i1 %.not1, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  store i64 %i.c, ptr %i.a, align 8
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.preheader, %bb.a
  ret void
}
end_hunk_0
