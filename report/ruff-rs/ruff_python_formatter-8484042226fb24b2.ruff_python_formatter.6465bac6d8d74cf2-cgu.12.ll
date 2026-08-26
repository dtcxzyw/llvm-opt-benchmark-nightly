Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_formatter-8484042226fb24b2.ruff_python_formatter.6465bac6d8d74cf2-cgu.12?download=true
inline.NumInlined: 438
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RNvXs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_22FormatTrailingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt:bb.a
  %i.ac = load i8, ptr %i.ab, align 1, !range !80, !noundef !3
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = or i1 %.sroa.0.0, %i.ad                 ; 2 uses
  br i1 %i.ae, label %.lr.ph.i, label %bb.g

bb.e:                                             ; preds = %bb.c
  store i32 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.l, %bb.e
  ret void

bb.g:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvXs0_NtBS_6formatNtB2N_22FormatTrailingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBU_7context15PyFormatContextE3fmt0EBU_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.u, ptr %i.c, align 8
  call void @_RNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_30FormatTrailingEndOfLineCommentINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  %i.af = load i32, ptr %i.d, align 8, !range !59, !noundef !3
  %.not4 = icmp eq i32 %i.af, -1
  br i1 %.not4, label %bb.j, label %bb.i

.lr.ph.i:                                         ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvXs0_NtBS_6formatNtB2N_22FormatTrailingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBU_7context15PyFormatContextE3fmt0EBU_.exit
  %i.ag = load i32, ptr %i.u, align 4, !noundef !3
  %i.ah = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.ai = load ptr, ptr %i.n, align 8, !nonnull !3, !align !47, !noundef !3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !3, !nonnull !3
  %i.al = call noundef nonnull align 8 ptr %i.ak(ptr noundef nonnull %i.ah) ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !3, !noundef !3
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !noundef !3
  %i.ap = call noundef i32 @_RNvNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer12lines_before(i32 noundef %i.ag, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.ap, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.u, ptr %i.e, align 8
  store ptr %i.f, ptr %i.g, align 8
  store ptr @42, ptr %i.o, align 8
  store ptr %i.e, ptr %i.p, align 8
  store ptr @23, ptr %i.q, align 8
  store ptr %i.g, ptr %i.h, align 8
  store i64 2, ptr %i.r, align 8
  store ptr %i.h, ptr %i.i, align 8
  store ptr @4, ptr %i.s, align 8
  store i32 0, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !690
  call void @_RNvXs7_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_10LineSuffixNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatB12_E3fmtB16_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !695, !inline_history !102
  %i.aq = load i32, ptr %i.b, align 8, !range !59, !noalias !690, !noundef !3 ; 2 uses
  %.not.i = icmp eq i32 %i.aq, -1
  br i1 %.not.i, label %.lr.ph.i.1, label %bb.l

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !690
  call void @_RNvXst_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_12ExpandParentINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1k_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !695, !inline_history !102
  %i.ar = load i32, ptr %i.b, align 8, !range !59, !noalias !690, !noundef !3 ; 2 uses
  %.not.i.1 = icmp eq i32 %i.ar, -1
  br i1 %.not.i.1, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  store i8 1, ptr %i.aa, align 1
  br label %bb.b

bb.l:                                             ; preds = %.lr.ph.i.1, %.lr.ph.i
  %.lcssa = phi i32 [ %i.aq, %.lr.ph.i ], [ %i.ar, %.lr.ph.i.1 ]
  %.sroa.4.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx8, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i32 %.lcssa, ptr %0, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_22FormatDanglingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [4 x i8], align 4                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [1 x i8], align 1                 ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !align !47, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !nonnull !3
  %i.n = tail call noundef nonnull align 8 ptr %i.m(ptr noundef nonnull %i.i)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noundef !3 ; 2 uses
  %i.r = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add i64 %i.q, 1                          ; 2 uses
  store i64 %i.s, ptr %i.p, align 8
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %bb.c, !prof !66

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  store ptr %i.u, ptr %i.h, align 8
  %i.v = load i64, ptr %1, align 8, !range !496, !noundef !3
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.x, align 8, !nonnull !3, !align !208, !noundef !3
  %i.aa = load i64, ptr %i.y, align 8, !noundef !3
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.ab = load i64, ptr %i.x, align 8, !range !513, !noundef !3
  %i.ac = load ptr, ptr %i.y, align 8, !noundef !3
  %i.ad = invoke { ptr, i64 } @_RINvMs0_NtCs8CpBcHC8tKo_21ruff_python_formatter8commentsNtB6_8Comments8danglingNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefEB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, i64 noundef %i.ab, ptr noundef %i.ac)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit:                                        ; preds = %.lr.ph.i19.1, %.lr.ph.i19
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i
  %lpad.loopexit76 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.i13.1, %.lr.ph.i13
  %lpad.loopexit79 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.s, %bb.m
  %lpad.loopexit81 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e
  %lpad.loopexit.split-lp82 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit76, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit79, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit81, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp82, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !696)
  call void @llvm.experimental.noalias.scope.decl(metadata !699)
  call void @llvm.experimental.noalias.scope.decl(metadata !702)
  %i.ae = load ptr, ptr %i.h, align 8, !alias.scope !705, !nonnull !3, !noundef !3 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !noalias !705, !noundef !3
  %i.ag = add i64 %i.af, -1                       ; 2 uses
  store i64 %i.ag, ptr %i.ae, align 8, !noalias !705
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit

bb.f:                                             ; preds = %.loopexit.split-lp
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataE9drop_slowBG_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit unwind label %bb.w

bb.g:                                             ; preds = %bb.e
  %i.ai = extractvalue { ptr, i64 } %i.ad, 0
  %i.aj = extractvalue { ptr, i64 } %i.ad, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.sroa.4.0 = phi i64 [ %i.aa, %bb.d ], [ %i.aj, %bb.g ]
  %.sroa.03.0 = phi ptr [ %i.z, %bb.d ], [ %i.ai, %bb.g ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0) ]
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %.sroa.03.0, i64 %.sroa.4.0
  br label %bb.i

bb.i:                                             ; preds = %bb.t, %bb.h
  %.sroa.0.066 = phi ptr [ %.sroa.03.0, %bb.h ], [ %i.an, %bb.t ]
  %.sroa.0.0 = phi i1 [ true, %bb.h ], [ false, %bb.t ]
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.al = phi ptr [ %i.an, %bb.k ], [ %.sroa.0.066, %bb.i ] ; 7 uses
  %i.am = icmp eq ptr %i.al, %i.ak
  br i1 %i.am, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 12 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load i8, ptr %i.ao, align 1, !range !80, !noalias !706, !noundef !3
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.j, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvXs1_NtBS_6formatNtB2N_22FormatDanglingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBU_7context15PyFormatContextE3fmt0EBU_.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvXs1_NtBS_6formatNtB2N_22FormatDanglingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBU_7context15PyFormatContextE3fmt0EBU_.exit: ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  br i1 %.sroa.0.0, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  store i32 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !709)
  call void @llvm.experimental.noalias.scope.decl(metadata !712)
  call void @llvm.experimental.noalias.scope.decl(metadata !715)
  %i.as = load ptr, ptr %i.h, align 8, !alias.scope !718, !nonnull !3, !noundef !3 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !noalias !718, !noundef !3
  %i.au = add i64 %i.at, -1                       ; 2 uses
  store i64 %i.au, ptr %i.as, align 8, !noalias !718
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit25.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit25

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit25.sink.split: ; preds = %bb.l, %bb.v
  call void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataE9drop_slowBG_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit25

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit25: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit25.sink.split, %bb.l, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.m:                                             ; preds = %bb.o, %bb.p, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvXs1_NtBS_6formatNtB2N_22FormatDanglingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBU_7context15PyFormatContextE3fmt0EBU_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.al, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !noundef !3
  %i.ay = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.az = load ptr, ptr %i.j, align 8, !nonnull !3, !align !47, !noundef !3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !invariant.load !3, !nonnull !3
  %i.bc = invoke noundef nonnull align 8 ptr %i.bb(ptr noundef nonnull %i.ay)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.n:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvXs1_NtBS_6formatNtB2N_22FormatDanglingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBU_7context15PyFormatContextE3fmt0EBU_.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 9
  %i.be = load i8, ptr %i.bd, align 1, !range !80, !noundef !3
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i, label %.lr.ph.i13

.lr.ph.i:                                         ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 2, ptr %i.g, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !719
  invoke void @_RNvXs_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB4_4LineINtB6_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1a_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit, !inline_history !102

.noexc12:                                         ; preds = %.lr.ph.i
  %i.bg = load i32, ptr %i.d, align 8, !range !59, !noalias !719, !noundef !3 ; 2 uses
  %.not.i = icmp eq i32 %i.bg, -1
  br i1 %.not.i, label %bb.o, label %bb.r

bb.o:                                             ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.m

.lr.ph.i13:                                       ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !724
  invoke void @_RNvXsc_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_5SpaceINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1c_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !102

.noexc17:                                         ; preds = %.lr.ph.i13
  %i.bh = load i32, ptr %i.c, align 8, !range !59, !noalias !724, !noundef !3 ; 2 uses
  %.not.i15 = icmp eq i32 %i.bh, -1
  br i1 %.not.i15, label %.lr.ph.i13.1, label %bb.q

