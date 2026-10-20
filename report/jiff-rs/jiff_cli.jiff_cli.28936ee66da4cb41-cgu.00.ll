Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_cli.jiff_cli.28936ee66da4cb41-cgu.00?download=true
inline.NumInlined: 296
inline.NumDeleted: 160
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [92 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/alloc/src/collections/btree/node.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\F0\00\00\00M\00\00\00" }>, align 8
@2 = private unnamed_addr constant [53 x i8] c"assertion failed: edge.height == self.node.height - 1", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\03\04\00\00\09\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\13\05\00\00$\00\00\00" }>, align 8
@5 = private unnamed_addr constant [40 x i8] c"assertion failed: src.len() == dst.len()", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00T\07\00\00\05\00\00\00" }>, align 8
@7 = private unnamed_addr constant [97 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/alloc/src/collections/btree/map/entry.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"`\00\00\00\00\00\00\00\D1\01\00\00.\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\D0\04\00\00#\00\00\00" }>, align 8
@10 = private unnamed_addr constant [32 x i8] c"assertion failed: idx < CAPACITY", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\9E\02\00\00\09\00\00\00" }>, align 8
@12 = private unnamed_addr constant [48 x i8] c"assertion failed: edge.height == self.height - 1", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\B6\02\00\00\09\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\BA\02\00\00\09\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedINtNtBc_3vec3VechEINtNtB8_3set8BTreeSetNtNtBc_6string6StringENtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECs3tZ2SXJA1qv_8jiff_cli() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeINtNtB6_3vec3VechEINtNtBL_3set8BTreeSetNtNtB6_6string6StringEEE13new_uninit_inCs3tZ2SXJA1qv_8jiff_cli() ; 3 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 538
  store i16 0, ptr %i.b, align 2
  %i.c = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtB8_7set_val9SetValZSTNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECs3tZ2SXJA1qv_8jiff_cli() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs3tZ2SXJA1qv_8jiff_cli() ; 3 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 274
  store i16 0, ptr %i.b, align 2
  %i.c = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1V_() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingEE13new_uninit_inB1S_() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 802
  store i16 0, ptr %i.c, align 2
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringTB1s_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEENtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECs3tZ2SXJA1qv_8jiff_cli() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringTB1p_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEEEE13new_uninit_inCs3tZ2SXJA1qv_8jiff_cli() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 626
  store i16 0, ptr %i.c, align 2
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_3vec3VechEINtNtB8_3set8BTreeSetNtNtBc_6string6StringENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3K_11VacantEntryB1D_B1V_E12insert_entry0ECs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull readonly captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.0.i.sroa.4 = alloca [40 x i8], align 8   ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.461 = alloca [40 x i8], align 8          ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [80 x i8], align 8                ; 12 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.753 = alloca [40 x i8], align 8          ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [40 x i8], align 8            ; 5 uses
  %.sroa.7279 = alloca [40 x i8], align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.461)
  %i.o = load ptr, ptr %1, align 8, !alias.scope !107, !nonnull !5, !noundef !5 ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 538 ; 4 uses
  %i.q = load i16, ptr %i.p, align 2, !noalias !108, !noundef !5 ; 2 uses
  %i.r = icmp ugt i16 %i.q, 10
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !107, !noundef !5 ; 6 uses
  %i.u = icmp ult i64 %i.t, 5
  br i1 %i.u, label %bb.i, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.v = zext nneg i16 %i.q to i64                ; 2 uses
  %6 = add nuw nsw i64 %i.v, 1                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !110, !noundef !5 ; 6 uses
  %i.z = add i64 %i.y, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %6, %i.z
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.y ; 3 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.z
  %i.ac = sub nsw i64 %i.v, %i.y
  %i.ad = mul nuw nsw i64 %i.ac, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.aa, i64 %i.ad, i1 false), !alias.scope !112, !noalias !113
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 272 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.y
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.z
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr nonnull align 8 %i.af, i64 %i.ad, i1 false), !alias.scope !114, !noalias !113
  br label %.thread

bb.f:                                             ; preds = %bb.b
  switch i64 %i.t, label %bb.g [
    i64 5, label %bb.i
    i64 6, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ah = add i64 %i.t, -7
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.b
  %.sroa.09.0.i = phi i1 [ true, %bb.h ], [ true, %bb.g ], [ false, %bb.b ], [ false, %bb.f ] ; 2 uses
  %.sroa.510.0.i = phi i64 [ 0, %bb.h ], [ %i.ah, %bb.g ], [ %i.t, %bb.b ], [ %i.t, %bb.f ] ; 9 uses
  %.sroa.013.0.i = phi i64 [ 5, %bb.h ], [ 6, %bb.g ], [ 4, %bb.b ], [ %i.t, %bb.f ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !107, !noundef !5 ; 4 uses
  %i.ak = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeINtNtB6_3vec3VechEINtNtBL_3set8BTreeSetNtNtB6_6string6StringEEE13new_uninit_inCs3tZ2SXJA1qv_8jiff_cli()
          to label %.noexc.i unwind label %bb.n, !noalias !108 ; 8 uses

.noexc.i:                                         ; preds = %bb.i
  store ptr null, ptr %i.ak, align 8, !noalias !115
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 538 ; 2 uses
  store i16 0, ptr %i.al, align 2, !noalias !115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.am = load i16, ptr %i.p, align 2, !noalias !117, !noundef !5
  %i.an = zext i16 %i.am to i64
  %i.ao = xor i64 %.sroa.013.0.i, -1
  %i.ap = add nsw i64 %i.an, %i.ao                ; 4 uses
  %i.aq = trunc i64 %i.ap to i16
  store i16 %i.aq, ptr %i.al, align 2, !alias.scope !116, !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !117
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !noalias !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !117
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 272 ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !117
  %i.av = icmp ult i64 %i.ap, 12
  br i1 %i.av, label %bb.o, label %bb.j, !prof !6

bb.j:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ap, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #17
          to label %bb.l unwind label %bb.k, !noalias !117

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i unwind label %bb.m, !noalias !117

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i, %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !117
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i: ; preds = %bb.k
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #19
          to label %.thread.i.i unwind label %bb.m, !noalias !117

.thread.i.i:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef 544, i64 noundef 8) #20, !noalias !115
  br label %bb.s

bb.n:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.o:                                             ; preds = %.noexc.i
  %i.az = add nuw nsw i64 %.sroa.013.0.i, 1       ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bc = mul nuw nsw i64 %i.ap, 24               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull readonly align 8 %i.ba, i64 %i.bc, i1 false), !alias.scope !118, !noalias !119
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %i.az
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.be, ptr nonnull readonly align 8 %i.bd, i64 %i.bc, i1 false), !alias.scope !120, !noalias !119
  %i.bf = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.bf, ptr %i.p, align 2, !noalias !117
  %.sroa.060.0.copyload = load i64, ptr %i.h, align 8, !noalias !108 ; 3 uses
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.461, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.461.0..sroa_idx, i64 16, i1 false), !noalias !108
  %.sroa.461.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.461, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.461.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !117
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.aj ; 3 uses
  %spec.select32.i = select i1 %.sroa.09.0.i, ptr %i.ak, ptr %i.o ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 538 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !noalias !121, !noundef !5 ; 2 uses
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %7 = add i16 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 8 ; 2 uses
  %.not.i16.not.i = icmp ult i64 %.sroa.510.0.i, %i.bi
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.sroa.510.0.i ; 3 uses
  br i1 %.not.i16.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.bl = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = sub nuw nsw i64 %i.bi, %.sroa.510.0.i
  %i.bo = mul nuw nsw i64 %i.bn, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr nonnull align 8 %i.bk, i64 %i.bo, i1 false), !alias.scope !123, !noalias !121
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 272 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %.sroa.510.0.i
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.bl
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.br, ptr nonnull align 8 %i.bq, i64 %i.bo, i1 false), !alias.scope !124, !noalias !121
  br label %bb.u

bb.r:                                             ; preds = %bb.t, %bb.s
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !125
  unreachable

.thread:                                          ; preds = %bb.d, %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 272
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, i64 24, i1 false), !alias.scope !126, !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %8 = trunc nuw nsw i64 %6 to i16
  store i16 %8, ptr %i.p, align 2, !noalias !113
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !110, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.461)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.w

bb.s:                                             ; preds = %bb.n, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.aw, %.thread.i.i ], [ %i.ay, %bb.n ]
  invoke void @_RNvXNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.t unwind label %bb.r, !noalias !127

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #19
          to label %.critedge20 unwind label %bb.r, !noalias !125

bb.u:                                             ; preds = %bb.p, %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 272
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %.sroa.510.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !alias.scope !128, !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %7, ptr %i.bg, align 2, !noalias !121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.461, i64 40, i1 false), !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.461)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not = icmp eq i64 %.sroa.060.0.copyload, -1
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7279)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7279, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.bz = load ptr, ptr %i.o, align 8, !noalias !130, !noundef !5 ; 2 uses
  %.not.i180 = icmp eq ptr %i.bz, null
  br i1 %.not.i180, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cb = icmp eq i64 %i.aj, 0
  %.sroa.7279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7279.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7279, i64 16 ; 5 uses
  br label %bb.am

bb.w:                                             ; preds = %.thread, %bb.u
  %.sink.i71 = phi i64 [ %i.y, %.thread ], [ %.sroa.510.0.i, %bb.u ]
  %.sink50.i70 = phi i64 [ %i.bw, %.thread ], [ %spec.select.i, %bb.u ]
  %.sink51.i69 = phi ptr [ %i.o, %.thread ], [ %spec.select32.i, %bb.u ]
  store ptr %.sink51.i69, ptr %0, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink50.i70, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i71, ptr %i.cd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.bv

._crit_edge:                                      ; preds = %bb.bu, %bb.v
  %.sroa.0.0 = phi i64 [ %.sroa.060.0.copyload, %bb.v ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bu ]
  %.lcssa172 = phi i64 [ 0, %bb.v ], [ %i.df, %bb.bu ] ; 2 uses
  %.lcssa164 = phi ptr [ %i.ak, %bb.v ], [ %i.fx, %bb.bu ] ; 4 uses
  %.lcssa156 = phi i64 [ %i.aj, %bb.v ], [ %i.df, %bb.bu ]
  %.lcssa = phi ptr [ %i.o, %bb.v ], [ %i.da, %bb.bu ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.02.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7279, i64 40, i1 false)
  store i64 %.sroa.0.0, ptr %i.j, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %.lcssa, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 %.lcssa156, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store ptr %.lcssa164, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i64 %.lcssa172, ptr %.sroa.76.0..sroa_idx, align 8
  %.val = load ptr, ptr %4, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ce = load ptr, ptr %.val, align 8, !noalias !131, !noundef !5 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i23 = icmp eq ptr %i.ce, null
  br i1 %.not.i23, label %bb.x, label %bb.z, !prof !7

bb.x:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #17
          to label %bb.y unwind label %bb.aj, !noalias !131

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !132, !noalias !131, !noundef !5 ; 2 uses
  %i.ch = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeINtNtB6_3vec3VechEINtNtBL_3set8BTreeSetNtNtB6_6string6StringEEE13new_uninit_inCs3tZ2SXJA1qv_8jiff_cli()
          to label %.noexc.i.i unwind label %bb.ad, !noalias !133 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.z
  store ptr null, ptr %i.ch, align 8, !noalias !133
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 538 ; 3 uses
  store i16 0, ptr %i.ci, align 2, !noalias !133
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 544 ; 2 uses
  store ptr %i.ce, ptr %i.cj, align 8, !noalias !133
  %i.ck = add i64 %i.cg, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.ae, !prof !7

bb.aa:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #17
          to label %bb.ab unwind label %bb.ac, !noalias !133

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ch, i64 noundef 640, i64 noundef 8) #20, !noalias !133
  br label %.body.i.i

bb.ad:                                            ; preds = %bb.z
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ad, %bb.ac
  tail call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %.noexc.i.i
  store ptr %i.ch, ptr %i.ce, align 8, !noalias !134
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 536
  store i16 0, ptr %i.cn, align 8, !noalias !135
  store ptr %i.ch, ptr %.val, align 8, !alias.scope !132, !noalias !131
  store i64 %i.ck, ptr %i.cf, align 8, !alias.scope !132, !noalias !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !131
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.7279, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false)
  %i.cp = icmp eq i64 %.lcssa172, %i.cg
  br i1 %i.cp, label %bb.af, label %.invoke.i.i, !prof !8

.invoke.i.i:                                      ; preds = %bb.af, %bb.ae
  %i.cq = phi ptr [ @12, %bb.ae ], [ @10, %bb.af ]
  %i.cr = phi i64 [ 48, %bb.ae ], [ 32, %bb.af ]
  %i.cs = phi ptr [ @13, %bb.ae ], [ @14, %bb.af ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef %i.cr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs) #17
          to label %.cont.i.i unwind label %bb.ag, !noalias !136

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.ct = load i16, ptr %i.ci, align 2, !noalias !136, !noundef !5 ; 3 uses
  %i.cu = icmp ult i16 %i.ct, 11
  br i1 %i.cu, label %bb.bw, label %.invoke.i.i, !prof !8

bb.ag:                                            ; preds = %.invoke.i.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.ai unwind label %bb.ah, !noalias !137

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !131
  unreachable

bb.ai:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #19
          to label %.critedge20 unwind label %bb.ah, !noalias !131

bb.aj:                                            ; preds = %bb.x
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.j) #19
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.cz = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvXNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cz)
          to label %.critedge20 unwind label %bb.ak

bb.am:                                            ; preds = %.lr.ph, %bb.bu
  %.sroa.0.1 = phi i64 [ %.sroa.060.0.copyload, %.lr.ph ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bu ]
  %i.da = phi ptr [ %i.bz, %.lr.ph ], [ %i.kk, %bb.bu ] ; 24 uses
  %i.db = phi ptr [ %i.o, %.lr.ph ], [ %i.da, %bb.bu ]
  %i.dc = phi i64 [ %i.aj, %.lr.ph ], [ %i.df, %bb.bu ]
  %i.dd = phi ptr [ %i.ak, %.lr.ph ], [ %i.fx, %bb.bu ] ; 2 uses
  %i.de = phi i1 [ %i.cb, %.lr.ph ], [ true, %bb.bu ]
  %i.df = add i64 %i.dc, 1                        ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 536
  %i.dh = load i16, ptr %i.dg, align 8, !noalias !130 ; 4 uses
  %i.di = zext i16 %i.dh to i64                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.753)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.sroa.0.1, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7279.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7279, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7279.24..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4)
  br i1 %i.de, label %bb.ao, label %bb.an, !prof !8

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #17
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !138

