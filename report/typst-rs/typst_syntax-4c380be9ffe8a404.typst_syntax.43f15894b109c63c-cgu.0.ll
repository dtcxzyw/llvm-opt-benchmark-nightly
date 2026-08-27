Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_syntax-4c380be9ffe8a404.typst_syntax.43f15894b109c63c-cgu.0?download=true
inline.NumInlined: 3813
inline.NumDeleted: 1552
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0E0B1G_:bb.a
  %i.b = sub nsw i64 0, %2
  %i.c = getelementptr inbounds [128 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -128
  %.val = load i64, ptr %i.d, align 8, !alias.scope !1488, !noalias !1491, !noundef !4
  %i.e = mul i64 %.val, -1065810590584100411      ; 2 uses
  %i.f = tail call noundef i64 @llvm.fshl.i64(i64 %i.e, i64 %i.e, i64 26)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB7_5Lexer10blocky_raws1_0B9_(ptr nofree captures(none) %.0.val, ptr nofree captures(none) %.8.val, i8 noundef range(i8 6, 19) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [15 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = load i64, ptr %.8.val, align 8, !noundef !4
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val1, i64 %i.d) ; 2 uses
  %i.f = icmp eq i64 %..i.i, 0
  br i1 %i.f, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.sroa.0.01.i = phi i64 [ %i.j, %bb.c ], [ %..i.i, %bb.a ] ; 5 uses
  %.not.i = icmp ult i64 %.sroa.0.01.i, %.val1
  br i1 %.not.i, label %bb.b, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.01.i
  %i.h = load i8, ptr %i.g, align 1, !noundef !4
  %i.i = icmp sgt i8 %i.h, -65
  br i1 %i.i, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.sroa.0.01.i, -1                ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit, label %.lr.ph.i

_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit: ; preds = %.lr.ph.i, %bb.b, %bb.c, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %.sroa.0.01.i, %.lr.ph.i ], [ 0, %bb.c ], [ %.sroa.0.01.i, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 4 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 %.sroa.0.0.lcssa.i) ; 2 uses
  %i.n = sub nuw i64 %i.m, %..i                   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 %..i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = icmp samesign ugt i64 %i.n, 15
  br i1 %i.p, label %.lr.ph.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, i8 0, i64 15, i1 false), !noalias !1494
  %.not.i.i.not = icmp ugt i64 %i.m, %.sroa.0.0.lcssa.i
  br i1 %.not.i.i.not, label %.lr.ph.preheader.i.i, label %bb.g

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull readonly align 1 %i.o, i64 range(i64 0, -9223372036854775808) %i.n, i1 false), !noalias !1498
  %.0..0..0..sroa.0.0.copyload1.pre = load ptr, ptr %i.b, align 8, !noalias !1499
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.8..8..8..sroa.52.0.copyload4.pre = load i56, ptr %.8..8..8..sroa_idx, align 8, !noalias !1499
  %i.q = zext i56 %.8..8..8..sroa.52.0.copyload4.pre to i64
  br label %bb.g

.lr.ph.i.i.i:                                     ; preds = %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1500
  store ptr inttoptr (i64 16 to ptr), ptr %i.a, align 8, !noalias !1500
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 0, ptr %i.r, align 8, !noalias !1500
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.n)
          to label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i unwind label %bb.e, !noalias !1500

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.val.i.i = load ptr, ptr %i.a, align 8, !noalias !1500, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs5PEMdK7bMAG_12typst_syntax(ptr nonnull %.val.i.i) #59
          to label %common.resume unwind label %bb.f, !noalias !1500

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !1500
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.ab, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %.lr.ph.i.i.i
  %i.u = load ptr, ptr %i.a, align 8, !alias.scope !1503, !noalias !1506, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !1503, !noalias !1506 ; 2 uses
  %scevgep.i.i.i = getelementptr nuw i8, ptr %i.u, i64 %.promoted.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %scevgep.i.i.i, ptr nonnull readonly align 1 %i.o, i64 range(i64 0, -9223372036854775808) %i.n, i1 false), !noalias !1508
  %i.v = add i64 %.promoted.i.i.i, %i.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1500
  br label %_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice.exit

bb.g:                                             ; preds = %.lr.ph.preheader.i.i, %bb.d
  %.8..8..sroa.52.0.copyload4 = phi i64 [ %i.q, %.lr.ph.preheader.i.i ], [ 0, %bb.d ]
  %.0..0..sroa.0.0.copyload1 = phi ptr [ %.0..0..0..sroa.0.0.copyload1.pre, %.lr.ph.preheader.i.i ], [ null, %bb.d ]
  %.sroa.52.15.insert.ext = shl nuw nsw i64 %i.n, 56
  %.sroa.52.15.insert.shift = or disjoint i64 %.sroa.52.15.insert.ext, %.8..8..sroa.52.0.copyload4
  %.sroa.52.15.insert.insert = or disjoint i64 %.sroa.52.15.insert.shift, -9223372036854775808
  br label %_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice.exit

_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice.exit: ; preds = %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i, %bb.g
  %.sroa.52.0 = phi i64 [ %i.v, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i ], [ %.sroa.52.15.insert.insert, %bb.g ]
  %.sroa.0.0 = phi ptr [ %i.u, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i ], [ %.0..0..sroa.0.0.copyload1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %0, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.0.0, ptr %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.52.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %i.w, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !1509, !noalias !1512, !noundef !4 ; 3 uses
  %i.z = load i64, ptr %.0.val, align 8, !range !833, !alias.scope !1509, !noalias !1512, !noundef !4
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.h, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE8push_mutBJ_.exit

bb.h:                                             ; preds = %_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice.exit
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE8push_mutBJ_.exit unwind label %bb.i, !noalias !1512

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.c) #59
          to label %common.resume unwind label %bb.j, !noalias !1509

bb.j:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !1514
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE8push_mutBJ_.exit: ; preds = %_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice.exit, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !1509, !noalias !1512, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !1509
  %i.ag = add i64 %i.y, 1
  store i64 %i.ag, ptr %i.x, align 8, !alias.scope !1509, !noalias !1512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.m, ptr %.8.val, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i64 281474976710656, 0) i64 @_RNCNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode17synthesize_mapped0B8_(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load i16, ptr %.0.val, align 2, !range !1515, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = add i64 %1, %0                           ; 7 uses
  %i.c = getelementptr i8, ptr %.8.val, i64 8
  %.val = load ptr, ptr %i.c, align 8             ; 12 uses
  %i.d = getelementptr i8, ptr %.8.val, i64 16
  %.val1 = load i64, ptr %i.d, align 8            ; 19 uses
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %.val1, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %1, 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  br i1 %i.f, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  br label %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper3map.exit

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @408) #62
  unreachable

bb.f:                                             ; preds = %bb.c
  switch i64 %.val1, label %.lr.ph.i.i.i.i [
    i64 0, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.thread.i.i
    i64 1, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i.i
  ]

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sroa.01.019.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i ], [ %.val1, %bb.f ] ; 2 uses
  %.sroa.05.018.i.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.i = lshr i64 %.sroa.01.019.i.i.i.i, 1        ; 2 uses
  %i.j = add nuw i64 %i.i, %.sroa.05.018.i.i.i.i  ; 3 uses
  %i.k = icmp ult i64 %i.j, %.val1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.j
  %.val12.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !1516, !noalias !1521, !noundef !4
  %.not.i16.i.i.i.i = icmp ugt i64 %.val12.i.i.i.i, %0
  %i.m = select i1 %.not.i16.i.i.i.i, i64 %.sroa.05.018.i.i.i.i, i64 %i.j, !unpredictable !4 ; 2 uses
  %i.n = sub i64 %.sroa.01.019.i.i.i.i, %i.i      ; 2 uses
  %i.o = icmp ugt i64 %i.n, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.f ], [ %i.m, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.05.0.lcssa.i.i.i.i
  %.val14.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !1516, !noalias !1521, !noundef !4
  %.not.i.i.i.i.i = icmp ule i64 %.val14.i.i.i.i, %0
  %i.q = zext i1 %.not.i.i.i.i.i to i64
  %i.r = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ule i64 %i.r, %.val1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add nsw i64 %i.r, -1                     ; 3 uses
  %i.u = icmp ult i64 %i.t, %.val1
  br i1 %i.u, label %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.thread.i.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.thread.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i.i, %bb.f
  %.sroa.4.0.i.i2.i.i = phi i64 [ %i.t, %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i.i ], [ -1, %bb.f ]
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.4.0.i.i2.i.i, i64 noundef %.val1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @410) #62
  unreachable

_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i.i
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.t ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !4
  %i.x = sub i64 %0, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noundef !4
  %i.aa = add i64 %i.x, %i.z
  %cond.i = icmp eq i64 %.val1, 1
  br i1 %cond.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i.i, label %.lr.ph.i.i.i11.i

.lr.ph.i.i.i11.i:                                 ; preds = %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i, %.lr.ph.i.i.i11.i
  %.sroa.01.018.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i11.i ], [ %.val1, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i ] ; 2 uses
  %.sroa.05.017.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i11.i ], [ 0, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i ] ; 2 uses
  %i.ab = lshr i64 %.sroa.01.018.i.i.i.i, 1       ; 2 uses
  %i.ac = add nuw i64 %i.ab, %.sroa.05.017.i.i.i.i ; 3 uses
  %i.ad = icmp ult i64 %i.ac, %.val1
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.ac
  %.val12.i.i.i12.i = load i64, ptr %i.ae, align 8, !alias.scope !1524, !noalias !1529, !noundef !4
  %.not.i.i.i.i = icmp ult i64 %.val12.i.i.i12.i, %i.b
  %i.af = select i1 %.not.i.i.i.i, i64 %i.ac, i64 %.sroa.05.017.i.i.i.i, !unpredictable !4 ; 2 uses
  %i.ag = sub i64 %.sroa.01.018.i.i.i.i, %i.ab    ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, 1
  br i1 %i.ah, label %.lr.ph.i.i.i11.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i.i: ; preds = %.lr.ph.i.i.i11.i, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i
  %.sroa.05.0.lcssa.i.i.i8.i = phi i64 [ 0, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i ], [ %i.af, %.lr.ph.i.i.i11.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.05.0.lcssa.i.i.i8.i
  %.val14.i.i.i9.i = load i64, ptr %i.ai, align 8, !alias.scope !1524, !noalias !1529, !noundef !4
  %i.aj = icmp ult i64 %.val14.i.i.i9.i, %i.b
  %i.ak = zext i1 %i.aj to i64
  %i.al = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i8.i, %i.ak ; 2 uses
  %i.am = icmp ule i64 %i.al, %.val1
  tail call void @llvm.assume(i1 %i.am)
  %i.an = add nsw i64 %i.al, -1                   ; 3 uses
  %i.ao = icmp ult i64 %i.an, %.val1
  br i1 %i.ao, label %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.thread.i.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.thread.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef %.val1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @409) #62
  unreachable

_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i.i
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.an ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !4
  %i.ar = sub i64 %i.b, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4
  %i.au = add i64 %i.ar, %i.at
  br label %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper3map.exit

bb.g:                                             ; preds = %bb.c
  switch i64 %.val1, label %.lr.ph.i.i.i18.i [
    i64 0, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.thread.i16.i
    i64 1, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i13.i
  ]

.lr.ph.i.i.i18.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i18.i
  %.sroa.01.018.i.i.i19.i = phi i64 [ %i.ba, %.lr.ph.i.i.i18.i ], [ %.val1, %bb.g ] ; 2 uses
  %.sroa.05.017.i.i.i20.i = phi i64 [ %i.az, %.lr.ph.i.i.i18.i ], [ 0, %bb.g ] ; 2 uses
  %i.av = lshr i64 %.sroa.01.018.i.i.i19.i, 1     ; 2 uses
  %i.aw = add nuw i64 %i.av, %.sroa.05.017.i.i.i20.i ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %.val1
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.aw
  %.val12.i.i.i21.i = load i64, ptr %i.ay, align 8, !alias.scope !1532, !noalias !1537, !noundef !4
  %.not.i.i.i22.i = icmp ult i64 %.val12.i.i.i21.i, %i.b
  %i.az = select i1 %.not.i.i.i22.i, i64 %i.aw, i64 %.sroa.05.017.i.i.i20.i, !unpredictable !4 ; 2 uses
  %i.ba = sub i64 %.sroa.01.018.i.i.i19.i, %i.av  ; 2 uses
  %i.bb = icmp ugt i64 %i.ba, 1
  br i1 %i.bb, label %.lr.ph.i.i.i18.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i13.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i13.i: ; preds = %.lr.ph.i.i.i18.i, %bb.g
  %.sroa.05.0.lcssa.i.i.i14.i = phi i64 [ 0, %bb.g ], [ %i.az, %.lr.ph.i.i.i18.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.05.0.lcssa.i.i.i14.i
  %.val14.i.i.i15.i = load i64, ptr %i.bc, align 8, !alias.scope !1532, !noalias !1537, !noundef !4
  %i.bd = icmp ult i64 %.val14.i.i.i15.i, %i.b
  %i.be = zext i1 %i.bd to i64
  %i.bf = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i14.i, %i.be ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %.val1
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = add nsw i64 %i.bf, -1                   ; 3 uses
  %i.bi = icmp ult i64 %i.bh, %.val1
  br i1 %i.bi, label %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit23.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.thread.i16.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.thread.i16.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i13.i, %bb.g
  %.sroa.4.0.i.i2.i17.i = phi i64 [ %i.bh, %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i13.i ], [ -1, %bb.g ]
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.4.0.i.i2.i17.i, i64 noundef %.val1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @409) #62
  unreachable

_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit23.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i13.i
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.bh ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !4
  %i.bl = sub i64 %i.b, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !4
  %i.bo = add i64 %i.bl, %i.bn                    ; 2 uses
  br label %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper3map.exit

_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper3map.exit: ; preds = %bb.d, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit.i, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit23.i
  %.sroa.4.0.i = phi i64 [ %i.h, %bb.d ], [ %i.bo, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit23.i ], [ %i.au, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit.i ]
  %.sroa.0.0.i = phi i64 [ %i.h, %bb.d ], [ %i.bo, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit23.i ], [ %i.aa, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit.i ]
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 8388607)
  %spec.store.select1.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i, i64 8388607)
  %i.bp = shl nuw nsw i64 %spec.store.select.i, 23
  %i.bq = or disjoint i64 %i.bp, %spec.store.select1.i
  %i.br = zext i16 %i.a to i64
  %i.bs = shl nuw i64 %i.br, 48
  %i.bt = or disjoint i64 %i.bq, %i.bs
  %i.bu = or disjoint i64 %i.bt, 211106232532992
  ret i64 %i.bu
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode17synthesize_mappeds_0B8_(ptr nofree readonly captures(none) %.0.val, i64 noundef %0, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %1, align 4, !noundef !4   ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = load i32, ptr %i.b, align 4, !noundef !4
  %i.d = getelementptr i8, ptr %.0.val, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 9 uses
  %i.e = getelementptr i8, ptr %.0.val, i64 16
  %.val1 = load i64, ptr %i.e, align 8, !noundef !4 ; 17 uses
  %i.f = zext i32 %i.c to i64
  %i.g = add i64 %0, %i.f                         ; 3 uses
  %i.h = zext i32 %i.a to i64
  %i.i = add i64 %0, %i.h                         ; 3 uses
  switch i64 %.val1, label %.lr.ph.i.i.i.i [
    i64 0, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.thread.i.i
    i64 1, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i.i
  ]

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.sroa.01.019.i.i.i.i = phi i64 [ %i.o, %.lr.ph.i.i.i.i ], [ %.val1, %bb.b ] ; 2 uses
  %.sroa.05.018.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.j = lshr i64 %.sroa.01.019.i.i.i.i, 1        ; 2 uses
  %i.k = add nuw i64 %i.j, %.sroa.05.018.i.i.i.i  ; 3 uses
  %i.l = icmp ult i64 %i.k, %.val1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.k
  %.val12.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !1540, !noalias !1545, !noundef !4
  %.not.i16.i.i.i.i = icmp ugt i64 %.val12.i.i.i.i, %0
  %i.n = select i1 %.not.i16.i.i.i.i, i64 %.sroa.05.018.i.i.i.i, i64 %i.k, !unpredictable !4 ; 2 uses
  %i.o = sub i64 %.sroa.01.019.i.i.i.i, %i.j      ; 2 uses
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.b
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.n, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.05.0.lcssa.i.i.i.i
  %.val14.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !1540, !noalias !1545, !noundef !4
  %.not.i.i.i.i.i = icmp ule i64 %.val14.i.i.i.i, %0
  %i.r = zext i1 %.not.i.i.i.i.i to i64
  %i.s = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i.i, %i.r ; 2 uses
  %i.t = icmp ule i64 %i.s, %.val1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = add nsw i64 %i.s, -1                     ; 3 uses
  %i.v = icmp ult i64 %i.u, %.val1
  br i1 %i.v, label %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.thread.i.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.thread.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i.i, %bb.b
  %.sroa.4.0.i.i2.i.i = phi i64 [ %i.u, %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i.i ], [ -1, %bb.b ]
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.4.0.i.i2.i.i, i64 noundef %.val1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @410) #62
  unreachable

_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i.i
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.u ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noundef !4
  %i.aa = add i64 %0, %i.z
  %.neg10.i = sub i64 %i.x, %i.aa                 ; 2 uses
  %cond.i = icmp eq i64 %.val1, 1                 ; 2 uses
  br i1 %cond.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i8.i, label %.lr.ph.i.i.i14.i

.lr.ph.i.i.i14.i:                                 ; preds = %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i, %.lr.ph.i.i.i14.i
  %.sroa.01.019.i.i.i15.i = phi i64 [ %i.ag, %.lr.ph.i.i.i14.i ], [ %.val1, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i ] ; 2 uses
  %.sroa.05.018.i.i.i16.i = phi i64 [ %i.af, %.lr.ph.i.i.i14.i ], [ 0, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i ] ; 2 uses
  %i.ab = lshr i64 %.sroa.01.019.i.i.i15.i, 1     ; 2 uses
  %i.ac = add nuw i64 %i.ab, %.sroa.05.018.i.i.i16.i ; 3 uses
  %i.ad = icmp ult i64 %i.ac, %.val1
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.ac
  %.val12.i.i.i17.i = load i64, ptr %i.ae, align 8, !alias.scope !1548, !noalias !1553, !noundef !4
  %.not.i16.i.i.i18.i = icmp ugt i64 %.val12.i.i.i17.i, %i.g
  %i.af = select i1 %.not.i16.i.i.i18.i, i64 %.sroa.05.018.i.i.i16.i, i64 %i.ac, !unpredictable !4 ; 2 uses
  %i.ag = sub i64 %.sroa.01.019.i.i.i15.i, %i.ab  ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, 1
  br i1 %i.ah, label %.lr.ph.i.i.i14.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i8.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i8.i: ; preds = %.lr.ph.i.i.i14.i, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i
  %.sroa.05.0.lcssa.i.i.i9.i = phi i64 [ 0, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i ], [ %i.af, %.lr.ph.i.i.i14.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.05.0.lcssa.i.i.i9.i
  %.val14.i.i.i10.i = load i64, ptr %i.ai, align 8, !alias.scope !1548, !noalias !1553, !noundef !4
  %.not.i.i.i.i11.i = icmp ule i64 %.val14.i.i.i10.i, %i.g
  %i.aj = zext i1 %.not.i.i.i.i11.i to i64
  %i.ak = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i9.i, %i.aj ; 2 uses
  %i.al = icmp ule i64 %i.ak, %.val1
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nsw i64 %i.ak, -1                   ; 3 uses
  %i.an = icmp ult i64 %i.am, %.val1
  br i1 %i.an, label %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit19.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.thread.i12.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.thread.i12.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i8.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.am, i64 noundef %.val1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @410) #62
  unreachable

_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit19.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i8.i
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.am ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4
  br i1 %cond.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i.i, label %.lr.ph.i.i.i23.i

.lr.ph.i.i.i23.i:                                 ; preds = %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit19.i, %.lr.ph.i.i.i23.i
  %.sroa.01.018.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i23.i ], [ %.val1, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit19.i ] ; 2 uses
  %.sroa.05.017.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i.i23.i ], [ 0, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit19.i ] ; 2 uses
  %i.as = lshr i64 %.sroa.01.018.i.i.i.i, 1       ; 2 uses
  %i.at = add nuw i64 %i.as, %.sroa.05.017.i.i.i.i ; 3 uses
  %i.au = icmp ult i64 %i.at, %.val1
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.at
  %.val12.i.i.i24.i = load i64, ptr %i.av, align 8, !alias.scope !1556, !noalias !1561, !noundef !4
  %.not.i.i.i.i = icmp ult i64 %.val12.i.i.i24.i, %i.i
  %i.aw = select i1 %.not.i.i.i.i, i64 %i.at, i64 %.sroa.05.017.i.i.i.i, !unpredictable !4 ; 2 uses
  %i.ax = sub i64 %.sroa.01.018.i.i.i.i, %i.as    ; 2 uses
  %i.ay = icmp ugt i64 %i.ax, 1
  br i1 %i.ay, label %.lr.ph.i.i.i23.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i.i: ; preds = %.lr.ph.i.i.i23.i, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit19.i
  %.sroa.05.0.lcssa.i.i.i20.i = phi i64 [ 0, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit19.i ], [ %i.aw, %.lr.ph.i.i.i23.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.05.0.lcssa.i.i.i20.i
  %.val14.i.i.i21.i = load i64, ptr %i.az, align 8, !alias.scope !1556, !noalias !1561, !noundef !4
  %i.ba = icmp ult i64 %.val14.i.i.i21.i, %i.i
  %i.bb = zext i1 %i.ba to i64
  %i.bc = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i20.i, %i.bb ; 2 uses
  %i.bd = icmp ule i64 %i.bc, %.val1
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = add nsw i64 %i.bc, -1                   ; 3 uses
  %i.bf = icmp ult i64 %i.be, %.val1
  br i1 %i.bf, label %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.thread.i.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.thread.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.be, i64 noundef %.val1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @409) #62
  unreachable

_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i.i
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.be ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !4
  %.neg4.i = add i64 %.neg10.i, %i.g
  %i.bk = sub i64 %.neg4.i, %i.ap
  %i.bl = add i64 %i.bk, %i.ar                    ; 2 uses
  %.neg6.i = add i64 %.neg10.i, %i.i
  %i.bm = sub i64 %.neg6.i, %i.bh
  %i.bn = add i64 %i.bm, %i.bj                    ; 2 uses
  %.not.i = icmp ult i64 %i.bl, %i.bn
  br i1 %.not.i, label %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper13map_sub_range.exit, label %bb.c, !prof !55

bb.c:                                             ; preds = %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #62
  unreachable

