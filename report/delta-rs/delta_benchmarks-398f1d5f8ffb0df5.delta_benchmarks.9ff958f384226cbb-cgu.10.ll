inline.NumInlined: 3170
inline.NumDeleted: 887
begin_hunk_0_@_RNvXs1g_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !11898, !noalias !11895, !nonnull !3, !noundef !3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !11895, !noalias !11898, !nonnull !3, !noundef !3
  %i.ay = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.av, i64 noundef %i.aq), !noalias !11908
  br i1 %i.ay, label %bb.j, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !11895, !noalias !11898, !noundef !3 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !11898, !noalias !11895, !noundef !3
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.k, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !11898, !noalias !11895, !nonnull !3, !noundef !3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !11895, !noalias !11898, !nonnull !3, !noundef !3
  %i.bi = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bf, i64 noundef %i.ba), !noalias !11908
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1m_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1) #42
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 16, !nonnull !3, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.e = load ptr, ptr %i.d, align 16, !nonnull !3, !noundef !3 ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a, %bb.d
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.i, %bb.d ], [ true, %bb.b ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.g, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.h) #42
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1o_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4CaseNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !align !394, !noundef !3 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !align !394, !noundef !3 ; 2 uses
  %i.e = icmp eq ptr %i.d, null                   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.h, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.e, label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d) #42
  br i1 %i.f, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !3 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !3
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  %i.p = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBD_EINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.o, ptr noundef nonnull %i.m, i64 noundef %i.h)
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !align !394, !noundef !3 ; 2 uses
  %.not3 = icmp eq ptr %i.r, null                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !align !394, !noundef !3 ; 2 uses
  %i.u = icmp eq ptr %i.t, null                   ; 2 uses
  %brmerge = or i1 %.not3, %i.u
  %.mux = and i1 %.not3, %i.u
  br i1 %brmerge, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.c, %bb.f, %bb.b, %bb.e, %bb.i
  %.sroa.0.0.shrunk = phi i1 [ %i.v, %bb.i ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.b ], [ false, %bb.f ], [ %.mux, %bb.g ]
  ret i1 %.sroa.0.0.shrunk

bb.i:                                             ; preds = %bb.g
  %i.v = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.r, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.t) #42
  br label %bb.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1o_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_18CreateFunctionBodyNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(192) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(192) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 16, !range !161, !noundef !3
  %.not = icmp eq i64 %i.b, -9223372036854775808
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i64, ptr %i.c, align 16, !range !161, !noundef !3
  %i.e = icmp eq i64 %i.d, -9223372036854775808   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.n, label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.i, label %bb.n

