inline.NumInlined: 6802
inline.NumDeleted: 1969
begin_hunk_0_@_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionIBw_NtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2b_8PeekableINtNtB2d_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB3K_11transaction5stateNtB4M_12AddContainer15get_prune_stats0EE4peek0EB3M_:bb.a

.body82.thread.i.i.i:                             ; preds = %bb.bi, %.body82.thread118.i.i.i
  %eh.lpad-body83117.i.i.i = phi { ptr, i32 } [ %i.fb, %.body82.thread118.i.i.i ], [ %i.fe, %bb.bi ] ; 2 uses
  br i1 %.not34.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit86.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %.body82.thread.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit86.i.i.i unwind label %bb.al, !noalias !47

_RNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction5stateNtB4_12AddContainer15get_prune_stats0Ba_.exit.i.i: ; preds = %bb.bo, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorE6expectB1G_.exit76.i.i.i, %bb.ak
  %.sroa.011.1 = phi i128 [ %.sroa.011.2, %bb.bo ], [ %.sroa.011.0.copyload13, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorE6expectB1G_.exit76.i.i.i ], [ %.sroa.011.0, %bb.ak ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.8, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_3map3MapINtNtNtBd_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1U_11transaction5stateNtB2W_12AddContainer15get_prune_stats0EE4peek0B1W_.exit

_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_3map3MapINtNtNtBd_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1U_11transaction5stateNtB2W_12AddContainer15get_prune_stats0EE4peek0B1W_.exit: ; preds = %bb.b, %_RNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction5stateNtB4_12AddContainer15get_prune_stats0Ba_.exit.i.i
  %.sroa.0.0 = phi i128 [ %.sroa.011.1, %_RNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction5stateNtB4_12AddContainer15get_prune_stats0Ba_.exit.i.i ], [ 50, %bb.b ] ; 2 uses
  store i128 %.sroa.0.0, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  %i.fh = icmp ne i128 %.sroa.0.0, 51
  call void @llvm.assume(i1 %i.fh)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.a, %_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_3map3MapINtNtNtBd_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1U_11transaction5stateNtB2W_12AddContainer15get_prune_stats0EE4peek0B1W_.exit
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 16 ptr @_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionIBw_NtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2b_8PeekableINtNtB2d_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB3K_11transaction5stateNtB4O_12AddContainerNtNtBQ_7pruning17PruningStatistics10row_counts0EE4peek0EB3M_(ptr noalias nofree noundef nonnull returned align 16 captures(ret: address, provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 9 uses
  %i.b = alloca [160 x i8], align 8               ; 9 uses
  %i.c = load i128, ptr %0, align 16, !range !25, !noundef !9
  %.not = icmp eq i128 %i.c, 51
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !145, !noalias !148, !nonnull !9, !noundef !9 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !145, !noalias !148, !nonnull !9, !noundef !9
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_3map3MapINtNtNtBd_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1U_11transaction5stateNtB2Y_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EE4peek0B1W_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  store ptr %i.h, ptr %1, align 8, !alias.scope !145, !noalias !148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !151
  call void @_RNvMs4_NtCs14kWLkQVSKO_14deltalake_core8protocolNtNtNtNtB7_6kernel6models7actions3Add9get_stats(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.d), !noalias !155
  %i.i = load i64, ptr %i.b, align 8, !range !48, !noalias !151, !noundef !9
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %_RNCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction5stateNtB6_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0Bc_.exit.sink.split.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !noalias !151, !noundef !9
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_RNCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction5stateNtB6_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0Bc_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !151
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %i.k, i64 152, i1 false), !noalias !151
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.n = load i64, ptr %i.m, align 8, !noalias !151, !noundef !9 ; 2 uses
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit.i.i.i.i unwind label %bb.f, !noalias !155

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i.i.i.i unwind label %bb.h, !noalias !155

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit.i.i.i.i: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i.i.i.i unwind label %bb.g, !noalias !155

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i.i.i.i: ; preds = %bb.g, %bb.f
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.o, %bb.f ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnCountStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %.body.i.i.i unwind label %bb.h, !noalias !155

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnCountStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit.i.i.i unwind label %bb.i, !noalias !155

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i.i.i.i, %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !155
  unreachable

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.v, %bb.i ], [ %.pn.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i.i.i.i ]
  %i.w = load i64, ptr %i.b, align 8, !range !48, !noalias !151, !noundef !9
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !151
  %i.y = load i64, ptr %i.b, align 8, !range !48, !noalias !151, !noundef !9
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %_RNCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction5stateNtB6_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0Bc_.exit.sink.split.i.i, label %_RNCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction5stateNtB6_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0Bc_.exit.i.i

bb.j:                                             ; preds = %bb.k, %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.k:                                             ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsENtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEB1s_(ptr noalias noundef align 8 dereferenceable(160) %i.b) #38
          to label %bb.j unwind label %bb.l, !noalias !155

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !155
  unreachable

_RNCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction5stateNtB6_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0Bc_.exit.sink.split.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit.i.i.i, %bb.c
  %.sroa.7.0.ph.i.i = phi i64 [ %i.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit.i.i.i ], [ undef, %bb.c ]
  %.sroa.5.0.ph.i.i = phi i64 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit.i.i.i ], [ 0, %bb.c ]
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsENtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEB1s_(ptr noalias noundef align 8 dereferenceable(160) %i.b), !noalias !155
  br label %_RNCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction5stateNtB6_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0Bc_.exit.i.i

_RNCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction5stateNtB6_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0Bc_.exit.i.i: ; preds = %_RNCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction5stateNtB6_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0Bc_.exit.sink.split.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit.i.i.i, %bb.d
  %.sroa.7.0.i.i = phi i64 [ %i.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit.i.i.i ], [ undef, %bb.d ], [ %.sroa.7.0.ph.i.i, %_RNCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction5stateNtB6_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0Bc_.exit.sink.split.i.i ]
  %.sroa.5.0.i.i = phi i64 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit.i.i.i ], [ 0, %bb.d ], [ %.sroa.5.0.ph.i.i, %_RNCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction5stateNtB6_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0Bc_.exit.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !151
  br label %_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_3map3MapINtNtNtBd_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1U_11transaction5stateNtB2Y_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EE4peek0B1W_.exit

_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_3map3MapINtNtNtBd_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1U_11transaction5stateNtB2Y_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EE4peek0B1W_.exit: ; preds = %bb.b, %_RNCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction5stateNtB6_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0Bc_.exit.i.i
  %.sroa.6.0 = phi i64 [ %.sroa.7.0.i.i, %_RNCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction5stateNtB6_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0Bc_.exit.i.i ], [ undef, %bb.b ]
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.i.i, %_RNCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction5stateNtB6_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0Bc_.exit.i.i ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i128 [ 18, %_RNCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction5stateNtB6_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0Bc_.exit.i.i ], [ 50, %bb.b ]
  store i128 %.sroa.0.0, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 16
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0, ptr %.sroa.59.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_3map3MapINtNtNtBd_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1U_11transaction5stateNtB2Y_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EE4peek0B1W_.exit
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 16 ptr @_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionIBw_NtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2b_8PeekableINtNtB2d_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB3K_11transaction5stateNtB4O_12AddContainerNtNtBQ_7pruning17PruningStatistics11null_counts0EE4peek0EB3M_(ptr noalias nofree noundef nonnull returned align 16 captures(ret: address, provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = alloca [152 x i8], align 8               ; 18 uses
  %i.c = alloca [160 x i8], align 8               ; 11 uses
  %i.d = load i128, ptr %0, align 16, !range !25, !noundef !9
  %.not = icmp eq i128 %i.d, 51
  br i1 %.not, label %bb.b, label %bb.ap

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.e = load ptr, ptr %1, align 8, !alias.scope !162, !noalias !165, !nonnull !9, !noundef !9 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !162, !noalias !165, !nonnull !9, !noundef !9
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_3map3MapINtNtNtBd_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1U_11transaction5stateNtB2Y_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EE4peek0B1W_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  store ptr %i.i, ptr %1, align 8, !alias.scope !162, !noalias !165
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.j, align 8, !alias.scope !168, !noalias !165 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i.i = load ptr, ptr %i.k, align 8, !alias.scope !168, !noalias !165 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !172
  call void @_RNvMs4_NtCs14kWLkQVSKO_14deltalake_core8protocolNtNtNtNtB7_6kernel6models7actions3Add9get_stats(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.e), !noalias !174
  %i.l = load i64, ptr %i.c, align 8, !range !48, !noalias !172, !noundef !9
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.ai, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !172, !noundef !9
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.aj, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i), "nonnull"(ptr %.val2.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef nonnull align 8 dereferenceable(152) %i.n, i64 152, i1 false), !noalias !172
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !172, !nonnull !9, !noundef !9
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noalias !172, !noundef !9
  %i.t = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 56 ; 5 uses
  %i.u = invoke noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.q, i64 noundef %i.s)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !174

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i27.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit12.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i:       ; preds = %select.unfold3.i.i.i, %bb.v, %bb.p, %bb.k, %bb.e
  %lpad.loopexit.split-lp13.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit12.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp13.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit.i.i.i unwind label %bb.f, !noalias !174

bb.f:                                             ; preds = %.loopexit.split-lp.i.i.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i.i.i unwind label %bb.h, !noalias !174

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit.i.i.i: ; preds = %.loopexit.split-lp.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i.i.i unwind label %bb.g, !noalias !174

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i.i.i: ; preds = %bb.g, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnCountStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %.body.i.i unwind label %bb.h, !noalias !174

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit.i.i.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnCountStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aa)
          to label %.body.i.i.i unwind label %bb.af, !noalias !175

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i.i.i, %bb.f
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !174
  unreachable

bb.i:                                             ; preds = %bb.e
  br i1 %i.u, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !176, !noalias !179, !noundef !9
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %select.unfold.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ah = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !174 ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.ai = lshr i64 %i.ah, 57
  %i.aj = trunc nuw nsw i64 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !187, !noalias !188, !noundef !9 ; 2 uses
  %i.am = load ptr, ptr %i.ac, align 8, !alias.scope !187, !noalias !188, !nonnull !9, !noundef !9 ; 2 uses
  %i.an = insertelement <16 x i8> poison, i8 %i.aj, i64 0
  %i.ao = shufflevector <16 x i8> %i.an, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.noexc.i.i.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.noexc.i.i.i ], [ %i.bf, %bb.n ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.ah, %.noexc.i.i.i ], [ %i.bg, %bb.n ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.al ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i21.i.i.i.i.i = load <16 x i8>, ptr %i.ap, align 1, !noalias !191 ; 2 uses
  %i.aq = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i.i.i.i, %i.ao
  %i.ar = bitcast <16 x i1> %i.aq to i16          ; 2 uses
  %.not.i.not27.i.i.i.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not.i.not27.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.l, %bb.m
  %.sroa.06.0.i28.i.i.i.i.i = phi i16 [ %i.be, %bb.m ], [ %i.ar, %bb.l ] ; 3 uses
  %i.as = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i28.i.i.i.i.i, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.at
  %i.av = and i64 %i.au, %i.al
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [72 x i8], ptr %i.am, i64 %i.aw ; 3 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -72
  %i.az = invoke noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ay)
          to label %.noexc21.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !174

.noexc21.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.az, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnCountStatNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_EB1u_.exit.i.i.i, label %bb.m, !prof !70

._crit_edge.i.i.i.i.i:                            ; preds = %bb.m, %bb.l
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i.i.i.i, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16
  %i.bc = icmp eq i16 %i.bb, 0
  br i1 %i.bc, label %bb.n, label %select.unfold.i.i.i, !prof !10

bb.m:                                             ; preds = %.noexc21.i.i.i
  %i.bd = add i16 %.sroa.06.0.i28.i.i.i.i.i, -1
  %i.be = and i16 %i.bd, %.sroa.06.0.i28.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bf = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.bg = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.bf
  br label %bb.l

bb.o:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !194, !noalias !197, !noundef !9
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %select.unfold3.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.bm = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %.noexc34.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !174 ; 2 uses

.noexc34.i.i.i:                                   ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.bn = lshr i64 %i.bm, 57
  %i.bo = trunc nuw nsw i64 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !205, !noalias !206, !noundef !9 ; 2 uses
  %i.br = load ptr, ptr %i.bh, align 8, !alias.scope !205, !noalias !206, !nonnull !9, !noundef !9 ; 2 uses
  %i.bs = insertelement <16 x i8> poison, i8 %i.bo, i64 0
  %i.bt = shufflevector <16 x i8> %i.bs, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.noexc34.i.i.i
  %.sroa.9.0.i.i.i22.i.i.i = phi i64 [ 0, %.noexc34.i.i.i ], [ %i.ck, %bb.s ]
  %.pn.i.i.i23.i.i.i = phi i64 [ %i.bm, %.noexc34.i.i.i ], [ %i.cl, %bb.s ]
  %.sroa.01.0.i.i.i24.i.i.i = and i64 %.pn.i.i.i23.i.i.i, %i.bq ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %.sroa.01.0.i.i.i24.i.i.i
  %.sroa.0.0.copyload.i21.i.i25.i.i.i = load <16 x i8>, ptr %i.bu, align 1, !noalias !209 ; 2 uses
  %i.bv = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i25.i.i.i, %i.bt
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  %.not.i.not27.i.i26.i.i.i = icmp eq i16 %i.bw, 0
  br i1 %.not.i.not27.i.i26.i.i.i, label %._crit_edge.i.i30.i.i.i, label %.lr.ph.i.i27.i.i.i

.lr.ph.i.i27.i.i.i:                               ; preds = %bb.q, %bb.r
  %.sroa.06.0.i28.i.i28.i.i.i = phi i16 [ %i.cj, %bb.r ], [ %i.bw, %bb.q ] ; 3 uses
  %i.bx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i28.i.i28.i.i.i, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = add i64 %.sroa.01.0.i.i.i24.i.i.i, %i.by
  %i.ca = and i64 %i.bz, %i.bq
  %i.cb = sub nsw i64 0, %i.ca
  %i.cc = getelementptr inbounds [48 x i8], ptr %i.br, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -48
  %i.ce = invoke noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cd)
          to label %.noexc35.i.i.i unwind label %.loopexit.i.i.i, !noalias !174

.noexc35.i.i.i:                                   ; preds = %.lr.ph.i.i27.i.i.i
  br i1 %i.ce, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBO_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.r, !prof !70

._crit_edge.i.i30.i.i.i:                          ; preds = %bb.r, %bb.q
  %i.cf = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i25.i.i.i, splat (i8 -1)
  %i.cg = bitcast <16 x i1> %i.cf to i16
  %i.ch = icmp eq i16 %i.cg, 0
  br i1 %i.ch, label %bb.s, label %select.unfold3.i.i.i, !prof !10

bb.r:                                             ; preds = %.noexc35.i.i.i
  %i.ci = add i16 %.sroa.06.0.i28.i.i28.i.i.i, -1
  %i.cj = and i16 %i.ci, %.sroa.06.0.i28.i.i28.i.i.i ; 2 uses
  %.not.i.not.i.i29.i.i.i = icmp eq i16 %i.cj, 0
  br i1 %.not.i.not.i.i29.i.i.i, label %._crit_edge.i.i30.i.i.i, label %.lr.ph.i.i27.i.i.i

bb.s:                                             ; preds = %._crit_edge.i.i30.i.i.i
  %i.ck = add i64 %.sroa.9.0.i.i.i22.i.i.i, 16    ; 2 uses
  %i.cl = add i64 %.sroa.01.0.i.i.i24.i.i.i, %i.ck
  br label %bb.q

_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnCountStatNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_EB1u_.exit.i.i.i: ; preds = %.noexc21.i.i.i
  %i.cm = getelementptr inbounds i8, ptr %i.ax, i64 -48
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !174, !noundef !9
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.u, label %bb.v

select.unfold.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !172
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %select.unfold.i.i.i
  %.sroa.16.0.i.i = phi i64 [ undef, %select.unfold.i.i.i ], [ %.sroa.512.0.i.i.i, %bb.v ]
  %.sroa.10.0.i.i = phi i64 [ 0, %select.unfold.i.i.i ], [ %.sroa.011.0.i.i.i, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !172
  br label %bb.w

bb.u:                                             ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnCountStatNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_EB1u_.exit.i.i.i
  %i.cp = getelementptr inbounds i8, ptr %i.ax, i64 -40
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !174, !noundef !9
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnCountStatNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_EB1u_.exit.i.i.i
  %.sroa.011.0.i.i.i = phi i64 [ 1, %bb.u ], [ 0, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnCountStatNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_EB1u_.exit.i.i.i ]
  %.sroa.512.0.i.i.i = phi i64 [ %i.cq, %bb.u ], [ undef, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnCountStatNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_EB1u_.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !172
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.cr, align 16, !noalias !172
  store i128 18, ptr %i.a, align 16, !noalias !172
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.a)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !174

bb.w:                                             ; preds = %bb.ab, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBO_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.t
  %.sroa.16.1.i.i = phi i64 [ %i.dc, %bb.ab ], [ %.sroa.16.0.i.i, %bb.t ], [ 0, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBO_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.10.1.i.i = phi i64 [ 1, %bb.ab ], [ %.sroa.10.0.i.i, %bb.t ], [ 1, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBO_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit.i.i.i.i unwind label %bb.x, !noalias !174

bb.x:                                             ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ct)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i.i.i.i unwind label %bb.z, !noalias !174

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit.i.i.i.i: ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i.i.i.i unwind label %bb.y, !noalias !174

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i.i.i.i: ; preds = %bb.y, %bb.x
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.cw, %bb.y ], [ %i.cs, %bb.x ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnCountStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cv)
          to label %.body.i.i.i unwind label %bb.z, !noalias !174

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit.i.i.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnCountStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit.i.i.i unwind label %bb.ac, !noalias !174

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i.i.i.i, %bb.x
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !174
  unreachable

_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBO_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %.noexc35.i.i.i
  %i.cz = getelementptr inbounds i8, ptr %i.cc, i64 -24
  %i.da = load i64, ptr %i.cz, align 8, !range !123, !noalias !174, !noundef !9
  %.not17.i.i.i = icmp eq i64 %i.da, -9223372036854775808
  br i1 %.not17.i.i.i, label %bb.ab, label %bb.w

select.unfold3.i.i.i:                             ; preds = %._crit_edge.i.i30.i.i.i, %bb.o
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #37
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !174

bb.aa:                                            ; preds = %select.unfold3.i.i.i
  unreachable

bb.ab:                                            ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBO_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.dc = load i64, ptr %i.db, align 8, !noalias !172, !noundef !9
  br label %bb.w

.body.i.i.i:                                      ; preds = %bb.ac, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i.i.i.i ], [ %i.df, %bb.ac ], [ %lpad.phi.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i.i.i ]
  %i.dd = load i64, ptr %i.c, align 8, !range !48, !noalias !172, !noundef !9
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.ag, label %bb.ah

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i.i.i.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !172
  %i.dg = load i64, ptr %i.c, align 8, !range !48, !noalias !172, !noundef !9
  %i.dh = trunc nuw i64 %i.dg to i1
  br i1 %i.dh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit.i.i.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsENtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEB1s_(ptr noalias noundef align 8 dereferenceable(160) %i.c), !noalias !174
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !172
  br label %_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_3map3MapINtNtNtBd_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1U_11transaction5stateNtB2Y_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EE4peek0B1W_.exit

bb.af:                                            ; preds = %bb.ah, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i.i.i
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.af, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i.i.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !174
  unreachable

bb.ag:                                            ; preds = %bb.ah, %.body.i.i.i
  resume { ptr, i32 } %.pn.i.i.i

bb.ah:                                            ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsENtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEB1s_(ptr noalias noundef align 8 dereferenceable(160) %i.c) #38
          to label %bb.ag unwind label %bb.af, !noalias !174

bb.ai:                                            ; preds = %bb.c
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsENtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEB1s_(ptr noalias noundef align 8 dereferenceable(160) %i.c), !noalias !174
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i), "nonnull"(ptr %.val2.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !172
  %i.dj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !172, !nonnull !9, !noundef !9
  %i.dl = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !172, !noundef !9
  %i.dn = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 56 ; 3 uses
  %i.do = call noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dk, i64 noundef %i.dm), !noalias !174
  br i1 %i.do, label %bb.ak, label %_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_3map3MapINtNtNtBd_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1U_11transaction5stateNtB2Y_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EE4peek0B1W_.exit

bb.ak:                                            ; preds = %bb.aj
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !212, !noalias !215, !noundef !9
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %select.unfold6.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.du = call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dn), !noalias !174 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.dv = lshr i64 %i.du, 57
  %i.dw = trunc nuw nsw i64 %i.dv to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !223, !noalias !224, !noundef !9 ; 2 uses
  %i.dz = load ptr, ptr %i.ds, align 8, !alias.scope !223, !noalias !224, !nonnull !9, !noundef !9 ; 2 uses
  %i.ea = insertelement <16 x i8> poison, i8 %i.dw, i64 0
  %i.eb = shufflevector <16 x i8> %i.ea, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %bb.al
  %.sroa.9.0.i.i.i37.i.i.i = phi i64 [ 0, %bb.al ], [ %i.es, %bb.ao ]
  %.pn.i.i.i38.i.i.i = phi i64 [ %i.du, %bb.al ], [ %i.et, %bb.ao ]
  %.sroa.01.0.i.i.i39.i.i.i = and i64 %.pn.i.i.i38.i.i.i, %i.dy ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.sroa.01.0.i.i.i39.i.i.i
  %.sroa.0.0.copyload.i21.i.i40.i.i.i = load <16 x i8>, ptr %i.ec, align 1, !noalias !227 ; 2 uses
  %i.ed = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i40.i.i.i, %i.eb
  %i.ee = bitcast <16 x i1> %i.ed to i16          ; 2 uses
  %.not.i.not27.i.i41.i.i.i = icmp eq i16 %i.ee, 0
  br i1 %.not.i.not27.i.i41.i.i.i, label %._crit_edge.i.i45.i.i.i, label %.lr.ph.i.i42.i.i.i

.lr.ph.i.i42.i.i.i:                               ; preds = %bb.am, %bb.an
  %.sroa.06.0.i28.i.i43.i.i.i = phi i16 [ %i.er, %bb.an ], [ %i.ee, %bb.am ] ; 3 uses
  %i.ef = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i28.i.i43.i.i.i, i1 true)
  %i.eg = zext nneg i16 %i.ef to i64
  %i.eh = add i64 %.sroa.01.0.i.i.i39.i.i.i, %i.eg
  %i.ei = and i64 %i.eh, %i.dy
  %i.ej = sub nsw i64 0, %i.ei
  %i.ek = getelementptr inbounds [48 x i8], ptr %i.dz, i64 %i.ej ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -48
  %i.em = call noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.el), !noalias !230
  br i1 %i.em, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBO_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs14kWLkQVSKO_14deltalake_core.exit50.i.i.i, label %bb.an, !prof !70

._crit_edge.i.i45.i.i.i:                          ; preds = %bb.an, %bb.am
  %i.en = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i40.i.i.i, splat (i8 -1)
  %i.eo = bitcast <16 x i1> %i.en to i16
  %i.ep = icmp eq i16 %i.eo, 0
  br i1 %i.ep, label %bb.ao, label %select.unfold6.i.i.i, !prof !10

bb.an:                                            ; preds = %.lr.ph.i.i42.i.i.i
  %i.eq = add i16 %.sroa.06.0.i28.i.i43.i.i.i, -1
  %i.er = and i16 %i.eq, %.sroa.06.0.i28.i.i43.i.i.i ; 2 uses
  %.not.i.not.i.i44.i.i.i = icmp eq i16 %i.er, 0
  br i1 %.not.i.not.i.i44.i.i.i, label %._crit_edge.i.i45.i.i.i, label %.lr.ph.i.i42.i.i.i

bb.ao:                                            ; preds = %._crit_edge.i.i45.i.i.i
  %i.es = add i64 %.sroa.9.0.i.i.i37.i.i.i, 16    ; 2 uses
  %i.et = add i64 %.sroa.01.0.i.i.i39.i.i.i, %i.es
  br label %bb.am

_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBO_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs14kWLkQVSKO_14deltalake_core.exit50.i.i.i: ; preds = %.lr.ph.i.i42.i.i.i
  %i.eu = getelementptr inbounds i8, ptr %i.ek, i64 -24
  %i.ev = load i64, ptr %i.eu, align 8, !range !123, !noalias !174, !noundef !9
  %.not20.i.i.i = icmp ne i64 %i.ev, -9223372036854775808
  %spec.select12.i.i = zext i1 %.not20.i.i.i to i64
  br label %_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_3map3MapINtNtNtBd_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1U_11transaction5stateNtB2Y_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EE4peek0B1W_.exit

select.unfold6.i.i.i:                             ; preds = %._crit_edge.i.i45.i.i.i, %bb.ak
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #40, !noalias !174
  unreachable

_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_3map3MapINtNtNtBd_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1U_11transaction5stateNtB2Y_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EE4peek0B1W_.exit: ; preds = %bb.b, %bb.ae, %bb.aj, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBO_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs14kWLkQVSKO_14deltalake_core.exit50.i.i.i
  %.sroa.6.0 = phi i64 [ %.sroa.16.1.i.i, %bb.ae ], [ 0, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBO_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs14kWLkQVSKO_14deltalake_core.exit50.i.i.i ], [ undef, %bb.aj ], [ undef, %bb.b ]
  %.sroa.5.0 = phi i64 [ %.sroa.10.1.i.i, %bb.ae ], [ %spec.select12.i.i, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBO_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs14kWLkQVSKO_14deltalake_core.exit50.i.i.i ], [ 0, %bb.aj ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i128 [ 18, %bb.ae ], [ 18, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBO_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs14kWLkQVSKO_14deltalake_core.exit50.i.i.i ], [ 18, %bb.aj ], [ 50, %bb.b ]
  store i128 %.sroa.0.0, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 16
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0, ptr %.sroa.59.0..sroa_idx, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.a, %_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_3map3MapINtNtNtBd_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1U_11transaction5stateNtB2Y_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EE4peek0B1W_.exit
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtNtCs1N9T06jgEdt_11arrow_array5array23fixed_size_binary_arrayNtB3_20FixedSizeBinaryArray30try_from_sparse_iter_with_sizeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionINtB25_3VechEEEB3q_ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = alloca [56 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.664 = alloca [40 x i8], align 8          ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 2 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 16               ; 11 uses
  %i.m = alloca [32 x i8], align 16               ; 10 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 6 uses
  %i.p = alloca [4 x i8], align 4                 ; 4 uses
  store i32 %2, ptr %i.p, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 0, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i32 0, ptr %i.n, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.q, align 8, !nonnull !9, !noundef !9
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val31 = load ptr, ptr %i.r, align 8, !nonnull !9, !noundef !9
  %i.s = ptrtoint ptr %.val31 to i64
  %i.t = ptrtoint ptr %.val to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = udiv exact i64 %i.u, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.w = add nuw nsw i64 %i.v, 7                  ; 2 uses
  %.sroa.0.0 = lshr i64 %i.w, 3                   ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.x = and i64 %i.w, 504
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.split.i, label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutable13MutableBufferECs14kWLkQVSKO_14deltalake_core.exit55: ; preds = %bb.ah, %bb.ag, %bb.ai, %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutable13MutableBufferECs14kWLkQVSKO_14deltalake_core.exit53, %bb.b
  %.pn26 = phi { ptr, i32 } [ %i.z, %bb.b ], [ %eh.lpad-body29, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutable13MutableBufferECs14kWLkQVSKO_14deltalake_core.exit53 ], [ %.pn2472, %bb.aj ], [ %i.by, %bb.ag ], [ %i.by, %bb.ah ], [ %i.by, %bb.ai ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionINtB7_3VechEEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionINtBL_3VechEEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.af

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutable13MutableBufferECs14kWLkQVSKO_14deltalake_core.exit, %bb.e, %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutable13MutableBufferECs14kWLkQVSKO_14deltalake_core.exit55

bb.c:                                             ; preds = %bb.a
  %reass.sub.i = and i64 %.sroa.0.0, 288230376151711680
  %i.aa = add nuw nsw i64 %reass.sub.i, 64        ; 2 uses
  %i.ab = icmp samesign ult i64 %i.aa, %.sroa.0.0
  br i1 %i.ab, label %bb.d, label %.split.i.thread, !prof !10

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  unreachable

.split.i:                                         ; preds = %bb.a
  %i.ac = icmp eq i64 %.sroa.0.0, 0
  br i1 %i.ac, label %bb.f, label %.split.i.thread

.split.i.thread:                                  ; preds = %bb.c, %.split.i
  %.sroa.4.0.i68 = phi i64 [ %.sroa.0.0, %.split.i ], [ %i.aa, %bb.c ] ; 3 uses
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !233
  %i.ad = tail call noundef align 128 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.i68, i64 noundef 128) #41, !noalias !233 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %.split.i.thread
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef %.sroa.4.0.i68) #37
          to label %.noexc33 unwind label %bb.b

.noexc33:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.split.i.thread, %.split.i
  %.sroa.4.0.i69 = phi i64 [ 0, %.split.i ], [ %.sroa.4.0.i68, %.split.i.thread ]
  %.sroa.01.0.i = phi ptr [ inttoptr (i64 128 to ptr), %.split.i ], [ %i.ad, %.split.i.thread ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store ptr %.sroa.01.0.i, ptr %i.af, align 16, !alias.scope !233
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  store i64 0, ptr %i.ag, align 8, !alias.scope !233
  store i64 128, ptr %i.m, align 16, !alias.scope !233
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.4.0.i69, ptr %i.ah, align 8, !alias.scope !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ai = sext i32 %2 to i64
  %i.aj = mul i64 %i.v, %i.ai                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.ak = and i64 %i.aj, 63
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %reass.sub.i34 = and i64 %i.aj, -64
  %i.am = add i64 %reass.sub.i34, 64              ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.aj
  br i1 %i.an, label %bb.i, label %bb.h, !prof !10

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i35 = phi i64 [ %i.aj, %bb.f ], [ %i.am, %bb.g ] ; 5 uses
  %i.ao = icmp ult i64 %.sroa.4.0.i35, 9223372036854775681
end_hunk_0
begin_hunk_1_@_RINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6_11ScalarValue24iter_to_decimal256_arrayINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBM_EEECs14kWLkQVSKO_14deltalake_core:bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(56) %.sroa.10.40..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(37) %.sroa.6.sroa.6, i64 37, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.6)
  store i8 38, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %2, ptr %.sroa.2.0..sroa_idx, align 1
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %3, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 2
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  ret void

bb.k:                                             ; preds = %bb.h, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.6)
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeE16from_iter_valuesINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2a_5slice4iter4IterTjNtCslnB3YlOUCfj_9arrow_row3RowEENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess0_0EEB3W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @_RINvXsh_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB6_6BufferINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB1c_8adapters3map3MapINtNtNtB1e_5slice4iter4IterTjNtCslnB3YlOUCfj_9arrow_row3RowEENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess0_0EEB3Q_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %1, ptr noundef %2)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !9
  %i.f = lshr i64 %i.e, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 8, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBuffermE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %i.f)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #38
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 8, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeE13downcast_dictINtNtB7_10byte_array16GenericByteArrayINtB1n_17GenericBinaryTypelEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = tail call { ptr, ptr } @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !9, !nonnull !9
  call void %i.g(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.d) #43
  %i.h = load i128, ptr %i.a, align 16, !noundef !9
  %i.i = icmp eq i128 %i.h, 121271995232338684831841715573084944186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %spec.select = select i1 %i.i, ptr %0, ptr null
  %i.j = insertvalue { ptr, ptr } poison, ptr %spec.select, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %i.d, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeE13downcast_dictINtNtB7_10byte_array16GenericByteArrayINtB1n_17GenericBinaryTypexEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = tail call { ptr, ptr } @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !9, !nonnull !9
  call void %i.g(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.d) #43
  %i.h = load i128, ptr %i.a, align 16, !noundef !9
  %i.i = icmp eq i128 %i.h, -41857665984851166573895325954714898448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %spec.select = select i1 %i.i, ptr %0, ptr null
  %i.j = insertvalue { ptr, ptr } poison, ptr %spec.select, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %i.d, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeE13downcast_dictINtNtB7_10byte_array16GenericByteArrayINtB1n_17GenericStringTypelEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = tail call { ptr, ptr } @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !9, !nonnull !9
  call void %i.g(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.d) #43
  %i.h = load i128, ptr %i.a, align 16, !noundef !9
  %i.i = icmp eq i128 %i.h, 41615882080583030659327284372293995949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %spec.select = select i1 %i.i, ptr %0, ptr null
  %i.j = insertvalue { ptr, ptr } poison, ptr %spec.select, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %i.d, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeE13downcast_dictINtNtB7_10byte_array16GenericByteArrayINtB1n_17GenericStringTypexEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = tail call { ptr, ptr } @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !9, !nonnull !9
  call void %i.g(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.d) #43
  %i.h = load i128, ptr %i.a, align 16, !noundef !9
  %i.i = icmp eq i128 %i.h, -145397382732069164413703408051286692524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %spec.select = select i1 %i.i, ptr %0, ptr null
  %i.j = insertvalue { ptr, ptr } poison, ptr %spec.select, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %i.d, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeE13downcast_dictINtNtB7_15byte_view_array20GenericByteViewArrayNtB1n_14BinaryViewTypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = tail call { ptr, ptr } @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !9, !nonnull !9
  call void %i.g(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.d) #43
  %i.h = load i128, ptr %i.a, align 16, !noundef !9
  %i.i = icmp eq i128 %i.h, 133106710707579156826278059383950579171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %spec.select = select i1 %i.i, ptr %0, ptr null
  %i.j = insertvalue { ptr, ptr } poison, ptr %spec.select, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %i.d, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeE13downcast_dictINtNtB7_15byte_view_array20GenericByteViewArrayNtB1n_14StringViewTypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = tail call { ptr, ptr } @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !9, !nonnull !9
  call void %i.g(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.d) #43
  %i.h = load i128, ptr %i.a, align 16, !noundef !9
  %i.i = icmp eq i128 %i.h, 314245525420789826096845595062762751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %spec.select = select i1 %i.i, ptr %0, ptr null
  %i.j = insertvalue { ptr, ptr } poison, ptr %spec.select, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %i.d, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsb_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types24TimestampMicrosecondTypeE13with_timezoneReECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  %i.b = invoke { ptr, i64 } @_RNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcShE15copy_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %4 = extractvalue { ptr, i64 } %i.b, 1          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = invoke noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offseteECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.d, i64 noundef %4)
          to label %_RINvMsb_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types24TimestampMicrosecondTypeE17with_timezone_optINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.c

_RINvMsb_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types24TimestampMicrosecondTypeE17with_timezone_optINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %i.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  store i8 13, ptr %0, align 8, !alias.scope !1299, !noalias !1296
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !1299, !noalias !1296
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !1299, !noalias !1296
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1299, !noalias !1296
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !alias.scope !1301
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !alias.scope !1301
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.thr_comm

bb.c:                                             ; preds = %.noexc, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types24TimestampMicrosecondTypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.a) #38
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs1N9T06jgEdt_11arrow_array5array11get_offsetslECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 16               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i64, ptr %i.e, align 8, !noundef !9 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !9
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !9
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #40
  unreachable

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre4 = load i64, ptr %.phi.trans.insert3, align 8
  %i.o = icmp eq i64 %.pre4, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br i1 %i.o, label %bb.o, label %bb.n

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1302
  call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer15from_len_zeroed(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, i64 noundef 4), !noalias !1302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1302
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = load ptr, ptr %i.p, align 16, !noalias !1302, !nonnull !9, !noundef !9 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.s = load i64, ptr %i.r, align 8, !noalias !1302, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1302
  store i64 1, ptr %i.a, align 8, !noalias !1302
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.t, align 8, !noalias !1302
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %i.u, align 8, !noalias !1302
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.s, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1302
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1302
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.v = load <2 x i64>, ptr %i.c, align 16, !noalias !1302
  store <2 x i64> %i.v, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !1302
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !1305
  %i.w = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #41, !noalias !1305 ; 5 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.g, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !10

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #37
          to label %.noexc.i unwind label %bb.h, !noalias !1302

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #38
          to label %common.resume.i unwind label %bb.i, !noalias !1302

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !1302
  unreachable

common.resume.i:                                  ; preds = %bb.k, %bb.j, %bb.h
  %common.resume.op.i = phi { ptr, i32 } [ %i.y, %bb.h ], [ %i.ad, %bb.k ], [ %i.ad, %bb.j ]
  resume { ptr, i32 } %common.resume.op.i

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !1302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1302
  store ptr %i.w, ptr %i.b, align 8, !noalias !1302
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.q, ptr %i.aa, align 8, !noalias !1302
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.s, ptr %i.ab, align 8, !noalias !1302
  %i.ac = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.q, i64 noundef 4)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.j, !noalias !1308

bb.j:                                             ; preds = %.invoke.i.i, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !1312
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.k, label %common.resume.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #42
          to label %common.resume.i unwind label %bb.l, !noalias !1319

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ag = icmp eq i64 %i.ac, 0
  br i1 %i.ag, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offsetINtB2_12OffsetBufferlE9new_emptyCs14kWLkQVSKO_14deltalake_core.exit, label %.invoke.i.i, !prof !70

.invoke.i.i:                                      ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !1308, !noundef !9
  %.not.i.i = icmp eq ptr %i.ai, null             ; 3 uses
  %.2.i.i = select i1 %.not.i.i, ptr @473, ptr @475
  %.1.i.i = select i1 %.not.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #37
          to label %.cont.i.i unwind label %bb.j, !noalias !1308

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !1319
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offsetINtB2_12OffsetBufferlE9new_emptyCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1302
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offsetINtB2_12OffsetBufferlE9new_emptyCs14kWLkQVSKO_14deltalake_core.exit
  ret void

