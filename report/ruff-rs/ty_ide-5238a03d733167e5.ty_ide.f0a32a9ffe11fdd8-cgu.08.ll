Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_ide-5238a03d733167e5.ty_ide.f0a32a9ffe11fdd8-cgu.08?download=true
inline.NumInlined: 737
inline.NumDeleted: 378
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document3rst24starts_at_block_boundary:bb.a
.split.i:                                         ; preds = %bb.b
  %i.f = icmp eq i64 %1, %i.d
  br i1 %i.f, label %bb.d, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !1439, !noundef !17
  %i.i = icmp sgt i8 %i.h, -65
  br i1 %i.i, label %bb.d, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

bb.d:                                             ; preds = %bb.c, %.split.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1442
  store i64 0, ptr %i.c, align 8, !noalias !1442
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.d, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !1442
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %0, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !1442
  %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.d, ptr %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx.i, align 8, !noalias !1442
  %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx.i, align 8, !noalias !1442
  %.sroa.512.sroa.6.0..sroa.512.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.d, ptr %.sroa.512.sroa.6.0..sroa.512.0..sroa_idx.sroa_idx.i, align 8, !noalias !1442
  %.sroa.512.sroa.7.0..sroa.512.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 10, ptr %.sroa.512.sroa.7.0..sroa.512.0..sroa_idx.sroa_idx.i, align 8, !noalias !1442
  %.sroa.512.sroa.8.0..sroa.512.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i32 10, ptr %.sroa.512.sroa.8.0..sroa.512.0..sroa_idx.sroa_idx.i, align 4, !noalias !1442
  %.sroa.512.sroa.9.0..sroa.512.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i8 1, ptr %.sroa.512.sroa.9.0..sroa.512.0..sroa_idx.sroa_idx.i, align 8, !noalias !1442
  %.sroa.613.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i8 0, ptr %.sroa.613.0..sroa_idx.i, align 8, !noalias !1442
  %.sroa.714.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 65
  store i8 0, ptr %.sroa.714.0..sroa_idx.i, align 1, !noalias !1442
  %i.j = call fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE19next_back_inclusiveCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(72) %i.c) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 4 uses
  %.not.i4 = icmp eq ptr %i.k, null
  br i1 %.not.i4, label %_RNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document3rst24starts_at_block_boundary0B9_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = extractvalue { ptr, i64 } %i.j, 1        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1445
  store i32 10, ptr %i.b, align 4, !noalias !1445
  %i.m = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 1, 5) 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1445
  br i1 %i.m, label %bb.f, label %_RNvXs3_NtCs4NRVxsYgnAr_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit.i

bb.f:                                             ; preds = %bb.e
  %i.n = add i64 %i.l, -1                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1445
  store i32 13, ptr %i.a, align 4, !noalias !1445
  %i.o = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 1, 5) 1)
  %i.p = add i64 %i.l, -2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1445
  %.pre21.i = select i1 %i.o, i64 %i.p, i64 %i.n
  br label %_RNvXs3_NtCs4NRVxsYgnAr_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit.i

_RNvXs3_NtCs4NRVxsYgnAr_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit.i: ; preds = %bb.f, %bb.e
  %.pre-phi22.i = phi i64 [ %i.l, %bb.e ], [ %.pre21.i, %bb.f ]
  %i.q = call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %.pre-phi22.i)
  %i.r = extractvalue { ptr, i64 } %i.q, 1
  %i.s = icmp eq i64 %i.r, 0
  br label %_RNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document3rst24starts_at_block_boundary0B9_.exit

_RNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document3rst24starts_at_block_boundary0B9_.exit: ; preds = %bb.d, %_RNvXs3_NtCs4NRVxsYgnAr_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit.i
  %.sroa.0.0.i5 = phi i1 [ %i.s, %_RNvXs3_NtCs4NRVxsYgnAr_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit.i ], [ true, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1442
  br label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread: ; preds = %.split.i, %bb.c, %_RNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document3rst24starts_at_block_boundary0B9_.exit
  %.sroa.0.0 = phi i1 [ %.sroa.0.0.i5, %_RNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document3rst24starts_at_block_boundary0B9_.exit ], [ false, %bb.c ], [ false, %.split.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax11indentation(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvNtCskVZVgnzM3Oh_18ruff_python_trivia10whitespace19leading_indentation(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  %.not11.i = icmp samesign eq i64 %i.c, 0
  br i1 %.not11.i, label %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5BytesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldmNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax11indentation0EB1C_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.d = icmp ult i64 %i.c, 4
  br i1 %i.d, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.c, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.0.013.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %.sroa.0.0.i.i.3, %.lr.ph.i ] ; 2 uses
  %.sroa.0.0612.i = phi ptr [ %i.b, %.lr.ph.i.preheader.new ], [ %i.t, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0612.i, i64 1
  %i.f = load i8, ptr %.sroa.0.0612.i, align 1, !noalias !1448, !noundef !17
  %i.g = icmp eq i8 %i.f, 9
  %reass.sub.i.i = and i32 %.sroa.0.013.i, -8
  %i.h = add i32 %reass.sub.i.i, 8
  %i.i = add i32 %.sroa.0.013.i, 1
  %.sroa.0.0.i.i = select i1 %i.g, i32 %i.h, i32 %i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0612.i, i64 2
  %i.k = load i8, ptr %i.e, align 1, !noalias !1448, !noundef !17
  %i.l = icmp eq i8 %i.k, 9
  %reass.sub.i.i.1 = and i32 %.sroa.0.0.i.i, -8
  %i.m = add i32 %reass.sub.i.i.1, 8
  %i.n = add i32 %.sroa.0.0.i.i, 1
  %.sroa.0.0.i.i.1 = select i1 %i.l, i32 %i.m, i32 %i.n ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0612.i, i64 3
  %i.p = load i8, ptr %i.j, align 1, !noalias !1448, !noundef !17
  %i.q = icmp eq i8 %i.p, 9
  %reass.sub.i.i.2 = and i32 %.sroa.0.0.i.i.1, -8
  %i.r = add i32 %reass.sub.i.i.2, 8
  %i.s = add i32 %.sroa.0.0.i.i.1, 1
  %.sroa.0.0.i.i.2 = select i1 %i.q, i32 %i.r, i32 %i.s ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0612.i, i64 4 ; 2 uses
  %i.u = load i8, ptr %i.o, align 1, !noalias !1448, !noundef !17
  %i.v = icmp eq i8 %i.u, 9
  %reass.sub.i.i.3 = and i32 %.sroa.0.0.i.i.2, -8
  %i.w = add i32 %reass.sub.i.i.3, 8
  %i.x = add i32 %.sroa.0.0.i.i.2, 1
  %.sroa.0.0.i.i.3 = select i1 %i.v, i32 %i.w, i32 %i.x ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5BytesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldmNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax11indentation0EB1C_.exit.loopexit.unr-lcssa, label %.lr.ph.i

_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5BytesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldmNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax11indentation0EB1C_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5BytesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldmNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax11indentation0EB1C_.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5BytesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldmNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax11indentation0EB1C_.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.0.013.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.sroa.0.0.i.i.3, %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5BytesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldmNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax11indentation0EB1C_.exit.loopexit.unr-lcssa ]
  %.sroa.0.0612.i.epil.init = phi ptr [ %i.b, %.lr.ph.i.preheader ], [ %i.t, %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5BytesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldmNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax11indentation0EB1C_.exit.loopexit.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.sroa.0.013.i.epil = phi i32 [ %.sroa.0.0.i.i.epil, %.lr.ph.i.epil ], [ %.sroa.0.013.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.sroa.0.0612.i.epil = phi ptr [ %i.y, %.lr.ph.i.epil ], [ %.sroa.0.0612.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0612.i.epil, i64 1
  %i.z = load i8, ptr %.sroa.0.0612.i.epil, align 1, !noalias !1448, !noundef !17
  %i.aa = icmp eq i8 %i.z, 9
  %reass.sub.i.i.epil = and i32 %.sroa.0.013.i.epil, -8
  %i.ab = add i32 %reass.sub.i.i.epil, 8
  %i.ac = add i32 %.sroa.0.013.i.epil, 1
  %.sroa.0.0.i.i.epil = select i1 %i.aa, i32 %i.ab, i32 %i.ac ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5BytesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldmNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax11indentation0EB1C_.exit, label %.lr.ph.i.epil, !llvm.loop !1451

_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5BytesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldmNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax11indentation0EB1C_.exit: ; preds = %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5BytesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldmNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax11indentation0EB1C_.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %.sroa.0.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %.sroa.0.0.i.i.3, %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5BytesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldmNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax11indentation0EB1C_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.epil, %.lr.ph.i.epil ]
  ret i32 %.sroa.0.0.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax12parsed_lines(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtCs9BeaGo73rC4_16ruff_source_file8newlineseNtB2_17UniversalNewlines18universal_newlines(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax10ParsedLineEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorNCNvB12_12parsed_lines0EE9from_iterB18_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax19container_block_end(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 288230376151711744) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, %1
  br i1 %i.a, label %bb.b, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_4find5checkjNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax19container_block_end0E0INtNtB8_12control_flow11ControlFlowjEEB26_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %2 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !17, !noundef !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !17
  %i.f = tail call noundef zeroext i1 @_RNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax22starts_container_block(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e)
  br i1 %i.f, label %bb.c, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_4find5checkjNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax19container_block_end0E0INtNtB8_12control_flow11ControlFlowjEEB26_.exit

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_4find5checkjNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax19container_block_end0E0INtNtB8_12control_flow11ControlFlowjEEB26_.exit: ; preds = %.critedge.backedge.i, %_RNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax19container_block_end0B9_.exit.i.i, %bb.c, %bb.b, %bb.a
  %.sroa.4.0 = phi i64 [ undef, %bb.b ], [ undef, %bb.a ], [ %1, %bb.c ], [ %1, %.critedge.backedge.i ], [ %i.l, %_RNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax19container_block_end0B9_.exit.i.i ]
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %_RNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax19container_block_end0B9_.exit.i.i ], [ 1, %.critedge.backedge.i ]
  %i.g = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.h

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw nsw i64 %2, 1                    ; 2 uses
  %i.j = icmp samesign ult i64 %i.i, %1
  br i1 %i.j, label %.lr.ph.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_4find5checkjNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax19container_block_end0E0INtNtB8_12control_flow11ControlFlowjEEB26_.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.i, %.critedge.backedge.i
  %i.l = phi i64 [ %i.i, %.lr.ph.i ], [ %i.m, %.critedge.backedge.i ] ; 3 uses
  %i.m = add i64 %i.l, 1                          ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.l ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1453, !nonnull !17, !noundef !17
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !1453, !noundef !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.s = load i32, ptr %i.r, align 8, !noalias !1453, !noundef !17
  %i.t = tail call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.q), !noalias !1453
  %i.u = extractvalue { ptr, i64 } %i.t, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.critedge.backedge.i, label %_RNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax19container_block_end0B9_.exit.i.i

_RNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax19container_block_end0B9_.exit.i.i: ; preds = %bb.d
  %i.w = load i32, ptr %i.k, align 8, !noalias !1453, !noundef !17
  %.not.i.not.i = icmp ugt i32 %i.s, %i.w
  br i1 %.not.i.not.i, label %.critedge.backedge.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_4find5checkjNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax19container_block_end0E0INtNtB8_12control_flow11ControlFlowjEEB26_.exit

.critedge.backedge.i:                             ; preds = %_RNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax19container_block_end0B9_.exit.i.i, %bb.d
  %exitcond15.not.i = icmp eq i64 %i.m, %1
  br i1 %exitcond15.not.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_4find5checkjNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax19container_block_end0E0INtNtB8_12control_flow11ControlFlowjEEB26_.exit, label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax20is_dotted_identifier(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBK_3all5checkReNvNtCs4xX4QTdRF9r_18ruff_python_stdlib11identifiers13is_identifierE0INtNtNtBa_3ops12control_flow11ControlFlowuEECskEUeM34gmJU_6ty_ide.exit, label %.split.i

.split.i:                                         ; preds = %bb.a, %select.unfold.i
  %i.b = phi i64 [ %i.y, %select.unfold.i ], [ 0, %bb.a ] ; 3 uses
  %.lcssa1418.i = phi i64 [ %.lcssa1417.i, %select.unfold.i ], [ 0, %bb.a ] ; 5 uses
  %i.c = phi i1 [ %i.z, %select.unfold.i ], [ false, %bb.a ] ; 3 uses
  br i1 %i.c, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBK_3all5checkReNvNtCs4xX4QTdRF9r_18ruff_python_stdlib11identifiers13is_identifierE0INtNtNtBa_3ops12control_flow11ControlFlowuEECskEUeM34gmJU_6ty_ide.exit, label %bb.b

bb.b:                                             ; preds = %.split.i
  %i.d = icmp ult i64 %1, %i.b
  br i1 %i.d, label %select.unfold.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.f
  %i.e = phi i64 [ %i.t, %bb.f ], [ %i.b, %bb.b ] ; 5 uses
  %i.f = sub nuw i64 %1, %i.e                     ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 2 uses
  %i.h = icmp samesign ult i64 %i.f, 16
  br i1 %i.h, label %.preheader.i.i.i.i.i, label %bb.c

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef range(i64 0, -9223372036854775808) %i.f), !noalias !1461
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ %i.f, %bb.d ], [ %.sroa.01.05.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ 0, %bb.d ], [ 1, %.lr.ph.i.i.i.i.i ]
  %i.j = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i, 0
  %i.k = insertvalue { i64, i64 } %i.j, i64 %.sroa.01.0.lcssa.i.i.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.o, %bb.d ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.05.i.i.i.i.i
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !1471, !noalias !1461, !noundef !17
  %i.n = icmp eq i8 %i.m, 46
  br i1 %i.n, label %._crit_edge.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.o = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.o, %i.f
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.c
  %.merged.i.i.i.i.i = phi { i64, i64 } [ %i.k, %._crit_edge.i.i.i.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.p = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 0
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.e, label %select.unfold.i

bb.e:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i
  %i.r = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 1 ; 3 uses
  %i.s = add i64 %i.e, 1
  %i.t = add i64 %i.s, %i.r                       ; 5 uses
  %.not13.i.i.i.i = icmp ugt i64 %i.t, %1
  %i.u = add i64 %i.e, %i.r
  %or.cond.i.i.i.i.not = icmp ult i64 %i.u, %1
  br i1 %or.cond.i.i.i.i.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  br i1 %.not13.i.i.i.i, label %select.unfold.i, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.v = add i64 %i.e, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  %lhsc = load i8, ptr %i.w, align 1
  %i.x = icmp eq i8 %lhsc, 46
  br i1 %i.x, label %select.unfold.i, label %bb.f

select.unfold.i:                                  ; preds = %bb.g, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i, %bb.f, %bb.b
  %i.y = phi i64 [ %i.b, %bb.b ], [ %i.t, %bb.f ], [ %1, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i ], [ %i.t, %bb.g ]
  %.lcssa1417.i = phi i64 [ %.lcssa1418.i, %bb.b ], [ %.lcssa1418.i, %bb.f ], [ %.lcssa1418.i, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i ], [ %i.t, %bb.g ]
  %i.z = phi i1 [ true, %bb.b ], [ true, %bb.f ], [ true, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i ], [ false, %bb.g ]
  %.pn.i = phi i64 [ %1, %bb.b ], [ %1, %bb.f ], [ %1, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i ], [ %i.v, %bb.g ]
  %.sroa.4.1.i.i.ph.i = sub nuw i64 %.pn.i, %.lcssa1418.i
  %.sroa.0.1.i.i.ph.i = getelementptr inbounds nuw i8, ptr %0, i64 %.lcssa1418.i
  %i.aa = tail call noundef zeroext i1 @_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib11identifiers13is_identifier(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.ph.i, i64 noundef %.sroa.4.1.i.i.ph.i), !noalias !1474
  br i1 %i.aa, label %.split.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBK_3all5checkReNvNtCs4xX4QTdRF9r_18ruff_python_stdlib11identifiers13is_identifierE0INtNtNtBa_3ops12control_flow11ControlFlowuEECskEUeM34gmJU_6ty_ide.exit

_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBK_3all5checkReNvNtCs4xX4QTdRF9r_18ruff_python_stdlib11identifiers13is_identifierE0INtNtNtBa_3ops12control_flow11ControlFlowuEECskEUeM34gmJU_6ty_ide.exit: ; preds = %select.unfold.i, %.split.i, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.c, %.split.i ], [ %i.c, %select.unfold.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax21consume_quoted_string(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.a = tail call noundef i32 @_RNvMNtCskVZVgnzM3Oh_18ruff_python_trivia6cursorNtB2_6Cursor4bump(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) ; 2 uses
  switch i32 %i.a, label %bb.d [
    i32 -1, label %bb.e
    i32 92, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef i32 @_RNvMNtCskVZVgnzM3Oh_18ruff_python_trivia6cursorNtB2_6Cursor4bump(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) ; 0 uses
  br label %.backedge

bb.d:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %i.a, %1
  br i1 %i.c, label %bb.e, label %.backedge

.backedge:                                        ; preds = %bb.d, %bb.c
  br label %bb.b

bb.e:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax22starts_container_block(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 20 uses
  %i.c = tail call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %i.f = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 3)
  br i1 %i.f, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -3
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1475
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 0, -3) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 2), !noalias !1481
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  %i.i = load i64, ptr %i.b, align 8, !range !362, !alias.scope !1482, !noalias !1485, !noundef !17
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.j, label %bb.l, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.m = load i8, ptr %i.l, align 2, !range !855, !alias.scope !1487, !noalias !1490, !noundef !17
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.loopexit11.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %.promoted.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !1482, !noalias !1485 ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1487, !noalias !1490, !nonnull !17, !noundef !17 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !1487, !noalias !1490, !noundef !17 ; 15 uses
  %.promoted26.i.i.i = load i8, ptr %i.o, align 8, !alias.scope !1487, !noalias !1490
  %i.t = trunc nuw i8 %.promoted26.i.i.i to i1    ; 2 uses
  %i.u = icmp eq i64 %.promoted.i.i.i, 0
  br i1 %i.u, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i.peel.i.i = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %.not.i.i.i.peel.i.i, label %bb.d, label %.split.i.i.i.peel.i.i

.split.i.i.i.peel.i.i:                            ; preds = %bb.c
  %i.v = icmp eq i64 %.promoted.i.i.i, %i.s
  br i1 %i.v, label %bb.e, label %.loopexit.i.i

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %.promoted.i.i.i
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !1492, !noalias !1495, !noundef !17
  %i.y = icmp sgt i8 %i.x, -65
  br i1 %i.y, label %bb.e, label %.loopexit.i.i

bb.e:                                             ; preds = %bb.d, %.split.i.i.i.peel.i.i, %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 %.promoted.i.i.i ; 4 uses
  %i.aa = icmp samesign eq i64 %.promoted.i.i.i, %i.s
  br i1 %i.aa, label %.loopexit119.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_0