bb.d:                                             ; preds = %bb.g
  %i.f = icmp eq i32 %i.t, 1114112
  br i1 %i.f, label %bb.i, label %bb.n

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load i64, ptr %i.g, align 16, !noundef !3 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.j = load i64, ptr %i.i, align 16, !noundef !3
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.o, ptr nonnull %i.m, i64 %i.h)
  %i.p = icmp eq i32 %bcmp, 0
  br i1 %i.p, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.r = load i32, ptr %i.q, align 8, !range !9424, !noundef !3 ; 2 uses
  %.not5 = icmp eq i32 %i.r, 1114112
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.t = load i32, ptr %i.s, align 8, !range !9424, !noundef !3 ; 2 uses
  br i1 %.not5, label %bb.d, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = icmp eq i32 %i.r, %i.t
  br i1 %i.u, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h, %bb.c, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.w = load i8, ptr %i.v, align 16, !range !10001, !noundef !3 ; 2 uses
  %.not7 = icmp eq i8 %i.w, 3
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.y = load i8, ptr %i.x, align 16, !range !10001, !noundef !3 ; 2 uses
  br i1 %.not7, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = icmp eq i8 %i.w, %i.y
  br i1 %i.z, label %bb.l, label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.aa = icmp eq i8 %i.y, 3
  br i1 %i.aa, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ab = load i64, ptr %0, align 16, !range !5995, !noundef !3
  %.not9 = icmp eq i64 %i.ab, 37                  ; 2 uses
  %i.ac = load i64, ptr %1, align 16, !range !5995, !noundef !3
  %i.ad = icmp eq i64 %i.ac, 37                   ; 2 uses
  %brmerge = or i1 %.not9, %i.ad
  %.mux = and i1 %.not9, %i.ad
  br i1 %brmerge, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1) #42
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.c, %bb.d, %bb.k, %bb.b, %bb.h, %bb.f, %bb.e, %bb.j, %bb.m
  %.sroa.0.0.shrunk = phi i1 [ %i.ae, %bb.m ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.j ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.b ], [ false, %bb.k ], [ %.mux, %bb.l ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1t_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(1400) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1400) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [2696 x i8], align 8              ; 4 uses
  %.sroa.0.i = alloca [56 x i8], align 8          ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.55.i = alloca [16 x i8], align 8         ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [328 x i8], align 8               ; 5 uses
  %.sroa.5.i23 = alloca [320 x i8], align 8       ; 4 uses
  %i.i = alloca [328 x i8], align 8               ; 4 uses
  %i.j = alloca [328 x i8], align 8               ; 4 uses
  %i.k = alloca [328 x i8], align 8               ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [336 x i8], align 8               ; 8 uses
  %i.n = alloca [328 x i8], align 8               ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [88 x i8], align 8                ; 5 uses
  %.sroa.568 = alloca [48 x i8], align 8          ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.763 = alloca [16 x i8], align 8          ; 5 uses
  %.sroa.552 = alloca [656 x i8], align 8         ; 7 uses
  %.sroa.8 = alloca [24 x i8], align 8            ; 4 uses
  %.sroa.0 = alloca [112 x i8], align 8           ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [64 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [64 x i8], align 8                ; 13 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [336 x i8], align 8               ; 9 uses
  %i.z = alloca [688 x i8], align 8               ; 8 uses
  %i.aa = alloca [48 x i8], align 8               ; 8 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [120 x i8], align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 1136 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !range !161, !noundef !3
  %.not = icmp eq i64 %i.ae, -9223372036854775808
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11909)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !11912
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1160
  call fastcc void @_RNvXs7_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_tokenNtB5_13AttachedTokenNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(88) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.af) #42, !noalias !11914
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1248
  %i.ah = load i8, ptr %i.ag, align 8, !range !9417, !alias.scope !11909, !noalias !11914, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !11912
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query3CteENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ad)
          to label %_RNvXs3j_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit unwind label %bb.c, !noalias !11914

bb.c:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(88) %i.r) #39
          to label %common.resume unwind label %bb.d, !noalias !11914

bb.d:                                             ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !11914
  unreachable

common.resume:                                    ; preds = %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.c ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvXs3j_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.b
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %i.r, i64 88, i1 false), !noalias !11909
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !11909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !11912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !11912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ac, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.0, i64 112, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  store i8 %i.ah, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %i.ac, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvXs3j_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !11915)
  %i.ak = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks()
          to label %.noexc unwind label %bb.h, !inline_history !11687 ; 4 uses

.noexc:                                           ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 1392
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !11915, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11918
  invoke fastcc void @_RNvXs1N_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SetExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2696) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2696) %i.am) #42
          to label %bb.i unwind label %bb.g, !inline_history !11921

bb.g:                                             ; preds = %.noexc
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef 2696, i64 noundef 8) #35, !noalias !11915
  br label %.body

.body:                                            ; preds = %bb.h, %bb.g, %.body16
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %.body16 ], [ %i.ao, %bb.h ], [ %i.an, %bb.g ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query4WithEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.ac) #39
          to label %common.resume unwind label %bb.ci

bb.h:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2696) %i.ak, ptr noundef nonnull align 8 dereferenceable(2696) %i.b, i64 2696, i1 false), !noalias !11918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11918
  store ptr %i.ak, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1280 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !range !435, !noundef !3 ; 2 uses
  %.not1 = icmp eq i64 %i.aq, -9223372036854775807
  br i1 %.not1, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11922)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !11925
  call void @llvm.experimental.noalias.scope.decl(metadata !11927)
  call void @llvm.experimental.noalias.scope.decl(metadata !11930)
  %.not.i.i = icmp eq i64 %i.aq, -9223372036854775808
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ap)
          to label %_RNvXsb3_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11OrderByKindNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.t