bb.n:                                             ; preds = %.thread, %bb.e
  %i.ak = phi ptr [ %i.k, %.thread ], [ %.pre, %bb.e ] ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.am = atomicrmw add ptr %i.al, i64 1 monotonic, align 8
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.e
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #40
  unreachable

bb.p:                                             ; preds = %bb.n
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs14kWLkQVSKO_14deltalake_core:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs1_NtCs7xHNgVo2C7m_12arrow_buffer5bytesNtB5_5BytesNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit.thread.i, %_RNvXs1_NtCs7xHNgVo2C7m_12arrow_buffer5bytesNtB5_5BytesNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !2005 ; 2 uses
  %i.c = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.c, label %.body.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !2014, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !2015
  br label %.body.i

bb.d:                                             ; preds = %bb.a
  %.val.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !2005 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !2014, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !2018
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i

.body.i:                                          ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.g) #38
          to label %bb.f unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.g, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.b, %.body.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.f, %.body.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  resume { ptr, i32 } %.pn.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2033, !nonnull !9, !noundef !9
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !2033
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSIBx_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2046)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2049, !nonnull !9, !noundef !9
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !2049
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2050)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !2053, !noundef !9 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !2054
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2065)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2068, !noundef !9 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.n = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !2069
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  resume { ptr, i32 } %i.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.f, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !9 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #41
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit5, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #41
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit5

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit5: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default11file_stream10FileOpenerEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !9 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default11file_stream10FileOpenerEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #41
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default11file_stream10FileOpenerEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default11file_stream10FileOpenerEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default11file_stream10FileOpenerEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit5, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #41
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default11file_stream10FileOpenerEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit5

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default11file_stream10FileOpenerEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit5: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtB4_6option6OptionNtNtBL_6string6StringEEECs14kWLkQVSKO_14deltalake_core(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load i64, ptr %.0.val, align 8, !range !123, !alias.scope !2080, !noundef !9
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %.0.val, align 8, !alias.scope !2083 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.d, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val3.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !2090, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !2091
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i = load i64, ptr %.0.val, align 8, !alias.scope !2083 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val1.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !2090, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !2094
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f, %bb.e, %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 24, i64 noundef 8) #41
  ret void

bb.g:                                             ; preds = %bb.d, %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 24, i64 noundef 8) #41
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECs14kWLkQVSKO_14deltalake_core(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load i64, ptr %.0.val, align 8, !range !2097, !alias.scope !2098, !noundef !9
  %switch.i.i = icmp samesign ult i64 %i.a, 2
  br i1 %switch.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  invoke void @_RNvXs0_NtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #41
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #41
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !range !2097, !alias.scope !2103, !noundef !9
  switch i64 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorECs14kWLkQVSKO_14deltalake_core.exit [
    i64 0, label %bb.b
    i64 1, label %bb.e
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i: ; preds = %bb.g, %bb.d
  %.val.i.i4.sink.i = phi i64 [ %.val.i.i.i, %bb.d ], [ %.val.i.i4.i, %bb.g ]
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1.i.i5.i = load ptr, ptr %i.c, align 8, !alias.scope !2103, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i5.i, i64 noundef %.val.i.i4.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !9
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !2106 ; 2 uses
  %i.f = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.f, label %bb.h, label %common.resume.sink.split.i

bb.d:                                             ; preds = %bb.b
  %.val.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !2106 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i

common.resume.sink.split.i:                       ; preds = %bb.f, %bb.c
  %.val2.i.i1.sink.i = phi i64 [ %.val2.i.i1.i, %bb.f ], [ %.val2.i.i.i, %bb.c ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.e, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val3.i.i2.i = load ptr, ptr %i.h, align 8, !alias.scope !2103, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i2.i, i64 noundef %.val2.i.i1.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !9
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i1.i = load i64, ptr %i.i, align 8, !alias.scope !2113 ; 2 uses
  %i.k = icmp eq i64 %.val2.i.i1.i, 0
  br i1 %i.k, label %bb.h, label %common.resume.sink.split.i

bb.g:                                             ; preds = %bb.e
  %.val.i.i4.i = load i64, ptr %i.i, align 8, !alias.scope !2113 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i4.i, 0
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.g, %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i, %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 8) #41
  ret void

bb.h:                                             ; preds = %bb.f, %common.resume.sink.split.i, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %common.resume.op.ph.i, %common.resume.sink.split.i ], [ %i.e, %bb.c ], [ %i.j, %bb.f ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 8) #41
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 8) #41
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 8) #41
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #41
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #41
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic10DiagnosticEECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer11ArrowWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5728)
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !5731, !nonnull !9, !noundef !9
  %i.cg = atomicrmw sub ptr %i.cf, i64 1 release, align 8, !noalias !5731
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit8

bb.an:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer19ArrowRowGroupWriterEECs14kWLkQVSKO_14deltalake_core.exit5
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ce) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit8 unwind label %bb.ao

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer19ArrowRowGroupWriterEECs14kWLkQVSKO_14deltalake_core.exit, %bb.al, %bb.ao
  %.pn2 = phi { ptr, i32 } [ %i.cj, %bb.ao ], [ %.pn, %bb.al ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer19ArrowRowGroupWriterEECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 248
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer26ArrowRowGroupWriterFactoryECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ci) #38
          to label %bb.aq unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit8: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer19ArrowRowGroupWriterEECs14kWLkQVSKO_14deltalake_core.exit5, %bb.an
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer26ArrowRowGroupWriterFactoryECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ck)
  ret void

bb.ap:                                            ; preds = %bb.al, %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCshmPyUV8PP35_6chrono6format10formatting13DelayedFormatNtNtBL_8strftime13StrftimeItemsEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !123, !alias.scope !5732, !noundef !9
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCshmPyUV8PP35_6chrono6offset5fixed11FixedOffsetEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !5735 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !5744, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5745
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !5735 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCshmPyUV8PP35_6chrono6offset5fixed11FixedOffsetEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !5744, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5748
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCshmPyUV8PP35_6chrono6offset5fixed11FixedOffsetEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCshmPyUV8PP35_6chrono6offset5fixed11FixedOffsetEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load i128, ptr %0, align 16, !range !25, !alias.scope !5751, !noundef !9
  %i.d = and i128 %i.c, 62
  %switch.i = icmp eq i128 %i.d, 50
  br i1 %switch.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionIBH_NtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionIBH_NtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.e = load i128, ptr %0, align 16, !range !25, !alias.scope !5754, !noundef !9
  %i.f = and i128 %i.e, 62
  %switch.i1 = icmp eq i128 %i.f, 50
  br i1 %switch.i1, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionIBH_NtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEEECs14kWLkQVSKO_14deltalake_core.exit2, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionIBH_NtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEEECs14kWLkQVSKO_14deltalake_core.exit2

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionIBH_NtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEEECs14kWLkQVSKO_14deltalake_core.exit2: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  ret void

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionIBH_NtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5757, !noundef !9 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775800
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775802
  %i.d = icmp ugt i64 %i.a, -9223372036854775803
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.g
    i64 1, label %bb.k
    i64 2, label %bb.p
    i64 3, label %bb.q
    i64 4, label %bb.v
    i64 5, label %bb.z
    i64 6, label %bb.ae
    i64 7, label %bb.aj
    i64 8, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
    i64 9, label %bb.ao
    i64 10, label %bb.at
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.f, align 8, !alias.scope !5758 ; 2 uses
  %i.h = icmp eq i64 %.val2.i.i, 0
  br i1 %i.h, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load ptr, ptr %i.i, align 8, !alias.scope !5765, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5766
  br label %common.resume

bb.e:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %i.f, align 8, !alias.scope !5758 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i, 0
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.k, align 8, !alias.scope !5765, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5769
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

common.resume:                                    ; preds = %bb.bq, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i108, %bb.bn, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i103, %bb.bk, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i98, %bb.bh, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i93, %bb.be, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i88, %.body79, %.body71, %.body63, %.body55, %.body47, %.body, %bb.ba, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i83, %bb.y, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i38, %bb.u, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.j, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.fj, %bb.bn ], [ %i.g, %bb.c ], [ %i.t, %bb.j ], [ %i.ao, %bb.u ], [ %i.bc, %bb.y ], [ %i.cw, %bb.ba ], [ %i.ch, %.body79 ], [ %i.dn, %bb.be ], [ %i.ed, %bb.bh ], [ %i.et, %bb.bk ], [ %i.g, %bb.d ], [ %i.t, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.ao, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.bc, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i38 ], [ %i.cw, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i83 ], [ %i.aa, %.body ], [ %i.bj, %.body47 ], [ %i.bp, %.body55 ], [ %i.bv, %.body63 ], [ %i.cb, %.body71 ], [ %i.dn, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i88 ], [ %i.ed, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i93 ], [ %i.et, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i98 ], [ %i.fj, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i103 ], [ %i.fz, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i108 ], [ %i.fz, %bb.bq ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val27 = load ptr, ptr %i.l, align 8           ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val28 = load ptr, ptr %i.m, align 8, !nonnull !9, !align !12, !noundef !9 ; 5 uses
  %i.n = load ptr, ptr %.val28, align 8, !invariant.load !9 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27) ]
  invoke void %i.n(ptr noundef nonnull %.val27)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.val28, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27) ]
  %i.r = getelementptr inbounds nuw i8, ptr %.val28, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.s) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val28, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %.val28, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) %i.y) #41
  br label %common.resume

bb.k:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i31 = load i64, ptr %i.z, align 8, !alias.scope !5772 ; 2 uses
  %i.ab = icmp eq i64 %.val2.i.i31, 0
  br i1 %i.ab, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i32 = load ptr, ptr %i.ac, align 8, !alias.scope !5779, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i32, i64 noundef %.val2.i.i31, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5780
  br label %.body

bb.n:                                             ; preds = %bb.k
  %.val.i.i34 = load i64, ptr %i.z, align 8, !alias.scope !5772 ; 2 uses
  %i.ad = icmp eq i64 %.val.i.i34, 0
  br i1 %i.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit36, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i35 = load ptr, ptr %i.ae, align 8, !alias.scope !5779, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i35, i64 noundef %.val.i.i34, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5783
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit36

bb.p:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.q:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val29 = load ptr, ptr %i.af, align 8, !noundef !9 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val30 = load ptr, ptr %i.ag, align 8          ; 6 uses
  %i.ah = icmp eq ptr %.val29, null
  br i1 %i.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val30) ]
  %i.ai = load ptr, ptr %.val30, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void %i.ai(ptr noundef nonnull %.val29)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %.val30, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.t
  %i.am = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) %i.an) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.s
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val30, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.u
  %i.as = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %i.at = load i64, ptr %i.as, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) %i.at) #41
  br label %common.resume

bb.v:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val25 = load ptr, ptr %i.au, align 8          ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val26 = load ptr, ptr %i.av, align 8, !nonnull !9, !align !12, !noundef !9 ; 5 uses
  %i.aw = load ptr, ptr %.val26, align 8, !invariant.load !9 ; 2 uses
  %.not.i37 = icmp eq ptr %i.aw, null
  br i1 %.not.i37, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25) ]
  invoke void %i.aw(ptr noundef nonnull %.val25)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %.val26, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i40

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i40: ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25, i64 noundef %i.ay, i64 noundef range(i64 1, -9223372036854775807) %i.bb) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.y:                                             ; preds = %bb.w
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val26, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i38

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i38: ; preds = %bb.y
  %i.bg = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) %i.bh) #41
  br label %common.resume

bb.z:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i42 = load i64, ptr %i.bi, align 8, !alias.scope !5786 ; 2 uses
  %i.bk = icmp eq i64 %.val2.i.i42, 0
  br i1 %i.bk, label %.body47, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i43 = load ptr, ptr %i.bl, align 8, !alias.scope !5793, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i43, i64 noundef %.val2.i.i42, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5794
  br label %.body47

bb.ac:                                            ; preds = %bb.z
  %.val.i.i45 = load i64, ptr %i.bi, align 8, !alias.scope !5786 ; 2 uses
  %i.bm = icmp eq i64 %.val.i.i45, 0
  br i1 %i.bm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit49, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i46 = load ptr, ptr %i.bn, align 8, !alias.scope !5793, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i46, i64 noundef %.val.i.i45, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5797
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit49

bb.ae:                                            ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i50 = load i64, ptr %i.bo, align 8, !alias.scope !5800 ; 2 uses
  %i.bq = icmp eq i64 %.val2.i.i50, 0
  br i1 %i.bq, label %.body55, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i51 = load ptr, ptr %i.br, align 8, !alias.scope !5807, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i51, i64 noundef %.val2.i.i50, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5808
  br label %.body55

bb.ah:                                            ; preds = %bb.ae
  %.val.i.i53 = load i64, ptr %i.bo, align 8, !alias.scope !5800 ; 2 uses
  %i.bs = icmp eq i64 %.val.i.i53, 0
  br i1 %i.bs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit57, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i54 = load ptr, ptr %i.bt, align 8, !alias.scope !5807, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i54, i64 noundef %.val.i.i53, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5811
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit57

bb.aj:                                            ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %bb.am unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i58 = load i64, ptr %i.bu, align 8, !alias.scope !5814 ; 2 uses
  %i.bw = icmp eq i64 %.val2.i.i58, 0
  br i1 %i.bw, label %.body63, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i59 = load ptr, ptr %i.bx, align 8, !alias.scope !5821, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i59, i64 noundef %.val2.i.i58, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5822
  br label %.body63

bb.am:                                            ; preds = %bb.aj
  %.val.i.i61 = load i64, ptr %i.bu, align 8, !alias.scope !5814 ; 2 uses
  %i.by = icmp eq i64 %.val.i.i61, 0
  br i1 %i.by, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit65, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i62 = load ptr, ptr %i.bz, align 8, !alias.scope !5821, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i62, i64 noundef %.val.i.i61, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5825
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit65

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i110, %bb.bp, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i105, %bb.bm, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i100, %bb.bj, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i95, %bb.bg, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i90, %bb.bd, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i85, %bb.az, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i40, %bb.x, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.t, %bb.q, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.i, %bb.f, %bb.e, %bb.p, %bb.a
  ret void

bb.ao:                                            ; preds = %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ca)
          to label %bb.ar unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i66 = load i64, ptr %i.ca, align 8, !alias.scope !5828 ; 2 uses
  %i.cc = icmp eq i64 %.val2.i.i66, 0
  br i1 %i.cc, label %.body71, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i67 = load ptr, ptr %i.cd, align 8, !alias.scope !5835, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i67, i64 noundef %.val2.i.i66, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5836
  br label %.body71

bb.ar:                                            ; preds = %bb.ao
  %.val.i.i69 = load i64, ptr %i.ca, align 8, !alias.scope !5828 ; 2 uses
  %i.ce = icmp eq i64 %.val.i.i69, 0
  br i1 %i.ce, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit73, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i70 = load ptr, ptr %i.cf, align 8, !alias.scope !5835, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i70, i64 noundef %.val.i.i69, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5839
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit73

bb.at:                                            ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %bb.aw unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i74 = load i64, ptr %i.cg, align 8, !alias.scope !5842 ; 2 uses
  %i.ci = icmp eq i64 %.val2.i.i74, 0
  br i1 %i.ci, label %.body79, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i75 = load ptr, ptr %i.cj, align 8, !alias.scope !5849, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i75, i64 noundef %.val2.i.i74, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5850
  br label %.body79

bb.aw:                                            ; preds = %bb.at
  %.val.i.i77 = load i64, ptr %i.cg, align 8, !alias.scope !5842 ; 2 uses
  %i.ck = icmp eq i64 %.val.i.i77, 0
  br i1 %i.ck, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit81, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i78 = load ptr, ptr %i.cl, align 8, !alias.scope !5849, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i78, i64 noundef %.val.i.i77, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5853
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit81

.body:                                            ; preds = %bb.l, %bb.m
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val23 = load ptr, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val24 = load ptr, ptr %i.cn, align 8, !nonnull !9, !align !12, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.val23, ptr nonnull %.val24) #38
          to label %common.resume unwind label %bb.bb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit36: ; preds = %bb.o, %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val21 = load ptr, ptr %i.co, align 8          ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val22 = load ptr, ptr %i.cp, align 8, !nonnull !9, !align !12, !noundef !9 ; 5 uses
  %i.cq = load ptr, ptr %.val22, align 8, !invariant.load !9 ; 2 uses
  %.not.i82 = icmp eq ptr %i.cq, null
  br i1 %.not.i82, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit36
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  invoke void %i.cq(ptr noundef nonnull %.val21)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit36
  %i.cr = getelementptr inbounds nuw i8, ptr %.val22, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i85

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i85: ; preds = %bb.az
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef %i.cs, i64 noundef range(i64 1, -9223372036854775807) %i.cv) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.ba:                                            ; preds = %bb.ay
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.val22, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i83

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i83: ; preds = %bb.ba
  %i.da = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %i.db = load i64, ptr %i.da, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) %i.db) #41
  br label %common.resume

bb.bb:                                            ; preds = %.body, %.body47, %.body55, %.body63, %.body71, %.body79
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

.body47:                                          ; preds = %bb.aa, %bb.ab
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val19 = load ptr, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val20 = load ptr, ptr %i.de, align 8, !nonnull !9, !align !12, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.val19, ptr nonnull %.val20) #38
          to label %common.resume unwind label %bb.bb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit49: ; preds = %bb.ad, %bb.ac
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val17 = load ptr, ptr %i.df, align 8          ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val18 = load ptr, ptr %i.dg, align 8, !nonnull !9, !align !12, !noundef !9 ; 5 uses
  %i.dh = load ptr, ptr %.val18, align 8, !invariant.load !9 ; 2 uses
  %.not.i87 = icmp eq ptr %i.dh, null
  br i1 %.not.i87, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit49
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  invoke void %i.dh(ptr noundef nonnull %.val17)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit49
  %i.di = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i90

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i90: ; preds = %bb.bd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef %i.dj, i64 noundef range(i64 1, -9223372036854775807) %i.dm) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.be:                                            ; preds = %bb.bc
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i88

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i88: ; preds = %bb.be
  %i.dr = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef %i.dp, i64 noundef range(i64 1, -9223372036854775807) %i.ds) #41
  br label %common.resume

.body55:                                          ; preds = %bb.af, %bb.ag
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val15 = load ptr, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val16 = load ptr, ptr %i.du, align 8, !nonnull !9, !align !12, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.val15, ptr nonnull %.val16) #38
          to label %common.resume unwind label %bb.bb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit57: ; preds = %bb.ai, %bb.ah
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val13 = load ptr, ptr %i.dv, align 8          ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val14 = load ptr, ptr %i.dw, align 8, !nonnull !9, !align !12, !noundef !9 ; 5 uses
  %i.dx = load ptr, ptr %.val14, align 8, !invariant.load !9 ; 2 uses
  %.not.i92 = icmp eq ptr %i.dx, null
  br i1 %.not.i92, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit57
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  invoke void %i.dx(ptr noundef nonnull %.val13)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit57
  %i.dy = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i95

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i95: ; preds = %bb.bg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef %i.dz, i64 noundef range(i64 1, -9223372036854775807) %i.ec) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.bh:                                            ; preds = %bb.bf
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i93

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i93: ; preds = %bb.bh
  %i.eh = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef %i.ef, i64 noundef range(i64 1, -9223372036854775807) %i.ei) #41
  br label %common.resume

.body63:                                          ; preds = %bb.ak, %bb.al
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val11 = load ptr, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val12 = load ptr, ptr %i.ek, align 8, !nonnull !9, !align !12, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.val11, ptr nonnull %.val12) #38
          to label %common.resume unwind label %bb.bb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit65: ; preds = %bb.an, %bb.am
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val9 = load ptr, ptr %i.el, align 8           ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val10 = load ptr, ptr %i.em, align 8, !nonnull !9, !align !12, !noundef !9 ; 5 uses
  %i.en = load ptr, ptr %.val10, align 8, !invariant.load !9 ; 2 uses
  %.not.i97 = icmp eq ptr %i.en, null
  br i1 %.not.i97, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit65
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  invoke void %i.en(ptr noundef nonnull %.val9)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit65
  %i.eo = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i100

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i100: ; preds = %bb.bj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  %i.er = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.es = load i64, ptr %i.er, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %i.ep, i64 noundef range(i64 1, -9223372036854775807) %i.es) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.bk:                                            ; preds = %bb.bi
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i98

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i98: ; preds = %bb.bk
  %i.ex = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %i.ev, i64 noundef range(i64 1, -9223372036854775807) %i.ey) #41
  br label %common.resume

.body71:                                          ; preds = %bb.ap, %bb.aq
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val7 = load ptr, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val8 = load ptr, ptr %i.fa, align 8, !nonnull !9, !align !12, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.val7, ptr nonnull %.val8) #38
          to label %common.resume unwind label %bb.bb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit73: ; preds = %bb.as, %bb.ar
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5 = load ptr, ptr %i.fb, align 8           ; 5 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val6 = load ptr, ptr %i.fc, align 8, !nonnull !9, !align !12, !noundef !9 ; 5 uses
  %i.fd = load ptr, ptr %.val6, align 8, !invariant.load !9 ; 2 uses
  %.not.i102 = icmp eq ptr %i.fd, null
  br i1 %.not.i102, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit73
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  invoke void %i.fd(ptr noundef nonnull %.val5)
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit73
  %i.fe = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i105

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i105: ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.ff, i64 noundef range(i64 1, -9223372036854775807) %i.fi) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.bn:                                            ; preds = %bb.bl
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i103

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i103: ; preds = %bb.bn
  %i.fn = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.fl, i64 noundef range(i64 1, -9223372036854775807) %i.fo) #41
  br label %common.resume

.body79:                                          ; preds = %bb.au, %bb.av
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3 = load ptr, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val4 = load ptr, ptr %i.fq, align 8, !nonnull !9, !align !12, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.val3, ptr nonnull %.val4) #38
          to label %common.resume unwind label %bb.bb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit81: ; preds = %bb.ax, %bb.aw
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.fr, align 8            ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2 = load ptr, ptr %i.fs, align 8, !nonnull !9, !align !12, !noundef !9 ; 5 uses
  %i.ft = load ptr, ptr %.val2, align 8, !invariant.load !9 ; 2 uses
  %.not.i107 = icmp eq ptr %i.ft, null
  br i1 %.not.i107, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit81
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ft(ptr noundef nonnull %.val)
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit81
  %i.fu = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i110

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i110: ; preds = %bb.bp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.fv, i64 noundef range(i64 1, -9223372036854775807) %i.fy) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.bq:                                            ; preds = %bb.bo
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i108

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i108: ; preds = %bb.bq
  %i.gd = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ge = load i64, ptr %i.gd, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.gb, i64 noundef range(i64 1, -9223372036854775807) %i.ge) #41
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef align 16 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !5856, !noundef !9
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 -9223372036854775744)
  switch i64 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.i
    i64 8, label %bb.m
    i64 9, label %bb.r
    i64 11, label %bb.w
    i64 12, label %bb.ab
    i64 13, label %bb.ag
    i64 14, label %bb.al
    i64 16, label %bb.am
    i64 19, label %bb.ca
    i64 20, label %bb.cf
    i64 21, label %bb.ck
    i64 22, label %bb.co
    i64 23, label %bb.ct
    i64 24, label %bb.cx
    i64 25, label %bb.ft
    i64 27, label %bb.fy
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.gh, %bb.gg, %bb.gc, %bb.gb, %bb.fx, %bb.fw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i83, %bb.fs, %bb.fr, %bb.fm, %bb.fl, %bb.fh, %bb.fg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i69, %bb.es, %bb.er, %bb.en, %bb.em, %bb.ei, %bb.eh, %bb.ed, %bb.ec, %bb.dy, %bb.dx, %bb.dt, %bb.ds, %bb.do, %bb.dn, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i77, %bb.dl, %bb.di, %bb.dh, %bb.dd, %bb.cx, %bb.cx, %bb.cx, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.cv, %bb.cs, %bb.cr, %bb.cj, %bb.ci, %bb.ce, %bb.cd, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.bx, %bb.bv, %bb.bu, %bb.bq, %bb.bp, %bb.bo, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i7.i.i, %bb.bj, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.bf, %bb.bc, %bb.bb, %bb.ax, %bb.aw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.am, %bb.am, %bb.am, %bb.ak, %bb.aj, %bb.af, %bb.ae, %bb.aa, %bb.z, %bb.v, %bb.u, %bb.q, %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit58, %bb.al, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit8, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5857)
  %.val.i = load ptr, ptr %i.f, align 16, !alias.scope !5857, !nonnull !9, !noundef !9 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5863)
  %i.g = load i64, ptr %.val.i, align 8, !range !1578, !alias.scope !5866, !noalias !5857, !noundef !9
  switch i64 %i.g, label %bb.gd [
    i64 0, label %bb.g
    i64 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !5866, !noalias !5857, !noundef !9 ; 2 uses
  %i.i = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.i, label %bb.gd, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !5866, !noalias !5857, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, i64 noundef 1) #41, !noalias !5867
  br label %bb.gd

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %.val2.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !5866, !noalias !5857, !nonnull !9, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val2.i.i.i.i)
          to label %bb.gd unwind label %.body, !noalias !5857

.body:                                            ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #41, !noalias !5857
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m) #38
          to label %common.resume unwind label %bb.gi

bb.i:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5868)
  %.val.i3 = load ptr, ptr %i.n, align 8, !alias.scope !5868, !nonnull !9, !noundef !9 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5874)
  %i.o = load i64, ptr %.val.i3, align 8, !range !1578, !alias.scope !5877, !noalias !5868, !noundef !9
  switch i64 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit8 [
    i64 0, label %bb.j
    i64 1, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i3, i64 16
  %.val1.i.i.i.i5 = load i64, ptr %i.p, align 8, !alias.scope !5877, !noalias !5868, !noundef !9 ; 2 uses
  %i.q = icmp eq i64 %.val1.i.i.i.i5, 0
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit8, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i6

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i6: ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i3, i64 8
  %.val.i.i.i.i7 = load ptr, ptr %i.r, align 8, !alias.scope !5877, !noalias !5868, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i7, i64 noundef %.val1.i.i.i.i5, i64 noundef 1) #41, !noalias !5878
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit8

bb.k:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i3, i64 8
  %.val2.i.i.i.i4 = load ptr, ptr %i.s, align 8, !alias.scope !5877, !noalias !5868, !nonnull !9, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val2.i.i.i.i4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit8 unwind label %bb.l, !noalias !5868

common.resume:                                    ; preds = %.body, %bb.ge, %bb.gf, %bb.fz, %bb.ga, %bb.fu, %bb.fv, %bb.df, %bb.dg, %bb.dm, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i76, %bb.dq, %bb.dr, %bb.dv, %bb.dw, %bb.ea, %bb.eb, %bb.ef, %bb.eg, %bb.ek, %bb.el, %bb.ep, %bb.eq, %bb.ew, %.body50.i, %.body58.i, %bb.fe, %bb.ff, %bb.fj, %bb.fk, %bb.fp, %bb.fq, %.body.i80, %bb.cw, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.cp, %bb.cq, %bb.cg, %bb.ch, %bb.cb, %bb.cc, %bb.av, %bb.az, %bb.ba, %bb.bg, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.bk, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i5.i.i, %bb.bm, %bb.bn, %bb.bs, %bb.bt, %.body.i, %bb.by, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.ah, %bb.ai, %bb.ac, %bb.ad, %bb.x, %bb.y, %bb.s, %bb.t, %bb.n, %bb.o, %bb.cn, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.kv, %bb.ge ], [ %i.v, %bb.n ], [ %i.ab, %bb.s ], [ %i.ah, %bb.x ], [ %i.an, %bb.ac ], [ %i.at, %bb.ah ], [ %i.bg, %.body.i ], [ %i.em, %bb.cb ], [ %i.fd, %bb.cn ], [ %i.es, %bb.cg ], [ %i.ff, %bb.cp ], [ %i.fs, %bb.cw ], [ %i.kb, %bb.fp ], [ %i.kj, %bb.fu ], [ %i.kp, %bb.fz ], [ %i.v, %bb.o ], [ %i.ab, %bb.t ], [ %i.ah, %bb.y ], [ %i.an, %bb.ad ], [ %i.at, %bb.ai ], [ %i.br, %bb.av ], [ %i.ee, %bb.by ], [ %i.cz, %bb.bk ], [ %i.dg, %bb.bm ], [ %i.dp, %bb.bs ], [ %i.cl, %bb.bg ], [ %i.by, %bb.az ], [ %i.by, %bb.ba ], [ %i.cl, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.cz, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i5.i.i ], [ %i.dg, %bb.bn ], [ %i.dp, %bb.bt ], [ %i.ee, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.em, %bb.cc ], [ %i.es, %bb.ch ], [ %i.ff, %bb.cq ], [ %i.fs, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.jl, %.body58.i ], [ %i.gm, %bb.df ], [ %i.gz, %bb.dm ], [ %i.hh, %bb.dq ], [ %i.hn, %bb.dv ], [ %i.ht, %bb.ea ], [ %i.hz, %bb.ef ], [ %i.if, %bb.ek ], [ %i.iw, %bb.ew ], [ %i.il, %bb.ep ], [ %i.jo, %bb.fe ], [ %i.ju, %bb.fj ], [ %i.gm, %bb.dg ], [ %i.gz, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i76 ], [ %i.hh, %bb.dr ], [ %i.hn, %bb.dw ], [ %i.ht, %bb.eb ], [ %i.hz, %bb.eg ], [ %i.if, %bb.el ], [ %i.il, %bb.eq ], [ %i.jo, %bb.ff ], [ %i.ju, %bb.fk ], [ %i.gf, %.body.i80 ], [ %i.jd, %.body50.i ], [ %i.kb, %bb.fq ], [ %i.kj, %bb.fv ], [ %i.kp, %bb.ga ], [ %i.kv, %bb.gf ], [ %i.l, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i3, i64 noundef 40, i64 noundef 8) #41, !noalias !5868
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit8: ; preds = %bb.i, %bb.j, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i6, %bb.k
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i3, i64 noundef 40, i64 noundef 8) #41, !noalias !5868
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.m:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.u, align 8, !alias.scope !5879 ; 2 uses
  %i.w = icmp eq i64 %.val2.i.i, 0
  br i1 %i.w, label %common.resume, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load ptr, ptr %i.x, align 16, !alias.scope !5886, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5887
  br label %common.resume

bb.p:                                             ; preds = %bb.m
  %.val.i.i = load i64, ptr %i.u, align 8, !alias.scope !5879 ; 2 uses
  %i.y = icmp eq i64 %.val.i.i, 0
  br i1 %i.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.z, align 16, !alias.scope !5886, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5890
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.r:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i9 = load i64, ptr %i.aa, align 8, !alias.scope !5893 ; 2 uses
  %i.ac = icmp eq i64 %.val2.i.i9, 0
  br i1 %i.ac, label %common.resume, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i10 = load ptr, ptr %i.ad, align 16, !alias.scope !5900, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i10, i64 noundef %.val2.i.i9, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5901
  br label %common.resume

bb.u:                                             ; preds = %bb.r
  %.val.i.i12 = load i64, ptr %i.aa, align 8, !alias.scope !5893 ; 2 uses
end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_:bb.a
  br i1 %i.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i25 = load ptr, ptr %i.ar, align 16, !alias.scope !5928, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i25, i64 noundef %.val.i.i24, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5932
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.ag:                                            ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %bb.aj unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i27 = load i64, ptr %i.as, align 8, !alias.scope !5935 ; 2 uses
  %i.au = icmp eq i64 %.val2.i.i27, 0
  br i1 %i.au, label %common.resume, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i28 = load ptr, ptr %i.av, align 16, !alias.scope !5942, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i28, i64 noundef %.val2.i.i27, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5943
  br label %common.resume

bb.aj:                                            ; preds = %bb.ag
  %.val.i.i30 = load i64, ptr %i.as, align 8, !alias.scope !5935 ; 2 uses
  %i.aw = icmp eq i64 %.val.i.i30, 0
  br i1 %i.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i31 = load ptr, ptr %i.ax, align 16, !alias.scope !5942, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i31, i64 noundef %.val.i.i30, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5946
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.al:                                            ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.ay, align 8, !nonnull !9, !noundef !9
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val2)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.am:                                            ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5949)
  %i.ba = load i64, ptr %i.az, align 8, !range !5952, !alias.scope !5949, !noundef !9 ; 3 uses
  %i.bb = icmp ne i64 %i.ba, -9223372036854775788
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = add nsw i64 %i.ba, 9223372036854775790
  %i.bd = icmp ugt i64 %i.ba, -9223372036854775791
  %i.be = select i1 %i.bd, i64 %i.bc, i64 2
  switch i64 %i.be, label %bb.an [
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
    i64 1, label %bb.as
    i64 2, label %bb.aw
    i64 3, label %bb.ax
    i64 4, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
    i64 5, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
    i64 6, label %bb.bl
    i64 7, label %bb.bq
  ]

bb.an:                                            ; preds = %bb.am
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %bb.aq unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %i.bf, align 16, !alias.scope !5953 ; 2 uses
  %i.bh = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.bh, label %.body.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !5960, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5961
  br label %.body.i

bb.aq:                                            ; preds = %bb.an
  %.val.i.i.i = load i64, ptr %i.bf, align 16, !alias.scope !5953 ; 2 uses
  %i.bj = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.bj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !5960, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5964
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i

bb.as:                                            ; preds = %bb.am
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5967)
  %.val.i.i39 = load ptr, ptr %i.bl, align 16, !alias.scope !5970, !nonnull !9, !noundef !9 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5974)
  %i.bm = load i64, ptr %.val.i.i39, align 8, !range !1578, !alias.scope !5977, !noalias !5970, !noundef !9
  switch i64 %i.bm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i [
    i64 0, label %bb.at
    i64 1, label %bb.au
  ]

bb.at:                                            ; preds = %bb.as
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i.i39, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.bn, align 8, !alias.scope !5977, !noalias !5970, !noundef !9 ; 2 uses
  %i.bo = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.bo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.at
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i.i39, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !5977, !noalias !5970, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i, i64 noundef 1) #41, !noalias !5978
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i

bb.au:                                            ; preds = %bb.as
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i.i39, i64 8
  %.val2.i.i.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !5977, !noalias !5970, !nonnull !9, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val2.i.i.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.av, !noalias !5970

bb.av:                                            ; preds = %bb.au
  %i.br = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i39, i64 noundef 40, i64 noundef 8) #41, !noalias !5970
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.au, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.at, %bb.as
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i39, i64 noundef 40, i64 noundef 8) #41, !noalias !5970
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.aw:                                            ; preds = %bb.am
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.az)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.ax:                                            ; preds = %bb.am
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5979)
  %i.bt = load i64, ptr %i.bs, align 16, !range !5982, !alias.scope !5983, !noundef !9 ; 3 uses
  %i.bu = icmp ne i64 %i.bt, -9223372036854775803
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = xor i64 %i.bt, -9223372036854775808
  %i.bw = icmp slt i64 %i.bt, 0
  %i.bx = select i1 %i.bw, i64 %i.bv, i64 5
  switch i64 %i.bx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit [
    i64 5, label %bb.ay
    i64 8, label %bb.bd
    i64 9, label %bb.bh
  ]

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %bb.bb unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i36 = load i64, ptr %i.bs, align 16, !alias.scope !5984 ; 2 uses
  %i.bz = icmp eq i64 %.val2.i.i.i.i36, 0
  br i1 %i.bz, label %common.resume, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !5991, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i36, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5992
  br label %common.resume

bb.bb:                                            ; preds = %bb.ay
  %.val.i.i.i.i37 = load i64, ptr %i.bs, align 16, !alias.scope !5984 ; 2 uses
  %i.cb = icmp eq i64 %.val.i.i.i.i37, 0
  br i1 %i.cb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i38 = load ptr, ptr %i.cc, align 8, !alias.scope !5991, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i38, i64 noundef %.val.i.i.i.i37, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5995
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.bd:                                            ; preds = %bb.ax
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i34 = load ptr, ptr %i.cd, align 8, !alias.scope !5983 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i.i35 = load ptr, ptr %i.ce, align 16, !alias.scope !5983, !nonnull !9, !align !12, !noundef !9 ; 5 uses
  %i.cf = load ptr, ptr %.val3.i.i35, align 8, !invariant.load !9, !noalias !5983 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i34) ]
  invoke void %i.cf(ptr noundef nonnull %.val2.i.i34)
          to label %bb.bf unwind label %bb.bg, !noalias !5983

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.cg = getelementptr inbounds nuw i8, ptr %.val3.i.i35, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !range !297, !invariant.load !9, !noalias !5983 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.bf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i34) ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.val3.i.i35, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !range !1346, !invariant.load !9, !noalias !5983
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i34, i64 noundef %i.ch, i64 noundef range(i64 1, -9223372036854775807) %i.ck) #41, !noalias !5983
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.bg:                                            ; preds = %bb.be
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val3.i.i35, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !range !297, !invariant.load !9, !noalias !5983 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.bg
  %i.cp = getelementptr inbounds nuw i8, ptr %.val3.i.i35, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !range !1346, !invariant.load !9, !noalias !5983
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i34, i64 noundef %i.cn, i64 noundef range(i64 1, -9223372036854775807) %i.cq) #41, !noalias !5983
  br label %common.resume

bb.bh:                                            ; preds = %bb.ax
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i4.i = load ptr, ptr %i.cr, align 8, !alias.scope !5983 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i33 = load ptr, ptr %i.cs, align 16, !alias.scope !5983, !nonnull !9, !align !12, !noundef !9 ; 5 uses
  %i.ct = load ptr, ptr %.val1.i.i33, align 8, !invariant.load !9, !noalias !5983 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i4.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i4.i) ]
  invoke void %i.ct(ptr noundef nonnull %.val.i4.i)
          to label %bb.bj unwind label %bb.bk, !noalias !5983

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.cu = getelementptr inbounds nuw i8, ptr %.val1.i.i33, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !range !297, !invariant.load !9, !noalias !5983 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i7.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i7.i.i: ; preds = %bb.bj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i4.i) ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.val1.i.i33, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !range !1346, !invariant.load !9, !noalias !5983
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i4.i, i64 noundef %i.cv, i64 noundef range(i64 1, -9223372036854775807) %i.cy) #41, !noalias !5983
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.bk:                                            ; preds = %bb.bi
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.val1.i.i33, i64 8
  %i.db = load i64, ptr %i.da, align 8, !range !297, !invariant.load !9, !noalias !5983 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i5.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i5.i.i: ; preds = %bb.bk
  %i.dd = getelementptr inbounds nuw i8, ptr %.val1.i.i33, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !range !1346, !invariant.load !9, !noalias !5983
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i4.i, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) %i.de) #41, !noalias !5983
  br label %common.resume

