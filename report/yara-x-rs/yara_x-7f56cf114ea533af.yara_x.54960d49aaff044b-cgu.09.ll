Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.09?download=true
inline.NumInlined: 4282
inline.NumDeleted: 1610
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_RNvXs9_NtCs7gfv9tzbXmh_6yara_x5typesNtB5_9TypeValueNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq:bb.a
  %bcmp.i.i.i10.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i9.i, ptr nonnull readonly %.val3.i.i8.i, i64 %.val2.i.i5.sink.i)
  %i.ao = icmp eq i32 %bcmp.i.i.i10.i, 0
  br label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
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
  %i.ay = load i64, ptr %i.ax, align 8, !range !26, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.ay, -1
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !26, !noundef !4 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10272)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !10272, !noalias !10275, !noundef !4
  %.val.i = load i64, ptr %1, align 8, !alias.scope !10272, !noalias !10275 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.d, align 8, !alias.scope !10272, !noalias !10275
  %i.e = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs7gfv9tzbXmh_6yara_x(i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43), !noalias !10277 ; 2 uses
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
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !10272, !noalias !10275, !nonnull !4, !noundef !4 ; 4 uses
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
  %i.y = load i64, ptr %i.a, align 8, !range !10280, !noundef !4
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
  %.sroa.4 = alloca [8 x i8], align 8             ; 5 uses
  %.sroa.6 = alloca [8 x i8], align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !10281, !noalias !10284, !noundef !4
  %i.h = icmp ugt i64 %i.g, 4
  %i.i = load ptr, ptr %1, align 8, !alias.scope !10281, !noalias !10284, !nonnull !4
  %.sink11.i = select i1 %i.h, ptr %i.i, ptr %1   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10286
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.l, align 8, !noalias !10286
  invoke void @_RINvXsv_Cs6ObhOmryMwL_8smallvecINtB6_8SmallVecAhj4_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendhE6extendINtNtNtBV_8adapters6cloned6ClonedINtNtNtBX_5slice4iter4IterhEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k)
          to label %_RINvXsu_Cs6ObhOmryMwL_8smallvecINtB6_8SmallVecAhj4_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorhE9from_iterINtNtNtBV_8adapters6cloned6ClonedINtNtNtBX_5slice4iter4IterhEEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.b, !noalias !10286

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8SmallVecAhj4_EECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #44
          to label %bb.d unwind label %bb.c, !noalias !10286

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !10286
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.m