bb.l:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 1288
  %.val.i.i = load i8, ptr %i.ar, align 8, !range !9537, !alias.scope !11932, !noalias !11933, !noundef !3
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 1289
  %.val1.i.i = load i8, ptr %i.as, align 1, !range !9537, !alias.scope !11932, !noalias !11933, !noundef !3
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i8 %.val.i.i, ptr %i.at, align 8, !alias.scope !11927, !noalias !11934
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 9
  store i8 %.val1.i.i, ptr %i.au, align 1, !alias.scope !11927, !noalias !11934
  store i64 -9223372036854775808, ptr %i.p, align 8, !alias.scope !11927, !noalias !11934
  br label %_RNvXsb3_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11OrderByKindNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

_RNvXsb3_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11OrderByKindNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 1304 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !range !435, !alias.scope !11922, !noalias !11935, !noundef !3 ; 2 uses
  %.not.i = icmp eq i64 %i.aw, -9223372036854775807
  br i1 %.not.i, label %bb.u, label %bb.m

bb.m:                                             ; preds = %_RNvXsb3_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11OrderByKindNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !11925
  %.not.i4.i = icmp eq i64 %i.aw, -9223372036854775808
  br i1 %.not.i4.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15InterpolateExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av)
          to label %.noexc.i unwind label %bb.o, !noalias !11935

.noexc.i:                                         ; preds = %bb.n
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.o, align 8, !noalias !11936
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByKindECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.p) #39
          to label %.body16 unwind label %bb.q, !noalias !11935

bb.p:                                             ; preds = %.noexc.i, %bb.m
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %.noexc.i ], [ -9223372036854775808, %bb.m ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !noalias !11925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11925
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !11935
  unreachable

bb.r:                                             ; preds = %bb.i
  store i64 -9223372036854775807, ptr %i.aa, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !range !2432, !noundef !3 ; 3 uses
  %.not2 = icmp eq i64 %i.bb, 71
  br i1 %.not2, label %bb.an, label %bb.v

.body16:                                          ; preds = %bb.t, %bb.o, %.body21
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %.body21 ], [ %i.bc, %bb.t ], [ %i.ax, %bb.o ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(8) %i.ab) #39
          to label %.body unwind label %bb.ci

bb.t:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RNvXs1t_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  unreachable

bb.al:                                            ; preds = %.noexc19
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(328) %i.k) #39
          to label %.body21 unwind label %bb.ak, !noalias !11946, !inline_history !11945

bb.am:                                            ; preds = %.noexc19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.552, ptr noundef nonnull align 8 dereferenceable(328) %i.k, i64 328, i1 false), !noalias !11940
  %.sroa.552.336..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.552, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.552.336..sroa_idx, ptr noundef nonnull align 8 dereferenceable(328) %i.j, i64 328, i1 false), !noalias !11940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !11943
  br label %_RNvXscd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11LimitClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.an:                                            ; preds = %bb.s
  store i64 71, ptr %i.z, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %_RNvXscd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11LimitClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %bb.an
  %i.bs = phi i1 [ %i.bw, %_RNvXscd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11LimitClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ], [ true, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !range !145, !noundef !3 ; 2 uses
  %.not3 = icmp eq i64 %i.bu, 70
  br i1 %.not3, label %bb.as, label %bb.aq

.body21:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5FetchEECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.au, %bb.ap, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6OffsetEECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.ae, %bb.al
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6OffsetEECsdJxlLsGgtXr_16delta_benchmarks.exit ], [ %i.bv, %bb.ap ], [ %i.br, %bb.al ], [ %.pn.i, %bb.ae ], [ %.pn.pn.pn.pn.pn, %bb.au ], [ %.pn.pn.pn.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5FetchEECsdJxlLsGgtXr_16delta_benchmarks.exit ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7OrderByEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.aa) #39
          to label %.body16 unwind label %bb.ci

bb.ap:                                            ; preds = %bb.y, %bb.w
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body21

_RNvXscd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11LimitClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.am, %bb.aj
  %.sroa.050.0 = phi i64 [ 70, %bb.am ], [ %.sroa.050.0.copyload51, %bb.aj ] ; 2 uses
  store i64 %.sroa.050.0, ptr %i.z, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %.sroa.552.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(656) %.sroa.552, i64 656, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.552)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.bw = icmp eq i64 %.sroa.050.0, 71
  br label %bb.ao

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !11962)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.by = load i8, ptr %i.bx, align 8, !range !9417, !alias.scope !11962, !noalias !11965, !noundef !3
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 393
  %i.ca = load i8, ptr %i.bz, align 1, !range !9417, !alias.scope !11962, !noalias !11965, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i23)
  %.not.i24 = icmp eq i64 %i.bu, 69
  br i1 %.not.i24, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11967
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %i.bt) #42
          to label %.noexc27 unwind label %bb.av, !inline_history !11968

