inline.NumInlined: 8054
inline.NumDeleted: 3226
begin_hunk_0_@_RNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7plannerNtB7_21DeltaExtensionPlannerNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlanner14plan_extension0Bb_:bb.a

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %.not9 = icmp eq ptr %.sroa.3.0.copyload, null
  br i1 %.not9, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !10203
  %.phi.trans.insert40 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.pre41 = load ptr, ptr %.phi.trans.insert40, align 8, !alias.scope !10203
  br label %bb.f

bb.w:                                             ; preds = %bb.u, %bb.s, %bb.f
  %.sroa.6.1 = phi ptr [ undef, %bb.f ], [ %.sroa.5.0.copyload, %bb.s ], [ %.sroa.5.0.copyload, %bb.u ]
  %.sroa.4.1 = phi ptr [ null, %bb.f ], [ %.sroa.3.0.copyload, %bb.s ], [ %.sroa.3.0.copyload, %bb.u ]
  %.sroa.0.1 = phi i64 [ 20, %bb.f ], [ %i.t, %bb.s ], [ %i.t, %bb.u ]
  store i64 %.sroa.0.1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6.1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  br label %common.ret

bb.x:                                             ; preds = %bb.y
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.ak, ptr %i.aj, align 8, !alias.scope !10203
  %.val16 = load ptr, ptr %i.o, align 8, !nonnull !12, !noundef !12
  %i.al = getelementptr i8, ptr %i.o, i64 8
  %.val17 = load ptr, ptr %i.al, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val17, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !490, !invariant.load !12
  %i.ao = add nsw i64 %i.an, -1
  %i.ap = and i64 %i.ao, -16
  %i.aq = getelementptr inbounds nuw i8, ptr %.val16, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !12, !noundef !12
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !12, !align !209, !noundef !12
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !12, !noundef !12
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !12, !align !209, !noundef !12
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !12, !align !209, !noundef !12
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !12
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !12, !align !209, !noundef !12
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !12
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !12, !align !209, !noundef !12
  %i.bk = getelementptr inbounds nuw i8, ptr %.val17, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !invariant.load !12, !nonnull !12
  %i.bm = invoke { ptr, ptr } %i.bl(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.av, ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bb, i64 noundef %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bf, i64 noundef %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.bj)
          to label %bb.z unwind label %bb.x       ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.bn = extractvalue { ptr, ptr } %i.bm, 0
  %i.bo = extractvalue { ptr, ptr } %i.bm, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.bn, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.bo, ptr %i.bq, align 8
  br label %bb.j

bb.aa:                                            ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 4) i8 @_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(744) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(744) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10209)
  %i.a = load i64, ptr %0, align 8, !range !5504, !alias.scope !10206, !noalias !10209, !noundef !12 ; 4 uses
  %i.b = icmp ne i64 %i.a, 72
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -70
  %i.d = icmp samesign ugt i64 %i.a, 69
  %i.e = select i1 %i.d, i64 %i.c, i64 2          ; 3 uses
  %i.f = load i64, ptr %1, align 8, !range !5504, !alias.scope !10209, !noalias !10206, !noundef !12 ; 4 uses
  %i.g = icmp ne i64 %i.f, 72
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -70
  %i.i = icmp samesign ugt i64 %i.f, 69
  %i.j = select i1 %i.i, i64 %i.h, i64 2          ; 2 uses
  %.not.i = icmp eq i64 %i.e, %i.j
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i64 %i.e, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.m
  ]

bb.c:                                             ; preds = %bb.a
  %i.k = tail call i8 @llvm.scmp.i8.i64(i64 %i.e, i64 %i.j)
  br label %_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.m) #55, !inline_history !10211
  br label %_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.p) #55, !inline_history !10211 ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.n, label %_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10215)
  %i.s = icmp ne i64 %i.a, 69                     ; 2 uses
  %i.t = zext i1 %i.s to i8
  %i.u = icmp ne i64 %i.f, 69                     ; 3 uses
  %.neg.i = sext i1 %i.u to i8
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.u, label %bb.l, label %bb.j

bb.i:                                             ; preds = %bb.g
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.v = add nsw i8 %.neg.i, %i.t
  br label %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.k:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.w, align 8, !alias.scope !10212, !noalias !10215, !nonnull !12, !noundef !12
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load i64, ptr %i.x, align 8, !alias.scope !10212, !noalias !10215, !noundef !12
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load ptr, ptr %i.y, align 8, !alias.scope !10215, !noalias !10212, !nonnull !12, !noundef !12
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3.i = load i64, ptr %i.z, align 8, !alias.scope !10215, !noalias !10212, !noundef !12
  %i.aa = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val2.i, i64 noundef %.val3.i), !noalias !10217, !inline_history !10218
  br label %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.l:                                             ; preds = %bb.h
  %i.ab = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(744) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(744) %1) #55, !inline_history !10218
  br label %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.0.0.i5 = phi i8 [ %i.ab, %bb.l ], [ %i.v, %bb.j ], [ %i.aa, %bb.k ] ; 2 uses
  %i.ac = icmp eq i8 %.sroa.0.0.i5, 0
  br i1 %i.ac, label %bb.o, label %_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.m:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = tail call fastcc noundef i8 @_RNvXs4k_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_25WildcardAdditionalOptionsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.ae) #55, !inline_history !10211
  br label %_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.n:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ai = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ag), !inline_history !10211
  br label %_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.o:                                             ; preds = %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.al = tail call fastcc noundef i8 @_RNvXs4k_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_25WildcardAdditionalOptionsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.aj) #55, !inline_history !10211
  br label %_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %bb.c, %bb.e, %bb.f, %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %bb.m, %bb.n, %bb.o
  %.sroa.0.0.i = phi i8 [ %i.k, %bb.c ], [ %i.n, %bb.e ], [ %i.ai, %bb.n ], [ %i.q, %bb.f ], [ %i.al, %bb.o ], [ %.sroa.0.0.i5, %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ], [ %i.af, %bb.m ] ; 2 uses
  %i.am = icmp eq i8 %.sroa.0.0.i, 0
  %. = select i1 %i.am, i8 3, i8 %.sroa.0.0.i
  ret i8 %.
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 16 ptr @_RNCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB7_10SimplifierNtNtCs8VI8w5SIoU4_15datafusion_expr8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups1_0Cs14kWLkQVSKO_14deltalake_core(i8 %.0.val, ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 8, ptr %i.a, align 16
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !10219
  %i.c = tail call noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, 17) 16) #51, !noalias !10219 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !59

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #50
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.a) #52
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 16 ptr @_RNCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB7_10SimplifierNtNtCs8VI8w5SIoU4_15datafusion_expr8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups9_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8
  store i64 11, ptr %i.a, align 16
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !10222
  %i.c = tail call noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, 17) 16) #51, !noalias !10222 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !59

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #50
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.a) #52
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXsg_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validationNtB7_30DataValidationExtensionPlannerNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlanner14plan_extension0Bb_(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 captures(none) %1, ptr noalias readnone align 8 captures(none) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [112 x i8], align 16              ; 6 uses
  %i.d = alloca [400 x i8], align 8               ; 12 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 9 uses
  %i.g = alloca [384 x i8], align 8               ; 11 uses
  %i.h = alloca [112 x i8], align 16              ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 9 uses
  %i.j = alloca [112 x i8], align 16              ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 9 uses
  %i.m = alloca [112 x i8], align 16              ; 9 uses
  %i.n = alloca [56 x i8], align 8                ; 11 uses
  %i.o = alloca [56 x i8], align 8                ; 16 uses
  %i.p = alloca [8 x i8], align 8                 ; 13 uses
  %i.q = alloca [16 x i8], align 8                ; 11 uses
  %i.r = alloca [16 x i8], align 16               ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 11 uses
  %i.t = alloca [16 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 11 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  %i.x = alloca [8 x i8], align 8                 ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 9 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 8, !range !470, !noundef !12
  switch i8 %i.ac, label %default.unreachable171 [
    i8 0, label %bb.b
    i8 1, label %bb.bw
    i8 2, label %bb.bx
  ]

default.unreachable171:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !12, !noundef !12
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !12, !align !209, !noundef !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !12, !nonnull !12
  %i.aj = invoke { ptr, ptr } %i.ai(ptr noundef nonnull %i.ae)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %.body66, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit, %.critedge, %bb.d
  %.pn29.pn = phi { ptr, i32 } [ %i.ak, %bb.d ], [ %eh.lpad-body, %.critedge ], [ %.pn15, %.body66 ], [ %i.bb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit ]
  store i8 2, ptr %i.ab, align 8
  resume { ptr, i32 } %.pn29.pn

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.al = extractvalue { ptr, ptr } %i.aj, 0      ; 3 uses
  %i.am = extractvalue { ptr, ptr } %i.aj, 1
  %i.an = getelementptr i8, ptr %i.am, i64 24
  %.val = load ptr, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void %.val(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.r, ptr noundef nonnull %i.al) #55
          to label %bb.f unwind label %bb.d, !inline_history !10225

bb.f:                                             ; preds = %bb.e
  %i.ao = load i128, ptr %i.r, align 16, !noundef !12
  %.not = icmp eq i128 %i.ao, -139322559024256030723011174454078399918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br i1 %.not, label %bb.g, label %bb.bv

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !12 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.h, label %bb.bj

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !12, !align !209, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.av = load ptr, ptr %i.as, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %.val32 = load ptr, ptr %i.av, align 8, !nonnull !12, !noundef !12 ; 5 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %.val33 = load ptr, ptr %i.aw, align 8          ; 5 uses
  %i.ax = atomicrmw add ptr %.val32, i64 1 monotonic, align 8
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val33) ]
  store ptr %.val32, ptr %i.t, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.val33, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 320
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ba)
          to label %bb.n unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.bc = atomicrmw sub ptr %.val32, i64 1 release, align 8, !noalias !10226
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bh

bb.m:                                             ; preds = %bb.ba, %bb.at, %bb.ah
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

bb.n:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 344
  %.val34 = load ptr, ptr %i.bf, align 8, !nonnull !12, !noundef !12
  %i.bg = getelementptr inbounds nuw i8, ptr %.val34, i64 64
  %.val35 = load ptr, ptr %i.bg, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.bh = atomicrmw add ptr %.val35, i64 1 monotonic, align 8
  %i.bi = icmp slt i64 %i.bh, 0
  br i1 %i.bi, label %bb.o, label %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit

bb.o:                                             ; preds = %bb.n
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !10231)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %.val32, ptr %i.q, align 8, !noalias !10234
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  store ptr %.val33, ptr %i.bj, align 8, !noalias !10234
  store ptr %.val35, ptr %i.p, align 8, !noalias !10234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10234
  %i.bk = getelementptr inbounds nuw i8, ptr %.val33, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !range !490, !invariant.load !12, !alias.scope !10231, !noalias !10237
  %i.bm = add nsw i64 %i.bl, -1
  %i.bn = and i64 %i.bm, -16
  %i.bo = getelementptr inbounds nuw i8, ptr %.val32, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %.val33, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !invariant.load !12, !alias.scope !10231, !noalias !10237, !nonnull !12
  %i.bs = invoke noundef nonnull ptr %i.br(ptr noundef nonnull %i.bp)
          to label %bb.p unwind label %.thread.i, !noalias !10237

