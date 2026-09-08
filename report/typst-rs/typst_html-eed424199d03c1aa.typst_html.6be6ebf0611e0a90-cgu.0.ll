Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_html-eed424199d03c1aa.typst_html.6be6ebf0611e0a90-cgu.0?download=true
inline.NumInlined: 8941
inline.NumDeleted: 4345
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromBM_:bb.a
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBG_6string9EcoStringEEEB1f_(ptr nonnull %.val, i64 %.val3) #49
          to label %bb.h unwind label %bb.g

_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB6_6string9EcoStringEE17extend_from_sliceBL_.exit: ; preds = %_RNvYTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB7_.exit.i, %bb.a
  %i.s = phi i64 [ 0, %bb.a ], [ %i.p, %_RNvYTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB7_.exit.i ]
  %i.t = phi ptr [ inttoptr (i64 16 to ptr), %bb.a ], [ %i.e, %_RNvYTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB7_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = insertvalue { ptr, i64 } poison, ptr %i.t, 0
  %i.v = insertvalue { ptr, i64 } %i.u, i64 %i.s, 1
  ret { ptr, i64 } %i.v

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.r
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB5_10PropertiesNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1661, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1660)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromBL_(ptr noalias nofree noundef nonnull readonly align 16 captures(none) dead_on_return dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 8 uses
  %i.b = alloca [144 x i8], align 16              ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr inttoptr (i64 16 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22897
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22898)
  store i64 0, ptr %i.b, align 16, !alias.scope !22899, !noalias !22900
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !22899, !noalias !22900
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %.sroa.56.0..sroa_idx.i.i, ptr noundef nonnull readonly align 16 dereferenceable(128) %0, i64 128, i1 false), !alias.scope !22901, !noalias !22902
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeE7reserveBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef 1)
          to label %bb.b unwind label %bb.e, !noalias !22903

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22897
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, ptr noundef nonnull align 16 dereferenceable(144) %i.b, i64 144, i1 false), !noalias !22897
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !22904, !noalias !22905, !noundef !57 ; 3 uses
  %i.g = load i64, ptr %i.a, align 16, !alias.scope !22904, !noalias !22905, !noundef !57 ; 2 uses
  %.not.i.i20.i = icmp eq i64 %i.f, %i.g
  %.pre = load ptr, ptr %i.c, align 8             ; 2 uses
  %.pre3 = load i64, ptr %i.d, align 8            ; 5 uses
  br i1 %.not.i.i20.i, label %bb.g, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.lr.ph.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.lr.ph.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0.0.copyload9.pre.i = load i64, ptr %i.h, align 16, !alias.scope !22906, !noalias !22897 ; 2 uses
  %i.i = icmp eq i64 %i.g, 0
  %.not.i = icmp eq i64 %.sroa.0.0.copyload9.pre.i, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22908)
  store i64 1, ptr %i.a, align 16, !alias.scope !22904, !noalias !22909
  tail call void @llvm.assume(i1 %i.i)
  br i1 %.not.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.thread.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.thread.thread.loopexit.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.thread.thread.loopexit.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw [128 x i8], ptr %.pre, i64 %.pre3 ; 2 uses
  store i64 %.sroa.0.0.copyload9.pre.i, ptr %i.k, align 16, !noalias !22897
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(120) %i.j, i64 120, i1 false), !noalias !22902
  %i.l = add i64 %.pre3, 1
  br label %bb.g

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.thread.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.lr.ph.i
  %.not.i.i.i = icmp eq i64 %i.f, 1
  br i1 %.not.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.thread.i
  %i.m = add i64 %i.f, -1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeEBG_(ptr noalias nofree noundef nonnull align 16 %i.n, i64 noundef %i.m)
          to label %bb.g unwind label %bb.f