_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper13map_sub_range.exit: ; preds = %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit.i
  %.sroa.04.07.i.i = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 4294967295)
  %.sroa.04.0.i.i = trunc nuw i64 %.sroa.04.07.i.i to i32
  %.sroa.03.06.i.i = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 4294967295)
  %.sroa.03.0.i.i = trunc nuw i64 %.sroa.03.06.i.i to i32
  store i32 %.sroa.04.0.i.i, ptr %1, align 4
  store i32 %.sroa.03.0.i.i, ptr %i.b, align 4
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper13map_sub_range.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvXsa_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB7_14PackageVersionNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str0B9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  store ptr %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 5, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 65 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !range !17, !alias.scope !1564, !noundef !4
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5PEMdK7bMAG_12typst_syntax.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val.i = load ptr, ptr %i.l, align 8, !alias.scope !1564, !nonnull !4, !noundef !4 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %.val1.i = load i64, ptr %i.m, align 8, !alias.scope !1564, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1567)
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !1570, !noalias !1571, !noundef !4 ; 6 uses
  %.not.i.i = icmp ugt i64 %i.p, %.val1.i
  %.promoted.i.i = load i64, ptr %i.n, align 8, !alias.scope !1570, !noalias !1571 ; 2 uses
  %i.q = icmp ult i64 %i.p, %.promoted.i.i
  %or.cond27.i.i = or i1 %.not.i.i, %i.q
  br i1 %or.cond27.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %i.t = load i8, ptr %i.s, align 8, !alias.scope !1570, !noalias !1571, !noundef !4 ; 2 uses
  %i.u = zext nneg i8 %i.t to i64                 ; 4 uses
  %i.v = icmp ult i8 %i.t, 5
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr i8, ptr %i.r, i64 %i.u
  %i.x = getelementptr i8, ptr %i.w, i64 -1
  %.pre.i.i = load i8, ptr %i.x, align 1, !alias.scope !1570, !noalias !1571 ; 2 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.e, %.lr.ph.split.preheader.i.i
  %i.y = phi i64 [ %i.am, %bb.e ], [ %.promoted.i.i, %.lr.ph.split.preheader.i.i ] ; 4 uses
  %i.z = sub nuw i64 %i.p, %i.y                   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.y ; 2 uses
  %i.ab = icmp samesign ult i64 %i.z, 16
  br i1 %i.ab, label %.preheader.i.i.i, label %bb.c

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.p, %i.y
  br i1 %.not.i.i.i, label %.loopexit15.i.i, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i
  %i.ac = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef range(i64 0, -9223372036854775808) %i.z), !noalias !1573 ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ac, 0
  %i.ae = extractvalue { i64, i64 } %i.ac, 1
  %i.af = trunc nuw i64 %i.ad to i1
  br i1 %i.af, label %.loopexit.i.i, label %.loopexit15.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.d
  %.sroa.04.011.i.i.i = phi i64 [ %i.aj, %bb.d ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.04.011.i.i.i
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !1574, !noalias !1573, !noundef !4
  %i.ai = icmp eq i8 %i.ah, %.pre.i.i
  br i1 %i.ai, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = add nuw nsw i64 %.sroa.04.011.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.aj, %i.z
  br i1 %exitcond.not.i.i.i, label %.loopexit15.i.i, label %.lr.ph.i.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.5.0.i.i.i = phi i64 [ %i.ae, %bb.c ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ak = icmp ult i64 %.sroa.5.0.i.i.i, %i.z
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add i64 %i.y, 1
  %i.am = add i64 %i.al, %.sroa.5.0.i.i.i         ; 7 uses
  store i64 %i.am, ptr %i.n, align 8, !alias.scope !1570, !noalias !1571
  %.not11.i.i = icmp ult i64 %i.am, %i.u
  %.not12.i.i = icmp ugt i64 %i.am, %.val1.i
  %or.cond.i.i = or i1 %.not11.i.i, %.not12.i.i
  br i1 %or.cond.i.i, label %bb.e, label %bb.f

.loopexit15.i.i:                                  ; preds = %bb.c, %.preheader.i.i.i, %bb.d
  store i64 %i.p, ptr %i.n, align 8, !alias.scope !1570, !noalias !1571
  br label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i

bb.e:                                             ; preds = %bb.f, %.loopexit.i.i
  %i.an = icmp ult i64 %i.p, %i.am
  br i1 %i.an, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i, label %.lr.ph.split.i.i

bb.f:                                             ; preds = %.loopexit.i.i
  %i.ao = sub nuw i64 %i.am, %i.u                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ao
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.ap, ptr nonnull %i.r, i64 %i.u), !noalias !1571
  %i.aq = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.aq, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %bb.e

_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i: ; preds = %bb.f
  %i.ar = load i64, ptr %.0.val, align 8, !alias.scope !1564, !noundef !4 ; 2 uses
  %i.as = sub nuw i64 %i.ao, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ar
  store i64 %i.am, ptr %.0.val, align 8, !alias.scope !1564
  br label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5PEMdK7bMAG_12typst_syntax.exit

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %bb.e, %.loopexit15.i.i, %bb.b
  store i8 1, ptr %i.i, align 1, !alias.scope !1577
  %i.au = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %i.av = load i8, ptr %i.au, align 8, !range !17, !alias.scope !1577, !noundef !4
  %i.aw = trunc nuw i8 %i.av to i1
  %.pre.i2.i = load i64, ptr %.0.val, align 8, !alias.scope !1577 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.pre2.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !1577 ; 2 uses
  %.not.i3.i = icmp ne i64 %.pre2.i.i, %.pre.i2.i
  %or.cond.not.i.i = select i1 %i.aw, i1 true, i1 %.not.i3.i ; 2 uses
  %i.ax = sub nuw i64 %.pre2.i.i, %.pre.i2.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.pre.i2.i
  %.sroa.3.0.i.i = select i1 %or.cond.not.i.i, i64 %i.ax, i64 undef
  %.sroa.0.0.i.i = select i1 %or.cond.not.i.i, ptr %i.ay, ptr null
  br label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5PEMdK7bMAG_12typst_syntax.exit

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i
  %.sroa.4.1.i = phi i64 [ %.sroa.3.0.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i ], [ %i.as, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ] ; 4 uses
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i ], [ %i.at, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ] ; 4 uses
  %.not.i = icmp eq ptr %.sroa.0.1.i, null
  %.not5.i = icmp eq i64 %.sroa.4.1.i, 0
  %i.az = select i1 %.not.i, i1 true, i1 %.not5.i
  br i1 %i.az, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5PEMdK7bMAG_12typst_syntax.exit.thread, label %bb.g

bb.g:                                             ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5PEMdK7bMAG_12typst_syntax.exit
  store ptr %.sroa.0.1.i, ptr %i.f, align 8, !captures !886
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.4.1.i, ptr %i.ba, align 8
  %cond = icmp eq i64 %.sroa.4.1.i, 1
  %i.bb = load i8, ptr %.sroa.0.1.i, align 1, !alias.scope !1580 ; 2 uses
  br i1 %cond, label %bb.h, label %thread-pre-split.i

bb.h:                                             ; preds = %bb.g
  switch i8 %i.bb, label %thread-pre-split.i [
    i8 43, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  ]
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode16replace_children:bb.a
  %i.dd = load i8, ptr %i.dc, align 1, !noalias !1862, !noundef !4 ; 2 uses
  %.not.i.i.i.i79.i = icmp sgt i8 %i.dd, -1
  br i1 %.not.i.i.i.i79.i, label %bb.ai, label %bb.aj

bb.af:                                            ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i78.i, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !noalias !1850, !nonnull !4, !noundef !4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  br label %bb.ab

bb.ag:                                            ; preds = %bb.ac
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i78.i, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !noalias !1850, !noundef !4
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i

bb.ah:                                            ; preds = %bb.ac
  %i.dj = and i8 %i.cv, 127
  %i.dk = zext nneg i8 %i.dj to i64
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i

bb.ai:                                            ; preds = %bb.ae
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !1862, !noundef !4
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i

bb.aj:                                            ; preds = %bb.ae
  %i.dn = and i8 %i.dd, 127
  %i.do = zext nneg i8 %i.dn to i64
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.ad
  %.sroa.0.1.i.i.i.i81.i = phi i64 [ %i.di, %bb.ag ], [ %i.cz, %bb.ad ], [ %i.dk, %bb.ah ], [ %i.do, %bb.aj ], [ %i.dm, %bb.ai ]
  %i.dp = add i64 %.sroa.0.1.i.i.i.i81.i, %.sroa.02.0.i77.i ; 2 uses
  %i.dq = add nuw i64 %.sroa.04.0.i76.i, 1        ; 2 uses
  %i.dr = icmp eq i64 %i.dq, %i.cr
  br i1 %i.dr, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit85.i, label %bb.aa

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit85.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i
  %.sroa.0.0.i82.i = phi i64 [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i ], [ %i.dp, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i ]
  %i.ds = add i64 %.sroa.0.0.i.i, %i.bm
  %i.dt = sub i64 %i.ds, %.sroa.0.0.i82.i
  store i64 %i.dt, ptr %i.bl, align 8, !alias.scope !1832, !noalias !1841
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !1832, !noalias !1841, !noundef !4
  br i1 %i.bo, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs0_BS_BQ_11descendantsNCINvXsK_NtB1I_5accumjNtB3C_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i, label %.preheader

.preheader:                                       ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit85.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i
  %.sroa.04.0.i86.i = phi i64 [ %i.eg, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit85.i ] ; 2 uses
  %.sroa.02.0.i87.i = phi i64 [ %i.ef, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit85.i ]
  %i.dw = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %.sroa.04.0.i86.i
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %.preheader
  %.sroa.02.0.i.i.i.i.i = phi ptr [ %i.dw, %.preheader ], [ %i.ee, %bb.am ] ; 3 uses
  %i.dx = load i8, ptr %.sroa.02.0.i.i.i.i.i, align 8, !range !592, !noalias !1850, !noundef !4
  switch i8 %i.dx, label %default.unreachable [
    i8 0, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i
    i8 1, label %bb.al
    i8 2, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i
    i8 3, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !1850, !nonnull !4, !noundef !4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !1869, !noundef !4
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i

bb.am:                                            ; preds = %bb.ak
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !1850, !nonnull !4, !noundef !4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  br label %bb.ak

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i: ; preds = %bb.ak, %bb.ak, %bb.al
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.eb, %bb.al ], [ 1, %bb.ak ], [ 1, %bb.ak ]
  %i.ef = add i64 %.sroa.0.0.i.i.i.i.i, %.sroa.02.0.i87.i ; 2 uses
  %i.eg = add nuw i64 %.sroa.04.0.i86.i, 1        ; 2 uses
  %i.eh = icmp eq i64 %i.eg, %i.bh
  br i1 %i.eh, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs0_BS_BQ_11descendantsNCINvXsK_NtB1I_5accumjNtB3C_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i, label %.preheader

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs0_BS_BQ_11descendantsNCINvXsK_NtB1I_5accumjNtB3C_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit85.i
  %.sroa.0.0.i88.i = phi i64 [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit85.i ], [ %i.ef, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i ]
  br i1 %i.cq, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs0_BS_BQ_11descendantsNCINvXsK_NtB1I_5accumjNtB3C_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit97.i, label %bb.an

bb.an:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs0_BS_BQ_11descendantsNCINvXsK_NtB1I_5accumjNtB3C_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i
  %i.ei = sub nuw nsw i64 %.sroa.4.0.i.lcssa, %.promoted.i
  br label %bb.ao

bb.ao:                                            ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i93.i, %bb.an
  %.sroa.04.0.i90.i = phi i64 [ 0, %bb.an ], [ %i.et, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i93.i ] ; 2 uses
  %.sroa.02.0.i91.i = phi i64 [ 0, %bb.an ], [ %i.es, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i93.i ]
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %.sroa.04.0.i90.i
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %bb.ao
  %.sroa.02.0.i.i.i.i92.i = phi ptr [ %i.ej, %bb.ao ], [ %i.er, %bb.ar ] ; 3 uses
  %i.ek = load i8, ptr %.sroa.02.0.i.i.i.i92.i, align 8, !range !592, !noalias !1850, !noundef !4
  switch i8 %i.ek, label %default.unreachable [
    i8 0, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i93.i
    i8 1, label %bb.aq
    i8 2, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i93.i
    i8 3, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i92.i, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !noalias !1850, !nonnull !4, !noundef !4
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.eo = load i64, ptr %i.en, align 8, !noalias !1876, !noundef !4
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i93.i

bb.ar:                                            ; preds = %bb.ap
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i92.i, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !noalias !1850, !nonnull !4, !noundef !4
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  br label %bb.ap

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i93.i: ; preds = %bb.ap, %bb.ap, %bb.aq
  %.sroa.0.0.i.i.i.i94.i = phi i64 [ %i.eo, %bb.aq ], [ 1, %bb.ap ], [ 1, %bb.ap ]
  %i.es = add i64 %.sroa.0.0.i.i.i.i94.i, %.sroa.02.0.i91.i ; 2 uses
  %i.et = add nuw i64 %.sroa.04.0.i90.i, 1        ; 2 uses
  %i.eu = icmp eq i64 %i.et, %i.ei
  br i1 %i.eu, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs0_BS_BQ_11descendantsNCINvXsK_NtB1I_5accumjNtB3C_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit97.i, label %bb.ao

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs0_BS_BQ_11descendantsNCINvXsK_NtB1I_5accumjNtB3C_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit97.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i93.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs0_BS_BQ_11descendantsNCINvXsK_NtB1I_5accumjNtB3C_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i
  %.sroa.0.0.i95.i = phi i64 [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs0_BS_BQ_11descendantsNCINvXsK_NtB1I_5accumjNtB3C_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i ], [ %i.es, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i93.i ]
  %i.ev = add i64 %.sroa.0.0.i88.i, %i.dv
  %i.ew = sub i64 %i.ev, %.sroa.0.0.i95.i
  store i64 %i.ew, ptr %i.du, align 8, !alias.scope !1832, !noalias !1841
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1883)
  br i1 %i.bo, label %.loopexit224.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs0_BS_BQ_11descendantsNCINvXsK_NtB1I_5accumjNtB3C_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit97.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i
  %.sroa.05.0.i.i.i = phi i64 [ %i.fp, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs0_BS_BQ_11descendantsNCINvXsK_NtB1I_5accumjNtB3C_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit97.i ] ; 2 uses
  %.sroa.6.0.i.i.i = phi i1 [ %i.fo, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i ], [ false, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs0_BS_BQ_11descendantsNCINvXsK_NtB1I_5accumjNtB3C_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit97.i ]
  %.sroa.02.0.i.i.i = phi i1 [ %.sroa.0.0.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i ], [ false, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs0_BS_BQ_11descendantsNCINvXsK_NtB1I_5accumjNtB3C_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit97.i ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %.sroa.05.0.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1892)
  br label %bb.as

bb.as:                                            ; preds = %bb.au, %.preheader.i.i
  %.sroa.03.0.i.i.i.i.i.i = phi ptr [ %i.ex, %.preheader.i.i ], [ %i.fk, %bb.au ] ; 3 uses
  %i.ey = load i8, ptr %.sroa.03.0.i.i.i.i.i.i, align 8, !range !592, !noalias !1850, !noundef !4
  switch i8 %i.ey, label %default.unreachable [
    i8 0, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i.loopexit
    i8 1, label %bb.at
    i8 2, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i
    i8 3, label %bb.au
  ]

bb.at:                                            ; preds = %bb.as
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !noalias !1850, !nonnull !4, !noundef !4 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 64
  %i.fc = load i8, ptr %i.fb, align 8, !range !17, !noalias !1895, !noundef !4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 65
  %i.fe = load i8, ptr %i.fd, align 1, !range !17, !noalias !1895, !noundef !4
  %i.ff = trunc nuw i8 %i.fc to i1
  %i.fg = trunc nuw i8 %i.fe to i1
  %i.fh = or i1 %.sroa.02.0.i.i.i, %i.ff
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !1850, !nonnull !4, !noundef !4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  br label %bb.as

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i.loopexit: ; preds = %bb.as
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i: ; preds = %bb.as, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i.loopexit, %bb.at
  %.sroa.6.0.i.i.i.i.i.i = phi i1 [ false, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i.loopexit ], [ %i.fg, %bb.at ], [ false, %bb.as ]
  %.sroa.0.0.i.i.i.i.i.i = phi i1 [ %.sroa.02.0.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i.loopexit ], [ %i.fh, %bb.at ], [ true, %bb.as ] ; 2 uses
  %i.fl = load i8, ptr %i.ex, align 8, !range !592, !alias.scope !1896, !noalias !1850, !noundef !4
  %i.fm = icmp eq i8 %i.fl, 3
  %i.fn = select i1 %i.fm, i1 true, i1 %.sroa.6.0.i.i.i.i.i.i
  %i.fo = or i1 %.sroa.6.0.i.i.i, %i.fn           ; 2 uses
  %i.fp = add nuw nsw i64 %.sroa.05.0.i.i.i, 1    ; 2 uses
  %i.fq = icmp eq i64 %i.fp, %i.bh
  br i1 %i.fq, label %.loopexit224.i, label %.preheader.i.i

.loopexit224.i:                                   ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs0_BS_BQ_11descendantsNCINvXsK_NtB1I_5accumjNtB3C_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit97.i
  %.sroa.3.0.i.i.i = phi i1 [ false, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs0_BS_BQ_11descendantsNCINvXsK_NtB1I_5accumjNtB3C_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit97.i ], [ %i.fo, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i = phi i1 [ false, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs0_BS_BQ_11descendantsNCINvXsK_NtB1I_5accumjNtB3C_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit97.i ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i ] ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 8, !range !17, !alias.scope !1832, !noalias !1841, !noundef !4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.f, i64 49 ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1, !range !17, !alias.scope !1832, !noalias !1841, !noundef !4
  %i.fv = or i8 %i.fu, %i.fs
  %.not62.i = icmp eq i8 %i.fv, 0
  %i.fw = and i1 %.sroa.3.0.i.i.i, %.sroa.0.0.i.i.i
  %or.cond68.i = select i1 %.not62.i, i1 true, i1 %i.fw
  br i1 %or.cond68.i, label %.loopexit224._crit_edge.i, label %bb.av

.loopexit224._crit_edge.i:                        ; preds = %.loopexit224.i
  %.pre350.i = sub nsw i64 %i.s, %.sroa.4.0.i.lcssa
  br label %bb.bc

bb.av:                                            ; preds = %.loopexit224.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1897)
  %i.fx = icmp eq i64 %.promoted.i, 0
  br i1 %i.fx, label %.loopexit223.i, label %.preheader.i99.i

.preheader.i99.i:                                 ; preds = %bb.av, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i104.i
  %.sroa.05.0.i.i100.i = phi i64 [ %i.gq, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i104.i ], [ 0, %bb.av ] ; 2 uses
  %.sroa.6.0.i.i101.i = phi i1 [ %i.gp, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i104.i ], [ false, %bb.av ]
  %.sroa.02.0.i.i102.i = phi i1 [ %.sroa.0.0.i.i.i.i.i106.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i104.i ], [ false, %bb.av ] ; 2 uses
  %i.fy = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %.sroa.05.0.i.i100.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %.preheader.i99.i
  %.sroa.03.0.i.i.i.i.i103.i = phi ptr [ %i.fy, %.preheader.i99.i ], [ %i.gl, %bb.ay ] ; 3 uses
  %i.fz = load i8, ptr %.sroa.03.0.i.i.i.i.i103.i, align 8, !range !592, !noalias !1850, !noundef !4
  switch i8 %i.fz, label %default.unreachable [
    i8 0, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i104.i.loopexit
    i8 1, label %bb.ax
    i8 2, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i104.i
    i8 3, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i103.i, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !noalias !1850, !nonnull !4, !noundef !4 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 64
  %i.gd = load i8, ptr %i.gc, align 8, !range !17, !noalias !1909, !noundef !4
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 65
  %i.gf = load i8, ptr %i.ge, align 1, !range !17, !noalias !1909, !noundef !4
  %i.gg = trunc nuw i8 %i.gd to i1
  %i.gh = trunc nuw i8 %i.gf to i1
  %i.gi = or i1 %.sroa.02.0.i.i102.i, %i.gg
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i104.i

bb.ay:                                            ; preds = %bb.aw
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i103.i, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !1850, !nonnull !4, !noundef !4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  br label %bb.aw

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i104.i.loopexit: ; preds = %bb.aw
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i104.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i104.i: ; preds = %bb.aw, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i104.i.loopexit, %bb.ax
  %.sroa.6.0.i.i.i.i.i105.i = phi i1 [ false, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i104.i.loopexit ], [ %i.gh, %bb.ax ], [ false, %bb.aw ]
  %.sroa.0.0.i.i.i.i.i106.i = phi i1 [ %.sroa.02.0.i.i102.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i104.i.loopexit ], [ %i.gi, %bb.ax ], [ true, %bb.aw ] ; 2 uses
  %i.gm = load i8, ptr %i.fy, align 8, !range !592, !alias.scope !1910, !noalias !1850, !noundef !4
  %i.gn = icmp eq i8 %i.gm, 3
  %i.go = select i1 %i.gn, i1 true, i1 %.sroa.6.0.i.i.i.i.i105.i
  %i.gp = or i1 %.sroa.6.0.i.i101.i, %i.go        ; 2 uses
  %i.gq = add nuw nsw i64 %.sroa.05.0.i.i100.i, 1 ; 2 uses
  %i.gr = icmp eq i64 %i.gq, %.promoted.i
  br i1 %i.gr, label %.loopexit223.i, label %.preheader.i99.i

.loopexit223.i:                                   ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i104.i, %bb.av
  %.sroa.3.0.i.i107.i = phi i1 [ false, %bb.av ], [ %i.gp, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i104.i ] ; 2 uses
  %.sroa.0.0.i.i108.i = phi i1 [ false, %bb.av ], [ %.sroa.0.0.i.i.i.i.i106.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i104.i ] ; 2 uses
  %i.gs = sub i64 %i.s, %.sroa.4.0.i.lcssa        ; 2 uses
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %.sroa.4.0.i.lcssa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1911)
  %i.gu = icmp eq i64 %i.s, %.sroa.4.0.i.lcssa
  br i1 %i.gu, label %.loopexit222.i, label %.preheader.i112.i

.preheader.i112.i:                                ; preds = %.loopexit223.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i117.i
  %.sroa.05.0.i.i113.i = phi i64 [ %i.hn, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i117.i ], [ 0, %.loopexit223.i ] ; 2 uses
  %.sroa.6.0.i.i114.i = phi i1 [ %i.hm, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i117.i ], [ false, %.loopexit223.i ]
  %.sroa.02.0.i.i115.i = phi i1 [ %.sroa.0.0.i.i.i.i.i119.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i117.i ], [ false, %.loopexit223.i ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [32 x i8], ptr %i.gt, i64 %.sroa.05.0.i.i113.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1920)
  br label %bb.az

bb.az:                                            ; preds = %bb.bb, %.preheader.i112.i
  %.sroa.03.0.i.i.i.i.i116.i = phi ptr [ %i.gv, %.preheader.i112.i ], [ %i.hi, %bb.bb ] ; 3 uses
  %i.gw = load i8, ptr %.sroa.03.0.i.i.i.i.i116.i, align 8, !range !592, !noalias !1850, !noundef !4
  switch i8 %i.gw, label %default.unreachable [
    i8 0, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i117.i.loopexit
    i8 1, label %bb.ba
    i8 2, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i117.i
    i8 3, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i116.i, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !noalias !1850, !nonnull !4, !noundef !4 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  %i.ha = load i8, ptr %i.gz, align 8, !range !17, !noalias !1923, !noundef !4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 65
  %i.hc = load i8, ptr %i.hb, align 1, !range !17, !noalias !1923, !noundef !4
  %i.hd = trunc nuw i8 %i.ha to i1
  %i.he = trunc nuw i8 %i.hc to i1
  %i.hf = or i1 %.sroa.02.0.i.i115.i, %i.hd
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i117.i

bb.bb:                                            ; preds = %bb.az
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i116.i, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !noalias !1850, !nonnull !4, !noundef !4
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  br label %bb.az

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i117.i.loopexit: ; preds = %bb.az
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i117.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i117.i: ; preds = %bb.az, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i117.i.loopexit, %bb.ba
  %.sroa.6.0.i.i.i.i.i118.i = phi i1 [ false, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i117.i.loopexit ], [ %i.he, %bb.ba ], [ false, %bb.az ]
  %.sroa.0.0.i.i.i.i.i119.i = phi i1 [ %.sroa.02.0.i.i115.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i117.i.loopexit ], [ %i.hf, %bb.ba ], [ true, %bb.az ] ; 2 uses
  %i.hj = load i8, ptr %i.gv, align 8, !range !592, !alias.scope !1924, !noalias !1850, !noundef !4
  %i.hk = icmp eq i8 %i.hj, 3
  %i.hl = select i1 %i.hk, i1 true, i1 %.sroa.6.0.i.i.i.i.i118.i
  %i.hm = or i1 %.sroa.6.0.i.i114.i, %i.hl        ; 2 uses
  %i.hn = add nuw nsw i64 %.sroa.05.0.i.i113.i, 1 ; 2 uses
  %i.ho = icmp eq i64 %i.hn, %i.gs
  br i1 %i.ho, label %.loopexit222.loopexit.i, label %.preheader.i112.i

.loopexit222.loopexit.i:                          ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i117.i
  %i.hp = or i1 %.sroa.0.0.i.i108.i, %.sroa.0.0.i.i.i.i.i119.i
  %i.hq = or i1 %.sroa.3.0.i.i107.i, %i.hm
  br label %.loopexit222.i

.loopexit222.i:                                   ; preds = %.loopexit222.loopexit.i, %.loopexit223.i
  %.sroa.3.0.i.i120.i = phi i1 [ %.sroa.3.0.i.i107.i, %.loopexit223.i ], [ %i.hq, %.loopexit222.loopexit.i ]
  %.sroa.0.0.i.i121.i = phi i1 [ %.sroa.0.0.i.i108.i, %.loopexit223.i ], [ %i.hp, %.loopexit222.loopexit.i ]
  %i.hr = or i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i121.i
  %i.hs = or i1 %.sroa.3.0.i.i.i, %.sroa.3.0.i.i120.i
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit222.i, %.loopexit224._crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre350.i, %.loopexit224._crit_edge.i ], [ %i.gs, %.loopexit222.i ] ; 10 uses
  %storemerge64.in.i = phi i1 [ %.sroa.0.0.i.i.i, %.loopexit224._crit_edge.i ], [ %i.hr, %.loopexit222.i ]
  %storemerge.in.i = phi i1 [ %.sroa.3.0.i.i.i, %.loopexit224._crit_edge.i ], [ %i.hs, %.loopexit222.i ]
  %storemerge64.i = zext i1 %storemerge64.in.i to i8
  store i8 %storemerge64.i, ptr %i.fr, align 8, !alias.scope !1832, !noalias !1841
  %storemerge.i = zext i1 %storemerge.in.i to i8
  store i8 %storemerge.i, ptr %i.ft, align 1, !alias.scope !1832, !noalias !1841
  %i.ht = sub nsw i64 %i.n, %.sroa.6.0.i.lcssa    ; 9 uses
  %i.hu = icmp ult i64 %i.s, 288230376151711744
  tail call void @llvm.assume(i1 %i.hu)
  store i64 %.promoted.i, ptr %i.r, align 8, !alias.scope !1925, !noalias !1930
  br i1 %i.cq, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1G_3ops9try_traitINtB2J_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1y_8for_each4callBK_INvNtB1G_3mem4dropBK_EE0E0B35_EBO_.exit.i.i.i, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.lr.ph.i.i.i.i