end_hunk_0
begin_hunk_1_@_RNvMNtCs14kWLkQVSKO_14deltalake_core10test_utilsNtB2_10TestTables7as_path:bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.au, !noalias !10686

bb.au:                                            ; preds = %bb.at
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.thread31.i unwind label %bb.av, !noalias !10686

bb.av:                                            ; preds = %bb.au
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !10686
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.at
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.k, !noalias !10686

bb.aw:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fm, ptr nonnull align 1 %i.ff, i64 %i.fe, i1 false), !noalias !10686
  br label %bb.at

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10686
  %i.fq = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fq)
          to label %_RNvNtCs14kWLkQVSKO_14deltalake_core10test_utils13find_git_root.exit unwind label %bb.ax, !noalias !10686

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fq)
          to label %common.resume unwind label %bb.ay, !noalias !10686

bb.ay:                                            ; preds = %bb.ax
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !10686
  unreachable

common.resume:                                    ; preds = %bb.bc, %.body, %bb.bs, %.body.i, %bb.ax, %.thread31.i
  %common.resume.op = phi { ptr, i32 } [ %i.gk, %bb.bs ], [ %eh.lpad-body.i, %.body.i ], [ %i.fr, %bb.ax ], [ %.pn27.i, %.thread31.i ], [ %eh.lpad-body, %.body ], [ %i.fw, %bb.bc ]
  resume { ptr, i32 } %common.resume.op

bb.az:                                            ; preds = %bb.ar
  unreachable

bb.ba:                                            ; preds = %bb.bb, %.thread31.i, %bb.ap, %.body.i
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !10686
  unreachable

.thread31.i:                                      ; preds = %bb.bb, %bb.au, %bb.ap, %bb.r, %bb.m, %bb.k
  %.pn27.i = phi { ptr, i32 } [ %i.ag, %bb.r ], [ %i.fv, %bb.bb ], [ %i.u, %bb.k ], [ %i.z, %bb.m ], [ %i.fd, %bb.ap ], [ %i.fo, %bb.au ]
  %i.fu = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fu) #52
          to label %common.resume unwind label %bb.ba, !noalias !10686

bb.bb:                                            ; preds = %bb.j
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #52
          to label %.thread31.i unwind label %bb.ba, !noalias !10686

_RNvNtCs14kWLkQVSKO_14deltalake_core10test_utils13find_git_root.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fq), !noalias !10686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10686
  invoke void @_RINvMs16_NtCs2pqxYH9ZEk8_3std4pathNtB7_4Path4joinReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fm, i64 noundef %i.fe, ptr noalias noundef nonnull readonly captures(address, read_provenance) @401, i64 noundef 22)
          to label %bb.bd unwind label %bb.bc

bb.bc:                                            ; preds = %_RNvNtCs14kWLkQVSKO_14deltalake_core10test_utils13find_git_root.exit
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #52
          to label %common.resume unwind label %bb.bv

bb.bd:                                            ; preds = %_RNvNtCs14kWLkQVSKO_14deltalake_core10test_utils13find_git_root.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.bd
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bg

bb.bg:                                            ; preds = %.invoke, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.bq
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.be, %bb.bg
  %eh.lpad-body = phi { ptr, i32 } [ %i.fz, %bb.bg ], [ %i.fx, %bb.be ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #52
          to label %common.resume unwind label %bb.bv

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ga = load i64, ptr %1, align 8, !range !10685, !noundef !12 ; 2 uses
  %i.gb = xor i64 %i.ga, -9223372036854775808
  %i.gc = icmp slt i64 %i.ga, 0
  %i.gd = select i1 %i.gc, i64 %i.gb, i64 9
  switch i64 %i.gd, label %bb.bh [
    i64 0, label %.invoke
    i64 1, label %bb.bi
    i64 2, label %bb.bj
    i64 3, label %bb.bk
    i64 4, label %bb.bl
    i64 5, label %bb.bm
    i64 6, label %bb.bn
    i64 7, label %bb.bo
    i64 8, label %bb.bp
    i64 9, label %bb.bq
  ], !prof !10750

bb.bh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit
  unreachable

bb.bi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit
  br label %.invoke

bb.bj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit
  br label %.invoke

bb.bk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit
  br label %.invoke

bb.bl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit
  br label %.invoke

bb.bm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit
  br label %.invoke

bb.bn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit
  br label %.invoke

bb.bo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit
  br label %.invoke

bb.bp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit
  br label %.invoke

.invoke:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp
  %i.ge = phi ptr [ @400, %bb.bp ], [ @399, %bb.bo ], [ @398, %bb.bn ], [ @397, %bb.bm ], [ @396, %bb.bl ], [ @403, %bb.bk ], [ @394, %bb.bj ], [ @393, %bb.bi ], [ @402, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.gf = phi i64 [ 19, %bb.bp ], [ 23, %bb.bo ], [ 11, %bb.bn ], [ 29, %bb.bm ], [ 23, %bb.bl ], [ 35, %bb.bk ], [ 13, %bb.bj ], [ 28, %bb.bi ], [ 12, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !nonnull !12, !noundef !12
  %i.gi = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.gj = load i64, ptr %i.gi, align 8, !noundef !12
  invoke void @_RINvMs16_NtCs2pqxYH9ZEk8_3std4pathNtB7_4Path4joinReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gh, i64 noundef %i.gj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ge, i64 noundef %i.gf)
          to label %bb.br unwind label %bb.bg

bb.bq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @404, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @406) #50
          to label %bb.bu unwind label %bb.bg

bb.br:                                            ; preds = %.invoke
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit4 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.br
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.bu:                                            ; preds = %bb.bq
  unreachable

bb.bv:                                            ; preds = %.body, %bb.bc
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engineNtB2_16DataFusionEngine16new_from_context(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.c = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @428)
          to label %bb.b unwind label %bb.f       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %i.e = extractvalue { i64, ptr } %i.c, 1
  %i.f = tail call { ptr, ptr } @_RNvMNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engineNtB2_16DataFusionEngine3new(ptr noundef nonnull %0, i64 noundef %i.d, ptr noundef %i.e) ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.h, ptr %i.k, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !10751
  %i.l = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, 17) 8) #51, !noalias !10751 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineEE3newB16_.exit, !prof !59

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #50
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineEEB1p_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #52
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.f, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.p, %bb.f ], [ %i.p, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineEE3newB16_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.l

bb.f:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !10754
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #54
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engineNtB2_16DataFusionEngine16new_from_session(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(144) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !12, !nonnull !12
  %i.e = tail call noundef nonnull ptr %i.d(ptr noundef nonnull %0) #55 ; 3 uses
  store ptr %i.e, ptr %i.b, align 8
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @429)
          to label %bb.b unwind label %bb.f       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0
  %i.h = extractvalue { i64, ptr } %i.f, 1
  %i.i = tail call { ptr, ptr } @_RNvMNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engineNtB2_16DataFusionEngine3new(ptr noundef nonnull %i.e, i64 noundef %i.g, ptr noundef %i.h) ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.k, ptr %i.n, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !10759
  %i.o = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, 17) 8) #51, !noalias !10759 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineEE3newB16_.exit, !prof !59

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #50
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineEEB1p_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #52
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.f, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.s, %bb.f ], [ %i.s, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineEE3newB16_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.o

bb.f:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !10762
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #54
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engineNtB2_16DataFusionEngine3new(ptr noundef nonnull %0, i64 noundef range(i64 0, 2) %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 10 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 3 uses
  %i.i = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.i, align 8
  store i64 %1, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %2, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.k = atomicrmw add ptr %0, i64 1 monotonic, align 8
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = trunc nuw i64 %1 to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.n = atomicrmw add ptr %2, i64 1 monotonic, align 8
  %i.o = icmp slt i64 %i.n, 0                     ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.o, label %bb.f, label %bb.h

bb.d:                                             ; preds = %bb.b
  br i1 %i.o, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i = phi i64 [ 0, %bb.d ], [ 1, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.0.0.i, ptr %i.c, align 8, !noalias !10767
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.p, align 8, !noalias !10767
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10767
  store ptr %0, ptr %i.b, align 8, !noalias !10767
  %i.q = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @37)
          to label %bb.k unwind label %bb.i, !noalias !10767 ; 2 uses

bb.i:                                             ; preds = %bb.k, %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.n, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.y, %bb.n ]
  %i.s = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !10770
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.j:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.p, !noalias !10767

bb.k:                                             ; preds = %bb.h
  %i.u = extractvalue { i64, i64 } %i.q, 0
  %i.v = extractvalue { i64, i64 } %i.q, 1
  invoke void @_RNvMs1_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EE24with_capacity_and_hasherCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, i64 noundef 0, i64 noundef %i.u, i64 noundef %i.v)
          to label %bb.l unwind label %bb.i, !noalias !10767

bb.l:                                             ; preds = %bb.k
  %.sroa.5.16.copyload.i = load ptr, ptr %i.a, align 8, !noalias !10767 ; 3 uses
  %.sroa.7.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.16.copyload.i = load i64, ptr %.sroa.7.16..sroa_idx.i, align 8, !noalias !10767 ; 2 uses
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !10775
  %i.w = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, 17) 8) #51, !noalias !10775 ; 7 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.m, label %bb.q, !prof !59

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #50
          to label %.noexc4.i unwind label %bb.n, !noalias !10767

.noexc4.i:                                        ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.16.copyload.i) ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtCs3JXekYNd0JR_7dashmap7DashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtBJ_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.sroa.5.16.copyload.i, i64 %.sroa.7.16.copyload.i) #52
          to label %.body.i unwind label %bb.o, !noalias !10767

bb.o:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !10767
  unreachable

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.j
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !10767
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.j, %.body.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.c) #52
          to label %.body13 unwind label %bb.p, !noalias !10767

