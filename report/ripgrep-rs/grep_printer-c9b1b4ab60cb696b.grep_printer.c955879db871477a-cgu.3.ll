Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/grep_printer-c9b1b4ab60cb696b.grep_printer.c955879db871477a-cgu.3?download=true
inline.NumInlined: 109
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCshhHc5tDBDRu_12grep_printer5jsont8SubMatchEEB1c_:bb.a

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtB4_6option6OptionINtNtBG_3vec3VechEEEECshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !151 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !162, !range !159, !alias.scope !160, !noundef !60
  %i.c = icmp eq i64 %i.b, -1, !dbg !162
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECshhHc5tDBDRu_12grep_printer.exit, label %bb.b, !dbg !162

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshhHc5tDBDRu_12grep_printer.exit.i unwind label %bb.c, !dbg !163

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECshhHc5tDBDRu_12grep_printer.exit.i.i unwind label %bb.d, !dbg !164

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !163
  unreachable, !dbg !163

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECshhHc5tDBDRu_12grep_printer.exit.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d, !dbg !163

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshhHc5tDBDRu_12grep_printer.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !165
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECshhHc5tDBDRu_12grep_printer.exit, !dbg !162

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECshhHc5tDBDRu_12grep_printer.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshhHc5tDBDRu_12grep_printer.exit.i
  ret void, !dbg !161
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtBG_3vec3VechEEECshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !166 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !170 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshhHc5tDBDRu_12grep_printer.exit unwind label %bb.b, !dbg !171

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECshhHc5tDBDRu_12grep_printer.exit.i unwind label %bb.c, !dbg !172

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !171
  unreachable, !dbg !171

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECshhHc5tDBDRu_12grep_printer.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b, !dbg !171

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshhHc5tDBDRu_12grep_printer.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !173
  ret void, !dbg !170
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_11sort_by_keysNCNvXs5_B1o_NtB1o_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1q_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 164703072086692426) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !174 {
bb.a:
  %.sroa.0.i = alloca [48 x i8], align 8          ; 4 uses
  %i.a = add i64 %2, -1, !dbg !206
  %or.cond.not = icmp ult i64 %i.a, %1, !dbg !206
  br i1 %or.cond.not, label %bb.c, label %bb.b, !dbg !206

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !207
  unreachable, !dbg !207

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %1, !dbg !208
  %.not4 = icmp samesign eq i64 %2, %1, !dbg !209
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader, !dbg !209

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %2, !dbg !210
  br label %.lr.ph, !dbg !211

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keysNCNvXs5_B1a_NtB1a_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1c_.exit, %bb.c
  ret void, !dbg !212

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keysNCNvXs5_B1a_NtB1a_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1c_.exit
  %.sroa.0.05 = phi ptr [ %i.r, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keysNCNvXs5_B1a_NtB1a_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1c_.exit ], [ %i.c, %.lr.ph.preheader ] ; 11 uses
  %i.d = getelementptr i8, ptr %.sroa.0.05, i64 48, !dbg !211
  %.val11.i = load i16, ptr %i.d, align 8, !dbg !211, !range !71, !noundef !60
  %i.e = getelementptr i8, ptr %.sroa.0.05, i64 50, !dbg !211
  %.val12.i = load i16, ptr %i.e, align 2, !dbg !211 ; 3 uses
  %i.f = getelementptr i8, ptr %.sroa.0.05, i64 -8, !dbg !211
  %.val13.i = load i16, ptr %i.f, align 8, !dbg !211, !range !71, !noundef !60
  %i.g = getelementptr i8, ptr %.sroa.0.05, i64 -6, !dbg !211
  %.val14.i = load i16, ptr %i.g, align 2, !dbg !211
  %i.h = trunc nuw i16 %.val11.i to i1, !dbg !213
  %i.i = trunc nuw i16 %.val13.i to i1, !dbg !214
  %.sroa.0.0.i4.i.i = select i1 %i.i, i16 %.val14.i, i16 32767, !dbg !214
  %i.j = icmp slt i16 %.val12.i, %.sroa.0.0.i4.i.i, !dbg !215
  %i.k = select i1 %i.h, i1 %i.j, i1 false, !dbg !213
  br i1 %i.k, label %.split.preheader.i, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keysNCNvXs5_B1a_NtB1a_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1c_.exit, !dbg !211

.split.preheader.i:                               ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i), !dbg !216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.05, i64 48, i1 false), !dbg !217
  %.sroa.617.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 52, !dbg !217
  %.sroa.617.0.copyload.i = load i32, ptr %.sroa.617.0..sroa_idx.i, align 4, !dbg !217
  %.sroa.0.0.i8 = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -56, !dbg !218 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i8, i64 56, i1 false), !dbg !219
  %i.l = icmp eq ptr %.sroa.0.0.i8, %0, !dbg !220
  br i1 %i.l, label %.split6.i, label %.lr.ph11, !dbg !220

.split.i:                                         ; preds = %.lr.ph11
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i10, i64 -56, !dbg !218 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i10, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i, i64 56, i1 false), !dbg !219
  %i.m = icmp eq ptr %.sroa.0.0.i, %0, !dbg !220
  br i1 %i.m, label %.split6.i, label %.lr.ph11, !dbg !220

.lr.ph11:                                         ; preds = %.split.preheader.i, %.split.i
  %.sroa.0.0.i10 = phi ptr [ %.sroa.0.0.i, %.split.i ], [ %.sroa.0.0.i8, %.split.preheader.i ] ; 5 uses
  %.sroa.5.0.i9 = phi ptr [ %.sroa.0.0.i10, %.split.i ], [ %.sroa.0.05, %.split.preheader.i ] ; 3 uses
  %i.n = getelementptr i8, ptr %.sroa.5.0.i9, i64 -64, !dbg !221
  %.val9.i = load i16, ptr %i.n, align 8, !dbg !221, !range !71, !noundef !60
  %i.o = getelementptr i8, ptr %.sroa.5.0.i9, i64 -62, !dbg !221
  %.val10.i = load i16, ptr %i.o, align 2, !dbg !221
  %i.p = trunc nuw i16 %.val9.i to i1, !dbg !222
  %.sroa.0.0.i4.i15.i = select i1 %i.p, i16 %.val10.i, i16 32767, !dbg !222
  %i.q = icmp slt i16 %.val12.i, %.sroa.0.0.i4.i15.i, !dbg !223
  br i1 %i.q, label %.split.i, label %.split6.i, !dbg !221

.split6.i:                                        ; preds = %.split.i, %.lr.ph11, %.split.preheader.i
  %.sroa.5.0.i.lcssa = phi ptr [ %.sroa.0.05, %.split.preheader.i ], [ %.sroa.0.0.i10, %.split.i ], [ %.sroa.5.0.i9, %.lr.ph11 ], !dbg !224 ; 3 uses
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.split.preheader.i ], [ %0, %.split.i ], [ %.sroa.0.0.i10, %.lr.ph11 ], !dbg !218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i, i64 48, i1 false), !dbg !225, !noalias !204
  %.sroa.4.0..us-phi.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -8, !dbg !225
  store i16 1, ptr %.sroa.4.0..us-phi.sroa_idx.i, align 8, !dbg !225, !noalias !204
  %.sroa.5.0..us-phi.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -6, !dbg !225
  store i16 %.val12.i, ptr %.sroa.5.0..us-phi.sroa_idx.i, align 2, !dbg !225, !noalias !204
  %.sroa.6.0..us-phi.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -4, !dbg !225
  store i32 %.sroa.617.0.copyload.i, ptr %.sroa.6.0..us-phi.sroa_idx.i, align 4, !dbg !225, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i), !dbg !226
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keysNCNvXs5_B1a_NtB1a_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1c_.exit, !dbg !227

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keysNCNvXs5_B1a_NtB1a_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1c_.exit: ; preds = %.lr.ph, %.split6.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 56, !dbg !228 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.b, !dbg !209
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !209
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keysNCNvXs5_BY_NtBY_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB10_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !229 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2, !dbg !480
  br i1 %i.c, label %bb.ac, label %bb.b, !dbg !480

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1, !dbg !481
  %i.e = urem i64 4611686018427387904, %1, !dbg !482
  %.not = icmp ne i64 %i.e, 0, !dbg !483
  %i.f = zext i1 %.not to i64, !dbg !483
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !483 ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !484
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !484

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !485
  br label %bb.e, !dbg !485

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !486
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !487
  %..i = tail call noundef range(i64 0, 164703072086692426) i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !488
  br label %bb.e, !dbg !489

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ], !dbg !490 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !492
  %.not5.i85 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i90 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !493

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !494 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dc, %bb.y ], !dbg !495 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.da, %bb.y ], !dbg !496 ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !497  ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !497

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNvXs5_B15_NtB15_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.bt, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNvXs5_B15_NtB15_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB17_.exit ], [ 0, %bb.f ], !dbg !498 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNvXs5_B15_NtB15_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB17_.exit ], [ 1, %bb.f ], !dbg !498 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !499
  br i1 %i.l, label %.lr.ph57, label %._crit_edge, !dbg !499

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !500 ; 9 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0, !dbg !501 ; 9 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0, !dbg !502
  br i1 %.not.i31, label %bb.i, label %bb.j, !dbg !502

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i.thread88, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i.thread, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !503

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2, !dbg !504
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseBy_.exit, label %bb.k, !dbg !504

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 104, !dbg !505
  %.val14.i = load i16, ptr %i.p, align 8, !dbg !505, !range !71, !alias.scope !431, !noalias !432, !noundef !60 ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 106, !dbg !505
  %.val15.i = load i16, ptr %i.q, align 2, !dbg !505, !alias.scope !431, !noalias !432 ; 3 uses
  %i.r = getelementptr i8, ptr %i.n, i64 48, !dbg !505
  %.val16.i = load i16, ptr %i.r, align 8, !dbg !505, !range !71, !alias.scope !431, !noalias !432, !noundef !60
  %i.s = getelementptr i8, ptr %i.n, i64 50, !dbg !505
  %.val17.i = load i16, ptr %i.s, align 2, !dbg !505, !alias.scope !431, !noalias !432
  %i.t = trunc nuw i16 %.val14.i to i1, !dbg !506
  %i.u = trunc nuw i16 %.val16.i to i1, !dbg !507
  %.sroa.0.0.i4.i36 = select i1 %i.u, i16 %.val17.i, i16 32767, !dbg !507
  %i.v = icmp slt i16 %.val15.i, %.sroa.0.0.i4.i36, !dbg !508
  %i.w = select i1 %i.t, i1 %i.v, i1 false, !dbg !506 ; 2 uses
  %.not64 = icmp eq i64 %i.m, 2, !dbg !509        ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader45, !dbg !510

.preheader45:                                     ; preds = %bb.k
  br i1 %.not64, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i.thread, label %.lr.ph.preheader, !dbg !511

.lr.ph.preheader:                                 ; preds = %.preheader45
  %smax = tail call i64 @llvm.smax.i64(i64 %i.m, i64 3), !dbg !512 ; 2 uses
  br label %.lr.ph, !dbg !512

.preheader:                                       ; preds = %bb.k
  br i1 %.not64, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i.thread88, label %.lr.ph51.preheader, !dbg !513