bb.ao:                                            ; preds = %bb.am
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 538 ; 4 uses
  %i.dk = load i16, ptr %i.dj, align 2, !noalias !138, !noundef !5 ; 5 uses
  %i.dl = icmp ult i16 %i.dk, 11
  br i1 %i.dl, label %bb.ar, label %bb.aq

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ay, %bb.an
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.ap:                                            ; preds = %bb.an
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.dm = icmp ult i16 %i.dh, 5
  br i1 %i.dm, label %bb.ay, label %bb.av

bb.ar:                                            ; preds = %bb.ao
  %i.dn = zext nneg i16 %i.dk to i64              ; 5 uses
  %i.do = add nuw nsw i16 %i.dk, 1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dq = add nuw nsw i64 %i.di, 1                ; 7 uses
  %9 = icmp ugt i16 %i.dk, %i.dh
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %i.di ; 3 uses
  br i1 %9, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !139
  %i.ds = getelementptr inbounds nuw i8, ptr %i.da, i64 272
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %i.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7279.24..sroa_idx, i64 24, i1 false)
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %i.dq
  %i.dv = sub nuw nsw i64 %i.dn, %i.di
  %i.dw = mul nuw nsw i64 %i.dv, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.du, ptr nonnull align 8 %i.dr, i64 %i.dw, i1 false), !alias.scope !140, !noalias !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !139
  %i.dx = getelementptr inbounds nuw i8, ptr %i.da, i64 272 ; 2 uses
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %i.di
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %i.dq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dz, ptr nonnull align 8 %i.dy, i64 %i.dw, i1 false), !alias.scope !142, !noalias !141
  %i.ea = getelementptr inbounds nuw i8, ptr %i.da, i64 272
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %i.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7279.24..sroa_idx, i64 24, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.da, i64 544 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.dq
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.di
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = sub nuw nsw i64 %i.dn, %i.di
  %i.eh = shl nuw nsw i64 %i.eg, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ef, ptr nonnull align 8 %i.ed, i64 %i.eh, i1 false), !alias.scope !143, !noalias !141
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.ei = getelementptr inbounds nuw i8, ptr %i.da, i64 544
  %i.ej = add nuw nsw i64 %i.dn, 2                ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.dq
  store ptr %i.dd, ptr %i.ek, align 8, !alias.scope !143, !noalias !141
  store i16 %i.do, ptr %i.dj, align 2, !noalias !141
  %i.el = icmp samesign ult i64 %i.dq, %i.ej
  br i1 %i.el, label %.lr.ph.i.i.i.preheader, label %.thread76

.lr.ph.i.i.i.preheader:                           ; preds = %bb.au
  %i.em = add nuw nsw i64 %i.dn, 1
  %i.en = sub nsw i64 %i.em, %i.di
  %i.eo = sub nsw i64 %i.dn, %i.di
  %xtraiter521 = and i64 %i.en, 3                 ; 2 uses
  %lcmp.mod522.not = icmp eq i64 %xtraiter521, 0
  br i1 %lcmp.mod522.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.ep = getelementptr inbounds nuw i8, ptr %i.da, i64 544
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.eq, %.lr.ph.i.i.i.prol ], [ %i.dq, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter523 = phi i64 [ %prol.iter523.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.eq = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.er = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.er)
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.sroa.0.06.i.i.i.prol
  %i.et = load ptr, ptr %i.es, align 8, !noalias !141, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.da, ptr %i.et, align 8, !noalias !141
  %i.eu = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 536
  store i16 %i.eu, ptr %i.ev, align 8, !noalias !141
  %prol.iter523.next = add i64 %prol.iter523, 1   ; 2 uses
  %prol.iter523.cmp.not = icmp eq i64 %prol.iter523.next, %xtraiter521
  br i1 %prol.iter523.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !75

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.dq, %.lr.ph.i.i.i.preheader ], [ %i.eq, %.lr.ph.i.i.i.prol ]
  %i.ew = icmp ult i64 %i.eo, 3
  br i1 %i.ew, label %.thread76, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.da, i64 544
  %i.ey = getelementptr inbounds nuw i8, ptr %i.da, i64 544
  %i.ez = getelementptr inbounds nuw i8, ptr %i.da, i64 544
  %i.fa = getelementptr inbounds nuw i8, ptr %i.da, i64 544
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.fq, %.lr.ph.i.i.i ] ; 7 uses
  %i.fb = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.sroa.0.06.i.i.i
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !141, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.da, ptr %i.fd, align 8, !noalias !141
  %i.fe = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 536
  store i16 %i.fe, ptr %i.ff, align 8, !noalias !141
  %i.fg = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fb
  %i.fi = load ptr, ptr %i.fh, align 8, !noalias !141, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.da, ptr %i.fi, align 8, !noalias !141
  %i.fj = trunc nuw nsw i64 %i.fb to i16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 536
  store i16 %i.fj, ptr %i.fk, align 8, !noalias !141
  %i.fl = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fg
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !141, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.da, ptr %i.fn, align 8, !noalias !141
  %i.fo = trunc nuw nsw i64 %i.fg to i16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 536
  store i16 %i.fo, ptr %i.fp, align 8, !noalias !141
  %i.fq = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.fr = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fr)
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fl
  %i.ft = load ptr, ptr %i.fs, align 8, !noalias !141, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.da, ptr %i.ft, align 8, !noalias !141
  %i.fu = trunc nuw nsw i64 %i.fl to i16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 536
  store i16 %i.fu, ptr %i.fv, align 8, !noalias !141
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.fq, %i.ej
  br i1 %exitcond.not.i.i.i.3, label %.thread76, label %.lr.ph.i.i.i

bb.av:                                            ; preds = %bb.aq
  switch i16 %i.dh, label %bb.aw [
    i16 5, label %bb.ay
    i16 6, label %bb.ax
  ]

bb.aw:                                            ; preds = %bb.av
  %i.fw = add nsw i64 %i.di, -7
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.aq
  %.sroa.06.0.i = phi i64 [ 5, %bb.ax ], [ 6, %bb.aw ], [ 4, %bb.aq ], [ 5, %bb.av ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.ax ], [ %i.fw, %bb.aw ], [ %i.di, %bb.aq ], [ 5, %bb.av ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.ax ], [ true, %bb.aw ], [ false, %bb.aq ], [ false, %bb.av ]
  %i.fx = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeINtNtB6_3vec3VechEINtNtBL_3set8BTreeSetNtNtB6_6string6StringEEE13new_uninit_inCs3tZ2SXJA1qv_8jiff_cli()
          to label %.noexc.i29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !138 ; 14 uses

.noexc.i29:                                       ; preds = %bb.ay
  store ptr null, ptr %i.fx, align 8, !noalias !144
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 538 ; 3 uses
  store i16 0, ptr %i.fy, align 2, !noalias !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.fz = load i16, ptr %i.dj, align 2, !noalias !146, !noundef !5
  %i.ga = zext i16 %i.fz to i64
  %i.gb = xor i64 %.sroa.06.0.i, -1
  %i.gc = add nsw i64 %i.ga, %i.gb                ; 4 uses
  %i.gd = trunc i64 %i.gc to i16
  store i16 %i.gd, ptr %i.fy, align 2, !alias.scope !145, !noalias !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !146
  %i.ge = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.ge, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.gf, i64 24, i1 false), !noalias !146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !146
  %i.gg = getelementptr inbounds nuw i8, ptr %i.da, i64 272 ; 2 uses
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %i.gg, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.gh, i64 24, i1 false), !noalias !146
  %i.gi = icmp ult i64 %i.gc, 12
  br i1 %i.gi, label %bb.bd, label %bb.az, !prof !6

bb.az:                                            ; preds = %.noexc.i29
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gc, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #17
          to label %bb.bb unwind label %bb.ba, !noalias !146

bb.ba:                                            ; preds = %bb.az
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i30 unwind label %bb.bc, !noalias !146

bb.bb:                                            ; preds = %bb.az
  unreachable

bb.bc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i30, %bb.ba
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !146
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i30: ; preds = %bb.ba
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #19
          to label %bb.bm unwind label %bb.bc, !noalias !146

bb.bd:                                            ; preds = %.noexc.i29
  %i.gl = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gm = getelementptr inbounds nuw [24 x i8], ptr %i.ge, i64 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.go = mul nuw nsw i64 %i.gc, 24               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gn, ptr nonnull readonly align 8 %i.gm, i64 %i.go, i1 false), !alias.scope !147, !noalias !148
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %i.gg, i64 %i.gl
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fx, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gq, ptr nonnull readonly align 8 %i.gp, i64 %i.go, i1 false), !alias.scope !149, !noalias !148
  %i.gr = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gr, ptr %i.dj, align 2, !noalias !146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !146
  %i.gs = load i16, ptr %i.fy, align 2, !noalias !144, !noundef !5 ; 3 uses
  %i.gt = zext i16 %i.gs to i64
  %i.gu = add nuw nsw i64 %i.gt, 1                ; 5 uses
  %i.gv = icmp ult i16 %i.gs, 12
  br i1 %i.gv, label %bb.be, label %bb.bg, !prof !6
end_hunk_0
begin_hunk_1_@_RINvMsN_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_3vec3VechEINtNtB8_3set8BTreeSetNtNtBc_6string6StringENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3K_11VacantEntryB1D_B1V_E12insert_entry0ECs3tZ2SXJA1qv_8jiff_cli:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.io, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7279.24..sroa_idx, i64 24, i1 false)
  br label %bb.bq

bb.bp:                                            ; preds = %.epilog-lcssa
  %i.ip = getelementptr inbounds nuw [24 x i8], ptr %i.ik, i64 %i.il
  %i.iq = sub nuw nsw i64 %i.ii, %.sroa.5.0.i     ; 2 uses
  %i.ir = mul nuw nsw i64 %i.iq, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ip, ptr nonnull align 8 %i.im, i64 %i.ir, i1 false), !alias.scope !156, !noalias !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.im, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !139
  %i.is = getelementptr inbounds nuw i8, ptr %spec.select.i32, i64 272 ; 2 uses
  %i.it = getelementptr inbounds nuw [24 x i8], ptr %i.is, i64 %.sroa.5.0.i ; 2 uses
  %i.iu = getelementptr inbounds nuw [24 x i8], ptr %i.is, i64 %i.il
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iu, ptr nonnull align 8 %i.it, i64 %i.ir, i1 false), !alias.scope !157, !noalias !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.it, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7279.24..sroa_idx, i64 24, i1 false)
  %i.iv = getelementptr inbounds nuw i8, ptr %spec.select.i32, i64 544 ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.il
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.sroa.5.0.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = shl nuw nsw i64 %i.iq, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iy, ptr nonnull align 8 %i.iw, i64 %i.iz, i1 false), !alias.scope !158, !noalias !155
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.ja = getelementptr inbounds nuw i8, ptr %spec.select.i32, i64 544 ; 6 uses
  %i.jb = add nuw nsw i64 %i.ii, 2                ; 2 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.il
  store ptr %i.dd, ptr %i.jc, align 8, !alias.scope !158, !noalias !155
  store i16 %i.ij, ptr %i.ig, align 2, !noalias !155
  %i.jd = icmp samesign ult i64 %i.il, %i.jb
  br i1 %i.jd, label %.lr.ph.i.i11.i.preheader, label %.loopexit

.lr.ph.i.i11.i.preheader:                         ; preds = %bb.bq
  %i.je = add nuw nsw i64 %i.ii, 1
  %i.jf = sub nsw i64 %i.je, %.sroa.5.0.i
  %i.jg = sub nsw i64 %i.ii, %.sroa.5.0.i
  %xtraiter519 = and i64 %i.jf, 3                 ; 2 uses
  %lcmp.mod520.not = icmp eq i64 %xtraiter519, 0
  br i1 %lcmp.mod520.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol

.lr.ph.i.i11.i.prol:                              ; preds = %.lr.ph.i.i11.i.preheader, %.lr.ph.i.i11.i.prol
  %.sroa.0.06.i.i12.i.prol = phi i64 [ %i.jh, %.lr.ph.i.i11.i.prol ], [ %i.il, %.lr.ph.i.i11.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.prol ], [ 0, %.lr.ph.i.i11.i.preheader ]
  %i.jh = add nuw nsw i64 %.sroa.0.06.i.i12.i.prol, 1 ; 2 uses
  %i.ji = icmp samesign ult i64 %.sroa.0.06.i.i12.i.prol, 12
  tail call void @llvm.assume(i1 %i.ji)
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %.sroa.0.06.i.i12.i.prol
  %i.jk = load ptr, ptr %i.jj, align 8, !noalias !155, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %spec.select.i32, ptr %i.jk, align 8, !noalias !155
  %i.jl = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.prol to i16
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 536
  store i16 %i.jl, ptr %i.jm, align 8, !noalias !155
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter519
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol, !llvm.loop !106

.lr.ph.i.i11.i.prol.loopexit:                     ; preds = %.lr.ph.i.i11.i.prol, %.lr.ph.i.i11.i.preheader
  %.sroa.0.06.i.i12.i.unr = phi i64 [ %i.il, %.lr.ph.i.i11.i.preheader ], [ %i.jh, %.lr.ph.i.i11.i.prol ]
  %i.jn = icmp ult i64 %i.jg, 3
  br i1 %i.jn, label %.loopexit, label %.lr.ph.i.i11.i

