Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_expand-f280addaac0e5f6d.hir_expand.23a55d86e4a77d82-cgu.14?download=true
inline.NumInlined: 1049
inline.NumDeleted: 375
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RNvXs0_NtNtNtCsbSS6DM8SDEO_5alloc11collections9vec_deque11spec_extendINtB7_8VecDequeNtCs4dcH4YgJDq_2tt4LeafEINtB5_10SpecExtendB1k_INtNtNtBb_3vec9into_iter8IntoIterB1k_EE11spec_extendCs33K2ylI4knu_10hir_expand:bb.a
  %i.ae = load i64, ptr %i.e, align 8, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !5
  %i.ah = add i64 %i.ag, %i.ae                    ; 2 uses
  %i.ai = load i64, ptr %0, align 8, !range !21, !noundef !5 ; 3 uses
  %.not = icmp ult i64 %i.ah, %i.ai
  %i.aj = select i1 %.not, i64 0, i64 %i.ai
  %.sroa.0.0 = sub nuw i64 %i.ah, %i.aj           ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val7 = load ptr, ptr %i.ak, align 8           ; 5 uses
  %i.al = sub i64 %i.ai, %.sroa.0.0               ; 4 uses
  %.not.i = icmp ugt i64 %i.d, %i.al
  br i1 %.not.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs4dcH4YgJDq_2tt4Leaf8split_atCs33K2ylI4knu_10hir_expand.exit.i, label %bb.k

_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs4dcH4YgJDq_2tt4Leaf8split_atCs33K2ylI4knu_10hir_expand.exit.i: ; preds = %_RNvMs4_NtNtCsbSS6DM8SDEO_5alloc11collections9vec_dequeINtB5_8VecDequeNtCs4dcH4YgJDq_2tt4LeafE7reserveCs33K2ylI4knu_10hir_expand.exit
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %i.al
  %i.an = sub nuw nsw i64 %i.d, %i.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7) ]
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %.val7, i64 %.sroa.0.0
  %i.ap = mul nuw nsw i64 %i.al, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr nonnull readonly align 8 %i.c, i64 %i.ap, i1 false)
  %i.aq = mul nuw nsw i64 %i.an, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.val7, ptr nonnull readonly align 8 %i.am, i64 %i.aq, i1 false)
  br label %_RNvMs2_NtNtCsbSS6DM8SDEO_5alloc11collections9vec_dequeINtB5_8VecDequeNtCs4dcH4YgJDq_2tt4LeafE10copy_sliceCs33K2ylI4knu_10hir_expand.exit

bb.k:                                             ; preds = %_RNvMs4_NtNtCsbSS6DM8SDEO_5alloc11collections9vec_dequeINtB5_8VecDequeNtCs4dcH4YgJDq_2tt4LeafE7reserveCs33K2ylI4knu_10hir_expand.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7) ]
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %.val7, i64 %.sroa.0.0
  %i.as = mul nuw nsw i64 %i.d, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr nonnull readonly align 8 %i.c, i64 %i.as, i1 false)
  br label %_RNvMs2_NtNtCsbSS6DM8SDEO_5alloc11collections9vec_dequeINtB5_8VecDequeNtCs4dcH4YgJDq_2tt4LeafE10copy_sliceCs33K2ylI4knu_10hir_expand.exit

_RNvMs2_NtNtCsbSS6DM8SDEO_5alloc11collections9vec_dequeINtB5_8VecDequeNtCs4dcH4YgJDq_2tt4LeafE10copy_sliceCs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.k, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs4dcH4YgJDq_2tt4Leaf8split_atCs33K2ylI4knu_10hir_expand.exit.i
  %i.at = load i64, ptr %i.e, align 8, !noundef !5
  %i.au = add i64 %i.at, %i.d
  store i64 %i.au, ptr %i.e, align 8
  %i.av = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.ax, ptr %i.a, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.av, ptr %i.ay, align 8
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs4dcH4YgJDq_2tt4LeafENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs4dcH4YgJDq_2tt4LeafEECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.l
  resume { ptr, i32 } %lpad.thr_comm

bb.l:                                             ; preds = %bb.d, %bb.j, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs4dcH4YgJDq_2tt4LeafENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs4dcH4YgJDq_2tt4LeafEECs33K2ylI4knu_10hir_expand.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdENtB6_5Debug3fmtB18_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !15, !noundef !5
  %.val = load ptr, ptr %i.a, align 8, !alias.scope !1577, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load i64, ptr %.val, align 8, !noalias !1578, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.b, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsqiF3OZxLbD_3mbe16macro_call_style15MacroCallStylesNtB6_5Debug3fmtCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1582
  store ptr %i.b, ptr %i.a, align 8, !noalias !1582
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1582
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %.val = load i8, ptr %i.a, align 1, !range !1583, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs33K2ylI4knu_10hir_expand, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs33K2ylI4knu_10hir_expand.191, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNvNtCsqiF3OZxLbD_3mbe16macro_call_style1__16InternalBitFlagsNtB6_5Debug3fmtCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXsb_NvNtCsqiF3OZxLbD_3mbe16macro_call_style1__NtB5_16InternalBitFlagsNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCs39E2wp1vf7X_6intern6symbol6SymbolNtB6_7Display3fmtCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !15, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs5_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsC_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_11RawIntoIterTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB2M_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1588)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1588, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMso_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_7RawIterTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE13drop_elementsB2H_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted = load i16, ptr %i.e, align 8, !alias.scope !1589
  br label %bb.b

