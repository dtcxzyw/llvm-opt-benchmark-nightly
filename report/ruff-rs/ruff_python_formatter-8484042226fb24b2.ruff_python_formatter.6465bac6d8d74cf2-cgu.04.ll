Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_formatter-8484042226fb24b2.ruff_python_formatter.6465bac6d8d74cf2-cgu.04?download=true
inline.NumInlined: 579
inline.NumDeleted: 285
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXsd_NtCs45bxiIjzMqg_5salsa8internedINtB5_5ValueNtCs56aZGHL6Dc6_7ruff_db10PythonFileENtNtB7_5table4Slot5memosCs8CpBcHC8tKo_21ruff_python_formatter
define internal noundef nonnull ptr @_RNvXsd_NtCs45bxiIjzMqg_5salsa8internedINtB5_5ValueNtCs56aZGHL6Dc6_7ruff_db10PythonFileENtNtB7_5table4Slot5memosCs8CpBcHC8tKo_21ruff_python_formatter(ptr nofree noundef readnone captures(ret: address, provenance) %0, i64 range(i64 1, 0) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsd_NtCs45bxiIjzMqg_5salsa8internedINtB5_5ValueNtCs56aZGHL6Dc6_7ruff_db10PythonFileENtNtB7_5table4Slot9memos_mutCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias nofree noundef readnone align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeuENtNtCscdodAO9FK5_5alloc5alloc6GlobalECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = shl i64 %.val1, 3
  %i.d = icmp slt i64 %.val1, 2305843009213693950
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeuENtNtCscdodAO9FK5_5alloc5alloc6GlobalECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub nuw nsw i64 -16, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #26
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeuENtNtCscdodAO9FK5_5alloc5alloc6GlobalECs8CpBcHC8tKo_21ruff_python_formatter.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeuENtNtCscdodAO9FK5_5alloc5alloc6GlobalECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.a, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedBP_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1003, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedB1d_ENtNtCscdodAO9FK5_5alloc5alloc6GlobalECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1005, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedB1a_EECs8CpBcHC8tKo_21ruff_python_formatter.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1005, !nonnull !3, !noundef !3 ; 3 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !1006
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedBC_EECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i, %bb.c
  %.sroa.05.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedBC_EECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedBC_EECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i ] ; 2 uses
  %.sroa.86.015.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedBC_EECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedBC_EECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedBV_EE9next_implKb0_ECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.017.i.i, %bb.d ]
  %.val810.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !1007
  %i.m = icmp sgt <16 x i8> %.val810.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedBV_EE9next_implKb0_ECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedBV_EE9next_implKb0_ECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.017.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [32 x i8], ptr %.sroa.05.1.i.i, i64 %i.t ; 3 uses
  %i.v = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1012, !noalias !1005, !nonnull !3, !noundef !3 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !noalias !1013, !noundef !3
  %i.z = add i64 %i.y, -1                         ; 2 uses
  store i64 %i.z, ptr %i.x, align 8, !noalias !1013
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i

bb.e:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedBV_EE9next_implKb0_ECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcSNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementE9drop_slowBH_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i unwind label %bb.f, !noalias !1005

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = getelementptr inbounds i8, ptr %i.u, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !1017, !noalias !1005, !nonnull !3, !noundef !3 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !1018, !noundef !3
  %i.af = add i64 %i.ae, -1                       ; 2 uses
  store i64 %i.af, ptr %i.ad, align 8, !noalias !1018
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedECs8CpBcHC8tKo_21ruff_python_formatter.exit2.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcSNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementE9drop_slowBH_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedECs8CpBcHC8tKo_21ruff_python_formatter.exit2.i.i.i unwind label %bb.i, !noalias !1005

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i: ; preds = %bb.e, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedBV_EE9next_implKb0_ECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.u, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !1022, !noalias !1005, !nonnull !3, !noundef !3 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !1023, !noundef !3
  %i.ak = add i64 %i.aj, -1                       ; 2 uses
  store i64 %i.ak, ptr %i.ai, align 8, !noalias !1023
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedBC_EECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i
  tail call void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcSNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementE9drop_slowBH_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ah), !noalias !1005
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedBC_EECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1005
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedECs8CpBcHC8tKo_21ruff_python_formatter.exit2.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.ab

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedBC_EECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i: ; preds = %bb.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i
  %i.an = icmp eq i64 %i.v, 0
  br i1 %i.an, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedB1a_EECs8CpBcHC8tKo_21ruff_python_formatter.exit.i, label %bb.d

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedB1a_EECs8CpBcHC8tKo_21ruff_python_formatter.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedBC_EECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i, %bb.b
  %i.ao = shl i64 %i.b, 5                         ; 2 uses
  %i.ap = add i64 %i.ao, 32                       ; 2 uses
  %i.aq = add i64 %i.b, 17
  %i.ar = add i64 %i.aq, %i.ap                    ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as)
  tail call void @llvm.assume(i1 %i.at)
  %i.au = icmp eq i64 %i.ar, 0
  br i1 %i.au, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedB1d_ENtNtCscdodAO9FK5_5alloc5alloc6GlobalECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %bb.j