bb.d:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !22897
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeEBG_(ptr noalias nofree noundef nonnull align 16 %.sroa.56.0..sroa_idx.i.i, i64 noundef 1)
          to label %.body unwind label %bb.d, !noalias !22897

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.p, %bb.e ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c) #49
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.thread.i, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.thread.thread.loopexit.i, %bb.b, %bb.c
  %i.r = phi i64 [ %.pre3, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.thread.i ], [ %i.l, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.thread.thread.loopexit.i ], [ %.pre3, %bb.b ], [ %.pre3, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.s = insertvalue { ptr, i64 } poison, ptr %.pre, 0
  %i.t = insertvalue { ptr, i64 } %i.s, i64 %i.r, 1
  ret { ptr, i64 } %i.t

bb.h:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.i:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 8 uses
  %i.b = alloca [88 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr inttoptr (i64 16 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store i64 0, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22936)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22937
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22938)
  store i64 0, ptr %i.b, align 8, !alias.scope !22939, !noalias !22940
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !22939, !noalias !22940
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.56.0..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(72) %0, i64 72, i1 false), !alias.scope !22941, !noalias !22936
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef 1)
          to label %bb.b unwind label %bb.i, !noalias !22942

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22937
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !noalias !22937
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !22943, !noalias !22944, !noundef !57 ; 4 uses
  %.promoted.i = load i64, ptr %i.a, align 8, !alias.scope !22943, !noalias !22944 ; 3 uses
  %.not.i.i22.i = icmp eq i64 %i.f, %.promoted.i
  br i1 %.not.i.i22.i, label %.loopexit, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.lr.ph.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.lr.ph.i: ; preds = %bb.b
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.5.0.copyload8.i = load i8, ptr %.sroa.5.0..sroa_idx7.i, align 8, !alias.scope !22945, !noalias !22937 ; 2 uses
  %.not.i = icmp eq i8 %.sroa.5.0.copyload8.i, 2
  br i1 %.not.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.lr.ph.split.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.lr.ph.split.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.lr.ph.i
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !22936, !noalias !22942, !nonnull !57
  %.promoted26.i = load i64, ptr %i.d, align 8, !alias.scope !22936, !noalias !22942 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.f, 1
  tail call void @llvm.assume(i1 %.not.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22947)
  %i.h = icmp eq i64 %.promoted.i, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %.promoted26.i ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(72) %0, i64 64, i1 false), !noalias !22936
  %.sroa.4.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i8 %.sroa.5.0.copyload8.i, ptr %.sroa.4.0..sroa_idx.us.i, align 8, !noalias !22937
  %.sroa.511.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.j, i64 65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.511.0..sroa_idx.us.i, ptr noundef nonnull readonly align 1 dereferenceable(7) %i.i, i64 7, i1 false), !noalias !22936
  %i.k = add i64 %.promoted26.i, 1
  store i64 %i.k, ptr %i.d, align 8, !alias.scope !22936, !noalias !22942
  br label %.loopexit

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22947)
  %i.l = icmp eq i64 %.promoted.i, 0
  tail call void @llvm.assume(i1 %i.l)
  store i64 1, ptr %i.a, align 8, !noalias !22937
  %i.m = icmp eq i64 %i.f, 1
  br i1 %i.m, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i
  %i.n = add i64 %i.f, -1                         ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %1 = icmp eq i64 %i.n, 0
  br i1 %1, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.p = icmp eq i64 %i.r, %i.n
  br i1 %i.p, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i.i.i.i.i4.i5 = phi i64 [ %i.r, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.0.0.i.i.i.i.i.i.i4.i5
  %i.r = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i4.i5, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.q)
          to label %bb.d unwind label %bb.f, !noalias !22937

bb.e:                                             ; preds = %.lr.ph7
  %i.s = add i64 %.sroa.0.1.i.i.i.i.i.i.i5.i6, 1  ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.n
  br i1 %i.t, label %.body, label %.lr.ph7

bb.f:                                             ; preds = %.lr.ph
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = icmp eq i64 %i.r, %i.n
  br i1 %i.v, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i.i.i.i.i.i5.i6 = phi i64 [ %i.s, %bb.e ], [ %i.r, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.0.1.i.i.i.i.i.i.i5.i6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.w) #49
          to label %bb.e unwind label %bb.g, !noalias !22937

bb.g:                                             ; preds = %.lr.ph7
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !22948
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !22937
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_EECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(88) %i.b) #49
          to label %.body unwind label %bb.h, !noalias !22937

.body:                                            ; preds = %bb.e, %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.u, %bb.f ], [ %i.u, %bb.e ]
  %.val = load ptr, ptr %i.c, align 8, !nonnull !57, !noundef !57
  %.val3 = load i64, ptr %i.d, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs9gmjTwvRRSu_10typst_html(ptr nonnull %.val, i64 %.val3) #49
          to label %bb.k unwind label %bb.j

