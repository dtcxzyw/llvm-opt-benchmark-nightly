Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_realize-4a354b9ff5239a8d.typst_realize.d3c69a4675098945-cgu.0?download=true
inline.NumInlined: 1838
inline.NumDeleted: 1082
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4growCsibhcYuwTAtB_13typst_realize:bb.a
  br i1 %i.f, label %bb.g, label %bb.h, !prof !12

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsibhcYuwTAtB_13typst_realize.exit
  %i.g = getelementptr i8, ptr %i.d, i64 -8
  %.val.i = load i64, ptr %i.g, align 8, !noundef !11 ; 2 uses
  %narrow.i.not.i34 = icmp ugt i64 %.val.i, 128102389400760774
  br i1 %narrow.i.not.i34, label %bb.f, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsibhcYuwTAtB_13typst_realize.exit37, !prof !12

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsibhcYuwTAtB_13typst_realize.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.i = mul nuw nsw i64 %.val.i, 72
  %i.j = add nuw nsw i64 %i.i, 16
  %i.k = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.h, i64 noundef %i.j, i64 noundef 8, i64 noundef %i.c) #29 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsibhcYuwTAtB_13typst_realize.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.c) #30
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsibhcYuwTAtB_13typst_realize.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.e, %bb.e ], [ %i.k, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsibhcYuwTAtB_13typst_realize.exit37 ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.m, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4growCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %narrow.i.i = icmp samesign ult i64 %1, 9223372036854775783
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.c
  %i.b = add nuw nsw i64 %1, 16                   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %.not = icmp eq ptr %i.c, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.d = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef 8) #29 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.g, label %bb.h, !prof !12

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit
  %i.f = getelementptr i8, ptr %i.c, i64 -8
  %.val.i = load i64, ptr %i.f, align 8, !noundef !11 ; 2 uses
  %narrow.i.i34 = icmp ult i64 %.val.i, 9223372036854775783
  br i1 %narrow.i.i34, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit37, label %bb.f, !prof !21

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.h = add nuw nsw i64 %.val.i, 16
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.g, i64 noundef %i.h, i64 noundef 8, i64 noundef %i.b) #29 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.b) #30
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.d, %bb.e ], [ %i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit37 ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.k, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs2_NtNtCsaPYV88GQHqL_7bumpalo11collections7raw_vecINtB5_6RawVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyE25reserve_internal_or_panicCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3424)
  %i.a = add i64 %2, %1                           ; 3 uses
  %i.b = icmp ult i64 %i.a, %1                    ; 2 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.u, label %bb.e, !prof !12

bb.c:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.u, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.013.0.i = phi i64 [ %..i.i.i, %bb.e ], [ %i.a, %bb.c ] ; 3 uses
  %i.c = icmp ugt i64 %.sroa.013.0.i, 576460752303423487
  br i1 %i.c, label %bb.u, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !3424
  %i.e = shl i64 %.val.i, 1
  %..i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.a, i64 %i.e)
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.f = shl nuw nsw i64 %.sroa.013.0.i, 4        ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !3424, !noundef !11 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !3424, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !3424, !nonnull !11, !noundef !11 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !3424, !nonnull !11, !noundef !11 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !noalias !3424, !nonnull !11, !noundef !11 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = and i64 %i.q, 15
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr i8, ptr %i.o, i64 %i.s     ; 3 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.p to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult ptr %i.t, %i.p
  %i.y = icmp ugt i64 %i.f, %i.w
  %or.cond.i.i = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond.i.i, label %bb.s, label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i

