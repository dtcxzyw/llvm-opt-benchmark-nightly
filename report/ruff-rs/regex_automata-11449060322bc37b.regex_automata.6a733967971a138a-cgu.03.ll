Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_automata-11449060322bc37b.regex_automata.6a733967971a138a-cgu.03?download=true
inline.NumInlined: 528
inline.NumDeleted: 241
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1y_:bb.a
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.012.i, i64 %i.cv ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i, i64 4 ; 2 uses
  %.sroa.017.0.val.i = load i32, ptr %.sroa.017.09.i, align 4, !alias.scope !542, !noundef !3 ; 2 uses
  %.sroa.015.0.val.i = load i32, ptr %.sroa.015.010.i, align 4, !alias.scope !542, !noundef !3 ; 2 uses
  %i.cy = icmp ult i32 %.sroa.017.0.val.i, %.sroa.015.0.val.i ; 2 uses
  %i.cz = xor i1 %i.cy, true
  %i.da = tail call i32 @llvm.umax.i32(i32 %.sroa.017.0.val.i, i32 %.sroa.015.0.val.i)
  store i32 %i.da, ptr %.sroa.019.08.i, align 4, !noalias !549
  %.neg.i.i = sext i1 %i.cz to i64
  %i.db = getelementptr [4 x i8], ptr %.sroa.017.09.i, i64 %.neg.i.i ; 2 uses
  %.neg15.i.i = sext i1 %i.cy to i64
  %i.dc = getelementptr [4 x i8], ptr %.sroa.015.010.i, i64 %.neg15.i.i ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.019.08.i, i64 -4
  %exitcond.not.i = icmp eq i64 %i.cp, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.de = icmp ult ptr %i.cw, %i.cl               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.de, ptr %i.cw, ptr %i.cu
  %i.df = load i32, ptr %.sroa.06.0..sroa.011.0.i, align 4, !alias.scope !542
  store i32 %i.df, ptr %i.cx, align 4, !noalias !542
  %i.dg = zext i1 %i.de to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.dg
  %i.di = xor i1 %i.de, true
  %i.dj = zext i1 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.dj
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.cu, %._crit_edge.i ], [ %i.dk, %bb.j ]
  %.sroa.06.1.i = phi ptr [ %i.cw, %._crit_edge.i ], [ %i.dh, %bb.j ]
  %i.dl = icmp ne ptr %.sroa.06.1.i, %i.cl
  %i.dm = icmp ne ptr %.sroa.011.1.i, %i.cm
  %or.cond.i = select i1 %i.dl, i1 true, i1 %i.dm, !prof !409
  br i1 %or.cond.i, label %bb.l, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1m_.exit, !prof !409

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #26
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = shl nuw nsw i64 %1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %2, i64 %i.do, i1 false), !noalias !553
  resume { ptr, i32 } %i.dn

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1m_.exit: ; preds = %bb.k, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit
  %.sroa.05.056 = phi i64 [ %i.dy, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit ], [ %.sroa.0.0, %bb.i ] ; 4 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.05.056
  %.idx = shl nuw nsw i64 %.sroa.05.056, 2
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %i.dr = load i32, ptr %i.dp, align 4            ; 4 uses
  store i32 %i.dr, ptr %i.dq, align 4
  %i.ds = getelementptr inbounds i8, ptr %i.dq, i64 -4 ; 2 uses
  %.val10.i = load i32, ptr %i.ds, align 4, !noundef !3 ; 2 uses
  %i.dt = icmp ult i32 %i.dr, %.val10.i
  br i1 %i.dt, label %.preheader.preheader, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit

.preheader.preheader:                             ; preds = %.lr.ph
  store i32 %.val10.i, ptr %i.dq, align 4
  %i.du = icmp eq i64 %.sroa.05.056, 1
  br i1 %i.du, label %._crit_edge, label %.lr.ph78

.preheader:                                       ; preds = %.lr.ph78
  store i32 %.val8.i48, ptr %.sroa.0.0.i4777, align 4
  %i.dv = icmp eq ptr %i.dw, %2
  br i1 %i.dv, label %._crit_edge, label %.lr.ph78

