inline.NumInlined: 5997
inline.NumDeleted: 1809
begin_hunk_0_@_RNvXs0_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB5_13UnaryOperatorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt:switch.lookup
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace12id_generatorNtB5_17RandomIdGeneratorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #9 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 17, ptr noalias noundef nonnull readonly captures(address, read_provenance) @165, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @163)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_optionsNtB5_15KeyValueOptionsNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #9 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef 7, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166, ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @167)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtB9_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEENCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB3q_8Snapshot12commit_infos0s0_0EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable sret([256 x i8]) align 16 captures(none) dereferenceable(256) %0, ptr noalias noundef align 8 dereferenceable(128) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i.i = alloca [256 x i8], align 16    ; 4 uses
  %.sroa.0.i.i.i.i.i = alloca [272 x i8], align 16 ; 5 uses
  %i.a = alloca [272 x i8], align 16              ; 6 uses
  %i.b = alloca [272 x i8], align 16              ; 10 uses
  %i.c = alloca [272 x i8], align 16              ; 9 uses
  %.sroa.4.i = alloca [264 x i8], align 8         ; 6 uses
  %i.d = alloca [912 x i8], align 8               ; 5 uses
  %i.e = alloca [912 x i8], align 8               ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.i = tail call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2b_8Snapshot12commit_infos0s0_00EE28atomic_load_head_and_len_allCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.h)
  %i.j = extractvalue { ptr, i64 } %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !19 ; 3 uses
  %i.m = icmp ult i64 %i.l, 33909456017848441
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add i64 %i.j, %i.l
  %i.o = load i64, ptr %i.g, align 8, !noundef !19
  %i.p = icmp ult i64 %i.n, %i.o
  br i1 %i.p, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 904
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB9_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEENCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB3i_8Snapshot12commit_infos0s0_0EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([912 x i8]) align 8 captures(address) dereferenceable(912) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.t = load i64, ptr %i.e, align 8, !range !644, !noundef !19
  %i.u = and i64 %i.t, 1
  %or.cond.not = icmp eq i64 %i.u, 0
  br i1 %or.cond.not, label %bb.s, label %bb.t

.loopexit:                                        ; preds = %bb.t, %bb.a, %bb.s
  %i.v = phi i64 [ %.pre, %bb.s ], [ %i.l, %bb.a ], [ %i.cx, %bb.t ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15873)
  call void @llvm.experimental.noalias.scope.decl(metadata !15876)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.w = icmp ult i64 %i.v, 33909456017848441
  call void @llvm.assume(i1 %i.w)
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3G_6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !15876, !noalias !15878, !nonnull !19, !noundef !19 ; 14 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 256
  %i.ab = load i64, ptr %i.aa, align 16, !noalias !15880, !noundef !19 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !15876, !noalias !15878, !noundef !19
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3G_6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3G_6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.c, %.loopexit
  call void @_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2b_8Snapshot12commit_infos0s0_00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([272 x i8]) align 16 captures(none) dereferenceable(272) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !15873
  %i.af = load i64, ptr %i.c, align 16, !range !3928, !noalias !15880, !noundef !19 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 5
  br i1 %i.ag, label %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1u_8Snapshot12commit_infos0s0_00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3G_6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.3.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.ak = add i64 %i.ab, 1
  store i64 %i.ak, ptr %i.ac, align 8, !alias.scope !15876, !noalias !15878
  call void @llvm.experimental.noalias.scope.decl(metadata !15881)
  call void @llvm.experimental.noalias.scope.decl(metadata !15884)
  %i.al = add nsw i64 %i.v, -1                    ; 8 uses
  store i64 %i.al, ptr %i.k, align 8, !alias.scope !15887, !noalias !15888
  %i.am = load i64, ptr %1, align 8, !range !45, !alias.scope !15887, !noalias !15888, !noundef !19
  %i.an = icmp samesign ult i64 %i.al, %i.am
  call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw [272 x i8], ptr %i.z, i64 %i.al ; 2 uses
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.ao, align 16, !noalias !15891 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.57.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.57.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.4.0..sroa_idx.i.i.i, i64 264, i1 false), !noalias !15891
  store i64 %.sroa.05.0.copyload.i.i.i, ptr %i.a, align 16, !noalias !15891
  %i.ap = icmp eq i64 %i.al, 0
  br i1 %i.ap, label %_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2n_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3p_6errors15DeltaTableErrorEEE3popCs7p2uQeJxui2_9deltalake.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 16 dereferenceable(272) %i.a, ptr noundef nonnull %i.z, i64 noundef 34)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB31_6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i unwind label %bb.f, !noalias !15892

