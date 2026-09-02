Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_syntax-4c380be9ffe8a404.typst_syntax.43f15894b109c63c-cgu.0?download=true
inline.NumInlined: 3813
inline.NumDeleted: 1552
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_12BlockComment4text:bb.a
  ret { ptr, i64 } %.merged
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode10unexpected(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.d, i8 0, i64 15, i1 false)
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  store i8 -128, ptr %.sroa.46.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.01.0.in = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.01.0 = load i8, ptr %.sroa.01.0.in, align 1, !range !21, !noundef !19
  %i.f = tail call { ptr, i64 } @_RNvMNtCs5PEMdK7bMAG_12typst_syntax4kindNtB2_10SyntaxKind4name(i8 noundef %.sroa.01.0) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  store ptr %i.g, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.h, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs5PEMdK7bMAG_12typst_syntax, ptr %.sroa.410.0..sroa_idx, align 8
  %i.j = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @31, ptr noundef nonnull @275, ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #59
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.d, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit, !prof !23

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #62
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @_RINvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode16convert_to_errorNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB8_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode15convert_to_kind(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i8 noundef range(i8 6, 55) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #5 {
bb.a:
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.0.0 = load i8, ptr %.sroa.0.0.in, align 1, !range !21, !noundef !19
  %i.a = icmp eq i8 %.sroa.0.0, 1
  br i1 %i.a, label %bb.b, label %.preheader, !prof !23

default.unreachable11:                            ; preds = %.preheader
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @277, ptr noundef nonnull inttoptr (i64 87 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #62
  unreachable

.preheader:                                       ; preds = %bb.a, %bb.d
  %.sroa.02.0 = phi ptr [ %i.e, %bb.d ], [ %0, %bb.a ] ; 4 uses
  %i.b = load i8, ptr %.sroa.02.0, align 8, !range !30, !noundef !19
  switch i8 %i.b, label %default.unreachable11 [
    i8 0, label %bb.e
    i8 1, label %bb.e
    i8 2, label %bb.c
    i8 3, label %bb.d
  ], !prof !49

bb.c:                                             ; preds = %.preheader
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #62
  unreachable

bb.d:                                             ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 1
  store i8 %1, ptr %i.d, align 1
  %i.e = tail call fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node14WarningWrapperE8make_mutBK_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.c) #63
  br label %.preheader

bb.e:                                             ; preds = %.preheader, %.preheader
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 1
  store i8 %1, ptr %.sroa.01.0, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode16replace_children(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i50.i.i.i = alloca [31 x i8], align 1  ; 4 uses
  %.sroa.4.i36.i.i.i = alloca [31 x i8], align 1  ; 4 uses
  %.sroa.4.i.i.i.i = alloca [31 x i8], align 1    ; 4 uses
  %.sroa.49.i.i.i.i.i.i.i.i.i = alloca [31 x i8], align 1 ; 4 uses
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  br label %.noexc7

.noexc7:                                          ; preds = %bb.c, %bb.a
  %.sroa.01.0.i = phi ptr [ %0, %bb.a ], [ %i.h, %bb.c ] ; 3 uses
  %i.d = load i8, ptr %.sroa.01.0.i, align 8, !range !30, !noundef !19
  switch i8 %i.d, label %.noexc7.unreachabledefault [
    i8 0, label %bb.ds
    i8 1, label %bb.b
    i8 2, label %bb.ds
    i8 3, label %bb.c
  ]

.noexc7.unreachabledefault:                       ; preds = %.noexc7
  unreachable

default.unreachable:                              ; preds = %bb.q, %bb.ab, %bb.ak, %bb.ap, %bb.as, %bb.aw, %bb.az, %bb.dh
  unreachable

bb.b:                                             ; preds = %.noexc7
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8
  %i.f = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeE8make_mutBK_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.e) #63
          to label %bb.d unwind label %.loopexit.split-lp ; 14 uses

bb.c:                                             ; preds = %.noexc7
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8
  %i.h = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node14WarningWrapperE8make_mutBK_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.g) #63
          to label %.noexc7 unwind label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2033)
  %i.j = load i64, ptr %i.i, align 8, !range !31, !alias.scope !2032, !noalias !2034, !noundef !19
  %i.k = lshr i64 %i.j, 48                        ; 2 uses
  %i.l = trunc nuw i64 %i.k to i16
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !2033, !noalias !2035, !noundef !19 ; 15 uses
  %i.o = icmp ult i64 %i.n, 288230376151711744
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ult i64 %1, %2
  %i.q = icmp ne i64 %i.n, 0
  %or.cond278.i = and i1 %i.p, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 14 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !2031, !noalias !2036 ; 18 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !2033, !noalias !2035 ; 25 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 8 uses
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !2031, !noalias !2036 ; 15 uses
  br i1 %or.cond278.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.x = tail call i64 @llvm.usub.sat.i64(i64 %i.s, i64 %1)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2037)
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !2038, !noalias !2035, !nonnull !19, !noundef !19 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !2038, !noalias !2035, !noundef !19
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %i.z, i64 noundef %i.ab)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i unwind label %bb.g, !noalias !2039, !inline_history !6

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %3, align 8, !range !34, !alias.scope !2040, !noalias !2035, !noundef !19 ; 2 uses
  %i.ad = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ad, label %common.resume, label %common.resume.sink.split

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i: ; preds = %bb.f
  %.val.i.i = load i64, ptr %3, align 8, !range !34, !alias.scope !2040, !noalias !2035, !noundef !19 ; 2 uses
  %i.ae = icmp eq i64 %.val.i.i, 0
  br i1 %i.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit.sink.split