.lr.ph78:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i4777 = phi ptr [ %i.dw, %.preheader ], [ %i.ds, %.preheader.preheader ] ; 3 uses
  %i.dw = getelementptr inbounds i8, ptr %.sroa.0.0.i4777, i64 -4 ; 3 uses
  %.val8.i48 = load i32, ptr %i.dw, align 4, !noundef !3 ; 2 uses
  %i.dx = icmp ult i32 %i.dr, %.val8.i48
  br i1 %i.dx, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %.lr.ph78, %.preheader.preheader
  %.sroa.0.0.i47.lcssa = phi ptr [ %2, %.preheader.preheader ], [ %2, %.preheader ], [ %.sroa.0.0.i4777, %.lr.ph78 ]
  store i32 %i.dr, ptr %.sroa.0.0.i47.lcssa, align 4, !noalias !537
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit: ; preds = %._crit_edge, %.lr.ph
  %i.dy = add nuw nsw i64 %.sroa.05.056, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.dy, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler14build_from_hir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  call void @_RINvMs1_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB6_8Compiler19build_many_from_hirRNtNtCs79ICTHwG85D_12regex_syntax3hir3HirEBc_(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([448 x i8]) align 8 captures(none) dereferenceable(448) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [160 x i8], align 8               ; 4 uses
  %i.c = alloca [168 x i8], align 8               ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [120 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %.sroa.544.0..sroa_idx, align 8
  %.sroa.645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.645.0..sroa_idx, align 8
  %.sroa.746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.948.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.746.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.948.0..sroa_idx, align 8
  %.sroa.1049.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.1251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1049.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.1251.0..sroa_idx, align 8
  %.sroa.1352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store i64 0, ptr %.sroa.1352.0..sroa_idx, align 8
  %.sroa.1453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i32 0, ptr %.sroa.1453.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store i64 0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i8 0, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 113
  store i8 0, ptr %.sroa.18.0..sroa_idx, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 114
  store i8 10, ptr %.sroa.19.0..sroa_idx, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3mapNtB2_14Utf8BoundedMap3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(64) %i.d, i64 noundef 10000)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.e ], [ %i.g, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder7BuilderEEB14_(ptr noalias noundef align 8 dereferenceable(120) %i.f) #23
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 0, ptr %i.h, align 8, !alias.scope !558
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !558
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !558
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  store i64 0, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB2_9RangeTrie3new(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.b)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.h, %bb.f
  %.pn = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.j, %bb.f ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compiler9Utf8StateEEB14_(ptr noalias noundef align 8 dereferenceable(72) %i.e) #23
          to label %bb.b unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.k, ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 160, i1 false)
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3mapNtB4_13Utf8SuffixMap3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, i64 noundef 1000)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie9RangeTrieEEB14_(ptr noalias noundef align 8 dereferenceable(168) %i.c) #23
          to label %bb.e unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.411.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 721141097979576833, ptr %i.m, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 250, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %.sroa.520.0..sroa_idx, align 4
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 0, ptr %.sroa.621.0..sroa_idx, align 1
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i8 0, ptr %.sroa.722.0..sroa_idx, align 2
  store i64 2, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store <4 x i8> <i8 2, i8 2, i8 2, i8 -1>, ptr %.sroa.7.0..sroa_idx, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.n, ptr noundef nonnull align 8 dereferenceable(120) %i.f, i64 120, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.p, ptr noundef nonnull align 8 dereferenceable(168) %i.c, i64 168, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.j:                                             ; preds = %bb.h, %bb.e, %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.k:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.b, align 8
  call void @_RINvMs1_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB6_8Compiler10build_manyReEBc_(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef nonnull align 8 ptr @_RNvMs1_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler6syntax(ptr noalias nofree noundef returned writeonly align 8 captures(ret: address, provenance) dereferenceable(448) initializes((24, 38)) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !range !33, !alias.scope !561, !noalias !564, !noundef !3
  %..i = shl nuw nsw i8 %i.c, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %..i, ptr %i.e, align 1, !alias.scope !564, !noalias !561
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.g = load i8, ptr %i.f, align 1, !range !33, !alias.scope !561, !noalias !564, !noundef !3
  %.sroa.01.0.i = sub nuw nsw i8 2, %i.g
  store i8 %.sroa.01.0.i, ptr %i.d, align 1, !alias.scope !564, !noalias !561
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.i = load i8, ptr %i.h, align 2, !range !33, !alias.scope !561, !noalias !564, !noundef !3
  %.sroa.02.0.i = sub nuw nsw i8 2, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %.sroa.02.0.i, ptr %i.j, align 2, !alias.scope !564, !noalias !561
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.l = load i8, ptr %i.k, align 1, !range !33, !alias.scope !561, !noalias !564, !noundef !3
  %.sroa.03.0.i = sub nuw nsw i8 2, %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %.sroa.03.0.i, ptr %i.m, align 1, !alias.scope !564, !noalias !561
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i8, ptr %i.n, align 4, !range !33, !alias.scope !561, !noalias !564, !noundef !3
  %.sroa.04.0.i = sub nuw nsw i8 2, %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %.sroa.04.0.i, ptr %i.p, align 2, !alias.scope !564, !noalias !561
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i8, ptr %i.q, align 4, !alias.scope !561, !noalias !564, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %i.r, ptr %i.s, align 1, !alias.scope !564, !noalias !561
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.u = load i8, ptr %i.t, align 1, !range !33, !alias.scope !561, !noalias !564, !noundef !3
  %.sroa.05.0.i = sub nuw nsw i8 2, %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %.sroa.05.0.i, ptr %i.v, align 4, !alias.scope !564, !noalias !561
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.x = load i8, ptr %i.w, align 2, !range !33, !alias.scope !561, !noalias !564, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.x, ptr %i.z, align 4, !alias.scope !564, !noalias !561
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ab = load i8, ptr %i.aa, align 4, !range !33, !alias.scope !561, !noalias !564, !noundef !3
  store i8 %i.ab, ptr %i.a, align 8, !alias.scope !564, !noalias !561
  %i.ac = load i32, ptr %1, align 4, !alias.scope !561, !noalias !564, !noundef !3
  store i32 %i.ac, ptr %i.y, align 8, !alias.scope !564, !noalias !561
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.ae = load i8, ptr %i.ad, align 1, !range !33, !alias.scope !561, !noalias !564, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 %i.ae, ptr %i.af, align 1, !alias.scope !564, !noalias !561
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef nonnull align 8 ptr @_RNvMs1_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler9configure(ptr noalias nofree noundef returned align 8 captures(ret: address, provenance) dereferenceable(448) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !37, !alias.scope !569, !noalias !571, !noundef !3 ; 2 uses
  %i.d = load i64, ptr %0, align 8, !range !37, !alias.scope !566, !noalias !573, !noundef !3
  %.not9.i = icmp eq i64 %i.c, 2                  ; 2 uses
  %spec.select.i = select i1 %.not9.i, ptr %0, ptr %1
  %spec.select12.i = select i1 %.not9.i, i64 %i.d, i64 %i.c
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !574, !noalias !575
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !33, !alias.scope !569, !noalias !571, !noundef !3
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !569, !noalias !571
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val.i = load i8, ptr %i.j, align 8, !alias.scope !566, !noalias !573 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %.val13.i = load i8, ptr %i.k, align 1, !alias.scope !566, !noalias !573
  %i.l = trunc nuw i8 %.val.i to i1
  %.sroa.3.0.i.i.i = select i1 %i.l, i8 %.val13.i, i8 undef
  %i.m = select i1 %i.g, i8 %i.i, i8 %.sroa.3.0.i.i.i
  %i.n = and i8 %.val.i, 1
  %i.o = select i1 %i.g, i8 1, i8 %i.n
  store i64 %spec.select12.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.o, ptr %i.j, align 8
  store i8 %i.m, ptr %i.k, align 1
  %i.p = load <4 x i8>, ptr %i.a, align 2, !alias.scope !569, !noalias !571 ; 2 uses
  %i.q = load <4 x i8>, ptr %i.b, align 2, !alias.scope !566, !noalias !573
  %i.r = icmp eq <4 x i8> %i.p, <i8 2, i8 2, i8 2, i8 -1>
  %i.s = select <4 x i1> %i.r, <4 x i8> %i.q, <4 x i8> %i.p
  store <4 x i8> %i.s, ptr %i.b, align 2
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler10c_at_least(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, i1 noundef zeroext %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [128 x i8], align 8               ; 6 uses
  %i.k = alloca [128 x i8], align 8               ; 6 uses
  %i.l = alloca [128 x i8], align 8               ; 6 uses
  %i.m = alloca [128 x i8], align 8               ; 8 uses
  %i.n = alloca [128 x i8], align 8               ; 8 uses
  %i.o = alloca [128 x i8], align 8               ; 8 uses
  %i.p = alloca [128 x i8], align 8               ; 6 uses
  %i.q = alloca [128 x i8], align 8               ; 6 uses
  %i.r = alloca [128 x i8], align 8               ; 8 uses
  %i.s = alloca [128 x i8], align 8               ; 8 uses
  %i.t = alloca [128 x i8], align 8               ; 6 uses
  %i.u = alloca [128 x i8], align 8               ; 6 uses
  %i.v = alloca [128 x i8], align 8               ; 6 uses
  %i.w = alloca [128 x i8], align 8               ; 7 uses
  %i.x = alloca [128 x i8], align 8               ; 8 uses
  %i.y = alloca [128 x i8], align 8               ; 6 uses
  %i.z = alloca [128 x i8], align 8               ; 6 uses
  %i.aa = alloca [128 x i8], align 8              ; 8 uses
  %i.ab = alloca [128 x i8], align 8              ; 8 uses
  %i.ac = alloca [128 x i8], align 8              ; 6 uses
  %i.ad = alloca [128 x i8], align 8              ; 6 uses
  %i.ae = alloca [128 x i8], align 8              ; 8 uses
  %i.af = alloca [128 x i8], align 8              ; 8 uses
  switch i32 %4, label %bb.bm [
    i32 0, label %bb.b
    i32 1, label %bb.bl
  ]

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !range !263, !noundef !3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = trunc nuw i64 %i.ai to i1
  %i.am = icmp ne i64 %i.ak, 0
  %spec.select.i = select i1 %i.al, i1 %i.am, i1 false
  br i1 %spec.select.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler1c:bb.a
  %.not89.i.i = icmp eq i8 %i.uv, -1
  br i1 %.not89.i.i, label %bb.hi, label %switch.lookup.i.i

switch.lookup.i.i:                                ; preds = %bb.hh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !871
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.s, ptr noundef nonnull align 1 dereferenceable(9) %i.t, i64 9, i1 false), !noalias !871
  %i.uw = load i8, ptr %i.s, align 1, !range !867, !noalias !871, !noundef !3
  %i.ux = shl nuw nsw i8 %i.uw, 1
  %i.uy = zext nneg i8 %i.ux to i64
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uk, i64 %i.uy
  br label %.lr.ph.i.i

bb.hi:                                            ; preds = %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !871
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax4utf813Utf8SequencesECs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(24) %i.u)
          to label %bb.hj unwind label %.loopexit14.i.i, !noalias !872

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !871
  %i.va = icmp eq ptr %i.up, %i.ui
  br i1 %i.va, label %._crit_edge44.i.i, label %bb.he

.lr.ph.i.i:                                       ; preds = %.backedge.i.i, %switch.lookup.i.i
  %.sroa.017.040.i.i = phi ptr [ %i.vb, %.backedge.i.i ], [ %i.uk, %switch.lookup.i.i ] ; 4 uses
  %.sroa.026.039.i.i = phi i32 [ %.sroa.026.0.be.i.i, %.backedge.i.i ], [ %i.uh, %switch.lookup.i.i ] ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.017.040.i.i, i64 2
  %i.vc = load i8, ptr %.sroa.017.040.i.i, align 1, !noalias !871, !noundef !3 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.017.040.i.i, i64 1
  %i.ve = load i8, ptr %i.vd, align 1, !noalias !871, !noundef !3 ; 2 uses
  %i.vf = load i64, ptr %i.ul, align 8, !noalias !871, !noundef !3 ; 3 uses
  %i.vg = icmp ult i64 %i.vf, 576460752303423488
  call void @llvm.assume(i1 %i.vg)
  %i.vh = icmp eq i64 %i.vf, 0
  br i1 %i.vh, label %bb.hq, label %bb.hm

._crit_edge.i.i:                                  ; preds = %.backedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !871
  %i.vi = load i64, ptr %i.tk, align 8, !noalias !879, !noundef !3
  %i.vj = icmp eq i64 %i.vi, 0
  br i1 %i.vj, label %bb.hk, label %.invoke82.i.i, !prof !26

bb.hk:                                            ; preds = %._crit_edge.i.i
  store i64 -1, ptr %i.tk, align 8, !noalias !879
  invoke void @_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder5patch(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.tn, i32 noundef %i.ty, i32 noundef %.sroa.026.0.be.i.i)
          to label %bb.ii unwind label %bb.hl, !noalias !872

.invoke82.i.i:                                    ; preds = %._crit_edge.i.i, %bb.hx, %bb.ht
  %i.vk = phi ptr [ @34, %bb.ht ], [ @29, %bb.hx ], [ @29, %._crit_edge.i.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vk) #26
          to label %.cont83.i.i unwind label %.loopexit.split-lp.i.i, !noalias !872

.cont83.i.i:                                      ; preds = %.invoke82.i.i
  unreachable

bb.hl:                                            ; preds = %bb.hk
  %i.vl = landingpad { ptr, i32 }
          cleanup
  %i.vm = load i64, ptr %i.tk, align 8, !noalias !879, !noundef !3
  %i.vn = add i64 %i.vm, 1
  store i64 %i.vn, ptr %i.tk, align 8, !noalias !879
  br label %.body100.i.i

bb.hm:                                            ; preds = %.lr.ph.i.i
  %i.vo = zext i32 %.sroa.026.039.i.i to i64      ; 2 uses
  %i.vp = xor i64 %i.vo, -3750763034362895579
  %i.vq = mul i64 %i.vp, 1099511628211
  %i.vr = zext i8 %i.vc to i64                    ; 2 uses
  %i.vs = xor i64 %i.vq, %i.vr
  %i.vt = mul i64 %i.vs, 1099511628211
  %i.vu = zext i8 %i.ve to i64                    ; 2 uses
  %i.vv = xor i64 %i.vt, %i.vu
  %i.vw = mul i64 %i.vv, 1099511628211
  %i.vx = urem i64 %i.vw, %i.vf                   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %i.vy = load ptr, ptr %i.um, align 8, !alias.scope !882, !noalias !885, !nonnull !3, !noundef !3
  %i.vz = getelementptr inbounds nuw [16 x i8], ptr %i.vy, i64 %i.vx ; 5 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 12
  %i.wb = load i16, ptr %i.wa, align 4, !noalias !887, !noundef !3
  %i.wc = load i16, ptr %i.un, align 8, !alias.scope !882, !noalias !885, !noundef !3
  %.not.i.i.i16 = icmp eq i16 %i.wb, %i.wc
  br i1 %.not.i.i.i16, label %bb.hn, label %bb.ht

bb.hn:                                            ; preds = %bb.hm
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vz, i64 4
  %i.we = load i8, ptr %i.wd, align 4, !noalias !887, !noundef !3
  %i.wf = icmp eq i8 %i.vc, %i.we
  br i1 %i.wf, label %bb.ho, label %bb.ht

bb.ho:                                            ; preds = %bb.hn
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vz, i64 5
  %i.wh = load i8, ptr %i.wg, align 1, !noalias !887, !noundef !3
  %i.wi = icmp eq i8 %i.ve, %i.wh
  br i1 %i.wi, label %bb.hp, label %bb.ht

bb.hp:                                            ; preds = %bb.ho
  %i.wj = load i32, ptr %i.vz, align 4, !noalias !887, !noundef !3
  %.not2.i.i.i = icmp eq i32 %.sroa.026.039.i.i, %i.wj
  br i1 %.not2.i.i.i, label %bb.hs, label %bb.ht

bb.hq:                                            ; preds = %.lr.ph.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #26
          to label %bb.hr unwind label %.loopexit.split-lp.i.i, !noalias !872

bb.hr:                                            ; preds = %bb.ie, %bb.hq
  unreachable

bb.hs:                                            ; preds = %bb.hp
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.wl = load i32, ptr %i.wk, align 4, !noalias !887, !noundef !3
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.id, %bb.hs
  %.sroa.026.0.be.i.i = phi i32 [ %i.wl, %bb.hs ], [ %i.wv, %bb.id ] ; 2 uses
  %i.wm = icmp eq ptr %.sroa.017.040.i.i, %i.uz
  br i1 %i.wm, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.ht:                                            ; preds = %bb.hp, %bb.ho, %bb.hn, %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !888
  %i.wn = load i64, ptr %i.tk, align 8, !noalias !891, !noundef !3
  %i.wo = icmp eq i64 %i.wn, 0
  br i1 %i.wo, label %bb.hu, label %.invoke82.i.i, !prof !26

bb.hu:                                            ; preds = %bb.ht
  store i64 -1, ptr %i.tk, align 8, !noalias !891
  %.sroa.53.0.insert.shift.i.i.i.i = shl nuw nsw i64 %i.vu, 40
  %.sroa.42.0.insert.shift.i.i.i.i = shl nuw nsw i64 %i.vr, 32
  %.sroa.42.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.53.0.insert.shift.i.i.i.i, %.sroa.42.0.insert.shift.i.i.i.i ; 2 uses
  invoke void @_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder9add_range(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.tn, i64 %.sroa.42.0.insert.insert.i.i.i.i)
          to label %_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler9add_range.exit.i.i.i unwind label %bb.hv, !noalias !894

bb.hv:                                            ; preds = %bb.hu
  %i.wp = landingpad { ptr, i32 }
          cleanup
  %i.wq = load i64, ptr %i.tk, align 8, !noalias !891, !noundef !3
  %i.wr = add i64 %i.wq, 1
  store i64 %i.wr, ptr %i.tk, align 8, !noalias !891
  br label %.body100.i.i

_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler9add_range.exit.i.i.i: ; preds = %bb.hu
  %i.ws = load i64, ptr %i.tk, align 8, !noalias !891, !noundef !3
  %i.wt = add i64 %i.ws, 1                        ; 2 uses
  store i64 %i.wt, ptr %i.tk, align 8, !noalias !891
  %i.wu = load i64, ptr %i.o, align 8, !range !53, !noalias !888, !noundef !3 ; 2 uses
  %.not.i103.i.i = icmp eq i64 %i.wu, -2
  %i.wv = load i32, ptr %i.uo, align 8, !noalias !888 ; 4 uses
  br i1 %.not.i103.i.i, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler9add_range.exit.i.i.i
  %.sroa.511.0..sroa_idx.i.i.i17 = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %.sroa.97.12.copyload.i.i = load i32, ptr %.sroa.511.0..sroa_idx.i.i.i17, align 4, !noalias !871
  %.sroa.13.12..sroa.511.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.678.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.678.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.13.12..sroa.511.0..sroa_idx.i.sroa_idx.i.i, i64 112, i1 false), !noalias !858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !888
  store i64 %i.wu, ptr %0, align 8, !alias.scope !872, !noalias !858
  %.sroa.476.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.wv, ptr %.sroa.476.0..sroa_idx.i.i, align 8, !alias.scope !872, !noalias !858
  %.sroa.577.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.97.12.copyload.i.i, ptr %.sroa.577.0..sroa_idx.i.i, align 4, !alias.scope !872, !noalias !858
  br label %bb.if

bb.hx:                                            ; preds = %_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler9add_range.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !888
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !871
  %i.ww = icmp eq i64 %i.wt, 0
  br i1 %i.ww, label %bb.hy, label %.invoke82.i.i, !prof !26

bb.hy:                                            ; preds = %bb.hx
  store i64 -1, ptr %i.tk, align 8, !noalias !895
  invoke void @_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder5patch(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.tn, i32 noundef %i.wv, i32 noundef %.sroa.026.039.i.i)
          to label %bb.ia unwind label %bb.hz, !noalias !872

bb.hz:                                            ; preds = %bb.hy
  %i.wx = landingpad { ptr, i32 }
          cleanup
  %i.wy = load i64, ptr %i.tk, align 8, !noalias !895, !noundef !3
  %i.wz = add i64 %i.wy, 1
  store i64 %i.wz, ptr %i.tk, align 8, !noalias !895
  br label %.body100.i.i

bb.ia:                                            ; preds = %bb.hy
  %i.xa = load i64, ptr %i.tk, align 8, !noalias !895, !noundef !3
  %i.xb = add i64 %i.xa, 1
  store i64 %i.xb, ptr %i.tk, align 8, !noalias !895
  %i.xc = load i64, ptr %i.r, align 8, !range !53, !noalias !871, !noundef !3
  %.not91.i.i.a = icmp eq i64 %i.xc, -2
  br i1 %.not91.i.i.a, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.r, i64 128, i1 false), !noalias !858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !871
  br label %bb.if