bb.f:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #49, !noalias !15892
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB31_6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(272) %i.z, i64 272, i1 false), !noalias !15895
  %i.ar = call i64 @llvm.usub.sat.i64(i64 %i.al, i64 2)
  %.not.not8.i.i.i.i.i = icmp samesign ult i64 %i.v, 4
  br i1 %.not.not8.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB31_6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %.sroa.12.0.lcssa.i.i.i.i.i = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB31_6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.bn, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i.i.i = phi i64 [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB31_6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.br, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.as = add nsw i64 %i.v, -2
  %i.at = icmp eq i64 %.sroa.05.0.lcssa.i.i.i.i.i, %i.as
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.au = getelementptr inbounds nuw [272 x i8], ptr %i.z, i64 %.sroa.05.0.lcssa.i.i.i.i.i
  %i.av = getelementptr inbounds nuw [272 x i8], ptr %i.z, i64 %.sroa.12.0.lcssa.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.av, ptr noundef nonnull align 16 dereferenceable(272) %i.au, i64 272, i1 false), !noalias !15895
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i
  %.sroa.12.1.i.i.i.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i.i.i.i, %bb.g ], [ %.sroa.12.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [272 x i8], ptr %i.z, i64 %.sroa.12.1.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.aw, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.0.i.i.i.i.i, i64 272, i1 false), !noalias !15895
  %i.ax = icmp samesign ult i64 %.sroa.12.1.i.i.i.i.i, %i.al
  call void @llvm.assume(i1 %i.ax)
  %.sroa.423.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 256 ; 2 uses
  %i.ay = load <2 x i64>, ptr %.sroa.423.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !15895
  %.sroa.423.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.423.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !15895
  %.not26.i.i.i.i.i.i = icmp eq i64 %.sroa.12.1.i.i.i.i.i, 0
  br i1 %.not26.i.i.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE19sift_down_to_bottomCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %bb.i
  %.sroa.13.027.i.i.i.i.i.i = phi i64 [ %i.ba, %bb.i ], [ %.sroa.12.1.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.az = add nsw i64 %.sroa.13.027.i.i.i.i.i.i, -1
  %i.ba = lshr i64 %i.az, 1                       ; 4 uses
  %i.bb = icmp samesign ult i64 %i.ba, %i.al
  call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw [272 x i8], ptr %i.z, i64 %i.ba ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 256
  %.val1.i.i.i.i.i.i = load i64, ptr %i.bd, align 16, !noalias !15895, !noundef !19
  %.not25.i.i.i.i.i.i = icmp sgt i64 %.val1.i.i.i.i.i.i, %.sroa.423.0.copyload.i.i.i.i.i.i
  br i1 %.not25.i.i.i.i.i.i, label %bb.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE19sift_down_to_bottomCs7p2uQeJxui2_9deltalake.exit.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.be = getelementptr inbounds nuw [272 x i8], ptr %i.z, i64 %.sroa.13.027.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.be, ptr noundef nonnull align 16 dereferenceable(272) %i.bc, i64 272, i1 false), !noalias !15895
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE19sift_down_to_bottomCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB31_6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.05.010.i.i.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i.i.i ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB31_6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ] ; 3 uses
  %.sroa.12.09.i.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.i ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB31_6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ]
  %i.bf = getelementptr inbounds nuw [272 x i8], ptr %i.z, i64 %.sroa.05.010.i.i.i.i.i
  %i.bg = add nuw nsw i64 %.sroa.05.010.i.i.i.i.i, 1 ; 2 uses
  %i.bh = icmp samesign ult i64 %i.bg, %i.al
  call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw [272 x i8], ptr %i.z, i64 %i.bg
  %i.bj = getelementptr i8, ptr %i.bf, i64 256
  %.val.i.i.i.i.i = load i64, ptr %i.bj, align 16, !noalias !15895, !noundef !19
  %i.bk = getelementptr i8, ptr %i.bi, i64 256
  %.val17.i.i.i.i.i = load i64, ptr %i.bk, align 16, !noalias !15895, !noundef !19
  %i.bl = icmp sle i64 %.val17.i.i.i.i.i, %.val.i.i.i.i.i
  %i.bm = zext i1 %i.bl to i64
  %i.bn = add nuw nsw i64 %.sroa.05.010.i.i.i.i.i, %i.bm ; 4 uses
  %i.bo = getelementptr inbounds nuw [272 x i8], ptr %i.z, i64 %i.bn
  %i.bp = getelementptr inbounds nuw [272 x i8], ptr %i.z, i64 %.sroa.12.09.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.bp, ptr noundef nonnull align 16 dereferenceable(272) %i.bo, i64 272, i1 false), !noalias !15895
  %i.bq = shl nuw nsw i64 %i.bn, 1                ; 2 uses
  %i.br = or disjoint i64 %i.bq, 1                ; 2 uses
  %.not.not.not.i.i.i.i.i = icmp samesign ult i64 %i.bq, %i.ar
  br i1 %.not.not.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE19sift_down_to_bottomCs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i, %bb.h
  %.sroa.13.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.sroa.13.027.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.i ]
  %i.bs = getelementptr inbounds nuw [272 x i8], ptr %i.z, i64 %.sroa.13.0.lcssa.i.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.bs, ptr noundef nonnull align 16 dereferenceable(256) %.sroa.0.i.i.i.i.i, i64 256, i1 false), !noalias !15895
  %.sroa.5.0..sroa_idx1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 256
  store <2 x i64> %i.ay, ptr %.sroa.5.0..sroa_idx1.i.i.i.i.i.i, align 16, !noalias !15895
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  %.sroa.012.0.copyload13.pre.i.i = load i64, ptr %i.a, align 16, !noalias !15897
  br label %_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2n_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3p_6errors15DeltaTableErrorEEE3popCs7p2uQeJxui2_9deltalake.exit.i

