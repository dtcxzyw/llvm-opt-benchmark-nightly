Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.15?download=true
inline.NumInlined: 264
inline.NumDeleted: 141
begin_hunk_0
@80 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRsNtB6_5Debug3fmtCsa9sSWSfjDbm_4jiff }>, align 8
@81 = private unnamed_addr constant [7 x i8] c"Display", align 1
@82 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff4util6escapeNtB5_5BytesNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@83 = private unnamed_addr constant [3 x i8] c"fmt", align 1
@84 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime14BrokenDownTimeEBH_, [16 x i8] c"p\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXso_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTimeNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@85 = private unnamed_addr constant [2 x i8] c"tm", align 1
@86 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionsENtNtB7_3fmt5Debug3fmtCsa9sSWSfjDbm_4jiff }>, align 8
@87 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionaENtNtB7_3fmt5Debug3fmtCsa9sSWSfjDbm_4jiff }>, align 8
@88 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionlENtNtB7_3fmt5Debug3fmtCsa9sSWSfjDbm_4jiff }>, align 8
@89 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetENtNtB7_3fmt5Debug3fmtBQ_ }>, align 8
@90 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsa9sSWSfjDbm_4jiff5civil7weekday7WeekdayENtNtB7_3fmt5Debug3fmtBQ_ }>, align 8
@91 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime8MeridiemENtNtB7_3fmt5Debug3fmtBQ_ }>, align 8
@92 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCsa9sSWSfjDbm_4jiff9timestamp9TimestampENtNtB7_3fmt5Debug3fmtBO_ }>, align 8
@93 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEEB13_, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneENtNtB7_3fmt5Debug3fmtBQ_ }>, align 8
@94 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtB8_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtB6_5Debug3fmtCsa9sSWSfjDbm_4jiff }>, align 8
@95 = private unnamed_addr constant [4 x i8] c"year", align 1
@96 = private unnamed_addr constant [5 x i8] c"month", align 1
@97 = private unnamed_addr constant [3 x i8] c"day", align 1
@98 = private unnamed_addr constant [11 x i8] c"day_of_year", align 1
@99 = private unnamed_addr constant [13 x i8] c"iso_week_year", align 1
@100 = private unnamed_addr constant [8 x i8] c"iso_week", align 1
@101 = private unnamed_addr constant [8 x i8] c"week_sun", align 1
@102 = private unnamed_addr constant [8 x i8] c"week_mon", align 1
@103 = private unnamed_addr constant [4 x i8] c"hour", align 1
@104 = private unnamed_addr constant [6 x i8] c"minute", align 1
@105 = private unnamed_addr constant [6 x i8] c"second", align 1
@106 = private unnamed_addr constant [6 x i8] c"subsec", align 1
@107 = private unnamed_addr constant [6 x i8] c"offset", align 1
@108 = private unnamed_addr constant [7 x i8] c"weekday", align 1
@109 = private unnamed_addr constant [8 x i8] c"meridiem", align 1
@110 = private unnamed_addr constant [9 x i8] c"timestamp", align 1
@111 = private unnamed_addr constant [2 x i8] c"tz", align 1
@112 = private unnamed_addr constant [4 x i8] c"iana", align 1
@113 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @95, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @96, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @97, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @98, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @99, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @100, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @101, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @102, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @103, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @104, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @105, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @106, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @107, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @108, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @109, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @110, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @111, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @112, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@114 = private unnamed_addr constant [14 x i8] c"BrokenDownTime", align 1
@115 = private unnamed_addr constant [2 x i8] c"AM", align 1
@116 = private unnamed_addr constant [2 x i8] c"PM", align 1

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB6_14BrokenDownTime18format_with_configNtNtB8_6buffer14BorrowedWriterNtB6_13DefaultCustomReEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 8, 25) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [100 x i8], align 1               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8, !alias.scope !4, !noalias !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 100, ptr %i.g, align 8, !alias.scope !4, !noalias !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i16 0, ptr %i.h, align 8, !alias.scope !4, !noalias !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8, !alias.scope !9, !noalias !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %4, ptr %i.i, align 8, !alias.scope !9, !noalias !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr @6, ptr %i.j, align 8, !alias.scope !9, !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.d, ptr %i.n, align 8
  %i.o = call { i64, ptr } @_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE6formatBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #21 ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.o, 0
  %i.q = extractvalue { i64, ptr } %i.o, 1        ; 4 uses
  %i.r = trunc nuw i64 %i.p to i1
  br i1 %i.r, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15
  store ptr %i.q, ptr %i.b, align 8, !noalias !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15
  store i8 6, ptr %i.a, align 8, !noalias !22
  %i.s = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.b, !noalias !15