bb.ic:                                            ; preds = %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !871
  %i.xd = load i64, ptr %i.ul, align 8, !noalias !871, !noundef !3 ; 2 uses
  %i.xe = icmp ult i64 %i.vx, %i.xd
  br i1 %i.xe, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %3 = load ptr, ptr %i.um, align 8, !noalias !871, !nonnull !3, !noundef !3
  %.sroa.02.0.insert.insert.i.i = or disjoint i64 %.sroa.42.0.insert.insert.i.i.i.i, %i.vo
  %i.xf = load i16, ptr %i.un, align 8, !noalias !871, !noundef !3
  %i.xg = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.vx ; 3 uses
  store i64 %.sroa.02.0.insert.insert.i.i, ptr %i.xg, align 4, !noalias !872
  %.sroa.481.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.xg, i64 8
  store i32 %i.wv, ptr %.sroa.481.0..sroa_idx.i.i, align 4, !noalias !872
  %.sroa.582.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.xg, i64 12
  store i16 %i.xf, ptr %.sroa.582.0..sroa_idx.i.i, align 4, !noalias !872
  br label %.backedge.i.i

bb.ie:                                            ; preds = %bb.ic
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.vx, i64 noundef %i.xd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #26
          to label %bb.hr unwind label %.loopexit.split-lp.i.i, !noalias !872