.noexc27:                                         ; preds = %bb.ar
  %.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8, !noalias !11967
  %.sroa.5.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i23, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx.i25, i64 320, i1 false), !noalias !11967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11967
  br label %bb.aw

bb.as:                                            ; preds = %bb.ao
  store i64 70, ptr %i.y, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.aw, %bb.as
  %i.cb = phi i1 [ %i.ce, %bb.aw ], [ true, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 1088
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10LockClauseENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cc)
          to label %bb.ba unwind label %bb.az

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5FetchEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.ax, %bb.ay, %bb.av
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.av ], [ %.pn.pn.pn.pn, %bb.ay ], [ %.pn.pn.pn.pn, %bb.ax ] ; 2 uses
  br i1 %i.bs, label %.body21, label %bb.au

bb.au:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5FetchEECsdJxlLsGgtXr_16delta_benchmarks.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11LimitClauseECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(688) %i.z)
          to label %.body21 unwind label %bb.ci, !inline_history !8354

bb.av:                                            ; preds = %bb.ar
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5FetchEECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.aw:                                            ; preds = %.noexc27, %bb.aq
  %.sroa.0.0.i26 = phi i64 [ %.sroa.0.0.copyload.i, %.noexc27 ], [ 69, %bb.aq ] ; 2 uses
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.455.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i23, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i23)
  store i64 %.sroa.0.0.i26, ptr %i.y, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 328
  store i8 %i.by, ptr %.sroa.556.0..sroa_idx, align 8
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 329
  store i8 %i.ca, ptr %.sroa.657.0..sroa_idx, align 1
  %i.ce = icmp samesign ugt i64 %.sroa.0.0.i26, 68
  br label %bb.at

bb.ax:                                            ; preds = %.body39, %bb.az
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body39 ], [ %i.cf, %bb.az ] ; 2 uses
  br i1 %i.cb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5FetchEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(336) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5FetchEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.ci, !inline_history !11969

bb.az:                                            ; preds = %bb.at
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ba:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.cg = load i64, ptr %1, align 8, !range !1361, !noundef !3 ; 6 uses
  %.not4 = icmp eq i64 %i.cg, 6
  br i1 %.not4, label %bb.bq, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.763)
  call void @llvm.experimental.noalias.scope.decl(metadata !11970)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ci = add nsw i64 %i.cg, -4
  %i.cj = icmp samesign ugt i64 %i.cg, 3
  %i.ck = select i1 %i.cj, i64 %i.ci, i64 2       ; 2 uses
  switch i64 %i.ck, label %bb.bc [
    i64 0, label %bb.bt
    i64 1, label %bb.bd
    i64 2, label %bb.be
  ]

bb.bc:                                            ; preds = %bb.bb
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cm = load i8, ptr %i.cl, align 8, !range !9417, !alias.scope !11970, !noalias !11973, !noundef !3
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !range !161, !alias.scope !11970, !noalias !11973, !noundef !3
  %.not8.i = icmp eq i64 %i.co, -9223372036854775808
  br i1 %.not8.i, label %bb.bk, label %bb.bj

bb.be:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11975
  call void @llvm.experimental.noalias.scope.decl(metadata !11976)
  call void @llvm.experimental.noalias.scope.decl(metadata !11979)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11975
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11975
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  switch i64 %i.cg, label %default.unreachable8.i.i [
    i64 0, label %bb.bf
    i64 1, label %_RNvXsfd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
    i64 2, label %_RNvXsfd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
    i64 3, label %bb.bg
  ]

default.unreachable8.i.i:                         ; preds = %bb.be
  unreachable

bb.bf:                                            ; preds = %bb.be
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !range !161, !alias.scope !11981, !noalias !11982, !noundef !3
  %.not7.i.i = icmp eq i64 %i.cs, -9223372036854775808
  br i1 %.not7.i.i, label %_RNvXsfd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.sink.split.i, label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !range !161, !alias.scope !11981, !noalias !11982, !noundef !3
  %.not.i.i30 = icmp eq i64 %i.cu, -9223372036854775808
  br i1 %.not.i.i30, label %_RNvXsfd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.sink.split.i, label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr)
          to label %.noexc36 unwind label %bb.bs