.loopexit:                                        ; preds = %bb.d, %bb.c, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.lr.ph.split.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22937
  %i.aa = load ptr, ptr %i.c, align 8, !nonnull !57, !noundef !57
  %i.ab = load i64, ptr %i.d, align 8, !noundef !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ac = insertvalue { ptr, i64 } poison, ptr %i.aa, 0
  %i.ad = insertvalue { ptr, i64 } %i.ac, i64 %i.ab, 1
  ret { ptr, i64 } %i.ad

bb.j:                                             ; preds = %.body
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr inttoptr (i64 16 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22963
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22964)
  store i64 0, ptr %i.b, align 8, !alias.scope !22965, !noalias !22966
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !22965, !noalias !22966
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56.0..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !alias.scope !22967, !noalias !22968
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef 1)
          to label %bb.b unwind label %bb.g, !noalias !22969

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22963
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !22963
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !22970, !noalias !22971, !noundef !57 ; 3 uses
  %i.g = load i64, ptr %i.a, align 8, !alias.scope !22970, !noalias !22971, !noundef !57 ; 2 uses
  %.not.i.i23.i = icmp eq i64 %i.f, %i.g
  %.pre = load ptr, ptr %i.c, align 8             ; 4 uses
  %.pre6 = load i64, ptr %i.d, align 8            ; 8 uses
  br i1 %.not.i.i23.i, label %.loopexit, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.lr.ph.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.lr.ph.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0.0.copyload9.pre.i = load ptr, ptr %i.h, align 8, !alias.scope !22972, !noalias !22963 ; 2 uses
  %i.i = icmp eq i64 %i.g, 0
  %.not.i = icmp eq ptr %.sroa.0.0.copyload9.pre.i, null
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22974)
  store i64 1, ptr %i.a, align 8, !alias.scope !22970, !noalias !22975
  tail call void @llvm.assume(i1 %i.i)
  br i1 %.not.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.thread.loopexit.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.thread.loopexit.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %.pre6 ; 2 uses
  store ptr %.sroa.0.0.copyload9.pre.i, ptr %i.k, align 8, !noalias !22963
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.j, i64 16, i1 false), !noalias !22968
  %i.l = add i64 %.pre6, 1
  br label %.loopexit

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.lr.ph.i
  %.not.i.i.i = icmp eq i64 %i.f, 1
  br i1 %.not.i.i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i
  %i.m = add i64 %i.f, -1                         ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %1 = icmp eq i64 %i.m, 0
  br i1 %1, label %.loopexit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i4.i: ; preds = %.lr.ph
  %i.o = icmp eq i64 %i.q, %i.m
  br i1 %i.o, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i4.i
  %.sroa.0.0.i.i.i.i.i.i.i5.i9 = phi i64 [ %i.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i4.i ], [ 0, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.0.i.i.i.i.i.i.i5.i9
  %i.q = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i5.i9, 1 ; 4 uses
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i4.i unwind label %bb.d, !noalias !22963

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit7.i.i.i.i.i.i.i6.i: ; preds = %.lr.ph11
  %i.r = add i64 %.sroa.0.1.i.i.i.i.i.i.i7.i10, 1 ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.m
  br i1 %i.s, label %.body, label %.lr.ph11

bb.d:                                             ; preds = %.lr.ph
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = icmp eq i64 %i.q, %i.m
  br i1 %i.u, label %.body, label %.lr.ph11

.lr.ph11:                                         ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit7.i.i.i.i.i.i.i6.i
  %.sroa.0.1.i.i.i.i.i.i.i7.i10 = phi i64 [ %i.r, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit7.i.i.i.i.i.i.i6.i ], [ %i.q, %bb.d ] ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.1.i.i.i.i.i.i.i7.i10
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit7.i.i.i.i.i.i.i6.i unwind label %bb.e, !noalias !22963

bb.e:                                             ; preds = %.lr.ph11
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !22963
  unreachable

bb.f:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !22963
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj1_EECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b) #49
          to label %..body_crit_edge unwind label %bb.f, !noalias !22963