bb.if:                                            ; preds = %bb.ij, %bb.ib, %bb.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !871
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax4utf811ScalarRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs79ICTHwG85D_12regex_syntax4utf811ScalarRangeEECs98D8VPWzHuM_14regex_automata.exit.i.i.i unwind label %bb.ig, !noalias !872

bb.ig:                                            ; preds = %bb.if
  %i.xh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs79ICTHwG85D_12regex_syntax4utf811ScalarRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.im unwind label %bb.ih, !noalias !872

bb.ih:                                            ; preds = %bb.ig
  %i.xi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24, !noalias !872
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs79ICTHwG85D_12regex_syntax4utf811ScalarRangeEECs98D8VPWzHuM_14regex_automata.exit.i.i.i: ; preds = %bb.if
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs79ICTHwG85D_12regex_syntax4utf811ScalarRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax4utf813Utf8SequencesECs98D8VPWzHuM_14regex_automata.exit.i.i unwind label %.loopexit.split-lp15.i.i, !noalias !872

bb.ii:                                            ; preds = %bb.hk
  %i.xj = load i64, ptr %i.tk, align 8, !noalias !879, !noundef !3
  %i.xk = add i64 %i.xj, 1
  store i64 %i.xk, ptr %i.tk, align 8, !noalias !879
  %i.xl = load i64, ptr %i.q, align 8, !range !53, !noalias !871, !noundef !3
  %.not92.i.i = icmp eq i64 %i.xl, -2
  br i1 %.not92.i.i, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.q, i64 128, i1 false), !noalias !858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !871
  br label %bb.if

