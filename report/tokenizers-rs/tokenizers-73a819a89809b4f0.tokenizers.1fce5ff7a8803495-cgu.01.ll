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
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
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
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs2JiOgHzbbc7_10tokenizers(i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
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
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs2JiOgHzbbc7_10tokenizers(i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
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
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs2JiOgHzbbc7_10tokenizers(i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
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
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs2JiOgHzbbc7_10tokenizers(i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !4, !noundef !3 ; 9 uses
  %i.c = icmp ult i64 %i.b, 288230376151711744
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE10retain_mutNCINvB2_6retainNCNvMs3_BG_NtBG_4Word9merge_alls1_0E0EBM_.exit, label %.preheader23.i

.preheader23.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4, !nonnull !3, !noundef !3 ; 11 uses
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
  %.val.i = load i64, ptr %i.i, align 8, !noalias !4, !noundef !3
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
  %lcmp.mod13.not = trunc i64 %i.k to i1
  br i1 %lcmp.mod13.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.7.026.i.lcssa ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %.val10.i.prol = load i64, ptr %i.m, align 8, !noalias !4, !noundef !3
  %.not22.i.prol = icmp eq i64 %.val10.i.prol, 0
  br i1 %.not22.i.prol, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.prol
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.0.0.i.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !4
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
  %.val.i.1 = load i64, ptr %i.r, align 8, !noalias !4, !noundef !3
  %.not.i.1 = icmp eq i64 %.val.i.1, 0
  %.sroa.7.026.i.1 = or disjoint i64 %.sroa.0.0.i, 2 ; 3 uses
  br i1 %.not.i.1, label %.preheader.i, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.7.026.i.1
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.2 = load i64, ptr %i.t, align 8, !noalias !4, !noundef !3
  %.not.i.2 = icmp eq i64 %.val.i.2, 0
  %.sroa.7.026.i.2 = or disjoint i64 %.sroa.0.0.i, 3 ; 3 uses
  br i1 %.not.i.2, label %.preheader.i, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.7.026.i.2
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %.val.i.3 = load i64, ptr %i.v, align 8, !noalias !4, !noundef !3
  %.not.i.3 = icmp eq i64 %.val.i.3, 0
  %.sroa.7.026.i.3 = add nuw nsw i64 %.sroa.0.0.i, 4 ; 3 uses
  br i1 %.not.i.3, label %.preheader.i, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE10retain_mutNCINvB2_6retainNCNvMs3_BG_NtBG_4Word9merge_alls1_0E0EBM_.exit.loopexit.unr-lcssa, label %bb.b

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i.lcssa, %.preheader.i ], [ %.sroa.13.1.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.13.1.i.1, %bb.j ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !4
  br label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE10retain_mutNCINvB2_6retainNCNvMs3_BG_NtBG_4Word9merge_alls1_0E0EBM_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %.sroa.7.028.i = phi i64 [ %.sroa.7.0.i.1, %bb.j ], [ %.sroa.7.028.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.13.027.i = phi i64 [ %.sroa.13.1.i.1, %bb.j ], [ %.sroa.13.027.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.7.028.i ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %.val10.i = load i64, ptr %i.x, align 8, !noalias !4, !noundef !3
  %.not22.i = icmp eq i64 %.val10.i, 0
  br i1 %.not22.i, label %.lr.ph.i.1, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.13.027.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !4
  %i.z = add i64 %.sroa.13.027.i, 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.h, %.lr.ph.i
  %.sroa.13.1.i = phi i64 [ %i.z, %bb.h ], [ %.sroa.13.027.i, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.7.028.i ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 48
  %.val10.i.1 = load i64, ptr %i.ab, align 8, !noalias !4, !noundef !3
  %.not22.i.1 = icmp eq i64 %.val10.i.1, 0
  br i1 %.not22.i.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.13.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false), !noalias !4
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
  %.val.i.epil = load i64, ptr %i.ag, align 8, !noalias !4, !noundef !3
  %.not.i.epil = icmp eq i64 %.val.i.epil, 0
  %.sroa.7.026.i.epil = add nuw i64 %.sroa.0.0.i.epil, 1 ; 2 uses
  br i1 %.not.i.epil, label %.preheader.i, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE10retain_mutNCINvB2_6retainNCNvMs3_BG_NtBG_4Word9merge_alls1_0E0EBM_.exit, label %bb.k, !llvm.loop !8

_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE10retain_mutNCINvB2_6retainNCNvMs3_BG_NtBG_4Word9merge_alls1_0E0EBM_.exit: ; preds = %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE10retain_mutNCINvB2_6retainNCNvMs3_BG_NtBG_4Word9merge_alls1_0E0EBM_.exit.loopexit.unr-lcssa, %bb.l, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRjE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
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
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs2JiOgHzbbc7_10tokenizers(i64 noundef %2, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
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
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
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
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs2JiOgHzbbc7_10tokenizers(i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
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
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
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
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs2JiOgHzbbc7_10tokenizers(i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
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
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !10, !noundef !3 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !range !13, !alias.scope !10, !noundef !3
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
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3
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
  %.val = load i64, ptr %i.b, align 8, !alias.scope !14, !noalias !17, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5 = load i64, ptr %i.c, align 8, !alias.scope !17, !noalias !14, !noundef !3
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val5, i64 %.val) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !19, !noundef !3 ; 3 uses
  %i.f = load i64, ptr %0, align 8, !range !13, !alias.scope !19, !noundef !3
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
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3
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
  %.val = load i64, ptr %1, align 8, !noundef !3  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.a, align 8, !noundef !3 ; 5 uses
  %i.b = sub nuw i64 %.val5, %.val                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !22, !noundef !3 ; 3 uses
  %i.e = load i64, ptr %0, align 8, !range !13, !alias.scope !22, !noundef !3
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
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.l = icmp ule i64 %.val, %.val5
  tail call void @llvm.assume(i1 %i.l)
  %.not6.i.i.i = icmp eq i64 %.val, %.val5
  br i1 %.not6.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTciEE7reserveCs2JiOgHzbbc7_10tokenizers.exit
  %.neg = add i64 %.val, 1
  %lcmp.mod.not = trunc i64 %i.b to i1
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol, label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.m = add nuw nsw i64 %.val, 1
  %i.n = icmp ult i64 %.val, 3
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.val ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !range !31, !alias.scope !32, !noalias !33, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !32, !noalias !33, !noundef !3
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.h ; 2 uses
  store i32 %i.p, ptr %i.s, align 8, !noalias !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.r, ptr %i.t, align 8, !noalias !41
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
  %i.z = load i32, ptr %i.y, align 8, !range !31, !alias.scope !32, !noalias !33, !noundef !3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !32, !noalias !33, !noundef !3
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.w ; 2 uses
  store i32 %i.z, ptr %i.ac, align 8, !noalias !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.ab, ptr %i.ad, align 8, !noalias !41
  %i.ae = add nuw nsw i64 %i.x, 2                 ; 2 uses
  %i.af = icmp ult i64 %i.x, 2
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.x ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !range !31, !alias.scope !32, !noalias !33, !noundef !3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !32, !noalias !33, !noundef !3
  %i.al = getelementptr [16 x i8], ptr %i.j, i64 %i.w ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 16
  store i32 %i.ai, ptr %i.am, align 8, !noalias !41
  %i.an = getelementptr i8, ptr %i.al, i64 24
  store i64 %i.ak, ptr %i.an, align 8, !noalias !41
  %i.ao = add i64 %i.w, 2                         ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.ae, %.val5
  br i1 %.not.i.i.i.1, label %.loopexit, label %.lr.ph.i.i.i

.loopexit:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTciEE7reserveCs2JiOgHzbbc7_10tokenizers.exit
  %.val3.i.i.i = phi i64 [ %i.h, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTciEE7reserveCs2JiOgHzbbc7_10tokenizers.exit ], [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ao, %.lr.ph.i.i.i ]
  store i64 %.val3.i.i.i, ptr %i.c, align 8, !noalias !48
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTciEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB15_9enumerate9EnumerateINtNtNtB19_5slice4iter4IterhEENCNCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB2V_9ByteLevelNtNtB2Z_9tokenizer12PreTokenizer12pre_tokenizes_00EEB2Z_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.c = ptrtoint ptr %.val5 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !49, !noundef !3 ; 3 uses
  %i.h = load i64, ptr %0, align 8, !range !13, !alias.scope !49, !noundef !3
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
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3
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
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.c = ptrtoint ptr %.val5 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !52, !noundef !3 ; 3 uses
  %i.h = load i64, ptr %0, align 8, !range !13, !alias.scope !52, !noundef !3
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
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3
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
  %i.e = load i8, ptr %.sroa.0.018, align 1, !noalias !55, !noundef !3 ; 5 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %bb.c, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i: ; preds = %bb.b
  %i.g = and i8 %i.e, 31
  %i.h = zext nneg i8 %i.g to i32                 ; 3 uses
  %i.i = icmp ne ptr %i.d, %2
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.018, i64 2 ; 3 uses
  %i.k = load i8, ptr %i.d, align 1, !noalias !55, !noundef !3
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
  %i.t = load i8, ptr %i.j, align 1, !noalias !55, !noundef !3
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
  %i.ad = load i8, ptr %i.s, align 1, !noalias !55, !noundef !3
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
begin_hunk_2_@_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjEINtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2N_10BpeTrainer8do_trains_0ENtNtNtB9_6traits8iterator8Iterator4nextB2T_:.peel.begin
_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2g_10BpeTrainer8do_trains_0EEINtB5_8FuseImplBY_E4nextB2m_.exit.i.peel: ; preds = %bb.d
  %i.z = load ptr, ptr %i.i, align 8, !alias.scope !2988, !noalias !2989, !nonnull !3, !align !601, !noundef !3
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !2990, !noundef !3
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %.val.i.i.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2986
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2986
  %i.ac = load ptr, ptr %i.j, align 8, !alias.scope !2988, !noalias !2989, !nonnull !3, !align !601, !noundef !3 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load i32, ptr %i.ad, align 8, !noalias !2990, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 68
  %i.ag = load i32, ptr %i.af, align 4, !noalias !2990, !noundef !3
  %i.ah = load ptr, ptr %i.k, align 8, !alias.scope !2988, !noalias !2989, !nonnull !3, !align !2887, !noundef !3
  %i.ai = load i32, ptr %i.ah, align 4, !noalias !2990, !noundef !3
  %i.aj = load ptr, ptr %i.l, align 8, !alias.scope !2988, !noalias !2989, !nonnull !3, !align !601, !noundef !3
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !2990, !noundef !3
  call void @_RNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB5_4Word5merge(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(24) %i.ab, i32 noundef %i.ae, i32 noundef %i.ag, i32 noundef %i.ai, i64 noundef %i.ak), !noalias !2990
  %i.al = load ptr, ptr %i.m, align 8, !noalias !2986, !nonnull !3, !noundef !3 ; 3 uses
  %i.am = load i64, ptr %i.n, align 8, !noalias !2986, !noundef !3 ; 2 uses
  %i.an = icmp ult i64 %i.am, 768614336404564651
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %i.am
  %i.ap = load i64, ptr %i.a, align 8, !range !13, !noalias !2986, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2986
  store ptr %i.al, ptr %i.b, align 8, !noalias !2986
  store ptr %i.al, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !2986
  store i64 %i.ap, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !2986
  store ptr %i.ao, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !2986
  store ptr %i.c, ptr %i.o, align 8, !noalias !2986
  call void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecTTTmmElEjEEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterB13_ENCNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3b_10BpeTrainer8do_trains_00EE9from_iterB3h_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b), !noalias !2953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2986
  %.pr.i.peel = load i64, ptr %i.d, align 8, !noalias !2971 ; 3 uses
  %.not.i.peel = icmp eq i64 %.pr.i.peel, -1
  br i1 %.not.i.peel, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2g_10BpeTrainer8do_trains_0EEINtB5_8FuseImplBY_E4nextB2m_.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2g_10BpeTrainer8do_trains_0EEINtB5_8FuseImplBY_E4nextB2m_.exit.i.peel
  %.sroa.4.0.copyload.i.peel = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2971, !nonnull !3, !noundef !3 ; 5 uses
  %.sroa.5.0.copyload.i.peel = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2971 ; 3 uses
  %i.aq = icmp ult i64 %.sroa.5.0.copyload.i.peel, 384307168202282326
  call void @llvm.assume(i1 %i.aq)
  %.idx = mul nuw nsw i64 %.sroa.5.0.copyload.i.peel, 24
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.peel, i64 %.idx ; 2 uses
  %i.as = load ptr, ptr %1, align 8, !alias.scope !2991, !noalias !2953, !noundef !3
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit.i.peel, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(144) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit.i.peel unwind label %.loopexit.split-lp9, !noalias !2953

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit.i.peel: ; preds = %bb.f, %bb.e
  store ptr %.sroa.4.0.copyload.i.peel, ptr %1, align 8, !alias.scope !2956, !noalias !2953
  store ptr %.sroa.4.0.copyload.i.peel, ptr %i.f, align 8, !alias.scope !2956, !noalias !2953
  store i64 %.pr.i.peel, ptr %.sroa.618.0..sroa_idx19.i, align 8, !alias.scope !2956, !noalias !2953
  store ptr %i.ar, ptr %i.e, align 8, !alias.scope !2956, !noalias !2953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2971
  %i.au = icmp eq i64 %.sroa.5.0.copyload.i.peel, 0
  br i1 %i.au, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit.i.peel, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit.i
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(144) %1)
          to label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs2JiOgHzbbc7_10tokenizers.exit.thread.i unwind label %.loopexit6, !noalias !2961

common.resume.i:                                  ; preds = %bb.q, %bb.p, %bb.g
  %common.resume.op.i = phi { ptr, i32 } [ %lpad.phi, %bb.g ], [ %i.cf, %bb.p ], [ %lpad.phi12, %bb.q ]
  resume { ptr, i32 } %common.resume.op.i

.loopexit6:                                       ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit6
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit6 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  store ptr null, ptr %1, align 8, !alias.scope !2958, !noalias !2961
  br label %common.resume.i

.loopexit:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit.i.peel, %bb.a
  %.lcssa = phi ptr [ %i.r, %bb.a ], [ %.sroa.4.0.copyload.i.peel, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit.i.peel ], [ %.sroa.4.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  store ptr %i.av, ptr %i.f, align 8, !alias.scope !2963, !noalias !2968
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.lcssa, i64 24, i1 false)
  store i64 1, ptr %0, align 8, !alias.scope !2953, !noalias !2956
  br label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2t_10BpeTrainer8do_trains_0EINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEENtNtNtB9_6traits8iterator8Iterator4nextB2z_.exit

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs2JiOgHzbbc7_10tokenizers.exit.thread.i: ; preds = %.lr.ph
  store ptr null, ptr %1, align 8, !alias.scope !2958, !noalias !2961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2971
  call void @llvm.experimental.noalias.scope.decl(metadata !2994)
  %i.aw = load ptr, ptr %i.g, align 8, !alias.scope !2996, !noalias !2976, !noundef !3
  %.not.i1.i = icmp eq ptr %i.aw, null
  br i1 %.not.i1.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2g_10BpeTrainer8do_trains_0EEINtB5_8FuseImplBY_E4nextB2m_.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs2JiOgHzbbc7_10tokenizers.exit.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2997)
  %i.ax = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterjuENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.g), !noalias !2981
  %i.ay = extractvalue { ptr, ptr } %i.ax, 0      ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2g_10BpeTrainer8do_trains_0EEINtB5_8FuseImplBY_E4nextB2m_.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val.i.i.i = load i64, ptr %i.ay, align 8, !noalias !2981, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2999)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3001
  store i64 %.val.i.i.i, ptr %i.c, align 8, !noalias !3001
  %i.az = load ptr, ptr %i.h, align 8, !alias.scope !3002, !noalias !2989, !nonnull !3, !align !601, !noundef !3
  %i.ba = load i64, ptr %i.az, align 8, !noalias !3003, !noundef !3
  %i.bb = icmp ult i64 %.val.i.i.i, %i.ba
  br i1 %i.bb, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2g_10BpeTrainer8do_trains_0EEINtB5_8FuseImplBY_E4nextB2m_.exit.i, label %.loopexit7, !prof !66

.loopexit7:                                       ; preds = %bb.i, %bb.d
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #23, !noalias !3003
  unreachable

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2g_10BpeTrainer8do_trains_0EEINtB5_8FuseImplBY_E4nextB2m_.exit.i: ; preds = %bb.i
  %i.bc = load ptr, ptr %i.i, align 8, !alias.scope !3002, !noalias !2989, !nonnull !3, !align !601, !noundef !3
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !3003, !noundef !3
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.val.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3001
  %i.bf = load ptr, ptr %i.j, align 8, !alias.scope !3002, !noalias !2989, !nonnull !3, !align !601, !noundef !3 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = load i32, ptr %i.bg, align 8, !noalias !3003, !noundef !3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 68
  %i.bj = load i32, ptr %i.bi, align 4, !noalias !3003, !noundef !3
  %i.bk = load ptr, ptr %i.k, align 8, !alias.scope !3002, !noalias !2989, !nonnull !3, !align !2887, !noundef !3
  %i.bl = load i32, ptr %i.bk, align 4, !noalias !3003, !noundef !3
  %i.bm = load ptr, ptr %i.l, align 8, !alias.scope !3002, !noalias !2989, !nonnull !3, !align !601, !noundef !3
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !3003, !noundef !3
  call void @_RNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB5_4Word5merge(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(24) %i.be, i32 noundef %i.bh, i32 noundef %i.bj, i32 noundef %i.bl, i64 noundef %i.bn), !noalias !3003
  %i.bo = load ptr, ptr %i.m, align 8, !noalias !3001, !nonnull !3, !noundef !3 ; 3 uses
  %i.bp = load i64, ptr %i.n, align 8, !noalias !3001, !noundef !3 ; 2 uses
  %i.bq = icmp ult i64 %i.bp, 768614336404564651
  call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %i.bo, i64 %i.bp
  %i.bs = load i64, ptr %i.a, align 8, !range !13, !noalias !3001, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3001
  store ptr %i.bo, ptr %i.b, align 8, !noalias !3001
  store ptr %i.bo, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !3001
  store i64 %i.bs, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !3001
  store ptr %i.br, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !3001
  store ptr %i.c, ptr %i.o, align 8, !noalias !3001
  call void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecTTTmmElEjEEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterB13_ENCNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3b_10BpeTrainer8do_trains_00EE9from_iterB3h_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b), !noalias !2953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3001
  %.pr.i = load i64, ptr %i.d, align 8, !noalias !2971 ; 3 uses
  %.not.i = icmp eq i64 %.pr.i, -1
  br i1 %.not.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2g_10BpeTrainer8do_trains_0EEINtB5_8FuseImplBY_E4nextB2m_.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2g_10BpeTrainer8do_trains_0EEINtB5_8FuseImplBY_E4nextB2m_.exit.i
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2971, !nonnull !3, !noundef !3 ; 5 uses
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2971 ; 3 uses
  %i.bt = icmp ult i64 %.sroa.5.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.bt)
  %.idx33 = mul nuw nsw i64 %.sroa.5.0.copyload.i, 24
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 %.idx33 ; 2 uses
  %i.bv = load ptr, ptr %1, align 8, !alias.scope !2991, !noalias !2953, !noundef !3
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(144) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %.loopexit8, !noalias !2953

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2g_10BpeTrainer8do_trains_0EEINtB5_8FuseImplBY_E4nextB2m_.exit.thread.i: ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2g_10BpeTrainer8do_trains_0EEINtB5_8FuseImplBY_E4nextB2m_.exit.i, %bb.h, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs2JiOgHzbbc7_10tokenizers.exit.thread.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2g_10BpeTrainer8do_trains_0EEINtB5_8FuseImplBY_E4nextB2m_.exit.i.peel, %bb.c, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs2JiOgHzbbc7_10tokenizers.exit.thread.i.peel
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3004)
  call void @llvm.experimental.noalias.scope.decl(metadata !3007)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i2.i)
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !3009, !noalias !3010, !noundef !3
  %.not.i3.i = icmp eq ptr %i.by, null
  br i1 %.not.i3.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2g_10BpeTrainer8do_trains_0EEINtB5_8FuseImplBY_E4nextB2m_.exit.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3011)
  call void @llvm.experimental.noalias.scope.decl(metadata !3014)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !3017, !noalias !3018, !nonnull !3, !noundef !3
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !3017, !noalias !3018, !nonnull !3, !noundef !3 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, %i.ca
  br i1 %i.cd, label %bb.o, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1b_3ops8function6FnOnceTQB5_EE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i4.i