bb.j:                                             ; preds = %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedB1a_EECs8CpBcHC8tKo_21ruff_python_formatter.exit.i
  %i.av = load ptr, ptr %0, align 8, !alias.scope !1003, !nonnull !3, !noundef !3
  %i.aw = sub nuw nsw i64 -32, %i.ao
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.aw
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !1003
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedB1d_ENtNtCscdodAO9FK5_5alloc5alloc6GlobalECs8CpBcHC8tKo_21ruff_python_formatter.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedB1d_ENtNtCscdodAO9FK5_5alloc5alloc6GlobalECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.a, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedB1a_EECs8CpBcHC8tKo_21ruff_python_formatter.exit.i, %bb.j
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8node_key18NodeRefEqualityKeyNtNtBT_3map5EntryEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1032, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8node_key18NodeRefEqualityKeyNtNtB1h_3map5EntryENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1j_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1034, !noundef !3
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8node_key18NodeRefEqualityKeyNtNtB1e_3map5EntryEEB1g_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1034, !nonnull !3, !noundef !3 ; 2 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !1035
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.i = bitcast <16 x i1> %i.h to i16
  %.not12.i.i.i.a = icmp eq i16 %i.i, 0
  br i1 %.not12.i.i.i.a, label %.lr.ph.i.i.i.a, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8node_key18NodeRefEqualityKeyNtNtB1e_3map5EntryEEB1g_.exit.i

.lr.ph.i.i.i.a:                                   ; preds = %bb.c, %.lr.ph.i.i.i.a
  %.pn.i.i = phi ptr [ %1, %.lr.ph.i.i.i.a ], [ %i.g, %bb.c ]
  %1 = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16 ; 2 uses
  %.val810.i.i.i = load <16 x i8>, ptr %1, align 16, !noalias !1036
  %2 = icmp sgt <16 x i8> %.val810.i.i.i, splat (i8 -1)
  %.cast.i.i.i.a = bitcast <16 x i1> %2 to i16
  %.not.i.i.i.a = icmp eq i16 %.cast.i.i.i.a, 0
  br i1 %.not.i.i.i.a, label %.lr.ph.i.i.i.a, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8node_key18NodeRefEqualityKeyNtNtB1e_3map5EntryEEB1g_.exit.i

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8node_key18NodeRefEqualityKeyNtNtB1e_3map5EntryEEB1g_.exit.i: ; preds = %.lr.ph.i.i.i.a, %bb.c, %bb.b
  %i.j = shl i64 %i.b, 5                          ; 2 uses
  %i.k = add i64 %i.j, 32                         ; 2 uses
  %i.l = add i64 %i.b, 17
  %i.m = add i64 %i.l, %i.k                       ; 4 uses
  %i.n = icmp uge i64 %i.m, %i.k
  %i.o = icmp ult i64 %i.m, 9223372036854775793
  tail call void @llvm.assume(i1 %i.n)
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8node_key18NodeRefEqualityKeyNtNtB1h_3map5EntryENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1j_.exit, label %bb.d

bb.d:                                             ; preds = %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8node_key18NodeRefEqualityKeyNtNtB1e_3map5EntryEEB1g_.exit.i
  %i.q = load ptr, ptr %0, align 8, !alias.scope !1032, !nonnull !3, !noundef !3
  %i.r = sub nuw nsw i64 -32, %i.j
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !1032
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8node_key18NodeRefEqualityKeyNtNtB1h_3map5EntryENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1j_.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8node_key18NodeRefEqualityKeyNtNtB1h_3map5EntryENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1j_.exit: ; preds = %bb.a, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8node_key18NodeRefEqualityKeyNtNtB1e_3map5EntryEEB1g_.exit.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBX_6hybrid2id11LazyStateIDEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1053, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCscdodAO9FK5_5alloc5alloc6GlobalECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1055, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1055, !nonnull !3, !noundef !3 ; 3 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !1056
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val810.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !1057
  %i.m = icmp sgt <16 x i8> %.val810.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1062, !noalias !1055, !nonnull !3, !noundef !3
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !1063
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i