.lr.ph.i.i11.i:                                   ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i
  %.sroa.0.06.i.i12.i = phi i64 [ %i.kd, %.lr.ph.i.i11.i ], [ %.sroa.0.06.i.i12.i.unr, %.lr.ph.i.i11.i.prol.loopexit ] ; 7 uses
  %i.jo = add nuw nsw i64 %.sroa.0.06.i.i12.i, 1  ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %.sroa.0.06.i.i12.i
  %i.jq = load ptr, ptr %i.jp, align 8, !noalias !155, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %spec.select.i32, ptr %i.jq, align 8, !noalias !155
  %i.jr = trunc nuw nsw i64 %.sroa.0.06.i.i12.i to i16
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 536
  store i16 %i.jr, ptr %i.js, align 8, !noalias !155
  %i.jt = add nuw nsw i64 %.sroa.0.06.i.i12.i, 2  ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jo
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !155, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %spec.select.i32, ptr %i.jv, align 8, !noalias !155
  %i.jw = trunc nuw nsw i64 %i.jo to i16
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 536
  store i16 %i.jw, ptr %i.jx, align 8, !noalias !155
  %i.jy = add nuw nsw i64 %.sroa.0.06.i.i12.i, 3  ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jt
  %i.ka = load ptr, ptr %i.jz, align 8, !noalias !155, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %spec.select.i32, ptr %i.ka, align 8, !noalias !155
  %i.kb = trunc nuw nsw i64 %i.jt to i16
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 536
  store i16 %i.kb, ptr %i.kc, align 8, !noalias !155
  %i.kd = add nuw nsw i64 %.sroa.0.06.i.i12.i, 4  ; 2 uses
  %i.ke = icmp ult i64 %.sroa.0.06.i.i12.i, 9
  tail call void @llvm.assume(i1 %i.ke)
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jy
  %i.kg = load ptr, ptr %i.kf, align 8, !noalias !155, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %spec.select.i32, ptr %i.kg, align 8, !noalias !155
  %i.kh = trunc nuw nsw i64 %i.jy to i16
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 536
  store i16 %i.kh, ptr %i.ki, align 8, !noalias !155
  %exitcond.not.i.i13.i.3 = icmp eq i64 %i.kd, %i.jb
  br i1 %exitcond.not.i.i13.i.3, label %.loopexit, label %.lr.ph.i.i11.i

bb.br:                                            ; preds = %bb.bt, %bb.bs
  %i.kj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !159
  unreachable

bb.bs:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bm
  %.pn.ph.i27 = phi { ptr, i32 } [ %.pn.i.i, %bb.bm ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.bt unwind label %bb.br, !noalias !160

bb.bt:                                            ; preds = %bb.bs
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #19
          to label %.critedge20 unwind label %bb.br, !noalias !159

.thread76:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.loopexit81

.loopexit:                                        ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i, %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.753, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.sroa.4, i64 40, i1 false), !noalias !161
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not16 = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload, -1
  br i1 %.not16, label %.loopexit81, label %bb.bu

bb.bu:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7279, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.753, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.753)
  %i.kk = load ptr, ptr %i.da, align 8, !noalias !130, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.kk, null
  br i1 %.not.i, label %._crit_edge, label %bb.am

.loopexit81:                                      ; preds = %.loopexit, %.thread76
  store ptr %spec.select32.i, ptr %0, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.kl, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.km, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.753)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7279)
  br label %bb.bv

bb.bv:                                            ; preds = %.loopexit81, %bb.w, %bb.bw
  ret void

bb.bw:                                            ; preds = %bb.af
  %i.kn = zext nneg i16 %i.ct to i64              ; 3 uses
  %i.ko = add nuw nsw i16 %i.ct, 1
  store i16 %i.ko, ptr %i.ci, align 2, !noalias !136
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.kq = getelementptr inbounds nuw [24 x i8], ptr %i.kp, i64 %i.kn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kq, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 24, i1 false)
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ch, i64 272
  %i.ks = getelementptr inbounds nuw [24 x i8], ptr %i.kr, i64 %i.kn
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.7279, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ks, ptr noundef nonnull align 8 dereferenceable(24) %i.kt, i64 24, i1 false)
  %i.ku = add nuw nsw i64 %i.kn, 1                ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ku
  store ptr %.lcssa164, ptr %i.kv, align 8, !noalias !136
  store ptr %i.ch, ptr %.lcssa164, align 8, !noalias !136
  %i.kw = trunc nuw nsw i64 %i.ku to i16
  %i.kx = getelementptr inbounds nuw i8, ptr %.lcssa164, i64 536
  store i16 %i.kw, ptr %i.kx, align 8, !noalias !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %spec.select32.i, ptr %0, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.ky, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.kz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7279)
  br label %bb.bv

.critedge20:                                      ; preds = %bb.bt, %bb.al, %bb.ai, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph.i, %bb.t ], [ %.pn.ph.i27, %bb.bt ], [ %i.cx, %bb.al ], [ %i.cv, %bb.ai ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3v_11VacantEntryB1D_B1Y_E12insert_entry0ECs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3, ptr noalias nofree noundef nonnull readonly captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.i23.sroa.4 = alloca [16 x i8], align 8 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.i.sroa.4 = alloca [16 x i8], align 8   ; 5 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.746 = alloca [16 x i8], align 8          ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 5 uses
  %.sroa.7270 = alloca [16 x i8], align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4)
  %i.h = load ptr, ptr %1, align 8, !alias.scope !236, !nonnull !5, !noundef !5 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 274 ; 4 uses
  %i.j = load i16, ptr %i.i, align 2, !noalias !237, !noundef !5 ; 2 uses
  %i.k = icmp ugt i16 %i.j, 10
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !236, !noundef !5 ; 6 uses
  %i.n = icmp ult i64 %i.m, 5
  br i1 %i.n, label %bb.h, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.o = zext nneg i16 %i.j to i64                ; 2 uses
  %5 = add nuw nsw i64 %i.o, 1                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !239, !noundef !5 ; 5 uses
  %i.s = add i64 %i.r, 1                          ; 2 uses
  %.not.i.i = icmp ugt i64 %5, %i.s
  br i1 %.not.i.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.r
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.s
  %i.v = sub nsw i64 %i.o, %i.r
  %i.w = mul nuw nsw i64 %i.v, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.t, i64 %i.w, i1 false), !alias.scope !240, !noalias !241
  br label %.thread

bb.e:                                             ; preds = %bb.b
  switch i64 %i.m, label %bb.f [
    i64 5, label %bb.h
    i64 6, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.x = add i64 %i.m, -7
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.sroa.09.0.i = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ false, %bb.b ], [ false, %bb.e ] ; 2 uses
  %.sroa.510.0.i = phi i64 [ 0, %bb.g ], [ %i.x, %bb.f ], [ %i.m, %bb.b ], [ %i.m, %bb.e ] ; 7 uses
  %.sroa.013.0.i = phi i64 [ 5, %bb.g ], [ 6, %bb.f ], [ 4, %bb.b ], [ %i.m, %bb.e ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !236, !noundef !5 ; 4 uses
  %i.aa = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs3tZ2SXJA1qv_8jiff_cli()
          to label %.noexc.i unwind label %bb.m, !noalias !237 ; 7 uses

.noexc.i:                                         ; preds = %bb.h
  store ptr null, ptr %i.aa, align 8, !noalias !242
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 274 ; 2 uses
  store i16 0, ptr %i.ab, align 2, !noalias !242
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.ac = load i16, ptr %i.i, align 2, !noalias !244, !noundef !5
  %i.ad = zext i16 %i.ac to i64
  %i.ae = xor i64 %.sroa.013.0.i, -1
  %i.af = add nsw i64 %i.ad, %i.ae                ; 4 uses
  %i.ag = trunc i64 %i.af to i16
  store i16 %i.ag, ptr %i.ab, align 2, !alias.scope !243, !noalias !242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !244
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.sroa.013.0.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !244
  %i.aj = icmp ult i64 %i.af, 12
  br i1 %i.aj, label %bb.n, label %bb.i, !prof !6

bb.i:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.af, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #17
          to label %bb.k unwind label %bb.j, !noalias !244

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #19
          to label %.thread.i.i unwind label %bb.l, !noalias !244

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !244
  unreachable

.thread.i.i:                                      ; preds = %bb.j
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef 280, i64 noundef 8) #20, !noalias !242
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %.noexc.i
  %i.an = getelementptr i8, ptr %i.ai, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ap = mul nuw nsw i64 %i.af, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr nonnull readonly align 8 %i.an, i64 %i.ap, i1 false), !alias.scope !245, !noalias !246
  %i.aq = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.aq, ptr %i.i, align 2, !noalias !244
  %.sroa.0.i.sroa.0.0.copyload = load i64, ptr %i.d, align 8, !noalias !237 ; 3 uses
  %.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.4.0..sroa_idx, i64 16, i1 false), !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !244
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.z ; 3 uses
  %spec.select30.i = select i1 %.sroa.09.0.i, ptr %i.aa, ptr %i.h ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %spec.select30.i, i64 274 ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2, !noalias !247, !noundef !5 ; 2 uses
  %i.at = zext i16 %i.as to i64                   ; 2 uses
  %6 = add i16 %i.as, 1
  %i.au = getelementptr inbounds nuw i8, ptr %spec.select30.i, i64 8 ; 2 uses
  %.not.i16.not.i = icmp ult i64 %.sroa.510.0.i, %i.at
  br i1 %.not.i16.not.i, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %.sroa.510.0.i ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = sub nuw nsw i64 %i.at, %.sroa.510.0.i
  %i.ay = mul nuw nsw i64 %i.ax, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr nonnull align 8 %i.av, i64 %i.ay, i1 false), !alias.scope !248, !noalias !247
  br label %bb.r

bb.p:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !249
  unreachable

.thread:                                          ; preds = %bb.c, %bb.d
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %7 = trunc nuw nsw i64 %5 to i16
  store i16 %7, ptr %i.i, align 2, !noalias !241
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !239, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.t

bb.q:                                             ; preds = %bb.m, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.ak, %.thread.i.i ], [ %i.am, %bb.m ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #19
          to label %.body unwind label %bb.p, !noalias !249

bb.r:                                             ; preds = %bb.n, %bb.o
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %.sroa.510.0.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store i16 %6, ptr %i.ar, align 2, !noalias !247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.4, i64 16, i1 false), !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload, -1
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7270)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7270, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.be = load ptr, ptr %i.h, align 8, !noalias !251, !noundef !5 ; 2 uses
  %.not.i171 = icmp eq ptr %i.be, null
  br i1 %.not.i171, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %.sroa.0.i23.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bf = icmp eq i64 %i.z, 0
  %.sroa.7270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.ah

bb.t:                                             ; preds = %.thread, %bb.r
  %.sink.i62 = phi i64 [ %i.r, %.thread ], [ %.sroa.510.0.i, %bb.r ]
  %.sink48.i61 = phi i64 [ %i.bc, %.thread ], [ %spec.select.i, %bb.r ]
  %.sink49.i60 = phi ptr [ %i.h, %.thread ], [ %spec.select30.i, %bb.r ]
  store ptr %.sink49.i60, ptr %0, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink48.i61, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i62, ptr %i.bh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.bl

._crit_edge:                                      ; preds = %bb.bk, %bb.s
  %.sroa.0.0 = phi i64 [ %.sroa.0.i.sroa.0.0.copyload, %bb.s ], [ %.sroa.0.i23.sroa.0.0.copyload, %bb.bk ]
  %.lcssa163 = phi i64 [ 0, %bb.s ], [ %i.ch, %bb.bk ] ; 2 uses
  %.lcssa155 = phi ptr [ %i.aa, %bb.s ], [ %i.et, %bb.bk ] ; 4 uses
  %.lcssa147 = phi i64 [ %i.z, %bb.s ], [ %i.ch, %bb.bk ]
  %.lcssa = phi ptr [ %i.h, %bb.s ], [ %i.cc, %bb.bk ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7270, i64 16, i1 false)
  store i64 %.sroa.0.0, ptr %i.e, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.lcssa, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.lcssa147, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %.lcssa155, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %.lcssa163, ptr %.sroa.76.0..sroa_idx, align 8
  %.val = load ptr, ptr %3, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.bi = load ptr, ptr %.val, align 8, !noalias !252, !noundef !5 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i19 = icmp eq ptr %i.bi, null
  br i1 %.not.i19, label %bb.u, label %bb.w, !prof !7

bb.u:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #17
          to label %bb.v unwind label %bb.af, !noalias !252

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !253, !noalias !252, !noundef !5 ; 2 uses
  %i.bl = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs3tZ2SXJA1qv_8jiff_cli()
          to label %.noexc.i.i unwind label %bb.aa, !noalias !254 ; 8 uses

.noexc.i.i:                                       ; preds = %bb.w
  store ptr null, ptr %i.bl, align 8, !noalias !254
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 274 ; 3 uses
  store i16 0, ptr %i.bm, align 2, !noalias !254
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 280 ; 2 uses
  store ptr %i.bi, ptr %i.bn, align 8, !noalias !254
  %i.bo = add i64 %i.bk, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i.i.i, label %bb.x, label %bb.ab, !prof !7

bb.x:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #17
          to label %bb.y unwind label %bb.z, !noalias !254

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef 376, i64 noundef 8) #20, !noalias !254
  br label %.body.i.i

bb.aa:                                            ; preds = %bb.w
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.aa, %bb.z
  tail call void @llvm.trap()
  unreachable

bb.ab:                                            ; preds = %.noexc.i.i
  store ptr %i.bl, ptr %i.bi, align 8, !noalias !255
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 272
  store i16 0, ptr %i.br, align 8, !noalias !256
  store ptr %i.bl, ptr %.val, align 8, !alias.scope !253, !noalias !252
  store i64 %i.bo, ptr %i.bj, align 8, !alias.scope !253, !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 24, i1 false)
  %i.bs = icmp eq i64 %.lcssa163, %i.bk
  br i1 %i.bs, label %bb.ac, label %.invoke.i.i, !prof !8

.invoke.i.i:                                      ; preds = %bb.ac, %bb.ab
  %i.bt = phi ptr [ @12, %bb.ab ], [ @10, %bb.ac ]
  %i.bu = phi i64 [ 48, %bb.ab ], [ 32, %bb.ac ]
  %i.bv = phi ptr [ @13, %bb.ab ], [ @14, %bb.ac ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bt, i64 noundef %i.bu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bv) #17
          to label %.cont.i.i unwind label %bb.ad, !noalias !257

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.bw = load i16, ptr %i.bm, align 2, !noalias !257, !noundef !5 ; 3 uses
  %i.bx = icmp ult i16 %i.bw, 11
  br i1 %i.bx, label %bb.bm, label %.invoke.i.i, !prof !8

