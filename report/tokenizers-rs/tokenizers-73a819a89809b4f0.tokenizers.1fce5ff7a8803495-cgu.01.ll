Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.01?download=true
inline.NumInlined: 2320
inline.NumDeleted: 1225
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0
@5 = private unnamed_addr constant [17 x i8] c"capacity overflow", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"L\00\00\00\00\00\00\00\EC\0F\00\00\0D\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"L\00\00\00\00\00\00\00\E2\00\00\001\00\00\00" }>, align 8
@_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10CHAR_BYTES = external hidden global { { { [8 x i64] } }, { { { { { i32 } } } } }, [1 x i32] }
@8 = private unnamed_addr constant [31 x i8] c"assertion failed: i < words_len", align 1
@9 = private unnamed_addr constant [26 x i8] c"src/models/bpe/trainer.rs\00", align 1
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
  %i.j = icmp samesign ult i64 %.sroa.7.026.i.lcssa, %i.b
  br i1 %i.j, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.k = sub nuw i64 %i.b, %.sroa.7.026.i.lcssa
  %.neg = add i64 %.sroa.7.026.i.lcssa, 1
  %xtraiter12 = and i64 %i.k, 1
  %lcmp.mod13.not = icmp eq i64 %xtraiter12, 0
  br i1 %lcmp.mod13.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

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
  %.sroa.7.026.i.epil = add nuw nsw i64 %.sroa.0.0.i.epil, 1 ; 2 uses
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
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjEE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
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
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecNtNtB9_6string6StringEINtB5_10SpecExtendRBT_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBT_EE11spec_extendCs2JiOgHzbbc7_10tokenizers:bb.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceEINtNtBb_6option6OptionNtNtNtB1A_9tokenizer8encoding8EncodingENCNvMsh_B1w_NtB1w_18TemplateProcessing14apply_template0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(552) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [64 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [256 x i8], align 8               ; 12 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2635)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !2636, !noalias !2637, !noundef !6 ; 2 uses
  %.not.i144.i = icmp eq ptr %i.x, null
  br i1 %.not.i144.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceENCNvMsh_B1G_NtB1G_18TemplateProcessing14apply_template0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx7.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx6.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i58.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i66.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.6.0..sroa_idx.i67.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i83.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.6.0..sroa_idx.i84.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.ba = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.pre.i = load ptr, ptr %i.y, align 8, !alias.scope !2638, !noalias !2639
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEB15_.exit4.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEB15_.exit4.i: ; preds = %bb.ah, %.lr.ph.i
  %i.bj = phi ptr [ %i.x, %.lr.ph.i ], [ %i.bl, %bb.ah ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2641)
  %i.bk = icmp eq ptr %i.bj, %.pre.i
  br i1 %i.bk, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceENCNvMsh_B1G_NtB1G_18TemplateProcessing14apply_template0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEB15_.exit4.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  store ptr %i.bl, ptr %i.w, align 8, !alias.scope !2638, !noalias !2639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2643)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bm = load i64, ptr %i.bj, align 8, !range !17, !alias.scope !2643, !noalias !2644, !noundef !6
  %.not.i.i.i.i = icmp eq i64 %i.bm, -1
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bn = load ptr, ptr %i.z, align 8, !alias.scope !2645, !noalias !2646, !nonnull !6, !noundef !6
  %i.bo = load i8, ptr %i.bn, align 1, !range !25, !noalias !2644, !noundef !6
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.l, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceENCNvMsh_B1G_NtB1G_18TemplateProcessing14apply_template0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread13.i