bb.b:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = icmp eq ptr %i.q, null
  br i1 %i.u, label %.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !23
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.d, label %.thread.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire, !noalias !22
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
          to label %.thread.i.i unwind label %bb.e, !noalias !15

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !15
  unreachable

.thread.i.i:                                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.t

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15
  %i.y = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.q, ptr noundef %i.s), !noalias !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15
  br label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit

bb.g:                                             ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  %.sroa.07.0.copyload = load ptr, ptr %i.d, align 8, !nonnull !32, !noundef !32 ; 2 uses
  %.sroa.48.0.copyload = load ptr, ptr %i.i, align 8, !nonnull !32, !noundef !32
  %.sroa.5.0.copyload = load ptr, ptr %i.j, align 8, !nonnull !32, !noundef !32
  %i.z = load ptr, ptr %.sroa.07.0.copyload, align 8, !noalias !33, !nonnull !32, !noundef !32
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 16 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 8, !noalias !33, !noundef !32
  %i.ac = zext i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !32, !noalias !33, !nonnull !32
  %i.af = call { i64, ptr } %i.ae(ptr noundef nonnull %.sroa.48.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.ac) #23, !noalias !33, !inline_history !36 ; 2 uses
  %i.ag = extractvalue { i64, ptr } %i.af, 0
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = extractvalue { i64, ptr } %i.af, 1
  br label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit

bb.i:                                             ; preds = %bb.g
  store i16 0, ptr %i.aa, align 8, !noalias !33
  br label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit: ; preds = %bb.i, %bb.h, %bb.f
  %.pn14 = phi ptr [ %i.y, %bb.f ], [ %i.ai, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.0 = phi i64 [ 1, %bb.f ], [ 1, %bb.h ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.aj = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ak = insertvalue { i64, ptr } %i.aj, ptr %.pn14, 1
  ret { i64, ptr } %i.ak
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRRShINtNtNtBa_5slice4iter4IterB14_EECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !37
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !37
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEEB13_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !38, !noundef !32
  %1 = icmp eq i64 %i.c, 0
  br i1 %1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i, %bb.b, %bb.b, %bb.b, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8, !noundef !32 ; 3 uses
  %i.e = ptrtoint ptr %.val to i64
  %i.f = and i64 %i.e, 7
  switch i64 %i.f, label %bb.c [
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit
    i64 3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit
    i64 4, label %bb.d
    i64 5, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %.val, i64 -4      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = tail call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.g)
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 %i.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  store ptr %i.j, ptr %i.b, align 8
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !39
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit

bb.f:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.val, i64 -5      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = tail call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.m)
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  store ptr %i.p, ptr %i.a, align 8
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !44
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !49, !nonnull !32, !noundef !32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !49, !noundef !32 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit.i.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit.i.i
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit.i.i unwind label %bb.b, !noalias !49

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit7.i.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit7.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit7.i.i unwind label %bb.c, !noalias !49

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !49
  unreachable

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit7.i.i, %bb.b
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsa9sSWSfjDbm_4jiff.exit unwind label %bb.d

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsa9sSWSfjDbm_4jiff.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !52, !noundef !32 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !55
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #21
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime14BrokenDownTimeEBH_(ptr noalias nofree noundef align 8 dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.d = load i64, ptr %i.c, align 8, !range !38, !alias.scope !60, !noundef !32
  %1 = icmp eq i64 %i.d, 0
  br i1 %1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEEB13_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !60, !noundef !32 ; 3 uses
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = and i64 %i.f, 7
  switch i64 %i.g, label %bb.c [
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEEB13_.exit
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEEB13_.exit
    i64 3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEEB13_.exit
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEEB13_.exit
    i64 4, label %bb.d
    i64 5, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.val.i, i64 -4    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !60
  %i.i = invoke noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.h)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.j ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  store ptr %i.k, ptr %i.b, align 8, !noalias !60
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !63
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i

bb.e:                                             ; preds = %.noexc
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i: ; preds = %bb.e, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !60
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEEB13_.exit

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %.val.i, i64 -5    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !60
  %i.o = invoke noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.n)
          to label %.noexc2 unwind label %bb.h

.noexc2:                                          ; preds = %bb.f
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 %i.p ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  store ptr %i.q, ptr %i.a, align 8, !noalias !60
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !68
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i

bb.g:                                             ; preds = %.noexc2
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i: ; preds = %bb.g, %.noexc2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !60
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEEB13_.exit

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !73, !alias.scope !74, !noundef !32
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECsa9sSWSfjDbm_4jiff.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECsa9sSWSfjDbm_4jiff.exit unwind label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEEB13_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i, %bb.b, %bb.b, %bb.b, %bb.b, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !range !73, !alias.scope !77, !noundef !32
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECsa9sSWSfjDbm_4jiff.exit5, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEEB13_.exit
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECsa9sSWSfjDbm_4jiff.exit5

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECsa9sSWSfjDbm_4jiff.exit5: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEEB13_.exit, %bb.j
  ret void

bb.k:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECsa9sSWSfjDbm_4jiff.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner14CachedTimeZoneEBL_(ptr %.40.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = ptrtoint ptr %.40.val to i64
  %i.d = and i64 %i.c, 7
  switch i64 %i.d, label %bb.b [
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit
    i64 3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit
    i64 4, label %bb.c
    i64 5, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.40.val, i64 -4   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = tail call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.e)
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  store ptr %i.h, ptr %i.b, align 8
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !80
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %.40.val, i64 -5   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = tail call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.k)
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  store ptr %i.n, ptr %i.a, align 8
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !85
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner14CachedTimeZoneEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.c, align 8, !noundef !32 ; 3 uses
  %i.d = ptrtoint ptr %.val to i64
  %i.e = and i64 %i.d, 7
  switch i64 %i.e, label %bb.b [
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit
    i64 3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit
    i64 4, label %bb.c
    i64 5, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 -4      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = invoke noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.f)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  store ptr %i.i, ptr %i.b, align 8
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !90
  %i.k = icmp eq i64 %i.j, 1
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYBW_NtNtBa_3cmp10PartialOrd2ltEB16_:bb.a
  %i.z = tail call noundef i8 @_RNvXs8_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y), !noalias !120 ; 2 uses
  %.not.i.i9.i = icmp ne i8 %i.z, -2
  %i.aa = icmp slt i8 %i.z, 0
  %.sroa.0.0.i.i10.i = and i1 %.not.i.i9.i, %i.aa
  br i1 %.sroa.0.0.i.i10.i, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB1c_.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.ab = add nuw nsw i64 %.sroa.01.1.i26.i, 1    ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.ab, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB1c_.exit.i, label %.lr.ph27.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB1c_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph27.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.ac = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ac)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB1c_.exit.i
  br i1 %.sroa.0.0.i.i.i, label %bb.q, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName7reverseBE_.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.ad = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1d_.exit