.noexc36:                                         ; preds = %bb.bh
  %.sroa.0.0.copyload.i.i32 = load i64, ptr %i.c, align 8, !noalias !11983
  br label %_RNvXsfd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.sink.split.i

bb.bi:                                            ; preds = %bb.bg
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct)
          to label %.noexc37 unwind label %bb.bs

.noexc37:                                         ; preds = %bb.bi
  %.sroa.03.0.copyload.i.i = load i64, ptr %i.d, align 8, !noalias !11983
  br label %_RNvXsfd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.sink.split.i

_RNvXsfd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.sink.split.i: ; preds = %.noexc37, %.noexc36, %bb.bg, %bb.bf
  %.sroa.0.0.i.sink.i = phi i64 [ -9223372036854775808, %bb.bf ], [ %.sroa.0.0.copyload.i.i32, %.noexc36 ], [ %.sroa.03.0.copyload.i.i, %.noexc37 ], [ -9223372036854775808, %bb.bg ]
  %.sink.i = phi ptr [ %i.cq, %bb.bf ], [ %i.cq, %.noexc36 ], [ %i.cp, %.noexc37 ], [ %i.cp, %bb.bg ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.0.0.i.sink.i, ptr %i.cv, align 8, !alias.scope !11976, !noalias !11984
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sink.i, i64 16, i1 false), !noalias !11984
  br label %_RNvXsfd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

_RNvXsfd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXsfd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.sink.split.i, %bb.be, %bb.be
  store i64 %i.cg, ptr %i.g, align 8, !alias.scope !11976, !noalias !11984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11975
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cx = load i8, ptr %i.cw, align 8, !range !9417, !alias.scope !11970, !noalias !11973, !noundef !3
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.cz = load i8, ptr %i.cy, align 1, !range !9417, !alias.scope !11970, !noalias !11973, !noundef !3
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !range !161, !alias.scope !11970, !noalias !11973, !noundef !3
  %.not.i31 = icmp eq i64 %i.db, -9223372036854775808
  br i1 %.not.i31, label %bb.bm, label %bb.bl

bb.bj:                                            ; preds = %bb.bd
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cn)
          to label %.noexc38 unwind label %bb.bs

.noexc38:                                         ; preds = %bb.bj
  %.sroa.0.0.copyload.i33 = load i64, ptr %i.f, align 8, !noalias !11975
  br label %bb.bk

bb.bk:                                            ; preds = %.noexc38, %bb.bd
  %.sroa.0.0.i34 = phi i64 [ %.sroa.0.0.copyload.i33, %.noexc38 ], [ -9223372036854775808, %bb.bd ]
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.dd = load i8, ptr %i.dc, align 1, !range !9417, !alias.scope !11970, !noalias !11973, !noundef !3
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.df = load i8, ptr %i.de, align 2, !range !9417, !alias.scope !11970, !noalias !11973, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.763, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !noalias !11970
  br label %bb.bt

bb.bl:                                            ; preds = %_RNvXsfd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11975
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da)
          to label %bb.bo unwind label %bb.bn, !noalias !11973

bb.bm:                                            ; preds = %bb.bo, %_RNvXsfd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
  %.sroa.03.0.i = phi i64 [ %.sroa.03.0.copyload4.i, %bb.bo ], [ -9223372036854775808, %_RNvXsfd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ] ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.dh = load i8, ptr %i.dg, align 2, !range !9417, !alias.scope !11970, !noalias !11973, !noundef !3
  %.sroa.660.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.660.0.copyload62 = load i64, ptr %.sroa.660.0..sroa_idx61, align 8, !noalias !11970
  %.sroa.763.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.763, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.763.0..sroa_idx64, i64 16, i1 false), !noalias !11970
  %.sroa.865.sroa.0.0.extract.trunc = trunc i64 %.sroa.03.0.i to i8
  %.sroa.865.sroa.5.0.extract.shift = lshr i64 %.sroa.03.0.i, 8
  %.sroa.865.sroa.5.0.extract.trunc = trunc i64 %.sroa.865.sroa.5.0.extract.shift to i8
  %.sroa.865.sroa.6.0.extract.shift = lshr i64 %.sroa.03.0.i, 16
  %.sroa.865.sroa.6.0.extract.trunc = trunc i64 %.sroa.865.sroa.6.0.extract.shift to i8
  %.sroa.865.sroa.7.0.extract.shift = and i64 %.sroa.03.0.i, -16777216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11975
  br label %bb.bt