_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2n_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3p_6errors15DeltaTableErrorEEE3popCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE19sift_down_to_bottomCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %bb.d
  %.sroa.012.0.copyload13.i.i = phi i64 [ %.sroa.012.0.copyload13.pre.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE19sift_down_to_bottomCs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %.sroa.05.0.copyload.i.i.i, %bb.d ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.57.0..sroa_idx.i.i.i, i64 264, i1 false), !noalias !15880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15891
  %i.bt = icmp ne i64 %.sroa.012.0.copyload13.i.i, 4
  call void @llvm.assume(i1 %i.bt)
  store i64 %.sroa.012.0.copyload13.i.i, ptr %0, align 16, !alias.scope !15873, !noalias !15898
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.414.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.4.i, i64 248, i1 false), !noalias !15898
  br label %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1u_8Snapshot12commit_infos0s0_00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake.exit

_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1u_8Snapshot12commit_infos0s0_00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3G_6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  br label %.sink.split

bb.j:                                             ; preds = %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit.i, %.lr.ph.i
  %i.bu = phi i64 [ %i.af, %.lr.ph.i ], [ %i.cp, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit.i ] ; 2 uses
  %.not.i = icmp eq i64 %i.bu, 4
  br i1 %.not.i, label %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1u_8Snapshot12commit_infos0s0_00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake.exit.thread6, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %i.bu, ptr %i.b, align 16, !noalias !15880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.3.0..sroa_idx4.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.3.0..sroa_idx.i, i64 264, i1 false), !noalias !15880
  %i.bv = load i64, ptr %i.ah, align 16, !noalias !15880, !noundef !19 ; 2 uses
  %i.bw = load i64, ptr %i.ai, align 8, !alias.scope !15876, !noalias !15878, !noundef !19
  %i.bx = icmp eq i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.r, label %bb.l

_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1u_8Snapshot12commit_infos0s0_00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake.exit.thread6: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  br label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.by = load i64, ptr %i.k, align 8, !alias.scope !15899, !noalias !15902, !noundef !19 ; 8 uses
  %i.bz = icmp ult i64 %i.by, 33909456017848441
  call void @llvm.assume(i1 %i.bz)
  %i.ca = load i64, ptr %1, align 8, !range !45, !alias.scope !15904, !noalias !15907, !noundef !19
  %i.cb = icmp eq i64 %i.by, %i.ca
  br i1 %i.cb, label %bb.m, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1V_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB2X_6errors15DeltaTableErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB22_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB34_6errors15DeltaTableErrorEEE8grow_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1V_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB2X_6errors15DeltaTableErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.n, !noalias !15909

bb.n:                                             ; preds = %bb.m
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB2H_6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(272) %i.b) #48
          to label %bb.p unwind label %bb.o, !noalias !15873

bb.o:                                             ; preds = %bb.n
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !15873
  unreachable

bb.p:                                             ; preds = %bb.n
  resume { ptr, i32 } %i.cc

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1V_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB2X_6errors15DeltaTableErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.m, %bb.l
  %i.ce = load ptr, ptr %i.aj, align 8, !alias.scope !15904, !noalias !15907, !nonnull !19, !noundef !19
  %i.cf = getelementptr inbounds nuw [272 x i8], ptr %i.ce, i64 %i.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.cf, ptr noundef nonnull align 16 dereferenceable(272) %i.b, i64 272, i1 false), !noalias !15873
  %i.cg = add nuw nsw i64 %i.by, 1
  store i64 %i.cg, ptr %i.k, align 8, !alias.scope !15904, !noalias !15907
  %.val.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !15899, !noalias !15902, !nonnull !19, !noundef !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ch = getelementptr inbounds nuw [272 x i8], ptr %.val.i.i, i64 %i.by ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %.sroa.0.i.i.i, ptr noundef nonnull align 16 dereferenceable(256) %i.ch, i64 256, i1 false), !noalias !15910
  %.sroa.423.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 256 ; 2 uses
  %i.ci = load <2 x i64>, ptr %.sroa.423.0..sroa_idx.i.i.i, align 16, !noalias !15910
  %.sroa.423.0.copyload.i.i.i = load i64, ptr %.sroa.423.0..sroa_idx.i.i.i, align 16, !noalias !15910
  %.not26.i.i.i = icmp eq i64 %i.by, 0
  br i1 %.not26.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1V_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB2X_6errors15DeltaTableErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i.i, %bb.q
  %.sroa.13.027.i.i.i = phi i64 [ %i.ck, %bb.q ], [ %i.by, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1V_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB2X_6errors15DeltaTableErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i.i ] ; 3 uses
  %i.cj = add nsw i64 %.sroa.13.027.i.i.i, -1
  %i.ck = lshr i64 %i.cj, 1                       ; 4 uses
  %3 = icmp samesign ule i64 %i.ck, %i.by
  call void @llvm.assume(i1 %3)
  %i.cl = getelementptr inbounds nuw [272 x i8], ptr %.val.i.i, i64 %i.ck ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 256
  %.val1.i.i.i = load i64, ptr %i.cm, align 16, !noalias !15910, !noundef !19
  %.not25.i.i.i = icmp sgt i64 %.val1.i.i.i, %.sroa.423.0.copyload.i.i.i
  br i1 %.not25.i.i.i, label %bb.q, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit.i

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.cn = getelementptr inbounds nuw [272 x i8], ptr %.val.i.i, i64 %.sroa.13.027.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.cn, ptr noundef nonnull align 16 dereferenceable(272) %i.cl, i64 272, i1 false), !noalias !15910
  %.not.i.i8.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i8.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit.i, label %.lr.ph.i.i.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.q, %.lr.ph.i.i.i, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1V_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB2X_6errors15DeltaTableErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i.i
  %.sroa.13.0.lcssa.i.i.i = phi i64 [ 0, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1V_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB2X_6errors15DeltaTableErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i.i ], [ 0, %bb.q ], [ %.sroa.13.027.i.i.i, %.lr.ph.i.i.i ]
  %i.co = getelementptr inbounds nuw [272 x i8], ptr %.val.i.i, i64 %.sroa.13.0.lcssa.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.co, ptr noundef nonnull align 16 dereferenceable(256) %.sroa.0.i.i.i, i64 256, i1 false), !noalias !15910
  %.sroa.5.0..sroa_idx1.i.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 256
  store <2 x i64> %i.ci, ptr %.sroa.5.0..sroa_idx1.i.i.i, align 16, !noalias !15910
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2b_8Snapshot12commit_infos0s0_00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([272 x i8]) align 16 captures(none) dereferenceable(272) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !15873
  %i.cp = load i64, ptr %i.c, align 16, !range !3928, !noalias !15880, !noundef !19 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 5
  br i1 %i.cq, label %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1u_8Snapshot12commit_infos0s0_00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake.exit.thread, label %bb.j