bb.ad:                                            ; preds = %.invoke.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #19
          to label %.body unwind label %bb.ae, !noalias !252

bb.ae:                                            ; preds = %bb.ad
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !252
  unreachable

bb.af:                                            ; preds = %bb.u
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e) #19
          to label %.body unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.ah:                                            ; preds = %.lr.ph, %bb.bk
  %.sroa.0.1 = phi i64 [ %.sroa.0.i.sroa.0.0.copyload, %.lr.ph ], [ %.sroa.0.i23.sroa.0.0.copyload, %bb.bk ]
  %i.cc = phi ptr [ %i.be, %.lr.ph ], [ %i.iw, %bb.bk ] ; 20 uses
  %i.cd = phi ptr [ %i.h, %.lr.ph ], [ %i.cc, %bb.bk ]
  %i.ce = phi i64 [ %i.z, %.lr.ph ], [ %i.ch, %bb.bk ]
  %i.cf = phi ptr [ %i.aa, %.lr.ph ], [ %i.et, %bb.bk ] ; 2 uses
  %i.cg = phi i1 [ %i.bf, %.lr.ph ], [ true, %bb.bk ]
  %i.ch = add i64 %i.ce, 1                        ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 272
  %i.cj = load i16, ptr %i.ci, align 8, !noalias !251 ; 4 uses
  %i.ck = zext i16 %i.cj to i64                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.746)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.sroa.0.1, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7270.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7270, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i23.sroa.4)
  br i1 %i.cg, label %bb.aj, label %bb.ai, !prof !8

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #17
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !258

bb.aj:                                            ; preds = %bb.ah
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 274 ; 4 uses
  %i.cm = load i16, ptr %i.cl, align 2, !noalias !258, !noundef !5 ; 5 uses
  %i.cn = icmp ult i16 %i.cm, 11
  br i1 %i.cn, label %bb.am, label %bb.al

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ar, %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.ak:                                            ; preds = %bb.ai
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.co = icmp ult i16 %i.cj, 5
  br i1 %i.co, label %bb.ar, label %bb.ao

bb.am:                                            ; preds = %bb.aj
  %i.cp = zext nneg i16 %i.cm to i64              ; 5 uses
  %i.cq = add nuw nsw i16 %i.cm, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 3 uses
  %i.cs = add nuw nsw i64 %i.ck, 1                ; 6 uses
  %8 = icmp ugt i16 %i.cm, %i.cj
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %i.ck ; 2 uses
  br i1 %8, label %bb.an, label %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i.i

_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i.i: ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !259
  br label %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTEEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i

bb.an:                                            ; preds = %bb.am
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %i.cs
  %i.cv = sub nuw nsw i64 %i.cp, %i.ck
  %i.cw = mul nuw nsw i64 %i.cv, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cu, ptr nonnull align 8 %i.ct, i64 %i.cw, i1 false), !alias.scope !260, !noalias !261
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %i.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !259
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cc, i64 280 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cs
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.ck
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = sub nuw nsw i64 %i.cp, %i.ck
  %i.dd = shl nuw nsw i64 %i.dc, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.db, ptr nonnull align 8 %i.cz, i64 %i.dd, i1 false), !alias.scope !262, !noalias !261
  br label %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTEEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i

_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTEEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i: ; preds = %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i.i, %bb.an
  %i.de = getelementptr inbounds nuw i8, ptr %i.cc, i64 280
  %i.df = add nuw nsw i64 %i.cp, 2                ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.cs
  store ptr %i.cf, ptr %i.dg, align 8, !alias.scope !262, !noalias !261
  store i16 %i.cq, ptr %i.cl, align 2, !noalias !261
  %i.dh = icmp samesign ult i64 %i.cs, %i.df
  br i1 %i.dh, label %.lr.ph.i.i.i.preheader, label %.thread67

.lr.ph.i.i.i.preheader:                           ; preds = %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTEEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i
  %i.di = add nuw nsw i64 %i.cp, 1
  %i.dj = sub nsw i64 %i.di, %i.ck
  %i.dk = sub nsw i64 %i.cp, %i.ck
  %xtraiter504 = and i64 %i.dj, 3                 ; 2 uses
  %lcmp.mod505.not = icmp eq i64 %xtraiter504, 0
  br i1 %lcmp.mod505.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cc, i64 280
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.dm, %.lr.ph.i.i.i.prol ], [ %i.cs, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter506 = phi i64 [ %prol.iter506.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.dm = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.dn = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.dn)
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.sroa.0.06.i.i.i.prol
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !261, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.cc, ptr %i.dp, align 8, !noalias !261
  %i.dq = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 272
  store i16 %i.dq, ptr %i.dr, align 8, !noalias !261
  %prol.iter506.next = add i64 %prol.iter506, 1   ; 2 uses
  %prol.iter506.cmp.not = icmp eq i64 %prol.iter506.next, %xtraiter504
  br i1 %prol.iter506.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !210

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.cs, %.lr.ph.i.i.i.preheader ], [ %i.dm, %.lr.ph.i.i.i.prol ]
  %i.ds = icmp ult i64 %i.dk, 3
  br i1 %i.ds, label %.thread67, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cc, i64 280
  %i.du = getelementptr inbounds nuw i8, ptr %i.cc, i64 280
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cc, i64 280
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cc, i64 280
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.em, %.lr.ph.i.i.i ] ; 7 uses
  %i.dx = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.sroa.0.06.i.i.i
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !261, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.cc, ptr %i.dz, align 8, !noalias !261
  %i.ea = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 272
  store i16 %i.ea, ptr %i.eb, align 8, !noalias !261
  %i.ec = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dx
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !261, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.cc, ptr %i.ee, align 8, !noalias !261
  %i.ef = trunc nuw nsw i64 %i.dx to i16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 272
  store i16 %i.ef, ptr %i.eg, align 8, !noalias !261
  %i.eh = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ec
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !261, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.cc, ptr %i.ej, align 8, !noalias !261
  %i.ek = trunc nuw nsw i64 %i.ec to i16
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 272
  store i16 %i.ek, ptr %i.el, align 8, !noalias !261
  %i.em = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.en = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.en)
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.eh
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !261, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.cc, ptr %i.ep, align 8, !noalias !261
  %i.eq = trunc nuw nsw i64 %i.eh to i16
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 272
  store i16 %i.eq, ptr %i.er, align 8, !noalias !261
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.em, %i.df
  br i1 %exitcond.not.i.i.i.3, label %.thread67, label %.lr.ph.i.i.i

bb.ao:                                            ; preds = %bb.al
  switch i16 %i.cj, label %bb.ap [
    i16 5, label %bb.ar
    i16 6, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.es = add nsw i64 %i.ck, -7
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.al
  %.sroa.06.0.i = phi i64 [ 5, %bb.aq ], [ 6, %bb.ap ], [ 4, %bb.al ], [ 5, %bb.ao ] ; 5 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.aq ], [ %i.es, %bb.ap ], [ %i.ck, %bb.al ], [ 5, %bb.ao ] ; 7 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.aq ], [ true, %bb.ap ], [ false, %bb.al ], [ false, %bb.ao ]
  %i.et = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs3tZ2SXJA1qv_8jiff_cli()
          to label %.noexc.i26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !258 ; 13 uses

.noexc.i26:                                       ; preds = %bb.ar
  store ptr null, ptr %i.et, align 8, !noalias !263
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 274 ; 3 uses
  store i16 0, ptr %i.eu, align 2, !noalias !263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !263
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.ev = load i16, ptr %i.cl, align 2, !noalias !265, !noundef !5
  %i.ew = zext i16 %i.ev to i64
  %i.ex = xor i64 %.sroa.06.0.i, -1
  %i.ey = add nsw i64 %i.ew, %i.ex                ; 4 uses
  %i.ez = trunc i64 %i.ey to i16
  store i16 %i.ez, ptr %i.eu, align 2, !alias.scope !264, !noalias !263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !265
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.fa, i64 %.sroa.06.0.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.fb, i64 24, i1 false), !noalias !265
  %i.fc = icmp ult i64 %i.ey, 12
  br i1 %i.fc, label %bb.aw, label %bb.as, !prof !6

bb.as:                                            ; preds = %.noexc.i26
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ey, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #17
          to label %bb.au unwind label %bb.at, !noalias !265

bb.at:                                            ; preds = %bb.as
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #19
          to label %bb.bf unwind label %bb.av, !noalias !265

bb.au:                                            ; preds = %bb.as
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !265
  unreachable

bb.aw:                                            ; preds = %.noexc.i26
  %i.ff = getelementptr i8, ptr %i.fb, i64 24
  %i.fg = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.fh = mul nuw nsw i64 %i.ey, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fg, ptr nonnull readonly align 8 %i.ff, i64 %i.fh, i1 false), !alias.scope !266, !noalias !267
  %i.fi = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.fi, ptr %i.cl, align 2, !noalias !265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !265
  %i.fj = load i16, ptr %i.eu, align 2, !noalias !263, !noundef !5 ; 3 uses
  %i.fk = zext i16 %i.fj to i64
  %i.fl = add nuw nsw i64 %i.fk, 1                ; 5 uses
  %i.fm = icmp ult i16 %i.fj, 12
  br i1 %i.fm, label %bb.ax, label %bb.az, !prof !6

bb.ax:                                            ; preds = %bb.aw
  %i.fn = getelementptr inbounds nuw i8, ptr %i.et, i64 280 ; 6 uses
  %i.fo = zext i16 %i.cm to i64
  %i.fp = sub nuw nsw i64 %i.fo, %.sroa.06.0.i
  %i.fq = icmp eq i64 %i.fp, %i.fl
  br i1 %i.fq, label %bb.bb, label %bb.ay, !prof !8

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #21
          to label %.noexc.i.i27 unwind label %bb.ba, !noalias !263

.noexc.i.i27:                                     ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %bb.aw
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fl, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #17
          to label %bb.bd unwind label %bb.ba, !noalias !263

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtNtBG_11collections5btree7set_val9SetValZSTEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #19
end_hunk_1
begin_hunk_2_@_RINvMsN_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3v_11VacantEntryB1D_B1Y_E12insert_entry0ECs3tZ2SXJA1qv_8jiff_cli:bb.a
  %i.hb = getelementptr inbounds nuw i8, ptr %spec.select.i28, i64 8 ; 2 uses
  %i.hc = add nuw nsw i64 %.sroa.5.0.i, 1         ; 6 uses
  %.not.i10.not.i = icmp samesign ult i64 %.sroa.5.0.i, %i.gz
  %i.hd = getelementptr inbounds nuw [24 x i8], ptr %i.hb, i64 %.sroa.5.0.i ; 3 uses
  br i1 %.not.i10.not.i, label %bb.bh, label %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i11.i

_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i11.i: ; preds = %.epilog-lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hd, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !259
  br label %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTEEECs3tZ2SXJA1qv_8jiff_cli.exit.i12.i

bb.bh:                                            ; preds = %.epilog-lcssa
  %i.he = getelementptr inbounds nuw [24 x i8], ptr %i.hb, i64 %i.hc
  %i.hf = sub nuw nsw i64 %i.gz, %.sroa.5.0.i     ; 2 uses
  %i.hg = mul nuw nsw i64 %i.hf, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.he, ptr nonnull align 8 %i.hd, i64 %i.hg, i1 false), !alias.scope !274, !noalias !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hd, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !259
  %i.hh = getelementptr inbounds nuw i8, ptr %spec.select.i28, i64 280 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hc
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %.sroa.5.0.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = shl nuw nsw i64 %i.hf, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hk, ptr nonnull align 8 %i.hi, i64 %i.hl, i1 false), !alias.scope !275, !noalias !273
  br label %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTEEECs3tZ2SXJA1qv_8jiff_cli.exit.i12.i

_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTEEECs3tZ2SXJA1qv_8jiff_cli.exit.i12.i: ; preds = %bb.bh, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i11.i
  %i.hm = getelementptr inbounds nuw i8, ptr %spec.select.i28, i64 280 ; 6 uses
  %i.hn = add nuw nsw i64 %i.gz, 2                ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.hc
  store ptr %i.cf, ptr %i.ho, align 8, !alias.scope !275, !noalias !273
  store i16 %i.ha, ptr %i.gx, align 2, !noalias !273
  %i.hp = icmp samesign ult i64 %i.hc, %i.hn
  br i1 %i.hp, label %.lr.ph.i.i13.i.preheader, label %.loopexit

.lr.ph.i.i13.i.preheader:                         ; preds = %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTEEECs3tZ2SXJA1qv_8jiff_cli.exit.i12.i
  %i.hq = add nuw nsw i64 %i.gz, 1
  %i.hr = sub nsw i64 %i.hq, %.sroa.5.0.i
  %i.hs = sub nsw i64 %i.gz, %.sroa.5.0.i
  %xtraiter502 = and i64 %i.hr, 3                 ; 2 uses
  %lcmp.mod503.not = icmp eq i64 %xtraiter502, 0
  br i1 %lcmp.mod503.not, label %.lr.ph.i.i13.i.prol.loopexit, label %.lr.ph.i.i13.i.prol

.lr.ph.i.i13.i.prol:                              ; preds = %.lr.ph.i.i13.i.preheader, %.lr.ph.i.i13.i.prol
  %.sroa.0.06.i.i14.i.prol = phi i64 [ %i.ht, %.lr.ph.i.i13.i.prol ], [ %i.hc, %.lr.ph.i.i13.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i13.i.prol ], [ 0, %.lr.ph.i.i13.i.preheader ]
  %i.ht = add nuw nsw i64 %.sroa.0.06.i.i14.i.prol, 1 ; 2 uses
  %i.hu = icmp samesign ult i64 %.sroa.0.06.i.i14.i.prol, 12
  tail call void @llvm.assume(i1 %i.hu)
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %.sroa.0.06.i.i14.i.prol
  %i.hw = load ptr, ptr %i.hv, align 8, !noalias !273, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %spec.select.i28, ptr %i.hw, align 8, !noalias !273
  %i.hx = trunc nuw nsw i64 %.sroa.0.06.i.i14.i.prol to i16
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 272
  store i16 %i.hx, ptr %i.hy, align 8, !noalias !273
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter502
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i13.i.prol.loopexit, label %.lr.ph.i.i13.i.prol, !llvm.loop !235