bb.bl:                                            ; preds = %bb.am
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %bb.bo unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i5.i = load i64, ptr %i.df, align 16, !alias.scope !5998 ; 2 uses
  %i.dh = icmp eq i64 %.val2.i5.i, 0
  br i1 %i.dh, label %common.resume, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i6.i = load ptr, ptr %i.di, align 8, !alias.scope !6003, !nonnull !9, !noundef !9
  %i.dj = mul nuw i64 %.val2.i5.i, 24
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i6.i, i64 noundef %i.dj, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !6004
  br label %common.resume

bb.bo:                                            ; preds = %bb.bl
  %.val.i7.i = load i64, ptr %i.df, align 16, !alias.scope !5998 ; 2 uses
  %i.dk = icmp eq i64 %.val.i7.i, 0
  br i1 %i.dk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i8.i = load ptr, ptr %i.dl, align 8, !alias.scope !6003, !nonnull !9, !noundef !9
  %i.dm = mul nuw i64 %.val.i7.i, 24
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i8.i, i64 noundef %i.dm, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !6007
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.bq:                                            ; preds = %bb.am
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.do = load i64, ptr %i.dn, align 16, !range !6010, !alias.scope !6011, !noundef !9
  %switch1.i.i = icmp slt i64 %i.do, -9223372036854775783
  br i1 %switch1.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dn)
          to label %bb.bu unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i9.i = load i64, ptr %i.dn, align 16, !alias.scope !6014 ; 2 uses
  %i.dq = icmp eq i64 %.val2.i.i.i9.i, 0
  br i1 %i.dq, label %common.resume, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i.i10.i = load ptr, ptr %i.dr, align 8, !alias.scope !6021, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i10.i, i64 noundef %.val2.i.i.i9.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6022
  br label %common.resume

bb.bu:                                            ; preds = %bb.br
  %.val.i.i.i11.i = load i64, ptr %i.dn, align 16, !alias.scope !6014 ; 2 uses
  %i.ds = icmp eq i64 %.val.i.i.i11.i, 0
  br i1 %i.ds, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i12.i = load ptr, ptr %i.dt, align 8, !alias.scope !6021, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i12.i, i64 noundef %.val.i.i.i11.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6025
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

.body.i:                                          ; preds = %bb.ap, %bb.ao
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2.i = load ptr, ptr %i.du, align 8, !alias.scope !5949
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val3.i = load ptr, ptr %i.dv, align 16, !alias.scope !5949, !nonnull !9, !align !12, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.val2.i, ptr nonnull %.val3.i) #38
          to label %common.resume unwind label %bb.bz

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ar, %bb.aq
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i40 = load ptr, ptr %i.dw, align 8, !alias.scope !5949 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i = load ptr, ptr %i.dx, align 16, !alias.scope !5949, !nonnull !9, !align !12, !noundef !9 ; 5 uses
  %i.dy = load ptr, ptr %.val1.i, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i40) ]
  invoke void %i.dy(ptr noundef nonnull %.val.i40)
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %bb.bw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.bx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i40) ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i40, i64 noundef %i.ea, i64 noundef range(i64 1, -9223372036854775807) %i.ed) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.by:                                            ; preds = %bb.bw
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.by
  %i.ei = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i40, i64 noundef %i.eg, i64 noundef range(i64 1, -9223372036854775807) %i.ej) #41
  br label %common.resume

bb.bz:                                            ; preds = %.body.i
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.ca:                                            ; preds = %bb.a
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.el)
          to label %bb.cd unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i41 = load i64, ptr %i.el, align 8, !alias.scope !6028 ; 2 uses
  %i.en = icmp eq i64 %.val2.i.i41, 0
  br i1 %i.en, label %common.resume, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i42 = load ptr, ptr %i.eo, align 16, !alias.scope !6035, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i42, i64 noundef %.val2.i.i41, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6036
  br label %common.resume

bb.cd:                                            ; preds = %bb.ca
  %.val.i.i44 = load i64, ptr %i.el, align 8, !alias.scope !6028 ; 2 uses
  %i.ep = icmp eq i64 %.val.i.i44, 0
  br i1 %i.ep, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i45 = load ptr, ptr %i.eq, align 16, !alias.scope !6035, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i45, i64 noundef %.val.i.i44, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6039
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.cf:                                            ; preds = %bb.a
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.er)
          to label %bb.ci unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i47 = load i64, ptr %i.er, align 8, !alias.scope !6042 ; 2 uses
  %i.et = icmp eq i64 %.val2.i.i47, 0
  br i1 %i.et, label %common.resume, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i48 = load ptr, ptr %i.eu, align 16, !alias.scope !6049, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i48, i64 noundef %.val2.i.i47, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6050
  br label %common.resume

bb.ci:                                            ; preds = %bb.cf
  %.val.i.i50 = load i64, ptr %i.er, align 8, !alias.scope !6042 ; 2 uses
  %i.ev = icmp eq i64 %.val.i.i50, 0
  br i1 %i.ev, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i51 = load ptr, ptr %i.ew, align 16, !alias.scope !6049, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i51, i64 noundef %.val.i.i50, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6053
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.ck:                                            ; preds = %bb.a
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6056)
  %.val.i53 = load ptr, ptr %i.ex, align 8, !alias.scope !6056, !nonnull !9, !noundef !9 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6062)
  %i.ey = load i64, ptr %.val.i53, align 8, !range !1578, !alias.scope !6065, !noalias !6056, !noundef !9
  switch i64 %i.ey, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit58 [
    i64 0, label %bb.cl
    i64 1, label %bb.cm
  ]

bb.cl:                                            ; preds = %bb.ck
  %i.ez = getelementptr inbounds nuw i8, ptr %.val.i53, i64 16
  %.val1.i.i.i.i55 = load i64, ptr %i.ez, align 8, !alias.scope !6065, !noalias !6056, !noundef !9 ; 2 uses
  %i.fa = icmp eq i64 %.val1.i.i.i.i55, 0
  br i1 %i.fa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit58, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i56

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i56: ; preds = %bb.cl
  %i.fb = getelementptr inbounds nuw i8, ptr %.val.i53, i64 8
  %.val.i.i.i.i57 = load ptr, ptr %i.fb, align 8, !alias.scope !6065, !noalias !6056, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i57, i64 noundef %.val1.i.i.i.i55, i64 noundef 1) #41, !noalias !6066
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit58

bb.cm:                                            ; preds = %bb.ck
  %i.fc = getelementptr inbounds nuw i8, ptr %.val.i53, i64 8
  %.val2.i.i.i.i54 = load ptr, ptr %i.fc, align 8, !alias.scope !6065, !noalias !6056, !nonnull !9, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val2.i.i.i.i54)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit58 unwind label %bb.cn, !noalias !6056

bb.cn:                                            ; preds = %bb.cm
  %i.fd = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i53, i64 noundef 40, i64 noundef 8) #41, !noalias !6056
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit58: ; preds = %bb.ck, %bb.cl, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i56, %bb.cm
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i53, i64 noundef 40, i64 noundef 8) #41, !noalias !6056
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.co:                                            ; preds = %bb.a
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fe)
          to label %bb.cr unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i59 = load i64, ptr %i.fe, align 8, !alias.scope !6067 ; 2 uses
  %i.fg = icmp eq i64 %.val2.i.i59, 0
  br i1 %i.fg, label %common.resume, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i60 = load ptr, ptr %i.fh, align 16, !alias.scope !6074, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i60, i64 noundef %.val2.i.i59, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6075
  br label %common.resume

bb.cr:                                            ; preds = %bb.co
  %.val.i.i62 = load i64, ptr %i.fe, align 8, !alias.scope !6067 ; 2 uses
  %i.fi = icmp eq i64 %.val.i.i62, 0
  br i1 %i.fi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i63 = load ptr, ptr %i.fj, align 16, !alias.scope !6074, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i63, i64 noundef %.val.i.i62, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6078
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.ct:                                            ; preds = %bb.a
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.fk, align 8            ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.fl, align 16, !nonnull !9, !align !12, !noundef !9 ; 5 uses
  %i.fm = load ptr, ptr %.val1, align 8, !invariant.load !9 ; 2 uses
  %.not.i = icmp eq ptr %i.fm, null
  br i1 %.not.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.fm(ptr noundef nonnull %.val)
          to label %bb.cv unwind label %bb.cw

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.fn = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.cv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.fo, i64 noundef range(i64 1, -9223372036854775807) %i.fr) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.cw:                                            ; preds = %bb.cu
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.fv = icmp eq i64 %i.fu, 0
  br i1 %i.fv, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.cw
  %i.fw = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.fx = load i64, ptr %i.fw, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.fu, i64 noundef range(i64 1, -9223372036854775807) %i.fx) #41
  br label %common.resume

bb.cx:                                            ; preds = %bb.a
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !range !6081, !alias.scope !6082, !noundef !9 ; 3 uses
  %i.ga = icmp ne i64 %i.fz, -9223372036854775786
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = add nsw i64 %i.fz, 9223372036854775790
  %i.gc = icmp ugt i64 %i.fz, -9223372036854775791
  %i.gd = select i1 %i.gc, i64 %i.gb, i64 4
  switch i64 %i.gd, label %bb.cy [
    i64 0, label %bb.dd
    i64 1, label %bb.de
    i64 2, label %bb.dj
    i64 3, label %bb.dn
    i64 4, label %bb.do
    i64 5, label %bb.dp
    i64 6, label %bb.du
    i64 7, label %bb.dz
    i64 8, label %bb.ee
    i64 9, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
    i64 10, label %bb.ej
    i64 11, label %bb.eo
    i64 12, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
    i64 13, label %bb.et
    i64 14, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
    i64 15, label %bb.ex
    i64 16, label %bb.fa
    i64 17, label %bb.fd
  ]

bb.cy:                                            ; preds = %bb.cx
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ge)
          to label %bb.db unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.gf = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i78 = load i64, ptr %i.ge, align 16, !alias.scope !6085 ; 2 uses
  %i.gg = icmp eq i64 %.val2.i.i.i78, 0
  br i1 %i.gg, label %.body.i80, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i.i79 = load ptr, ptr %i.gh, align 8, !alias.scope !6092, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i79, i64 noundef %.val2.i.i.i78, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6093
  br label %.body.i80

bb.db:                                            ; preds = %bb.cy
  %.val.i.i.i81 = load i64, ptr %i.ge, align 16, !alias.scope !6085 ; 2 uses
  %i.gi = icmp eq i64 %.val.i.i.i81, 0
  br i1 %i.gi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i83, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i82 = load ptr, ptr %i.gj, align 8, !alias.scope !6092, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i82, i64 noundef %.val.i.i.i81, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6096
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i83

bb.dd:                                            ; preds = %bb.cx
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gk)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.de:                                            ; preds = %bb.cx
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gl)
          to label %bb.dh unwind label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.gm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i3.i = load i64, ptr %i.gl, align 16, !alias.scope !6099 ; 2 uses
  %i.gn = icmp eq i64 %.val2.i.i3.i, 0
  br i1 %i.gn, label %common.resume, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i4.i = load ptr, ptr %i.go, align 8, !alias.scope !6106, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i4.i, i64 noundef %.val2.i.i3.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6107
  br label %common.resume

bb.dh:                                            ; preds = %bb.de
  %.val.i.i6.i = load i64, ptr %i.gl, align 16, !alias.scope !6099 ; 2 uses
  %i.gp = icmp eq i64 %.val.i.i6.i, 0
  br i1 %i.gp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i7.i = load ptr, ptr %i.gq, align 8, !alias.scope !6106, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i7.i, i64 noundef %.val.i.i6.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6110
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.dj:                                            ; preds = %bb.cx
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i73 = load ptr, ptr %i.gr, align 16, !alias.scope !6082 ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i74 = load ptr, ptr %i.gs, align 8, !alias.scope !6082, !nonnull !9, !align !12, !noundef !9 ; 5 uses
  %i.gt = load ptr, ptr %.val2.i74, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i75 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i75, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i73) ]
  invoke void %i.gt(ptr noundef nonnull %.val.i73)
          to label %bb.dl unwind label %bb.dm

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.gu = getelementptr inbounds nuw i8, ptr %.val2.i74, i64 8
  %i.gv = load i64, ptr %i.gu, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.gw = icmp eq i64 %i.gv, 0
  br i1 %i.gw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i77

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i77: ; preds = %bb.dl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i73) ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.val2.i74, i64 16
  %i.gy = load i64, ptr %i.gx, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i73, i64 noundef %i.gv, i64 noundef range(i64 1, -9223372036854775807) %i.gy) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.dm:                                            ; preds = %bb.dk
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.val2.i74, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.hc = icmp eq i64 %i.hb, 0
  br i1 %i.hc, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i76

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i76: ; preds = %bb.dm
  %i.hd = getelementptr inbounds nuw i8, ptr %.val2.i74, i64 16
  %i.he = load i64, ptr %i.hd, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i73, i64 noundef %i.hb, i64 noundef range(i64 1, -9223372036854775807) %i.he) #41
  br label %common.resume

bb.dn:                                            ; preds = %bb.cx
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.hf)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.do:                                            ; preds = %bb.cx
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.fy)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.dp:                                            ; preds = %bb.cx
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hg)
          to label %bb.ds unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i9.i = load i64, ptr %i.hg, align 16, !alias.scope !6113 ; 2 uses
  %i.hi = icmp eq i64 %.val2.i.i9.i, 0
  br i1 %i.hi, label %common.resume, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i10.i = load ptr, ptr %i.hj, align 8, !alias.scope !6120, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i10.i, i64 noundef %.val2.i.i9.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6121
  br label %common.resume

bb.ds:                                            ; preds = %bb.dp
  %.val.i.i12.i = load i64, ptr %i.hg, align 16, !alias.scope !6113 ; 2 uses
  %i.hk = icmp eq i64 %.val.i.i12.i, 0
  br i1 %i.hk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i13.i = load ptr, ptr %i.hl, align 8, !alias.scope !6120, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i13.i, i64 noundef %.val.i.i12.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6124
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.du:                                            ; preds = %bb.cx
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hm)
          to label %bb.dx unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.hn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i15.i = load i64, ptr %i.hm, align 16, !alias.scope !6127 ; 2 uses
  %i.ho = icmp eq i64 %.val2.i.i15.i, 0
  br i1 %i.ho, label %common.resume, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i16.i = load ptr, ptr %i.hp, align 8, !alias.scope !6134, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i16.i, i64 noundef %.val2.i.i15.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6135
  br label %common.resume

bb.dx:                                            ; preds = %bb.du
  %.val.i.i18.i = load i64, ptr %i.hm, align 16, !alias.scope !6127 ; 2 uses
  %i.hq = icmp eq i64 %.val.i.i18.i, 0
  br i1 %i.hq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i19.i = load ptr, ptr %i.hr, align 8, !alias.scope !6134, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i19.i, i64 noundef %.val.i.i18.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6138
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.dz:                                            ; preds = %bb.cx
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hs)
          to label %bb.ec unwind label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ht = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i21.i = load i64, ptr %i.hs, align 16, !alias.scope !6141 ; 2 uses
  %i.hu = icmp eq i64 %.val2.i.i21.i, 0
  br i1 %i.hu, label %common.resume, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i22.i = load ptr, ptr %i.hv, align 8, !alias.scope !6148, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i22.i, i64 noundef %.val2.i.i21.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6149
  br label %common.resume

bb.ec:                                            ; preds = %bb.dz
  %.val.i.i24.i = load i64, ptr %i.hs, align 16, !alias.scope !6141 ; 2 uses
  %i.hw = icmp eq i64 %.val.i.i24.i, 0
  br i1 %i.hw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i25.i = load ptr, ptr %i.hx, align 8, !alias.scope !6148, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i25.i, i64 noundef %.val.i.i24.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6152
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.ee:                                            ; preds = %bb.cx
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hy)
          to label %bb.eh unwind label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.hz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i27.i = load i64, ptr %i.hy, align 16, !alias.scope !6155 ; 2 uses
  %i.ia = icmp eq i64 %.val2.i.i27.i, 0
  br i1 %i.ia, label %common.resume, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i28.i = load ptr, ptr %i.ib, align 8, !alias.scope !6162, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i28.i, i64 noundef %.val2.i.i27.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6163
  br label %common.resume

bb.eh:                                            ; preds = %bb.ee
  %.val.i.i30.i = load i64, ptr %i.hy, align 16, !alias.scope !6155 ; 2 uses
  %i.ic = icmp eq i64 %.val.i.i30.i, 0
  br i1 %i.ic, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i31.i = load ptr, ptr %i.id, align 8, !alias.scope !6162, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i31.i, i64 noundef %.val.i.i30.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6166
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.ej:                                            ; preds = %bb.cx
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ie)
          to label %bb.em unwind label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.if = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i33.i = load i64, ptr %i.ie, align 16, !alias.scope !6169 ; 2 uses
  %i.ig = icmp eq i64 %.val2.i.i33.i, 0
  br i1 %i.ig, label %common.resume, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i34.i = load ptr, ptr %i.ih, align 8, !alias.scope !6176, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i34.i, i64 noundef %.val2.i.i33.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6177
  br label %common.resume

bb.em:                                            ; preds = %bb.ej
  %.val.i.i36.i = load i64, ptr %i.ie, align 16, !alias.scope !6169 ; 2 uses
  %i.ii = icmp eq i64 %.val.i.i36.i, 0
  br i1 %i.ii, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i37.i = load ptr, ptr %i.ij, align 8, !alias.scope !6176, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i37.i, i64 noundef %.val.i.i36.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6180
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.eo:                                            ; preds = %bb.cx
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ik)
          to label %bb.er unwind label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.il = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i39.i = load i64, ptr %i.ik, align 16, !alias.scope !6183 ; 2 uses
  %i.im = icmp eq i64 %.val2.i.i39.i, 0
  br i1 %i.im, label %common.resume, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i40.i = load ptr, ptr %i.in, align 8, !alias.scope !6190, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i40.i, i64 noundef %.val2.i.i39.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6191
  br label %common.resume

bb.er:                                            ; preds = %bb.eo
  %.val.i.i42.i = load i64, ptr %i.ik, align 16, !alias.scope !6183 ; 2 uses
  %i.io = icmp eq i64 %.val.i.i42.i, 0
  br i1 %i.io, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i43.i = load ptr, ptr %i.ip, align 8, !alias.scope !6190, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i43.i, i64 noundef %.val.i.i42.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6194
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

end_hunk_4
begin_hunk_5_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !6432, !noundef !9 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.l

bb.l:                                             ; preds = %.body8
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !6435
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.s) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6446)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !6446, !noundef !9 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit10, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataEECs14kWLkQVSKO_14deltalake_core.exit
  %i.aa = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !6449
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit10

bb.o:                                             ; preds = %bb.n
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit10

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit10: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataEECs14kWLkQVSKO_14deltalake_core.exit, %bb.n, %bb.o
  ret void

bb.p:                                             ; preds = %bb.m, %.body, %bb.b
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.l, %.body8, %bb.m
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6460, !noundef !9
  switch i64 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit [
    i64 0, label %bb.b
    i64 1, label %bb.g
    i64 2, label %bb.l
    i64 3, label %bb.q
    i64 5, label %bb.v
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.x, %bb.u, %bb.t, %bb.p, %bb.o, %bb.k, %bb.j, %bb.f, %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.b, align 8, !alias.scope !6461 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i, 0
  br i1 %i.d, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load ptr, ptr %i.e, align 8, !alias.scope !6468, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6469
  br label %common.resume

bb.e:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %i.b, align 8, !alias.scope !6461 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !6468, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6472
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

common.resume:                                    ; preds = %bb.y, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.r, %bb.s, %bb.m, %bb.n, %bb.h, %bb.i, %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.r ], [ %i.c, %bb.c ], [ %i.i, %bb.h ], [ %i.o, %bb.m ], [ %i.c, %bb.d ], [ %i.i, %bb.i ], [ %i.o, %bb.n ], [ %i.u, %bb.s ], [ %i.ah, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.ah, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i2 = load i64, ptr %i.h, align 8, !alias.scope !6475 ; 2 uses
  %i.j = icmp eq i64 %.val2.i.i2, 0
  br i1 %i.j, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i3 = load ptr, ptr %i.k, align 8, !alias.scope !6482, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i3, i64 noundef %.val2.i.i2, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6483
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  %.val.i.i5 = load i64, ptr %i.h, align 8, !alias.scope !6475 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i5, 0
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i6 = load ptr, ptr %i.m, align 8, !alias.scope !6482, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i6, i64 noundef %.val.i.i5, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6486
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i8 = load i64, ptr %i.n, align 8, !alias.scope !6489 ; 2 uses
  %i.p = icmp eq i64 %.val2.i.i8, 0
  br i1 %i.p, label %common.resume, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i9 = load ptr, ptr %i.q, align 8, !alias.scope !6496, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i9, i64 noundef %.val2.i.i8, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6497
  br label %common.resume

bb.o:                                             ; preds = %bb.l
  %.val.i.i11 = load i64, ptr %i.n, align 8, !alias.scope !6489 ; 2 uses
  %i.r = icmp eq i64 %.val.i.i11, 0
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i12 = load ptr, ptr %i.s, align 8, !alias.scope !6496, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i12, i64 noundef %.val.i.i11, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6500
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.q:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.t unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i14 = load i64, ptr %i.t, align 8, !alias.scope !6503 ; 2 uses
  %i.v = icmp eq i64 %.val2.i.i14, 0
  br i1 %i.v, label %common.resume, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i15 = load ptr, ptr %i.w, align 8, !alias.scope !6510, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i15, i64 noundef %.val2.i.i14, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6511
  br label %common.resume

bb.t:                                             ; preds = %bb.q
  %.val.i.i17 = load i64, ptr %i.t, align 8, !alias.scope !6503 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i17, 0
  br i1 %i.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i18 = load ptr, ptr %i.y, align 8, !alias.scope !6510, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i18, i64 noundef %.val.i.i17, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6514
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.v:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.z, align 8             ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.aa, align 8, !nonnull !9, !align !12, !noundef !9 ; 5 uses
  %i.ab = load ptr, ptr %.val1, align 8, !invariant.load !9 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ab(ptr noundef nonnull %.val)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.af = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) %i.ag) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.y:                                             ; preds = %bb.w
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.y
  %i.al = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) %i.am) #41
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %0, align 8, !alias.scope !6517 ; 2 uses
  %i.b = icmp eq i64 %.val2.i, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.c, align 8, !alias.scope !6522, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6523
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %0, align 8, !alias.scope !6517 ; 2 uses
  %i.d = icmp eq i64 %.val.i, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !6522, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6526
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !6529, !noundef !9 ; 6 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775745
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775787
  %i.d = icmp ugt i64 %i.a, -9223372036854775788
  %i.e = select i1 %i.d, i64 %i.c, i64 42
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.n
    i64 4, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
    i64 5, label %bb.s
    i64 6, label %bb.x
    i64 7, label %bb.ab
    i64 8, label %bb.ac
    i64 9, label %bb.ah
    i64 10, label %bb.ai
    i64 11, label %bb.aj
    i64 12, label %bb.ak
    i64 13, label %bb.az
    i64 14, label %bb.be
    i64 15, label %bb.bj
    i64 16, label %bb.bo
    i64 17, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
    i64 18, label %bb.bt
    i64 19, label %bb.by
    i64 20, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
    i64 21, label %bb.cd
    i64 22, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
    i64 23, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
    i64 24, label %bb.ch
    i64 25, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
    i64 26, label %bb.cm
    i64 27, label %bb.cr
    i64 28, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
    i64 29, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
    i64 30, label %bb.cw
    i64 31, label %bb.db
    i64 32, label %bb.dg
    i64 33, label %bb.dl
    i64 34, label %bb.dq
    i64 35, label %bb.dv
    i64 36, label %bb.ea
    i64 37, label %bb.ef
    i64 38, label %bb.ek
    i64 39, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
    i64 40, label %bb.fa
    i64 41, label %bb.ff
    i64 42, label %bb.fk
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.f, align 8, !alias.scope !6530 ; 2 uses
  %i.h = icmp eq i64 %.val2.i.i, 0
  br i1 %i.h, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load ptr, ptr %i.i, align 16, !alias.scope !6537, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6538
  br label %common.resume

bb.e:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %i.f, align 8, !alias.scope !6530 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i, 0
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.k, align 16, !alias.scope !6537, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6541
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

common.resume:                                    ; preds = %bb.fy, %bb.fz, %.body80, %.body144, %.body, %bb.fm, %common.resume.sink.split.i154, %bb.fq, %bb.fg, %bb.fh, %bb.em, %common.resume.sink.split.i, %bb.ep, %bb.es, %bb.ev, %bb.ey, %bb.eg, %bb.eh, %bb.eb, %bb.ec, %bb.dw, %bb.dx, %bb.dr, %bb.ds, %bb.dm, %bb.dn, %bb.dh, %bb.di, %bb.dc, %bb.dd, %bb.cx, %bb.cy, %bb.cs, %bb.ct, %bb.ci, %bb.cj, %bb.bz, %bb.ca, %bb.bu, %bb.bv, %bb.bp, %bb.bq, %bb.bk, %bb.bl, %bb.bf, %bb.bg, %bb.ba, %bb.bb, %bb.ad, %bb.ae, %bb.aa, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.t, %bb.u, %bb.o, %bb.p, %bb.j, %bb.k, %bb.c, %bb.d, %bb.fw, %bb.cg, %bb.ay
  %common.resume.op = phi { ptr, i32 } [ %i.hu, %.body144 ], [ %i.g, %bb.c ], [ %i.r, %bb.j ], [ %i.x, %bb.o ], [ %i.ad, %bb.t ], [ %i.aq, %bb.aa ], [ %eh.lpad-body.i.i, %bb.ay ], [ %i.ay, %bb.ad ], [ %i.cv, %bb.ba ], [ %i.db, %bb.bf ], [ %i.dh, %bb.bk ], [ %i.dn, %bb.bp ], [ %i.dt, %bb.bu ], [ %i.ek, %bb.cg ], [ %i.dz, %bb.bz ], [ %i.em, %bb.ci ], [ %i.ey, %bb.cs ], [ %i.fe, %bb.cx ], [ %i.fk, %bb.dc ], [ %i.fq, %bb.dh ], [ %i.fw, %bb.dm ], [ %i.gc, %bb.dr ], [ %i.gi, %bb.dw ], [ %i.go, %bb.eb ], [ %i.gu, %bb.eg ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ], [ %i.ia, %bb.fg ], [ %i.ix, %bb.fw ], [ %common.resume.op.ph.i155, %common.resume.sink.split.i154 ], [ %i.g, %bb.d ], [ %i.r, %bb.k ], [ %i.x, %bb.p ], [ %i.ad, %bb.u ], [ %i.aq, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.ay, %bb.ae ], [ %i.cv, %bb.bb ], [ %i.db, %bb.bg ], [ %i.dh, %bb.bl ], [ %i.dn, %bb.bq ], [ %i.dt, %bb.bv ], [ %i.dz, %bb.ca ], [ %i.em, %bb.cj ], [ %i.ey, %bb.ct ], [ %i.fe, %bb.cy ], [ %i.fk, %bb.dd ], [ %i.fq, %bb.di ], [ %i.fw, %bb.dn ], [ %i.gc, %bb.ds ], [ %i.gi, %bb.dx ], [ %i.go, %bb.ec ], [ %i.gu, %bb.eh ], [ %i.hm, %bb.ev ], [ %i.hc, %bb.em ], [ %i.hg, %bb.ep ], [ %i.hj, %bb.es ], [ %i.hp, %bb.ey ], [ %i.ia, %bb.fh ], [ %i.ik, %bb.fm ], [ %i.iq, %bb.fq ], [ %i.n, %.body ], [ %i.es, %.body80 ], [ %i.jd, %bb.fz ], [ %i.jd, %bb.fy ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6544)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !6544, !nonnull !9, !noundef !9 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.m)
          to label %bb.fu unwind label %.body, !noalias !6544, !inline_history !6547

.body:                                            ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef 96, i64 noundef 16) #41, !noalias !6544
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load ptr, ptr %i.o, align 16, !nonnull !9, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val6) #38
          to label %common.resume unwind label %bb.fx

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i7 = load i64, ptr %i.q, align 8, !alias.scope !6548 ; 2 uses
  %i.s = icmp eq i64 %.val2.i.i7, 0
  br i1 %i.s, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i8 = load ptr, ptr %i.t, align 16, !alias.scope !6555, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i8, i64 noundef %.val2.i.i7, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6556
  br label %common.resume

bb.l:                                             ; preds = %bb.i
  %.val.i.i10 = load i64, ptr %i.q, align 8, !alias.scope !6548 ; 2 uses
  %i.u = icmp eq i64 %.val.i.i10, 0
  br i1 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i11 = load ptr, ptr %i.v, align 16, !alias.scope !6555, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i11, i64 noundef %.val.i.i10, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6559
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.n:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i13 = load i64, ptr %i.w, align 8, !alias.scope !6562 ; 2 uses
  %i.y = icmp eq i64 %.val2.i.i13, 0
  br i1 %i.y, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i14 = load ptr, ptr %i.z, align 16, !alias.scope !6569, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i14, i64 noundef %.val2.i.i13, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6570
  br label %common.resume

bb.q:                                             ; preds = %bb.n
  %.val.i.i16 = load i64, ptr %i.w, align 8, !alias.scope !6562 ; 2 uses
  %i.aa = icmp eq i64 %.val.i.i16, 0
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i17 = load ptr, ptr %i.ab, align 16, !alias.scope !6569, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i17, i64 noundef %.val.i.i16, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6573
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.gb, %bb.ga, %bb.ft, %bb.fs, %bb.fr, %bb.fo, %bb.fn, %bb.fk, %bb.fk, %bb.fj, %bb.fi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i, %bb.ez, %bb.ew, %bb.et, %bb.eq, %bb.en, %bb.ej, %bb.ei, %bb.ee, %bb.ed, %bb.dz, %bb.dy, %bb.du, %bb.dt, %bb.dp, %bb.do, %bb.dk, %bb.dj, %bb.df, %bb.de, %bb.da, %bb.cz, %bb.cv, %bb.cu, %bb.cl, %bb.ck, %bb.cc, %bb.cb, %bb.bx, %bb.bw, %bb.bs, %bb.br, %bb.bn, %bb.bm, %bb.bi, %bb.bh, %bb.bd, %bb.bc, %bb.ag, %bb.af, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.z, %bb.w, %bb.v, %bb.r, %bb.q, %bb.m, %bb.l, %bb.f, %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit82, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit, %bb.aj, %bb.ai, %bb.ah, %bb.ab, %bb.h, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.s:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.v unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i19 = load i64, ptr %i.ac, align 8, !alias.scope !6576 ; 2 uses
  %i.ae = icmp eq i64 %.val2.i.i19, 0
  br i1 %i.ae, label %common.resume, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i20 = load ptr, ptr %i.af, align 16, !alias.scope !6583, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i20, i64 noundef %.val2.i.i19, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6584
  br label %common.resume

bb.v:                                             ; preds = %bb.s
  %.val.i.i22 = load i64, ptr %i.ac, align 8, !alias.scope !6576 ; 2 uses
  %i.ag = icmp eq i64 %.val.i.i22, 0
  br i1 %i.ag, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i23 = load ptr, ptr %i.ah, align 16, !alias.scope !6583, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i23, i64 noundef %.val.i.i22, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6587
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.x:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.ai, align 8            ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.aj, align 16, !nonnull !9, !align !12, !noundef !9 ; 5 uses
  %i.ak = load ptr, ptr %.val2, align 8, !invariant.load !9 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ak(ptr noundef nonnull %.val)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.al = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) %i.ap) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.aa:                                            ; preds = %bb.y
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.aa
  %i.au = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) %i.av) #41
  br label %common.resume

bb.ab:                                            ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.aw, align 8, !nonnull !9, !noundef !9
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val3)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.ac:                                            ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %bb.af unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i25 = load i64, ptr %i.ax, align 8, !alias.scope !6590 ; 2 uses
  %i.az = icmp eq i64 %.val2.i.i25, 0
  br i1 %i.az, label %common.resume, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i26 = load ptr, ptr %i.ba, align 16, !alias.scope !6597, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i26, i64 noundef %.val2.i.i25, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6598
  br label %common.resume

bb.af:                                            ; preds = %bb.ac
  %.val.i.i28 = load i64, ptr %i.ax, align 8, !alias.scope !6590 ; 2 uses
  %i.bb = icmp eq i64 %.val.i.i28, 0
  br i1 %i.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i29 = load ptr, ptr %i.bc, align 16, !alias.scope !6597, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i29, i64 noundef %.val.i.i28, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6601
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.ah:                                            ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bd)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.ai:                                            ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.be)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.aj:                                            ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.bf)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.ak:                                            ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.bg, align 8, !nonnull !9, !noundef !9 ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6604)
  %i.bh = getelementptr inbounds nuw i8, ptr %.val4, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6607)
  %i.bi = load i16, ptr %i.bh, align 8, !range !6610, !alias.scope !6611, !noundef !9
  %i.bj = icmp eq i16 %i.bi, 3
  br i1 %i.bj, label %bb.al, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.bk = getelementptr inbounds nuw i8, ptr %.val4, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6612)
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !6615, !noundef !9 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6622)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !6625, !nonnull !9, !noundef !9
  %i.bp = getelementptr inbounds nuw i8, ptr %.val4, i64 120
  %i.bq = getelementptr inbounds nuw i8, ptr %.val4, i64 104
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !6625, !noundef !9
  %i.bs = getelementptr inbounds nuw i8, ptr %.val4, i64 112
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !6625, !noundef !9
  invoke void %i.bo(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef %i.br, i64 noundef %i.bt)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.an, !inline_history !6626

bb.an:                                            ; preds = %bb.am
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = getelementptr inbounds nuw i8, ptr %.val4, i64 128
  %.val3.i.i.i = load ptr, ptr %i.bv, align 8, !alias.scope !6604, !noundef !9
  %i.bw = getelementptr inbounds nuw i8, ptr %.val4, i64 136
  %.val4.i.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !6604
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val3.i.i.i, ptr %.val4.i.i.i) #38
          to label %.body.i.i.i unwind label %bb.ax

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.am, %bb.al, %bb.ak
  %i.bx = getelementptr inbounds nuw i8, ptr %.val4, i64 128
  %.val.i.i.i = load ptr, ptr %i.bx, align 8, !alias.scope !6604, !noundef !9 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val4, i64 136
  %.val2.i.i.i = load ptr, ptr %i.by, align 8, !alias.scope !6604 ; 6 uses
  %i.bz = icmp eq ptr %.val.i.i.i, null
  br i1 %i.bz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i) ]
  %i.ca = load ptr, ptr %.val2.i.i.i, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void %i.ca(ptr noundef nonnull %.val.i.i.i)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.cb = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.aq
  %i.ce = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) %i.cf) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %.body.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.ar
  %i.ck = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) %i.cl) #41
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.ar, %bb.an
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bu, %bb.an ], [ %i.cg, %bb.ar ], [ %i.cg, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(144) %.val4) #38
          to label %bb.ay unwind label %bb.ax

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.aq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.cm = load i64, ptr %.val4, align 8, !range !123, !alias.scope !6627, !noundef !9
  %i.cn = icmp eq i64 %i.cm, -9223372036854775808
  br i1 %i.cn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit, label %bb.as

bb.as:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(144) %.val4)
          to label %bb.av unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %.val4, align 8, !alias.scope !6630 ; 2 uses
  %i.cp = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.cp, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cq = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.cq, align 8, !alias.scope !6639, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6640
  br label %bb.ay

bb.av:                                            ; preds = %bb.as
  %.val.i.i.i.i.i.i.i = load i64, ptr %.val4, align 8, !alias.scope !6630 ; 2 uses
  %i.cr = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.cr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cs = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.cs, align 8, !alias.scope !6639, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !6643
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit

bb.ax:                                            ; preds = %.body.i.i.i, %bb.an
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.ay:                                            ; preds = %bb.au, %bb.at, %.body.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %.body.i.i.i ], [ %i.co, %bb.at ], [ %i.co, %bb.au ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef 144, i64 noundef 8) #41
  br label %common.resume