bb.d:                                             ; preds = %bb.b
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.br = load i8, ptr %i.bq, align 4, !range !25, !alias.scope !2643, !noalias !2644, !noundef !6
  %i.bs = zext nneg i8 %i.br to i64               ; 4 uses
  %i.bt = load ptr, ptr %i.bc, align 8, !alias.scope !2645, !noalias !2646, !nonnull !6, !align !24, !noundef !6 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !2644, !noundef !6 ; 2 uses
  %i.bw = icmp ugt i64 %i.bv, %i.bs
  br i1 %i.bw, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !2644, !nonnull !6, !noundef !6
  %i.bz = getelementptr inbounds nuw [256 x i8], ptr %i.by, i64 %i.bs ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2647
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !alias.scope !2643, !noalias !2644, !noundef !6 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !2644, !noundef !6 ; 10 uses
  %i.ce = icmp ult i64 %i.cd, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ce)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2648)
  %i.cf = icmp eq i32 %i.cb, 0
  br i1 %i.cf, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2649
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef range(i64 0, 2305843009213693952) %i.cd, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !2650
  %i.cg = load i64, ptr %i.h, align 8, !range !13, !noalias !2649, !noundef !6
  %i.ch = trunc nuw i64 %i.cg to i1
  %i.ci = load i64, ptr %i.bd, align 8, !range !23, !noalias !2649, !noundef !6 ; 4 uses
  br i1 %i.ch, label %bb.g, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.cj = load i64, ptr %i.be, align 8, !noalias !2649
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ci, i64 %i.cj) #23, !noalias !2650
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.ck = load ptr, ptr %i.be, align 8, !noalias !2649, !nonnull !6, !noundef !6 ; 6 uses
  %i.cl = icmp ule i64 %i.cd, %i.ci
  tail call void @llvm.assume(i1 %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2649
  %i.cm = icmp samesign ugt i64 %i.cd, 1
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i
  %i.cn = add nsw i64 %i.cd, -1                   ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.cd, 9
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader280, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cn, -8                      ; 4 uses
  %i.co = shl nsw i64 %n.vec, 2
  %i.cp = getelementptr i8, ptr %i.ck, i64 %i.co  ; 2 uses
  %i.cq = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cb, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cr = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ck, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !noalias !2650
  store <4 x i32> %broadcast.splat, ptr %i.cs, align 4, !noalias !2650
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !2535

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader280

.lr.ph.i.i.i.i.i.i.preheader280:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.sroa.0.021.i.i.i.i.i.i.ph = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cp, %middle.block ]
  %.sroa.03.020.i.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i.i.i.i.i, label %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i, label %._crit_edge.thread.i.i.i.i.i.i

._crit_edge.thread.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i
  %.sroa.0.0.lcssa28.i.i.i.i.i.i = phi ptr [ %i.ck, %._crit_edge.i.i.i.i.i.i ], [ %i.cp, %middle.block ], [ %i.cv, %.lr.ph.i.i.i.i.i.i ]
  store i32 %i.cb, ptr %.sroa.0.0.lcssa28.i.i.i.i.i.i, align 4, !noalias !2650
  br label %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader280, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.021.i.i.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.021.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader280 ] ; 2 uses
  %.sroa.03.020.i.i.i.i.i.i = phi i64 [ %i.cu, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.03.020.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader280 ]
  %i.cu = add nuw nsw i64 %.sroa.03.020.i.i.i.i.i.i, 1 ; 2 uses
  store i32 %i.cb, ptr %.sroa.0.021.i.i.i.i.i.i, align 4, !noalias !2650
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i.i.i.i, i64 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.cu, %i.cd
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2536

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2649
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef range(i64 0, 2305843009213693952) %i.cd, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !2650
  %i.cw = load i64, ptr %i.i, align 8, !range !13, !noalias !2649, !noundef !6
  %i.cx = trunc nuw i64 %i.cw to i1
  %i.cy = load i64, ptr %i.bf, align 8, !range !23, !noalias !2649, !noundef !6 ; 2 uses
  br i1 %i.cx, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.cz = load i64, ptr %i.bg, align 8, !noalias !2649
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.cy, i64 %i.cz) #23, !noalias !2650
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.da = load ptr, ptr %i.bg, align 8, !noalias !2649, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2649
  br label %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i

_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i: ; preds = %bb.j, %._crit_edge.thread.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %.sink7.i.i.i.i.i = phi i64 [ %i.cy, %bb.j ], [ %i.ci, %._crit_edge.thread.i.i.i.i.i.i ], [ %i.ci, %._crit_edge.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i = phi ptr [ %i.da, %bb.j ], [ %i.ck, %._crit_edge.thread.i.i.i.i.i.i ], [ %i.ck, %._crit_edge.i.i.i.i.i.i ]
  store i64 %.sink7.i.i.i.i.i, ptr %i.u, align 8, !alias.scope !2648, !noalias !2647
  store ptr %.sink.i.i.i.i.i, ptr %i.bh, align 8, !alias.scope !2648, !noalias !2647
  store i64 %i.cd, ptr %i.bi, align 8, !alias.scope !2648, !noalias !2647
  call void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding12set_type_ids(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.bz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u), !noalias !2644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2647
  tail call void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding15set_sequence_id(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.bz, i64 noundef %i.bs), !noalias !2644
  call fastcc void @_RNvXs5_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5_8EncodingNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(256) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.bz)
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceENCNvMsh_B1G_NtB1G_18TemplateProcessing14apply_template0EEINtB5_8FuseImplBY_E4nextB1K_.exit.i

