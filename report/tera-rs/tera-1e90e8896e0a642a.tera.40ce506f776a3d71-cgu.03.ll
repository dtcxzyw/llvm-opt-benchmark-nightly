Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.03?download=true
inline.NumInlined: 632
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6appendINtNtB5_4node7NodeRefNtNtBW_6marker5OwnedNtNtB9_6string6StringNtNtB5_7set_val9SetValZSTNtB1g_14LeafOrInternalE9bulk_pushINtNtB5_17dedup_sorted_iter15DedupSortedIterB1y_B1T_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB9_3vec9into_iter8IntoIterB1y_ENCINvMse_NtB5_3setINtB5e_8BTreeSetB1y_E16from_sorted_iterB4t_E0EENtNtB9_5alloc6GlobalECs5yXxDE1DkoT_4tera:bb.a
    #dbg_value(ptr undef, !2262, !DIExpression(), !7320)
  %.not.i36 = icmp eq ptr %i.eq, null, !dbg !8050
  br i1 %.not.i36, label %bb.o, label %bb.n, !dbg !8051

bb.n:                                             ; preds = %.preheader
    #dbg_value(ptr undef, !2239, !DIExpression(), !7318)
    #dbg_value(ptr poison, !2211, !DIExpression(DW_OP_deref), !7316)
    #dbg_value(ptr undef, !2212, !DIExpression(DW_OP_deref), !7316)
    #dbg_value(ptr poison, !2240, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7318)
    #dbg_value(ptr undef, !2240, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7318)
    #dbg_value(ptr undef, !2241, !DIExpression(), !7317)
    #dbg_value(ptr undef, !2202, !DIExpression(), !7316)
  %i.er = add i64 %.sroa.3.0, 1, !dbg !8052       ; 2 uses
    #dbg_value(ptr %i.eq, !7570, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7948)
    #dbg_value(ptr %i.eq, !7571, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7949)
    #dbg_value(i64 %i.er, !7570, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7948)
    #dbg_value(i64 %i.er, !7571, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7949)
    #dbg_value(i64 poison, !7570, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7948)
    #dbg_value(ptr poison, !7950, !DIExpression(), !7953)
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 274, !dbg !8053
  %i.et = load i16, ptr %i.es, align 2, !dbg !8053, !noundef !1505
  %i.eu = icmp ult i16 %i.et, 11, !dbg !8054
  br i1 %i.eu, label %.loopexit75, label %.preheader, !dbg !8054

bb.o:                                             ; preds = %.preheader
    #dbg_value(ptr null, !2239, !DIExpression(), !7318)
    #dbg_value(ptr poison, !2211, !DIExpression(DW_OP_deref), !7316)
    #dbg_value(ptr undef, !2212, !DIExpression(DW_OP_deref), !7316)
    #dbg_value(ptr poison, !2240, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7318)
    #dbg_value(ptr undef, !2240, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7318)
  call void @llvm.experimental.noalias.scope.decl(metadata !7954), !dbg !8055
    #dbg_declare(ptr poison, !1816, !DIExpression(), !7329)
    #dbg_value(ptr %0, !1811, !DIExpression(), !7330)
    #dbg_value(ptr %0, !1831, !DIExpression(), !7332)
    #dbg_value(ptr %0, !1767, !DIExpression(), !7334)
    #dbg_declare(ptr poison, !1812, !DIExpression(), !7335)
    #dbg_declare(ptr poison, !1813, !DIExpression(), !7336)
  %i.ev = load ptr, ptr %0, align 8, !dbg !8056, !alias.scope !7954, !nonnull !1505, !noundef !1505 ; 3 uses
  %i.ew = load i64, ptr %i.f, align 8, !dbg !8056, !alias.scope !7954, !noundef !1505
    #dbg_value(ptr %i.ev, !1814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7337)
    #dbg_value(i64 %i.ew, !1814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7337)
    #dbg_declare(ptr poison, !2269, !DIExpression(), !7339)
    #dbg_value(ptr %i.ev, !2275, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7340)
    #dbg_value(i64 %i.ew, !2275, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7340)
    #dbg_declare(ptr poison, !2277, !DIExpression(), !7342)
    #dbg_value(ptr %i.ev, !2280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7343)
    #dbg_value(i64 %i.ew, !2280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7343)
    #dbg_value(ptr %i.ev, !2282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7345)
    #dbg_value(i64 %i.ew, !2282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7345)
    #dbg_declare(ptr poison, !2296, !DIExpression(), !7346)
    #dbg_declare(ptr poison, !2300, !DIExpression(), !7348)
  %i.ex = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs5yXxDE1DkoT_4tera()
          to label %.noexc.i unwind label %bb.s, !dbg !8057, !noalias !7954 ; 7 uses

.noexc.i:                                         ; preds = %bb.o
    #dbg_value(ptr %i.ex, !2305, !DIExpression(), !7349)
    #dbg_value(ptr %i.ex, !2312, !DIExpression(), !7351)
  store ptr null, ptr %i.ex, align 8, !dbg !8058, !noalias !7954
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 274, !dbg !8059
  store i16 0, ptr %i.ey, align 2, !dbg !8059, !noalias !7954
    #dbg_value(ptr %i.ex, !2298, !DIExpression(), !7356)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 280, !dbg !8060
    #dbg_value(ptr %i.ez, !2327, !DIExpression(), !7358)
    #dbg_value(ptr %i.ev, !2332, !DIExpression(), !7358)
  store ptr %i.ev, ptr %i.ez, align 8, !dbg !8061, !noalias !7954
  %i.fa = add i64 %i.ew, 1, !dbg !8062            ; 3 uses
    #dbg_value(i64 %i.fa, !2334, !DIExpression(), !7360)
  %.not.i.i.i.i = icmp eq i64 %i.fa, 0, !dbg !8063
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.t, !dbg !8064, !prof !2033

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22
          to label %bb.q unwind label %bb.r, !dbg !8065, !noalias !7954

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !2355, !DIExpression(), !7362)
    #dbg_value(ptr poison, !2362, !DIExpression(), !7364)
    #dbg_value(ptr %i.ex, !2365, !DIExpression(), !7365)
    #dbg_value(i64 8, !2366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7366)
    #dbg_value(i64 376, !2366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7366)
    #dbg_value(ptr poison, !2381, !DIExpression(), !7368)
    #dbg_value(ptr poison, !2388, !DIExpression(), !7370)
    #dbg_value(ptr %i.ex, !2385, !DIExpression(), !7368)
    #dbg_value(ptr %i.ex, !2391, !DIExpression(), !7370)
    #dbg_value(ptr %i.ex, !2394, !DIExpression(), !7372)
    #dbg_value(ptr %i.ex, !2400, !DIExpression(), !7374)
    #dbg_value(i64 8, !2386, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7368)
    #dbg_value(i64 8, !2392, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7370)
    #dbg_value(i64 8, !2398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7372)
    #dbg_value(i64 8, !2401, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7374)
    #dbg_value(i64 376, !2386, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7368)
    #dbg_value(i64 376, !2392, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7370)
    #dbg_value(i64 376, !2398, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7372)
    #dbg_value(i64 376, !2401, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7374)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ex, i64 noundef 376, i64 noundef 8) #23, !dbg !8066, !noalias !7954
  br label %.body.i, !dbg !8067

bb.s:                                             ; preds = %bb.o
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i, !dbg !8068

.body.i:                                          ; preds = %bb.s, %bb.r
    #dbg_value(ptr poison, !2404, !DIExpression(), !7376)
    #dbg_value(ptr poison, !2410, !DIExpression(), !7378)
  call void @llvm.trap(), !dbg !8069
  unreachable, !dbg !8069

bb.t:                                             ; preds = %.noexc.i
    #dbg_declare(ptr poison, !2414, !DIExpression(DW_OP_LLVM_fragment, 136, 56), !7382)
    #dbg_value(ptr %i.ex, !2438, !DIExpression(), !7383)
    #dbg_value(i64 %i.fa, !2439, !DIExpression(), !7383)
    #dbg_declare(ptr poison, !2441, !DIExpression(), !7384)
    #dbg_value(ptr %i.ex, !2440, !DIExpression(), !7385)
    #dbg_value(ptr %i.ex, !2442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7386)
    #dbg_value(i64 %i.fa, !2442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7386)
    #dbg_value(ptr undef, !2432, !DIExpression(), !7387)
    #dbg_value(i64 0, !2433, !DIExpression(), !7388)
    #dbg_value(i64 0, !2414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7389)
    #dbg_value(i64 0, !2414, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7389)
    #dbg_value(i8 0, !2414, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !7389)
    #dbg_value(ptr poison, !2425, !DIExpression(), !7390)
    #dbg_value(i64 0, !2426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7391)
    #dbg_value(i64 1, !2426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7391)
    #dbg_value(i8 0, !2426, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !7391)
    #dbg_value(i64 0, !2427, !DIExpression(), !7392)
    #dbg_declare(ptr poison, !2165, !DIExpression(), !7394)
    #dbg_value(ptr %i.ex, !2170, !DIExpression(), !7395)
    #dbg_value(ptr %i.ex, !2178, !DIExpression(), !7397)
    #dbg_value(i64 0, !2171, !DIExpression(), !7398)
    #dbg_value(i64 0, !2183, !DIExpression(), !7397)
    #dbg_value(ptr %i.ev, !2172, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7399)
    #dbg_value(i64 poison, !2172, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7399)
    #dbg_value(ptr poison, !2182, !DIExpression(), !7400)
  store ptr %i.ex, ptr %i.ev, align 8, !dbg !8070, !noalias !7955
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 272, !dbg !8071
  store i16 0, ptr %i.fd, align 8, !dbg !8071, !noalias !7956
    #dbg_value(i64 poison, !2426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7391)
    #dbg_value(i8 poison, !2426, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !7391)
    #dbg_value(ptr %i.ex, !1815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7406)
    #dbg_value(ptr %i.ex, !1796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7334)
    #dbg_value(i64 %i.fa, !1815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7406)
    #dbg_value(i64 %i.fa, !1796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7334)
  store ptr %i.ex, ptr %0, align 8, !dbg !8072, !alias.scope !7954
  store i64 %i.fa, ptr %i.f, align 8, !dbg !8072, !alias.scope !7954
    #dbg_value(ptr %i.ex, !7568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7957)
    #dbg_value(i64 %i.fa, !7568, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7957)
  br label %.loopexit75, !dbg !8073

.loopexit75:                                      ; preds = %bb.n, %bb.t
  %.sroa.655.0 = phi i64 [ %i.fa, %bb.t ], [ %i.er, %bb.n ], !dbg !7946 ; 6 uses
  %.sroa.054.0 = phi ptr [ %i.ex, %bb.t ], [ %i.eq, %bb.n ], !dbg !7946 ; 7 uses
    #dbg_value(ptr %.sroa.054.0, !7568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7957)
    #dbg_value(i64 %.sroa.655.0, !7568, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7957)
  %i.fe = add i64 %.sroa.655.0, -1, !dbg !8074    ; 2 uses
    #dbg_value(i64 %i.fe, !7572, !DIExpression(), !7958)
    #dbg_declare(ptr poison, !2445, !DIExpression(), !7408)
    #dbg_declare(ptr poison, !2460, !DIExpression(), !7410)
  %i.ff = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs5yXxDE1DkoT_4tera()
          to label %bb.u unwind label %bb.z, !dbg !8075 ; 4 uses

bb.u:                                             ; preds = %.loopexit75
    #dbg_value(ptr %i.ff, !2466, !DIExpression(), !7411)
    #dbg_value(ptr %i.ff, !2473, !DIExpression(), !7413)
  store ptr null, ptr %i.ff, align 8, !dbg !8076
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 274, !dbg !8077
  store i16 0, ptr %i.fg, align 2, !dbg !8077
    #dbg_value(i64 0, !7573, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7959)
    #dbg_value(ptr %i.ff, !7573, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7959)
    #dbg_value(i64 0, !7574, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7960)
    #dbg_value(i64 %i.fe, !7574, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7960)
    #dbg_value(ptr undef, !7584, !DIExpression(), !7590)
    #dbg_value(ptr undef, !7586, !DIExpression(), !7589)
    #dbg_value(ptr undef, !7576, !DIExpression(), !7583)
    #dbg_value(ptr undef, !7577, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7961)
  %.not90 = icmp eq i64 %i.fe, 0, !dbg !8078
  br i1 %.not90, label %.loopexit109, label %.lr.ph, !dbg !7582

.invoke.i:                                        ; preds = %.loopexit109
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 32, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #22
          to label %.cont.i unwind label %bb.v, !dbg !8079, !noalias !7962

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.loopexit109:                                     ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECs5yXxDE1DkoT_4tera.exit49, %bb.u
  %.sroa.060.0.lcssa = phi ptr [ %i.ff, %bb.u ], [ %i.in, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECs5yXxDE1DkoT_4tera.exit49 ], !dbg !7958 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !8080
    #dbg_value(ptr poison, !2481, !DIExpression(), !7421)
    #dbg_value(ptr poison, !2488, !DIExpression(), !7423)
    #dbg_value(ptr poison, !2495, !DIExpression(), !7425)
    #dbg_declare(ptr %i.b, !2482, !DIExpression(), !7426)
    #dbg_declare(ptr poison, !2483, !DIExpression(), !7427)
    #dbg_value(ptr %.sroa.060.0.lcssa, !2484, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7421)
    #dbg_value(i64 poison, !2484, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7421)
    #dbg_value(ptr %.sroa.054.0, !2485, !DIExpression(DW_OP_plus_uconst, 274, DW_OP_stack_value), !7428)
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.054.0, i64 274, !dbg !8081 ; 2 uses
  %i.fi = load i16, ptr %i.fh, align 2, !dbg !8081, !noalias !7962, !noundef !1505 ; 3 uses
    #dbg_value(i16 %i.fi, !2504, !DIExpression(), !7430)
    #dbg_value(i16 %i.fi, !2486, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7431)
    #dbg_value(i16 %i.fi, !2493, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7423)
    #dbg_value(i16 %i.fi, !2506, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7433)
    #dbg_value(i16 %i.fi, !2509, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7435)
  %i.fj = icmp ult i16 %i.fi, 11, !dbg !8082
  br i1 %i.fj, label %bb.x, label %.invoke.i, !dbg !8082, !prof !2512

bb.v:                                             ; preds = %.invoke.i
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #19
          to label %.body34 unwind label %bb.w, !dbg !8083

bb.w:                                             ; preds = %bb.v
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !dbg !8084
  unreachable, !dbg !8084

bb.x:                                             ; preds = %.loopexit109
  %i.fm = zext nneg i16 %i.fi to i64, !dbg !8085  ; 2 uses
    #dbg_value(i64 %i.fm, !2486, !DIExpression(), !7431)
    #dbg_value(i64 %i.fm, !2493, !DIExpression(), !7423)
    #dbg_value(i64 %i.fm, !2506, !DIExpression(), !7433)
    #dbg_value(i64 %i.fm, !2509, !DIExpression(), !7435)
  %i.fn = add nuw nsw i16 %i.fi, 1, !dbg !8086
  store i16 %i.fn, ptr %i.fh, align 2, !dbg !8086, !noalias !7962
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.054.0, i64 8, !dbg !8087
    #dbg_value(ptr %i.fo, !2507, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7433)
    #dbg_value(i64 11, !2507, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7433)
    #dbg_value(ptr %i.fo, !2510, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7435)
    #dbg_value(i64 11, !2510, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7435)
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.fm, !dbg !8088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fp, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !8089
  %i.fq = add nuw nsw i64 %i.fm, 1, !dbg !8090    ; 2 uses
    #dbg_value(i64 %i.fq, !2501, !DIExpression(), !7425)
    #dbg_value(i64 %i.fq, !2513, !DIExpression(), !7437)
    #dbg_value(i64 %i.fq, !2518, !DIExpression(), !7439)
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.054.0, i64 280, !dbg !8091
    #dbg_value(ptr %i.fr, !2516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7437)
    #dbg_value(i64 12, !2516, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7437)
    #dbg_value(ptr %i.fr, !2521, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7439)
    #dbg_value(i64 12, !2521, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7439)
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fq, !dbg !8092
    #dbg_value(ptr %i.fs, !2524, !DIExpression(), !7441)
    #dbg_value(ptr %.sroa.060.0.lcssa, !2525, !DIExpression(), !7441)
  store ptr %.sroa.060.0.lcssa, ptr %i.fs, align 8, !dbg !8093, !noalias !7962
    #dbg_declare(ptr poison, !2165, !DIExpression(), !7443)
    #dbg_value(ptr %.sroa.054.0, !2170, !DIExpression(), !7444)
    #dbg_value(ptr %.sroa.054.0, !2178, !DIExpression(), !7446)
    #dbg_value(i64 %i.fq, !2171, !DIExpression(), !7447)
    #dbg_value(i64 %i.fq, !2183, !DIExpression(), !7446)
    #dbg_value(ptr %.sroa.060.0.lcssa, !2172, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7448)
    #dbg_value(i64 poison, !2172, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7448)
    #dbg_value(ptr poison, !2182, !DIExpression(), !7449)
  store ptr %.sroa.054.0, ptr %.sroa.060.0.lcssa, align 8, !dbg !8094, !noalias !7962
  %i.ft = trunc nuw nsw i64 %i.fq to i16, !dbg !8095
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.060.0.lcssa, i64 272, !dbg !8096
  store i16 %i.ft, ptr %i.fu, align 8, !dbg !8096, !noalias !7962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8097
    #dbg_value(ptr %.sroa.054.0, !7656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7452)
    #dbg_value(i64 %.sroa.655.0, !7656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7452)
    #dbg_value(i64 %.sroa.655.0, !7660, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7453)
    #dbg_value(i64 %.sroa.655.0, !7664, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7455)
    #dbg_value(ptr %.sroa.054.0, !7660, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7453)
    #dbg_value(ptr %.sroa.054.0, !7664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7455)
    #dbg_value(ptr %.sroa.054.0, !7666, !DIExpression(), !7457)
  %i.fv = icmp eq i64 %.sroa.655.0, 0, !dbg !8098
  br i1 %i.fv, label %.loopexit, label %.lr.ph.i41.preheader, !dbg !8098

.lr.ph.i41.preheader:                             ; preds = %bb.x
  %xtraiter125 = and i64 %.sroa.655.0, 7, !dbg !8098 ; 2 uses
  %lcmp.mod126.not = icmp eq i64 %xtraiter125, 0, !dbg !8098
  br i1 %lcmp.mod126.not, label %.lr.ph.i41.prol.loopexit, label %.lr.ph.i41.prol, !dbg !8098

.lr.ph.i41.prol:                                  ; preds = %.lr.ph.i41.preheader, %.lr.ph.i41.prol
  %.sroa.03.019.i42.prol = phi ptr [ %i.gc, %.lr.ph.i41.prol ], [ %.sroa.054.0, %.lr.ph.i41.preheader ] ; 2 uses
  %.sroa.05.018.i43.prol = phi i64 [ %i.gd, %.lr.ph.i41.prol ], [ %.sroa.655.0, %.lr.ph.i41.preheader ]
  %prol.iter127 = phi i64 [ %prol.iter127.next, %.lr.ph.i41.prol ], [ 0, %.lr.ph.i41.preheader ]
    #dbg_value(ptr %.sroa.03.019.i42.prol, !7666, !DIExpression(), !7457)
    #dbg_value(i64 %.sroa.05.018.i43.prol, !7664, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7455)
    #dbg_value(i64 %.sroa.05.018.i43.prol, !7662, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7458)
    #dbg_value(i64 %.sroa.05.018.i43.prol, !7670, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7460)
    #dbg_value(i64 %.sroa.05.018.i43.prol, !7667, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7461)
    #dbg_value(ptr %.sroa.03.019.i42.prol, !7662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7458)
    #dbg_value(ptr %.sroa.03.019.i42.prol, !7670, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7460)
    #dbg_value(ptr %.sroa.03.019.i42.prol, !7667, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7461)
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i42.prol, i64 274, !dbg !8099
  %i.fx = load i16, ptr %i.fw, align 2, !dbg !8099, !noalias !7963, !noundef !1505 ; 2 uses
  %i.fy = zext nneg i16 %i.fx to i64, !dbg !8100
    #dbg_value(i64 %i.fy, !7667, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7461)
    #dbg_value(i64 %i.fy, !7676, !DIExpression(), !7467)
    #dbg_value(i64 %i.fy, !7679, !DIExpression(), !7469)
    #dbg_value(ptr %.sroa.03.019.i42.prol, !7668, !DIExpression(), !7470)
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i42.prol, i64 280, !dbg !8101
    #dbg_value(ptr %i.fz, !7677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7467)
    #dbg_value(ptr %i.fz, !7680, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7469)
    #dbg_value(i64 12, !7677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7467)
    #dbg_value(i64 12, !7680, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7469)
  %i.ga = icmp ult i16 %i.fx, 12, !dbg !8102
  call void @llvm.assume(i1 %i.ga), !dbg !8103
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.fy, !dbg !8104
    #dbg_value(ptr %i.gb, !7682, !DIExpression(), !7472)
    #dbg_value(ptr %i.gb, !7684, !DIExpression(), !7474)
    #dbg_value(ptr %i.gb, !7686, !DIExpression(), !7476)
  %i.gc = load ptr, ptr %i.gb, align 8, !dbg !8105, !noalias !7963, !nonnull !1505, !noundef !1505 ; 3 uses
    #dbg_value(ptr %i.gc, !7660, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7453)
    #dbg_value(ptr %i.gc, !7664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7455)
    #dbg_value(ptr %i.gc, !7666, !DIExpression(), !7457)
  %i.gd = add i64 %.sroa.05.018.i43.prol, -1, !dbg !8106 ; 2 uses
    #dbg_value(i64 %i.gd, !7664, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7455)
    #dbg_value(i64 %i.gd, !7660, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7453)
  %prol.iter127.next = add i64 %prol.iter127, 1, !dbg !8098 ; 2 uses
  %prol.iter127.cmp.not = icmp eq i64 %prol.iter127.next, %xtraiter125, !dbg !8098
  br i1 %prol.iter127.cmp.not, label %.lr.ph.i41.prol.loopexit, label %.lr.ph.i41.prol, !dbg !8098, !llvm.loop !7477