bb.q:                                             ; preds = %bb.l
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.w, align 8, !noalias !10767
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations21update_field_metadataNtB4_26UpdateFieldMetadataBuilder22with_commit_properties:bb.a
bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionEEB1l_.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.f ], [ %i.d, %bb.c ], [ %i.c, %bb.b ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations21update_field_metadata26UpdateFieldMetadataBuilderEBM_(ptr noalias noundef align 8 dereferenceable(224) %1) #52
          to label %bb.h unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionEEB1l_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 224, i1 false)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.h:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations21update_field_metadataNtB4_26UpdateFieldMetadataBuilder27with_custom_execute_handler(ptr dead_on_unwind noalias noundef writable writeonly sret([224 x i8]) align 8 captures(none) dereferenceable(224) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(224) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11690)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !11690, !noundef !12 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !11693
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr %2, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr %3, ptr %i.g, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations21update_field_metadata26UpdateFieldMetadataBuilderEBM_(ptr noalias noundef align 8 dereferenceable(224) %1) #52
          to label %bb.f unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit: ; preds = %bb.b, %bb.a, %bb.c
  store ptr %2, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr %3, ptr %i.h, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 224, i1 false)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations21update_field_metadataNtB4_26UpdateFieldMetadataBuilder3new(ptr dead_on_unwind noalias noundef writable writeonly sret([224 x i8]) align 8 captures(none) dereferenceable(224) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.h = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @37)
          to label %bb.b unwind label %bb.i       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @39, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %i.j, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs3_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_16CommitPropertiesNtNtCsbvkFyIu7lgC_4core7default7Default7default(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !11698
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %2, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.s, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.f:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.g, %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEEB18_.exit
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit: ; preds = %bb.c, %bb.d
  %i.v = load i64, ptr %i.c, align 8, !range !50, !alias.scope !11703, !noundef !12
  %i.w = icmp eq i64 %i.v, -9223372036854775808
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEEB18_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEEB18_.exit unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEEB18_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit, %bb.g
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #52
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEEB18_.exit
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %.critedge unwind label %bb.f

bb.i:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load i64, ptr %3, align 8, !range !50, !alias.scope !11706, !noundef !12
  %i.z = icmp eq i64 %i.y, -9223372036854775808
  br i1 %i.z, label %.noexc10, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc10 unwind label %bb.f

.critedge:                                        ; preds = %.noexc10, %bb.k, %bb.h
  %.pn16 = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.x, %bb.k ], [ %i.x, %.noexc10 ]
  resume { ptr, i32 } %.pn16

.noexc10:                                         ; preds = %bb.j, %bb.i
  %i.aa = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !11709
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.k, label %.critedge

bb.k:                                             ; preds = %.noexc10
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f) #54
          to label %.critedge unwind label %bb.f
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7plannerNtB4_21DeltaExtensionPlanner3new() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !11714
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, 17) 8) #51, !noalias !11714 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, !prof !59

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #50, !noalias !11714
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtNtNtB8_6kernel8snapshot13EagerSnapshot17add_actions_table(ptr dead_on_unwind noalias noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, i1 noundef zeroext %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.68.i = alloca [32 x i8], align 8         ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 9 uses
  %i.e = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.6.i = alloca [32 x i8], align 8          ; 6 uses
  %i.f = alloca [128 x i8], align 16              ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.613 = alloca [32 x i8], align 8          ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [112 x i8], align 16              ; 6 uses
  %i.j = alloca [96 x i8], align 16               ; 7 uses
  %.sroa.66 = alloca [24 x i8], align 8           ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 14 uses
  %i.l = alloca [16 x i8], align 16               ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.m, align 8
  call fastcc void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtNtNtB8_6kernel8snapshot13EagerSnapshot27add_actions_expr_and_schema(ptr noalias noundef align 16 captures(none) dereferenceable(128) %i.f, ptr %.val)
  %i.n = load i64, ptr %i.f, align 16, !range !550, !noundef !12 ; 2 uses
  %i.o = icmp eq i64 %i.n, 10
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.p, i64 96, i1 false)
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.l, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.619.0..sroa_idx, i64 16, i1 false)
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.231.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %i.n, ptr %i.i, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.619.0..sroa_idx)
          to label %bb.e unwind label %bb.an

bb.d:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body44

bb.e:                                             ; preds = %bb.c
  invoke fastcc void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtNtNtB8_6kernel8snapshot13EagerSnapshot31add_actions_batches_with_schema(ptr noalias noundef align 16 captures(address) dereferenceable(96) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i1 noundef zeroext %2, ptr noalias noundef align 16 captures(address) dereferenceable(112) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.h)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.r = load i64, ptr %i.j, align 16, !range !55, !noundef !12 ; 2 uses
  %.not = icmp eq i64 %i.r, -9223372036854775711
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.66, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.327.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.624.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.226.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.66, i64 24, i1 false)
  store i64 %i.r, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.66, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !12 ; 2 uses
  %i.v = icmp ult i64 %i.u, 230584300921369396
  call void @llvm.assume(i1 %i.v)
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %bb.i, label %bb.ad

bb.i:                                             ; preds = %bb.h
  %.val36 = load i8, ptr %i.l, align 16, !range !358, !noundef !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val37 = load ptr, ptr %i.x, align 8           ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11717)
  %i.y = icmp eq i8 %.val36, 2
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11717
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val37) ]
  invoke void @_RNvXs0_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_conversionNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaINtB5_13TryFromKernelRNtNtB9_6schema10StructTypeE15try_from_kernel(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val37)
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.j
  %i.z = load ptr, ptr %i.e, align 8, !noalias !11717, !noundef !12 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false), !noalias !11717
  br i1 %i.aa, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11717
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 37, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc38 unwind label %bb.z

.noexc38:                                         ; preds = %bb.k
  %i.ac = load i64, ptr %i.b, align 8, !range !49, !noalias !11717, !noundef !12
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !50, !noalias !11717, !noundef !12 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ad, label %bb.x, label %bb.y, !prof !51

bb.l:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11717
  %.sroa.4.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx24.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false)
  store i64 -9223372036854775741, ptr %0, align 16, !alias.scope !11717
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtNtNtB8_6kernel8snapshot13EagerSnapshot25add_actions_batches_empty.exit

bb.m:                                             ; preds = %.noexc
  %.sroa.620.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.620.0..sroa_idx.i, i64 24, i1 false), !noalias !11717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11717
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false), !noalias !11717
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11717
  store i64 1, ptr %i.a, align 8, !noalias !11717
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ah, align 8, !noalias !11717
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.z, ptr %i.ai, align 8, !noalias !11717
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !11720
  %i.aj = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, 17) 8) #51, !noalias !11720 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.n, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE3newCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !59

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #50
          to label %.noexc.i unwind label %bb.o, !noalias !11717

.noexc.i:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #52
          to label %.body unwind label %bb.p, !noalias !11717

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !11717
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE3newCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aj, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !11717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11717
  invoke void @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch9new_empty(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noundef nonnull %i.aj)
          to label %.noexc39 unwind label %bb.z

.noexc39:                                         ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE3newCs14kWLkQVSKO_14deltalake_core.exit.i
  br i1 %2, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.noexc39
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  store i64 -9223372036854775711, ptr %0, align 16, !alias.scope !11717
  br label %.noexc41
end_hunk_2
begin_hunk_3_@_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation37collect_non_nullable_fields_recursive:bb.a

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !12684, !noalias !12687, !noundef !12 ; 3 uses
  %i.r = load i64, ptr %2, align 8, !range !378, !alias.scope !12684, !noalias !12687, !noundef !12
  %i.s = icmp eq i64 %i.q, %i.r
  br i1 %i.s, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.h unwind label %bb.f, !noalias !12687

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #52
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !12684, !noalias !12687, !nonnull !12, !noundef !12
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.y = add i64 %i.q, 1
  store i64 %i.y, ptr %i.p, align 8, !alias.scope !12684, !noalias !12687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.c

.loopexit:                                        ; preds = %bb.aa, %bb.r, %bb.u, %bb.k, %bb.l, %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %.body, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.i ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.loopexit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret void

bb.k:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !12, !noundef !12
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !12 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %.idx22 = shl nuw nsw i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx22
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.m

bb.l:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load i8, ptr %i.am, align 8, !range !2905, !noundef !12
  %i.ao = icmp eq i8 %i.an, 32
  br i1 %i.ao, label %bb.u, label %.loopexit

bb.m:                                             ; preds = %.lr.ph21, %bb.r
  %.sroa.0.020 = phi ptr [ %i.af, %.lr.ph21 ], [ %i.ap, %bb.r ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.n unwind label %.loopexit14

bb.n:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr %.sroa.0.020, align 8, !nonnull !12, !noundef !12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.as = load i64, ptr %i.ai, align 8, !alias.scope !12689, !noalias !12692, !noundef !12 ; 3 uses
  %i.at = load i64, ptr %i.d, align 8, !range !378, !alias.scope !12689, !noalias !12692, !noundef !12
  %i.au = icmp eq i64 %i.as, %i.at
  br i1 %i.au, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRNtNtB7_6string6StringE8grow_oneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.q unwind label %bb.s

bb.p:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.n, %bb.o
  %i.aw = load ptr, ptr %i.aj, align 8, !alias.scope !12689, !noalias !12692, !nonnull !12, !noundef !12
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.as
  store ptr %i.ar, ptr %i.ax, align 8, !noalias !12692
  %i.ay = add i64 %i.as, 1
  store i64 %i.ay, ptr %i.ai, align 8, !alias.scope !12689, !noalias !12692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  invoke fastcc void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation37collect_non_nullable_fields_recursive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ar, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(24) %2)
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.az = icmp eq ptr %i.ap, %i.ag
  br i1 %i.az, label %.loopexit, label %bb.m

bb.s:                                             ; preds = %bb.o
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #52
          to label %.body unwind label %bb.t

bb.t:                                             ; preds = %bb.ab, %bb.s, %.body
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.u:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !12, !noundef !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.bf = load i64, ptr %i.be, align 8, !noundef !12 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %.idx = shl nuw nsw i64 %i.bf, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx
  %i.bi = icmp eq i64 %i.bf, 0
  br i1 %i.bi, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.aa
  %.sroa.02.019 = phi ptr [ %i.bg, %.lr.ph ], [ %i.bl, %bb.aa ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.02.019, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit

bb.w:                                             ; preds = %bb.v
  %i.bm = load ptr, ptr %.sroa.02.019, align 8, !nonnull !12, !noundef !12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.bo = load i64, ptr %i.bj, align 8, !alias.scope !12694, !noalias !12697, !noundef !12 ; 3 uses
  %i.bp = load i64, ptr %i.b, align 8, !range !378, !alias.scope !12694, !noalias !12697, !noundef !12
  %i.bq = icmp eq i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRNtNtB7_6string6StringE8grow_oneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.z unwind label %bb.ab

bb.y:                                             ; preds = %bb.z
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %bb.w, %bb.x
  %i.bs = load ptr, ptr %i.bk, align 8, !alias.scope !12694, !noalias !12697, !nonnull !12, !noundef !12
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bo
  store ptr %i.bn, ptr %i.bt, align 8, !noalias !12697
  %i.bu = add i64 %i.bo, 1
  store i64 %i.bu, ptr %i.bj, align 8, !alias.scope !12694, !noalias !12697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  invoke fastcc void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation37collect_non_nullable_fields_recursive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bn, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(24) %2)
          to label %bb.aa unwind label %bb.y

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bv = icmp eq ptr %i.bl, %i.bh
  br i1 %i.bv, label %.loopexit, label %bb.v