._crit_edge.i:                                    ; preds = %bb.j, %bb.i, %bb.e
  %.sroa.0163.0.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.al, %bb.j ], [ %.sroa.0163.0279.i, %bb.i ] ; 28 uses
  %.promoted.i = phi i64 [ %1, %bb.e ], [ %i.ak, %bb.j ], [ %.sroa.0.0280.i, %bb.i ] ; 26 uses
  %i.af = icmp ult i64 %.promoted.i, %2           ; 2 uses
  %i.ag = icmp samesign ult i64 %.sroa.0163.0.lcssa.i, %i.n
  %or.cond66.i345 = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %or.cond66.i345, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.j, %.lr.ph.i
  %.sroa.0.0280.i = phi i64 [ %1, %.lr.ph.i ], [ %i.ak, %bb.j ] ; 4 uses
  %.sroa.0163.0279.i = phi i64 [ 0, %.lr.ph.i ], [ %i.al, %bb.j ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %.sroa.0163.0279.i, %i.x
  br i1 %exitcond.not.i, label %.invoke482.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %.sroa.0.0280.i
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.0163.0279.i
  %i.aj = tail call noundef zeroext i1 @_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode11spanless_eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai), !noalias !2041
  br i1 %i.aj, label %bb.j, label %._crit_edge.i

bb.j:                                             ; preds = %bb.i
  %i.ak = add nuw i64 %.sroa.0.0280.i, 1          ; 3 uses
  %i.al = add nuw nsw i64 %.sroa.0163.0279.i, 1   ; 3 uses
  %i.am = icmp ult i64 %i.ak, %2
  %i.an = icmp samesign ult i64 %i.al, %i.n
  %or.cond.i = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond.i, label %bb.h, label %._crit_edge.i

bb.k:                                             ; preds = %bb.l
  %i.ao = icmp ult i64 %.promoted.i, %i.aq        ; 2 uses
  %i.ap = icmp samesign ult i64 %.sroa.0163.0.lcssa.i, %i.as
  %or.cond66.i = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond66.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.k
  %.sroa.4.0.i347 = phi i64 [ %i.aq, %bb.k ], [ %2, %._crit_edge.i ] ; 2 uses
  %.sroa.6.0.i346 = phi i64 [ %i.as, %bb.k ], [ %i.n, %._crit_edge.i ] ; 2 uses
  %i.aq = add i64 %.sroa.4.0.i347, -1             ; 6 uses
  %i.ar = icmp ult i64 %i.aq, %i.s
  br i1 %i.ar, label %bb.l, label %.invoke482.i