bb.bn:                                            ; preds = %bb.bl
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6ForXmlECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.g) #39
          to label %.body39 unwind label %bb.bp, !noalias !11973

bb.bo:                                            ; preds = %bb.bl
  %.sroa.03.0.copyload4.i = load i64, ptr %i.e, align 8, !noalias !11975
  %.sroa.55.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.55.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.55.0..sroa_idx6.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11975
  br label %bb.bm

bb.bp:                                            ; preds = %bb.bn
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !11973
  unreachable

bb.bq:                                            ; preds = %bb.ba
  store i64 6, ptr %i.w, align 8
  br label %bb.br

bb.br:                                            ; preds = %bb.bt, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 1256 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !range !161, !noundef !3
  %.not5 = icmp eq i64 %i.dl, -9223372036854775808
  br i1 %.not5, label %bb.bv, label %bb.bu

.body39:                                          ; preds = %bb.bs, %bb.bn, %bb.bx
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bx ], [ %i.dm, %bb.bs ], [ %i.di, %bb.bn ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10LockClauseEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.x) #39
          to label %bb.ax unwind label %bb.ci

bb.bs:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body39

bb.bt:                                            ; preds = %bb.bm, %bb.bk, %bb.bb
  %.sroa.865.sroa.0.0 = phi i8 [ %.sroa.865.sroa.0.0.extract.trunc, %bb.bm ], [ %i.cm, %bb.bk ], [ undef, %bb.bb ]
  %.sroa.15.0 = phi i8 [ %i.dh, %bb.bm ], [ undef, %bb.bk ], [ undef, %bb.bb ]
  %.sroa.14.0 = phi i8 [ %i.cz, %bb.bm ], [ undef, %bb.bk ], [ undef, %bb.bb ]
  %.sroa.13.0 = phi i8 [ %i.cx, %bb.bm ], [ undef, %bb.bk ], [ undef, %bb.bb ]
  %.sroa.660.0 = phi i64 [ %.sroa.660.0.copyload62, %bb.bm ], [ %.sroa.0.0.i34, %bb.bk ], [ undef, %bb.bb ]
  %.sroa.058.0 = phi i64 [ %i.cg, %bb.bm ], [ 5, %bb.bk ], [ 4, %bb.bb ]
  %.sroa.865.sroa.5.0 = phi i8 [ %.sroa.865.sroa.5.0.extract.trunc, %bb.bm ], [ %i.dd, %bb.bk ], [ undef, %bb.bb ]
  %.sroa.865.sroa.6.0 = phi i8 [ %.sroa.865.sroa.6.0.extract.trunc, %bb.bm ], [ %i.df, %bb.bk ], [ undef, %bb.bb ]
  %.sroa.865.sroa.7.sroa.0.0 = phi i64 [ %.sroa.865.sroa.7.0.extract.shift, %bb.bm ], [ 0, %bb.bk ], [ %i.ck, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %.sroa.058.0, ptr %i.w, align 8
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %.sroa.660.0, ptr %.sroa.660.0..sroa_idx, align 8
  %.sroa.763.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.763.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.763, i64 16, i1 false)
  %.sroa.865.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.865.sroa.6.0.insert.ext = zext i8 %.sroa.865.sroa.6.0 to i64
  %.sroa.865.sroa.6.0.insert.shift = shl nuw nsw i64 %.sroa.865.sroa.6.0.insert.ext, 16
  %.sroa.865.sroa.6.0.insert.insert = or disjoint i64 %.sroa.865.sroa.6.0.insert.shift, %.sroa.865.sroa.7.sroa.0.0
  %.sroa.865.sroa.5.0.insert.ext = zext i8 %.sroa.865.sroa.5.0 to i64
  %.sroa.865.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.865.sroa.5.0.insert.ext, 8
  %.sroa.865.sroa.5.0.insert.insert = or disjoint i64 %.sroa.865.sroa.6.0.insert.insert, %.sroa.865.sroa.5.0.insert.shift
  %.sroa.865.sroa.0.0.insert.ext = zext i8 %.sroa.865.sroa.0.0 to i64
  %.sroa.865.sroa.0.0.insert.insert = or disjoint i64 %.sroa.865.sroa.5.0.insert.insert, %.sroa.865.sroa.0.0.insert.ext
  store i64 %.sroa.865.sroa.0.0.insert.insert, ptr %.sroa.865.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.55.i, i64 16, i1 false)
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store i8 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 57
  store i8 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 1
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 58
  store i8 %.sroa.15.0, ptr %.sroa.15.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.763)
  br label %bb.br

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dk)
          to label %bb.bz unwind label %bb.by