.lr.ph51.preheader:                               ; preds = %.preheader
  %smax67 = tail call i64 @llvm.smax.i64(i64 %i.m, i64 3), !dbg !514 ; 2 uses
  br label %.lr.ph51, !dbg !514

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.val13.i = phi i16 [ %.val11.i, %bb.l ], [ %.val15.i, %.lr.ph.preheader ], !dbg !512
  %.val12.i = phi i16 [ %.val10.i, %bb.l ], [ %.val14.i, %.lr.ph.preheader ], !dbg !512
  %.sroa.01.0.i.i47 = phi i64 [ %i.ae, %bb.l ], [ 2, %.lr.ph.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.0.i.i47, !dbg !515 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 48, !dbg !512
  %.val10.i = load i16, ptr %i.y, align 8, !dbg !512, !range !71, !alias.scope !431, !noalias !432, !noundef !60 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 50, !dbg !512
  %.val11.i = load i16, ptr %i.z, align 2, !dbg !512, !alias.scope !431, !noalias !432 ; 2 uses
  %i.aa = trunc nuw i16 %.val10.i to i1, !dbg !516
  %i.ab = trunc nuw i16 %.val12.i to i1, !dbg !517
  %.sroa.0.0.i4.i35 = select i1 %i.ab, i16 %.val13.i, i16 32767, !dbg !517
  %i.ac = icmp slt i16 %.val11.i, %.sroa.0.0.i4.i35, !dbg !518
  %i.ad = select i1 %i.aa, i1 %i.ac, i1 false, !dbg !516
  br i1 %i.ad, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i, label %bb.l, !dbg !512

bb.l:                                             ; preds = %.lr.ph
  %i.ae = add nuw nsw i64 %.sroa.01.0.i.i47, 1, !dbg !519 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %smax, !dbg !511
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i, label %.lr.ph, !dbg !511

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %bb.m
  %.val9.i = phi i16 [ %.val7.i, %bb.m ], [ %.val15.i, %.lr.ph51.preheader ], !dbg !514
  %.sroa.01.1.i.i50 = phi i64 [ %i.al, %bb.m ], [ 2, %.lr.ph51.preheader ] ; 3 uses
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.1.i.i50, !dbg !520 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 48, !dbg !514
  %.val.i = load i16, ptr %i.ag, align 8, !dbg !514, !range !71, !alias.scope !431, !noalias !432, !noundef !60
  %i.ah = getelementptr i8, ptr %i.af, i64 50, !dbg !514
  %.val7.i = load i16, ptr %i.ah, align 2, !dbg !514, !alias.scope !431, !noalias !432 ; 2 uses
  %i.ai = trunc nuw i16 %.val.i to i1, !dbg !521
  %i.aj = icmp slt i16 %.val7.i, %.val9.i, !dbg !522
  %i.ak = select i1 %i.ai, i1 %i.aj, i1 false, !dbg !521
  br i1 %i.ak, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i, !dbg !514

bb.m:                                             ; preds = %.lr.ph51
  %i.al = add nuw nsw i64 %.sroa.01.1.i.i50, 1, !dbg !523 ; 2 uses
  %exitcond67.not = icmp eq i64 %i.al, %smax67, !dbg !513
  br i1 %exitcond67.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i, label %.lr.ph51, !dbg !513

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph51
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i50, %.lr.ph51 ], [ %smax67, %bb.m ], [ %.sroa.01.0.i.i47, %.lr.ph ], [ %smax, %bb.l ], !dbg !524 ; 6 uses
  %i.am = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m, !dbg !525
  tail call void @llvm.assume(i1 %i.am), !dbg !526
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !527
  br i1 %.not5.i, label %bb.i, label %bb.n, !dbg !527

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i.thread88: ; preds = %.preheader
  br i1 %.not5.i90, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit11.preheader.i.i, !dbg !527

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i.thread: ; preds = %.preheader45
  br i1 %.not5.i85, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseBy_.exit, !dbg !527

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i
  br i1 %i.w, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseBy_.exit, !dbg !528

bb.o:                                             ; preds = %bb.i
  %..i34 = tail call noundef range(i64 0, 164703072086692426) i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 %.sroa.01.0), !dbg !529
  %i.an = shl nuw nsw i64 %..i34, 1, !dbg !530
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNvXs5_B15_NtB15_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB17_.exit, !dbg !531

bb.p:                                             ; preds = %bb.i
  %..i33 = tail call noundef range(i64 0, 164703072086692426) i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 32), !dbg !532 ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNvXs5_B17_NtB17_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i33, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19, !dbg !533, !inline_history !295
  %i.ao = shl nuw nsw i64 %..i33, 1, !dbg !534
  %i.ap = or disjoint i64 %i.ao, 1, !dbg !534
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNvXs5_B15_NtB15_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB17_.exit, !dbg !531

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseBy_.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit11.i.i, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4144 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i.thread ], [ %.sroa.0.0.i.i869397, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit11.i.i ]
  %i.aq = shl nuw nsw i64 %.sroa.0.0.i.i4144, 1, !dbg !535
  %i.ar = or disjoint i64 %i.aq, 1, !dbg !535
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNvXs5_B15_NtB15_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB17_.exit, !dbg !536

bb.q:                                             ; preds = %bb.n
  %i.as = lshr i64 %.sroa.0.0.i.i, 1, !dbg !537   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437), !dbg !538, !noalias !432
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438), !dbg !538, !noalias !432
  %.not.i.i = icmp eq i64 %i.as, 0, !dbg !539
  br i1 %.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseBy_.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit11.preheader.i.i, !dbg !539

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i.thread88, %bb.q
  %i.at = phi i64 [ %i.as, %bb.q ], [ 1, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i.thread88 ]
  %.sroa.0.0.i.i869397 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i.thread88 ] ; 2 uses
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.0.i.i869397, !dbg !540
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit11.i.i, !dbg !539

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit11.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit11.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bk, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit11.i.i ], [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit11.preheader.i.i ] ; 3 uses
  %i.av = xor i64 %.sroa.0.016.i.i, -1, !dbg !541
  %i.aw = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.016.i.i, !dbg !542 ; 5 uses
  %i.ax = getelementptr [56 x i8], ptr %i.au, i64 %i.av, !dbg !543 ; 5 uses
  %i.ay = load <2 x i64>, ptr %i.aw, align 8, !dbg !544, !alias.scope !440, !noalias !441
  %i.az = load <2 x i64>, ptr %i.ax, align 8, !dbg !545, !alias.scope !449, !noalias !450
  store <2 x i64> %i.az, ptr %i.aw, align 8, !dbg !546, !alias.scope !440, !noalias !441
  store <2 x i64> %i.ay, ptr %i.ax, align 8, !dbg !547, !alias.scope !449, !noalias !450
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16, !dbg !548 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16, !dbg !549 ; 2 uses
  %i.bc = load <2 x i64>, ptr %i.ba, align 8, !dbg !544, !alias.scope !451, !noalias !441
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !dbg !545, !alias.scope !452, !noalias !450
  store <2 x i64> %i.bd, ptr %i.ba, align 8, !dbg !546, !alias.scope !451, !noalias !441
  store <2 x i64> %i.bc, ptr %i.bb, align 8, !dbg !547, !alias.scope !452, !noalias !450
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 32, !dbg !548 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 32, !dbg !549 ; 2 uses
  %i.bg = load <2 x i64>, ptr %i.be, align 8, !dbg !544, !alias.scope !453, !noalias !441
  %i.bh = load <2 x i64>, ptr %i.bf, align 8, !dbg !545, !alias.scope !454, !noalias !450
  store <2 x i64> %i.bh, ptr %i.be, align 8, !dbg !546, !alias.scope !453, !noalias !441
  store <2 x i64> %i.bg, ptr %i.bf, align 8, !dbg !547, !alias.scope !454, !noalias !450
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 48, !dbg !548 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 48, !dbg !549 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455), !dbg !550, !noalias !432
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456), !dbg !550, !noalias !432
  %.sroa.0.0.copyload.i.6.i.i.i.i.i.i = load i64, ptr %i.bi, align 8, !dbg !544, !alias.scope !457, !noalias !458
  %.sroa.02.0.copyload.i.6.i.i.i.i.i.i = load i64, ptr %i.bj, align 8, !dbg !545, !alias.scope !459, !noalias !460
  store i64 %.sroa.02.0.copyload.i.6.i.i.i.i.i.i, ptr %i.bi, align 8, !dbg !546, !alias.scope !457, !noalias !458
  store i64 %.sroa.0.0.copyload.i.6.i.i.i.i.i.i, ptr %i.bj, align 8, !dbg !547, !alias.scope !459, !noalias !460
  %i.bk = add nuw nsw i64 %.sroa.0.016.i.i, 1, !dbg !551 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bk, %i.at, !dbg !539
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseBy_.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit11.i.i, !dbg !539

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNvXs5_B15_NtB15_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB17_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseBy_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ar, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseBy_.exit ], [ %i.ap, %bb.p ], [ %i.an, %bb.o ], !dbg !552 ; 2 uses
  %i.bl = lshr i64 %.sroa.023.0, 1, !dbg !553
  %i.bm = lshr i64 %.sroa.0.0.i32, 1, !dbg !554
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !555 ; 2 uses
  %i.bn = sub nsw i64 %factor, %i.bl, !dbg !555
  %i.bo = add nuw nsw i64 %i.bm, %factor, !dbg !556
  %i.bp = mul i64 %i.bn, %.sroa.0.0, !dbg !557
  %i.bq = mul i64 %i.bo, %.sroa.0.0, !dbg !558
  %i.br = xor i64 %i.bq, %i.bp, !dbg !559
  %i.bs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.br, i1 false), !dbg !560
  %i.bt = trunc nuw nsw i64 %i.bs to i8, !dbg !559
  br label %bb.g, !dbg !561

.lr.ph57:                                         ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNvXs5_B18_NtB18_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1a_.exit
  %.sroa.02.156 = phi i64 [ %i.bu, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNvXs5_B18_NtB18_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1a_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.155 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNvXs5_B18_NtB18_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1a_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bu = add i64 %.sroa.02.156, -1, !dbg !562    ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bu, !dbg !563
  %i.bw = load i8, ptr %i.bv, align 1, !dbg !564, !noundef !60
  %.not28 = icmp ult i8 %i.bw, %.sroa.021.0, !dbg !564
  br i1 %.not28, label %._crit_edge, label %bb.r, !dbg !564

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNvXs5_B18_NtB18_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1a_.exit, %.lr.ph57, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.155, %.lr.ph57 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNvXs5_B18_NtB18_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1a_.exit ], !dbg !494 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.156, %.lr.ph57 ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNvXs5_B18_NtB18_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1a_.exit ], !dbg !496 ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !565
  store i64 %.sroa.023.1.lcssa, ptr %i.bx, align 8, !dbg !566
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !567
  store i8 %.sroa.021.0, ptr %i.by, align 1, !dbg !568
  br i1 %i.k, label %bb.y, label %bb.z, !dbg !569

bb.r:                                             ; preds = %.lr.ph57
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bu, !dbg !570
  %i.ca = load i64, ptr %i.bz, align 8, !dbg !571, !noundef !60 ; 3 uses
  %i.cb = lshr i64 %i.ca, 1, !dbg !572            ; 5 uses
  %i.cc = lshr i64 %.sroa.023.155, 1, !dbg !573   ; 3 uses
  %i.cd = add nuw i64 %i.cb, %i.cc, !dbg !574     ; 5 uses
  %i.ce = sub i64 %.sroa.09.0, %i.cd, !dbg !575
  %i.cf = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.ce, !dbg !576 ; 3 uses
  %i.cg = icmp samesign ugt i64 %i.cd, %3, !dbg !577
  %i.ch = trunc i64 %.sroa.023.155 to i1
  %i.ci = or i64 %i.ca, %.sroa.023.155, !dbg !578
  %i.cj = trunc i64 %i.ci to i1, !dbg !578
  %or.cond3.i = or i1 %i.cg, %i.cj, !dbg !578
  br i1 %or.cond3.i, label %bb.s, label %bb.t, !dbg !578

bb.s:                                             ; preds = %bb.r
  %i.ck = trunc i64 %i.ca to i1
  br i1 %i.ck, label %bb.u, label %bb.v, !dbg !579

bb.t:                                             ; preds = %bb.r
  %i.cl = shl nuw nsw i64 %i.cd, 1, !dbg !580
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNvXs5_B18_NtB18_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1a_.exit, !dbg !581

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ch, label %bb.x, label %bb.w, !dbg !582

bb.v:                                             ; preds = %bb.s
  %i.cm = or i64 %i.cb, 1, !dbg !583
  %i.cn = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true), !dbg !584
  %i.co = trunc nuw nsw i64 %i.cn to i32, !dbg !584
  %i.cp = shl nuw nsw i32 %i.co, 1, !dbg !585
  %i.cq = xor i32 %i.cp, 126, !dbg !585
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNvXs5_B17_NtB17_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef range(i64 0, 164703072086692426) %i.cb, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19, !dbg !586, !inline_history !397
  br label %bb.u, !dbg !587