_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.lr.ph.i.i.i.i: ; preds = %bb.bc
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i

_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i: ; preds = %.noexc.i.i, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.lr.ph.i.i.i.i
  %i.hv = phi ptr [ %i.bk, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.lr.ph.i.i.i.i ], [ %i.hw, %.noexc.i.i ] ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 32 ; 4 uses
  %.sroa.0.0.copyload1.i.i.i.i = load i8, ptr %i.hv, align 8, !noalias !1934 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload1.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1G_3ops9try_traitINtB2J_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1y_8for_each4callBK_INvNtB1G_3mem4dropBK_EE0E0B35_EBO_.exit.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i
  %.sroa.7.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1943
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx2.i.i.i.i, i64 31, i1 false), !noalias !1943
  store i8 %.sroa.0.0.copyload1.i.i.i.i, ptr %i.a, align 8, !noalias !1943
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.a)
          to label %.noexc.i.i unwind label %.body.i.i, !noalias !1944

.noexc.i.i:                                       ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1943
  %i.hx = icmp eq ptr %i.hw, %i.cp
  br i1 %i.hx, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1G_3ops9try_traitINtB2J_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1y_8for_each4callBK_INvNtB1G_3mem4dropBK_EE0E0B35_EBO_.exit.i.i.i, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i

_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1G_3ops9try_traitINtB2J_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1y_8for_each4callBK_INvNtB1G_3mem4dropBK_EE0E0B35_EBO_.exit.i.i.i: ; preds = %.noexc.i.i, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i, %bb.bc
  %i.hy = icmp eq i64 %i.s, %.sroa.4.0.i.lcssa    ; 2 uses
  br i1 %i.hy, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1G_3ops9try_traitINtB2J_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1y_8for_each4callBK_INvNtB1G_3mem4dropBK_EE0E0B35_EBO_.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1948)
  %i.hz = load i64, ptr %i.f, align 8, !range !833, !alias.scope !1951, !noalias !1954, !noundef !4
  %i.ia = sub i64 %i.hz, %.promoted.i
  %i.ib = icmp ugt i64 %i.bh, %i.ia
  br i1 %i.ib, label %bb.bf, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE7reserveBI_.exit.i.i.i.i.i, !prof !65

bb.bf:                                            ; preds = %bb.be
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f, i64 noundef %.promoted.i, i64 noundef %i.bh, i64 noundef 8, i64 noundef 32)
          to label %.noexc2.i.i unwind label %.loopexit.split-lp.i.i, !noalias !1957

.noexc2.i.i:                                      ; preds = %bb.bf
  %.pre.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !1958, !noalias !1954
  %.pre347.i = load ptr, ptr %i.v, align 8, !alias.scope !1958, !noalias !1954
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE7reserveBI_.exit.i.i.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE7reserveBI_.exit.i.i.i.i.i: ; preds = %.noexc2.i.i, %bb.be
  %i.ic = phi ptr [ %i.w, %bb.be ], [ %.pre347.i, %.noexc2.i.i ]
  %i.id = phi i64 [ %.promoted.i, %bb.be ], [ %.pre.i.i.i.i.i, %.noexc2.i.i ] ; 2 uses
  br i1 %i.bo, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINtB4_10SpecExtendBT_QINtNtB6_5drain5DrainBT_EE11spec_extendBX_.exit.i.i.i, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i.i.i.i.i

_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE7reserveBI_.exit.i.i.i.i.i, %bb.bg
  %i.ie = phi i64 [ %i.ii, %bb.bg ], [ %i.id, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE7reserveBI_.exit.i.i.i.i.i ] ; 3 uses
  %i.if = phi ptr [ %i.ig, %bb.bg ], [ %i.bi, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE7reserveBI_.exit.i.i.i.i.i ] ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 32 ; 3 uses
  %.sroa.0.0.copyload5.i.i.i.i.i.i.i.i.i = load i8, ptr %i.if, align 8, !noalias !1959 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload5.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINtB4_10SpecExtendBT_QINtNtB6_5drain5DrainBT_EE11spec_extendBX_.exit.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i.i.i.i.i
  %.sroa.7.0..sroa_idx6.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.if, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.49.i.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.49.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx6.i.i.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !1974
  %i.ih = getelementptr inbounds nuw [32 x i8], ptr %i.ic, i64 %i.ie ; 2 uses
  store i8 %.sroa.0.0.copyload5.i.i.i.i.i.i.i.i.i, ptr %i.ih, align 8, !noalias !1975
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.49.i.i.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !1975
  %i.ii = add i64 %i.ie, 1                        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.49.i.i.i.i.i.i.i.i.i)
  %i.ij = icmp eq ptr %i.ig, %i.bn
  br i1 %i.ij, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINtB4_10SpecExtendBT_QINtNtB6_5drain5DrainBT_EE11spec_extendBX_.exit.i.i.i, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i.i.i.i.i

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINtB4_10SpecExtendBT_QINtNtB6_5drain5DrainBT_EE11spec_extendBX_.exit.i.i.i: ; preds = %bb.bg, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE7reserveBI_.exit.i.i.i.i.i
  %i.ik = phi ptr [ %i.bi, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE7reserveBI_.exit.i.i.i.i.i ], [ %i.bn, %bb.bg ], [ %i.ig, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i.i.i.i.i ]
  %.val4.i.i.i.i.i.i.i.i.i = phi i64 [ %i.id, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE7reserveBI_.exit.i.i.i.i.i ], [ %i.ii, %bb.bg ], [ %i.ie, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  store i64 %.val4.i.i.i.i.i.i.i.i.i, ptr %i.r, align 8, !alias.scope !1958, !noalias !1982
  br label %.loopexit.i.i

bb.bh:                                            ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1G_3ops9try_traitINtB2J_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1y_8for_each4callBK_INvNtB1G_3mem4dropBK_EE0E0B35_EBO_.exit.i.i.i
  br i1 %.lcssa156, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bh, %bb.bi
  %i.il = phi i64 [ %i.ip, %bb.bi ], [ %.promoted.i, %bb.bh ] ; 4 uses
  %i.im = phi ptr [ %i.io, %bb.bi ], [ %i.bi, %bb.bh ] ; 4 uses
  %i.in = icmp eq ptr %i.im, %i.bn
  br i1 %i.in, label %.loopexit.i.i, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i29.i.i.i

_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i29.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 32 ; 3 uses
  %.sroa.0.0.copyload1.i30.i.i.i = load i8, ptr %i.im, align 8, !noalias !1983 ; 2 uses
  %.not.i31.i.i.i = icmp eq i8 %.sroa.0.0.copyload1.i30.i.i.i, -1
  br i1 %.not.i31.i.i.i, label %.loopexit.i.i, label %bb.bi

bb.bi:                                            ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i29.i.i.i
  %.sroa.7.0..sroa_idx2.i32.i.i.i = getelementptr inbounds nuw i8, ptr %i.im, i64 1
  %i.ip = add i64 %i.il, 1                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx2.i32.i.i.i, i64 31, i1 false), !noalias !1988
  %i.iq = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.il ; 2 uses
  store i8 %.sroa.0.0.copyload1.i30.i.i.i, ptr %i.iq, align 8, !noalias !1988
  %.sroa.4.0..sroa_idx.i33.i.i.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx.i33.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.i.i.i.i, i64 31, i1 false), !noalias !1988
  store i64 %i.ip, ptr %i.r, align 8, !alias.scope !1832, !noalias !1989
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ip, %.sroa.4.0.i.lcssa
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.bi, %bb.bh
  %i.ir = phi i64 [ %.promoted.i, %bb.bh ], [ %.sroa.4.0.i.lcssa, %bb.bi ]
  %.sroa.34.1.i = phi ptr [ %i.bi, %bb.bh ], [ %i.io, %bb.bi ] ; 5 uses
  %i.is = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.it = ptrtoint ptr %.sroa.34.1.i to i64
  %i.iu = sub nuw i64 %i.is, %i.it                ; 2 uses
  %i.iv = lshr exact i64 %i.iu, 5                 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bn, %.sroa.34.1.i
  br i1 %.not.i.i.i, label %.thread.i, label %bb.bm

.thread.i:                                        ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1990
  br label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1G_3ops9try_traitINtB2J_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1y_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedQB3_E0E0E0B35_EBO_.exit.sink.split.i.i.i.i.i.i.i.i.i.i

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillBF_EB13_.exit48.thread.loopexit.i.i.i: ; preds = %bb.bo
  %.pre.i.i.i = ptrtoint ptr %i.js to i64
  %.pre.i.i = sub nuw i64 %i.is, %.pre.i.i.i      ; 2 uses
  %.pre23.i.i = lshr exact i64 %.pre.i.i, 5
  br label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillBF_EB13_.exit48.thread.i.i.i

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillBF_EB13_.exit48.thread.i.i.i: ; preds = %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE9move_tailB12_.exit.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillBF_EB13_.exit48.thread.loopexit.i.i.i
  %i.iw = phi i64 [ %i.jk, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillBF_EB13_.exit48.thread.loopexit.i.i.i ], [ %i.jo, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE9move_tailB12_.exit.i.i.i ] ; 3 uses
  %.sroa.34.2.i = phi ptr [ %i.js, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillBF_EB13_.exit48.thread.loopexit.i.i.i ], [ %.sroa.34.1.i, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE9move_tailB12_.exit.i.i.i ] ; 3 uses
  %.pre-phi24.i.i = phi i64 [ %.pre23.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillBF_EB13_.exit48.thread.loopexit.i.i.i ], [ %i.iv, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE9move_tailB12_.exit.i.i.i ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillBF_EB13_.exit48.thread.loopexit.i.i.i ], [ %i.iu, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE9move_tailB12_.exit.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1990
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %.pre-phi.i.i, 9223372036854775800
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bk, label %bb.bj, !prof !1991

bb.bj:                                            ; preds = %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillBF_EB13_.exit48.thread.i.i.i
  %i.ix = icmp eq ptr %i.bn, %.sroa.34.2.i
  br i1 %i.ix, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1G_3ops9try_traitINtB2J_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1y_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedQB3_E0E0E0B35_EBO_.exit.sink.split.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %bb.bj
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !1992
  %i.iy = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %.pre-phi.i.i, i64 noundef range(i64 1, 9) 8) #60, !noalias !1992 ; 4 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %bb.bk, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.bk:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillBF_EB13_.exit48.thread.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ 0, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillBF_EB13_.exit48.thread.i.i.i ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %.pre-phi.i.i) #58
          to label %.noexc3.i.i unwind label %.loopexit.split-lp.i.i, !noalias !1944

.noexc3.i.i:                                      ; preds = %bb.bk
  unreachable

_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, %bb.bl
  %i.ja = phi i64 [ %i.je, %bb.bl ], [ 0, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.jb = phi ptr [ %i.jc, %bb.bl ], [ %.sroa.34.2.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 32 ; 3 uses
  %.sroa.0.0.copyload5.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.jb, align 8, !noalias !2001 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload5.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1G_3ops9try_traitINtB2J_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1y_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedQB3_E0E0E0B35_EBO_.exit.sink.split.i.i.i.i.i.i.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.7.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  %i.jd = getelementptr inbounds nuw [32 x i8], ptr %i.iy, i64 %i.ja ; 2 uses
  store i8 %.sroa.0.0.copyload5.i.i.i.i.i.i.i.i.i.i.i, ptr %i.jd, align 8, !noalias !2022
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jd, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !2029
  %i.je = add i64 %i.ja, 1                        ; 2 uses
  %i.jf = icmp eq ptr %i.jc, %i.bn
  br i1 %i.jf, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1G_3ops9try_traitINtB2J_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1y_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedQB3_E0E0E0B35_EBO_.exit.sink.split.i.i.i.i.i.i.i.i.i.i, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.bm:                                            ; preds = %.loopexit.i.i.i
  %i.jg = load i64, ptr %i.f, align 8, !range !833, !alias.scope !1832, !noalias !2030, !noundef !4
  %i.jh = sub nsw i64 %i.jg, %i.s
  %i.ji = icmp ugt i64 %i.iv, %i.jh
  br i1 %i.ji, label %bb.bn, label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE9move_tailB12_.exit.i.i.i, !prof !65

bb.bn:                                            ; preds = %bb.bm
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f, i64 noundef %i.s, i64 noundef %i.iv, i64 noundef 8, i64 noundef 32)
          to label %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE9move_tailB12_.exit.i.i_crit_edge.i unwind label %.loopexit.split-lp.i.i, !noalias !1957

._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE9move_tailB12_.exit.i.i_crit_edge.i: ; preds = %bb.bn
  %.pre344.i = load ptr, ptr %i.v, align 8, !alias.scope !1832, !noalias !2030
  br label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE9move_tailB12_.exit.i.i.i

_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE9move_tailB12_.exit.i.i.i: ; preds = %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE9move_tailB12_.exit.i.i_crit_edge.i, %bb.bm
  %i.jj = phi ptr [ %.pre344.i, %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE9move_tailB12_.exit.i.i_crit_edge.i ], [ %i.w, %bb.bm ] ; 3 uses
  %i.jk = add i64 %i.iv, %.sroa.4.0.i.lcssa       ; 10 uses
  %i.jl = getelementptr inbounds nuw [32 x i8], ptr %i.jj, i64 %.sroa.4.0.i.lcssa
  %i.jm = getelementptr inbounds nuw [32 x i8], ptr %i.jj, i64 %i.jk
  %i.jn = shl nuw nsw i64 %.pre-phi.i, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jm, ptr nonnull align 8 %i.jl, i64 %i.jn, i1 false), !noalias !2033
  %i.jo = load i64, ptr %i.r, align 8, !alias.scope !1832, !noalias !2034, !noundef !4 ; 3 uses
  %.not8.i37.i.i.i = icmp ult i64 %i.jo, %i.jk
  br i1 %.not8.i37.i.i.i, label %.lr.ph.i38.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillBF_EB13_.exit48.thread.i.i.i

.lr.ph.i38.i.i.i:                                 ; preds = %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE9move_tailB12_.exit.i.i.i, %bb.bo
  %i.jp = phi i64 [ %i.jt, %bb.bo ], [ %i.jo, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE9move_tailB12_.exit.i.i.i ] ; 4 uses
  %i.jq = phi ptr [ %i.js, %bb.bo ], [ %.sroa.34.1.i, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE9move_tailB12_.exit.i.i.i ] ; 4 uses
  %i.jr = icmp eq ptr %i.jq, %i.bn
  br i1 %i.jr, label %.loopexit.i.i, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i41.i.i.i

_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i41.i.i.i: ; preds = %.lr.ph.i38.i.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 32 ; 4 uses
  %.sroa.0.0.copyload1.i42.i.i.i = load i8, ptr %i.jq, align 8, !noalias !2037 ; 2 uses
  %.not.i43.i.i.i = icmp eq i8 %.sroa.0.0.copyload1.i42.i.i.i, -1
  br i1 %.not.i43.i.i.i, label %.loopexit.i.i, label %bb.bo

bb.bo:                                            ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i41.i.i.i
  %.sroa.7.0..sroa_idx2.i44.i.i.i = getelementptr inbounds nuw i8, ptr %i.jq, i64 1
  %i.jt = add i64 %i.jp, 1                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i36.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.i36.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx2.i44.i.i.i, i64 31, i1 false), !noalias !2040
  %i.ju = getelementptr inbounds nuw [32 x i8], ptr %i.jj, i64 %i.jp ; 2 uses
  store i8 %.sroa.0.0.copyload1.i42.i.i.i, ptr %i.ju, align 8, !noalias !2040
  %.sroa.4.0..sroa_idx.i45.i.i.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx.i45.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.i36.i.i.i, i64 31, i1 false), !noalias !2040
  store i64 %i.jt, ptr %i.r, align 8, !alias.scope !1832, !noalias !2034
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i36.i.i.i)
  %exitcond.not.i46.i.i.i = icmp eq i64 %i.jt, %i.jk
  br i1 %exitcond.not.i46.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillBF_EB13_.exit48.thread.loopexit.i.i.i, label %.lr.ph.i38.i.i.i

bb.bp:                                            ; preds = %bb.bv
  %i.jv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1t_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #59
          to label %.body.i.thread.i unwind label %bb.by, !noalias !1990

_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1G_3ops9try_traitINtB2J_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1y_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedQB3_E0E0E0B35_EBO_.exit.sink.split.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bl, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.bj, %.thread.i
  %.sroa.20.1412.i = phi i64 [ %i.jk, %bb.bj ], [ %.sroa.4.0.i.lcssa, %.thread.i ], [ %i.jk, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jk, %bb.bl ] ; 5 uses
  %i.jw = phi i64 [ %i.iw, %bb.bj ], [ %i.ir, %.thread.i ], [ %i.iw, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.iw, %bb.bl ] ; 2 uses
  %.sroa.34.4.i = phi ptr [ %i.bn, %bb.bj ], [ %i.bn, %.thread.i ], [ %i.bn, %bb.bl ], [ %i.jc, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.4.0.i8.i.i.i.i.i = phi i64 [ 0, %bb.bj ], [ 0, %.thread.i ], [ %.pre-phi24.i.i, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre-phi24.i.i, %bb.bl ] ; 5 uses
  %.sroa.10.0.i7.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.bj ], [ inttoptr (i64 8 to ptr), %.thread.i ], [ %i.iy, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.iy, %bb.bl ] ; 8 uses
  %.val4.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bj ], [ 0, %.thread.i ], [ %i.je, %bb.bl ], [ %i.ja, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.jx = icmp ult i64 %.val4.i.i.i.i.i.i.i.i.i.i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.jx)
  %.idx.i.i.i = shl nuw nsw i64 %.val4.i.i.i.i.i.i.i.i.i.i.i, 5
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i7.i.i.i.i.i, i64 %.idx.i.i.i ; 3 uses
  store ptr %.sroa.10.0.i7.i.i.i.i.i, ptr %i.b, align 8, !noalias !1990
  %i.jz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.4.0.i8.i.i.i.i.i, ptr %i.jz, align 8, !noalias !1990
  %i.ka = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i7.i.i.i.i.i, ptr %i.ka, align 8, !noalias !1990
  %i.kb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.jy, ptr %i.kb, align 8, !noalias !1990
  %i.kc = ptrtoint ptr %i.jy to i64
  %.not16.i.i.i = icmp eq i64 %.val4.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not16.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillINtNtB8_9into_iter8IntoIterBZ_EEB13_.exit.i.i.i, label %bb.bu

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillINtNtB8_9into_iter8IntoIterBZ_EEB13_.exit.loopexit.i.i.i: ; preds = %bb.bx, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i.i.i
  %i.kd = phi i64 [ %i.ky, %bb.bx ], [ %i.kw, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i.i.i ]
  store ptr %i.kx, ptr %i.ka, align 8, !noalias !1990
  br label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillINtNtB8_9into_iter8IntoIterBZ_EEB13_.exit.i.i.i

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillINtNtB8_9into_iter8IntoIterBZ_EEB13_.exit.i.i.i: ; preds = %bb.bw, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillINtNtB8_9into_iter8IntoIterBZ_EEB13_.exit.loopexit.i.i.i, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1G_3ops9try_traitINtB2J_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1y_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedQB3_E0E0E0B35_EBO_.exit.sink.split.i.i.i.i.i.i.i.i.i.i
  %i.ke = phi i64 [ %i.jw, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1G_3ops9try_traitINtB2J_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1y_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedQB3_E0E0E0B35_EBO_.exit.sink.split.i.i.i.i.i.i.i.i.i.i ], [ %i.kd, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillINtNtB8_9into_iter8IntoIterBZ_EEB13_.exit.loopexit.i.i.i ], [ %.promoted286.i, %bb.bw ]
  %.sroa.20.2.i = phi i64 [ %.sroa.20.1412.i, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1G_3ops9try_traitINtB2J_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1y_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedQB3_E0E0E0B35_EBO_.exit.sink.split.i.i.i.i.i.i.i.i.i.i ], [ %i.kr, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillINtNtB8_9into_iter8IntoIterBZ_EEB13_.exit.loopexit.i.i.i ], [ %i.kr, %bb.bw ] ; 3 uses
  %.sroa.410.0.copyload60.i.i.i = phi ptr [ %.sroa.10.0.i7.i.i.i.i.i, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1G_3ops9try_traitINtB2J_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1y_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedQB3_E0E0E0B35_EBO_.exit.sink.split.i.i.i.i.i.i.i.i.i.i ], [ %i.kx, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillINtNtB8_9into_iter8IntoIterBZ_EEB13_.exit.loopexit.i.i.i ], [ %.sroa.10.0.i7.i.i.i.i.i, %bb.bw ] ; 2 uses
  %i.kf = ptrtoint ptr %.sroa.410.0.copyload60.i.i.i to i64
  %i.kg = sub nuw i64 %i.kc, %i.kf
  %i.kh = lshr exact i64 %i.kg, 5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %.sroa.410.0.copyload60.i.i.i, i64 noundef %i.kh)
          to label %bb.bs unwind label %bb.bq, !noalias !2041

bb.bq:                                            ; preds = %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillINtNtB8_9into_iter8IntoIterBZ_EEB13_.exit.i.i.i
  %i.ki = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kj = icmp eq i64 %.sroa.4.0.i8.i.i.i.i.i, 0
  br i1 %i.kj, label %.body.i.thread.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.kk = shl nuw i64 %.sroa.4.0.i8.i.i.i.i.i, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i7.i.i.i.i.i, i64 noundef %i.kk, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !2041
  br label %.body.i.thread.i

bb.bs:                                            ; preds = %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillINtNtB8_9into_iter8IntoIterBZ_EEB13_.exit.i.i.i
  %i.kl = icmp eq i64 %.sroa.4.0.i8.i.i.i.i.i, 0
  br i1 %i.kl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1t_.exit.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.km = shl nuw i64 %.sroa.4.0.i8.i.i.i.i.i, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i7.i.i.i.i.i, i64 noundef %i.km, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !2041
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1t_.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1t_.exit.i.i.i: ; preds = %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1990
  br label %.loopexit.i.i

bb.bu:                                            ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1G_3ops9try_traitINtB2J_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1y_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedQB3_E0E0E0B35_EBO_.exit.sink.split.i.i.i.i.i.i.i.i.i.i
  %i.kn = add i64 %.sroa.20.1412.i, %.pre-phi.i   ; 2 uses
  %i.ko = load i64, ptr %i.f, align 8, !range !833, !alias.scope !1832, !noalias !2046, !noundef !4
  %i.kp = sub i64 %i.ko, %i.kn
  %i.kq = icmp ugt i64 %.val4.i.i.i.i.i.i.i.i.i.i.i, %i.kp
  br i1 %i.kq, label %bb.bv, label %bb.bw, !prof !65