.lr.ph.i41.prol.loopexit:                         ; preds = %.lr.ph.i41.prol, %.lr.ph.i41.preheader
  %.lcssa122.unr = phi ptr [ poison, %.lr.ph.i41.preheader ], [ %i.gc, %.lr.ph.i41.prol ]
  %.sroa.03.019.i42.unr = phi ptr [ %.sroa.054.0, %.lr.ph.i41.preheader ], [ %i.gc, %.lr.ph.i41.prol ]
  %.sroa.05.018.i43.unr = phi i64 [ %.sroa.655.0, %.lr.ph.i41.preheader ], [ %i.gd, %.lr.ph.i41.prol ]
  %i.ge = icmp ult i64 %.sroa.655.0, 8, !dbg !8098
  br i1 %i.ge, label %.loopexit, label %.lr.ph.i41, !dbg !8098

.lr.ph.i41:                                       ; preds = %.lr.ph.i41.prol.loopexit, %.lr.ph.i41
  %.sroa.03.019.i42 = phi ptr [ %i.ii, %.lr.ph.i41 ], [ %.sroa.03.019.i42.unr, %.lr.ph.i41.prol.loopexit ] ; 2 uses
  %.sroa.05.018.i43 = phi i64 [ %i.ij, %.lr.ph.i41 ], [ %.sroa.05.018.i43.unr, %.lr.ph.i41.prol.loopexit ]
    #dbg_value(ptr %.sroa.03.019.i42, !7666, !DIExpression(), !7457)
    #dbg_value(i64 %.sroa.05.018.i43, !7664, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7455)
    #dbg_value(i64 %.sroa.05.018.i43, !7662, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7458)
    #dbg_value(i64 %.sroa.05.018.i43, !7670, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7460)
    #dbg_value(i64 %.sroa.05.018.i43, !7667, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7461)
    #dbg_value(ptr %.sroa.03.019.i42, !7662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7458)
    #dbg_value(ptr %.sroa.03.019.i42, !7670, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7460)
    #dbg_value(ptr %.sroa.03.019.i42, !7667, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7461)
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i42, i64 274, !dbg !8099
  %i.gg = load i16, ptr %i.gf, align 2, !dbg !8099, !noalias !7963, !noundef !1505 ; 2 uses
  %i.gh = zext nneg i16 %i.gg to i64, !dbg !8100
    #dbg_value(i64 %i.gh, !7667, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7461)
    #dbg_value(i64 %i.gh, !7676, !DIExpression(), !7467)
    #dbg_value(i64 %i.gh, !7679, !DIExpression(), !7469)
    #dbg_value(ptr %.sroa.03.019.i42, !7668, !DIExpression(), !7470)
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i42, i64 280, !dbg !8101
    #dbg_value(ptr %i.gi, !7677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7467)
    #dbg_value(ptr %i.gi, !7680, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7469)
    #dbg_value(i64 12, !7677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7467)
    #dbg_value(i64 12, !7680, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7469)
  %i.gj = icmp ult i16 %i.gg, 12, !dbg !8102
  call void @llvm.assume(i1 %i.gj), !dbg !8103
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gh, !dbg !8104
    #dbg_value(ptr %i.gk, !7682, !DIExpression(), !7472)
    #dbg_value(ptr %i.gk, !7684, !DIExpression(), !7474)
    #dbg_value(ptr %i.gk, !7686, !DIExpression(), !7476)
  %i.gl = load ptr, ptr %i.gk, align 8, !dbg !8105, !noalias !7963, !nonnull !1505, !noundef !1505 ; 2 uses
    #dbg_value(ptr %i.gl, !7660, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7453)
    #dbg_value(ptr %i.gl, !7664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7455)
    #dbg_value(ptr %i.gl, !7666, !DIExpression(), !7457)
    #dbg_value(i64 %.sroa.05.018.i43, !7660, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7453)
    #dbg_value(i64 %.sroa.05.018.i43, !7664, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7455)
    #dbg_value(i64 %.sroa.05.018.i43, !7662, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7458)
    #dbg_value(i64 %.sroa.05.018.i43, !7670, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7460)
    #dbg_value(i64 %.sroa.05.018.i43, !7667, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7461)
    #dbg_value(ptr %i.gl, !7662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7458)
    #dbg_value(ptr %i.gl, !7670, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7460)
    #dbg_value(ptr %i.gl, !7667, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7461)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 274, !dbg !8099
  %i.gn = load i16, ptr %i.gm, align 2, !dbg !8099, !noalias !7963, !noundef !1505 ; 2 uses
  %i.go = zext nneg i16 %i.gn to i64, !dbg !8100
    #dbg_value(i64 %i.go, !7667, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7461)
    #dbg_value(i64 %i.go, !7676, !DIExpression(), !7467)
    #dbg_value(i64 %i.go, !7679, !DIExpression(), !7469)
    #dbg_value(ptr %i.gl, !7668, !DIExpression(), !7470)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 280, !dbg !8101
    #dbg_value(ptr %i.gp, !7677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7467)
    #dbg_value(ptr %i.gp, !7680, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7469)
    #dbg_value(i64 12, !7677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7467)
    #dbg_value(i64 12, !7680, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7469)
  %i.gq = icmp ult i16 %i.gn, 12, !dbg !8102
  call void @llvm.assume(i1 %i.gq), !dbg !8103
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.go, !dbg !8104
    #dbg_value(ptr %i.gr, !7682, !DIExpression(), !7472)
    #dbg_value(ptr %i.gr, !7684, !DIExpression(), !7474)
    #dbg_value(ptr %i.gr, !7686, !DIExpression(), !7476)
  %i.gs = load ptr, ptr %i.gr, align 8, !dbg !8105, !noalias !7963, !nonnull !1505, !noundef !1505 ; 2 uses
    #dbg_value(ptr %i.gs, !7660, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7453)
    #dbg_value(ptr %i.gs, !7664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7455)
    #dbg_value(ptr %i.gs, !7666, !DIExpression(), !7457)
    #dbg_value(i64 %.sroa.05.018.i43, !7660, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7453)
    #dbg_value(i64 %.sroa.05.018.i43, !7664, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7455)
    #dbg_value(i64 %.sroa.05.018.i43, !7662, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7458)
    #dbg_value(i64 %.sroa.05.018.i43, !7670, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7460)
    #dbg_value(i64 %.sroa.05.018.i43, !7667, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7461)
    #dbg_value(ptr %i.gs, !7662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7458)
    #dbg_value(ptr %i.gs, !7670, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7460)
    #dbg_value(ptr %i.gs, !7667, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7461)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 274, !dbg !8099
  %i.gu = load i16, ptr %i.gt, align 2, !dbg !8099, !noalias !7963, !noundef !1505 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB3p_13OccupiedEntryB1L_B26_E9remove_kv0NtNtBb_5alloc6GlobalEB2a_:bb.a
    #dbg_value(ptr undef, !5574, !DIExpression(), !22589)
    #dbg_value(ptr undef, !5576, !DIExpression(), !22588)
    #dbg_value(ptr undef, !5560, !DIExpression(), !22587)
  %i.bo = add i64 %i.bh, 1, !dbg !22746
    #dbg_value(i64 %i.bo, !22613, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22671)
    #dbg_value(ptr %i.bl, !22613, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22671)
    #dbg_value(i64 poison, !22613, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22671)
  %i.bp = invoke fastcc noundef zeroext i1 @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3fixINtNtB7_4node7NodeRefNtNtBV_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1f_14LeafOrInternalE31fix_node_and_affected_ancestorsNtNtBb_5alloc6GlobalEB1U_(ptr noundef nonnull %i.bl, i64 noundef %i.bo)
          to label %bb.t unwind label %bb.f, !dbg !22747

bb.t:                                             ; preds = %bb.s
  br i1 %i.bp, label %.sink.split, label %bb.u, !dbg !22748

bb.u:                                             ; preds = %bb.t
    #dbg_value(ptr %2, !22672, !DIExpression(DW_OP_deref), !22598)
  store i8 1, ptr %2, align 1, !dbg !22749
  br label %.sink.split, !dbg !22750

.sink.split:                                      ; preds = %bb.t, %bb.u, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22751
  br label %bb.v, !dbg !22752

bb.v:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.0.sink = phi ptr [ %i.f, %bb.a ], [ %i.bi, %.sink.split ]
  %.sroa.7.0.sink = phi i64 [ %i.x, %bb.a ], [ %i.bh, %.sink.split ]
  %.sroa.11.0.sink = phi i64 [ %i.l, %bb.a ], [ %i.bk, %.sink.split ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !22753
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !22753
  store ptr %.sroa.0.0.sink, ptr %i.bq, align 8, !dbg !22753
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !22753
  store i64 %.sroa.7.0.sink, ptr %.sroa.7.0..sroa_idx5, align 8, !dbg !22753
  %.sroa.11.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !22753
  store i64 %.sroa.11.0.sink, ptr %.sroa.11.0..sroa_idx11, align 8, !dbg !22753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !22708
  ret void, !dbg !22754

bb.w:                                             ; preds = %bb.f
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !dbg !22755
  unreachable, !dbg !22755

bb.x:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.af, !dbg !22755
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1i_14LeafOrInternalE11search_treeB1y_EB1X_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !22760 {
bb.a:
    #dbg_value(ptr %1, !22837, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22844)
    #dbg_value(i64 %2, !22837, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22844)
    #dbg_value(ptr %3, !22838, !DIExpression(), !22844)
    #dbg_value(ptr %3, !22845, !DIExpression(), !22854)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val69 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val70 = load i64, ptr %i.b, align 8           ; 2 uses
  br label %bb.b, !dbg !22901

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.w, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.v, %bb.e ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0, !22837, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22844)
    #dbg_value(i64 %.sroa.3.0, !22837, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22844)
    #dbg_value(ptr %.sroa.0.0, !22849, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22854)
    #dbg_value(i64 %.sroa.3.0, !22849, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22854)
    #dbg_value(ptr poison, !5629, !DIExpression(), !22767)
    #dbg_value(ptr poison, !5676, !DIExpression(), !22768)
    #dbg_value(ptr poison, !5704, !DIExpression(), !22769)
    #dbg_value(ptr poison, !5705, !DIExpression(), !22769)
    #dbg_value(i64 0, !5706, !DIExpression(), !22769)
    #dbg_value(ptr %.sroa.0.0, !5707, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22770)
    #dbg_value(i64 poison, !5707, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22770)
    #dbg_value(ptr poison, !5734, !DIExpression(), !22772)
    #dbg_value(ptr %.sroa.0.0, !5742, !DIExpression(), !22773)
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8, !dbg !22902 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 538, !dbg !22903
  %i.e = load i16, ptr %i.d, align 2, !dbg !22903, !noundef !1505 ; 2 uses
    #dbg_value(i16 %i.e, !5744, !DIExpression(), !22775)
  %i.f = zext i16 %i.e to i64, !dbg !22904        ; 3 uses
    #dbg_value(ptr %i.c, !5708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22776)
    #dbg_value(i64 %i.f, !5708, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22776)
    #dbg_value(i64 %i.f, !5747, !DIExpression(), !22779)
    #dbg_value(i64 %i.f, !5757, !DIExpression(), !22781)
    #dbg_value(ptr %i.c, !5755, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22782)
    #dbg_value(ptr %i.c, !5751, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22783)
    #dbg_value(i64 %i.f, !5755, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22782)
    #dbg_value(i64 %i.f, !5751, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22783)
    #dbg_value(ptr %i.c, !5752, !DIExpression(), !22784)
    #dbg_value(ptr %i.c, !5761, !DIExpression(), !22781)
  %.idx = mul nuw nsw i64 %i.f, 24, !dbg !22905
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx, !dbg !22905
    #dbg_value(ptr %i.c, !5709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22785)
    #dbg_value(ptr %i.g, !5709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22785)
    #dbg_value(i64 0, !5709, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22785)
    #dbg_value(ptr undef, !5676, !DIExpression(), !22768)
    #dbg_value(ptr undef, !5629, !DIExpression(), !22767)
    #dbg_value(i64 1, !5764, !DIExpression(), !22787)
    #dbg_value(ptr %i.c, !5649, !DIExpression(), !22788)
    #dbg_value(ptr %i.c, !5768, !DIExpression(), !22787)
    #dbg_value(ptr %i.g, !5650, !DIExpression(), !22789)
    #dbg_value(ptr poison, !5771, !DIExpression(), !22791)
    #dbg_value(ptr poison, !5775, !DIExpression(), !22792)
  %i.h = icmp eq i16 %i.e, 0, !dbg !22906
  br i1 %i.h, label %._crit_edge, label %.lr.ph.preheader, !dbg !22907

.lr.ph.preheader:                                 ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val69) ]
  br label %.lr.ph, !dbg !22908

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i102, i64 24, !dbg !22909 ; 2 uses
    #dbg_value(ptr %i.i, !5709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22785)
  %i.j = add nuw nsw i64 %.sroa.8.0.i101, 1, !dbg !22910
    #dbg_value(i64 %i.j, !5709, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22785)
    #dbg_value(ptr %i.i, !5709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22785)
    #dbg_value(i64 %i.j, !5709, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22785)
    #dbg_value(ptr undef, !5676, !DIExpression(), !22768)
    #dbg_value(ptr undef, !5629, !DIExpression(), !22767)
    #dbg_value(i64 1, !5764, !DIExpression(), !22787)
    #dbg_value(ptr %i.i, !5649, !DIExpression(), !22788)
    #dbg_value(ptr %i.i, !5768, !DIExpression(), !22787)
    #dbg_value(ptr %i.g, !5650, !DIExpression(), !22789)
    #dbg_value(ptr poison, !5771, !DIExpression(), !22791)
    #dbg_value(ptr poison, !5775, !DIExpression(), !22792)
  %i.k = icmp eq ptr %i.i, %i.g, !dbg !22906
  br i1 %i.k, label %._crit_edge, label %.lr.ph, !dbg !22907

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.0.01.i102 = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %.sroa.8.0.i101 = phi i64 [ %i.j, %bb.c ], [ 0, %.lr.ph.preheader ] ; 3 uses
    #dbg_value(ptr %.sroa.0.01.i102, !5709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22785)
    #dbg_value(i64 %.sroa.8.0.i101, !5709, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22785)
    #dbg_value(ptr %.sroa.0.01.i102, !5709, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22785)
    #dbg_value(ptr %.sroa.0.01.i102, !5677, !DIExpression(), !22793)
    #dbg_value(i64 %.sroa.8.0.i101, !5680, !DIExpression(), !22794)
    #dbg_value(i64 %.sroa.8.0.i101, !5709, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !22785)
    #dbg_value(i64 %.sroa.8.0.i101, !5710, !DIExpression(), !22795)
    #dbg_value(ptr %.sroa.0.01.i102, !5711, !DIExpression(), !22795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22855), !dbg !22911
    #dbg_value(ptr poison, !5779, !DIExpression(), !22799)
    #dbg_value(ptr poison, !5785, !DIExpression(), !22801)
    #dbg_value(ptr %.sroa.0.01.i102, !5783, !DIExpression(), !22799)
    #dbg_value(ptr %.sroa.0.01.i102, !5785, !DIExpression(), !22803)
  %.sroa.01.0.in.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i102, i64 8, !dbg !22912
  %.sroa.01.0.i.i = load ptr, ptr %.sroa.01.0.in.i.i, align 8, !dbg !22912, !alias.scope !22855, !noalias !22856, !nonnull !1505, !noundef !1505
  %.sroa.32.0.in.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i102, i64 16, !dbg !22912
  %.sroa.32.0.i.i = load i64, ptr %.sroa.32.0.in.i.i, align 8, !dbg !22912, !alias.scope !22855, !noalias !22856, !noundef !1505 ; 2 uses
    #dbg_value(ptr poison, !5797, !DIExpression(), !22809)
    #dbg_value(ptr %.val69, !5831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22810)
    #dbg_value(i64 %.val70, !5831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22810)
    #dbg_value(ptr %.sroa.01.0.i.i, !5832, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22810)
    #dbg_value(i64 %.sroa.32.0.i.i, !5832, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22810)
    #dbg_value(ptr poison, !5801, !DIExpression(), !22811)
    #dbg_value(ptr %.val69, !5822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22812)
    #dbg_value(ptr %.val69, !5811, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22813)
    #dbg_value(i64 %.val70, !5822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22812)
    #dbg_value(i64 %.val70, !5811, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22813)
    #dbg_value(ptr %.sroa.01.0.i.i, !5823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22812)
    #dbg_value(ptr %.sroa.01.0.i.i, !5812, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22813)
    #dbg_value(i64 %.sroa.32.0.i.i, !5823, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22812)
    #dbg_value(i64 %.sroa.32.0.i.i, !5812, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22813)
    #dbg_value(i64 %.val70, !5814, !DIExpression(), !22814)
  %i.l = sub i64 %.val70, %.sroa.32.0.i.i, !dbg !22913
    #dbg_value(i64 %i.l, !5813, !DIExpression(), !22815)
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val70, i64 %.sroa.32.0.i.i), !dbg !22914
    #dbg_value(i64 %spec.store.select.i.i.i, !5814, !DIExpression(), !22814)
    #dbg_value(ptr %.val69, !5815, !DIExpression(), !22816)
    #dbg_value(ptr %.sroa.01.0.i.i, !5816, !DIExpression(), !22817)
  %i.m = tail call i32 @memcmp(ptr nonnull readonly %.val69, ptr nonnull readonly %.sroa.01.0.i.i, i64 %spec.store.select.i.i.i), !dbg !22915, !alias.scope !22857, !noalias !22858 ; 2 uses
  %i.n = sext i32 %i.m to i64, !dbg !22915
    #dbg_value(i64 %i.n, !5817, !DIExpression(), !22821)
  %i.o = icmp eq i32 %i.m, 0, !dbg !22916
  %spec.store.select1.i.i.i = select i1 %i.o, i64 %i.l, i64 %i.n, !dbg !22916
    #dbg_value(i64 %spec.store.select1.i.i.i, !5817, !DIExpression(), !22821)
    #dbg_value(ptr undef, !5797, !DIExpression(), !22809)
  %i.p = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select1.i.i.i, i64 0), !dbg !22917
  switch i8 %i.p, label %bb.d [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ], !dbg !22908