bb.r:                                             ; preds = %bb.k
  %i.cr = add i64 %i.bv, 1
  store i64 %i.cr, ptr %i.ai, align 8, !alias.scope !15876, !noalias !15878
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %0, ptr noundef nonnull align 16 dereferenceable(256) %i.b, i64 256, i1 false), !noalias !15898
  %.pr = load i64, ptr %0, align 16
  br label %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1u_8Snapshot12commit_infos0s0_00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake.exit

_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1u_8Snapshot12commit_infos0s0_00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2n_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3p_6errors15DeltaTableErrorEEE3popCs7p2uQeJxui2_9deltalake.exit.i, %bb.r
  %i.cs = phi i64 [ %.sroa.012.0.copyload13.i.i, %_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2n_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3p_6errors15DeltaTableErrorEEE3popCs7p2uQeJxui2_9deltalake.exit.i ], [ %.pr, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  switch i64 %i.cs, label %bb.v [
    i64 5, label %.sink.split
    i64 4, label %bb.u
  ]

bb.s:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.pre = load i64, ptr %i.k, align 8, !alias.scope !15876, !noalias !15878
  br label %.loopexit

bb.t:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(904) %i.d, ptr noundef nonnull align 8 dereferenceable(904) %i.q, i64 904, i1 false)
  %i.ct = load i64, ptr %i.r, align 8, !noundef !19 ; 2 uses
  store i64 %i.ct, ptr %i.s, align 8
  %i.cu = add i64 %i.ct, 1
  store i64 %i.cu, ptr %i.r, align 8
  call void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2b_8Snapshot12commit_infos0s0_00EE4pushCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.h, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(912) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cv = call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2b_8Snapshot12commit_infos0s0_00EE28atomic_load_head_and_len_allCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.h)
  %i.cw = extractvalue { ptr, i64 } %i.cv, 1
  %i.cx = load i64, ptr %i.k, align 8, !noundef !19 ; 3 uses
  %i.cy = icmp ult i64 %i.cx, 33909456017848441
  call void @llvm.assume(i1 %i.cy)
  %i.cz = add i64 %i.cw, %i.cx
  %i.da = load i64, ptr %i.g, align 8, !noundef !19
  %i.db = icmp ult i64 %i.cz, %i.da
  br i1 %i.db, label %bb.b, label %.loopexit

bb.u:                                             ; preds = %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1u_8Snapshot12commit_infos0s0_00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake.exit.thread6, %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1u_8Snapshot12commit_infos0s0_00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dd = load i8, ptr %i.dc, align 8, !range !113, !noundef !19
  %i.de = trunc nuw i8 %i.dd to i1
  %. = select i1 %i.de, i64 4, i64 5
  br label %.sink.split