bb.bv:                                            ; preds = %bb.bu
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f, i64 noundef %i.kn, i64 noundef %.val4.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 32)
          to label %._crit_edge345.i unwind label %bb.bp, !noalias !2049

._crit_edge345.i:                                 ; preds = %bb.bv
  %.pre346.i = load i64, ptr %i.r, align 8, !alias.scope !1832, !noalias !2050
  br label %bb.bw

bb.bw:                                            ; preds = %._crit_edge345.i, %bb.bu
  %.promoted286.i = phi i64 [ %.pre346.i, %._crit_edge345.i ], [ %i.jw, %bb.bu ] ; 3 uses
  %i.kr = add i64 %.val4.i.i.i.i.i.i.i.i.i.i.i, %.sroa.20.1412.i ; 5 uses
  %i.ks = load ptr, ptr %i.v, align 8, !alias.scope !1832, !noalias !2046, !nonnull !4, !noundef !4 ; 3 uses
  %i.kt = getelementptr inbounds nuw [32 x i8], ptr %i.ks, i64 %.sroa.20.1412.i
  %i.ku = getelementptr inbounds nuw [32 x i8], ptr %i.ks, i64 %i.kr
  %i.kv = shl nuw nsw i64 %.pre-phi.i, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ku, ptr nonnull align 8 %i.kt, i64 %i.kv, i1 false), !noalias !2053
  %.not8.i51.i.i.i = icmp ult i64 %.promoted286.i, %i.kr
  br i1 %.not8.i51.i.i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillINtNtB8_9into_iter8IntoIterBZ_EEB13_.exit.i.i.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i.i.i: ; preds = %bb.bw, %bb.bx
  %i.kw = phi i64 [ %i.ky, %bb.bx ], [ %.promoted286.i, %bb.bw ] ; 3 uses
  %.sroa.410.0.copyload6174.i.i.i = phi ptr [ %i.kx, %bb.bx ], [ %.sroa.10.0.i7.i.i.i.i.i, %bb.bw ] ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.410.0.copyload6174.i.i.i, i64 32 ; 4 uses
  %.sroa.0.0.copyload1.i55.i.i.i = load i8, ptr %.sroa.410.0.copyload6174.i.i.i, align 8, !noalias !2054 ; 2 uses
  %.not.i56.i.i.i = icmp eq i8 %.sroa.0.0.copyload1.i55.i.i.i, -1
  br i1 %.not.i56.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillINtNtB8_9into_iter8IntoIterBZ_EEB13_.exit.loopexit.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i.i.i
  %.sroa.7.0..sroa_idx2.i57.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.410.0.copyload6174.i.i.i, i64 1
  %i.ky = add i64 %i.kw, 1                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i50.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.i50.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx2.i57.i.i.i, i64 31, i1 false), !noalias !2057
  %i.kz = getelementptr inbounds nuw [32 x i8], ptr %i.ks, i64 %i.kw ; 2 uses
  store i8 %.sroa.0.0.copyload1.i55.i.i.i, ptr %i.kz, align 8, !noalias !2057
  %.sroa.4.0..sroa_idx.i58.i.i.i = getelementptr inbounds nuw i8, ptr %i.kz, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx.i58.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.i50.i.i.i, i64 31, i1 false), !noalias !2057
  store i64 %i.ky, ptr %i.r, align 8, !alias.scope !1832, !noalias !2050
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i50.i.i.i)
  %exitcond.not.i59.i.i.i = icmp eq i64 %i.ky, %i.kr
  %i.la = icmp eq ptr %i.kx, %i.jy
  %or.cond.i.i.i = select i1 %exitcond.not.i59.i.i.i, i1 true, i1 %i.la
  br i1 %or.cond.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE4fillINtNtB8_9into_iter8IntoIterBZ_EEB13_.exit.loopexit.i.i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i.i.i

bb.by:                                            ; preds = %bb.bp
  %i.lb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !1990
  unreachable

.loopexit.split-lp.i.i:                           ; preds = %bb.bn, %bb.bk, %bb.bf
  %.sroa.4.0.i160 = phi i64 [ %i.s, %bb.bf ], [ %.sroa.4.0.i.lcssa, %bb.bk ], [ %.sroa.4.0.i.lcssa, %bb.bn ]
  %.sroa.34.6.i = phi ptr [ %i.bi, %bb.bf ], [ %.sroa.34.2.i, %bb.bk ], [ %.sroa.34.1.i, %bb.bn ]
  %.sroa.20.5.i = phi i64 [ %i.s, %bb.bf ], [ %i.jk, %bb.bk ], [ %.sroa.4.0.i.lcssa, %bb.bn ]
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.thread.i

.body.i.i:                                        ; preds = %bb.bd
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.lc = icmp eq ptr %i.cp, %i.hw
  br i1 %i.lc, label %.body.i.thread.i, label %bb.cd

.body.i.thread.i:                                 ; preds = %.body.i.i, %.loopexit.split-lp.i.i, %bb.br, %bb.bq, %bb.bp
  %.sroa.4.0.i159 = phi i64 [ %.sroa.4.0.i.lcssa, %.body.i.i ], [ %.sroa.4.0.i.lcssa, %bb.bp ], [ %.sroa.4.0.i.lcssa, %bb.br ], [ %.sroa.4.0.i.lcssa, %bb.bq ], [ %.sroa.4.0.i160, %.loopexit.split-lp.i.i ]
  %eh.lpad-body.i210.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.body.i.i ], [ %i.jv, %bb.bp ], [ %i.ki, %bb.br ], [ %i.ki, %bb.bq ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 3 uses
  %.sroa.20.0208.i = phi i64 [ %.sroa.4.0.i.lcssa, %.body.i.i ], [ %.sroa.20.1412.i, %bb.bp ], [ %.sroa.20.2.i, %bb.br ], [ %.sroa.20.2.i, %bb.bq ], [ %.sroa.20.5.i, %.loopexit.split-lp.i.i ] ; 3 uses
  %.sroa.34.0207.i = phi ptr [ %i.bi, %.body.i.i ], [ %.sroa.34.4.i, %bb.bp ], [ %.sroa.34.4.i, %bb.br ], [ %.sroa.34.4.i, %bb.bq ], [ %.sroa.34.6.i, %.loopexit.split-lp.i.i ] ; 3 uses
  %.not.i.i.i.i148.i = icmp eq i64 %i.s, %.sroa.4.0.i159
  br i1 %.not.i.i.i.i148.i, label %.body5.i.i, label %bb.bz

bb.bz:                                            ; preds = %.body.i.thread.i
  %i.ld = load i64, ptr %i.r, align 8, !alias.scope !1832, !noalias !2058, !noundef !4 ; 4 uses
  %i.le = icmp ult i64 %i.ld, 288230376151711744
  tail call void @llvm.assume(i1 %i.le)
  %.not3.i.i.i.i149.i = icmp eq i64 %.sroa.20.0208.i, %i.ld
  br i1 %.not3.i.i.i.i149.i, label %.body5.i.sink.split.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lf = load ptr, ptr %i.v, align 8, !alias.scope !1832, !noalias !2058, !nonnull !4, !noundef !4 ; 2 uses
  %i.lg = getelementptr inbounds nuw [32 x i8], ptr %i.lf, i64 %.sroa.20.0208.i
  %i.lh = getelementptr inbounds nuw [32 x i8], ptr %i.lf, i64 %i.ld
  %i.li = shl nuw nsw i64 %.pre-phi.i, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lh, ptr nonnull align 8 %i.lg, i64 %i.li, i1 false), !noalias !2063
  br label %.body5.i.sink.split.i

bb.cb:                                            ; preds = %bb.cd
  %i.lj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.not.i.i157.i = icmp eq i64 %i.s, %.sroa.4.0.i.lcssa
  br i1 %.not.i.i157.i, label %.body144.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.lk = icmp ult i64 %.promoted.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.lk)
  %i.ll = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %.sroa.4.0.i.lcssa
  %i.lm = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %.promoted.i
  %i.ln = shl nuw nsw i64 %.pre-phi.i, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lm, ptr nonnull align 8 %i.ll, i64 %i.ln, i1 false), !noalias !1850
  %i.lo = add i64 %.pre-phi.i, %.promoted.i
  store i64 %i.lo, ptr %i.r, align 8, !alias.scope !1832, !noalias !1841
  br label %.body144.i

bb.cd:                                            ; preds = %.body.i.i
  %i.lp = ptrtoint ptr %i.hw to i64               ; 2 uses
  %i.lq = ptrtoint ptr %i.cp to i64
  %i.lr = sub nuw i64 %i.lq, %i.lp
  %i.ls = lshr exact i64 %i.lr, 5
  %i.lt = ptrtoint ptr %i.w to i64
  %i.lu = sub nuw i64 %i.lp, %i.lt
  %i.lv = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.lu
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %i.lv, i64 noundef %i.ls)
          to label %bb.ce unwind label %bb.cb, !noalias !2063

bb.ce:                                            ; preds = %bb.cd
  %.not.i.i4.i.i146.i = icmp eq i64 %i.s, %.sroa.4.0.i.lcssa
  br i1 %.not.i.i4.i.i146.i, label %.body5.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.lw = icmp ult i64 %.promoted.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.lw)
  %i.lx = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %.sroa.4.0.i.lcssa
  %i.ly = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %.promoted.i
  %i.lz = shl nuw nsw i64 %.pre-phi.i, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ly, ptr nonnull align 8 %i.lx, i64 %i.lz, i1 false), !noalias !2063
  br label %.body5.i.sink.split.i

.loopexit.i.i:                                    ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i29.i.i.i, %.lr.ph.i.i.i.i, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i41.i.i.i, %.lr.ph.i38.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1t_.exit.i.i.i, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINtB4_10SpecExtendBT_QINtNtB6_5drain5DrainBT_EE11spec_extendBX_.exit.i.i.i
  %i.ma = phi i64 [ %.val4.i.i.i.i.i.i.i.i.i, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINtB4_10SpecExtendBT_QINtNtB6_5drain5DrainBT_EE11spec_extendBX_.exit.i.i.i ], [ %i.ke, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1t_.exit.i.i.i ], [ %i.jp, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i41.i.i.i ], [ %i.jp, %.lr.ph.i38.i.i.i ], [ %i.il, %.lr.ph.i.i.i.i ], [ %i.il, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i29.i.i.i ] ; 5 uses
  %.sroa.20.3.i = phi i64 [ %i.s, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINtB4_10SpecExtendBT_QINtNtB6_5drain5DrainBT_EE11spec_extendBX_.exit.i.i.i ], [ %.sroa.20.2.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1t_.exit.i.i.i ], [ %i.jk, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i41.i.i.i ], [ %i.jk, %.lr.ph.i38.i.i.i ], [ %.sroa.4.0.i.lcssa, %.lr.ph.i.i.i.i ], [ %.sroa.4.0.i.lcssa, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i29.i.i.i ] ; 2 uses
  %i.mb = phi ptr [ %i.ik, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINtB4_10SpecExtendBT_QINtNtB6_5drain5DrainBT_EE11spec_extendBX_.exit.i.i.i ], [ %.sroa.34.4.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1t_.exit.i.i.i ], [ %i.js, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i41.i.i.i ], [ %i.bn, %.lr.ph.i38.i.i.i ], [ %i.io, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_.exit.i29.i.i.i ], [ %i.bn, %.lr.ph.i.i.i.i ] ; 2 uses
  br i1 %i.hy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1m_.exit.i.i, label %bb.cg

bb.cg:                                            ; preds = %.loopexit.i.i
  %i.mc = icmp ult i64 %i.ma, 288230376151711744
  tail call void @llvm.assume(i1 %i.mc)
  %.not3.i.i.i.i.i.i = icmp eq i64 %.sroa.20.3.i, %i.ma
  br i1 %.not3.i.i.i.i.i.i, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.ci, %bb.cg
  %i.md = add i64 %i.ma, %.pre-phi.i              ; 2 uses
  store i64 %i.md, ptr %i.r, align 8, !alias.scope !1832, !noalias !2064
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1m_.exit.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.me = load ptr, ptr %i.v, align 8, !alias.scope !1832, !noalias !2064, !nonnull !4, !noundef !4 ; 2 uses
  %i.mf = getelementptr inbounds nuw [32 x i8], ptr %i.me, i64 %.sroa.20.3.i
  %i.mg = getelementptr inbounds nuw [32 x i8], ptr %i.me, i64 %i.ma
  %i.mh = shl nuw nsw i64 %.pre-phi.i, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mg, ptr nonnull align 8 %i.mf, i64 %i.mh, i1 false), !noalias !2069
  br label %bb.ch

.body5.i.sink.split.i:                            ; preds = %bb.cf, %bb.ca, %bb.bz
  %.promoted.sink.i = phi i64 [ %.promoted.i, %bb.cf ], [ %i.ld, %bb.ca ], [ %.sroa.20.0208.i, %bb.bz ]
  %eh.lpad-body.i209.ph.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %bb.cf ], [ %eh.lpad-body.i210.i, %bb.ca ], [ %eh.lpad-body.i210.i, %bb.bz ]
  %.sroa.34.0206.ph.i = phi ptr [ %i.bi, %bb.cf ], [ %.sroa.34.0207.i, %bb.ca ], [ %.sroa.34.0207.i, %bb.bz ]
  %i.mi = add i64 %.promoted.sink.i, %.pre-phi.i
  store i64 %i.mi, ptr %i.r, align 8, !alias.scope !1832, !noalias !2058
  br label %.body5.i.i

.body5.i.i:                                       ; preds = %.body5.i.sink.split.i, %bb.ce, %.body.i.thread.i
  %eh.lpad-body.i209.i = phi { ptr, i32 } [ %eh.lpad-body.i210.i, %.body.i.thread.i ], [ %lpad.loopexit.i.i, %bb.ce ], [ %eh.lpad-body.i209.ph.i, %.body5.i.sink.split.i ] ; 4 uses
  %.sroa.34.0206.i = phi ptr [ %.sroa.34.0207.i, %.body.i.thread.i ], [ %i.bi, %bb.ce ], [ %.sroa.34.0206.ph.i, %.body5.i.sink.split.i ] ; 2 uses
  %i.mj = icmp eq ptr %i.bn, %.sroa.34.0206.i
  br i1 %i.mj, label %bb.cj, label %bb.cq

bb.cj:                                            ; preds = %.body5.i.i
  %.not.i.i.i.i143.i = icmp eq i64 %i.n, %.sroa.6.0.i.lcssa
  br i1 %.not.i.i.i.i143.i, label %.body.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.mk = icmp ult i64 %.sroa.0163.0.lcssa.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.mk)
  br i1 %i.bo, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.cm, %bb.ck
  %i.ml = add nsw i64 %i.ht, %.sroa.0163.0.lcssa.i
  br label %.body.i

bb.cm:                                            ; preds = %bb.ck
  %i.mm = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.6.0.i.lcssa
  %i.mn = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.0163.0.lcssa.i
  %i.mo = shl nuw nsw i64 %i.ht, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mn, ptr nonnull align 8 %i.mm, i64 %i.mo, i1 false), !noalias !2070
  br label %bb.cl

bb.cn:                                            ; preds = %bb.cq
  %i.mp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.not.i.i153.i = icmp eq i64 %i.n, %.sroa.6.0.i.lcssa
  br i1 %.not.i.i153.i, label %.body144.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.mq = icmp ult i64 %.sroa.0163.0.lcssa.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.mq)
  br i1 %i.bo, label %.body144.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.mr = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.6.0.i.lcssa
  %i.ms = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.0163.0.lcssa.i
  %i.mt = shl nuw nsw i64 %i.ht, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ms, ptr nonnull align 8 %i.mr, i64 %i.mt, i1 false), !noalias !1850
  br label %.body144.i

bb.cq:                                            ; preds = %.body5.i.i
  %i.mu = ptrtoint ptr %.sroa.34.0206.i to i64    ; 2 uses
  %i.mv = ptrtoint ptr %i.bn to i64
  %i.mw = sub nuw i64 %i.mv, %i.mu
  %i.mx = lshr exact i64 %i.mw, 5
  %i.my = ptrtoint ptr %i.u to i64
  %i.mz = sub nuw i64 %i.mu, %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.mz
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %i.na, i64 noundef %i.mx)
          to label %bb.cr unwind label %bb.cn, !noalias !2070

bb.cr:                                            ; preds = %bb.cq
  %.not.i.i4.i.i.i = icmp eq i64 %i.n, %.sroa.6.0.i.lcssa
  br i1 %.not.i.i4.i.i.i, label %.body.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.nb = icmp ult i64 %.sroa.0163.0.lcssa.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.nb)
  br i1 %i.bo, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cu, %bb.cs
  %i.nc = add nsw i64 %i.ht, %.sroa.0163.0.lcssa.i
  br label %.body.i

bb.cu:                                            ; preds = %bb.cs
  %i.nd = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.6.0.i.lcssa
  %i.ne = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.0163.0.lcssa.i
  %i.nf = shl nuw nsw i64 %i.ht, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ne, ptr nonnull align 8 %i.nd, i64 %i.nf, i1 false), !noalias !2070
  br label %bb.ct

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1m_.exit.i.i: ; preds = %bb.ch, %.loopexit.i.i
  %i.ng = phi i64 [ %i.md, %bb.ch ], [ %i.ma, %.loopexit.i.i ] ; 3 uses
  %i.nh = icmp eq ptr %i.bn, %i.mb
  br i1 %i.nh, label %bb.cv, label %bb.db

bb.cv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1m_.exit.i.i
  %.not.i.i.i.i9.i.i = icmp eq i64 %i.n, %.sroa.6.0.i.lcssa
  br i1 %.not.i.i.i.i9.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ni = icmp ult i64 %.sroa.0163.0.lcssa.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.ni)
  br i1 %i.bo, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.sink.split.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.sink.split.i.sink.split

bb.cx:                                            ; preds = %bb.db
  %i.nj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i141.i = icmp eq i64 %i.n, %.sroa.6.0.i.lcssa
  br i1 %.not.i.i141.i, label %.body.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.nk = icmp ult i64 %.sroa.0163.0.lcssa.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.nk)
  br i1 %i.bo, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.da, %bb.cy
  %i.nl = add nsw i64 %i.ht, %.sroa.0163.0.lcssa.i
  br label %.body.i

bb.da:                                            ; preds = %bb.cy
  %i.nm = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.6.0.i.lcssa
  %i.nn = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.0163.0.lcssa.i
  %i.no = shl nuw nsw i64 %i.ht, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nn, ptr nonnull align 8 %i.nm, i64 %i.no, i1 false), !noalias !1850
  br label %bb.cz

bb.db:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1m_.exit.i.i
  %i.np = ptrtoint ptr %i.mb to i64               ; 2 uses
  %i.nq = ptrtoint ptr %i.bn to i64
  %i.nr = sub nuw i64 %i.nq, %i.np
  %i.ns = lshr exact i64 %i.nr, 5
  %i.nt = ptrtoint ptr %i.u to i64
  %i.nu = sub nuw i64 %i.np, %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.nu
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %i.nv, i64 noundef %i.ns)
          to label %bb.dc unwind label %bb.cx, !noalias !2075

bb.dc:                                            ; preds = %bb.db
  %.not.i.i4.i.i7.i.i = icmp eq i64 %i.n, %.sroa.6.0.i.lcssa
  br i1 %.not.i.i4.i.i7.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.nw = icmp ult i64 %.sroa.0163.0.lcssa.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.nw)
  br i1 %i.bo, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.sink.split.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.sink.split.i.sink.split

.body144.i:                                       ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cc, %bb.cb
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !1944
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.sink.split.i.sink.split: ; preds = %bb.dd, %bb.cw
  %i.nx = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.6.0.i.lcssa
  %i.ny = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.0163.0.lcssa.i
  %i.nz = shl nuw nsw i64 %i.ht, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ny, ptr nonnull align 8 %i.nx, i64 %i.nz, i1 false), !noalias !2075
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.sink.split.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.sink.split.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.sink.split.i.sink.split, %bb.dd, %bb.cw
  %i.oa = add nsw i64 %i.ht, %.sroa.0163.0.lcssa.i
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.sink.split.i, %bb.dc, %bb.cv
  %.sroa.14.1 = phi i64 [ %.sroa.0163.0.lcssa.i, %bb.cv ], [ %i.oa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.sink.split.i ], [ %.sroa.0163.0.lcssa.i, %bb.dc ] ; 2 uses
  %.sroa.028.0.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.lcssa, i64 %.sroa.0163.0.lcssa.i)
  %i.ob = add i64 %.sroa.028.0.i, %.promoted.i    ; 2 uses
  %i.oc = icmp ult i64 %i.ng, 288230376151711744
  tail call void @llvm.assume(i1 %i.oc)
  %i.od = sub i64 %i.ng, %i.ob                    ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.of = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.og = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.de

bb.de:                                            ; preds = %bb.dn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.i
  %.pre348.pre.i = phi i64 [ %i.ng, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.i ], [ %.pre348.pre.pre.i, %bb.dn ] ; 2 uses
  %.sroa.021.0.i = phi i64 [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.i ], [ %..i133.i, %bb.dn ] ; 4 uses
  %.sroa.018.0.i = phi i64 [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.i ], [ %..i.i, %bb.dn ] ; 4 uses
  %i.oh = sub i64 %.promoted.i, %.sroa.018.0.i    ; 2 uses
  %i.oi = add i64 %.sroa.021.0.i, %i.ob           ; 3 uses
  %i.oj = icmp eq i64 %.promoted.i, %.sroa.018.0.i ; 2 uses
  br i1 %i.oj, label %.thread211.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ok = add i64 %i.oh, -1                       ; 2 uses
  %i.ol = icmp ult i64 %i.ok, %.pre348.pre.i
  br i1 %i.ol, label %bb.dg, label %.thread211.i

.thread211.i:                                     ; preds = %bb.df, %bb.de
  %i.om = load i64, ptr %i.i, align 8, !range !593, !alias.scope !1835, !noalias !1839, !noundef !4
  %i.on = and i64 %i.om, 281474976710655
  %i.oo = add nuw nsw i64 %i.on, 1
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens_0EBN_.exit.i

bb.dg:                                            ; preds = %bb.df
  %i.op = load ptr, ptr %i.v, align 8, !alias.scope !1832, !noalias !1841, !nonnull !4, !noundef !4
  %i.oq = getelementptr inbounds nuw [32 x i8], ptr %i.op, i64 %i.ok ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2083)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dj, %bb.dg
  %.sroa.01.0.i.i.i = phi ptr [ %i.oq, %bb.dg ], [ %i.oy, %bb.dj ] ; 3 uses
  %i.or = load i8, ptr %.sroa.01.0.i.i.i, align 8, !range !592, !noalias !1850, !noundef !4
  switch i8 %i.or, label %default.unreachable [
    i8 0, label %bb.dk
    i8 1, label %bb.di
    i8 2, label %bb.dk
    i8 3, label %bb.dj
  ]

bb.di:                                            ; preds = %bb.dh
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 8
  %i.ot = load ptr, ptr %i.os, align 8, !noalias !1850, !nonnull !4, !noundef !4
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 56
  %i.ov = load i64, ptr %i.ou, align 8, !noalias !2086, !noundef !4
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens_0EBN_.exit.i

bb.dj:                                            ; preds = %bb.dh
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 8
  %i.ox = load ptr, ptr %i.ow, align 8, !noalias !1850, !nonnull !4, !noundef !4
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  br label %bb.dh

bb.dk:                                            ; preds = %bb.dh, %bb.dh
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  %i.pa = load i64, ptr %i.oz, align 8, !range !593, !alias.scope !2087, !noalias !1850, !noundef !4
  %i.pb = and i64 %i.pa, 281474976710655
  %i.pc = add nuw nsw i64 %i.pb, 1
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens_0EBN_.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens_0EBN_.exit.i: ; preds = %bb.dk, %bb.di, %.thread211.i
  %.sroa.02.0.i128.i = phi i64 [ %i.oo, %.thread211.i ], [ %i.pc, %bb.dk ], [ %i.ov, %bb.di ]
  %.not219.i = icmp ult i64 %i.oi, %.pre348.pre.i
  %i.pd = load i64, ptr %i.oe, align 8, !alias.scope !1832, !noalias !1841, !noundef !4
  br i1 %.not219.i, label %bb.dl, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens0_0EBN_.exit.i