_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1b_3ops8function6FnOnceTQB5_EE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i4.i: ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store ptr %i.ce, ptr %i.cb, align 8, !alias.scope !3017, !noalias !3018
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i2.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !noalias !3021
  br label %bb.n

bb.m:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2g_10BpeTrainer8do_trains_0EEINtB5_8FuseImplBY_E4nextB2m_.exit.thread.i
  store i64 0, ptr %0, align 8, !alias.scope !3010, !noalias !3009
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs2JiOgHzbbc7_10tokenizers.exit8.i

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit.i7.i, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1b_3ops8function6FnOnceTQB5_EE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i4.i
  %.sink.i.i9.i5.i = phi i64 [ 1, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1b_3ops8function6FnOnceTQB5_EE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i4.i ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit.i7.i ]
  store i64 %.sink.i.i9.i5.i, ptr %0, align 8, !alias.scope !3010, !noalias !3009
  %.sroa.6.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i6.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i2.i, i64 24, i1 false), !noalias !3009
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs2JiOgHzbbc7_10tokenizers.exit8.i

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit.i7.i unwind label %bb.p, !noalias !3010

bb.p:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bx, align 8, !alias.scope !3009, !noalias !3010
  br label %common.resume.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit.i7.i: ; preds = %bb.o
  store ptr null, ptr %i.bx, align 8, !alias.scope !3009, !noalias !3010
  br label %bb.n

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs2JiOgHzbbc7_10tokenizers.exit8.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i2.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2971
  br label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2t_10BpeTrainer8do_trains_0EINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEENtNtNtB9_6traits8iterator8Iterator4nextB2z_.exit