.sink.split:                                      ; preds = %bb.u, %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1u_8Snapshot12commit_infos0s0_00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake.exit, %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1u_8Snapshot12commit_infos0s0_00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake.exit.thread
  %.sink = phi i64 [ %., %bb.u ], [ %i.cs, %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1u_8Snapshot12commit_infos0s0_00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake.exit ], [ 5, %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1u_8Snapshot12commit_infos0s0_00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake.exit.thread ]
  store i64 %.sink, ptr %0, align 16
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1u_8Snapshot12commit_infos0s0_00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtB9_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEENCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB3q_8Snapshot12commit_infos0s0_0EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9size_hintCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = tail call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2b_8Snapshot12commit_infos0s0_00EE28atomic_load_head_and_len_allCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.b)
  %i.d = extractvalue { ptr, i64 } %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !19 ; 2 uses
  %i.g = icmp ult i64 %i.f, 33909456017848441
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add i64 %i.d, %i.f                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.j = load i8, ptr %i.i, align 8, !range !113, !noundef !19
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3mapINtB5_3MapINtNtB9_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEENCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB30_8Snapshot12commit_infos0s0_0ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9size_hintCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l)
  %i.m = load i64, ptr %i.a, align 8, !noundef !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !98, !noundef !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 %i.h) ; 2 uses
  %i.s = trunc nuw i64 %i.o to i1
  br i1 %i.s, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0 = phi i64 [ %i.h, %bb.c ], [ %i.r, %bb.b ]
  %.sroa.6.0 = phi i64 [ 0, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %i.t = add i64 %.sroa.6.0, %i.h                 ; 2 uses
  %i.u = icmp uge i64 %i.t, %.sroa.6.0
  %.6 = zext i1 %i.u to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.4.0 = phi i64 [ %i.t, %bb.d ], [ undef, %bb.b ]
  %.sroa.05.0 = phi i64 [ %.6, %bb.d ], [ 0, %bb.b ]
  %.sroa.04.1 = phi i64 [ %.sroa.04.0, %bb.d ], [ %i.r, %bb.b ]
  store i64 %.sroa.04.1, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0, ptr %i.w, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs13_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_15ExactNumberInfoNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #19 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !644, !noundef !19 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !644, !noundef !19
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i64 %i.a, label %default.unreachable2 [
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.e, %bb.b, %bb.a, %bb.f, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ %i.h, %bb.d ], [ false, %bb.a ], [ %i.r, %bb.f ], [ true, %bb.b ], [ false, %bb.e ]
  ret i1 %.sroa.0.0.shrunk

default.unreachable2:                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !19
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !19
  %i.h = icmp eq i64 %i.e, %i.g
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !19
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !19
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !19
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !19
  %i.r = icmp eq i64 %i.o, %i.q
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs14_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !19, !noundef !19 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !19, !noundef !19 ; 6 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15914)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !15911, !noalias !15914, !nonnull !19, !noundef !19 ; 4 uses
end_hunk_0
begin_hunk_1_@_RNvXs6P_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs6_NtCs1N9T06jgEdt_11arrow_array12record_batchINtB5_19RecordBatchIteratorINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtB5_11RecordBatchENcNtINtNtB1m_6result6ResultB2P_NtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE2Ok0EENtNtNtB1k_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1) unnamed_addr #22 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16796)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !16799, !noalias !16800, !nonnull !19, !noundef !19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !16799, !noalias !16800, !nonnull !19, !noundef !19 ; 4 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENcNtINtNtBb_6result6ResultB1K_NtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE2Ok0ENtNtNtB9_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.f, ptr %i.c, align 8, !alias.scope !16799, !noalias !16800
  %.sroa.0.0.copyload1.i = load i64, ptr %i.d, align 8, !noalias !16802 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.0.copyload1.i, -9223372036854775808
  br i1 %.not.i, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENcNtINtNtBb_6result6ResultB1K_NtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE2Ok0ENtNtNtB9_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.47.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx2.i, i64 32, i1 false), !noalias !16794
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENcNtINtNtBb_6result6ResultB1K_NtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE2Ok0ENtNtNtB9_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENcNtINtNtBb_6result6ResultB1K_NtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE2Ok0ENtNtNtB9_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i, %bb.a, %bb.b
  %storemerge.i = phi i64 [ %.sroa.0.0.copyload1.i, %bb.b ], [ -9223372036854775807, %bb.a ], [ -9223372036854775807, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !16791, !noalias !16794
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs6_NtCs1N9T06jgEdt_11arrow_array12record_batchINtB5_19RecordBatchIteratorINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtB5_11RecordBatchENcNtINtNtB1m_6result6ResultB2P_NtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE2Ok0EENtNtNtB1k_6traits8iterator8Iterator9size_hintCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !19, !noundef !19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !19, !noundef !19
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 40                  ; 2 uses
  store i64 %i.f, ptr %0, align 8, !alias.scope !16803
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.g, align 8, !alias.scope !16803
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8, !alias.scope !16803
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB2W_5ErrorEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i = alloca [72 x i8], align 8        ; 4 uses
  %.sroa.0.i.i.i.i = alloca [80 x i8], align 8    ; 6 uses
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 5 uses
  %.sroa.4 = alloca [72 x i8], align 8            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !19 ; 5 uses
  %i.f = icmp ult i64 %i.e, 115292150460684698
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2R_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB3j_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEEECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !19, !noundef !19 ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load i64, ptr %i.j, align 8, !noundef !19 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !19
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2R_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB3j_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2R_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB3j_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB3D_5ErrorEEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.p = load i64, ptr %i.c, align 8, !range !754, !noundef !19 ; 2 uses
  %i.q = icmp eq i64 %i.p, -9223372036854775787
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2R_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB3j_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEEECs7p2uQeJxui2_9deltalake.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.u = add i64 %i.k, 1
  store i64 %i.u, ptr %i.l, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16811)
  %i.v = add nsw i64 %i.e, -1                     ; 9 uses
  store i64 %i.v, ptr %i.d, align 8, !alias.scope !16814, !noalias !16815
  %i.w = load i64, ptr %1, align 8, !range !45, !alias.scope !16814, !noalias !16815, !noundef !19
  %i.x = icmp samesign ult i64 %i.v, %i.w
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.v ; 2 uses
  %.sroa.05.0.copyload.i.i = load i64, ptr %i.y, align 8, !noalias !16818 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16818
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.57.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i.i, i64 72, i1 false), !noalias !16818
  store i64 %.sroa.05.0.copyload.i.i, ptr %i.a, align 8, !noalias !16818
  %i.z = icmp eq i64 %i.v, 0
  br i1 %i.z, label %_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2j_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB31_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE3popCs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull %i.i, i64 noundef 10)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2c_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2E_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.e, !noalias !16819

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #49, !noalias !16819
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2c_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2E_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false), !noalias !16822
  %i.ab = call i64 @llvm.usub.sat.i64(i64 %i.v, i64 2)
  %.not.not8.i.i.i.i = icmp samesign ult i64 %i.e, 4
  br i1 %.not.not8.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2c_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2E_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %.sroa.12.0.lcssa.i.i.i.i = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2c_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2E_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.ax, %.lr.ph.i.i.i.i ] ; 5 uses
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2c_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2E_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.bb, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.ac = add nsw i64 %i.e, -2
  %i.ad = icmp eq i64 %.sroa.05.0.lcssa.i.i.i.i, %i.ac
  br i1 %i.ad, label %.thread.i.i.i, label %bb.f