end_hunk_5
begin_hunk_6_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val1.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !7128, !noundef !9 ; 2 uses
  %i.c = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorImplEECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !7128, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef 1) #41, !noalias !7128
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorImplEECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val2.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !7128, !nonnull !9, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val2.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorImplEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #41
  resume { ptr, i32 } %i.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorImplEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #41
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !408, !noundef !9
  switch i8 %i.a, label %bb.b [
    i8 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
    i8 1, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
    i8 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
    i8 3, label %bb.c
    i8 4, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %bb.b, %bb.a, %bb.a, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.c, align 8, !alias.scope !7129 ; 2 uses
  %i.e = icmp eq i64 %.val2.i.i, 0
  br i1 %i.e, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load ptr, ptr %i.f, align 8, !alias.scope !7136, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7137
  br label %common.resume

bb.f:                                             ; preds = %bb.c
  %.val.i.i = load i64, ptr %i.c, align 8, !alias.scope !7129 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i, 0
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.h, align 8, !alias.scope !7136, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7140
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

common.resume:                                    ; preds = %bb.i, %bb.j, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.d, %bb.e ], [ %i.j, %bb.j ], [ %i.j, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.i, align 8, !alias.scope !7143 ; 2 uses
  %i.k = icmp eq i64 %.val2.i, 0
  br i1 %i.k, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load ptr, ptr %i.l, align 8, !alias.scope !7148, !nonnull !9, !noundef !9
  %i.m = shl nuw i64 %.val2.i, 5
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !7149
  br label %common.resume

bb.k:                                             ; preds = %bb.h
  %.val.i = load i64, ptr %i.i, align 8, !alias.scope !7143 ; 2 uses
  %i.n = icmp eq i64 %.val.i, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.o, align 8, !alias.scope !7148, !nonnull !9, !noundef !9
  %i.p = shl nuw i64 %.val.i, 5
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !7152
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7155, !noundef !9 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775796
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 12
  switch i64 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit [
    i64 0, label %bb.b
    i64 1, label %bb.g
    i64 2, label %bb.k
    i64 3, label %bb.p
    i64 4, label %bb.u
    i64 5, label %bb.z
    i64 6, label %bb.ae
    i64 8, label %bb.aj
    i64 9, label %bb.ao
    i64 10, label %bb.at
    i64 11, label %bb.ay
    i64 12, label %bb.bd
    i64 13, label %bb.bi
    i64 14, label %bb.bn
    i64 15, label %bb.bs
    i64 16, label %bb.bx
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.cb, %bb.ca, %bb.bw, %bb.bv, %bb.br, %bb.bq, %bb.bm, %bb.bl, %bb.bc, %bb.bb, %bb.ax, %bb.aw, %bb.as, %bb.ar, %bb.an, %bb.am, %bb.ai, %bb.ah, %bb.ad, %bb.ac, %bb.y, %bb.x, %bb.t, %bb.s, %bb.o, %bb.n, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.i, %bb.f, %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit63, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.f, align 8, !alias.scope !7156 ; 2 uses
  %i.h = icmp eq i64 %.val2.i.i, 0
  br i1 %i.h, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load ptr, ptr %i.i, align 8, !alias.scope !7163, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7164
  br label %common.resume

bb.e:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %i.f, align 8, !alias.scope !7156 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i, 0
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.k, align 8, !alias.scope !7163, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7167
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

common.resume:                                    ; preds = %.body, %bb.by, %bb.bz, %bb.bt, %bb.bu, %bb.bo, %bb.bp, %bb.bj, %bb.bk, %bb.az, %bb.ba, %bb.au, %bb.av, %bb.ap, %bb.aq, %bb.ak, %bb.al, %bb.af, %bb.ag, %bb.aa, %bb.ab, %bb.v, %bb.w, %bb.q, %bb.r, %bb.l, %bb.m, %bb.j, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.cz, %bb.by ], [ %i.g, %bb.c ], [ %i.t, %bb.j ], [ %i.aa, %bb.l ], [ %i.ag, %bb.q ], [ %i.am, %bb.v ], [ %i.as, %bb.aa ], [ %i.ay, %bb.af ], [ %i.be, %bb.ak ], [ %i.bk, %bb.ap ], [ %i.bq, %bb.au ], [ %i.bw, %bb.az ], [ %i.ch, %bb.bj ], [ %i.cn, %bb.bo ], [ %i.ct, %bb.bt ], [ %i.g, %bb.d ], [ %i.t, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.aa, %bb.m ], [ %i.ag, %bb.r ], [ %i.am, %bb.w ], [ %i.as, %bb.ab ], [ %i.ay, %bb.ag ], [ %i.be, %bb.al ], [ %i.bk, %bb.aq ], [ %i.bq, %bb.av ], [ %i.bw, %bb.ba ], [ %i.ch, %bb.bk ], [ %i.cn, %bb.bp ], [ %i.ct, %bb.bu ], [ %i.cz, %bb.bz ], [ %i.cb, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.l, align 8             ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.m, align 8, !nonnull !9, !align !12, !noundef !9 ; 5 uses
  %i.n = load ptr, ptr %.val1, align 8, !invariant.load !9 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.n(ptr noundef nonnull %.val)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.r = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.s) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) %i.y) #41
  br label %common.resume

bb.k:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i4 = load i64, ptr %i.z, align 8, !alias.scope !7170 ; 2 uses
  %i.ab = icmp eq i64 %.val2.i.i4, 0
  br i1 %i.ab, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i5 = load ptr, ptr %i.ac, align 8, !alias.scope !7177, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i5, i64 noundef %.val2.i.i4, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7178
  br label %common.resume

bb.n:                                             ; preds = %bb.k
  %.val.i.i7 = load i64, ptr %i.z, align 8, !alias.scope !7170 ; 2 uses
  %i.ad = icmp eq i64 %.val.i.i7, 0
  br i1 %i.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i8 = load ptr, ptr %i.ae, align 8, !alias.scope !7177, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i8, i64 noundef %.val.i.i7, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7181
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.p:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i10 = load i64, ptr %i.af, align 8, !alias.scope !7184 ; 2 uses
  %i.ah = icmp eq i64 %.val2.i.i10, 0
  br i1 %i.ah, label %common.resume, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i11 = load ptr, ptr %i.ai, align 8, !alias.scope !7191, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i11, i64 noundef %.val2.i.i10, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7192
  br label %common.resume

bb.s:                                             ; preds = %bb.p
  %.val.i.i13 = load i64, ptr %i.af, align 8, !alias.scope !7184 ; 2 uses
  %i.aj = icmp eq i64 %.val.i.i13, 0
  br i1 %i.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i14 = load ptr, ptr %i.ak, align 8, !alias.scope !7191, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i14, i64 noundef %.val.i.i13, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7195
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.x unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i16 = load i64, ptr %i.al, align 8, !alias.scope !7198 ; 2 uses
  %i.an = icmp eq i64 %.val2.i.i16, 0
  br i1 %i.an, label %common.resume, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i17 = load ptr, ptr %i.ao, align 8, !alias.scope !7205, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i17, i64 noundef %.val2.i.i16, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7206
  br label %common.resume

bb.x:                                             ; preds = %bb.u
  %.val.i.i19 = load i64, ptr %i.al, align 8, !alias.scope !7198 ; 2 uses
  %i.ap = icmp eq i64 %.val.i.i19, 0
  br i1 %i.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i20 = load ptr, ptr %i.aq, align 8, !alias.scope !7205, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i20, i64 noundef %.val.i.i19, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7209
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.z:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i22 = load i64, ptr %i.ar, align 8, !alias.scope !7212 ; 2 uses
  %i.at = icmp eq i64 %.val2.i.i22, 0
  br i1 %i.at, label %common.resume, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i23 = load ptr, ptr %i.au, align 8, !alias.scope !7219, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i23, i64 noundef %.val2.i.i22, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7220
  br label %common.resume

bb.ac:                                            ; preds = %bb.z
  %.val.i.i25 = load i64, ptr %i.ar, align 8, !alias.scope !7212 ; 2 uses
  %i.av = icmp eq i64 %.val.i.i25, 0
  br i1 %i.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i26 = load ptr, ptr %i.aw, align 8, !alias.scope !7219, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i26, i64 noundef %.val.i.i25, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7223
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.ae:                                            ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i28 = load i64, ptr %i.ax, align 8, !alias.scope !7226 ; 2 uses
  %i.az = icmp eq i64 %.val2.i.i28, 0
  br i1 %i.az, label %common.resume, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i29 = load ptr, ptr %i.ba, align 8, !alias.scope !7233, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i29, i64 noundef %.val2.i.i28, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7234
  br label %common.resume

bb.ah:                                            ; preds = %bb.ae
  %.val.i.i31 = load i64, ptr %i.ax, align 8, !alias.scope !7226 ; 2 uses
  %i.bb = icmp eq i64 %.val.i.i31, 0
  br i1 %i.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i32 = load ptr, ptr %i.bc, align 8, !alias.scope !7233, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i32, i64 noundef %.val.i.i31, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7237
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.aj:                                            ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %bb.am unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i34 = load i64, ptr %i.bd, align 8, !alias.scope !7240 ; 2 uses
  %i.bf = icmp eq i64 %.val2.i.i34, 0
  br i1 %i.bf, label %common.resume, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i35 = load ptr, ptr %i.bg, align 8, !alias.scope !7247, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i35, i64 noundef %.val2.i.i34, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7248
  br label %common.resume

bb.am:                                            ; preds = %bb.aj
  %.val.i.i37 = load i64, ptr %i.bd, align 8, !alias.scope !7240 ; 2 uses
  %i.bh = icmp eq i64 %.val.i.i37, 0
  br i1 %i.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i38 = load ptr, ptr %i.bi, align 8, !alias.scope !7247, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i38, i64 noundef %.val.i.i37, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7251
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.ao:                                            ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %bb.ar unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i40 = load i64, ptr %i.bj, align 8, !alias.scope !7254 ; 2 uses
end_hunk_6
begin_hunk_7_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core:bb.a
  %.val1.i.i19 = load ptr, ptr %i.ac, align 8, !alias.scope !7573, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i19, i64 noundef %.val.i.i18, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7577
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.x:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i21 = load i64, ptr %i.ad, align 8, !alias.scope !7580 ; 2 uses
  %i.af = icmp eq i64 %.val2.i.i21, 0
  br i1 %i.af, label %common.resume, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i22 = load ptr, ptr %i.ag, align 8, !alias.scope !7587, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i22, i64 noundef %.val2.i.i21, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7588
  br label %common.resume

bb.aa:                                            ; preds = %bb.x
  %.val.i.i24 = load i64, ptr %i.ad, align 8, !alias.scope !7580 ; 2 uses
  %i.ah = icmp eq i64 %.val.i.i24, 0
  br i1 %i.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i25 = load ptr, ptr %i.ai, align 8, !alias.scope !7587, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i25, i64 noundef %.val.i.i24, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7591
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.ac:                                            ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %bb.af unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i27 = load i64, ptr %i.aj, align 8, !alias.scope !7594 ; 2 uses
  %i.al = icmp eq i64 %.val2.i.i27, 0
  br i1 %i.al, label %common.resume, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i28 = load ptr, ptr %i.am, align 8, !alias.scope !7601, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i28, i64 noundef %.val2.i.i27, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7602
  br label %common.resume

bb.af:                                            ; preds = %bb.ac
  %.val.i.i30 = load i64, ptr %i.aj, align 8, !alias.scope !7594 ; 2 uses
  %i.an = icmp eq i64 %.val.i.i30, 0
  br i1 %i.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i31 = load ptr, ptr %i.ao, align 8, !alias.scope !7601, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i31, i64 noundef %.val.i.i30, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7605
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.ah:                                            ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common5error11SchemaErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %bb.cj unwind label %bb.ci

bb.ai:                                            ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.al unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i33 = load i64, ptr %i.aq, align 8, !alias.scope !7608 ; 2 uses
  %i.as = icmp eq i64 %.val2.i.i33, 0
  br i1 %i.as, label %common.resume, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i34 = load ptr, ptr %i.at, align 8, !alias.scope !7615, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i34, i64 noundef %.val2.i.i33, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7616
  br label %common.resume

bb.al:                                            ; preds = %bb.ai
  %.val.i.i36 = load i64, ptr %i.aq, align 8, !alias.scope !7608 ; 2 uses
  %i.au = icmp eq i64 %.val.i.i36, 0
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i37 = load ptr, ptr %i.av, align 8, !alias.scope !7615, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i37, i64 noundef %.val.i.i36, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7619
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.an:                                            ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.aw, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %i.ax = getelementptr i8, ptr %.val6, i64 8
  %.val.i = load ptr, ptr %i.ax, align 8, !noundef !9 ; 4 uses
  %i.ay = getelementptr i8, ptr %.val6, i64 16
  %.val1.i = load ptr, ptr %i.ay, align 8         ; 6 uses
  %i.az = icmp eq ptr %.val.i, null
  br i1 %i.az, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.ba = load ptr, ptr %.val1.i, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void %i.ba(ptr noundef nonnull %.val.i)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.bb = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.aq
  %i.be = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.bc, i64 noundef range(i64 1, -9223372036854775807) %i.bf) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs14kWLkQVSKO_14deltalake_core.exit

bb.ar:                                            ; preds = %bb.ap
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.as, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.ar
  %i.bk = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) %i.bl) #41
  br label %bb.as

bb.as:                                            ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.ar
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef 24, i64 noundef 8) #41
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.an, %bb.aq, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef 24, i64 noundef 8) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.at:                                            ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %bb.aw unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i39 = load i64, ptr %i.bm, align 8, !alias.scope !7622 ; 2 uses
  %i.bo = icmp eq i64 %.val2.i.i39, 0
  br i1 %i.bo, label %common.resume, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i40 = load ptr, ptr %i.bp, align 8, !alias.scope !7629, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i40, i64 noundef %.val2.i.i39, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7630
  br label %common.resume

bb.aw:                                            ; preds = %bb.at
  %.val.i.i42 = load i64, ptr %i.bm, align 8, !alias.scope !7622 ; 2 uses
  %i.bq = icmp eq i64 %.val.i.i42, 0
  br i1 %i.bq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i43 = load ptr, ptr %i.br, align 8, !alias.scope !7629, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i43, i64 noundef %.val.i.i42, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7633
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.ay:                                            ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.bs, align 8            ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.bt, align 8, !nonnull !9, !align !12, !noundef !9 ; 5 uses
  %i.bu = load ptr, ptr %.val2, align 8, !invariant.load !9 ; 2 uses
  %.not.i = icmp eq ptr %i.bu, null
  br i1 %.not.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.bu(ptr noundef nonnull %.val)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.bv = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.ba
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.by = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) %i.bz) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.bb:                                            ; preds = %bb.az
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.bb
  %i.ce = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) %i.cf) #41
  br label %common.resume

bb.bc:                                            ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %bb.bf unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i45 = load i64, ptr %i.cg, align 8, !alias.scope !7636 ; 2 uses
  %i.ci = icmp eq i64 %.val2.i.i45, 0
  br i1 %i.ci, label %.body50, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i46 = load ptr, ptr %i.cj, align 8, !alias.scope !7643, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i46, i64 noundef %.val2.i.i45, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7644
  br label %.body50

bb.bf:                                            ; preds = %bb.bc
  %.val.i.i48 = load i64, ptr %i.cg, align 8, !alias.scope !7636 ; 2 uses
  %i.ck = icmp eq i64 %.val.i.i48, 0
  br i1 %i.ck, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit52, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i49 = load ptr, ptr %i.cl, align 8, !alias.scope !7643, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i49, i64 noundef %.val.i.i48, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7647
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit52

bb.bh:                                            ; preds = %bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %bb.bk unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i53 = load i64, ptr %i.cm, align 8, !alias.scope !7650 ; 2 uses
  %i.co = icmp eq i64 %.val2.i.i53, 0
  br i1 %i.co, label %common.resume, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i54 = load ptr, ptr %i.cp, align 8, !alias.scope !7657, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i54, i64 noundef %.val2.i.i53, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7658
  br label %common.resume

bb.bk:                                            ; preds = %bb.bh
  %.val.i.i56 = load i64, ptr %i.cm, align 8, !alias.scope !7650 ; 2 uses
  %i.cq = icmp eq i64 %.val.i.i56, 0
  br i1 %i.cq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i57 = load ptr, ptr %i.cr, align 8, !alias.scope !7657, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i57, i64 noundef %.val.i.i56, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7661
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.bm:                                            ; preds = %bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic10DiagnosticEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cs)
          to label %bb.cs unwind label %bb.cr

bb.bn:                                            ; preds = %bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ct)
          to label %bb.bq unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.ct, align 8, !alias.scope !7664 ; 2 uses
  %i.cv = icmp eq i64 %.val2.i, 0
  br i1 %i.cv, label %common.resume, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load ptr, ptr %i.cw, align 8, !alias.scope !7669, !nonnull !9, !noundef !9
  %i.cx = mul nuw i64 %.val2.i, 40
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.cx, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !7670
  br label %common.resume

bb.bq:                                            ; preds = %bb.bn
  %.val.i59 = load i64, ptr %i.ct, align 8, !alias.scope !7664 ; 2 uses
  %i.cy = icmp eq i64 %.val.i59, 0
  br i1 %i.cy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i60 = load ptr, ptr %i.cz, align 8, !alias.scope !7669, !nonnull !9, !noundef !9
  %i.da = mul nuw i64 %.val.i59, 40
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i60, i64 noundef %i.da, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !7673
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.bs:                                            ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7679)
  %i.dc = load ptr, ptr %i.db, align 8, !alias.scope !7682, !nonnull !9, !noundef !9
  %i.dd = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !7682
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.bt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.bt:                                            ; preds = %bb.bs
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.db) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

bb.bu:                                            ; preds = %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 32, i64 noundef 8) #41, !noalias !7549
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.dg = load i64, ptr %i.df, align 8, !range !123, !alias.scope !7683, !noundef !9
  %i.dh = icmp eq i64 %i.dg, -9223372036854775808
  br i1 %i.dh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %bb.by unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.df, align 8, !alias.scope !7686 ; 2 uses
  %i.dj = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.dj, label %common.resume, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i.i = load ptr, ptr %i.dk, align 8, !alias.scope !7693, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7694
  br label %common.resume

bb.by:                                            ; preds = %bb.bv
  %.val.i.i.i = load i64, ptr %i.df, align 8, !alias.scope !7686 ; 2 uses
  %i.dl = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.dl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load ptr, ptr %i.dm, align 8, !alias.scope !7693, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7697
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ch, %bb.cg, %bb.cc, %bb.bz, %bb.by, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bl, %bb.bk, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.ba, %bb.ax, %bb.aw, %bb.am, %bb.al, %bb.ag, %bb.af, %bb.ab, %bb.aa, %bb.w, %bb.v, %bb.r, %bb.q, %bb.f, %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit71, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtB4_6option6OptionNtNtBL_6string6StringEEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs14kWLkQVSKO_14deltalake_core.exit, %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorEECs14kWLkQVSKO_14deltalake_core.exit
  ret void

bb.ca:                                            ; preds = %bb.ci, %bb.cr, %.body50, %bb.cb, %.body
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.cb:                                            ; preds = %bb.m
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dp) #38
          to label %common.resume unwind label %bb.ca

bb.cc:                                            ; preds = %bb.m
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.dr = load i64, ptr %i.dq, align 8, !range !123, !alias.scope !7700, !noundef !9
  %i.ds = icmp eq i64 %i.dr, -9223372036854775808
  br i1 %i.ds, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %bb.cg unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i61 = load i64, ptr %i.dq, align 8, !alias.scope !7703 ; 2 uses
  %i.du = icmp eq i64 %.val2.i.i.i61, 0
  br i1 %i.du, label %common.resume, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i.i62 = load ptr, ptr %i.dv, align 8, !alias.scope !7710, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i62, i64 noundef %.val2.i.i.i61, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !7711
  br label %common.resume

bb.cg:                                            ; preds = %bb.cd
end_hunk_7
begin_hunk_8_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array23fixed_size_binary_array20FixedSizeBinaryArrayECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit
  %i.m = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !8205
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit3: ; preds = %bb.d, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8216)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !8216, !noundef !9 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit5, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit3
  %i.s = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !8219
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit5

bb.j:                                             ; preds = %bb.i
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.p) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit5

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit5: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit3, %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %bb.g, %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit, %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array9map_array8MapArrayECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(200) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8230)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !8230, !noundef !9 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !8233
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8244)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !8244, !noundef !9 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit5, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !8247
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit5

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit5 unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.b, %bb.d, %bb.h
  %.pn = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.b, %bb.d ], [ %i.b, %bb.b ], [ %i.b, %bb.c ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array12struct_array11StructArrayECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) #38
          to label %bb.i unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit5: ; preds = %bb.f, %bb.e, %bb.g
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array12struct_array11StructArrayECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.l unwind label %bb.k

bb.i:                                             ; preds = %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit
  %.pn2 = phi { ptr, i32 } [ %i.r, %bb.k ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8270)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !8273, !nonnull !9, !noundef !9
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !8273
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offset12OffsetBufferlEECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offset12OffsetBufferlEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.n

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit5
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit5
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8286)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !8289, !nonnull !9, !noundef !9
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !8289
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offset12OffsetBufferlEECs14kWLkQVSKO_14deltalake_core.exit7

bb.m:                                             ; preds = %bb.l
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offset12OffsetBufferlEECs14kWLkQVSKO_14deltalake_core.exit7

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offset12OffsetBufferlEECs14kWLkQVSKO_14deltalake_core.exit7: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %bb.j, %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offset12OffsetBufferlEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs14kWLkQVSKO_14deltalake_core.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs14kWLkQVSKO_14deltalake_core.exit
    i64 1, label %bb.c
  ], !prof !8290

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !9, !align !12, !noundef !9 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.k) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %i.q) #41
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i, %bb.f
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #41
  resume { ptr, i32 } %i.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %i.a, align 8, !alias.scope !8291 ; 2 uses
  %i.c = icmp eq i64 %.val2.i.i, 0
  br i1 %i.c, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val3.i.i = load ptr, ptr %i.d, align 8, !alias.scope !8298, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !8299
  br label %.body

bb.d:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %i.a, align 8, !alias.scope !8291 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i.i = load ptr, ptr %i.f, align 8, !alias.scope !8298, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !8302
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

.body:                                            ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.g) #38
          to label %.body8 unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !range !123, !alias.scope !8305, !noundef !9
  %i.j = icmp eq i64 %i.i, -9223372036854775808
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i4 = load i64, ptr %i.h, align 8, !alias.scope !8308 ; 2 uses
  %i.l = icmp eq i64 %.val2.i.i4, 0
  br i1 %i.l, label %.body8, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val3.i.i5 = load ptr, ptr %i.m, align 8, !alias.scope !8313, !nonnull !9, !noundef !9
  %i.n = mul nuw i64 %.val2.i.i4, 48
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i5, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !8314
  br label %.body8

bb.i:                                             ; preds = %bb.f
  %.val.i.i6 = load i64, ptr %i.h, align 8, !alias.scope !8308 ; 2 uses
  %i.o = icmp eq i64 %.val.i.i6, 0
  br i1 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val1.i.i7 = load ptr, ptr %i.p, align 8, !alias.scope !8313, !nonnull !9, !noundef !9
  %i.q = mul nuw i64 %.val.i.i6, 48
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i7, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !8317
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEEECs14kWLkQVSKO_14deltalake_core.exit

.body8:                                           ; preds = %bb.h, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %i.b, %.body ], [ %i.k, %bb.g ], [ %i.k, %bb.h ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtBV_4file10properties16ColumnPropertiesEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1H_4file10properties16ColumnPropertiesEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.j, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtBV_4file10properties16ColumnPropertiesEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1H_4file10properties16ColumnPropertiesEECs14kWLkQVSKO_14deltalake_core.exit10 unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1H_4file10properties16ColumnPropertiesEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body8, %bb.k
  %.pn2 = phi { ptr, i32 } [ %i.u, %bb.k ], [ %.pn, %.body8 ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata13SortingColumnEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.t) #38
          to label %common.resume unwind label %bb.q

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEEECs14kWLkQVSKO_14deltalake_core.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1H_4file10properties16ColumnPropertiesEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1H_4file10properties16ColumnPropertiesEECs14kWLkQVSKO_14deltalake_core.exit10: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEEECs14kWLkQVSKO_14deltalake_core.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !range !123, !alias.scope !8320, !noundef !9
  %i.x = icmp eq i64 %i.w, -9223372036854775808
  br i1 %i.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata13SortingColumnEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1H_4file10properties16ColumnPropertiesEECs14kWLkQVSKO_14deltalake_core.exit10
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata13SortingColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i11 = load i64, ptr %i.v, align 8, !alias.scope !8323 ; 2 uses
  %i.z = icmp eq i64 %.val2.i.i11, 0
  br i1 %i.z, label %common.resume, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val3.i.i12 = load ptr, ptr %i.aa, align 8, !alias.scope !8328, !nonnull !9, !noundef !9
  %i.ab = shl nuw i64 %.val2.i.i11, 3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i12, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 4) #41, !noalias !8329
  br label %common.resume

bb.o:                                             ; preds = %bb.l
  %.val.i.i13 = load i64, ptr %i.v, align 8, !alias.scope !8323 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i13, 0
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata13SortingColumnEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val1.i.i14 = load ptr, ptr %i.ad, align 8, !alias.scope !8328, !nonnull !9, !noundef !9
  %i.ae = shl nuw i64 %.val.i.i13, 3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i14, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 4) #41, !noalias !8332
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata13SortingColumnEEECs14kWLkQVSKO_14deltalake_core.exit

common.resume:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1H_4file10properties16ColumnPropertiesEECs14kWLkQVSKO_14deltalake_core.exit, %bb.m, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.m ], [ %i.y, %bb.n ], [ %.pn2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1H_4file10properties16ColumnPropertiesEECs14kWLkQVSKO_14deltalake_core.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata13SortingColumnEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1H_4file10properties16ColumnPropertiesEECs14kWLkQVSKO_14deltalake_core.exit10, %bb.o, %bb.p
  ret void

bb.q:                                             ; preds = %.body8, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1H_4file10properties16ColumnPropertiesEECs14kWLkQVSKO_14deltalake_core.exit, %.body
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer18ArrowWriterOptionsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(248) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #38
          to label %.body unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !range !123, !alias.scope !8335, !noundef !9
  %i.e = icmp eq i64 %i.d, -9223372036854775808
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !8338 ; 2 uses
end_hunk_8
begin_hunk_9_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core:bb.a
bb.i:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars7MapDataECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.af, %bb.ae, %bb.s, %bb.r, %bb.n, %bb.m, %bb.h, %bb.g, %bb.u, %bb.t, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.j:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i1 = load i64, ptr %i.p, align 8, !alias.scope !8501 ; 2 uses
  %i.r = icmp eq i64 %.val2.i.i1, 0
  br i1 %i.r, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i2 = load ptr, ptr %i.s, align 16, !alias.scope !8508, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i2, i64 noundef %.val2.i.i1, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !8509
  br label %common.resume

bb.m:                                             ; preds = %bb.j
  %.val.i.i3 = load i64, ptr %i.p, align 8, !alias.scope !8501 ; 2 uses
  %i.t = icmp eq i64 %.val.i.i3, 0
  br i1 %i.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars7MapDataECs14kWLkQVSKO_14deltalake_core.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i4 = load ptr, ptr %i.u, align 16, !alias.scope !8508, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i4, i64 noundef %.val.i.i3, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !8512
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars7MapDataECs14kWLkQVSKO_14deltalake_core.exit

bb.o:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.v, align 8, !alias.scope !8515 ; 2 uses
  %i.x = icmp eq i64 %.val2.i, 0
  br i1 %i.x, label %common.resume, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load ptr, ptr %i.y, align 16, !alias.scope !8520, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !8521
  br label %common.resume

bb.r:                                             ; preds = %bb.o
  %.val.i = load i64, ptr %i.v, align 8, !alias.scope !8515 ; 2 uses
  %i.z = icmp eq i64 %.val.i, 0
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars7MapDataECs14kWLkQVSKO_14deltalake_core.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.aa, align 16, !alias.scope !8520, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !8524
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars7MapDataECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars7MapDataECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.ac)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars7MapDataECs14kWLkQVSKO_14deltalake_core.exit

bb.v:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ad)
          to label %bb.y unwind label %bb.w, !inline_history !8527

bb.w:                                             ; preds = %bb.v
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !8528 ; 2 uses
  %i.af = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.af, label %.body.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i.i = load ptr, ptr %i.ag, align 16, !alias.scope !8539, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !8540, !inline_history !8527
  br label %.body.i.i

bb.y:                                             ; preds = %bb.v
  %.val.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !8528 ; 2 uses
  %i.ah = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.ai, align 16, !alias.scope !8539, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !8543, !inline_history !8527
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i

.body.i.i:                                        ; preds = %bb.x, %bb.w
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aj) #38
          to label %.body.i unwind label %bb.aa, !inline_history !8527

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.z, %bb.y
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ab, !inline_history !8527

bb.aa:                                            ; preds = %.body.i.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !inline_history !8527
  unreachable

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ab, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.am, %bb.ab ], [ %i.ae, %.body.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.an) #38
          to label %common.resume unwind label %bb.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i7 = load i64, ptr %i.ao, align 8, !alias.scope !8546 ; 2 uses
  %i.aq = icmp eq i64 %.val2.i.i7, 0
  br i1 %i.aq, label %common.resume, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val3.i.i8 = load ptr, ptr %i.ar, align 16, !alias.scope !8551, !nonnull !9, !noundef !9
  %i.as = mul nuw i64 %.val2.i.i7, 96
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i8, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 16) #41, !noalias !8552
  br label %common.resume

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeECs14kWLkQVSKO_14deltalake_core.exit.i
  %.val.i.i9 = load i64, ptr %i.ao, align 8, !alias.scope !8546 ; 2 uses
  %i.at = icmp eq i64 %.val.i.i9, 0
  br i1 %i.at, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars7MapDataECs14kWLkQVSKO_14deltalake_core.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i.i10 = load ptr, ptr %i.au, align 16, !alias.scope !8551, !nonnull !9, !noundef !9
  %i.av = mul nuw i64 %.val.i.i9, 96
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i10, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) 16) #41, !noalias !8555
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars7MapDataECs14kWLkQVSKO_14deltalake_core.exit

bb.ag:                                            ; preds = %.body.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsdFjMDJQAyx6_10arrow_json6writer7encoder15NullableEncoderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !9, !align !12, !noundef !9 ; 5 uses
  %i.b = load ptr, ptr %.val1, align 8, !invariant.load !9 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.b(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsdFjMDJQAyx6_10arrow_json6writer7encoder7EncoderEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %i.g) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsdFjMDJQAyx6_10arrow_json6writer7encoder7EncoderEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !297, !invariant.load !9 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !1346, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #41
  br label %.body

.body:                                            ; preds = %bb.d, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8558)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !8558, !noundef !9 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.e

bb.e:                                             ; preds = %.body
  %i.q = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !8561
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsdFjMDJQAyx6_10arrow_json6writer7encoder7EncoderEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8572)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !8572, !noundef !9 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit2, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsdFjMDJQAyx6_10arrow_json6writer7encoder7EncoderEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !8575
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit2

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.s) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit2

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit2: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsdFjMDJQAyx6_10arrow_json6writer7encoder7EncoderEL_EECs14kWLkQVSKO_14deltalake_core.exit, %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %.body, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !8586 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i, 0
  br i1 %i.b, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.c, align 8, !alias.scope !8593, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !8594
  br label %.body

bb.d:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !8586 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !8593, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !8597
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

.body:                                            ; preds = %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #38
          to label %common.resume unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i1 = load i64, ptr %i.g, align 8, !alias.scope !8600 ; 2 uses
  %i.i = icmp eq i64 %.val2.i.i1, 0
  br i1 %i.i, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i.i2 = load ptr, ptr %i.j, align 8, !alias.scope !8607, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i2, i64 noundef %.val2.i.i1, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !8608
  br label %common.resume

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %.val.i.i4 = load i64, ptr %i.g, align 8, !alias.scope !8600 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i4, 0
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit6, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i5 = load ptr, ptr %i.l, align 8, !alias.scope !8607, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i5, i64 noundef %.val.i.i4, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !8611
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit6

common.resume:                                    ; preds = %.body, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.h, %bb.g ], [ %i.a, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit6: ; preds = %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBH_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(192) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.b) #38
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEEECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8614)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !8614, !nonnull !9, !noundef !9 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b, !noalias !8614, !inline_history !7963

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef 16) #41, !noalias !8614
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef 16) #41, !noalias !8614
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types10UInt16TypeECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [136 x i8], align 8               ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
end_hunk_9
begin_hunk_10_@_RINvXs7_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB6_16GenericByteArrayINtNtBa_5types17GenericBinaryTypelEEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorINtNtB20_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE9from_iterINtNtB1Y_8adapters12GenericShuntINtNtB42_3map3MapINtNtB42_8peekable8PeekableIB4w_INtNtNtB20_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB5P_11transaction5stateNtB6T_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB7I_6scalarNtB95_11ScalarValue13iter_to_arrayB5d_Esm_0EINtNtB20_6result6ResultNtNtB20_7convert10InfallibleNtNtB7I_5error15DataFusionErrorEEEB5R_:bb.a
bb.n:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11588
  unreachable

bb.o:                                             ; preds = %bb.j, %bb.p
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.o ], [ %i.h, %bb.f ], [ %i.h, %bb.e ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builder18GenericByteBuilderINtNtBN_5types17GenericBinaryTypelEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(104) %i.e) #38
          to label %.thread unwind label %bb.r

bb.p:                                             ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypelEE6finishCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(104) %i.e)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builder18GenericByteBuilderINtNtBN_5types17GenericBinaryTypelEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(104) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.r:                                             ; preds = %bb.t, %.body
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

.thread:                                          ; preds = %bb.s, %bb.t, %.body
  %.pn6 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.s ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm, %bb.t ]
  resume { ptr, i32 } %.pn6

bb.s:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load i128, ptr %i.f, align 16, !range !25, !alias.scope !11607, !noundef !9
  %i.r = and i128 %i.q, 62
  %switch.i.i.i.i = icmp eq i128 %i.r, 50
  br i1 %switch.i.i.i.i, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.f)
          to label %.thread unwind label %bb.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB6_16GenericByteArrayINtNtBa_5types17GenericBinaryTypelEEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorINtNtB20_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE9from_iterINtNtB1Y_8adapters12GenericShuntINtNtB42_3map3MapINtNtB42_8peekable8PeekableINtNtB3h_9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B5H_B5F_13iter_to_arrayIB3f_B5F_EEsm_0EINtNtB20_6result6ResultNtNtB20_7convert10InfallibleNtNtB5J_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [128 x i8], align 16              ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [104 x i8], align 8               ; 8 uses
  %i.f = alloca [128 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.f, ptr noundef nonnull readonly align 16 dereferenceable(128) %1, i64 128, i1 false), !alias.scope !11616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsm_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.f)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.d, align 8, !noundef !9
  invoke fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypelEE13with_capacityCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(104) %i.e, i64 noundef %i.g)
          to label %bb.c unwind label %bb.u

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.c, ptr noundef nonnull align 16 dereferenceable(128) %i.f, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.o, %bb.c
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsm_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 16 dereferenceable(128) %i.c)
          to label %bb.f unwind label %bb.e, !noalias !11624

bb.e:                                             ; preds = %bb.n, %bb.m, %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtBJ_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2O_B2M_13iter_to_arrayINtB23_3VecB2M_EEsm_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtB2Q_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %i.c) #38
          to label %.body unwind label %bb.p, !noalias !11624

bb.f:                                             ; preds = %bb.d
  %i.i = load i64, ptr %i.b, align 8, !range !11525, !noalias !11620, !noundef !9 ; 3 uses
  %.not.i = icmp eq i64 %i.i, -9223372036854775807
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11620
  %.not4.i = icmp eq i64 %i.i, -9223372036854775808
  br i1 %.not4.i, label %bb.n, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.i, !noalias !11624

bb.i:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load i128, ptr %i.c, align 16, !range !25, !alias.scope !11625, !noalias !11620, !noundef !9
  %i.m = and i128 %i.l, 62
  %switch.i.i.i.i.i = icmp eq i128 %i.m, 50
  br i1 %switch.i.i.i.i.i, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.c)
          to label %.body unwind label %bb.l, !noalias !11624

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.h
  %i.n = load i128, ptr %i.c, align 16, !range !25, !alias.scope !11634, !noalias !11620, !noundef !9
  %i.o = and i128 %i.n, 62
  %switch.i1.i.i.i.i = icmp eq i128 %i.o, 50
  br i1 %switch.i1.i.i.i.i, label %bb.r, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.c)
          to label %bb.r unwind label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11624
  unreachable

bb.m:                                             ; preds = %bb.g
  store i64 %i.i, ptr %i.a, align 8, !noalias !11620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i, i64 16, i1 false), !noalias !11620
  invoke fastcc void @_RINvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB3_18GenericByteBuilderINtNtB7_5types17GenericBinaryTypelEE12append_valueINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.o unwind label %bb.e, !noalias !11624

bb.n:                                             ; preds = %bb.g
  invoke fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypelEE11append_nullCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.e)
          to label %bb.o unwind label %bb.e, !noalias !11624

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11620
  br label %bb.d

bb.p:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11624
  unreachable

bb.q:                                             ; preds = %bb.k, %bb.r
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.i, %bb.j, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.q ], [ %i.k, %bb.i ], [ %i.k, %bb.j ], [ %i.h, %bb.e ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builder18GenericByteBuilderINtNtBN_5types17GenericBinaryTypelEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(104) %i.e) #38
          to label %.thread unwind label %bb.t

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypelEE6finishCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(104) %i.e)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builder18GenericByteBuilderINtNtBN_5types17GenericBinaryTypelEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(104) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.t:                                             ; preds = %bb.u, %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

.thread:                                          ; preds = %.body, %bb.u
  %.pn5 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm, %bb.u ]
  resume { ptr, i32 } %.pn5

bb.u:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtBJ_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2O_B2M_13iter_to_arrayINtB23_3VecB2M_EEsm_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtB2Q_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %i.f) #38
          to label %.thread unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB6_16GenericByteArrayINtNtBa_5types17GenericBinaryTypelEEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorINtNtB20_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE9from_iterINtNtNtB1Y_8adapters3map3MapINtNtNtB20_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s6_0EEB67_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 6 uses
  %i.c = alloca [104 x i8], align 8               ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 96
  call fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypelEE13with_capacityCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(104) %i.c, i64 noundef %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.h = icmp eq ptr %1, %2
  br i1 %i.h, label %.loopexit9, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.6.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.noexc5, %.lr.ph.i
  %.sroa.0.016.i = phi ptr [ %1, %.lr.ph.i ], [ %i.i, %.noexc5 ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11637
  %i.j = load i64, ptr %.sroa.0.016.i, align 16, !range !8486, !alias.scope !11643, !noalias !11646, !noundef !9 ; 2 uses
  %i.k = xor i64 %i.j, -9223372036854775808
  %i.l = icmp slt i64 %i.j, 0
  %i.m = select i1 %i.l, i64 %i.k, i64 16
  switch i64 %i.m, label %bb.c [
    i64 11, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2B_.exit.i
    i64 13, label %.thread.i
  ], !prof !11648

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @118, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #40
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

.thread.i:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11649
  br label %bb.f

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2B_.exit.i: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i, i64 8
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %.noexc4 unwind label %.loopexit

.noexc4:                                          ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2B_.exit.i
  %.sroa.05.0.copyload.pr.i = load i64, ptr %i.a, align 8, !noalias !11650 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx11.i, i64 16, i1 false), !noalias !11650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11637
  %.not.i = icmp eq i64 %.sroa.05.0.copyload.pr.i, -9223372036854775807
  br i1 %.not.i, label %.loopexit9, label %bb.d