.lr.ph.i.i13.i.prol.loopexit:                     ; preds = %.lr.ph.i.i13.i.prol, %.lr.ph.i.i13.i.preheader
  %.sroa.0.06.i.i14.i.unr = phi i64 [ %i.hc, %.lr.ph.i.i13.i.preheader ], [ %i.ht, %.lr.ph.i.i13.i.prol ]
  %i.hz = icmp ult i64 %i.hs, 3
  br i1 %i.hz, label %.loopexit, label %.lr.ph.i.i13.i

.lr.ph.i.i13.i:                                   ; preds = %.lr.ph.i.i13.i.prol.loopexit, %.lr.ph.i.i13.i
  %.sroa.0.06.i.i14.i = phi i64 [ %i.ip, %.lr.ph.i.i13.i ], [ %.sroa.0.06.i.i14.i.unr, %.lr.ph.i.i13.i.prol.loopexit ] ; 7 uses
  %i.ia = add nuw nsw i64 %.sroa.0.06.i.i14.i, 1  ; 2 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %.sroa.0.06.i.i14.i
  %i.ic = load ptr, ptr %i.ib, align 8, !noalias !273, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %spec.select.i28, ptr %i.ic, align 8, !noalias !273
  %i.id = trunc nuw nsw i64 %.sroa.0.06.i.i14.i to i16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 272
  store i16 %i.id, ptr %i.ie, align 8, !noalias !273
  %i.if = add nuw nsw i64 %.sroa.0.06.i.i14.i, 2  ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.ia
  %i.ih = load ptr, ptr %i.ig, align 8, !noalias !273, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %spec.select.i28, ptr %i.ih, align 8, !noalias !273
  %i.ii = trunc nuw nsw i64 %i.ia to i16
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 272
  store i16 %i.ii, ptr %i.ij, align 8, !noalias !273
  %i.ik = add nuw nsw i64 %.sroa.0.06.i.i14.i, 3  ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.if
  %i.im = load ptr, ptr %i.il, align 8, !noalias !273, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %spec.select.i28, ptr %i.im, align 8, !noalias !273
  %i.in = trunc nuw nsw i64 %i.if to i16
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 272
  store i16 %i.in, ptr %i.io, align 8, !noalias !273
  %i.ip = add nuw nsw i64 %.sroa.0.06.i.i14.i, 4  ; 2 uses
  %i.iq = icmp ult i64 %.sroa.0.06.i.i14.i, 9
  tail call void @llvm.assume(i1 %i.iq)
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.ik
  %i.is = load ptr, ptr %i.ir, align 8, !noalias !273, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %spec.select.i28, ptr %i.is, align 8, !noalias !273
  %i.it = trunc nuw nsw i64 %i.ik to i16
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 272
  store i16 %i.it, ptr %i.iu, align 8, !noalias !273
  %exitcond.not.i.i15.i.3 = icmp eq i64 %i.ip, %i.hn
  br i1 %exitcond.not.i.i15.i.3, label %.loopexit, label %.lr.ph.i.i13.i

bb.bi:                                            ; preds = %bb.bj
  %i.iv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !259
  unreachable

bb.bj:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bf
  %.pn.ph.i24 = phi { ptr, i32 } [ %.pn.i.i, %bb.bf ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #19
          to label %.body unwind label %bb.bi, !noalias !259

.thread67:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTEEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i23.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.loopexit72

.loopexit:                                        ; preds = %.lr.ph.i.i13.i.prol.loopexit, %.lr.ph.i.i13.i, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTEEECs3tZ2SXJA1qv_8jiff_cli.exit.i12.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.746, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i23.sroa.4, i64 16, i1 false), !noalias !276
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i23.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not16 = icmp eq i64 %.sroa.0.i23.sroa.0.0.copyload, -1
  br i1 %.not16, label %.loopexit72, label %bb.bk

bb.bk:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7270, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.746, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.746)
  %i.iw = load ptr, ptr %i.cc, align 8, !noalias !251, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.iw, null
  br i1 %.not.i, label %._crit_edge, label %bb.ah

.loopexit72:                                      ; preds = %.loopexit, %.thread67
  store ptr %spec.select30.i, ptr %0, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.ix, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.iy, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.746)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7270)
  br label %bb.bl

bb.bl:                                            ; preds = %.loopexit72, %bb.t, %bb.bm
  ret void

bb.bm:                                            ; preds = %bb.ac
  %i.iz = zext nneg i16 %i.bw to i64              ; 2 uses
  %i.ja = add nuw nsw i16 %i.bw, 1
  store i16 %i.ja, ptr %i.bm, align 2, !noalias !257
  %i.jb = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.jc = getelementptr inbounds nuw [24 x i8], ptr %i.jb, i64 %i.iz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jc, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 24, i1 false)
  %i.jd = add nuw nsw i64 %i.iz, 1                ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.jd
  store ptr %.lcssa155, ptr %i.je, align 8, !noalias !257
  store ptr %i.bl, ptr %.lcssa155, align 8, !noalias !257
  %i.jf = trunc nuw nsw i64 %i.jd to i16
  %i.jg = getelementptr inbounds nuw i8, ptr %.lcssa155, i64 272
  store i16 %i.jf, ptr %i.jg, align 8, !noalias !257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %spec.select30.i, ptr %0, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.jh, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.ji, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7270)
  br label %bb.bl

.body:                                            ; preds = %bb.bj, %bb.af, %bb.ad, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %.pn.ph.i24, %bb.bj ], [ %i.ca, %bb.af ], [ %i.by, %bb.ad ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB4b_11VacantEntryB1D_B1Y_E12insert_entry0EB26_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull readonly captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.0.i.sroa.4 = alloca [64 x i8], align 8   ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.458 = alloca [64 x i8], align 8          ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 6 uses
  %i.j = alloca [104 x i8], align 8               ; 12 uses
  %i.k = alloca [48 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.750 = alloca [64 x i8], align 8          ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [64 x i8], align 8            ; 5 uses
  %.sroa.7276 = alloca [64 x i8], align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.458)
  %i.o = load ptr, ptr %1, align 8, !alias.scope !374, !nonnull !5, !noundef !5 ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 802 ; 4 uses
  %i.q = load i16, ptr %i.p, align 2, !noalias !375, !noundef !5 ; 2 uses
  %i.r = icmp ugt i16 %i.q, 10
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !374, !noundef !5 ; 6 uses
  %i.u = icmp ult i64 %i.t, 5
  br i1 %i.u, label %bb.i, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.v = zext nneg i16 %i.q to i64                ; 2 uses
  %6 = add nuw nsw i64 %i.v, 1                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 536 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !377, !noundef !5 ; 6 uses
  %i.z = add i64 %i.y, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %6, %i.z
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.y ; 3 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.z
  %i.ac = sub nsw i64 %i.v, %i.y                  ; 2 uses
  %i.ad = mul nuw nsw i64 %i.ac, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.aa, i64 %i.ad, i1 false), !alias.scope !379, !noalias !380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.y
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.z
  %i.ag = mul nuw nsw i64 %i.ac, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.ae, i64 %i.ag, i1 false), !alias.scope !381, !noalias !380
  br label %.thread

bb.f:                                             ; preds = %bb.b
  switch i64 %i.t, label %bb.g [
    i64 5, label %bb.i
    i64 6, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ah = add i64 %i.t, -7
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.b
  %.sroa.09.0.i = phi i1 [ true, %bb.h ], [ true, %bb.g ], [ false, %bb.b ], [ false, %bb.f ] ; 2 uses
  %.sroa.510.0.i = phi i64 [ 0, %bb.h ], [ %i.ah, %bb.g ], [ %i.t, %bb.b ], [ %i.t, %bb.f ] ; 9 uses
  %.sroa.013.0.i = phi i64 [ 5, %bb.h ], [ 6, %bb.g ], [ 4, %bb.b ], [ %i.t, %bb.f ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !374, !noundef !5 ; 4 uses
  %i.ak = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingEE13new_uninit_inB1S_()
          to label %.noexc.i unwind label %bb.o, !noalias !375 ; 8 uses

.noexc.i:                                         ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 528
  store ptr null, ptr %i.al, align 8, !noalias !382
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 802 ; 2 uses
  store i16 0, ptr %i.am, align 2, !noalias !382
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.an = load i16, ptr %i.p, align 2, !noalias !384, !noundef !5
  %i.ao = zext i16 %i.an to i64
  %i.ap = xor i64 %.sroa.013.0.i, -1
  %i.aq = add nsw i64 %i.ao, %i.ap                ; 5 uses
  %i.ar = trunc i64 %i.aq to i16
  store i16 %i.ar, ptr %i.am, align 2, !alias.scope !383, !noalias !382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !384
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 536 ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !384
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.au, i64 48, i1 false), !noalias !384
  %i.av = icmp ult i64 %i.aq, 12
  br i1 %i.av, label %bb.p, label %bb.j, !prof !6

bb.j:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aq, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #17
          to label %bb.l unwind label %bb.k, !noalias !384

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingEBJ_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.g) #19
          to label %bb.n unwind label %bb.m, !noalias !384

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !384
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #19
          to label %.thread.i.i unwind label %bb.m, !noalias !384

.thread.i.i:                                      ; preds = %bb.n
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef 808, i64 noundef 8) #20, !noalias !382
  br label %bb.t

bb.o:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.p:                                             ; preds = %.noexc.i
  %i.az = add nuw nsw i64 %.sroa.013.0.i, 1       ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 536
  %i.bc = mul nuw nsw i64 %i.aq, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull readonly align 8 %i.ba, i64 %i.bc, i1 false), !alias.scope !385, !noalias !386
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.az
  %i.be = mul nuw nsw i64 %i.aq, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(808) %i.ak, ptr nonnull readonly align 8 %i.bd, i64 %i.be, i1 false), !alias.scope !387, !noalias !386
  %i.bf = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.bf, ptr %i.p, align 2, !noalias !384
  %.sroa.057.0.copyload = load i64, ptr %i.h, align 8, !noalias !375 ; 3 uses
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458.0..sroa_idx, i64 16, i1 false), !noalias !375
  %.sroa.458.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.458, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.458.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !384
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.aj ; 3 uses
  %spec.select31.i = select i1 %.sroa.09.0.i, ptr %i.ak, ptr %i.o ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 802 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !noalias !388, !noundef !5 ; 2 uses
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %7 = add i16 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 536 ; 2 uses
  %.not.i16.not.i = icmp ult i64 %.sroa.510.0.i, %i.bi
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.sroa.510.0.i ; 3 uses
  br i1 %.not.i16.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.bl = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = sub nuw nsw i64 %i.bi, %.sroa.510.0.i   ; 2 uses
  %i.bo = mul nuw nsw i64 %i.bn, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr nonnull align 8 %i.bk, i64 %i.bo, i1 false), !alias.scope !390, !noalias !388
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %i.bp = getelementptr inbounds nuw [48 x i8], ptr %spec.select31.i, i64 %.sroa.510.0.i
  %i.bq = getelementptr inbounds nuw [48 x i8], ptr %spec.select31.i, i64 %i.bl
  %i.br = mul nuw nsw i64 %i.bn, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr nonnull align 8 %i.bp, i64 %i.br, i1 false), !alias.scope !391, !noalias !388
  br label %bb.v

bb.s:                                             ; preds = %bb.u, %bb.t
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !392
  unreachable

.thread:                                          ; preds = %bb.d, %bb.e
  %i.bt = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.i, i64 48, i1 false), !alias.scope !393, !noalias !380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %8 = trunc nuw nsw i64 %6 to i16
  store i16 %8, ptr %i.p, align 2, !noalias !380
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !377, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.458)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.x

bb.t:                                             ; preds = %bb.o, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.aw, %.thread.i.i ], [ %i.ay, %bb.o ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m) #19
          to label %bb.u unwind label %bb.s, !noalias !394

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #19
          to label %.critedge20 unwind label %bb.s, !noalias !392

bb.v:                                             ; preds = %bb.q, %bb.r
  %i.bw = getelementptr inbounds nuw [48 x i8], ptr %spec.select31.i, i64 %.sroa.510.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.f, i64 48, i1 false), !alias.scope !395, !noalias !388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %7, ptr %i.bg, align 2, !noalias !388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.458, i64 64, i1 false), !noalias !396
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.458)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not = icmp eq i64 %.sroa.057.0.copyload, -1
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7276)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7276, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 528
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !397, !noundef !5 ; 2 uses
  %.not.i177 = icmp eq ptr %i.by, null
  br i1 %.not.i177, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ca = icmp eq i64 %i.aj, 0
  %.sroa.7276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7276.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16 ; 5 uses
  br label %bb.an

bb.x:                                             ; preds = %.thread, %bb.v
  %.sink.i68 = phi i64 [ %i.y, %.thread ], [ %.sroa.510.0.i, %bb.v ]
  %.sink49.i67 = phi i64 [ %i.bv, %.thread ], [ %spec.select.i, %bb.v ]
  %.sink50.i66 = phi ptr [ %i.o, %.thread ], [ %spec.select31.i, %bb.v ]
  store ptr %.sink50.i66, ptr %0, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink49.i67, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i68, ptr %i.cc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.bx

._crit_edge:                                      ; preds = %bb.bw, %bb.w
  %.sroa.0.0 = phi i64 [ %.sroa.057.0.copyload, %bb.w ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ]
  %.lcssa169 = phi i64 [ 0, %bb.w ], [ %i.dg, %bb.bw ] ; 2 uses
  %.lcssa161 = phi ptr [ %i.ak, %bb.w ], [ %i.gb, %bb.bw ] ; 4 uses
  %.lcssa153 = phi i64 [ %i.aj, %bb.w ], [ %i.dg, %bb.bw ]
  %.lcssa = phi ptr [ %i.o, %bb.w ], [ %i.db, %bb.bw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.02.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7276, i64 64, i1 false)
  store i64 %.sroa.0.0, ptr %i.j, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr %.lcssa, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i64 %.lcssa153, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store ptr %.lcssa161, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  store i64 %.lcssa169, ptr %.sroa.76.0..sroa_idx, align 8
  %.val = load ptr, ptr %4, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.cd = load ptr, ptr %.val, align 8, !noalias !398, !noundef !5 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i23 = icmp eq ptr %i.cd, null
  br i1 %.not.i23, label %bb.y, label %bb.aa, !prof !7