bb.l:                                             ; preds = %.lr.ph
  %i.as = add nsw i64 %.sroa.6.0.i346, -1         ; 4 uses
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.aq
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.as
  %i.av = tail call noundef zeroext i1 @_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode11spanless_eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.au), !noalias !2041
  br i1 %i.av, label %bb.k, label %._crit_edge

.invoke482.i:                                     ; preds = %bb.h, %.lr.ph
  %i.aw = phi i64 [ %i.aq, %.lr.ph ], [ %.sroa.0.0280.i, %bb.h ]
  %i.ax = phi ptr [ @358, %.lr.ph ], [ @357, %bb.h ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.aw, i64 noundef %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax) #58
          to label %.cont483.i unwind label %bb.dr, !noalias !2041

.cont483.i:                                       ; preds = %.invoke482.i
  unreachable

.loopexit.i:                                      ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens0_0EBN_.exit.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.cz, %bb.cx, %bb.ct, %bb.cr, %bb.cl, %bb.cj, %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.14.0 = phi i64 [ %i.n, %.loopexit.split-lp.i ], [ %.sroa.14.1, %.loopexit.i ], [ %.sroa.0163.0.lcssa.i, %bb.cx ], [ %i.nl, %bb.cz ], [ %.sroa.0163.0.lcssa.i, %bb.cj ], [ %i.ml, %bb.cl ], [ %.sroa.0163.0.lcssa.i, %bb.cr ], [ %i.nc, %bb.ct ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %i.nj, %bb.cx ], [ %i.nj, %bb.cz ], [ %eh.lpad-body.i209.i, %bb.cj ], [ %eh.lpad-body.i209.i, %bb.cl ], [ %eh.lpad-body.i209.i, %bb.cr ], [ %eh.lpad-body.i209.i, %bb.ct ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %i.u, i64 noundef %.sroa.14.0)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i10 unwind label %bb.m, !noalias !2042, !inline_history !6

bb.m:                                             ; preds = %.body.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.az = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.az, label %.body12, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = shl nuw i64 %.sroa.0.0.copyload, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !2042, !inline_history !42
  br label %.body12

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i10: ; preds = %.body.i
  %i.bb = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.bb, label %common.resume, label %common.resume.sink.split

._crit_edge:                                      ; preds = %bb.k, %bb.l, %._crit_edge.i
  %.sroa.6.0.i.lcssa = phi i64 [ %i.n, %._crit_edge.i ], [ %i.as, %bb.k ], [ %.sroa.6.0.i346, %bb.l ] ; 18 uses
  %.sroa.4.0.i.lcssa = phi i64 [ %2, %._crit_edge.i ], [ %i.aq, %bb.k ], [ %.sroa.4.0.i347, %bb.l ] ; 31 uses
  %.lcssa156 = phi i1 [ %i.af, %._crit_edge.i ], [ %i.ao, %bb.k ], [ true, %bb.l ]
  %.sroa.0.0.copyload = load i64, ptr %3, align 8, !noalias !2035 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.bc = icmp samesign ult i64 %.sroa.6.0.i.lcssa, %.sroa.0163.0.lcssa.i
  br i1 %i.bc, label %.invoke.i, label %bb.o, !prof !23

.invoke.i:                                        ; preds = %bb.o, %._crit_edge
  %i.bd = phi i64 [ %.promoted.i, %bb.o ], [ %.sroa.0163.0.lcssa.i, %._crit_edge ]
  %i.be = phi i64 [ %.sroa.4.0.i.lcssa, %bb.o ], [ %.sroa.6.0.i.lcssa, %._crit_edge ]
  %i.bf = phi i64 [ %i.s, %bb.o ], [ %i.n, %._crit_edge ]
  %i.bg = phi ptr [ @359, %bb.o ], [ @360, %._crit_edge ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.bd, i64 noundef %i.be, i64 noundef %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg) #58
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !2041

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.bh = sub nuw nsw i64 %.sroa.6.0.i.lcssa, %.sroa.0163.0.lcssa.i ; 5 uses
  %.idx216.i = shl nuw nsw i64 %.sroa.0163.0.lcssa.i, 5
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx216.i ; 11 uses
  %i.bj = icmp ult i64 %.sroa.4.0.i.lcssa, %.promoted.i
  %.not61.i = icmp ugt i64 %.sroa.4.0.i.lcssa, %i.s
  %or.cond67.i = or i1 %i.bj, %.not61.i
  br i1 %or.cond67.i, label %.invoke.i, label %bb.p, !prof !50