bb.k:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bs, i64 noundef %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #23, !noalias !2644
  unreachable

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceENCNvMsh_B1G_NtB1G_18TemplateProcessing14apply_template0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread13.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ah

bb.l:                                             ; preds = %bb.c
  %i.db = load ptr, ptr %i.aa, align 8, !alias.scope !2645, !noalias !2646, !nonnull !6, !align !24, !noundef !6
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !2644, !nonnull !6, !align !24, !noundef !6 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 72
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !2651, !noalias !2652, !noundef !6
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %select.unfold.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  %i.di = tail call noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj), !noalias !2644 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2654)
  %i.dj = lshr i64 %i.di, 57
  %i.dk = trunc nuw nsw i64 %i.dj to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !2655, !noalias !2656, !noundef !6 ; 2 uses
  %i.dn = load ptr, ptr %i.dg, align 8, !alias.scope !2655, !noalias !2656, !nonnull !6, !noundef !6 ; 2 uses
  %i.do = insertelement <16 x i8> poison, i8 %i.dk, i64 0
  %i.dp = shufflevector <16 x i8> %i.do, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.m ], [ %i.eg, %bb.p ]
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.di, %bb.m ], [ %i.eh, %bb.p ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.dm ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.dq, align 1, !noalias !2657 ; 2 uses
  %i.dr = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %i.dp
  %i.ds = bitcast <16 x i1> %i.dr to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.ds, 0
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i43.i.i.i.i, label %.lr.ph.i.i42.i.i.i.i

.lr.ph.i.i42.i.i.i.i:                             ; preds = %bb.n, %bb.o
  %.sroa.06.0.i33.i.i.i.i.i.i = phi i16 [ %i.ef, %bb.o ], [ %i.ds, %bb.n ] ; 3 uses
  %i.dt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i.i, i1 true)
  %i.du = zext nneg i16 %i.dt to i64
  %i.dv = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.du
  %i.dw = and i64 %i.dv, %i.dm
  %i.dx = sub nsw i64 0, %i.dw
  %i.dy = getelementptr inbounds [96 x i8], ptr %i.dn, i64 %i.dx ; 4 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -96
  %i.ea = tail call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCscdodAO9FK5_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.dz), !noalias !2658
  br i1 %i.ea, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template12SpecialTokenNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_EB1v_.exit.i.i.i.i, label %bb.o, !prof !14

._crit_edge.i.i43.i.i.i.i:                        ; preds = %bb.o, %bb.n
  %i.eb = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1)
  %i.ec = bitcast <16 x i1> %i.eb to i16
  %i.ed = icmp eq i16 %i.ec, 0
  br i1 %i.ed, label %bb.p, label %select.unfold.i.i.i.i, !prof !7

bb.o:                                             ; preds = %.lr.ph.i.i42.i.i.i.i
  %i.ee = add i16 %.sroa.06.0.i33.i.i.i.i.i.i, -1
  %i.ef = and i16 %i.ee, %.sroa.06.0.i33.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.ef, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i43.i.i.i.i, label %.lr.ph.i.i42.i.i.i.i

bb.p:                                             ; preds = %._crit_edge.i.i43.i.i.i.i
  %i.eg = add i64 %.sroa.9.0.i.i.i.i.i.i.i, 16    ; 2 uses
  %i.eh = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.eg
  br label %bb.n

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template12SpecialTokenNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_EB1v_.exit.i.i.i.i: ; preds = %.lr.ph.i.i42.i.i.i.i
  %i.ei = getelementptr inbounds i8, ptr %i.dy, i64 -32
  %i.ej = load i64, ptr %i.ei, align 8, !noalias !2644, !noundef !6 ; 38 uses
  %i.ek = icmp ult i64 %i.ej, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ek)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2647
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2660)
  %i.el = getelementptr inbounds i8, ptr %i.dy, i64 -40
  %i.em = load ptr, ptr %i.el, align 8, !alias.scope !2660, !noalias !2661, !nonnull !6, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2662)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2663
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef range(i64 0, 2305843009213693952) %i.ej, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !2664
  %i.en = load i64, ptr %i.g, align 8, !range !13, !noalias !2663, !noundef !6
  %i.eo = trunc nuw i64 %i.en to i1
  %i.ep = load i64, ptr %i.ab, align 8, !range !23, !noalias !2663, !noundef !6 ; 3 uses
  br i1 %i.eo, label %bb.q, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i, !prof !7