bb.p:                                             ; preds = %bb.i
  %..i11.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1f_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i11.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #21
  %i.ae = shl nuw nsw i64 %..i11.i, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1d_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName7reverseBE_.exit.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.i.i.i, %middle.block, %.preheader21.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i435054.i, %middle.block ], [ %.sroa.0.0.i435054.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.i.i.i ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1d_.exit

bb.q:                                             ; preds = %bb.n
  %i.ai = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %.not.i.i12.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i12.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName7reverseBE_.exit.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.preheader.i.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.aj = phi i64 [ %i.ai, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i435054.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i435054.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aj, 4
  br i1 %min.iters.check, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.preheader.i.i.i
  %n.vec = and i64 %i.aj, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = xor i64 %index, -1
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.ak, i64 %i.al ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x ptr>, ptr %i.am, align 8, !alias.scope !129, !noalias !133
  %wide.load54.a = load <2 x ptr>, ptr %i.ao, align 8, !alias.scope !129, !noalias !133
  %i.ap = getelementptr i8, ptr %i.an, i64 -8
  %i.aq = getelementptr i8, ptr %i.an, i64 -24
  %wide.load55.a = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !134, !noalias !135
  %wide.load56 = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !134, !noalias !135
  %reverse = shufflevector <2 x i64> %wide.load55.a, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse57.a = shufflevector <2 x i64> %wide.load56, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x i64> %reverse, ptr %i.am, align 8, !alias.scope !129, !noalias !133
  store <2 x i64> %reverse57.a, ptr %i.ar, align 8, !alias.scope !129, !noalias !133
  %i.as = getelementptr i8, ptr %i.an, i64 -8
  %i.at = getelementptr i8, ptr %i.an, i64 -24
  %reverse58.a = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x ptr> %wide.load54.a, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse58.a, ptr %i.as, align 8, !alias.scope !134, !noalias !135
  store <2 x ptr> %reverse59, ptr %i.at, align 8, !alias.scope !134, !noalias !135
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName7reverseBE_.exit.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.i.i.i.preheader

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.i.i.i.preheader: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.i.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.i.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.i.i.i.preheader, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.ba, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.i.i.i.preheader ] ; 3 uses
  %i.av = xor i64 %.sroa.0.016.i.i.i, -1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %i.ak, i64 %i.av ; 2 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !alias.scope !129, !noalias !133, !nonnull !32, !noundef !32
  %i.az = load i64, ptr %i.ax, align 8, !alias.scope !134, !noalias !135
  store i64 %i.az, ptr %i.aw, align 8, !alias.scope !129, !noalias !133
  store ptr %i.ay, ptr %i.ax, align 8, !alias.scope !134, !noalias !135
  %i.ba = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ba, %i.aj
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName7reverseBE_.exit.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.i.i.i, !llvm.loop !139

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1d_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName7reverseBE_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ah, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName7reverseBE_.exit.i ], [ %i.af, %bb.p ], [ %i.ad, %bb.o ] ; 2 uses
  %i.bb = lshr i64 %.sroa.023.0, 1
  %i.bc = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bd = sub nsw i64 %factor, %i.bb
  %i.be = add nuw nsw i64 %i.bc, %factor
  %i.bf = mul i64 %i.bd, %.sroa.0.0
  %i.bg = mul i64 %i.be, %.sroa.0.0
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 false)
  %i.bj = trunc nuw nsw i64 %i.bi to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1g_.exit
  %.sroa.02.136 = phi i64 [ %i.bk, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1g_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1g_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bk = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noundef !32
  %.not28 = icmp ult i8 %i.bm, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1g_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1g_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1g_.exit ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bo, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bk
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !32 ; 3 uses
  %i.br = lshr i64 %i.bq, 1                       ; 5 uses
  %i.bs = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bt = add nuw i64 %i.br, %i.bs                ; 5 uses
  %i.bu = sub i64 %.sroa.09.0, %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bu ; 3 uses
  %i.bw = icmp samesign ugt i64 %i.bt, %3
  %i.bx = trunc i64 %.sroa.023.135 to i1
  %i.by = or i64 %i.bq, %.sroa.023.135
  %i.bz = trunc i64 %i.by to i1
  %or.cond3.i = or i1 %i.bw, %i.bz
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ca = trunc i64 %i.bq to i1
  br i1 %i.ca, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cb = shl nuw nsw i64 %i.bt, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1g_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bx, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cc = or i64 %i.br, 1
  %i.cd = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 1
  %i.cg = xor i32 %i.cf, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1f_(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef range(i64 0, 1152921504606846976) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #21
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.br
  %i.ci = or i64 %i.bs, 1
  %i.cj = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1f_(ptr noalias nofree noundef nonnull align 8 %i.ch, i64 noundef range(i64 0, 1152921504606846976) %i.bs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #21
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYBX_NtNtBa_3cmp10PartialOrd2ltEB17_(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef range(i64 0, 1152921504606846976) %i.bt, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.br, ptr noalias nofree noundef nonnull %5)
  %i.cn = shl nuw nsw i64 %i.bt, 1
  %i.co = or disjoint i64 %i.cn, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1g_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1g_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.co, %bb.x ], [ %i.cb, %bb.t ] ; 2 uses
  %i.cp = icmp ugt i64 %i.bk, 1
  br i1 %i.cp, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cq = add i64 %.sroa.02.1.lcssa, 1
  %i.cr = lshr i64 %.sroa.018.0, 1
  %i.cs = add nuw i64 %i.cr, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %6 = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %6, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ct = or i64 %1, 1
  %i.cu = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ct, i1 true)
  %i.cv = trunc nuw nsw i64 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 1
  %i.cx = xor i32 %i.cw, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1f_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #21
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvYNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime13DefaultCustomNtB5_6Custom11format_dateNtNtB7_6buffer14BorrowedWriterEB9_(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef readonly captures(none) dereferenceable(4) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %3, ptr noalias nofree noundef align 8 dereferenceable(24) %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc { i64, ptr } @_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB6_14BrokenDownTime18format_with_configNtNtB8_6buffer14BorrowedWriterNtB6_13DefaultCustomReEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %3, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 10, ptr noalias nofree noundef align 8 dereferenceable(24) %4) #23
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvYNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime13DefaultCustomNtB5_6Custom11format_timeNtNtB7_6buffer14BorrowedWriterEB9_(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef readonly captures(none) dereferenceable(4) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %3, ptr noalias nofree noundef align 8 dereferenceable(24) %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc { i64, ptr } @_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB6_14BrokenDownTime18format_with_configNtNtB8_6buffer14BorrowedWriterNtB6_13DefaultCustomReEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %3, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 8, ptr noalias nofree noundef align 8 dereferenceable(24) %4) #23
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvYNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime13DefaultCustomNtB5_6Custom15format_datetimeNtNtB7_6buffer14BorrowedWriterEB9_(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef readonly captures(none) dereferenceable(4) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %3, ptr noalias nofree noundef align 8 dereferenceable(24) %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.b = load i8, ptr %i.a, align 1, !range !140, !noundef !32
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc { i64, ptr } @_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB6_14BrokenDownTime18format_with_configNtNtB8_6buffer14BorrowedWriterNtB6_13DefaultCustomReEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %3, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 23, ptr noalias nofree noundef align 8 dereferenceable(24) %4) #23
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call fastcc { i64, ptr } @_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB6_14BrokenDownTime18format_with_configNtNtB8_6buffer14BorrowedWriterNtB6_13DefaultCustomReEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %3, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 24, ptr noalias nofree noundef align 8 dereferenceable(24) %4) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { i64, ptr } [ %i.e, %bb.c ], [ %i.d, %bb.b ]
  ret { i64, ptr } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvYNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime13DefaultCustomNtB5_6Custom18format_12hour_timeNtNtB7_6buffer14BorrowedWriterEB9_(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef readonly captures(none) dereferenceable(4) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %3, ptr noalias nofree noundef align 8 dereferenceable(24) %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.b = load i8, ptr %i.a, align 1, !range !140, !noundef !32
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc { i64, ptr } @_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB6_14BrokenDownTime18format_with_configNtNtB8_6buffer14BorrowedWriterNtB6_13DefaultCustomReEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %3, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 12, ptr noalias nofree noundef align 8 dereferenceable(24) %4) #23
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call fastcc { i64, ptr } @_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB6_14BrokenDownTime18format_with_configNtNtB8_6buffer14BorrowedWriterNtB6_13DefaultCustomReEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %3, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 13, ptr noalias nofree noundef align 8 dereferenceable(24) %4) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { i64, ptr } [ %i.e, %bb.c ], [ %i.d, %bb.b ]
  ret { i64, ptr } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.c = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %1, ptr noundef %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.d

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !141
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
          to label %.thread unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 1, 8) i8 @_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = shl i32 %0, 8
  %i.b = ashr i32 %i.a, 24                        ; 3 uses
  %i.c = icmp ult i32 %i.b, 3                     ; 2 uses
  %i.d = or disjoint i32 %i.b, 12
  %.sroa.02.0.i = select i1 %i.c, i32 %i.d, i32 %i.b
  %sext.i = shl i32 %0, 16
  %i.e = ashr exact i32 %sext.i, 16
  %i.f = add nsw i32 %i.e, 32800
  %.neg.i = sext i1 %i.c to i32
  %i.g = add nsw i32 %i.f, %.neg.i                ; 3 uses
  %i.h = ashr i32 %0, 24
  %i.i = udiv i32 %i.g, 100
  %i.j = mul nuw nsw i32 %i.g, 1461
  %i.k = lshr i32 %i.j, 2
  %i.l = udiv i32 %i.g, 400
  %i.m = mul nsw i32 %.sroa.02.0.i, 979
  %i.n = add nsw i32 %i.m, -2919
  %i.o = lshr i32 %i.n, 5
  %i.p = add nsw i32 %i.h, -12699423
  %i.q = sub nuw nsw i32 %i.p, %i.i
  %i.r = add nuw nsw i32 %i.q, %i.l
  %i.s = add nsw i32 %i.r, %i.k
  %i.t = add nsw i32 %i.s, %i.o
  %i.u = mul i32 %i.t, 613566757
  %i.v = add i32 %i.u, -1879048192
  %i.w = lshr i32 %i.v, 29                        ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.b, label %_RNvMs1_NtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB5_12UnixEpochDay7weekday.exit, !prof !150

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #24
  unreachable

_RNvMs1_NtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB5_12UnixEpochDay7weekday.exit: ; preds = %bb.a
  %i.y = trunc nuw nsw i32 %i.w to i8
  ret i8 %i.y
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE6resizeCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i8 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !32 ; 6 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE8truncateCsa9sSWSfjDbm_4jiff.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !151, !alias.scope !152, !noundef !32
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsa9sSWSfjDbm_4jiff.exit.i, !prof !157

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 1, i64 noundef 1)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !158
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsa9sSWSfjDbm_4jiff.exit.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsa9sSWSfjDbm_4jiff.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !158, !nonnull !32, !noundef !32 ; 2 uses
  %i.l = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr i8, ptr %i.k, i64 %i.i     ; 2 uses
  %i.n = icmp ugt i64 %i.e, 1
  br i1 %i.n, label %._crit_edge.thread.i, label %._crit_edge.i

._crit_edge.thread.i:                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsa9sSWSfjDbm_4jiff.exit.i
  %i.o = add i64 %i.e, -1                         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 %2, i64 %i.o, i1 false)
  %i.p = add i64 %i.o, %i.i                       ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.k, i64 %i.p
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsa9sSWSfjDbm_4jiff.exit.i, %._crit_edge.thread.i
end_hunk_1