bb.p:                                             ; preds = %bb.o
  %.idx218.i = shl nuw nsw i64 %.promoted.i, 5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx218.i ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !2031, !noalias !2036, !noundef !19
  %.idx.i = shl nuw nsw i64 %.sroa.6.0.i.lcssa, 5
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i ; 17 uses
  %i.bo = icmp eq i64 %.sroa.0163.0.lcssa.i, %.sroa.6.0.i.lcssa ; 10 uses
  br i1 %i.bo, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i, label %.preheader45

.preheader45:                                     ; preds = %bb.p, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i
  %.sroa.04.0.i.i = phi i64 [ %i.cn, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i ], [ 0, %bb.p ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %i.cm, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i ], [ 0, %bb.p ]
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %.sroa.04.0.i.i
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.preheader45
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %i.bp, %.preheader45 ], [ %i.cd, %bb.u ] ; 6 uses
  %i.bq = load i8, ptr %.sroa.04.0.i.i.i.i.i, align 8, !range !30, !noalias !2041, !noundef !19
  switch i8 %i.bq, label %default.unreachable [
    i8 0, label %bb.r
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 23
  %i.bs = load i8, ptr %i.br, align 1, !noalias !2041, !noundef !19 ; 2 uses
  %.not14.i.i.i.i.i = icmp sgt i8 %i.bs, -1
  br i1 %.not14.i.i.i.i.i, label %bb.v, label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !2041, !nonnull !19, !noundef !19
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !2043, !noundef !19
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i

bb.t:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !2041, !nonnull !19, !noundef !19 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 47
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !2043, !noundef !19 ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i8 %i.ca, -1
  br i1 %.not.i.i.i.i.i, label %bb.x, label %bb.y

bb.u:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !2041, !nonnull !19, !noundef !19
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  br label %bb.q

bb.v:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !2041, !noundef !19
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i

bb.w:                                             ; preds = %bb.r
  %i.cg = and i8 %i.bs, 127
  %i.ch = zext nneg i8 %i.cg to i64
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i

bb.x:                                             ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !2043, !noundef !19
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i

bb.y:                                             ; preds = %bb.t
  %i.ck = and i8 %i.ca, 127
  %i.cl = zext nneg i8 %i.ck to i64
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i: ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.s
  %.sroa.0.1.i.i.i.i.i = phi i64 [ %i.cf, %bb.v ], [ %i.bw, %bb.s ], [ %i.ch, %bb.w ], [ %i.cl, %bb.y ], [ %i.cj, %bb.x ]
  %i.cm = add i64 %.sroa.0.1.i.i.i.i.i, %.sroa.02.0.i.i ; 2 uses
  %i.cn = add nuw i64 %.sroa.04.0.i.i, 1          ; 2 uses
  %i.co = icmp eq i64 %i.cn, %i.bh
  br i1 %i.co, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i, label %.preheader45

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i, %bb.p
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.p ], [ %i.cm, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i ]
  %.idx217.i = shl nuw nsw i64 %.sroa.4.0.i.lcssa, 5
  %i.cp = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx217.i ; 3 uses
  %i.cq = icmp samesign eq i64 %.promoted.i, %.sroa.4.0.i.lcssa ; 3 uses
  br i1 %i.cq, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit85.i, label %bb.z

bb.z:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i
  %i.cr = sub nuw nsw i64 %.sroa.4.0.i.lcssa, %.promoted.i
  br label %bb.aa