bb.q:                                             ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template12SpecialTokenNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_EB1v_.exit.i.i.i.i
  %i.eq = load i64, ptr %i.ac, align 8, !noalias !2663
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ep, i64 %i.eq) #23, !noalias !2664
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i: ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template12SpecialTokenNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_EB1v_.exit.i.i.i.i
  %i.er = load ptr, ptr %i.ac, align 8, !noalias !2663, !nonnull !6, !noundef !6 ; 2 uses
  %i.es = icmp ule i64 %i.ej, %i.ep
  tail call void @llvm.assume(i1 %i.es)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2663
  store i64 %i.ep, ptr %i.s, align 8, !alias.scope !2665, !noalias !2666
  store ptr %i.er, ptr %i.ad, align 8, !alias.scope !2665, !noalias !2666
  store i64 0, ptr %i.ae, align 8, !alias.scope !2665, !noalias !2666
  %.not.i.i44.i.i.i.i = icmp eq i64 %i.ej, 0      ; 5 uses
  br i1 %.not.i.i44.i.i.i.i, label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i
  %i.et = shl nuw nsw i64 %i.ej, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.er, ptr nonnull readonly align 4 %i.em, i64 %i.et, i1 false), !noalias !2667
  store i64 %i.ej, ptr %i.ae, align 8, !alias.scope !2665, !noalias !2666
  br label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i

_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i: ; preds = %bb.r, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2647
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.ev = load i32, ptr %i.eu, align 8, !alias.scope !2643, !noalias !2644 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2668)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2669
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef range(i64 0, 2305843009213693952) %i.ej, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i.i unwind label %.loopexit.i, !noalias !2644

.noexc.i.i.i.i:                                   ; preds = %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i
  %i.ew = load i64, ptr %i.f, align 8, !range !13, !noalias !2669, !noundef !6
  %i.ex = trunc nuw i64 %i.ew to i1
  %i.ey = load i64, ptr %i.af, align 8, !range !23, !noalias !2669, !noundef !6 ; 3 uses
  br i1 %i.ex, label %bb.s, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i, !prof !7

bb.s:                                             ; preds = %.noexc.i.i.i.i
  %i.ez = load i64, ptr %i.ag, align 8, !noalias !2669
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ey, i64 %i.ez) #23
          to label %.noexc45.i.i.i.i unwind label %.loopexit.split-lp.i, !noalias !2644

.noexc45.i.i.i.i:                                 ; preds = %bb.s
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i
  %i.fa = load ptr, ptr %i.ag, align 8, !noalias !2669, !nonnull !6, !noundef !6 ; 3 uses
  %i.fb = icmp ule i64 %i.ej, %i.ey
  tail call void @llvm.assume(i1 %i.fb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2669
  br i1 %.not.i.i44.i.i.i.i, label %.loopexit103.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i
  %min.iters.check268 = icmp samesign ult i64 %i.ej, 8
  br i1 %min.iters.check268, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader283, label %vector.ph269

vector.ph269:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec270 = and i64 %i.ej, 2305843009213693944  ; 3 uses
  %i.fc = and i64 %i.ej, 7
  %broadcast.splatinsert271 = insertelement <4 x i32> poison, i32 %i.ev, i64 0
  %broadcast.splat272 = shufflevector <4 x i32> %broadcast.splatinsert271, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body273

vector.body273:                                   ; preds = %vector.body273, %vector.ph269
  %index274 = phi i64 [ 0, %vector.ph269 ], [ %index.next275, %vector.body273 ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %index274 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store <4 x i32> %broadcast.splat272, ptr %i.fd, align 4, !noalias !2670
  store <4 x i32> %broadcast.splat272, ptr %i.fe, align 4, !noalias !2670
  %index.next275 = add nuw i64 %index274, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next275, %n.vec270
  br i1 %i.ff, label %middle.block276, label %vector.body273, !llvm.loop !2566

middle.block276:                                  ; preds = %vector.body273
  %cmp.n277 = icmp eq i64 %i.ej, %n.vec270
  br i1 %cmp.n277, label %.loopexit103.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader283
end_hunk_1
