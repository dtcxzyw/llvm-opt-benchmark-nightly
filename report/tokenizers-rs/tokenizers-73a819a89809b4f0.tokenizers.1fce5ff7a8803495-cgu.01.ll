Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.01?download=true
inline.NumInlined: 2320
inline.NumDeleted: 1225
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"\19\00\00\00\00\00\00\009\02\00\00\19\00\00\00" }>, align 8
@11 = private unnamed_addr constant [27 x i8] c"src/processors/template.rs\00", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"\1A\00\00\00\00\00\00\00,\02\00\006\00\00\00" }>, align 8
@13 = private unnamed_addr constant [22 x i8] c"no entry found for key", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"\1A\00\00\00\00\00\00\003\02\00\00=\00\00\00" }>, align 8
@15 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@16 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @15, [24 x i8] zeroinitializer }>, align 8
@17 = private unnamed_addr constant [4 x i8] c"\C0\01\0A\00", align 1
@18 = private unnamed_addr constant [24 x i8] c"src/models/bpe/model.rs\00", align 1
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"\17\00\00\00\00\00\00\00\92\02\00\004\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"\17\00\00\00\00\00\00\00\92\02\00\00K\00\00\00" }>, align 8
@21 = private unnamed_addr constant [7 x i8] c"\C0\01 \C0\01\0A\00", align 1
@_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE = external global { { { { ptr } } }, {} }
@_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS = external global { { { { ptr } } }, {} }
@_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelism16USED_PARALLELISM = external local_unnamed_addr global { { { i8 } } }
@22 = private unnamed_addr constant [95 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/alloc/src/vec/spec_from_iter_nested.rs\00", align 1
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"^\00\00\00\00\00\00\009\00\00\00\12\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionjEE5drainINtNtNtBJ_3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionmEE5drainNtNtNtBJ_3ops5range9RangeFullECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs2JiOgHzbbc7_10tokenizers(i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringE5drainNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs2JiOgHzbbc7_10tokenizers(i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitE5drainNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullEBK_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs2JiOgHzbbc7_10tokenizers(i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.i = getelementptr inbounds nuw [104 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [104 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE5drainNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullEBM_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs2JiOgHzbbc7_10tokenizers(i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE6retainNCNvMs3_BG_NtBG_4Word9merge_alls1_0EBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !34, !noundef !6 ; 9 uses
  %i.c = icmp ult i64 %i.b, 288230376151711744
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE10retain_mutNCINvB2_6retainNCNvMs3_BG_NtBG_4Word9merge_alls1_0E0EBM_.exit, label %.preheader23.i

.preheader23.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !34, !nonnull !6, !noundef !6 ; 11 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.g = icmp samesign ult i64 %i.b, 4
  br i1 %i.g, label %.epil.preheader, label %.preheader23.i.new

.preheader23.i.new:                               ; preds = %.preheader23.i
  %unroll_iter = and i64 %i.b, 288230376151711740
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.preheader23.i.new
  %.sroa.0.0.i = phi i64 [ 0, %.preheader23.i.new ], [ %.sroa.7.026.i.3, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader23.i.new ], [ %niter.next.3, %bb.g ]
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.0.0.i
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %.val.i = load i64, ptr %i.i, align 8, !noalias !34, !noundef !6
  %.not.i = icmp eq i64 %.val.i, 0
  %.sroa.7.026.i = or disjoint i64 %.sroa.0.0.i, 1 ; 3 uses
  br i1 %.not.i, label %.preheader.i, label %bb.d, !prof !7

.preheader.i:                                     ; preds = %bb.k, %bb.b, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i.lcssa = phi i64 [ %.sroa.7.026.i.2, %bb.f ], [ %.sroa.0.0.i, %bb.b ], [ %.sroa.7.026.i, %bb.d ], [ %.sroa.7.026.i.1, %bb.e ], [ %.sroa.0.0.i.epil, %bb.k ] ; 5 uses
  %.sroa.7.026.i.lcssa = phi i64 [ %.sroa.7.026.i.3, %bb.f ], [ %.sroa.7.026.i, %bb.b ], [ %.sroa.7.026.i.1, %bb.d ], [ %.sroa.7.026.i.2, %bb.e ], [ %.sroa.7.026.i.epil, %bb.k ] ; 6 uses
  %i.j = icmp ult i64 %.sroa.7.026.i.lcssa, %i.b
  br i1 %i.j, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.k = sub nuw i64 %i.b, %.sroa.7.026.i.lcssa
  %.neg = add i64 %.sroa.7.026.i.lcssa, 1
  %1 = trunc i64 %i.k to i1
  br i1 %1, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.7.026.i.lcssa ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %.val10.i.prol = load i64, ptr %i.m, align 8, !noalias !34, !noundef !6
  %.not22.i.prol = icmp eq i64 %.val10.i.prol, 0
  br i1 %.not22.i.prol, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.prol
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.0.0.i.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !34
  %i.o = add i64 %.sroa.0.0.i.lcssa, 1
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.c, %.lr.ph.i.prol
  %.sroa.13.1.i.prol = phi i64 [ %i.o, %bb.c ], [ %.sroa.0.0.i.lcssa, %.lr.ph.i.prol ] ; 2 uses
  %.sroa.7.0.i.prol = add nuw nsw i64 %.sroa.7.026.i.lcssa, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.13.1.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %.sroa.13.1.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.sroa.7.028.i.unr = phi i64 [ %.sroa.7.026.i.lcssa, %.lr.ph.i.preheader ], [ %.sroa.7.0.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.sroa.13.027.i.unr = phi i64 [ %.sroa.0.0.i.lcssa, %.lr.ph.i.preheader ], [ %.sroa.13.1.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.p = icmp eq i64 %i.b, %.neg
  br i1 %i.p, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.7.026.i
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %.val.i.1 = load i64, ptr %i.r, align 8, !noalias !34, !noundef !6
  %.not.i.1 = icmp eq i64 %.val.i.1, 0
  %.sroa.7.026.i.1 = or disjoint i64 %.sroa.0.0.i, 2 ; 3 uses
  br i1 %.not.i.1, label %.preheader.i, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.7.026.i.1
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.2 = load i64, ptr %i.t, align 8, !noalias !34, !noundef !6
  %.not.i.2 = icmp eq i64 %.val.i.2, 0
  %.sroa.7.026.i.2 = or disjoint i64 %.sroa.0.0.i, 3 ; 3 uses
  br i1 %.not.i.2, label %.preheader.i, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.7.026.i.2
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %.val.i.3 = load i64, ptr %i.v, align 8, !noalias !34, !noundef !6
  %.not.i.3 = icmp eq i64 %.val.i.3, 0
  %.sroa.7.026.i.3 = add nuw nsw i64 %.sroa.0.0.i, 4 ; 3 uses
  br i1 %.not.i.3, label %.preheader.i, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE10retain_mutNCINvB2_6retainNCNvMs3_BG_NtBG_4Word9merge_alls1_0E0EBM_.exit.loopexit.unr-lcssa, label %bb.b

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i.lcssa, %.preheader.i ], [ %.sroa.13.1.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.13.1.i.1, %bb.j ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !34
  br label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE10retain_mutNCINvB2_6retainNCNvMs3_BG_NtBG_4Word9merge_alls1_0E0EBM_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %.sroa.7.028.i = phi i64 [ %.sroa.7.0.i.1, %bb.j ], [ %.sroa.7.028.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.13.027.i = phi i64 [ %.sroa.13.1.i.1, %bb.j ], [ %.sroa.13.027.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.7.028.i ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %.val10.i = load i64, ptr %i.x, align 8, !noalias !34, !noundef !6
  %.not22.i = icmp eq i64 %.val10.i, 0
  br i1 %.not22.i, label %.lr.ph.i.1, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.13.027.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !34
  %i.z = add i64 %.sroa.13.027.i, 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.h, %.lr.ph.i
  %.sroa.13.1.i = phi i64 [ %i.z, %bb.h ], [ %.sroa.13.027.i, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.7.028.i ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 48
  %.val10.i.1 = load i64, ptr %i.ab, align 8, !noalias !34, !noundef !6
  %.not22.i.1 = icmp eq i64 %.val10.i.1, 0
  br i1 %.not22.i.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.13.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false), !noalias !34
  %i.ae = add i64 %.sroa.13.1.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.1
  %.sroa.13.1.i.1 = phi i64 [ %i.ae, %bb.i ], [ %.sroa.13.1.i, %.lr.ph.i.1 ] ; 2 uses
  %.sroa.7.0.i.1 = add nuw nsw i64 %.sroa.7.028.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %.sroa.7.0.i.1, %i.b
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i

_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE10retain_mutNCINvB2_6retainNCNvMs3_BG_NtBG_4Word9merge_alls1_0E0EBM_.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE10retain_mutNCINvB2_6retainNCNvMs3_BG_NtBG_4Word9merge_alls1_0E0EBM_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE10retain_mutNCINvB2_6retainNCNvMs3_BG_NtBG_4Word9merge_alls1_0E0EBM_.exit.loopexit.unr-lcssa, %.preheader23.i
  %.sroa.0.0.i.epil.init = phi i64 [ 0, %.preheader23.i ], [ %.sroa.7.026.i.3, %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE10retain_mutNCINvB2_6retainNCNvMs3_BG_NtBG_4Word9merge_alls1_0E0EBM_.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.epil.preheader
  %.sroa.0.0.i.epil = phi i64 [ %.sroa.7.026.i.epil, %bb.l ], [ %.sroa.0.0.i.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.l ], [ 0, %.epil.preheader ]
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.0.0.i.epil
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %.val.i.epil = load i64, ptr %i.ag, align 8, !noalias !34, !noundef !6
  %.not.i.epil = icmp eq i64 %.val.i.epil, 0
  %.sroa.7.026.i.epil = add nuw i64 %.sroa.0.0.i.epil, 1 ; 2 uses
  br i1 %.not.i.epil, label %.preheader.i, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE10retain_mutNCINvB2_6retainNCNvMs3_BG_NtBG_4Word9merge_alls1_0E0EBM_.exit, label %bb.k, !llvm.loop !33

_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE10retain_mutNCINvB2_6retainNCNvMs3_BG_NtBG_4Word9merge_alls1_0E0EBM_.exit: ; preds = %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE10retain_mutNCINvB2_6retainNCNvMs3_BG_NtBG_4Word9merge_alls1_0E0EBM_.exit.loopexit.unr-lcssa, %bb.l, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRjE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRcRjEE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range7RangeTojEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs2JiOgHzbbc7_10tokenizers(i64 noundef %2, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTTTmmElEjEE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_0
begin_hunk_1_@_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjEE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers:bb.a
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjEE5drainNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs2JiOgHzbbc7_10tokenizers(i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmE5drainNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs2JiOgHzbbc7_10tokenizers(i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionmEE14extend_trustedINtNtNtNtBK_4iter8adapters3map3MapINtNtNtBK_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2F_8Encoding3padsa_0EEB2J_(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !37, !noundef !6 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !range !9, !alias.scope !37, !noundef !6
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ugt i64 %spec.select.i.i, %i.e
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionmEE7reserveCs2JiOgHzbbc7_10tokenizers.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %spec.select.i.i, i64 noundef 4, i64 noundef 8)
  %.pre = load i64, ptr %i.b, align 8
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionmEE7reserveCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionmEE7reserveCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.c, %bb.a ], [ %.pre, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.i, ptr %i.j, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.k, align 8
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3padsa_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2F_8for_each4callINtNtBc_6option6OptionmENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4f_3VecB3I_E14extend_trustedBN_E0E0EB1y_(i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2D_8Encoding3pads9_0EEB2H_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i64, ptr %i.b, align 8, !alias.scope !10, !noalias !11, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5 = load i64, ptr %i.c, align 8, !alias.scope !11, !noalias !10, !noundef !6
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val5, i64 %.val) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !40, !noundef !6 ; 3 uses
  %i.f = load i64, ptr %0, align 8, !range !9, !alias.scope !40, !noundef !6
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ugt i64 %spec.select.i.i, %i.g
  br i1 %i.h, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs2JiOgHzbbc7_10tokenizers.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %spec.select.i.i, i64 noundef 8, i64 noundef 24)
  %.pre = load i64, ptr %i.d, align 8
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.e, %bb.a ], [ %.pre, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.l, align 8
  store ptr %i.d, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.i, ptr %i.m, align 8
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3pads9_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2F_8for_each4callNtNtCscdodAO9FK5_5alloc6string6StringNCINvMsj_NtB3M_3vecINtB4s_3VecB3I_E14extend_trustedBN_E0E0EB1y_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTciEE14extend_trustedINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterBF_Kj3_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %1, align 8, !noundef !6  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.a, align 8, !noundef !6 ; 5 uses
  %i.b = sub nuw i64 %.val5, %.val                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !60, !noundef !6 ; 3 uses
  %i.e = load i64, ptr %0, align 8, !range !9, !alias.scope !60, !noundef !6
  %i.f = sub i64 %i.e, %i.d
  %i.g = icmp ugt i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTciEE7reserveCs2JiOgHzbbc7_10tokenizers.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d, i64 noundef %i.b, i64 noundef 8, i64 noundef 16)
  %.pre = load i64, ptr %i.c, align 8
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTciEE7reserveCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTciEE7reserveCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b, %bb.a
  %i.h = phi i64 [ %.pre, %bb.b ], [ %i.d, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.l = icmp ule i64 %.val, %.val5
  tail call void @llvm.assume(i1 %i.l)
  %.not6.i.i.i = icmp eq i64 %.val, %.val5
  br i1 %.not6.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTciEE7reserveCs2JiOgHzbbc7_10tokenizers.exit
  %.neg = add i64 %.val, 1
  %2 = trunc i64 %i.b to i1
  br i1 %2, label %.lr.ph.i.i.i.prol, label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.m = add nuw nsw i64 %.val, 1
  %i.n = icmp ult i64 %.val, 3
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.val ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !range !12, !alias.scope !63, !noalias !64, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !63, !noalias !64, !noundef !6
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.h ; 2 uses
  store i32 %i.p, ptr %i.s, align 8, !noalias !65
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.r, ptr %i.t, align 8, !noalias !65
  %i.u = add i64 %i.h, 1                          ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %.unr = phi i64 [ %i.h, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %.unr9 = phi i64 [ %.val, %.lr.ph.i.i.i.preheader ], [ %i.m, %.lr.ph.i.i.i.prol ]
  %i.v = icmp eq i64 %.val5, %.neg
  br i1 %i.v, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.w = phi i64 [ %i.ao, %.lr.ph.i.i.i ], [ %.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %i.x = phi i64 [ %i.ae, %.lr.ph.i.i.i ], [ %.unr9, %.lr.ph.i.i.i.prol.loopexit ] ; 4 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !range !12, !alias.scope !63, !noalias !64, !noundef !6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !63, !noalias !64, !noundef !6
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.w ; 2 uses
  store i32 %i.z, ptr %i.ac, align 8, !noalias !65
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.ab, ptr %i.ad, align 8, !noalias !65
  %i.ae = add nuw nsw i64 %i.x, 2                 ; 2 uses
  %i.af = icmp ult i64 %i.x, 2
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.x ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !range !12, !alias.scope !63, !noalias !64, !noundef !6
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !63, !noalias !64, !noundef !6
  %i.al = getelementptr [16 x i8], ptr %i.j, i64 %i.w ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 16
  store i32 %i.ai, ptr %i.am, align 8, !noalias !65
  %i.an = getelementptr i8, ptr %i.al, i64 24
  store i64 %i.ak, ptr %i.an, align 8, !noalias !65
  %i.ao = add i64 %i.w, 2                         ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.ae, %.val5
  br i1 %.not.i.i.i.1, label %.loopexit, label %.lr.ph.i.i.i

.loopexit:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTciEE7reserveCs2JiOgHzbbc7_10tokenizers.exit
  %.val3.i.i.i = phi i64 [ %i.h, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTciEE7reserveCs2JiOgHzbbc7_10tokenizers.exit ], [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ao, %.lr.ph.i.i.i ]
  store i64 %.val3.i.i.i, ptr %i.c, align 8, !noalias !66
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTciEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB15_9enumerate9EnumerateINtNtNtB19_5slice4iter4IterhEENCNCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB2V_9ByteLevelNtNtB2Z_9tokenizer12PreTokenizer12pre_tokenizes_00EEB2Z_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = ptrtoint ptr %.val5 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !69, !noundef !6 ; 3 uses
  %i.h = load i64, ptr %0, align 8, !range !9, !alias.scope !69, !noundef !6
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp ugt i64 %i.e, %i.i
  br i1 %i.j, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTciEE7reserveCs2JiOgHzbbc7_10tokenizers.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, i64 noundef %i.e, i64 noundef 8, i64 noundef 16)
  %.pre = load i64, ptr %i.f, align 8
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTciEE7reserveCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTciEE7reserveCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b
  %i.k = phi i64 [ %i.g, %bb.a ], [ %.pre, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.m, ptr %i.n, align 8
  store ptr %i.f, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.k, ptr %i.o, align 8
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterhEENCNCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB22_9ByteLevelNtNtB26_9tokenizer12PreTokenizer12pre_tokenizes_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB43_8for_each4callTciENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5j_3VecB56_E14extend_trustedBN_E0E0EB26_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTciEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB15_9enumerate9EnumerateINtNtNtB19_5slice4iter4IterhEENCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_levelNtB2T_9ByteLevelNtNtB2X_9tokenizer10Normalizer9normalize0EEB2X_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = ptrtoint ptr %.val5 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !72, !noundef !6 ; 3 uses
  %i.h = load i64, ptr %0, align 8, !range !9, !alias.scope !72, !noundef !6
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp ugt i64 %i.e, %i.i
  br i1 %i.j, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTciEE7reserveCs2JiOgHzbbc7_10tokenizers.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, i64 noundef %i.e, i64 noundef 8, i64 noundef 16)
  %.pre = load i64, ptr %i.f, align 8
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTciEE7reserveCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTciEE7reserveCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b
  %i.k = phi i64 [ %i.g, %bb.a ], [ %.pre, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.m, ptr %i.n, align 8
  store ptr %i.f, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.k, ptr %i.o, align 8
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterhEENCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_levelNtB20_9ByteLevelNtNtB24_9tokenizer10Normalizer9normalize0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3P_8for_each4callTciENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB55_3VecB4S_E14extend_trustedBN_E0E0EB24_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTciEE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtNtB1b_3str4iter5CharsNCNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers11precompiled7replace0EEB2n_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %.not.i.i17 = icmp eq ptr %1, %2
  br i1 %.not.i.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.0.018 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.1.ph, %bb.e ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.018, i64 1 ; 3 uses
  %i.e = load i8, ptr %.sroa.0.018, align 1, !noalias !79, !noundef !6 ; 5 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %bb.c, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i: ; preds = %bb.b
  %i.g = and i8 %i.e, 31
  %i.h = zext nneg i8 %i.g to i32                 ; 3 uses
  %i.i = icmp ne ptr %i.d, %2
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.018, i64 2 ; 3 uses
  %i.k = load i8, ptr %i.d, align 1, !noalias !79, !noundef !6
  %i.l = shl nuw nsw i32 %i.h, 6
  %i.m = and i8 %i.k, 63
  %i.n = zext nneg i8 %i.m to i32                 ; 2 uses
  %i.o = or disjoint i32 %i.l, %i.n
  %i.p = icmp samesign ugt i8 %i.e, -33
  br i1 %i.p, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = zext nneg i8 %i.e to i32
  br label %bb.d

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i
  %i.r = icmp ne ptr %i.j, %2
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.018, i64 3 ; 3 uses
  %i.t = load i8, ptr %i.j, align 1, !noalias !79, !noundef !6
  %i.u = shl nuw nsw i32 %i.n, 6
  %i.v = and i8 %i.t, 63
  %i.w = zext nneg i8 %i.v to i32
  %i.x = or disjoint i32 %i.u, %i.w               ; 2 uses
  %i.y = shl nuw nsw i32 %i.h, 12
  %i.z = or disjoint i32 %i.x, %i.y
  %i.aa = icmp samesign ugt i8 %i.e, -17
  br i1 %i.aa, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i, label %bb.d

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i
  %i.ab = icmp ne ptr %i.s, %2
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.018, i64 4
  %i.ad = load i8, ptr %i.s, align 1, !noalias !79, !noundef !6
  %i.ae = shl nuw nsw i32 %i.h, 18
  %i.af = and i32 %i.ae, 1835008
  %i.ag = shl nuw nsw i32 %i.x, 6
  %i.ah = and i8 %i.ad, 63
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = or disjoint i32 %i.aj, %i.af
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i, %bb.c
  %.sroa.0.1.ph = phi ptr [ %i.j, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i ], [ %i.s, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i ], [ %i.ac, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i ], [ %i.d, %bb.c ] ; 3 uses
  %.sroa.0.0.i.ph = phi i32 [ %i.o, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i ], [ %i.z, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i ], [ %i.ak, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i ], [ %i.q, %bb.c ]
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecTReTjjERINtNtCs4NRVxsYgnAr_4core6option6OptionIBT_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEEINtB4_18SpecFromIterNestedB12_INtNtNtNtB1f_4iter8adapters3map3MapINtNtNtB1f_5slice4iter4IterNtNtB1S_13pre_tokenizer5SplitENCNvMs0_B4a_NtB4a_18PreTokenizedString10get_splits0EE9from_iterB1U_:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  %i.e = ptrtoint ptr %.val3 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 104                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40)
  %i.i = load i64, ptr %i.b, align 8, !range !13, !noundef !6
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !23, !noundef !6 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTReTjjERINtNtCs4NRVxsYgnAr_4core6option6OptionIBw_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEE14extend_trustedINtNtNtNtBS_4iter8adapters3map3MapINtNtNtBS_5slice4iter4IterNtNtB1v_13pre_tokenizer5SplitENCNvMs0_B3x_NtB3x_18PreTokenizedString10get_splits0EEB1x_.exit.i, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #23
  unreachable

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTReTjjERINtNtCs4NRVxsYgnAr_4core6option6OptionIBw_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEE14extend_trustedINtNtNtNtBS_4iter8adapters3map3MapINtNtNtBS_5slice4iter4IterNtNtB1v_13pre_tokenizer5SplitENCNvMs0_B3x_NtB3x_18PreTokenizedString10get_splits0EEB1x_.exit.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.l, ptr %i.c, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4577
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.s, align 8, !noalias !4577
  store ptr %i.r, ptr %i.a, align 8, !noalias !4577
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.t, align 8, !noalias !4577
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENCNvMs0_B1p_NtB1p_18PreTokenizedString10get_splits0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3f_8for_each4callTReTjjERINtNtBc_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtB1r_5TokenEEENCINvMsj_B4P_IB4N_B4i_E14extend_trustedBN_E0E0EB1t_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTReTjjERINtNtCs4NRVxsYgnAr_4core6option6OptionIBw_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEE14extend_trustedINtNtNtNtBS_4iter8adapters3map3MapINtNtNtBS_5slice4iter4IterNtNtB1v_13pre_tokenizer5SplitENCNvMs0_B3x_NtB3x_18PreTokenizedString10get_splits0EEB1x_.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTReTjjERINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEENtNtNtBY_3ops4drop4Drop4dropB1P_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTReTjjERINtNtB4_6option6OptionIBC_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEEEB1J_.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTReTjjERINtNtCs4NRVxsYgnAr_4core6option6OptionIBw_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEE14extend_trustedINtNtNtNtBS_4iter8adapters3map3MapINtNtNtBS_5slice4iter4IterNtNtB1v_13pre_tokenizer5SplitENCNvMs0_B3x_NtB3x_18PreTokenizedString10get_splits0EEB1x_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4577
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTReTjjERINtNtB4_6option6OptionIBC_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEEEB1J_.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecTTTmmElEjEEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterB13_ENCNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3b_10BpeTrainer8do_trains_00EE9from_iterB3h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.g = ptrtoint ptr %.val3 to i64
  %i.h = ptrtoint ptr %.val to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 12                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.a
  %i.k = load i64, ptr %i.b, align 8, !range !13, !noundef !6
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !23, !noundef !6 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %.noexc
  %i.p = load i64, ptr %i.o, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #23
          to label %.noexc4 unwind label %bb.j

.noexc4:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.r = icmp ule i64 %i.j, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.n, ptr %i.d, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4587)
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !4588, !noalias !4589, !nonnull !6, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val5.i.i = load ptr, ptr %i.v, align 8, !alias.scope !4588, !noalias !4589, !nonnull !6, !noundef !6
  %i.w = ptrtoint ptr %.val5.i.i to i64
  %i.x = ptrtoint ptr %.val.i.i to i64
  %i.y = sub nuw i64 %i.w, %i.x
  %i.z = udiv exact i64 %i.y, 12                  ; 2 uses
  %i.aa = icmp ugt i64 %i.z, %i.n
  br i1 %i.aa, label %bb.d, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTTTmmElEjEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterBG_ENCNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2z_10BpeTrainer8do_trains_00EEB2F_.exit.i, !prof !7

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0, i64 noundef %i.z, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTTTmmElEjEE7reserveCs2JiOgHzbbc7_10tokenizers.exit_crit_edge.i.i unwind label %bb.e, !noalias !4588

._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTTTmmElEjEE7reserveCs2JiOgHzbbc7_10tokenizers.exit_crit_edge.i.i: ; preds = %bb.d
  %.pre.i.i = load i64, ptr %i.t, align 8, !alias.scope !4589, !noalias !4588
  %.pre = load ptr, ptr %i.s, align 8, !alias.scope !4589, !noalias !4588
  br label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTTTmmElEjEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterBG_ENCNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2z_10BpeTrainer8do_trains_00EEB2F_.exit.i

bb.e:                                             ; preds = %bb.d
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTmmElEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTTTmmElEjEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterBG_ENCNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2z_10BpeTrainer8do_trains_00EEB2F_.exit.i: ; preds = %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTTTmmElEjEE7reserveCs2JiOgHzbbc7_10tokenizers.exit_crit_edge.i.i, %bb.c
  %i.ac = phi ptr [ %.pre, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTTTmmElEjEE7reserveCs2JiOgHzbbc7_10tokenizers.exit_crit_edge.i.i ], [ %i.q, %bb.c ]
  %i.ad = phi i64 [ %.pre.i.i, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTTTmmElEjEE7reserveCs2JiOgHzbbc7_10tokenizers.exit_crit_edge.i.i ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4590
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ac, ptr %i.ae, align 8, !noalias !4590
  store ptr %i.t, ptr %i.a, align 8, !noalias !4590
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ad, ptr %i.af, align 8, !noalias !4590
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTmmElEENCNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB22_10BpeTrainer8do_trains_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3n_8for_each4callTB1K_jENCINvMsj_B12_INtB12_3VecB4q_E14extend_trustedBN_E0E0EB28_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTTTmmElEjEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterBG_ENCNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2z_10BpeTrainer8do_trains_00EEB2F_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.g ], [ %lpad.thr_comm.i.i, %bb.e ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTmmElEENCNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2e_10BpeTrainer8do_trains_00EEB2k_.exit unwind label %bb.i

bb.h:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTTTmmElEjEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterBG_ENCNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2z_10BpeTrainer8do_trains_00EEB2F_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %bb.j, %.body
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTmmElEENCNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2e_10BpeTrainer8do_trains_00EEB2k_.exit: ; preds = %bb.j, %.body
  %.pn10 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ai, %bb.j ]
  resume { ptr, i32 } %.pn10

bb.j:                                             ; preds = %bb.b, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTmmElEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTmmElEENCNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2e_10BpeTrainer8do_trains_00EEB2k_.exit unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecTjRTNtNtB8_6string6StringmEEEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerate9EnumerateINtNtNtB28_5slice4iter4IterB15_EEE9from_iterCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = ptrtoint ptr %.val3 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = lshr exact i64 %i.e, 5                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.g = load i64, ptr %i.a, align 8, !range !13, !noundef !6
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !23, !noundef !6 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTjRTNtNtB6_6string6StringmEEE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #23
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTjRTNtNtB6_6string6StringmEEE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = icmp eq ptr %.val, %.val3
  br i1 %i.o, label %.loopexit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTjRTNtNtB6_6string6StringmEEE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.56.0.copyload = load i64, ptr %.sroa.56.0..sroa_idx, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.e, 32
  br i1 %i.p, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %i.f, 576460752303423486
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %i.q = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.aa, %.preheader.i.i ] ; 4 uses
  %i.r = phi i64 [ %.sroa.56.0.copyload, %.preheader.i.i.preheader.new ], [ %i.ab, %.preheader.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i ]
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %i.q
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.q ; 2 uses
  store i64 %i.r, ptr %i.t, align 8, !noalias !4612
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.s, ptr %i.u, align 8, !noalias !4612
  %i.v = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.w = add i64 %i.r, 1
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %i.v
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.v ; 2 uses
  store i64 %i.w, ptr %i.y, align 8, !noalias !4612
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.x, ptr %i.z, align 8, !noalias !4612
  %i.aa = add nuw i64 %i.q, 2                     ; 2 uses
  %i.ab = add i64 %i.r, 2                         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader.i.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.i.i
  %2 = trunc i64 %i.f to i1
  br i1 %2, label %.preheader.i.i.epil.preheader, label %.loopexit

.preheader.i.i.epil.preheader:                    ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.aa, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init8 = phi i64 [ %.sroa.56.0.copyload, %.preheader.i.i.preheader ], [ %i.ab, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod9 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.epil.init
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.epil.init ; 2 uses
  store i64 %.epil.init8, ptr %i.ad, align 8, !noalias !4612
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ac, ptr %i.ae, align 8, !noalias !4612
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.i.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTjRTNtNtB6_6string6StringmEEE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i
  store i64 %i.j, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecTjjEEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB1G_3map3MapINtNtNtB1K_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB3i_8Encoding3pads5_0EINtNtB6_5drain5DrainB12_EEE9from_iterB3m_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [64 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4643)
  %i.j = load i64, ptr %1, align 8, !range !13, !alias.scope !4643, !noalias !4642, !noundef !6
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !4643, !noalias !4642, !noundef !6
  %.not8.i = icmp eq ptr %i.m, null               ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.n, align 8, !alias.scope !4644, !noalias !4645, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10.i = load i64, ptr %i.o, align 8, !alias.scope !4646, !noalias !4647, !noundef !6
  %spec.select.i.i13.i = tail call i64 @llvm.usub.sat.i64(i64 %.val10.i, i64 %.val.i) ; 3 uses
  br i1 %.not8.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread.sink.split, label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %.not8.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainTjjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l)
          to label %._RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit_crit_edge unwind label %bb.x

._RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit_crit_edge: ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !range !13
  %i.p = trunc nuw i64 %.pre to i1
  br i1 %i.p, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread, label %bb.g, !prof !30

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4648
  invoke void @_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainTjjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l)
          to label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit unwind label %bb.x

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !13, !noalias !4648, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !4648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4648
  %i.u = trunc nuw i64 %i.r to i1                 ; 2 uses
  %i.v = add i64 %i.t, %spec.select.i.i13.i       ; 2 uses
  %i.w = icmp uge i64 %i.v, %spec.select.i.i13.i
  %.sroa.46.0.i = select i1 %i.u, i64 %i.v, i64 undef
  %narrow.i = select i1 %i.u, i1 %i.w, i1 false
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.46.0.i, ptr %i.x, align 8, !alias.scope !4642, !noalias !4643
  br i1 %narrow.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread, label %bb.g, !prof !30

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread.sink.split: ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ 0, %bb.c ], [ %spec.select.i.i13.i, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sink, ptr %i.y, align 8, !alias.scope !4642, !noalias !4643
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread: ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread.sink.split, %._RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit_crit_edge, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.aa, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc4 unwind label %bb.x

.noexc4:                                          ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread
  %i.ab = load i64, ptr %i.e, align 8, !range !13, !noundef !6
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !23, !noundef !6 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.ac, label %bb.f, label %bb.h, !prof !7

bb.f:                                             ; preds = %.noexc4
  %i.ag = load i64, ptr %i.af, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ae, i64 %i.ag) #23
          to label %.noexc5 unwind label %bb.x

.noexc5:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %._RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit_crit_edge, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #23
          to label %bb.w unwind label %bb.x

bb.h:                                             ; preds = %.noexc4
  %i.ah = load ptr, ptr %i.af, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ai = icmp ule i64 %i.aa, %i.ae
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.ae, ptr %i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.ah, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 0, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !4649)
  call void @llvm.experimental.noalias.scope.decl(metadata !4650)
  call void @llvm.experimental.noalias.scope.decl(metadata !4651)
  call void @llvm.experimental.noalias.scope.decl(metadata !4652)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4653
  call void @llvm.experimental.noalias.scope.decl(metadata !4654)
  %i.al = load i64, ptr %i.g, align 8, !range !13, !alias.scope !4655, !noalias !4656, !noundef !6
  %i.am = trunc nuw i64 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 5 uses
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !4655, !noalias !4656, !noundef !6
  %.not8.i.i.i = icmp eq ptr %i.ao, null          ; 2 uses
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !4657, !noalias !4658, !noundef !6
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val10.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !4659, !noalias !4660, !noundef !6
  %spec.select.i.i13.i.i.i = call i64 @llvm.usub.sat.i64(i64 %.val10.i.i.i, i64 %.val.i.i.i) ; 3 uses
  br i1 %.not8.i.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread.i.i, label %bb.l

bb.j:                                             ; preds = %bb.h
  br i1 %.not8.i.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainTjjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.an)
          to label %._RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit_crit_edge.i.i unwind label %bb.q, !noalias !4661

._RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit_crit_edge.i.i: ; preds = %bb.k
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !range !13, !noalias !4653
  %.phi.trans.insert13.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre14.i.i = load i64, ptr %.phi.trans.insert13.i.i, align 8, !noalias !4653
  %i.ar = trunc nuw i64 %.pre.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4653
  br i1 %i.ar, label %bb.m, label %bb.o, !prof !30

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4662
  invoke void @_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainTjjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.an)
          to label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.i.i unwind label %bb.q, !noalias !4661

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread.i.i: ; preds = %bb.j, %bb.i
  %.ph.i.i = phi i64 [ 0, %bb.j ], [ %spec.select.i.i13.i.i.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4653
  br label %bb.m

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.i.i: ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !13, !noalias !4662, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.av = load i64, ptr %i.au, align 8, !noalias !4662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4662
  %i.aw = trunc nuw i64 %i.at to i1
  %i.ax = add i64 %i.av, %spec.select.i.i13.i.i.i ; 2 uses
  %i.ay = icmp uge i64 %i.ax, %spec.select.i.i13.i.i.i
  %narrow.i.i.i = select i1 %i.aw, i1 %i.ay, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4653
  br i1 %narrow.i.i.i, label %bb.m, label %bb.o, !prof !30

bb.m:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread.i.i, %._RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit_crit_edge.i.i
  %i.az = phi i64 [ %.ph.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread.i.i ], [ %i.ax, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.i.i ], [ %.pre14.i.i, %._RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit_crit_edge.i.i ] ; 2 uses
  %i.ba = icmp ugt i64 %i.az, %i.ae
  br i1 %i.ba, label %bb.n, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTjjEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB15_3map3MapINtNtNtB19_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2H_8Encoding3pads5_0EINtNtB6_5drain5DrainBF_EEEB2L_.exit.i, !prof !7

bb.n:                                             ; preds = %bb.m
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 0, i64 noundef %i.az, i64 noundef 8, i64 noundef 16)
          to label %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTjjEE7reserveCs2JiOgHzbbc7_10tokenizers.exit_crit_edge.i.i unwind label %bb.q
end_hunk_2