_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.g
  %i.z = sub nsw i64 0, %i.f
  %i.aa = getelementptr i8, ptr %i.t, i64 %i.z    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  store ptr %i.aa, ptr %i.n, align 8, !noalias !3424
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.ab = shl i64 %i.h, 4                         ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !3424, !nonnull !11, !noundef !11 ; 7 uses
  %.val35.i = load ptr, ptr %i.ac, align 8, !alias.scope !3424 ; 7 uses
  %i.ae = icmp eq i64 %i.ab, 0
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val35.i) ]
  %i.af = getelementptr inbounds nuw i8, ptr %.val35.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !3424, !nonnull !11, !noundef !11 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !3424, !nonnull !11, !noundef !11 ; 2 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !noalias !3424, !nonnull !11, !noundef !11
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = and i64 %i.ak, 15
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr i8, ptr %i.ai, i64 %i.am  ; 4 uses
  %i.ao = icmp ult ptr %i.an, %i.aj
  br i1 %i.ao, label %bb.k, label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i.i

_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  store ptr %i.an, ptr %i.ah, align 8, !noalias !3424
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  %.not.i.i = icmp ugt i64 %i.f, %i.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val35.i) ]
  br i1 %.not.i.i, label %bb.l, label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.ap = tail call noundef ptr @_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump17alloc_layout_slowB5_(ptr noundef nonnull align 8 %.val35.i, i64 noundef 16, i64 noundef 0) #33, !noalias !3424
  br label %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.i

bb.l:                                             ; preds = %bb.j
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val35.i, i64 16
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !3424 ; 3 uses
  %.phi.trans.insert30.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 32 ; 3 uses
  %.pre31.i.i.i = load ptr, ptr %.phi.trans.insert30.i.i.i, align 8, !noalias !3424 ; 4 uses
  %i.aq = icmp eq ptr %.pre31.i.i.i, %i.ad
  br i1 %i.aq, label %bb.m, label %._RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i_crit_edge.i.i

._RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i_crit_edge.i.i: ; preds = %bb.l
  %.pre.i.i = load ptr, ptr %.pre.i.i.i, align 8, !noalias !3424
  br label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i.i.i

_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i.i.i: ; preds = %bb.m, %._RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i_crit_edge.i.i
  %4 = phi ptr [ %.pre.i.i, %._RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i_crit_edge.i.i ], [ %i.bc, %bb.m ] ; 2 uses
  %.pre-phi8.i.pre-phi.i.pre-phi = ptrtoint ptr %4 to i64
  %i.ar = ptrtoint ptr %.pre31.i.i.i to i64
  %i.as = and i64 %i.ar, 15
  %i.at = sub nsw i64 0, %i.as
  %i.au = getelementptr i8, ptr %.pre31.i.i.i, i64 %i.at ; 3 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %.pre-phi8.i.pre-phi.i.pre-phi
  %i.ax = icmp ult ptr %i.au, %4
  %i.ay = icmp ugt i64 %i.f, %i.aw
  %or.cond.i23.i.i.i = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %or.cond.i23.i.i.i, label %bb.o, label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit25.i.i.i

_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit25.i.i.i: ; preds = %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i.i.i
  %i.az = sub nsw i64 0, %i.f
  %i.ba = getelementptr i8, ptr %i.au, i64 %i.az  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  store ptr %i.ba, ptr %.phi.trans.insert30.i.i.i, align 8, !noalias !3424
  br label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bb = sub nuw nsw i64 %i.f, %i.ab             ; 2 uses
  %i.bc = load ptr, ptr %.pre.i.i.i, align 8, !noalias !3424, !nonnull !11, !noundef !11 ; 3 uses
  %i.bd = ptrtoint ptr %i.ad to i64
  %i.be = and i64 %i.bd, 15
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = getelementptr i8, ptr %.pre31.i.i.i, i64 %i.bf ; 3 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bc to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = icmp ult ptr %i.bg, %i.bc
  %i.bl = icmp ugt i64 %i.bb, %i.bj
  %or.cond.i.i.i.i = select i1 %i.bk, i1 true, i1 %i.bl
  br i1 %or.cond.i.i.i.i, label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = sub nsw i64 0, %i.bb
  %i.bn = getelementptr i8, ptr %i.bg, i64 %i.bm  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  store ptr %i.bn, ptr %.phi.trans.insert30.i.i.i, align 8, !noalias !3424
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bn, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ad, i64 range(i64 1, 9223372036854775792) %i.ab, i1 false), !noalias !3424
  br label %bb.t