bb.aa:                                            ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i, %bb.z
  %.sroa.04.0.i76.i = phi i64 [ 0, %bb.z ], [ %i.dq, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i ] ; 2 uses
  %.sroa.02.0.i77.i = phi i64 [ 0, %bb.z ], [ %i.dp, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i ]
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %.sroa.04.0.i76.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.af, %bb.aa
  %.sroa.04.0.i.i.i.i78.i = phi ptr [ %i.cs, %bb.aa ], [ %i.dg, %bb.af ] ; 6 uses
  %i.ct = load i8, ptr %.sroa.04.0.i.i.i.i78.i, align 8, !range !30, !noalias !2041, !noundef !19
  switch i8 %i.ct, label %default.unreachable [
    i8 0, label %bb.ac
    i8 1, label %bb.ad
    i8 2, label %bb.ae
    i8 3, label %bb.af
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i78.i, i64 23
  %i.cv = load i8, ptr %i.cu, align 1, !noalias !2041, !noundef !19 ; 2 uses
  %.not14.i.i.i.i83.i = icmp sgt i8 %i.cv, -1
  br i1 %.not14.i.i.i.i83.i, label %bb.ag, label %bb.ah

bb.ad:                                            ; preds = %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i78.i, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !2041, !nonnull !19, !noundef !19
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !2044, !noundef !19
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i

bb.ae:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i78.i, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !noalias !2041, !nonnull !19, !noundef !19 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 47
  %i.dd = load i8, ptr %i.dc, align 1, !noalias !2044, !noundef !19 ; 2 uses
  %.not.i.i.i.i79.i = icmp sgt i8 %i.dd, -1
  br i1 %.not.i.i.i.i79.i, label %bb.ai, label %bb.aj

bb.af:                                            ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i78.i, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !noalias !2041, !nonnull !19, !noundef !19
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  br label %bb.ab

bb.ag:                                            ; preds = %bb.ac
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i78.i, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !noalias !2041, !noundef !19
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i

bb.ah:                                            ; preds = %bb.ac
  %i.dj = and i8 %i.cv, 127
  %i.dk = zext nneg i8 %i.dj to i64
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i

bb.ai:                                            ; preds = %bb.ae
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !2044, !noundef !19
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
  store i64 %i.dt, ptr %i.bl, align 8, !alias.scope !2031, !noalias !2036
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !2031, !noalias !2036, !noundef !19
  br i1 %i.bo, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs0_BS_BQ_11descendantsNCINvXsK_NtB1I_5accumjNtB3C_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i, label %.preheader

.preheader:                                       ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit85.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i
  %.sroa.04.0.i86.i = phi i64 [ %i.eg, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit85.i ] ; 2 uses
  %.sroa.02.0.i87.i = phi i64 [ %i.ef, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit85.i ]
  %i.dw = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %.sroa.04.0.i86.i
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %.preheader
  %.sroa.02.0.i.i.i.i.i = phi ptr [ %i.dw, %.preheader ], [ %i.ee, %bb.am ] ; 3 uses
  %i.dx = load i8, ptr %.sroa.02.0.i.i.i.i.i, align 8, !range !30, !noalias !2041, !noundef !19
  switch i8 %i.dx, label %default.unreachable [
    i8 0, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i
    i8 1, label %bb.al
    i8 2, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i
    i8 3, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !2041, !nonnull !19, !noundef !19
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !2045, !noundef !19
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i

end_hunk_0
begin_hunk_1_@_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode16replace_children:bb.a
  %i.lt = ptrtoint ptr %i.w to i64
  %i.lu = sub nuw i64 %i.lp, %i.lt
  %i.lv = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.lu
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %i.lv, i64 noundef %i.ls)
          to label %bb.ce unwind label %bb.cb, !noalias !2102

bb.ce:                                            ; preds = %bb.cd
  %.not.i.i4.i.i146.i = icmp eq i64 %i.s, %.sroa.4.0.i.lcssa
  br i1 %.not.i.i4.i.i146.i, label %.body5.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.lw = icmp ult i64 %.promoted.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.lw)
  %i.lx = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %.sroa.4.0.i.lcssa
  %i.ly = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %.promoted.i
  %i.lz = shl nuw nsw i64 %.pre-phi.i, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ly, ptr nonnull align 8 %i.lx, i64 %i.lz, i1 false), !noalias !2102
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
  %i.md = add nuw nsw i64 %i.ma, %.pre-phi.i      ; 2 uses
  store i64 %i.md, ptr %i.r, align 8, !alias.scope !2031, !noalias !2103
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1m_.exit.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.me = load ptr, ptr %i.v, align 8, !alias.scope !2031, !noalias !2103, !nonnull !19, !noundef !19 ; 2 uses
  %i.mf = getelementptr inbounds nuw [32 x i8], ptr %i.me, i64 %.sroa.20.3.i
  %i.mg = getelementptr inbounds nuw [32 x i8], ptr %i.me, i64 %i.ma
  %i.mh = shl nuw nsw i64 %.pre-phi.i, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mg, ptr nonnull align 8 %i.mf, i64 %i.mh, i1 false), !noalias !2104
  br label %bb.ch