bb.d:                                             ; preds = %.noexc4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11649
  %.not4.i = icmp eq i64 %.sroa.05.0.copyload.pr.i, -9223372036854775808
  br i1 %.not4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.05.0.copyload.pr.i, ptr %i.b, align 8, !noalias !11649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !11649
  invoke fastcc void @_RINvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB3_18GenericByteBuilderINtNtB7_5types17GenericBinaryTypelEE12append_valueINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc5 unwind label %.loopexit

bb.f:                                             ; preds = %bb.d, %.thread.i
  invoke fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypelEE11append_nullCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.c)
          to label %.noexc5 unwind label %.loopexit

.noexc5:                                          ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11649
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.o = icmp eq ptr %i.i, %2
  br i1 %i.o, label %.loopexit9, label %bb.b

.loopexit:                                        ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2B_.exit.i, %bb.e, %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.loopexit9, %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builder18GenericByteBuilderINtNtBN_5types17GenericBinaryTypelEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(104) %i.c) #38
          to label %bb.j unwind label %bb.i

.loopexit9:                                       ; preds = %.noexc5, %.noexc4, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  invoke fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypelEE6finishCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(104) %i.c)
          to label %bb.h unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %.loopexit9
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builder18GenericByteBuilderINtNtBN_5types17GenericBinaryTypelEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(104) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.j:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB6_16GenericByteArrayINtNtBa_5types17GenericBinaryTypexEEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorINtNtB20_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE9from_iterINtNtB1Y_8adapters12GenericShuntINtNtB42_3map3MapINtNtB42_8peekable8PeekableIB4w_INtNtNtB20_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB5P_11transaction5stateNtB6R_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB85_11ScalarValue13iter_to_arrayB5d_Esn_0EINtNtB20_6result6ResultNtNtB20_7convert10InfallibleNtNtB87_5error15DataFusionErrorEEEB5R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(144) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [144 x i8], align 16              ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [104 x i8], align 8               ; 8 uses
  %i.f = alloca [144 x i8], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.f, ptr noundef nonnull readonly align 16 dereferenceable(144) %1, i64 144, i1 false), !alias.scope !11651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Esn_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.f)
          to label %bb.b unwind label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.d, align 8, !noundef !9
  invoke fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypexEE13with_capacityCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(104) %i.e, i64 noundef %i.g)
          to label %bb.c unwind label %bb.s

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11655
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.c, ptr noundef nonnull align 16 dereferenceable(144) %i.f, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.m, %bb.c
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Esn_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 16 dereferenceable(144) %i.c)
          to label %bb.g unwind label %bb.e, !noalias !11659

bb.e:                                             ; preds = %bb.l, %bb.k, %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load i128, ptr %i.c, align 16, !range !25, !alias.scope !11660, !noalias !11655, !noundef !9
  %i.j = and i128 %i.i, 62
  %switch.i.i.i.i.i = icmp eq i128 %i.j, 50
  br i1 %switch.i.i.i.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.c)
          to label %.body unwind label %bb.n, !noalias !11659

bb.g:                                             ; preds = %bb.d
  %i.k = load i64, ptr %i.b, align 8, !range !11525, !noalias !11655, !noundef !9 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -9223372036854775807
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11655
  %.not4.i = icmp eq i64 %i.k, -9223372036854775808
  br i1 %.not4.i, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.l = load i128, ptr %i.c, align 16, !range !25, !alias.scope !11669, !noalias !11655, !noundef !9
  %i.m = and i128 %i.l, 62
  %switch.i.i.i.i5.i = icmp eq i128 %i.m, 50
  br i1 %switch.i.i.i.i5.i, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.c)
          to label %bb.p unwind label %bb.o

bb.k:                                             ; preds = %bb.h
  store i64 %i.k, ptr %i.a, align 8, !noalias !11655
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i, i64 16, i1 false), !noalias !11655
  invoke fastcc void @_RINvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB3_18GenericByteBuilderINtNtB7_5types17GenericBinaryTypexEE12append_valueINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.m unwind label %bb.e, !noalias !11659

bb.l:                                             ; preds = %bb.h
  invoke fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypexEE11append_nullCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.e)
          to label %bb.m unwind label %bb.e, !noalias !11659

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11655
  br label %bb.d

bb.n:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11659
  unreachable

bb.o:                                             ; preds = %bb.j, %bb.p
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f, %bb.o
end_hunk_10
begin_hunk_11_@_RINvXs7_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB6_16GenericByteArrayINtNtBa_5types17GenericStringTypelEEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorINtNtB20_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9from_iterINtNtB1Y_8adapters12GenericShuntINtNtB45_3map3MapINtNtB45_8peekable8PeekableIB4z_INtNtNtB20_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB5S_11transaction5stateNtB6W_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB7L_6scalarNtB98_11ScalarValue13iter_to_arrayB5g_Esj_0EINtNtB20_6result6ResultNtNtB20_7convert10InfallibleNtNtB7L_5error15DataFusionErrorEEEB5U_:bb.a
bb.n:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11860
  unreachable

bb.o:                                             ; preds = %bb.j, %bb.p
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.o ], [ %i.h, %bb.f ], [ %i.h, %bb.e ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builder18GenericByteBuilderINtNtBN_5types17GenericStringTypelEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(104) %i.e) #38
          to label %.thread unwind label %bb.r

bb.p:                                             ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE6finishCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(104) %i.e)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builder18GenericByteBuilderINtNtBN_5types17GenericStringTypelEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(104) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.r:                                             ; preds = %bb.t, %.body
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

.thread:                                          ; preds = %bb.s, %bb.t, %.body
  %.pn6 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.s ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm, %bb.t ]
  resume { ptr, i32 } %.pn6

bb.s:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load i128, ptr %i.f, align 16, !range !25, !alias.scope !11879, !noundef !9
  %i.r = and i128 %i.q, 62
  %switch.i.i.i.i = icmp eq i128 %i.r, 50
  br i1 %switch.i.i.i.i, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.f)
          to label %.thread unwind label %bb.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB6_16GenericByteArrayINtNtBa_5types17GenericStringTypelEEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorINtNtB20_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9from_iterINtNtB1Y_8adapters12GenericShuntINtNtB45_3map3MapINtNtB45_8peekable8PeekableINtNtNtB3i_3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B5Q_B5O_13iter_to_arrayINtB5l_3VecB5O_EEsj_0EINtNtB20_6result6ResultNtNtB20_7convert10InfallibleNtNtB5S_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [128 x i8], align 16              ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [104 x i8], align 8               ; 8 uses
  %i.f = alloca [128 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.f, ptr noundef nonnull readonly align 16 dereferenceable(128) %1, i64 128, i1 false), !alias.scope !11888
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsj_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.f)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.d, align 8, !noundef !9
  invoke fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE13with_capacityCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(104) %i.e, i64 noundef %i.g)
          to label %bb.c unwind label %bb.u

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.c, ptr noundef nonnull align 16 dereferenceable(128) %i.f, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.o, %bb.c
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsj_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 16 dereferenceable(128) %i.c)
          to label %bb.f unwind label %bb.e, !noalias !11896

bb.e:                                             ; preds = %bb.n, %bb.m, %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtBJ_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2O_B2M_13iter_to_arrayINtB23_3VecB2M_EEsj_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtB2Q_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %i.c) #38
          to label %.body unwind label %bb.p, !noalias !11896

bb.f:                                             ; preds = %bb.d
  %i.i = load i64, ptr %i.b, align 8, !range !11525, !noalias !11892, !noundef !9 ; 3 uses
  %.not.i = icmp eq i64 %i.i, -9223372036854775807
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11892
  %.not4.i = icmp eq i64 %i.i, -9223372036854775808
  br i1 %.not4.i, label %bb.n, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.i, !noalias !11896

bb.i:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load i128, ptr %i.c, align 16, !range !25, !alias.scope !11897, !noalias !11892, !noundef !9
  %i.m = and i128 %i.l, 62
  %switch.i.i.i.i.i = icmp eq i128 %i.m, 50
  br i1 %switch.i.i.i.i.i, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.c)
          to label %.body unwind label %bb.l, !noalias !11896

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.h
  %i.n = load i128, ptr %i.c, align 16, !range !25, !alias.scope !11906, !noalias !11892, !noundef !9
  %i.o = and i128 %i.n, 62
  %switch.i1.i.i.i.i = icmp eq i128 %i.o, 50
  br i1 %switch.i1.i.i.i.i, label %bb.r, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.c)
          to label %bb.r unwind label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11896
  unreachable

bb.m:                                             ; preds = %bb.g
  store i64 %i.i, ptr %i.a, align 8, !noalias !11892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i, i64 16, i1 false), !noalias !11892
  invoke fastcc void @_RINvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB3_18GenericByteBuilderINtNtB7_5types17GenericStringTypelEE12append_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.o unwind label %bb.e, !noalias !11896

bb.n:                                             ; preds = %bb.g
  invoke fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE11append_nullCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.e)
          to label %bb.o unwind label %bb.e, !noalias !11896

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11892
  br label %bb.d

bb.p:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11896
  unreachable

bb.q:                                             ; preds = %bb.k, %bb.r
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.i, %bb.j, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.q ], [ %i.k, %bb.i ], [ %i.k, %bb.j ], [ %i.h, %bb.e ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builder18GenericByteBuilderINtNtBN_5types17GenericStringTypelEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(104) %i.e) #38
          to label %.thread unwind label %bb.t

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE6finishCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(104) %i.e)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builder18GenericByteBuilderINtNtBN_5types17GenericStringTypelEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(104) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.t:                                             ; preds = %bb.u, %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

.thread:                                          ; preds = %.body, %bb.u
  %.pn5 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm, %bb.u ]
  resume { ptr, i32 } %.pn5

bb.u:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtBJ_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2O_B2M_13iter_to_arrayINtB23_3VecB2M_EEsj_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtB2Q_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %i.f) #38
          to label %.thread unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB6_16GenericByteArrayINtNtBa_5types17GenericStringTypelEEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorINtNtB20_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9from_iterINtNtNtB1Y_8adapters3map3MapINtNtNtB20_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_00EEB6a_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 6 uses
  %i.c = alloca [104 x i8], align 8               ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 96
  call fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE13with_capacityCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(104) %i.c, i64 noundef %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.h = icmp eq ptr %1, %2
  br i1 %i.h, label %.loopexit9, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.6.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.noexc5, %.lr.ph.i
  %.sroa.0.016.i = phi ptr [ %1, %.lr.ph.i ], [ %i.i, %.noexc5 ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11909
  %i.j = load i64, ptr %.sroa.0.016.i, align 16, !range !8486, !alias.scope !11915, !noalias !11918, !noundef !9 ; 2 uses
  %i.k = xor i64 %i.j, -9223372036854775808
  %i.l = icmp slt i64 %i.j, 0
  %i.m = select i1 %i.l, i64 %i.k, i64 16
  switch i64 %i.m, label %bb.c [
    i64 6, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_00ENtNtNtB9_6traits8iterator8Iterator4nextB2B_.exit.i
    i64 13, label %.thread.i
  ], !prof !11648

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @118, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #40
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

.thread.i:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11920
  br label %bb.f

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_00ENtNtNtB9_6traits8iterator8Iterator4nextB2B_.exit.i: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i, i64 8
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %.noexc4 unwind label %.loopexit

.noexc4:                                          ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_00ENtNtNtB9_6traits8iterator8Iterator4nextB2B_.exit.i
  %.sroa.05.0.copyload.pr.i = load i64, ptr %i.a, align 8, !noalias !11921 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx11.i, i64 16, i1 false), !noalias !11921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11909
  %.not.i = icmp eq i64 %.sroa.05.0.copyload.pr.i, -9223372036854775807
  br i1 %.not.i, label %.loopexit9, label %bb.d

bb.d:                                             ; preds = %.noexc4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11920
  %.not4.i = icmp eq i64 %.sroa.05.0.copyload.pr.i, -9223372036854775808
  br i1 %.not4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.05.0.copyload.pr.i, ptr %i.b, align 8, !noalias !11920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !11920
  invoke fastcc void @_RINvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB3_18GenericByteBuilderINtNtB7_5types17GenericStringTypelEE12append_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc5 unwind label %.loopexit

bb.f:                                             ; preds = %bb.d, %.thread.i
  invoke fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE11append_nullCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.c)
          to label %.noexc5 unwind label %.loopexit

.noexc5:                                          ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11920
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.o = icmp eq ptr %i.i, %2
  br i1 %i.o, label %.loopexit9, label %bb.b

.loopexit:                                        ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_00ENtNtNtB9_6traits8iterator8Iterator4nextB2B_.exit.i, %bb.e, %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.loopexit9, %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builder18GenericByteBuilderINtNtBN_5types17GenericStringTypelEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(104) %i.c) #38
          to label %bb.j unwind label %bb.i

.loopexit9:                                       ; preds = %.noexc5, %.noexc4, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  invoke fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE6finishCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(104) %i.c)
          to label %bb.h unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %.loopexit9
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builder18GenericByteBuilderINtNtBN_5types17GenericStringTypelEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(104) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.j:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB6_16GenericByteArrayINtNtBa_5types17GenericStringTypelEEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorINtNtB20_6option6OptionReEE9from_iterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB2R_EECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [104 x i8], align 8               ; 19 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !11922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val3 = load ptr, ptr %i.e, align 8, !nonnull !9, !noundef !9
  %i.f = ptrtoint ptr %.val3 to i64
  %i.g = ptrtoint ptr %.val to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 4
  invoke fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE13with_capacityCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(104) %i.b, i64 noundef %i.i)
          to label %bb.b unwind label %bb.x

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11926
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11930)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.j, align 8, !alias.scope !11931, !noalias !11934, !nonnull !9, !noundef !9
  %i.m = load ptr, ptr %i.k, align 8, !alias.scope !11931, !noalias !11934, !nonnull !9, !noundef !9 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionReEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.d

.loopexit.i:                                      ; preds = %bb.q, %bb.o, %bb.k, %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.p, %bb.l
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionReEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.body unwind label %bb.s, !noalias !11936

bb.d:                                             ; preds = %bb.r, %.lr.ph.i
  %i.z = phi ptr [ %i.m, %.lr.ph.i ], [ %i.by, %bb.r ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11937)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.aa, ptr %i.k, align 8, !alias.scope !11937, !noalias !11934
  %i.ab = load ptr, ptr %i.z, align 8, !noalias !11939, !noundef !9 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !11939 ; 4 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.q, label %bb.e

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionReEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.r, %bb.b
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionReEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.u unwind label %bb.t

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.b, i64 noundef %i.ad)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !11936

.noexc.i:                                         ; preds = %bb.e
  %i.ae = load i64, ptr %i.o, align 8, !alias.scope !11940, !noalias !11945, !noundef !9 ; 3 uses
  %i.af = icmp sgt i64 %i.ae, -1
  call void @llvm.assume(i1 %i.af)
  %.not.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE15append_elementsCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc.i
  %i.ag = load ptr, ptr %i.p, align 8, !alias.scope !11940, !noalias !11945, !nonnull !9, !noundef !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull readonly align 1 %i.ab, i64 %i.ad, i1 false), !noalias !11936
  %.pre.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !11940, !noalias !11945
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE15append_elementsCs14kWLkQVSKO_14deltalake_core.exit.i.i
end_hunk_11
begin_hunk_12_@_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types23TimestampNanosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core:bb.a
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.aa

bb.ai:                                            ; preds = %bb.ao, %bb.aa
  %.sroa.0.5.in = phi i1 [ %.sroa.0.6.in, %bb.ao ], [ %.sroa.0.3.in, %bb.aa ]
  %i.dj = load i64, ptr %i.y, align 8, !range !245, !alias.scope !18404, !noundef !9
  %i.dk = icmp eq i64 %i.dj, -9223372036854775788
  br i1 %i.dk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1N9T06jgEdt_11arrow_array8timezone7private2TzNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit195, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.y)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1N9T06jgEdt_11arrow_array8timezone7private2TzNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit195

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1N9T06jgEdt_11arrow_array8timezone7private2TzNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit195: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.s

bb.ak:                                            ; preds = %bb.v, %bb.ac
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.al:                                            ; preds = %bb.t
  %i.dm = load i32, ptr %i.t, align 4, !noundef !9
  %.not177 = icmp eq i32 %i.dm, 0
  br i1 %.not177, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.t, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.s, ptr %i.r, align 8
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXsh_NtNtCshmPyUV8PP35_6chrono5naive8datetimeNtB5_13NaiveDateTimeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.4114.0..sroa_idx, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.z, ptr %i.dn, align 8
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc4sync3ArceENtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.4118.0..sroa_idx, align 8
  %i.do = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !nonnull !9, !align !12, !noundef !9
  %i.dr = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.do, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dq, ptr noundef nonnull @139, ptr noundef nonnull %i.r)
          to label %bb.ap unwind label %bb.w

bb.an:                                            ; preds = %bb.al
  %i.ds = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !9, !align !12, !noundef !9
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !invariant.load !9, !nonnull !9
  %i.dx = invoke noundef zeroext i1 %i.dw(ptr noundef nonnull %i.ds, ptr noalias noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 4)
          to label %bb.ao unwind label %bb.w

bb.ao:                                            ; preds = %bb.an, %bb.ap
  %.sroa.0.6.in = phi i1 [ %i.dr, %bb.ap ], [ %i.dx, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ai

bb.ap:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.ao

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1N9T06jgEdt_11arrow_array8timezone7private2TzNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.v
  resume { ptr, i32 } %.pn

bb.aq:                                            ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types23TimestampNanosecondTypeE5valueCs14kWLkQVSKO_14deltalake_core.exit191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i32 %i.bp, ptr %i.ah, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.ah, ptr %i.ag, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXsi_NtNtCshmPyUV8PP35_6chrono5naive4dateNtB5_9NaiveDateNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  %i.dy = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !9, !align !12, !noundef !9
  %i.eb = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.dy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ea, ptr noundef nonnull @138, ptr noundef nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.s

bb.ar:                                            ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types23TimestampNanosecondTypeE5valueCs14kWLkQVSKO_14deltalake_core.exit191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.ai, ptr %i.af, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %.0.val, ptr %i.ec, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.434.0..sroa_idx, align 8
  %i.ed = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !nonnull !9, !align !12, !noundef !9
  %i.eg = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ed, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ef, ptr noundef nonnull @141, ptr noundef nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.s

bb.as:                                            ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types23TimestampNanosecondTypeE5valueCs14kWLkQVSKO_14deltalake_core.exit194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ei = load <2 x i32>, ptr %i.eh, align 4
  store <2 x i32> %i.ei, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %i.ac, ptr %i.ab, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @_RNvXsb_NtNtCshmPyUV8PP35_6chrono5naive4timeNtB5_9NaiveTimeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.454.0..sroa_idx, align 8
  %i.ej = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !nonnull !9, !align !12, !noundef !9
  %i.em = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ej, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.el, ptr noundef nonnull @138, ptr noundef nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.au

bb.at:                                            ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types23TimestampNanosecondTypeE5valueCs14kWLkQVSKO_14deltalake_core.exit194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.ae, ptr %i.aa, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.450.0..sroa_idx, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %.0.val, ptr %i.en, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.470.0..sroa_idx, align 8
  %i.eo = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !nonnull !9, !align !12, !noundef !9
  %i.er = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.eo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.eq, ptr noundef nonnull @141, ptr noundef nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %.sroa.0.12.in = phi i1 [ %i.em, %bb.as ], [ %i.er, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.s
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types24IntervalMonthDayNanoTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, ptr nofree readonly captures(none) %.32.val, i64 %.40.val, i64 noundef %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  %i.g = alloca [16 x i8], align 8                ; 3 uses
  %i.h = alloca [16 x i8], align 8                ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.i = load ptr, ptr %.0.val, align 8, !nonnull !9, !align !12, !noundef !9
  %i.j = load i8, ptr %i.i, align 8, !range !527, !noundef !9
  switch i8 %i.j, label %bb.b [
    i8 13, label %bb.d
    i8 14, label %bb.e
    i8 15, label %bb.e
    i8 16, label %bb.f
    i8 17, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %0, ptr %i.d, align 8, !noalias !18407
  %i.k = lshr i64 %.40.val, 4                     ; 2 uses
  %i.l = icmp ult i64 %0, %i.k
  br i1 %i.l, label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24IntervalMonthDayNanoTypeE5valueCs14kWLkQVSKO_14deltalake_core.exit, label %bb.c, !prof !70

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18407
  store i64 %i.k, ptr %i.c, align 8, !noalias !18407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18407
  store ptr %i.d, ptr %i.b, align 8, !noalias !18407
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !18407
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.m, align 8, !noalias !18407
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !18407
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @185, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #40, !noalias !18407
  unreachable

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24IntervalMonthDayNanoTypeE5valueCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.32.val, i64 %0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18410
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.p, ptr %i.a, align 8, !noalias !18410
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @410, i64 noundef 20, ptr noalias noundef nonnull readonly captures(address, read_provenance) @411, i64 noundef 6, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @311, ptr noalias noundef nonnull readonly captures(address, read_provenance) @412, i64 noundef 4, ptr noundef nonnull readonly %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @311, ptr noalias noundef nonnull readonly captures(address, read_provenance) @413, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @409)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i1 %i.q

bb.d:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.r = getelementptr i8, ptr %.8.val, i64 32
  %.val176 = load ptr, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %.8.val, i64 40
  %.val177 = load i64, ptr %i.s, align 8, !noundef !9
  call fastcc void @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24IntervalMonthDayNanoTypeE5valueCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.f, ptr %.val176, i64 %.val177, i64 noundef %0) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #40
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.t = getelementptr i8, ptr %.8.val, i64 32
  %.val174 = load ptr, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %.8.val, i64 40
  %.val175 = load i64, ptr %i.u, align 8, !noundef !9
  call fastcc void @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24IntervalMonthDayNanoTypeE5valueCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.h, ptr %.val174, i64 %.val175, i64 noundef %0) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #40
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.v = getelementptr i8, ptr %.8.val, i64 32
  %.val = load ptr, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %.8.val, i64 40
  %.val173 = load i64, ptr %i.w, align 8, !noundef !9
  call fastcc void @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24IntervalMonthDayNanoTypeE5valueCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.g, ptr %.val, i64 %.val173, i64 noundef %0) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #40
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types24TimestampMicrosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr %.0.val, ptr nofree readonly captures(none) %.8.val, ptr nofree readonly captures(none) %.32.val, i64 %.40.val, i64 noundef %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [12 x i8], align 4                ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [12 x i8], align 4                ; 4 uses
  %i.q = alloca [12 x i8], align 4                ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [12 x i8], align 4                ; 4 uses
  %i.t = alloca [12 x i8], align 4                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 10 uses
  %i.w = alloca [24 x i8], align 4                ; 4 uses
  %i.x = alloca [24 x i8], align 4                ; 5 uses
  %i.y = alloca [32 x i8], align 8                ; 9 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [12 x i8], align 4               ; 5 uses
  %i.ae = alloca [8 x i8], align 8                ; 2 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [4 x i8], align 4                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.aj = load ptr, ptr %.0.val, align 8, !nonnull !9, !align !12, !noundef !9 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 8, !range !527, !noundef !9
  switch i8 %i.ak, label %bb.b [
    i8 13, label %bb.h
    i8 14, label %bb.j
    i8 15, label %bb.j
    i8 16, label %bb.l
    i8 17, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %0, ptr %i.l, align 8
  %i.al = lshr i64 %.40.val, 3                    ; 2 uses
  %i.am = icmp ult i64 %0, %i.al
  br i1 %i.am, label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMicrosecondTypeE5valueCs14kWLkQVSKO_14deltalake_core.exit, label %bb.c, !prof !70

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %i.al, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.an, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @185, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #40
  unreachable

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMicrosecondTypeE5valueCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.32.val, i64 %0
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.ap, ptr %i.n, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !alias.scope !18414, !noalias !18417, !noundef !9 ; 2 uses
  %i.as = and i32 %i.ar, 33554432
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMicrosecondTypeE5valueCs14kWLkQVSKO_14deltalake_core.exit
  %i.au = and i32 %i.ar, 67108864
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMicrosecondTypeE5valueCs14kWLkQVSKO_14deltalake_core.exit
  %i.aw = call noundef zeroext i1 @_RNvXsD_NtNtCsbvkFyIu7lgC_4core3fmt3numxNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsR_NtNtCsbvkFyIu7lgC_4core3fmt3numxNtB7_5Debug3fmt.exit

bb.f:                                             ; preds = %bb.d
  %i.ax = call noundef zeroext i1 @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsR_NtNtCsbvkFyIu7lgC_4core3fmt3numxNtB7_5Debug3fmt.exit

bb.g:                                             ; preds = %bb.d
  %i.ay = call noundef zeroext i1 @_RNvXsF_NtNtCsbvkFyIu7lgC_4core3fmt3numxNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsR_NtNtCsbvkFyIu7lgC_4core3fmt3numxNtB7_5Debug3fmt.exit

_RNvXsR_NtNtCsbvkFyIu7lgC_4core3fmt3numxNtB7_5Debug3fmt.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.0.0.in.i = phi i1 [ %i.ax, %bb.f ], [ %i.ay, %bb.g ], [ %i.aw, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.s

bb.h:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.az = getelementptr i8, ptr %.8.val, i64 32
  %.val182 = load ptr, ptr %i.az, align 8
  %i.ba = getelementptr i8, ptr %.8.val, i64 40
  %.val183 = load i64, ptr %i.ba, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %0, ptr %i.i, align 8
  %i.bb = lshr i64 %.val183, 3                    ; 2 uses
  %i.bc = icmp ult i64 %0, %i.bb
  br i1 %i.bc, label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMicrosecondTypeE5valueCs14kWLkQVSKO_14deltalake_core.exit188, label %bb.i, !prof !70

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.bb, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.42.0..sroa_idx.i186 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i186, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.bd, align 8
  %.sroa.46.0..sroa_idx.i187 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i187, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @185, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #40
  unreachable

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMicrosecondTypeE5valueCs14kWLkQVSKO_14deltalake_core.exit188: ; preds = %bb.h
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.val182, i64 %0
  %i.bf = load i64, ptr %i.be, align 8, !noundef !9 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !noundef !9 ; 2 uses
  %.not173 = icmp eq ptr %i.bh, null
  br i1 %.not173, label %bb.o, label %bb.n

bb.j:                                             ; preds = %bb.a, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.bi = getelementptr i8, ptr %.8.val, i64 32
  %.val180 = load ptr, ptr %i.bi, align 8
  %i.bj = getelementptr i8, ptr %.8.val, i64 40
  %.val181 = load i64, ptr %i.bj, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %0, ptr %i.f, align 8
  %i.bk = lshr i64 %.val181, 3                    ; 2 uses
  %i.bl = icmp ult i64 %0, %i.bk
  br i1 %i.bl, label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMicrosecondTypeE5valueCs14kWLkQVSKO_14deltalake_core.exit191, label %bb.k, !prof !70

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.bk, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.42.0..sroa_idx.i189 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i189, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.bm, align 8
  %.sroa.46.0..sroa_idx.i190 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i190, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @185, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #40
  unreachable

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMicrosecondTypeE5valueCs14kWLkQVSKO_14deltalake_core.exit191: ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.val180, i64 %0
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.bo, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RINvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions11as_datetimeNtNtB4_5types24TimestampMicrosecondTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.m, i64 noundef %i.bo)
  %i.bp = load i32, ptr %i.m, align 4, !noundef !9 ; 2 uses
  %.not = icmp eq i32 %i.bp, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %.not, label %bb.ar, label %bb.aq

bb.l:                                             ; preds = %bb.a, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.bq = getelementptr i8, ptr %.8.val, i64 32
  %.val = load ptr, ptr %i.bq, align 8
  %i.br = getelementptr i8, ptr %.8.val, i64 40
  %.val179 = load i64, ptr %i.br, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %0, ptr %i.c, align 8
  %i.bs = lshr i64 %.val179, 3                    ; 2 uses
  %i.bt = icmp ult i64 %0, %i.bs
  br i1 %i.bt, label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMicrosecondTypeE5valueCs14kWLkQVSKO_14deltalake_core.exit194, label %bb.m, !prof !70

bb.m:                                             ; preds = %bb.l
end_hunk_12
begin_hunk_13_@_RNvMs1_NtCsdFjMDJQAyx6_10arrow_json6writerINtB5_6WriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB5_13LineDelimitedE5writeCs14kWLkQVSKO_14deltalake_core:bb.a
  invoke void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val34, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cf, i64 noundef range(i64 1, -9223372036854775808) %i.cc)
          to label %_RNvXs_NtNtCs2pqxYH9ZEk8_3std2io5implsQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_5Write9write_allCs14kWLkQVSKO_14deltalake_core.exit52 unwind label %.loopexit

bb.ba:                                            ; preds = %bb.ay, %_RNvXs_NtNtCs2pqxYH9ZEk8_3std2io5implsQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_5Write9write_allCs14kWLkQVSKO_14deltalake_core.exit52
  invoke void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 1)
          to label %bb.an unwind label %.loopexit

_RNvXs_NtNtCs2pqxYH9ZEk8_3std2io5implsQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_5Write9write_allCs14kWLkQVSKO_14deltalake_core.exit52: ; preds = %bb.az
  store i64 0, ptr %i.r, align 8
  br label %bb.ba

bb.bb:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !19067)
  call void @llvm.experimental.noalias.scope.decl(metadata !19070)
  %i.cg = load ptr, ptr %i.h, align 8, !alias.scope !19073, !nonnull !9, !noundef !9
  %i.ch = atomicrmw sub ptr %i.cg, i64 1 release, align 8, !noalias !19073
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.bc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit55

bb.bc:                                            ; preds = %bb.bb
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit55 unwind label %bb.as

bb.bd:                                            ; preds = %bb.am
  unreachable

bb.be:                                            ; preds = %bb.ah, %bb.z, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit, %bb.ak, %.body36
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit55: ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array12struct_array11StructArrayECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.j)
          to label %bb.o unwind label %bb.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs1_NtCsdFjMDJQAyx6_10arrow_json6writerINtB5_6WriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB5_13LineDelimitedE6finishCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(160) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !71, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 153 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !71, !noundef !9
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8
  br label %bb.b

bb.d:                                             ; preds = %bb.b, %bb.e
  store i64 -9223372036854775788, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.b
  store i8 1, ptr %i.d, align 1
  br label %bb.d
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !297   ; 3 uses
  %.sroa.05.0 = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19074)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !70

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 2 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.c, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.i = icmp eq i64 %4, 1
  %i.j = icmp ult i64 %4, 1025
  %..i = select i1 %i.j, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.i, i64 8, i64 %..i
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19074
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.k, align 8, !alias.scope !19074
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !19074
  %i.l = load i64, ptr %i.a, align 8, !range !48, !noalias !19074, !noundef !9
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.m, label %bb.e, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.n, align 8, !range !123, !noalias !19074, !noundef !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !19074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19074
  br label %bb.f

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d
  %i.r = load ptr, ptr %i.n, align 8, !noalias !19074, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19074
  store ptr %i.r, ptr %i.k, align 8, !alias.scope !19074
  %i.s = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.s)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !19074
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs14kWLkQVSKO_14deltalake_core.exit, %bb.c, %bb.e, %bb.b
  %.sroa.3.0 = phi i64 [ undef, %bb.b ], [ undef, %bb.c ], [ %i.q, %bb.e ], [ undef, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs14kWLkQVSKO_14deltalake_core.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.o, %bb.e ], [ -9223372036854775807, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs14kWLkQVSKO_14deltalake_core.exit ], [ -9223372036854775807, %bb.a ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19077)
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !19077 ; 2 uses
  %.sroa.05.0.i = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0.i, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19080)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !70

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19083
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !19083
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !19083
  %i.i = load i64, ptr %i.a, align 8, !range !48, !noalias !19083, !noundef !9
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs14kWLkQVSKO_14deltalake_core.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !123, !noalias !19083, !noundef !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !19083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19083
  br label %bb.f

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !19083, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19083
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !19083
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !19083
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sroa.3.0.i.ph = phi i64 [ %i.n, %bb.e ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.ph = phi i64 [ %i.l, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.3.0.i.ph) #37
  unreachable

bb.g:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %4 = mul nuw i64 %.val, %3                      ; 3 uses
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2) #41
  %i.e = inttoptr i64 %2 to ptr
  store ptr %i.e, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %1                       ; 3 uses
  %i.g = icmp ule i64 %i.f, %4
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.f) #41 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit
  store ptr %i.h, ptr %i.a, align 8
  %i.j = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.f, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -9223372036854775807, %bb.c ], [ %2, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit ], [ -9223372036854775807, %bb.a ]
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.l
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #8 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %.sroa.05.0 = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19084)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !70

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19084
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i = load ptr, ptr %i.h, align 8, !alias.scope !19084
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !19084
  %i.i = load i64, ptr %i.a, align 8, !range !48, !noalias !19084, !noundef !9
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !123, !noalias !19084, !noundef !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !19084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19084
  br label %bb.f

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !19084, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19084
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !19084
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !19084
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs14kWLkQVSKO_14deltalake_core.exit, %bb.c, %bb.e, %bb.b
  %.sroa.3.0 = phi i64 [ undef, %bb.b ], [ undef, %bb.c ], [ %i.n, %bb.e ], [ undef, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs14kWLkQVSKO_14deltalake_core.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.l, %bb.e ], [ -9223372036854775807, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs14kWLkQVSKO_14deltalake_core.exit ], [ -9223372036854775807, %bb.a ]
  %i.q = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.r = insertvalue { i64, i64 } %i.q, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.r
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEE8grow_oneCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !297, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19087)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19087
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !19087
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 16, i64 noundef 128), !noalias !19087
  %i.f = load i64, ptr %i.a, align 8, !range !48, !noalias !19087, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !123, !noalias !19087, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !19087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19087
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !19087, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19087
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !19087
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !19087
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEE8grow_oneCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !297, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19090)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19090
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !19090
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 16, i64 noundef 112), !noalias !19090
  %i.f = load i64, ptr %i.a, align 8, !range !48, !noalias !19090, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !123, !noalias !19090, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !19090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19090
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !19090, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19090
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !19090
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !19090
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEE8grow_oneCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !297, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19093)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19093
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !19093
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24), !noalias !19093
  %i.f = load i64, ptr %i.a, align 8, !range !48, !noalias !19093, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !123, !noalias !19093, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !19093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19093
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !19093, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19093
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !19093
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !19093
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE8grow_oneCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !297, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19096)
end_hunk_13
begin_hunk_14_@_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEE8grow_oneCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !19204, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19204
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !19204
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !19204
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEE8grow_oneCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !297, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19207)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19207
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !19207
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 120), !noalias !19207
  %i.f = load i64, ptr %i.a, align 8, !range !48, !noalias !19207, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !123, !noalias !19207, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !19207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19207
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !19207, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19207
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !19207
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !19207
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE8grow_oneCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !297, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19210)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19210
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !19210
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 136), !noalias !19210
  %i.f = load i64, ptr %i.a, align 8, !range !48, !noalias !19210, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !123, !noalias !19210, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !19210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19210
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !19210, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19210
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !19210
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !19210
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringjEE8grow_oneCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !297, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19213)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19213
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !19213
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !19213
  %i.f = load i64, ptr %i.a, align 8, !range !48, !noalias !19213, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !123, !noalias !19213, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !19213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19213
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !19213, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19213
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !19213
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !19213
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorEE8grow_oneCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !297, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19216)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19216
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !19216
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 64), !noalias !19216
  %i.f = load i64, ptr %i.a, align 8, !range !48, !noalias !19216, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !123, !noalias !19216, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !19216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19216
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !19216, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19216
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !19216
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !19216
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCsjyY8HP3IvQ6_12object_store4path4PathjNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataEE8grow_oneCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !297, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19219)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19219
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !19219
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 200), !noalias !19219
  %i.f = load i64, ptr %i.a, align 8, !range !48, !noalias !19219, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !123, !noalias !19219, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !19219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19219
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !19219, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19219
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !19219
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !19219
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #10 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !124
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !124

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #41
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.j = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #41
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %storemerge13 = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink, ptr %i.n, align 8
  store i64 %storemerge13, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !124
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !124

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  br i1 %2, label %bb.g, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #41
  br label %bb.h

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #41
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit
  %.pn10 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn10, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn10, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtBd_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE12insert_entryCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !noundef !9
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.k = invoke { ptr, i64 } @_RINvMs8_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core()
          to label %bb.c unwind label %bb.g       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %3 = extractvalue { ptr, i64 } %i.k, 1          ; 2 uses
  store ptr %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %3, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %3, ptr %i.n, align 8
  store ptr %i.l, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @_RNvMsu_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB19_4LeafE16push_with_handleCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !9, !noundef !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noundef !9
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.u = load ptr, ptr %i.f, align 8, !nonnull !9, !noundef !9
  %i.v = load ptr, ptr %i.o, align 8, !nonnull !9, !noundef !9
  store ptr %i.u, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load <2 x i64>, ptr %i.t, align 8
  store <2 x i64> %i.w, ptr %.sroa.4.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.v, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RINvMsN_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs6_NtNtB8_3map5entryINtB3M_11VacantEntryB1D_B1Y_E12insert_entry0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.f:                                             ; preds = %bb.h, %bb.g
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %2) #38
          to label %bb.h unwind label %bb.f