bb.d:                                             ; preds = %.lr.ph
  unreachable, !dbg !22918

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.f, %bb.b ], [ %i.f, %bb.c ], [ %.sroa.8.0.i101, %.lr.ph ] ; 3 uses
    #dbg_value(i64 %.sroa.3.0, !22840, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22859)
    #dbg_value(i64 %.sroa.3.0, !22860, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22865)
    #dbg_value(i64 %.sroa.3.0, !22866, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22869)
    #dbg_value(ptr %.sroa.0.0, !22840, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22859)
    #dbg_value(ptr %.sroa.0.0, !22860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22865)
    #dbg_value(ptr %.sroa.0.0, !22866, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22869)
    #dbg_value(i64 %.sroa.4.0.i.ph, !22840, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22859)
    #dbg_value(i64 %.sroa.4.0.i.ph, !22860, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22865)
  %i.q = icmp eq i64 %.sroa.3.0, 0, !dbg !22919
  br i1 %i.q, label %.loopexit, label %bb.e, !dbg !22919

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph
  %.sink = phi i64 [ %.sroa.3.0, %.lr.ph ], [ 0, %._crit_edge ]
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i101, %.lr.ph ], [ %.sroa.4.0.i.ph, %._crit_edge ]
  %storemerge = phi i64 [ 0, %.lr.ph ], [ 1, %._crit_edge ], !dbg !22844
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22844
  store ptr %.sroa.0.0, ptr %i.r, align 8, !dbg !22844
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22844
  store i64 %.sink, ptr %.sroa.429.0..sroa_idx, align 8, !dbg !22844
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !22844
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.530.0..sroa_idx, align 8, !dbg !22844
  store i64 %storemerge, ptr %0, align 8, !dbg !22844
  ret void, !dbg !22920

bb.e:                                             ; preds = %._crit_edge
    #dbg_value(i64 %.sroa.3.0, !22842, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22870)
    #dbg_value(i64 %.sroa.3.0, !22871, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22876)
    #dbg_value(ptr %.sroa.0.0, !22842, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22870)
    #dbg_value(ptr %.sroa.0.0, !22871, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22876)
    #dbg_value(i64 %.sroa.4.0.i.ph, !22842, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22870)
    #dbg_value(i64 %.sroa.4.0.i.ph, !22871, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22876)
    #dbg_value(i64 %.sroa.4.0.i.ph, !22877, !DIExpression(), !22881)
    #dbg_value(i64 %.sroa.4.0.i.ph, !22882, !DIExpression(), !22886)
    #dbg_value(ptr %.sroa.0.0, !22872, !DIExpression(), !22887)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 544, !dbg !22921
    #dbg_value(ptr %i.s, !22878, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22881)
    #dbg_value(ptr %i.s, !22883, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22886)
    #dbg_value(i64 12, !22878, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22881)
    #dbg_value(i64 12, !22883, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22886)
  %i.t = icmp samesign ult i64 %.sroa.4.0.i.ph, 12, !dbg !22922
  tail call void @llvm.assume(i1 %i.t), !dbg !22923
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.4.0.i.ph, !dbg !22924
    #dbg_value(ptr %i.u, !22888, !DIExpression(), !22891)
    #dbg_value(ptr %i.u, !22892, !DIExpression(), !22895)
    #dbg_value(ptr %i.u, !22896, !DIExpression(), !22899)
  %i.v = load ptr, ptr %i.u, align 8, !dbg !22925, !nonnull !1505, !noundef !1505
    #dbg_value(ptr %i.v, !22873, !DIExpression(), !22900)
  %i.w = add i64 %.sroa.3.0, -1, !dbg !22926
    #dbg_value(i64 %i.w, !22837, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22844)
    #dbg_value(ptr %i.v, !22837, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22844)
  br label %bb.b, !dbg !22901
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1i_14LeafOrInternalE11search_treeeEB1X_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22931 {
bb.a:
    #dbg_value(ptr %1, !23016, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23023)
    #dbg_value(i64 %2, !23016, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23023)
    #dbg_value(ptr %3, !23017, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23023)
    #dbg_value(ptr %3, !23024, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23034)
    #dbg_value(i64 %4, !23017, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23023)
    #dbg_value(i64 %4, !23024, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23034)
  br label %bb.b, !dbg !23108

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.x, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.w, %bb.e ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0, !23016, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23023)
    #dbg_value(i64 %.sroa.3.0, !23016, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23023)
    #dbg_value(ptr %.sroa.0.0, !23029, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23034)
    #dbg_value(i64 %.sroa.3.0, !23029, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23034)
    #dbg_value(ptr poison, !5629, !DIExpression(), !22943)
    #dbg_value(ptr poison, !5676, !DIExpression(), !22944)
    #dbg_value(ptr poison, !23039, !DIExpression(), !22945)
    #dbg_value(ptr %3, !23040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22945)
    #dbg_value(i64 %4, !23040, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22945)
    #dbg_value(i64 0, !23041, !DIExpression(), !22945)
    #dbg_value(ptr %.sroa.0.0, !23042, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22946)
    #dbg_value(i64 poison, !23042, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22946)
    #dbg_value(ptr poison, !23048, !DIExpression(), !22950)
    #dbg_value(ptr %.sroa.0.0, !23049, !DIExpression(), !22951)
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8, !dbg !23109 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 538, !dbg !23110
  %i.c = load i16, ptr %i.b, align 2, !dbg !23110, !noalias !23051, !noundef !1505 ; 2 uses
    #dbg_value(i16 %i.c, !23052, !DIExpression(), !22956)
  %i.d = zext i16 %i.c to i64, !dbg !23111        ; 3 uses
    #dbg_value(ptr %i.a, !23043, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22957)
    #dbg_value(i64 %i.d, !23043, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22957)
    #dbg_value(i64 %i.d, !23054, !DIExpression(), !22965)
    #dbg_value(i64 %i.d, !23061, !DIExpression(), !22968)
    #dbg_value(ptr %i.a, !23059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22969)
    #dbg_value(ptr %i.a, !23055, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22970)
    #dbg_value(i64 %i.d, !23059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22969)
    #dbg_value(i64 %i.d, !23055, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22970)
    #dbg_value(ptr %i.a, !23056, !DIExpression(), !22971)
    #dbg_value(ptr %i.a, !23062, !DIExpression(), !22968)
  %.idx = mul nuw nsw i64 %i.d, 24, !dbg !23112
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx, !dbg !23112
    #dbg_value(ptr %i.a, !23044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22972)
    #dbg_value(ptr %i.e, !23044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22972)
    #dbg_value(i64 0, !23044, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22972)
    #dbg_value(ptr undef, !5676, !DIExpression(), !22944)
    #dbg_value(ptr undef, !5629, !DIExpression(), !22943)
    #dbg_value(i64 1, !5764, !DIExpression(), !22974)
    #dbg_value(ptr %i.a, !5649, !DIExpression(), !22975)
    #dbg_value(ptr %i.a, !5768, !DIExpression(), !22974)
    #dbg_value(ptr %i.e, !5650, !DIExpression(), !22976)
    #dbg_value(ptr poison, !5771, !DIExpression(), !22978)
    #dbg_value(ptr poison, !5775, !DIExpression(), !22979)
  %i.f = icmp eq i16 %i.c, 0, !dbg !23113
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !23114

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i101, i64 24, !dbg !23115 ; 2 uses
    #dbg_value(ptr %i.g, !23044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22972)
  %i.h = add nuw nsw i64 %.sroa.8.0.i100, 1, !dbg !23116
    #dbg_value(i64 %i.h, !23044, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22972)
    #dbg_value(ptr %i.g, !23044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22972)
    #dbg_value(i64 %i.h, !23044, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22972)
    #dbg_value(ptr undef, !5676, !DIExpression(), !22944)
    #dbg_value(ptr undef, !5629, !DIExpression(), !22943)
    #dbg_value(i64 1, !5764, !DIExpression(), !22974)
    #dbg_value(ptr %i.g, !5649, !DIExpression(), !22975)
    #dbg_value(ptr %i.g, !5768, !DIExpression(), !22974)
    #dbg_value(ptr %i.e, !5650, !DIExpression(), !22976)
    #dbg_value(ptr poison, !5771, !DIExpression(), !22978)
    #dbg_value(ptr poison, !5775, !DIExpression(), !22979)
  %i.i = icmp eq ptr %i.g, %i.e, !dbg !23113
  br i1 %i.i, label %._crit_edge, label %.lr.ph, !dbg !23114

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.01.i101 = phi ptr [ %i.g, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.8.0.i100 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ] ; 3 uses
    #dbg_value(ptr %.sroa.0.01.i101, !23044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22972)
    #dbg_value(i64 %.sroa.8.0.i100, !23044, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22972)
    #dbg_value(ptr %.sroa.0.01.i101, !23044, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22972)
    #dbg_value(ptr %.sroa.0.01.i101, !5677, !DIExpression(), !22980)
    #dbg_value(i64 %.sroa.8.0.i100, !5680, !DIExpression(), !22981)
    #dbg_value(i64 %.sroa.8.0.i100, !23044, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !22972)
    #dbg_value(i64 %.sroa.8.0.i100, !23045, !DIExpression(), !22982)
    #dbg_value(ptr %.sroa.0.01.i101, !23046, !DIExpression(), !22982)
  %i.j = tail call { ptr, i64 } @_RNvXs_NtCsgCecv3eZDcN_5alloc6borrowINtB4_3CoweEINtNtCsf3Ta7LF998c_4core6borrow6BorroweE6borrowCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.01.i101), !dbg !23117, !noalias !23051 ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0, !dbg !23117
  %i.l = extractvalue { ptr, i64 } %i.j, 1, !dbg !23117 ; 2 uses
    #dbg_value(ptr poison, !5797, !DIExpression(), !22987)
    #dbg_value(ptr %3, !5831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22988)
    #dbg_value(i64 %4, !5831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22988)
    #dbg_value(ptr %i.k, !5832, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22988)
    #dbg_value(i64 %i.l, !5832, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22988)
    #dbg_value(ptr poison, !5801, !DIExpression(), !22989)
    #dbg_value(ptr %3, !5822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22990)
    #dbg_value(ptr %3, !5811, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22991)
    #dbg_value(i64 %4, !5822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22990)
    #dbg_value(i64 %4, !5811, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22991)
    #dbg_value(ptr %i.k, !5823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22990)
    #dbg_value(ptr %i.k, !5812, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22991)
    #dbg_value(i64 %i.l, !5823, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22990)
    #dbg_value(i64 %i.l, !5812, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22991)
    #dbg_value(i64 %4, !5814, !DIExpression(), !22992)
  %i.m = sub i64 %4, %i.l, !dbg !23118
    #dbg_value(i64 %i.m, !5813, !DIExpression(), !22993)
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.l), !dbg !23119
    #dbg_value(i64 %spec.store.select.i.i, !5814, !DIExpression(), !22992)
    #dbg_value(ptr %3, !5815, !DIExpression(), !22994)
    #dbg_value(ptr %i.k, !5816, !DIExpression(), !22995)
  %i.n = tail call i32 @memcmp(ptr nonnull readonly %3, ptr nonnull readonly %i.k, i64 %spec.store.select.i.i), !dbg !23120, !alias.scope !23064 ; 2 uses
  %i.o = sext i32 %i.n to i64, !dbg !23120
    #dbg_value(i64 %i.o, !5817, !DIExpression(), !22999)
  %i.p = icmp eq i32 %i.n, 0, !dbg !23121
  %spec.store.select1.i.i = select i1 %i.p, i64 %i.m, i64 %i.o, !dbg !23121
    #dbg_value(i64 %spec.store.select1.i.i, !5817, !DIExpression(), !22999)
    #dbg_value(ptr undef, !5797, !DIExpression(), !22987)
  %i.q = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select1.i.i, i64 0), !dbg !23122
  switch i8 %i.q, label %bb.d [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ], !dbg !23123

bb.d:                                             ; preds = %.lr.ph
  unreachable, !dbg !23124

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %.sroa.8.0.i100, %.lr.ph ] ; 3 uses
    #dbg_value(i64 %.sroa.3.0, !23019, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23066)
    #dbg_value(i64 %.sroa.3.0, !23067, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23072)
    #dbg_value(i64 %.sroa.3.0, !23073, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23076)
    #dbg_value(ptr %.sroa.0.0, !23019, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23066)
    #dbg_value(ptr %.sroa.0.0, !23067, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23072)
    #dbg_value(ptr %.sroa.0.0, !23073, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23076)
    #dbg_value(i64 %.sroa.4.0.i.ph, !23019, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23066)
    #dbg_value(i64 %.sroa.4.0.i.ph, !23067, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23072)
  %i.r = icmp eq i64 %.sroa.3.0, 0, !dbg !23125
  br i1 %i.r, label %.loopexit, label %bb.e, !dbg !23125

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph
  %.sink = phi i64 [ %.sroa.3.0, %.lr.ph ], [ 0, %._crit_edge ]
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i100, %.lr.ph ], [ %.sroa.4.0.i.ph, %._crit_edge ]
  %storemerge = phi i64 [ 0, %.lr.ph ], [ 1, %._crit_edge ], !dbg !23023
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23023
  store ptr %.sroa.0.0, ptr %i.s, align 8, !dbg !23023
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23023
  store i64 %.sink, ptr %.sroa.429.0..sroa_idx, align 8, !dbg !23023
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23023
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.530.0..sroa_idx, align 8, !dbg !23023
  store i64 %storemerge, ptr %0, align 8, !dbg !23023
  ret void, !dbg !23126

bb.e:                                             ; preds = %._crit_edge
    #dbg_value(i64 %.sroa.3.0, !23021, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23077)
    #dbg_value(i64 %.sroa.3.0, !23078, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23083)
    #dbg_value(ptr %.sroa.0.0, !23021, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23077)
    #dbg_value(ptr %.sroa.0.0, !23078, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23083)
    #dbg_value(i64 %.sroa.4.0.i.ph, !23021, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23077)
    #dbg_value(i64 %.sroa.4.0.i.ph, !23078, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23083)
    #dbg_value(i64 %.sroa.4.0.i.ph, !23084, !DIExpression(), !23088)
    #dbg_value(i64 %.sroa.4.0.i.ph, !23089, !DIExpression(), !23093)
    #dbg_value(ptr %.sroa.0.0, !23079, !DIExpression(), !23094)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 544, !dbg !23127
    #dbg_value(ptr %i.t, !23085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23088)
    #dbg_value(ptr %i.t, !23090, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23093)
    #dbg_value(i64 12, !23085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23088)
    #dbg_value(i64 12, !23090, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23093)
  %i.u = icmp samesign ult i64 %.sroa.4.0.i.ph, 12, !dbg !23128
  tail call void @llvm.assume(i1 %i.u), !dbg !23129
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.4.0.i.ph, !dbg !23130
    #dbg_value(ptr %i.v, !23095, !DIExpression(), !23098)
    #dbg_value(ptr %i.v, !23099, !DIExpression(), !23102)
    #dbg_value(ptr %i.v, !23103, !DIExpression(), !23106)
  %i.w = load ptr, ptr %i.v, align 8, !dbg !23131, !nonnull !1505, !noundef !1505
    #dbg_value(ptr %i.w, !23080, !DIExpression(), !23107)
  %i.x = add i64 %.sroa.3.0, -1, !dbg !23132
    #dbg_value(i64 %i.x, !23016, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23023)
    #dbg_value(ptr %i.w, !23016, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23023)
  br label %bb.b, !dbg !23108
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeB1y_ECs5yXxDE1DkoT_4tera(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !23142 {
bb.a:
    #dbg_value(ptr %1, !23246, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23258)
    #dbg_value(i64 %2, !23246, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23258)
    #dbg_value(ptr %3, !23247, !DIExpression(), !23258)
    #dbg_value(ptr %3, !23259, !DIExpression(), !23279)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val69 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val70 = load i64, ptr %i.b, align 8           ; 2 uses
  br label %bb.b, !dbg !23377

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.y, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.x, %bb.e ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0, !23246, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23258)
    #dbg_value(i64 %.sroa.3.0, !23246, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23258)
    #dbg_value(ptr %.sroa.0.0, !23274, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23279)
    #dbg_value(i64 %.sroa.3.0, !23274, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23279)
    #dbg_value(ptr poison, !5860, !DIExpression(), !23159)
    #dbg_value(ptr poison, !5900, !DIExpression(), !23160)
    #dbg_value(ptr poison, !23284, !DIExpression(), !23161)
    #dbg_value(ptr poison, !23285, !DIExpression(), !23161)
    #dbg_value(i64 0, !23286, !DIExpression(), !23161)
    #dbg_value(ptr %.sroa.0.0, !23287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23162)
    #dbg_value(i64 poison, !23287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23162)
    #dbg_value(ptr poison, !23299, !DIExpression(), !23166)
    #dbg_value(ptr %.sroa.0.0, !23303, !DIExpression(), !23167)
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8, !dbg !23378 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 274, !dbg !23379
  %i.e = load i16, ptr %i.d, align 2, !dbg !23379, !noundef !1505 ; 2 uses
    #dbg_value(i16 %i.e, !23305, !DIExpression(), !23170)
  %i.f = zext i16 %i.e to i64, !dbg !23380        ; 3 uses
    #dbg_value(ptr %i.c, !23288, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23171)
    #dbg_value(i64 %i.f, !23288, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23171)
    #dbg_value(i64 %i.f, !23307, !DIExpression(), !23179)
    #dbg_value(i64 %i.f, !23314, !DIExpression(), !23182)
    #dbg_value(ptr %i.c, !23312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23183)
    #dbg_value(ptr %i.c, !23308, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23184)
    #dbg_value(i64 %i.f, !23312, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23183)
    #dbg_value(i64 %i.f, !23308, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23184)
    #dbg_value(ptr %i.c, !23309, !DIExpression(), !23185)
    #dbg_value(ptr %i.c, !23315, !DIExpression(), !23182)
  %.idx = mul nuw nsw i64 %i.f, 24, !dbg !23381
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx, !dbg !23381
    #dbg_value(ptr %i.c, !23289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23186)
    #dbg_value(ptr %i.g, !23289, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23186)
    #dbg_value(i64 0, !23289, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23186)
    #dbg_value(ptr undef, !5900, !DIExpression(), !23160)
    #dbg_value(ptr undef, !5860, !DIExpression(), !23159)
    #dbg_value(i64 1, !5919, !DIExpression(), !23188)
    #dbg_value(ptr %i.c, !5876, !DIExpression(), !23189)
    #dbg_value(ptr %i.c, !5923, !DIExpression(), !23188)
    #dbg_value(ptr %i.g, !5877, !DIExpression(), !23190)
    #dbg_value(ptr poison, !5926, !DIExpression(), !23192)
    #dbg_value(ptr poison, !5929, !DIExpression(), !23193)
  %i.h = icmp eq i16 %i.e, 0, !dbg !23382
  br i1 %i.h, label %._crit_edge, label %.lr.ph.preheader, !dbg !23383

.lr.ph.preheader:                                 ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val69) ]
  br label %.lr.ph, !dbg !23384

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i102, i64 24, !dbg !23385 ; 2 uses
    #dbg_value(ptr %i.i, !23289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23186)
  %i.j = add nuw nsw i64 %.sroa.8.0.i101, 1, !dbg !23386
    #dbg_value(i64 %i.j, !23289, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23186)
    #dbg_value(ptr %i.i, !23289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23186)
    #dbg_value(i64 %i.j, !23289, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23186)
    #dbg_value(ptr undef, !5900, !DIExpression(), !23160)
    #dbg_value(ptr undef, !5860, !DIExpression(), !23159)
    #dbg_value(i64 1, !5919, !DIExpression(), !23188)
    #dbg_value(ptr %i.i, !5876, !DIExpression(), !23189)
    #dbg_value(ptr %i.i, !5923, !DIExpression(), !23188)
    #dbg_value(ptr %i.g, !5877, !DIExpression(), !23190)
    #dbg_value(ptr poison, !5926, !DIExpression(), !23192)
    #dbg_value(ptr poison, !5929, !DIExpression(), !23193)
  %i.k = icmp eq ptr %i.i, %i.g, !dbg !23382
  br i1 %i.k, label %._crit_edge, label %.lr.ph, !dbg !23383

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.0.01.i102 = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %.sroa.8.0.i101 = phi i64 [ %i.j, %bb.c ], [ 0, %.lr.ph.preheader ] ; 3 uses
    #dbg_value(ptr %.sroa.0.01.i102, !23289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23186)
    #dbg_value(i64 %.sroa.8.0.i101, !23289, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23186)
    #dbg_value(ptr %.sroa.0.01.i102, !23289, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23186)
    #dbg_value(ptr %.sroa.0.01.i102, !5901, !DIExpression(), !23194)
    #dbg_value(i64 %.sroa.8.0.i101, !5904, !DIExpression(), !23195)
    #dbg_value(i64 %.sroa.8.0.i101, !23289, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !23186)
    #dbg_value(i64 %.sroa.8.0.i101, !23290, !DIExpression(), !23196)
    #dbg_value(ptr %.sroa.0.01.i102, !23291, !DIExpression(), !23196)
  %i.l = getelementptr i8, ptr %.sroa.0.01.i102, i64 8, !dbg !23387
  %.val35.i = load ptr, ptr %i.l, align 8, !dbg !23387, !nonnull !1505, !noundef !1505
  %i.m = getelementptr i8, ptr %.sroa.0.01.i102, i64 16, !dbg !23387
  %.val36.i = load i64, ptr %i.m, align 8, !dbg !23387, !noundef !1505 ; 2 uses
    #dbg_value(ptr poison, !5932, !DIExpression(), !23198)
    #dbg_value(ptr poison, !5936, !DIExpression(), !23198)
    #dbg_value(ptr poison, !5940, !DIExpression(), !23200)
    #dbg_value(ptr poison, !5944, !DIExpression(), !23200)
    #dbg_value(ptr %.val69, !5946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23202)
    #dbg_value(i64 %.val70, !5946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23202)
    #dbg_value(ptr %.val35.i, !5950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23202)
    #dbg_value(i64 %.val36.i, !5950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23202)
    #dbg_value(ptr poison, !5952, !DIExpression(), !23205)
    #dbg_value(ptr %.val69, !5955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23206)
    #dbg_value(i64 %.val70, !5955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23206)
    #dbg_value(ptr %.val35.i, !5956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23206)
    #dbg_value(i64 %.val36.i, !5956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23206)
    #dbg_value(ptr poison, !5953, !DIExpression(), !23207)
    #dbg_value(i64 %.val70, !5958, !DIExpression(), !23208)
  %i.n = sub nsw i64 %.val70, %.val36.i, !dbg !23388
    #dbg_value(i64 %i.n, !5957, !DIExpression(), !23209)
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val70, i64 range(i64 0, -9223372036854775808) %.val36.i), !dbg !23389
    #dbg_value(i64 %spec.store.select.i.i.i.i, !5958, !DIExpression(), !23208)
    #dbg_value(ptr %.val69, !5959, !DIExpression(), !23210)
    #dbg_value(ptr %.val35.i, !5960, !DIExpression(), !23211)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.val69, ptr nonnull readonly %.val35.i, i64 %spec.store.select.i.i.i.i), !dbg !23390, !alias.scope !23317 ; 2 uses
  %i.p = sext i32 %i.o to i64, !dbg !23390
    #dbg_value(i64 %i.p, !5961, !DIExpression(), !23215)
  %i.q = icmp eq i32 %i.o, 0, !dbg !23391
  %spec.store.select1.i.i.i.i = select i1 %i.q, i64 %i.n, i64 %i.p, !dbg !23391
    #dbg_value(i64 %spec.store.select1.i.i.i.i, !5961, !DIExpression(), !23215)
    #dbg_value(ptr undef, !5952, !DIExpression(), !23205)
  %i.r = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select1.i.i.i.i, i64 0), !dbg !23392
  switch i8 %i.r, label %bb.d [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ], !dbg !23384