.body5.i.sink.split.i:                            ; preds = %bb.cf, %bb.ca, %bb.bz
  %.promoted.sink.i = phi i64 [ %.promoted.i, %bb.cf ], [ %i.ld, %bb.ca ], [ %.sroa.20.0208.i, %bb.bz ]
  %eh.lpad-body.i209.ph.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %bb.cf ], [ %eh.lpad-body.i210.i, %bb.ca ], [ %eh.lpad-body.i210.i, %bb.bz ]
  %.sroa.34.0206.ph.i = phi ptr [ %i.bi, %bb.cf ], [ %.sroa.34.0207.i, %bb.ca ], [ %.sroa.34.0207.i, %bb.bz ]
  %i.mi = add nuw nsw i64 %.promoted.sink.i, %.pre-phi.i
  store i64 %i.mi, ptr %i.r, align 8, !alias.scope !2031, !noalias !2101
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
  %i.ml = add nuw nsw i64 %i.ht, %.sroa.0163.0.lcssa.i
  br label %.body.i

bb.cm:                                            ; preds = %bb.ck
  %i.mm = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.6.0.i.lcssa
  %i.mn = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.0163.0.lcssa.i
  %i.mo = shl nuw nsw i64 %i.ht, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mn, ptr nonnull align 8 %i.mm, i64 %i.mo, i1 false), !noalias !2105
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
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ms, ptr nonnull align 8 %i.mr, i64 %i.mt, i1 false), !noalias !2041
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
          to label %bb.cr unwind label %bb.cn, !noalias !2105

bb.cr:                                            ; preds = %bb.cq
  %.not.i.i4.i.i.i = icmp eq i64 %i.n, %.sroa.6.0.i.lcssa
  br i1 %.not.i.i4.i.i.i, label %.body.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.nb = icmp ult i64 %.sroa.0163.0.lcssa.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.nb)
  br i1 %i.bo, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cu, %bb.cs
  %i.nc = add nuw nsw i64 %i.ht, %.sroa.0163.0.lcssa.i
  br label %.body.i

bb.cu:                                            ; preds = %bb.cs
  %i.nd = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.6.0.i.lcssa
  %i.ne = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.0163.0.lcssa.i
  %i.nf = shl nuw nsw i64 %i.ht, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ne, ptr nonnull align 8 %i.nd, i64 %i.nf, i1 false), !noalias !2105
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
  %i.nl = add nuw nsw i64 %i.ht, %.sroa.0163.0.lcssa.i
  br label %.body.i

bb.da:                                            ; preds = %bb.cy
  %i.nm = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.6.0.i.lcssa
  %i.nn = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.0163.0.lcssa.i
  %i.no = shl nuw nsw i64 %i.ht, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nn, ptr nonnull align 8 %i.nm, i64 %i.no, i1 false), !noalias !2041
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
          to label %bb.dc unwind label %bb.cx, !noalias !2106

bb.dc:                                            ; preds = %bb.db
  %.not.i.i4.i.i7.i.i = icmp eq i64 %i.n, %.sroa.6.0.i.lcssa
  br i1 %.not.i.i4.i.i7.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.nw = icmp ult i64 %.sroa.0163.0.lcssa.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.nw)
  br i1 %i.bo, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.sink.split.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.sink.split.i.sink.split