..body_crit_edge:                                 ; preds = %bb.g
  %.val.pre = load ptr, ptr %i.c, align 8
  %.val3.pre = load i64, ptr %i.d, align 8
  br label %.body

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit7.i.i.i.i.i.i.i6.i, %bb.d, %..body_crit_edge
  %.val3 = phi i64 [ %.val3.pre, %..body_crit_edge ], [ %.pre6, %bb.d ], [ %.pre6, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit7.i.i.i.i.i.i.i6.i ]
  %.val = phi ptr [ %.val.pre, %..body_crit_edge ], [ %.pre, %bb.d ], [ %.pre, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit7.i.i.i.i.i.i.i6.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %..body_crit_edge ], [ %i.t, %bb.d ], [ %i.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit7.i.i.i.i.i.i.i6.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr nonnull %.val, i64 %.val3) #49
          to label %bb.i unwind label %bb.h

.loopexit:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i4.i, %bb.c, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.thread.loopexit.i, %bb.b
  %2 = phi i64 [ %.pre6, %bb.b ], [ %.pre6, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i ], [ %i.l, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.thread.loopexit.i ], [ %.pre6, %bb.c ], [ %.pre6, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i4.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = insertvalue { ptr, i64 } poison, ptr %.pre, 0
  %i.aa = insertvalue { ptr, i64 } %i.z, i64 %2, 1
  ret { ptr, i64 } %i.aa

bb.h:                                             ; preds = %.body
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.i:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j2_E4fromCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
  %i.b = alloca [64 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr inttoptr (i64 16 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22992
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22993)
  store i64 0, ptr %i.b, align 8, !alias.scope !22994, !noalias !22995
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !22994, !noalias !22995
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.56.0..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %0, i64 48, i1 false), !alias.scope !22996, !noalias !22997
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef 2)
          to label %bb.b unwind label %bb.g, !noalias !22998

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !22992
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !22999, !noalias !23000, !noundef !57 ; 5 uses
  %i.g = load i64, ptr %i.a, align 8, !alias.scope !22999, !noalias !23000, !noundef !57 ; 4 uses
  %.not.i.i23.i = icmp eq i64 %i.f, %i.g
  %.pre = load ptr, ptr %i.c, align 8             ; 5 uses
  %.pre14 = load i64, ptr %i.d, align 8           ; 4 uses
  br i1 %.not.i.i23.i, label %.loopexit, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.lr.ph.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.lr.ph.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23002)
  %i.i = add nuw nsw i64 %i.g, 1                  ; 4 uses
  store i64 %i.i, ptr %i.a, align 8, !alias.scope !22999, !noalias !23003
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.g
  %.sroa.0.0.copyload9.i5 = load ptr, ptr %i.j, align 8, !alias.scope !23004, !noalias !22992 ; 2 uses
  %.not.i6 = icmp eq ptr %.sroa.0.0.copyload9.i5, null
  br i1 %.not.i6, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.lr.ph.i
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.g
  %.sroa.7.0..sroa_idx10.i26 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %.pre14 ; 2 uses
  store ptr %.sroa.0.0.copyload9.i5, ptr %i.l, align 8, !noalias !22992
  %.sroa.4.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i27, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx10.i26, i64 16, i1 false), !noalias !22992
  %i.m = add i64 %.pre14, 1                       ; 2 uses
  %.not.i.i.i28 = icmp eq i64 %i.f, %i.i
  br i1 %.not.i.i.i28, label %.loopexit, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i: ; preds = %.lr.ph.preheader, %.lr.ph
  %i.n = phi i64 [ %i.t, %.lr.ph ], [ %i.m, %.lr.ph.preheader ] ; 3 uses
  %i.o = phi i64 [ %i.p, %.lr.ph ], [ %i.i, %.lr.ph.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23006)
  %i.p = add nuw nsw i64 %i.o, 1                  ; 4 uses
  store i64 %i.p, ptr %i.a, align 8, !alias.scope !22999, !noalias !23007
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.o
  %.sroa.0.0.copyload9.i = load ptr, ptr %i.q, align 8, !alias.scope !23008, !noalias !22992 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload9.i, null
  br i1 %.not.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.o
  %.sroa.7.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.n ; 2 uses
  store ptr %.sroa.0.0.copyload9.i, ptr %i.s, align 8, !noalias !22992
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx10.i, i64 16, i1 false), !noalias !22992
  %i.t = add i64 %i.n, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.f, %i.p
  br i1 %.not.i.i.i, label %.loopexit, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.lr.ph.i
  %i.u = phi i64 [ %.pre14, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.lr.ph.i ], [ %i.n, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i ] ; 4 uses
  %.lcssa4 = phi i64 [ %i.i, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.lr.ph.i ], [ %i.p, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i ] ; 3 uses
  %i.v = icmp eq i64 %i.f, %.lcssa4
  br i1 %i.v, label %.loopexit, label %.lr.ph30