bb.w:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw [56 x i8], ptr %i.cf, i64 %i.cb, !dbg !588
  %i.cs = or i64 %i.cc, 1, !dbg !589
  %i.ct = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true), !dbg !590
  %i.cu = trunc nuw nsw i64 %i.ct to i32, !dbg !590
  %i.cv = shl nuw nsw i32 %i.cu, 1, !dbg !591
  %i.cw = xor i32 %i.cv, 126, !dbg !591
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNvXs5_B17_NtB17_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.cr, i64 noundef range(i64 0, 164703072086692426) %i.cc, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19, !dbg !592, !inline_history !397
  br label %bb.x, !dbg !593

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keysNCNvXs5_BZ_NtBZ_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB11_(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef range(i64 0, 164703072086692426) %i.cd, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %i.cb, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !594
  %i.cx = shl nuw nsw i64 %i.cd, 1, !dbg !595
  %i.cy = or disjoint i64 %i.cx, 1, !dbg !595
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNvXs5_B18_NtB18_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1a_.exit, !dbg !581

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNvXs5_B18_NtB18_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1a_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cy, %bb.x ], [ %i.cl, %bb.t ], !dbg !596 ; 2 uses
  %i.cz = icmp ugt i64 %i.bu, 1, !dbg !499
  br i1 %i.cz, label %.lr.ph57, label %._crit_edge, !dbg !499

bb.y:                                             ; preds = %._crit_edge
  %i.da = add nuw nsw i64 %.sroa.02.1.lcssa, 1, !dbg !597
  %i.db = lshr i64 %.sroa.018.0, 1, !dbg !598
  %i.dc = add nuw i64 %i.db, %.sroa.09.0, !dbg !599
  br label %bb.f, !dbg !493

bb.z:                                             ; preds = %._crit_edge
  %i.dd = and i64 %.sroa.023.1.lcssa, 1, !dbg !600
  %.not30 = icmp eq i64 %i.dd, 0, !dbg !600
  br i1 %.not30, label %bb.aa, label %bb.ab, !dbg !601

bb.aa:                                            ; preds = %bb.z
  %i.de = or i64 %1, 1, !dbg !602
  %i.df = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.de, i1 true), !dbg !603
  %i.dg = trunc nuw nsw i64 %i.df to i32, !dbg !603
  %i.dh = shl nuw nsw i32 %i.dg, 1, !dbg !604
  %i.di = xor i32 %i.dh, 126, !dbg !604
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNvXs5_B17_NtB17_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.di, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19, !dbg !605, !inline_history !397
  br label %bb.ab, !dbg !606

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !608
  br label %bb.ac, !dbg !609

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !609
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNvXs5_B17_NtB17_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(56) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !610 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33, !dbg !1140
end_hunk_0
begin_hunk_1_@_RNvXNtCshhHc5tDBDRu_12grep_printer8standardNtB2_6ConfigNtNtCskKLDkoKarTP_4core7default7Default7default:bb.a
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 133, !dbg !2294
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %.sroa.39.0..sroa_idx, i8 0, i64 5, i1 false), !dbg !2294
  store i8 1, ptr %.sroa.44.0..sroa_idx, align 1, !dbg !2294
  %.sroa.4592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 134, !dbg !2294
  store i8 0, ptr %.sroa.4592.0..sroa_idx, align 2, !dbg !2294
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 135, !dbg !2294
  store i32 255, ptr %.sroa.46.0..sroa_idx, align 1, !dbg !2294
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 139, !dbg !2294
  store i32 255, ptr %.sroa.47.0..sroa_idx, align 1, !dbg !2294
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2294
  store ptr %i.n, ptr %i.cg, align 8, !dbg !2294
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 143, !dbg !2294
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.ch, align 1, !dbg !2294
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 147, !dbg !2294
  store i8 0, ptr %i.ci, align 1, !dbg !2294
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 148, !dbg !2294
  store i8 0, ptr %i.cj, align 4, !dbg !2294
  %i.ck = load ptr, ptr %i.l, align 8, !dbg !2294, !nonnull !60, !noundef !60
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2294
  store ptr %i.ck, ptr %i.cl, align 8, !dbg !2294
  store i64 0, ptr %0, align 8, !dbg !2294
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 149, !dbg !2294
  store i32 0, ptr %i.cm, align 1, !dbg !2294
  %i.cn = load ptr, ptr %i.k, align 8, !dbg !2294, !nonnull !60, !noundef !60
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2294
  store ptr %i.cn, ptr %i.co, align 8, !dbg !2294
  %i.cp = load ptr, ptr %i.j, align 8, !dbg !2294, !nonnull !60, !noundef !60
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2294
  store ptr %i.cp, ptr %i.cq, align 8, !dbg !2294
  %i.cr = load ptr, ptr %i.i, align 8, !dbg !2294, !nonnull !60, !noundef !60
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !2294
  store ptr %i.cr, ptr %i.cs, align 8, !dbg !2294
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !2294
  store ptr %i.cb, ptr %i.ct, align 8, !dbg !2294
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !2294
  store i8 0, ptr %i.cu, align 8, !dbg !2294
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 66, !dbg !2294
  store i8 0, ptr %i.cv, align 2, !dbg !2294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !2191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !2191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !2191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !2191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !2191
  ret void, !dbg !2295

bb.am:                                            ; preds = %bb.ag, %bb.x, %bb.o
  unreachable