bb.d:                                             ; preds = %.lr.ph
  unreachable, !dbg !23393

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.f, %bb.b ], [ %i.f, %bb.c ], [ %.sroa.8.0.i101, %.lr.ph ] ; 3 uses
    #dbg_value(i64 %.sroa.3.0, !23249, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23319)
    #dbg_value(i64 %.sroa.3.0, !23320, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23341)
    #dbg_value(i64 %.sroa.3.0, !23342, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23345)
    #dbg_value(ptr %.sroa.0.0, !23249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23319)
    #dbg_value(ptr %.sroa.0.0, !23320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23341)
    #dbg_value(ptr %.sroa.0.0, !23342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23345)
    #dbg_value(i64 %.sroa.4.0.i.ph, !23249, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23319)
    #dbg_value(i64 %.sroa.4.0.i.ph, !23320, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23341)
  %i.s = icmp eq i64 %.sroa.3.0, 0, !dbg !23394
  br i1 %i.s, label %.loopexit, label %bb.e, !dbg !23394

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph
  %.sink = phi i64 [ %.sroa.3.0, %.lr.ph ], [ 0, %._crit_edge ]
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i101, %.lr.ph ], [ %.sroa.4.0.i.ph, %._crit_edge ]
  %storemerge = phi i64 [ 0, %.lr.ph ], [ 1, %._crit_edge ], !dbg !23258
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23258
  store ptr %.sroa.0.0, ptr %i.t, align 8, !dbg !23258
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23258
  store i64 %.sink, ptr %.sroa.429.0..sroa_idx, align 8, !dbg !23258
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23258
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.530.0..sroa_idx, align 8, !dbg !23258
  store i64 %storemerge, ptr %0, align 8, !dbg !23258
  ret void, !dbg !23395

bb.e:                                             ; preds = %._crit_edge
    #dbg_value(i64 %.sroa.3.0, !23251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23346)
    #dbg_value(i64 %.sroa.3.0, !23347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23352)
    #dbg_value(ptr %.sroa.0.0, !23251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23346)
    #dbg_value(ptr %.sroa.0.0, !23347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23352)
    #dbg_value(i64 %.sroa.4.0.i.ph, !23251, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23346)
    #dbg_value(i64 %.sroa.4.0.i.ph, !23347, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23352)
    #dbg_value(i64 %.sroa.4.0.i.ph, !23353, !DIExpression(), !23357)
    #dbg_value(i64 %.sroa.4.0.i.ph, !23358, !DIExpression(), !23362)
    #dbg_value(ptr %.sroa.0.0, !23348, !DIExpression(), !23363)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 280, !dbg !23396
    #dbg_value(ptr %i.u, !23354, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23357)
    #dbg_value(ptr %i.u, !23359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23362)
    #dbg_value(i64 12, !23354, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23357)
    #dbg_value(i64 12, !23359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23362)
  %i.v = icmp samesign ult i64 %.sroa.4.0.i.ph, 12, !dbg !23397
  tail call void @llvm.assume(i1 %i.v), !dbg !23398
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.4.0.i.ph, !dbg !23399
    #dbg_value(ptr %i.w, !23364, !DIExpression(), !23367)
    #dbg_value(ptr %i.w, !23368, !DIExpression(), !23371)
    #dbg_value(ptr %i.w, !23372, !DIExpression(), !23375)
  %i.x = load ptr, ptr %i.w, align 8, !dbg !23400, !nonnull !1505, !noundef !1505
    #dbg_value(ptr %i.x, !23349, !DIExpression(), !23376)
  %i.y = add i64 %.sroa.3.0, -1, !dbg !23401
    #dbg_value(i64 %i.y, !23246, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23258)
    #dbg_value(ptr %i.x, !23246, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23258)
  br label %bb.b, !dbg !23377
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1i_14LeafOrInternalE11search_treeB1y_EB1X_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !23411 {
bb.a:
    #dbg_value(ptr %1, !23518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23530)
    #dbg_value(i64 %2, !23518, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23530)
    #dbg_value(ptr %3, !23519, !DIExpression(), !23530)
    #dbg_value(ptr %3, !23531, !DIExpression(), !23551)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val69 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val70 = load i64, ptr %i.b, align 8           ; 2 uses
  br label %bb.b, !dbg !23655

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.y, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.x, %bb.e ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0, !23518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23530)
    #dbg_value(i64 %.sroa.3.0, !23518, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23530)
    #dbg_value(ptr %.sroa.0.0, !23546, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23551)
    #dbg_value(i64 %.sroa.3.0, !23546, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23551)
    #dbg_value(ptr poison, !5860, !DIExpression(), !23427)
    #dbg_value(ptr poison, !5900, !DIExpression(), !23428)
    #dbg_value(ptr poison, !23556, !DIExpression(), !23429)
    #dbg_value(ptr poison, !23557, !DIExpression(), !23429)
    #dbg_value(i64 0, !23558, !DIExpression(), !23429)
    #dbg_value(ptr %.sroa.0.0, !23559, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23430)
    #dbg_value(i64 poison, !23559, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23430)
    #dbg_value(ptr poison, !23565, !DIExpression(), !23434)
    #dbg_value(ptr %.sroa.0.0, !23566, !DIExpression(), !23435)
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8, !dbg !23656 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 538, !dbg !23657
  %i.e = load i16, ptr %i.d, align 2, !dbg !23657, !noundef !1505 ; 2 uses
    #dbg_value(i16 %i.e, !23568, !DIExpression(), !23438)
  %i.f = zext i16 %i.e to i64, !dbg !23658        ; 3 uses
    #dbg_value(ptr %i.c, !23560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23439)
    #dbg_value(i64 %i.f, !23560, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23439)
    #dbg_value(i64 %i.f, !23570, !DIExpression(), !23447)
    #dbg_value(i64 %i.f, !23577, !DIExpression(), !23450)
    #dbg_value(ptr %i.c, !23575, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23451)
    #dbg_value(ptr %i.c, !23571, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23452)
    #dbg_value(i64 %i.f, !23575, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23451)
    #dbg_value(i64 %i.f, !23571, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23452)
    #dbg_value(ptr %i.c, !23572, !DIExpression(), !23453)
    #dbg_value(ptr %i.c, !23578, !DIExpression(), !23450)
  %.idx = mul nuw nsw i64 %i.f, 24, !dbg !23659
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx, !dbg !23659
    #dbg_value(ptr %i.c, !23561, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23454)
    #dbg_value(ptr %i.g, !23561, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23454)
    #dbg_value(i64 0, !23561, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23454)
    #dbg_value(ptr undef, !5900, !DIExpression(), !23428)
    #dbg_value(ptr undef, !5860, !DIExpression(), !23427)
    #dbg_value(i64 1, !5919, !DIExpression(), !23456)
    #dbg_value(ptr %i.c, !5876, !DIExpression(), !23457)
    #dbg_value(ptr %i.c, !5923, !DIExpression(), !23456)
    #dbg_value(ptr %i.g, !5877, !DIExpression(), !23458)
    #dbg_value(ptr poison, !5926, !DIExpression(), !23460)
    #dbg_value(ptr poison, !5929, !DIExpression(), !23461)
  %i.h = icmp eq i16 %i.e, 0, !dbg !23660
  br i1 %i.h, label %._crit_edge, label %.lr.ph.preheader, !dbg !23661

.lr.ph.preheader:                                 ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val69) ]
  br label %.lr.ph, !dbg !23662

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i102, i64 24, !dbg !23663 ; 2 uses
    #dbg_value(ptr %i.i, !23561, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23454)
  %i.j = add nuw nsw i64 %.sroa.8.0.i101, 1, !dbg !23664
    #dbg_value(i64 %i.j, !23561, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23454)
    #dbg_value(ptr %i.i, !23561, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23454)
    #dbg_value(i64 %i.j, !23561, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23454)
    #dbg_value(ptr undef, !5900, !DIExpression(), !23428)
    #dbg_value(ptr undef, !5860, !DIExpression(), !23427)
    #dbg_value(i64 1, !5919, !DIExpression(), !23456)
    #dbg_value(ptr %i.i, !5876, !DIExpression(), !23457)
    #dbg_value(ptr %i.i, !5923, !DIExpression(), !23456)
    #dbg_value(ptr %i.g, !5877, !DIExpression(), !23458)
    #dbg_value(ptr poison, !5926, !DIExpression(), !23460)
    #dbg_value(ptr poison, !5929, !DIExpression(), !23461)
  %i.k = icmp eq ptr %i.i, %i.g, !dbg !23660
  br i1 %i.k, label %._crit_edge, label %.lr.ph, !dbg !23661

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.0.01.i102 = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %.sroa.8.0.i101 = phi i64 [ %i.j, %bb.c ], [ 0, %.lr.ph.preheader ] ; 3 uses
    #dbg_value(ptr %.sroa.0.01.i102, !23561, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23454)
    #dbg_value(i64 %.sroa.8.0.i101, !23561, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23454)
    #dbg_value(ptr %.sroa.0.01.i102, !23561, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23454)
    #dbg_value(ptr %.sroa.0.01.i102, !5901, !DIExpression(), !23462)
    #dbg_value(i64 %.sroa.8.0.i101, !5904, !DIExpression(), !23463)
    #dbg_value(i64 %.sroa.8.0.i101, !23561, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !23454)
    #dbg_value(i64 %.sroa.8.0.i101, !23562, !DIExpression(), !23464)
    #dbg_value(ptr %.sroa.0.01.i102, !23563, !DIExpression(), !23464)
  %i.l = getelementptr i8, ptr %.sroa.0.01.i102, i64 8, !dbg !23665
  %.val35.i = load ptr, ptr %i.l, align 8, !dbg !23665, !nonnull !1505, !noundef !1505
  %i.m = getelementptr i8, ptr %.sroa.0.01.i102, i64 16, !dbg !23665
  %.val36.i = load i64, ptr %i.m, align 8, !dbg !23665, !noundef !1505 ; 2 uses
    #dbg_value(ptr poison, !5932, !DIExpression(), !23466)
    #dbg_value(ptr poison, !5936, !DIExpression(), !23466)
    #dbg_value(ptr poison, !5940, !DIExpression(), !23468)
    #dbg_value(ptr poison, !5944, !DIExpression(), !23468)
    #dbg_value(ptr %.val69, !5946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23470)
    #dbg_value(i64 %.val70, !5946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23470)
    #dbg_value(ptr %.val35.i, !5950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23470)
    #dbg_value(i64 %.val36.i, !5950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23470)
    #dbg_value(ptr poison, !5952, !DIExpression(), !23473)
    #dbg_value(ptr %.val69, !5955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23474)
    #dbg_value(i64 %.val70, !5955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23474)
    #dbg_value(ptr %.val35.i, !5956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23474)
    #dbg_value(i64 %.val36.i, !5956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23474)
    #dbg_value(ptr poison, !5953, !DIExpression(), !23475)
    #dbg_value(i64 %.val70, !5958, !DIExpression(), !23476)
  %i.n = sub nsw i64 %.val70, %.val36.i, !dbg !23666
    #dbg_value(i64 %i.n, !5957, !DIExpression(), !23477)
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val70, i64 range(i64 0, -9223372036854775808) %.val36.i), !dbg !23667
    #dbg_value(i64 %spec.store.select.i.i.i.i, !5958, !DIExpression(), !23476)
    #dbg_value(ptr %.val69, !5959, !DIExpression(), !23478)
    #dbg_value(ptr %.val35.i, !5960, !DIExpression(), !23479)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.val69, ptr nonnull readonly %.val35.i, i64 %spec.store.select.i.i.i.i), !dbg !23668, !alias.scope !23580 ; 2 uses
  %i.p = sext i32 %i.o to i64, !dbg !23668
    #dbg_value(i64 %i.p, !5961, !DIExpression(), !23483)
  %i.q = icmp eq i32 %i.o, 0, !dbg !23669
  %spec.store.select1.i.i.i.i = select i1 %i.q, i64 %i.n, i64 %i.p, !dbg !23669
    #dbg_value(i64 %spec.store.select1.i.i.i.i, !5961, !DIExpression(), !23483)
    #dbg_value(ptr undef, !5952, !DIExpression(), !23473)
  %i.r = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select1.i.i.i.i, i64 0), !dbg !23670
  switch i8 %i.r, label %bb.d [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ], !dbg !23662

bb.d:                                             ; preds = %.lr.ph
  unreachable, !dbg !23671

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.f, %bb.b ], [ %i.f, %bb.c ], [ %.sroa.8.0.i101, %.lr.ph ] ; 3 uses
    #dbg_value(i64 %.sroa.3.0, !23521, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23582)
    #dbg_value(i64 %.sroa.3.0, !23583, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23604)
    #dbg_value(i64 %.sroa.3.0, !23605, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23623)
    #dbg_value(ptr %.sroa.0.0, !23521, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23582)
    #dbg_value(ptr %.sroa.0.0, !23583, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23604)
    #dbg_value(ptr %.sroa.0.0, !23605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23623)
    #dbg_value(i64 %.sroa.4.0.i.ph, !23521, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23582)
    #dbg_value(i64 %.sroa.4.0.i.ph, !23583, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23604)
  %i.s = icmp eq i64 %.sroa.3.0, 0, !dbg !23672
  br i1 %i.s, label %.loopexit, label %bb.e, !dbg !23672

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph
  %.sink = phi i64 [ %.sroa.3.0, %.lr.ph ], [ 0, %._crit_edge ]
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i101, %.lr.ph ], [ %.sroa.4.0.i.ph, %._crit_edge ]
  %storemerge = phi i64 [ 0, %.lr.ph ], [ 1, %._crit_edge ], !dbg !23530
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23530
  store ptr %.sroa.0.0, ptr %i.t, align 8, !dbg !23530
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23530
  store i64 %.sink, ptr %.sroa.429.0..sroa_idx, align 8, !dbg !23530
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23530
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.530.0..sroa_idx, align 8, !dbg !23530
  store i64 %storemerge, ptr %0, align 8, !dbg !23530
  ret void, !dbg !23673

bb.e:                                             ; preds = %._crit_edge
    #dbg_value(i64 %.sroa.3.0, !23523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23624)
    #dbg_value(i64 %.sroa.3.0, !23625, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23630)
    #dbg_value(ptr %.sroa.0.0, !23523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23624)
    #dbg_value(ptr %.sroa.0.0, !23625, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23630)
    #dbg_value(i64 %.sroa.4.0.i.ph, !23523, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23624)
    #dbg_value(i64 %.sroa.4.0.i.ph, !23625, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23630)
    #dbg_value(i64 %.sroa.4.0.i.ph, !23631, !DIExpression(), !23635)
    #dbg_value(i64 %.sroa.4.0.i.ph, !23636, !DIExpression(), !23640)
    #dbg_value(ptr %.sroa.0.0, !23626, !DIExpression(), !23641)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 544, !dbg !23674
    #dbg_value(ptr %i.u, !23632, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23635)
    #dbg_value(ptr %i.u, !23637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23640)
    #dbg_value(i64 12, !23632, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23635)
    #dbg_value(i64 12, !23637, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23640)
  %i.v = icmp samesign ult i64 %.sroa.4.0.i.ph, 12, !dbg !23675
  tail call void @llvm.assume(i1 %i.v), !dbg !23676
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.4.0.i.ph, !dbg !23677
    #dbg_value(ptr %i.w, !23642, !DIExpression(), !23645)
    #dbg_value(ptr %i.w, !23646, !DIExpression(), !23649)
    #dbg_value(ptr %i.w, !23650, !DIExpression(), !23653)
  %i.x = load ptr, ptr %i.w, align 8, !dbg !23678, !nonnull !1505, !noundef !1505
    #dbg_value(ptr %i.x, !23627, !DIExpression(), !23654)
  %i.y = add i64 %.sroa.3.0, -1, !dbg !23679
    #dbg_value(i64 %i.y, !23518, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23530)
    #dbg_value(ptr %i.x, !23518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23530)
  br label %bb.b, !dbg !23655
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionNtB1i_14LeafOrInternalE11search_treeB1y_EB1Z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !23689 {
bb.a:
    #dbg_value(ptr %1, !23796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23808)
    #dbg_value(i64 %2, !23796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23808)
    #dbg_value(ptr %3, !23797, !DIExpression(), !23808)
    #dbg_value(ptr %3, !23809, !DIExpression(), !23829)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val69 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val70 = load i64, ptr %i.b, align 8           ; 2 uses
  br label %bb.b, !dbg !23933

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.y, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.x, %bb.e ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0, !23796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23808)
    #dbg_value(i64 %.sroa.3.0, !23796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23808)
    #dbg_value(ptr %.sroa.0.0, !23824, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23829)
    #dbg_value(i64 %.sroa.3.0, !23824, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23829)
    #dbg_value(ptr poison, !5860, !DIExpression(), !23705)
    #dbg_value(ptr poison, !5900, !DIExpression(), !23706)
    #dbg_value(ptr poison, !23834, !DIExpression(), !23707)
    #dbg_value(ptr poison, !23835, !DIExpression(), !23707)
    #dbg_value(i64 0, !23836, !DIExpression(), !23707)
    #dbg_value(ptr %.sroa.0.0, !23837, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23708)
    #dbg_value(i64 poison, !23837, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23708)
    #dbg_value(ptr poison, !23843, !DIExpression(), !23712)
    #dbg_value(ptr %.sroa.0.0, !23844, !DIExpression(), !23713)
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 712, !dbg !23934 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 978, !dbg !23935
  %i.e = load i16, ptr %i.d, align 2, !dbg !23935, !noundef !1505 ; 2 uses
    #dbg_value(i16 %i.e, !23846, !DIExpression(), !23716)
  %i.f = zext i16 %i.e to i64, !dbg !23936        ; 3 uses
    #dbg_value(ptr %i.c, !23838, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23717)
    #dbg_value(i64 %i.f, !23838, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23717)
    #dbg_value(i64 %i.f, !23848, !DIExpression(), !23725)
    #dbg_value(i64 %i.f, !23855, !DIExpression(), !23728)
    #dbg_value(ptr %i.c, !23853, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23729)
    #dbg_value(ptr %i.c, !23849, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23730)
    #dbg_value(i64 %i.f, !23853, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23729)
    #dbg_value(i64 %i.f, !23849, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23730)
    #dbg_value(ptr %i.c, !23850, !DIExpression(), !23731)
    #dbg_value(ptr %i.c, !23856, !DIExpression(), !23728)
  %.idx = mul nuw nsw i64 %i.f, 24, !dbg !23937
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx, !dbg !23937
    #dbg_value(ptr %i.c, !23839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23732)
    #dbg_value(ptr %i.g, !23839, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23732)
    #dbg_value(i64 0, !23839, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23732)
    #dbg_value(ptr undef, !5900, !DIExpression(), !23706)
    #dbg_value(ptr undef, !5860, !DIExpression(), !23705)
    #dbg_value(i64 1, !5919, !DIExpression(), !23734)
    #dbg_value(ptr %i.c, !5876, !DIExpression(), !23735)
    #dbg_value(ptr %i.c, !5923, !DIExpression(), !23734)
    #dbg_value(ptr %i.g, !5877, !DIExpression(), !23736)
    #dbg_value(ptr poison, !5926, !DIExpression(), !23738)
    #dbg_value(ptr poison, !5929, !DIExpression(), !23739)
  %i.h = icmp eq i16 %i.e, 0, !dbg !23938
  br i1 %i.h, label %._crit_edge, label %.lr.ph.preheader, !dbg !23939