bb.y:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #17
          to label %bb.z unwind label %bb.ak, !noalias !398

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !399, !noalias !398, !noundef !5 ; 2 uses
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingEE13new_uninit_inB1X_()
          to label %.noexc.i.i unwind label %bb.ae, !noalias !400 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 528
  store ptr null, ptr %i.ch, align 8, !noalias !400
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 802 ; 3 uses
  store i16 0, ptr %i.ci, align 2, !noalias !400
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 808 ; 2 uses
  store ptr %i.cd, ptr %i.cj, align 8, !noalias !400
  %i.ck = add i64 %i.cf, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.af, !prof !7

bb.ab:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #17
          to label %bb.ac unwind label %bb.ad, !noalias !400

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 904, i64 noundef 8) #20, !noalias !400
  br label %.body.i.i

bb.ae:                                            ; preds = %bb.aa
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ae, %bb.ad
  tail call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %.noexc.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 528
  store ptr %i.cg, ptr %i.cn, align 8, !noalias !401
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 800
  store i16 0, ptr %i.co, align 8, !noalias !402
  store ptr %i.cg, ptr %.val, align 8, !alias.scope !399, !noalias !398
  store i64 %i.ck, ptr %i.ce, align 8, !alias.scope !399, !noalias !398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(104) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !398
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.cp, i64 48, i1 false)
  %i.cq = icmp eq i64 %.lcssa169, %i.cf
  br i1 %i.cq, label %bb.ag, label %.invoke.i.i, !prof !8

.invoke.i.i:                                      ; preds = %bb.ag, %bb.af
  %i.cr = phi ptr [ @12, %bb.af ], [ @10, %bb.ag ]
  %i.cs = phi i64 [ 48, %bb.af ], [ 32, %bb.ag ]
  %i.ct = phi ptr [ @13, %bb.af ], [ @14, %bb.ag ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #17
          to label %.cont.i.i unwind label %bb.ah, !noalias !403

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i16, ptr %i.ci, align 2, !noalias !403, !noundef !5 ; 3 uses
  %i.cv = icmp ult i16 %i.cu, 11
  br i1 %i.cv, label %bb.by, label %.invoke.i.i, !prof !8

bb.ah:                                            ; preds = %.invoke.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d) #19
          to label %bb.aj unwind label %bb.ai, !noalias !404

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !398
  unreachable

bb.aj:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #19
          to label %.critedge20 unwind label %bb.ai, !noalias !398

bb.ak:                                            ; preds = %bb.y
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.j) #19
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingEBJ_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.da) #19
          to label %.critedge20 unwind label %bb.al

bb.an:                                            ; preds = %.lr.ph, %bb.bw
  %.sroa.0.1 = phi i64 [ %.sroa.057.0.copyload, %.lr.ph ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ]
  %i.db = phi ptr [ %i.by, %.lr.ph ], [ %i.ky, %bb.bw ] ; 26 uses
  %i.dc = phi ptr [ %i.o, %.lr.ph ], [ %i.db, %bb.bw ]
  %i.dd = phi i64 [ %i.aj, %.lr.ph ], [ %i.dg, %bb.bw ]
  %i.de = phi ptr [ %i.ak, %.lr.ph ], [ %i.gb, %bb.bw ] ; 2 uses
  %i.df = phi i1 [ %i.ca, %.lr.ph ], [ true, %bb.bw ]
  %i.dg = add i64 %i.dd, 1                        ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 800
  %i.di = load i16, ptr %i.dh, align 8, !noalias !397 ; 4 uses
  %i.dj = zext i16 %i.di to i64                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.750)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.sroa.0.1, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7276.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7276, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7276.24..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4)
  br i1 %i.df, label %bb.ap, label %bb.ao, !prof !8

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #17
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !405

bb.ap:                                            ; preds = %bb.an
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 802 ; 4 uses
  %i.dl = load i16, ptr %i.dk, align 2, !noalias !405, !noundef !5 ; 5 uses
  %i.dm = icmp ult i16 %i.dl, 11
  br i1 %i.dm, label %bb.as, label %bb.ar

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.az, %bb.ao
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.aq:                                            ; preds = %bb.ao
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.dn = icmp ult i16 %i.di, 5
  br i1 %i.dn, label %bb.az, label %bb.aw

bb.as:                                            ; preds = %bb.ap
  %i.do = zext nneg i16 %i.dl to i64              ; 5 uses
  %i.dp = add nuw nsw i16 %i.dl, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 536 ; 2 uses
  %i.dr = add nuw nsw i64 %i.dj, 1                ; 7 uses
  %9 = icmp ugt i16 %i.dl, %i.di
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dj ; 3 uses
  br i1 %9, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !406
  %i.dt = getelementptr inbounds nuw [48 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dt, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7276.24..sroa_idx, i64 48, i1 false)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dr
  %i.dv = sub nuw nsw i64 %i.do, %i.dj            ; 2 uses
  %i.dw = mul nuw nsw i64 %i.dv, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.du, ptr nonnull align 8 %i.ds, i64 %i.dw, i1 false), !alias.scope !407, !noalias !408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !406
  %i.dx = getelementptr inbounds nuw [48 x i8], ptr %i.db, i64 %i.dj
  %i.dy = getelementptr inbounds nuw [48 x i8], ptr %i.db, i64 %i.dr
  %i.dz = mul nuw nsw i64 %i.dv, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr nonnull align 8 %i.dx, i64 %i.dz, i1 false), !alias.scope !409, !noalias !408
  %i.ea = getelementptr inbounds nuw [48 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ea, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7276.24..sroa_idx, i64 48, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.db, i64 808 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dr
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dj
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = sub nuw nsw i64 %i.do, %i.dj
  %i.eg = shl nuw nsw i64 %i.ef, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr nonnull align 8 %i.ec, i64 %i.eg, i1 false), !alias.scope !410, !noalias !408
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.eh = getelementptr inbounds nuw i8, ptr %i.db, i64 808
  %i.ei = add nuw nsw i64 %i.do, 2                ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.dr
  store ptr %i.de, ptr %i.ej, align 8, !alias.scope !410, !noalias !408
  store i16 %i.dp, ptr %i.dk, align 2, !noalias !408
  %i.ek = icmp samesign ult i64 %i.dr, %i.ei
  br i1 %i.ek, label %.lr.ph.i.i.i.preheader, label %.thread73

.lr.ph.i.i.i.preheader:                           ; preds = %bb.av
  %i.el = add nuw nsw i64 %i.do, 1
  %i.em = sub nsw i64 %i.el, %i.dj
  %i.en = sub nsw i64 %i.do, %i.dj
  %xtraiter518 = and i64 %i.em, 3                 ; 2 uses
  %lcmp.mod519.not = icmp eq i64 %xtraiter518, 0
  br i1 %lcmp.mod519.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.eo = getelementptr inbounds nuw i8, ptr %i.db, i64 808
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.ep, %.lr.ph.i.i.i.prol ], [ %i.dr, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter520 = phi i64 [ %prol.iter520.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.ep = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.eq = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.sroa.0.06.i.i.i.prol
  %i.es = load ptr, ptr %i.er, align 8, !noalias !408, !nonnull !5, !noundef !5 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 528
  store ptr %i.db, ptr %i.et, align 8, !noalias !408
  %i.eu = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 800
  store i16 %i.eu, ptr %i.ev, align 8, !noalias !408
  %prol.iter520.next = add i64 %prol.iter520, 1   ; 2 uses
  %prol.iter520.cmp.not = icmp eq i64 %prol.iter520.next, %xtraiter518
  br i1 %prol.iter520.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !342

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.dr, %.lr.ph.i.i.i.preheader ], [ %i.ep, %.lr.ph.i.i.i.prol ]
  %i.ew = icmp ult i64 %i.en, 3
  br i1 %i.ew, label %.thread73, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.db, i64 808
  %i.ey = getelementptr inbounds nuw i8, ptr %i.db, i64 808
  %i.ez = getelementptr inbounds nuw i8, ptr %i.db, i64 808
  %i.fa = getelementptr inbounds nuw i8, ptr %i.db, i64 808
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.ft, %.lr.ph.i.i.i ] ; 7 uses
  %i.fb = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.sroa.0.06.i.i.i
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !408, !nonnull !5, !noundef !5 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 528
  store ptr %i.db, ptr %i.fe, align 8, !noalias !408
  %i.ff = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 800
  store i16 %i.ff, ptr %i.fg, align 8, !noalias !408
  %i.fh = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fb
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !408, !nonnull !5, !noundef !5 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 528
  store ptr %i.db, ptr %i.fk, align 8, !noalias !408
  %i.fl = trunc nuw nsw i64 %i.fb to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 800
  store i16 %i.fl, ptr %i.fm, align 8, !noalias !408
  %i.fn = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fh
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !408, !nonnull !5, !noundef !5 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 528
  store ptr %i.db, ptr %i.fq, align 8, !noalias !408
  %i.fr = trunc nuw nsw i64 %i.fh to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 800
  store i16 %i.fr, ptr %i.fs, align 8, !noalias !408
  %i.ft = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.fu = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fn
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !408, !nonnull !5, !noundef !5 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 528
  store ptr %i.db, ptr %i.fx, align 8, !noalias !408
  %i.fy = trunc nuw nsw i64 %i.fn to i16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 800
  store i16 %i.fy, ptr %i.fz, align 8, !noalias !408
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ft, %i.ei
  br i1 %exitcond.not.i.i.i.3, label %.thread73, label %.lr.ph.i.i.i

bb.aw:                                            ; preds = %bb.ar
  switch i16 %i.di, label %bb.ax [
    i16 5, label %bb.az
    i16 6, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.ga = add nsw i64 %i.dj, -7
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.ar
  %.sroa.06.0.i = phi i64 [ 5, %bb.ay ], [ 6, %bb.ax ], [ 4, %bb.ar ], [ 5, %bb.aw ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.ay ], [ %i.ga, %bb.ax ], [ %i.dj, %bb.ar ], [ 5, %bb.aw ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.ay ], [ true, %bb.ax ], [ false, %bb.ar ], [ false, %bb.aw ]
  %i.gb = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingEE13new_uninit_inB1X_()
          to label %.noexc.i29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !405 ; 14 uses

.noexc.i29:                                       ; preds = %bb.az
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 528
  store ptr null, ptr %i.gc, align 8, !noalias !411
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 802 ; 3 uses
  store i16 0, ptr %i.gd, align 2, !noalias !411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !411
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.ge = load i16, ptr %i.dk, align 2, !noalias !413, !noundef !5
  %i.gf = zext i16 %i.ge to i64
  %i.gg = xor i64 %.sroa.06.0.i, -1
  %i.gh = add nsw i64 %i.gf, %i.gg                ; 5 uses
  %i.gi = trunc i64 %i.gh to i16
  store i16 %i.gi, ptr %i.gd, align 2, !alias.scope !412, !noalias !411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !413
  %i.gj = getelementptr inbounds nuw i8, ptr %i.db, i64 536 ; 2 uses
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.gk, i64 24, i1 false), !noalias !413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !413
  %i.gl = getelementptr inbounds nuw [48 x i8], ptr %i.db, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.gl, i64 48, i1 false), !noalias !413
  %i.gm = icmp ult i64 %i.gh, 12
  br i1 %i.gm, label %bb.bf, label %bb.ba, !prof !6

bb.ba:                                            ; preds = %.noexc.i29
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gh, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #17
          to label %bb.bc unwind label %bb.bb, !noalias !413

bb.bb:                                            ; preds = %bb.ba
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingEBJ_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a) #19
          to label %bb.be unwind label %bb.bd, !noalias !413

bb.bc:                                            ; preds = %bb.ba
  unreachable

bb.bd:                                            ; preds = %bb.be, %bb.bb
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !413
  unreachable

bb.be:                                            ; preds = %bb.bb
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #19
          to label %bb.bo unwind label %bb.bd, !noalias !413

bb.bf:                                            ; preds = %.noexc.i29
  %i.gp = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gb, i64 536
  %i.gs = mul nuw nsw i64 %i.gh, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gr, ptr nonnull readonly align 8 %i.gq, i64 %i.gs, i1 false), !alias.scope !414, !noalias !415
  %i.gt = getelementptr inbounds nuw [48 x i8], ptr %i.db, i64 %i.gp
  %i.gu = mul nuw nsw i64 %i.gh, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(808) %i.gb, ptr nonnull readonly align 8 %i.gt, i64 %i.gu, i1 false), !alias.scope !416, !noalias !415
  %i.gv = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gv, ptr %i.dk, align 2, !noalias !413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !417
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bz, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !413
  %i.gw = load i16, ptr %i.gd, align 2, !noalias !411, !noundef !5 ; 3 uses
  %i.gx = zext i16 %i.gw to i64
end_hunk_2
begin_hunk_3_@_RINvMsN_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB4b_11VacantEntryB1D_B1Y_E12insert_entry0EB26_:bb.a
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.iu
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %.sroa.5.0.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jh = shl nuw nsw i64 %i.iy, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jg, ptr nonnull align 8 %i.je, i64 %i.jh, i1 false), !alias.scope !425, !noalias !422
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.ji = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 808 ; 6 uses
  %i.jj = add nuw nsw i64 %i.ir, 2                ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.iu
  store ptr %i.de, ptr %i.jk, align 8, !alias.scope !425, !noalias !422
  store i16 %i.is, ptr %i.ip, align 2, !noalias !422
  %i.jl = icmp samesign ult i64 %i.iu, %i.jj
  br i1 %i.jl, label %.lr.ph.i.i11.i.preheader, label %.loopexit