bb.b:                                             ; preds = %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_EB2O_.exit.i, %.preheader.i
  %i.g = phi i16 [ %.promoted, %.preheader.i ], [ %i.r, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_EB2O_.exit.i ] ; 2 uses
  %i.h = phi i64 [ %i.c, %.preheader.i ], [ %i.u, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_EB2O_.exit.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1590)
  %.not11.i.i = icmp eq i16 %i.g, 0
  %.promoted.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1589 ; 2 uses
  br i1 %.not11.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_EB2O_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %.promoted13.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1589
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !1589
  store ptr %i.l, ptr %i.a, align 8, !alias.scope !1589
  br label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_EB2O_.exit.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.i = phi ptr [ %.promoted13.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.j = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.l, %bb.c ]
  %.val79.i.i = load <16 x i8>, ptr %i.i, align 16, !noalias !1589
  %i.k = icmp sgt <16 x i8> %.val79.i.i, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -256 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.k to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %bb.c, label %._crit_edge.i.i

_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_EB2O_.exit.i: ; preds = %bb.b, %._crit_edge.i.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i.i ], [ %.promoted.i.i, %bb.b ]
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i.i                ; 2 uses
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !1589
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.h, -1                         ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !alias.scope !1588
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -8
  tail call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosE10drop_innerBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v), !noalias !1588
  %.old3.i = icmp eq i64 %i.u, 0
  br i1 %.old3.i, label %_RNvMso_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_7RawIterTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE13drop_elementsB2H_.exit, label %bb.b

_RNvMso_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_7RawIterTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE13drop_elementsB2H_.exit: ; preds = %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_EB2O_.exit.i, %bb.a
  %i.w = load i64, ptr %0, align 8, !range !17, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMso_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_7RawIterTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE13drop_elementsB2H_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noundef !5 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.w) #36
  br label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.e, %bb.d, %_RNvMso_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_7RawIterTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE13drop_elementsB2H_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterB2G_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.02.0.copyload = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8 ; 5 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.55.0.copyload = load i64, ptr %.sroa.55.0..sroa_idx, align 8
  %.val13.i.i = load <16 x i8>, ptr %.sroa.02.0.copyload, align 16, !noalias !1596
  %i.a = icmp eq i64 %.sroa.43.0.copyload, 0
  br i1 %i.a, label %_RNvXsh_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterB2I_.exit, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %2 = icmp slt i64 %.sroa.43.0.copyload, 1152921504606846975
  tail call void @llvm.assume(i1 %2)
  %i.b = shl i64 %.sroa.43.0.copyload, 4          ; 2 uses
  %3 = add i64 %i.b, 16                           ; 2 uses
  %4 = add nsw i64 %.sroa.43.0.copyload, 17
  %i.c = add i64 %4, %3                           ; 3 uses
  %5 = icmp uge i64 %i.c, %3
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.c, 9223372036854775793
  tail call void @llvm.assume(i1 %6)
  %i.d = sub nuw nsw i64 -16, %i.b
  %i.e = getelementptr inbounds i8, ptr %.sroa.02.0.copyload, i64 %i.d
  br label %_RNvXsh_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterB2I_.exit