.loopexit8:                                       ; preds = %bb.k
  %lpad.loopexit10 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp9:                              ; preds = %bb.f
  %lpad.loopexit.split-lp11 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp9, %.loopexit8
  %.sroa.4.0.copyload.i.lcssa = phi ptr [ %.sroa.4.0.copyload.i, %.loopexit8 ], [ %.sroa.4.0.copyload.i.peel, %.loopexit.split-lp9 ] ; 2 uses
  %.lcssa4 = phi ptr [ %i.bu, %.loopexit8 ], [ %i.ar, %.loopexit.split-lp9 ]
  %.pr.i.lcssa = phi i64 [ %.pr.i, %.loopexit8 ], [ %.pr.i.peel, %.loopexit.split-lp9 ]
  %lpad.phi12 = phi { ptr, i32 } [ %lpad.loopexit10, %.loopexit8 ], [ %lpad.loopexit.split-lp11, %.loopexit.split-lp9 ]
  store ptr %.sroa.4.0.copyload.i.lcssa, ptr %1, align 8, !alias.scope !2956, !noalias !2953
  store ptr %.sroa.4.0.copyload.i.lcssa, ptr %i.f, align 8, !alias.scope !2956, !noalias !2953
  store i64 %.pr.i.lcssa, ptr %.sroa.618.0..sroa_idx19.i, align 8, !alias.scope !2956, !noalias !2953
  store ptr %.lcssa4, ptr %i.e, align 8, !alias.scope !2956, !noalias !2953
  br label %common.resume.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.k, %bb.j
  store ptr %.sroa.4.0.copyload.i, ptr %1, align 8, !alias.scope !2956, !noalias !2953
  store ptr %.sroa.4.0.copyload.i, ptr %i.f, align 8, !alias.scope !2956, !noalias !2953
  store i64 %.pr.i, ptr %.sroa.618.0..sroa_idx19.i, align 8, !alias.scope !2956, !noalias !2953
  store ptr %i.bu, ptr %i.e, align 8, !alias.scope !2956, !noalias !2953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2971
  %i.cg = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %i.cg, label %.lr.ph, label %.loopexit, !llvm.loop !3022