bb.o:                                             ; preds = %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i.i.i
  %i.bo = tail call noundef ptr @_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump17alloc_layout_slowB5_(ptr noundef nonnull align 8 %.val35.i, i64 noundef range(i64 8, 17) 16, i64 noundef range(i64 2, 9223372036854775793) %i.f) #33, !noalias !3424 ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not22.i.i.i, label %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.thread43.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit25.i.i.i
  %.sroa.013.0.i.i.i = phi ptr [ %i.ba, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit25.i.i.i ], [ %i.bo, %bb.o ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.013.0.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ad, i64 range(i64 1, 9223372036854775792) %i.ab, i1 false), !noalias !3424
  br label %bb.t

bb.q:                                             ; preds = %bb.j
  %i.bp = sub nuw i64 %i.ab, %i.f                 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val35.i, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !3424, !nonnull !11, !noundef !11
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !3424, !nonnull !11, !noundef !11 ; 2 uses
  %i.bu = icmp ne ptr %i.bt, %i.ad
  %i.bv = lshr exact i64 %i.ab, 1
  %.not.i.i.i = icmp ult i64 %i.bp, %i.bv
  %or.cond.i = select i1 %i.bu, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bp ; 3 uses
  store ptr %i.bw, ptr %i.bs, align 8, !noalias !3424
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bw, ptr nonnull align 1 %i.ad, i64 range(i64 0, 9223372036854775793) %i.f, i1 false), !noalias !3424
  br label %bb.t

bb.s:                                             ; preds = %bb.g
  %i.bx = tail call noundef ptr @_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump17alloc_layout_slowB5_(ptr noundef nonnull align 8 %i.k, i64 noundef 16, i64 noundef %i.f) #33, !noalias !3424
  br label %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.i

_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.s, %bb.k
  %.sroa.022.2.i = phi ptr [ %i.ap, %bb.k ], [ %i.bx, %bb.s ] ; 2 uses
  %i.by = icmp eq ptr %.sroa.022.2.i, null
  br i1 %i.by, label %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.thread43.i, label %bb.t

_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.thread43.i: ; preds = %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.i, %bb.o
  tail call void @_RNvNtCsaPYV88GQHqL_7bumpalo5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.f) #30, !noalias !3424
  unreachable

bb.t:                                             ; preds = %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.i, %bb.r, %bb.q, %bb.p, %bb.n, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i.i, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i
  %.sroa.022.242.i = phi ptr [ %.sroa.022.2.i, %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.i ], [ %i.ad, %bb.q ], [ %i.bn, %bb.n ], [ %.sroa.013.0.i.i.i, %bb.p ], [ %i.bw, %bb.r ], [ %i.aa, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i ], [ %i.an, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i.i ]
  store ptr %.sroa.022.242.i, ptr %0, align 8, !alias.scope !3424
  store i64 %.sroa.013.0.i, ptr %i.g, align 8, !alias.scope !3424
  ret void

bb.u:                                             ; preds = %bb.d, %bb.c, %bb.b
  tail call void @_RNvNtNtCsaPYV88GQHqL_7bumpalo11collections7raw_vec17capacity_overflow() #30
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs2_NtNtCsaPYV88GQHqL_7bumpalo11collections7raw_vecINtB5_6RawVecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB19_6styles10StyleChainEE25reserve_internal_or_panicCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3427)
  %i.a = add i64 %2, %1                           ; 3 uses
  %i.b = icmp ult i64 %i.a, %1                    ; 2 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.u, label %bb.e, !prof !12