.thread.i.i.i:                                    ; preds = %._crit_edge.i.i.i.i
  %i.ae = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.05.0.lcssa.i.i.i.i ; 3 uses
  %i.af = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.12.0.lcssa.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.af, ptr noundef nonnull align 8 dereferenceable(80) %i.ae, i64 80, i1 false), !noalias !16822
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i.i, i64 80, i1 false), !noalias !16822
  %i.ag = icmp samesign ult i64 %.sroa.05.0.lcssa.i.i.i.i, %i.v
  call void @llvm.assume(i1 %i.ag)
  %.sroa.416.0..sroa_idx.i.i6.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %.sroa.416.0.copyload.i.i7.i.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i6.i.i.i, align 8, !noalias !16822
  br label %.lr.ph.i.i.preheader.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ah = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.12.0.lcssa.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i.i, i64 80, i1 false), !noalias !16822
  %i.ai = icmp samesign ult i64 %.sroa.12.0.lcssa.i.i.i.i, %i.v
  call void @llvm.assume(i1 %i.ai)
  %.sroa.416.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %.sroa.416.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i.i.i.i, align 8, !noalias !16822 ; 2 uses
  %.not18.i.i.i.i.i = icmp eq i64 %.sroa.12.0.lcssa.i.i.i.i, 0
  br i1 %.not18.i.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE19sift_down_to_bottomCs7p2uQeJxui2_9deltalake.exit.i.i.i, label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.f, %.thread.i.i.i
  %.sroa.416.0.copyload.i.i10.i.i.i = phi i64 [ %.sroa.416.0.copyload.i.i7.i.i.i, %.thread.i.i.i ], [ %.sroa.416.0.copyload.i.i.i.i.i, %bb.f ] ; 3 uses
  %.sroa.12.1.i9.i.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i.i.i, %.thread.i.i.i ], [ %.sroa.12.0.lcssa.i.i.i.i, %bb.f ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.preheader.i.i.i
  %.sroa.13.019.i.i.i.i.i = phi i64 [ %i.ak, %bb.g ], [ %.sroa.12.1.i9.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 3 uses
  %i.aj = add nsw i64 %.sroa.13.019.i.i.i.i.i, -1
  %i.ak = lshr i64 %i.aj, 1                       ; 4 uses
  %i.al = icmp samesign ult i64 %i.ak, %i.v
  call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.ak ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 72
  %.val1.i.i.i.i.i = load i64, ptr %i.an, align 8, !noalias !16822, !noundef !19
  %.not17.i.i.i.i.i = icmp sgt i64 %.val1.i.i.i.i.i, %.sroa.416.0.copyload.i.i10.i.i.i
  br i1 %.not17.i.i.i.i.i, label %bb.g, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE19sift_down_to_bottomCs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.13.019.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ao, ptr noundef nonnull align 8 dereferenceable(80) %i.am, i64 80, i1 false), !noalias !16822
  %.not.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE19sift_down_to_bottomCs7p2uQeJxui2_9deltalake.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2c_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2E_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.05.010.i.i.i.i = phi i64 [ %i.bb, %.lr.ph.i.i.i.i ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2c_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2E_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i ] ; 3 uses
  %.sroa.12.09.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i.i ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2c_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2E_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %i.ap = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.05.010.i.i.i.i
  %i.aq = add nuw nsw i64 %.sroa.05.010.i.i.i.i, 1 ; 2 uses
  %i.ar = icmp samesign ult i64 %i.aq, %i.v
  call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.aq
  %i.at = getelementptr i8, ptr %i.ap, i64 72
  %.val.i.i.i.i = load i64, ptr %i.at, align 8, !noalias !16822, !noundef !19
  %i.au = getelementptr i8, ptr %i.as, i64 72
  %.val17.i.i.i.i = load i64, ptr %i.au, align 8, !noalias !16822, !noundef !19
  %i.av = icmp sle i64 %.val17.i.i.i.i, %.val.i.i.i.i
  %i.aw = zext i1 %i.av to i64
  %i.ax = add nuw nsw i64 %.sroa.05.010.i.i.i.i, %i.aw ; 4 uses
  %i.ay = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.ax
  %i.az = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.12.09.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.az, ptr noundef nonnull align 8 dereferenceable(80) %i.ay, i64 80, i1 false), !noalias !16822
  %i.ba = shl nuw nsw i64 %i.ax, 1                ; 2 uses
  %i.bb = or disjoint i64 %i.ba, 1                ; 2 uses
  %.not.not.not.i.i.i.i = icmp samesign ult i64 %i.ba, %i.ab
  br i1 %.not.not.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE19sift_down_to_bottomCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i, %bb.f
  %.sroa.416.0.copyload.i.i11.i.i.i = phi i64 [ %.sroa.416.0.copyload.i.i.i.i.i, %bb.f ], [ %.sroa.416.0.copyload.i.i10.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.416.0.copyload.i.i10.i.i.i, %bb.g ]
  %.sroa.13.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ %.sroa.13.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.13.0.lcssa.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bc, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.i.i.i, i64 72, i1 false), !noalias !16822
  %.sroa.5.0..sroa_idx1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  store i64 %.sroa.416.0.copyload.i.i11.i.i.i, ptr %.sroa.5.0..sroa_idx1.i.i.i.i.i, align 8, !noalias !16822
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %.sroa.012.0.copyload13.pre.i = load i64, ptr %i.a, align 8, !noalias !16824
  br label %_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2j_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB31_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE3popCs7p2uQeJxui2_9deltalake.exit