_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2t_10BpeTrainer8do_trains_0EINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEENtNtNtB9_6traits8iterator8Iterator4nextB2z_.exit: ; preds = %.loopexit, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTTmmElEjEEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs2JiOgHzbbc7_10tokenizers.exit8.i
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapNtNtNtBb_3str4iter11CharIndicesINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2r_16NormalizedStringINtNtBb_7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from00ENCB2l_0ENtNtNtB9_6traits8iterator8Iterator4nextB2v_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3026)
  %.promoted.i = load i64, ptr %1, align 8, !alias.scope !3026, !noalias !3023
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !3026, !noalias !3023, !nonnull !3 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted31.i = load i64, ptr %i.a, align 8, !alias.scope !3026, !noalias !3023 ; 2 uses
  %.promoted33.i.a = load ptr, ptr %i.c, align 8, !alias.scope !3026, !noalias !3023 ; 8 uses
  %.promoted34.i = load i64, ptr %i.f, align 8, !alias.scope !3026, !noalias !3023 ; 4 uses
  %i.g = trunc nuw i64 %.promoted.i to i1
  %i.h = add nuw i64 %.promoted31.i, 1
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.promoted32.i = load i64, ptr %i.b, align 8, !alias.scope !3026, !noalias !3023
  %i.i = icmp ult i64 %.promoted31.i, %.promoted32.i
  br i1 %i.i, label %._crit_edge37.i, label %bb.c

._crit_edge37.i:                                  ; preds = %bb.b
  %.val.i.i.i.pre.i = load i64, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3028, !noalias !3035
  %.val2.i.i.i.pre.i = load i64, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3028, !noalias !3035
  br label %bb.j

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %1, align 8, !alias.scope !3039, !noalias !3040
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3041)
  %.not.i.peel.i = icmp eq ptr %.promoted33.i.a, null
  br i1 %.not.i.peel.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter11CharIndicesNCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1R_16NormalizedStringINtNtBb_7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from0EEINtB5_8FuseImplBY_E4nextB1V_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3047)
  %i.j = ptrtoint ptr %.promoted33.i.a to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3050)
  %i.k = icmp eq ptr %.promoted33.i.a, %i.e
  br i1 %i.k, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter11CharIndicesNCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1R_16NormalizedStringINtNtBb_7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from0EEINtB5_8FuseImplBY_E4nextB1V_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.promoted33.i.a, i64 1 ; 3 uses
  store ptr %i.l, ptr %i.c, align 8, !alias.scope !3053, !noalias !3056
  %i.m = load i8, ptr %.promoted33.i.a, align 1, !noalias !3059, !noundef !3 ; 4 uses
  %i.n = icmp sgt i8 %i.m, -1
  br i1 %i.n, label %.thread.i.i.peel.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.peel.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.peel.i: ; preds = %bb.f
  %i.o = and i8 %i.m, 31
  %i.p = zext nneg i8 %i.o to i32                 ; 3 uses
  %i.q = icmp ne ptr %i.l, %i.e
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %.promoted33.i.a, i64 2 ; 4 uses
  store ptr %i.r, ptr %i.c, align 8, !alias.scope !3060, !noalias !3056
  %i.s = load i8, ptr %i.l, align 1, !noalias !3059, !noundef !3
  %i.t = shl nuw nsw i32 %i.p, 6
  %i.u = and i8 %i.s, 63
  %i.v = zext nneg i8 %i.u to i32                 ; 2 uses
  %i.w = or disjoint i32 %i.t, %i.v
  %i.x = icmp samesign ugt i8 %i.m, -33
  br i1 %i.x, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.peel.i, label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.peel.i
  %i.y = icmp ne ptr %i.r, %i.e
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %.promoted33.i.a, i64 3 ; 4 uses
  store ptr %i.z, ptr %i.c, align 8, !alias.scope !3063, !noalias !3056
  %i.aa = load i8, ptr %i.r, align 1, !noalias !3059, !noundef !3
  %i.ab = shl nuw nsw i32 %i.v, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.ab, %i.ad            ; 2 uses
  %i.af = shl nuw nsw i32 %i.p, 12
  %i.ag = or disjoint i32 %i.ae, %i.af
  %i.ah = icmp samesign ugt i8 %i.m, -17
  br i1 %i.ah, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.peel.i, label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.peel.i
  %i.ai = icmp ne ptr %i.z, %i.e
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %.promoted33.i.a, i64 4 ; 2 uses
  store ptr %i.aj, ptr %i.c, align 8, !alias.scope !3066, !noalias !3056
  %i.ak = load i8, ptr %i.z, align 1, !noalias !3059, !noundef !3
  %i.al = shl nuw nsw i32 %i.p, 18
  %i.am = and i32 %i.al, 1835008
  %i.an = shl nuw nsw i32 %i.ae, 6
  %i.ao = and i8 %i.ak, 63
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.an, %i.ap
  %i.ar = or disjoint i32 %i.aq, %i.am
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.peel.i
  %i.as = phi ptr [ %i.z, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.peel.i ], [ %i.aj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.peel.i ], [ %i.r, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.peel.i ]
  %.sroa.4.0.i.ph.i.i.i.peel.i = phi i32 [ %i.ag, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.peel.i ], [ %i.ar, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.peel.i ], [ %i.w, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.peel.i ] ; 4 uses
  %i.at = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.peel.i, 1114112
  tail call void @llvm.assume(i1 %i.at)
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %.promoted34.i, %i.j
  %i.aw = add i64 %i.av, %i.au
  store i64 %i.aw, ptr %i.f, align 8, !alias.scope !3069, !noalias !3056
  %i.ax = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.peel.i, 128
  br i1 %i.ax, label %.loopexit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.peel.i, 2048
  br i1 %i.ay, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.peel.i, 65536
  %..i.i.i.peel.i = select i1 %i.az, i64 3, i64 4
  br label %.loopexit.i