bb.ik:                                            ; preds = %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !871
  br label %bb.hg

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax4utf813Utf8SequencesECs98D8VPWzHuM_14regex_automata.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs79ICTHwG85D_12regex_syntax4utf811ScalarRangeEECs98D8VPWzHuM_14regex_automata.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !871
  br label %_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler35c_unicode_class_reverse_with_suffix.exit.i

bb.il:                                            ; preds = %.body100.i.i
  %i.xm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24, !noalias !872
  unreachable

bb.im:                                            ; preds = %bb.ig, %.body100.i.i, %bb.ha, %bb.gv, %.loopexit.split-lp15.i.i, %.loopexit14.i.i
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body101.i.i, %.body100.i.i ], [ %i.tr, %bb.gv ], [ %i.ua, %bb.ha ], [ %i.xh, %bb.ig ], [ %lpad.loopexit16.i.i, %.loopexit14.i.i ], [ %lpad.loopexit.split-lp17.i.i, %.loopexit.split-lp15.i.i ]
  %i.xn = load i64, ptr %i.tg, align 8, !noalias !871, !noundef !3
  %i.xo = add i64 %i.xn, 1
  store i64 %i.xo, ptr %i.tg, align 8, !noalias !871
  br label %common.resume

_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler35c_unicode_class_reverse_with_suffix.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax4utf813Utf8SequencesECs98D8VPWzHuM_14regex_automata.exit.i.i, %._crit_edge44.i.i, %bb.hc, %bb.gx
  %storemerge.in.i.i = load i64, ptr %i.tg, align 8, !noalias !871, !noundef !3
  %storemerge.i.i = add i64 %storemerge.in.i.i, 1
  store i64 %storemerge.i.i, ptr %i.tg, align 8, !noalias !871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !860
  br label %_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler15c_unicode_class.exit