bb.dl:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens_0EBN_.exit.i
  %i.pe = load ptr, ptr %i.v, align 8, !alias.scope !1832, !noalias !1841, !nonnull !4
  %i.pf = getelementptr inbounds nuw [32 x i8], ptr %i.pe, i64 %i.oi
  %i.pg = getelementptr i8, ptr %i.pf, i64 24
  %.val.i131.i = load i64, ptr %i.pg, align 8, !range !593, !alias.scope !2088, !noalias !1850, !noundef !4
  %i.ph = and i64 %.val.i131.i, 281474976710655
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens0_0EBN_.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens0_0EBN_.exit.i: ; preds = %bb.dl, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens_0EBN_.exit.i
  %.sroa.02.0.i132.i = phi i64 [ %i.ph, %bb.dl ], [ %i.pd, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens_0EBN_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1850
  store i64 %i.oh, ptr %i.of, align 8, !noalias !1850
  store i64 %i.oi, ptr %i.og, align 8, !noalias !1850
  store i64 1, ptr %i.c, align 8, !noalias !1850
  %i.pi = invoke fastcc noundef zeroext i1 @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_9InnerNode9numberize(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i, i16 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %.sroa.02.0.i128.i, i64 noundef %.sroa.02.0.i132.i)
          to label %bb.dm unwind label %.loopexit.i, !noalias !1837 ; 3 uses

bb.dm:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens0_0EBN_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1850
  %.not214.i = xor i1 %i.pi, true
  %i.pj = icmp eq i64 %.sroa.021.0.i, %i.od
  %or.cond2.i = select i1 %i.oj, i1 %i.pj, i1 false
  %or.cond215.i = select i1 %.not214.i, i1 true, i1 %or.cond2.i
  br i1 %or.cond215.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.pk = add i64 %.sroa.018.0.i, 1
  %i.pl = icmp ult i64 %i.pk, 2
  %i.pm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.018.0.i, i1 true)
  %i.pn = lshr i64 -1, %i.pm
  %i.po = add i64 %i.pn, 1
  %.sroa.033.0.i = select i1 %i.pl, i64 1, i64 %i.po
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.promoted.i, i64 %.sroa.033.0.i)
  %i.pp = add i64 %.sroa.021.0.i, 1
  %i.pq = icmp ult i64 %i.pp, 2
  %i.pr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.021.0.i, i1 true)
  %i.ps = lshr i64 -1, %i.pr
  %i.pt = add i64 %i.ps, 1
  %.sroa.034.0.i = select i1 %i.pq, i64 1, i64 %i.pt
  %..i133.i = tail call noundef i64 @llvm.umin.i64(i64 %i.od, i64 %.sroa.034.0.i)
  %.pre348.pre.pre.i = load i64, ptr %i.r, align 8, !alias.scope !1832, !noalias !1841
  br label %bb.de

bb.do:                                            ; preds = %bb.dm
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %i.u, i64 noundef %.sroa.14.1)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i136.i unwind label %bb.dp, !noalias !2091, !inline_history !1244

bb.dp:                                            ; preds = %bb.do
  %i.pu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pv = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.pv, label %common.resume, label %common.resume.sink.split

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i136.i: ; preds = %bb.do
  %i.pw = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.pw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit.sink.split

bb.dq:                                            ; preds = %bb.dr
  %i.px = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body12

.body12:                                          ; preds = %bb.m, %bb.n, %bb.dq
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !1850
  unreachable

bb.dr:                                            ; preds = %.invoke482.i
  %i.py = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %3) #59
          to label %common.resume unwind label %bb.dq, !noalias !1840

bb.ds:                                            ; preds = %.noexc7, %.noexc7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2094)
  %i.pz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.qa = load ptr, ptr %i.pz, align 8, !alias.scope !2097, !nonnull !4, !noundef !4 ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.qc = load i64, ptr %i.qb, align 8, !alias.scope !2097, !noundef !4
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %i.qa, i64 noundef %i.qc)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i unwind label %bb.dt, !noalias !2094, !inline_history !1244

bb.dt:                                            ; preds = %bb.ds
  %i.qd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %3, align 8, !range !833, !alias.scope !2094, !noundef !4 ; 2 uses
  %i.qe = icmp eq i64 %.val2.i, 0
  br i1 %i.qe, label %common.resume, label %common.resume.sink.split

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i: ; preds = %bb.ds
  %.val.i = load i64, ptr %3, align 8, !range !833, !alias.scope !2094, !noundef !4 ; 2 uses
  %i.qf = icmp eq i64 %.val.i, 0
  br i1 %i.qf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit.sink.split

common.resume.sink.split:                         ; preds = %bb.dt, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i10, %bb.g, %bb.dp
  %.val2.i134.sink.i.sink = phi i64 [ %.sroa.0.0.copyload, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i10 ], [ %.val2.i.i, %bb.g ], [ %.sroa.0.0.copyload, %bb.dp ], [ %.val2.i, %bb.dt ]
  %.sink.i.sink = phi ptr [ %i.u, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i10 ], [ %i.z, %bb.g ], [ %i.u, %bb.dp ], [ %i.qa, %bb.dt ]
  %common.resume.op.ph = phi { ptr, i32 } [ %eh.lpad-body.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i10 ], [ %i.ac, %bb.g ], [ %i.pu, %bb.dp ], [ %i.qd, %bb.dt ]
  %i.qg = shl nuw i64 %.val2.i134.sink.i.sink, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink.i.sink, i64 noundef %i.qg, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !4
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.du, %bb.g, %bb.dp, %bb.dr, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i10, %bb.dt
  %common.resume.op = phi { ptr, i32 } [ %i.qd, %bb.dt ], [ %i.py, %bb.dr ], [ %lpad.phi, %bb.du ], [ %i.ac, %bb.g ], [ %i.pu, %bb.dp ], [ %eh.lpad-body.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i10 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit.sink.split: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i136.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i
  %.sroa.0.0.copyload.sink = phi i64 [ %.val.i.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i ], [ %.sroa.0.0.copyload, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i136.i ], [ %.val.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i ]
  %.sink = phi ptr [ %i.z, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i ], [ %i.u, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i136.i ], [ %i.qa, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i ]
  %.sroa.0.0.ph = phi i1 [ true, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i ], [ %i.pi, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i136.i ], [ false, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i ]
  %i.qh = shl nuw i64 %.sroa.0.0.copyload.sink, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef %i.qh, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !4
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit.sink.split, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i136.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i
  %.sroa.0.0 = phi i1 [ true, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i ], [ false, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i ], [ %i.pi, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i136.i ], [ %.sroa.0.0.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit.sink.split ]
  ret i1 %.sroa.0.0

.loopexit:                                        ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

.loopexit.split-lp:                               ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11expected_at:bb.a
bb.b:                                             ; preds = %bb.d, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #59
          to label %common.resume unwind label %bb.p

bb.c:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.d, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit, !prof !65

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @399) #62
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.65.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !5132)
  store i64 1, ptr %i.b, align 8, !noalias !5127
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.j, align 8, !noalias !5127
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.k, align 8, !noalias !5127
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.54.sroa.4.0..sroa.54.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store i64 -9223372036854775808, ptr %.sroa.54.sroa.4.0..sroa.54.0..sroa_idx.sroa_idx.i, align 8, !noalias !5127
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !5133
  %i.l = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !5133 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode5errorNtNtCsakL8LGkl72C_4ecow6string9EcoStringReEB7_.exit, !prof !65

bb.e:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #58
          to label %.noexc.i unwind label %bb.f, !noalias !5127

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(48) %i.k)
          to label %common.resume unwind label %bb.g, !noalias !5127

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !5127
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.l, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.n, %bb.f ], [ %i.i, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode5errorNtNtCsakL8LGkl72C_4ecow6string9EcoStringReEB7_.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !5127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5127
  store i8 2, ptr %i.e, align 8, !alias.scope !5132, !noalias !5136
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !5132, !noalias !5136
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.l, ptr %.sroa.51.0..sroa_idx.i, align 8, !alias.scope !5132, !noalias !5136
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %i.p, align 8, !alias.scope !5132, !noalias !5136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5137)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !5137, !noalias !5140, !noundef !4 ; 7 uses
  %i.t = icmp ult i64 %i.s, 288230376151711744
  call void @llvm.assume(i1 %i.t)
  %i.u = icmp ugt i64 %1, %i.s
  br i1 %i.u, label %bb.i, label %bb.h, !prof !65

bb.h:                                             ; preds = %_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode5errorNtNtCsakL8LGkl72C_4ecow6string9EcoStringReEB7_.exit
  %i.v = load i64, ptr %i.q, align 8, !range !833, !alias.scope !5137, !noalias !5140, !noundef !4
  %i.w = icmp eq i64 %i.s, %i.v
  br i1 %i.w, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode5errorNtNtCsakL8LGkl72C_4ecow6string9EcoStringReEB7_.exit
  invoke void @_RNvNvMs_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef %1, i64 noundef %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @400) #58
          to label %bb.n unwind label %bb.l, !noalias !5143

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.k unwind label %bb.l, !noalias !5140

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !5137, !noalias !5140, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %1 ; 3 uses
  %i.aa = icmp samesign ult i64 %1, %i.s
  br i1 %i.aa, label %bb.m, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE10insert_mutBI_.exit

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.e) #59
          to label %common.resume unwind label %bb.o, !noalias !5137

bb.m:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ad = sub nuw nsw i64 %i.s, %1
  %i.ae = shl nuw nsw i64 %i.ad, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.z, i64 %i.ae, i1 false), !noalias !5144
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE10insert_mutBI_.exit

bb.n:                                             ; preds = %bb.i
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !5143
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE10insert_mutBI_.exit: ; preds = %bb.k, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !5145
  %i.ag = add nuw nsw i64 %i.s, 1
  store i64 %i.ag, ptr %i.r, align 8, !alias.scope !5137, !noalias !5140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.p:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11trim_errors(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(272) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 8 uses
  %i.c = icmp ult i64 %i.b, 288230376151711744
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 10 uses
  %i.f = sub i64 %i.b, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4 ; 3 uses
  %.first_iter = icmp ugt i64 %i.b, %i.e
  %.not44 = icmp eq i64 %i.f, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8is_empty.exit
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.045 = phi i64 [ %i.i, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %i.i = add i64 %.sroa.0.045, -1                 ; 5 uses
  br i1 %.first_iter, label %bb.l, label %bb.m

._crit_edge:                                      ; preds = %bb.b, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8is_empty.exit, %bb.l, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %i.f, %bb.a ], [ %i.i, %bb.b ], [ %.sroa.0.045, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8is_empty.exit ], [ %.sroa.0.045, %bb.l ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5146)
  %i.j = icmp ugt i64 %i.e, %i.b
  br i1 %i.j, label %bb.c, label %bb.d, !prof !65

bb.c:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.f, i64 noundef range(i64 0, -9223372036854775808) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @544) #62, !noalias !5149
  unreachable

bb.d:                                             ; preds = %._crit_edge
  %i.k = icmp ugt i64 %.sroa.0.0.lcssa, %i.f
  br i1 %i.k, label %bb.e, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEBJ_.exit, !prof !65

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.lcssa, i64 noundef %i.f, i64 noundef range(i64 0, -9223372036854775808) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @545) #62, !noalias !5149
  unreachable

_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEBJ_.exit: ; preds = %bb.d
  store i64 %.sroa.0.0.lcssa, ptr %i.a, align 8, !alias.scope !5146, !noalias !5153
  %.idx15 = shl nuw nsw i64 %.sroa.0.0.lcssa, 5
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx15 ; 3 uses
  %.idx = shl nuw nsw i64 %i.f, 5
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx ; 2 uses
  %i.n = icmp samesign eq i64 %i.f, %.sroa.0.0.lcssa
  br i1 %i.n, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEBJ_.exit
  %.not.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1m_.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1m_.exit.sink.split

bb.g:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.not.i.i8 = icmp eq i64 %i.e, 0
  br i1 %.not.i.i8, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtNtBO_5alloc6GlobalEEB2d_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl nuw nsw i64 %i.e, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.m, i64 %i.p, i1 false)
  %i.q = add nsw i64 %i.e, %.sroa.0.0.lcssa
  store i64 %i.q, ptr %i.a, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtNtBO_5alloc6GlobalEEB2d_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtNtBO_5alloc6GlobalEEB2d_.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.o

bb.i:                                             ; preds = %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEBJ_.exit
  %i.r = sub nuw nsw i64 %i.f, %.sroa.0.0.lcssa
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %i.l, i64 noundef %i.r)
          to label %bb.j unwind label %bb.g, !noalias !5154

bb.j:                                             ; preds = %bb.i
  %.not.i.i4.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i4.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1m_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = shl nuw nsw i64 %i.e, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.m, i64 %i.s, i1 false), !noalias !5154
  %i.t = add nsw i64 %i.e, %.sroa.0.0.lcssa
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1m_.exit.sink.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1m_.exit.sink.split: ; preds = %bb.f, %bb.k
  %.sink = phi i64 [ %i.t, %bb.k ], [ %i.b, %bb.f ]
  store i64 %.sink, ptr %i.a, align 8, !noalias !5154
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1m_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1m_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1m_.exit.sink.split, %bb.f, %bb.j
  ret void

bb.l:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %.sroa.05.0.in = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %.sroa.05.0 = load i8, ptr %.sroa.05.0.in, align 1, !range !51, !noundef !4
  %i.v = icmp eq i8 %.sroa.05.0, 1
  br i1 %i.v, label %.preheader, label %._crit_edge

bb.m:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @401) #62
  unreachable

.preheader:                                       ; preds = %bb.l, %bb.q
  %.sroa.04.0.i.i = phi ptr [ %i.aj, %bb.q ], [ %i.u, %bb.l ] ; 6 uses
  %i.w = load i8, ptr %.sroa.04.0.i.i, align 8, !range !592, !noundef !4
  switch i8 %i.w, label %default.unreachable [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
  ]

default.unreachable:                              ; preds = %.preheader
  unreachable

bb.n:                                             ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i, i64 23
  %i.y = load i8, ptr %i.x, align 1, !noundef !4  ; 2 uses
  %.not14.i.i = icmp sgt i8 %i.y, -1
  br i1 %.not14.i.i, label %bb.r, label %bb.s

bb.o:                                             ; preds = %.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !5159, !noundef !4
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8is_empty.exit

bb.p:                                             ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 47
  %i.ag = load i8, ptr %i.af, align 1, !noalias !5159, !noundef !4 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.ag, -1
  br i1 %.not.i.i, label %bb.t, label %bb.u

bb.q:                                             ; preds = %.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  br label %.preheader

bb.r:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !4
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8is_empty.exit

bb.s:                                             ; preds = %bb.n
  %i.am = and i8 %i.y, 127
  %i.an = zext nneg i8 %i.am to i64
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8is_empty.exit

bb.t:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !5159, !noundef !4
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8is_empty.exit

bb.u:                                             ; preds = %bb.p
  %i.aq = and i8 %i.ag, 127
  %i.ar = zext nneg i8 %i.aq to i64
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8is_empty.exit

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8is_empty.exit: ; preds = %bb.o, %bb.r, %bb.s, %bb.t, %bb.u
  %.sroa.0.1.i.i = phi i64 [ %i.al, %bb.r ], [ %i.ac, %bb.o ], [ %i.an, %bb.s ], [ %i.ar, %bb.u ], [ %i.ap, %bb.t ]
  %i.as = icmp eq i64 %.sroa.0.1.i.i, 0
  br i1 %i.as, label %bb.b, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17depth_check_error(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i128 noundef range(i128 0, 2) %1, i128 %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 10 uses
  %.val = load i64, ptr %i.f, align 8, !noundef !4 ; 3 uses
  %i.g = icmp ult i64 %.val, 288230376151711744
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !range !97, !alias.scope !5164, !noalias !5167, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !5164, !noalias !5167 ; 2 uses
  store i64 0, ptr %i.h, align 8, !alias.scope !5164, !noalias !5167
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.m = trunc nuw i128 %1 to i1
  %.val10.us.pre.i.i = load i8, ptr %i.l, align 8, !range !51, !alias.scope !5169, !noalias !5172 ; 2 uses
  br i1 %i.m, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.a, %.sink.split.i.i
  %.val10.us.i.i = phi i8 [ %.val11.us.i.i, %.sink.split.i.i ], [ %.val10.us.pre.i.i, %bb.a ] ; 2 uses
  %i.n = phi i64 [ %i.w, %.sink.split.i.i ], [ 0, %bb.a ] ; 3 uses
  %i.o = icmp sgt i8 %.val10.us.i.i, -1           ; 2 uses
  %i.p = zext nneg i8 %.val10.us.i.i to i128      ; 2 uses
  %i.q = lshr i128 1477743627730944, %i.p
  %i.r = trunc i128 %i.q to i1
  %.sroa.0.0.i.us.i.i = select i1 %i.o, i1 %i.r, i1 false
  br i1 %.sroa.0.0.i.us.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i
  %i.s = lshr i128 2955487255461888, %i.p
  %i.t = trunc i128 %i.s to i1
  %.sroa.0.0.i13.us.i.i = select i1 %i.o, i1 %i.t, i1 false
  br i1 %.sroa.0.0.i13.us.i.i, label %bb.c, label %.sink.split.i.i

bb.c:                                             ; preds = %bb.b
  %i.u = tail call i64 @llvm.usub.sat.i64(i64 %i.n, i64 1)
  br label %.sink.split.i.i

bb.d:                                             ; preds = %.split.us.i.i
  %i.v = tail call i64 @llvm.uadd.sat.i64(i64 %i.n, i64 1)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.c, %bb.d, %bb.b
  %i.w = phi i64 [ %i.n, %bb.b ], [ %i.v, %bb.d ], [ %i.u, %bb.c ] ; 2 uses
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0), !noalias !5172
  %.val11.us.i.i = load i8, ptr %i.l, align 8, !range !51, !alias.scope !5169, !noalias !5172, !noundef !4 ; 4 uses
  %i.x = icmp sgt i8 %.val11.us.i.i, -1
  %i.y = zext nneg i8 %.val11.us.i.i to i128
  %i.z = lshr i128 %2, %i.y
  %i.aa = trunc i128 %i.z to i1
  %.sroa.0.0.i14.us.i.i = select i1 %i.x, i1 %i.aa, i1 false
  %i.ab = icmp eq i64 %i.w, 0
  %brmerge.not.us.i.i = and i1 %i.ab, %.sroa.0.0.i14.us.i.i
  %i.ac = icmp eq i8 %.val11.us.i.i, 0
  %or.cond.i.i = or i1 %i.ac, %brmerge.not.us.i.i
  br i1 %or.cond.i.i, label %_RNCNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB7_6Parser17depth_check_error0B9_.exit.i, label %.split.us.i.i

.split.i.i:                                       ; preds = %bb.a, %.sink.split8.i.i
  %.val10.i.i = phi i8 [ %.val12.i.i, %.sink.split8.i.i ], [ %.val10.us.pre.i.i, %bb.a ] ; 2 uses
  %i.ad = phi i64 [ %i.am, %.sink.split8.i.i ], [ 0, %bb.a ] ; 3 uses
  %i.ae = icmp sgt i8 %.val10.i.i, -1             ; 2 uses
  %i.af = zext nneg i8 %.val10.i.i to i128        ; 2 uses
  %i.ag = lshr i128 1477743627730944, %i.af
  %i.ah = trunc i128 %i.ag to i1
  %.sroa.0.0.i.i.i = select i1 %i.ae, i1 %i.ah, i1 false
  br i1 %.sroa.0.0.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split.i.i
  %i.ai = lshr i128 2955487255461888, %i.af
  %i.aj = trunc i128 %i.ai to i1
  %.sroa.0.0.i13.i.i = select i1 %i.ae, i1 %i.aj, i1 false
  br i1 %.sroa.0.0.i13.i.i, label %bb.g, label %.sink.split8.i.i

bb.f:                                             ; preds = %.split.i.i
  %i.ak = tail call i64 @llvm.uadd.sat.i64(i64 %i.ad, i64 1)
  br label %.sink.split8.i.i

bb.g:                                             ; preds = %bb.e
  %i.al = tail call i64 @llvm.usub.sat.i64(i64 %i.ad, i64 1)
  br label %.sink.split8.i.i

.sink.split8.i.i:                                 ; preds = %bb.f, %bb.g, %bb.e
  %i.am = phi i64 [ %i.ad, %bb.e ], [ %i.al, %bb.g ], [ %i.ak, %bb.f ] ; 2 uses
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0), !noalias !5172
  %i.an = icmp eq i64 %i.am, 0
  %.val12.i.i = load i8, ptr %i.l, align 8, !range !51, !alias.scope !5169, !noalias !5172 ; 2 uses
  %i.ao = icmp eq i8 %.val12.i.i, 0
  %or.cond3.i.i = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %or.cond3.i.i, label %_RNCNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB7_6Parser17depth_check_error0B9_.exit.i, label %.split.i.i

_RNCNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB7_6Parser17depth_check_error0B9_.exit.i: ; preds = %.sink.split8.i.i, %.sink.split.i.i
  store i64 %i.i, ptr %i.h, align 8, !alias.scope !5164, !noalias !5167
  store i64 %i.k, ptr %i.j, align 8, !alias.scope !5164, !noalias !5167
  %i.ap = load i64, ptr %0, align 8, !range !128, !alias.scope !5164, !noalias !5167, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i, label %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvMs4_B6_BH_17depth_check_error0EB8_.exit, label %bb.h

bb.h:                                             ; preds = %_RNCNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB7_6Parser17depth_check_error0B9_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !5164, !noalias !5167
  %i.as = icmp eq i64 %i.i, 0
  br i1 %i.as, label %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvMs4_B6_BH_17depth_check_error0EB8_.exit, label %bb.i

.sink.split.i:                                    ; preds = %bb.n, %bb.k, %bb.j, %bb.i
  %.sink.i = phi i8 [ %switch.select8.i, %bb.j ], [ %.sroa.08.0.i, %bb.n ], [ 0, %bb.i ], [ 0, %bb.k ]
  store i8 %.sink.i, ptr %i.l, align 8, !alias.scope !5164, !noalias !5167
  br label %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvMs4_B6_BH_17depth_check_error0EB8_.exit

default.unreachable:                              ; preds = %bb.i
end_hunk_2
begin_hunk_3_@_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB4_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_range:bb.a
  %.sroa.0.1.i.i = phi i64 [ %.sroa.01.018.i.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB4_3ZipNtNtNtBa_3str4iter5BytesBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ], [ %..i.i.i, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkThhEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB30_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_range0NCINvMB2d_B2a_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipNtNtNtBg_3str4iter5BytesB5F_EB2T_EB1i_5count0E0E0B32_.exit.i.i.i ] ; 4 uses
  %i.l = icmp eq i64 %.sroa.0.1.i.i, %i.e
  %i.m = icmp eq i64 %.sroa.0.1.i.i, %3
  %or.cond = and i1 %i.l, %i.m
  br i1 %or.cond, label %bb.t, label %.preheader

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipNtNtNtBc_3str4iter5BytesB1r_ENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB21_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_range0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3M_5count0EB23_.exit.thread: ; preds = %bb.a
  %i.n = or i64 %i.e, %3
  %or.cond93 = icmp eq i64 %i.n, 0
  br i1 %or.cond93, label %bb.t, label %.loopexit

.preheader:                                       ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipNtNtNtBc_3str4iter5BytesB1r_ENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB21_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_range0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3M_5count0EB23_.exit
  %i.o = icmp eq i64 %.sroa.0.1.i.i, 0
  br i1 %i.o, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.sroa.0.081 = phi i64 [ %i.t, %bb.c ], [ %.sroa.0.1.i.i, %.preheader ] ; 8 uses
  %.not = icmp ult i64 %.sroa.0.081, %i.e         ; 2 uses
  br i1 %.not, label %bb.b, label %.split57

.split57:                                         ; preds = %.lr.ph
  %i.p = icmp eq i64 %.sroa.0.081, %i.e
  br i1 %i.p, label %bb.d, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.0.081
  %i.r = load i8, ptr %i.q, align 1, !noundef !4
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.split58, %.split57, %bb.e, %bb.b
  %i.t = add i64 %.sroa.0.081, -1                 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %.split57, %bb.b
  %.not29 = icmp ult i64 %.sroa.0.081, %3
  br i1 %.not29, label %bb.e, label %.split58