.critedge9:                                       ; preds = %bb.h
  resume { ptr, i32 } %i.ab

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #38
          to label %.critedge9 unwind label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs7_NtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE6insertCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_RNvMsS_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %2) #38
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 1        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs7_NtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE8into_mutCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypelEE7try_newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 7 uses
  %i.b = alloca [64 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !9
  %i.i = lshr i64 %i.h, 2
  %i.j = add nsw i64 %i.i, -1                     ; 2 uses
  store i64 %i.j, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXsO_NtCs1N9T06jgEdt_11arrow_array5typesINtB5_17GenericBinaryTypelENtB5_13ByteArrayType8validateCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19222)
  %i.l = load ptr, ptr %3, align 8, !alias.scope !19222, !noundef !9 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !19225
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %3) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.t

bb.e:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.e, align 8, !range !245, !noundef !9
  %.not = icmp eq i64 %i.p, -9223372036854775788
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.r = load ptr, ptr %3, align 8, !noundef !9
  %.not20 = icmp eq ptr %i.r, null
  br i1 %.not20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.t = load i64, ptr %i.s, align 8, !noundef !9 ; 2 uses
  %.not21 = icmp eq i64 %i.t, %i.j
  br i1 %.not21, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 20, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.a, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offset12OffsetBufferlEECs14kWLkQVSKO_14deltalake_core.exit33

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.t, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @173, ptr %i.b, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.45.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @175, ptr %i.x, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.49.0..sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.f, ptr %i.y, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.c, ptr %i.z, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.417.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @178, ptr noundef nonnull %i.b)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offset12OffsetBufferlEECs14kWLkQVSKO_14deltalake_core.exit33: ; preds = %bb.s, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit31, %bb.i
  ret void

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_14
begin_hunk_15_@_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE20try_new_with_optionsCs14kWLkQVSKO_14deltalake_core:bb.a
  store i8 %.val, ptr %.sroa.572.0..sroa_idx, align 8, !alias.scope !19509
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.aj = load i64, ptr %i.ai, align 8, !range !123, !noundef !9
  %.not35 = icmp eq i64 %i.aj, -9223372036854775808
  br i1 %.not35, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.s, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow6schemaNtB4_20ArrowSchemaConverter7convert(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ak)
          to label %bb.t unwind label %bb.m

bb.s:                                             ; preds = %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !9, !noundef !9
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.ao = load i64, ptr %i.an, align 8, !noundef !9
  store ptr %i.am, ptr %i.i, align 8
  store i64 %i.ao, ptr %.sroa.471.0..sroa_idx, align 8
  br label %bb.r

bb.t:                                             ; preds = %bb.r
  %i.ap = load i64, ptr %i.h, align 8, !range !123, !noundef !9 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, -9223372036854775808
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 32, i1 false)
  br i1 %i.aq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(248) %i.l)
          to label %bb.ba unwind label %bb.bh

bb.v:                                             ; preds = %bb.t
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.626.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 %i.ap, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.o

bb.w:                                             ; preds = %bb.o
  %i.at = load ptr, ptr %i.m, align 8, !nonnull !9, !noundef !9
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  invoke void @_RNvNtNtCs4tdlwR1I4n2_7parquet5arrow6schema36add_encoded_arrow_schema_to_metadata(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(248) %i.l)
          to label %bb.y unwind label %bb.x

.body:                                            ; preds = %bb.ae, %bb.ay, %bb.aa, %bb.x
  %.sroa.019.2 = phi i8 [ 0, %bb.aa ], [ %.sroa.019.3, %bb.x ], [ 0, %bb.ay ], [ 0, %bb.ae ]
  %.sroa.020.2 = phi i8 [ 1, %bb.aa ], [ %.sroa.019.3, %bb.x ], [ 0, %bb.ay ], [ 0, %bb.ae ]
  %.sroa.023.2 = phi i1 [ true, %bb.aa ], [ %.sroa.023.3, %bb.x ], [ true, %bb.ay ], [ true, %bb.ae ]
  %.pn37 = phi { ptr, i32 } [ %i.bb, %bb.aa ], [ %i.av, %bb.x ], [ %i.bg, %bb.ay ], [ %i.bg, %bb.ae ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16SchemaDescriptorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.k) #38
          to label %bb.l unwind label %bb.p

bb.x:                                             ; preds = %bb.aq, %bb.aj, %bb.w
  %.sroa.019.3 = phi i8 [ 0, %bb.aj ], [ 0, %bb.aq ], [ 1, %bb.w ] ; 2 uses
  %.sroa.023.3 = phi i1 [ true, %bb.aj ], [ false, %bb.aq ], [ true, %bb.w ]
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.o, %bb.w
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 232
  %.val46 = load i64, ptr %i.aw, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.ax, ptr noundef nonnull align 8 dereferenceable(248) %i.l, i64 248, i1 false)
  store i64 1, ptr %i.d, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.ay, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !19513
  %i.az = call noundef align 8 dereferenceable_or_null(264) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 264, i64 noundef 8) #41, !noalias !19513 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.z, label %bb.ac, !prof !10

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 264) #37
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(248) %i.ax)
          to label %.body unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.ac:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.az, ptr noundef nonnull align 8 dereferenceable(264) %i.d, i64 264, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.az, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5103)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6104)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.val47 = load ptr, ptr %i.bd, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.be = atomicrmw add ptr %.val47, i64 1 monotonic, align 8
  %i.bf = icmp slt i64 %i.be, 0
  br i1 %i.bf, label %bb.ad, label %_RNvMsf_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_16SchemaDescriptor15root_schema_ptr.exit

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.af
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19516)
  call void @llvm.experimental.noalias.scope.decl(metadata !19519)
  %i.bh = load ptr, ptr %i.g, align 8, !alias.scope !19522, !nonnull !9, !noundef !9
  %i.bi = atomicrmw sub ptr %i.bh, i64 1 release, align 8, !noalias !19522
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %bb.ay, label %.body

_RNvMsf_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_16SchemaDescriptor15root_schema_ptr.exit: ; preds = %bb.ac
  %i.bk = load ptr, ptr %i.g, align 8, !nonnull !9, !noundef !9
  %i.bl = atomicrmw add ptr %i.bk, i64 1 monotonic, align 8
  %i.bm = icmp slt i64 %i.bl, 0
  br i1 %i.bm, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_RNvMsf_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_16SchemaDescriptor15root_schema_ptr.exit
  %i.bn = load ptr, ptr %i.g, align 8, !nonnull !9, !noundef !9
  invoke void @_RNvMs1_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB5_20SerializedFileWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull %.val47, ptr noundef nonnull %i.bn)
          to label %bb.ah unwind label %bb.ae

bb.ag:                                            ; preds = %_RNvMsf_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_16SchemaDescriptor15root_schema_ptr.exit
  call void @llvm.trap()
  unreachable

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bo = load i64, ptr %i.f, align 8, !range !123, !noundef !9 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, -9223372036854775808
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.67, ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i64 32, i1 false)
  br i1 %i.bp, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.67, i64 32, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5103)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6104)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !19523)
  call void @llvm.experimental.noalias.scope.decl(metadata !19526)
  %i.bs = load ptr, ptr %i.g, align 8, !alias.scope !19529, !nonnull !9, !noundef !9
  %i.bt = atomicrmw sub ptr %i.bs, i64 1 release, align 8, !noalias !19529
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %bb.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.x

bb.ak:                                            ; preds = %bb.ah
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6104, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.631.0..sroa_idx, i64 144, i1 false)
  %.sroa.631.sroa.5.0..sroa.631.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  %.sroa.631.sroa.5.0.copyload = load ptr, ptr %.sroa.631.sroa.5.0..sroa.631.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.631.sroa.6.0..sroa.631.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %.sroa.631.sroa.6.0.copyload = load ptr, ptr %.sroa.631.sroa.6.0..sroa.631.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.631.sroa.7.0..sroa.631.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.631.sroa.7.0..sroa.631.0..sroa_idx.sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5103, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.67, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  %i.bv = load ptr, ptr %i.m, align 8, !nonnull !9, !noundef !9
  %i.bw = atomicrmw add ptr %i.bv, i64 1 monotonic, align 8
  %i.bx = icmp slt i64 %i.bw, 0
  br i1 %i.bx, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.631.sroa.5.0.copyload) ]
  %4 = load ptr, ptr %i.m, align 8, !nonnull !9, !noundef !9
  %i.by = atomicrmw add ptr %.sroa.631.sroa.5.0.copyload, i64 1 monotonic, align 8, !noalias !19530
  %i.bz = icmp slt i64 %i.by, 0
  br i1 %i.bz, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.631.sroa.6.0.copyload) ]
  %i.ca = atomicrmw add ptr %.sroa.631.sroa.6.0.copyload, i64 1 monotonic, align 8, !noalias !19530
  %i.cb = icmp slt i64 %i.ca, 0
  br i1 %i.cb, label %bb.ao, label %_RINvMsc_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerNtB6_26ArrowRowGroupWriterFactory3newINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit

bb.an:                                            ; preds = %bb.al
  call void @llvm.trap()
  unreachable

bb.ao:                                            ; preds = %bb.am
  call void @llvm.trap()
  unreachable

bb.ap:                                            ; preds = %bb.ak
  call void @llvm.trap()
  unreachable

_RINvMsc_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerNtB6_26ArrowRowGroupWriterFactory3newINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.am
  %.sroa.014.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.014.sroa.0.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5103, i64 32, i1 false)
  %.sroa.014.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.014.sroa.0.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6104, i64 144, i1 false)
  %.sroa.014.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.sroa.0.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  %i.cc = load ptr, ptr %i.m, align 8, !nonnull !9, !noundef !9
  store i64 %i.bo, ptr %0, align 8
  %.sroa.014.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %.sroa.631.sroa.5.0.copyload, ptr %.sroa.014.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.014.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %.sroa.631.sroa.6.0.copyload, ptr %.sroa.014.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.014.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 -9223372036854775808, ptr %.sroa.014.sroa.4.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.cc, ptr %.sroa.515.0..sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %.sroa.631.sroa.5.0.copyload, ptr %.sroa.616.0..sroa_idx, align 8
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %4, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx, align 8
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %.sroa.631.sroa.6.0.copyload, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %.val46, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5103)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6104)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !19533)
  call void @llvm.experimental.noalias.scope.decl(metadata !19536)
  %i.cd = load ptr, ptr %i.g, align 8, !alias.scope !19539, !nonnull !9, !noundef !9
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !19539
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit55

bb.aq:                                            ; preds = %_RINvMsc_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerNtB6_26ArrowRowGroupWriterFactory3newINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit55 unwind label %bb.x

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit55: ; preds = %_RINvMsc_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerNtB6_26ArrowRowGroupWriterFactory3newINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16SchemaDescriptorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.k)
          to label %bb.ar unwind label %bb.m

bb.ar:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 248 ; 4 uses
  %i.ch = load i64, ptr %i.cg, align 8, !range !123, !alias.scope !19540, !noundef !9
  %i.ci = icmp eq i64 %i.ch, -9223372036854775808
  br i1 %i.ci, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %bb.av unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.cg, align 8, !alias.scope !19543 ; 2 uses
  %i.ck = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.ck, label %common.resume, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 256
  %.val3.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !19550, !nonnull !9, !noundef !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !19551
  br label %common.resume

bb.av:                                            ; preds = %bb.as
  %.val.i.i.i = load i64, ptr %i.cg, align 8, !alias.scope !19543 ; 2 uses
  %i.cm = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.cm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 256
  %.val1.i.i.i = load ptr, ptr %i.cn, align 8, !alias.scope !19550, !nonnull !9, !noundef !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !19554
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit

bb.ax:                                            ; preds = %bb.bg
  br i1 %.sroa.023.6, label %.body56.thread, label %.body56

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.bo, %bb.bn, %bb.aw, %bb.av, %bb.ar, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit
  ret void

bb.ay:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #42
          to label %.body unwind label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16SchemaDescriptorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.k)
          to label %bb.az unwind label %bb.m

bb.az:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.u
  %.sroa.020.6 = phi i8 [ 0, %bb.az ], [ 1, %bb.u ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 248 ; 4 uses
  %i.cp = load i64, ptr %i.co, align 8, !range !123, !alias.scope !19557, !noundef !9
  %i.cq = icmp eq i64 %i.cp, -9223372036854775808
  br i1 %i.cq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit67, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %bb.be unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i60 = load i64, ptr %i.co, align 8, !alias.scope !19560 ; 2 uses
  %i.cs = icmp eq i64 %.val2.i.i.i60, 0
  br i1 %i.cs, label %.body56.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 256
  %.val3.i.i.i61 = load ptr, ptr %i.ct, align 8, !alias.scope !19567, !nonnull !9, !noundef !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i61, i64 noundef %.val2.i.i.i60, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !19568
  br label %.body56.thread

bb.be:                                            ; preds = %bb.bb
  %.val.i.i.i63 = load i64, ptr %i.co, align 8, !alias.scope !19560 ; 2 uses
  %i.cu = icmp eq i64 %.val.i.i.i63, 0
  br i1 %i.cu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit67, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 256
  %.val1.i.i.i64 = load ptr, ptr %i.cv, align 8, !alias.scope !19567, !nonnull !9, !noundef !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i64, i64 noundef %.val.i.i.i63, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !19571
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit67

bb.bg:                                            ; preds = %.thread, %bb.bh, %bb.l
  %.sroa.020.7 = phi i8 [ %.sroa.020.090, %.thread ], [ %.sroa.020.0, %bb.l ], [ 1, %bb.bh ] ; 2 uses
  %.sroa.023.6 = phi i1 [ %.sroa.023.091, %.thread ], [ %.sroa.023.0, %bb.l ], [ true, %bb.bh ]
  %.pn39.pn = phi { ptr, i32 } [ %.pn3992, %.thread ], [ %.pn39, %bb.l ], [ %i.cx, %bb.bh ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 248
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cw) #38
          to label %bb.ax unwind label %bb.p

bb.bh:                                            ; preds = %bb.u
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit67: ; preds = %bb.bf, %bb.be, %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !19574)
  call void @llvm.experimental.noalias.scope.decl(metadata !19577)
  %i.cy = load ptr, ptr %i.m, align 8, !alias.scope !19580, !nonnull !9, !noundef !9
  %i.cz = atomicrmw sub ptr %i.cy, i64 1 release, align 8, !noalias !19580
  %i.da = icmp eq i64 %i.cz, 1
  br i1 %i.da, label %bb.bi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.bi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit67
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bj

.body56:                                          ; preds = %.body56.thread, %bb.bp, %bb.bj, %bb.ax
  %.sroa.020.8 = phi i8 [ %.sroa.020.6, %bb.bj ], [ %.sroa.020.7, %bb.ax ], [ %.sroa.020.493, %bb.bp ], [ %.sroa.020.493, %.body56.thread ]
  %.pn44 = phi { ptr, i32 } [ %i.dc, %bb.bj ], [ %.pn39.pn, %bb.ax ], [ %.pn4294, %bb.bp ], [ %.pn4294, %.body56.thread ] ; 2 uses
  %i.db = trunc nuw i8 %.sroa.020.8 to i1
  br i1 %i.db, label %bb.bq, label %common.resume

bb.bj:                                            ; preds = %bb.bi
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body56

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit67, %bb.bi
  %i.dd = trunc nuw i8 %.sroa.020.6 to i1
  br i1 %i.dd, label %bb.bk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit

end_hunk_15
begin_hunk_16_@_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE7try_newB1d_:bb.a
  store i64 12, ptr %.sroa.475.0..sroa_idx.i, align 8, !alias.scope !19709, !noalias !19695
  %.sroa.576.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i8 %.val.i, ptr %.sroa.576.0..sroa_idx.i, align 8, !alias.scope !19709, !noalias !19695
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 248
  %i.ap = load i64, ptr %i.ao, align 8, !range !123, !alias.scope !19693, !noalias !19690, !noundef !9 ; 2 uses
  %.not35.i = icmp eq i64 %i.ap, -9223372036854775808
  br i1 %.not35.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.y, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !19695
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow6schemaNtB4_20ArrowSchemaConverter7convert(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aq)
          to label %bb.z unwind label %bb.s, !noalias !19695

bb.y:                                             ; preds = %bb.w
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !19693, !noalias !19690, !nonnull !9, !noundef !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !19693, !noalias !19690, !noundef !9
  store ptr %i.as, ptr %i.h, align 8, !noalias !19695
  store i64 %i.au, ptr %.sroa.475.0..sroa_idx.i, align 8, !noalias !19695
  br label %bb.x

bb.z:                                             ; preds = %bb.x
  %i.av = load i64, ptr %i.g, align 8, !range !123, !noalias !19695, !noundef !9 ; 2 uses
  %i.aw = icmp eq i64 %i.av, -9223372036854775808
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false), !noalias !19695
  br i1 %i.aw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !19695
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false), !noalias !19693
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !19690, !noalias !19693
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !19695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !19695
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(248) %i.k)
          to label %bb.bg unwind label %bb.bn, !noalias !19695

bb.ab:                                            ; preds = %bb.z
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.626.0..sroa_idx.i, i64 16, i1 false), !noalias !19695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !19695
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false), !noalias !19695
  store i64 %i.av, ptr %i.j, align 8, !noalias !19695
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !19695
  br label %bb.u

bb.ac:                                            ; preds = %bb.u
  %i.az = load ptr, ptr %i.l, align 8, !noalias !19695, !nonnull !9, !noundef !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  invoke void @_RNvNtNtCs4tdlwR1I4n2_7parquet5arrow6schema36add_encoded_arrow_schema_to_metadata(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ba, ptr noalias noundef nonnull align 8 dereferenceable(248) %i.k)
          to label %bb.ae unwind label %bb.ad, !noalias !19695

.body.i:                                          ; preds = %bb.be, %bb.ak, %bb.ag, %bb.ad
  %.sroa.019.2.i = phi i8 [ 0, %bb.ag ], [ %.sroa.019.3.i, %bb.ad ], [ 0, %bb.be ], [ 0, %bb.ak ]
  %.sroa.020.2.i = phi i8 [ 1, %bb.ag ], [ %.sroa.019.3.i, %bb.ad ], [ 0, %bb.be ], [ 0, %bb.ak ]
  %.sroa.023.2.i = phi i1 [ true, %bb.ag ], [ %.sroa.023.3.i, %bb.ad ], [ true, %bb.be ], [ true, %bb.ak ]
  %.pn37.i = phi { ptr, i32 } [ %i.bh, %bb.ag ], [ %i.bb, %bb.ad ], [ %i.bn, %bb.be ], [ %i.bn, %bb.ak ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16SchemaDescriptorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.j) #38
          to label %bb.r unwind label %bb.v, !noalias !19695

bb.ad:                                            ; preds = %bb.aw, %bb.ap, %bb.ac
  %.sroa.019.3.i = phi i8 [ 0, %bb.ap ], [ 0, %bb.aw ], [ 1, %bb.ac ] ; 2 uses
  %.sroa.023.3.i = phi i1 [ true, %bb.ap ], [ false, %bb.aw ], [ true, %bb.ac ]
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ae:                                            ; preds = %bb.ac, %bb.u
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 232
  %.val46.i = load i64, ptr %i.bc, align 8, !noalias !19695, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !19695
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.bd, ptr noundef nonnull align 8 dereferenceable(248) %i.k, i64 248, i1 false), !noalias !19695
  store i64 1, ptr %i.d, align 8, !noalias !19695
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.be, align 8, !noalias !19695
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !19713
  %i.bf = call noundef align 8 dereferenceable_or_null(264) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 264, i64 noundef 8) #41, !noalias !19713 ; 3 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.af, label %bb.ai, !prof !10

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 264) #37
          to label %.noexc.i unwind label %bb.ag, !noalias !19695

.noexc.i:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(248) %i.bd)
          to label %.body.i unwind label %bb.ah, !noalias !19695

bb.ah:                                            ; preds = %bb.ag
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !19695
  unreachable

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.bf, ptr noundef nonnull align 8 dereferenceable(264) %i.d, i64 264, i1 false), !noalias !19695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19695
  store ptr %i.bf, ptr %i.f, align 8, !noalias !19695
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5107.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6108.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19695
  %i.bj = load ptr, ptr %i.m, align 8, !noalias !19695, !nonnull !9, !noundef !9
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.val47.i = load ptr, ptr %i.bk, align 8, !noalias !19695, !nonnull !9, !noundef !9 ; 2 uses
  %i.bl = atomicrmw add ptr %.val47.i, i64 1 monotonic, align 8, !noalias !19695
  %i.bm = icmp slt i64 %i.bl, 0
  br i1 %i.bm, label %bb.aj, label %_RNvMsf_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_16SchemaDescriptor15root_schema_ptr.exit.i

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.trap()
  unreachable

bb.ak:                                            ; preds = %bb.al
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19716)
  call void @llvm.experimental.noalias.scope.decl(metadata !19719)
  %i.bo = load ptr, ptr %i.f, align 8, !alias.scope !19722, !noalias !19695, !nonnull !9, !noundef !9
  %i.bp = atomicrmw sub ptr %i.bo, i64 1 release, align 8, !noalias !19723
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.be, label %.body.i

_RNvMsf_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_16SchemaDescriptor15root_schema_ptr.exit.i: ; preds = %bb.ai
  %i.br = load ptr, ptr %i.f, align 8, !noalias !19695, !nonnull !9, !noundef !9
  %i.bs = atomicrmw add ptr %i.br, i64 1 monotonic, align 8, !noalias !19695
  %i.bt = icmp slt i64 %i.bs, 0
  br i1 %i.bt, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_RNvMsf_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_16SchemaDescriptor15root_schema_ptr.exit.i
  %i.bu = load ptr, ptr %i.f, align 8, !noalias !19695, !nonnull !9, !noundef !9
  invoke void @_RNvMs1_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB5_20SerializedFileWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE3newB1f_(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.e, ptr noundef nonnull %i.bj, ptr noundef nonnull %.val47.i, ptr noundef nonnull %i.bu)
          to label %bb.an unwind label %bb.ak, !noalias !19695

bb.am:                                            ; preds = %_RNvMsf_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_16SchemaDescriptor15root_schema_ptr.exit.i
  call void @llvm.trap()
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.bv = load i64, ptr %i.e, align 8, !range !123, !noalias !19695, !noundef !9 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, -9223372036854775808
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.67.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 32, i1 false), !noalias !19695
  br i1 %i.bw, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19695
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.67.i, i64 32, i1 false), !noalias !19693
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !19690, !noalias !19693
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5107.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6108.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !19724)
  call void @llvm.experimental.noalias.scope.decl(metadata !19727)
  %i.bz = load ptr, ptr %i.f, align 8, !alias.scope !19730, !noalias !19695, !nonnull !9, !noundef !9
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !19731
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ad, !noalias !19695

bb.aq:                                            ; preds = %bb.an
  %.sroa.631.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.6108.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.631.0..sroa_idx.i, i64 128, i1 false), !noalias !19695
  %.sroa.631.sroa.5.0..sroa.631.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %.sroa.631.sroa.5.0.copyload.i = load ptr, ptr %.sroa.631.sroa.5.0..sroa.631.0..sroa_idx.sroa_idx.i, align 8, !noalias !19695 ; 4 uses
  %.sroa.631.sroa.6.0..sroa.631.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %.sroa.631.sroa.6.0.copyload.i = load ptr, ptr %.sroa.631.sroa.6.0..sroa.631.0..sroa_idx.sroa_idx.i, align 8, !noalias !19695 ; 4 uses
  %.sroa.631.sroa.7.0..sroa.631.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.631.sroa.7.0..sroa.631.0..sroa_idx.sroa_idx.i, i64 16, i1 false), !noalias !19695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5107.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.67.i, i64 32, i1 false), !noalias !19695
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67.i)
  %i.cc = load ptr, ptr %i.l, align 8, !noalias !19695, !nonnull !9, !noundef !9
  %i.cd = atomicrmw add ptr %i.cc, i64 1 monotonic, align 8, !noalias !19695
  %i.ce = icmp slt i64 %i.cd, 0
  br i1 %i.ce, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.631.sroa.5.0.copyload.i) ]
  %4 = load ptr, ptr %i.l, align 8, !noalias !19695, !nonnull !9, !noundef !9
  %i.cf = atomicrmw add ptr %.sroa.631.sroa.5.0.copyload.i, i64 1 monotonic, align 8, !noalias !19732
  %i.cg = icmp slt i64 %i.cf, 0
  br i1 %i.cg, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.631.sroa.6.0.copyload.i) ]
  %i.ch = atomicrmw add ptr %.sroa.631.sroa.6.0.copyload.i, i64 1 monotonic, align 8, !noalias !19732
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %bb.au, label %_RINvMsc_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerNtB6_26ArrowRowGroupWriterFactory3newNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEB1x_.exit.i

bb.at:                                            ; preds = %bb.ar
  call void @llvm.trap()
  unreachable

bb.au:                                            ; preds = %bb.as
  call void @llvm.trap()
  unreachable

bb.av:                                            ; preds = %bb.aq
  call void @llvm.trap()
  unreachable

_RINvMsc_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerNtB6_26ArrowRowGroupWriterFactory3newNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEB1x_.exit.i: ; preds = %bb.as
  %.sroa.014.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.014.sroa.0.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5107.i, i64 32, i1 false), !noalias !19693
  %.sroa.014.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.014.sroa.0.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.6108.i, i64 128, i1 false), !noalias !19693
  %.sroa.014.sroa.0.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.sroa.0.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i, i64 16, i1 false), !noalias !19693
  %i.cj = load ptr, ptr %i.l, align 8, !noalias !19695, !nonnull !9, !noundef !9
  store i64 %i.bv, ptr %0, align 8, !alias.scope !19690, !noalias !19693
  %.sroa.014.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %.sroa.631.sroa.5.0.copyload.i, ptr %.sroa.014.sroa.0.sroa.6.0..sroa_idx.i, align 8, !alias.scope !19690, !noalias !19693
  %.sroa.014.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %.sroa.631.sroa.6.0.copyload.i, ptr %.sroa.014.sroa.0.sroa.7.0..sroa_idx.i, align 8, !alias.scope !19690, !noalias !19693
  %.sroa.014.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 -9223372036854775808, ptr %.sroa.014.sroa.4.0..sroa_idx.i, align 8, !alias.scope !19690, !noalias !19693
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.cj, ptr %.sroa.515.0..sroa_idx.i, align 8, !alias.scope !19690, !noalias !19693
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %.sroa.631.sroa.5.0.copyload.i, ptr %.sroa.616.0..sroa_idx.i, align 8, !alias.scope !19690, !noalias !19693
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %4, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !19690, !noalias !19693
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %.sroa.631.sroa.6.0.copyload.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !19690, !noalias !19693
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 %.val46.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !19690, !noalias !19693
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5107.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6108.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !19735)
  call void @llvm.experimental.noalias.scope.decl(metadata !19738)
  %i.ck = load ptr, ptr %i.f, align 8, !alias.scope !19741, !noalias !19695, !nonnull !9, !noundef !9
  %i.cl = atomicrmw sub ptr %i.ck, i64 1 release, align 8, !noalias !19742
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit55.i

bb.aw:                                            ; preds = %_RINvMsc_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerNtB6_26ArrowRowGroupWriterFactory3newNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEB1x_.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit55.i unwind label %bb.ad, !noalias !19695

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit55.i: ; preds = %bb.aw, %_RINvMsc_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerNtB6_26ArrowRowGroupWriterFactory3newNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEB1x_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19695
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16SchemaDescriptorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.j)
          to label %bb.ax unwind label %bb.s, !noalias !19695

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit55.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !19695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !19695
  %i.cn = getelementptr inbounds nuw i8, ptr %i.p, i64 248 ; 4 uses
  %i.co = load i64, ptr %i.cn, align 8, !range !123, !alias.scope !19743, !noalias !19690, !noundef !9
  %i.cp = icmp eq i64 %i.co, -9223372036854775808
  br i1 %i.cp, label %bb.bv, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %bb.bb unwind label %bb.az, !noalias !19690

bb.az:                                            ; preds = %bb.ay
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.cn, align 8, !alias.scope !19746, !noalias !19690 ; 2 uses
  %i.cr = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.cr, label %.critedge, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cs = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  %.val3.i.i.i.i = load ptr, ptr %i.cs, align 8, !alias.scope !19753, !noalias !19690, !nonnull !9, !noundef !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !19754
  br label %.critedge

bb.bb:                                            ; preds = %bb.ay
  %.val.i.i.i.i = load i64, ptr %i.cn, align 8, !alias.scope !19746, !noalias !19690 ; 2 uses
  %i.ct = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ct, label %bb.bv, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cu = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  %.val1.i.i.i.i = load ptr, ptr %i.cu, align 8, !alias.scope !19753, !noalias !19690, !nonnull !9, !noundef !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !19757
  br label %bb.bv

bb.bd:                                            ; preds = %bb.bm
  br i1 %.sroa.023.6.i, label %.body56.thread.i, label %.body56.i

bb.be:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #42
          to label %.body.i unwind label %bb.v, !noalias !19695

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19695
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16SchemaDescriptorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.j)
          to label %bb.bf unwind label %bb.s, !noalias !19695

bb.bf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !19695
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 248
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !range !123, !alias.scope !19760, !noalias !19690
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.aa
  %i.cv = phi i64 [ %.pre, %bb.bf ], [ %i.ap, %bb.aa ]
  %.sroa.020.6.i = phi i8 [ 0, %bb.bf ], [ 1, %bb.aa ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !19695
  %i.cw = getelementptr inbounds nuw i8, ptr %i.p, i64 248 ; 3 uses
  %i.cx = icmp eq i64 %i.cv, -9223372036854775808
  br i1 %i.cx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit67.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cw)
          to label %bb.bk unwind label %bb.bi, !noalias !19690

bb.bi:                                            ; preds = %bb.bh
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i60.i = load i64, ptr %i.cw, align 8, !alias.scope !19763, !noalias !19690 ; 2 uses
  %i.cz = icmp eq i64 %.val2.i.i.i60.i, 0
  br i1 %i.cz, label %.body56.thread.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.da = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  %.val3.i.i.i61.i = load ptr, ptr %i.da, align 8, !alias.scope !19770, !noalias !19690, !nonnull !9, !noundef !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i61.i, i64 noundef %.val2.i.i.i60.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !19771
  br label %.body56.thread.i

bb.bk:                                            ; preds = %bb.bh
  %.val.i.i.i63.i = load i64, ptr %i.cw, align 8, !alias.scope !19763, !noalias !19690 ; 2 uses
  %i.db = icmp eq i64 %.val.i.i.i63.i, 0
  br i1 %i.db, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit67.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.dc = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  %.val1.i.i.i64.i = load ptr, ptr %i.dc, align 8, !alias.scope !19770, !noalias !19690, !nonnull !9, !noundef !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i64.i, i64 noundef %.val.i.i.i63.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !19774
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit67.i

bb.bm:                                            ; preds = %.thread.i, %bb.bn, %bb.r
  %.sroa.020.7.i = phi i8 [ %.sroa.020.094.i, %.thread.i ], [ %.sroa.020.0.i, %bb.r ], [ 1, %bb.bn ] ; 2 uses
  %.sroa.023.6.i = phi i1 [ %.sroa.023.095.i, %.thread.i ], [ %.sroa.023.0.i, %bb.r ], [ true, %bb.bn ]
  %.pn39.pn.i = phi { ptr, i32 } [ %.pn3996.i, %.thread.i ], [ %.pn39.i, %bb.r ], [ %i.de, %bb.bn ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.p, i64 248
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dd) #38
          to label %bb.bd unwind label %bb.v, !noalias !19690

bb.bn:                                            ; preds = %bb.aa
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit67.i: ; preds = %bb.bl, %bb.bk, %bb.bg
  call void @llvm.experimental.noalias.scope.decl(metadata !19777)
  call void @llvm.experimental.noalias.scope.decl(metadata !19780)
  %i.df = load ptr, ptr %i.l, align 8, !alias.scope !19783, !noalias !19695, !nonnull !9, !noundef !9
  %i.dg = atomicrmw sub ptr %i.df, i64 1 release, align 8, !noalias !19784
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.bo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.bo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit67.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.bp, !noalias !19690

.body56.i:                                        ; preds = %bb.bs, %.body56.thread.i, %bb.bp, %bb.bd
  %.sroa.020.8.i = phi i8 [ %.sroa.020.6.i, %bb.bp ], [ %.sroa.020.7.i, %bb.bd ], [ %.sroa.020.497.i, %bb.bs ], [ %.sroa.020.497.i, %.body56.thread.i ]
  %.pn44.i = phi { ptr, i32 } [ %i.dj, %bb.bp ], [ %.pn39.pn.i, %bb.bd ], [ %.pn4298.i, %bb.bs ], [ %.pn4298.i, %.body56.thread.i ] ; 3 uses
  %i.di = trunc nuw i8 %.sroa.020.8.i to i1
  br i1 %i.di, label %bb.bt, label %.critedge

bb.bp:                                            ; preds = %bb.bo
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body56.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.bo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit67.i
  %i.dk = trunc nuw i8 %.sroa.020.6.i to i1
  br i1 %i.dk, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i
end_hunk_16
begin_hunk_17_@_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data17get_parquet_bytes:bb.a
bb.z:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !20489
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 243
  %.val.i.i = load i8, ptr %i.br, align 1, !range !71, !noalias !20489, !noundef !9
  store ptr @188, ptr %i.i, align 8, !alias.scope !20510, !noalias !20489
  %.sroa.469.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store i64 12, ptr %.sroa.469.0..sroa_idx.i.i, align 8, !alias.scope !20510, !noalias !20489
  %.sroa.570.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i8 %.val.i.i, ptr %.sroa.570.0..sroa_idx.i.i, align 8, !alias.scope !20510, !noalias !20489
  %i.bs = getelementptr inbounds nuw i8, ptr %i.p, i64 248
  %i.bt = load i64, ptr %i.bs, align 8, !range !123, !alias.scope !20486, !noalias !20492, !noundef !9 ; 2 uses
  %.not34.i.i = icmp eq i64 %i.bt, -9223372036854775808
  br i1 %.not34.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.ab, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !20489
  %i.bu = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  invoke void @_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow6schemaNtB4_20ArrowSchemaConverter7convert(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bu)
          to label %bb.ac unwind label %.thread89.i.i, !noalias !20507

bb.ab:                                            ; preds = %bb.z
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !20486, !noalias !20492, !nonnull !9, !noundef !9
  %i.bx = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !20486, !noalias !20492, !noundef !9
  store ptr %i.bw, ptr %i.i, align 8, !noalias !20489
  store i64 %i.by, ptr %.sroa.469.0..sroa_idx.i.i, align 8, !noalias !20489
  br label %bb.aa

bb.ac:                                            ; preds = %bb.aa
  %i.bz = load i64, ptr %i.h, align 8, !range !123, !noalias !20489, !noundef !9 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, -9223372036854775808
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i64 32, i1 false), !noalias !20489
  br i1 %i.ca, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.764, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, i64 32, i1 false), !noalias !20514
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !20489
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(248) %i.l)
          to label %bb.bj unwind label %bb.bq, !noalias !20507

bb.ae:                                            ; preds = %bb.ac
  %.sroa.625.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.625.0..sroa_idx.i.i, i64 16, i1 false), !noalias !20489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20489
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, i64 32, i1 false), !noalias !20489
  store i64 %i.bz, ptr %i.k, align 8, !noalias !20489
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20489
  br label %bb.x

bb.af:                                            ; preds = %bb.x
  %i.cc = load ptr, ptr %i.m, align 8, !noalias !20489, !nonnull !9, !noundef !9
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  invoke void @_RNvNtNtCs4tdlwR1I4n2_7parquet5arrow6schema36add_encoded_arrow_schema_to_metadata(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cd, ptr noalias noundef nonnull align 8 dereferenceable(248) %i.l)
          to label %bb.ah unwind label %bb.ag, !noalias !20507

.body.i.i:                                        ; preds = %bb.bh, %bb.an, %bb.aj, %bb.ag
  %.sroa.019.2.i.i = phi i1 [ false, %bb.aj ], [ %.sroa.019.3.i.i, %bb.ag ], [ false, %bb.bh ], [ false, %bb.an ]
  %.sroa.022.2.i.i = phi i1 [ true, %bb.aj ], [ %.sroa.022.3.i.i, %bb.ag ], [ true, %bb.bh ], [ true, %bb.an ] ; 2 uses
  %.pn36.i.i = phi { ptr, i32 } [ %i.ck, %bb.aj ], [ %i.ce, %bb.ag ], [ %i.cp, %bb.bh ], [ %i.cp, %bb.an ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16SchemaDescriptorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.k) #38
          to label %bb.u unwind label %bb.y, !noalias !20507

bb.ag:                                            ; preds = %bb.az, %bb.as, %bb.af
  %.sroa.019.3.i.i = phi i1 [ false, %bb.as ], [ false, %bb.az ], [ true, %bb.af ]
  %.sroa.022.3.i.i = phi i1 [ true, %bb.as ], [ false, %bb.az ], [ true, %bb.af ]
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.ah:                                            ; preds = %bb.af, %bb.x
  %i.cf = getelementptr inbounds nuw i8, ptr %i.l, i64 232
  %.val45.i.i = load i64, ptr %i.cf, align 8, !noalias !20489, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20489
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.cg, ptr noundef nonnull align 8 dereferenceable(248) %i.l, i64 248, i1 false), !noalias !20489
  store i64 1, ptr %i.e, align 8, !noalias !20489
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.ch, align 8, !noalias !20489
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !20515
  %i.ci = call noundef align 8 dereferenceable_or_null(264) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 264, i64 noundef 8) #41, !noalias !20515 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.ai, label %bb.al, !prof !10

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 264) #37
          to label %.noexc.i.i unwind label %bb.aj, !noalias !20507