.lr.ph.preheader:                                 ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val69) ]
  br label %.lr.ph, !dbg !23940

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i102, i64 24, !dbg !23941 ; 2 uses
    #dbg_value(ptr %i.i, !23839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23732)
  %i.j = add nuw nsw i64 %.sroa.8.0.i101, 1, !dbg !23942
    #dbg_value(i64 %i.j, !23839, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23732)
    #dbg_value(ptr %i.i, !23839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23732)
    #dbg_value(i64 %i.j, !23839, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23732)
    #dbg_value(ptr undef, !5900, !DIExpression(), !23706)
    #dbg_value(ptr undef, !5860, !DIExpression(), !23705)
    #dbg_value(i64 1, !5919, !DIExpression(), !23734)
    #dbg_value(ptr %i.i, !5876, !DIExpression(), !23735)
    #dbg_value(ptr %i.i, !5923, !DIExpression(), !23734)
    #dbg_value(ptr %i.g, !5877, !DIExpression(), !23736)
    #dbg_value(ptr poison, !5926, !DIExpression(), !23738)
    #dbg_value(ptr poison, !5929, !DIExpression(), !23739)
  %i.k = icmp eq ptr %i.i, %i.g, !dbg !23938
  br i1 %i.k, label %._crit_edge, label %.lr.ph, !dbg !23939

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.0.01.i102 = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %.sroa.8.0.i101 = phi i64 [ %i.j, %bb.c ], [ 0, %.lr.ph.preheader ] ; 3 uses
    #dbg_value(ptr %.sroa.0.01.i102, !23839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23732)
    #dbg_value(i64 %.sroa.8.0.i101, !23839, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23732)
    #dbg_value(ptr %.sroa.0.01.i102, !23839, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23732)
    #dbg_value(ptr %.sroa.0.01.i102, !5901, !DIExpression(), !23740)
    #dbg_value(i64 %.sroa.8.0.i101, !5904, !DIExpression(), !23741)
    #dbg_value(i64 %.sroa.8.0.i101, !23839, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !23732)
    #dbg_value(i64 %.sroa.8.0.i101, !23840, !DIExpression(), !23742)
    #dbg_value(ptr %.sroa.0.01.i102, !23841, !DIExpression(), !23742)
  %i.l = getelementptr i8, ptr %.sroa.0.01.i102, i64 8, !dbg !23943
  %.val35.i = load ptr, ptr %i.l, align 8, !dbg !23943, !nonnull !1505, !noundef !1505
  %i.m = getelementptr i8, ptr %.sroa.0.01.i102, i64 16, !dbg !23943
  %.val36.i = load i64, ptr %i.m, align 8, !dbg !23943, !noundef !1505 ; 2 uses
    #dbg_value(ptr poison, !5932, !DIExpression(), !23744)
    #dbg_value(ptr poison, !5936, !DIExpression(), !23744)
    #dbg_value(ptr poison, !5940, !DIExpression(), !23746)
    #dbg_value(ptr poison, !5944, !DIExpression(), !23746)
    #dbg_value(ptr %.val69, !5946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23748)
    #dbg_value(i64 %.val70, !5946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23748)
    #dbg_value(ptr %.val35.i, !5950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23748)
    #dbg_value(i64 %.val36.i, !5950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23748)
    #dbg_value(ptr poison, !5952, !DIExpression(), !23751)
    #dbg_value(ptr %.val69, !5955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23752)
    #dbg_value(i64 %.val70, !5955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23752)
    #dbg_value(ptr %.val35.i, !5956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23752)
    #dbg_value(i64 %.val36.i, !5956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23752)
    #dbg_value(ptr poison, !5953, !DIExpression(), !23753)
    #dbg_value(i64 %.val70, !5958, !DIExpression(), !23754)
  %i.n = sub nsw i64 %.val70, %.val36.i, !dbg !23944
    #dbg_value(i64 %i.n, !5957, !DIExpression(), !23755)
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val70, i64 range(i64 0, -9223372036854775808) %.val36.i), !dbg !23945
    #dbg_value(i64 %spec.store.select.i.i.i.i, !5958, !DIExpression(), !23754)
    #dbg_value(ptr %.val69, !5959, !DIExpression(), !23756)
    #dbg_value(ptr %.val35.i, !5960, !DIExpression(), !23757)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.val69, ptr nonnull readonly %.val35.i, i64 %spec.store.select.i.i.i.i), !dbg !23946, !alias.scope !23858 ; 2 uses
  %i.p = sext i32 %i.o to i64, !dbg !23946
    #dbg_value(i64 %i.p, !5961, !DIExpression(), !23761)
  %i.q = icmp eq i32 %i.o, 0, !dbg !23947
  %spec.store.select1.i.i.i.i = select i1 %i.q, i64 %i.n, i64 %i.p, !dbg !23947
    #dbg_value(i64 %spec.store.select1.i.i.i.i, !5961, !DIExpression(), !23761)
    #dbg_value(ptr undef, !5952, !DIExpression(), !23751)
  %i.r = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select1.i.i.i.i, i64 0), !dbg !23948
  switch i8 %i.r, label %bb.d [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ], !dbg !23940

bb.d:                                             ; preds = %.lr.ph
  unreachable, !dbg !23949

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.f, %bb.b ], [ %i.f, %bb.c ], [ %.sroa.8.0.i101, %.lr.ph ] ; 3 uses
    #dbg_value(i64 %.sroa.3.0, !23799, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23860)
    #dbg_value(i64 %.sroa.3.0, !23861, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23882)
    #dbg_value(i64 %.sroa.3.0, !23883, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23901)
    #dbg_value(ptr %.sroa.0.0, !23799, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23860)
    #dbg_value(ptr %.sroa.0.0, !23861, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23882)
    #dbg_value(ptr %.sroa.0.0, !23883, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23901)
    #dbg_value(i64 %.sroa.4.0.i.ph, !23799, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23860)
    #dbg_value(i64 %.sroa.4.0.i.ph, !23861, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23882)
  %i.s = icmp eq i64 %.sroa.3.0, 0, !dbg !23950
  br i1 %i.s, label %.loopexit, label %bb.e, !dbg !23950

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph
  %.sink = phi i64 [ %.sroa.3.0, %.lr.ph ], [ 0, %._crit_edge ]
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i101, %.lr.ph ], [ %.sroa.4.0.i.ph, %._crit_edge ]
  %storemerge = phi i64 [ 0, %.lr.ph ], [ 1, %._crit_edge ], !dbg !23808
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23808
  store ptr %.sroa.0.0, ptr %i.t, align 8, !dbg !23808
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23808
  store i64 %.sink, ptr %.sroa.429.0..sroa_idx, align 8, !dbg !23808
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23808
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.530.0..sroa_idx, align 8, !dbg !23808
  store i64 %storemerge, ptr %0, align 8, !dbg !23808
  ret void, !dbg !23951

bb.e:                                             ; preds = %._crit_edge
    #dbg_value(i64 %.sroa.3.0, !23801, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23902)
    #dbg_value(i64 %.sroa.3.0, !23903, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23908)
    #dbg_value(ptr %.sroa.0.0, !23801, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23902)
    #dbg_value(ptr %.sroa.0.0, !23903, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23908)
    #dbg_value(i64 %.sroa.4.0.i.ph, !23801, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23902)
    #dbg_value(i64 %.sroa.4.0.i.ph, !23903, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23908)
    #dbg_value(i64 %.sroa.4.0.i.ph, !23909, !DIExpression(), !23913)
    #dbg_value(i64 %.sroa.4.0.i.ph, !23914, !DIExpression(), !23918)
    #dbg_value(ptr %.sroa.0.0, !23904, !DIExpression(), !23919)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 984, !dbg !23952
    #dbg_value(ptr %i.u, !23910, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23913)
    #dbg_value(ptr %i.u, !23915, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23918)
    #dbg_value(i64 12, !23910, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23913)
    #dbg_value(i64 12, !23915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23918)
  %i.v = icmp samesign ult i64 %.sroa.4.0.i.ph, 12, !dbg !23953
  tail call void @llvm.assume(i1 %i.v), !dbg !23954
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.4.0.i.ph, !dbg !23955
    #dbg_value(ptr %i.w, !23920, !DIExpression(), !23923)
    #dbg_value(ptr %i.w, !23924, !DIExpression(), !23927)
    #dbg_value(ptr %i.w, !23928, !DIExpression(), !23931)
  %i.x = load ptr, ptr %i.w, align 8, !dbg !23956, !nonnull !1505, !noundef !1505
    #dbg_value(ptr %i.x, !23905, !DIExpression(), !23932)
  %i.y = add i64 %.sroa.3.0, -1, !dbg !23957
    #dbg_value(i64 %i.y, !23796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23808)
    #dbg_value(ptr %i.x, !23796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23808)
  br label %bb.b, !dbg !23933
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentNtB1i_14LeafOrInternalE11search_treeB1y_EB1Z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !23967 {
bb.a:
    #dbg_value(ptr %1, !24074, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24086)
    #dbg_value(i64 %2, !24074, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24086)
    #dbg_value(ptr %3, !24075, !DIExpression(), !24086)
    #dbg_value(ptr %3, !24087, !DIExpression(), !24107)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val69 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val70 = load i64, ptr %i.b, align 8           ; 2 uses
  br label %bb.b, !dbg !24211

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.y, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.x, %bb.e ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0, !24074, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24086)
    #dbg_value(i64 %.sroa.3.0, !24074, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24086)
    #dbg_value(ptr %.sroa.0.0, !24102, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24107)
    #dbg_value(i64 %.sroa.3.0, !24102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24107)
    #dbg_value(ptr poison, !5860, !DIExpression(), !23983)
    #dbg_value(ptr poison, !5900, !DIExpression(), !23984)
    #dbg_value(ptr poison, !24112, !DIExpression(), !23985)
    #dbg_value(ptr poison, !24113, !DIExpression(), !23985)
    #dbg_value(i64 0, !24114, !DIExpression(), !23985)
    #dbg_value(ptr %.sroa.0.0, !24115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23986)
    #dbg_value(i64 poison, !24115, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23986)
    #dbg_value(ptr poison, !24121, !DIExpression(), !23990)
    #dbg_value(ptr %.sroa.0.0, !24122, !DIExpression(), !23991)
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 360, !dbg !24212 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 626, !dbg !24213
  %i.e = load i16, ptr %i.d, align 2, !dbg !24213, !noundef !1505 ; 2 uses
    #dbg_value(i16 %i.e, !24124, !DIExpression(), !23994)
  %i.f = zext i16 %i.e to i64, !dbg !24214        ; 3 uses
    #dbg_value(ptr %i.c, !24116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23995)
    #dbg_value(i64 %i.f, !24116, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23995)
    #dbg_value(i64 %i.f, !24126, !DIExpression(), !24003)
    #dbg_value(i64 %i.f, !24133, !DIExpression(), !24006)
    #dbg_value(ptr %i.c, !24131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24007)
    #dbg_value(ptr %i.c, !24127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24008)
    #dbg_value(i64 %i.f, !24131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24007)
    #dbg_value(i64 %i.f, !24127, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24008)
    #dbg_value(ptr %i.c, !24128, !DIExpression(), !24009)
    #dbg_value(ptr %i.c, !24134, !DIExpression(), !24006)
  %.idx = mul nuw nsw i64 %i.f, 24, !dbg !24215
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx, !dbg !24215
    #dbg_value(ptr %i.c, !24117, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24010)
    #dbg_value(ptr %i.g, !24117, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24010)
    #dbg_value(i64 0, !24117, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24010)
    #dbg_value(ptr undef, !5900, !DIExpression(), !23984)
    #dbg_value(ptr undef, !5860, !DIExpression(), !23983)
    #dbg_value(i64 1, !5919, !DIExpression(), !24012)
    #dbg_value(ptr %i.c, !5876, !DIExpression(), !24013)
    #dbg_value(ptr %i.c, !5923, !DIExpression(), !24012)
    #dbg_value(ptr %i.g, !5877, !DIExpression(), !24014)
    #dbg_value(ptr poison, !5926, !DIExpression(), !24016)
    #dbg_value(ptr poison, !5929, !DIExpression(), !24017)
  %i.h = icmp eq i16 %i.e, 0, !dbg !24216
  br i1 %i.h, label %._crit_edge, label %.lr.ph.preheader, !dbg !24217

.lr.ph.preheader:                                 ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val69) ]
  br label %.lr.ph, !dbg !24218

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i102, i64 24, !dbg !24219 ; 2 uses
    #dbg_value(ptr %i.i, !24117, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24010)
  %i.j = add nuw nsw i64 %.sroa.8.0.i101, 1, !dbg !24220
    #dbg_value(i64 %i.j, !24117, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24010)
    #dbg_value(ptr %i.i, !24117, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24010)
    #dbg_value(i64 %i.j, !24117, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24010)
    #dbg_value(ptr undef, !5900, !DIExpression(), !23984)
    #dbg_value(ptr undef, !5860, !DIExpression(), !23983)
    #dbg_value(i64 1, !5919, !DIExpression(), !24012)
    #dbg_value(ptr %i.i, !5876, !DIExpression(), !24013)
    #dbg_value(ptr %i.i, !5923, !DIExpression(), !24012)
    #dbg_value(ptr %i.g, !5877, !DIExpression(), !24014)
    #dbg_value(ptr poison, !5926, !DIExpression(), !24016)
    #dbg_value(ptr poison, !5929, !DIExpression(), !24017)
  %i.k = icmp eq ptr %i.i, %i.g, !dbg !24216
  br i1 %i.k, label %._crit_edge, label %.lr.ph, !dbg !24217

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.0.01.i102 = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %.sroa.8.0.i101 = phi i64 [ %i.j, %bb.c ], [ 0, %.lr.ph.preheader ] ; 3 uses
    #dbg_value(ptr %.sroa.0.01.i102, !24117, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24010)
    #dbg_value(i64 %.sroa.8.0.i101, !24117, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24010)
    #dbg_value(ptr %.sroa.0.01.i102, !24117, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !24010)
    #dbg_value(ptr %.sroa.0.01.i102, !5901, !DIExpression(), !24018)
    #dbg_value(i64 %.sroa.8.0.i101, !5904, !DIExpression(), !24019)
    #dbg_value(i64 %.sroa.8.0.i101, !24117, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !24010)
    #dbg_value(i64 %.sroa.8.0.i101, !24118, !DIExpression(), !24020)
    #dbg_value(ptr %.sroa.0.01.i102, !24119, !DIExpression(), !24020)
  %i.l = getelementptr i8, ptr %.sroa.0.01.i102, i64 8, !dbg !24221
  %.val35.i = load ptr, ptr %i.l, align 8, !dbg !24221, !nonnull !1505, !noundef !1505
  %i.m = getelementptr i8, ptr %.sroa.0.01.i102, i64 16, !dbg !24221
  %.val36.i = load i64, ptr %i.m, align 8, !dbg !24221, !noundef !1505 ; 2 uses
    #dbg_value(ptr poison, !5932, !DIExpression(), !24022)
    #dbg_value(ptr poison, !5936, !DIExpression(), !24022)
    #dbg_value(ptr poison, !5940, !DIExpression(), !24024)
    #dbg_value(ptr poison, !5944, !DIExpression(), !24024)
    #dbg_value(ptr %.val69, !5946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24026)
    #dbg_value(i64 %.val70, !5946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24026)
    #dbg_value(ptr %.val35.i, !5950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24026)
    #dbg_value(i64 %.val36.i, !5950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24026)
    #dbg_value(ptr poison, !5952, !DIExpression(), !24029)
    #dbg_value(ptr %.val69, !5955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24030)
    #dbg_value(i64 %.val70, !5955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24030)
    #dbg_value(ptr %.val35.i, !5956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24030)
    #dbg_value(i64 %.val36.i, !5956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24030)
    #dbg_value(ptr poison, !5953, !DIExpression(), !24031)
    #dbg_value(i64 %.val70, !5958, !DIExpression(), !24032)
  %i.n = sub nsw i64 %.val70, %.val36.i, !dbg !24222
    #dbg_value(i64 %i.n, !5957, !DIExpression(), !24033)
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val70, i64 range(i64 0, -9223372036854775808) %.val36.i), !dbg !24223
    #dbg_value(i64 %spec.store.select.i.i.i.i, !5958, !DIExpression(), !24032)
    #dbg_value(ptr %.val69, !5959, !DIExpression(), !24034)
    #dbg_value(ptr %.val35.i, !5960, !DIExpression(), !24035)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.val69, ptr nonnull readonly %.val35.i, i64 %spec.store.select.i.i.i.i), !dbg !24224, !alias.scope !24136 ; 2 uses
  %i.p = sext i32 %i.o to i64, !dbg !24224
    #dbg_value(i64 %i.p, !5961, !DIExpression(), !24039)
  %i.q = icmp eq i32 %i.o, 0, !dbg !24225
  %spec.store.select1.i.i.i.i = select i1 %i.q, i64 %i.n, i64 %i.p, !dbg !24225
    #dbg_value(i64 %spec.store.select1.i.i.i.i, !5961, !DIExpression(), !24039)
    #dbg_value(ptr undef, !5952, !DIExpression(), !24029)
  %i.r = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select1.i.i.i.i, i64 0), !dbg !24226
  switch i8 %i.r, label %bb.d [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ], !dbg !24218

bb.d:                                             ; preds = %.lr.ph
  unreachable, !dbg !24227

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.f, %bb.b ], [ %i.f, %bb.c ], [ %.sroa.8.0.i101, %.lr.ph ] ; 3 uses
    #dbg_value(i64 %.sroa.3.0, !24077, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24138)
    #dbg_value(i64 %.sroa.3.0, !24139, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24160)
    #dbg_value(i64 %.sroa.3.0, !24161, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24179)
    #dbg_value(ptr %.sroa.0.0, !24077, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24138)
    #dbg_value(ptr %.sroa.0.0, !24139, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24160)
    #dbg_value(ptr %.sroa.0.0, !24161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24179)
    #dbg_value(i64 %.sroa.4.0.i.ph, !24077, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24138)
    #dbg_value(i64 %.sroa.4.0.i.ph, !24139, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24160)
  %i.s = icmp eq i64 %.sroa.3.0, 0, !dbg !24228
  br i1 %i.s, label %.loopexit, label %bb.e, !dbg !24228

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph
  %.sink = phi i64 [ %.sroa.3.0, %.lr.ph ], [ 0, %._crit_edge ]
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i101, %.lr.ph ], [ %.sroa.4.0.i.ph, %._crit_edge ]
  %storemerge = phi i64 [ 0, %.lr.ph ], [ 1, %._crit_edge ], !dbg !24086
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24086
  store ptr %.sroa.0.0, ptr %i.t, align 8, !dbg !24086
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !24086
  store i64 %.sink, ptr %.sroa.429.0..sroa_idx, align 8, !dbg !24086
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !24086
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.530.0..sroa_idx, align 8, !dbg !24086
  store i64 %storemerge, ptr %0, align 8, !dbg !24086
  ret void, !dbg !24229