.thread.i.i.peel.i:                               ; preds = %bb.f
  %i.ba = add i64 %.promoted34.i, 1
  store i64 %i.ba, ptr %i.f, align 8, !alias.scope !3069, !noalias !3056
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.thread.i.i.peel.i, %bb.i, %bb.h, %bb.g
  %.sroa.9.0.ph.peel.i = phi i64 [ 1, %.thread.i.i.peel.i ], [ 1, %bb.g ], [ %..i.i.i.peel.i, %bb.i ], [ 2, %bb.h ] ; 3 uses
  store i64 1, ptr %1, align 8, !alias.scope !3026, !noalias !3023
  store i64 %.sroa.9.0.ph.peel.i, ptr %i.b, align 8, !alias.scope !3026, !noalias !3023
  store i64 %.promoted34.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3026, !noalias !3023
  store i64 %.sroa.9.0.ph.peel.i, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3026, !noalias !3023
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.i, %._crit_edge37.i
  %.val2.i.i.i.i = phi i64 [ %.val2.i.i.i.pre.i, %._crit_edge37.i ], [ %.sroa.9.0.ph.peel.i, %.loopexit.i ]
  %.val.i.i.i.i = phi i64 [ %.val.i.i.i.pre.i, %._crit_edge37.i ], [ %.promoted34.i, %.loopexit.i ] ; 2 uses
  %.lcssa.i = phi i64 [ %i.h, %._crit_edge37.i ], [ 1, %.loopexit.i ]
  store i64 %.lcssa.i, ptr %i.a, align 8, !alias.scope !3070, !noalias !3035
  %i.bb = add i64 %.val.i.i.i.i, %.val2.i.i.i.i
  store i64 1, ptr %0, align 8, !alias.scope !3023, !noalias !3026
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !3023, !noalias !3026
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bb, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !3023, !noalias !3026
  br label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter11CharIndicesNCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB24_16NormalizedStringINtNtBb_7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from0EIB1c_INtNtNtBb_3ops5range5RangejENCNCB1Y_00EENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter11CharIndicesNCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1R_16NormalizedStringINtNtBb_7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from0EEINtB5_8FuseImplBY_E4nextB1V_.exit.i: ; preds = %bb.e, %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3078)
  %i.bd = load i64, ptr %i.bc, align 8, !range !65, !alias.scope !3080, !noalias !3081, !noundef !3
  %i.be = trunc nuw i64 %i.bd to i1
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter11CharIndicesNCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1R_16NormalizedStringINtNtBb_7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from0EEINtB5_8FuseImplBY_E4nextB1V_.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3085)
  %i.bh = load i64, ptr %i.bf, align 8, !alias.scope !3087, !noalias !3096, !noundef !3 ; 2 uses
  %i.bi = load i64, ptr %i.bg, align 8, !alias.scope !3099, !noalias !3100, !noundef !3
  %i.bj = icmp ult i64 %i.bh, %i.bi
  br i1 %i.bj, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1v_16NormalizedStringINtNtBe_7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceB1z_.exit.i6.i, label %bb.n

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1v_16NormalizedStringINtNtBe_7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceB1z_.exit.i6.i: ; preds = %bb.k
  %i.bk = add nuw i64 %i.bh, 1
  store i64 %i.bk, ptr %i.bf, align 8, !alias.scope !3101, !noalias !3102
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i.i7.i = load i64, ptr %i.bl, align 8, !alias.scope !3103, !noalias !3102, !noundef !3 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val2.i.i.i8.i = load i64, ptr %i.bm, align 8, !alias.scope !3103, !noalias !3102, !noundef !3
  %i.bn = add i64 %.val2.i.i.i8.i, %.val.i.i.i7.i
  br label %bb.m

bb.l:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter11CharIndicesNCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1R_16NormalizedStringINtNtBb_7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from0EEINtB5_8FuseImplBY_E4nextB1V_.exit.i
  store i64 0, ptr %0, align 8, !alias.scope !3081, !noalias !3080
  br label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter11CharIndicesNCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB24_16NormalizedStringINtNtBb_7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from0EIB1c_INtNtNtBb_3ops5range5RangejENCNCB1Y_00EENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit

bb.m:                                             ; preds = %bb.n, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1v_16NormalizedStringINtNtBe_7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceB1z_.exit.i6.i
  %storemerge.i.i11.i1.i = phi i64 [ 1, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1v_16NormalizedStringINtNtBe_7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceB1z_.exit.i6.i ], [ 0, %bb.n ]
  %.sroa.6.09.i2.i = phi i64 [ %.val.i.i.i7.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1v_16NormalizedStringINtNtBe_7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceB1z_.exit.i6.i ], [ undef, %bb.n ]
  %.sroa.7.07.i3.i = phi i64 [ %i.bn, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1v_16NormalizedStringINtNtBe_7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceB1z_.exit.i6.i ], [ undef, %bb.n ]
  store i64 %storemerge.i.i11.i1.i, ptr %0, align 8, !alias.scope !3081, !noalias !3080
  %.sroa.6.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.09.i2.i, ptr %.sroa.6.0..sroa_idx.i4.i, align 8, !alias.scope !3081, !noalias !3080
  %.sroa.7.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.07.i3.i, ptr %.sroa.7.0..sroa_idx.i5.i, align 8, !alias.scope !3081, !noalias !3080
  br label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter11CharIndicesNCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB24_16NormalizedStringINtNtBb_7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from0EIB1c_INtNtNtBb_3ops5range5RangejENCNCB1Y_00EENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit

bb.n:                                             ; preds = %bb.k
  store i64 0, ptr %i.bc, align 8, !alias.scope !3080, !noalias !3081
  br label %bb.m

_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter11CharIndicesNCNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB24_16NormalizedStringINtNtBb_7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from0EIB1c_INtNtNtBb_3ops5range5RangejENCNCB1Y_00EENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit: ; preds = %bb.j, %bb.l, %bb.m
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapNtNtNtBb_3str4iter11CharIndicesINtNtCscdodAO9FK5_5alloc3vec3VecTTjjEbEENCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternNCNvXB2l_cNtB2l_7Pattern12find_matches0B3h_12find_matches0ENtNtNtB9_6traits8iterator8Iterator4nextB2p_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
.peel.begin:
  %.sroa.0.i3.i = alloca [16 x i8], align 8       ; 4 uses
  %.sroa.7.i4.i = alloca [7 x i8], align 1        ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3107)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.sroa.629.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.pre.i = load ptr, ptr %1, align 8, !alias.scope !3109, !noalias !3112
  %i.l = icmp eq ptr %.pre.i, null
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3114)
  br i1 %i.l, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs2JiOgHzbbc7_10tokenizers.exit.thread.i.peel, label %bb.a

bb.a:                                             ; preds = %.peel.begin
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3119)
  %i.m = load ptr, ptr %i.b, align 8, !alias.scope !3122, !noalias !3123, !nonnull !3, !noundef !3
  %i.n = load ptr, ptr %i.c, align 8, !alias.scope !3122, !noalias !3123, !nonnull !3, !noundef !3 ; 4 uses
  %i.o = icmp eq ptr %i.n, %i.m
  br i1 %i.o, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB18_3ops8function6FnOnceTQB5_EE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i.peel, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB18_3ops8function6FnOnceTQB5_EE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i.i.peel

_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB18_3ops8function6FnOnceTQB5_EE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i.i.peel: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.p, ptr %i.c, align 8, !alias.scope !3122, !noalias !3123
  %.sroa.5.0..sroa_idx7.i.i.peel = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5.0.copyload8.i.i.peel = load i8, ptr %.sroa.5.0..sroa_idx7.i.i.peel, align 8, !noalias !3126 ; 2 uses
  %.not6.i.i.peel = icmp eq i8 %.sroa.5.0.copyload8.i.i.peel, 2
  br i1 %.not6.i.i.peel, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB18_3ops8function6FnOnceTQB5_EE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i.peel, label %.loopexit

_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB18_3ops8function6FnOnceTQB5_EE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i.peel: ; preds = %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB18_3ops8function6FnOnceTQB5_EE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i.i.peel, %bb.a
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(112) %1)
          to label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs2JiOgHzbbc7_10tokenizers.exit.thread36.i.peel unwind label %.loopexit.split-lp, !noalias !3112

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs2JiOgHzbbc7_10tokenizers.exit.thread36.i.peel: ; preds = %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB18_3ops8function6FnOnceTQB5_EE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i.peel
  store ptr null, ptr %1, align 8, !alias.scope !3127, !noalias !3112
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs2JiOgHzbbc7_10tokenizers.exit.thread.i.peel

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs2JiOgHzbbc7_10tokenizers.exit.thread.i.peel: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs2JiOgHzbbc7_10tokenizers.exit.thread36.i.peel, %.peel.begin
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3128)
  %i.q = load ptr, ptr %i.d, align 8, !alias.scope !3131, !noalias !3132, !noundef !3 ; 8 uses
  %.not.i2.i.peel = icmp eq ptr %i.q, null
  br i1 %.not.i2.i.peel, label %.loopexit9, label %bb.b

bb.b:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs2JiOgHzbbc7_10tokenizers.exit.thread.i.peel
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3137)
  %i.r = load ptr, ptr %i.e, align 8, !alias.scope !3140, !noalias !3143, !nonnull !3, !noundef !3 ; 4 uses
  %i.s = ptrtoint ptr %i.q to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3145)
  %i.t = icmp eq ptr %i.q, %i.r
  br i1 %i.t, label %.loopexit9, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 3 uses
  store ptr %i.u, ptr %i.d, align 8, !alias.scope !3148, !noalias !3143
  %i.v = load i8, ptr %i.q, align 1, !noalias !3151, !noundef !3 ; 5 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %.thread.i.i.i.peel, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.peel: ; preds = %bb.c
  %i.x = and i8 %i.v, 31
  %i.y = zext nneg i8 %i.x to i32                 ; 3 uses
  %i.z = icmp ne ptr %i.u, %i.r
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 4 uses
  store ptr %i.aa, ptr %i.d, align 8, !alias.scope !3152, !noalias !3143
  %i.ab = load i8, ptr %i.u, align 1, !noalias !3151, !noundef !3
  %i.ac = shl nuw nsw i32 %i.y, 6
  %i.ad = and i8 %i.ab, 63
  %i.ae = zext nneg i8 %i.ad to i32               ; 2 uses
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = icmp samesign ugt i8 %i.v, -33
  br i1 %i.ag, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.peel, label %bb.d

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.peel
  %i.ah = icmp ne ptr %i.aa, %i.r
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 3 ; 4 uses
  store ptr %i.ai, ptr %i.d, align 8, !alias.scope !3155, !noalias !3143
  %i.aj = load i8, ptr %i.aa, align 1, !noalias !3151, !noundef !3
  %i.ak = shl nuw nsw i32 %i.ae, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.y, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.v, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.peel, label %bb.d

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.peel
  %i.ar = icmp ne ptr %i.ai, %i.r
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  store ptr %i.as, ptr %i.d, align 8, !alias.scope !3158, !noalias !3143
  %i.at = load i8, ptr %i.ai, align 1, !noalias !3151, !noundef !3
  %i.au = shl nuw nsw i32 %i.y, 18
  %i.av = and i32 %i.au, 1835008
  %i.aw = shl nuw nsw i32 %i.an, 6
  %i.ax = and i8 %i.at, 63
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  %i.ba = or disjoint i32 %i.az, %i.av
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.peel
  %i.bb = phi ptr [ %i.ai, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.peel ], [ %i.as, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.peel ], [ %i.aa, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.peel ]
  %.sroa.4.0.i.ph.i.i.i.i.peel = phi i32 [ %i.ap, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.peel ], [ %i.ba, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.peel ], [ %i.af, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.peel ] ; 7 uses
  %i.bc = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = load i64, ptr %i.f, align 8, !alias.scope !3161, !noalias !3143, !noundef !3 ; 4 uses
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.be, %i.s
  %i.bg = add i64 %i.bf, %i.bd
  store i64 %i.bg, ptr %i.f, align 8, !alias.scope !3161, !noalias !3143
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3162)
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.peel, 128
  br i1 %i.bh, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.peel, 2048
  br i1 %i.bi, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.peel, 65536
  %..i.i.i.i.peel = select i1 %i.bj, i64 3, i64 4
  br label %bb.g