bb.in:                                            ; preds = %bb.fp
  %i.xp = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 8 uses
  %i.xq = load i64, ptr %i.xp, align 8, !noalias !860, !noundef !3
  %i.xr = icmp eq i64 %i.xq, 0
  br i1 %i.xr, label %bb.io, label %bb.ip, !prof !26

bb.io:                                            ; preds = %bb.in
  store i64 -1, ptr %i.xp, align 8, !noalias !860
  %i.xs = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 3 uses
  invoke void @_RNvMNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB2_9RangeTrie5clear(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.xs)
          to label %bb.iq unwind label %.loopexit.split-lp167.i, !noalias !855

bb.ip:                                            ; preds = %bb.in
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #26, !noalias !855
  unreachable

.body148.i:                                       ; preds = %bb.jm, %bb.iy, %bb.iu, %.loopexit.split-lp167.i, %.loopexit166.i
  %.pn114.i = phi { ptr, i32 } [ %i.yj, %bb.iu ], [ %.pn112.i, %bb.jm ], [ %i.yl, %bb.iy ], [ %lpad.loopexit168.i, %.loopexit166.i ], [ %lpad.loopexit.split-lp169.i, %.loopexit.split-lp167.i ]
  %i.xt = load i64, ptr %i.xp, align 8, !noalias !860, !noundef !3
  %i.xu = add i64 %i.xt, 1
  store i64 %i.xu, ptr %i.xp, align 8, !noalias !860
  br label %common.resume