bb.bv:                                            ; preds = %bb.br
  store i64 -9223372036854775808, ptr %i.v, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bz, %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 1328 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !range !435, !noundef !3 ; 2 uses
  %.not6 = icmp eq i64 %i.do, -9223372036854775807
  br i1 %.not6, label %bb.cc, label %bb.ca

bb.bx:                                            ; preds = %bb.ce, %bb.by
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ce ], [ %i.dp, %bb.by ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query9ForClauseEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(64) %i.w) #39
          to label %.body39 unwind label %bb.ci

bb.by:                                            ; preds = %bb.bu
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bz:                                            ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.bw

bb.ca:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.568)
  call void @llvm.experimental.noalias.scope.decl(metadata !11985)
  %i.dq = icmp eq i64 %i.do, -9223372036854775808
  br i1 %i.dq, label %_RNvXseJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12FormatClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i), !noalias !11988
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.dn)
          to label %.noexc42 unwind label %bb.cf

.noexc42:                                         ; preds = %bb.cb
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 1384
  %i.ds = load i32, ptr %i.dr, align 8, !range !9424, !alias.scope !11985, !noalias !11990, !noundef !3
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 1352
  %.sroa.0.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dt, i64 32, i1 false), !noalias !11990
  %.sroa.066.0.copyload67 = load i64, ptr %.sroa.0.i, align 8, !noalias !11985
  %.sroa.568.0..sroa.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.568, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.568.0..sroa.0.i.sroa_idx, i64 48, i1 false), !noalias !11985
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i), !noalias !11988
  br label %_RNvXseJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12FormatClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.cc:                                            ; preds = %bb.bw
  store i64 -9223372036854775807, ptr %i.u, align 8
  br label %bb.cd

bb.cd:                                            ; preds = %_RNvXseJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12FormatClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 1112
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query12PipeOperatorENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.du)
          to label %bb.ch unwind label %bb.cg

bb.ce:                                            ; preds = %bb.cg, %bb.cf
  %.pn = phi { ptr, i32 } [ %i.dw, %bb.cg ], [ %i.dv, %bb.cf ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.v) #39
          to label %bb.bx unwind label %bb.ci

bb.cf:                                            ; preds = %bb.cb
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

_RNvXseJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12FormatClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %.noexc42, %bb.ca
  %.sroa.066.0 = phi i64 [ %.sroa.066.0.copyload67, %.noexc42 ], [ -9223372036854775808, %bb.ca ]
  %.sroa.569.0 = phi i32 [ %i.ds, %.noexc42 ], [ undef, %bb.ca ]
  store i64 %.sroa.066.0, ptr %i.u, align 8
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.568.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.568, i64 48, i1 false)
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i32 %.sroa.569.0, ptr %.sroa.569.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.568)
  br label %bb.cd

bb.cg:                                            ; preds = %bb.cd
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query12FormatClauseEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(64) %i.u) #39
          to label %bb.ce unwind label %bb.ci

bb.ch:                                            ; preds = %bb.cd
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dx, ptr noundef nonnull align 8 dereferenceable(120) %i.ac, i64 120, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1392
  store ptr %i.ak, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 48, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(688) %i.ea, ptr noundef nonnull align 8 dereferenceable(688) %i.z, i64 688, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.eb, ptr noundef nonnull align 8 dereferenceable(336) %i.y, i64 336, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 64, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ee, ptr noundef nonnull align 8 dereferenceable(64) %i.u, i64 64, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 1112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
end_hunk_1