bb.c:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.u, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.013.0.i = phi i64 [ %..i.i.i, %bb.e ], [ %i.a, %bb.c ] ; 3 uses
  %i.c = icmp ugt i64 %.sroa.013.0.i, 288230376151711743
  br i1 %i.c, label %bb.u, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val35.i = load i64, ptr %i.d, align 8, !alias.scope !3427
  %i.e = shl i64 %.val35.i, 1
  %..i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.a, i64 %i.e)
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.f = shl nuw nsw i64 %.sroa.013.0.i, 5        ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !3427, !noundef !11 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !3427, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !3427, !nonnull !11, !noundef !11 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !3427, !nonnull !11, !noundef !11 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !noalias !3427, !nonnull !11, !noundef !11 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = and i64 %i.q, 7
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr i8, ptr %i.o, i64 %i.s     ; 3 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.p to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult ptr %i.t, %i.p
  %i.y = icmp ugt i64 %i.f, %i.w
  %or.cond.i.i = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond.i.i, label %bb.s, label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i

_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.g
  %i.z = sub nsw i64 0, %i.f
  %i.aa = getelementptr i8, ptr %i.t, i64 %i.z    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  store ptr %i.aa, ptr %i.n, align 8, !noalias !3427
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.ab = shl i64 %i.h, 5                         ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !3427, !nonnull !11, !noundef !11 ; 7 uses
  %.val.i = load ptr, ptr %i.ac, align 8, !alias.scope !3427 ; 7 uses
  %i.ae = icmp eq i64 %i.ab, 0
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !3427, !nonnull !11, !noundef !11 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !3427, !nonnull !11, !noundef !11 ; 2 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !noalias !3427, !nonnull !11, !noundef !11
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = and i64 %i.ak, 7
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr i8, ptr %i.ai, i64 %i.am  ; 4 uses
  %i.ao = icmp ult ptr %i.an, %i.aj
  br i1 %i.ao, label %bb.k, label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i.i

_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  store ptr %i.an, ptr %i.ah, align 8, !noalias !3427
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  %.not.i.i = icmp ugt i64 %i.f, %i.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  br i1 %.not.i.i, label %bb.l, label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.ap = tail call noundef ptr @_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump17alloc_layout_slowB5_(ptr noundef nonnull align 8 %.val.i, i64 noundef 8, i64 noundef 0) #33, !noalias !3427
  br label %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.i

bb.l:                                             ; preds = %bb.j
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !3427 ; 3 uses
  %.phi.trans.insert30.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 32 ; 3 uses
  %.pre31.i.i.i = load ptr, ptr %.phi.trans.insert30.i.i.i, align 8, !noalias !3427 ; 4 uses
  %i.aq = icmp eq ptr %.pre31.i.i.i, %i.ad
  br i1 %i.aq, label %bb.m, label %._RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i_crit_edge.i.i

._RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i_crit_edge.i.i: ; preds = %bb.l
  %.pre.i.i = load ptr, ptr %.pre.i.i.i, align 8, !noalias !3427
  br label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i.i.i

_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i.i.i: ; preds = %bb.m, %._RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i_crit_edge.i.i
  %4 = phi ptr [ %.pre.i.i, %._RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i_crit_edge.i.i ], [ %i.bc, %bb.m ] ; 2 uses
  %.pre-phi8.i.pre-phi.i.pre-phi = ptrtoint ptr %4 to i64
  %i.ar = ptrtoint ptr %.pre31.i.i.i to i64
  %i.as = and i64 %i.ar, 7
  %i.at = sub nsw i64 0, %i.as
  %i.au = getelementptr i8, ptr %.pre31.i.i.i, i64 %i.at ; 3 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %.pre-phi8.i.pre-phi.i.pre-phi
  %i.ax = icmp ult ptr %i.au, %4
  %i.ay = icmp ugt i64 %i.f, %i.aw
  %or.cond.i23.i.i.i = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %or.cond.i23.i.i.i, label %bb.o, label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit25.i.i.i