.thread.i.i.i.peel:                               ; preds = %bb.c
  %i.bk = zext nneg i8 %i.v to i32
  %i.bl = load i64, ptr %i.f, align 8, !alias.scope !3161, !noalias !3143, !noundef !3 ; 2 uses
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.f, align 8, !alias.scope !3161, !noalias !3143
  br label %bb.g

bb.g:                                             ; preds = %.thread.i.i.i.peel, %bb.f, %bb.e, %bb.d
  %i.bn = phi i1 [ false, %bb.e ], [ false, %bb.f ], [ true, %bb.d ], [ true, %.thread.i.i.i.peel ]
  %i.bo = phi i64 [ %i.bd, %bb.e ], [ %i.bd, %bb.f ], [ %i.bd, %bb.d ], [ %i.bl, %.thread.i.i.i.peel ] ; 6 uses
  %.sroa.4.0.i.ph.i20.i.i.i.peel = phi i32 [ %.sroa.4.0.i.ph.i.i.i.i.peel, %bb.e ], [ %.sroa.4.0.i.ph.i.i.i.i.peel, %bb.f ], [ %.sroa.4.0.i.ph.i.i.i.i.peel, %bb.d ], [ %i.bk, %.thread.i.i.i.peel ] ; 3 uses
  %.sroa.0.0.i3.i.i.i.peel = phi i64 [ 2, %bb.e ], [ %..i.i.i.i.peel, %bb.f ], [ 1, %bb.d ], [ 1, %.thread.i.i.i.peel ]
  %i.bp = load ptr, ptr %i.g, align 8, !alias.scope !3165, !noalias !3166, !nonnull !3, !align !601, !noundef !3
  %i.bq = add i64 %.sroa.0.0.i3.i.i.i.peel, %i.bo
  store i64 %i.bq, ptr %i.bp, align 8, !noalias !3168
  %i.br = load ptr, ptr %i.h, align 8, !alias.scope !3165, !noalias !3166, !nonnull !3, !align !601, !noundef !3
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !3168, !nonnull !3, !align !601, !noundef !3
  %.val.i.i.i.i.peel = load ptr, ptr %i.bs, align 8, !noalias !3168, !nonnull !3, !align !601, !noundef !3
  %i.bt = load ptr, ptr %.val.i.i.i.i.peel, align 8, !noalias !3168, !nonnull !3, !align !2887, !noundef !3
  %i.bu = load i32, ptr %i.bt, align 4, !range !31, !noalias !3168, !noundef !3
  %i.bv = icmp eq i32 %.sroa.4.0.i.ph.i20.i.i.i.peel, %i.bu
  br i1 %i.bv, label %bb.h, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter11CharIndicesNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternNCNvXB1R_cNtB1R_7Pattern12find_matches0B2N_12find_matches0EEINtB5_8FuseImplBY_E4nextB1V_.exit.i.peel

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3169
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !3168
  %i.bw = load i64, ptr %i.a, align 8, !range !65, !noalias !3169, !noundef !3
  %i.bx = trunc nuw i64 %i.bw to i1
  %i.by = load i64, ptr %i.i, align 8, !range !557, !noalias !3169, !noundef !3 ; 3 uses
  br i1 %i.bx, label %.loopexit10, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.bz = load ptr, ptr %i.j, align 8, !noalias !3169, !nonnull !3, !noundef !3 ; 5 uses
  %i.ca = icmp samesign ugt i64 %i.by, 1
  tail call void @llvm.assume(i1 %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3169
  %i.cb = load ptr, ptr %i.k, align 8, !alias.scope !3165, !noalias !3166, !nonnull !3, !align !601, !noundef !3 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !3168, !noundef !3 ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.bo
  br i1 %i.cd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.cc, ptr %i.bz, align 8, !noalias !3168
  %.sroa.4.0..sroa_idx.i.i.i.i.peel = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %i.bo, ptr %.sroa.4.0..sroa_idx.i.i.i.i.peel, align 8, !noalias !3168
  %.sroa.5.0..sroa_idx.i.i.i.i.peel = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.peel, align 8, !noalias !3168
end_hunk_2
begin_hunk_3_@_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecTReTjjERINtNtCs4NRVxsYgnAr_4core6option6OptionIBT_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEEINtB4_18SpecFromIterNestedB12_INtNtNtNtB1f_4iter8adapters3map3MapINtNtNtB1f_5slice4iter4IterNtNtB1S_13pre_tokenizer5SplitENCNvMs0_B4a_NtB4a_18PreTokenizedString10get_splits0EE9from_iterB1U_:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.e = ptrtoint ptr %.val3 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 104                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40)
  %i.i = load i64, ptr %i.b, align 8, !range !65, !noundef !3
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !557, !noundef !3 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTReTjjERINtNtCs4NRVxsYgnAr_4core6option6OptionIBw_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEE14extend_trustedINtNtNtNtBS_4iter8adapters3map3MapINtNtNtBS_5slice4iter4IterNtNtB1v_13pre_tokenizer5SplitENCNvMs0_B3x_NtB3x_18PreTokenizedString10get_splits0EEB1x_.exit.i, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #23
  unreachable

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTReTjjERINtNtCs4NRVxsYgnAr_4core6option6OptionIBw_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEE14extend_trustedINtNtNtNtBS_4iter8adapters3map3MapINtNtNtBS_5slice4iter4IterNtNtB1v_13pre_tokenizer5SplitENCNvMs0_B3x_NtB3x_18PreTokenizedString10get_splits0EEB1x_.exit.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.l, ptr %i.c, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4571
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.s, align 8, !noalias !4571
  store ptr %i.r, ptr %i.a, align 8, !noalias !4571
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.t, align 8, !noalias !4571
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENCNvMs0_B1p_NtB1p_18PreTokenizedString10get_splits0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3f_8for_each4callTReTjjERINtNtBc_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtB1r_5TokenEEENCINvMsj_B4P_IB4N_B4i_E14extend_trustedBN_E0E0EB1t_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTReTjjERINtNtCs4NRVxsYgnAr_4core6option6OptionIBw_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEE14extend_trustedINtNtNtNtBS_4iter8adapters3map3MapINtNtNtBS_5slice4iter4IterNtNtB1v_13pre_tokenizer5SplitENCNvMs0_B3x_NtB3x_18PreTokenizedString10get_splits0EEB1x_.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTReTjjERINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEENtNtNtBY_3ops4drop4Drop4dropB1P_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTReTjjERINtNtB4_6option6OptionIBC_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEEEB1J_.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTReTjjERINtNtCs4NRVxsYgnAr_4core6option6OptionIBw_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEE14extend_trustedINtNtNtNtBS_4iter8adapters3map3MapINtNtNtBS_5slice4iter4IterNtNtB1v_13pre_tokenizer5SplitENCNvMs0_B3x_NtB3x_18PreTokenizedString10get_splits0EEB1x_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4571
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
  %.val = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.g = ptrtoint ptr %.val3 to i64
  %i.h = ptrtoint ptr %.val to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 12                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.a
  %i.k = load i64, ptr %i.b, align 8, !range !65, !noundef !3
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !557, !noundef !3 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %.noexc
  %i.p = load i64, ptr %i.o, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #23
          to label %.noexc4 unwind label %bb.j