bb.ab:                                            ; preds = %bb.x
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #52
          to label %.body unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7file_id13file_id_field(ptr noalias noundef readonly captures(address, read_provenance) %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [128 x i8], align 8               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.not = icmp eq ptr %0, null                    ; 2 uses
  %. = select i1 %.not, ptr @538, ptr %0
  %.6 = select i1 %.not, i64 20, i64 %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12699
  store i8 24, ptr %i.a, align 8, !noalias !12699
  call void @_RNvNtCs2xb0BKvnu80_21datafusion_datasource16file_scan_config27wrap_partition_type_in_dict(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12699
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMs5_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5Field3newReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %., i64 noundef %.6, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.e, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !12702
  %i.f = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, 17) 8) #51, !noalias !12702 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !59

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #50
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(112) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.h

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7file_id17file_id_data_type(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 24, ptr %i.a, align 8
  call void @_RNvNtCs2xb0BKvnu80_21datafusion_datasource16file_scan_config27wrap_partition_type_in_dict(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core5table6config14parse_interval(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [64 x i8], align 8                ; 15 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  store ptr %1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 16, ptr %i.o, align 8
  %i.p = tail call noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh11starts_withCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @539, i64 noundef 9)
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12705
  store ptr %i.n, ptr %i.f, align 8, !noalias !12705
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !12705
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @237, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12705
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.m, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 16, ptr %.sroa.460.0..sroa_idx, align 8
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %1, ptr %.sroa.561.0..sroa_idx, align 8
  %.sroa.561.sroa.4.0..sroa.561.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 16, ptr %.sroa.561.sroa.4.0..sroa.561.0..sroa_idx.sroa_idx, align 8
  %.sroa.561.sroa.5.0..sroa.561.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %1, ptr %.sroa.561.sroa.5.0..sroa.561.0..sroa_idx.sroa_idx, align 8
  %.sroa.561.sroa.6.0..sroa.561.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr %i.q, ptr %.sroa.561.sroa.6.0..sroa.561.0..sroa_idx.sroa_idx, align 8
  %.sroa.561.sroa.7.0..sroa.561.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i64 0, ptr %.sroa.561.sroa.7.0..sroa.561.0..sroa_idx.sroa_idx, align 8
  %.sroa.662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i8 1, ptr %.sroa.662.0..sroa_idx, align 8
  %.sroa.763.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 57
  store i8 0, ptr %.sroa.763.0..sroa_idx, align 1
  %i.r = call fastcc { ptr, i64 } @_RINvYINtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB12_4find5checkReQNtB8_10IsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2d_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(64) %i.m) #55 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.s = call fastcc { ptr, i64 } @_RINvYINtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB12_4find5checkReQNtB8_10IsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2d_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(64) %i.m) #55 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0        ; 7 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.s, label %bb.e

bb.d:                                             ; preds = %bb.av, %bb.au, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %i.u = extractvalue { ptr, i64 } %i.s, 1        ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12708)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.t, ptr %i.e, align 8, !noalias !12711
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.u, ptr %i.v, align 8, !noalias !12711
  switch i64 %i.u, label %thread-pre-split.i.i [
    i64 0, label %_RNvNtNtCs14kWLkQVSKO_14deltalake_core5table6config9parse_int.exit
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.w = load i8, ptr %i.t, align 1, !alias.scope !12713, !noalias !12716, !noundef !12 ; 2 uses
  switch i8 %i.w, label %bb.g [
    i8 43, label %_RNvNtNtCs14kWLkQVSKO_14deltalake_core5table6config9parse_int.exit
    i8 45, label %_RNvNtNtCs14kWLkQVSKO_14deltalake_core5table6config9parse_int.exit
  ]

thread-pre-split.i.i:                             ; preds = %bb.e
  %.pr.i.i = load i8, ptr %i.t, align 1, !alias.scope !12713, !noalias !12716
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split.i.i, %bb.f
  %i.x = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.w, %bb.f ]
  switch i8 %i.x, label %bb.n [
    i8 43, label %bb.h
    i8 45, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.z = add nsw i64 %i.u, -1
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %i.ab = add nsw i64 %i.u, -1                    ; 3 uses
  %i.ac = icmp samesign ult i64 %i.u, 17
  br i1 %i.ac, label %.preheader114.i.i, label %.lr.ph.i.i

.preheader114.i.i:                                ; preds = %bb.i
  %.not103137.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not103137.i.i, label %_RNvNtNtCs14kWLkQVSKO_14deltalake_core5table6config9parse_int.exit.thread, label %.lr.ph141.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.l
  %.sroa.0.1136.i.i = phi ptr [ %i.ad, %bb.l ], [ %i.aa, %bb.i ] ; 3 uses
  %.sroa.26.1135.i.i = phi i64 [ %i.ae, %bb.l ], [ %i.ab, %bb.i ]
  %.sroa.084.0134.i.i = phi i64 [ %i.ap, %bb.l ], [ 0, %bb.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i, i64 1
  %i.ae = add nsw i64 %.sroa.26.1135.i.i, -1      ; 2 uses
  %i.af = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i, i64 10) ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 0
  %i.ah = extractvalue { i64, i1 } %i.af, 1
  br i1 %i.ah, label %.loopexit.sink.split.i, label %bb.j, !prof !51

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.ai = load i8, ptr %.sroa.0.1136.i.i, align 1, !alias.scope !12713, !noalias !12716, !noundef !12
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -48                  ; 2 uses
  %i.al = icmp ult i32 %i.ak, 10
  br i1 %i.al, label %bb.k, label %_RNvNtNtCs14kWLkQVSKO_14deltalake_core5table6config9parse_int.exit

bb.k:                                             ; preds = %bb.j
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ag, i64 %i.am) ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  br i1 %i.ao, label %_RNvNtNtCs14kWLkQVSKO_14deltalake_core5table6config9parse_int.exit, label %bb.l, !prof !51

bb.l:                                             ; preds = %bb.k
  %i.ap = extractvalue { i64, i1 } %i.an, 0       ; 2 uses
  %.not102.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not102.i.i, label %_RNvNtNtCs14kWLkQVSKO_14deltalake_core5table6config9parse_int.exit.thread, label %.lr.ph.i.i

.lr.ph141.i.i:                                    ; preds = %.preheader114.i.i, %bb.m
end_hunk_3
begin_hunk_4_@_RNvXs9R_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_11DropTriggerNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp:bb.a
  %i.d = load i8, ptr %i.c, align 8, !range !208, !noundef !12
  %i.e = sub nsw i8 %i.b, %i.d                    ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val18 = load ptr, ptr %i.g, align 8, !nonnull !12, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val19 = load i64, ptr %i.h, align 8, !noundef !12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val20 = load ptr, ptr %i.i, align 8, !nonnull !12, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val21 = load i64, ptr %i.j, align 8, !noundef !12
  %i.k = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val18, i64 noundef %.val19, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val20, i64 noundef %.val21) ; 2 uses
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !range !50, !noundef !12
  %.not = icmp eq i64 %i.n, -9223372036854775808
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i64, ptr %i.o, align 8, !range !50, !noundef !12
  %.not10 = icmp eq i64 %i.p, -9223372036854775808 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not10, label %bb.k, label %bb.g

bb.e:                                             ; preds = %bb.c
  br i1 %.not10, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.r = load i8, ptr %i.q, align 1, !range !1598, !noundef !12 ; 2 uses
  %.not12 = icmp eq i8 %i.r, 5
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.t = load i8, ptr %i.s, align 1, !range !1598, !noundef !12 ; 3 uses
  br i1 %.not12, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.u, align 8, !nonnull !12, !noundef !12
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val15 = load i64, ptr %i.v, align 8, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val16 = load ptr, ptr %i.w, align 8, !nonnull !12, !noundef !12
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val17 = load i64, ptr %i.x, align 8, !noundef !12
  %i.y = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val16, i64 noundef %.val17) ; 2 uses
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.k

bb.h:                                             ; preds = %bb.f
  %.not14 = icmp eq i8 %i.t, 5
  br i1 %.not14, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  %.not13 = icmp ne i8 %i.t, 5
  %. = sext i1 %.not13 to i8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aa = zext nneg i8 %i.r to i64
  %i.ab = zext nneg i8 %i.t to i64
  %i.ac = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.aa, i64 %i.ab)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.d, %bb.e, %bb.a, %bb.g, %bb.j, %bb.b
  %.sroa.0.0 = phi i8 [ %i.k, %bb.b ], [ %i.ac, %bb.j ], [ %i.e, %bb.a ], [ %., %bb.i ], [ 1, %bb.d ], [ %i.y, %bb.g ], [ -1, %bb.e ], [ 1, %bb.h ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs9S_NtCs4lawaffTVVK_9sqlparser3astNtB6_25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(704) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(704) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5008, !noundef !12
  %.not = icmp eq i64 %i.a, 69
  %i.b = load i64, ptr %1, align 8, !range !5008, !noundef !12
  %.not12 = icmp eq i64 %i.b, 69                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not12, label %_RNvXsa2_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %.not12, label %bb.d, label %_RNvXsa2_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.d = load i8, ptr %i.c, align 8, !range !15166, !noundef !12
  %.not14 = icmp eq i8 %i.d, 103
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.f = load i8, ptr %i.e, align 8, !range !15166, !noundef !12
  %.not15 = icmp eq i8 %i.f, 103                  ; 2 uses
  br i1 %.not14, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) #55 ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %_RNvXsa2_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.f:                                             ; preds = %bb.d
  br i1 %.not15, label %_RNvXsa2_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, label %bb.h

bb.g:                                             ; preds = %bb.d
  br i1 %.not15, label %bb.h, label %_RNvXsa2_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15170)
  %i.k = load i64, ptr %i.i, align 8, !range !50, !alias.scope !15167, !noalias !15170, !noundef !12
  %i.l = icmp ne i64 %i.k, -9223372036854775808   ; 2 uses
  %i.m = zext i1 %i.l to i8
  %i.n = load i64, ptr %i.j, align 8, !range !50, !alias.scope !15170, !noalias !15167, !noundef !12
  %i.o = icmp ne i64 %i.n, -9223372036854775808   ; 3 uses
  %.neg.i = sext i1 %i.o to i8
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %i.o, label %bb.n, label %bb.k