.loopexit166.i:                                   ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs79ICTHwG85D_12regex_syntax4utf811ScalarRangeEECs98D8VPWzHuM_14regex_automata.exit.i147.i, %bb.ir
  %lpad.loopexit168.i = landingpad { ptr, i32 }
          cleanup
  br label %.body148.i

.loopexit.split-lp167.i:                          ; preds = %bb.jc, %bb.io
  %lpad.loopexit.split-lp169.i = landingpad { ptr, i32 }
          cleanup
  br label %.body148.i

bb.iq:                                            ; preds = %bb.io
  %i.xv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.xw = load ptr, ptr %i.xv, align 8, !alias.scope !858, !noalias !855, !nonnull !3, !noundef !3 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.xy = load i64, ptr %i.xx, align 8, !alias.scope !858, !noalias !855, !noundef !3 ; 2 uses
  %.idx199.i = shl nuw nsw i64 %i.xy, 3
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xw, i64 %.idx199.i
  %i.ya = icmp eq i64 %i.xy, 0
  br i1 %i.ya, label %._crit_edge193.i, label %.lr.ph192.i

.lr.ph192.i:                                      ; preds = %bb.iq
  %i.yb = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  br label %bb.ir

bb.ir:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax4utf813Utf8SequencesECs98D8VPWzHuM_14regex_automata.exit151.i, %.lr.ph192.i
  %.sroa.074.0190.i = phi ptr [ %i.xw, %.lr.ph192.i ], [ %i.yc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax4utf813Utf8SequencesECs98D8VPWzHuM_14regex_automata.exit151.i ] ; 3 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.sroa.074.0190.i, i64 8 ; 2 uses
  %i.yd = load i32, ptr %.sroa.074.0190.i, align 4, !range !865, !noalias !855, !noundef !3
  %i.ye = getelementptr inbounds nuw i8, ptr %.sroa.074.0190.i, i64 4
  %i.yf = load i32, ptr %i.ye, align 4, !range !865, !noalias !855, !noundef !3
  invoke void @_RNvMs3_NtCs79ICTHwG85D_12regex_syntax4utf8NtB5_13Utf8Sequences3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ao, i32 noundef %i.yd, i32 noundef %i.yf)
          to label %bb.is unwind label %.loopexit166.i, !noalias !855