_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit25.i.i.i: ; preds = %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i.i.i
  %i.az = sub nsw i64 0, %i.f
  %i.ba = getelementptr i8, ptr %i.au, i64 %i.az  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  store ptr %i.ba, ptr %.phi.trans.insert30.i.i.i, align 8, !noalias !3427
  br label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bb = sub nuw nsw i64 %i.f, %i.ab             ; 2 uses
  %i.bc = load ptr, ptr %.pre.i.i.i, align 8, !noalias !3427, !nonnull !11, !noundef !11 ; 3 uses
  %i.bd = ptrtoint ptr %i.ad to i64
  %i.be = and i64 %i.bd, 7
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = getelementptr i8, ptr %.pre31.i.i.i, i64 %i.bf ; 3 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bc to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = icmp ult ptr %i.bg, %i.bc
  %i.bl = icmp ugt i64 %i.bb, %i.bj
  %or.cond.i.i.i.i = select i1 %i.bk, i1 true, i1 %i.bl
  br i1 %or.cond.i.i.i.i, label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = sub nsw i64 0, %i.bb
  %i.bn = getelementptr i8, ptr %i.bg, i64 %i.bm  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  store ptr %i.bn, ptr %.phi.trans.insert30.i.i.i, align 8, !noalias !3427
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bn, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ad, i64 range(i64 1, 9223372036854775792) %i.ab, i1 false), !noalias !3427
  br label %bb.t

bb.o:                                             ; preds = %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i.i.i
  %i.bo = tail call noundef ptr @_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump17alloc_layout_slowB5_(ptr noundef nonnull align 8 %.val.i, i64 noundef range(i64 8, 17) 8, i64 noundef range(i64 2, 9223372036854775793) %i.f) #33, !noalias !3427 ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not22.i.i.i, label %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.thread43.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit25.i.i.i
  %.sroa.013.0.i.i.i = phi ptr [ %i.ba, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit25.i.i.i ], [ %i.bo, %bb.o ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.013.0.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ad, i64 range(i64 1, 9223372036854775792) %i.ab, i1 false), !noalias !3427
  br label %bb.t

bb.q:                                             ; preds = %bb.j
  %i.bp = sub nuw i64 %i.ab, %i.f                 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !3427, !nonnull !11, !noundef !11
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !3427, !nonnull !11, !noundef !11 ; 2 uses
  %i.bu = icmp ne ptr %i.bt, %i.ad
  %i.bv = lshr exact i64 %i.ab, 1
  %.not.i.i.i = icmp ult i64 %i.bp, %i.bv
  %or.cond.i = select i1 %i.bu, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bp ; 3 uses
  store ptr %i.bw, ptr %i.bs, align 8, !noalias !3427
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bw, ptr nonnull align 1 %i.ad, i64 range(i64 0, 9223372036854775793) %i.f, i1 false), !noalias !3427
  br label %bb.t

bb.s:                                             ; preds = %bb.g
  %i.bx = tail call noundef ptr @_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump17alloc_layout_slowB5_(ptr noundef nonnull align 8 %i.k, i64 noundef 8, i64 noundef %i.f) #33, !noalias !3427
  br label %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.i

_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.s, %bb.k
  %.sroa.022.2.i = phi ptr [ %i.ap, %bb.k ], [ %i.bx, %bb.s ] ; 2 uses
  %i.by = icmp eq ptr %.sroa.022.2.i, null
  br i1 %i.by, label %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.thread43.i, label %bb.t

_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.thread43.i: ; preds = %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.i, %bb.o
  tail call void @_RNvNtCsaPYV88GQHqL_7bumpalo5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.f) #30, !noalias !3427
  unreachable

bb.t:                                             ; preds = %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.i, %bb.r, %bb.q, %bb.p, %bb.n, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i.i, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i
  %.sroa.022.242.i = phi ptr [ %.sroa.022.2.i, %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.i ], [ %i.ad, %bb.q ], [ %i.bn, %bb.n ], [ %.sroa.013.0.i.i.i, %bb.p ], [ %i.bw, %bb.r ], [ %i.aa, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i ], [ %i.an, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i.i ]
  store ptr %.sroa.022.242.i, ptr %0, align 8, !alias.scope !3427
  store i64 %.sroa.013.0.i, ptr %i.g, align 8, !alias.scope !3427
  ret void