bb.an:                                            ; preds = %bb.ae, %bb.u, %bb.l, %bb.j, %bb.e
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !2296
  unreachable, !dbg !2296

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkConfigEBF_.exit: ; preds = %.body127, %bb.e
  resume { ptr, i32 } %.pn115.pn.pn, !dbg !2296
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable
define hidden noundef range(i64 0, -9223372036854775808) i64 @_RNvXNtCsiykmk5uyuii_6memchr3extPhNtB2_7Pointer8distanceCshhHc5tDBDRu_12grep_printer(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !dbg !2297 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64, !dbg !2310
  %i.b = ptrtoint ptr %1 to i64, !dbg !2310
  %i.c = sub i64 %i.a, %i.b, !dbg !2310           ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1, !dbg !2311
  tail call void @llvm.assume(i1 %i.d), !dbg !2311
  ret i64 %i.c, !dbg !2312
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCskKLDkoKarTP_4core4hint20select_unpredictableINtB2_11DropOnPanicjENtNtNtB6_3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 !dbg !2313 {
bb.a:
  ret void, !dbg !2316
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsG258MDvU3F_3std4path4PathNtB6_5Debug3fmtCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !2317 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !2318, !nonnull !60, !noundef !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2318
  %i.c = load i64, ptr %i.b, align 8, !dbg !2318, !noundef !60
  %i.d = tail call noundef zeroext i1 @_RNvXs19_NtCsG258MDvU3F_3std4pathNtB6_4PathNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !2319
  ret i1 %i.d, !dbg !2320
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !2321 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !dbg !2328, !nonnull !60, !noundef !60
  %.val = load i8, ptr %i.a, align 1, !dbg !2329, !range !2324, !noundef !60 ; 2 uses
  %i.b = zext nneg i8 %.val to i64, !dbg !2330
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCshhHc5tDBDRu_12grep_printer, i64 %i.b, !dbg !2330
  %switch.load = load i8, ptr %switch.gep, align 1, !dbg !2330
  %switch.ext = zext i8 %switch.load to i64, !dbg !2330
  %i.c = zext nneg i8 %.val to i64, !dbg !2330
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCshhHc5tDBDRu_12grep_printer.16, i64 %i.c, !dbg !2330
  %switch.load2 = load ptr, ptr %switch.gep1, align 8, !dbg !2330
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext), !dbg !2330
  ret i1 %i.d, !dbg !2331
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCshhHc5tDBDRu_12grep_printer5jsont8SubMatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshhHc5tDBDRu_12grep_printer5jsont8SubMatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_11sort_by_keysNCNvXs5_B16_NtB16_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB18_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #9

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() unnamed_addr #10

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keysNCNvXs5_BZ_NtBZ_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB11_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshhHc5tDBDRu_12grep_printer5jsont8SubMatchE8grow_oneBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkConfigInnerENtNtCskKLDkoKarTP_4core7default7Default7defaultBK_() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshhHc5tDBDRu_12grep_printer(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs19_NtCsG258MDvU3F_3std4pathNtB6_4PathNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCskKLDkoKarTP_4core6option6OptionINtNtB7_3vec3VechEEE9drop_slowCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkConfigInnerE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { noinline }
attributes #20 = { noinline noreturn }
attributes #21 = { cold }
attributes #22 = { noreturn }
attributes #23 = { nounwind }

!llvm.module.flags = !{!50, !51, !52, !53, !54}
!llvm.ident = !{!55}
!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !56, producer: "clang LLVM (rustc version 1.100.0-nightly (bff8e12ff 2026-08-26))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = distinct !DISubprogram(name: "drop_glue<alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshhHc5tDBDRu_12grep_printer", scope: !59, file: !57, line: 848, type: !61, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!2 = distinct !DISubprogram(name: "drop_glue<alloc::raw_vec::RawVec<u8, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECshhHc5tDBDRu_12grep_printer", scope: !59, file: !57, line: 848, type: !61, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!3 = distinct !DISubprogram(name: "insert_tail<grep_printer::hyperlink::HyperlinkAlias, alloc::slice::{impl#0}::sort_by_key::{closure_env#0}<grep_printer::hyperlink::HyperlinkAlias, i16, grep_printer::hyperlink::{impl#7}::fmt::{closure_env#0}>>", linkageName: "_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keysNCNvXs5_B1a_NtB1a_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1c_", scope: !66, file: !62, line: 536, type: !70, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!4 = distinct !DILexicalBlock(scope: !3, file: !62, line: 540, column: 9)
!5 = distinct !DISubprogram(name: "unwrap_or<i16>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionsE9unwrap_orCshhHc5tDBDRu_12grep_printer", scope: !74, file: !72, line: 1038, type: !61, scopeLine: 1038, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!6 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvXs5_NtCshhHc5tDBDRu_12grep_printer9hyperlinkNtB7_20HyperlinkFormatErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt0B9_", scope: !79, file: !75, line: 320, type: !70, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!7 = distinct !DISubprogram(name: "{closure#0}<grep_printer::hyperlink::HyperlinkAlias, i16, grep_printer::hyperlink::{impl#7}::fmt::{closure_env#0}>", linkageName: "_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias11sort_by_keysNCNvXs5_BA_NtBA_20HyperlinkFormatErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt0E0BC_", scope: !84, file: !80, line: 252, type: !70, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!8 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXs1a_NtNtCskKLDkoKarTP_4core3cmp5implssNtB8_10PartialOrd2lt", scope: !88, file: !85, line: 2192, type: !61, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!9 = distinct !DISubprogram(name: "read<grep_printer::hyperlink::HyperlinkAlias>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr4readNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasEBA_", scope: !59, file: !57, line: 1717, type: !61, scopeLine: 1717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!10 = distinct !DISubprogram(name: "read<grep_printer::hyperlink::HyperlinkAlias>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias4readBG_", scope: !69, file: !67, line: 1242, type: !61, scopeLine: 1242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!11 = distinct !DISubprogram(name: "sub<grep_printer::hyperlink::HyperlinkAlias>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias3subBG_", scope: !69, file: !67, line: 1016, type: !61, scopeLine: 1016, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!12 = distinct !DISubprogram(name: "copy_nonoverlapping<grep_printer::hyperlink::HyperlinkAlias>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr19copy_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasEBQ_", scope: !59, file: !57, line: 553, type: !61, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!13 = distinct !DILexicalBlock(scope: !4, file: !62, line: 550, column: 9)
!14 = distinct !DILexicalBlock(scope: !13, file: !62, line: 551, column: 9)
!15 = distinct !DISubprogram(name: "copy_nonoverlapping<grep_printer::hyperlink::HyperlinkAlias>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr19copy_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasEBQ_", scope: !59, file: !57, line: 553, type: !61, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!16 = distinct !DISubprogram(name: "drop<grep_printer::hyperlink::HyperlinkAlias>", linkageName: "_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasENtNtNtBd_3ops4drop4Drop4dropB1k_", scope: !89, file: !62, line: 302, type: !61, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!17 = distinct !DISubprogram(name: "drop_glue<core::slice::sort::shared::smallsort::CopyOnDrop<grep_printer::hyperlink::HyperlinkAlias>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasEEB1x_", scope: !59, file: !57, line: 848, type: !61, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!18 = distinct !DISubprogram(name: "alloc", linkageName: "_RNvNtCsexYYUdYSQU6_5alloc5alloc5alloc", scope: !126, file: !125, line: 124, type: !61, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!19 = distinct !DISubprogram(name: "alloc_impl_runtime", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global18alloc_impl_runtime", scope: !127, file: !125, line: 297, type: !61, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!20 = distinct !DILexicalBlock(scope: !19, file: !125, line: 301, column: 13)
!21 = distinct !DISubprogram(name: "alloc_impl", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global10alloc_impl", scope: !127, file: !125, line: 423, type: !61, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!22 = distinct !DISubprogram(name: "allocate", linkageName: "_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate", scope: !128, file: !125, line: 540, type: !61, scopeLine: 540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!23 = distinct !DISubprogram(name: "box_new_uninit", linkageName: "_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit", scope: !130, file: !129, line: 250, type: !61, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!24 = distinct !DISubprogram(name: "new<alloc::sync::ArcInner<core::option::Option<alloc::vec::Vec<u8, alloc::alloc::Global>>>>", linkageName: "_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCskKLDkoKarTP_4core6option6OptionINtNtB4_3vec3VechEEEE3newCshhHc5tDBDRu_12grep_printer", scope: !131, file: !129, line: 288, type: !61, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!25 = distinct !DILexicalBlock(scope: !24, file: !129, line: 290, column: 9)
!26 = distinct !DISubprogram(name: "drop_glue<alloc::sync::Arc<core::option::Option<alloc::vec::Vec<u8, alloc::alloc::Global>>, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtB4_6option6OptionINtNtBG_3vec3VechEEEECshhHc5tDBDRu_12grep_printer", scope: !59, file: !57, line: 848, type: !61, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!27 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<core::option::Option<alloc::vec::Vec<u8, alloc::alloc::Global>>>>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtB9_6option6OptionINtNtBY_3vec3VechEEEE6as_refCshhHc5tDBDRu_12grep_printer", scope: !116, file: !114, line: 450, type: !61, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!28 = distinct !DISubprogram(name: "inner<core::option::Option<alloc::vec::Vec<u8, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCskKLDkoKarTP_4core6option6OptionINtNtB7_3vec3VechEEE5innerCshhHc5tDBDRu_12grep_printer", scope: !124, file: !122, line: 2186, type: !61, scopeLine: 2186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!29 = distinct !DISubprogram(name: "drop<core::option::Option<alloc::vec::Vec<u8, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCskKLDkoKarTP_4core6option6OptionINtNtB7_3vec3VechEEENtNtNtBL_3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer", scope: !132, file: !122, line: 2923, type: !61, scopeLine: 2923, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!30 = distinct !DISubprogram(name: "atomic_sub<usize, usize>", linkageName: "_RINvNtNtCskKLDkoKarTP_4core4sync6atomic10atomic_subjjECshhHc5tDBDRu_12grep_printer", scope: !135, file: !133, line: 4050, type: !61, scopeLine: 4050, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!31 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_RNvMs16_NtNtCskKLDkoKarTP_4core4sync6atomicINtB6_6AtomicjE9fetch_sub", scope: !136, file: !133, line: 3256, type: !61, scopeLine: 3256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!32 = distinct !DISubprogram(name: "fence", linkageName: "_RNvNtNtCskKLDkoKarTP_4core4sync6atomic5fence", scope: !135, file: !133, line: 4496, type: !61, scopeLine: 4496, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!33 = distinct !DISubprogram(name: "new<core::option::Option<alloc::vec::Vec<u8, alloc::alloc::Global>>>", linkageName: "_RNvMse_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCskKLDkoKarTP_4core6option6OptionINtNtB7_3vec3VechEEE3newCshhHc5tDBDRu_12grep_printer", scope: !124, file: !122, line: 440, type: !61, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!34 = distinct !DISubprogram(name: "default", linkageName: "_RNvXNtCshhHc5tDBDRu_12grep_printer4jsonNtB2_6ConfigNtNtCskKLDkoKarTP_4core7default7Default7default", scope: !137, file: !109, line: 32, type: !61, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!35 = distinct !DISubprogram(name: "new<alloc::sync::ArcInner<alloc::vec::Vec<u8, alloc::alloc::Global>>>", linkageName: "_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtB4_3vec3VechEEE3newCshhHc5tDBDRu_12grep_printer", scope: !131, file: !129, line: 288, type: !61, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!36 = distinct !DILexicalBlock(scope: !35, file: !129, line: 290, column: 9)
!37 = distinct !DISubprogram(name: "drop_glue<alloc::sync::Arc<alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtBG_3vec3VechEEECshhHc5tDBDRu_12grep_printer", scope: !59, file: !57, line: 848, type: !61, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!38 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<alloc::vec::Vec<u8, alloc::alloc::Global>>>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtBY_3vec3VechEEE6as_refCshhHc5tDBDRu_12grep_printer", scope: !116, file: !114, line: 450, type: !61, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!39 = distinct !DISubprogram(name: "inner<alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE5innerCshhHc5tDBDRu_12grep_printer", scope: !124, file: !122, line: 2186, type: !61, scopeLine: 2186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!40 = distinct !DISubprogram(name: "drop<alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer", scope: !132, file: !122, line: 2923, type: !61, scopeLine: 2923, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!41 = distinct !DISubprogram(name: "atomic_sub<usize, usize>", linkageName: "_RINvNtNtCskKLDkoKarTP_4core4sync6atomic10atomic_subjjECshhHc5tDBDRu_12grep_printer", scope: !135, file: !133, line: 4050, type: !61, scopeLine: 4050, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!42 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_RNvMs16_NtNtCskKLDkoKarTP_4core4sync6atomicINtB6_6AtomicjE9fetch_sub", scope: !136, file: !133, line: 3256, type: !61, scopeLine: 3256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!43 = distinct !DISubprogram(name: "drop_glue<grep_printer::hyperlink::HyperlinkConfig>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkConfigEBF_", scope: !59, file: !57, line: 848, type: !61, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!44 = distinct !DISubprogram(name: "drop_glue<alloc::sync::Arc<grep_printer::hyperlink::HyperlinkConfigInner, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkConfigInnerEEB1d_", scope: !59, file: !57, line: 848, type: !61, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!45 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<grep_printer::hyperlink::HyperlinkConfigInner>>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkConfigInnerEE6as_refB1A_", scope: !116, file: !114, line: 450, type: !61, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!46 = distinct !DISubprogram(name: "inner<grep_printer::hyperlink::HyperlinkConfigInner, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkConfigInnerE5innerBK_", scope: !124, file: !122, line: 2186, type: !61, scopeLine: 2186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!47 = distinct !DISubprogram(name: "drop<grep_printer::hyperlink::HyperlinkConfigInner, alloc::alloc::Global>", linkageName: "_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkConfigInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBK_", scope: !132, file: !122, line: 2923, type: !61, scopeLine: 2923, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!48 = distinct !DISubprogram(name: "atomic_sub<usize, usize>", linkageName: "_RINvNtNtCskKLDkoKarTP_4core4sync6atomic10atomic_subjjECshhHc5tDBDRu_12grep_printer", scope: !135, file: !133, line: 4050, type: !61, scopeLine: 4050, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!49 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_RNvMs16_NtNtCskKLDkoKarTP_4core4sync6atomicINtB6_6AtomicjE9fetch_sub", scope: !136, file: !133, line: 3256, type: !61, scopeLine: 3256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!50 = !{i32 8, !"PIC Level", i32 2}
!51 = !{i32 2, !"RtLibUseGOT", i32 1}
!52 = !{i32 7, !"uwtable", i32 2}
!53 = !{i32 7, !"Dwarf Version", i32 4}
!54 = !{i32 2, !"Debug Info Version", i32 3}
!55 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!56 = !DIFile(filename: "crates/printer/src/lib.rs/@/grep_printer.c955879db871477a-cgu.3", directory: "/opt-bench/work/ripgrep-rs/ripgrep")
!57 = !DIFile(filename: "library/core/src/ptr/mod.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "ef5abec170db493b218d7a08e98d8953")
!58 = !DINamespace(name: "core", scope: null)
!59 = !DINamespace(name: "ptr", scope: !58)
!60 = !{}
!61 = !DISubroutineType(types: !60)
!62 = !DIFile(filename: "library/core/src/slice/sort/shared/smallsort.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "f8936f6f0845bec345ad21dc77043e14")
!63 = !DINamespace(name: "slice", scope: !58)
!64 = !DINamespace(name: "sort", scope: !63)
!65 = !DINamespace(name: "shared", scope: !64)
!66 = !DINamespace(name: "smallsort", scope: !65)
!67 = !DIFile(filename: "library/core/src/ptr/mut_ptr.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "684721e9fde7bde08c0ef265ffdbc86e")
!68 = !DINamespace(name: "mut_ptr", scope: !59)
!69 = !DINamespace(name: "{impl#0}", scope: !68)
!70 = !DISubroutineType(cc: DW_CC_nocall, types: !60)
!71 = !{i16 0, i16 2}
!72 = !DIFile(filename: "library/core/src/option.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "19e5872d6fa0fdc09fc7d1b5fc5e7fd1")
!73 = !DINamespace(name: "option", scope: !58)
!74 = !DINamespace(name: "Option", scope: !73)
!75 = !DIFile(filename: "crates/printer/src/hyperlink/mod.rs", directory: "/opt-bench/work/ripgrep-rs/ripgrep", checksumkind: CSK_MD5, checksum: "54b6b8af17f995576d8c4db621abd2e4")
!76 = !DINamespace(name: "grep_printer", scope: null)
!77 = !DINamespace(name: "hyperlink", scope: !76)
!78 = !DINamespace(name: "{impl#7}", scope: !77)
!79 = !DINamespace(name: "fmt", scope: !78)
!80 = !DIFile(filename: "library/alloc/src/slice.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "8e7bce5d617a4e88f7bdb700dff9d669")
!81 = !DINamespace(name: "alloc", scope: null)
!82 = !DINamespace(name: "slice", scope: !81)
!83 = !DINamespace(name: "{impl#0}", scope: !82)
!84 = !DINamespace(name: "sort_by_key", scope: !83)
!85 = !DIFile(filename: "library/core/src/cmp.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "3827688213b20765e212e5bbc524e186")
!86 = !DINamespace(name: "cmp", scope: !58)
!87 = !DINamespace(name: "impls", scope: !86)
!88 = !DINamespace(name: "{impl#74}", scope: !87)
!89 = !DINamespace(name: "{impl#7}", scope: !66)
!90 = !DINamespace(name: "stable", scope: !64)
!91 = !DIFile(filename: "library/core/src/num/uint_macros.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "346a9515419f6590f35e1630dc7e24c4")
!92 = !DINamespace(name: "num", scope: !58)
!93 = !DIFile(filename: "library/core/src/slice/index.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "a6478e6d30216db9f8cdcb9288808b92")
!94 = !DINamespace(name: "index", scope: !63)
!95 = !DINamespace(name: "{impl#7}", scope: !94)
!96 = !DINamespace(name: "{impl#1}", scope: !94)
!97 = !DIFile(filename: "library/core/src/slice/mod.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "3864a87bb6bc29c76dd67717f51013ca")
!98 = !DINamespace(name: "{impl#0}", scope: !63)
!99 = !DINamespace(name: "{impl#4}", scope: !94)
!100 = !DINamespace(name: "{impl#11}", scope: !92)
!101 = !DIFile(filename: "library/core/src/ptr/const_ptr.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "585f8167c6c98445360037382742214a")
!102 = !DINamespace(name: "const_ptr", scope: !59)
!103 = !DINamespace(name: "{impl#0}", scope: !102)
!104 = !DIFile(filename: "library/core/src/hint.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "720ecb12dbf1a304509abd161627e0e2")
!105 = !DINamespace(name: "hint", scope: !58)
!106 = !DINamespace(name: "iter", scope: !58)
!107 = !{!"branch_weights", i32 4001, i32 4000000}
!108 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!109 = !DIFile(filename: "crates/printer/src/json.rs", directory: "/opt-bench/work/ripgrep-rs/ripgrep", checksumkind: CSK_MD5, checksum: "538d242f757954792b71f08383d98931")
!110 = !DINamespace(name: "json", scope: !76)
!111 = !DIFile(filename: "library/alloc/src/vec/mod.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "402275b995d0e7bbc65d12a82616a667")
!112 = !DINamespace(name: "vec", scope: !81)
!113 = !DINamespace(name: "Vec", scope: !112)
!114 = !DIFile(filename: "library/core/src/ptr/non_null.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "a4d50389e713a3b15a513e9fe2df9dcb")
!115 = !DINamespace(name: "non_null", scope: !59)
!116 = !DINamespace(name: "NonNull", scope: !115)
!117 = !DIFile(filename: "library/alloc/src/raw_vec/mod.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "acd4dae5e7aaaaf06aa0208ebac37ff5")
!118 = !DINamespace(name: "raw_vec", scope: !81)
!119 = !DINamespace(name: "RawVecInner", scope: !118)
!120 = !DINamespace(name: "RawVec", scope: !118)
!121 = !DINamespace(name: "JSONBuilder", scope: !110)
!122 = !DIFile(filename: "library/alloc/src/sync.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "44a21b82c74301fa481c4c3e2d15b5c4")
!123 = !DINamespace(name: "sync", scope: !81)
!124 = !DINamespace(name: "Arc", scope: !123)
!125 = !DIFile(filename: "library/alloc/src/alloc.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "87b4d0ba26e1dfe94542079de6981d97")
!126 = !DINamespace(name: "alloc", scope: !81)
!127 = !DINamespace(name: "Global", scope: !126)
!128 = !DINamespace(name: "{impl#3}", scope: !126)
!129 = !DIFile(filename: "library/alloc/src/boxed.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "212f903ba64193ea34aa69ab45a72796")
!130 = !DINamespace(name: "boxed", scope: !81)
!131 = !DINamespace(name: "{impl#0}", scope: !130)
!132 = !DINamespace(name: "{impl#42}", scope: !123)
!133 = !DIFile(filename: "library/core/src/sync/atomic.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "03ba1813c57010cfba40bc633b3fd36f")
!134 = !DINamespace(name: "sync", scope: !58)
!135 = !DINamespace(name: "atomic", scope: !134)
!136 = !DINamespace(name: "Atomic", scope: !135)
!137 = !DINamespace(name: "{impl#0}", scope: !110)
!138 = !DIFile(filename: "crates/printer/src/standard.rs", directory: "/opt-bench/work/ripgrep-rs/ripgrep", checksumkind: CSK_MD5, checksum: "5b4b57b9f4a34157f9546a84fe710f28")
!139 = !DINamespace(name: "standard", scope: !76)
!140 = !DINamespace(name: "StandardBuilder", scope: !139)
!141 = !DIFile(filename: "library/core/src/fmt/mod.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "12cfba091d4ac621dc20425387516488")
!142 = !DINamespace(name: "fmt", scope: !58)
!143 = !DINamespace(name: "{impl#80}", scope: !142)
!144 = distinct !DISubprogram(name: "drop_glue<alloc::vec::Vec<grep_printer::jsont::SubMatch, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCshhHc5tDBDRu_12grep_printer5jsont8SubMatchEEB1c_", scope: !59, file: !57, line: 848, type: !61, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!145 = distinct !DISubprogram(name: "drop_glue<alloc::raw_vec::RawVec<grep_printer::jsont::SubMatch, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCshhHc5tDBDRu_12grep_printer5jsont8SubMatchEEB1j_", scope: !59, file: !57, line: 848, type: !61, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!146 = distinct !DILocation(line: 848, column: 1, scope: !144)
!147 = distinct !DILocation(line: 848, column: 1, scope: !144)
!148 = !DILocation(line: 848, column: 1, scope: !144)
!149 = !DILocation(line: 848, column: 1, scope: !145, inlinedAt: !146)
!150 = !DILocation(line: 848, column: 1, scope: !145, inlinedAt: !147)
!151 = distinct !DISubprogram(name: "drop_glue<alloc::sync::ArcInner<core::option::Option<alloc::vec::Vec<u8, alloc::alloc::Global>>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtB4_6option6OptionINtNtBG_3vec3VechEEEECshhHc5tDBDRu_12grep_printer", scope: !59, file: !57, line: 848, type: !61, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!152 = distinct !{!152, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECshhHc5tDBDRu_12grep_printer"}
!153 = distinct !{!153, !152, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECshhHc5tDBDRu_12grep_printer: argument 0"}
!154 = distinct !DISubprogram(name: "drop_glue<core::option::Option<alloc::vec::Vec<u8, alloc::alloc::Global>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECshhHc5tDBDRu_12grep_printer", scope: !59, file: !57, line: 848, type: !61, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!155 = distinct !DILocation(line: 848, column: 1, scope: !151)
!156 = distinct !DILocation(line: 848, column: 1, scope: !154, inlinedAt: !155)
!157 = distinct !DILocation(line: 848, column: 1, scope: !1, inlinedAt: !156)
!158 = distinct !DILocation(line: 848, column: 1, scope: !1, inlinedAt: !156)
!159 = !{i64 -1, i64 -9223372036854775808}
!160 = !{!153}
!161 = !DILocation(line: 848, column: 1, scope: !151)
!162 = !DILocation(line: 848, column: 1, scope: !154, inlinedAt: !155)
!163 = !DILocation(line: 848, column: 1, scope: !1, inlinedAt: !156)
!164 = !DILocation(line: 848, column: 1, scope: !2, inlinedAt: !157)
!165 = !DILocation(line: 848, column: 1, scope: !2, inlinedAt: !158)
!166 = distinct !DISubprogram(name: "drop_glue<alloc::sync::ArcInner<alloc::vec::Vec<u8, alloc::alloc::Global>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtBG_3vec3VechEEECshhHc5tDBDRu_12grep_printer", scope: !59, file: !57, line: 848, type: !61, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!167 = distinct !DILocation(line: 848, column: 1, scope: !166)
end_hunk_1
begin_hunk_2_@llvm.memset.p0.i64
!312 = distinct !DILocation(line: 997, column: 9, scope: !306, inlinedAt: !301)
!313 = distinct !DISubprogram(name: "add<grep_printer::hyperlink::HyperlinkAlias>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias3addBG_", scope: !69, file: !67, line: 937, type: !61, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!314 = distinct !DISubprogram(name: "as_mut_ptr_range<grep_printer::hyperlink::HyperlinkAlias>", linkageName: "_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias16as_mut_ptr_rangeBy_", scope: !98, file: !97, line: 839, type: !61, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!315 = distinct !DILexicalBlock(scope: !314, file: !97, line: 840, column: 9)
!316 = distinct !DILocation(line: 979, column: 41, scope: !304, inlinedAt: !301)
!317 = distinct !DILocation(line: 842, column: 34, scope: !315, inlinedAt: !316)
!318 = distinct !{!318, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECshhHc5tDBDRu_12grep_printer"}
!319 = distinct !{!319, !318, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECshhHc5tDBDRu_12grep_printer: argument 0"}
!320 = distinct !{!320, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseBy_"}
!321 = distinct !{!321, !320, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseBy_: argument 0"}
!322 = distinct !{!322, !318, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECshhHc5tDBDRu_12grep_printer: argument 0:It1"}
!323 = distinct !DISubprogram(name: "swap_chunk<8>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECshhHc5tDBDRu_12grep_printer", scope: !59, file: !57, line: 1472, type: !61, scopeLine: 1472, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!324 = distinct !DISubprogram(name: "swap_nonoverlapping_chunks<8>", linkageName: "_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshhHc5tDBDRu_12grep_printer", scope: !442, file: !57, line: 1482, type: !61, scopeLine: 1482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!325 = distinct !DILexicalBlock(scope: !324, file: !57, line: 1487, column: 9)
!326 = distinct !DILexicalBlock(scope: !325, file: !57, line: 1488, column: 9)
!327 = distinct !DILexicalBlock(scope: !326, file: !57, line: 1488, column: 9)
!328 = distinct !DISubprogram(name: "swap_nonoverlapping_bytes", linkageName: "_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes", scope: !59, file: !57, line: 1480, type: !61, scopeLine: 1480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!329 = distinct !DILexicalBlock(scope: !328, file: !57, line: 1521, column: 5)
!330 = distinct !DILexicalBlock(scope: !329, file: !57, line: 1523, column: 5)
!331 = distinct !DILexicalBlock(scope: !330, file: !57, line: 1524, column: 5)
!332 = distinct !DILexicalBlock(scope: !331, file: !57, line: 1525, column: 48)
!333 = distinct !DISubprogram(name: "runtime<grep_printer::hyperlink::HyperlinkAlias>", linkageName: "_RINvNvNtCskKLDkoKarTP_4core3ptr19swap_nonoverlapping7runtimeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasEB10_", scope: !444, file: !443, line: 2628, type: !61, scopeLine: 2628, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!334 = distinct !DILexicalBlock(scope: !333, file: !57, line: 1430, column: 13)
!335 = distinct !DILexicalBlock(scope: !334, file: !57, line: 1433, column: 13)
!336 = distinct !DILexicalBlock(scope: !335, file: !57, line: 1434, column: 54)
!337 = distinct !DISubprogram(name: "swap_nonoverlapping<grep_printer::hyperlink::HyperlinkAlias>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr19swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasEBQ_", scope: !59, file: !57, line: 1403, type: !70, scopeLine: 1403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!338 = distinct !DISubprogram(name: "typed_swap_nonoverlapping<grep_printer::hyperlink::HyperlinkAlias>", linkageName: "_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasEB14_", scope: !446, file: !443, line: 2760, type: !61, scopeLine: 2760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!339 = distinct !DISubprogram(name: "swap<grep_printer::hyperlink::HyperlinkAlias>", linkageName: "_RINvNtCskKLDkoKarTP_4core3mem4swapNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasEBA_", scope: !448, file: !447, line: 830, type: !61, scopeLine: 830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!340 = distinct !DILocation(line: 1014, column: 17, scope: !311, inlinedAt: !312)
!341 = distinct !DILocation(line: 833, column: 14, scope: !339, inlinedAt: !340)
!342 = distinct !DILocation(line: 2763, column: 14, scope: !338, inlinedAt: !341)
!343 = distinct !DILocation(line: 2641, column: 9, scope: !445, inlinedAt: !342)
!344 = distinct !DILocation(line: 1437, column: 26, scope: !336, inlinedAt: !343)
!345 = distinct !DILocation(line: 1528, column: 18, scope: !332, inlinedAt: !344)
!346 = distinct !DILocation(line: 1490, column: 22, scope: !327, inlinedAt: !345)
!347 = distinct !{!347, !318, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECshhHc5tDBDRu_12grep_printer: argument 1"}
!348 = distinct !{!348, !318, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECshhHc5tDBDRu_12grep_printer: argument 1:It1"}
!349 = distinct !DILexicalBlock(scope: !323, file: !57, line: 1473, column: 5)
!350 = distinct !DILexicalBlock(scope: !349, file: !57, line: 1474, column: 5)
!351 = distinct !DISubprogram(name: "add<core::mem::maybe_uninit::MaybeUninit<[u8; 8]>>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOINtNtNtB6_3mem12maybe_uninit11MaybeUninitAhj8_E3addCshhHc5tDBDRu_12grep_printer", scope: !69, file: !67, line: 937, type: !61, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!352 = distinct !DILocation(line: 1490, column: 41, scope: !327, inlinedAt: !345)
!353 = distinct !DILocation(line: 1490, column: 57, scope: !327, inlinedAt: !345)
!354 = distinct !{!354, !318, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECshhHc5tDBDRu_12grep_printer: argument 0:It2"}
!355 = distinct !{!355, !318, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECshhHc5tDBDRu_12grep_printer: argument 0:It3"}
!356 = distinct !{!356, !318, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECshhHc5tDBDRu_12grep_printer: argument 1:It2"}
!357 = distinct !{!357, !318, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECshhHc5tDBDRu_12grep_printer: argument 1:It3"}
!358 = distinct !{!358, !318, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECshhHc5tDBDRu_12grep_printer: argument 0:It4"}
!359 = distinct !{!359, !318, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECshhHc5tDBDRu_12grep_printer: argument 0:It5"}
!360 = distinct !{!360, !318, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECshhHc5tDBDRu_12grep_printer: argument 1:It4"}
!361 = distinct !{!361, !318, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECshhHc5tDBDRu_12grep_printer: argument 1:It5"}
!362 = distinct !{!362, !318, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECshhHc5tDBDRu_12grep_printer: argument 0:It6"}
!363 = distinct !{!363, !318, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECshhHc5tDBDRu_12grep_printer: argument 1:It6"}
!364 = distinct !DISubprogram(name: "len", linkageName: "_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5driftNtB2_12DriftsortRun3len", scope: !436, file: !420, line: 295, type: !61, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!365 = distinct !DISubprogram(name: "merge_tree_depth", linkageName: "_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift16merge_tree_depth", scope: !421, file: !420, line: 167, type: !61, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!366 = distinct !DILexicalBlock(scope: !365, file: !420, line: 168, column: 5)
!367 = distinct !DILexicalBlock(scope: !366, file: !420, line: 169, column: 5)
!368 = distinct !DISubprogram(name: "leading_zeros", linkageName: "_RNvMs7_NtCskKLDkoKarTP_4core3numy13leading_zeros", scope: !422, file: !91, line: 153, type: !61, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!369 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOh3addCshhHc5tDBDRu_12grep_printer", scope: !69, file: !67, line: 937, type: !61, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!370 = distinct !DISubprogram(name: "add<core::slice::sort::stable::drift::DriftsortRun>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtNtNtB6_5slice4sort6stable5drift12DriftsortRun3addCshhHc5tDBDRu_12grep_printer", scope: !69, file: !67, line: 937, type: !61, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!371 = distinct !DILexicalBlock(scope: !247, file: !420, line: 90, column: 17)
!372 = distinct !DILexicalBlock(scope: !371, file: !420, line: 91, column: 17)
!373 = distinct !DILexicalBlock(scope: !250, file: !93, line: 100, column: 5)
!374 = distinct !DILexicalBlock(scope: !372, file: !420, line: 92, column: 17)
!375 = distinct !DISubprogram(name: "get_unchecked_mut<grep_printer::hyperlink::HyperlinkAlias, core::ops::range::Range<usize>>", linkageName: "_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias17get_unchecked_mutINtNtNtB5_3ops5range5RangejEEBz_", scope: !98, file: !97, line: 686, type: !61, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!376 = distinct !DISubprogram(name: "get_unchecked_mut<grep_printer::hyperlink::HyperlinkAlias>", linkageName: "_RNvXs2_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasE17get_unchecked_mutB1t_", scope: !99, file: !93, line: 387, type: !61, scopeLine: 387, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!377 = distinct !DILexicalBlock(scope: !376, file: !93, line: 399, column: 13)
!378 = distinct !DISubprogram(name: "logical_merge<grep_printer::hyperlink::HyperlinkAlias, alloc::slice::{impl#0}::sort_by_key::{closure_env#0}<grep_printer::hyperlink::HyperlinkAlias, i16, grep_printer::hyperlink::{impl#7}::fmt::{closure_env#0}>>", linkageName: "_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNvXs5_B18_NtB18_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1a_", scope: !421, file: !420, line: 191, type: !61, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!379 = distinct !DILexicalBlock(scope: !378, file: !420, line: 202, column: 5)
!380 = distinct !DILexicalBlock(scope: !374, file: !420, line: 93, column: 17)
!381 = distinct !DILocation(line: 94, column: 28, scope: !380)
!382 = distinct !DILexicalBlock(scope: !379, file: !420, line: 203, column: 5)
!383 = distinct !DISubprogram(name: "new_unsorted", linkageName: "_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5driftNtB2_12DriftsortRun12new_unsorted", scope: !436, file: !420, line: 285, type: !61, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!384 = distinct !DILocation(line: 215, column: 9, scope: !382, inlinedAt: !381)
!385 = distinct !DISubprogram(name: "stable_quicksort<grep_printer::hyperlink::HyperlinkAlias, alloc::slice::{impl#0}::sort_by_key::{closure_env#0}<grep_printer::hyperlink::HyperlinkAlias, i16, grep_printer::hyperlink::{impl#7}::fmt::{closure_env#0}>>", linkageName: "_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift16stable_quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB19_11sort_by_keysNCNvXs5_B1b_NtB1b_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1d_", scope: !421, file: !420, line: 262, type: !61, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!386 = distinct !DILocation(line: 206, column: 13, scope: !382, inlinedAt: !381)
!387 = distinct !DISubprogram(name: "leading_zeros", linkageName: "_RNvMs1f_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB6_7NonZerojE13leading_zeros", scope: !476, file: !474, line: 595, type: !61, scopeLine: 595, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!388 = distinct !DISubprogram(name: "ilog2", linkageName: "_RNvMs1f_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB6_7NonZerojE5ilog2", scope: !476, file: !474, line: 1804, type: !61, scopeLine: 1804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!389 = distinct !DISubprogram(name: "checked_ilog2", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj13checked_ilog2", scope: !100, file: !91, line: 1961, type: !61, scopeLine: 1961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!390 = distinct !DILexicalBlock(scope: !389, file: !91, line: 1963, column: 17)
!391 = distinct !DISubprogram(name: "ilog2", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj5ilog2", scope: !100, file: !91, line: 1838, type: !61, scopeLine: 1838, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!392 = distinct !DILexicalBlock(scope: !391, file: !91, line: 1839, column: 53)
!393 = distinct !DILocation(line: 269, column: 35, scope: !385, inlinedAt: !386)
!394 = distinct !DILocation(line: 1839, column: 37, scope: !392, inlinedAt: !393)
!395 = distinct !DILocation(line: 1963, column: 35, scope: !390, inlinedAt: !394)
!396 = distinct !DILocation(line: 1805, column: 35, scope: !388, inlinedAt: !395)
!397 = distinct !{null}
!398 = distinct !DILexicalBlock(scope: !385, file: !420, line: 269, column: 5)
!399 = distinct !DISubprogram(name: "get_offset_len_mut_noubcheck<grep_printer::hyperlink::HyperlinkAlias>", linkageName: "_RINvNtNtCskKLDkoKarTP_4core5slice5index28get_offset_len_mut_noubcheckNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasEB19_", scope: !94, file: !93, line: 95, type: !61, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!400 = distinct !DILexicalBlock(scope: !399, file: !93, line: 100, column: 5)
!401 = distinct !DISubprogram(name: "index_mut<grep_printer::hyperlink::HyperlinkAlias>", linkageName: "_RNvXs5_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasE9index_mutB1x_", scope: !95, file: !93, line: 556, type: !61, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!402 = distinct !DILexicalBlock(scope: !401, file: !93, line: 562, column: 13)
!403 = distinct !DISubprogram(name: "index_mut<grep_printer::hyperlink::HyperlinkAlias, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXs_NtNtCskKLDkoKarTP_4core5slice5indexSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasINtNtNtB8_3ops5index8IndexMutINtNtB1F_5range9RangeFromjEE9index_mutBI_", scope: !96, file: !93, line: 31, type: !61, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!404 = distinct !DILocation(line: 209, column: 36, scope: !382, inlinedAt: !381)
!405 = distinct !DILocation(line: 32, column: 15, scope: !477, inlinedAt: !404)
!406 = distinct !DILocation(line: 563, column: 19, scope: !402, inlinedAt: !405)
!407 = distinct !DILocation(line: 209, column: 13, scope: !382, inlinedAt: !381)
!408 = distinct !DILocation(line: 269, column: 35, scope: !385, inlinedAt: !407)
!409 = distinct !DILocation(line: 1839, column: 37, scope: !392, inlinedAt: !408)
!410 = distinct !DILocation(line: 1963, column: 35, scope: !390, inlinedAt: !409)
!411 = distinct !DILocation(line: 1805, column: 35, scope: !388, inlinedAt: !410)
!412 = distinct !DISubprogram(name: "new_sorted", linkageName: "_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5driftNtB2_12DriftsortRun10new_sorted", scope: !436, file: !420, line: 280, type: !61, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!413 = distinct !DILocation(line: 213, column: 9, scope: !382, inlinedAt: !381)
!414 = distinct !DISubprogram(name: "sorted", linkageName: "_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5driftNtB2_12DriftsortRun6sorted", scope: !436, file: !420, line: 290, type: !61, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!415 = distinct !DILocation(line: 118, column: 9, scope: !246)
!416 = distinct !DILocation(line: 269, column: 35, scope: !385, inlinedAt: !415)
!417 = distinct !DILocation(line: 1839, column: 37, scope: !392, inlinedAt: !416)
!418 = distinct !DILocation(line: 1963, column: 35, scope: !390, inlinedAt: !417)
!419 = distinct !DILocation(line: 1805, column: 35, scope: !388, inlinedAt: !418)
!420 = !DIFile(filename: "library/core/src/slice/sort/stable/drift.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "45ada0f6d66a135183fb6260ca4f4329")
!421 = !DINamespace(name: "drift", scope: !90)
!422 = !DINamespace(name: "{impl#9}", scope: !92)
!423 = !DILocation(line: 30, column: 24, scope: !230)
!424 = !DILocation(line: 161, column: 18, scope: !232, inlinedAt: !423)
!425 = !DINamespace(name: "Ord", scope: !86)
!426 = !DILocation(line: 40, column: 9, scope: !235)
!427 = !DILocation(line: 64, column: 34, scope: !247)
!428 = !DILocation(line: 32, column: 15, scope: !249, inlinedAt: !427)
!429 = !DILocation(line: 563, column: 19, scope: !252, inlinedAt: !428)
!430 = !DIFile(filename: "library/core/src/slice/sort/shared/mod.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "884ee038a0f7f00a0d12eb0ee0f7f4ff")
!431 = !{!261}
!432 = !{!263, !262}
!433 = !DINamespace(name: "{impl#2}", scope: !94)
!434 = !DILexicalBlockFile(scope: !272, file: !97, discriminator: 8)
!435 = !DILexicalBlockFile(scope: !272, file: !97, discriminator: 4)
!436 = !DINamespace(name: "DriftsortRun", scope: !421)
!437 = !{!303}
!438 = !{!307}
!439 = !DINamespace(name: "reverse", scope: !98)
!440 = !{!322, !303, !321, !319}
!441 = !{!307, !263, !262}
!442 = !DINamespace(name: "swap_nonoverlapping_bytes", scope: !59)
!443 = !DIFile(filename: "library/core/src/intrinsics/mod.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "16ead05bef3b7ceee3d4f588370db512")
!444 = !DINamespace(name: "swap_nonoverlapping", scope: !59)
!445 = !DILexicalBlockFile(scope: !337, file: !443, discriminator: 0)
!446 = !DINamespace(name: "intrinsics", scope: !58)
!447 = !DIFile(filename: "library/core/src/mem/mod.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "7b04903be56c36d86ec34f699815e75a")
!448 = !DINamespace(name: "mem", scope: !58)
!449 = !{!348, !307, !321, !347}
!450 = !{!303, !263, !262}
!451 = !{!355, !303, !321, !354}
!452 = !{!357, !307, !321, !356}
!453 = !{!359, !303, !321, !358}
!454 = !{!361, !307, !321, !360}
!455 = !{!362}
!456 = !{!363}
!457 = !{!362, !303, !321}
!458 = !{!363, !307, !263, !262}
!459 = !{!363, !307, !321}
!460 = !{!362, !303, !263, !262}
!461 = !DILocation(line: 66, column: 37, scope: !247)
!462 = !DILocation(line: 68, column: 37, scope: !247)
!463 = !DILocation(line: 65, column: 29, scope: !247)
!464 = !DILocation(line: 170, column: 47, scope: !367, inlinedAt: !463)
!465 = !DILocation(line: 87, column: 52, scope: !247)
!466 = !DILocation(line: 103, column: 19, scope: !247)
!467 = !DILocation(line: 104, column: 29, scope: !247)
!468 = !DILocation(line: 90, column: 34, scope: !247)
!469 = !DILocation(line: 91, column: 39, scope: !371)
!470 = !DILocation(line: 91, column: 56, scope: !371)
!471 = !DILocation(line: 93, column: 37, scope: !374)
!472 = !DILocation(line: 693, column: 30, scope: !375, inlinedAt: !471)
!473 = !DILocation(line: 400, column: 13, scope: !377, inlinedAt: !472)
!474 = !DIFile(filename: "library/core/src/num/nonzero.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "9f2faea11e0227f402ea1f4bd08ebc40")
!475 = !DINamespace(name: "nonzero", scope: !92)
!476 = !DINamespace(name: "NonZero", scope: !475)
!477 = !DILexicalBlockFile(scope: !403, file: !93, discriminator: 2)
!478 = !DILocation(line: 113, column: 30, scope: !247)
!479 = !DILocation(line: 117, column: 18, scope: !246)
!480 = !DILocation(line: 27, column: 8, scope: !230)
!481 = !DILocation(line: 3818, column: 21, scope: !231, inlinedAt: !424)
!482 = !DILocation(line: 3819, column: 21, scope: !233, inlinedAt: !424)
!483 = !DILocation(line: 3820, column: 16, scope: !234, inlinedAt: !424)
!484 = !DILocation(line: 37, column: 31, scope: !235)
!485 = !DILocation(line: 42, column: 9, scope: !235)
!486 = !DILocation(line: 40, column: 24, scope: !235)
!487 = !DILocation(line: 40, column: 18, scope: !235)
!488 = !DILocation(line: 1138, column: 5, scope: !236, inlinedAt: !238)
!489 = !DILocation(line: 37, column: 28, scope: !235)
!490 = !DILocation(line: 0, scope: !235)
!491 = !DILocation(line: 50, column: 9, scope: !240)
!492 = !DILocation(line: 52, column: 9, scope: !242)
!493 = !DILocation(line: 57, column: 5, scope: !246)
!494 = !DILocation(line: 0, scope: !245)
!495 = !DILocation(line: 0, scope: !244)
!496 = !DILocation(line: 0, scope: !239)
!497 = !DILocation(line: 62, column: 12, scope: !247)
!498 = !DILocation(line: 0, scope: !247)
!499 = !DILocation(line: 87, column: 19, scope: !247)
!500 = !DILocation(line: 562, column: 27, scope: !248, inlinedAt: !428)
!501 = !DILocation(line: 102, column: 24, scope: !251, inlinedAt: !429)
!502 = !DILocation(line: 234, column: 8, scope: !254, inlinedAt: !255)
!503 = !DILocation(line: 249, column: 8, scope: !254, inlinedAt: !255)
!504 = !DILocation(line: 25, column: 8, scope: !257, inlinedAt: !258)
!505 = !DILocation(line: 34, column: 35, scope: !259, inlinedAt: !258)
!506 = !DILocation(line: 1042, column: 9, scope: !5, inlinedAt: !266)
!507 = !DILocation(line: 1042, column: 9, scope: !5, inlinedAt: !268)
!508 = !DILocation(line: 2192, column: 50, scope: !8, inlinedAt: !269)
!509 = !DILocation(line: 0, scope: !270, inlinedAt: !258)
!510 = !DILocation(line: 35, column: 12, scope: !270, inlinedAt: !258)
!511 = !DILocation(line: 40, column: 19, scope: !270, inlinedAt: !258)
!512 = !DILocation(line: 40, column: 37, scope: !270, inlinedAt: !258)
!513 = !DILocation(line: 36, column: 19, scope: !270, inlinedAt: !258)
!514 = !DILocation(line: 36, column: 36, scope: !270, inlinedAt: !258)
!515 = !DILocation(line: 219, column: 13, scope: !271, inlinedAt: !274)
!516 = !DILocation(line: 1042, column: 9, scope: !5, inlinedAt: !277)
!517 = !DILocation(line: 1042, column: 9, scope: !5, inlinedAt: !279)
!518 = !DILocation(line: 2192, column: 50, scope: !8, inlinedAt: !280)
!519 = !DILocation(line: 42, column: 17, scope: !270, inlinedAt: !258)
!520 = !DILocation(line: 219, column: 13, scope: !271, inlinedAt: !282)
!521 = !DILocation(line: 1042, column: 9, scope: !5, inlinedAt: !285)
!522 = !DILocation(line: 2192, column: 50, scope: !8, inlinedAt: !286)
!523 = !DILocation(line: 37, column: 17, scope: !270, inlinedAt: !258)
!524 = !DILocation(line: 0, scope: !257, inlinedAt: !258)
!525 = !DILocation(line: 238, column: 37, scope: !287, inlinedAt: !255)
!526 = !DILocation(line: 238, column: 18, scope: !287, inlinedAt: !255)
!527 = !DILocation(line: 240, column: 12, scope: !287, inlinedAt: !255)
!528 = !DILocation(line: 241, column: 16, scope: !287, inlinedAt: !255)
!529 = !DILocation(line: 1138, column: 5, scope: !236, inlinedAt: !290)
!530 = !DILocation(line: 286, column: 14, scope: !291, inlinedAt: !292)
!531 = !DILocation(line: 249, column: 5, scope: !254, inlinedAt: !255)
!532 = !DILocation(line: 1138, column: 5, scope: !236, inlinedAt: !294)
!533 = !DILocation(line: 255, column: 9, scope: !296, inlinedAt: !255)
!534 = !DILocation(line: 281, column: 14, scope: !297, inlinedAt: !298)
!535 = !DILocation(line: 281, column: 14, scope: !297, inlinedAt: !299)
!536 = !DILocation(line: 260, column: 2, scope: !253, inlinedAt: !255)
!537 = !DILocation(line: 978, column: 24, scope: !300, inlinedAt: !301)
!538 = !DILocation(line: 997, column: 9, scope: !306, inlinedAt: !301)
!539 = !DILocation(line: 1013, column: 19, scope: !311, inlinedAt: !312)
!540 = !DILocation(line: 971, column: 18, scope: !313, inlinedAt: !317)
!541 = !DILocation(line: 1014, column: 45, scope: !311, inlinedAt: !312)
!542 = !DILocation(line: 1014, column: 27, scope: !311, inlinedAt: !312)
!543 = !DILocation(line: 1014, column: 38, scope: !311, inlinedAt: !312)
!544 = !DILocation(line: 1473, column: 13, scope: !323, inlinedAt: !346)
!545 = !DILocation(line: 1474, column: 13, scope: !349, inlinedAt: !346)
!546 = !DILocation(line: 1475, column: 5, scope: !350, inlinedAt: !346)
!547 = !DILocation(line: 1476, column: 5, scope: !350, inlinedAt: !346)
!548 = !DILocation(line: 971, column: 18, scope: !351, inlinedAt: !352)
!549 = !DILocation(line: 971, column: 18, scope: !351, inlinedAt: !353)
!550 = !DILocation(line: 1490, column: 22, scope: !327, inlinedAt: !345)
!551 = !DILocation(line: 1015, column: 17, scope: !311, inlinedAt: !312)
!552 = !DILocation(line: 0, scope: !254, inlinedAt: !255)
!553 = !DILocation(line: 296, column: 9, scope: !364, inlinedAt: !461)
!554 = !DILocation(line: 296, column: 9, scope: !364, inlinedAt: !462)
!555 = !DILocation(line: 168, column: 13, scope: !365, inlinedAt: !463)
!556 = !DILocation(line: 169, column: 13, scope: !366, inlinedAt: !463)
!557 = !DILocation(line: 170, column: 6, scope: !367, inlinedAt: !463)
!558 = !DILocation(line: 170, column: 27, scope: !367, inlinedAt: !463)
!559 = !DILocation(line: 170, column: 5, scope: !367, inlinedAt: !463)
!560 = !DILocation(line: 154, column: 20, scope: !368, inlinedAt: !464)
!561 = !DILocation(line: 62, column: 9, scope: !247)
!562 = !DILocation(line: 87, column: 56, scope: !247)
!563 = !DILocation(line: 971, column: 18, scope: !369, inlinedAt: !465)
!564 = !DILocation(line: 87, column: 36, scope: !247)
!565 = !DILocation(line: 971, column: 18, scope: !370, inlinedAt: !466)
!566 = !DILocation(line: 103, column: 13, scope: !247)
!567 = !DILocation(line: 971, column: 18, scope: !369, inlinedAt: !467)
!568 = !DILocation(line: 104, column: 13, scope: !247)
!569 = !DILocation(line: 109, column: 12, scope: !247)
!570 = !DILocation(line: 971, column: 18, scope: !370, inlinedAt: !468)
!571 = !DILocation(line: 90, column: 28, scope: !247)
!572 = !DILocation(line: 296, column: 9, scope: !364, inlinedAt: !469)
!573 = !DILocation(line: 296, column: 9, scope: !364, inlinedAt: !470)
!574 = !DILocation(line: 91, column: 34, scope: !371)
!575 = !DILocation(line: 92, column: 39, scope: !372)
!576 = !DILocation(line: 102, column: 24, scope: !373, inlinedAt: !473)
!577 = !DILocation(line: 203, column: 30, scope: !379, inlinedAt: !381)
!578 = !DILocation(line: 204, column: 9, scope: !382, inlinedAt: !381)
!579 = !DILocation(line: 205, column: 13, scope: !382, inlinedAt: !381)
!580 = !DILocation(line: 286, column: 14, scope: !383, inlinedAt: !384)
!581 = !DILocation(line: 204, column: 5, scope: !382, inlinedAt: !381)
!582 = !DILocation(line: 208, column: 13, scope: !382, inlinedAt: !381)
!583 = !DILocation(line: 269, column: 21, scope: !385, inlinedAt: !386)
!584 = !DILocation(line: 598, column: 21, scope: !387, inlinedAt: !396)
!585 = !DILocation(line: 269, column: 17, scope: !385, inlinedAt: !386)
!586 = !DILocation(line: 270, column: 5, scope: !398, inlinedAt: !386)
!587 = !DILocation(line: 205, column: 9, scope: !382, inlinedAt: !381)
!588 = !DILocation(line: 102, column: 24, scope: !400, inlinedAt: !406)
!589 = !DILocation(line: 269, column: 21, scope: !385, inlinedAt: !407)
!590 = !DILocation(line: 598, column: 21, scope: !387, inlinedAt: !411)
!591 = !DILocation(line: 269, column: 17, scope: !385, inlinedAt: !407)
!592 = !DILocation(line: 270, column: 5, scope: !398, inlinedAt: !407)
!593 = !DILocation(line: 208, column: 9, scope: !382, inlinedAt: !381)
!594 = !DILocation(line: 211, column: 9, scope: !382, inlinedAt: !381)
!595 = !DILocation(line: 281, column: 14, scope: !412, inlinedAt: !413)
!596 = !DILocation(line: 0, scope: !382, inlinedAt: !381)
!597 = !DILocation(line: 105, column: 13, scope: !247)
!598 = !DILocation(line: 296, column: 9, scope: !364, inlinedAt: !478)
!599 = !DILocation(line: 113, column: 9, scope: !247)
!600 = !DILocation(line: 291, column: 9, scope: !414, inlinedAt: !479)
!601 = !DILocation(line: 117, column: 9, scope: !246)
!602 = !DILocation(line: 269, column: 21, scope: !385, inlinedAt: !415)
!603 = !DILocation(line: 598, column: 21, scope: !387, inlinedAt: !419)
!604 = !DILocation(line: 269, column: 17, scope: !385, inlinedAt: !415)
!605 = !DILocation(line: 270, column: 5, scope: !398, inlinedAt: !415)
!606 = !DILocation(line: 118, column: 9, scope: !246)
!607 = !DILocation(line: 120, column: 1, scope: !242)
!608 = !DILocation(line: 120, column: 1, scope: !240)
!609 = !DILocation(line: 120, column: 2, scope: !229)
!610 = distinct !DISubprogram(name: "quicksort<grep_printer::hyperlink::HyperlinkAlias, alloc::slice::{impl#0}::sort_by_key::{closure_env#0}<grep_printer::hyperlink::HyperlinkAlias, i16, grep_printer::hyperlink::{impl#7}::fmt::{closure_env#0}>>", linkageName: "_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNvXs5_B17_NtB17_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB19_", scope: !1095, file: !1094, line: 16, type: !61, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!611 = distinct !DILexicalBlock(scope: !610, file: !1094, line: 24, column: 9)
!612 = distinct !{!612, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_11sort_by_keysNCNvXs5_B1u_NtB1u_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1w_"}
!613 = distinct !{!613, !612, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_11sort_by_keysNCNvXs5_B1u_NtB1u_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1w_: argument 0"}
!614 = distinct !DISubprogram(name: "small_sort<grep_printer::hyperlink::HyperlinkAlias, alloc::slice::{impl#0}::sort_by_key::{closure_env#0}<grep_printer::hyperlink::HyperlinkAlias, i16, grep_printer::hyperlink::{impl#7}::fmt::{closure_env#0}>>", linkageName: "_RINvXs_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNtB5_23StableSmallSortTypeImpl10small_sortNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBY_11sort_by_keysNCNvXs5_B10_NtB10_20HyperlinkFormatErrorNtNtBd_3fmt7Display3fmt0E0EB12_", scope: !1097, file: !62, line: 56, type: !61, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!615 = distinct !DILocation(line: 27, column: 13, scope: !611)
!616 = distinct !{!616, !612, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_11sort_by_keysNCNvXs5_B1u_NtB1u_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1w_: argument 1"}
!617 = distinct !DISubprogram(name: "small_sort_general_with_scratch<grep_printer::hyperlink::HyperlinkAlias, alloc::slice::{impl#0}::sort_by_key::{closure_env#0}<grep_printer::hyperlink::HyperlinkAlias, i16, grep_printer::hyperlink::{impl#7}::fmt::{closure_env#0}>>", linkageName: "_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_11sort_by_keysNCNvXs5_B1u_NtB1u_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1w_", scope: !66, file: !62, line: 220, type: !70, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!618 = distinct !DILexicalBlock(scope: !617, file: !62, line: 225, column: 5)
!619 = distinct !DILocation(line: 61, column: 9, scope: !614, inlinedAt: !615)
!620 = distinct !DILexicalBlock(scope: !618, file: !62, line: 234, column: 5)
!621 = distinct !DILexicalBlock(scope: !620, file: !62, line: 235, column: 5)
!622 = distinct !DILexicalBlock(scope: !621, file: !62, line: 239, column: 9)
!623 = distinct !DISubprogram(name: "sort4_stable<grep_printer::hyperlink::HyperlinkAlias, alloc::slice::{impl#0}::sort_by_key::{closure_env#0}<grep_printer::hyperlink::HyperlinkAlias, i16, grep_printer::hyperlink::{impl#7}::fmt::{closure_env#0}>>", linkageName: "_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort4_stableNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB19_11sort_by_keysNCNvXs5_B1b_NtB1b_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1d_", scope: !66, file: !62, line: 606, type: !70, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!624 = distinct !DILocation(line: 254, column: 13, scope: !622, inlinedAt: !619)
!625 = distinct !DILocation(line: 620, column: 18, scope: !623, inlinedAt: !624)
!626 = distinct !DILocation(line: 252, column: 34, scope: !7, inlinedAt: !625)
!627 = distinct !DILocation(line: 321, column: 46, scope: !6, inlinedAt: !626)
!628 = distinct !DILocation(line: 252, column: 43, scope: !7, inlinedAt: !625)
!629 = distinct !DILocation(line: 321, column: 46, scope: !6, inlinedAt: !628)
!630 = distinct !DILocation(line: 252, column: 39, scope: !7, inlinedAt: !625)
!631 = distinct !DILexicalBlock(scope: !623, file: !62, line: 620, column: 9)
!632 = distinct !DILocation(line: 621, column: 18, scope: !631, inlinedAt: !624)
!633 = distinct !DILocation(line: 252, column: 34, scope: !7, inlinedAt: !632)
!634 = distinct !DILocation(line: 321, column: 46, scope: !6, inlinedAt: !633)
!635 = distinct !DILocation(line: 252, column: 43, scope: !7, inlinedAt: !632)
!636 = distinct !DILocation(line: 321, column: 46, scope: !6, inlinedAt: !635)
!637 = distinct !DILocation(line: 252, column: 39, scope: !7, inlinedAt: !632)
!638 = distinct !DILexicalBlock(scope: !631, file: !62, line: 621, column: 9)
!639 = distinct !DISubprogram(name: "add<grep_printer::hyperlink::HyperlinkAlias>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr9const_ptrPNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias3addBI_", scope: !103, file: !101, line: 838, type: !61, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!640 = distinct !DILocation(line: 622, column: 24, scope: !638, inlinedAt: !624)
!641 = distinct !DILexicalBlock(scope: !638, file: !62, line: 622, column: 9)
!642 = distinct !DILocation(line: 623, column: 24, scope: !641, inlinedAt: !624)
!643 = distinct !DILexicalBlock(scope: !641, file: !62, line: 623, column: 9)
!644 = distinct !DILocation(line: 624, column: 24, scope: !643, inlinedAt: !624)
!645 = distinct !DILexicalBlock(scope: !643, file: !62, line: 624, column: 9)
!646 = distinct !DILocation(line: 625, column: 24, scope: !645, inlinedAt: !624)
!647 = distinct !DILexicalBlock(scope: !645, file: !62, line: 625, column: 9)
!648 = distinct !DILocation(line: 635, column: 18, scope: !647, inlinedAt: !624)
!649 = distinct !DILocation(line: 252, column: 34, scope: !7, inlinedAt: !648)
!650 = distinct !DILocation(line: 321, column: 46, scope: !6, inlinedAt: !649)
!651 = distinct !DILocation(line: 252, column: 43, scope: !7, inlinedAt: !648)
!652 = distinct !DILocation(line: 321, column: 46, scope: !6, inlinedAt: !651)
!653 = distinct !DILocation(line: 252, column: 39, scope: !7, inlinedAt: !648)
!654 = distinct !DILexicalBlock(scope: !647, file: !62, line: 635, column: 9)
!655 = distinct !DILocation(line: 636, column: 18, scope: !654, inlinedAt: !624)
!656 = distinct !DILocation(line: 252, column: 34, scope: !7, inlinedAt: !655)
!657 = distinct !DILocation(line: 321, column: 46, scope: !6, inlinedAt: !656)
!658 = distinct !DILocation(line: 252, column: 43, scope: !7, inlinedAt: !655)
!659 = distinct !DILocation(line: 321, column: 46, scope: !6, inlinedAt: !658)
!660 = distinct !DILocation(line: 252, column: 39, scope: !7, inlinedAt: !655)
!661 = distinct !DISubprogram(name: "select_unpredictable<*const grep_printer::hyperlink::HyperlinkAlias>", linkageName: "_RINvNtCskKLDkoKarTP_4core4hint20select_unpredictablePNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasEBT_", scope: !105, file: !104, line: 832, type: !61, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!662 = distinct !DILexicalBlock(scope: !661, file: !104, line: 838, column: 5)
!663 = distinct !DILexicalBlock(scope: !662, file: !104, line: 839, column: 5)
!664 = distinct !DILexicalBlock(scope: !663, file: !104, line: 854, column: 5)
!665 = distinct !DILexicalBlock(scope: !664, file: !104, line: 855, column: 5)
!666 = distinct !DILexicalBlock(scope: !665, file: !104, line: 865, column: 9)
!667 = distinct !DILexicalBlock(scope: !666, file: !104, line: 866, column: 9)
!668 = distinct !DILexicalBlock(scope: !667, file: !104, line: 872, column: 9)
!669 = distinct !DILexicalBlock(scope: !654, file: !62, line: 636, column: 9)
!670 = distinct !DILocation(line: 637, column: 19, scope: !669, inlinedAt: !624)
!671 = distinct !DILexicalBlock(scope: !669, file: !62, line: 637, column: 9)
!672 = distinct !DILocation(line: 638, column: 19, scope: !671, inlinedAt: !624)
!673 = distinct !DILexicalBlock(scope: !671, file: !62, line: 638, column: 9)
!674 = distinct !DILocation(line: 639, column: 62, scope: !673, inlinedAt: !624)
!675 = distinct !DILocation(line: 639, column: 28, scope: !673, inlinedAt: !624)
!676 = distinct !DILexicalBlock(scope: !673, file: !62, line: 639, column: 9)
!677 = distinct !DILocation(line: 640, column: 63, scope: !676, inlinedAt: !624)
!678 = distinct !DILocation(line: 640, column: 29, scope: !676, inlinedAt: !624)
!679 = distinct !DILexicalBlock(scope: !676, file: !62, line: 640, column: 9)
!680 = distinct !DILocation(line: 643, column: 18, scope: !679, inlinedAt: !624)
!681 = distinct !DILocation(line: 252, column: 34, scope: !7, inlinedAt: !680)
!682 = distinct !DILocation(line: 321, column: 46, scope: !6, inlinedAt: !681)
!683 = distinct !DILocation(line: 252, column: 43, scope: !7, inlinedAt: !680)
!684 = distinct !DILocation(line: 321, column: 46, scope: !6, inlinedAt: !683)
!685 = distinct !DILocation(line: 252, column: 39, scope: !7, inlinedAt: !680)
!686 = distinct !DILexicalBlock(scope: !679, file: !62, line: 643, column: 9)
!687 = distinct !DILocation(line: 644, column: 18, scope: !686, inlinedAt: !624)
!688 = distinct !DILexicalBlock(scope: !686, file: !62, line: 644, column: 9)
!689 = distinct !DILocation(line: 645, column: 18, scope: !688, inlinedAt: !624)
!690 = distinct !DISubprogram(name: "copy_nonoverlapping<grep_printer::hyperlink::HyperlinkAlias>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr19copy_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasEBQ_", scope: !59, file: !57, line: 553, type: !61, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!691 = distinct !DILexicalBlock(scope: !688, file: !62, line: 645, column: 9)
!692 = distinct !DILocation(line: 647, column: 9, scope: !691, inlinedAt: !624)
!693 = distinct !DISubprogram(name: "add<grep_printer::hyperlink::HyperlinkAlias>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias3addBG_", scope: !69, file: !67, line: 937, type: !61, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!694 = distinct !DILocation(line: 648, column: 42, scope: !691, inlinedAt: !624)
!695 = distinct !DILocation(line: 648, column: 9, scope: !691, inlinedAt: !624)
!696 = distinct !DILocation(line: 649, column: 42, scope: !691, inlinedAt: !624)
!697 = distinct !DILocation(line: 649, column: 9, scope: !691, inlinedAt: !624)
!698 = distinct !DILocation(line: 650, column: 43, scope: !691, inlinedAt: !624)
!699 = distinct !DILocation(line: 650, column: 9, scope: !691, inlinedAt: !624)
!700 = distinct !DISubprogram(name: "add<grep_printer::hyperlink::HyperlinkAlias>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias3addBG_", scope: !69, file: !67, line: 937, type: !61, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !60)
!701 = distinct !DILocation(line: 255, column: 33, scope: !622, inlinedAt: !619)
!702 = distinct !DILocation(line: 255, column: 62, scope: !622, inlinedAt: !619)
!703 = distinct !DILocation(line: 255, column: 13, scope: !622, inlinedAt: !619)
!704 = distinct !DILocation(line: 620, column: 18, scope: !623, inlinedAt: !703)
!705 = distinct !DILocation(line: 252, column: 34, scope: !7, inlinedAt: !704)
!706 = distinct !DILocation(line: 321, column: 46, scope: !6, inlinedAt: !705)
!707 = distinct !DILocation(line: 252, column: 43, scope: !7, inlinedAt: !704)
!708 = distinct !DILocation(line: 321, column: 46, scope: !6, inlinedAt: !707)
!709 = distinct !DILocation(line: 252, column: 39, scope: !7, inlinedAt: !704)
!710 = distinct !DILocation(line: 621, column: 18, scope: !631, inlinedAt: !703)
!711 = distinct !DILocation(line: 252, column: 34, scope: !7, inlinedAt: !710)
!712 = distinct !DILocation(line: 321, column: 46, scope: !6, inlinedAt: !711)
!713 = distinct !DILocation(line: 252, column: 43, scope: !7, inlinedAt: !710)
!714 = distinct !DILocation(line: 321, column: 46, scope: !6, inlinedAt: !713)
!715 = distinct !DILocation(line: 252, column: 39, scope: !7, inlinedAt: !710)
!716 = distinct !DILocation(line: 622, column: 24, scope: !638, inlinedAt: !703)
!717 = distinct !DILocation(line: 623, column: 24, scope: !641, inlinedAt: !703)
!718 = distinct !DILocation(line: 624, column: 24, scope: !643, inlinedAt: !703)
!719 = distinct !DILocation(line: 625, column: 24, scope: !645, inlinedAt: !703)
end_hunk_2