.noexc4:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4586)
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !4588, !noalias !4589, !nonnull !3, !noundef !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val5.i.i = load ptr, ptr %i.v, align 8, !alias.scope !4588, !noalias !4589, !nonnull !3, !noundef !3
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
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = ptrtoint ptr %.val3 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = lshr exact i64 %i.e, 5                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.g = load i64, ptr %i.a, align 8, !range !65, !noundef !3
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !557, !noundef !3 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTjRTNtNtB6_6string6StringmEEE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #23
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTjRTNtNtB6_6string6StringmEEE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3 ; 4 uses
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
  store i64 %i.r, ptr %i.t, align 8, !noalias !4591
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.s, ptr %i.u, align 8, !noalias !4591
  %i.v = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.w = add i64 %i.r, 1
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %i.v
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.v ; 2 uses
  store i64 %i.w, ptr %i.y, align 8, !noalias !4591
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.x, ptr %i.z, align 8, !noalias !4591
  %i.aa = add nuw i64 %i.q, 2                     ; 2 uses
  %i.ab = add i64 %i.r, 2                         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader.i.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.i.i
  %lcmp.mod.not = trunc i64 %i.f to i1
  br i1 %lcmp.mod.not, label %.preheader.i.i.epil.preheader, label %.loopexit

.preheader.i.i.epil.preheader:                    ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.aa, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init8 = phi i64 [ %.sroa.56.0.copyload, %.preheader.i.i.preheader ], [ %i.ab, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod9 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.epil.init
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.epil.init ; 2 uses
  store i64 %.epil.init8, ptr %i.ad, align 8, !noalias !4591
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ac, ptr %i.ae, align 8, !noalias !4591
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4616)
  %i.j = load i64, ptr %1, align 8, !range !65, !alias.scope !4616, !noalias !4613, !noundef !3
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !4616, !noalias !4613, !noundef !3
  %.not8.i = icmp eq ptr %i.m, null               ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.n, align 8, !alias.scope !4618, !noalias !4621, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10.i = load i64, ptr %i.o, align 8, !alias.scope !4623, !noalias !4624, !noundef !3
  %spec.select.i.i13.i = tail call i64 @llvm.usub.sat.i64(i64 %.val10.i, i64 %.val.i) ; 3 uses
  br i1 %.not8.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread.sink.split, label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %.not8.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainTjjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l)
          to label %._RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit_crit_edge unwind label %bb.x

._RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit_crit_edge: ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !range !65
  %i.p = trunc nuw i64 %.pre to i1
  br i1 %i.p, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread, label %bb.g, !prof !4350

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4625
  invoke void @_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainTjjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l)
          to label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit unwind label %bb.x

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !65, !noalias !4625, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !4625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4625
  %i.u = trunc nuw i64 %i.r to i1                 ; 2 uses
  %i.v = add i64 %i.t, %spec.select.i.i13.i       ; 2 uses
  %i.w = icmp uge i64 %i.v, %spec.select.i.i13.i
  %.sroa.46.0.i = select i1 %i.u, i64 %i.v, i64 undef
  %narrow.i = select i1 %i.u, i1 %i.w, i1 false
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.46.0.i, ptr %i.x, align 8, !alias.scope !4613, !noalias !4616
  br i1 %narrow.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread, label %bb.g, !prof !4350

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread.sink.split: ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ 0, %bb.c ], [ %spec.select.i.i13.i, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sink, ptr %i.y, align 8, !alias.scope !4613, !noalias !4616
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread: ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread.sink.split, %._RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit_crit_edge, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.aa, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc4 unwind label %bb.x

.noexc4:                                          ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread
  %i.ab = load i64, ptr %i.e, align 8, !range !65, !noundef !3
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !557, !noundef !3 ; 4 uses
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
  %i.ah = load ptr, ptr %i.af, align 8, !nonnull !3, !noundef !3 ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !4626)
  call void @llvm.experimental.noalias.scope.decl(metadata !4629)
  call void @llvm.experimental.noalias.scope.decl(metadata !4631)
  call void @llvm.experimental.noalias.scope.decl(metadata !4634)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4636
  call void @llvm.experimental.noalias.scope.decl(metadata !4637)
  %i.al = load i64, ptr %i.g, align 8, !range !65, !alias.scope !4640, !noalias !4641, !noundef !3
  %i.am = trunc nuw i64 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 5 uses
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !4640, !noalias !4641, !noundef !3
  %.not8.i.i.i = icmp eq ptr %i.ao, null          ; 2 uses
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !4643, !noalias !4646, !noundef !3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val10.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !4648, !noalias !4649, !noundef !3
  %spec.select.i.i13.i.i.i = call i64 @llvm.usub.sat.i64(i64 %.val10.i.i.i, i64 %.val.i.i.i) ; 3 uses
  br i1 %.not8.i.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread.i.i, label %bb.l

bb.j:                                             ; preds = %bb.h
  br i1 %.not8.i.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainTjjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.an)
          to label %._RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit_crit_edge.i.i unwind label %bb.q, !noalias !4650

._RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit_crit_edge.i.i: ; preds = %bb.k
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !range !65, !noalias !4636
  %.phi.trans.insert13.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre14.i.i = load i64, ptr %.phi.trans.insert13.i.i, align 8, !noalias !4636
  %i.ar = trunc nuw i64 %.pre.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4636
  br i1 %i.ar, label %bb.m, label %bb.o, !prof !4350

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4651
  invoke void @_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainTjjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.an)
          to label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.i.i unwind label %bb.q, !noalias !4650

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread.i.i: ; preds = %bb.j, %bb.i
  %.ph.i.i = phi i64 [ 0, %bb.j ], [ %spec.select.i.i13.i.i.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4636
  br label %bb.m

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.i.i: ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !65, !noalias !4651, !noundef !3
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.av = load i64, ptr %i.au, align 8, !noalias !4651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4651
  %i.aw = trunc nuw i64 %i.at to i1
  %i.ax = add i64 %i.av, %spec.select.i.i13.i.i.i ; 2 uses
  %i.ay = icmp uge i64 %i.ax, %spec.select.i.i13.i.i.i
  %narrow.i.i.i = select i1 %i.aw, i1 %i.ay, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4636
  br i1 %narrow.i.i.i, label %bb.m, label %bb.o, !prof !4350

bb.m:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread.i.i, %._RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit_crit_edge.i.i
  %i.az = phi i64 [ %.ph.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.thread.i.i ], [ %i.ax, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit.i.i ], [ %.pre14.i.i, %._RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1M_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Q_.exit_crit_edge.i.i ] ; 2 uses
  %i.ba = icmp ugt i64 %i.az, %i.ae
  br i1 %i.ba, label %bb.n, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTjjEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB15_3map3MapINtNtNtB19_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2H_8Encoding3pads5_0EINtNtB6_5drain5DrainBF_EEEB2L_.exit.i, !prof !7

bb.n:                                             ; preds = %bb.m
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 0, i64 noundef %i.az, i64 noundef 8, i64 noundef 16)
          to label %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTjjEE7reserveCs2JiOgHzbbc7_10tokenizers.exit_crit_edge.i.i unwind label %bb.q
end_hunk_3