.lr.ph.i13.1:                                     ; preds = %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !724
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !724
  invoke void @_RNvXsc_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_5SpaceINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1c_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc17.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !102

.noexc17.1:                                       ; preds = %.lr.ph.i13.1
  %i.bi = load i32, ptr %i.c, align 8, !range !59, !noalias !724, !noundef !3 ; 2 uses
  %.not.i15.1 = icmp eq i32 %i.bi, -1
  br i1 %.not.i15.1, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.noexc17.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !724
  br label %bb.m

bb.q:                                             ; preds = %.noexc17.1, %.noexc17
  %.lcssa = phi i32 [ %i.bh, %.noexc17 ], [ %i.bi, %.noexc17.1 ]
  %.sroa.431.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.455.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.431.0..sroa_idx32, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !724
  br label %bb.v

bb.r:                                             ; preds = %.noexc12
  %.sroa.4.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.445.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx28, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.v

bb.s:                                             ; preds = %bb.m
  %i.bj = load ptr, ptr %i.bc, align 8, !nonnull !3, !noundef !3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !3
  %i.bm = invoke noundef i32 @_RNvNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11lines_after(i32 noundef %i.ax, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef %i.bl)
          to label %.lr.ph.i19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.lr.ph.i19:                                       ; preds = %bb.s
  store i32 %i.bm, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !729
  invoke void @_RNvXs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_13FormatCommentINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc23 unwind label %.loopexit, !inline_history !102

.noexc23:                                         ; preds = %.lr.ph.i19
  %i.bn = load i32, ptr %i.b, align 8, !range !59, !noalias !729, !noundef !3 ; 2 uses
  %.not.i21 = icmp eq i32 %i.bn, -1
  br i1 %.not.i21, label %.lr.ph.i19.1, label %bb.u

.lr.ph.i19.1:                                     ; preds = %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !729
  invoke void @_RNvXs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_16FormatEmptyLinesINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc23.1 unwind label %.loopexit, !inline_history !102

.noexc23.1:                                       ; preds = %.lr.ph.i19.1
  %i.bo = load i32, ptr %i.b, align 8, !range !59, !noalias !729, !noundef !3 ; 2 uses
  %.not.i21.1 = icmp eq i32 %i.bo, -1
  br i1 %.not.i21.1, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.noexc23.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i8 1, ptr %i.ar, align 4
  br label %bb.i

bb.u:                                             ; preds = %.noexc23.1, %.noexc23
  %.lcssa96 = phi i32 [ %i.bn, %.noexc23 ], [ %i.bo, %.noexc23.1 ]
  %.sroa.435.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.465.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.435.0..sroa_idx36, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.r, %bb.u
  %.lcssa.sink = phi i32 [ %.lcssa, %bb.q ], [ %i.bg, %bb.r ], [ %.lcssa96, %bb.u ]
  store i32 %.lcssa.sink, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !734)
  call void @llvm.experimental.noalias.scope.decl(metadata !737)
  call void @llvm.experimental.noalias.scope.decl(metadata !740)
  %i.bp = load ptr, ptr %i.h, align 8, !alias.scope !743, !nonnull !3, !noundef !3 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !743, !noundef !3
  %i.br = add i64 %i.bq, -1                       ; 2 uses
  store i64 %i.br, ptr %i.bp, align 8, !noalias !743
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit25.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit25

bb.w:                                             ; preds = %bb.f
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit: ; preds = %.loopexit.split-lp, %bb.f
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeNtB6_5Debug3fmtCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !208, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXNtCs2MoD74u7shA_14ruff_text_size5rangeNtB2_9TextRangeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_37FormatDanglingOpenParenthesisCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt:bb.a

bb.f:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvXs2_NtBS_6formatNtB2N_37FormatDanglingOpenParenthesisCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBU_7context15PyFormatContextE3fmt0EBU_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.g:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvXs2_NtBS_6formatNtB2N_37FormatDanglingOpenParenthesisCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBU_7context15PyFormatContextE3fmt0EBU_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 1, ptr %i.n, align 1
  br label %.backedge
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvYNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression18OperatorPrecedenceNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRBR_B2z_EE9call_onceBV_(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1, ptr noalias noundef readonly captures(none) dereferenceable(1) %2) unnamed_addr #0 {
bb.a:
  %.val = load i8, ptr %1, align 1, !range !753, !noundef !3
  %.val1 = load i8, ptr %2, align 1, !range !753, !noundef !3
  %i.a = zext nneg i8 %.val to i64
  %i.b = zext nneg i8 %.val1 to i64
  %i.c = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.a, i64 %i.b)
  ret i8 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_13FormatCommentINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !3, !align !208, !noundef !3 ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !47, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !3, !nonnull !3
  %i.i = tail call noundef nonnull align 8 ptr %i.h(ptr noundef nonnull %i.d) ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6format17normalize_comment(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull align 4 %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l)
  %i.m = load i64, ptr %i.b, align 8, !range !496, !noundef !3
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.q = load <2 x i32>, ptr %i.c, align 4
  store <2 x i32> %i.q, ptr %i.p, align 8
  invoke void @_RNvXs6_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_23FormatNormalizedCommentINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6format23FormatNormalizedCommentEBH_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #23
          to label %common.resume unwind label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.a, align 8, !range !4, !alias.scope !754, !noundef !3
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6format23FormatNormalizedCommentEBH_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.r, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i: ; preds = %bb.f
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6format23FormatNormalizedCommentEBH_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6format23FormatNormalizedCommentEBH_.exit: ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6format23FormatNormalizedCommentEBH_.exit, %bb.b
  ret void