_RINvXsu_Cs6ObhOmryMwL_8smallvecINtB6_8SmallVecAhj4_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorhE9from_iterINtNtNtBV_8adapters6cloned6ClonedINtNtNtBX_5slice4iter4IterhEEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  store i64 %.sroa.4.0.copyload, ptr %.sroa.4, align 8
  %.sroa.6.0.copyload = load i64, ptr %i.l, align 8 ; 3 uses
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10286
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10292)
  %i.o = icmp ugt i64 %.sroa.6.0.copyload, 4      ; 2 uses
  %.sink10.i.i = select i1 %i.o, i64 %.sroa.4.0.copyload, i64 %.sroa.6.0.copyload
  %.sink9.i.i = select i1 %i.o, ptr %.sroa.4, ptr %.sroa.6
  store i64 0, ptr %.sink9.i.i, align 8, !alias.scope !10292, !noalias !10289
  store i64 %.sroa.0.0.copyload, ptr %0, align 8, !alias.scope !10294
  %.sroa.4.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0..sroa.4.0. = load i64, ptr %.sroa.4, align 8, !alias.scope !10294
  store i64 %.sroa.4.0..sroa.4.0., ptr %.sroa.4.0..sroa_idx2, align 8, !alias.scope !10294
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0..sroa.6.0. = load i64, ptr %.sroa.6, align 8, !alias.scope !10294
  store i64 %.sroa.6.0..sroa.6.0., ptr %.sroa.6.0..sroa_idx4, align 8, !alias.scope !10294
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.p, align 8, !alias.scope !10289, !noalias !10292
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink10.i.i, ptr %i.q, align 8, !alias.scope !10289, !noalias !10292
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
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
  %.pre = load i8, ptr %i.e, align 8, !range !557 ; 2 uses
  %.not = icmp eq i8 %.pre, -1
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit6, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %or.cond.i = icmp samesign ugt i8 %.pre, 1
  br i1 %or.cond.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr %i.j, align 4, !range !558, !alias.scope !10295, !noundef !4 ; 3 uses
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsO_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([440 x i8]) align 8 captures(none) dereferenceable(440) initializes((0, 440)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(424) %1) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !10304, !noalias !10307, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 4                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !10304, !noalias !10307
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b
  %.sink9.i = select i1 %i.c, ptr %i.d, ptr %i.a
  store i64 0, ptr %.sink9.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(424) %1, i64 424, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i64 %.sink10.i, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsO_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !10309, !noalias !10312, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 4                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !10309, !noalias !10312
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b
  %.sink9.i = select i1 %i.c, ptr %i.d, ptr %i.a
  store i64 0, ptr %.sink9.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink10.i, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvXsP_Cs6ObhOmryMwL_8smallvecRINtB5_8SmallVecAhj4_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !10314, !noalias !10317, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 4                     ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !alias.scope !10314, !noalias !10317, !nonnull !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !10314, !noalias !10317
  %.sink11.i = select i1 %i.c, ptr %i.d, ptr %0   ; 2 uses
  %.sink10.i = select i1 %i.c, i64 %i.f, i64 %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 %.sink10.i
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sink11.i, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %i.g, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure8AclEntryEENtNtB7_3fmt5Debug3fmtB1n_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !26, !noundef !4
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1801, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1800)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1799, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !26, !noundef !4
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1801, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1802)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.or.v6i64
!10090 = distinct !{!10090, !10091, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!10091 = distinct !{!10091, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!10092 = !{!10093, !10083, !10087, !10080, !10058}
!10093 = distinct !{!10093, !10094, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0B1y_: argument 0"}
!10094 = distinct !{!10094, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0B1y_"}
!10095 = !{!10096}
!10096 = distinct !{!10096, !10097, !"_RNvXsa_NtCs7gfv9tzbXmh_6yara_x7symbolsNtB5_6SymbolNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 0"}
!10097 = distinct !{!10097, !"_RNvXsa_NtCs7gfv9tzbXmh_6yara_x7symbolsNtB5_6SymbolNtNtCskKLDkoKarTP_4core5clone5Clone5clone"}
!10098 = !{!10099}
!10099 = distinct !{!10099, !10097, !"_RNvXsa_NtCs7gfv9tzbXmh_6yara_x7symbolsNtB5_6SymbolNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 1"}
!10100 = !{!10096, !10099}
!10101 = !{!10102}
!10102 = distinct !{!10102, !10103, !"_RNvXs5_NtNtCs7gfv9tzbXmh_6yara_x5types9structureNtB5_17DeprecationNoticeNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 1"}
!10103 = distinct !{!10103, !"_RNvXs5_NtNtCs7gfv9tzbXmh_6yara_x5types9structureNtB5_17DeprecationNoticeNtNtCskKLDkoKarTP_4core5clone5Clone5clone"}
!10104 = !{!10105, !10102, !10096, !10099}
!10105 = distinct !{!10105, !10103, !"_RNvXs5_NtNtCs7gfv9tzbXmh_6yara_x5types9structureNtB5_17DeprecationNoticeNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 0"}
!10106 = !{!10102, !10099}
!10107 = !{!10105, !10096}
!10108 = !{!10102, !10096, !10099}
!10109 = !{!10110}
!10110 = distinct !{!10110, !10111, !"_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdNtB5_13SliceContains14slice_containsBI_: argument 0"}
!10111 = distinct !{!10111, !"_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdNtB5_13SliceContains14slice_containsBI_"}
!10112 = !{!10113, !10115}
!10113 = distinct !{!10113, !10114, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2y_13SliceContains14slice_contains0EBW_: argument 0"}
!10114 = distinct !{!10114, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2y_13SliceContains14slice_contains0EBW_"}
!10115 = distinct !{!10115, !10114, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2y_13SliceContains14slice_contains0EBW_: argument 1"}
!10116 = !{!10117}
!10117 = distinct !{!10117, !10118, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdE8push_mutBL_: argument 0"}
!10118 = distinct !{!10118, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdE8push_mutBL_"}
!10119 = !{!10120}
!10120 = distinct !{!10120, !10121, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB12_: argument 0"}
!10121 = distinct !{!10121, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB12_"}
!10122 = !{!10123}
!10123 = distinct !{!10123, !10124, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdNtBQ_14CodeCacheEntryNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EBU_: argument 0"}
!10124 = distinct !{!10124, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdNtBQ_14CodeCacheEntryNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EBU_"}
!10125 = !{!10126}
!10126 = distinct !{!10126, !10124, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdNtBQ_14CodeCacheEntryNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EBU_: argument 1"}
!10127 = !{!10128}
!10128 = distinct !{!10128, !10129, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdNtBS_14CodeCacheEntryEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1G_E0EBW_: argument 0"}
!10129 = distinct !{!10129, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdNtBS_14CodeCacheEntryEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1G_E0EBW_"}
!10130 = !{!10131}
!10131 = distinct !{!10131, !10129, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdNtBS_14CodeCacheEntryEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1G_E0EBW_: argument 1"}
!10132 = !{!10133}
!10133 = distinct !{!10133, !10134, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!10134 = distinct !{!10134, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!10135 = !{!10133, !10128, !10123}
!10136 = !{!10137, !10131, !10126}
!10137 = distinct !{!10137, !10134, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!10138 = !{!10131, !10126}
!10139 = !{!10128, !10123}
!10140 = !{!10141, !10133, !10137, !10128, !10131}
!10141 = distinct !{!10141, !10142, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!10142 = distinct !{!10142, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!10143 = !{!10144}
!10144 = distinct !{!10144, !10145, !"_RNvXCsjqcU1oJFKXj_9hashbrownNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdINtB2_10EquivalentBq_E10equivalentBw_: argument 1"}
!10145 = distinct !{!10145, !"_RNvXCsjqcU1oJFKXj_9hashbrownNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdINtB2_10EquivalentBq_E10equivalentBw_"}
!10146 = !{!10147, !10148, !10133, !10137, !10128, !10131}
!10147 = distinct !{!10147, !10145, !"_RNvXCsjqcU1oJFKXj_9hashbrownNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdINtB2_10EquivalentBq_E10equivalentBw_: argument 0"}
!10148 = distinct !{!10148, !10149, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdNtBU_14CodeCacheEntryEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1I_E0E0BY_: argument 0"}
!10149 = distinct !{!10149, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdNtBU_14CodeCacheEntryEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1I_E0E0BY_"}
!10150 = !{!10151}
!10151 = distinct !{!10151, !10152, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdNtBQ_14CodeCacheEntryNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EBU_: argument 0"}
!10152 = distinct !{!10152, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdNtBQ_14CodeCacheEntryNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EBU_"}
!10153 = !{!10154}
!10154 = distinct !{!10154, !10152, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdNtBQ_14CodeCacheEntryNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EBU_: argument 1"}
!10155 = !{!10156}
!10156 = distinct !{!10156, !10157, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdNtBS_14CodeCacheEntryEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1G_E0EBW_: argument 0"}
!10157 = distinct !{!10157, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdNtBS_14CodeCacheEntryEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1G_E0EBW_"}
!10158 = !{!10159}
!10159 = distinct !{!10159, !10160, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!10160 = distinct !{!10160, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!10161 = !{!10159, !10156, !10151}
!10162 = !{!10163, !10164, !10154}
!10163 = distinct !{!10163, !10160, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!10164 = distinct !{!10164, !10157, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdNtBS_14CodeCacheEntryEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1G_E0EBW_: argument 1"}
!10165 = !{!10166, !10159, !10163, !10156, !10164}
!10166 = distinct !{!10166, !10167, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!10167 = distinct !{!10167, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!10168 = !{!10169}
!10169 = distinct !{!10169, !10170, !"_RNvXCsjqcU1oJFKXj_9hashbrownNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdINtB2_10EquivalentBq_E10equivalentBw_: argument 1"}
!10170 = distinct !{!10170, !"_RNvXCsjqcU1oJFKXj_9hashbrownNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdINtB2_10EquivalentBq_E10equivalentBw_"}
!10171 = !{!10172, !10173, !10159, !10163, !10156, !10164}
!10172 = distinct !{!10172, !10170, !"_RNvXCsjqcU1oJFKXj_9hashbrownNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdINtB2_10EquivalentBq_E10equivalentBw_: argument 0"}
!10173 = distinct !{!10173, !10174, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdNtBU_14CodeCacheEntryEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1I_E0E0BY_: argument 0"}
!10174 = distinct !{!10174, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdNtBU_14CodeCacheEntryEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1I_E0E0BY_"}
!10175 = !{!10176}
!10176 = distinct !{!10176, !10177, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNvXs5_B1p_NtB1p_6ReportNtNtBb_3fmt7Display3fmts2_0ENtNtNtB9_6traits8iterator8Iterator4nextB1t_: argument 0"}
!10177 = distinct !{!10177, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNvXs5_B1p_NtB1p_6ReportNtNtBb_3fmt7Display3fmts2_0ENtNtNtB9_6traits8iterator8Iterator4nextB1t_"}
!10178 = !{!10179}
!10179 = distinct !{!10179, !10180, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNvXs5_B1p_NtB1p_6ReportNtNtBb_3fmt7Display3fmts3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1t_: argument 0"}
!10180 = distinct !{!10180, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNvXs5_B1p_NtB1p_6ReportNtNtBb_3fmt7Display3fmts3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1t_"}
!10181 = !{!10182}
!10182 = distinct !{!10182, !10183, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCscZgbKejcMGg_17annotate_snippets7snippet5GroupE8push_mutCs7gfv9tzbXmh_6yara_x: argument 0"}
!10183 = distinct !{!10183, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCscZgbKejcMGg_17annotate_snippets7snippet5GroupE8push_mutCs7gfv9tzbXmh_6yara_x"}
!10184 = !{!10185}
!10185 = distinct !{!10185, !10183, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCscZgbKejcMGg_17annotate_snippets7snippet5GroupE8push_mutCs7gfv9tzbXmh_6yara_x: argument 1"}
!10186 = !{!10187, !10189, !10190, !10192, !10194}
!10187 = distinct !{!10187, !10188, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvXs5_B1G_NtB1G_6ReportNtNtBb_3fmt7Display3fmt0EB1K_: argument 0"}
!10188 = distinct !{!10188, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvXs5_B1G_NtB1G_6ReportNtNtBb_3fmt7Display3fmt0EB1K_"}
!10189 = distinct !{!10189, !10188, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvXs5_B1G_NtB1G_6ReportNtNtBb_3fmt7Display3fmt0EB1K_: argument 1"}
!10190 = distinct !{!10190, !10191, !"_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNvXs5_B2i_NtB2i_6ReportNtNtBb_3fmt7Display3fmt0ENtNtNtB9_6traits8iterator8Iterator4nextB2m_: argument 0"}
!10191 = distinct !{!10191, !"_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNvXs5_B2i_NtB2i_6ReportNtNtBb_3fmt7Display3fmt0ENtNtNtB9_6traits8iterator8Iterator4nextB2m_"}
!10192 = distinct !{!10192, !10193, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNvXs5_B2y_NtB2y_6ReportNtNtBb_3fmt7Display3fmt0ENCB41_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2C_: argument 0"}
!10193 = distinct !{!10193, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNvXs5_B2y_NtB2y_6ReportNtNtBb_3fmt7Display3fmt0ENCB41_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2C_"}
!10194 = distinct !{!10194, !10195, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNvXs5_B2t_NtB2t_6ReportNtNtBc_3fmt7Display3fmt0ENCB3W_s_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3minEB2x_: argument 0"}
!10195 = distinct !{!10195, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNvXs5_B2t_NtB2t_6ReportNtNtBc_3fmt7Display3fmt0ENCB3W_s_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3minEB2x_"}
!10196 = !{!10192, !10194}
!10197 = !{!10198, !10200, !10201, !10203, !10205}
!10198 = distinct !{!10198, !10199, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvXs5_B1G_NtB1G_6ReportNtNtBb_3fmt7Display3fmts0_0EB1K_: argument 0"}
!10199 = distinct !{!10199, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvXs5_B1G_NtB1G_6ReportNtNtBb_3fmt7Display3fmts0_0EB1K_"}
!10200 = distinct !{!10200, !10199, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvXs5_B1G_NtB1G_6ReportNtNtBb_3fmt7Display3fmts0_0EB1K_: argument 1"}
!10201 = distinct !{!10201, !10202, !"_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNvXs5_B2i_NtB2i_6ReportNtNtBb_3fmt7Display3fmts0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2m_: argument 0"}
!10202 = distinct !{!10202, !"_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNvXs5_B2i_NtB2i_6ReportNtNtBb_3fmt7Display3fmts0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2m_"}
!10203 = distinct !{!10203, !10204, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNvXs5_B2y_NtB2y_6ReportNtNtBb_3fmt7Display3fmts0_0ENCB41_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB2C_: argument 0"}
!10204 = distinct !{!10204, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNvXs5_B2y_NtB2y_6ReportNtNtBb_3fmt7Display3fmts0_0ENCB41_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB2C_"}
!10205 = distinct !{!10205, !10206, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNvXs5_B2t_NtB2t_6ReportNtNtBc_3fmt7Display3fmts0_0ENCB3W_s1_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB2x_: argument 0"}
!10206 = distinct !{!10206, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNvXs5_B2t_NtB2t_6ReportNtNtBc_3fmt7Display3fmts0_0ENCB3W_s1_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB2x_"}
!10207 = !{!10203, !10205}
!10208 = !{!10209}
!10209 = distinct !{!10209, !10121, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB12_: argument 0:h.rot"}
!10210 = !{!10211}
!10211 = distinct !{!10211, !10212, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTReNtNtCs7gfv9tzbXmh_6yara_x5types9TypeValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB13_: argument 1"}
!10212 = distinct !{!10212, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTReNtNtCs7gfv9tzbXmh_6yara_x5types9TypeValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB13_"}
!10213 = !{!10214}
!10214 = distinct !{!10214, !10212, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTReNtNtCs7gfv9tzbXmh_6yara_x5types9TypeValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB13_: argument 0"}
!10215 = !{!10216}
!10216 = distinct !{!10216, !10217, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCs7gfv9tzbXmh_6yara_x5types9TypeValueEE8push_mutB15_: argument 0"}
!10217 = distinct !{!10217, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCs7gfv9tzbXmh_6yara_x5types9TypeValueEE8push_mutB15_"}
!10218 = !{!10219}
!10219 = distinct !{!10219, !10217, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCs7gfv9tzbXmh_6yara_x5types9TypeValueEE8push_mutB15_: argument 1"}
!10220 = !{!10221}
!10221 = distinct !{!10221, !10212, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTReNtNtCs7gfv9tzbXmh_6yara_x5types9TypeValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB13_: argument 1:h.rot"}
!10222 = !{!10223}
!10223 = distinct !{!10223, !10224, !"_RNvMNtNtCs7gfv9tzbXmh_6yara_x5types4funcNtB2_13MangledFnName9method_of: argument 0"}
!10224 = distinct !{!10224, !"_RNvMNtNtCs7gfv9tzbXmh_6yara_x5types4funcNtB2_13MangledFnName9method_of"}
!10225 = !{!10226, !10228, !10223}
!10226 = distinct !{!10226, !10227, !"_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs7gfv9tzbXmh_6yara_x: argument 0"}
!10227 = distinct !{!10227, !"_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs7gfv9tzbXmh_6yara_x"}
!10228 = distinct !{!10228, !10227, !"_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs7gfv9tzbXmh_6yara_x: argument 1"}
!10229 = !{!10230}
!10230 = distinct !{!10230, !10231, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtNtCs7gfv9tzbXmh_6yara_x5types4func13FuncSignatureEE3newB13_: argument 0"}
!10231 = distinct !{!10231, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtNtCs7gfv9tzbXmh_6yara_x5types4func13FuncSignatureEE3newB13_"}
!10232 = !{!10233}
!10233 = distinct !{!10233, !10234, !"_RNvXs6_NtNtCs7gfv9tzbXmh_6yara_x5types4funcNtB5_13FuncSignatureINtNtCskKLDkoKarTP_4core7convert4FromReE4fromB9_: argument 0"}
!10234 = distinct !{!10234, !"_RNvXs6_NtNtCs7gfv9tzbXmh_6yara_x5types4funcNtB5_13FuncSignatureINtNtCskKLDkoKarTP_4core7convert4FromReE4fromB9_"}
!10235 = !{!10233, !10236}
!10236 = distinct !{!10236, !10234, !"_RNvXs6_NtNtCs7gfv9tzbXmh_6yara_x5types4funcNtB5_13FuncSignatureINtNtCskKLDkoKarTP_4core7convert4FromReE4fromB9_: argument 1"}
!10237 = !{!10238, !10240, !10241, !10243, !10244, !10246, !10233, !10236}
!10238 = distinct !{!10238, !10239, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x: argument 0"}
!10239 = distinct !{!10239, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x"}
!10240 = distinct !{!10240, !10239, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x: argument 1"}
!10241 = distinct !{!10241, !10242, !"_RNvXsK_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringINtNtCskKLDkoKarTP_4core7convert4FromReE4from: argument 0"}
!10242 = distinct !{!10242, !"_RNvXsK_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringINtNtCskKLDkoKarTP_4core7convert4FromReE4from"}
!10243 = distinct !{!10243, !10242, !"_RNvXsK_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringINtNtCskKLDkoKarTP_4core7convert4FromReE4from: argument 1"}
!10244 = distinct !{!10244, !10245, !"_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoNtNtCsexYYUdYSQU6_5alloc6string6StringE4intoCs7gfv9tzbXmh_6yara_x: argument 0"}
!10245 = distinct !{!10245, !"_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoNtNtCsexYYUdYSQU6_5alloc6string6StringE4intoCs7gfv9tzbXmh_6yara_x"}
!10246 = distinct !{!10246, !10245, !"_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoNtNtCsexYYUdYSQU6_5alloc6string6StringE4intoCs7gfv9tzbXmh_6yara_x: argument 1"}
!10247 = !{!10238, !10241, !10244, !10233}
!10248 = !{!10249}
!10249 = distinct !{!10249, !10250, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTReNtNtCs7gfv9tzbXmh_6yara_x5types9TypeValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB13_: argument 1"}
!10250 = distinct !{!10250, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTReNtNtCs7gfv9tzbXmh_6yara_x5types9TypeValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB13_"}
!10251 = !{!10252, !10233, !10236}
!10252 = distinct !{!10252, !10250, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTReNtNtCs7gfv9tzbXmh_6yara_x5types9TypeValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB13_: argument 0"}
!10253 = !{!10249, !10233, !10236}
!10254 = !{!10255}
!10255 = distinct !{!10255, !10256, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCs7gfv9tzbXmh_6yara_x5types9TypeValueEE8push_mutB15_: argument 0"}
!10256 = distinct !{!10256, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCs7gfv9tzbXmh_6yara_x5types9TypeValueEE8push_mutB15_"}
!10257 = !{!10258, !10233, !10236}
!10258 = distinct !{!10258, !10256, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCs7gfv9tzbXmh_6yara_x5types9TypeValueEE8push_mutB15_: argument 1"}
!10259 = !{!10260}
!10260 = distinct !{!10260, !10250, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTReNtNtCs7gfv9tzbXmh_6yara_x5types9TypeValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB13_: argument 1:h.rot"}
!10261 = !{!10236}
!10262 = !{!10263}
!10263 = distinct !{!10263, !10264, !"_RNvMNtNtCs7gfv9tzbXmh_6yara_x5types4funcNtB2_13MangledFnName9method_of: argument 0"}
!10264 = distinct !{!10264, !"_RNvMNtNtCs7gfv9tzbXmh_6yara_x5types4funcNtB2_13MangledFnName9method_of"}
!10265 = !{!10266, !10268, !10263}
!10266 = distinct !{!10266, !10267, !"_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs7gfv9tzbXmh_6yara_x: argument 0"}
!10267 = distinct !{!10267, !"_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs7gfv9tzbXmh_6yara_x"}
!10268 = distinct !{!10268, !10267, !"_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECs7gfv9tzbXmh_6yara_x: argument 1"}
!10269 = !{!10270}
!10270 = distinct !{!10270, !10271, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtNtCs7gfv9tzbXmh_6yara_x5types4func13FuncSignatureEE3newB13_: argument 0"}
!10271 = distinct !{!10271, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtNtCs7gfv9tzbXmh_6yara_x5types4func13FuncSignatureEE3newB13_"}
!10272 = !{!10273}
!10273 = distinct !{!10273, !10274, !"_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE4iterB1Y_: argument 1"}
!10274 = distinct !{!10274, !"_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE4iterB1Y_"}
!10275 = !{!10276}
!10276 = distinct !{!10276, !10274, !"_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE4iterB1Y_: argument 0"}
!10277 = !{!10278, !10276, !10273}
!10278 = distinct !{!10278, !10279, !"_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE12slice_rangesNtNtNtB1p_3ops5range9RangeFullEB1Z_: argument 0"}
!10279 = distinct !{!10279, !"_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE12slice_rangesNtNtNtB1p_3ops5range9RangeFullEB1Z_"}
!10280 = !{i64 -2, i64 -9223372036854775804}
!10281 = !{!10282}
!10282 = distinct !{!10282, !10283, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 1"}
!10283 = distinct !{!10283, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_E6tripleCs7gfv9tzbXmh_6yara_x"}
!10284 = !{!10285}
!10285 = distinct !{!10285, !10283, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 0"}
!10286 = !{!10287}
!10287 = distinct !{!10287, !10288, !"_RINvXsu_Cs6ObhOmryMwL_8smallvecINtB6_8SmallVecAhj4_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorhE9from_iterINtNtNtBV_8adapters6cloned6ClonedINtNtNtBX_5slice4iter4IterhEEECs7gfv9tzbXmh_6yara_x: argument 0"}
!10288 = distinct !{!10288, !"_RINvXsu_Cs6ObhOmryMwL_8smallvecINtB6_8SmallVecAhj4_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorhE9from_iterINtNtNtBV_8adapters6cloned6ClonedINtNtNtBX_5slice4iter4IterhEEECs7gfv9tzbXmh_6yara_x"}
!10289 = !{!10290}
!10290 = distinct !{!10290, !10291, !"_RNvXsO_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs7gfv9tzbXmh_6yara_x: argument 0"}
!10291 = distinct !{!10291, !"_RNvXsO_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs7gfv9tzbXmh_6yara_x"}
!10292 = !{!10293}
!10293 = distinct !{!10293, !10291, !"_RNvXsO_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs7gfv9tzbXmh_6yara_x: argument 1"}
!10294 = !{!10290, !10293}
!10295 = !{!10296, !10298, !10300, !10302}
!10296 = distinct !{!10296, !10297, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types8HeapTypeECs7gfv9tzbXmh_6yara_x: argument 0"}
!10297 = distinct !{!10297, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types8HeapTypeECs7gfv9tzbXmh_6yara_x"}
!10298 = distinct !{!10298, !10299, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7RefTypeECs7gfv9tzbXmh_6yara_x: argument 0"}
!10299 = distinct !{!10299, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7RefTypeECs7gfv9tzbXmh_6yara_x"}
!10300 = distinct !{!10300, !10301, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeECs7gfv9tzbXmh_6yara_x: argument 0"}
!10301 = distinct !{!10301, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeECs7gfv9tzbXmh_6yara_x"}
!10302 = distinct !{!10302, !10303, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x: argument 0"}
!10303 = distinct !{!10303, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x"}
!10304 = !{!10305}
!10305 = distinct !{!10305, !10306, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 1"}
!10306 = distinct !{!10306, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x"}
!10307 = !{!10308}
!10308 = distinct !{!10308, !10306, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 0"}
!10309 = !{!10310}
!10310 = distinct !{!10310, !10311, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 1"}
!10311 = distinct !{!10311, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_E6tripleCs7gfv9tzbXmh_6yara_x"}
!10312 = !{!10313}
!10313 = distinct !{!10313, !10311, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 0"}
!10314 = !{!10315}
!10315 = distinct !{!10315, !10316, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 1"}
!10316 = distinct !{!10316, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_E6tripleCs7gfv9tzbXmh_6yara_x"}
!10317 = !{!10318}
!10318 = distinct !{!10318, !10316, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 0"}
!10319 = !{!10320}
!10320 = distinct !{!10320, !10321, !"_RNvXs5_NtNtCs7gfv9tzbXmh_6yara_x5types9structureNtB5_17DeprecationNoticeNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 1"}
!10321 = distinct !{!10321, !"_RNvXs5_NtNtCs7gfv9tzbXmh_6yara_x5types9structureNtB5_17DeprecationNoticeNtNtCskKLDkoKarTP_4core5clone5Clone5clone"}
!10322 = !{!10323, !10320}
!10323 = distinct !{!10323, !10321, !"_RNvXs5_NtNtCs7gfv9tzbXmh_6yara_x5types9structureNtB5_17DeprecationNoticeNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 0"}
!10324 = !{!10323}
!10325 = !{!10326}
!10326 = distinct !{!10326, !10327, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs7gfv9tzbXmh_6yara_x5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2i_13SliceContains14slice_contains0EBU_: argument 1"}
!10327 = distinct !{!10327, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs7gfv9tzbXmh_6yara_x5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2i_13SliceContains14slice_contains0EBU_"}
!10328 = !{!10329}
!10329 = distinct !{!10329, !10327, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs7gfv9tzbXmh_6yara_x5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2i_13SliceContains14slice_contains0EBU_: argument 0"}
!10330 = !{!10329, !10326}
!10331 = !{!10332}
!10332 = distinct !{!10332, !10333, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtCs7gfv9tzbXmh_6yara_x5types4TypeBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2n_13SliceContains14slice_contains0EBV_: argument 1"}
!10333 = distinct !{!10333, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtCs7gfv9tzbXmh_6yara_x5types4TypeBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2n_13SliceContains14slice_contains0EBV_"}
!10334 = !{!10335}
!10335 = distinct !{!10335, !10333, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtCs7gfv9tzbXmh_6yara_x5types4TypeBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2n_13SliceContains14slice_contains0EBV_: argument 0"}
!10336 = !{!10335, !10332}
!10337 = !{!10338}
!10338 = distinct !{!10338, !10339, !"_RNvXs3_NtCsg2CeFYmfPbl_8protobuf7specialNtB5_13SpecialFieldsNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 0"}
!10339 = distinct !{!10339, !"_RNvXs3_NtCsg2CeFYmfPbl_8protobuf7specialNtB5_13SpecialFieldsNtNtCskKLDkoKarTP_4core5clone5Clone5clone"}
!10340 = !{!10341, !10338}
!10341 = distinct !{!10341, !10342, !"_RNvXNtNtCskKLDkoKarTP_4core5clone6uninitINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB6_4hash18BuildHasherDefaultNtNtNtBL_4hash6random13DefaultHasherEENtB2_8CopySpec9clone_oneCs7gfv9tzbXmh_6yara_x: argument 0"}
!10342 = distinct !{!10342, !"_RNvXNtNtCskKLDkoKarTP_4core5clone6uninitINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB6_4hash18BuildHasherDefaultNtNtNtBL_4hash6random13DefaultHasherEENtB2_8CopySpec9clone_oneCs7gfv9tzbXmh_6yara_x"}
!10343 = !{!10344}
!10344 = distinct !{!10344, !10345, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 1"}
!10345 = distinct !{!10345, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_E6tripleCs7gfv9tzbXmh_6yara_x"}
!10346 = !{!10347}
!10347 = distinct !{!10347, !10345, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 0"}
!10348 = !{!10349}
!10349 = distinct !{!10349, !10350, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_6string9LowercaseINtB2g_14FixedLenStringKj20_EEEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10350 = distinct !{!10350, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_6string9LowercaseINtB2g_14FixedLenStringKj20_EEEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10351 = !{!10352}
!10352 = distinct !{!10352, !10353, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_6string9LowercaseINtB2g_14FixedLenStringKj28_EEEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10353 = distinct !{!10353, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_6string9LowercaseINtB2g_14FixedLenStringKj28_EEEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10354 = !{!10355}
!10355 = distinct !{!10355, !10356, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_6string9LowercaseINtB2g_14FixedLenStringKj40_EEEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10356 = distinct !{!10356, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_6string9LowercaseINtB2g_14FixedLenStringKj40_EEEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10357 = !{!10358}
!10358 = distinct !{!10358, !10359, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_6string9UppercaseINtB2g_14FixedLenStringKj48_EEEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10359 = distinct !{!10359, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_6string9UppercaseINtB2g_14FixedLenStringKj48_EEEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10360 = !{!10361}
!10361 = distinct !{!10361, !10362, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionNtNtBM_6string13RuntimeStringEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10362 = distinct !{!10362, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionNtNtBM_6string13RuntimeStringEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10363 = !{!10364}
!10364 = distinct !{!10364, !10365, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionbEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10365 = distinct !{!10365, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionbEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10366 = !{!10367}
!10367 = distinct !{!10367, !10368, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionxEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10368 = distinct !{!10368, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionxEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10369 = !{!10370}
!10370 = distinct !{!10370, !10371, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn0bENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10371 = distinct !{!10371, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn0bENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10372 = !{!10373}
!10373 = distinct !{!10373, !10374, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types: argument 0"}
!10374 = distinct !{!10374, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types"}
!10375 = !{!10376}
!10376 = distinct !{!10376, !10377, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn0uENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10377 = distinct !{!10377, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn0uENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10378 = !{!10379}
!10379 = distinct !{!10379, !10380, !"_RNvXsd_NtCs7gfv9tzbXmh_6yara_x4wasmuNtB5_10WasmResult5types: argument 0"}
!10380 = distinct !{!10380, !"_RNvXsd_NtCs7gfv9tzbXmh_6yara_x4wasmuNtB5_10WasmResult5types"}
!10381 = !{!10382}
!10382 = distinct !{!10382, !10383, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1INtNtB4_2rc2RcNtNtNtBO_5types3map3MapExENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10383 = distinct !{!10383, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1INtNtB4_2rc2RcNtNtNtBO_5types3map3MapExENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10384 = !{!10385}
!10385 = distinct !{!10385, !10386, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types: argument 0"}
!10386 = distinct !{!10386, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types"}
!10387 = !{!10388}
!10388 = distinct !{!10388, !10389, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1INtNtB4_2rc2RcNtNtNtBO_5types5array5ArrayExENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10389 = distinct !{!10389, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1INtNtB4_2rc2RcNtNtNtBO_5types5array5ArrayExENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10390 = !{!10391}
!10391 = distinct !{!10391, !10392, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types: argument 0"}
!10392 = distinct !{!10392, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types"}
!10393 = !{!10394}
!10394 = distinct !{!10394, !10395, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1INtNtB4_2rc2RcNtNtNtBO_5types9structure6StructEbENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10395 = distinct !{!10395, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1INtNtB4_2rc2RcNtNtNtBO_5types9structure6StructEbENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10396 = !{!10397}
!10397 = distinct !{!10397, !10398, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types: argument 0"}
!10398 = distinct !{!10398, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types"}
!10399 = !{!10400}
!10400 = distinct !{!10400, !10401, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBM_6string13RuntimeStringINtB1D_9UppercaseB1B_EENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10401 = distinct !{!10401, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBM_6string13RuntimeStringINtB1D_9UppercaseB1B_EENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10402 = !{!10403}
!10403 = distinct !{!10403, !10404, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBM_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptionINtB1D_9LowercaseINtB1D_14FixedLenStringKj20_EEEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10404 = distinct !{!10404, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBM_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptionINtB1D_9LowercaseINtB1D_14FixedLenStringKj20_EEEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10405 = !{!10406}
!10406 = distinct !{!10406, !10407, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBM_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptionINtB1D_9LowercaseINtB1D_14FixedLenStringKj28_EEEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10407 = distinct !{!10407, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBM_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptionINtB1D_9LowercaseINtB1D_14FixedLenStringKj28_EEEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10408 = !{!10409}
!10409 = distinct !{!10409, !10410, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBM_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptionINtB1D_9LowercaseINtB1D_14FixedLenStringKj40_EEEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10410 = distinct !{!10410, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBM_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptionINtB1D_9LowercaseINtB1D_14FixedLenStringKj40_EEEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10411 = !{!10412}
!10412 = distinct !{!10412, !10413, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBM_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptionbEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10413 = distinct !{!10413, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBM_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptionbEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10414 = !{!10415}
!10415 = distinct !{!10415, !10416, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBM_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptiondEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10416 = distinct !{!10416, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBM_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptiondEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10417 = !{!10418}
!10418 = distinct !{!10418, !10419, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBM_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptionxEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10419 = distinct !{!10419, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBM_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptionxEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10420 = !{!10421}
!10421 = distinct !{!10421, !10422, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBM_6string13RuntimeStringbENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10422 = distinct !{!10422, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBM_6string13RuntimeStringbENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10423 = !{!10424}
!10424 = distinct !{!10424, !10425, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types: argument 0"}
!10425 = distinct !{!10425, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types"}
!10426 = !{!10427}
!10427 = distinct !{!10427, !10428, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBM_6string13RuntimeStringxENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10428 = distinct !{!10428, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBM_6string13RuntimeStringxENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10429 = !{!10430}
!10430 = distinct !{!10430, !10431, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types: argument 0"}
!10431 = distinct !{!10431, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types"}
!10432 = !{!10433}
!10433 = distinct !{!10433, !10434, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBO_8compiler6RuleIduENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10434 = distinct !{!10434, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBO_8compiler6RuleIduENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10435 = !{!10436}
!10436 = distinct !{!10436, !10437, !"_RNvXsd_NtCs7gfv9tzbXmh_6yara_x4wasmuNtB5_10WasmResult5types: argument 0"}
!10437 = distinct !{!10437, !"_RNvXsd_NtCs7gfv9tzbXmh_6yara_x4wasmuNtB5_10WasmResult5types"}
!10438 = !{!10439}
!10439 = distinct !{!10439, !10440, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBO_8compiler7RegexIdINtNtCskKLDkoKarTP_4core6option6OptionbEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10440 = distinct !{!10440, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBO_8compiler7RegexIdINtNtCskKLDkoKarTP_4core6option6OptionbEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10441 = !{!10442}
!10442 = distinct !{!10442, !10443, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBO_8compiler7RegexIdINtNtCskKLDkoKarTP_4core6option6OptionxEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10443 = distinct !{!10443, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBO_8compiler7RegexIdINtNtCskKLDkoKarTP_4core6option6OptionxEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10444 = !{!10445}
!10445 = distinct !{!10445, !10446, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBO_8compiler7RegexIdxENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10446 = distinct !{!10446, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBO_8compiler7RegexIdxENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10447 = !{!10448}
!10448 = distinct !{!10448, !10449, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types: argument 0"}
!10449 = distinct !{!10449, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types"}
!10450 = !{!10451}
!10451 = distinct !{!10451, !10452, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBO_8compiler9PatternIdxENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10452 = distinct !{!10452, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1NtNtBO_8compiler9PatternIdxENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10453 = !{!10454}
!10454 = distinct !{!10454, !10455, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types: argument 0"}
!10455 = distinct !{!10455, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types"}
!10456 = !{!10457}
!10457 = distinct !{!10457, !10458, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1bbENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10458 = distinct !{!10458, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1bbENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10459 = !{!10460}
!10460 = distinct !{!10460, !10461, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types: argument 0"}
!10461 = distinct !{!10461, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types"}
!10462 = !{!10463}
!10463 = distinct !{!10463, !10464, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1bxENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10464 = distinct !{!10464, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1bxENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10465 = !{!10466}
!10466 = distinct !{!10466, !10467, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types: argument 0"}
!10467 = distinct !{!10467, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types"}
!10468 = !{!10469}
!10469 = distinct !{!10469, !10470, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1dbENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10470 = distinct !{!10470, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1dbENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10471 = !{!10472}
!10472 = distinct !{!10472, !10473, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types: argument 0"}
!10473 = distinct !{!10473, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types"}
!10474 = !{!10475}
!10475 = distinct !{!10475, !10476, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1xINtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_7integer13RangedIntegerKx0_Kxff_EEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10476 = distinct !{!10476, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1xINtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_7integer13RangedIntegerKx0_Kxff_EEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10477 = !{!10478}
!10478 = distinct !{!10478, !10479, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1xINtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_7integer13RangedIntegerKx0_Kxffff_EEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10479 = distinct !{!10479, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1xINtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_7integer13RangedIntegerKx0_Kxffff_EEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10480 = !{!10481}
!10481 = distinct !{!10481, !10482, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1xINtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_7integer13RangedIntegerKx0_Kxffffffff_EEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10482 = distinct !{!10482, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1xINtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_7integer13RangedIntegerKx0_Kxffffffff_EEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10483 = !{!10484}
!10484 = distinct !{!10484, !10485, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1xINtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_7integer13RangedIntegerKxn80000000_Kx7fffffff_EEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10485 = distinct !{!10485, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1xINtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_7integer13RangedIntegerKxn80000000_Kx7fffffff_EEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10486 = !{!10487}
!10487 = distinct !{!10487, !10488, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1xINtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_7integer13RangedIntegerKxn8000_Kx7fff_EEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10488 = distinct !{!10488, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1xINtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_7integer13RangedIntegerKxn8000_Kx7fff_EEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10489 = !{!10490}
!10490 = distinct !{!10490, !10491, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1xINtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_7integer13RangedIntegerKxn80_Kx7f_EEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10491 = distinct !{!10491, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1xINtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_7integer13RangedIntegerKxn80_Kx7f_EEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10492 = !{!10493}
!10493 = distinct !{!10493, !10494, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1xINtNtCskKLDkoKarTP_4core6option6OptionNtNtBM_6string13RuntimeStringEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10494 = distinct !{!10494, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn1xINtNtCskKLDkoKarTP_4core6option6OptionNtNtBM_6string13RuntimeStringEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
end_hunk_1