.noexc.i.i:                                       ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(248) %i.cg)
          to label %.body.i.i unwind label %bb.ak, !noalias !20507

bb.ak:                                            ; preds = %bb.aj
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20507
  unreachable

bb.al:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.ci, ptr noundef nonnull align 8 dereferenceable(264) %i.e, i64 264, i1 false), !noalias !20507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20489
  store ptr %i.ci, ptr %i.g, align 8, !noalias !20489
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.597.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.698.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20489
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.val46.i.i = load ptr, ptr %i.cm, align 8, !noalias !20489, !nonnull !9, !noundef !9 ; 2 uses
  %i.cn = atomicrmw add ptr %.val46.i.i, i64 1 monotonic, align 8, !noalias !20507
  %i.co = icmp slt i64 %i.cn, 0
  br i1 %i.co, label %bb.am, label %_RNvMsf_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_16SchemaDescriptor15root_schema_ptr.exit.i.i

bb.am:                                            ; preds = %bb.al
  call void @llvm.trap()
  unreachable

bb.an:                                            ; preds = %bb.ao
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20518)
  call void @llvm.experimental.noalias.scope.decl(metadata !20521)
  %i.cq = load ptr, ptr %i.g, align 8, !alias.scope !20524, !noalias !20489, !nonnull !9, !noundef !9
  %i.cr = atomicrmw sub ptr %i.cq, i64 1 release, align 8, !noalias !20525
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.bh, label %.body.i.i

_RNvMsf_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_16SchemaDescriptor15root_schema_ptr.exit.i.i: ; preds = %bb.al
  %i.ct = load ptr, ptr %i.g, align 8, !noalias !20489, !nonnull !9, !noundef !9
  %i.cu = atomicrmw add ptr %i.ct, i64 1 monotonic, align 8, !noalias !20507
  %i.cv = icmp slt i64 %i.cu, 0
  br i1 %i.cv, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_RNvMsf_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_16SchemaDescriptor15root_schema_ptr.exit.i.i
  %i.cw = load ptr, ptr %i.g, align 8, !noalias !20489, !nonnull !9, !noundef !9
  invoke void @_RNvMs1_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB5_20SerializedFileWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull %.val46.i.i, ptr noundef nonnull %i.cw)
          to label %bb.aq unwind label %bb.an, !noalias !20507

bb.ap:                                            ; preds = %_RNvMsf_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_16SchemaDescriptor15root_schema_ptr.exit.i.i
  call void @llvm.trap()
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.cx = load i64, ptr %i.f, align 8, !range !123, !noalias !20489, !noundef !9 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, -9223372036854775808 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.67.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i64 32, i1 false), !noalias !20489
  br i1 %i.cy, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.764, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.67.i.i, i64 32, i1 false), !noalias !20514
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.597.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.698.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !20526)
  call void @llvm.experimental.noalias.scope.decl(metadata !20529)
  %i.da = load ptr, ptr %i.g, align 8, !alias.scope !20532, !noalias !20489, !nonnull !9, !noundef !9
  %i.db = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !20533
  %i.dc = icmp eq i64 %i.db, 1
  br i1 %i.dc, label %bb.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.as:                                            ; preds = %bb.ar
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.ag, !noalias !20507

bb.at:                                            ; preds = %bb.aq
  %.sroa.630.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.698.i.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.630.0..sroa_idx.i.i, i64 128, i1 false), !noalias !20489
  %.sroa.630.sroa.5.0..sroa.630.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %.sroa.630.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.630.sroa.5.0..sroa.630.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !20489 ; 4 uses
  %.sroa.630.sroa.6.0..sroa.630.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %.sroa.630.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.630.sroa.6.0..sroa.630.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !20489 ; 4 uses
  %.sroa.630.sroa.7.0..sroa.630.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.630.sroa.7.0..sroa.630.0..sroa_idx.sroa_idx.i.i, i64 16, i1 false), !noalias !20489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.597.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.67.i.i, i64 32, i1 false), !noalias !20489
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67.i.i)
  %i.dd = load ptr, ptr %i.m, align 8, !noalias !20489, !nonnull !9, !noundef !9
  %i.de = atomicrmw add ptr %i.dd, i64 1 monotonic, align 8, !noalias !20507
  %i.df = icmp slt i64 %i.de, 0
  br i1 %i.df, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.630.sroa.5.0.copyload.i.i) ]
  %2 = load ptr, ptr %i.m, align 8, !noalias !20489, !nonnull !9, !noundef !9
  %i.dg = atomicrmw add ptr %.sroa.630.sroa.5.0.copyload.i.i, i64 1 monotonic, align 8, !noalias !20534
  %i.dh = icmp slt i64 %i.dg, 0
  br i1 %i.dh, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.630.sroa.6.0.copyload.i.i) ]
  %i.di = atomicrmw add ptr %.sroa.630.sroa.6.0.copyload.i.i, i64 1 monotonic, align 8, !noalias !20534
  %i.dj = icmp slt i64 %i.di, 0
  br i1 %i.dj, label %bb.ax, label %_RINvMsc_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerNtB6_26ArrowRowGroupWriterFactory3newQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.aw:                                            ; preds = %bb.au
  call void @llvm.trap()
  unreachable

bb.ax:                                            ; preds = %bb.av
  call void @llvm.trap()
  unreachable

bb.ay:                                            ; preds = %bb.at
  call void @llvm.trap()
  unreachable

_RINvMsc_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerNtB6_26ArrowRowGroupWriterFactory3newQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.764, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.597.i.i, i64 32, i1 false), !noalias !20514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.698.i.i, i64 128, i1 false), !noalias !20514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i, i64 16, i1 false), !noalias !20514
  %i.dk = load ptr, ptr %i.m, align 8, !noalias !20489, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.597.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.698.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !20537)
  call void @llvm.experimental.noalias.scope.decl(metadata !20540)
  %i.dl = load ptr, ptr %i.g, align 8, !alias.scope !20543, !noalias !20489, !nonnull !9, !noundef !9
  %i.dm = atomicrmw sub ptr %i.dl, i64 1 release, align 8, !noalias !20544
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %bb.az, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit54.i.i

bb.az:                                            ; preds = %_RINvMsc_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerNtB6_26ArrowRowGroupWriterFactory3newQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit54.i.i unwind label %bb.ag, !noalias !20507

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit54.i.i: ; preds = %bb.az, %_RINvMsc_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerNtB6_26ArrowRowGroupWriterFactory3newQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20489
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16SchemaDescriptorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.k)
          to label %bb.ba unwind label %bb.v, !noalias !20507

bb.ba:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit54.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !20489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !20489
  %i.do = getelementptr inbounds nuw i8, ptr %i.p, i64 248 ; 4 uses
  %i.dp = load i64, ptr %i.do, align 8, !range !123, !alias.scope !20545, !noalias !20492, !noundef !9
  %i.dq = icmp eq i64 %i.dp, -9223372036854775808
  br i1 %i.dq, label %bb.cd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %bb.be unwind label %bb.bc, !noalias !20509

bb.bc:                                            ; preds = %bb.bb
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i = load i64, ptr %i.do, align 8, !alias.scope !20548, !noalias !20492 ; 2 uses
  %i.ds = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.ds, label %.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dt = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  %.val3.i.i.i.i.i = load ptr, ptr %i.dt, align 8, !alias.scope !20555, !noalias !20492, !nonnull !9, !noundef !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !20556
  br label %.thread

bb.be:                                            ; preds = %bb.bb
  %.val.i.i.i.i.i = load i64, ptr %i.do, align 8, !alias.scope !20548, !noalias !20492 ; 2 uses
  %i.du = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.du, label %bb.cd, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dv = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  %.val1.i.i.i.i.i = load ptr, ptr %i.dv, align 8, !alias.scope !20555, !noalias !20492, !nonnull !9, !noundef !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !20559
  br label %bb.cd

bb.bg:                                            ; preds = %bb.bp
  br i1 %.sroa.022.6.i.i, label %.body55.thread.i.i, label %.thread

bb.bh:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #42
          to label %.body.i.i unwind label %bb.y, !noalias !20507

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20489
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16SchemaDescriptorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.k)
          to label %bb.bi unwind label %bb.v, !noalias !20507

bb.bi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !20489
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 248
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !range !123, !alias.scope !20562, !noalias !20492
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.ad
  %i.dw = phi i64 [ %.pre.i, %bb.bi ], [ %i.bt, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !20489
  %i.dx = getelementptr inbounds nuw i8, ptr %i.p, i64 248 ; 3 uses
  %i.dy = icmp eq i64 %i.dw, -9223372036854775808
  br i1 %i.dy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit66.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %bb.bn unwind label %bb.bl, !noalias !20509

bb.bl:                                            ; preds = %bb.bk
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i59.i.i = load i64, ptr %i.dx, align 8, !alias.scope !20565, !noalias !20492 ; 2 uses
  %i.ea = icmp eq i64 %.val2.i.i.i59.i.i, 0
  br i1 %i.ea, label %.body55.thread.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.eb = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  %.val3.i.i.i60.i.i = load ptr, ptr %i.eb, align 8, !alias.scope !20572, !noalias !20492, !nonnull !9, !noundef !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i60.i.i, i64 noundef %.val2.i.i.i59.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !20573
  br label %.body55.thread.i.i

bb.bn:                                            ; preds = %bb.bk
  %.val.i.i.i62.i.i = load i64, ptr %i.dx, align 8, !alias.scope !20565, !noalias !20492 ; 2 uses
  %i.ec = icmp eq i64 %.val.i.i.i62.i.i, 0
  br i1 %i.ec, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit66.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ed = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  %.val1.i.i.i63.i.i = load ptr, ptr %i.ed, align 8, !alias.scope !20572, !noalias !20492, !nonnull !9, !noundef !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i63.i.i, i64 noundef %.val.i.i.i62.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !20576
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit66.i.i

bb.bp:                                            ; preds = %.thread.i.i, %bb.bq, %bb.v, %bb.u
  %.sroa.022.6.i.i = phi i1 [ %.sroa.022.087.i.i, %.thread.i.i ], [ %.sroa.022.2.i.i, %bb.u ], [ true, %bb.bq ], [ %i.cy, %bb.v ]
  %.pn38.pn.i.i = phi { ptr, i32 } [ %.pn3888.i.i, %.thread.i.i ], [ %.pn36.i.i, %bb.u ], [ %i.ef, %bb.bq ], [ %lpad.thr_comm.split-lp.i.i, %bb.v ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.p, i64 248
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ee) #38
          to label %bb.bg unwind label %bb.y, !noalias !20509

bb.bq:                                            ; preds = %bb.ad
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit66.i.i: ; preds = %bb.bo, %bb.bn, %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !20579)
  call void @llvm.experimental.noalias.scope.decl(metadata !20582)
  %i.eg = load ptr, ptr %i.m, align 8, !alias.scope !20585, !noalias !20489, !nonnull !9, !noundef !9
  %i.eh = atomicrmw sub ptr %i.eg, i64 1 release, align 8, !noalias !20586
  %i.ei = icmp eq i64 %i.eh, 1
  br i1 %i.ei, label %bb.br, label %bb.bz

bb.br:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit66.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #42
          to label %bb.bz unwind label %bb.b

.thread.i.i:                                      ; preds = %.thread89.i.i, %bb.u, %.body49.i.i
  %.pn3888.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.thread89.i.i ], [ %.pn36.i.i, %bb.u ], [ %.pn.i.i.i, %.body49.i.i ]
  %.sroa.022.087.i.i = phi i1 [ true, %.thread89.i.i ], [ %.sroa.022.2.i.i, %bb.u ], [ true, %.body49.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(248) %i.l) #38
          to label %bb.bp unwind label %bb.y, !noalias !20507

.body55.thread.i.i:                               ; preds = %bb.bm, %bb.bl, %bb.bg
  %.pn4194.i.i = phi { ptr, i32 } [ %.pn38.pn.i.i, %bb.bg ], [ %i.dz, %bb.bl ], [ %i.dz, %bb.bm ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20587)
  call void @llvm.experimental.noalias.scope.decl(metadata !20590)
  %i.ej = load ptr, ptr %i.m, align 8, !alias.scope !20593, !noalias !20489, !nonnull !9, !noundef !9
  %i.ek = atomicrmw sub ptr %i.ej, i64 1 release, align 8, !noalias !20594
  %i.el = icmp eq i64 %i.ek, 1
  br i1 %i.el, label %bb.bs, label %.thread

bb.bs:                                            ; preds = %.body55.thread.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #42
          to label %.thread unwind label %bb.y, !noalias !20509

bb.bt:                                            ; preds = %bb.g
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer18ArrowWriterOptionsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(336) %i.o) #38
          to label %.thread16.i unwind label %bb.bu, !noalias !20485

bb.bu:                                            ; preds = %bb.bx, %bb.bw, %bb.bt
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20595
  unreachable

bb.bv:                                            ; preds = %bb.d
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load i64, ptr %i.z, align 8, !range !2097, !alias.scope !20596, !noalias !20484, !noundef !9
  %i.eq = icmp eq i64 %i.ep, 2
  br i1 %i.eq, label %.thread16.i, label %bb.bw
end_hunk_17
begin_hunk_18_@_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB2_9ScalarExt10from_array:bb.a
    i8 24, label %bb.cs
    i8 25, label %bb.ct
    i8 26, label %bb.cu
  ]

bb.co:                                            ; preds = %bb.cn
  store i64 -9223372036854775792, ptr %0, align 16
  br label %bb.af

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.kj = tail call fastcc { ptr, ptr } @_RINvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeE13downcast_dictINtNtB7_10byte_array16GenericByteArrayINtB1n_17GenericBinaryTypelEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.kf) ; 2 uses
  %i.kk = extractvalue { ptr, ptr } %i.kj, 0      ; 3 uses
  %.not100 = icmp eq ptr %i.kk, null
  br i1 %.not100, label %bb.cw, label %bb.cv

bb.cq:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.kl = tail call fastcc { ptr, ptr } @_RINvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeE13downcast_dictINtNtB7_10byte_array16GenericByteArrayINtB1n_17GenericBinaryTypexEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.kf) ; 2 uses
  %i.km = extractvalue { ptr, ptr } %i.kl, 0      ; 3 uses
  %.not99 = icmp eq ptr %i.km, null
  br i1 %.not99, label %bb.cy, label %bb.cx

bb.cr:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.kn = tail call fastcc { ptr, ptr } @_RINvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeE13downcast_dictINtNtB7_15byte_view_array20GenericByteViewArrayNtB1n_14BinaryViewTypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.kf) ; 2 uses
  %i.ko = extractvalue { ptr, ptr } %i.kn, 0      ; 2 uses
  %.not98 = icmp eq ptr %i.ko, null
  br i1 %.not98, label %bb.da, label %bb.cz

bb.cs:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.kp = tail call { ptr, ptr } @_RINvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeE13downcast_dictINtNtB7_10byte_array16GenericByteArrayINtB1n_17GenericStringTypelEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.kf) ; 2 uses
  %i.kq = extractvalue { ptr, ptr } %i.kp, 0      ; 3 uses
  %.not97 = icmp eq ptr %i.kq, null
  br i1 %.not97, label %bb.dc, label %bb.db

bb.ct:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.kr = tail call fastcc { ptr, ptr } @_RINvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeE13downcast_dictINtNtB7_10byte_array16GenericByteArrayINtB1n_17GenericStringTypexEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.kf) ; 2 uses
  %i.ks = extractvalue { ptr, ptr } %i.kr, 0      ; 3 uses
  %.not96 = icmp eq ptr %i.ks, null
  br i1 %.not96, label %bb.de, label %bb.dd

bb.cu:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.kt = tail call fastcc { ptr, ptr } @_RINvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeE13downcast_dictINtNtB7_15byte_view_array20GenericByteViewArrayNtB1n_14StringViewTypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.kf) ; 2 uses
  %i.ku = extractvalue { ptr, ptr } %i.kt, 0      ; 2 uses
  %.not95 = icmp eq ptr %i.ku, null
  br i1 %.not95, label %bb.dg, label %bb.df

bb.cv:                                            ; preds = %bb.cp
  %i.kv = extractvalue { ptr, ptr } %i.kj, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kv) ]
  store ptr %i.kk, ptr %i.ab, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.kv, ptr %i.kw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.kx = tail call fastcc { ptr, i64 } @_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_10byte_array16GenericByteArrayINtB1s_17GenericBinaryTypelEEENtB7_13ArrayAccessor5valueCs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.kk, ptr nonnull %i.kv, i64 noundef %3) ; 2 uses
  %i.ky = extractvalue { ptr, i64 } %i.kx, 0
  %i.kz = extractvalue { ptr, i64 } %i.kx, 1
  %i.la = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call fastcc void @_RNCNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB4_9ScalarExt10from_arraysp_0B8_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.la, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ky, i64 noundef %i.kz) #43
  store i64 -9223372036854775797, ptr %i.aa, align 16
  %i.lb = load i64, ptr %i.ar, align 8, !noundef !9
  call void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalars7checked(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @270, i64 noundef %i.lb, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.af

bb.cw:                                            ; preds = %bb.cp
  store i64 -9223372036854775792, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.af

bb.cx:                                            ; preds = %bb.cq
  %i.lc = extractvalue { ptr, ptr } %i.kl, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lc) ]
  store ptr %i.km, ptr %i.x, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.lc, ptr %i.ld, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.le = tail call fastcc { ptr, i64 } @_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_10byte_array16GenericByteArrayINtB1s_17GenericBinaryTypexEEENtB7_13ArrayAccessor5valueCs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.km, ptr nonnull %i.lc, i64 noundef %3) ; 2 uses
  %i.lf = extractvalue { ptr, i64 } %i.le, 0
  %i.lg = extractvalue { ptr, i64 } %i.le, 1
  %i.lh = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call fastcc void @_RNCNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB4_9ScalarExt10from_arraysr_0B8_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.lh, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.lf, i64 noundef %i.lg) #43
  store i64 -9223372036854775797, ptr %i.w, align 16
  %i.li = load i64, ptr %i.ar, align 8, !noundef !9
  call void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalars7checked(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @271, i64 noundef %i.li, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.af

bb.cy:                                            ; preds = %bb.cq
  store i64 -9223372036854775792, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.af

bb.cz:                                            ; preds = %bb.cr
  %i.lj = extractvalue { ptr, ptr } %i.kn, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lj) ]
  store ptr %i.ko, ptr %i.z, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.lj, ptr %i.lk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ll = call fastcc { ptr, i64 } @_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_15byte_view_array20GenericByteViewArrayNtB1s_14BinaryViewTypeEENtB7_13ArrayAccessor5valueCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.z, i64 noundef %3) ; 2 uses
  %i.lm = extractvalue { ptr, i64 } %i.ll, 0
  %i.ln = extractvalue { ptr, i64 } %i.ll, 1
  %i.lo = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call fastcc void @_RNCNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB4_9ScalarExt10from_arraysq_0B8_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.lo, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.lm, i64 noundef %i.ln) #43
  store i64 -9223372036854775797, ptr %i.y, align 16
  %i.lp = load i64, ptr %i.ar, align 8, !noundef !9
  call void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalars7checked(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @272, i64 noundef %i.lp, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.af

bb.da:                                            ; preds = %bb.cr
  store i64 -9223372036854775792, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.af

bb.db:                                            ; preds = %bb.cs
  %i.lq = extractvalue { ptr, ptr } %i.kp, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lq) ]
  store ptr %i.kq, ptr %i.ah, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.lq, ptr %i.lr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.ls = tail call fastcc { ptr, i64 } @_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_10byte_array16GenericByteArrayINtB1s_17GenericStringTypelEEENtB7_13ArrayAccessor5valueCs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.kq, ptr nonnull %i.lq, i64 noundef %3) ; 2 uses
  %i.lt = extractvalue { ptr, i64 } %i.ls, 0
  %i.lu = extractvalue { ptr, i64 } %i.ls, 1
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call fastcc void @_RNCNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB4_9ScalarExt10from_arraysm_0B8_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.lv, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.lt, i64 noundef %i.lu) #43
  store i64 -9223372036854775802, ptr %i.ag, align 16
  %i.lw = load i64, ptr %i.ar, align 8, !noundef !9
  call void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalars7checked(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @273, i64 noundef %i.lw, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.af

bb.dc:                                            ; preds = %bb.cs
  store i64 -9223372036854775792, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.af

bb.dd:                                            ; preds = %bb.ct
  %i.lx = extractvalue { ptr, ptr } %i.kr, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lx) ]
  store ptr %i.ks, ptr %i.ad, align 8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.lx, ptr %i.ly, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.lz = tail call fastcc { ptr, i64 } @_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_10byte_array16GenericByteArrayINtB1s_17GenericStringTypexEEENtB7_13ArrayAccessor5valueCs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.ks, ptr nonnull %i.lx, i64 noundef %3) ; 2 uses
  %i.ma = extractvalue { ptr, i64 } %i.lz, 0
  %i.mb = extractvalue { ptr, i64 } %i.lz, 1
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call fastcc void @_RNCNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB4_9ScalarExt10from_arrayso_0B8_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.mc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ma, i64 noundef %i.mb) #43
  store i64 -9223372036854775802, ptr %i.ac, align 16
  %i.md = load i64, ptr %i.ar, align 8, !noundef !9
  call void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalars7checked(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @274, i64 noundef %i.md, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.af

bb.de:                                            ; preds = %bb.ct
  store i64 -9223372036854775792, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.af

bb.df:                                            ; preds = %bb.cu
  %i.me = extractvalue { ptr, ptr } %i.kt, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.me) ]
  store ptr %i.ku, ptr %i.af, align 8
  %i.mf = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.me, ptr %i.mf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.mg = call fastcc { ptr, i64 } @_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_15byte_view_array20GenericByteViewArrayNtB1s_14StringViewTypeEENtB7_13ArrayAccessor5valueCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af, i64 noundef %3) ; 2 uses
  %i.mh = extractvalue { ptr, i64 } %i.mg, 0
  %i.mi = extractvalue { ptr, i64 } %i.mg, 1
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call fastcc void @_RNCNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB4_9ScalarExt10from_arraysn_0B8_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.mj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.mh, i64 noundef %i.mi) #43
  store i64 -9223372036854775802, ptr %i.ae, align 16
  %i.mk = load i64, ptr %i.ar, align 8, !noundef !9
  call void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalars7checked(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @275, i64 noundef %i.mk, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.af

bb.dg:                                            ; preds = %bb.cu
  store i64 -9223372036854775792, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.af

bb.dh:                                            ; preds = %bb.ac
  store i64 -9223372036854775792, ptr %0, align 16
  br label %bb.af

bb.di:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.im) ]
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.ar, ptr %i.ap, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.mm, ptr %i.mn, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.ml, ptr %i.mo, align 8
  call fastcc void @_RNCNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB4_9ScalarExt10from_arraysg_0B8_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.im) #43
  br label %bb.af

.thread152:                                       ; preds = %bb.e
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.dl

bb.dj:                                            ; preds = %bb.e
  %i.mp = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.071.0.copyload = load i8, ptr %i.mp, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.7, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.4.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %.not109 = icmp eq i8 %.sroa.071.0.copyload, 5
  br i1 %.not109, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.7, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  store i64 -9223372036854775795, ptr %0, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.071.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.af

bb.dl:                                            ; preds = %.thread152, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  store i64 -9223372036854775792, ptr %0, align 16
  br label %bb.af
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB2_9ScalarExt17serialize_encoded(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = load i64, ptr %1, align 16, !range !8486, !noundef !9
  %i.c = icmp eq i64 %i.b, -9223372036854775795
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !21092
  %i.d = tail call noundef dereferenceable_or_null(26) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 26, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21092 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB2_9ScalarExt9serialize(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !9, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !9
  invoke void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalars22encode_partition_value(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i)
          to label %bb.h unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef 1, i64 26) #37
  unreachable

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.d, ptr noundef nonnull align 1 dereferenceable(26) @276, i64 26, i1 false)
  store i64 26, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 26, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, %bb.e
  ret void

bb.g:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #38
          to label %common.resume unwind label %bb.m

bb.h:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.a, align 8, !alias.scope !21095 ; 2 uses
  %i.l = icmp eq i64 %.val2.i.i, 0
  br i1 %i.l, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val3.i.i = load ptr, ptr %i.f, align 8, !alias.scope !21102, !nonnull !9, !noundef !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21103
  br label %common.resume

bb.k:                                             ; preds = %bb.h
  %.val.i.i = load i64, ptr %i.a, align 8, !alias.scope !21095 ; 2 uses
  %i.m = icmp eq i64 %.val.i.i, 0
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val1.i.i = load ptr, ptr %i.f, align 8, !alias.scope !21102, !nonnull !9, !noundef !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21106
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

common.resume:                                    ; preds = %bb.g, %bb.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.i ], [ %i.k, %bb.j ], [ %i.j, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.m:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB2_9ScalarExt7to_json(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [12 x i8], align 4                ; 4 uses
  %i.g = alloca [12 x i8], align 4                ; 5 uses
  %i.h = alloca [12 x i8], align 4                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [12 x i8], align 4                ; 4 uses
  %i.l = alloca [12 x i8], align 4                ; 5 uses
  %i.m = alloca [12 x i8], align 4                ; 5 uses
  %i.n = alloca [40 x i8], align 8                ; 8 uses
  %i.o = alloca [40 x i8], align 8                ; 8 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 9 uses
  %i.v = alloca [32 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 5 uses
  %i.y = alloca [48 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [16 x i8], align 16              ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [24 x i8], align 8               ; 14 uses
  %i.ah = alloca [88 x i8], align 8               ; 11 uses
  %i.ai = alloca [12 x i8], align 4               ; 7 uses
  %i.aj = alloca [88 x i8], align 8               ; 11 uses
  %i.ak = alloca [28 x i8], align 4               ; 6 uses
  %i.al = alloca [12 x i8], align 4               ; 5 uses
  %i.am = load i64, ptr %1, align 16, !range !8486, !noundef !9 ; 2 uses
  %i.an = xor i64 %i.am, -9223372036854775808
  %i.ao = icmp slt i64 %i.am, 0
  %i.ap = select i1 %i.ao, i64 %i.an, i64 16
  %.sink194.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sink194.sroa.gep195 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  switch i64 %i.ap, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.x
    i64 9, label %bb.x
    i64 10, label %bb.k
    i64 11, label %bb.m
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.p
    i64 15, label %bb.q
    i64 16, label %bb.r
  ]

bb.b:                                             ; preds = %bb.n, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !noundef !9 ; 4 uses
  %i.as = icmp slt i32 %i.ar, 0
  %i.at = sext i32 %i.ar to i64
  %i.au = zext nneg i32 %i.ar to i64
  %.lobit164 = lshr i32 %i.ar, 31
  %.sroa.036.0 = zext nneg i32 %.lobit164 to i64
  %.sroa.537.0 = select i1 %i.as, i64 %i.at, i64 %i.au
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.036.0, ptr %i.av, align 8
end_hunk_18
begin_hunk_19_@_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB2_9ScalarExt7to_json:bb.a
  %i.ir = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !21196
  unreachable

._crit_edge:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit128, %bb.r
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.is, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  store i8 5, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.s

.body123:                                         ; preds = %bb.co, %bb.cm, %bb.ci, %bb.cs
  %.pn = phi { ptr, i32 } [ %i.iv, %bb.co ], [ %i.iz, %bb.cs ], [ %i.it, %bb.cm ], [ %lpad.phi169, %bb.ci ]
  invoke void @_RNvXNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume unwind label %bb.aj

bb.cm:                                            ; preds = %bb.cr
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %.body123

bb.cn:                                            ; preds = %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !21197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21192
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.06.0171, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB2_9ScalarExt7to_json(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.iu)
          to label %bb.cp unwind label %bb.cs

bb.co:                                            ; preds = %bb.cp
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %.body123

bb.cp:                                            ; preds = %bb.cn
  invoke void @_RNvMsi_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.p)
          to label %bb.cq unwind label %bb.co

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.iw = load i8, ptr %i.r, align 8, !range !8, !alias.scope !21198, !noundef !9
  %i.ix = icmp eq i8 %i.iw, 6
  br i1 %i.ix, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit128, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit128 unwind label %bb.cm

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit128: ; preds = %bb.cq, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.iy = icmp eq ptr %i.ip, %i.dj
  br i1 %i.iy, label %._crit_edge, label %bb.ch

bb.cs:                                            ; preds = %bb.cn
  %i.iz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q) #38
          to label %.body123 unwind label %bb.aj
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB2_9ScalarExt9serialize(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %i.e = alloca [12 x i8], align 4                ; 5 uses
  %i.f = alloca [12 x i8], align 4                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [12 x i8], align 4                ; 4 uses
  %i.j = alloca [12 x i8], align 4                ; 5 uses
  %i.k = alloca [12 x i8], align 4                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 14 uses
  %i.w = alloca [3 x i8], align 1                 ; 3 uses
  %i.x = alloca [24 x i8], align 8                ; 14 uses
  %i.y = alloca [5 x i8], align 1                 ; 3 uses
  %i.z = alloca [24 x i8], align 8                ; 14 uses
  %i.aa = alloca [19 x i8], align 1               ; 3 uses
  %i.ab = alloca [24 x i8], align 8               ; 14 uses
  %i.ac = alloca [10 x i8], align 1               ; 3 uses
  %i.ad = alloca [40 x i8], align 8               ; 8 uses
  %i.ae = alloca [40 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 16              ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 14 uses
  %i.am = alloca [88 x i8], align 8               ; 11 uses
  %i.an = alloca [12 x i8], align 4               ; 7 uses
  %i.ao = alloca [88 x i8], align 8               ; 11 uses
  %i.ap = alloca [28 x i8], align 4               ; 6 uses
  %i.aq = alloca [12 x i8], align 4               ; 5 uses
  %i.ar = load i64, ptr %1, align 16, !range !8486, !noundef !9 ; 2 uses
  %i.as = xor i64 %i.ar, -9223372036854775808
  %i.at = icmp slt i64 %i.ar, 0
  %i.au = select i1 %i.at, i64 %i.as, i64 16
  %.sink184.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sink184.sroa.gep185 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  switch i64 %i.au, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.n
    i64 2, label %bb.y
    i64 3, label %bb.aj
    i64 4, label %bb.au
    i64 5, label %bb.az
    i64 6, label %bb.be
    i64 7, label %bb.bf
    i64 8, label %bb.cd
    i64 9, label %bb.cd
    i64 10, label %bb.bg
    i64 11, label %bb.bi
    i64 12, label %bb.bj
    i64 13, label %bb.bk
    i64 14, label %bb.bl
    i64 15, label %bb.bq
    i64 16, label %bb.bv
  ]

bb.b:                                             ; preds = %bb.bj, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val33 = load i32, ptr %i.av, align 8, !noundef !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !21201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !21201
  %i.aw = icmp slt i32 %.val33, 0
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !21201
  br i1 %i.aw, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = tail call noundef dereferenceable_or_null(10) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 10, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21204 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %bb.d
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef 1, i64 10) #37, !noalias !21201
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.az = tail call noundef dereferenceable_or_null(11) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 11, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21207 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.noexc15.i, label %bb.h

.noexc15.i:                                       ; preds = %bb.e
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef 1, i64 11) #37, !noalias !21201
  unreachable

bb.f:                                             ; preds = %bb.d
  store i64 10, ptr %i.ab, align 8, !noalias !21201
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ax, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !21201
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !21201
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.sroa.012.0.i = phi i32 [ %i.bg, %bb.i ], [ %.val33, %bb.f ]
  %i.bb = invoke { ptr, i64 } @_RNvMsa_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impm4__fmt(i32 noundef %.sroa.012.0.i, ptr noalias noundef nonnull %i.ac, i64 noundef 10)
          to label %bb.j unwind label %bb.l, !noalias !21201 ; 2 uses

bb.h:                                             ; preds = %bb.e
  store i64 11, ptr %i.ab, align 8, !noalias !21201
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.az, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !21201
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !21201
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef 1)
          to label %bb.i unwind label %bb.l, !noalias !21201

bb.i:                                             ; preds = %bb.h
  %i.bc = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !21210, !noalias !21201, !nonnull !9, !noundef !9
  %i.bd = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !21210, !noalias !21201, !noundef !9 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, -1
  call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  store i8 45, ptr %i.bf, align 1, !noalias !21201
  store i64 1, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !21210, !noalias !21201
  %i.bg = sub i32 0, %.val33
  br label %bb.g

bb.j:                                             ; preds = %bb.g
  %i.bh = extractvalue { ptr, i64 } %i.bb, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  %2 = extractvalue { ptr, i64 } %i.bb, 1         ; 4 uses
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %2)
          to label %.noexc18.i unwind label %bb.l, !noalias !21201

.noexc18.i:                                       ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !21213, !noalias !21201, !noundef !9 ; 3 uses
  %i.bk = icmp sgt i64 %i.bj, -1
  call void @llvm.assume(i1 %i.bk)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvXs1F_NtCs6Po7BT7Nknu_5alloc6stringlNtB6_12SpecToString14spec_to_string.exit, label %bb.k

bb.k:                                             ; preds = %.noexc18.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !21213, !noalias !21201, !nonnull !9, !noundef !9
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr nonnull readonly align 1 %i.bh, i64 %2, i1 false), !noalias !21201
  %.pre.i.i = load i64, ptr %i.bi, align 8, !alias.scope !21213, !noalias !21201
  br label %_RNvXs1F_NtCs6Po7BT7Nknu_5alloc6stringlNtB6_12SpecToString14spec_to_string.exit

common.resume.sink.split:                         ; preds = %bb.cx, %bb.cm
  %.sink184.sroa.phi = phi ptr [ %.sink184.sroa.gep, %bb.cm ], [ %.sink184.sroa.gep185, %bb.cx ]
  %.val2.i.i.i.i.i109.sink = phi i64 [ %.val2.i.i.i.i.i, %bb.cm ], [ %.val2.i.i.i.i.i109, %bb.cx ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.gv, %bb.cm ], [ %i.hq, %bb.cx ]
  %.val3.i.i.i.i.i110 = load ptr, ptr %.sink184.sroa.phi, align 8, !nonnull !9, !noundef !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i110, i64 noundef %.val2.i.i.i.i.i109.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !9
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.cx, %.body, %.body106, %bb.dh, %bb.dk, %bb.cm, %bb.bw, %bb.br, %bb.bm, %bb.ba, %bb.av, %bb.as, %bb.ah, %bb.w, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb.dk ], [ %lpad.thr_comm.i, %bb.l ], [ %lpad.thr_comm.i40, %bb.w ], [ %lpad.thr_comm.i51, %bb.ah ], [ %lpad.thr_comm.i62, %bb.as ], [ %i.ej, %bb.av ], [ %i.ep, %bb.ba ], [ %i.fp, %bb.bm ], [ %i.fu, %bb.br ], [ %i.fz, %bb.bw ], [ %i.gv, %bb.cm ], [ %i.hq, %bb.cx ], [ %i.gr, %.body ], [ %i.hm, %.body106 ], [ %i.ip, %bb.dh ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.j, %bb.h, %bb.g
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab) #38
          to label %common.resume unwind label %bb.m, !noalias !21201

bb.m:                                             ; preds = %bb.l
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !21201
  unreachable

_RNvXs1F_NtCs6Po7BT7Nknu_5alloc6stringlNtB6_12SpecToString14spec_to_string.exit: ; preds = %.noexc18.i, %bb.k
  %i.bp = phi i64 [ %.pre.i.i, %bb.k ], [ %i.bj, %.noexc18.i ]
  %i.bq = add i64 %i.bp, %2
  store i64 %i.bq, ptr %i.bi, align 8, !alias.scope !21213, !noalias !21201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !21201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !21201
  br label %bb.ca

bb.n:                                             ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val34 = load i64, ptr %i.br, align 8, !noundef !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !21216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !21216
  %i.bs = icmp slt i64 %.val34, 0
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !21216
  br i1 %i.bs, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = tail call noundef dereferenceable_or_null(19) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 19, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21219 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.noexc.i44, label %bb.q

.noexc.i44:                                       ; preds = %bb.o
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef 1, i64 19) #37, !noalias !21216
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bv = tail call noundef dereferenceable_or_null(20) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 20, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21222 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %.noexc15.i47, label %bb.s

.noexc15.i47:                                     ; preds = %bb.p
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef 1, i64 20) #37, !noalias !21216
  unreachable

bb.q:                                             ; preds = %bb.o
  store i64 19, ptr %i.z, align 8, !noalias !21216
  %.sroa.410.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.bt, ptr %.sroa.410.0..sroa_idx.i37, align 8, !noalias !21216
  %.sroa.511.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx.i38, align 8, !noalias !21216
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %.sroa.012.0.i39 = phi i64 [ %i.cc, %bb.t ], [ %.val34, %bb.q ]
  %i.bx = invoke { ptr, i64 } @_RNvMsf_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impy4__fmt(i64 noundef %.sroa.012.0.i39, ptr noalias noundef nonnull %i.aa, i64 noundef 19)
          to label %bb.u unwind label %bb.w, !noalias !21216 ; 2 uses

bb.s:                                             ; preds = %bb.p
  store i64 20, ptr %i.z, align 8, !noalias !21216
  %.sroa.44.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %i.bv, ptr %.sroa.44.0..sroa_idx.i45, align 8, !noalias !21216
  %.sroa.55.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx.i46, align 8, !noalias !21216
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef 1)
          to label %bb.t unwind label %bb.w, !noalias !21216

bb.t:                                             ; preds = %bb.s
  %i.by = load ptr, ptr %.sroa.44.0..sroa_idx.i45, align 8, !alias.scope !21225, !noalias !21216, !nonnull !9, !noundef !9
  %i.bz = load i64, ptr %.sroa.55.0..sroa_idx.i46, align 8, !alias.scope !21225, !noalias !21216, !noundef !9 ; 2 uses
  %i.ca = icmp sgt i64 %i.bz, -1
  call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bz
  store i8 45, ptr %i.cb, align 1, !noalias !21216
  store i64 1, ptr %.sroa.55.0..sroa_idx.i46, align 8, !alias.scope !21225, !noalias !21216
  %i.cc = sub i64 0, %.val34
  br label %bb.r

