inline.NumInlined: 5547
inline.NumDeleted: 1701
begin_hunk_0_@_RINvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB6_9HeaderMap6insertNtNtB8_4name10HeaderNameECs7p2uQeJxui2_9deltalake:bb.a
bb.t:                                             ; preds = %.noexc12.i.i.i, %.lr.ph.i.i.i.i
  %lsr.iv = phi ptr [ %scevgep144, %.noexc12.i.i.i ], [ %scevgep, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.0.062.i.i.i.i = phi i64 [ %i.ci, %.lr.ph.i.i.i.i ], [ %i.gl, %.noexc12.i.i.i ] ; 10 uses
  %i.cy = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.dp, %.noexc12.i.i.i ] ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  %i.cz = getelementptr inbounds nuw [72 x i8], ptr %i.ck, i64 %.sroa.0.062.i.i.i.i ; 7 uses
  %i.da = load i64, ptr %i.cz, align 8, !range !3, !noalias !1634, !noundef !4
end_hunk_0
begin_hunk_1_@_RINvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB6_9HeaderMap6insertNtNtB8_4name10HeaderNameECs7p2uQeJxui2_9deltalake:bb.a
  br label %._crit_edge.i.invoke.i.i.i.loopexitsplit

.noexc12.i.i.i.._crit_edge.i.invoke.i.i.i.loopexitsplit_crit_edge: ; preds = %.noexc12.i.i.i
  %.lcssa150 = phi i64 [ %i.dp, %.noexc12.i.i.i ]
  br label %._crit_edge.i.invoke.i.i.i.loopexitsplit

._crit_edge.i.invoke.i.i.i.loopexitsplit:         ; preds = %._crit_edge.i.invoke.i.i.i.loopexitsplitsplit, %.noexc12.i.i.i.._crit_edge.i.invoke.i.i.i.loopexitsplit_crit_edge
  %.ph.ph = phi i64 [ %i.gl, %.noexc12.i.i.i.._crit_edge.i.invoke.i.i.i.loopexitsplit_crit_edge ], [ %.ph.ph.ph, %._crit_edge.i.invoke.i.i.i.loopexitsplitsplit ]
  %.ph123.ph = phi i64 [ %.lcssa150, %.noexc12.i.i.i.._crit_edge.i.invoke.i.i.i.loopexitsplit_crit_edge ], [ %.ph123.ph.ph, %._crit_edge.i.invoke.i.i.i.loopexitsplitsplit ]
  %.ph124.ph = phi ptr [ @35, %.noexc12.i.i.i.._crit_edge.i.invoke.i.i.i.loopexitsplit_crit_edge ], [ %.ph124.ph.ph, %._crit_edge.i.invoke.i.i.i.loopexitsplitsplit ]
  br label %._crit_edge.i.invoke.i.i.i.loopexit

.._crit_edge.i.invoke.i.i.i.loopexit_crit_edge:   ; preds = %bb.ac
  %.lcssa153 = phi i64 [ %i.cy, %bb.ac ]
  br label %._crit_edge.i.invoke.i.i.i.loopexit

._crit_edge.i.invoke.i.i.i.loopexit:              ; preds = %._crit_edge.i.invoke.i.i.i.loopexitsplit, %.._crit_edge.i.invoke.i.i.i.loopexit_crit_edge
  %.ph = phi i64 [ %i.dc, %.._crit_edge.i.invoke.i.i.i.loopexit_crit_edge ], [ %.ph.ph, %._crit_edge.i.invoke.i.i.i.loopexitsplit ]
  %.ph123 = phi i64 [ %.lcssa153, %.._crit_edge.i.invoke.i.i.i.loopexit_crit_edge ], [ %.ph123.ph, %._crit_edge.i.invoke.i.i.i.loopexitsplit ]
  %.ph124 = phi ptr [ @43, %.._crit_edge.i.invoke.i.i.i.loopexit_crit_edge ], [ %.ph124.ph, %._crit_edge.i.invoke.i.i.i.loopexitsplit ]
  br label %._crit_edge.i.invoke.i.i.i