_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2j_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB31_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE3popCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE19sift_down_to_bottomCs7p2uQeJxui2_9deltalake.exit.i.i.i
  %.sroa.012.0.copyload13.i = phi i64 [ %.sroa.012.0.copyload13.pre.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE19sift_down_to_bottomCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.05.0.copyload.i.i, %bb.c ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.57.0..sroa_idx.i.i, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16818
  %i.bd = icmp ne i64 %.sroa.012.0.copyload13.i, -9223372036854775788
  call void @llvm.assume(i1 %i.bd)
  store i64 %.sroa.012.0.copyload13.i, ptr %0, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4, i64 64, i1 false)
  br label %bb.r

._crit_edge:                                      ; preds = %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2R_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB3j_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEEECs7p2uQeJxui2_9deltalake.exit
  store i64 -9223372036854775787, ptr %0, align 8
  br label %bb.r

bb.h:                                             ; preds = %.lr.ph, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit
  %i.be = phi i64 [ %i.p, %.lr.ph ], [ %i.by, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit ] ; 2 uses
  %.not = icmp eq i64 %i.be, -9223372036854775788
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.be, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx, i64 72, i1 false)
  %i.bf = load i64, ptr %i.r, align 8, !noundef !19 ; 2 uses
  %i.bg = load i64, ptr %i.s, align 8, !noundef !19
  %i.bh = icmp eq i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.q, label %bb.k

bb.j:                                             ; preds = %bb.h
  store i64 -9223372036854775788, ptr %0, align 8
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  %i.bi = load i64, ptr %i.d, align 8, !alias.scope !16825, !noalias !16828, !noundef !19 ; 8 uses
  %i.bj = icmp ult i64 %i.bi, 115292150460684698
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = load i64, ptr %1, align 8, !range !45, !alias.scope !16830, !noalias !16833, !noundef !19
  %i.bl = icmp eq i64 %i.bi, %i.bk
  br i1 %i.bl, label %bb.l, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB1R_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2z_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB1Y_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2G_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE8grow_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB1R_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2z_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.m, !noalias !16833

bb.m:                                             ; preds = %bb.l
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB1S_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2k_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b) #48
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.o:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.bm

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB1R_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2z_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.l, %bb.k
  %i.bo = load ptr, ptr %i.t, align 8, !alias.scope !16830, !noalias !16833, !nonnull !19, !noundef !19
  %i.bp = getelementptr inbounds nuw [80 x i8], ptr %i.bo, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bp, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  %i.bq = add nuw nsw i64 %i.bi, 1
  store i64 %i.bq, ptr %i.d, align 8, !alias.scope !16830, !noalias !16833
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !16825, !noalias !16828, !nonnull !19, !noundef !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.br = getelementptr inbounds nuw [80 x i8], ptr %.val.i, i64 %i.bi ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.br, i64 72, i1 false), !noalias !16828
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  %.sroa.416.0.copyload.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i, align 8, !noalias !16828 ; 2 uses
  %.not18.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not18.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB1R_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2z_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i, %bb.p
  %.sroa.13.019.i.i = phi i64 [ %i.bt, %bb.p ], [ %i.bi, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB1R_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2z_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i ] ; 3 uses
  %i.bs = add nsw i64 %.sroa.13.019.i.i, -1
  %i.bt = lshr i64 %i.bs, 1                       ; 4 uses
  %3 = icmp samesign ule i64 %i.bt, %i.bi
  tail call void @llvm.assume(i1 %3)
  %i.bu = getelementptr inbounds nuw [80 x i8], ptr %.val.i, i64 %i.bt ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 72
  %.val1.i.i = load i64, ptr %i.bv, align 8, !noalias !16828, !noundef !19
  %.not17.i.i = icmp sgt i64 %.val1.i.i, %.sroa.416.0.copyload.i.i
  br i1 %.not17.i.i, label %bb.p, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.bw = getelementptr inbounds nuw [80 x i8], ptr %.val.i, i64 %.sroa.13.019.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bw, ptr noundef nonnull align 8 dereferenceable(80) %i.bu, i64 80, i1 false), !noalias !16828
  %.not.i.i8 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i8, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit: ; preds = %.lr.ph.i.i, %bb.p, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB1R_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2z_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.13.0.lcssa.i.i = phi i64 [ 0, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB1R_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2z_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.13.019.i.i, %.lr.ph.i.i ], [ 0, %bb.p ]
  %i.bx = getelementptr inbounds nuw [80 x i8], ptr %.val.i, i64 %.sroa.13.0.lcssa.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.i, i64 72, i1 false), !noalias !16828
  %.sroa.5.0..sroa_idx1.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  store i64 %.sroa.416.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx1.i.i, align 8, !noalias !16828
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB3D_5ErrorEEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.by = load i64, ptr %i.c, align 8, !range !754, !noundef !19 ; 2 uses
  %i.bz = icmp eq i64 %i.by, -9223372036854775787
  br i1 %i.bz, label %._crit_edge, label %bb.h