bb.j:                                             ; preds = %bb.h
  br i1 %i.o, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = add nsw i8 %.neg.i, %i.m
  br label %_RNvXsa2_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.l:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !15167, !noalias !15170, !nonnull !12, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !15167, !noalias !15170, !noundef !12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !15170, !noalias !15167, !nonnull !12, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !15170, !noalias !15167, !noundef !12 ; 2 uses
  %.sroa.0.0.i.i18 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 3431314001806093) %i.x, i64 range(i64 0, 3431314001806093) %i.t) ; 2 uses
  %exitcond.not36 = icmp eq i64 %.sroa.0.0.i.i18, 0
  br i1 %exitcond.not36, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %i.y = add nuw i64 %.sroa.01.0.i37, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %.sroa.0.0.i.i18
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.m, %bb.l
  %i.z = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.t, i64 %i.x)
  br label %_RNvXsa2_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %.sroa.01.0.i37 = phi i64 [ %i.y, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [2688 x i8], ptr %i.r, i64 %.sroa.01.0.i37
  %i.ab = getelementptr inbounds nuw [2688 x i8], ptr %i.v, i64 %.sroa.01.0.i37
  %i.ac = tail call fastcc noundef i8 @_RNvXsc8_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ab) #55, !noalias !15172, !inline_history !15173 ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %_RNvXsa2_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.n:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15177)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !15174, !noalias !15177, !nonnull !12, !noundef !12
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !15174, !noalias !15177, !noundef !12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !15177, !noalias !15174, !nonnull !12, !noundef !12
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !15177, !noalias !15174, !noundef !12 ; 2 uses
  %.sroa.0.0.i20 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 3431314001806093) %i.al, i64 range(i64 0, 3431314001806093) %i.ah) ; 2 uses
  %exitcond29.not38 = icmp eq i64 %.sroa.0.0.i20, 0
  br i1 %exitcond29.not38, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast9StatementINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2E_s_0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %.lr.ph41

bb.o:                                             ; preds = %.lr.ph41
  %i.am = add nuw i64 %.sroa.01.0.i.i39, 1        ; 2 uses
  %exitcond29.not = icmp eq i64 %i.am, %.sroa.0.0.i20
  br i1 %exitcond29.not, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast9StatementINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2E_s_0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %.lr.ph41

.lr.ph41:                                         ; preds = %bb.n, %bb.o
  %.sroa.01.0.i.i39 = phi i64 [ %i.am, %bb.o ], [ 0, %bb.n ] ; 3 uses
  %i.an = getelementptr inbounds nuw [2688 x i8], ptr %i.af, i64 %.sroa.01.0.i.i39
  %i.ao = getelementptr inbounds nuw [2688 x i8], ptr %i.aj, i64 %.sroa.01.0.i.i39
  %i.ap = tail call fastcc noundef i8 @_RNvXsc8_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ao) #55, !noalias !15179, !inline_history !15180 ; 2 uses
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.o, label %_RNvXsa2_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast9StatementINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2E_s_0ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.o, %bb.n
  %i.ar = tail call noundef i8 @llvm.ucmp.i8.i64(i64 %i.ah, i64 %i.al)
  br label %_RNvXsa2_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXsa2_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %.lr.ph, %.lr.ph41, %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast9StatementINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2E_s_0ECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.k, %._crit_edge, %bb.f, %bb.g, %bb.b, %bb.c, %bb.e
  %.sroa.0.0 = phi i8 [ 1, %bb.f ], [ -1, %bb.c ], [ -1, %bb.g ], [ 1, %bb.b ], [ %i.g, %bb.e ], [ %i.ap, %.lr.ph41 ], [ %i.p, %bb.k ], [ %i.z, %._crit_edge ], [ %i.ar, %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast9StatementINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2E_s_0ECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ac, %.lr.ph ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 16 ptr @_RNvXs9_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core7default7Default7defaultCs14kWLkQVSKO_14deltalake_core() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51
  %i.a = tail call noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, 17) 16) #51 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !59

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #50
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 7, ptr %i.a, align 16
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i128 2, ptr %.sroa.42.0..sroa_idx, align 16
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr null, ptr %.sroa.53.0..sroa_idx, align 16
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs9_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_11WindowFrameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 16, !range !208, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.d = load i8, ptr %i.c, align 16, !range !208, !noundef !12
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit4

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.g = load i8, ptr %i.f, align 1, !range !470, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 161
  %i.i = load i8, ptr %i.h, align 1, !range !470, !noundef !12
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit4

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15184)
  %i.k = load i128, ptr %0, align 16, !range !2337, !alias.scope !15181, !noalias !15184, !noundef !12
  %i.l = trunc nuw nsw i128 %i.k to i64           ; 2 uses
  %i.m = load i128, ptr %1, align 16, !range !2337, !alias.scope !15184, !noalias !15181, !noundef !12 ; 3 uses
  %i.n = trunc nuw nsw i128 %i.m to i64
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit4

bb.d:                                             ; preds = %bb.c
  switch i64 %i.l, label %default.unreachable [
    i64 0, label %bb.e
    i64 2, label %bb.f
    i64 1, label %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
  ]

default.unreachable:                              ; preds = %bb.g, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq i128 %i.m, 0
  br i1 %i.p, label %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.q = icmp eq i128 %i.m, 2
  br i1 %i.q, label %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.e, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = tail call noundef zeroext i1 @_RNvXs_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4_11ScalarValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.r, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.s)
  br i1 %i.t, label %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit4

_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.f, %bb.d, %bb.e, %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15189)
  %i.w = load i128, ptr %i.u, align 16, !range !2337, !alias.scope !15186, !noalias !15189, !noundef !12
  %i.x = trunc nuw nsw i128 %i.w to i64           ; 2 uses
  %i.y = load i128, ptr %i.v, align 16, !range !2337, !alias.scope !15189, !noalias !15186, !noundef !12 ; 3 uses
  %i.z = trunc nuw nsw i128 %i.y to i64
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit4

bb.g:                                             ; preds = %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
  switch i64 %i.x, label %default.unreachable [
    i64 0, label %bb.h
    i64 2, label %bb.i
    i64 1, label %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit4
  ]

.sink.split.i2:                                   ; preds = %bb.i, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ad = tail call noundef zeroext i1 @_RNvXs_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4_11ScalarValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ab, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ac)
  br label %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit4

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp eq i128 %i.y, 0
  br i1 %i.ae, label %.sink.split.i2, label %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit4

bb.i:                                             ; preds = %bb.g
  %i.af = icmp eq i128 %i.y, 2
  br i1 %i.af, label %.sink.split.i2, label %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit4

_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit4: ; preds = %bb.c, %bb.i, %bb.h, %.sink.split.i2, %bb.g, %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, %bb.b, %bb.a, %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ %i.ad, %.sink.split.i2 ], [ false, %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.h ], [ false, %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread ], [ true, %bb.g ], [ true, %bb.i ], [ false, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #24 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !186, !noundef !12
  %.not = icmp eq i64 %i.a, 3
  %i.b = load i64, ptr %1, align 8, !range !186, !noundef !12
  %i.c = icmp eq i64 %i.b, 3                      ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.d = tail call fastcc noundef zeroext i1 @_RNvXsg_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) #55
  br i1 %i.d, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i64, ptr %i.e, align 8, !noundef !12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i64, ptr %i.g, align 8, !noundef !12
  %i.i = icmp eq i64 %i.f, %i.h
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !12, !noundef !12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !12, !noundef !12
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.m, ptr nonnull %i.k, i64 %i.f)
  %i.n = icmp eq i32 %bcmp, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.c, %bb.b, %bb.e
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.b ], [ %i.n, %bb.f ], [ false, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1023, i64 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1024, i64 noundef 11, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1021, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1025, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1022)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1b_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EEEB2c_10advance_byCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(64) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !15191, !noundef !12
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %.thread.i.i, label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_RNvXs_NvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator10advance_byINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDB6_p4ItemINtNtBe_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_ENtB4_13SpecAdvanceBy15spec_advance_byCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %1) ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i, label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1i_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EEB1Z_EB2j_10advance_byCs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val21.pr.i.i = load ptr, ptr %i.b, align 8, !alias.scope !15191 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.val22.i.i = load ptr, ptr %i.f, align 8, !alias.scope !15191 ; 6 uses
  %i.g = icmp eq ptr %.val21.pr.i.i, null
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val22.i.i) ]
  %i.h = load ptr, ptr %.val22.i.i, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i23.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i23.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.h(ptr noundef nonnull %.val21.pr.i.i)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val22.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !378, !invariant.load !12 ; 2 uses