.split58:                                         ; preds = %bb.d
  %i.v = icmp eq i64 %.sroa.0.081, %3
  br i1 %i.v, label %bb.f, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.081
  %i.x = load i8, ptr %i.w, align 1, !noundef !4
  %i.y = icmp sgt i8 %i.x, -65
  br i1 %i.y, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e, %.split58
  %.sroa.0.081.lcssa = phi i64 [ %.sroa.0.081, %bb.e ], [ %3, %.split58 ] ; 10 uses
  br i1 %.not, label %bb.g, label %.split.i

.split.i:                                         ; preds = %bb.f
  %i.z = icmp eq i64 %.sroa.0.081.lcssa, %i.e
  br i1 %i.z, label %bb.h, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.0.081.lcssa
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !6162, !noundef !4
  %i.ac = icmp sgt i8 %i.ab, -65
  br i1 %i.ac, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.split.i, %bb.g
  %i.ad = sub nuw i64 %i.e, %.sroa.0.081.lcssa    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.0.081.lcssa ; 2 uses
  %.not.i34 = icmp ult i64 %.sroa.0.081.lcssa, %3
  br i1 %.not.i34, label %bb.i, label %.split.i35

.split.i35:                                       ; preds = %bb.h
  %i.af = icmp eq i64 %.sroa.0.081.lcssa, %3
  br i1 %i.af, label %.loopexit, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.081.lcssa
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !6165, !noundef !4
  %i.ai = icmp sgt i8 %i.ah, -65
  br i1 %i.ai, label %.loopexit, label %bb.l

bb.j:                                             ; preds = %bb.g, %.split.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, i64 noundef %.sroa.0.081.lcssa, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @429) #62
  unreachable

.loopexit:                                        ; preds = %bb.c, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipNtNtNtBc_3str4iter5BytesB1r_ENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB21_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_range0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3M_5count0EB23_.exit.thread, %.preheader, %.split.i35, %bb.i
  %.sroa.0.080 = phi i64 [ %.sroa.0.081.lcssa, %bb.i ], [ %3, %.split.i35 ], [ 0, %.preheader ], [ 0, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipNtNtNtBc_3str4iter5BytesB1r_ENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB21_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_range0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3M_5count0EB23_.exit.thread ], [ 0, %bb.c ] ; 3 uses
  %.pn76 = phi i64 [ %i.ad, %bb.i ], [ %i.ad, %.split.i35 ], [ %i.e, %.preheader ], [ %i.e, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipNtNtNtBc_3str4iter5BytesB1r_ENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB21_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_range0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3M_5count0EB23_.exit.thread ], [ %i.e, %bb.c ] ; 3 uses
  %i.aj = phi ptr [ %i.ae, %bb.i ], [ %i.ae, %.split.i35 ], [ %i.c, %.preheader ], [ %i.c, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipNtNtNtBc_3str4iter5BytesB1r_ENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB21_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_range0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3M_5count0EB23_.exit.thread ], [ %i.c, %bb.c ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.080
  %.not.i.i18.i.i.i = icmp samesign eq i64 %.pn76, 0
  br i1 %.not.i.i18.i.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevNtNtNtBc_3str4iter5BytesEB1r_ENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB2i_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_ranges_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B45_5count0EB2k_.exit.preheader, label %.lr.ph.i.i.i

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevNtNtNtBc_3str4iter5BytesEB1r_ENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB2i_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_ranges_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B45_5count0EB2k_.exit.preheader: ; preds = %bb.k, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3rev3RevNtNtNtBa_3str4iter5BytesEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkThhEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB30_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_ranges_0NCINvMB2d_B2a_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtBc_3rev3RevNtNtNtBg_3str4iter5BytesEB5H_EB2T_EB1i_5count0E0E0B32_.exit.i.i.i, %.loopexit
  %.sroa.011.0.ph = phi i64 [ 0, %.loopexit ], [ %gepdiff, %bb.k ], [ %.sroa.01.019.i.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3rev3RevNtNtNtBa_3str4iter5BytesEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ], [ %.pn76, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkThhEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB30_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_ranges_0NCINvMB2d_B2a_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtBc_3rev3RevNtNtNtBg_3str4iter5BytesEB5H_EB2T_EB1i_5count0E0E0B32_.exit.i.i.i ]
  br label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevNtNtNtBc_3str4iter5BytesEB1r_ENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB2i_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_ranges_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B45_5count0EB2k_.exit

.lr.ph.i.i.i:                                     ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pn76
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %gepdiff = sub nsw i64 %3, %.sroa.0.080
  br label %bb.k

bb.k:                                             ; preds = %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkThhEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB30_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_ranges_0NCINvMB2d_B2a_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtBc_3rev3RevNtNtNtBg_3str4iter5BytesEB5H_EB2T_EB1i_5count0E0E0B32_.exit.i.i.i, %.lr.ph.i.i.i
  %i.an = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %i.ar, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkThhEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB30_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_ranges_0NCINvMB2d_B2a_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtBc_3rev3RevNtNtNtBg_3str4iter5BytesEB5H_EB2T_EB1i_5count0E0E0B32_.exit.i.i.i ] ; 2 uses
  %.sroa.01.019.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.au, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkThhEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB30_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_ranges_0NCINvMB2d_B2a_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtBc_3rev3RevNtNtNtBg_3str4iter5BytesEB5H_EB2T_EB1i_5count0E0E0B32_.exit.i.i.i ] ; 2 uses
  %i.ao = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.ap, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkThhEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB30_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_ranges_0NCINvMB2d_B2a_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtBc_3rev3RevNtNtNtBg_3str4iter5BytesEB5H_EB2T_EB1i_5count0E0E0B32_.exit.i.i.i ]
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -1 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ak, %i.an
  br i1 %.not18.i.i.i.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevNtNtNtBc_3str4iter5BytesEB1r_ENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB2i_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_ranges_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B45_5count0EB2k_.exit.preheader, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3rev3RevNtNtNtBa_3str4iter5BytesEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3rev3RevNtNtNtBa_3str4iter5BytesEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i: ; preds = %bb.k
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !6168, !noundef !4
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 -1 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !noalias !6184, !noundef !4
  %i.at = icmp eq i8 %i.aq, %i.as
  br i1 %i.at, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkThhEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB30_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_ranges_0NCINvMB2d_B2a_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtBc_3rev3RevNtNtNtBg_3str4iter5BytesEB5H_EB2T_EB1i_5count0E0E0B32_.exit.i.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevNtNtNtBc_3str4iter5BytesEB1r_ENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB2i_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_ranges_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B45_5count0EB2k_.exit.preheader

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkThhEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB30_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_ranges_0NCINvMB2d_B2a_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtBc_3rev3RevNtNtNtBg_3str4iter5BytesEB5H_EB2T_EB1i_5count0E0E0B32_.exit.i.i.i: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3rev3RevNtNtNtBa_3str4iter5BytesEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  %i.au = add nuw i64 %.sroa.01.019.i.i.i, 1
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.ap
  br i1 %.not.i.i.i.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevNtNtNtBc_3str4iter5BytesEB1r_ENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB2i_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_ranges_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B45_5count0EB2k_.exit.preheader, label %bb.k

bb.l:                                             ; preds = %bb.i, %.split.i35
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %.sroa.0.081.lcssa, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @430) #62
  unreachable

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevNtNtNtBc_3str4iter5BytesEB1r_ENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB2i_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_ranges_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B45_5count0EB2k_.exit: ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevNtNtNtBc_3str4iter5BytesEB1r_ENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB2i_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_ranges_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B45_5count0EB2k_.exit.preheader, %bb.p
  %.sroa.011.0 = phi i64 [ %i.bd, %bb.p ], [ %.sroa.011.0.ph, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevNtNtNtBc_3str4iter5BytesEB1r_ENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB2i_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_ranges_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B45_5count0EB2k_.exit.preheader ] ; 8 uses
  %i.av = sub i64 %i.e, %.sroa.011.0              ; 2 uses
  %i.aw = icmp eq i64 %i.e, %.sroa.011.0
  br i1 %i.aw, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevNtNtNtBc_3str4iter5BytesEB1r_ENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB2i_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_ranges_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B45_5count0EB2k_.exit
  %.not32 = icmp ult i64 %i.av, %i.e
  br i1 %.not32, label %bb.o, label %.split

bb.n:                                             ; preds = %.split, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevNtNtNtBc_3str4iter5BytesEB1r_ENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB2i_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_ranges_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B45_5count0EB2k_.exit, %bb.o
  %i.ax = sub i64 %3, %.sroa.011.0                ; 2 uses
  %i.ay = icmp eq i64 %3, %.sroa.011.0
  br i1 %i.ay, label %bb.r, label %bb.q

.split:                                           ; preds = %bb.m
  %i.az = icmp eq i64 %.sroa.011.0, 0
  br i1 %i.az, label %bb.n, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.av
  %i.bb = load i8, ptr %i.ba, align 1, !noundef !4
  %i.bc = icmp sgt i8 %i.bb, -65
  br i1 %i.bc, label %bb.n, label %bb.p

bb.p:                                             ; preds = %.split71, %.split, %bb.s, %bb.o
  %i.bd = add i64 %.sroa.011.0, 1
  br label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevNtNtNtBc_3str4iter5BytesEB1r_ENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB2i_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_ranges_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B45_5count0EB2k_.exit

bb.q:                                             ; preds = %bb.n
  %.not33 = icmp ult i64 %i.ax, %3
  br i1 %.not33, label %bb.s, label %.split71

bb.r:                                             ; preds = %.split71, %bb.n, %bb.s
  %.sroa.011.0.lcssa = phi i64 [ 0, %.split71 ], [ %3, %bb.n ], [ %.sroa.011.0, %bb.s ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.080, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.011.0.lcssa, ptr %i.bf, align 8
  br label %bb.t

.split71:                                         ; preds = %bb.q
  %i.bg = icmp eq i64 %.sroa.011.0, 0
  br i1 %i.bg, label %bb.r, label %bb.p

bb.s:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 %i.ax
  %i.bi = load i8, ptr %i.bh, align 1, !noundef !4
  %i.bj = icmp sgt i8 %i.bi, -65
  br i1 %i.bj, label %bb.r, label %bb.p

bb.t:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipNtNtNtBc_3str4iter5BytesB1r_ENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB21_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_range0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3M_5count0EB23_.exit.thread, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipNtNtNtBc_3str4iter5BytesB1r_ENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB21_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_range0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3M_5count0EB23_.exit, %bb.r
  %storemerge = phi i64 [ 1, %bb.r ], [ 0, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipNtNtNtBc_3str4iter5BytesB1r_ENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB21_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_range0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3M_5count0EB23_.exit ], [ 0, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipNtNtNtBc_3str4iter5BytesB1r_ENCNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB21_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_range0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3M_5count0EB23_.exit.thread ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB4_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE4edit(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 10 uses
  %.val21 = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 14 uses
  %i.f = getelementptr i8, ptr %.val21, i64 56
  %.val5.i.i = load i64, ptr %i.f, align 8, !noundef !4 ; 3 uses
  %.not.i.i = icmp ugt i64 %1, %.val5.i.i
  br i1 %.not.i.i, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val21, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val21, i64 32 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 11 uses
  switch i64 %i.j, label %.lr.ph.i.i.i.i [
    i64 0, label %bb.d
    i64 1, label %._crit_edge.i.i.i.i
  ]

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.b
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.r, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.05.0.lcssa.i.i.i.i
  %.val14.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !6189, !noalias !6194, !noundef !4 ; 2 uses
  %i.l = icmp eq i64 %.val14.i.i.i.i, %1
  br i1 %i.l, label %bb.d, label %bb.c

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.sroa.01.017.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.05.016.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.m = lshr i64 %.sroa.01.017.i.i.i.i, 1        ; 2 uses
  %i.n = add nuw i64 %i.m, %.sroa.05.016.i.i.i.i  ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.j
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.n
  %.val12.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !6189, !noalias !6194, !noundef !4
  %i.q = icmp ugt i64 %.val12.i.i.i.i, %1
  %i.r = select i1 %i.q, i64 %.sroa.05.016.i.i.i.i, i64 %i.n, !unpredictable !4 ; 2 uses
  %i.s = sub i64 %.sroa.01.017.i.i.i.i, %i.m      ; 2 uses
  %i.t = icmp ugt i64 %i.s, 1
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.u = icmp ult i64 %.val14.i.i.i.i, %1
  %i.v = zext i1 %i.u to i64
  %i.w = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i.i, %i.v ; 2 uses
  %i.x = icmp ule i64 %i.w, %i.j
  tail call void @llvm.assume(i1 %i.x)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i, %bb.b
  %.sroa.4.0.i.i.i.i = phi i64 [ %i.j, %bb.b ], [ %i.w, %bb.c ], [ %.sroa.05.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ]
  %.sroa.0.0.i.i.i.i = phi i64 [ -1, %bb.b ], [ -1, %bb.c ], [ 0, %._crit_edge.i.i.i.i ]
  %.sroa.01.0.i.i = add nsw i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.i.i.i.i ; 2 uses
  %i.y = icmp ult i64 %.sroa.01.0.i.i, %i.j
  br i1 %i.y, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.01.0.i.i ; 2 uses
  %i.aa = getelementptr i8, ptr %.val21, i64 48
  %.val.i = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.ab = load i64, ptr %i.z, align 8, !noundef !4 ; 6 uses
  %i.ac = icmp ugt i64 %i.ab, %1
  br i1 %i.ac, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i64 %i.ab, %.val5.i.i
  br i1 %i.ad, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp eq i64 %i.ab, 0
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.af = icmp eq i64 %1, %.val5.i.i
  br i1 %i.af, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ab
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !6196, !noundef !4
  %i.ai = icmp sgt i8 %i.ah, -65
  br i1 %i.ai, label %bb.h, label %bb.n

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i: ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 %1
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !6196, !noundef !4
  %i.al = icmp sgt i8 %i.ak, -65
  br i1 %i.al, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i, label %bb.n

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i, %bb.h, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noundef !4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i, i64 %1 ; 4 uses
  %.not.i11.i.i.i = icmp eq i64 %1, %i.ab
  br i1 %.not.i11.i.i.i, label %.thread, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ab
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %.lr.ph.i.i.preheader.i
  %.sroa.0.013.i.i.i = phi i64 [ %i.bz, %bb.k ], [ 0, %.lr.ph.i.i.preheader.i ]
  %.sroa.0.0512.i.i.i = phi ptr [ %.sroa.0.1.ph.i.i.i, %bb.k ], [ %i.ap, %.lr.ph.i.i.preheader.i ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0512.i.i.i, i64 1 ; 3 uses
  %i.ar = load i8, ptr %.sroa.0.0512.i.i.i, align 1, !alias.scope !6199, !noalias !6202, !noundef !4 ; 5 uses
  %i.as = icmp sgt i8 %i.ar, -1
  br i1 %i.as, label %bb.j, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.at = and i8 %i.ar, 31
  %i.au = zext nneg i8 %i.at to i32               ; 3 uses
  %i.av = icmp ne ptr %i.aq, %i.ao
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0512.i.i.i, i64 2 ; 3 uses
  %i.ax = load i8, ptr %i.aq, align 1, !alias.scope !6199, !noalias !6202, !noundef !4
  %i.ay = shl nuw nsw i32 %i.au, 6
  %i.az = and i8 %i.ax, 63
  %i.ba = zext nneg i8 %i.az to i32               ; 2 uses
  %i.bb = or disjoint i32 %i.ay, %i.ba
  %i.bc = icmp samesign ugt i8 %i.ar, -33
  br i1 %i.bc, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.bd = zext nneg i8 %i.ar to i32
  br label %bb.k

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i
  %i.be = icmp ne ptr %i.aw, %i.ao
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0512.i.i.i, i64 3 ; 3 uses
  %i.bg = load i8, ptr %i.aw, align 1, !alias.scope !6199, !noalias !6202, !noundef !4
  %i.bh = shl nuw nsw i32 %i.ba, 6
  %i.bi = and i8 %i.bg, 63
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.bh, %i.bj            ; 2 uses
  %i.bl = shl nuw nsw i32 %i.au, 12
  %i.bm = or disjoint i32 %i.bk, %i.bl
  %i.bn = icmp samesign ugt i8 %i.ar, -17
  br i1 %i.bn, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i, label %bb.k

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i
  %i.bo = icmp ne ptr %i.bf, %i.ao
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0512.i.i.i, i64 4
  %i.bq = load i8, ptr %i.bf, align 1, !alias.scope !6199, !noalias !6202, !noundef !4
  %i.br = shl nuw nsw i32 %i.au, 18
  %i.bs = and i32 %i.br, 1835008
  %i.bt = shl nuw nsw i32 %i.bk, 6
  %i.bu = and i8 %i.bq, 63
  %i.bv = zext nneg i8 %i.bu to i32
  %i.bw = or disjoint i32 %i.bt, %i.bv
  %i.bx = or disjoint i32 %i.bw, %i.bs
  br label %bb.k

bb.k:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i, %bb.j, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i
  %.sroa.0.1.ph.i.i.i = phi ptr [ %i.aw, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i ], [ %i.bf, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i ], [ %i.bp, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i ], [ %i.aq, %bb.j ] ; 2 uses
  %spec.select.i.ph.i.i.i = phi i32 [ %i.bb, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i ], [ %i.bm, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i ], [ %i.bx, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i ], [ %i.bd, %bb.j ]
  %i.by = icmp samesign ult i32 %spec.select.i.ph.i.i.i, 65536
  %..i.i.i.i.i.i = select i1 %i.by, i64 1, i64 2
  %i.bz = add i64 %..i.i.i.i.i.i, %.sroa.0.013.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.1.ph.i.i.i, %i.ao
  br i1 %.not.i.i.i.i, label %bb.l, label %.lr.ph.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ca = add i64 %i.bz, %i.an
  br label %.thread

.thread:                                          ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i, %bb.l
  %i.cb = phi i64 [ %i.ca, %bb.l ], [ %i.an, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i ]
  switch i64 %i.j, label %.lr.ph.i.i.i23 [
    i64 0, label %bb.o
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i23, %.thread
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %.thread ], [ %i.cj, %.lr.ph.i.i.i23 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.05.0.lcssa.i.i.i
  %.val14.i.i.i = load i64, ptr %i.cc, align 8, !alias.scope !6207, !noalias !6212, !noundef !4 ; 2 uses
  %i.cd = icmp eq i64 %.val14.i.i.i, %1
  br i1 %i.cd, label %bb.o, label %bb.m

.lr.ph.i.i.i23:                                   ; preds = %.thread, %.lr.ph.i.i.i23
  %.sroa.01.017.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i23 ], [ %i.j, %.thread ] ; 2 uses
  %.sroa.05.016.i.i.i = phi i64 [ %i.cj, %.lr.ph.i.i.i23 ], [ 0, %.thread ] ; 2 uses
  %i.ce = lshr i64 %.sroa.01.017.i.i.i, 1         ; 2 uses
  %i.cf = add nuw i64 %i.ce, %.sroa.05.016.i.i.i  ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %i.j
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.cf
  %.val12.i.i.i = load i64, ptr %i.ch, align 8, !alias.scope !6207, !noalias !6212, !noundef !4
  %i.ci = icmp ugt i64 %.val12.i.i.i, %1
  %i.cj = select i1 %i.ci, i64 %.sroa.05.016.i.i.i, i64 %i.cf, !unpredictable !4 ; 2 uses
  %i.ck = sub i64 %.sroa.01.017.i.i.i, %i.ce      ; 2 uses
  %i.cl = icmp ugt i64 %i.ck, 1
  br i1 %i.cl, label %.lr.ph.i.i.i23, label %._crit_edge.i.i.i

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.cm = icmp ult i64 %.val14.i.i.i, %1
  %i.cn = zext i1 %i.cm to i64
  %i.co = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i, %i.cn ; 2 uses
  %i.cp = icmp ule i64 %i.co, %i.j
  tail call void @llvm.assume(i1 %i.cp)
  br label %bb.o

bb.n:                                             ; preds = %bb.d, %bb.i, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i, %bb.e, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #62
  unreachable

bb.o:                                             ; preds = %.thread, %._crit_edge.i.i.i, %bb.m
  %.sroa.4.0.i.i.i = phi i64 [ %i.j, %.thread ], [ %i.co, %bb.m ], [ %.sroa.05.0.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.0.0.i.i.i = phi i64 [ -1, %.thread ], [ -1, %bb.m ], [ 0, %._crit_edge.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6214)
  %i.cq = cmpxchg ptr %.val21, i64 1, i64 0 acquire monotonic, align 8, !noalias !6214
  %i.cr = extractvalue { i64, i1 } %i.cq, 1
  br i1 %i.cr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %.val21, i64 8 ; 2 uses
  %i.ct = load atomic i64, ptr %i.cs monotonic, align 8, !noalias !6214
  %i.cu = icmp eq i64 %i.ct, 1
  br i1 %i.cu, label %bb.aa, label %bb.ab

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6217)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6220
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6221)
  %i.cv = tail call { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 8, i64 noundef 48), !noalias !6224 ; 2 uses
  %i.cw = extractvalue { i64, i64 } %i.cv, 0      ; 3 uses
  %i.cx = extractvalue { i64, i64 } %i.cv, 1      ; 3 uses
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cz = inttoptr i64 %i.cw to ptr
  br label %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBa_6string6StringENtNtBa_5alloc6GlobalE3new0B11_.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !6224
  %i.da = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.cx, i64 noundef range(i64 1, -9223372036854775807) %i.cw) #60, !noalias !6224
  br label %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBa_6string6StringENtNtBa_5alloc6GlobalE3new0B11_.exit.i.i.i.i

_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBa_6string6StringENtNtBa_5alloc6GlobalE3new0B11_.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %i.cz, %bb.r ], [ %i.da, %bb.s ] ; 10 uses
  %i.db = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i.i, null
  br i1 %i.db, label %bb.t, label %_RNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB8_6string6StringENtNtB8_5alloc6GlobalE3newBZ_.exit.i.i, !prof !65

bb.t:                                             ; preds = %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBa_6string6StringENtNtBa_5alloc6GlobalE3new0B11_.exit.i.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef %i.cw, i64 noundef %i.cx) #58, !noalias !6224
  unreachable

_RNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB8_6string6StringENtNtB8_5alloc6GlobalE3newBZ_.exit.i.i: ; preds = %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBa_6string6StringENtNtBa_5alloc6GlobalE3new0B11_.exit.i.i.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !noalias !6224
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.dc, align 8, !noalias !6224
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.dd, align 8, !alias.scope !6221, !noalias !6220
  store i64 8, ptr %i.d, align 8, !alias.scope !6221, !noalias !6220
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 48, ptr %i.de, align 8, !alias.scope !6221, !noalias !6220
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 1, ptr %i.df, align 8, !alias.scope !6221, !noalias !6220
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6231)
  %.val2.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !6234, !noalias !6235, !nonnull !4, !noundef !4
  %.val3.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !6234, !noalias !6235, !noundef !4 ; 4 uses
  %i.dg = shl nuw i64 %.val3.i.i.i.i.i, 4         ; 4 uses
  %i.dh = icmp eq i64 %.val3.i.i.i.i.i, 0         ; 2 uses
  br i1 %i.dh, label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBJ_.exit.i.i.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB8_6string6StringENtNtB8_5alloc6GlobalE3newBZ_.exit.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !6237
  %i.di = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.dg, i64 noundef range(i64 1, 9) 8) #60, !noalias !6237 ; 3 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.dg) #58
          to label %.noexc.i.i unwind label %.body.thread8.i.i, !noalias !6220

.body.thread8.i.i:                                ; preds = %bb.u
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

.noexc.i.i:                                       ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.di, ptr nonnull readonly align 8 %.val2.i.i.i.i.i, i64 %i.dg, i1 false), !noalias !6245
  br label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBJ_.exit.i.i.i.i.i

_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBJ_.exit.i.i.i.i.i: ; preds = %bb.v, %_RNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB8_6string6StringENtNtB8_5alloc6GlobalE3newBZ_.exit.i.i
  %.sroa.6.0.i.i.i.i.i = phi ptr [ %i.di, %bb.v ], [ inttoptr (i64 8 to ptr), %_RNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB8_6string6StringENtNtB8_5alloc6GlobalE3newBZ_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6246
  %i.dl = getelementptr inbounds nuw i8, ptr %.val21, i64 40
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dl)
          to label %_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE17clone_from_ref_inBL_.exit.i unwind label %bb.w, !noalias !6235