bb.e:                                             ; preds = %._crit_edge
    #dbg_value(i64 %.sroa.3.0, !24079, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24180)
    #dbg_value(i64 %.sroa.3.0, !24181, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24186)
    #dbg_value(ptr %.sroa.0.0, !24079, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24180)
    #dbg_value(ptr %.sroa.0.0, !24181, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24186)
    #dbg_value(i64 %.sroa.4.0.i.ph, !24079, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24180)
    #dbg_value(i64 %.sroa.4.0.i.ph, !24181, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24186)
    #dbg_value(i64 %.sroa.4.0.i.ph, !24187, !DIExpression(), !24191)
    #dbg_value(i64 %.sroa.4.0.i.ph, !24192, !DIExpression(), !24196)
    #dbg_value(ptr %.sroa.0.0, !24182, !DIExpression(), !24197)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 632, !dbg !24230
    #dbg_value(ptr %i.u, !24188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24191)
    #dbg_value(ptr %i.u, !24193, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24196)
    #dbg_value(i64 12, !24188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24191)
    #dbg_value(i64 12, !24193, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24196)
  %i.v = icmp samesign ult i64 %.sroa.4.0.i.ph, 12, !dbg !24231
  tail call void @llvm.assume(i1 %i.v), !dbg !24232
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.4.0.i.ph, !dbg !24233
    #dbg_value(ptr %i.w, !24198, !DIExpression(), !24201)
    #dbg_value(ptr %i.w, !24202, !DIExpression(), !24205)
    #dbg_value(ptr %i.w, !24206, !DIExpression(), !24209)
  %i.x = load ptr, ptr %i.w, align 8, !dbg !24234, !nonnull !1505, !noundef !1505
    #dbg_value(ptr %i.x, !24183, !DIExpression(), !24210)
  %i.y = add i64 %.sroa.3.0, -1, !dbg !24235
    #dbg_value(i64 %i.y, !24074, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24086)
    #dbg_value(ptr %i.x, !24074, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24086)
  br label %bb.b, !dbg !24211
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1i_14LeafOrInternalE11search_treeeEB1Z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !24244 {
bb.a:
    #dbg_value(ptr %1, !24347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24354)
    #dbg_value(i64 %2, !24347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24354)
    #dbg_value(ptr %3, !24348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24354)
    #dbg_value(ptr %3, !24355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24375)
    #dbg_value(i64 %4, !24348, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24354)
    #dbg_value(i64 %4, !24355, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24375)
  br label %bb.b, !dbg !24465

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.x, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.w, %bb.e ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0, !24347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24354)
    #dbg_value(i64 %.sroa.3.0, !24347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24354)
    #dbg_value(ptr %.sroa.0.0, !24370, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24375)
    #dbg_value(i64 %.sroa.3.0, !24370, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24375)
    #dbg_value(ptr poison, !5629, !DIExpression(), !24260)
    #dbg_value(ptr poison, !5676, !DIExpression(), !24261)
    #dbg_value(ptr poison, !24380, !DIExpression(), !24262)
    #dbg_value(ptr %3, !24381, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24262)
    #dbg_value(i64 %4, !24381, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24262)
    #dbg_value(i64 0, !24382, !DIExpression(), !24262)
    #dbg_value(ptr %.sroa.0.0, !24383, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24263)
    #dbg_value(i64 poison, !24383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24263)
    #dbg_value(ptr poison, !24389, !DIExpression(), !24267)
    #dbg_value(ptr %.sroa.0.0, !24390, !DIExpression(), !24268)
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8, !dbg !24466 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 538, !dbg !24467
  %i.c = load i16, ptr %i.b, align 2, !dbg !24467, !noalias !24392, !noundef !1505 ; 2 uses
    #dbg_value(i16 %i.c, !24393, !DIExpression(), !24273)
  %i.d = zext i16 %i.c to i64, !dbg !24468        ; 3 uses
    #dbg_value(ptr %i.a, !24384, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24274)
    #dbg_value(i64 %i.d, !24384, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24274)
    #dbg_value(i64 %i.d, !24395, !DIExpression(), !24282)
    #dbg_value(i64 %i.d, !24402, !DIExpression(), !24285)
    #dbg_value(ptr %i.a, !24400, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24286)
    #dbg_value(ptr %i.a, !24396, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24287)
    #dbg_value(i64 %i.d, !24400, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24286)
    #dbg_value(i64 %i.d, !24396, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24287)
    #dbg_value(ptr %i.a, !24397, !DIExpression(), !24288)
    #dbg_value(ptr %i.a, !24403, !DIExpression(), !24285)
  %.idx = mul nuw nsw i64 %i.d, 24, !dbg !24469
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx, !dbg !24469
    #dbg_value(ptr %i.a, !24385, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24289)
    #dbg_value(ptr %i.e, !24385, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24289)
    #dbg_value(i64 0, !24385, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24289)
    #dbg_value(ptr undef, !5676, !DIExpression(), !24261)
    #dbg_value(ptr undef, !5629, !DIExpression(), !24260)
    #dbg_value(i64 1, !5764, !DIExpression(), !24291)
    #dbg_value(ptr %i.a, !5649, !DIExpression(), !24292)
    #dbg_value(ptr %i.a, !5768, !DIExpression(), !24291)
    #dbg_value(ptr %i.e, !5650, !DIExpression(), !24293)
    #dbg_value(ptr poison, !5771, !DIExpression(), !24295)
    #dbg_value(ptr poison, !5775, !DIExpression(), !24296)
  %i.f = icmp eq i16 %i.c, 0, !dbg !24470
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !24471

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i101, i64 24, !dbg !24472 ; 2 uses
    #dbg_value(ptr %i.g, !24385, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24289)
  %i.h = add nuw nsw i64 %.sroa.8.0.i100, 1, !dbg !24473
    #dbg_value(i64 %i.h, !24385, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24289)
    #dbg_value(ptr %i.g, !24385, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24289)
    #dbg_value(i64 %i.h, !24385, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24289)
    #dbg_value(ptr undef, !5676, !DIExpression(), !24261)
    #dbg_value(ptr undef, !5629, !DIExpression(), !24260)
    #dbg_value(i64 1, !5764, !DIExpression(), !24291)
    #dbg_value(ptr %i.g, !5649, !DIExpression(), !24292)
    #dbg_value(ptr %i.g, !5768, !DIExpression(), !24291)
    #dbg_value(ptr %i.e, !5650, !DIExpression(), !24293)
    #dbg_value(ptr poison, !5771, !DIExpression(), !24295)
    #dbg_value(ptr poison, !5775, !DIExpression(), !24296)
  %i.i = icmp eq ptr %i.g, %i.e, !dbg !24470
  br i1 %i.i, label %._crit_edge, label %.lr.ph, !dbg !24471

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.01.i101 = phi ptr [ %i.g, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.8.0.i100 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ] ; 3 uses
    #dbg_value(ptr %.sroa.0.01.i101, !24385, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24289)
    #dbg_value(i64 %.sroa.8.0.i100, !24385, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24289)
    #dbg_value(ptr %.sroa.0.01.i101, !24385, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !24289)
    #dbg_value(ptr %.sroa.0.01.i101, !5677, !DIExpression(), !24297)
    #dbg_value(i64 %.sroa.8.0.i100, !5680, !DIExpression(), !24298)
    #dbg_value(i64 %.sroa.8.0.i100, !24385, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !24289)
    #dbg_value(i64 %.sroa.8.0.i100, !24386, !DIExpression(), !24299)
    #dbg_value(ptr %.sroa.0.01.i101, !24387, !DIExpression(), !24299)
  %i.j = tail call { ptr, i64 } @_RNvXs_NtCsgCecv3eZDcN_5alloc6borrowINtB4_3CoweEINtNtCsf3Ta7LF998c_4core6borrow6BorroweE6borrowCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.01.i101), !dbg !24474, !noalias !24392 ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0, !dbg !24474
  %i.l = extractvalue { ptr, i64 } %i.j, 1, !dbg !24474 ; 2 uses
    #dbg_value(ptr poison, !5797, !DIExpression(), !24304)
    #dbg_value(ptr %3, !5831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24305)
    #dbg_value(i64 %4, !5831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24305)
    #dbg_value(ptr %i.k, !5832, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24305)
    #dbg_value(i64 %i.l, !5832, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24305)
    #dbg_value(ptr poison, !5801, !DIExpression(), !24306)
    #dbg_value(ptr %3, !5822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24307)
    #dbg_value(ptr %3, !5811, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24308)
    #dbg_value(i64 %4, !5822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24307)
    #dbg_value(i64 %4, !5811, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24308)
    #dbg_value(ptr %i.k, !5823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24307)
    #dbg_value(ptr %i.k, !5812, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24308)
    #dbg_value(i64 %i.l, !5823, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24307)
    #dbg_value(i64 %i.l, !5812, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24308)
    #dbg_value(i64 %4, !5814, !DIExpression(), !24309)
  %i.m = sub i64 %4, %i.l, !dbg !24475
    #dbg_value(i64 %i.m, !5813, !DIExpression(), !24310)
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.l), !dbg !24476
    #dbg_value(i64 %spec.store.select.i.i, !5814, !DIExpression(), !24309)
    #dbg_value(ptr %3, !5815, !DIExpression(), !24311)
    #dbg_value(ptr %i.k, !5816, !DIExpression(), !24312)
  %i.n = tail call i32 @memcmp(ptr nonnull readonly %3, ptr nonnull readonly %i.k, i64 %spec.store.select.i.i), !dbg !24477, !alias.scope !24405 ; 2 uses
  %i.o = sext i32 %i.n to i64, !dbg !24477
    #dbg_value(i64 %i.o, !5817, !DIExpression(), !24316)
  %i.p = icmp eq i32 %i.n, 0, !dbg !24478
  %spec.store.select1.i.i = select i1 %i.p, i64 %i.m, i64 %i.o, !dbg !24478
    #dbg_value(i64 %spec.store.select1.i.i, !5817, !DIExpression(), !24316)
    #dbg_value(ptr undef, !5797, !DIExpression(), !24304)
  %i.q = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select1.i.i, i64 0), !dbg !24479
  switch i8 %i.q, label %bb.d [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ], !dbg !24480

bb.d:                                             ; preds = %.lr.ph
  unreachable, !dbg !24481

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %.sroa.8.0.i100, %.lr.ph ] ; 3 uses
    #dbg_value(i64 %.sroa.3.0, !24350, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24407)
    #dbg_value(i64 %.sroa.3.0, !24408, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24429)
    #dbg_value(i64 %.sroa.3.0, !24430, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24433)
    #dbg_value(ptr %.sroa.0.0, !24350, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24407)
    #dbg_value(ptr %.sroa.0.0, !24408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24429)
    #dbg_value(ptr %.sroa.0.0, !24430, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24433)
    #dbg_value(i64 %.sroa.4.0.i.ph, !24350, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24407)
    #dbg_value(i64 %.sroa.4.0.i.ph, !24408, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24429)
  %i.r = icmp eq i64 %.sroa.3.0, 0, !dbg !24482
  br i1 %i.r, label %.loopexit, label %bb.e, !dbg !24482

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph
  %.sink = phi i64 [ %.sroa.3.0, %.lr.ph ], [ 0, %._crit_edge ]
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i100, %.lr.ph ], [ %.sroa.4.0.i.ph, %._crit_edge ]
  %storemerge = phi i64 [ 0, %.lr.ph ], [ 1, %._crit_edge ], !dbg !24354
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24354
  store ptr %.sroa.0.0, ptr %i.s, align 8, !dbg !24354
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !24354
  store i64 %.sink, ptr %.sroa.429.0..sroa_idx, align 8, !dbg !24354
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !24354
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.530.0..sroa_idx, align 8, !dbg !24354
  store i64 %storemerge, ptr %0, align 8, !dbg !24354
  ret void, !dbg !24483

bb.e:                                             ; preds = %._crit_edge
    #dbg_value(i64 %.sroa.3.0, !24352, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24434)
    #dbg_value(i64 %.sroa.3.0, !24435, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24440)
    #dbg_value(ptr %.sroa.0.0, !24352, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24434)
    #dbg_value(ptr %.sroa.0.0, !24435, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24440)
    #dbg_value(i64 %.sroa.4.0.i.ph, !24352, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24434)
    #dbg_value(i64 %.sroa.4.0.i.ph, !24435, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24440)
    #dbg_value(i64 %.sroa.4.0.i.ph, !24441, !DIExpression(), !24445)
    #dbg_value(i64 %.sroa.4.0.i.ph, !24446, !DIExpression(), !24450)
    #dbg_value(ptr %.sroa.0.0, !24436, !DIExpression(), !24451)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 544, !dbg !24484
    #dbg_value(ptr %i.t, !24442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24445)
    #dbg_value(ptr %i.t, !24447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24450)
    #dbg_value(i64 12, !24442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24445)
    #dbg_value(i64 12, !24447, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24450)
  %i.u = icmp samesign ult i64 %.sroa.4.0.i.ph, 12, !dbg !24485
  tail call void @llvm.assume(i1 %i.u), !dbg !24486
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.4.0.i.ph, !dbg !24487
    #dbg_value(ptr %i.v, !24452, !DIExpression(), !24455)
    #dbg_value(ptr %i.v, !24456, !DIExpression(), !24459)
    #dbg_value(ptr %i.v, !24460, !DIExpression(), !24463)
  %i.w = load ptr, ptr %i.v, align 8, !dbg !24488, !nonnull !1505, !noundef !1505
    #dbg_value(ptr %i.w, !24437, !DIExpression(), !24464)
  %i.x = add i64 %.sroa.3.0, -1, !dbg !24489
    #dbg_value(i64 %i.x, !24347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24354)
    #dbg_value(ptr %i.w, !24347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24354)
  br label %bb.b, !dbg !24465
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtBb_6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1i_14LeafOrInternalE11search_treeeEB1Z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !24498 {
bb.a:
    #dbg_value(ptr %1, !24601, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24608)
    #dbg_value(i64 %2, !24601, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24608)
    #dbg_value(ptr %3, !24602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24608)
    #dbg_value(ptr %3, !24609, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24629)
    #dbg_value(i64 %4, !24602, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24608)
    #dbg_value(i64 %4, !24609, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24629)
  br label %bb.b, !dbg !24719

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.w, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.v, %bb.e ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0, !24601, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24608)
    #dbg_value(i64 %.sroa.3.0, !24601, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24608)
    #dbg_value(ptr %.sroa.0.0, !24624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24629)
    #dbg_value(i64 %.sroa.3.0, !24624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24629)
    #dbg_value(ptr poison, !5860, !DIExpression(), !24514)
    #dbg_value(ptr poison, !5900, !DIExpression(), !24515)
    #dbg_value(ptr poison, !24634, !DIExpression(), !24516)
    #dbg_value(ptr %3, !24635, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24516)
    #dbg_value(i64 %4, !24635, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24516)
    #dbg_value(i64 0, !24636, !DIExpression(), !24516)
    #dbg_value(ptr %.sroa.0.0, !24637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24517)
    #dbg_value(i64 poison, !24637, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24517)
    #dbg_value(ptr poison, !24643, !DIExpression(), !24521)
    #dbg_value(ptr %.sroa.0.0, !24644, !DIExpression(), !24522)
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8, !dbg !24720 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 538, !dbg !24721
  %i.c = load i16, ptr %i.b, align 2, !dbg !24721, !noalias !24646, !noundef !1505 ; 2 uses
    #dbg_value(i16 %i.c, !24647, !DIExpression(), !24527)
  %i.d = zext i16 %i.c to i64, !dbg !24722        ; 3 uses
    #dbg_value(ptr %i.a, !24638, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24528)
    #dbg_value(i64 %i.d, !24638, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24528)
    #dbg_value(i64 %i.d, !24649, !DIExpression(), !24536)
    #dbg_value(i64 %i.d, !24656, !DIExpression(), !24539)
    #dbg_value(ptr %i.a, !24654, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24540)
    #dbg_value(ptr %i.a, !24650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24541)
    #dbg_value(i64 %i.d, !24654, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24540)
    #dbg_value(i64 %i.d, !24650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24541)
    #dbg_value(ptr %i.a, !24651, !DIExpression(), !24542)
    #dbg_value(ptr %i.a, !24657, !DIExpression(), !24539)
  %.idx = mul nuw nsw i64 %i.d, 24, !dbg !24723
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx, !dbg !24723
    #dbg_value(ptr %i.a, !24639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24543)
    #dbg_value(ptr %i.e, !24639, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24543)
    #dbg_value(i64 0, !24639, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24543)
    #dbg_value(ptr undef, !5900, !DIExpression(), !24515)
    #dbg_value(ptr undef, !5860, !DIExpression(), !24514)
    #dbg_value(i64 1, !5919, !DIExpression(), !24545)
    #dbg_value(ptr %i.a, !5876, !DIExpression(), !24546)
    #dbg_value(ptr %i.a, !5923, !DIExpression(), !24545)
    #dbg_value(ptr %i.e, !5877, !DIExpression(), !24547)
    #dbg_value(ptr poison, !5926, !DIExpression(), !24549)
    #dbg_value(ptr poison, !5929, !DIExpression(), !24550)
  %i.f = icmp eq i16 %i.c, 0, !dbg !24724
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !24725

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i101, i64 24, !dbg !24726 ; 2 uses
    #dbg_value(ptr %i.g, !24639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24543)
  %i.h = add nuw nsw i64 %.sroa.8.0.i100, 1, !dbg !24727
    #dbg_value(i64 %i.h, !24639, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24543)
    #dbg_value(ptr %i.g, !24639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24543)
    #dbg_value(i64 %i.h, !24639, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24543)
    #dbg_value(ptr undef, !5900, !DIExpression(), !24515)
    #dbg_value(ptr undef, !5860, !DIExpression(), !24514)
    #dbg_value(i64 1, !5919, !DIExpression(), !24545)
    #dbg_value(ptr %i.g, !5876, !DIExpression(), !24546)
    #dbg_value(ptr %i.g, !5923, !DIExpression(), !24545)
    #dbg_value(ptr %i.e, !5877, !DIExpression(), !24547)
    #dbg_value(ptr poison, !5926, !DIExpression(), !24549)
    #dbg_value(ptr poison, !5929, !DIExpression(), !24550)
  %i.i = icmp eq ptr %i.g, %i.e, !dbg !24724
  br i1 %i.i, label %._crit_edge, label %.lr.ph, !dbg !24725

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.01.i101 = phi ptr [ %i.g, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %.sroa.8.0.i100 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ] ; 3 uses
    #dbg_value(ptr %.sroa.0.01.i101, !24639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24543)
    #dbg_value(i64 %.sroa.8.0.i100, !24639, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24543)
    #dbg_value(ptr %.sroa.0.01.i101, !24639, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !24543)
    #dbg_value(ptr %.sroa.0.01.i101, !5901, !DIExpression(), !24551)
    #dbg_value(i64 %.sroa.8.0.i100, !5904, !DIExpression(), !24552)
    #dbg_value(i64 %.sroa.8.0.i100, !24639, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !24543)
    #dbg_value(i64 %.sroa.8.0.i100, !24640, !DIExpression(), !24553)
    #dbg_value(ptr %.sroa.0.01.i101, !24641, !DIExpression(), !24553)
  %i.j = getelementptr i8, ptr %.sroa.0.01.i101, i64 8, !dbg !24728
  %.val.i = load ptr, ptr %i.j, align 8, !dbg !24728, !noalias !24646, !nonnull !1505, !noundef !1505
  %i.k = getelementptr i8, ptr %.sroa.0.01.i101, i64 16, !dbg !24728
  %.val35.i = load i64, ptr %i.k, align 8, !dbg !24728, !noalias !24646, !noundef !1505 ; 2 uses
    #dbg_value(ptr poison, !5797, !DIExpression(), !24558)
    #dbg_value(ptr %3, !5831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24559)
    #dbg_value(i64 %4, !5831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24559)
    #dbg_value(ptr %.val.i, !5832, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24559)
    #dbg_value(i64 %.val35.i, !5832, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24559)
    #dbg_value(ptr poison, !5801, !DIExpression(), !24560)
    #dbg_value(ptr %3, !5822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24561)
    #dbg_value(ptr %3, !5811, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24562)
    #dbg_value(i64 %4, !5822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24561)
    #dbg_value(i64 %4, !5811, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24562)
    #dbg_value(ptr %.val.i, !5823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24561)
    #dbg_value(ptr %.val.i, !5812, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24562)
    #dbg_value(i64 %.val35.i, !5823, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24561)
    #dbg_value(i64 %.val35.i, !5812, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24562)
    #dbg_value(i64 %4, !5814, !DIExpression(), !24563)
  %i.l = sub i64 %4, %.val35.i, !dbg !24729
    #dbg_value(i64 %i.l, !5813, !DIExpression(), !24564)
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %4, i64 %.val35.i), !dbg !24730
    #dbg_value(i64 %spec.store.select.i.i, !5814, !DIExpression(), !24563)
    #dbg_value(ptr %3, !5815, !DIExpression(), !24565)
    #dbg_value(ptr %.val.i, !5816, !DIExpression(), !24566)
  %i.m = tail call i32 @memcmp(ptr nonnull readonly %3, ptr nonnull readonly %.val.i, i64 %spec.store.select.i.i), !dbg !24731, !alias.scope !24659 ; 2 uses
  %i.n = sext i32 %i.m to i64, !dbg !24731
    #dbg_value(i64 %i.n, !5817, !DIExpression(), !24570)
  %i.o = icmp eq i32 %i.m, 0, !dbg !24732
  %spec.store.select1.i.i = select i1 %i.o, i64 %i.l, i64 %i.n, !dbg !24732
    #dbg_value(i64 %spec.store.select1.i.i, !5817, !DIExpression(), !24570)
    #dbg_value(ptr undef, !5797, !DIExpression(), !24558)
  %i.p = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select1.i.i, i64 0), !dbg !24733
  switch i8 %i.p, label %bb.d [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ], !dbg !24734