.lr.ph.i.i11.i.preheader:                         ; preds = %bb.bs
  %i.jm = add nuw nsw i64 %i.ir, 1
  %i.jn = sub nsw i64 %i.jm, %.sroa.5.0.i
  %i.jo = sub nsw i64 %i.ir, %.sroa.5.0.i
  %xtraiter516 = and i64 %i.jn, 3                 ; 2 uses
  %lcmp.mod517.not = icmp eq i64 %xtraiter516, 0
  br i1 %lcmp.mod517.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol

.lr.ph.i.i11.i.prol:                              ; preds = %.lr.ph.i.i11.i.preheader, %.lr.ph.i.i11.i.prol
  %.sroa.0.06.i.i12.i.prol = phi i64 [ %i.jp, %.lr.ph.i.i11.i.prol ], [ %i.iu, %.lr.ph.i.i11.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.prol ], [ 0, %.lr.ph.i.i11.i.preheader ]
  %i.jp = add nuw nsw i64 %.sroa.0.06.i.i12.i.prol, 1 ; 2 uses
  %i.jq = icmp samesign ult i64 %.sroa.0.06.i.i12.i.prol, 12
  tail call void @llvm.assume(i1 %i.jq)
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %.sroa.0.06.i.i12.i.prol
  %i.js = load ptr, ptr %i.jr, align 8, !noalias !422, !nonnull !5, !noundef !5 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 528
  store ptr %spec.select.i31, ptr %i.jt, align 8, !noalias !422
  %i.ju = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.prol to i16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 800
  store i16 %i.ju, ptr %i.jv, align 8, !noalias !422
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter516
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol, !llvm.loop !373

.lr.ph.i.i11.i.prol.loopexit:                     ; preds = %.lr.ph.i.i11.i.prol, %.lr.ph.i.i11.i.preheader
  %.sroa.0.06.i.i12.i.unr = phi i64 [ %i.iu, %.lr.ph.i.i11.i.preheader ], [ %i.jp, %.lr.ph.i.i11.i.prol ]
  %i.jw = icmp ult i64 %i.jo, 3
  br i1 %i.jw, label %.loopexit, label %.lr.ph.i.i11.i

.lr.ph.i.i11.i:                                   ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i
  %.sroa.0.06.i.i12.i = phi i64 [ %i.kp, %.lr.ph.i.i11.i ], [ %.sroa.0.06.i.i12.i.unr, %.lr.ph.i.i11.i.prol.loopexit ] ; 7 uses
  %i.jx = add nuw nsw i64 %.sroa.0.06.i.i12.i, 1  ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %.sroa.0.06.i.i12.i
  %i.jz = load ptr, ptr %i.jy, align 8, !noalias !422, !nonnull !5, !noundef !5 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 528
  store ptr %spec.select.i31, ptr %i.ka, align 8, !noalias !422
  %i.kb = trunc nuw nsw i64 %.sroa.0.06.i.i12.i to i16
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 800
  store i16 %i.kb, ptr %i.kc, align 8, !noalias !422
  %i.kd = add nuw nsw i64 %.sroa.0.06.i.i12.i, 2  ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jx
  %i.kf = load ptr, ptr %i.ke, align 8, !noalias !422, !nonnull !5, !noundef !5 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 528
  store ptr %spec.select.i31, ptr %i.kg, align 8, !noalias !422
  %i.kh = trunc nuw nsw i64 %i.jx to i16
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 800
  store i16 %i.kh, ptr %i.ki, align 8, !noalias !422
  %i.kj = add nuw nsw i64 %.sroa.0.06.i.i12.i, 3  ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.kd
  %i.kl = load ptr, ptr %i.kk, align 8, !noalias !422, !nonnull !5, !noundef !5 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 528
  store ptr %spec.select.i31, ptr %i.km, align 8, !noalias !422
  %i.kn = trunc nuw nsw i64 %i.kd to i16
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 800
  store i16 %i.kn, ptr %i.ko, align 8, !noalias !422
  %i.kp = add nuw nsw i64 %.sroa.0.06.i.i12.i, 4  ; 2 uses
  %i.kq = icmp ult i64 %.sroa.0.06.i.i12.i, 9
  tail call void @llvm.assume(i1 %i.kq)
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.kj
  %i.ks = load ptr, ptr %i.kr, align 8, !noalias !422, !nonnull !5, !noundef !5 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 528
  store ptr %spec.select.i31, ptr %i.kt, align 8, !noalias !422
  %i.ku = trunc nuw nsw i64 %i.kj to i16
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 800
  store i16 %i.ku, ptr %i.kv, align 8, !noalias !422
  %exitcond.not.i.i13.i.3 = icmp eq i64 %i.kp, %i.jj
  br i1 %exitcond.not.i.i13.i.3, label %.loopexit, label %.lr.ph.i.i11.i

bb.bt:                                            ; preds = %bb.bv, %bb.bu
  %i.kw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !426
  unreachable

bb.bu:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bo
  %.pn.ph.i27 = phi { ptr, i32 } [ %.pn.i.i, %bb.bo ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.k) #19
          to label %bb.bv unwind label %bb.bt, !noalias !427

bb.bv:                                            ; preds = %bb.bu
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #19
          to label %.critedge20 unwind label %bb.bt, !noalias !426

.thread73:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.loopexit78

.loopexit:                                        ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i, %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.750, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.i.sroa.4, i64 64, i1 false), !noalias !428
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not16 = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload, -1
  br i1 %.not16, label %.loopexit78, label %bb.bw

bb.bw:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7276, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.750, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.750)
  %i.kx = getelementptr inbounds nuw i8, ptr %i.db, i64 528
  %i.ky = load ptr, ptr %i.kx, align 8, !noalias !397, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.ky, null
  br i1 %.not.i, label %._crit_edge, label %bb.an

.loopexit78:                                      ; preds = %.loopexit, %.thread73
  store ptr %spec.select31.i, ptr %0, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.kz, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.la, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.750)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7276)
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit78, %bb.x, %bb.by
  ret void

bb.by:                                            ; preds = %bb.ag
  %i.lb = zext nneg i16 %i.cu to i64              ; 3 uses
  %i.lc = add nuw nsw i16 %i.cu, 1
  store i16 %i.lc, ptr %i.ci, align 2, !noalias !403
  %i.ld = getelementptr inbounds nuw i8, ptr %i.cg, i64 536
  %i.le = getelementptr inbounds nuw [24 x i8], ptr %i.ld, i64 %i.lb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.le, ptr noundef nonnull align 8 dereferenceable(104) %i.j, i64 24, i1 false)
  %i.lf = getelementptr inbounds nuw [48 x i8], ptr %i.cg, i64 %i.lb
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.lf, ptr noundef nonnull align 8 dereferenceable(48) %i.lg, i64 48, i1 false)
  %i.lh = add nuw nsw i64 %i.lb, 1                ; 2 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.lh
  store ptr %.lcssa161, ptr %i.li, align 8, !noalias !403
  %i.lj = getelementptr inbounds nuw i8, ptr %.lcssa161, i64 528
  store ptr %i.cg, ptr %i.lj, align 8, !noalias !403
  %i.lk = trunc nuw nsw i64 %i.lh to i16
  %i.ll = getelementptr inbounds nuw i8, ptr %.lcssa161, i64 800
  store i16 %i.lk, ptr %i.ll, align 8, !noalias !403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %spec.select31.i, ptr %0, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.lm, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.ln, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7276)
  br label %bb.bx

.critedge20:                                      ; preds = %bb.bv, %bb.am, %bb.aj, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph.i, %bb.u ], [ %.pn.ph.i27, %bb.bv ], [ %i.cy, %bb.am ], [ %i.cw, %bb.aj ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringTB1D_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3U_11VacantEntryB1D_B1Y_E12insert_entry0ECs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull readonly captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.0.i.sroa.4 = alloca [48 x i8], align 8   ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.458 = alloca [48 x i8], align 8          ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [88 x i8], align 8                ; 12 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.750 = alloca [48 x i8], align 8          ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [48 x i8], align 8            ; 5 uses
  %.sroa.7276 = alloca [48 x i8], align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.458)
  %i.o = load ptr, ptr %1, align 8, !alias.scope !526, !nonnull !5, !noundef !5 ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 626 ; 4 uses
  %i.q = load i16, ptr %i.p, align 2, !noalias !527, !noundef !5 ; 2 uses
  %i.r = icmp ugt i16 %i.q, 10
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !526, !noundef !5 ; 6 uses
  %i.u = icmp ult i64 %i.t, 5
  br i1 %i.u, label %bb.i, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %i.v = zext nneg i16 %i.q to i64                ; 2 uses
  %6 = add nuw nsw i64 %i.v, 1                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 360 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !529, !noundef !5 ; 6 uses
  %i.z = add i64 %i.y, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %6, %i.z
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.y ; 3 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.z
  %i.ac = sub nsw i64 %i.v, %i.y                  ; 2 uses
  %i.ad = mul nuw nsw i64 %i.ac, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.aa, i64 %i.ad, i1 false), !alias.scope !531, !noalias !532
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.y
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.z
  %i.ag = shl nuw nsw i64 %i.ac, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.ae, i64 %i.ag, i1 false), !alias.scope !533, !noalias !532
  br label %.thread

bb.f:                                             ; preds = %bb.b
  switch i64 %i.t, label %bb.g [
    i64 5, label %bb.i
    i64 6, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ah = add i64 %i.t, -7
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.b
  %.sroa.09.0.i = phi i1 [ true, %bb.h ], [ true, %bb.g ], [ false, %bb.b ], [ false, %bb.f ] ; 2 uses
  %.sroa.510.0.i = phi i64 [ 0, %bb.h ], [ %i.ah, %bb.g ], [ %i.t, %bb.b ], [ %i.t, %bb.f ] ; 9 uses
  %.sroa.013.0.i = phi i64 [ 5, %bb.h ], [ 6, %bb.g ], [ 4, %bb.b ], [ %i.t, %bb.f ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !526, !noundef !5 ; 4 uses
  %i.ak = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringTB1p_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEEEE13new_uninit_inCs3tZ2SXJA1qv_8jiff_cli()
          to label %.noexc.i unwind label %bb.o, !noalias !527 ; 8 uses

.noexc.i:                                         ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 352
  store ptr null, ptr %i.al, align 8, !noalias !534
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 626 ; 2 uses
  store i16 0, ptr %i.am, align 2, !noalias !534
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %i.an = load i16, ptr %i.p, align 2, !noalias !536, !noundef !5
  %i.ao = zext i16 %i.an to i64
  %i.ap = xor i64 %.sroa.013.0.i, -1
  %i.aq = add nsw i64 %i.ao, %i.ap                ; 5 uses
  %i.ar = trunc i64 %i.aq to i16
  store i16 %i.ar, ptr %i.am, align 2, !alias.scope !535, !noalias !534
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !536
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 360 ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !536
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false), !noalias !536
  %i.av = icmp ult i64 %i.aq, 12
  br i1 %i.av, label %bb.p, label %bb.j, !prof !6

bb.j:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aq, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #17
          to label %bb.l unwind label %bb.k, !noalias !536

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringINtNtNtB4_3ops5range5RangemEEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #19
          to label %bb.n unwind label %bb.m, !noalias !536

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !536
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #19
          to label %.thread.i.i unwind label %bb.m, !noalias !536

.thread.i.i:                                      ; preds = %bb.n
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef 632, i64 noundef 8) #20, !noalias !534
  br label %bb.t

bb.o:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.p:                                             ; preds = %.noexc.i
  %i.az = add nuw nsw i64 %.sroa.013.0.i, 1       ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 360
  %i.bc = mul nuw nsw i64 %i.aq, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull readonly align 8 %i.ba, i64 %i.bc, i1 false), !alias.scope !537, !noalias !538
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.az
  %i.be = shl nuw nsw i64 %i.aq, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.ak, ptr nonnull readonly align 8 %i.bd, i64 %i.be, i1 false), !alias.scope !539, !noalias !538
  %i.bf = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.bf, ptr %i.p, align 2, !noalias !536
  %.sroa.057.0.copyload = load i64, ptr %i.h, align 8, !noalias !527 ; 3 uses
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458.0..sroa_idx, i64 16, i1 false), !noalias !527
  %.sroa.458.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.458, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.458.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !536
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.aj ; 3 uses
  %spec.select32.i = select i1 %.sroa.09.0.i, ptr %i.ak, ptr %i.o ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 626 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !noalias !540, !noundef !5 ; 2 uses
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %7 = add i16 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 360 ; 2 uses
  %.not.i16.not.i = icmp ult i64 %.sroa.510.0.i, %i.bi
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.sroa.510.0.i ; 3 uses
  br i1 %.not.i16.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.bl = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = sub nuw nsw i64 %i.bi, %.sroa.510.0.i   ; 2 uses
  %i.bo = mul nuw nsw i64 %i.bn, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr nonnull align 8 %i.bk, i64 %i.bo, i1 false), !alias.scope !542, !noalias !540
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %spec.select32.i, i64 %.sroa.510.0.i
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %spec.select32.i, i64 %i.bl
  %i.br = shl nuw nsw i64 %i.bn, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr nonnull align 8 %i.bp, i64 %i.br, i1 false), !alias.scope !543, !noalias !540
  br label %bb.v

bb.s:                                             ; preds = %bb.u, %bb.t
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !544
  unreachable

.thread:                                          ; preds = %bb.d, %bb.e
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 32, i1 false), !alias.scope !545, !noalias !532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %8 = trunc nuw nsw i64 %6 to i16
  store i16 %8, ptr %i.p, align 2, !noalias !532
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !529, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.458)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.x

bb.t:                                             ; preds = %bb.o, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.aw, %.thread.i.i ], [ %i.ay, %bb.o ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringINtNtNtB4_3ops5range5RangemEEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #19
          to label %bb.u unwind label %bb.s, !noalias !546

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #19
          to label %.critedge20 unwind label %bb.s, !noalias !544

bb.v:                                             ; preds = %bb.q, %bb.r
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %spec.select32.i, i64 %.sroa.510.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !alias.scope !547, !noalias !540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %7, ptr %i.bg, align 2, !noalias !540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.458, i64 48, i1 false), !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.458)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not = icmp eq i64 %.sroa.057.0.copyload, -1
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7276)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7276, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 352
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !549, !noundef !5 ; 2 uses
  %.not.i177 = icmp eq ptr %i.by, null
  br i1 %.not.i177, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ca = icmp eq i64 %i.aj, 0
  %.sroa.7276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7276.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16 ; 5 uses
  br label %bb.an