.lr.ph30:                                         ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i
  %i.w = sub nuw i64 %i.f, %.lcssa4               ; 3 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa4 ; 2 uses
  br label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i4.i: ; preds = %bb.c
  %i.y = icmp eq i64 %i.aa, %i.w
  br i1 %i.y, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph30, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i4.i
  %.sroa.0.0.i.i.i.i.i.i.i5.i29 = phi i64 [ 0, %.lr.ph30 ], [ %i.aa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i4.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.sroa.0.0.i.i.i.i.i.i.i5.i29
  %i.aa = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i5.i29, 1 ; 4 uses
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i4.i unwind label %bb.d, !noalias !22992

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit7.i.i.i.i.i.i.i6.i: ; preds = %.lr.ph32
  %i.ab = add i64 %.sroa.0.1.i.i.i.i.i.i.i7.i31, 1 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.w
  br i1 %i.ac, label %.body, label %.lr.ph32

bb.d:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = icmp eq i64 %i.aa, %i.w
  br i1 %i.ae, label %.body, label %.lr.ph32

.lr.ph32:                                         ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit7.i.i.i.i.i.i.i6.i
  %.sroa.0.1.i.i.i.i.i.i.i7.i31 = phi i64 [ %i.ab, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit7.i.i.i.i.i.i.i6.i ], [ %i.aa, %bb.d ] ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.sroa.0.1.i.i.i.i.i.i.i7.i31
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit7.i.i.i.i.i.i.i6.i unwind label %bb.e, !noalias !22992

bb.e:                                             ; preds = %.lr.ph32
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !22992
  unreachable

bb.f:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !22992
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_EECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(64) %i.b) #49
          to label %..body_crit_edge unwind label %bb.f, !noalias !22992

..body_crit_edge:                                 ; preds = %bb.g
  %.val.pre = load ptr, ptr %i.c, align 8
  %.val3.pre = load i64, ptr %i.d, align 8
  br label %.body

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit7.i.i.i.i.i.i.i6.i, %bb.d, %..body_crit_edge
  %.val3 = phi i64 [ %.val3.pre, %..body_crit_edge ], [ %i.u, %bb.d ], [ %i.u, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit7.i.i.i.i.i.i.i6.i ]
  %.val = phi ptr [ %.val.pre, %..body_crit_edge ], [ %.pre, %bb.d ], [ %.pre, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit7.i.i.i.i.i.i.i6.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %..body_crit_edge ], [ %i.ad, %bb.d ], [ %i.ad, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit7.i.i.i.i.i.i.i6.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr nonnull %.val, i64 %.val3) #49
          to label %bb.i unwind label %bb.h

.loopexit:                                        ; preds = %.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i4.i, %.lr.ph.preheader, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i, %bb.b
  %i.aj = phi i64 [ %i.u, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i4.i ], [ %i.u, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i ], [ %.pre14, %bb.b ], [ %i.m, %.lr.ph.preheader ], [ %i.t, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = insertvalue { ptr, i64 } poison, ptr %.pre, 0
  %i.al = insertvalue { ptr, i64 } %i.ak, i64 %i.aj, 1
  ret { ptr, i64 } %i.al

bb.h:                                             ; preds = %.body
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.i:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXsr_NtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB5_10PropertiesNtNtCs3oUPovFnLWP_4core7default7Default7default() unnamed_addr #31 {
bb.a:
  ret { ptr, i64 } { ptr inttoptr (i64 16 to ptr), i64 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations5valuedNtNtB7_4cast7Reflect5input(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 16)) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_RNvNvXs0_NtNtCsdaEETE4DqmE_13typst_library11foundations5floatdNtNtB9_2ty10NativeType4data4DATA, ptr %i.a, align 8
  store i64 34, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal noundef zeroext i1 @_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations5valuedNtNtB7_4cast7Reflect8castable(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #27 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !67, !noundef !57 ; 2 uses
  %i.b = icmp ne i64 %i.a, 30
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -5
  %switch = icmp ult i64 %i.c, 2
  ret i1 %switch
end_hunk_0