bb.j:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs4_NtCs7Ma6rQP8bRy_14ruff_formatter9argumentsINtB5_9ArgumentsNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatB11_E3fmtB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !align !47, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  %.idx.i = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.sroa.0.02.i = phi ptr [ %i.m, %bb.c ], [ %i.b, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !764
  %i.g = load ptr, ptr %.sroa.0.02.i, align 8, !alias.scope !762, !noalias !766, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !762, !noalias !766, !nonnull !3, !align !47, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !3, !noalias !767, !nonnull !3
  call void %i.k(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !767, !inline_history !102
  %i.l = load i32, ptr %i.a, align 8, !range !59, !noalias !764, !noundef !3
  %.not.i = icmp eq i32 %i.l, -1
  br i1 %.not.i, label %bb.c, label %bb.b

._crit_edge.i:                                    ; preds = %bb.c, %bb.a
  store i32 -1, ptr %0, align 8, !alias.scope !759, !noalias !768
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !764
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !764
  %i.n = icmp eq ptr %i.m, %i.e
  br i1 %i.n, label %._crit_edge.i, label %.lr.ph.i

_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit: ; preds = %._crit_edge.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtCs8CpBcHC8tKo_21ruff_python_formatter8verbatimNtB5_28FormatVerbatimStatementRangeINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB7_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 14 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 5 uses
  %i.f = alloca [8 x i8], align 4                 ; 6 uses
  %i.g = alloca [4 x i8], align 4                 ; 5 uses
  %i.h = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !align !47, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !3, !nonnull !3
  %i.m = tail call noundef nonnull align 8 ptr %i.l(ptr noundef nonnull %i.h)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !3, !align !47, !noundef !3
  %i.p = load i32, ptr %1, align 4, !noundef !3   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i32, ptr %i.q, align 4, !noundef !3 ; 4 uses
  %i.s = tail call { ptr, i64 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens8in_range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, i32 noundef %i.p, i32 noundef %i.r) ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0        ; 3 uses
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.t, i64 %i.u ; 3 uses
  %.sroa.13.8.insert.ext = zext i32 %i.r to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i32, ptr %i.w, align 4              ; 3 uses
  %i.y = icmp eq i32 %i.x, 0
  %i.z = zext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.sroa.10.0 = phi i32 [ %i.p, %bb.a ], [ %.sroa.10.1.ph.ph, %.backedge ] ; 6 uses
  %.sroa.0.0 = phi ptr [ %i.t, %bb.a ], [ %.sroa.0.2.ph.ph, %.backedge ] ; 2 uses
  %.sroa.01.0 = phi i1 [ true, %bb.a ], [ false, %.backedge ]
  %i.ae = icmp eq ptr %.sroa.0.0, %i.v
  br i1 %i.ae, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.0.037.i = phi i32 [ %.sroa.0.1.i, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.af = phi ptr [ %i.ag, %bb.c ], [ %.sroa.0.0, %bb.b ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  %i.ai = load i8, ptr %i.ah, align 2, !range !769, !noalias !770, !noundef !3
  switch i8 %i.ai, label %bb.c [
    i8 106, label %bb.k
    i8 13, label %bb.g
    i8 14, label %bb.d
    i8 20, label %bb.e
    i8 21, label %bb.f
    i8 22, label %bb.e
    i8 23, label %bb.f
    i8 38, label %bb.e
    i8 39, label %bb.f
  ]

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.aj = icmp ult i32 %.sroa.10.0, %i.r
  br i1 %i.aj, label %bb.l, label %_RNvXs6_NtCs8CpBcHC8tKo_21ruff_python_formatter8verbatimNtB5_16LogicalLinesIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit

bb.c:                                             ; preds = %bb.f, %bb.e, %bb.d, %.lr.ph.i
  %.sroa.0.1.i = phi i32 [ %.sroa.0.037.i, %.lr.ph.i ], [ %.sroa.0.037.i, %bb.d ], [ %i.am, %bb.e ], [ %i.an, %bb.f ]
  %i.ak = icmp eq ptr %i.ag, %i.v
  br i1 %i.ak, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.al = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %i.al, label %bb.g, label %bb.c

bb.e:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.am = call i32 @llvm.uadd.sat.i32(i32 %.sroa.0.037.i, i32 1)
  br label %bb.c

bb.f:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.an = call i32 @llvm.usub.sat.i32(i32 %.sroa.0.037.i, i32 1)
  br label %bb.c

bb.g:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.025.0.i = load i32, ptr %i.af, align 4, !noalias !770, !noundef !3 ; 2 uses
  %.not.i = icmp ugt i32 %.sroa.10.0, %.sroa.025.0.i
  br i1 %.not.i, label %bb.h, label %bb.i, !prof !66

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #24, !noalias !770
  unreachable

bb.i:                                             ; preds = %bb.g
  %.sroa.027.0.in.i = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %.sroa.027.0.i = load i32, ptr %.sroa.027.0.in.i, align 4, !noalias !770, !noundef !3
  %.sroa.13.8.insert.ext58 = zext i32 %.sroa.025.0.i to i64
  %.sroa.13.12.insert.insert63 = or disjoint i64 %.sroa.13.8.insert.ext58, 4294967296
  br label %bb.l

_RNvXs6_NtCs8CpBcHC8tKo_21ruff_python_formatter8verbatimNtB5_16LogicalLinesIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %._crit_edge.i
  store i32 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.ab, %_RNvXs6_NtCs8CpBcHC8tKo_21ruff_python_formatter8verbatimNtB5_16LogicalLinesIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit
  ret void

bb.k:                                             ; preds = %.lr.ph.i
  store i32 0, ptr %0, align 8
  %.sroa.440.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 ptrtoint (ptr @65 to i32), ptr %.sroa.440.0..sroa_idx.sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ao = lshr i64 ptrtoint (ptr @65 to i64), 32
  %i.ap = trunc nuw i64 %i.ao to i32
  store i32 %i.ap, ptr %.sroa.541.0..sroa_idx, align 4
  %.sroa.743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 54, ptr %.sroa.743.0..sroa_idx, align 8
  br label %bb.j

bb.l:                                             ; preds = %._crit_edge.i, %bb.i
  %.sroa.13.0.ph.ph.in = phi i64 [ %.sroa.13.12.insert.insert63, %bb.i ], [ %.sroa.13.8.insert.ext, %._crit_edge.i ] ; 3 uses
  %.sroa.10.1.ph.ph = phi i32 [ %.sroa.027.0.i, %bb.i ], [ %i.r, %._crit_edge.i ]
  %.sroa.0.2.ph.ph = phi ptr [ %i.ag, %bb.i ], [ %i.v, %._crit_edge.i ]
  %.sroa.13.8.extract.trunc98 = trunc i64 %.sroa.13.0.ph.ph.in to i32 ; 6 uses
  %.sroa.13.12.extract.shift99 = lshr i64 %.sroa.13.0.ph.ph.in, 32 ; 2 uses
  %i.aq = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.ar = load ptr, ptr %i.i, align 8, !nonnull !3, !align !47, !noundef !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !invariant.load !3, !nonnull !3
  %i.au = call noundef nonnull align 8 ptr %i.at(ptr noundef nonnull %i.aq) ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !3 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !774)
  %i.ay = zext i32 %.sroa.10.0 to i64             ; 5 uses
  %i.az = and i64 %.sroa.13.0.ph.ph.in, 4294967295 ; 5 uses
  %.not.i.i = icmp ugt i32 %.sroa.10.0, %.sroa.13.8.extract.trunc98
  br i1 %.not.i.i, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = icmp eq i32 %.sroa.10.0, 0
  br i1 %i.ba, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not5.i.i = icmp ugt i64 %i.ax, %i.ay
  br i1 %.not5.i.i, label %bb.p, label %.split.i.i

bb.o:                                             ; preds = %bb.p, %.split.i.i, %bb.m
  %i.bb = icmp eq i32 %.sroa.13.8.extract.trunc98, 0
  br i1 %i.bb, label %bb.s, label %bb.q

.split.i.i:                                       ; preds = %bb.n
  %i.bc = icmp eq i64 %i.ax, %i.ay
  br i1 %i.bc, label %bb.o, label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ay
  %i.be = load i8, ptr %i.bd, align 1, !alias.scope !777, !noalias !780, !noundef !3
  %i.bf = icmp sgt i8 %i.be, -65
  br i1 %i.bf, label %bb.o, label %bb.t

bb.q:                                             ; preds = %bb.o
  %.not6.i.i = icmp ugt i64 %i.ax, %i.az
  br i1 %.not6.i.i, label %bb.r, label %.split7.i.i

.split7.i.i:                                      ; preds = %bb.q
  %i.bg = icmp eq i64 %i.ax, %i.az
  br i1 %i.bg, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.az
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !777, !noalias !780, !noundef !3
  %i.bj = icmp sgt i8 %i.bi, -65
  br i1 %i.bj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %.split7.i.i, %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.az ; 4 uses
  br i1 %i.y, label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ay
  br label %.lr.ph.i47

bb.t:                                             ; preds = %bb.r, %.split7.i.i, %bb.p, %.split.i.i, %bb.l
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.ax, i64 noundef %i.ay, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24, !noalias !780
  unreachable

.lr.ph.i47:                                       ; preds = %bb.x, %.lr.ph.preheader.i
  %.sroa.08.026.i = phi i32 [ %i.cy, %bb.x ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.025.i = phi i64 [ %i.bm, %bb.x ], [ %i.z, %.lr.ph.preheader.i ]
  %.sroa.015.024.i = phi ptr [ %.sroa.015.1.ph.i, %bb.x ], [ %i.bl, %.lr.ph.preheader.i ] ; 6 uses
  %i.bm = add nsw i64 %.sroa.10.025.i, -1         ; 2 uses
  %i.bn = icmp eq ptr %.sroa.015.024.i, %i.bk
  br i1 %i.bn, label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i47
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.015.024.i, i64 1 ; 3 uses
  %i.bp = load i8, ptr %.sroa.015.024.i, align 1, !alias.scope !774, !noalias !782, !noundef !3 ; 5 uses
  %i.bq = icmp sgt i8 %i.bp, -1
  br i1 %i.bq, label %bb.v, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i.i: ; preds = %bb.u
  %i.br = and i8 %i.bp, 31
  %i.bs = zext nneg i8 %i.br to i32               ; 3 uses
  %i.bt = icmp ne ptr %i.bo, %i.bk
  call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.015.024.i, i64 2 ; 3 uses
  %i.bv = load i8, ptr %i.bo, align 1, !alias.scope !774, !noalias !782, !noundef !3
  %i.bw = shl nuw nsw i32 %i.bs, 6
  %i.bx = and i8 %i.bv, 63
  %i.by = zext nneg i8 %i.bx to i32               ; 2 uses
  %i.bz = or disjoint i32 %i.bw, %i.by
  %i.ca = icmp samesign ugt i8 %i.bp, -33
  br i1 %i.ca, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i.i, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cb = zext nneg i8 %i.bp to i32
  br label %bb.w

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i.i
  %i.cc = icmp ne ptr %i.bu, %i.bk
  call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.015.024.i, i64 3 ; 3 uses
  %i.ce = load i8, ptr %i.bu, align 1, !alias.scope !774, !noalias !782, !noundef !3
  %i.cf = shl nuw nsw i32 %i.by, 6
  %i.cg = and i8 %i.ce, 63
  %i.ch = zext nneg i8 %i.cg to i32
  %i.ci = or disjoint i32 %i.cf, %i.ch            ; 2 uses
  %i.cj = shl nuw nsw i32 %i.bs, 12
  %i.ck = or disjoint i32 %i.ci, %i.cj
  %i.cl = icmp samesign ugt i8 %i.bp, -17
  br i1 %i.cl, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i.i, label %bb.w

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i.i
  %i.cm = icmp ne ptr %i.cd, %i.bk
  call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.015.024.i, i64 4
  %i.co = load i8, ptr %i.cd, align 1, !alias.scope !774, !noalias !782, !noundef !3
  %i.cp = shl nuw nsw i32 %i.bs, 18
  %i.cq = and i32 %i.cp, 1835008
  %i.cr = shl nuw nsw i32 %i.ci, 6
  %i.cs = and i8 %i.co, 63
  %i.ct = zext nneg i8 %i.cs to i32
  %i.cu = or disjoint i32 %i.cr, %i.ct
  %i.cv = or disjoint i32 %i.cu, %i.cq
  br label %bb.w

bb.w:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i.i, %bb.v, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i.i
  %.sroa.015.1.ph.i = phi ptr [ %i.bu, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i.i ], [ %i.cd, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i.i ], [ %i.cn, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i.i ], [ %i.bo, %bb.v ]
  %.sroa.4.0.i.ph.i = phi i32 [ %i.bz, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i.i ], [ %i.ck, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i.i ], [ %i.cv, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i.i ], [ %i.cb, %bb.v ] ; 2 uses
  %i.cw = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  call void @llvm.assume(i1 %i.cw)
  switch i32 %.sroa.4.0.i.ph.i, label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i [
    i32 32, label %bb.x
    i32 9, label %bb.x
  ]

_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i: ; preds = %bb.x, %bb.w, %.lr.ph.i47, %bb.s
  %.sroa.08.0.lcssa.i = phi i32 [ 0, %bb.s ], [ %i.x, %bb.x ], [ %.sroa.08.026.i, %bb.w ], [ %.sroa.08.026.i, %.lr.ph.i47 ]
  %i.cx = add i32 %.sroa.08.0.lcssa.i, %.sroa.10.0 ; 4 uses
  %.not13.i = icmp ugt i32 %i.cx, %.sroa.13.8.extract.trunc98
  br i1 %.not13.i, label %bb.y, label %_RINvMs3_NtCs8CpBcHC8tKo_21ruff_python_formatter8verbatimNtB6_11Indentation11trim_indentRNtB6_11LogicalLineEB8_.exit, !prof !66

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.cy = add nuw i32 %.sroa.08.026.i, 1
  %i.cz = icmp eq i64 %i.bm, 0
  br i1 %i.cz, label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i, label %.lr.ph.i47

bb.y:                                             ; preds = %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24, !noalias !785
  unreachable

_RINvMs3_NtCs8CpBcHC8tKo_21ruff_python_formatter8verbatimNtB6_11Indentation11trim_indentRNtB6_11LogicalLineEB8_.exit: ; preds = %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i
  %i.da = icmp eq i32 %i.cx, %.sroa.13.8.extract.trunc98
  br i1 %i.da, label %bb.aa, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %_RINvMs3_NtCs8CpBcHC8tKo_21ruff_python_formatter8verbatimNtB6_11Indentation11trim_indentRNtB6_11LogicalLineEB8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %i.cx, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.cx, ptr %i.f, align 4
  store i32 %.sroa.13.8.extract.trunc98, ptr %i.aa, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %.sroa.13.8.extract.trunc98, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !786
  call void @_RNvXs3_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_14SourcePositionINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1m_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !791, !inline_history !102
  %i.db = load i32, ptr %i.a, align 8, !range !59, !noalias !786, !noundef !3 ; 2 uses
  %.not.i49 = icmp eq i32 %i.db, -1
  br i1 %.not.i49, label %.lr.ph.i48.1, label %bb.ab

.lr.ph.i48.1:                                     ; preds = %.lr.ph.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !786
  call void @_RNvXs9_NtCs8CpBcHC8tKo_21ruff_python_formatter8verbatimNtB5_12VerbatimTextINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB7_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !791, !inline_history !102
  %i.dc = load i32, ptr %i.a, align 8, !range !59, !noalias !786, !noundef !3 ; 2 uses
  %.not.i49.1 = icmp eq i32 %i.dc, -1
  br i1 %.not.i49.1, label %.lr.ph.i48.2, label %bb.ab

.lr.ph.i48.2:                                     ; preds = %.lr.ph.i48.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !786
  call void @_RNvXs3_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_14SourcePositionINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1m_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !791, !inline_history !102
  %i.dd = load i32, ptr %i.a, align 8, !range !59, !noalias !786, !noundef !3 ; 2 uses
  %.not.i49.2 = icmp eq i32 %i.dd, -1
  br i1 %.not.i49.2, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.lr.ph.i48.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.de = trunc nuw i64 %.sroa.13.12.extract.shift99 to i1
  br i1 %i.de, label %bb.ac, label %.backedge

bb.aa:                                            ; preds = %_RINvMs3_NtCs8CpBcHC8tKo_21ruff_python_formatter8verbatimNtB6_11Indentation11trim_indentRNtB6_11LogicalLineEB8_.exit
  %i.df = trunc nuw i64 %.sroa.13.12.extract.shift99 to i1
  br i1 %i.df, label %bb.ad, label %.backedge

bb.ab:                                            ; preds = %.lr.ph.i48.2, %.lr.ph.i48.1, %.lr.ph.i48
  %.lcssa = phi i32 [ %i.db, %.lr.ph.i48 ], [ %i.dc, %.lr.ph.i48.1 ], [ %i.dd, %.lr.ph.i48.2 ]
  %.sroa.4.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.481.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx69, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i32 %.lcssa, ptr %0, align 8
  br label %bb.j

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 2, ptr %i.ab, align 1
  store i8 1, ptr %i.b, align 8
  %i.dg = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.dh = load ptr, ptr %i.i, align 8, !nonnull !3, !align !47, !noundef !3
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !invariant.load !3, !nonnull !3
  call void %i.dj(ptr noundef nonnull %i.dg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.backedge

bb.ad:                                            ; preds = %bb.aa
  br i1 %.sroa.01.0, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 3, ptr %i.ac, align 1
  store i8 1, ptr %i.c, align 8
  %i.dk = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.dl = load ptr, ptr %i.i, align 8, !nonnull !3, !align !47, !noundef !3
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !invariant.load !3, !nonnull !3
  call void %i.dn(ptr noundef nonnull %i.dk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.backedge

.backedge:                                        ; preds = %bb.ae, %bb.af, %bb.aa, %bb.z, %bb.ac
  br label %bb.b

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 2, ptr %i.ad, align 1
  store i8 1, ptr %i.d, align 8
  %i.do = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.dp = load ptr, ptr %i.i, align 8, !nonnull !3, !align !47, !noundef !3
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !invariant.load !3, !nonnull !3
  call void %i.dr(ptr noundef nonnull %i.do, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.backedge
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression10expr_yieldNtB5_18AnyExpressionYieldINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 14 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = load i64, ptr %1, align 8, !range !496, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = trunc nuw i64 %i.g to i1
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !3, !align !47, !noundef !3 ; 3 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3
  br label %.lr.ph.i28

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !align !47, !noundef !3 ; 2 uses
  %.not24 = icmp eq ptr %i.m, null
  br i1 %.not24, label %.lr.ph.i, label %.lr.ph.i28

.lr.ph.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @60, ptr %i.d, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 5, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !792
  call void @_RNvXs1_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_5TokenINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1c_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !797, !inline_history !102
  %i.o = load i32, ptr %i.c, align 8, !range !59, !noalias !792, !noundef !3 ; 2 uses
  %.not.i = icmp eq i32 %i.o, -1
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph.i
  %.sroa.437.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.456.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.437.0..sroa_idx38, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

.lr.ph.i28:                                       ; preds = %bb.c, %bb.b
  %.sink76 = phi ptr [ @59, %bb.b ], [ @60, %bb.c ]
  %.sink = phi i64 [ 10, %bb.b ], [ 5, %bb.c ]
  %.sroa.022.0 = phi i64 [ 41, %bb.b ], [ 40, %bb.c ]
  %.sroa.07.0 = phi ptr [ %i.k, %bb.b ], [ %i.m, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sink76, ptr %i.f, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sink, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.07.0, ptr %i.q, align 8
  store i64 %.sroa.022.0, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.j, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !798
  call void @_RNvXs1_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_5TokenINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1c_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !803, !inline_history !102
  %i.t = load i32, ptr %i.b, align 8, !range !59, !noalias !798, !noundef !3 ; 2 uses
  %.not.i30 = icmp eq i32 %i.t, -1
  br i1 %.not.i30, label %.lr.ph.i28.1, label %bb.g

.lr.ph.i28.1:                                     ; preds = %.lr.ph.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !798
  call void @_RNvXsc_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_5SpaceINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1c_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !803, !inline_history !102
  %i.u = load i32, ptr %i.b, align 8, !range !59, !noalias !798, !noundef !3 ; 2 uses
  %.not.i30.1 = icmp eq i32 %i.u, -1
  br i1 %.not.i30.1, label %.lr.ph.i28.2, label %bb.g

.lr.ph.i28.2:                                     ; preds = %.lr.ph.i28.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !798
  call void @_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_27MaybeParenthesizeExpressionINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB7_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !803, !inline_history !102
  %i.v = load i32, ptr %i.b, align 8, !range !59, !noalias !798, !noundef !3 ; 2 uses
  %.not.i30.2 = icmp eq i32 %i.v, -1
  br i1 %.not.i30.2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i28.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i28.2, %.lr.ph.i28.1, %.lr.ph.i28
  %.lcssa = phi i32 [ %i.t, %.lr.ph.i28 ], [ %i.u, %.lr.ph.i28.1 ], [ %i.v, %.lr.ph.i28.2 ]
  %.sroa.4.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.447.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx34, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.g
  %.sink77 = phi i32 [ %i.o, %bb.e ], [ %.lcssa, %bb.g ], [ -1, %bb.f ], [ -1, %bb.d ]
  store i32 %.sink77, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_16FormatEmptyLinesINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = alloca [1 x i8], align 1                 ; 4 uses
  %i.l = alloca [1 x i8], align 1                 ; 4 uses
  %i.m = alloca [1 x i8], align 1                 ; 4 uses
  %i.n = alloca [1 x i8], align 1                 ; 4 uses
  %i.o = alloca [1 x i8], align 1                 ; 4 uses
  %i.p = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !align !47, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !3, !nonnull !3 ; 2 uses
  %i.u = tail call noundef nonnull align 8 ptr %i.t(ptr noundef nonnull %i.p)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %.sroa.0.0.copyload = load i8, ptr %i.v, align 8
  switch i8 %.sroa.0.0.copyload, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %.lr.ph.i
    i8 3, label %.lr.ph.i
  ]

end_hunk_1