bb.x:                                             ; preds = %.thread, %bb.v
  %.sink.i68 = phi i64 [ %i.y, %.thread ], [ %.sroa.510.0.i, %bb.v ]
  %.sink50.i67 = phi i64 [ %i.bv, %.thread ], [ %spec.select.i, %bb.v ]
  %.sink51.i66 = phi ptr [ %i.o, %.thread ], [ %spec.select32.i, %bb.v ]
  store ptr %.sink51.i66, ptr %0, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink50.i67, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i68, ptr %i.cc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.bx

._crit_edge:                                      ; preds = %bb.bw, %bb.w
  %.sroa.0.0 = phi i64 [ %.sroa.057.0.copyload, %bb.w ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ]
  %.lcssa169 = phi i64 [ 0, %bb.w ], [ %i.dg, %bb.bw ] ; 2 uses
  %.lcssa161 = phi ptr [ %i.ak, %bb.w ], [ %i.gb, %bb.bw ] ; 4 uses
  %.lcssa153 = phi i64 [ %i.aj, %bb.w ], [ %i.dg, %bb.bw ]
  %.lcssa = phi ptr [ %i.o, %bb.w ], [ %i.db, %bb.bw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.02.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7276, i64 48, i1 false)
  store i64 %.sroa.0.0, ptr %i.j, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr %.lcssa, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 %.lcssa153, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr %.lcssa161, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i64 %.lcssa169, ptr %.sroa.76.0..sroa_idx, align 8
  %.val = load ptr, ptr %4, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.cd = load ptr, ptr %.val, align 8, !noalias !550, !noundef !5 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i23 = icmp eq ptr %i.cd, null
  br i1 %.not.i23, label %bb.y, label %bb.aa, !prof !7

bb.y:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #17
          to label %bb.z unwind label %bb.ak, !noalias !550

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !551, !noalias !550, !noundef !5 ; 2 uses
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringTB1u_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEEEE13new_uninit_inCs3tZ2SXJA1qv_8jiff_cli()
          to label %.noexc.i.i unwind label %bb.ae, !noalias !552 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 352
  store ptr null, ptr %i.ch, align 8, !noalias !552
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 626 ; 3 uses
  store i16 0, ptr %i.ci, align 2, !noalias !552
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 632 ; 2 uses
  store ptr %i.cd, ptr %i.cj, align 8, !noalias !552
  %i.ck = add i64 %i.cf, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.af, !prof !7

bb.ab:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #17
          to label %bb.ac unwind label %bb.ad, !noalias !552

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 728, i64 noundef 8) #20, !noalias !552
  br label %.body.i.i

bb.ae:                                            ; preds = %bb.aa
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ae, %bb.ad
  tail call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %.noexc.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 352
  store ptr %i.cg, ptr %i.cn, align 8, !noalias !553
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 624
  store i16 0, ptr %i.co, align 8, !noalias !554
  store ptr %i.cg, ptr %.val, align 8, !alias.scope !551, !noalias !550
  store i64 %i.ck, ptr %i.ce, align 8, !alias.scope !551, !noalias !550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !550
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !550
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i64 32, i1 false)
  %i.cq = icmp eq i64 %.lcssa169, %i.cf
  br i1 %i.cq, label %bb.ag, label %.invoke.i.i, !prof !8

.invoke.i.i:                                      ; preds = %bb.ag, %bb.af
  %i.cr = phi ptr [ @12, %bb.af ], [ @10, %bb.ag ]
  %i.cs = phi i64 [ 48, %bb.af ], [ 32, %bb.ag ]
  %i.ct = phi ptr [ @13, %bb.af ], [ @14, %bb.ag ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #17
          to label %.cont.i.i unwind label %bb.ah, !noalias !555

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i16, ptr %i.ci, align 2, !noalias !555, !noundef !5 ; 3 uses
  %i.cv = icmp ult i16 %i.cu, 11
  br i1 %i.cv, label %bb.by, label %.invoke.i.i, !prof !8

bb.ah:                                            ; preds = %.invoke.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringINtNtNtB4_3ops5range5RangemEEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #19
          to label %bb.aj unwind label %bb.ai, !noalias !556

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !550
  unreachable

bb.aj:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #19
          to label %.critedge20 unwind label %bb.ai, !noalias !550

bb.ak:                                            ; preds = %bb.y
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.j) #19
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringINtNtNtB4_3ops5range5RangemEEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(32) %i.da) #19
          to label %.critedge20 unwind label %bb.al

bb.an:                                            ; preds = %.lr.ph, %bb.bw
  %.sroa.0.1 = phi i64 [ %.sroa.057.0.copyload, %.lr.ph ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ]
  %i.db = phi ptr [ %i.by, %.lr.ph ], [ %i.ky, %bb.bw ] ; 26 uses
  %i.dc = phi ptr [ %i.o, %.lr.ph ], [ %i.db, %bb.bw ]
  %i.dd = phi i64 [ %i.aj, %.lr.ph ], [ %i.dg, %bb.bw ]
  %i.de = phi ptr [ %i.ak, %.lr.ph ], [ %i.gb, %bb.bw ] ; 2 uses
  %i.df = phi i1 [ %i.ca, %.lr.ph ], [ true, %bb.bw ]
  %i.dg = add i64 %i.dd, 1                        ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 624
  %i.di = load i16, ptr %i.dh, align 8, !noalias !549 ; 4 uses
  %i.dj = zext i16 %i.di to i64                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.750)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.sroa.0.1, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7276.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7276, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7276.24..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4)
  br i1 %i.df, label %bb.ap, label %bb.ao, !prof !8

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #17
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !557

bb.ap:                                            ; preds = %bb.an
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 626 ; 4 uses
  %i.dl = load i16, ptr %i.dk, align 2, !noalias !557, !noundef !5 ; 5 uses
  %i.dm = icmp ult i16 %i.dl, 11
  br i1 %i.dm, label %bb.as, label %bb.ar

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.az, %bb.ao
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.aq:                                            ; preds = %bb.ao
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.dn = icmp ult i16 %i.di, 5
  br i1 %i.dn, label %bb.az, label %bb.aw

bb.as:                                            ; preds = %bb.ap
  %i.do = zext nneg i16 %i.dl to i64              ; 5 uses
  %i.dp = add nuw nsw i16 %i.dl, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 360 ; 2 uses
  %i.dr = add nuw nsw i64 %i.dj, 1                ; 7 uses
  %9 = icmp ugt i16 %i.dl, %i.di
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dj ; 3 uses
  br i1 %9, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !558
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7276.24..sroa_idx, i64 32, i1 false)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dr
  %i.dv = sub nuw nsw i64 %i.do, %i.dj            ; 2 uses
  %i.dw = mul nuw nsw i64 %i.dv, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.du, ptr nonnull align 8 %i.ds, i64 %i.dw, i1 false), !alias.scope !559, !noalias !560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !558
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  %i.dy = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dr
  %i.dz = shl nuw nsw i64 %i.dv, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr nonnull align 8 %i.dx, i64 %i.dz, i1 false), !alias.scope !561, !noalias !560
  %i.ea = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7276.24..sroa_idx, i64 32, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.db, i64 632 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dr
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dj
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = sub nuw nsw i64 %i.do, %i.dj
  %i.eg = shl nuw nsw i64 %i.ef, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr nonnull align 8 %i.ec, i64 %i.eg, i1 false), !alias.scope !562, !noalias !560
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.eh = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.ei = add nuw nsw i64 %i.do, 2                ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.dr
  store ptr %i.de, ptr %i.ej, align 8, !alias.scope !562, !noalias !560
  store i16 %i.dp, ptr %i.dk, align 2, !noalias !560
  %i.ek = icmp samesign ult i64 %i.dr, %i.ei
  br i1 %i.ek, label %.lr.ph.i.i.i.preheader, label %.thread73

.lr.ph.i.i.i.preheader:                           ; preds = %bb.av
  %i.el = add nuw nsw i64 %i.do, 1
  %i.em = sub nsw i64 %i.el, %i.dj
  %i.en = sub nsw i64 %i.do, %i.dj
  %xtraiter518 = and i64 %i.em, 3                 ; 2 uses
  %lcmp.mod519.not = icmp eq i64 %xtraiter518, 0
  br i1 %lcmp.mod519.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.eo = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.ep, %.lr.ph.i.i.i.prol ], [ %i.dr, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter520 = phi i64 [ %prol.iter520.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.ep = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.eq = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.sroa.0.06.i.i.i.prol
  %i.es = load ptr, ptr %i.er, align 8, !noalias !560, !nonnull !5, !noundef !5 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 352
  store ptr %i.db, ptr %i.et, align 8, !noalias !560
  %i.eu = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 624
  store i16 %i.eu, ptr %i.ev, align 8, !noalias !560
  %prol.iter520.next = add i64 %prol.iter520, 1   ; 2 uses
  %prol.iter520.cmp.not = icmp eq i64 %prol.iter520.next, %xtraiter518
  br i1 %prol.iter520.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !494

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.dr, %.lr.ph.i.i.i.preheader ], [ %i.ep, %.lr.ph.i.i.i.prol ]
  %i.ew = icmp ult i64 %i.en, 3
  br i1 %i.ew, label %.thread73, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.ey = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.ez = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.fa = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.ft, %.lr.ph.i.i.i ] ; 7 uses
  %i.fb = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.sroa.0.06.i.i.i
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !560, !nonnull !5, !noundef !5 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 352
  store ptr %i.db, ptr %i.fe, align 8, !noalias !560
  %i.ff = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 624
  store i16 %i.ff, ptr %i.fg, align 8, !noalias !560
  %i.fh = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fb
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !560, !nonnull !5, !noundef !5 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 352
  store ptr %i.db, ptr %i.fk, align 8, !noalias !560
  %i.fl = trunc nuw nsw i64 %i.fb to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 624
  store i16 %i.fl, ptr %i.fm, align 8, !noalias !560
  %i.fn = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fh
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !560, !nonnull !5, !noundef !5 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 352
  store ptr %i.db, ptr %i.fq, align 8, !noalias !560
  %i.fr = trunc nuw nsw i64 %i.fh to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 624
  store i16 %i.fr, ptr %i.fs, align 8, !noalias !560
  %i.ft = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.fu = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fn
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !560, !nonnull !5, !noundef !5 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 352
  store ptr %i.db, ptr %i.fx, align 8, !noalias !560
  %i.fy = trunc nuw nsw i64 %i.fn to i16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 624
  store i16 %i.fy, ptr %i.fz, align 8, !noalias !560
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ft, %i.ei
  br i1 %exitcond.not.i.i.i.3, label %.thread73, label %.lr.ph.i.i.i

bb.aw:                                            ; preds = %bb.ar
  switch i16 %i.di, label %bb.ax [
    i16 5, label %bb.az
    i16 6, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.ga = add nsw i64 %i.dj, -7
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.ar
  %.sroa.06.0.i = phi i64 [ 5, %bb.ay ], [ 6, %bb.ax ], [ 4, %bb.ar ], [ 5, %bb.aw ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.ay ], [ %i.ga, %bb.ax ], [ %i.dj, %bb.ar ], [ 5, %bb.aw ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.ay ], [ true, %bb.ax ], [ false, %bb.ar ], [ false, %bb.aw ]
  %i.gb = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringTB1u_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEEEE13new_uninit_inCs3tZ2SXJA1qv_8jiff_cli()
          to label %.noexc.i29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !557 ; 14 uses

.noexc.i29:                                       ; preds = %bb.az
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 352
  store ptr null, ptr %i.gc, align 8, !noalias !563
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 626 ; 3 uses
  store i16 0, ptr %i.gd, align 2, !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !563
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.ge = load i16, ptr %i.dk, align 2, !noalias !565, !noundef !5
  %i.gf = zext i16 %i.ge to i64
  %i.gg = xor i64 %.sroa.06.0.i, -1
  %i.gh = add nsw i64 %i.gf, %i.gg                ; 5 uses
  %i.gi = trunc i64 %i.gh to i16
  store i16 %i.gi, ptr %i.gd, align 2, !alias.scope !564, !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !565
  %i.gj = getelementptr inbounds nuw i8, ptr %i.db, i64 360 ; 2 uses
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.gk, i64 24, i1 false), !noalias !565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !565
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.gl, i64 32, i1 false), !noalias !565
  %i.gm = icmp ult i64 %i.gh, 12
  br i1 %i.gm, label %bb.bf, label %bb.ba, !prof !6

bb.ba:                                            ; preds = %.noexc.i29
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gh, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #17
          to label %bb.bc unwind label %bb.bb, !noalias !565

bb.bb:                                            ; preds = %bb.ba
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringINtNtNtB4_3ops5range5RangemEEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #19
          to label %bb.be unwind label %bb.bd, !noalias !565

bb.bc:                                            ; preds = %bb.ba
  unreachable

bb.bd:                                            ; preds = %bb.be, %bb.bb
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !565
  unreachable

bb.be:                                            ; preds = %bb.bb
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #19
          to label %bb.bo unwind label %bb.bd, !noalias !565

bb.bf:                                            ; preds = %.noexc.i29
  %i.gp = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gb, i64 360
  %i.gs = mul nuw nsw i64 %i.gh, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gr, ptr nonnull readonly align 8 %i.gq, i64 %i.gs, i1 false), !alias.scope !566, !noalias !567
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.gp
  %i.gu = shl nuw nsw i64 %i.gh, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.gb, ptr nonnull readonly align 8 %i.gt, i64 %i.gu, i1 false), !alias.scope !568, !noalias !567
  %i.gv = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gv, ptr %i.dk, align 2, !noalias !565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !565
  %i.gw = load i16, ptr %i.gd, align 2, !noalias !563, !noundef !5 ; 3 uses
  %i.gx = zext i16 %i.gw to i64
end_hunk_3