_RNvXsh_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterB2I_.exit: ; preds = %bb.a, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.511.0.i = phi ptr [ undef, %bb.a ], [ %i.e, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %.sroa.410.0.i = phi i64 [ undef, %bb.a ], [ %i.c, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %.sink.i.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 16
  %i.g = icmp sgt <16 x i8> %.val13.i.i, splat (i8 -1)
  %i.h = getelementptr i8, ptr %.sroa.02.0.copyload, i64 %.sroa.43.0.copyload
  %i.i = getelementptr i8, ptr %i.h, i64 1
  store i64 %.sink.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.02.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.f, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.g, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.55.0.copyload, ptr %.sroa.101.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { i32, ptr } @_RNvXsE_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_11RawIntoIterTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2M_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1599)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !1599, !noundef !5 ; 2 uses
  %.not11.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !1599 ; 2 uses
  br i1 %.not11.i, label %.lr.ph.i, label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_EB2O_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted13.i = load ptr, ptr %i.g, align 8, !alias.scope !1599
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.l, ptr %i.g, align 8, !alias.scope !1599
  store ptr %i.k, ptr %i.d, align 8, !alias.scope !1599
  br label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_EB2O_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted13.i, %.lr.ph.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.k, %bb.c ]
  %.val79.i = load <16 x i8>, ptr %i.h, align 16, !noalias !1599
  %i.j = icmp sgt <16 x i8> %.val79.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -256 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.j to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_EB2O_.exit: ; preds = %bb.b, %._crit_edge.i
  %i.m = phi ptr [ %i.k, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.n = add i16 %.lcssa.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i
  store i16 %i.q, ptr %i.e, align 8, !alias.scope !1599
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.r ; 2 uses
  %i.t = add i64 %i.b, -1
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.v = load i32, ptr %i.u, align 8, !noundef !5
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_EB2O_.exit
  %.sroa.2.0 = phi ptr [ %i.x, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_EB2O_.exit ], [ null, %bb.a ]
  %.sroa.0.0 = phi i32 [ %i.v, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_EB2O_.exit ], [ undef, %bb.a ]
  %i.y = insertvalue { i32, ptr } poison, i32 %.sroa.0.0, 0
  %i.z = insertvalue { i32, ptr } %i.y, ptr %.sroa.2.0, 1
  ret { i32, ptr } %i.z
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtNtCsgIpRO4v45SJ_7base_db5input5CrateINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB20_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1602)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !alias.scope !1602, !noundef !5 ; 2 uses
  %.not11.i = icmp eq i16 %i.e, 0
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !1602 ; 2 uses
  br i1 %.not11.i, label %.lr.ph.i, label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgIpRO4v45SJ_7base_db5input5CrateINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_EB2b_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted13.i = load ptr, ptr %i.f, align 8, !alias.scope !1602
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.k, ptr %i.f, align 8, !alias.scope !1602
  store ptr %i.j, ptr %0, align 8, !alias.scope !1602
  br label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgIpRO4v45SJ_7base_db5input5CrateINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_EB2b_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted13.i, %.lr.ph.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.h = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.j, %bb.c ]
  %.val79.i = load <16 x i8>, ptr %i.g, align 16, !noalias !1602
  %i.i = icmp sgt <16 x i8> %.val79.i, splat (i8 -1)
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -256 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.i to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgIpRO4v45SJ_7base_db5input5CrateINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_EB2b_.exit: ; preds = %bb.b, %._crit_edge.i
  %i.l = phi ptr [ %i.j, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.m = add i16 %.lcssa.i, -1
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  %i.p = and i16 %i.m, %.lcssa.i
  store i16 %i.p, ptr %i.d, align 8, !alias.scope !1602
  %i.q = sub nsw i64 0, %i.o
  %i.r = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.q ; 2 uses
  %i.s = add i64 %i.b, -1
  store i64 %i.s, ptr %i.a, align 8
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -16
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 -8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgIpRO4v45SJ_7base_db5input5CrateINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_EB2b_.exit
  %.sroa.3.0 = phi ptr [ %i.u, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgIpRO4v45SJ_7base_db5input5CrateINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_EB2b_.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.t, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgIpRO4v45SJ_7base_db5input5CrateINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_EB2b_.exit ], [ null, %bb.a ]
  %i.v = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.w = insertvalue { ptr, ptr } %i.v, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.w
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtCs4dcH4YgJDq_2tt4LeafEj1_NtB4_11PartialDrop12partial_dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1607)
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtCs4dcH4YgJDq_2tt4LeafENtB2_11PartialDrop12partial_dropCs33K2ylI4knu_10hir_expand.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1608)
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXNtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtCs4dcH4YgJDq_2tt4LeafENtB2_11PartialDrop12partial_dropCs33K2ylI4knu_10hir_expand.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.sroa.0.0.i.i3 ; 2 uses
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i3, 1       ; 4 uses
  %.val8.i.i = load i32, ptr %i.e, align 8, !range !13, !alias.scope !1609, !noundef !5
  %i.g = getelementptr i8, ptr %i.e, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1609
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.val8.i.i, ptr %.val9.i.i)
          to label %bb.b unwind label %bb.e, !noalias !1609

bb.d:                                             ; preds = %.lr.ph5
  %i.h = add i64 %.sroa.0.1.i.i4, 1               ; 2 uses
  %i.i = icmp eq i64 %i.h, %i.b
  br i1 %i.i, label %._crit_edge, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp eq i64 %i.f, %i.b
  br i1 %i.k, label %._crit_edge, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i4 = phi i64 [ %i.h, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.sroa.0.1.i.i4 ; 2 uses
  %.val.i.i = load i32, ptr %i.l, align 8, !range !13, !alias.scope !1609, !noundef !5
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val7.i.i = load ptr, ptr %i.m, align 8, !alias.scope !1609
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.val.i.i, ptr %.val7.i.i) #34
end_hunk_0