.body144.i:                                       ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cc, %bb.cb
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !2069
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.sink.split.i.sink.split: ; preds = %bb.dd, %bb.cw
  %i.nx = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.6.0.i.lcssa
  %i.ny = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.0163.0.lcssa.i
  %i.nz = shl nuw nsw i64 %i.ht, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ny, ptr nonnull align 8 %i.nx, i64 %i.nz, i1 false), !noalias !2106
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.sink.split.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.sink.split.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtBG_5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEEB1I_.exit.sink.split.i.sink.split, %bb.dd, %bb.cw
  %i.oa = add nuw nsw i64 %i.ht, %.sroa.0163.0.lcssa.i
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
  %i.om = load i64, ptr %i.i, align 8, !range !31, !alias.scope !2032, !noalias !2034, !noundef !19
  %i.on = and i64 %i.om, 281474976710655
  %i.oo = add nuw nsw i64 %i.on, 1
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens_0EBN_.exit.i

bb.dg:                                            ; preds = %bb.df
  %i.op = load ptr, ptr %i.v, align 8, !alias.scope !2031, !noalias !2036, !nonnull !19, !noundef !19
  %i.oq = getelementptr inbounds nuw [32 x i8], ptr %i.op, i64 %i.ok ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2108)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dj, %bb.dg
  %.sroa.01.0.i.i.i = phi ptr [ %i.oq, %bb.dg ], [ %i.oy, %bb.dj ] ; 3 uses
  %i.or = load i8, ptr %.sroa.01.0.i.i.i, align 8, !range !30, !noalias !2041, !noundef !19
  switch i8 %i.or, label %default.unreachable [
    i8 0, label %bb.dk
    i8 1, label %bb.di
    i8 2, label %bb.dk
    i8 3, label %bb.dj
  ]

bb.di:                                            ; preds = %bb.dh
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 8
  %i.ot = load ptr, ptr %i.os, align 8, !noalias !2041, !nonnull !19, !noundef !19
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 56
  %i.ov = load i64, ptr %i.ou, align 8, !noalias !2109, !noundef !19
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens_0EBN_.exit.i

bb.dj:                                            ; preds = %bb.dh
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 8
  %i.ox = load ptr, ptr %i.ow, align 8, !noalias !2041, !nonnull !19, !noundef !19
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  br label %bb.dh

bb.dk:                                            ; preds = %bb.dh, %bb.dh
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  %i.pa = load i64, ptr %i.oz, align 8, !range !31, !alias.scope !2110, !noalias !2041, !noundef !19
  %i.pb = and i64 %i.pa, 281474976710655
  %i.pc = add nuw nsw i64 %i.pb, 1
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens_0EBN_.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens_0EBN_.exit.i: ; preds = %bb.dk, %bb.di, %.thread211.i
  %.sroa.02.0.i128.i = phi i64 [ %i.oo, %.thread211.i ], [ %i.pc, %bb.dk ], [ %i.ov, %bb.di ]
  %.not219.i = icmp ult i64 %i.oi, %.pre348.pre.i
  %i.pd = load i64, ptr %i.oe, align 8, !alias.scope !2031, !noalias !2036, !noundef !19
  br i1 %.not219.i, label %bb.dl, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens0_0EBN_.exit.i

bb.dl:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens_0EBN_.exit.i
  %i.pe = load ptr, ptr %i.v, align 8, !alias.scope !2031, !noalias !2036, !nonnull !19
  %i.pf = getelementptr inbounds nuw [32 x i8], ptr %i.pe, i64 %i.oi
  %i.pg = getelementptr i8, ptr %i.pf, i64 24
  %.val.i131.i = load i64, ptr %i.pg, align 8, !range !31, !alias.scope !2111, !noalias !2041, !noundef !19
  %i.ph = and i64 %.val.i131.i, 281474976710655
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens0_0EBN_.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens0_0EBN_.exit.i: ; preds = %bb.dl, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens_0EBN_.exit.i
  %.sroa.02.0.i132.i = phi i64 [ %i.ph, %bb.dl ], [ %i.pd, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens_0EBN_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2041
  store i64 %i.oh, ptr %i.of, align 8, !noalias !2041
  store i64 %i.oi, ptr %i.og, align 8, !noalias !2041
  store i64 1, ptr %i.c, align 8, !noalias !2041
  %i.pi = invoke fastcc noundef zeroext i1 @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_9InnerNode9numberize(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i, i16 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %.sroa.02.0.i128.i, i64 noundef %.sroa.02.0.i132.i)
          to label %bb.dm unwind label %.loopexit.i, !noalias !2033 ; 3 uses

bb.dm:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens0_0EBN_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2041
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
  %.pre348.pre.pre.i = load i64, ptr %i.r, align 8, !alias.scope !2031, !noalias !2036
  br label %bb.de

bb.do:                                            ; preds = %bb.dm
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %i.u, i64 noundef %.sroa.14.1)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i136.i unwind label %bb.dp, !noalias !2112, !inline_history !6

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
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !2041
  unreachable