bb.u:                                             ; preds = %bb.r
  %i.cd = extractvalue { ptr, i64 } %i.bx, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cd) ]
  %3 = extractvalue { ptr, i64 } %i.bx, 1         ; 4 uses
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %3)
          to label %.noexc18.i41 unwind label %bb.w, !noalias !21216

.noexc18.i41:                                     ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !21228, !noalias !21216, !noundef !9 ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, -1
  call void @llvm.assume(i1 %i.cg)
  %.not.i.i42 = icmp eq i64 %3, 0
  br i1 %.not.i.i42, label %_RNvXs1H_NtCs6Po7BT7Nknu_5alloc6stringxNtB6_12SpecToString14spec_to_string.exit, label %bb.v

bb.v:                                             ; preds = %.noexc18.i41
  %i.ch = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !21228, !noalias !21216, !nonnull !9, !noundef !9
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cj, ptr nonnull readonly align 1 %i.cd, i64 %3, i1 false), !noalias !21216
  %.pre.i.i43 = load i64, ptr %i.ce, align 8, !alias.scope !21228, !noalias !21216
  br label %_RNvXs1H_NtCs6Po7BT7Nknu_5alloc6stringxNtB6_12SpecToString14spec_to_string.exit

bb.w:                                             ; preds = %bb.u, %bb.s, %bb.r
  %lpad.thr_comm.i40 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z) #38
          to label %common.resume unwind label %bb.x, !noalias !21216

bb.x:                                             ; preds = %bb.w
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !21216
  unreachable

_RNvXs1H_NtCs6Po7BT7Nknu_5alloc6stringxNtB6_12SpecToString14spec_to_string.exit: ; preds = %.noexc18.i41, %bb.v
  %i.cl = phi i64 [ %.pre.i.i43, %bb.v ], [ %i.cf, %.noexc18.i41 ]
  %i.cm = add i64 %i.cl, %3
  store i64 %i.cm, ptr %i.ce, align 8, !alias.scope !21228, !noalias !21216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !21216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !21216
  br label %bb.ca

bb.y:                                             ; preds = %bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val35 = load i16, ptr %i.cn, align 8, !noundef !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !21231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !21231
  %i.co = icmp slt i16 %.val35, 0
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !21231
  br i1 %i.co, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cp = tail call noundef dereferenceable_or_null(5) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 5, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21234 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.noexc.i55, label %bb.ab

.noexc.i55:                                       ; preds = %bb.z
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef 1, i64 5) #37, !noalias !21231
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cr = tail call noundef dereferenceable_or_null(6) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 6, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21237 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %.noexc15.i58, label %bb.ad

.noexc15.i58:                                     ; preds = %bb.aa
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef 1, i64 6) #37, !noalias !21231
  unreachable

bb.ab:                                            ; preds = %bb.z
  store i64 5, ptr %i.x, align 8, !noalias !21231
  %.sroa.410.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.cp, ptr %.sroa.410.0..sroa_idx.i48, align 8, !noalias !21231
  %.sroa.511.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx.i49, align 8, !noalias !21231
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %bb.ab
  %.sroa.012.0.i50 = phi i16 [ %i.cy, %bb.ae ], [ %.val35, %bb.ab ]
  %i.ct = invoke { ptr, i64 } @_RNvMs5_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impt4__fmt(i16 noundef %.sroa.012.0.i50, ptr noalias noundef nonnull %i.y, i64 noundef 5)
          to label %bb.af unwind label %bb.ah, !noalias !21231 ; 2 uses

bb.ad:                                            ; preds = %bb.aa
  store i64 6, ptr %i.x, align 8, !noalias !21231
  %.sroa.44.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.cr, ptr %.sroa.44.0..sroa_idx.i56, align 8, !noalias !21231
  %.sroa.55.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx.i57, align 8, !noalias !21231
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef 1)
          to label %bb.ae unwind label %bb.ah, !noalias !21231

bb.ae:                                            ; preds = %bb.ad
  %i.cu = load ptr, ptr %.sroa.44.0..sroa_idx.i56, align 8, !alias.scope !21240, !noalias !21231, !nonnull !9, !noundef !9
  %i.cv = load i64, ptr %.sroa.55.0..sroa_idx.i57, align 8, !alias.scope !21240, !noalias !21231, !noundef !9 ; 2 uses
  %i.cw = icmp sgt i64 %i.cv, -1
  call void @llvm.assume(i1 %i.cw)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cv
  store i8 45, ptr %i.cx, align 1, !noalias !21231
  store i64 1, ptr %.sroa.55.0..sroa_idx.i57, align 8, !alias.scope !21240, !noalias !21231
  %i.cy = sub i16 0, %.val35
  br label %bb.ac

bb.af:                                            ; preds = %bb.ac
  %i.cz = extractvalue { ptr, i64 } %i.ct, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cz) ]
  %4 = extractvalue { ptr, i64 } %i.ct, 1         ; 4 uses
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %4)
          to label %.noexc18.i52 unwind label %bb.ah, !noalias !21231

.noexc18.i52:                                     ; preds = %bb.af
  %i.da = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !21243, !noalias !21231, !noundef !9 ; 3 uses
  %i.dc = icmp sgt i64 %i.db, -1
  call void @llvm.assume(i1 %i.dc)
  %.not.i.i53 = icmp eq i64 %4, 0
  br i1 %.not.i.i53, label %_RNvXs1D_NtCs6Po7BT7Nknu_5alloc6stringsNtB6_12SpecToString14spec_to_string.exit, label %bb.ag

bb.ag:                                            ; preds = %.noexc18.i52
  %i.dd = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !21243, !noalias !21231, !nonnull !9, !noundef !9
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.df, ptr nonnull readonly align 1 %i.cz, i64 %4, i1 false), !noalias !21231
  %.pre.i.i54 = load i64, ptr %i.da, align 8, !alias.scope !21243, !noalias !21231
  br label %_RNvXs1D_NtCs6Po7BT7Nknu_5alloc6stringsNtB6_12SpecToString14spec_to_string.exit

bb.ah:                                            ; preds = %bb.af, %bb.ad, %bb.ac
  %lpad.thr_comm.i51 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x) #38
          to label %common.resume unwind label %bb.ai, !noalias !21231

bb.ai:                                            ; preds = %bb.ah
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !21231
  unreachable

_RNvXs1D_NtCs6Po7BT7Nknu_5alloc6stringsNtB6_12SpecToString14spec_to_string.exit: ; preds = %.noexc18.i52, %bb.ag
  %i.dh = phi i64 [ %.pre.i.i54, %bb.ag ], [ %i.db, %.noexc18.i52 ]
  %i.di = add i64 %i.dh, %4
  store i64 %i.di, ptr %i.da, align 8, !alias.scope !21243, !noalias !21231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !21231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !21231
  br label %bb.ca

bb.aj:                                            ; preds = %bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val36 = load i8, ptr %i.dj, align 8, !noundef !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !21246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !21246
  %i.dk = icmp slt i8 %.val36, 0
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !21246
  br i1 %i.dk, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dl = tail call noundef dereferenceable_or_null(3) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 3, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21249 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %.noexc.i66, label %bb.am

.noexc.i66:                                       ; preds = %bb.ak
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef 1, i64 3) #37, !noalias !21246
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.dn = tail call noundef dereferenceable_or_null(4) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 4, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21252 ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %.noexc15.i69, label %bb.ao

.noexc15.i69:                                     ; preds = %bb.al
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef 1, i64 4) #37, !noalias !21246
  unreachable

bb.am:                                            ; preds = %bb.ak
  store i64 3, ptr %i.v, align 8, !noalias !21246
  %.sroa.410.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.dl, ptr %.sroa.410.0..sroa_idx.i59, align 8, !noalias !21246
  %.sroa.511.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx.i60, align 8, !noalias !21246
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %bb.am
  %.sroa.012.0.i61 = phi i8 [ %i.du, %bb.ap ], [ %.val36, %bb.am ]
  %i.dp = invoke { ptr, i64 } @_RNvMs0_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3imph4__fmt(i8 noundef %.sroa.012.0.i61, ptr noalias noundef nonnull %i.w, i64 noundef 3)
          to label %bb.aq unwind label %bb.as, !noalias !21246 ; 2 uses

bb.ao:                                            ; preds = %bb.al
  store i64 4, ptr %i.v, align 8, !noalias !21246
  %.sroa.44.0..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.dn, ptr %.sroa.44.0..sroa_idx.i67, align 8, !noalias !21246
  %.sroa.55.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx.i68, align 8, !noalias !21246
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef 1)
          to label %bb.ap unwind label %bb.as, !noalias !21246

bb.ap:                                            ; preds = %bb.ao
  %i.dq = load ptr, ptr %.sroa.44.0..sroa_idx.i67, align 8, !alias.scope !21255, !noalias !21246, !nonnull !9, !noundef !9
  %i.dr = load i64, ptr %.sroa.55.0..sroa_idx.i68, align 8, !alias.scope !21255, !noalias !21246, !noundef !9 ; 2 uses
  %i.ds = icmp sgt i64 %i.dr, -1
  call void @llvm.assume(i1 %i.ds)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dr
  store i8 45, ptr %i.dt, align 1, !noalias !21246
  store i64 1, ptr %.sroa.55.0..sroa_idx.i68, align 8, !alias.scope !21255, !noalias !21246
  %i.du = sub i8 0, %.val36
  br label %bb.an

bb.aq:                                            ; preds = %bb.an
  %i.dv = extractvalue { ptr, i64 } %i.dp, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dv) ]
  %5 = extractvalue { ptr, i64 } %i.dp, 1         ; 4 uses
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef %5)
          to label %.noexc18.i63 unwind label %bb.as, !noalias !21246

.noexc18.i63:                                     ; preds = %bb.aq
  %i.dw = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !21258, !noalias !21246, !noundef !9 ; 3 uses
  %i.dy = icmp sgt i64 %i.dx, -1
  call void @llvm.assume(i1 %i.dy)
  %.not.i.i64 = icmp eq i64 %5, 0
  br i1 %.not.i.i64, label %_RNvXs1B_NtCs6Po7BT7Nknu_5alloc6stringaNtB6_12SpecToString14spec_to_string.exit, label %bb.ar

bb.ar:                                            ; preds = %.noexc18.i63
  %i.dz = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !21258, !noalias !21246, !nonnull !9, !noundef !9
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eb, ptr nonnull readonly align 1 %i.dv, i64 %5, i1 false), !noalias !21246
  %.pre.i.i65 = load i64, ptr %i.dw, align 8, !alias.scope !21258, !noalias !21246
  br label %_RNvXs1B_NtCs6Po7BT7Nknu_5alloc6stringaNtB6_12SpecToString14spec_to_string.exit

bb.as:                                            ; preds = %bb.aq, %bb.ao, %bb.an
  %lpad.thr_comm.i62 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v) #38
          to label %common.resume unwind label %bb.at, !noalias !21246

bb.at:                                            ; preds = %bb.as
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !21246
  unreachable

_RNvXs1B_NtCs6Po7BT7Nknu_5alloc6stringaNtB6_12SpecToString14spec_to_string.exit: ; preds = %.noexc18.i63, %bb.ar
  %i.ed = phi i64 [ %.pre.i.i65, %bb.ar ], [ %i.dx, %.noexc18.i63 ]
  %i.ee = add i64 %i.ed, %5
  store i64 %i.ee, ptr %i.dw, align 8, !alias.scope !21258, !noalias !21246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !21246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !21246
  br label %bb.ca

bb.au:                                            ; preds = %bb.a
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !21261
  store i64 0, ptr %i.u, align 8, !noalias !21261
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !21261
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !21261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !21261
  %i.eg = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i32 1610612768, ptr %i.eg, align 8, !noalias !21261
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !21261
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !21261
  store ptr %i.u, ptr %i.t, align 8, !noalias !21261
  %i.eh = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @533, ptr %i.eh, align 8, !noalias !21261
  %i.ei = invoke noundef zeroext i1 @_RNvXs3_NtNtCsbvkFyIu7lgC_4core3fmt5floatfNtB7_7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ef, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.aw unwind label %bb.av, !noalias !21265

bb.av:                                            ; preds = %bb.ax, %bb.au
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #38
          to label %common.resume unwind label %bb.ay, !noalias !21265

bb.aw:                                            ; preds = %bb.au
  br i1 %i.ei, label %bb.ax, label %_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringfNtB5_12SpecToString14spec_to_stringCs14kWLkQVSKO_14deltalake_core.exit, !prof !10

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @534, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @154, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @536) #37
          to label %.noexc.i70 unwind label %bb.av, !noalias !21265

.noexc.i70:                                       ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.av
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !21265
  unreachable

_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringfNtB5_12SpecToString14spec_to_stringCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !21266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !21261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !21261
  br label %bb.ca

bb.az:                                            ; preds = %bb.a
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !21267
  store i64 0, ptr %i.s, align 8, !noalias !21267
  %.sroa.42.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i71, align 8, !noalias !21267
  %.sroa.53.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i72, align 8, !noalias !21267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !21267
  %i.em = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i32 1610612768, ptr %i.em, align 8, !noalias !21267
  %.sroa.4.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i73, align 4, !noalias !21267
  %.sroa.5.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %i.r, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i74, align 2, !noalias !21267
  store ptr %i.s, ptr %i.r, align 8, !noalias !21267
  %i.en = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @533, ptr %i.en, align 8, !noalias !21267
  %i.eo = invoke noundef zeroext i1 @_RNvXs7_NtNtCsbvkFyIu7lgC_4core3fmt5floatdNtB7_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.el, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.bb unwind label %bb.ba, !noalias !21271

bb.ba:                                            ; preds = %bb.bc, %bb.az
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s) #38
          to label %common.resume unwind label %bb.bd, !noalias !21271

bb.bb:                                            ; preds = %bb.az
  br i1 %i.eo, label %bb.bc, label %_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringdNtB5_12SpecToString14spec_to_stringCs14kWLkQVSKO_14deltalake_core.exit, !prof !10

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @534, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @154, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @536) #37
          to label %.noexc.i75 unwind label %bb.ba, !noalias !21271

.noexc.i75:                                       ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %bb.ba
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !21271
  unreachable

_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringdNtB5_12SpecToString14spec_to_stringCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !21272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !21267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !21267
  br label %bb.ca

bb.be:                                            ; preds = %bb.a
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.er)
  br label %bb.ca

bb.bf:                                            ; preds = %bb.a
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.et = load i8, ptr %i.es, align 8, !range !71, !noundef !9
  %i.eu = trunc nuw i8 %i.et to i1                ; 2 uses
  %. = select i1 %i.eu, i64 4, i64 5              ; 5 uses
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !21273
  %i.ev = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %., i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21273 ; 3 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.cb, label %bb.cc

bb.bg:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ey = load i32, ptr %i.ex, align 8, !noundef !9 ; 2 uses
  %i.ez = icmp sgt i32 %i.ey, 2146764484
  br i1 %i.ez, label %bb.cu, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fa = add nsw i32 %i.ey, 719163
  %i.fb = tail call noundef i32 @_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef %i.fa), !noalias !21276 ; 2 uses
  %.not.i = icmp eq i32 %i.fb, 0
  br i1 %.not.i, label %bb.cu, label %_RNvMs_NtCshmPyUV8PP35_6chrono8datetimeINtB4_8DateTimeNtNtNtB6_6offset3utc3UtcE14from_timestamp.exit

bb.bi:                                            ; preds = %bb.a
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fd = load ptr, ptr %i.fc, align 16, !nonnull !9, !noundef !9
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ff = load i64, ptr %i.fe, align 8, !noundef !9
  tail call void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalars28create_escaped_binary_string(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fd, i64 noundef %i.ff)
  br label %bb.ca

bb.bj:                                            ; preds = %bb.a
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.fi = load i8, ptr %i.fh, align 1, !noundef !9 ; 6 uses
  %i.fj = tail call i8 @llvm.ucmp.i8.i8(i8 %i.fi, i8 0)
  switch i8 %i.fj, label %bb.b [
    i8 -1, label %bb.da
    i8 0, label %bb.db
    i8 1, label %bb.dc
  ]

bb.bk:                                            ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !21279
  %i.fk = tail call noundef dereferenceable_or_null(4) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 4, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21279 ; 3 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %bb.dz, label %bb.ea

bb.bl:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !21282
  store i64 0, ptr %i.q, align 8, !noalias !21282
  %.sroa.42.0..sroa_idx.i79 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i79, align 8, !noalias !21282
  %.sroa.53.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i80, align 8, !noalias !21282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !21282
  %i.fm = getelementptr inbounds nuw i8, ptr %i.p, i64 16
end_hunk_19
begin_hunk_20_@_RNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB5_12BooleanArrayNtB7_5Array6offset:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB5_12BooleanArrayNtB7_5Array8is_empty(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !9
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB5_12BooleanArrayNtB7_5Array9data_type(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret ptr @295
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1D_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load i8, ptr %0, align 8, !range !7034, !noundef !9
  switch i8 %i.f, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.g, ptr %i.e, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @298, i64 noundef 9, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @297)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.d, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @300, i64 noundef 5, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @299)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.c, align 8
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @302, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @301)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.b, align 8
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @304, i64 noundef 3, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @303)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.a, align 8
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @305, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @301)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.b ], [ %i.j, %bb.c ], [ %i.l, %bb.d ], [ %i.n, %bb.e ], [ %i.p, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1F_NtCsbvkFyIu7lgC_4core3fmtTReBw_Bw_ENtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.f, ptr %i.a, align 8
  %i.g = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @306) ; 0 uses
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @306) ; 0 uses
  %i.i = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @306) ; 0 uses
  %i.j = call noundef zeroext i1 @_RNvMs2_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1F_NtCsbvkFyIu7lgC_4core3fmtTReBw_RSBw_ENtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.f, ptr %i.a, align 8
  %i.g = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @306) ; 0 uses
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @306) ; 0 uses
  %i.i = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @307) ; 0 uses
  %i.j = call noundef zeroext i1 @_RNvMs2_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1L_NtCs6Po7BT7Nknu_5alloc6stringnNtB6_12SpecToString14spec_to_string(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i128 %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 14 uses
  %i.b = alloca [39 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = icmp slt i128 %.0.val, 0
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !9
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef dereferenceable_or_null(39) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 39, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21561 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.b
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef 1, i64 39) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21564 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.noexc15, label %bb.f

.noexc15:                                         ; preds = %bb.c
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef 1, i64 40) #37
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 39, ptr %i.a, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.012.0 = phi i128 [ %i.m, %bb.g ], [ %.0.val, %bb.d ]
  %i.h = invoke { ptr, i64 } @_RNvMs0_NtNtCsbvkFyIu7lgC_4core3fmt3numo4__fmt(i128 noundef %.sroa.012.0, ptr noalias noundef nonnull %i.b, i64 noundef 39)
          to label %bb.h unwind label %bb.l       ; 2 uses

bb.f:                                             ; preds = %bb.c
  store i64 40, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.f, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.i = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !21567, !nonnull !9, !noundef !9
  %i.j = load i64, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !21567, !noundef !9 ; 2 uses
  %i.k = icmp sgt i64 %i.j, -1
  call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 45, ptr %i.l, align 1
  store i64 1, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !21567
  %i.m = sub i128 0, %.0.val
  br label %bb.e

bb.h:                                             ; preds = %bb.e
  %i.n = extractvalue { ptr, i64 } %i.h, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %1 = extractvalue { ptr, i64 } %i.h, 1          ; 4 uses
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %1)
          to label %.noexc18 unwind label %bb.l

.noexc18:                                         ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !21570, !noundef !9 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1
  call void @llvm.assume(i1 %i.q)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc18
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !21570, !nonnull !9, !noundef !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.n, i64 %1, i1 false)
  %.pre.i = load i64, ptr %i.o, align 8, !alias.scope !21570
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.noexc18
  %i.u = phi i64 [ %.pre.i, %bb.i ], [ %i.p, %.noexc18 ]
  %i.v = add i64 %i.u, %1
  store i64 %i.v, ptr %i.o, align 8, !alias.scope !21570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.k:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.thr_comm

bb.l:                                             ; preds = %bb.h, %bb.e, %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #38
          to label %bb.k unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj2_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = mul nuw i64 %.val, 224
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 16) #41
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketINtNtB7_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtNtCshCk07IZuEAL_24datafusion_physical_expr10projection17ProjectionTargetsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = mul nuw i64 %.val, 48
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketINtNtB7_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EjEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketINtNtB7_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = shl nuw i64 %.val, 7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = shl nuw i64 %.val, 7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 16) #41
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = shl nuw i64 %.val, 7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 16) #41
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB7_3vec3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEEENtNtNtB2d_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = mul nuw i64 %.val, 136
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = mul nuw i64 %.val, 112
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #41
end_hunk_20
begin_hunk_21_@_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9UInt8TypeEINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataE4fromCs14kWLkQVSKO_14deltalake_core:bb.a

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a)
          to label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9UInt8TypeE13is_compatibleCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.e, !noalias !25948

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn.i.i = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.l, %bb.b ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #38
          to label %.body unwind label %bb.f, !noalias !25948

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !25948
  unreachable

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9UInt8TypeE13is_compatibleCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25945
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9UInt8TypeE13is_compatibleCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25945
  br i1 %i.k, label %bb.l, label %bb.g, !prof !70

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !25942
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 6, i64 24, i1 false), !noalias !25942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !25942
  store ptr %i.d, ptr %i.c, align 8, !noalias !25942
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXNtCsfYVtenZkBsn_12arrow_schema16datatype_displayNtNtB4_8datatype8DataTypeNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !25942
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.o, align 8, !noalias !25942
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !25942
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @183, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @184) #37
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #38
          to label %.body unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

.body:                                            ; preds = %bb.s, %bb.t, %bb.k, %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.r, %bb.k ], [ %.pn.i.i, %bb.d ], [ %i.ak, %bb.t ], [ %i.ak, %bb.s ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(136) %1) #38
          to label %bb.aa unwind label %bb.z

bb.k:                                             ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9UInt8TypeE13is_compatibleCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.p, %bb.m
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !9 ; 2 uses
  store i64 %i.t, ptr %i.i, align 8
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.n, label %bb.m, !prof !70

bb.m:                                             ; preds = %bb.l
  invoke void @_RINvNtCsbvkFyIu7lgC_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @296, ptr noundef nonnull @635, ptr nonnull inttoptr (i64 143 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @636) #37
          to label %bb.o unwind label %bb.k

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !9
  store ptr %i.x, ptr %i.g, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ab, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.ad, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !9
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !9
  invoke fastcc void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferhE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, i64 noundef %i.ah, i64 noundef %i.aj)
          to label %bb.r unwind label %bb.k

bb.q:                                             ; preds = %bb.n
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25949)
  call void @llvm.experimental.noalias.scope.decl(metadata !25952)
  call void @llvm.experimental.noalias.scope.decl(metadata !25955)
  call void @llvm.experimental.noalias.scope.decl(metadata !25958)
  %i.al = load ptr, ptr %i.h, align 8, !alias.scope !25961, !nonnull !9, !noundef !9
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !25961
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.t, label %.body

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #42
          to label %.body unwind label %bb.z

bb.u:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ap = load ptr, ptr %i.ao, align 8, !noundef !9 ; 3 uses
  %.not15 = icmp eq ptr %i.ap, null
  br i1 %.not15, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = atomicrmw add ptr %i.ap, i64 1 monotonic, align 8
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.u, %bb.x
  %.sroa.5.sroa.0.sroa.0.sroa.0.0 = phi ptr [ %i.ax, %bb.x ], [ undef, %bb.u ]
  %i.as = phi <2 x i64> [ %i.az, %bb.x ], [ undef, %bb.u ]
  %i.at = phi <2 x i64> [ %i.bb, %bb.x ], [ undef, %bb.u ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ap, ptr %i.av, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.5.sroa.0.sroa.0.sroa.0.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.0.sroa.0.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.as, ptr %.sroa.5.sroa.0.sroa.0.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.0.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> %i.at, ptr %.sroa.5.sroa.0.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(136) %1)
  ret void

bb.x:                                             ; preds = %bb.v
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8, !noundef !9
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.az = load <2 x i64>, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bb = load <2 x i64>, ptr %i.ba, align 8
  br label %bb.w

bb.y:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.t, %.body
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.aa:                                            ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_10byte_array16GenericByteArrayINtB1s_17GenericBinaryTypelEEENtB7_13ArrayAccessor5valueCs14kWLkQVSKO_14deltalake_core(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  store i64 %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %i.e = load i64, ptr %i.d, align 8, !noundef !9
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = icmp ult i64 %0, %i.f
  br i1 %i.g, label %bb.c, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.h, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @637, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @639) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !noundef !9
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %0
  %i.l = load i16, ptr %i.k, align 2, !noundef !9
  %i.m = zext i16 %i.l to i64                     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !25962, !noundef !9
  %i.p = lshr i64 %i.o, 2                         ; 2 uses
  %i.q = add nsw i64 %i.p, -1
  %i.r = icmp ugt i64 %i.q, %i.m
  br i1 %i.r, label %bb.d, label %_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_10byte_array16GenericByteArrayINtB1s_17GenericBinaryTypelEEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25965)
  %i.s = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !25965, !noundef !9 ; 2 uses
  %i.u = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.v = icmp samesign ult i64 %i.u, %i.p
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.u
  %i.x = load i32, ptr %i.w, align 4, !noalias !25965, !noundef !9
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.m
  %i.z = load i32, ptr %i.y, align 4, !noalias !25965, !noundef !9 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !25965, !noundef !9
  %i.ac = sext i32 %i.z to i64
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac
  %i.ae = sub i32 %i.x, %i.z                      ; 2 uses
  %i.af = icmp sgt i32 %i.ae, -1
  %i.ag = zext nneg i32 %i.ae to i64
  tail call void @llvm.assume(i1 %i.af)
  br label %_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_10byte_array16GenericByteArrayINtB1s_17GenericBinaryTypelEEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit

_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_10byte_array16GenericByteArrayINtB1s_17GenericBinaryTypelEEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.d
  %.sroa.3.0.i = phi i64 [ %i.ag, %bb.d ], [ 0, %bb.c ]
  %.sroa.0.0.i = phi ptr [ %i.ad, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.c ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  %i.ah = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.ai = insertvalue { ptr, i64 } %i.ah, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.ai
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_10byte_array16GenericByteArrayINtB1s_17GenericBinaryTypexEEENtB7_13ArrayAccessor5valueCs14kWLkQVSKO_14deltalake_core(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  store i64 %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %i.e = load i64, ptr %i.d, align 8, !noundef !9
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = icmp ult i64 %0, %i.f
  br i1 %i.g, label %bb.c, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.h, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @637, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @639) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !noundef !9
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %0
  %i.l = load i16, ptr %i.k, align 2, !noundef !9
  %i.m = zext i16 %i.l to i64                     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !25968, !noundef !9
  %i.p = lshr i64 %i.o, 3                         ; 2 uses
  %i.q = add nsw i64 %i.p, -1
  %i.r = icmp ugt i64 %i.q, %i.m
  br i1 %i.r, label %bb.d, label %_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_10byte_array16GenericByteArrayINtB1s_17GenericBinaryTypexEEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25971)
  %i.s = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !25971, !noundef !9 ; 2 uses
  %i.u = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.v = icmp samesign ult i64 %i.u, %i.p
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.x = load i64, ptr %i.w, align 8, !noalias !25971, !noundef !9
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.m
  %i.z = load i64, ptr %i.y, align 8, !noalias !25971, !noundef !9 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !25971, !noundef !9
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.z
  %i.ad = sub i64 %i.x, %i.z                      ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  tail call void @llvm.assume(i1 %i.ae)
  br label %_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_10byte_array16GenericByteArrayINtB1s_17GenericBinaryTypexEEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit

_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_10byte_array16GenericByteArrayINtB1s_17GenericBinaryTypexEEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.d
  %.sroa.3.0.i = phi i64 [ %i.ad, %bb.d ], [ 0, %bb.c ]
  %.sroa.0.0.i = phi ptr [ %i.ac, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.c ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  %i.af = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.ag = insertvalue { ptr, i64 } %i.af, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.ag
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { ptr, i64 } @_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_10byte_array16GenericByteArrayINtB1s_17GenericStringTypelEEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #15 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !12, !noundef !9 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = load i64, ptr %i.d, align 8, !noundef !9
  %i.f = lshr i64 %i.e, 1
  %i.g = icmp ult i64 %1, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %1
  %i.i = load i16, ptr %i.h, align 2, !noundef !9
  %i.j = zext i16 %i.i to i64                     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25974)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !25974, !nonnull !9, !align !12, !noundef !9 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !25977, !noalias !25974, !noundef !9
  %i.o = lshr i64 %i.n, 2                         ; 2 uses
  %i.p = add nsw i64 %i.o, -1
  %i.q = icmp ugt i64 %i.p, %i.j
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25980)
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !25980, !noalias !25983, !noundef !9 ; 2 uses
  %i.t = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.o
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t
  %i.w = load i32, ptr %i.v, align 4, !noalias !25986, !noundef !9
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.j
  %i.y = load i32, ptr %i.x, align 4, !noalias !25986, !noundef !9 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !25980, !noalias !25983, !noundef !9
  %i.ab = sext i32 %i.y to i64
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %i.ab
  %i.ad = sub i32 %i.w, %i.y                      ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, -1
  %i.af = zext nneg i32 %i.ad to i64
  tail call void @llvm.assume(i1 %i.ae)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.af, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.ac, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0) ]
  %i.ag = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ah = insertvalue { ptr, i64 } %i.ag, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.ah
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_10byte_array16GenericByteArrayINtB1s_17GenericStringTypelEEENtB7_13ArrayAccessor5valueCs14kWLkQVSKO_14deltalake_core(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  store i64 %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %i.e = load i64, ptr %i.d, align 8, !noundef !9
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = icmp ult i64 %0, %i.f
  br i1 %i.g, label %bb.c, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.h, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @637, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @639) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !noalias !25987, !noundef !9
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %0
  %i.l = load i16, ptr %i.k, align 2, !noalias !25987, !noundef !9
  %i.m = zext i16 %i.l to i64                     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !25990, !noalias !25993, !noundef !9
  %i.p = lshr i64 %i.o, 2                         ; 2 uses
  %i.q = add nsw i64 %i.p, -1
  %i.r = icmp ugt i64 %i.q, %i.m
  br i1 %i.r, label %bb.d, label %_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_10byte_array16GenericByteArrayINtB1s_17GenericStringTypelEEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25996)
  %i.s = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !25996, !noalias !25999, !noundef !9 ; 2 uses
  %i.u = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.v = icmp samesign ult i64 %i.u, %i.p
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.u
  %i.x = load i32, ptr %i.w, align 4, !noalias !26002, !noundef !9
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.m
  %i.z = load i32, ptr %i.y, align 4, !noalias !26002, !noundef !9 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !25996, !noalias !25999, !noundef !9
  %i.ac = sext i32 %i.z to i64
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac
  %i.ae = sub i32 %i.x, %i.z                      ; 2 uses
  %i.af = icmp sgt i32 %i.ae, -1
  %i.ag = zext nneg i32 %i.ae to i64
  tail call void @llvm.assume(i1 %i.af)
  br label %_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_10byte_array16GenericByteArrayINtB1s_17GenericStringTypelEEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit

_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_10byte_array16GenericByteArrayINtB1s_17GenericStringTypelEEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.d
  %.sroa.3.0.i = phi i64 [ %i.ag, %bb.d ], [ 0, %bb.c ]
  %.sroa.0.0.i = phi ptr [ %i.ad, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.c ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  %i.ah = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.ai = insertvalue { ptr, i64 } %i.ah, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.ai
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_10byte_array16GenericByteArrayINtB1s_17GenericStringTypexEEENtB7_13ArrayAccessor5valueCs14kWLkQVSKO_14deltalake_core(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  store i64 %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %i.e = load i64, ptr %i.d, align 8, !noundef !9
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = icmp ult i64 %0, %i.f
  br i1 %i.g, label %bb.c, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.h, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @637, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @639) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !noundef !9
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %0
  %i.l = load i16, ptr %i.k, align 2, !noundef !9
  %i.m = zext i16 %i.l to i64                     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !26003, !noundef !9
  %i.p = lshr i64 %i.o, 3                         ; 2 uses
  %i.q = add nsw i64 %i.p, -1
  %i.r = icmp ugt i64 %i.q, %i.m
  br i1 %i.r, label %bb.d, label %_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_10byte_array16GenericByteArrayINtB1s_17GenericStringTypexEEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26006)
  %i.s = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !26006, !noundef !9 ; 2 uses
  %i.u = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.v = icmp samesign ult i64 %i.u, %i.p
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.x = load i64, ptr %i.w, align 8, !noalias !26006, !noundef !9
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.m
  %i.z = load i64, ptr %i.y, align 8, !noalias !26006, !noundef !9 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !26006, !noundef !9
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.z
  %i.ad = sub i64 %i.x, %i.z                      ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  tail call void @llvm.assume(i1 %i.ae)
  br label %_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_10byte_array16GenericByteArrayINtB1s_17GenericStringTypexEEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit

_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_10byte_array16GenericByteArrayINtB1s_17GenericStringTypexEEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.d
  %.sroa.3.0.i = phi i64 [ %i.ad, %bb.d ], [ 0, %bb.c ]
  %.sroa.0.0.i = phi ptr [ %i.ac, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.c ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  %i.af = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.ag = insertvalue { ptr, i64 } %i.af, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.ag
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_15byte_view_array20GenericByteViewArrayNtB1s_14BinaryViewTypeEENtB7_13ArrayAccessor5valueCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.c, align 8
  %i.d = load ptr, ptr %0, align 8, !nonnull !9, !align !12, !noundef !9 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load i64, ptr %i.e, align 8, !noundef !9
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  br i1 %i.h, label %bb.c, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @637, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @639) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !noalias !26009, !noundef !9
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %1
  %i.m = load i16, ptr %i.l, align 2, !noalias !26009, !noundef !9
  %i.n = zext i16 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = tail call noundef i64 @_RNvXs_NtCs1N9T06jgEdt_11arrow_array5arrayRINtNtB4_15byte_view_array20GenericByteViewArrayNtNtB6_5types14BinaryViewTypeENtB4_5Array3lenCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o)
  %i.q = icmp ugt i64 %i.p, %i.n
  br i1 %i.q, label %bb.d, label %_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_15byte_view_array20GenericByteViewArrayNtB1s_14BinaryViewTypeEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.c
  %i.r = tail call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayRINtB5_20GenericByteViewArrayNtNtB9_5types14BinaryViewTypeENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, i64 noundef %i.n) ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 0
  %i.t = extractvalue { ptr, i64 } %i.r, 1
  br label %_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_15byte_view_array20GenericByteViewArrayNtB1s_14BinaryViewTypeEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit

_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_15byte_view_array20GenericByteViewArrayNtB1s_14BinaryViewTypeEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.d
  %.sroa.3.0.i = phi i64 [ %i.t, %bb.d ], [ 0, %bb.c ]
  %.sroa.0.0.i = phi ptr [ %i.s, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.c ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  %i.u = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.v = insertvalue { ptr, i64 } %i.u, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.v
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_15byte_view_array20GenericByteViewArrayNtB1s_14StringViewTypeEENtB7_13ArrayAccessor5valueCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.c, align 8
  %i.d = load ptr, ptr %0, align 8, !nonnull !9, !align !12, !noundef !9 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load i64, ptr %i.e, align 8, !noundef !9
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  br i1 %i.h, label %bb.c, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @637, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @639) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !noalias !26012, !noundef !9
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %1
  %i.m = load i16, ptr %i.l, align 2, !noalias !26012, !noundef !9
  %i.n = zext i16 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = tail call noundef i64 @_RNvXs_NtCs1N9T06jgEdt_11arrow_array5arrayRINtNtB4_15byte_view_array20GenericByteViewArrayNtNtB6_5types14StringViewTypeENtB4_5Array3lenCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o)
  %i.q = icmp ugt i64 %i.p, %i.n
  br i1 %i.q, label %bb.d, label %_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_15byte_view_array20GenericByteViewArrayNtB1s_14StringViewTypeEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.c
  %i.r = tail call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayRINtB5_20GenericByteViewArrayNtNtB9_5types14StringViewTypeENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, i64 noundef %i.n) ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 0
  %i.t = extractvalue { ptr, i64 } %i.r, 1
  br label %_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_15byte_view_array20GenericByteViewArrayNtB1s_14StringViewTypeEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit

_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_15byte_view_array20GenericByteViewArrayNtB1s_14StringViewTypeEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.d
  %.sroa.3.0.i = phi i64 [ %i.t, %bb.d ], [ 0, %bb.c ]
  %.sroa.0.0.i = phi ptr [ %i.s, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.c ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  %i.u = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.v = insertvalue { ptr, i64 } %i.u, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.v
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCsbvkFyIu7lgC_4core5alloc6layoutNtB5_11LayoutErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @640, i64 noundef 11)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXse_NtCs6Po7BT7Nknu_5alloc6borrowINtB5_3CoweEINtNtCsbvkFyIu7lgC_4core7convert5AsRefeE6as_refCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #12 {
bb.a:
  %.val1.pn.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.pn = load i64, ptr %.val1.pn.in, align 8, !noundef !9
  %.val.pn.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.pn = load ptr, ptr %.val.pn.in, align 8, !nonnull !9, !noundef !9
  %.pn = insertvalue { ptr, i64 } poison, ptr %.val.pn, 0
  %.merged = insertvalue { ptr, i64 } %.pn, i64 %.val1.pn, 1
  ret { ptr, i64 } %.merged
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCsbvkFyIu7lgC_4core3fmtbNtB5_5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCsbvkFyIu7lgC_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = load i64, ptr %0, align 8, !range !7534, !noundef !9
  switch i64 %i.u, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
end_hunk_21