bb.u:                                             ; preds = %bb.d, %bb.c, %bb.b
  tail call void @_RNvNtNtCsaPYV88GQHqL_7bumpalo11collections7raw_vec17capacity_overflow() #30
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3m_10UnwindSafeNtB32_4SyncEL_EE8get_slowCsibhcYuwTAtB_13typst_realize(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1400 x i8], align 8              ; 5 uses
  %i.b = alloca [1400 x i8], align 8              ; 5 uses
  %i.c = alloca [1400 x i8], align 8              ; 5 uses
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = cmpxchg ptr %i.e, i64 0, i64 1 acq_rel acquire, align 8
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !11 ; 3 uses
  %i.j = icmp ult i64 %i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val13 = load ptr, ptr %i.l, align 8, !nonnull !11, !noundef !11
  %i.m = getelementptr i8, ptr %1, i64 32
  %.val14 = load ptr, ptr %i.m, align 8, !nonnull !11, !align !13, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %.val14, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !11, !noalias !3445, !nonnull !11
  call void %i.o(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.c, ptr noundef nonnull %.val13) #32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !range !27, !alias.scope !3446, !noundef !11
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.p, ptr noundef nonnull align 8 dereferenceable(1400) %i.c, i64 1400, i1 false)
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.d, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.p, ptr noundef nonnull align 8 dereferenceable(1400) %i.c, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.t = inttoptr i64 %2 to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.u, align 8
  store i64 1, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.w, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit27

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit27: ; preds = %bb.v, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i26, %bb.r, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheE3newCsibhcYuwTAtB_13typst_realize.exit9, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit
  ret void

common.resume:                                    ; preds = %bb.aa, %bb.f, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.bx, %bb.t ], [ %i.s, %bb.f ], [ %i.co, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #27
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.x = urem i64 %2, %i.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !11, !noundef !11
  %i.aa = getelementptr inbounds nuw [64 x i8], ptr %i.z, i64 %i.x ; 12 uses
  %i.ab = cmpxchg ptr %i.aa, i32 0, i32 1 acquire monotonic, align 4, !noalias !3447
  %i.ac = extractvalue { i32, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsibhcYuwTAtB_13typst_realize.exit37

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 5 uses
  %i.ae = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !3447
  %i.af = and i64 %i.ae, 9223372036854775807
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEE8try_lockCsibhcYuwTAtB_13typst_realize.exit.thread, label %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEE8try_lockCsibhcYuwTAtB_13typst_realize.exit, !prof !21

_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEE8try_lockCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.i
  %i.ah = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #33, !noalias !3447 ; 3 uses
  %i.ai = load atomic i8, ptr %i.ad monotonic, align 1, !noalias !3447
  %.not.i.not.i.not = icmp eq i8 %i.ai, 0
  br i1 %.not.i.not.i.not, label %bb.j, label %bb.w

_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEE8try_lockCsibhcYuwTAtB_13typst_realize.exit.thread: ; preds = %bb.i
  %i.aj = load atomic i8, ptr %i.ad monotonic, align 1, !noalias !3447
  %.not.i.not.i.not66 = icmp eq i8 %i.aj, 0
  br i1 %.not.i.not.i.not66, label %.thread70, label %.thread

bb.j:                                             ; preds = %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEE8try_lockCsibhcYuwTAtB_13typst_realize.exit
  %i.ak = xor i1 %i.ah, true
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !noundef !11 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.k, label %bb.n

.thread70:                                        ; preds = %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEE8try_lockCsibhcYuwTAtB_13typst_realize.exit.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !11 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.thread74, label %bb.n

bb.k:                                             ; preds = %bb.j
  br i1 %i.ah, label %.thread74, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

.thread74:                                        ; preds = %.thread70, %bb.k
  %i.ar = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.as = and i64 %i.ar, 9223372036854775807
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc24, !prof !21

.noexc24:                                         ; preds = %.thread74
  %i.au = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #33
  br i1 %i.au, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc24
  store atomic i8 1, ptr %i.ad monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.l, %.noexc24, %.thread74, %bb.k
  %i.av = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.aw = icmp eq i32 %i.av, 2
  br i1 %i.aw, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit, !prof !12

bb.m:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
end_hunk_0