end_hunk_4
begin_hunk_5_@_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern18MultiCharEqPatternRScENtB5_7Pattern15is_contained_inCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.c = icmp eq ptr %i.am, %i.a
  br i1 %i.c, label %_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherRScENtB5_8Searcher10next_matchCs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherRScENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.loopexit.i
  %i.d = phi ptr [ %i.am, %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherRScENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.loopexit.i ], [ %1, %.lr.ph.i.preheader ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.f = load i8, ptr %i.d, align 1, !noalias !17533, !noundef !12 ; 5 uses
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %bb.b, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i: ; preds = %.lr.ph.i
  %i.h = and i8 %i.f, 31
  %i.i = zext nneg i8 %i.h to i32                 ; 3 uses
  %i.j = icmp ne ptr %i.e, %i.a
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.l = load i8, ptr %i.e, align 1, !noalias !17533, !noundef !12
  %i.m = shl nuw nsw i32 %i.i, 6
  %i.n = and i8 %i.l, 63
  %i.o = zext nneg i8 %i.n to i32                 ; 2 uses
  %i.p = or disjoint i32 %i.m, %i.o
  %i.q = icmp samesign ugt i8 %i.f, -33
  br i1 %i.q, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i, label %.preheader.i.preheader

bb.b:                                             ; preds = %.lr.ph.i
  %i.r = zext nneg i8 %i.f to i32
  br label %.preheader.i.preheader

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i
  %i.s = icmp ne ptr %i.k, %i.a
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.u = load i8, ptr %i.k, align 1, !noalias !17533, !noundef !12
  %i.v = shl nuw nsw i32 %i.o, 6
  %i.w = and i8 %i.u, 63
  %i.x = zext nneg i8 %i.w to i32
  %i.y = or disjoint i32 %i.v, %i.x               ; 2 uses
  %i.z = shl nuw nsw i32 %i.i, 12
  %i.aa = or disjoint i32 %i.y, %i.z
  %i.ab = icmp samesign ugt i8 %i.f, -17
  br i1 %i.ab, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.i, label %.preheader.i.preheader

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i
  %i.ac = icmp ne ptr %i.t, %i.a
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ae = load i8, ptr %i.t, align 1, !noalias !17533, !noundef !12
  %i.af = shl nuw nsw i32 %i.i, 18
  %i.ag = and i32 %i.af, 1835008
  %i.ah = shl nuw nsw i32 %i.y, 6
  %i.ai = and i8 %i.ae, 63
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ah, %i.aj
  %i.al = or disjoint i32 %i.ak, %i.ag
  br label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.i
  %i.am = phi ptr [ %i.t, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i ], [ %i.ad, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.i ], [ %i.k, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %.sroa.4.0.i.ph.i.i.i = phi i32 [ %i.aa, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i ], [ %i.al, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.i ], [ %i.p, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i ], [ %i.r, %bb.b ] ; 4 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = icmp eq i32 %.val3.i.i.i.i.i, %.sroa.4.0.i.ph.i.i.i
  br i1 %i.ao, label %_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherRScENtB5_8Searcher10next_matchCs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %.preheader.i.preheader
  %.val3.i.i.i.i.i.1 = load i32, ptr %.ptr.1, align 4, !range !5046, !alias.scope !17520, !noalias !17523, !noundef !12
  %i.ap = icmp eq i32 %.val3.i.i.i.i.i.1, %.sroa.4.0.i.ph.i.i.i
  br i1 %i.ap, label %_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherRScENtB5_8Searcher10next_matchCs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %.val3.i.i.i.i.i.2 = load i32, ptr %.ptr.2, align 4, !range !5046, !alias.scope !17520, !noalias !17523, !noundef !12
  %i.aq = icmp eq i32 %.val3.i.i.i.i.i.2, %.sroa.4.0.i.ph.i.i.i
  br i1 %i.aq, label %_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherRScENtB5_8Searcher10next_matchCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherRScENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.loopexit.i

_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherRScENtB5_8Searcher10next_matchCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherRScENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.loopexit.i, %.preheader.i.preheader, %.preheader.i.1, %.preheader.i.2, %bb.a
  %i.ar = phi i1 [ false, %bb.a ], [ false, %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherRScENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.loopexit.i ], [ true, %.preheader.i.1 ], [ true, %.preheader.i.2 ], [ true, %.preheader.i.preheader ]
  ret i1 %i.ar
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_flatten10TryFlattenINtB7_5MapOkINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1C_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB1C_6marker4SendEL_EENCNvMNtNtB4Q_6kernel8snapshotNtB6d_8Snapshot10file_views0EEB2D_9size_hintB4Q_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #28 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_flatten10TryFlattenINtB7_5MapOkINtNtNtB9_6stream3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EENCNvMNtNtB5f_6kernel8snapshotNtB6C_8Snapshot10tombstoness_0ENCB6z_s0_0EEB32_9size_hintB5f_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #28 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten7FlattenINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB15_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EEEB26_3nthCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(64) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1b_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EEEB2c_10advance_byCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %2) #55
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775742, ptr %0, align 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1b_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EEEB2c_4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) #55
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable_or_null(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9THREAD_ID0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !range !208, !noalias !17538, !noundef !12
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9THREAD_ID0s_0Cs14kWLkQVSKO_14deltalake_core.exit, label %bb.b, !prof !105

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.a, ptr noalias noundef align 8 dereferenceable_or_null(16) %0)
  br label %_RNCNKNvNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9THREAD_ID0s_0Cs14kWLkQVSKO_14deltalake_core.exit

_RNCNKNvNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9THREAD_ID0s_0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !208, !noalias !17543, !noundef !12
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs14kWLkQVSKO_14deltalake_core.exit, label %bb.b, !prof !105

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.a, ptr noalias noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs14kWLkQVSKO_14deltalake_core.exit

_RNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore14DELTA_LOG_PATH0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXs0_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathINtNtCsbvkFyIu7lgC_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @215, i64 noundef 10)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceB8_(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17548
  call void @_RNvMs3_NtNtCsonPGffhQyS_5regex5regex6stringNtB5_5Regex3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @216, i64 noundef 45), !noalias !17548
  call void @llvm.experimental.noalias.scope.decl(metadata !17551)
  call void @llvm.experimental.noalias.scope.decl(metadata !17554)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !17554, !noalias !17556, !noundef !12
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX0B5_.exit, !prof !51

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17558
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !17556
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @411, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #50
          to label %bb.d unwind label %bb.c, !noalias !17559

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsonPGffhQyS_5regex5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #52
          to label %bb.f unwind label %bb.e, !noalias !17559

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17559
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX0B5_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !alias.scope !17560, !noalias !17561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17548
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef nonnull ptr @_RNvYNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7planner13DELTA_PLANNER0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBa_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !17562
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, 17) 8) #51, !noalias !17562 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7planner13DELTA_PLANNER0B7_.exit, !prof !59

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #50, !noalias !17562
  unreachable

_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7planner13DELTA_PLANNER0B7_.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7planner24DELTA_EXTENSION_PLANNERS0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBa_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17565)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !17565
  %i.e = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, 17) 8) #51, !noalias !17565 ; 13 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i, !prof !59

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #50, !noalias !17565
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17565
  %i.g = invoke noundef nonnull ptr @_RNvMs5_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB5_27MergeMetricExtensionPlanner3new()
          to label %bb.d unwind label %bb.c, !noalias !17565 ; 2 uses

bb.c:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.d:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i
  store ptr %i.g, ptr %i.d, align 8, !noalias !17565
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @232, ptr %i.i, align 8, !noalias !17565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17565
  %i.j = invoke noundef nonnull ptr @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write7metricsNtB2_27WriteMetricExtensionPlanner3new()
          to label %bb.g unwind label %bb.f, !noalias !17565 ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit6.i: ; preds = %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit8.i, %bb.f
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.n, %bb.f ], [ %.pn.pn.i, %bb.h ], [ %.pn.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit8.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17568)
  call void @llvm.experimental.noalias.scope.decl(metadata !17571)
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !17574, !noalias !17565, !nonnull !12, !noundef !12
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !17575
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.r

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit6.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1N_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #54
          to label %bb.r unwind label %bb.q, !noalias !17565

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit6.i

bb.g:                                             ; preds = %bb.d
  store ptr %i.j, ptr %i.c, align 8, !noalias !17565
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @233, ptr %i.o, align 8, !noalias !17565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17565
  %i.p = invoke noundef nonnull ptr @_RNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations6deleteNtB5_28DeleteMetricExtensionPlanner3new()
          to label %bb.j unwind label %bb.i, !noalias !17565 ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit8.i: ; preds = %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit11.i, %bb.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.t, %bb.i ], [ %.pn.i, %bb.k ], [ %.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit11.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17576)
  call void @llvm.experimental.noalias.scope.decl(metadata !17579)
  %i.q = load ptr, ptr %i.c, align 8, !alias.scope !17582, !noalias !17565, !nonnull !12, !noundef !12
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !17583
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit6.i

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit8.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1N_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit6.i unwind label %bb.q, !noalias !17565

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit8.i

bb.j:                                             ; preds = %bb.g
  store ptr %i.p, ptr %i.b, align 8, !noalias !17565
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @234, ptr %i.u, align 8, !noalias !17565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17565
  %i.v = invoke noundef nonnull ptr @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6updateNtB5_28UpdateMetricExtensionPlanner3new()
          to label %bb.m unwind label %bb.l, !noalias !17565 ; 3 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit11.i: ; preds = %bb.p, %bb.o, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.z, %bb.l ], [ %i.ad, %bb.p ], [ %i.ad, %bb.o ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17584)
  call void @llvm.experimental.noalias.scope.decl(metadata !17587)
  %i.w = load ptr, ptr %i.b, align 8, !alias.scope !17590, !noalias !17565, !nonnull !12, !noundef !12
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !17591
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit8.i

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit11.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1N_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit8.i unwind label %bb.q, !noalias !17565

bb.l:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit11.i

bb.m:                                             ; preds = %bb.j
  store ptr %i.v, ptr %i.a, align 8, !noalias !17565
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @235, ptr %i.aa, align 8, !noalias !17565
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !17592
  %i.ab = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, 17) 8) #51, !noalias !17592 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.n, label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7planner24DELTA_EXTENSION_PLANNERS0B7_.exit, !prof !59

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #50
          to label %.noexc9.i unwind label %bb.o, !noalias !17565

.noexc9.i:                                        ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !17595
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit11.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1N_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit11.i unwind label %bb.q, !noalias !17565

bb.q:                                             ; preds = %bb.p, %bb.k, %bb.h, %bb.e
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17565
  unreachable

bb.r:                                             ; preds = %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit6.i, %bb.c
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.h, %bb.c ], [ %.pn.pn.pn.i, %bb.e ], [ %.pn.pn.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlannerNtNtB4_6marker4SyncNtB2l_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit6.i ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 80, i64 noundef 8) #51, !noalias !17565
  resume { ptr, i32 } %.pn.pn.pn.pn.i

_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7planner24DELTA_EXTENSION_PLANNERS0B7_.exit: ; preds = %bb.m
  store i64 1, ptr %i.ab, align 8, !noalias !17565
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !17565
  store ptr %i.g, ptr %i.e, align 8, !noalias !17565
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @232, ptr %i.ah, align 8, !noalias !17565
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.j, ptr %i.ai, align 8, !noalias !17565
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @233, ptr %i.aj, align 8, !noalias !17565
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.p, ptr %i.ak, align 8, !noalias !17565
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @234, ptr %i.al, align 8, !noalias !17565
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.v, ptr %i.am, align 8, !noalias !17565
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @235, ptr %i.an, align 8, !noalias !17565
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.ab, ptr %i.ao, align 8, !noalias !17565
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr @236, ptr %i.ap, align 8, !noalias !17565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17565
  store i64 5, ptr %0, align 8, !alias.scope !17565
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.aq, align 8, !alias.scope !17565
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 5, ptr %i.ar, align 8, !alias.scope !17565
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef nonnull ptr @_RNvYNCNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot21SCAN_ROW_ARROW_SCHEMA0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBa_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = tail call noundef nonnull ptr @_RNvNtCs8ulvy0Wg6Ot_12delta_kernel4scan15scan_row_schema() ; 3 uses
  store ptr %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  invoke void @_RNvXs0_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_conversionNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaINtB5_13TryFromKernelRNtNtB9_6schema10StructTypeE15try_from_kernel(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.f)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.f, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.g, %bb.b ], [ %i.t, %bb.k ]
  call void @llvm.experimental.noalias.scope.decl(metadata !17600)
  call void @llvm.experimental.noalias.scope.decl(metadata !17603)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !17606, !nonnull !12, !noundef !12
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !17606
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.c:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.o

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17607)
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !17607, !noalias !17610, !noundef !12
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.i, !prof !51

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17612
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !17610
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @411, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @420, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @241) #50
          to label %bb.g unwind label %bb.f, !noalias !17612

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #52
          to label %.body.i unwind label %bb.h, !noalias !17612

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17612
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.q, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !17613
  %i.r = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, 17) 8) #51, !noalias !17613 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.j, label %bb.m, !prof !59

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #50
          to label %.noexc5.i unwind label %bb.k

.noexc5.i:                                        ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b) #52
          to label %.body.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.m:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !17616
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.n, label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot21SCAN_ROW_ARROW_SCHEMA0B7_.exit

bb.n:                                             ; preds = %bb.m
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #54
  br label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot21SCAN_ROW_ARROW_SCHEMA0B7_.exit