bb.q:                                             ; preds = %bb.i
  %i.ca = add i64 %i.bf, 1
  store i64 %i.ca, ptr %i.s, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.j, %bb.q, %_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2j_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB31_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE3popCs7p2uQeJxui2_9deltalake.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs6_NtNtCskFSgV2vI2Ct_13opentelemetry6global5traceNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace8provider17SdkTracerProviderNtB5_24ObjectSafeTracerProvider12boxed_tracerCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace8providerNtB5_17SdkTracerProviderNtNtNtCskFSgV2vI2Ct_13opentelemetry5trace15tracer_provider14TracerProvider17tracer_with_scope(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %1)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !16835
  %i.b = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 104, i64 noundef range(i64 1, 129) 8) #46, !noalias !16835 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6tracer9SdkTracerE3newCs7p2uQeJxui2_9deltalake.exit, !prof !28

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #47
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6tracer9SdkTracerECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.a) #48
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6tracer9SdkTracerE3newCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr @630, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6c_NtCs4lawaffTVVK_9sqlparser3astNtB6_13ExtractSyntaxNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #9 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !113, !noundef !19
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 5, i64 4
  %.1 = select i1 %i.b, ptr @632, ptr @631
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs6f_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17TableFunctionArgsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !19 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !19
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !19, !noundef !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !19, !noundef !19
  %i.j = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, i64 noundef %i.b)
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !range !645, !noundef !19
  %.not = icmp eq i64 %i.l, -9223372036854775808  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8, !range !645, !noundef !19
  %i.o = icmp eq i64 %i.n, -9223372036854775808   ; 2 uses
  %brmerge = or i1 %.not, %i.o
  %.mux = and i1 %.not, %i.o
  br i1 %brmerge, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.e, %bb.b, %bb.a, %bb.f
  %.sroa.0.0.shrunk = phi i1 [ %i.y, %bb.f ], [ %.mux, %bb.c ], [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.shrunk

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !noundef !19 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i64, ptr %i.r, align 8, !noundef !19
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !19, !noundef !19
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !19, !noundef !19
  %i.y = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.x, ptr noundef nonnull %i.v, i64 noundef %i.q)
  br label %bb.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs6p_NtCs4lawaffTVVK_9sqlparser3astNtB6_13CeilFloorKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #23 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !3729, !noundef !19 ; 3 uses
  %i.b = icmp eq i64 %i.a, 44                     ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !3729, !noundef !19 ; 2 uses
  %i.d = icmp eq i64 %i.c, 44                     ; 3 uses
  %i.e = xor i1 %i.b, %i.d
  br i1 %i.e, label %_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.d

_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ %i.h, %bb.c ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.g ], [ false, %bb.i ], [ %i.aj, %bb.l ], [ %.mux.i, %bb.f ], [ true, %bb.e ], [ false, %bb.h ], [ %i.at, %bb.o ], [ false, %bb.m ], [ %i.au, %bb.p ], [ %i.ai, %bb.k ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXsn_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g) #52
  br label %_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  %i.i = xor i1 %i.d, true
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16841)
  %i.j = icmp eq i64 %i.a, %i.c
  br i1 %i.j, label %bb.e, label %_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  switch i64 %i.a, label %_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit [
    i64 4, label %bb.f
    i64 43, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !645, !alias.scope !16838, !noalias !16841, !noundef !19
  %.not6.i = icmp eq i64 %i.l, -9223372036854775808 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !645, !alias.scope !16841, !noalias !16838, !noundef !19
  %i.o = icmp eq i64 %i.n, -9223372036854775808   ; 2 uses
  %brmerge.i = or i1 %.not6.i, %i.o
  %.mux.i = and i1 %.not6.i, %i.o
  br i1 %brmerge.i, label %_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !16838, !noalias !16841, !noundef !19 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !16841, !noalias !16838, !noundef !19
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %bb.m, label %_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !16838, !noalias !16841, !noundef !19 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !16841, !noalias !16838, !noundef !19
  %i.y = icmp eq i64 %i.v, %i.x
end_hunk_1