._crit_edge193.i:                                 ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax4utf813Utf8SequencesECs98D8VPWzHuM_14regex_automata.exit151.i, %bb.iq
  %i.yg = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.yh = load i64, ptr %i.yg, align 8, !noalias !860, !noundef !3
  %i.yi = icmp eq i64 %i.yh, 0
  br i1 %i.yi, label %bb.jb, label %bb.jc, !prof !26

bb.is:                                            ; preds = %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !noalias !860
  br label %bb.it

bb.it:                                            ; preds = %bb.ja, %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !860
  invoke void @_RNvXs5_NtCs79ICTHwG85D_12regex_syntax4utf8NtB5_13Utf8SequencesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([9 x i8]) align 1 captures(none) dereferenceable(9) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.iv unwind label %bb.iu, !noalias !855

bb.iu:                                            ; preds = %switch.lookup241.i, %bb.iw, %bb.it
  %i.yj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax4utf813Utf8SequencesECs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(24) %i.an) #23
          to label %.body148.i unwind label %bb.gk, !noalias !855

bb.iv:                                            ; preds = %bb.it
  %i.yk = load i8, ptr %i.am, align 1, !range !866, !noalias !860, !noundef !3
  %.not109.i = icmp eq i8 %i.yk, -1
  br i1 %.not109.i, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.al, ptr noundef nonnull align 1 dereferenceable(9) %i.am, i64 9, i1 false), !noalias !860
  invoke void @_RNvMNtCs79ICTHwG85D_12regex_syntax4utf8NtB2_12Utf8Sequence7reverse(ptr noalias noundef nonnull dereferenceable(9) %i.al)
          to label %switch.lookup241.i unwind label %bb.iu, !noalias !855

bb.ix:                                            ; preds = %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !860
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax4utf811ScalarRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs79ICTHwG85D_12regex_syntax4utf811ScalarRangeEECs98D8VPWzHuM_14regex_automata.exit.i147.i unwind label %bb.iy, !noalias !855

bb.iy:                                            ; preds = %bb.ix
  %i.yl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs79ICTHwG85D_12regex_syntax4utf811ScalarRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body148.i unwind label %bb.iz, !noalias !855

bb.iz:                                            ; preds = %bb.iy
  %i.ym = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24, !noalias !855
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs79ICTHwG85D_12regex_syntax4utf811ScalarRangeEECs98D8VPWzHuM_14regex_automata.exit.i147.i: ; preds = %bb.ix
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs79ICTHwG85D_12regex_syntax4utf811ScalarRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax4utf813Utf8SequencesECs98D8VPWzHuM_14regex_automata.exit151.i unwind label %.loopexit166.i, !noalias !855

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax4utf813Utf8SequencesECs98D8VPWzHuM_14regex_automata.exit151.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs79ICTHwG85D_12regex_syntax4utf811ScalarRangeEECs98D8VPWzHuM_14regex_automata.exit.i147.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !860
  %i.yn = icmp eq ptr %i.yc, %i.xz
  br i1 %i.yn, label %._crit_edge193.i, label %bb.ir

switch.lookup241.i:                               ; preds = %bb.iw
  %i.yo = load i8, ptr %i.al, align 1, !range !867, !noalias !860, !noundef !3
  %narrow244.i = add nuw nsw i8 %i.yo, 1
  %switch.offset243.i = zext nneg i8 %narrow244.i to i64
  invoke void @_RNvMNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB2_9RangeTrie6insert(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.xs, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.yb, i64 noundef %switch.offset243.i)
          to label %bb.ja unwind label %bb.iu, !noalias !855

bb.ja:                                            ; preds = %switch.lookup241.i
end_hunk_1