._crit_edge.i.invoke.i.i.i:                       ; preds = %._crit_edge.i.invoke.i.i.i.loopexit, %bb.s
end_hunk_1
begin_hunk_2_@_RINvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB6_9HeaderMap6insertNtNtB8_4name10HeaderNameECs7p2uQeJxui2_9deltalake:bb.a
  %i.do = icmp ult i64 %i.cy, 128102389400760776
  call void @llvm.assume(i1 %i.do)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.cz, i64 72, i1 false), !noalias !1639
  %i.dp = add i64 %i.cy, -1                       ; 12 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cz, ptr noundef nonnull align 8 dereferenceable(72) %lsr.iv, i64 72, i1 false), !noalias !1640
  store i64 %i.dp, ptr %i.cl, align 8, !alias.scope !1642, !noalias !1643
  %i.dq = load i64, ptr %i.b, align 8, !range !3, !noalias !1635, !noundef !4
end_hunk_2
begin_hunk_3_@_RINvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB6_9HeaderMap6insertNtNtB8_4name10HeaderNameECs7p2uQeJxui2_9deltalake:bb.a

..invoke.i.i.i.i.i_crit_edge:                     ; preds = %bb.aq
  %.lcssa156 = phi i64 [ %i.cy, %bb.aq ]
  %i.ge = add i64 %.lcssa156, -1
  br label %.invoke.i.i.i.i.i

.invoke.i.i.i.i.i:                                ; preds = %.invoke.i.i.i.i.isplit, %..invoke.i.i.i.i.i_crit_edge
  %i.gf = phi i64 [ %i.ez, %..invoke.i.i.i.i.i_crit_edge ], [ %.ph141, %.invoke.i.i.i.i.isplit ]
  %i.gg = phi i64 [ %i.ge, %..invoke.i.i.i.i.i_crit_edge ], [ %.ph142, %.invoke.i.i.i.i.isplit ]
  %i.gh = phi ptr [ @48, %..invoke.i.i.i.i.i_crit_edge ], [ %.ph143, %.invoke.i.i.i.i.isplit ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.gf, i64 noundef %i.gg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gh) #43
          to label %.cont.i.i.i.i.i unwind label %bb.ap, !noalias !1634

end_hunk_3
begin_hunk_4_@_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap8try_growCs7p2uQeJxui2_9deltalake:bb.a

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %lsr.iv = phi i64 [ %.idx, %.lr.ph ], [ %lsr.iv.next, %bb.h ]
  %.sroa.7.049 = phi i64 [ 0, %.lr.ph ], [ %i.ap, %bb.h ] ; 5 uses
  %i.m = shl nuw i64 %.sroa.7.049, 2
  %scevgep68 = getelementptr i8, ptr %scevgep, i64 %i.m
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 -2
end_hunk_4
begin_hunk_5_@_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap8try_growCs7p2uQeJxui2_9deltalake:bb.a
  br i1 %.not24, label %bb.h, label %bb.g

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs4j34XAPZOn0_4http6header3map3PosEENtNtNtB8_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.loopexitsplit: ; preds = %bb.h
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs4j34XAPZOn0_4http6header3map3PosEENtNtNtB8_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.loopexit

._RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs4j34XAPZOn0_4http6header3map3PosEENtNtNtB8_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.loopexit_crit_edge: ; preds = %bb.g
  %.sroa.7.049.lcssa.a = phi i64 [ %.sroa.7.049, %bb.g ]
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs4j34XAPZOn0_4http6header3map3PosEENtNtNtB8_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.loopexit

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs4j34XAPZOn0_4http6header3map3PosEENtNtNtB8_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.loopexit: ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs4j34XAPZOn0_4http6header3map3PosEENtNtNtB8_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.loopexitsplit, %._RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs4j34XAPZOn0_4http6header3map3PosEENtNtNtB8_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.loopexit_crit_edge
  %.sroa.02.0.ph = phi i64 [ %.sroa.7.049.lcssa.a, %._RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs4j34XAPZOn0_4http6header3map3PosEENtNtNtB8_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.loopexit_crit_edge ], [ 0, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs4j34XAPZOn0_4http6header3map3PosEENtNtNtB8_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.loopexitsplit ]
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs4j34XAPZOn0_4http6header3map3PosEENtNtNtB8_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs4j34XAPZOn0_4http6header3map3PosEENtNtNtB8_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs4j34XAPZOn0_4http6header3map3PosEENtNtNtB8_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.loopexit, %bb.b
end_hunk_5