bb.o:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot21SCAN_ROW_ARROW_SCHEMA0B7_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.r
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10LOG_SCHEMA0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBc_(ptr dead_on_unwind noalias noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [48 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [48 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [48 x i8], align 8               ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 5 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [48 x i8], align 8               ; 4 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 5 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [48 x i8], align 8               ; 4 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [24 x i8], align 8               ; 5 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.02.i = alloca [88 x i8], align 8         ; 6 uses
  %i.ap = alloca [96 x i8], align 8               ; 8 uses
  %i.aq = alloca [96 x i8], align 8               ; 8 uses
  %i.ar = alloca [96 x i8], align 8               ; 8 uses
  %i.as = alloca [96 x i8], align 8               ; 8 uses
  %i.at = alloca [96 x i8], align 8               ; 8 uses
  %i.au = alloca [96 x i8], align 8               ; 8 uses
  %i.av = alloca [96 x i8], align 8               ; 8 uses
  %i.aw = alloca [24 x i8], align 8               ; 6 uses
  %i.ax = alloca [144 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !17621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !17621
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !17621
  %i.ay = tail call noundef align 8 dereferenceable_or_null(768) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 768, i64 noundef range(i64 1, 17) 8) #51, !noalias !17621 ; 12 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.b, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i, !prof !59

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 768) #50, !noalias !17621
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !17621
  %i.ba = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields9ADD_FIELD, i64 96) acquire, align 8, !noalias !17621
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.c, !prof !105

bb.c:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !17621
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields9ADD_FIELD, ptr %i.ao, align 8, !noalias !17621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !17621
  store ptr %i.ao, ptr %i.an, align 8, !noalias !17621
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields9ADD_FIELD, i64 96), i1 noundef zeroext true, ptr noundef nonnull %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %.noexc.i unwind label %bb.d, !noalias !17621

.noexc.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !17621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !17621
end_hunk_5
begin_hunk_6_@_RNvYNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBc_:bb.a

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17876
  call void @llvm.experimental.noalias.scope.decl(metadata !17887)
  call void @llvm.experimental.noalias.scope.decl(metadata !17890)
  %i.ag = load ptr, ptr %i.b, align 8, !alias.scope !17893, !noalias !17876, !nonnull !12, !noundef !12
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !17894
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.l, label %_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES0B9_.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #54, !noalias !17876
  br label %_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES0B9_.exit

bb.m:                                             ; preds = %bb.e, %bb.b
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17876
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRejEECs14kWLkQVSKO_14deltalake_core.exit.i
  resume { ptr, i32 } %.pn.i

_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES0B9_.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17876
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBc_(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17895
  %i.c = tail call noundef nonnull ptr @_RNvNtCs8ulvy0Wg6Ot_12delta_kernel4scan15scan_row_schema(), !noalias !17895 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !noalias !17895
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = invoke noundef align 8 ptr @_RINvMs3_NtCsbpG6u9KFjWn_8indexmap3mapINtB6_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE3geteECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @323, i64 noundef 14)
          to label %_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType5fieldReECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.c, !noalias !17895 ; 3 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRejEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.j, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.t, %bb.j ]
  call void @llvm.experimental.noalias.scope.decl(metadata !17898)
  call void @llvm.experimental.noalias.scope.decl(metadata !17901)
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !17904, !noalias !17895, !nonnull !12, !noundef !12
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !17905
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRejEECs14kWLkQVSKO_14deltalake_core.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.t, !noalias !17895

bb.c:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRejEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType5fieldReECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !51

bb.d:                                             ; preds = %_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType5fieldReECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load i8, ptr %i.j, align 8, !range !358, !noalias !17895, !noundef !12
  %i.l = icmp eq i8 %i.k, 2
  br i1 %i.l, label %bb.g, label %bb.h, !prof !105

bb.e:                                             ; preds = %_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType5fieldReECs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @324) #50
          to label %bb.f unwind label %bb.c, !noalias !17895

bb.f:                                             ; preds = %bb.h, %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17895
  %i.m = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @37)
          to label %bb.i unwind label %bb.c, !noalias !17895 ; 2 uses

bb.h:                                             ; preds = %bb.d
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @332, ptr noundef nonnull inttoptr (i64 103 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @333) #50
          to label %bb.f unwind label %bb.c, !noalias !17895

bb.i:                                             ; preds = %bb.g
  %i.n = extractvalue { i64, i64 } %i.m, 0
  %i.o = extractvalue { i64, i64 } %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @39, i64 32, i1 false), !noalias !17895
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.n, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !17895
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !17895
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !noalias !17895, !nonnull !12, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 4 uses
  %i.s = invoke { i64, i64 } @_RINvMs3_NtCsbpG6u9KFjWn_8indexmap3mapINtB6_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE12get_index_ofeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) @179, i64 noundef 11)
          to label %_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType8index_ofReECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.j, !noalias !17895 ; 2 uses

bb.j:                                             ; preds = %.invoke.i, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRejEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRejEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.t, !noalias !17895

_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType8index_ofReECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.i
  %i.u = extractvalue { i64, i64 } %i.s, 0
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.k, label %.invoke.i, !prof !105

bb.k:                                             ; preds = %_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType8index_ofReECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.w = extractvalue { i64, i64 } %i.s, 1
  %i.x = invoke { i64, i64 } @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @179, i64 noundef 11, i64 noundef %i.w)
          to label %bb.l unwind label %bb.j, !noalias !17895 ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.y = invoke { i64, i64 } @_RINvMs3_NtCsbpG6u9KFjWn_8indexmap3mapINtB6_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE12get_index_ofeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) @326, i64 noundef 14)
          to label %_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType8index_ofReECs14kWLkQVSKO_14deltalake_core.exit20.i unwind label %bb.j, !noalias !17895 ; 2 uses

_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType8index_ofReECs14kWLkQVSKO_14deltalake_core.exit20.i: ; preds = %bb.l
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.m, label %.invoke.i, !prof !105

bb.m:                                             ; preds = %_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType8index_ofReECs14kWLkQVSKO_14deltalake_core.exit20.i
  %i.ab = extractvalue { i64, i64 } %i.y, 1
  %i.ac = invoke { i64, i64 } @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @326, i64 noundef 14, i64 noundef %i.ab)
          to label %bb.n unwind label %bb.j, !noalias !17895 ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ad = invoke { i64, i64 } @_RINvMs3_NtCsbpG6u9KFjWn_8indexmap3mapINtB6_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE12get_index_ofeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 11)
          to label %_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType8index_ofReECs14kWLkQVSKO_14deltalake_core.exit22.i unwind label %bb.j, !noalias !17895 ; 2 uses

_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType8index_ofReECs14kWLkQVSKO_14deltalake_core.exit22.i: ; preds = %bb.n
  %i.ae = extractvalue { i64, i64 } %i.ad, 0
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.o, label %.invoke.i, !prof !105

bb.o:                                             ; preds = %_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType8index_ofReECs14kWLkQVSKO_14deltalake_core.exit22.i
  %i.ag = extractvalue { i64, i64 } %i.ad, 1
  %i.ah = invoke { i64, i64 } @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 11, i64 noundef %i.ag)
          to label %bb.p unwind label %bb.j, !noalias !17895 ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ai = invoke { i64, i64 } @_RINvMs3_NtCsbpG6u9KFjWn_8indexmap3mapINtB6_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE12get_index_ofeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) @330, i64 noundef 11)
          to label %_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType8index_ofReECs14kWLkQVSKO_14deltalake_core.exit24.i unwind label %bb.j, !noalias !17895 ; 2 uses

_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType8index_ofReECs14kWLkQVSKO_14deltalake_core.exit24.i: ; preds = %bb.p
  %i.aj = extractvalue { i64, i64 } %i.ai, 0
  %i.ak = trunc nuw i64 %i.aj to i1
  br i1 %i.ak, label %bb.q, label %.invoke.i, !prof !105

bb.q:                                             ; preds = %_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType8index_ofReECs14kWLkQVSKO_14deltalake_core.exit24.i
  %i.al = extractvalue { i64, i64 } %i.ai, 1
  %i.am = invoke { i64, i64 } @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @330, i64 noundef 11, i64 noundef %i.al)
          to label %bb.r unwind label %bb.j, !noalias !17895 ; 0 uses

.invoke.i:                                        ; preds = %_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType8index_ofReECs14kWLkQVSKO_14deltalake_core.exit24.i, %_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType8index_ofReECs14kWLkQVSKO_14deltalake_core.exit22.i, %_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType8index_ofReECs14kWLkQVSKO_14deltalake_core.exit20.i, %_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType8index_ofReECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.an = phi ptr [ @329, %_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType8index_ofReECs14kWLkQVSKO_14deltalake_core.exit22.i ], [ @327, %_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType8index_ofReECs14kWLkQVSKO_14deltalake_core.exit20.i ], [ @325, %_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType8index_ofReECs14kWLkQVSKO_14deltalake_core.exit.i ], [ @331, %_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType8index_ofReECs14kWLkQVSKO_14deltalake_core.exit24.i ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an) #50
          to label %.cont.i unwind label %bb.j, !noalias !17895

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17895
  call void @llvm.experimental.noalias.scope.decl(metadata !17906)
  call void @llvm.experimental.noalias.scope.decl(metadata !17909)
  %i.ao = load ptr, ptr %i.b, align 8, !alias.scope !17912, !noalias !17895, !nonnull !12, !noundef !12
  %i.ap = atomicrmw sub ptr %i.ao, i64 1 release, align 8, !noalias !17913
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.s, label %_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES0B9_.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #54, !noalias !17895
  br label %_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES0B9_.exit

bb.t:                                             ; preds = %bb.j, %bb.b
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17895
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRejEECs14kWLkQVSKO_14deltalake_core.exit.i
  resume { ptr, i32 } %.pn.i

_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES0B9_.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17895
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef nonnull ptr @_RNvYNCNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB9_8Snapshot10tombstones16TOMBSTONE_SCHEMA0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBd_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 4 uses
  %i.b = alloca [160 x i8], align 8               ; 6 uses
  %i.c = alloca [144 x i8], align 8               ; 4 uses
  %i.d = alloca [144 x i8], align 8               ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [96 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [96 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [144 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51
  %i.k = tail call noundef align 8 dereferenceable_or_null(192) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 192, i64 noundef range(i64 1, 17) 8) #51 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i, !prof !59

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 192) #50
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXsL_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_6RemoveNtNtB7_6schema8ToSchema9to_schema(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.d)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.d, %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.d:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i
  invoke void @_RNvXsC_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB5_8DataTypeINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_10StructTypeE4from(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %i.d)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvMs7_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructField3newReNtB6_8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @270, i64 noundef 6, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.g, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXsZ_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_7SidecarNtNtB7_6schema8ToSchema9to_schema(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.c)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.h, %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.h) #52
          to label %bb.s unwind label %bb.r

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXsC_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB5_8DataTypeINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_10StructTypeE4from(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %i.c)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvMs7_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructField3newReNtB6_8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @339, i64 noundef 7, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.e, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.g

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.k, ptr noundef nonnull align 8 dereferenceable(96) %i.h, i64 96, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.o, ptr noundef nonnull align 8 dereferenceable(96) %i.f, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 2, ptr %i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 2, ptr %i.q, align 8
  call void @_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType7try_newINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB6_11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !17914)
  %i.r = load i64, ptr %i.j, align 16, !range !50, !alias.scope !17914, !noalias !17917, !noundef !12
  %i.s = icmp eq i64 %i.r, -9223372036854775808
  br i1 %i.s, label %bb.k, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtNtBL_5error5ErrorE6expectCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !51

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17921
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.t, i64 96, i1 false), !noalias !17917
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @340, i64 noundef 37, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @412, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @341) #50
          to label %bb.m unwind label %bb.l, !noalias !17922

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.a) #52
          to label %common.resume.i unwind label %bb.n, !noalias !17922

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17922
  unreachable