bb.w:                                             ; preds = %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBJ_.exit.i.i.i.i.i
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.dh, label %.body.thread.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i.i.i.i.i, i64 noundef %i.dg, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !6235
  br label %.body.thread.i.i

common.resume:                                    ; preds = %.body.thread.i.i, %bb.ai, %bb.bb
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i93.i, %bb.bb ], [ %i.ee, %bb.ai ], [ %eh.lpad-body7.i.i, %.body.thread.i.i ]
  resume { ptr, i32 } %common.resume.op

.body.thread.i.i:                                 ; preds = %bb.x, %bb.w, %.body.thread8.i.i
  %eh.lpad-body7.i.i = phi { ptr, i32 } [ %i.dk, %.body.thread8.i.i ], [ %i.dm, %bb.x ], [ %i.dm, %bb.w ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBG_6string6StringENtNtBG_5alloc6GlobalEEB1r_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #59
          to label %common.resume unwind label %bb.y, !noalias !6214

bb.y:                                             ; preds = %.body.thread.i.i
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !6214
  unreachable

_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE17clone_from_ref_inBL_.exit.i: ; preds = %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBJ_.exit.i.i.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !6247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6246
  store i64 %.val3.i.i.i.i.i, ptr %i.do, align 8, !noalias !6247
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 24
  store ptr %.sroa.6.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !6247
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 32
  store i64 %.val3.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !6247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6220
  %i.dp = atomicrmw sub ptr %.val21, i64 1 release, align 8, !noalias !6248
  %i.dq = icmp eq i64 %i.dp, 1
  br i1 %i.dq, label %bb.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBG_6string6StringEEEB1e_.exit.i

bb.z:                                             ; preds = %_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE17clone_from_ref_inBL_.exit.i
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE9drop_slowBL_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %0) #57
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBG_6string6StringEEEB1e_.exit.i

bb.aa:                                            ; preds = %bb.p
  store atomic i64 1, ptr %.val21 release, align 8, !noalias !6214
  br label %_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE8make_mutBL_.exit

bb.ab:                                            ; preds = %bb.p
  %i.dr = invoke { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 8, i64 noundef 48)
          to label %.noexc.i unwind label %bb.ai, !noalias !6214 ; 2 uses

.noexc.i:                                         ; preds = %bb.ab
  %i.ds = extractvalue { i64, i64 } %i.dr, 0      ; 3 uses
  %i.dt = extractvalue { i64, i64 } %i.dr, 1      ; 3 uses
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.noexc.i
  %i.dv = inttoptr i64 %i.ds to ptr
  br label %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBa_6string6StringENtNtBa_5alloc6GlobalE3new0B11_.exit.i.i.i

bb.ad:                                            ; preds = %.noexc.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !6253
  %i.dw = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.dt, i64 noundef range(i64 1, -9223372036854775807) %i.ds) #60, !noalias !6253
  br label %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBa_6string6StringENtNtBa_5alloc6GlobalE3new0B11_.exit.i.i.i

_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBa_6string6StringENtNtBa_5alloc6GlobalE3new0B11_.exit.i.i.i: ; preds = %bb.ad, %bb.ac
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.dv, %bb.ac ], [ %i.dw, %bb.ad ] ; 8 uses
  %i.dx = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i, null
  br i1 %i.dx, label %bb.ae, label %bb.af, !prof !65

bb.ae:                                            ; preds = %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBa_6string6StringENtNtBa_5alloc6GlobalE3new0B11_.exit.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef %i.ds, i64 noundef %i.dt) #58
          to label %.noexc9.i unwind label %bb.ai, !noalias !6214

.noexc9.i:                                        ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBa_6string6StringENtNtBa_5alloc6GlobalE3new0B11_.exit.i.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !noalias !6253
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.dy, align 8, !noalias !6253
  %i.dz = getelementptr inbounds nuw i8, ptr %.val21, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ea, ptr noundef nonnull align 8 dereferenceable(48) %i.dz, i64 48, i1 false), !noalias !6214
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %0, align 8, !alias.scope !6214
  %i.eb = icmp eq ptr %.val21, inttoptr (i64 -1 to ptr)
  br i1 %i.eb, label %_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE8make_mutBL_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ec = atomicrmw sub ptr %i.cs, i64 1 release, align 8, !noalias !6214
  %i.ed = icmp eq i64 %i.ec, 1
  br i1 %i.ed, label %bb.ah, label %_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE8make_mutBL_.exit

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef 64, i64 noundef 8) #60, !noalias !6214
  br label %_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE8make_mutBL_.exit

bb.ai:                                            ; preds = %bb.ae, %bb.ab
  %i.ee = landingpad { ptr, i32 }
          cleanup
  store atomic i64 1, ptr %.val21 release, align 8, !noalias !6256
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBG_6string6StringEEEB1e_.exit.i: ; preds = %bb.z, %_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE17clone_from_ref_inBL_.exit.i
  store ptr %.sroa.0.0.i.i.i.i.i.i.i, ptr %0, align 8, !alias.scope !6214
  br label %_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE8make_mutBL_.exit

_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE8make_mutBL_.exit: ; preds = %bb.aa, %bb.af, %bb.ag, %bb.ah, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBG_6string6StringEEEB1e_.exit.i
  %i.ef = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %bb.af ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.ag ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.ah ], [ %.val21, %bb.aa ], [ %.sroa.0.0.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBG_6string6StringEEEB1e_.exit.i ] ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 40 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6264)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 56 ; 17 uses
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !6261, !noalias !6266, !noundef !4 ; 9 uses
  %i.ek = icmp sgt i64 %i.ej, -1
  tail call void @llvm.assume(i1 %i.ek)
  %i.el = icmp ugt i64 %2, %i.ej
  br i1 %i.el, label %bb.aj, label %bb.ak, !prof !65

bb.aj:                                            ; preds = %_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE8make_mutBL_.exit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @544) #62, !noalias !6268
  unreachable

bb.ak:                                            ; preds = %_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE8make_mutBL_.exit
  %i.em = icmp ugt i64 %1, %2
  br i1 %i.em, label %bb.al, label %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit.i, !prof !65

bb.al:                                            ; preds = %bb.ak
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %1, i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @545) #62, !noalias !6268
  unreachable

_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %bb.ak
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 48 ; 9 uses
  %i.eo = load ptr, ptr %i.en, align 8, !alias.scope !6261, !noalias !6266, !nonnull !4, !noundef !4 ; 7 uses
  %i.ep = icmp eq i64 %1, 0                       ; 2 uses
  br i1 %i.ep, label %.thread.i, label %bb.am

bb.am:                                            ; preds = %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit.i
  %.not.i24 = icmp samesign ult i64 %1, %i.ej
  br i1 %.not.i24, label %bb.an, label %.split18.i

.thread.i:                                        ; preds = %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit.i
  %i.eq = icmp eq i64 %2, 0
  br i1 %i.eq, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i, label %.split18.i

bb.an:                                            ; preds = %bb.am
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 %1
  %i.es = load i8, ptr %i.er, align 1, !noalias !6271, !noundef !4
  %i.et = icmp sgt i8 %i.es, -65
  br i1 %i.et, label %.split18.i, label %bb.ao, !prof !55

bb.ao:                                            ; preds = %bb.an
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 91 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #62, !noalias !6272
  unreachable

.split18.i:                                       ; preds = %bb.an, %.thread.i, %bb.am
  %.not6.i = icmp samesign ult i64 %2, %i.ej
  br i1 %.not6.i, label %bb.bf, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i

_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i: ; preds = %bb.bf, %.split18.i
  store i64 %1, ptr %i.ei, align 8, !alias.scope !6273, !noalias !6278
  %i.eu = sub nsw i64 %i.ej, %2                   ; 5 uses
  %.sroa.46.0.i = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 4 uses
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %bb.ap, label %bb.aq

_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i: ; preds = %.thread.i
  store i64 0, ptr %i.ei, align 8, !alias.scope !6281, !noalias !6286
  %.sroa.46.077.i = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 2 uses
  %i.ew = icmp eq i64 %i.ej, 0
  br i1 %i.ew, label %bb.ap, label %.loopexit.i.i.i

bb.ap:                                            ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  %.sroa.46.084.i = phi ptr [ %.sroa.46.077.i, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i ], [ %.sroa.46.0.i, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ] ; 2 uses
  %.sroa.46.084.i174 = ptrtoaddr ptr %.sroa.46.084.i to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6292)
  %i.ex = load i64, ptr %i.eh, align 8, !range !833, !alias.scope !6295, !noalias !6298, !noundef !4
  %i.ey = sub nsw i64 %i.ex, %1
  %i.ez = icmp ugt i64 %4, %i.ey
  br i1 %i.ez, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.thread.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i, !prof !65

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.thread.i: ; preds = %bb.ap
  tail call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eh, i64 noundef %1, i64 noundef %4, i64 noundef 1, i64 noundef 1), !noalias !6305
  %.pre.i.i.i.i.i = load i64, ptr %i.ei, align 8, !alias.scope !6306, !noalias !6298
  %.pre51.i = load ptr, ptr %i.en, align 8, !alias.scope !6306, !noalias !6298
  br label %iter.check

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i: ; preds = %bb.ap
  %.not9.i.i.i.i.i.i.i.i.i = icmp samesign eq i64 %4, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.i, label %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit, label %iter.check

iter.check:                                       ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.thread.i
  %i.fa = phi i64 [ %.pre.i.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.thread.i ], [ %1, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i ] ; 5 uses
  %i.fb = phi ptr [ %.pre51.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.thread.i ], [ %i.eo, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i ] ; 3 uses
  %i.fc = sub i64 %.sroa.46.084.i174, %i.a        ; 7 uses
  %min.iters.check176 = icmp ult i64 %i.fc, 8
  br i1 %min.iters.check176, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check177 = icmp ult i64 %i.fc, 32
  br i1 %min.iters.check177, label %vec.epilog.ph, label %vector.ph178

vector.ph178:                                     ; preds = %vector.main.loop.iter.check
  %i.fd = and i64 %i.fc, 24
  %n.vec179 = and i64 %i.fc, -32                  ; 5 uses
  %i.fe = add i64 %i.fa, %n.vec179                ; 2 uses
  %i.ff = getelementptr i8, ptr %3, i64 %n.vec179
  %i.fg = getelementptr i8, ptr %i.fb, i64 %i.fa
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph178
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next185, %vector.body180 ] ; 3 uses
  %next.gep182 = getelementptr i8, ptr %3, i64 %index181 ; 2 uses
  %i.fh = getelementptr i8, ptr %next.gep182, i64 16
  %wide.load183 = load <16 x i8>, ptr %next.gep182, align 1, !alias.scope !6264, !noalias !6307
  %wide.load184 = load <16 x i8>, ptr %i.fh, align 1, !alias.scope !6264, !noalias !6307
  %i.fi = getelementptr i8, ptr %i.fg, i64 %index181 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store <16 x i8> %wide.load183, ptr %i.fi, align 1, !noalias !6322
  store <16 x i8> %wide.load184, ptr %i.fj, align 1, !noalias !6322
  %index.next185 = add nuw i64 %index181, 32      ; 2 uses
  %i.fk = icmp eq i64 %index.next185, %n.vec179
  br i1 %i.fk, label %middle.block186, label %vector.body180, !llvm.loop !6329

middle.block186:                                  ; preds = %vector.body180
  %cmp.n = icmp eq i64 %i.fc, %n.vec179
  br i1 %cmp.n, label %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block186
  %min.epilog.iters.check = icmp eq i64 %i.fd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !6332

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec179, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec189 = and i64 %i.fc, -8                   ; 4 uses
  %i.fl = add i64 %i.fa, %n.vec189                ; 2 uses
  %i.fm = getelementptr i8, ptr %3, i64 %n.vec189
  %i.fn = getelementptr i8, ptr %i.fb, i64 %i.fa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index190 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next193, %vec.epilog.vector.body ] ; 3 uses
  %next.gep191 = getelementptr i8, ptr %3, i64 %index190
  %wide.load192 = load <8 x i8>, ptr %next.gep191, align 1, !alias.scope !6264, !noalias !6307
  %i.fo = getelementptr i8, ptr %i.fn, i64 %index190
  store <8 x i8> %wide.load192, ptr %i.fo, align 1, !noalias !6322
  %index.next193 = add nuw i64 %index190, 8       ; 2 uses
  %i.fp = icmp eq i64 %index.next193, %n.vec189
  br i1 %i.fp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6333

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n194 = icmp eq i64 %i.fc, %n.vec189
  br i1 %cmp.n194, label %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %i.fa, %iter.check ], [ %i.fe, %vec.epilog.iter.check ], [ %i.fl, %vec.epilog.middle.block ]
  %.ph197 = phi ptr [ %3, %iter.check ], [ %i.ff, %vec.epilog.iter.check ], [ %i.fm, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.fq = phi i64 [ %i.fv, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.fr = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph197, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1 ; 2 uses
  %i.ft = load i8, ptr %i.fr, align 1, !alias.scope !6264, !noalias !6307, !noundef !4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fq
  store i8 %i.ft, ptr %i.fu, align 1, !noalias !6322
  %i.fv = add i64 %i.fq, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fs, %.sroa.46.084.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !6334

bb.aq:                                            ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  %.not6.i.i.i.i = icmp samesign ult i64 %1, %2
  br i1 %.not6.i.i.i.i, label %.lr.ph.i.i.i.preheader.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.aq
  %.not.not.i.i.i29.i = icmp samesign eq i64 %4, 0
  br i1 %.not.not.i.i.i29.i, label %.loopexit.i.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.i.i.preheader.i
  %i.fw = xor i64 %1, -1
  %i.fx = add i64 %2, %i.fw
  %i.fy = add i64 %4, -1
  %i.fz = tail call i64 @llvm.umin.i64(i64 %i.fx, i64 %i.fy)
  %i.ga = add i64 %i.fz, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ga, 33
  br i1 %min.iters.check, label %.lr.ph.i.preheader208, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.gb = and i64 %i.ga, 31                       ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 0
  %i.gd = select i1 %i.gc, i64 32, i64 %i.gb
  %n.vec = sub i64 %i.ga, %i.gd                   ; 3 uses
  %i.ge = getelementptr i8, ptr %3, i64 %n.vec
  %i.gf = add i64 %1, %n.vec
  %i.gg = getelementptr i8, ptr %i.eo, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.gh = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !alias.scope !6264, !noalias !6335
  %wide.load144 = load <16 x i8>, ptr %i.gh, align 1, !alias.scope !6264, !noalias !6335
  %i.gi = getelementptr i8, ptr %i.gg, i64 %index ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store <16 x i8> %wide.load, ptr %i.gi, align 1, !noalias !6340
  store <16 x i8> %wide.load144, ptr %i.gj, align 1, !noalias !6340
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gk = icmp eq i64 %index.next, %n.vec
  br i1 %i.gk, label %.lr.ph.i.preheader208, label %vector.body, !llvm.loop !6341

.lr.ph.i.preheader208:                            ; preds = %vector.body, %.lr.ph.i.preheader
  %.ph209 = phi ptr [ %3, %.lr.ph.i.preheader ], [ %i.ge, %vector.body ]
  %.sroa.01.03.i.i.i30.i.ph = phi i64 [ %1, %.lr.ph.i.preheader ], [ %i.gf, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i.i.i.i25:                                 ; preds = %.lr.ph.i
  %.not.not.i.i.i.i = icmp eq ptr %i.gm, %.sroa.46.0.i
  br i1 %.not.not.i.i.i.i, label %.lr.ph.i.i.i..loopexit.i.loopexit20_crit_edge.i, label %.lr.ph.i, !llvm.loop !6342

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader208, %.lr.ph.i.i.i.i25
  %i.gl = phi ptr [ %i.gm, %.lr.ph.i.i.i.i25 ], [ %.ph209, %.lr.ph.i.preheader208 ] ; 2 uses
  %.sroa.01.03.i.i.i30.i = phi i64 [ %i.go, %.lr.ph.i.i.i.i25 ], [ %.sroa.01.03.i.i.i30.i.ph, %.lr.ph.i.preheader208 ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 1 ; 3 uses
  %i.gn = load i8, ptr %i.gl, align 1, !alias.scope !6264, !noalias !6335, !noundef !4
  %i.go = add i64 %.sroa.01.03.i.i.i30.i, 1       ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.sroa.01.03.i.i.i30.i
  store i8 %i.gn, ptr %i.gp, align 1, !noalias !6340
  %exitcond.not.i.i.i.i = icmp eq i64 %i.go, %2
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.loopexit.i, label %.lr.ph.i.i.i.i25

.loopexit.i.i.loopexit.i:                         ; preds = %.lr.ph.i
  store i64 %2, ptr %i.ei, align 8, !alias.scope !6261, !noalias !6343
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.i.loopexit.i, %bb.aq, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i
  %.sroa.33.07890.i = phi i64 [ %i.eu, %bb.aq ], [ %i.eu, %.loopexit.i.i.loopexit.i ], [ %i.ej, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i ] ; 9 uses
  %.sroa.46.08389.i = phi ptr [ %.sroa.46.0.i, %bb.aq ], [ %.sroa.46.0.i, %.loopexit.i.i.loopexit.i ], [ %.sroa.46.077.i, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i ] ; 5 uses
  %i.gq = phi i64 [ %1, %bb.aq ], [ %2, %.loopexit.i.i.loopexit.i ], [ 0, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i ] ; 2 uses
  %.val.i.i.i = phi ptr [ %3, %bb.aq ], [ %i.gm, %.loopexit.i.i.loopexit.i ], [ %3, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i ] ; 7 uses
  %i.gr = ptrtoint ptr %.sroa.46.08389.i to i64   ; 5 uses
  %i.gs = ptrtoint ptr %.val.i.i.i to i64         ; 6 uses
  %i.gt = sub nuw i64 %i.gr, %i.gs                ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.46.08389.i, %.val.i.i.i
  br i1 %.not.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i, label %bb.as

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i: ; preds = %.lr.ph36.i
  store i64 %i.hh, ptr %i.ei, align 8, !alias.scope !6261, !noalias !6344
  %.pre.i.i.i = ptrtoint ptr %i.if to i64         ; 2 uses
  %.pre11.i.i = sub nuw i64 %i.gr, %.pre.i.i.i
  br label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i: ; preds = %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i
  %.pre-phi.i.i = phi i64 [ %i.gt, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ], [ %.pre11.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i ] ; 3 uses
  %i.gu = phi i64 [ %.promoted33.i, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ], [ %i.hh, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i ]
  %.pre-phi.i.i.i = phi i64 [ %i.gs, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ], [ %.pre.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i ]
  %.val.i.i.i33.i.i.i = phi ptr [ %.val.i.i.i, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ], [ %i.if, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i ]
  %.not.i.i.i.i.i.i.i = icmp slt i64 %.pre-phi.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ar, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i, !prof !6347

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i: ; preds = %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i, %.loopexit.i.i.i
  %i.gv = phi ptr [ %i.hf, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ], [ %i.eo, %.loopexit.i.i.i ]
  %.sroa.26.1.i = phi i64 [ %i.hh, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ], [ %2, %.loopexit.i.i.i ] ; 8 uses
  %.val.i.i.i33.i41.i.i = phi ptr [ %.val.i.i.i33.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ], [ %.sroa.46.08389.i, %.loopexit.i.i.i ] ; 2 uses
  %.pre-phi.i40.i.i = phi i64 [ %.pre-phi.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ], [ %i.gs, %.loopexit.i.i.i ]
  %i.gw = phi i64 [ %i.gu, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ], [ %i.gq, %.loopexit.i.i.i ] ; 2 uses
  %.pre-phi38.i.i = phi i64 [ %.pre-phi.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ], [ 0, %.loopexit.i.i.i ] ; 11 uses
  %i.gx = icmp eq ptr %.sroa.46.08389.i, %.val.i.i.i33.i41.i.i
  br i1 %i.gx, label %.loopexit.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !6348
  %i.gy = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %.pre-phi38.i.i, i64 noundef range(i64 1, 9) 1) #60, !noalias !6348 ; 10 uses
  %i.gz = ptrtoaddr ptr %i.gy to i64
  %i.ha = icmp eq ptr %i.gy, null
  br i1 %i.ha, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i
  %.sroa.26.3.i = phi i64 [ %.sroa.26.1.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ %i.hh, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ]
  %.pre-phi39.i.i = phi i64 [ %.pre-phi38.i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ %.pre-phi.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ]
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ 0, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %.pre-phi39.i.i) #58
          to label %.noexc1.i.i unwind label %.split.i, !noalias !6357

.noexc1.i.i:                                      ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %.loopexit.i.i.i
  %i.hb = add i64 %.sroa.33.07890.i, %2           ; 2 uses
  %i.hc = load i64, ptr %i.eh, align 8, !range !833, !alias.scope !6261, !noalias !6358, !noundef !4
  %i.hd = sub i64 %i.hc, %i.hb
  %i.he = icmp ugt i64 %i.gt, %i.hd
  br i1 %i.he, label %bb.at, label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, !prof !65

bb.at:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eh, i64 noundef %i.hb, i64 noundef %i.gt, i64 noundef 1, i64 noundef 1)
          to label %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i_crit_edge.i unwind label %.split.i, !noalias !6361

._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i_crit_edge.i: ; preds = %bb.at
  %.pre.i = load ptr, ptr %i.en, align 8, !alias.scope !6261, !noalias !6358
  %.pre47.i = load i64, ptr %i.ei, align 8, !alias.scope !6261, !noalias !6344
  br label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i

_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i: ; preds = %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i_crit_edge.i, %bb.as
  %.promoted33.i = phi i64 [ %.pre47.i, %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i_crit_edge.i ], [ %i.gq, %bb.as ] ; 8 uses
  %i.hf = phi ptr [ %.pre.i, %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i_crit_edge.i ], [ %i.eo, %bb.as ] ; 6 uses
  %i.hg = ptrtoaddr ptr %i.hf to i64
  %i.hh = add i64 %i.gt, %2                       ; 8 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 %2
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hh
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hj, ptr nonnull align 1 %i.hi, i64 %.sroa.33.07890.i, i1 false), !noalias !6362
  %.not6.i35.i.i.i = icmp ult i64 %.promoted33.i, %i.hh
  br i1 %.not6.i35.i.i.i, label %.lr.ph36.i.preheader, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i

.lr.ph36.i.preheader:                             ; preds = %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  %i.hk = add i64 %2, %i.gr
  %i.hl = xor i64 %.promoted33.i, -1
  %i.hm = add i64 %i.hk, %i.hl
  %i.hn = sub i64 %i.hm, %i.gs
  %i.ho = xor i64 %i.gs, -1
  %i.hp = add i64 %i.ho, %i.gr
  %i.hq = tail call i64 @llvm.umin.i64(i64 %i.hn, i64 %i.hp)
  %i.hr = add i64 %i.hq, 1                        ; 3 uses
  %min.iters.check147 = icmp ult i64 %i.hr, 33
  br i1 %min.iters.check147, label %.lr.ph36.i.preheader202, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph36.i.preheader
  %i.hs = add i64 %.promoted33.i, %i.hg
  %i.ht = sub i64 %i.gs, %i.hs
  %diff.check = icmp ugt i64 %i.ht, -32
  br i1 %diff.check, label %.lr.ph36.i.preheader202, label %vector.ph148

vector.ph148:                                     ; preds = %vector.memcheck
  %i.hu = and i64 %i.hr, 31                       ; 2 uses
  %i.hv = icmp eq i64 %i.hu, 0
  %i.hw = select i1 %i.hv, i64 32, i64 %i.hu
  %n.vec149 = sub i64 %i.hr, %i.hw                ; 3 uses
  %i.hx = getelementptr i8, ptr %.val.i.i.i, i64 %n.vec149
  %i.hy = add i64 %.promoted33.i, %n.vec149
  %i.hz = getelementptr i8, ptr %i.hf, i64 %.promoted33.i
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph148
  %index151 = phi i64 [ 0, %vector.ph148 ], [ %index.next155, %vector.body150 ] ; 3 uses
  %next.gep152 = getelementptr i8, ptr %.val.i.i.i, i64 %index151 ; 2 uses
  %i.ia = getelementptr i8, ptr %next.gep152, i64 16
  %wide.load153 = load <16 x i8>, ptr %next.gep152, align 1, !alias.scope !6264, !noalias !6363
  %wide.load154 = load <16 x i8>, ptr %i.ia, align 1, !alias.scope !6264, !noalias !6363
  %i.ib = getelementptr i8, ptr %i.hz, i64 %index151 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  store <16 x i8> %wide.load153, ptr %i.ib, align 1, !noalias !6366
  store <16 x i8> %wide.load154, ptr %i.ic, align 1, !noalias !6366
  %index.next155 = add nuw i64 %index151, 32      ; 2 uses
  %i.id = icmp eq i64 %index.next155, %n.vec149
  br i1 %i.id, label %.lr.ph36.i.preheader202, label %vector.body150, !llvm.loop !6367