bb.dr:                                            ; preds = %.invoke482.i
  %i.py = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %3) #59
          to label %common.resume unwind label %bb.dq, !noalias !2035

bb.ds:                                            ; preds = %.noexc7, %.noexc7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2113)
  %i.pz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.qa = load ptr, ptr %i.pz, align 8, !alias.scope !2114, !nonnull !19, !noundef !19 ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.qc = load i64, ptr %i.qb, align 8, !alias.scope !2114, !noundef !19
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %i.qa, i64 noundef %i.qc)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i unwind label %bb.dt, !noalias !2113, !inline_history !6

bb.dt:                                            ; preds = %bb.ds
  %i.qd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %3, align 8, !range !34, !alias.scope !2113, !noundef !19 ; 2 uses
  %i.qe = icmp eq i64 %.val2.i, 0
  br i1 %i.qe, label %common.resume, label %common.resume.sink.split

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i: ; preds = %bb.ds
  %.val.i = load i64, ptr %3, align 8, !range !34, !alias.scope !2113, !noundef !19 ; 2 uses
  %i.qf = icmp eq i64 %.val.i, 0
  br i1 %i.qf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit.sink.split

common.resume.sink.split:                         ; preds = %bb.dt, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i10, %bb.g, %bb.dp
  %.val2.i134.sink.i.sink = phi i64 [ %.sroa.0.0.copyload, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i10 ], [ %.val2.i.i, %bb.g ], [ %.sroa.0.0.copyload, %bb.dp ], [ %.val2.i, %bb.dt ]
  %.sink.i.sink = phi ptr [ %i.u, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i10 ], [ %i.z, %bb.g ], [ %i.u, %bb.dp ], [ %i.qa, %bb.dt ]
  %common.resume.op.ph = phi { ptr, i32 } [ %eh.lpad-body.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i10 ], [ %i.ac, %bb.g ], [ %i.pu, %bb.dp ], [ %i.qd, %bb.dt ]
  %i.qg = shl nuw i64 %.val2.i134.sink.i.sink, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink.i.sink, i64 noundef %i.qg, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !19
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.du, %bb.g, %bb.dp, %bb.dr, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i10, %bb.dt
  %common.resume.op = phi { ptr, i32 } [ %i.qd, %bb.dt ], [ %i.py, %bb.dr ], [ %lpad.phi, %bb.du ], [ %i.ac, %bb.g ], [ %i.pu, %bb.dp ], [ %eh.lpad-body.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i10 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit.sink.split: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i136.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i
  %.sroa.0.0.copyload.sink = phi i64 [ %.val.i.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i ], [ %.sroa.0.0.copyload, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i136.i ], [ %.val.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i ]
  %.sink = phi ptr [ %i.z, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i ], [ %i.u, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i136.i ], [ %i.qa, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i ]
  %.sroa.0.0.ph = phi i1 [ true, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i ], [ %i.pi, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i136.i ], [ false, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i ]
  %i.qh = shl nuw i64 %.sroa.0.0.copyload.sink, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef %i.qh, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !19
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit.sink.split, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i136.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i
  %.sroa.0.0 = phi i1 [ true, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i ], [ false, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i ], [ %i.pi, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i136.i ], [ %.sroa.0.0.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit.sink.split ]
  ret i1 %.sroa.0.0

.loopexit:                                        ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

.loopexit.split-lp:                               ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.du:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
end_hunk_1