common.resume.i:                                  ; preds = %bb.s, %bb.p, %bb.l
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.i, %bb.s ], [ %i.u, %bb.l ], [ %i.aa, %bb.p ]
  resume { ptr, i32 } %common.resume.op.i

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtNtBL_5error5ErrorE6expectCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.w, ptr noundef nonnull readonly align 16 dereferenceable(144) %i.j, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 1, ptr %i.b, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.x, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !17923
  %i.y = call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 160, i64 noundef range(i64 1, 17) 8) #51, !noalias !17923 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.o, label %_RNCNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB6_8Snapshot10tombstones16TOMBSTONE_SCHEMA0Ba_.exit, !prof !59

bb.o:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtNtBL_5error5ErrorE6expectCs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 160) #50
          to label %.noexc.i unwind label %bb.p

.noexc.i:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.w)
          to label %common.resume.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.r:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.s:                                             ; preds = %bb.g, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.m, %bb.c ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef 192, i64 noundef 8) #51
  br label %common.resume.i

_RNCNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB6_8Snapshot10tombstones16TOMBSTONE_SCHEMA0Ba_.exit: ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtNtBL_5error5ErrorE6expectCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.y, ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.y
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNCNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB9_8Snapshot10tombstones19TOMBSTONE_EVALUATOR0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBd_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [144 x i8], align 8               ; 4 uses
  %i.g = alloca [128 x i8], align 16              ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [96 x i8], align 16               ; 7 uses
  %i.l = alloca [144 x i8], align 8               ; 7 uses
  %i.m = alloca [112 x i8], align 16              ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvXsL_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_6RemoveNtNtB7_6schema8ToSchema9to_schema(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.l)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.r = load i64, ptr %i.q, align 8, !noundef !12
  %i.s = getelementptr inbounds nuw [128 x i8], ptr %i.p, i64 %i.r
  invoke void @_RINvMs9_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_10Expression11struct_fromBN_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB8_6schema11StructFieldENCNCNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB45_8Snapshot10tombstones19TOMBSTONE_EVALUATOR00EEB49_(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.m, ptr noundef nonnull %i.p, ptr noundef nonnull %i.s)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.t, %bb.b ], [ %i.y, %bb.e ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.l) #52
          to label %.critedge.i unwind label %bb.u

bb.c:                                             ; preds = %bb.a
end_hunk_6
begin_hunk_7_@_RNvYNCNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB9_8Snapshot10tombstones19TOMBSTONE_EVALUATOR0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBd_:bb.a
  %i.bc = insertvalue { ptr, ptr } poison, ptr %i.az, 0
  %i.bd = insertvalue { ptr, ptr } %i.bc, ptr %i.bb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret { ptr, ptr } %i.bd
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYNCNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB9_13TombstoneView11data_change11FIELD_INDEX0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBh_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [144 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsL_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_6RemoveNtNtB7_6schema8ToSchema9to_schema(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17951
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke void @_RINvMs3_NtCsbpG6u9KFjWn_8indexmap3mapINtB6_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE8get_fulleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @262, i64 noundef 10)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.b) #52
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !noalias !17951, !noundef !12
  %.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !17951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17951
  br i1 %.not.i.i, label %bb.d, label %_RNCNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB6_13TombstoneView11data_change11FIELD_INDEX0Be_.exit, !prof !51

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #50
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d

_RNCNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB6_13TombstoneView11data_change11FIELD_INDEX0Be_.exit: ; preds = %bb.c
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYNCNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB9_13TombstoneView18deletion_timestamp11FIELD_INDEX0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBh_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [144 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsL_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_6RemoveNtNtB7_6schema8ToSchema9to_schema(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17955
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke void @_RINvMs3_NtCsbpG6u9KFjWn_8indexmap3mapINtB6_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE8get_fulleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @260, i64 noundef 17)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.b) #52
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !noalias !17955, !noundef !12
  %.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !17955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17955
  br i1 %.not.i.i, label %bb.d, label %_RNCNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB6_13TombstoneView18deletion_timestamp11FIELD_INDEX0Be_.exit, !prof !51

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @346) #50
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d

_RNCNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB6_13TombstoneView18deletion_timestamp11FIELD_INDEX0Be_.exit: ; preds = %bb.c
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYNCNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB9_13TombstoneView4path11FIELD_INDEX0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBh_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [144 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsL_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_6RemoveNtNtB7_6schema8ToSchema9to_schema(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17959
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke void @_RINvMs3_NtCsbpG6u9KFjWn_8indexmap3mapINtB6_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE8get_fulleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @258, i64 noundef 4)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.b) #52
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !noalias !17959, !noundef !12
  %.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !17959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17959
  br i1 %.not.i.i, label %bb.d, label %_RNCNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB6_13TombstoneView4path11FIELD_INDEX0Be_.exit, !prof !51

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @347) #50
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d

_RNCNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB6_13TombstoneView4path11FIELD_INDEX0Be_.exit: ; preds = %bb.c
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYNCNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB9_13TombstoneView4size11FIELD_INDEX0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBh_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [144 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsL_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_6RemoveNtNtB7_6schema8ToSchema9to_schema(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17963
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke void @_RINvMs3_NtCsbpG6u9KFjWn_8indexmap3mapINtB6_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE8get_fulleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 4)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.b) #52
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !noalias !17963, !noundef !12
  %.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !17963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17963
  br i1 %.not.i.i, label %bb.d, label %_RNCNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB6_13TombstoneView4size11FIELD_INDEX0Be_.exit, !prof !51

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @348) #50
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d

_RNCNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB6_13TombstoneView4size11FIELD_INDEX0Be_.exit: ; preds = %bb.c
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef nonnull ptr @_RNvYNCNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14log_schema_ref14LOG_SCHEMA_REF0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBe_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [160 x i8], align 8               ; 6 uses
  %i.g = alloca [144 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10LOG_SCHEMA, i64 144) acquire, align 8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.b, !prof !105

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10LOG_SCHEMA, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10LOG_SCHEMA, i64 144), i1 noundef zeroext true, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17967
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10LOG_SCHEMA), !noalias !17971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17967
  invoke void @_RNvXNtCsbpG6u9KFjWn_8indexmap3mapINtB2_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10LOG_SCHEMA, i64 24))
          to label %bb.e unwind label %bb.d, !noalias !17971

bb.c:                                             ; preds = %bb.f, %bb.d
  %.pn.i.i = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.j, %bb.d ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #52
          to label %common.resume.i unwind label %bb.g, !noalias !17971

bb.d:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17967
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10LOG_SCHEMA, i64 96))
          to label %_RNvXs17_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.f, !noalias !17971

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b) #52
          to label %bb.c unwind label %bb.g, !noalias !17971

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17971
  unreachable

common.resume.i:                                  ; preds = %bb.i, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.i.i, %bb.c ], [ %i.s, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

_RNvXs17_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !17972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17967
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !17972
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !17972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.p, ptr noundef nonnull align 8 dereferenceable(144) %i.g, i64 144, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !17973
  %i.q = call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 160, i64 noundef range(i64 1, 17) 8) #51, !noalias !17973 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %_RNCNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14log_schema_ref14LOG_SCHEMA_REF0Bb_.exit, !prof !59

bb.h:                                             ; preds = %_RNvXs17_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 160) #50
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.p)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RNCNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14log_schema_ref14LOG_SCHEMA_REF0Bb_.exit: ; preds = %_RNvXs17_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.q, ptr noundef nonnull align 8 dereferenceable(160) %i.f, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.q
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i64 1, 0) i64 @_RNvYNCNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtBc_18TablePropertiesExt19checkpoint_interval16DEFAULT_INTERVAL0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBg_() unnamed_addr #30 personality ptr @rust_eh_personality {
bb.a:
  ret i64 100
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i32 } @_RNvYNCNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtBc_18TablePropertiesExt22log_retention_duration16DEFAULT_DURATION0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBg_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core5table6config14parse_interval(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17976)
  %i.c = load i64, ptr %i.b, align 8, !range !50, !alias.scope !17976, !noalias !17979, !noundef !12
  %.not.i.i = icmp eq i64 %i.c, -9223372036854775808
  br i1 %.not.i.i, label %_RNCNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB9_18TablePropertiesExt22log_retention_duration16DEFAULT_DURATION0Bd_.exit, label %bb.b, !prof !105

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17981
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !17979
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @411, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @415, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @351) #50
          to label %bb.d unwind label %bb.c, !noalias !17976

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table6config16DeltaConfigErrorEBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #52
          to label %bb.f unwind label %bb.e, !noalias !17976

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17976
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RNCNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB9_18TablePropertiesExt22log_retention_duration16DEFAULT_DURATION0Bd_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !17976, !noalias !17979, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i32, ptr %i.h, align 8, !range !4873, !alias.scope !17976, !noalias !17979, !noundef !12
  %i.j = insertvalue { i64, i32 } poison, i64 %i.g, 0
  %i.k = insertvalue { i64, i32 } %i.j, i32 %i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i32 } %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i32 } @_RNvYNCNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtBc_18TablePropertiesExt31deleted_file_retention_duration16DEFAULT_DURATION0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBg_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core5table6config14parse_interval(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17982)
  %i.c = load i64, ptr %i.b, align 8, !range !50, !alias.scope !17982, !noalias !17985, !noundef !12
  %.not.i.i = icmp eq i64 %i.c, -9223372036854775808
  br i1 %.not.i.i, label %_RNCNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB9_18TablePropertiesExt31deleted_file_retention_duration16DEFAULT_DURATION0Bd_.exit, label %bb.b, !prof !105

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17987
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !17985
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @411, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @415, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @353) #50
          to label %bb.d unwind label %bb.c, !noalias !17982

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table6config16DeltaConfigErrorEBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #52
          to label %bb.f unwind label %bb.e, !noalias !17982

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17982
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RNCNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB9_18TablePropertiesExt31deleted_file_retention_duration16DEFAULT_DURATION0Bd_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !17982, !noalias !17985, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
end_hunk_7