bb.d:                                             ; preds = %.lr.ph
  unreachable, !dbg !24735

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %.sroa.8.0.i100, %.lr.ph ] ; 3 uses
    #dbg_value(i64 %.sroa.3.0, !24604, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24661)
    #dbg_value(i64 %.sroa.3.0, !24662, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24683)
    #dbg_value(i64 %.sroa.3.0, !24684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24687)
    #dbg_value(ptr %.sroa.0.0, !24604, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24661)
    #dbg_value(ptr %.sroa.0.0, !24662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24683)
    #dbg_value(ptr %.sroa.0.0, !24684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24687)
    #dbg_value(i64 %.sroa.4.0.i.ph, !24604, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24661)
    #dbg_value(i64 %.sroa.4.0.i.ph, !24662, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24683)
  %i.q = icmp eq i64 %.sroa.3.0, 0, !dbg !24736
  br i1 %i.q, label %.loopexit, label %bb.e, !dbg !24736

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph
  %.sink = phi i64 [ %.sroa.3.0, %.lr.ph ], [ 0, %._crit_edge ]
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i100, %.lr.ph ], [ %.sroa.4.0.i.ph, %._crit_edge ]
  %storemerge = phi i64 [ 0, %.lr.ph ], [ 1, %._crit_edge ], !dbg !24608
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24608
  store ptr %.sroa.0.0, ptr %i.r, align 8, !dbg !24608
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !24608
  store i64 %.sink, ptr %.sroa.429.0..sroa_idx, align 8, !dbg !24608
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !24608
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.530.0..sroa_idx, align 8, !dbg !24608
  store i64 %storemerge, ptr %0, align 8, !dbg !24608
  ret void, !dbg !24737

bb.e:                                             ; preds = %._crit_edge
    #dbg_value(i64 %.sroa.3.0, !24606, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24688)
    #dbg_value(i64 %.sroa.3.0, !24689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24694)
    #dbg_value(ptr %.sroa.0.0, !24606, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24688)
    #dbg_value(ptr %.sroa.0.0, !24689, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24694)
    #dbg_value(i64 %.sroa.4.0.i.ph, !24606, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24688)
    #dbg_value(i64 %.sroa.4.0.i.ph, !24689, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24694)
    #dbg_value(i64 %.sroa.4.0.i.ph, !24695, !DIExpression(), !24699)
    #dbg_value(i64 %.sroa.4.0.i.ph, !24700, !DIExpression(), !24704)
    #dbg_value(ptr %.sroa.0.0, !24690, !DIExpression(), !24705)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 544, !dbg !24738
    #dbg_value(ptr %i.s, !24696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24699)
    #dbg_value(ptr %i.s, !24701, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24704)
    #dbg_value(i64 12, !24696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24699)
    #dbg_value(i64 12, !24701, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24704)
  %i.t = icmp samesign ult i64 %.sroa.4.0.i.ph, 12, !dbg !24739
  tail call void @llvm.assume(i1 %i.t), !dbg !24740
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.4.0.i.ph, !dbg !24741
    #dbg_value(ptr %i.u, !24706, !DIExpression(), !24709)
    #dbg_value(ptr %i.u, !24710, !DIExpression(), !24713)
    #dbg_value(ptr %i.u, !24714, !DIExpression(), !24717)
  %i.v = load ptr, ptr %i.u, align 8, !dbg !24742, !nonnull !1505, !noundef !1505
    #dbg_value(ptr %i.v, !24691, !DIExpression(), !24718)
  %i.w = add i64 %.sroa.3.0, -1, !dbg !24743
    #dbg_value(i64 %i.w, !24601, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24608)
    #dbg_value(ptr %i.v, !24601, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24608)
  br label %bb.b, !dbg !24719
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtBb_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionNtB1i_14LeafOrInternalE11search_treeB1A_EB21_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !24752 {
bb.a:
    #dbg_value(ptr %1, !24855, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24862)
    #dbg_value(i64 %2, !24855, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24862)
    #dbg_value(ptr %3, !24856, !DIExpression(), !24862)
    #dbg_value(ptr %3, !24863, !DIExpression(), !24883)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val69 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val70 = load i64, ptr %i.b, align 8           ; 2 uses
  br label %bb.b, !dbg !24972

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.y, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.x, %bb.e ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0, !24855, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24862)
    #dbg_value(i64 %.sroa.3.0, !24855, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24862)
    #dbg_value(ptr %.sroa.0.0, !24878, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24883)
    #dbg_value(i64 %.sroa.3.0, !24878, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24883)
    #dbg_value(ptr poison, !5860, !DIExpression(), !24768)
    #dbg_value(ptr poison, !5900, !DIExpression(), !24769)
    #dbg_value(ptr poison, !24888, !DIExpression(), !24770)
    #dbg_value(ptr poison, !24889, !DIExpression(), !24770)
    #dbg_value(i64 0, !24890, !DIExpression(), !24770)
    #dbg_value(ptr %.sroa.0.0, !24891, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24771)
    #dbg_value(i64 poison, !24891, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24771)
    #dbg_value(ptr poison, !24897, !DIExpression(), !24775)
    #dbg_value(ptr %.sroa.0.0, !24898, !DIExpression(), !24776)
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 712, !dbg !24973 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 978, !dbg !24974
  %i.e = load i16, ptr %i.d, align 2, !dbg !24974, !noundef !1505 ; 2 uses
    #dbg_value(i16 %i.e, !24900, !DIExpression(), !24779)
  %i.f = zext i16 %i.e to i64, !dbg !24975        ; 3 uses
    #dbg_value(ptr %i.c, !24892, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24780)
    #dbg_value(i64 %i.f, !24892, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24780)
    #dbg_value(i64 %i.f, !24902, !DIExpression(), !24788)
    #dbg_value(i64 %i.f, !24909, !DIExpression(), !24791)
    #dbg_value(ptr %i.c, !24907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24792)
    #dbg_value(ptr %i.c, !24903, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24793)
    #dbg_value(i64 %i.f, !24907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24792)
    #dbg_value(i64 %i.f, !24903, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24793)
    #dbg_value(ptr %i.c, !24904, !DIExpression(), !24794)
    #dbg_value(ptr %i.c, !24910, !DIExpression(), !24791)
  %.idx = mul nuw nsw i64 %i.f, 24, !dbg !24976
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx, !dbg !24976
    #dbg_value(ptr %i.c, !24893, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24795)
    #dbg_value(ptr %i.g, !24893, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24795)
    #dbg_value(i64 0, !24893, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24795)
    #dbg_value(ptr undef, !5900, !DIExpression(), !24769)
    #dbg_value(ptr undef, !5860, !DIExpression(), !24768)
    #dbg_value(i64 1, !5919, !DIExpression(), !24797)
    #dbg_value(ptr %i.c, !5876, !DIExpression(), !24798)
    #dbg_value(ptr %i.c, !5923, !DIExpression(), !24797)
    #dbg_value(ptr %i.g, !5877, !DIExpression(), !24799)
    #dbg_value(ptr poison, !5926, !DIExpression(), !24801)
    #dbg_value(ptr poison, !5929, !DIExpression(), !24802)
  %i.h = icmp eq i16 %i.e, 0, !dbg !24977
  br i1 %i.h, label %._crit_edge, label %.lr.ph.preheader, !dbg !24978

.lr.ph.preheader:                                 ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val69) ]
  br label %.lr.ph, !dbg !24979

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i102, i64 24, !dbg !24980 ; 2 uses
    #dbg_value(ptr %i.i, !24893, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24795)
  %i.j = add nuw nsw i64 %.sroa.8.0.i101, 1, !dbg !24981
    #dbg_value(i64 %i.j, !24893, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24795)
    #dbg_value(ptr %i.i, !24893, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24795)
    #dbg_value(i64 %i.j, !24893, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24795)
    #dbg_value(ptr undef, !5900, !DIExpression(), !24769)
    #dbg_value(ptr undef, !5860, !DIExpression(), !24768)
    #dbg_value(i64 1, !5919, !DIExpression(), !24797)
    #dbg_value(ptr %i.i, !5876, !DIExpression(), !24798)
    #dbg_value(ptr %i.i, !5923, !DIExpression(), !24797)
    #dbg_value(ptr %i.g, !5877, !DIExpression(), !24799)
    #dbg_value(ptr poison, !5926, !DIExpression(), !24801)
    #dbg_value(ptr poison, !5929, !DIExpression(), !24802)
  %i.k = icmp eq ptr %i.i, %i.g, !dbg !24977
  br i1 %i.k, label %._crit_edge, label %.lr.ph, !dbg !24978

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.0.01.i102 = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %.sroa.8.0.i101 = phi i64 [ %i.j, %bb.c ], [ 0, %.lr.ph.preheader ] ; 3 uses
    #dbg_value(ptr %.sroa.0.01.i102, !24893, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24795)
    #dbg_value(i64 %.sroa.8.0.i101, !24893, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24795)
    #dbg_value(ptr %.sroa.0.01.i102, !24893, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !24795)
    #dbg_value(ptr %.sroa.0.01.i102, !5901, !DIExpression(), !24803)
    #dbg_value(i64 %.sroa.8.0.i101, !5904, !DIExpression(), !24804)
    #dbg_value(i64 %.sroa.8.0.i101, !24893, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !24795)
    #dbg_value(i64 %.sroa.8.0.i101, !24894, !DIExpression(), !24805)
    #dbg_value(ptr %.sroa.0.01.i102, !24895, !DIExpression(), !24805)
  %i.l = getelementptr i8, ptr %.sroa.0.01.i102, i64 8, !dbg !24982
  %.val35.i = load ptr, ptr %i.l, align 8, !dbg !24982, !nonnull !1505, !noundef !1505
  %i.m = getelementptr i8, ptr %.sroa.0.01.i102, i64 16, !dbg !24982
  %.val36.i = load i64, ptr %i.m, align 8, !dbg !24982, !noundef !1505 ; 2 uses
    #dbg_value(ptr poison, !5932, !DIExpression(), !24807)
    #dbg_value(ptr poison, !5936, !DIExpression(), !24807)
    #dbg_value(ptr poison, !5940, !DIExpression(), !24809)
    #dbg_value(ptr poison, !5944, !DIExpression(), !24809)
    #dbg_value(ptr %.val69, !5946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24811)
    #dbg_value(i64 %.val70, !5946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24811)
    #dbg_value(ptr %.val35.i, !5950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24811)
    #dbg_value(i64 %.val36.i, !5950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24811)
    #dbg_value(ptr poison, !5952, !DIExpression(), !24814)
    #dbg_value(ptr %.val69, !5955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24815)
    #dbg_value(i64 %.val70, !5955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24815)
    #dbg_value(ptr %.val35.i, !5956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24815)
    #dbg_value(i64 %.val36.i, !5956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24815)
    #dbg_value(ptr poison, !5953, !DIExpression(), !24816)
    #dbg_value(i64 %.val70, !5958, !DIExpression(), !24817)
  %i.n = sub nsw i64 %.val70, %.val36.i, !dbg !24983
    #dbg_value(i64 %i.n, !5957, !DIExpression(), !24818)
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val70, i64 range(i64 0, -9223372036854775808) %.val36.i), !dbg !24984
    #dbg_value(i64 %spec.store.select.i.i.i.i, !5958, !DIExpression(), !24817)
    #dbg_value(ptr %.val69, !5959, !DIExpression(), !24819)
    #dbg_value(ptr %.val35.i, !5960, !DIExpression(), !24820)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.val69, ptr nonnull readonly %.val35.i, i64 %spec.store.select.i.i.i.i), !dbg !24985, !alias.scope !24912 ; 2 uses
  %i.p = sext i32 %i.o to i64, !dbg !24985
    #dbg_value(i64 %i.p, !5961, !DIExpression(), !24824)
  %i.q = icmp eq i32 %i.o, 0, !dbg !24986
  %spec.store.select1.i.i.i.i = select i1 %i.q, i64 %i.n, i64 %i.p, !dbg !24986
    #dbg_value(i64 %spec.store.select1.i.i.i.i, !5961, !DIExpression(), !24824)
    #dbg_value(ptr undef, !5952, !DIExpression(), !24814)
  %i.r = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select1.i.i.i.i, i64 0), !dbg !24987
  switch i8 %i.r, label %bb.d [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ], !dbg !24979

bb.d:                                             ; preds = %.lr.ph
  unreachable, !dbg !24988

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.f, %bb.b ], [ %i.f, %bb.c ], [ %.sroa.8.0.i101, %.lr.ph ] ; 3 uses
    #dbg_value(i64 %.sroa.3.0, !24858, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24914)
    #dbg_value(i64 %.sroa.3.0, !24915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24936)
    #dbg_value(i64 %.sroa.3.0, !24937, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24940)
    #dbg_value(ptr %.sroa.0.0, !24858, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24914)
    #dbg_value(ptr %.sroa.0.0, !24915, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24936)
    #dbg_value(ptr %.sroa.0.0, !24937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24940)
    #dbg_value(i64 %.sroa.4.0.i.ph, !24858, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24914)
    #dbg_value(i64 %.sroa.4.0.i.ph, !24915, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24936)
  %i.s = icmp eq i64 %.sroa.3.0, 0, !dbg !24989
  br i1 %i.s, label %.loopexit, label %bb.e, !dbg !24989

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph
  %.sink = phi i64 [ %.sroa.3.0, %.lr.ph ], [ 0, %._crit_edge ]
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i101, %.lr.ph ], [ %.sroa.4.0.i.ph, %._crit_edge ]
  %storemerge = phi i64 [ 0, %.lr.ph ], [ 1, %._crit_edge ], !dbg !24862
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24862
  store ptr %.sroa.0.0, ptr %i.t, align 8, !dbg !24862
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !24862
  store i64 %.sink, ptr %.sroa.429.0..sroa_idx, align 8, !dbg !24862
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !24862
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.530.0..sroa_idx, align 8, !dbg !24862
  store i64 %storemerge, ptr %0, align 8, !dbg !24862
  ret void, !dbg !24990