.lr.ph36.i.preheader202:                          ; preds = %vector.body150, %vector.memcheck, %.lr.ph36.i.preheader
  %.ph203 = phi ptr [ %.val.i.i.i, %vector.memcheck ], [ %.val.i.i.i, %.lr.ph36.i.preheader ], [ %i.hx, %vector.body150 ]
  %.sroa.01.03.i39.i.i35.i.ph = phi i64 [ %.promoted33.i, %vector.memcheck ], [ %.promoted33.i, %.lr.ph36.i.preheader ], [ %i.hy, %vector.body150 ]
  br label %.lr.ph36.i

.lr.ph.i37.i.i.i:                                 ; preds = %.lr.ph36.i
  %.not.not.i40.i.i.i = icmp eq ptr %i.if, %.sroa.46.08389.i
  br i1 %.not.not.i40.i.i.i, label %.loopexit.i.i.loopexit, label %.lr.ph36.i, !llvm.loop !6368

.lr.ph36.i:                                       ; preds = %.lr.ph36.i.preheader202, %.lr.ph.i37.i.i.i
  %i.ie = phi ptr [ %i.if, %.lr.ph.i37.i.i.i ], [ %.ph203, %.lr.ph36.i.preheader202 ] ; 2 uses
  %.sroa.01.03.i39.i.i35.i = phi i64 [ %i.ih, %.lr.ph.i37.i.i.i ], [ %.sroa.01.03.i39.i.i35.i.ph, %.lr.ph36.i.preheader202 ] ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 1 ; 4 uses
  %i.ig = load i8, ptr %i.ie, align 1, !alias.scope !6264, !noalias !6363, !noundef !4
  %i.ih = add i64 %.sroa.01.03.i39.i.i35.i, 1     ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hf, i64 %.sroa.01.03.i39.i.i35.i
  store i8 %i.ig, ptr %i.ii, align 1, !noalias !6366
  %exitcond.not.i41.i.i.i = icmp eq i64 %i.ih, %i.hh
  br i1 %exitcond.not.i41.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i, label %.lr.ph.i37.i.i.i

bb.au:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gy, ptr align 1 %.val.i.i.i33.i41.i.i, i64 %.pre-phi38.i.i, i1 false), !noalias !6369
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.pre-phi38.i.i
  %.not16.i.i.i = icmp eq i64 %.pre-phi.i40.i.i, %i.gr
  br i1 %.not16.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i, label %bb.av

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i: ; preds = %bb.ay, %.lr.ph.i47.i.i.i, %bb.ax, %bb.au
  %.pre.i.i = phi i64 [ %i.gw, %bb.au ], [ %i.iu, %bb.ax ], [ %i.jq, %.lr.ph.i47.i.i.i ], [ %i.ir, %bb.ay ]
  %i.ik = phi i64 [ %.sroa.26.1.i, %bb.au ], [ %i.ir, %bb.ax ], [ %i.ir, %.lr.ph.i47.i.i.i ], [ %i.ir, %bb.ay ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gy, i64 noundef %.pre-phi38.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #60, !noalias !6388
  br label %.loopexit.i.i

bb.av:                                            ; preds = %bb.au
  %i.il = add i64 %.sroa.26.1.i, %.sroa.33.07890.i ; 2 uses
  %i.im = load i64, ptr %i.eh, align 8, !range !833, !alias.scope !6261, !noalias !6391, !noundef !4
  %i.in = sub i64 %i.im, %i.il
  %i.io = icmp ugt i64 %.pre-phi38.i.i, %i.in
  br i1 %i.io, label %bb.aw, label %bb.ax, !prof !65

bb.aw:                                            ; preds = %bb.av
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eh, i64 noundef %i.il, i64 noundef %.pre-phi38.i.i, i64 noundef 1, i64 noundef 1)
          to label %._crit_edge.i unwind label %bb.az, !noalias !6394

._crit_edge.i:                                    ; preds = %bb.aw
  %.pre48.i = load ptr, ptr %i.en, align 8, !alias.scope !6261, !noalias !6391
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i, %bb.av
  %i.ip = phi ptr [ %.pre48.i, %._crit_edge.i ], [ %i.gv, %bb.av ] ; 5 uses
  %i.iq = ptrtoaddr ptr %i.ip to i64
  %i.ir = add i64 %.pre-phi38.i.i, %.sroa.26.1.i  ; 7 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 %.sroa.26.1.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.ir
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.it, ptr nonnull align 1 %i.is, i64 %.sroa.33.07890.i, i1 false), !noalias !6395
  %i.iu = load i64, ptr %i.ei, align 8, !alias.scope !6261, !noalias !6396, !noundef !4 ; 9 uses
  %.not6.i45.i.i.i = icmp ult i64 %i.iu, %i.ir
  br i1 %.not6.i45.i.i.i, label %.lr.ph.i47.i.i.i.preheader, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i

.lr.ph.i47.i.i.i.preheader:                       ; preds = %bb.ax
  %i.iv = add i64 %.pre-phi38.i.i, %.sroa.26.1.i
  %i.iw = xor i64 %i.iu, -1
  %i.ix = add i64 %i.iv, %i.iw
  %i.iy = tail call i64 @llvm.umin.i64(i64 %.pre-phi38.i.i, i64 %i.ix) ; 2 uses
  %i.iz = add nuw i64 %i.iy, 1                    ; 2 uses
  %min.iters.check162 = icmp samesign ult i64 %i.iy, 8
  br i1 %min.iters.check162, label %.lr.ph.i47.i.i.i.preheader198, label %vector.memcheck159

vector.memcheck159:                               ; preds = %.lr.ph.i47.i.i.i.preheader
  %i.ja = add i64 %i.iu, %i.iq
  %i.jb = sub i64 %i.gz, %i.ja
  %diff.check160 = icmp ugt i64 %i.jb, -4
  br i1 %diff.check160, label %.lr.ph.i47.i.i.i.preheader198, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck159
  %i.jc = and i64 %i.iz, 3                        ; 2 uses
  %i.jd = icmp eq i64 %i.jc, 0
  %i.je = select i1 %i.jd, i64 4, i64 %i.jc
  %n.vec164 = sub i64 %i.iz, %i.je                ; 3 uses
  %i.jf = add i64 %i.iu, %n.vec164
  %i.jg = getelementptr i8, ptr %i.gy, i64 %n.vec164
  %i.jh = add i64 %i.iu, 1
  %i.ji = getelementptr i8, ptr %i.ip, i64 %i.iu
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph163
  %index166 = phi i64 [ 0, %vector.ph163 ], [ %index.next170, %vector.body165 ] ; 3 uses
  %i.jj = phi i64 [ %i.jh, %vector.ph163 ], [ %i.jn, %vector.body165 ] ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.gy, i64 %index166 ; 2 uses
  %i.jk = getelementptr i8, ptr %next.gep167, i64 2
  %wide.load168 = load <2 x i8>, ptr %next.gep167, align 1, !noalias !6399
  %wide.load169 = load <2 x i8>, ptr %i.jk, align 1, !noalias !6399
  %i.jl = getelementptr i8, ptr %i.ji, i64 %index166 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 2
  store <2 x i8> %wide.load168, ptr %i.jl, align 1, !noalias !6402
  store <2 x i8> %wide.load169, ptr %i.jm, align 1, !noalias !6402
  %index.next170 = add nuw i64 %index166, 4       ; 2 uses
  %i.jn = add i64 %i.jj, 4
  %i.jo = icmp eq i64 %index.next170, %n.vec164
  br i1 %i.jo, label %middle.block171, label %vector.body165, !llvm.loop !6403

middle.block171:                                  ; preds = %vector.body165
  %i.jp = add i64 %i.jj, 3
  store i64 %i.jp, ptr %i.ei, align 8, !alias.scope !6261, !noalias !6396
  br label %.lr.ph.i47.i.i.i.preheader198

.lr.ph.i47.i.i.i.preheader198:                    ; preds = %vector.memcheck159, %.lr.ph.i47.i.i.i.preheader, %middle.block171
  %.ph199 = phi i64 [ %i.iu, %vector.memcheck159 ], [ %i.iu, %.lr.ph.i47.i.i.i.preheader ], [ %i.jf, %middle.block171 ]
  %.ph200 = phi ptr [ %i.gy, %vector.memcheck159 ], [ %i.gy, %.lr.ph.i47.i.i.i.preheader ], [ %i.jg, %middle.block171 ]
  br label %.lr.ph.i47.i.i.i

.lr.ph.i47.i.i.i:                                 ; preds = %.lr.ph.i47.i.i.i.preheader198, %bb.ay
  %i.jq = phi i64 [ %i.ju, %bb.ay ], [ %.ph199, %.lr.ph.i47.i.i.i.preheader198 ] ; 3 uses
  %i.jr = phi ptr [ %i.js, %bb.ay ], [ %.ph200, %.lr.ph.i47.i.i.i.preheader198 ] ; 3 uses
  %.not.not.i50.i.i.i = icmp eq ptr %i.jr, %i.ij
  br i1 %.not.not.i50.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i47.i.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 1
  %i.jt = load i8, ptr %i.jr, align 1, !noalias !6399, !noundef !4
  %i.ju = add i64 %i.jq, 1                        ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.jq
  store i8 %i.jt, ptr %i.jv, align 1, !noalias !6402
  store i64 %i.ju, ptr %i.ei, align 8, !alias.scope !6261, !noalias !6396
  %exitcond.not.i51.i.i.i = icmp eq i64 %i.ju, %i.ir
  br i1 %exitcond.not.i51.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i, label %.lr.ph.i47.i.i.i, !llvm.loop !6404

.split.i:                                         ; preds = %bb.at, %bb.ar
  %.sroa.26.4.i = phi i64 [ %2, %bb.at ], [ %.sroa.26.3.i, %bb.ar ]
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.aw
  %i.jx = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gy, i64 noundef %.pre-phi38.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #60, !noalias !6405
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.split.i
  %eh.lpad-body.i93.i = phi { ptr, i32 } [ %i.jw, %.split.i ], [ %i.jx, %bb.az ]
  %.sroa.26.292.i = phi i64 [ %.sroa.26.4.i, %.split.i ], [ %.sroa.26.1.i, %bb.az ] ; 2 uses
  %i.jy = load i64, ptr %i.ei, align 8, !alias.scope !6261, !noalias !6408, !noundef !4 ; 4 uses
  %i.jz = icmp sgt i64 %i.jy, -1
  tail call void @llvm.assume(i1 %i.jz)
  %.not3.i.i.i.i.i = icmp eq i64 %.sroa.26.292.i, %i.jy
  br i1 %.not3.i.i.i.i.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.bc, %bb.ba
  %i.ka = add i64 %i.jy, %.sroa.33.07890.i
  store i64 %i.ka, ptr %i.ei, align 8, !alias.scope !6261, !noalias !6408
  br label %common.resume

bb.bc:                                            ; preds = %bb.ba
  %i.kb = load ptr, ptr %i.en, align 8, !alias.scope !6261, !noalias !6408, !nonnull !4, !noundef !4 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 %.sroa.26.292.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.jy
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.kd, ptr nonnull align 1 %i.kc, i64 %.sroa.33.07890.i, i1 false), !noalias !6413
  br label %bb.bb

.lr.ph.i.i.i..loopexit.i.loopexit20_crit_edge.i:  ; preds = %.lr.ph.i.i.i.i25
  store i64 %i.go, ptr %i.ei, align 8, !alias.scope !6261, !noalias !6343
  br label %.loopexit.i.i

.loopexit.i.i.loopexit:                           ; preds = %.lr.ph.i37.i.i.i
  store i64 %i.ih, ptr %i.ei, align 8, !alias.scope !6261, !noalias !6344
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit, %.lr.ph.i.i.i..loopexit.i.loopexit20_crit_edge.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i, %.lr.ph.i.i.i.preheader.i
  %.sroa.33.079.i = phi i64 [ %i.eu, %.lr.ph.i.i.i..loopexit.i.loopexit20_crit_edge.i ], [ %.sroa.33.07890.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i ], [ %.sroa.33.07890.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i ], [ %i.eu, %.lr.ph.i.i.i.preheader.i ], [ %.sroa.33.07890.i, %.loopexit.i.i.loopexit ] ; 2 uses
  %i.ke = phi i64 [ %2, %.lr.ph.i.i.i..loopexit.i.loopexit20_crit_edge.i ], [ %i.ik, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i ], [ %.sroa.26.1.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i ], [ %2, %.lr.ph.i.i.i.preheader.i ], [ %i.hh, %.loopexit.i.i.loopexit ] ; 2 uses
  %i.kf = phi i64 [ %i.go, %.lr.ph.i.i.i..loopexit.i.loopexit20_crit_edge.i ], [ %.pre.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i ], [ %i.gw, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i ], [ %1, %.lr.ph.i.i.i.preheader.i ], [ %i.ih, %.loopexit.i.i.loopexit ] ; 4 uses
  %i.kg = icmp sgt i64 %i.kf, -1
  tail call void @llvm.assume(i1 %i.kg)
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.ke, %i.kf
  br i1 %.not3.i.i.i.i.i.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.be, %.loopexit.i.i
  %i.kh = add i64 %i.kf, %.sroa.33.079.i
  br label %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit

bb.be:                                            ; preds = %.loopexit.i.i
  %i.ki = load ptr, ptr %i.en, align 8, !alias.scope !6261, !noalias !6414, !nonnull !4, !noundef !4 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.ke
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kf
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.kk, ptr nonnull align 1 %i.kj, i64 %.sroa.33.079.i, i1 false), !noalias !6419
  br label %bb.bd

bb.bf:                                            ; preds = %.split18.i
  %i.kl = getelementptr inbounds nuw i8, ptr %i.eo, i64 %2
  %i.km = load i8, ptr %i.kl, align 1, !noalias !6271, !noundef !4
  %i.kn = icmp sgt i8 %i.km, -65
  br i1 %i.kn, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, label %bb.bg, !prof !55

bb.bg:                                            ; preds = %bb.bf
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 87 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #62, !noalias !6272
  unreachable

_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block186, %vec.epilog.middle.block, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i, %bb.bd
  %i.ko = phi i64 [ %i.kh, %bb.bd ], [ %1, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i ], [ %i.fl, %vec.epilog.middle.block ], [ %i.fe, %middle.block186 ], [ %i.fv, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 4 uses
  store i64 %i.ko, ptr %i.ei, align 8, !alias.scope !6261, !noalias !6305
  %.sroa.01.0.i = add i64 %.sroa.4.0.i.i.i, 1
  %i.kp = add i64 %.sroa.01.0.i, %.sroa.0.0.i.i.i ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ef, i64 32 ; 5 uses
  %i.kr = load i64, ptr %i.kq, align 8, !alias.scope !6420, !noundef !4 ; 2 uses
  %i.ks = icmp ugt i64 %i.kp, %i.kr
  br i1 %i.ks, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineE8truncateBI_.exit, label %bb.bh

bb.bh:                                            ; preds = %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit
  store i64 %i.kp, ptr %i.kq, align 8, !alias.scope !6420
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineE8truncateBI_.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineE8truncateBI_.exit: ; preds = %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit, %bb.bh
  %i.kt = phi i64 [ %i.kr, %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit ], [ %i.kp, %bb.bh ] ; 3 uses
  %i.ku = load ptr, ptr %i.en, align 8, !nonnull !4, !noundef !4 ; 3 uses
  br i1 %i.ep, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineE8truncateBI_.exit
  %.not.i26 = icmp ult i64 %1, %i.ko
  br i1 %.not.i26, label %bb.bj, label %.split.i27

.split.i27:                                       ; preds = %bb.bi
  %i.kv = icmp eq i64 %1, %i.ko
  br i1 %i.kv, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs5PEMdK7bMAG_12typst_syntax.exit, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 %1
  %i.kx = load i8, ptr %i.kw, align 1, !alias.scope !6423, !noundef !4
  %i.ky = icmp sgt i8 %i.kx, -65
  br i1 %i.ky, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs5PEMdK7bMAG_12typst_syntax.exit, label %bb.bk

_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.bj, %.split.i27
  %i.kz = getelementptr i8, ptr %i.ku, i64 %1
  %i.la = getelementptr i8, ptr %i.kz, i64 -1
  %rhsc = load i8, ptr %i.la, align 1
  %i.lb = icmp ne i8 %rhsc, 13
  %.not.i31 = icmp eq i64 %4, 0
  %or.cond = or i1 %i.lb, %.not.i31
  br i1 %or.cond, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs5PEMdK7bMAG_12typst_syntax.exit.thread, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs5PEMdK7bMAG_12typst_syntax.exit

bb.bk:                                            ; preds = %bb.bj, %.split.i27
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ku, i64 noundef %i.ko, i64 noundef 0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #62
  unreachable

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs5PEMdK7bMAG_12typst_syntax.exit
  %rhsc56 = load i8, ptr %3, align 1
  %i.lc = icmp ne i8 %rhsc56, 10
  %i.ld = icmp eq i64 %i.kt, 0
  %or.cond132 = or i1 %i.lc, %i.ld
  br i1 %or.cond132, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs5PEMdK7bMAG_12typst_syntax.exit.thread, label %bb.bn

bb.bl:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineE8truncateBI_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.le = load ptr, ptr %i.en, align 8, !nonnull !4, !noundef !4
  %i.lf = load i64, ptr %i.ei, align 8, !noundef !4
  br label %bb.bo

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs5PEMdK7bMAG_12typst_syntax.exit.thread: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs5PEMdK7bMAG_12typst_syntax.exit, %bb.bn, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs5PEMdK7bMAG_12typst_syntax.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.lg = load ptr, ptr %i.en, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.lh = load i64, ptr %i.ei, align 8, !noundef !4 ; 5 uses
  %.not.i34 = icmp ult i64 %1, %i.lh
  br i1 %.not.i34, label %bb.bm, label %.split.i35

.split.i35:                                       ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs5PEMdK7bMAG_12typst_syntax.exit.thread
  %i.li = icmp eq i64 %1, %i.lh
  br i1 %i.li, label %bb.bo, label %bb.br

bb.bm:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs5PEMdK7bMAG_12typst_syntax.exit.thread
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 %1
  %i.lk = load i8, ptr %i.lj, align 1, !alias.scope !6426, !noundef !4
  %i.ll = icmp sgt i8 %i.lk, -65
  br i1 %i.ll, label %bb.bo, label %bb.br

bb.bn:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs5PEMdK7bMAG_12typst_syntax.exit
  %i.lm = add nsw i64 %i.kt, -1                   ; 2 uses
  store i64 %i.lm, ptr %i.kq, align 8
  %i.ln = load i64, ptr %i.eg, align 8, !range !833, !noundef !4
  %i.lo = icmp samesign ult i64 %i.lm, %i.ln
  tail call void @llvm.assume(i1 %i.lo)
  %i.lp = icmp ult i64 %i.kt, 576460752303423489
  tail call void @llvm.assume(i1 %i.lp)
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs5PEMdK7bMAG_12typst_syntax.exit.thread

bb.bo:                                            ; preds = %bb.bl, %bb.bm, %.split.i35
  %i.lq = phi i64 [ %i.lh, %bb.bm ], [ %1, %.split.i35 ], [ %i.lf, %bb.bl ]
  %i.lr = phi ptr [ %i.lg, %bb.bm ], [ %i.lg, %.split.i35 ], [ %i.le, %bb.bl ]
  %i.ls = sub nuw i64 %i.lq, %1
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 %1
  store ptr %i.lt, ptr %i.e, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.ls, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.cb, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %1, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6429)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6432
  call fastcc void @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter7sources7from_fnINtB2_6FromFnNCNvNtCs5PEMdK7bMAG_12typst_syntax5lines10lines_from0ENtNtNtB6_6traits8iterator8Iterator4nextB15_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e) #63, !noalias !6429
  %i.lu = load i64, ptr %i.b, align 8, !range !894, !noalias !6432, !noundef !4
  %i.lv = trunc nuw i64 %i.lu to i1
  br i1 %i.lv, label %.lr.ph.i39, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter7sources7from_fn6FromFnNCNvBI_10lines_from0EEBK_.exit

.lr.ph.i39:                                       ; preds = %bb.bo
  %i.lw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %.pre.i40 = load i64, ptr %i.kq, align 8, !alias.scope !6429, !noalias !6434
  %.pre2.i = load i64, ptr %i.eg, align 8, !range !833, !alias.scope !6429, !noalias !6434
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bq, %.lr.ph.i39
  %i.ly = phi i64 [ %.pre2.i, %.lr.ph.i39 ], [ %i.md, %bb.bq ] ; 3 uses
  %i.lz = phi i64 [ %.pre.i40, %.lr.ph.i39 ], [ %i.mg, %bb.bq ] ; 4 uses
  %i.ma = load <2 x i64>, ptr %i.lw, align 8, !noalias !6432
  %i.mb = icmp ult i64 %i.lz, 576460752303423488
  tail call void @llvm.assume(i1 %i.mb)
  %i.mc = icmp eq i64 %i.lz, %i.ly
  br i1 %i.mc, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineE7reserveBI_.exit.i, label %bb.bq

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineE7reserveBI_.exit.i: ; preds = %bb.bp
  tail call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eg, i64 noundef %i.ly, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16), !noalias !6434
  %.pre1.i = load i64, ptr %i.eg, align 8, !range !833, !alias.scope !6429, !noalias !6434
  br label %bb.bq

bb.bq:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineE7reserveBI_.exit.i, %bb.bp
  %i.md = phi i64 [ %i.ly, %bb.bp ], [ %.pre1.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineE7reserveBI_.exit.i ]
  %i.me = load ptr, ptr %i.lx, align 8, !alias.scope !6429, !noalias !6434, !nonnull !4, !noundef !4
  %i.mf = getelementptr inbounds nuw [16 x i8], ptr %i.me, i64 %i.lz
  store <2 x i64> %i.ma, ptr %i.mf, align 8, !noalias !6432
  %i.mg = add nuw nsw i64 %i.lz, 1                ; 2 uses
  store i64 %i.mg, ptr %i.kq, align 8, !alias.scope !6429, !noalias !6434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6432
  call fastcc void @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter7sources7from_fnINtB2_6FromFnNCNvNtCs5PEMdK7bMAG_12typst_syntax5lines10lines_from0ENtNtNtB6_6traits8iterator8Iterator4nextB15_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e) #63, !noalias !6429
  %i.mh = load i64, ptr %i.b, align 8, !range !894, !noalias !6432, !noundef !4
  %i.mi = trunc nuw i64 %i.mh to i1
  br i1 %i.mi, label %bb.bp, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter7sources7from_fn6FromFnNCNvBI_10lines_from0EEBK_.exit

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter7sources7from_fn6FromFnNCNvBI_10lines_from0EEBK_.exit: ; preds = %bb.bq, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.br:                                            ; preds = %bb.bm, %.split.i35
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.lg, i64 noundef %i.lh, i64 noundef %1, i64 noundef %i.lh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #62
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB4_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE7replace(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB4_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE17replacement_range(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = load i64, ptr %i.a, align 8, !range !894, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1                 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  %i.k = sub i64 %2, %i.g                         ; 4 uses
  %i.l = icmp ugt i64 %i.e, %i.k
  %i.m = icmp ugt i64 %i.g, %2
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread4, label %bb.c, !prof !1742

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.e, %2
  br i1 %i.n, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i64 %i.e, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.p = icmp eq i64 %i.g, 0
  br i1 %i.p, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !6435, !noundef !4
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.e, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread4, !prof !1746

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !6435, !noundef !4
  %i.v = icmp sgt i8 %i.u, -65
  br i1 %i.v, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread4, !prof !1747

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h
end_hunk_3