bb.e:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w), !noalias !1055
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i: ; preds = %bb.e, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i
  %i.aa = icmp eq i64 %i.v, 0
  br i1 %i.aa, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i, label %bb.d

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i, %bb.b
  %i.ab = mul i64 %i.b, 24
  %i.ac = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = and i64 %i.ab, -16                      ; 2 uses
  %i.ae = add i64 %i.ad, 32                       ; 2 uses
  %i.af = add nsw i64 %i.b, 17
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae
  %i.ai = icmp ult i64 %i.ag, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCscdodAO9FK5_5alloc5alloc6GlobalECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i
  %i.ak = load ptr, ptr %0, align 8, !alias.scope !1053, !nonnull !3, !noundef !3
  %i.al = sub i64 -32, %i.ad
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !1053
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCscdodAO9FK5_5alloc5alloc6GlobalECs8CpBcHC8tKo_21ruff_python_formatter.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCscdodAO9FK5_5alloc5alloc6GlobalECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.a, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8node_key18NodeRefEqualityKeyNtNtBZ_3map5EntryEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B2e_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceB11_(ptr nofree readonly captures(none) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNKINvMNtCs45bxiIjzMqg_5salsa5tableNtBa_10SlotVTable2ofINtNtBc_8interned5ValueNtCs56aZGHL6Dc6_7ruff_db10PythonFileEE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOujRNtNtBa_4memo14MemoTableTypesEE9call_onceCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1069, !nonnull !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1069
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.e
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %exitcond.not.i11 = icmp eq i64 %1, 0
  br i1 %exitcond.not.i11, label %_RNCNKINvMNtCs45bxiIjzMqg_5salsa5tableNtB7_10SlotVTable2ofINtNtB9_8interned5ValueNtCs56aZGHL6Dc6_7ruff_db10PythonFileEE00Cs8CpBcHC8tKo_21ruff_python_formatter.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa8interned5ValueNtCs56aZGHL6Dc6_7ruff_db10PythonFileEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i: ; preds = %.loopexit2.i
  %exitcond.not.i = icmp eq i64 %i.g, %1
  br i1 %exitcond.not.i, label %_RNCNKINvMNtCs45bxiIjzMqg_5salsa5tableNtB7_10SlotVTable2ofINtNtB9_8interned5ValueNtCs56aZGHL6Dc6_7ruff_db10PythonFileEE00Cs8CpBcHC8tKo_21ruff_python_formatter.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa8interned5ValueNtCs56aZGHL6Dc6_7ruff_db10PythonFileEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i
  %.sroa.01.0.i12 = phi i64 [ %i.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa8interned5ValueNtCs56aZGHL6Dc6_7ruff_db10PythonFileEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i ], [ 0, %bb.a ] ; 3 uses
  %i.g = add nuw nsw i64 %.sroa.01.0.i12, 1       ; 2 uses
  %exitcond16.not.i = icmp eq i64 %.sroa.01.0.i12, 128
  br i1 %exitcond16.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 128, i64 noundef 128, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #27
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1069

.loopexit.i:                                      ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.loopexit2.i, %bb.d
  %lpad.loopexit3.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.b
  %lpad.loopexit.split-lp4.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.01.0.i12 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1069
  %.val.i.i = load ptr, ptr %i.i, align 8, !noalias !1069, !noundef !3 ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 40
  %.val3.i.i = load i64, ptr %i.j, align 8, !noalias !1069
  %i.k = icmp eq ptr %.val.i.i, null              ; 2 uses
  %.sroa.4.0.i.i.i = select i1 %i.k, i64 0, i64 %.val3.i.i
  %.sroa.0.0.i.i.i = select i1 %i.k, ptr inttoptr (i64 8 to ptr), ptr %.val.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3zipINtNtNtB8_5slice4iter4IterNtNtNtCs45bxiIjzMqg_5salsa5table4memo13MemoEntryTypeEINtBQ_7IterMutNtB1f_9MemoEntryEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %.sroa.0.0.i.i.i, ptr noundef nonnull %i.l)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1069

.noexc.i:                                         ; preds = %bb.d
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !noalias !1069 ; 2 uses
  %.sroa.41.0.copyload.i.i = load ptr, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !noalias !1069 ; 2 uses
  %.sroa.52.0.copyload.i.i = load i64, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !noalias !1069 ; 2 uses
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1069 ; 2 uses
  %i.m = icmp ult i64 %.sroa.52.0.copyload.i.i, %.sroa.7.0.copyload.i.i
  br i1 %i.m, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs45bxiIjzMqg_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit.lr.ph.i.i, label %.loopexit2.i

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs45bxiIjzMqg_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit.lr.ph.i.i: ; preds = %.noexc.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
end_hunk_0