bb.e:                                             ; preds = %._crit_edge
    #dbg_value(i64 %.sroa.3.0, !24860, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24941)
    #dbg_value(i64 %.sroa.3.0, !24942, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24947)
    #dbg_value(ptr %.sroa.0.0, !24860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24941)
    #dbg_value(ptr %.sroa.0.0, !24942, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24947)
    #dbg_value(i64 %.sroa.4.0.i.ph, !24860, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24941)
    #dbg_value(i64 %.sroa.4.0.i.ph, !24942, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24947)
    #dbg_value(i64 %.sroa.4.0.i.ph, !24948, !DIExpression(), !24952)
    #dbg_value(i64 %.sroa.4.0.i.ph, !24953, !DIExpression(), !24957)
    #dbg_value(ptr %.sroa.0.0, !24943, !DIExpression(), !24958)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 984, !dbg !24991
    #dbg_value(ptr %i.u, !24949, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24952)
    #dbg_value(ptr %i.u, !24954, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24957)
    #dbg_value(i64 12, !24949, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24952)
    #dbg_value(i64 12, !24954, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24957)
  %i.v = icmp samesign ult i64 %.sroa.4.0.i.ph, 12, !dbg !24992
  tail call void @llvm.assume(i1 %i.v), !dbg !24993
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.4.0.i.ph, !dbg !24994
    #dbg_value(ptr %i.w, !24959, !DIExpression(), !24962)
    #dbg_value(ptr %i.w, !24963, !DIExpression(), !24966)
    #dbg_value(ptr %i.w, !24967, !DIExpression(), !24970)
  %i.x = load ptr, ptr %i.w, align 8, !dbg !24995, !nonnull !1505, !noundef !1505
    #dbg_value(ptr %i.x, !24944, !DIExpression(), !24971)
  %i.y = add i64 %.sroa.3.0, -1, !dbg !24996
    #dbg_value(i64 %i.y, !24855, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24862)
    #dbg_value(ptr %i.x, !24855, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24862)
  br label %bb.b, !dbg !24972
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtBb_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentNtB1i_14LeafOrInternalE11search_treeeEB21_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !25005 {
bb.a:
    #dbg_value(ptr %1, !25108, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25115)
    #dbg_value(i64 %2, !25108, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25115)
    #dbg_value(ptr %3, !25109, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25115)
    #dbg_value(ptr %3, !25116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25136)
    #dbg_value(i64 %4, !25109, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25115)
    #dbg_value(i64 %4, !25116, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25136)
  br label %bb.b, !dbg !25226

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.w, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.v, %bb.e ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0, !25108, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25115)
    #dbg_value(i64 %.sroa.3.0, !25108, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25115)
    #dbg_value(ptr %.sroa.0.0, !25131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25136)
    #dbg_value(i64 %.sroa.3.0, !25131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25136)
    #dbg_value(ptr poison, !5860, !DIExpression(), !25021)
    #dbg_value(ptr poison, !5900, !DIExpression(), !25022)
    #dbg_value(ptr poison, !25141, !DIExpression(), !25023)
    #dbg_value(ptr %3, !25142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25023)
    #dbg_value(i64 %4, !25142, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25023)
    #dbg_value(i64 0, !25143, !DIExpression(), !25023)
    #dbg_value(ptr %.sroa.0.0, !25144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25024)
    #dbg_value(i64 poison, !25144, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25024)
    #dbg_value(ptr poison, !25150, !DIExpression(), !25028)
    #dbg_value(ptr %.sroa.0.0, !25151, !DIExpression(), !25029)
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 360, !dbg !25227 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 626, !dbg !25228
  %i.c = load i16, ptr %i.b, align 2, !dbg !25228, !noalias !25153, !noundef !1505 ; 2 uses
    #dbg_value(i16 %i.c, !25154, !DIExpression(), !25034)
  %i.d = zext i16 %i.c to i64, !dbg !25229        ; 3 uses
    #dbg_value(ptr %i.a, !25145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25035)
    #dbg_value(i64 %i.d, !25145, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25035)
    #dbg_value(i64 %i.d, !25156, !DIExpression(), !25043)
    #dbg_value(i64 %i.d, !25163, !DIExpression(), !25046)
    #dbg_value(ptr %i.a, !25161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25047)
    #dbg_value(ptr %i.a, !25157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25048)
    #dbg_value(i64 %i.d, !25161, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25047)
    #dbg_value(i64 %i.d, !25157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25048)
    #dbg_value(ptr %i.a, !25158, !DIExpression(), !25049)
    #dbg_value(ptr %i.a, !25164, !DIExpression(), !25046)
  %.idx = mul nuw nsw i64 %i.d, 24, !dbg !25230
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx, !dbg !25230
    #dbg_value(ptr %i.a, !25146, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25050)
    #dbg_value(ptr %i.e, !25146, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25050)
    #dbg_value(i64 0, !25146, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25050)
    #dbg_value(ptr undef, !5900, !DIExpression(), !25022)
    #dbg_value(ptr undef, !5860, !DIExpression(), !25021)
    #dbg_value(i64 1, !5919, !DIExpression(), !25052)
    #dbg_value(ptr %i.a, !5876, !DIExpression(), !25053)
    #dbg_value(ptr %i.a, !5923, !DIExpression(), !25052)
    #dbg_value(ptr %i.e, !5877, !DIExpression(), !25054)
    #dbg_value(ptr poison, !5926, !DIExpression(), !25056)
    #dbg_value(ptr poison, !5929, !DIExpression(), !25057)
  %i.f = icmp eq i16 %i.c, 0, !dbg !25231
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !25232

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i101, i64 24, !dbg !25233 ; 2 uses
    #dbg_value(ptr %i.g, !25146, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25050)
  %i.h = add nuw nsw i64 %.sroa.8.0.i100, 1, !dbg !25234
    #dbg_value(i64 %i.h, !25146, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25050)
    #dbg_value(ptr %i.g, !25146, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25050)
    #dbg_value(i64 %i.h, !25146, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25050)
    #dbg_value(ptr undef, !5900, !DIExpression(), !25022)
    #dbg_value(ptr undef, !5860, !DIExpression(), !25021)
    #dbg_value(i64 1, !5919, !DIExpression(), !25052)
    #dbg_value(ptr %i.g, !5876, !DIExpression(), !25053)
    #dbg_value(ptr %i.g, !5923, !DIExpression(), !25052)
    #dbg_value(ptr %i.e, !5877, !DIExpression(), !25054)
    #dbg_value(ptr poison, !5926, !DIExpression(), !25056)
    #dbg_value(ptr poison, !5929, !DIExpression(), !25057)
  %i.i = icmp eq ptr %i.g, %i.e, !dbg !25231
  br i1 %i.i, label %._crit_edge, label %.lr.ph, !dbg !25232

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.01.i101 = phi ptr [ %i.g, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %.sroa.8.0.i100 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ] ; 3 uses
    #dbg_value(ptr %.sroa.0.01.i101, !25146, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25050)
    #dbg_value(i64 %.sroa.8.0.i100, !25146, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25050)
    #dbg_value(ptr %.sroa.0.01.i101, !25146, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !25050)
    #dbg_value(ptr %.sroa.0.01.i101, !5901, !DIExpression(), !25058)
    #dbg_value(i64 %.sroa.8.0.i100, !5904, !DIExpression(), !25059)
    #dbg_value(i64 %.sroa.8.0.i100, !25146, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !25050)
    #dbg_value(i64 %.sroa.8.0.i100, !25147, !DIExpression(), !25060)
    #dbg_value(ptr %.sroa.0.01.i101, !25148, !DIExpression(), !25060)
  %i.j = getelementptr i8, ptr %.sroa.0.01.i101, i64 8, !dbg !25235
  %.val.i = load ptr, ptr %i.j, align 8, !dbg !25235, !noalias !25153, !nonnull !1505, !noundef !1505
  %i.k = getelementptr i8, ptr %.sroa.0.01.i101, i64 16, !dbg !25235
  %.val35.i = load i64, ptr %i.k, align 8, !dbg !25235, !noalias !25153, !noundef !1505 ; 2 uses
    #dbg_value(ptr poison, !5797, !DIExpression(), !25065)
    #dbg_value(ptr %3, !5831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25066)
    #dbg_value(i64 %4, !5831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25066)
    #dbg_value(ptr %.val.i, !5832, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25066)
    #dbg_value(i64 %.val35.i, !5832, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25066)
    #dbg_value(ptr poison, !5801, !DIExpression(), !25067)
    #dbg_value(ptr %3, !5822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25068)
    #dbg_value(ptr %3, !5811, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25069)
    #dbg_value(i64 %4, !5822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25068)
    #dbg_value(i64 %4, !5811, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25069)
    #dbg_value(ptr %.val.i, !5823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25068)
    #dbg_value(ptr %.val.i, !5812, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25069)
    #dbg_value(i64 %.val35.i, !5823, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25068)
    #dbg_value(i64 %.val35.i, !5812, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25069)
    #dbg_value(i64 %4, !5814, !DIExpression(), !25070)
  %i.l = sub i64 %4, %.val35.i, !dbg !25236
    #dbg_value(i64 %i.l, !5813, !DIExpression(), !25071)
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %4, i64 %.val35.i), !dbg !25237
    #dbg_value(i64 %spec.store.select.i.i, !5814, !DIExpression(), !25070)
    #dbg_value(ptr %3, !5815, !DIExpression(), !25072)
    #dbg_value(ptr %.val.i, !5816, !DIExpression(), !25073)
  %i.m = tail call i32 @memcmp(ptr nonnull readonly %3, ptr nonnull readonly %.val.i, i64 %spec.store.select.i.i), !dbg !25238, !alias.scope !25166 ; 2 uses
  %i.n = sext i32 %i.m to i64, !dbg !25238
    #dbg_value(i64 %i.n, !5817, !DIExpression(), !25077)
  %i.o = icmp eq i32 %i.m, 0, !dbg !25239
  %spec.store.select1.i.i = select i1 %i.o, i64 %i.l, i64 %i.n, !dbg !25239
    #dbg_value(i64 %spec.store.select1.i.i, !5817, !DIExpression(), !25077)
    #dbg_value(ptr undef, !5797, !DIExpression(), !25065)
  %i.p = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select1.i.i, i64 0), !dbg !25240
  switch i8 %i.p, label %bb.d [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ], !dbg !25241

bb.d:                                             ; preds = %.lr.ph
  unreachable, !dbg !25242

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %.sroa.8.0.i100, %.lr.ph ] ; 3 uses
    #dbg_value(i64 %.sroa.3.0, !25111, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25168)
    #dbg_value(i64 %.sroa.3.0, !25169, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25190)
    #dbg_value(i64 %.sroa.3.0, !25191, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25194)
    #dbg_value(ptr %.sroa.0.0, !25111, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25168)
    #dbg_value(ptr %.sroa.0.0, !25169, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25190)
    #dbg_value(ptr %.sroa.0.0, !25191, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25194)
    #dbg_value(i64 %.sroa.4.0.i.ph, !25111, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25168)
    #dbg_value(i64 %.sroa.4.0.i.ph, !25169, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25190)
  %i.q = icmp eq i64 %.sroa.3.0, 0, !dbg !25243
  br i1 %i.q, label %.loopexit, label %bb.e, !dbg !25243

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph
  %.sink = phi i64 [ %.sroa.3.0, %.lr.ph ], [ 0, %._crit_edge ]
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i100, %.lr.ph ], [ %.sroa.4.0.i.ph, %._crit_edge ]
  %storemerge = phi i64 [ 0, %.lr.ph ], [ 1, %._crit_edge ], !dbg !25115
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25115
  store ptr %.sroa.0.0, ptr %i.r, align 8, !dbg !25115
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25115
  store i64 %.sink, ptr %.sroa.429.0..sroa_idx, align 8, !dbg !25115
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !25115
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.530.0..sroa_idx, align 8, !dbg !25115
  store i64 %storemerge, ptr %0, align 8, !dbg !25115
  ret void, !dbg !25244

bb.e:                                             ; preds = %._crit_edge
    #dbg_value(i64 %.sroa.3.0, !25113, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25195)
    #dbg_value(i64 %.sroa.3.0, !25196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25201)
    #dbg_value(ptr %.sroa.0.0, !25113, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25195)
    #dbg_value(ptr %.sroa.0.0, !25196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25201)
    #dbg_value(i64 %.sroa.4.0.i.ph, !25113, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25195)
    #dbg_value(i64 %.sroa.4.0.i.ph, !25196, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25201)
    #dbg_value(i64 %.sroa.4.0.i.ph, !25202, !DIExpression(), !25206)
    #dbg_value(i64 %.sroa.4.0.i.ph, !25207, !DIExpression(), !25211)
    #dbg_value(ptr %.sroa.0.0, !25197, !DIExpression(), !25212)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 632, !dbg !25245
    #dbg_value(ptr %i.s, !25203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25206)
    #dbg_value(ptr %i.s, !25208, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25211)
    #dbg_value(i64 12, !25203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25206)
    #dbg_value(i64 12, !25208, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25211)
  %i.t = icmp samesign ult i64 %.sroa.4.0.i.ph, 12, !dbg !25246
  tail call void @llvm.assume(i1 %i.t), !dbg !25247
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.4.0.i.ph, !dbg !25248
    #dbg_value(ptr %i.u, !25213, !DIExpression(), !25216)
    #dbg_value(ptr %i.u, !25217, !DIExpression(), !25220)
    #dbg_value(ptr %i.u, !25221, !DIExpression(), !25224)
  %i.v = load ptr, ptr %i.u, align 8, !dbg !25249, !nonnull !1505, !noundef !1505
    #dbg_value(ptr %i.v, !25198, !DIExpression(), !25225)
  %i.w = add i64 %.sroa.3.0, -1, !dbg !25250
    #dbg_value(i64 %i.w, !25108, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25115)
    #dbg_value(ptr %i.v, !25108, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25115)
  br label %bb.b, !dbg !25226
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalEB2h_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !25253 {
bb.a:
    #dbg_declare(ptr %0, !25296, !DIExpression(), !25301)
    #dbg_declare(ptr poison, !25297, !DIExpression(), !25302)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25308
  %i.b = load i64, ptr %i.a, align 8, !dbg !25308, !noundef !1505 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !25308, !nonnull !1505, !noundef !1505 ; 3 uses
    #dbg_value(i64 poison, !25298, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25303)
    #dbg_value(i64 poison, !25299, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25304)
    #dbg_value(i64 %i.b, !25298, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25303)
    #dbg_value(ptr %i.c, !25298, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25303)
    #dbg_value(ptr %i.c, !6282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25255)
    #dbg_value(i64 %i.b, !6282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25255)
    #dbg_declare(ptr poison, !6295, !DIExpression(), !25256)
    #dbg_value(i64 %i.b, !6296, !DIExpression(), !25257)
    #dbg_value(ptr %i.c, !6297, !DIExpression(), !25258)
    #dbg_value(ptr poison, !6300, !DIExpression(), !25262)
    #dbg_value(ptr poison, !6317, !DIExpression(), !25263)
    #dbg_value(ptr poison, !6315, !DIExpression(), !25264)
    #dbg_value(ptr poison, !6336, !DIExpression(), !25266)
    #dbg_value(ptr poison, !6316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25264)
    #dbg_value(ptr %i.c, !6333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25267)
    #dbg_value(i64 %i.b, !6333, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25267)
    #dbg_value(ptr %i.c, !6334, !DIExpression(), !25268)
  %i.d = load ptr, ptr %i.c, align 8, !dbg !25309, !noalias !25305, !noundef !1505 ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.d, null, !dbg !25310
  br i1 %.not.i.i9, label %._crit_edge, label %.lr.ph, !dbg !25311

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi ptr [ %i.g, %.lr.ph ], [ %i.d, %bb.a ] ; 3 uses
  %.sroa.0.011 = phi ptr [ %i.e, %.lr.ph ], [ %i.c, %bb.a ]
  %.sroa.3.010 = phi i64 [ %i.f, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
    #dbg_value(ptr undef, !6315, !DIExpression(), !25264)
    #dbg_value(ptr poison, !6306, !DIExpression(DW_OP_deref), !25262)
    #dbg_value(ptr undef, !6307, !DIExpression(DW_OP_deref), !25262)
    #dbg_value(ptr poison, !6316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25264)
    #dbg_value(ptr undef, !6316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25264)
    #dbg_value(ptr undef, !6317, !DIExpression(), !25263)
    #dbg_value(ptr undef, !6300, !DIExpression(), !25262)
  %i.f = add i64 %.sroa.3.010, 1, !dbg !25312     ; 2 uses
    #dbg_value(i16 poison, !6298, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !25306)
    #dbg_value(i64 %i.f, !6298, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25306)
    #dbg_value(ptr %i.e, !6298, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25306)
  %.not.i = icmp eq i64 %.sroa.3.010, 0, !dbg !25313
    #dbg_value(ptr poison, !2381, !DIExpression(), !25274)
    #dbg_value(ptr poison, !2381, !DIExpression(), !25276)
    #dbg_value(ptr poison, !2388, !DIExpression(), !25278)
    #dbg_value(ptr poison, !2388, !DIExpression(), !25280)
    #dbg_value(ptr %.sroa.0.011, !2385, !DIExpression(), !25274)
    #dbg_value(ptr %.sroa.0.011, !2385, !DIExpression(), !25276)
    #dbg_value(ptr %.sroa.0.011, !2391, !DIExpression(), !25278)
    #dbg_value(ptr %.sroa.0.011, !2391, !DIExpression(), !25280)
    #dbg_value(ptr %.sroa.0.011, !2394, !DIExpression(), !25282)
    #dbg_value(ptr %.sroa.0.011, !2394, !DIExpression(), !25284)
    #dbg_value(ptr %.sroa.0.011, !2400, !DIExpression(), !25286)
    #dbg_value(ptr %.sroa.0.011, !2400, !DIExpression(), !25288)
    #dbg_value(i64 8, !2386, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25274)
    #dbg_value(i64 8, !2386, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25276)
    #dbg_value(i64 8, !2392, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25278)
    #dbg_value(i64 8, !2392, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25280)
    #dbg_value(i64 8, !2398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25282)
    #dbg_value(i64 8, !2398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25284)
    #dbg_value(i64 8, !2401, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25286)
    #dbg_value(i64 8, !2401, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25288)
  %..i = select i1 %.not.i, i64 544, i64 640, !dbg !25306
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.011, i64 noundef %..i, i64 noundef 8) #23, !dbg !25314, !noalias !25307
    #dbg_value(i64 %i.f, !25299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25304)
    #dbg_value(ptr %i.e, !25299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25304)
    #dbg_value(i64 poison, !25298, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25303)
    #dbg_value(i64 poison, !25299, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25304)
    #dbg_value(ptr %i.e, !25298, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25303)
    #dbg_value(i64 %i.f, !25298, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25303)
    #dbg_value(ptr %i.e, !6282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25255)
    #dbg_value(i64 %i.f, !6282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25255)
    #dbg_declare(ptr poison, !6295, !DIExpression(), !25256)
    #dbg_value(i64 %i.f, !6296, !DIExpression(), !25257)
    #dbg_value(ptr %i.e, !6297, !DIExpression(), !25258)
    #dbg_value(ptr poison, !6300, !DIExpression(), !25262)
    #dbg_value(ptr poison, !6317, !DIExpression(), !25263)
    #dbg_value(ptr poison, !6315, !DIExpression(), !25264)
    #dbg_value(ptr poison, !6336, !DIExpression(), !25266)
    #dbg_value(ptr poison, !6316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25264)
    #dbg_value(ptr %i.e, !6333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25267)
    #dbg_value(i64 %i.f, !6333, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25267)
    #dbg_value(ptr %i.e, !6334, !DIExpression(), !25268)
  %i.g = load ptr, ptr %i.e, align 8, !dbg !25309, !noalias !25305, !noundef !1505 ; 2 uses
    #dbg_value(ptr undef, !6336, !DIExpression(), !25266)
  %.not.i.i = icmp eq ptr %i.g, null, !dbg !25310
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph, !dbg !25311

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.3.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %.lr.ph ], !dbg !25315
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.e, %.lr.ph ], !dbg !25315
    #dbg_value(i64 poison, !6298, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25306)
    #dbg_value(ptr poison, !6298, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25306)
  %.not.i7 = icmp eq i64 %.sroa.3.0.lcssa, 0, !dbg !25313
    #dbg_value(ptr poison, !2381, !DIExpression(), !25274)
    #dbg_value(ptr poison, !2381, !DIExpression(), !25276)
    #dbg_value(ptr poison, !2388, !DIExpression(), !25278)
    #dbg_value(ptr poison, !2388, !DIExpression(), !25280)
    #dbg_value(ptr %.sroa.0.0.lcssa, !2385, !DIExpression(), !25274)
    #dbg_value(ptr %.sroa.0.0.lcssa, !2385, !DIExpression(), !25276)
    #dbg_value(ptr %.sroa.0.0.lcssa, !2391, !DIExpression(), !25278)
    #dbg_value(ptr %.sroa.0.0.lcssa, !2391, !DIExpression(), !25280)
    #dbg_value(ptr %.sroa.0.0.lcssa, !2394, !DIExpression(), !25282)
    #dbg_value(ptr %.sroa.0.0.lcssa, !2394, !DIExpression(), !25284)
    #dbg_value(ptr %.sroa.0.0.lcssa, !2400, !DIExpression(), !25286)
    #dbg_value(ptr %.sroa.0.0.lcssa, !2400, !DIExpression(), !25288)
    #dbg_value(i64 8, !2386, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25274)
    #dbg_value(i64 8, !2386, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25276)
    #dbg_value(i64 8, !2392, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25278)
    #dbg_value(i64 8, !2392, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25280)
    #dbg_value(i64 8, !2398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25282)
    #dbg_value(i64 8, !2398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25284)
    #dbg_value(i64 8, !2401, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25286)
    #dbg_value(i64 8, !2401, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25288)
  %..i8 = select i1 %.not.i7, i64 544, i64 640, !dbg !25306
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %..i8, i64 noundef 8) #23, !dbg !25314, !noalias !25307
  ret void, !dbg !25316
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalEB2h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !25326 {
bb.a:
    #dbg_value(ptr poison, !25461, !DIExpression(), !25468)
    #dbg_declare(ptr %1, !25454, !DIExpression(), !25487)
    #dbg_declare(ptr poison, !25455, !DIExpression(), !25488)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25590
  %i.b = load i64, ptr %i.a, align 8, !dbg !25590, !noundef !1505 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !dbg !25590, !nonnull !1505, !noundef !1505 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !25590
  %i.e = load i64, ptr %i.d, align 8, !dbg !25590, !noundef !1505 ; 2 uses
    #dbg_value(ptr %i.c, !25456, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25489)
    #dbg_value(ptr %i.c, !25485, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25490)
    #dbg_value(i64 %i.b, !25456, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25489)
    #dbg_value(i64 %i.b, !25485, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25490)
    #dbg_value(i64 %i.e, !25456, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25489)
    #dbg_value(i64 %i.e, !25485, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25490)
    #dbg_value(ptr undef, !25461, !DIExpression(), !25468)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 538, !dbg !25591
  %i.g = load i16, ptr %i.f, align 2, !dbg !25591, !noundef !1505
  %i.h = zext i16 %i.g to i64, !dbg !25592
  %i.i = icmp ult i64 %i.e, %i.h, !dbg !25593
  br i1 %i.i, label %._crit_edge, label %.lr.ph, !dbg !25593

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.0.047 = phi ptr [ %i.j, %bb.d ], [ %i.c, %bb.a ] ; 4 uses
  %.sroa.5.046 = phi i64 [ %i.ab, %bb.d ], [ %i.b, %bb.a ] ; 3 uses
    #dbg_value(ptr %.sroa.0.047, !25485, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25490)
    #dbg_value(i64 %.sroa.5.046, !25485, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25490)
    #dbg_value(ptr %.sroa.0.047, !25458, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25493)
    #dbg_value(i64 %.sroa.5.046, !25458, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25493)
    #dbg_value(i64 poison, !25458, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25493)
    #dbg_value(ptr %.sroa.0.047, !6282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25335)
    #dbg_value(i64 %.sroa.5.046, !6282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25335)
    #dbg_declare(ptr poison, !6295, !DIExpression(), !25336)
    #dbg_value(i64 %.sroa.5.046, !6296, !DIExpression(), !25337)
    #dbg_value(ptr %.sroa.0.047, !6297, !DIExpression(), !25338)
    #dbg_value(ptr poison, !6300, !DIExpression(), !25342)
    #dbg_value(ptr poison, !6317, !DIExpression(), !25343)
    #dbg_value(ptr poison, !6315, !DIExpression(), !25344)
    #dbg_value(ptr poison, !6336, !DIExpression(), !25346)
    #dbg_value(ptr poison, !6316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25344)
    #dbg_value(ptr %.sroa.0.047, !6333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25347)
    #dbg_value(i64 %.sroa.5.046, !6333, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25347)
end_hunk_1
