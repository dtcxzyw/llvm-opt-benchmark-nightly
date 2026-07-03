inline.NumInlined: 2497
inline.NumDeleted: 1001
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder15sort_with_limitNtNtB9_4expr4SortINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1G_EECsdJxlLsGgtXr_16delta_benchmarks:bb.a

bb.av:                                            ; preds = %bb.au, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.549)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.6172.0..sroa_idx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0..sroa_idx173, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i140 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.v) #43
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECsdJxlLsGgtXr_16delta_benchmarks.exit165 unwind label %bb.az

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i140: ; preds = %bb.av
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEECsdJxlLsGgtXr_16delta_benchmarks.exit.i141 unwind label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i140
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECsdJxlLsGgtXr_16delta_benchmarks.exit165 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.az:                                            ; preds = %bb.aw
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEECsdJxlLsGgtXr_16delta_benchmarks.exit.i141: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i140
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3set8IndexSetNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECsdJxlLsGgtXr_16delta_benchmarks.exit147 unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3set8IndexSetNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECsdJxlLsGgtXr_16delta_benchmarks.exit147: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEECsdJxlLsGgtXr_16delta_benchmarks.exit.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECsdJxlLsGgtXr_16delta_benchmarks.exit.thread, %bb.bq, %bb.bp, %.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3set8IndexSetNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECsdJxlLsGgtXr_16delta_benchmarks.exit147, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECsdJxlLsGgtXr_16delta_benchmarks.exit
  ret void

bb.ba:                                            ; preds = %bb.ao
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #43
          to label %.body149 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.bt, %bb.br, %.thread192, %bb.bg, %bb.ba, %.body110, %.body149
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.bc:                                            ; preds = %bb.ah, %bb.ae
  %.sroa.053.6 = phi i8 [ 1, %bb.ae ], [ 0, %bb.ah ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.be unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body149 unwind label %bb.bf

bb.be:                                            ; preds = %bb.bc
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %.loopexit.split-lp

bb.bf:                                            ; preds = %bb.bd
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.bg:                                            ; preds = %bb.af
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(320) %i.o) #43
          to label %.thread192 unwind label %bb.bb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.6172.0..sroa_idx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0..sroa_idx173, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i153 unwind label %bb.bh

bb.bh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.v) #43
          to label %.body115 unwind label %bb.bk

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i153: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEECsdJxlLsGgtXr_16delta_benchmarks.exit.i154 unwind label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i153
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.v)
          to label %.body115 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.bk:                                            ; preds = %bb.bh
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEECsdJxlLsGgtXr_16delta_benchmarks.exit.i154: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i153
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3set8IndexSetNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECsdJxlLsGgtXr_16delta_benchmarks.exit160 unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3set8IndexSetNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECsdJxlLsGgtXr_16delta_benchmarks.exit160: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEECsdJxlLsGgtXr_16delta_benchmarks.exit.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.dz = trunc nuw i8 %.sroa.053.6 to i1
  br i1 %i.dz, label %bb.bl, label %.thread

.thread:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3set8IndexSetNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECsdJxlLsGgtXr_16delta_benchmarks.exit160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.bl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3set8IndexSetNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECsdJxlLsGgtXr_16delta_benchmarks.exit160
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.bn unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECsdJxlLsGgtXr_16delta_benchmarks.exit165 unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECsdJxlLsGgtXr_16delta_benchmarks.exit.thread unwind label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECsdJxlLsGgtXr_16delta_benchmarks.exit.thread: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.bo:                                            ; preds = %bb.bm
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41
  unreachable

.thread192:                                       ; preds = %bb.bg, %.body110, %bb.w, %bb.x, %bb.v
  %.pn101197 = phi { ptr, i32 } [ %i.cv, %.body110 ], [ %i.cc, %bb.v ], [ %i.cf, %bb.x ], [ %i.cf, %bb.w ], [ %i.du, %bb.bg ]
  %.sroa.053.4196 = phi i8 [ 0, %.body110 ], [ %.sroa.053.5, %bb.v ], [ 1, %bb.x ], [ 1, %bb.w ], [ 0, %bb.bg ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r) #43
          to label %.body149 unwind label %bb.bb

bb.bp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.ec = load ptr, ptr %i.y, align 8, !alias.scope !422, !nonnull !16, !noundef !16
  %i.ed = atomicrmw sub ptr %i.ec, i64 1 release, align 8, !noalias !422
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.bq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.bq:                                            ; preds = %bb.bp
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y) #40
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.br:                                            ; preds = %.body115
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x) #43
          to label %.body162 unwind label %bb.bb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECsdJxlLsGgtXr_16delta_benchmarks.exit165: ; preds = %bb.aw, %bb.ax, %bb.bm, %bb.bs, %bb.bt, %.body162
  %.pn108213 = phi { ptr, i32 } [ %.pn108, %.body162 ], [ %.pn108, %bb.bs ], [ %.pn108, %bb.bt ], [ %i.ea, %bb.bm ], [ %i.dn, %bb.aw ], [ %i.do, %bb.ax ]
  resume { ptr, i32 } %.pn108213

bb.bs:                                            ; preds = %.body162
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.ef = load ptr, ptr %i.y, align 8, !alias.scope !429, !nonnull !16, !noundef !16
  %i.eg = atomicrmw sub ptr %i.ef, i64 1 release, align 8, !noalias !429
  %i.eh = icmp eq i64 %i.eg, 1
  br i1 %i.eh, label %bb.bt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECsdJxlLsGgtXr_16delta_benchmarks.exit165

bb.bt:                                            ; preds = %bb.bs
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECsdJxlLsGgtXr_16delta_benchmarks.exit165 unwind label %bb.bb
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder23scan_with_filters_innerNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %4, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.6.i75.i.a = alloca [40 x i8], align 8    ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.6.i.i = alloca [40 x i8], align 8        ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [72 x i8], align 8                ; 9 uses
  %i.o = alloca [40 x i8], align 8                ; 10 uses
  %i.p = alloca [56 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [40 x i8], align 8                ; 13 uses
  %i.s = alloca [56 x i8], align 8                ; 11 uses
  %.sroa.6.i.sroa.7 = alloca [32 x i8], align 8   ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [8 x i8], align 8                 ; 15 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  %i.x = alloca [24 x i8], align 8                ; 10 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [56 x i8], align 8                ; 12 uses
  %i.aa = alloca [16 x i8], align 8               ; 12 uses
  %i.ab = alloca [320 x i8], align 16             ; 5 uses
  %i.ac = alloca [56 x i8], align 8               ; 4 uses
  %i.ad = alloca [320 x i8], align 16             ; 4 uses
  %i.ae = alloca [56 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [320 x i8], align 16             ; 4 uses
  %i.ah = alloca [40 x i8], align 8               ; 8 uses
  %i.ai = alloca [40 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [320 x i8], align 16             ; 11 uses
  %i.al = alloca [320 x i8], align 16             ; 4 uses
  %.sroa.12 = alloca [104 x i8], align 8          ; 11 uses
  %.sroa.6.sroa.7 = alloca [32 x i8], align 8     ; 7 uses
  %i.am = alloca [144 x i8], align 8              ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %2, ptr %i.aa, align 8, !noalias !437
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  store ptr %3, ptr %i.an, align 8, !noalias !437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !437
  invoke void @_RNvXs3_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCs6Po7BT7Nknu_5alloc6string6StringE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.z, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_4IntoNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE4intoCsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.b, !noalias !440

bb.b:                                             ; preds = %bb.p, %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_4IntoNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE4intoCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.a
  %i.ap = load i64, ptr %i.z, align 8, !range !441, !noalias !437, !noundef !16
  %switch.idx.mult.i = shl nuw nsw i64 %i.ap, 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 %switch.idx.mult.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noalias !437, !noundef !16
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.c, label %bb.e

default.unreachable:                              ; preds = %bb.ai
  unreachable

bb.c:                                             ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_4IntoNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE4intoCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !442
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef range(i64 0, -9223372036854775808) 26, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread126.i, !noalias !455

.noexc.i:                                         ; preds = %bb.c
  %i.au = load i64, ptr %i.m, align 8, !range !15, !noalias !442, !noundef !16
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !17, !noalias !442, !noundef !16 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.av, label %bb.d, label %bb.f, !prof !18

bb.d:                                             ; preds = %.noexc.i
  %i.az = load i64, ptr %i.ay, align 8, !noalias !442
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ax, i64 %i.az) #39
          to label %.noexc56.i unwind label %.thread126.i, !noalias !455

.noexc56.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_4IntoNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE4intoCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !437
  %i.ba = load ptr, ptr %i.aa, align 8, !noalias !437, !nonnull !16, !noundef !16
  %i.bb = load ptr, ptr %i.an, align 8, !noalias !437, !nonnull !16, !align !456, !noundef !16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !457, !invariant.load !16, !noalias !455
  %i.be = add nsw i64 %i.bd, -1
  %i.bf = and i64 %i.be, -16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !invariant.load !16, !noalias !455, !nonnull !16
  %i.bk = invoke noundef nonnull ptr %i.bj(ptr noundef nonnull %i.bh)
          to label %bb.s unwind label %.thread126.i, !noalias !455

.thread126.i:                                     ; preds = %bb.bj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i63.i, %bb.e, %bb.d, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread122.i

bb.f:                                             ; preds = %.noexc.i
  %i.bl = load ptr, ptr %i.ay, align 8, !noalias !442, !nonnull !16, !noundef !16 ; 2 uses
  %i.bm = icmp ugt i64 %i.ax, 25
  call void @llvm.assume(i1 %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.bl, ptr noundef nonnull readonly align 1 dereferenceable(26) @15, i64 range(i64 0, -9223372036854775808) 26, i1 false), !noalias !458
  store i64 %i.ax, ptr %i.x, align 8, !noalias !437
  %.sroa.4.0..sroa_idx105.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.bl, ptr %.sroa.4.0..sroa_idx105.i, align 8, !noalias !437
  %.sroa.5106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 26, ptr %.sroa.5106.0..sroa_idx.i, align 8, !noalias !437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !437
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.h unwind label %bb.g, !noalias !455

.body59.i:                                        ; preds = %bb.l, %bb.k, %bb.g
  %.pn45.i = phi { ptr, i32 } [ %i.bw, %bb.k ], [ %i.bn, %bb.g ], [ %i.bx, %bb.l ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x) #43
          to label %.thread122.i unwind label %bb.q, !noalias !455

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %bb.i, %bb.f
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body59.i

bb.h:                                             ; preds = %bb.f
  %i.bo = load i64, ptr %i.q, align 8, !range !15, !noalias !437, !noundef !16
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !range !17, !noalias !437, !noundef !16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br i1 %i.bp, label %bb.i, label %bb.j, !prof !18

bb.i:                                             ; preds = %bb.h
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !437
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.br, i64 %i.bt) #39
          to label %bb.r unwind label %bb.g, !noalias !455

bb.j:                                             ; preds = %bb.h
  %i.bu = load ptr, ptr %i.bs, align 8, !noalias !437, !nonnull !16, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !437
  store i64 %i.br, ptr %i.w, align 8, !noalias !437
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.bu, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !437
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %.sroa.527.0..sroa_idx.i, align 8, !noalias !437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !437
  store ptr %i.x, ptr %i.v, align 8, !noalias !437
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.431.0..sroa_idx.i, align 8, !noalias !437
  %i.bv = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.w, ptr %i.bv, align 8, !noalias !437
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.435.0..sroa_idx.i, align 8, !noalias !437
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull @10, ptr noundef nonnull %i.v)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit58.i unwind label %bb.k, !noalias !455

bb.k:                                             ; preds = %bb.j
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #43
          to label %.body59.i unwind label %bb.q, !noalias !455

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit58.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !437
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.l, !noalias !455

bb.l:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit58.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body59.i unwind label %bb.m, !noalias !455

bb.m:                                             ; preds = %bb.l
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !455
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit58.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.g, !noalias !455

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !437
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i63.i unwind label %bb.n, !noalias !455

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.thread122.i unwind label %bb.o, !noalias !455

bb.o:                                             ; preds = %bb.n
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !455
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i63.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit67.i unwind label %.thread126.i, !noalias !455

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit67.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i63.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !459
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit91.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit67.i
  %.sroa.772.0 = phi i64 [ 7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit67.i ], [ %.sroa.6.i.sroa.0.0.copyload85, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit91.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.z)
          to label %bb.bq unwind label %bb.b, !noalias !455

bb.q:                                             ; preds = %bb.cd, %bb.cb, %bb.ca, %.thread122.i, %.body.thread133.i, %bb.t, %bb.k, %.body59.i
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !460
  unreachable

bb.r:                                             ; preds = %bb.i
  unreachable

bb.s:                                             ; preds = %bb.e
  store ptr %i.bk, ptr %i.u, align 8, !noalias !437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !437
  %i.cc = load ptr, ptr %i.aa, align 8, !noalias !437, !nonnull !16, !noundef !16
  %i.cd = load ptr, ptr %i.an, align 8, !noalias !437, !nonnull !16, !align !456, !noundef !16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !range !457, !invariant.load !16, !noalias !455
  %i.cg = add nsw i64 %i.cf, -1
  %i.ch = and i64 %i.cg, -16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !16, !noalias !455, !nonnull !16
  %i.cm = invoke noundef align 8 ptr %i.cl(ptr noundef nonnull %i.cj)
          to label %bb.v unwind label %bb.u, !noalias !455

.body.thread.i:                                   ; preds = %.body.thread133.i, %bb.bm, %bb.bg, %.body.i, %bb.bc, %bb.az, %bb.u
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body136.i, %.body.thread133.i ], [ %lpad.thr_comm.split-lp139.i, %.body.i ], [ %i.cq, %bb.u ], [ %i.fk, %bb.bg ], [ %i.fb, %bb.az ], [ %i.fd, %bb.bc ], [ %i.ft, %bb.bm ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !461)
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.cn = load ptr, ptr %i.u, align 8, !alias.scope !467, !noalias !437, !nonnull !16, !noundef !16
  %i.co = atomicrmw sub ptr %i.cn, i64 1 release, align 8, !noalias !468
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.t, label %.thread122.i

bb.t:                                             ; preds = %.body.thread.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #40
          to label %.thread122.i unwind label %bb.q, !noalias !455

bb.u:                                             ; preds = %bb.v, %bb.s
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.v:                                             ; preds = %bb.s
  %i.cr = load ptr, ptr %i.u, align 8, !noalias !437, !nonnull !16, !noundef !16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load i64, ptr %i.cs, align 8, !noalias !455, !noundef !16
  invoke void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common23functional_dependenciesNtB5_22FunctionalDependencies20new_from_constraints(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.cm, i64 noundef %i.ct)
          to label %bb.w unwind label %bb.u, !noalias !455

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !437
  %i.cu = load i64, ptr %4, align 8, !range !17, !alias.scope !433, !noalias !469, !noundef !16
  %.not.i = icmp eq i64 %i.cu, -9223372036854775808
  br i1 %.not.i, label %bb.ai, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !437
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val54.i = load ptr, ptr %i.cv, align 8, !alias.scope !433, !noalias !469, !nonnull !16, !noundef !16 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val55.i = load i64, ptr %i.cw, align 8, !alias.scope !433, !noalias !469, !noundef !16 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !470)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !473
  %i.cx = icmp ult i64 %.val55.i, 1152921504606846976
  call void @llvm.assume(i1 %i.cx)
  invoke void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common23functional_dependenciesNtB5_22FunctionalDependencies31project_functional_dependencies(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val54.i, i64 noundef %.val55.i, i64 noundef %.val55.i)
          to label %.noexc69.i unwind label %.body.thread140.i, !noalias !455

.noexc69.i:                                       ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !473
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !473
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.val54.i, i64 %.val55.i
  store ptr %.val54.i, ptr %i.i, align 8, !noalias !473
  %i.cz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.cy, ptr %i.cz, align 8, !noalias !473
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.z, ptr %i.da, align 8, !noalias !473
  %i.db = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.u, ptr %i.db, align 8, !noalias !473
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecTINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEINtB2_12SpecFromIterBU_INtNtNtNtB10_4iter8adapters3map3MapINtNtNtB10_5slice4iter4IterjENCNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5i_9TableScan7try_newNtNtB6_6string6StringE00EE9from_iterCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.i)
          to label %bb.y unwind label %.thread5.i.i, !noalias !475

.thread5.i.i:                                     ; preds = %.noexc69.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.y:                                             ; preds = %.noexc69.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !473
  %i.dd = load ptr, ptr %i.u, align 8, !noalias !473, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !473
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.de)
          to label %bb.aa unwind label %bb.ag, !noalias !475

bb.z:                                             ; preds = %bb.aa
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !473
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema17new_with_metadata(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.ab unwind label %bb.z, !noalias !475

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !473
  %i.dg = load i64, ptr %i.k, align 8, !range !17, !noalias !473, !noundef !16 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, -9223372036854775808
  %i.di = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.di, i64 40, i1 false), !noalias !473
  br i1 %i.dh, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !473
  %i.dj = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dj, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, i64 40, i1 false), !noalias !476
  store i64 -9223372036854775808, ptr %i.p, align 8, !alias.scope !470, !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.ad, !noalias !475

bb.ad:                                            ; preds = %bb.ac
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.thread133.i unwind label %bb.ae, !noalias !475

bb.ae:                                            ; preds = %bb.ad
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !475
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.ac
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.bf unwind label %.body.thread140.i, !noalias !455

bb.af:                                            ; preds = %bb.ab
  %.sroa.68.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.68.0.copyload.i.i = load i64, ptr %.sroa.68.0..sroa_idx.i.i, align 8, !noalias !473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !473
  store i64 %i.dg, ptr %i.g, align 8, !noalias !473
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, i64 40, i1 false), !noalias !473
  %.sroa.8.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %.sroa.68.0.copyload.i.i, ptr %.sroa.8.0..sroa_idx3.i.i, align 8, !noalias !473
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !473
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema28with_functional_dependencies(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc74.i unwind label %.body.thread140.i, !noalias !455

.noexc74.i:                                       ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !473
  br label %bb.bf

bb.ag:                                            ; preds = %bb.y
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.j) #43
          to label %.thread.i.i unwind label %bb.ah, !noalias !475

bb.ah:                                            ; preds = %.thread.i.i, %bb.ag
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !475
  unreachable

.thread.i.i:                                      ; preds = %bb.ag, %bb.z, %.thread5.i.i
  %.pn4.i.i = phi { ptr, i32 } [ %i.dc, %.thread5.i.i ], [ %i.df, %bb.z ], [ %i.dm, %bb.ag ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.l) #43
          to label %.body.thread133.i unwind label %bb.ah, !noalias !475

bb.ai:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !437
  %i.do = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.z, ptr %i.do, align 8, !noalias !437
  %i.dp = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.u, ptr %i.dp, align 8, !noalias !437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false), !noalias !437
  call void @llvm.experimental.noalias.scope.decl(metadata !477)
  call void @llvm.experimental.noalias.scope.decl(metadata !480)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !437
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i75.i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !482
  %i.dq = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !480, !noalias !483, !nonnull !16, !align !456, !noundef !16 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !484)
  call void @llvm.experimental.noalias.scope.decl(metadata !487)
  %i.ds = load i64, ptr %i.dr, align 8, !range !441, !alias.scope !487, !noalias !489, !noundef !16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !487, !noalias !489, !nonnull !16, !noundef !16 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !487, !noalias !489, !noundef !16 ; 3 uses
  %i.dx = atomicrmw add ptr %i.du, i64 1 monotonic, align 8, !noalias !490
  %i.dy = icmp slt i64 %i.dx, 0                   ; 3 uses
  %.sink18.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink18.i.sroa.gep10.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sink15.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sink15.i.sroa.gep11.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  switch i64 %i.ds, label %default.unreachable [
    i64 0, label %bb.aj
    i64 1, label %bb.ak
    i64 2, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.dy, label %bb.am, label %bb.aw

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.dy, label %bb.ao, label %bb.an

bb.al:                                            ; preds = %bb.ai
  br i1 %i.dy, label %bb.ar, label %bb.aq

bb.am:                                            ; preds = %bb.aj
  call void @llvm.trap()
  unreachable

.sink.split.i.i.i:                                ; preds = %bb.au, %bb.an
  %.sink18.i.sroa.phi.i.i = phi ptr [ %.sink18.i.sroa.gep.i.i, %bb.au ], [ %.sink18.i.sroa.gep10.i.i, %bb.an ]
  %.sink16.i.i.i = phi ptr [ %i.eg, %bb.au ], [ %i.du, %bb.an ]
  %.sink15.i.sroa.phi.i.i = phi ptr [ %.sink15.i.sroa.gep.i.i, %bb.au ], [ %.sink15.i.sroa.gep11.i.i, %bb.an ]
  %.sink13.i.i.i = phi i64 [ %i.ei, %bb.au ], [ %i.dw, %bb.an ]
  %.sink12.ph.i.i.i = phi i64 [ 40, %bb.au ], [ 24, %bb.an ]
  %.sink10.ph.i.i.i = phi ptr [ %i.em, %bb.au ], [ %i.ea, %bb.an ]
  %.sink9.ph.i.i.i = phi i64 [ 48, %bb.au ], [ 32, %bb.an ]
  %.sink7.ph.i.i.i = phi i64 [ %i.eo, %bb.au ], [ %i.ec, %bb.an ]
  store ptr %.sink16.i.i.i, ptr %.sink18.i.sroa.phi.i.i, align 8, !alias.scope !484, !noalias !491
  store i64 %.sink13.i.i.i, ptr %.sink15.i.sroa.phi.i.i, align 8, !alias.scope !484, !noalias !491
  br label %bb.aw

bb.an:                                            ; preds = %bb.ak
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !487, !noalias !489, !nonnull !16, !noundef !16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !487, !noalias !489, !noundef !16
  %i.ed = atomicrmw add ptr %i.ea, i64 1 monotonic, align 8, !noalias !490
  %i.ee = icmp slt i64 %i.ed, 0
  br i1 %i.ee, label %bb.ap, label %.sink.split.i.i.i

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.trap()
  unreachable

bb.ap:                                            ; preds = %bb.an
  call void @llvm.trap()
  unreachable

bb.aq:                                            ; preds = %bb.al
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !487, !noalias !489, !nonnull !16, !noundef !16 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !487, !noalias !489, !noundef !16
  %i.ej = atomicrmw add ptr %i.eg, i64 1 monotonic, align 8, !noalias !490
  %i.ek = icmp slt i64 %i.ej, 0
  br i1 %i.ek, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.al
  call void @llvm.trap()
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.el = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.em = load ptr, ptr %i.el, align 8, !alias.scope !487, !noalias !489, !nonnull !16, !noundef !16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !487, !noalias !489, !noundef !16
  %i.ep = atomicrmw add ptr %i.em, i64 1 monotonic, align 8, !noalias !490
  %i.eq = icmp slt i64 %i.ep, 0
  br i1 %i.eq, label %bb.av, label %bb.au

bb.at:                                            ; preds = %bb.aq
  call void @llvm.trap()
  unreachable

bb.au:                                            ; preds = %bb.as
  store ptr %i.du, ptr %.sink18.i.sroa.gep10.i.i, align 8, !alias.scope !484, !noalias !491
  store i64 %i.dw, ptr %.sink15.i.sroa.gep11.i.i, align 8, !alias.scope !484, !noalias !491
  br label %.sink.split.i.i.i

bb.av:                                            ; preds = %bb.as
  call void @llvm.trap()
  unreachable

bb.aw:                                            ; preds = %.sink.split.i.i.i, %bb.aj
  %.sink12.i.i.i = phi i64 [ 8, %bb.aj ], [ %.sink12.ph.i.i.i, %.sink.split.i.i.i ]
  %.sink10.i.i.i = phi ptr [ %i.du, %bb.aj ], [ %.sink10.ph.i.i.i, %.sink.split.i.i.i ]
  %.sink9.i.i.i = phi i64 [ 16, %bb.aj ], [ %.sink9.ph.i.i.i, %.sink.split.i.i.i ]
  %.sink7.i.i.i = phi i64 [ %i.dw, %bb.aj ], [ %.sink7.ph.i.i.i, %.sink.split.i.i.i ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink12.i.i.i
  store ptr %.sink10.i.i.i, ptr %i.er, align 8, !alias.scope !484, !noalias !491
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink9.i.i.i
  store i64 %.sink7.i.i.i, ptr %i.es, align 8, !alias.scope !484, !noalias !491
  store i64 %i.ds, ptr %i.c, align 8, !alias.scope !484, !noalias !491
  %i.et = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !480, !noalias !483, !nonnull !16, !align !456, !noundef !16
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !492, !nonnull !16, !noundef !16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  invoke void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB3_8DFSchema25try_from_qualified_schemaNtNtB5_15table_reference14TableReferenceECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ew)
          to label %bb.ax unwind label %bb.bc, !noalias !492

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !482
  %i.ex = load i64, ptr %i.d, align 8, !range !17, !noalias !482, !noundef !16 ; 2 uses
  %i.ey = icmp eq i64 %i.ex, -9223372036854775808
  %i.ez = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75.i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.ez, i64 40, i1 false), !noalias !482
  br i1 %i.ey, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !482
  %i.fa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fa, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75.i.a, i64 40, i1 false), !noalias !493
  store i64 -9223372036854775808, ptr %i.s, align 8, !alias.scope !477, !noalias !493
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i75.i.a)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.az, !noalias !494

bb.az:                                            ; preds = %bb.ay
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %.body.thread.i unwind label %bb.ba, !noalias !494

bb.ba:                                            ; preds = %bb.az
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !494
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.ay
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %bb.be unwind label %.body.i, !noalias !455

bb.bb:                                            ; preds = %bb.ax
  %.sroa.67.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.67.0.copyload.i.i = load i64, ptr %.sroa.67.0..sroa_idx.i.i, align 8, !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !482
  store i64 %i.ex, ptr %i.b, align 8, !noalias !482
  %.sroa.6.0..sroa_idx2.i78.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx2.i78.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75.i.a, i64 40, i1 false), !noalias !482
  %.sroa.8.0..sroa_idx3.i79.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %.sroa.67.0.copyload.i.i, ptr %.sroa.8.0..sroa_idx3.i79.i, align 8, !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i75.i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !482
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 24, i1 false), !noalias !483
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema28with_functional_dependencies(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc84.i unwind label %.body.i, !noalias !455

.noexc84.i:                                       ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !482
  br label %bb.be

bb.bc:                                            ; preds = %bb.aw
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o) #43
          to label %.body.thread.i unwind label %bb.bd, !noalias !494

bb.bd:                                            ; preds = %bb.bc
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !494
  unreachable

.body.thread140.i:                                ; preds = %bb.af, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %bb.x
  %lpad.thr_comm138.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread133.i

.body.i:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks.exit.i85.i, %bb.bb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %lpad.thr_comm.split-lp139.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.be:                                            ; preds = %.noexc84.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !437
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks.exit.i85.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !437
  %i.ff = load i64, ptr %i.s, align 8, !range !17, !noalias !437, !noundef !16 ; 2 uses
  %i.fg = icmp eq i64 %i.ff, -9223372036854775808
  %i.fh = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.6.i.sroa.0.0.copyload85 = load i64, ptr %i.fh, align 8, !noalias !437 ; 2 uses
  %.sroa.6.i.sroa.7.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.sroa.7.0..sroa_idx86, i64 32, i1 false), !noalias !437
  br i1 %i.fg, label %bb.bi, label %bb.bk

bb.bf:                                            ; preds = %.noexc74.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 56, i1 false), !noalias !437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !437
  %i.fi = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.z, ptr %i.fi, align 8, !noalias !437
  %i.fj = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.u, ptr %i.fj, align 8, !noalias !437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !437
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks.exit.i85.i unwind label %bb.bg, !noalias !455

bb.bg:                                            ; preds = %bb.bf
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %.body.thread.i unwind label %bb.bh, !noalias !455

bb.bh:                                            ; preds = %bb.bg
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !455
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks.exit.i85.i: ; preds = %bb.bf
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %.body.i, !noalias !455

bb.bi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.sroa.7, i64 32, i1 false), !noalias !459
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !437
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.fm = load ptr, ptr %i.u, align 8, !alias.scope !501, !noalias !437, !nonnull !16, !noundef !16
  %i.fn = atomicrmw sub ptr %i.fm, i64 1 release, align 8, !noalias !502
  %i.fo = icmp eq i64 %i.fn, 1
  br i1 %i.fo, label %bb.bj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit91.i

bb.bj:                                            ; preds = %bb.bi
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit91.i unwind label %.thread126.i, !noalias !455

bb.bk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %.sroa.640.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.640.0.copyload.i = load i64, ptr %.sroa.640.0..sroa_idx.i, align 8, !noalias !437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !437
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !437
  store i64 %.sroa.6.i.sroa.0.0.copyload85, ptr %.sroa.212.0..sroa_idx.i, align 8, !noalias !437
  %.sroa.6.i.sroa.7.0..sroa.212.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.sroa.7.0..sroa.212.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.sroa.7, i64 32, i1 false), !noalias !437
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.7)
  store i64 1, ptr %i.n, align 8, !noalias !437
  %i.fp = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %i.fp, align 8, !noalias !437
  %i.fq = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 %i.ff, ptr %i.fq, align 8, !noalias !437
  %.sroa.313.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i64 %.sroa.640.0.copyload.i, ptr %.sroa.313.0..sroa_idx.i, align 8, !noalias !437
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !503
  %i.fr = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 337) 72, i64 noundef range(i64 8, 17) 8) #42, !noalias !503 ; 3 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bb.bl, label %bb.bo, !prof !18

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #39
          to label %.noexc92.i unwind label %bb.bm, !noalias !455

.noexc92.i:                                       ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.fq)
          to label %.body.thread.i unwind label %bb.bn, !noalias !455

bb.bn:                                            ; preds = %bb.bm
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !455
  unreachable

bb.bo:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fr, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false), !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 56, i1 false), !noalias !459
  %i.fv = load ptr, ptr %i.aa, align 8, !noalias !437, !nonnull !16, !noundef !16 ; 2 uses
  %i.fw = load ptr, ptr %i.an, align 8, !noalias !437, !nonnull !16, !align !456, !noundef !16 ; 3 uses
  %.sroa.12.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.96..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !alias.scope !506, !noalias !507
  %.sroa.12.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !alias.scope !508, !noalias !509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !437
  call void @llvm.experimental.noalias.scope.decl(metadata !510)
  call void @llvm.experimental.noalias.scope.decl(metadata !513)
  %i.fx = load ptr, ptr %i.u, align 8, !alias.scope !516, !noalias !437, !nonnull !16, !noundef !16
  %i.fy = atomicrmw sub ptr %i.fx, i64 1 release, align 8, !noalias !517
  %i.fz = icmp eq i64 %i.fy, 1
  br i1 %i.fz, label %bb.bp, label %bb.cf

bb.bp:                                            ; preds = %bb.bo
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #40, !noalias !455
  br label %bb.cf

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit91.i: ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !437
  br label %bb.p

bb.bq:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !437
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.bs unwind label %bb.br, !noalias !518

bb.br:                                            ; preds = %bb.bq
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.cb unwind label %bb.bt, !noalias !518

bb.bs:                                            ; preds = %bb.bq
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.bu, !noalias !518

bb.bt:                                            ; preds = %bb.br
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !518
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.bs
  %i.gd = load i64, ptr %4, align 8, !range !17, !alias.scope !519, !noalias !469, !noundef !16
  %i.ge = icmp eq i64 %i.gd, -9223372036854775808
  br i1 %i.ge, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %bb.bv

bb.bv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.bw, !noalias !460

bb.bw:                                            ; preds = %bb.bv
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.cc unwind label %bb.bx, !noalias !460

bb.bx:                                            ; preds = %bb.bw
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !460
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.bv
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.by, !noalias !460

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.gi = load ptr, ptr %i.aa, align 8, !alias.scope !528, !noalias !437, !nonnull !16, !noundef !16
  %i.gj = atomicrmw sub ptr %i.gi, i64 1 release, align 8, !noalias !529
  %i.gk = icmp eq i64 %i.gj, 1
  br i1 %i.gk, label %bb.bz, label %bb.ce

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #40, !noalias !460
  br label %bb.ce

.body.thread133.i:                                ; preds = %.body.thread140.i, %.thread.i.i, %bb.ad
  %eh.lpad-body136.i = phi { ptr, i32 } [ %lpad.thr_comm138.i, %.body.thread140.i ], [ %i.dk, %bb.ad ], [ %.pn4.i.i, %.thread.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.t) #43
          to label %.body.thread.i unwind label %bb.q, !noalias !455

.thread122.i:                                     ; preds = %bb.t, %.body.thread.i, %bb.n, %.body59.i, %.thread126.i
  %.pn45.pn121.i = phi { ptr, i32 } [ %i.bz, %bb.n ], [ %lpad.thr_comm.i, %.thread126.i ], [ %.pn45.i, %.body59.i ], [ %.pn.i, %bb.t ], [ %.pn.i, %.body.thread.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.z) #43
          to label %bb.ca unwind label %bb.q, !noalias !455

bb.ca:                                            ; preds = %.thread122.i, %bb.b
  %.pn45.pn.pn.ph.i = phi { ptr, i32 } [ %i.ao, %bb.b ], [ %.pn45.pn121.i, %.thread122.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5) #43
          to label %bb.cb unwind label %bb.q, !noalias !518

bb.cb:                                            ; preds = %bb.ca, %bb.bu, %bb.br
  %.pn45.pn.pn.pn.ph.i = phi { ptr, i32 } [ %.pn45.pn.pn.ph.i, %bb.ca ], [ %i.gc, %bb.bu ], [ %i.ga, %bb.br ]
end_hunk_0
begin_hunk_1_@_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder23scan_with_filters_innerNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !538)
  call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.hx = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !544, !nonnull !16, !noundef !16
  %i.hy = atomicrmw sub ptr %i.hx, i64 1 release, align 8, !noalias !544
  %i.hz = icmp eq i64 %i.hy, 1
  br i1 %i.hz, label %bb.cx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.cx:                                            ; preds = %bb.cw
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.da

bb.cy:                                            ; preds = %bb.cv, %bb.cs
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %i.ia = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !551, !nonnull !16, !noundef !16
  %i.ib = atomicrmw sub ptr %i.ia, i64 1 release, align 8, !noalias !551
  %i.ic = icmp eq i64 %i.ib, 1
  br i1 %i.ic, label %bb.cz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit64

bb.cz:                                            ; preds = %bb.cy
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit64 unwind label %bb.df

bb.da:                                            ; preds = %bb.ds, %bb.dq, %bb.db, %bb.cx, %.critedge61, %bb.dr, %.thread112, %bb.dk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.dc
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.cw, %bb.cx, %bb.df
  %.pn56 = phi { ptr, i32 } [ %i.ii, %bb.df ], [ %i.hw, %bb.cx ], [ %i.hw, %bb.cw ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  call void @llvm.experimental.noalias.scope.decl(metadata !555)
  %i.ie = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !558, !nonnull !16, !noundef !16
  %i.if = atomicrmw sub ptr %i.ie, i64 1 release, align 8, !noalias !558
  %i.ig = icmp eq i64 %i.if, 1
  br i1 %i.ig, label %bb.db, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.db:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.da

bb.dc:                                            ; preds = %bb.cp
  %lpad.thr_comm.split-lp105 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj) #43
          to label %.thread112 unwind label %bb.da

bb.dd:                                            ; preds = %bb.co
  %i.ih = extractvalue { ptr, i1 } %i.ho, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, i64 56, i1 false)
  invoke void @_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder5aliasNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %i.ih, i1 zeroext poison, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ac)
          to label %bb.de unwind label %.thread98

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.cv

bb.df:                                            ; preds = %bb.cz
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit64: ; preds = %bb.cy, %bb.cz
  call void @llvm.experimental.noalias.scope.decl(metadata !559)
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %i.ij = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !565, !nonnull !16, !noundef !16
  %i.ik = atomicrmw sub ptr %i.ij, i64 1 release, align 8, !noalias !565
  %i.il = icmp eq i64 %i.ik, 1
  br i1 %i.il, label %bb.dg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit67

bb.dg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit64
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit67 unwind label %bb.dh

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.db, %bb.dh
  %.pn58 = phi { ptr, i32 } [ %i.im, %bb.dh ], [ %.pn56, %bb.db ], [ %.pn56, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.go) #43
          to label %common.resume unwind label %bb.da

bb.dh:                                            ; preds = %bb.dg
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit67: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit64, %bb.dg
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.go)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.di

bb.di:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit67
  %i.in = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.go)
          to label %common.resume unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit67
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.go)
  br label %bb.dn

bb.dk:                                            ; preds = %bb.cn
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(320) %i.ak) #43
          to label %.thread112 unwind label %bb.da

bb.dl:                                            ; preds = %bb.ci, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ip, ptr noundef nonnull align 8 dereferenceable(144) %i.am, i64 144, i1 false)
  store i64 19, ptr %i.ab, align 16
  %i.iq = invoke { ptr, i1 } @_RNvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB4_18LogicalPlanBuilder3new(ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(320) %i.ab)
          to label %bb.dm unwind label %bb.ch     ; 2 uses

bb.dm:                                            ; preds = %bb.dl
  %i.ir = extractvalue { ptr, i1 } %i.iq, 0
  %i.is = extractvalue { ptr, i1 } %i.iq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ir, ptr %i.it, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.iv = zext i1 %i.is to i8
  store i8 %i.iv, ptr %i.iu, align 8
  store i64 20, ptr %0, align 8
  br label %bb.dn

bb.dn:                                            ; preds = %bb.ce, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  ret void

bb.do:                                            ; preds = %.thread112, %.thread
  %.pn.pn121 = phi { ptr, i32 } [ %.pn.pn122, %.thread112 ], [ %.pn.pn, %.thread ] ; 2 uses
  %.sroa.035.0119 = phi i8 [ %.sroa.035.0120, %.thread112 ], [ %.sroa.035.0, %.thread ]
  %.sroa.034.0117 = phi i1 [ %.sroa.034.0118, %.thread112 ], [ %.sroa.034.0, %.thread ]
  br i1 %.sroa.034.0117, label %bb.dp, label %common.resume

.thread112:                                       ; preds = %bb.dc, %bb.dk, %.thread
  %.pn.pn122 = phi { ptr, i32 } [ %.pn.pn, %.thread ], [ %lpad.thr_comm.split-lp, %bb.dk ], [ %lpad.thr_comm.split-lp105, %bb.dc ]
  %.sroa.035.0120 = phi i8 [ %.sroa.035.0, %.thread ], [ 0, %bb.dk ], [ 0, %bb.dc ]
  %.sroa.034.0118 = phi i1 [ %.sroa.034.0, %.thread ], [ true, %bb.dk ], [ true, %bb.dc ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx) #43
          to label %bb.do unwind label %bb.da

bb.dp:                                            ; preds = %bb.do
  call void @llvm.experimental.noalias.scope.decl(metadata !566)
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %i.iw = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !572, !nonnull !16, !noundef !16
  %i.ix = atomicrmw sub ptr %i.iw, i64 1 release, align 8, !noalias !572
  %i.iy = icmp eq i64 %i.ix, 1
  br i1 %i.iy, label %bb.dq, label %.noexc68

bb.dq:                                            ; preds = %bb.dp
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx) #40
          to label %.noexc68 unwind label %bb.da

.noexc68:                                         ; preds = %bb.dq, %bb.dp
  %i.iz = getelementptr inbounds nuw i8, ptr %i.am, i64 96 ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 8, !range !17, !noundef !16
  %i.jb = icmp ne i64 %i.ja, -9223372036854775808
  %i.jc = trunc nuw i8 %.sroa.035.0119 to i1
  %or.cond = select i1 %i.jb, i1 %i.jc, i1 false
  br i1 %or.cond, label %bb.dr, label %.critedge

bb.dr:                                            ; preds = %.noexc68
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.iz) #43
          to label %.critedge unwind label %bb.da

.critedge:                                        ; preds = %.noexc68, %bb.dr
  call void @llvm.experimental.noalias.scope.decl(metadata !573)
  call void @llvm.experimental.noalias.scope.decl(metadata !576)
  %i.jd = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !579, !nonnull !16, !noundef !16
  %i.je = atomicrmw sub ptr %i.jd, i64 1 release, align 8, !noalias !579
  %i.jf = icmp eq i64 %i.je, 1
  br i1 %i.jf, label %bb.ds, label %.critedge61

bb.ds:                                            ; preds = %.critedge
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx) #40
          to label %.critedge61 unwind label %bb.da

.critedge61:                                      ; preds = %bb.ds, %.critedge
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.go) #43
          to label %common.resume unwind label %bb.da
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder23scan_with_filters_innerNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %4, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.6.i75.i.a = alloca [40 x i8], align 8    ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.6.i.i = alloca [40 x i8], align 8        ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [72 x i8], align 8                ; 9 uses
  %i.o = alloca [40 x i8], align 8                ; 10 uses
  %i.p = alloca [56 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [40 x i8], align 8                ; 13 uses
  %i.s = alloca [56 x i8], align 8                ; 11 uses
  %.sroa.6.i.sroa.7 = alloca [32 x i8], align 8   ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [8 x i8], align 8                 ; 15 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  %i.x = alloca [24 x i8], align 8                ; 10 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [56 x i8], align 8                ; 12 uses
  %i.aa = alloca [16 x i8], align 8               ; 11 uses
  %i.ab = alloca [320 x i8], align 16             ; 5 uses
  %i.ac = alloca [56 x i8], align 8               ; 4 uses
  %i.ad = alloca [320 x i8], align 16             ; 4 uses
  %i.ae = alloca [56 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [320 x i8], align 16             ; 4 uses
  %i.ah = alloca [40 x i8], align 8               ; 8 uses
  %i.ai = alloca [40 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [320 x i8], align 16             ; 11 uses
  %i.al = alloca [320 x i8], align 16             ; 4 uses
  %.sroa.12 = alloca [104 x i8], align 8          ; 11 uses
  %.sroa.6.sroa.7 = alloca [32 x i8], align 8     ; 7 uses
  %i.am = alloca [144 x i8], align 8              ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %2, ptr %i.aa, align 8, !noalias !589
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  store ptr %3, ptr %i.an, align 8, !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false), !alias.scope !591, !noalias !598
  %i.ao = load i64, ptr %i.z, align 8, !range !441, !noalias !589, !noundef !16
  %switch.idx.mult.i = shl nuw nsw i64 %i.ao, 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 %switch.idx.mult.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !589, !noundef !16
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.c, label %bb.e

bb.b:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

default.unreachable:                              ; preds = %bb.ai
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !599
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef range(i64 0, -9223372036854775808) 26, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread126.i, !noalias !612

.noexc.i:                                         ; preds = %bb.c
  %i.au = load i64, ptr %i.m, align 8, !range !15, !noalias !599, !noundef !16
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !17, !noalias !599, !noundef !16 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.av, label %bb.d, label %bb.f, !prof !18

bb.d:                                             ; preds = %.noexc.i
  %i.az = load i64, ptr %i.ay, align 8, !noalias !599
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ax, i64 %i.az) #39
          to label %.noexc56.i unwind label %.thread126.i, !noalias !612

.noexc56.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !589
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !457, !invariant.load !16, !alias.scope !583, !noalias !612
  %i.bc = add nsw i64 %i.bb, -1
  %i.bd = and i64 %i.bc, -16
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !invariant.load !16, !alias.scope !583, !noalias !612, !nonnull !16
  %i.bi = invoke noundef nonnull ptr %i.bh(ptr noundef nonnull %i.bf)
          to label %bb.s unwind label %.thread126.i, !noalias !612

.thread126.i:                                     ; preds = %bb.bj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i63.i, %bb.e, %bb.d, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread122.i

bb.f:                                             ; preds = %.noexc.i
  %i.bj = load ptr, ptr %i.ay, align 8, !noalias !599, !nonnull !16, !noundef !16 ; 2 uses
  %i.bk = icmp ugt i64 %i.ax, 25
  tail call void @llvm.assume(i1 %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !599
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.bj, ptr noundef nonnull readonly align 1 dereferenceable(26) @15, i64 range(i64 0, -9223372036854775808) 26, i1 false), !noalias !613
  store i64 %i.ax, ptr %i.x, align 8, !noalias !589
  %.sroa.4.0..sroa_idx105.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx105.i, align 8, !noalias !589
  %.sroa.5106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 26, ptr %.sroa.5106.0..sroa_idx.i, align 8, !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !589
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.h unwind label %bb.g, !noalias !612

.body59.i:                                        ; preds = %bb.l, %bb.k, %bb.g
  %.pn45.i = phi { ptr, i32 } [ %i.bu, %bb.k ], [ %i.bl, %bb.g ], [ %i.bv, %bb.l ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x) #43
          to label %.thread122.i unwind label %bb.q, !noalias !612

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %bb.i, %bb.f
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body59.i

bb.h:                                             ; preds = %bb.f
  %i.bm = load i64, ptr %i.q, align 8, !range !15, !noalias !589, !noundef !16
  %i.bn = trunc nuw i64 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !range !17, !noalias !589, !noundef !16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br i1 %i.bn, label %bb.i, label %bb.j, !prof !18

bb.i:                                             ; preds = %bb.h
  %i.br = load i64, ptr %i.bq, align 8, !noalias !589
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bp, i64 %i.br) #39
          to label %bb.r unwind label %bb.g, !noalias !612

bb.j:                                             ; preds = %bb.h
  %i.bs = load ptr, ptr %i.bq, align 8, !noalias !589, !nonnull !16, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !589
  store i64 %i.bp, ptr %i.w, align 8, !noalias !589
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.bs, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !589
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %.sroa.527.0..sroa_idx.i, align 8, !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !589
  store ptr %i.x, ptr %i.v, align 8, !noalias !589
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.431.0..sroa_idx.i, align 8, !noalias !589
  %i.bt = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.w, ptr %i.bt, align 8, !noalias !589
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.435.0..sroa_idx.i, align 8, !noalias !589
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull @10, ptr noundef nonnull %i.v)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit58.i unwind label %bb.k, !noalias !612

bb.k:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #43
          to label %.body59.i unwind label %bb.q, !noalias !612

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit58.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !589
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.l, !noalias !612

bb.l:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit58.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body59.i unwind label %bb.m, !noalias !612

bb.m:                                             ; preds = %bb.l
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !612
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit58.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.g, !noalias !612

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !589
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i63.i unwind label %bb.n, !noalias !612

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.thread122.i unwind label %bb.o, !noalias !612

bb.o:                                             ; preds = %bb.n
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !612
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i63.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit67.i unwind label %.thread126.i, !noalias !612

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit67.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i63.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !614
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit91.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit67.i
  %.sroa.772.0 = phi i64 [ 7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit67.i ], [ %.sroa.6.i.sroa.0.0.copyload85, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit91.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.z)
          to label %bb.bq unwind label %bb.b, !noalias !612

bb.q:                                             ; preds = %bb.cc, %bb.ca, %.thread.i, %.thread122.i, %.body.thread133.i, %bb.t, %bb.k, %.body59.i
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !615
  unreachable

bb.r:                                             ; preds = %bb.i
  unreachable

bb.s:                                             ; preds = %bb.e
  store ptr %i.bi, ptr %i.u, align 8, !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !589
  %i.ca = load ptr, ptr %i.aa, align 8, !noalias !589, !nonnull !16, !noundef !16
  %i.cb = load ptr, ptr %i.an, align 8, !noalias !589, !nonnull !16, !align !456, !noundef !16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !range !457, !invariant.load !16, !noalias !612
  %i.ce = add nsw i64 %i.cd, -1
  %i.cf = and i64 %i.ce, -16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !invariant.load !16, !noalias !612, !nonnull !16
  %i.ck = invoke noundef align 8 ptr %i.cj(ptr noundef nonnull %i.ch)
          to label %bb.v unwind label %bb.u, !noalias !612

.body.thread.i:                                   ; preds = %.body.thread133.i, %bb.bm, %bb.bg, %.body.i, %bb.bc, %bb.az, %bb.u
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body136.i, %.body.thread133.i ], [ %lpad.thr_comm.split-lp139.i, %.body.i ], [ %i.co, %bb.u ], [ %i.fi, %bb.bg ], [ %i.ez, %bb.az ], [ %i.fb, %bb.bc ], [ %i.fr, %bb.bm ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %i.cl = load ptr, ptr %i.u, align 8, !alias.scope !622, !noalias !589, !nonnull !16, !noundef !16
  %i.cm = atomicrmw sub ptr %i.cl, i64 1 release, align 8, !noalias !623
  %i.cn = icmp eq i64 %i.cm, 1
  br i1 %i.cn, label %bb.t, label %.thread122.i

bb.t:                                             ; preds = %.body.thread.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #40
          to label %.thread122.i unwind label %bb.q, !noalias !612

bb.u:                                             ; preds = %bb.v, %bb.s
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.v:                                             ; preds = %bb.s
  %i.cp = load ptr, ptr %i.u, align 8, !noalias !589, !nonnull !16, !noundef !16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !612, !noundef !16
  invoke void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common23functional_dependenciesNtB5_22FunctionalDependencies20new_from_constraints(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.ck, i64 noundef %i.cr)
          to label %bb.w unwind label %bb.u, !noalias !612

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !589
  %i.cs = load i64, ptr %4, align 8, !range !17, !alias.scope !585, !noalias !624, !noundef !16
  %.not.i = icmp eq i64 %i.cs, -9223372036854775808
  br i1 %.not.i, label %bb.ai, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !589
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val54.i = load ptr, ptr %i.ct, align 8, !alias.scope !585, !noalias !624, !nonnull !16, !noundef !16 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val55.i = load i64, ptr %i.cu, align 8, !alias.scope !585, !noalias !624, !noundef !16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !628
  %i.cv = icmp ult i64 %.val55.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.cv)
  invoke void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common23functional_dependenciesNtB5_22FunctionalDependencies31project_functional_dependencies(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val54.i, i64 noundef %.val55.i, i64 noundef %.val55.i)
          to label %.noexc69.i unwind label %.body.thread140.i, !noalias !612

.noexc69.i:                                       ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !628
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val54.i, i64 %.val55.i
  store ptr %.val54.i, ptr %i.i, align 8, !noalias !628
  %i.cx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.cw, ptr %i.cx, align 8, !noalias !628
  %i.cy = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.z, ptr %i.cy, align 8, !noalias !628
  %i.cz = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.u, ptr %i.cz, align 8, !noalias !628
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecTINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEINtB2_12SpecFromIterBU_INtNtNtNtB10_4iter8adapters3map3MapINtNtNtB10_5slice4iter4IterjENCNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5i_9TableScan7try_newB1x_E00EE9from_iterCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.i)
          to label %bb.y unwind label %.thread5.i.i, !noalias !630

.thread5.i.i:                                     ; preds = %.noexc69.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.y:                                             ; preds = %.noexc69.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !628
  %i.db = load ptr, ptr %i.u, align 8, !noalias !628, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !628
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dc)
          to label %bb.aa unwind label %bb.ag, !noalias !630

bb.z:                                             ; preds = %bb.aa
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !628
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema17new_with_metadata(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.ab unwind label %bb.z, !noalias !630

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !628
  %i.de = load i64, ptr %i.k, align 8, !range !17, !noalias !628, !noundef !16 ; 2 uses
  %i.df = icmp eq i64 %i.de, -9223372036854775808
  %i.dg = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.dg, i64 40, i1 false), !noalias !628
  br i1 %i.df, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !628
  %i.dh = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dh, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, i64 40, i1 false), !noalias !631
  store i64 -9223372036854775808, ptr %i.p, align 8, !alias.scope !625, !noalias !631
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.ad, !noalias !630

bb.ad:                                            ; preds = %bb.ac
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.thread133.i unwind label %bb.ae, !noalias !630

bb.ae:                                            ; preds = %bb.ad
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !630
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.ac
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.bf unwind label %.body.thread140.i, !noalias !612

bb.af:                                            ; preds = %bb.ab
  %.sroa.68.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.68.0.copyload.i.i = load i64, ptr %.sroa.68.0..sroa_idx.i.i, align 8, !noalias !628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !628
  store i64 %i.de, ptr %i.g, align 8, !noalias !628
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, i64 40, i1 false), !noalias !628
  %.sroa.8.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %.sroa.68.0.copyload.i.i, ptr %.sroa.8.0..sroa_idx3.i.i, align 8, !noalias !628
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !628
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema28with_functional_dependencies(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc74.i unwind label %.body.thread140.i, !noalias !612

.noexc74.i:                                       ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !628
  br label %bb.bf

bb.ag:                                            ; preds = %bb.y
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.j) #43
          to label %.thread.i.i unwind label %bb.ah, !noalias !630

bb.ah:                                            ; preds = %.thread.i.i, %bb.ag
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !630
  unreachable

.thread.i.i:                                      ; preds = %bb.ag, %bb.z, %.thread5.i.i
  %.pn4.i.i = phi { ptr, i32 } [ %i.da, %.thread5.i.i ], [ %i.dd, %bb.z ], [ %i.dk, %bb.ag ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.l) #43
          to label %.body.thread133.i unwind label %bb.ah, !noalias !630

bb.ai:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !589
  %i.dm = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.z, ptr %i.dm, align 8, !noalias !589
  %i.dn = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.u, ptr %i.dn, align 8, !noalias !589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false), !noalias !589
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i75.i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !637
  %i.do = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !alias.scope !635, !noalias !638, !nonnull !16, !align !456, !noundef !16 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !639)
  call void @llvm.experimental.noalias.scope.decl(metadata !642)
  %i.dq = load i64, ptr %i.dp, align 8, !range !441, !alias.scope !642, !noalias !644, !noundef !16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !642, !noalias !644, !nonnull !16, !noundef !16 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !642, !noalias !644, !noundef !16 ; 3 uses
  %i.dv = atomicrmw add ptr %i.ds, i64 1 monotonic, align 8, !noalias !645
  %i.dw = icmp slt i64 %i.dv, 0                   ; 3 uses
  %.sink18.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink18.i.sroa.gep10.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sink15.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sink15.i.sroa.gep11.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  switch i64 %i.dq, label %default.unreachable [
    i64 0, label %bb.aj
    i64 1, label %bb.ak
    i64 2, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.dw, label %bb.am, label %bb.aw

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.dw, label %bb.ao, label %bb.an

bb.al:                                            ; preds = %bb.ai
  br i1 %i.dw, label %bb.ar, label %bb.aq

bb.am:                                            ; preds = %bb.aj
  call void @llvm.trap()
  unreachable

.sink.split.i.i.i:                                ; preds = %bb.au, %bb.an
  %.sink18.i.sroa.phi.i.i = phi ptr [ %.sink18.i.sroa.gep.i.i, %bb.au ], [ %.sink18.i.sroa.gep10.i.i, %bb.an ]
  %.sink16.i.i.i = phi ptr [ %i.ee, %bb.au ], [ %i.ds, %bb.an ]
  %.sink15.i.sroa.phi.i.i = phi ptr [ %.sink15.i.sroa.gep.i.i, %bb.au ], [ %.sink15.i.sroa.gep11.i.i, %bb.an ]
  %.sink13.i.i.i = phi i64 [ %i.eg, %bb.au ], [ %i.du, %bb.an ]
  %.sink12.ph.i.i.i = phi i64 [ 40, %bb.au ], [ 24, %bb.an ]
  %.sink10.ph.i.i.i = phi ptr [ %i.ek, %bb.au ], [ %i.dy, %bb.an ]
  %.sink9.ph.i.i.i = phi i64 [ 48, %bb.au ], [ 32, %bb.an ]
  %.sink7.ph.i.i.i = phi i64 [ %i.em, %bb.au ], [ %i.ea, %bb.an ]
  store ptr %.sink16.i.i.i, ptr %.sink18.i.sroa.phi.i.i, align 8, !alias.scope !639, !noalias !646
  store i64 %.sink13.i.i.i, ptr %.sink15.i.sroa.phi.i.i, align 8, !alias.scope !639, !noalias !646
  br label %bb.aw

bb.an:                                            ; preds = %bb.ak
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !642, !noalias !644, !nonnull !16, !noundef !16 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !642, !noalias !644, !noundef !16
  %i.eb = atomicrmw add ptr %i.dy, i64 1 monotonic, align 8, !noalias !645
  %i.ec = icmp slt i64 %i.eb, 0
  br i1 %i.ec, label %bb.ap, label %.sink.split.i.i.i

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.trap()
  unreachable

bb.ap:                                            ; preds = %bb.an
  call void @llvm.trap()
  unreachable

bb.aq:                                            ; preds = %bb.al
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !alias.scope !642, !noalias !644, !nonnull !16, !noundef !16 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !642, !noalias !644, !noundef !16
  %i.eh = atomicrmw add ptr %i.ee, i64 1 monotonic, align 8, !noalias !645
  %i.ei = icmp slt i64 %i.eh, 0
  br i1 %i.ei, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.al
  call void @llvm.trap()
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.ek = load ptr, ptr %i.ej, align 8, !alias.scope !642, !noalias !644, !nonnull !16, !noundef !16 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !642, !noalias !644, !noundef !16
  %i.en = atomicrmw add ptr %i.ek, i64 1 monotonic, align 8, !noalias !645
  %i.eo = icmp slt i64 %i.en, 0
  br i1 %i.eo, label %bb.av, label %bb.au

bb.at:                                            ; preds = %bb.aq
  call void @llvm.trap()
  unreachable

bb.au:                                            ; preds = %bb.as
  store ptr %i.ds, ptr %.sink18.i.sroa.gep10.i.i, align 8, !alias.scope !639, !noalias !646
  store i64 %i.du, ptr %.sink15.i.sroa.gep11.i.i, align 8, !alias.scope !639, !noalias !646
  br label %.sink.split.i.i.i

bb.av:                                            ; preds = %bb.as
  call void @llvm.trap()
  unreachable

bb.aw:                                            ; preds = %.sink.split.i.i.i, %bb.aj
  %.sink12.i.i.i = phi i64 [ 8, %bb.aj ], [ %.sink12.ph.i.i.i, %.sink.split.i.i.i ]
  %.sink10.i.i.i = phi ptr [ %i.ds, %bb.aj ], [ %.sink10.ph.i.i.i, %.sink.split.i.i.i ]
  %.sink9.i.i.i = phi i64 [ 16, %bb.aj ], [ %.sink9.ph.i.i.i, %.sink.split.i.i.i ]
  %.sink7.i.i.i = phi i64 [ %i.du, %bb.aj ], [ %.sink7.ph.i.i.i, %.sink.split.i.i.i ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink12.i.i.i
  store ptr %.sink10.i.i.i, ptr %i.ep, align 8, !alias.scope !639, !noalias !646
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink9.i.i.i
  store i64 %.sink7.i.i.i, ptr %i.eq, align 8, !alias.scope !639, !noalias !646
  store i64 %i.dq, ptr %i.c, align 8, !alias.scope !639, !noalias !646
  %i.er = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !635, !noalias !638, !nonnull !16, !align !456, !noundef !16
  %i.et = load ptr, ptr %i.es, align 8, !noalias !647, !nonnull !16, !noundef !16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  invoke void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB3_8DFSchema25try_from_qualified_schemaNtNtB5_15table_reference14TableReferenceECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.eu)
          to label %bb.ax unwind label %bb.bc, !noalias !647

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !637
  %i.ev = load i64, ptr %i.d, align 8, !range !17, !noalias !637, !noundef !16 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, -9223372036854775808
  %i.ex = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75.i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.ex, i64 40, i1 false), !noalias !637
  br i1 %i.ew, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !637
  %i.ey = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ey, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75.i.a, i64 40, i1 false), !noalias !648
  store i64 -9223372036854775808, ptr %i.s, align 8, !alias.scope !632, !noalias !648
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i75.i.a)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.az, !noalias !649

bb.az:                                            ; preds = %bb.ay
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %.body.thread.i unwind label %bb.ba, !noalias !649

bb.ba:                                            ; preds = %bb.az
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !649
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.ay
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %bb.be unwind label %.body.i, !noalias !612

bb.bb:                                            ; preds = %bb.ax
  %.sroa.67.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.67.0.copyload.i.i = load i64, ptr %.sroa.67.0..sroa_idx.i.i, align 8, !noalias !637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !637
  store i64 %i.ev, ptr %i.b, align 8, !noalias !637
  %.sroa.6.0..sroa_idx2.i78.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx2.i78.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75.i.a, i64 40, i1 false), !noalias !637
  %.sroa.8.0..sroa_idx3.i79.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %.sroa.67.0.copyload.i.i, ptr %.sroa.8.0..sroa_idx3.i79.i, align 8, !noalias !637
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i75.i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 24, i1 false), !noalias !638
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema28with_functional_dependencies(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc84.i unwind label %.body.i, !noalias !612

.noexc84.i:                                       ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !637
  br label %bb.be

bb.bc:                                            ; preds = %bb.aw
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o) #43
          to label %.body.thread.i unwind label %bb.bd, !noalias !649

bb.bd:                                            ; preds = %bb.bc
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !649
  unreachable

.body.thread140.i:                                ; preds = %bb.af, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %bb.x
  %lpad.thr_comm138.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread133.i

.body.i:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks.exit.i85.i, %bb.bb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %lpad.thr_comm.split-lp139.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.be:                                            ; preds = %.noexc84.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !589
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks.exit.i85.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !589
  %i.fd = load i64, ptr %i.s, align 8, !range !17, !noalias !589, !noundef !16 ; 2 uses
  %i.fe = icmp eq i64 %i.fd, -9223372036854775808
  %i.ff = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.6.i.sroa.0.0.copyload85 = load i64, ptr %i.ff, align 8, !noalias !589 ; 2 uses
  %.sroa.6.i.sroa.7.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.sroa.7.0..sroa_idx86, i64 32, i1 false), !noalias !589
  br i1 %i.fe, label %bb.bi, label %bb.bk

bb.bf:                                            ; preds = %.noexc74.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 56, i1 false), !noalias !589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !589
  %i.fg = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.z, ptr %i.fg, align 8, !noalias !589
  %i.fh = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.u, ptr %i.fh, align 8, !noalias !589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !589
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks.exit.i85.i unwind label %bb.bg, !noalias !612

bb.bg:                                            ; preds = %bb.bf
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %.body.thread.i unwind label %bb.bh, !noalias !612

bb.bh:                                            ; preds = %bb.bg
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !612
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks.exit.i85.i: ; preds = %bb.bf
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %.body.i, !noalias !612

bb.bi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.sroa.7, i64 32, i1 false), !noalias !614
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !589
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %i.fk = load ptr, ptr %i.u, align 8, !alias.scope !656, !noalias !589, !nonnull !16, !noundef !16
  %i.fl = atomicrmw sub ptr %i.fk, i64 1 release, align 8, !noalias !657
  %i.fm = icmp eq i64 %i.fl, 1
  br i1 %i.fm, label %bb.bj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit91.i

bb.bj:                                            ; preds = %bb.bi
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit91.i unwind label %.thread126.i, !noalias !612

bb.bk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %.sroa.640.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.640.0.copyload.i = load i64, ptr %.sroa.640.0..sroa_idx.i, align 8, !noalias !589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !589
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !589
  store i64 %.sroa.6.i.sroa.0.0.copyload85, ptr %.sroa.212.0..sroa_idx.i, align 8, !noalias !589
  %.sroa.6.i.sroa.7.0..sroa.212.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.sroa.7.0..sroa.212.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.sroa.7, i64 32, i1 false), !noalias !589
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.7)
  store i64 1, ptr %i.n, align 8, !noalias !589
  %i.fn = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %i.fn, align 8, !noalias !589
  %i.fo = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 %i.fd, ptr %i.fo, align 8, !noalias !589
  %.sroa.313.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i64 %.sroa.640.0.copyload.i, ptr %.sroa.313.0..sroa_idx.i, align 8, !noalias !589
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !658
  %i.fp = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 337) 72, i64 noundef range(i64 8, 17) 8) #42, !noalias !658 ; 3 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.bl, label %bb.bo, !prof !18

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #39
          to label %.noexc92.i unwind label %bb.bm, !noalias !612

.noexc92.i:                                       ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.fo)
          to label %.body.thread.i unwind label %bb.bn, !noalias !612

bb.bn:                                            ; preds = %bb.bm
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !612
  unreachable

bb.bo:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fp, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false), !noalias !612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 56, i1 false), !noalias !614
  %i.ft = load ptr, ptr %i.aa, align 8, !noalias !589, !nonnull !16, !noundef !16 ; 2 uses
  %i.fu = load ptr, ptr %i.an, align 8, !noalias !589, !nonnull !16, !align !456, !noundef !16 ; 3 uses
  %.sroa.12.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.96..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !alias.scope !661, !noalias !662
  %.sroa.12.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !alias.scope !663, !noalias !664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !589
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %i.fv = load ptr, ptr %i.u, align 8, !alias.scope !671, !noalias !589, !nonnull !16, !noundef !16
  %i.fw = atomicrmw sub ptr %i.fv, i64 1 release, align 8, !noalias !672
  %i.fx = icmp eq i64 %i.fw, 1
  br i1 %i.fx, label %bb.bp, label %bb.ce

bb.bp:                                            ; preds = %bb.bo
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #40, !noalias !612
  br label %bb.ce

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit91.i: ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !589
  br label %bb.p

bb.bq:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !589
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.bs unwind label %bb.br, !noalias !673

bb.br:                                            ; preds = %bb.bq
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.ca unwind label %bb.bt, !noalias !673

bb.bs:                                            ; preds = %bb.bq
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.bu, !noalias !673

bb.bt:                                            ; preds = %bb.br
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !673
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.bs
  %i.gb = load i64, ptr %4, align 8, !range !17, !alias.scope !674, !noalias !624, !noundef !16
  %i.gc = icmp eq i64 %i.gb, -9223372036854775808
  br i1 %i.gc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %bb.bv

bb.bv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.bw, !noalias !615

bb.bw:                                            ; preds = %bb.bv
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.cb unwind label %bb.bx, !noalias !615

bb.bx:                                            ; preds = %bb.bw
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !615
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.bv
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.by, !noalias !615

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %i.gg = load ptr, ptr %i.aa, align 8, !alias.scope !683, !noalias !589, !nonnull !16, !noundef !16
  %i.gh = atomicrmw sub ptr %i.gg, i64 1 release, align 8, !noalias !684
  %i.gi = icmp eq i64 %i.gh, 1
  br i1 %i.gi, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #40, !noalias !615
  br label %bb.cd

.body.thread133.i:                                ; preds = %.body.thread140.i, %.thread.i.i, %bb.ad
  %eh.lpad-body136.i = phi { ptr, i32 } [ %lpad.thr_comm138.i, %.body.thread140.i ], [ %i.di, %bb.ad ], [ %.pn4.i.i, %.thread.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.t) #43
          to label %.body.thread.i unwind label %bb.q, !noalias !612

.thread122.i:                                     ; preds = %bb.t, %.body.thread.i, %bb.n, %.body59.i, %.thread126.i
  %.pn45.pn121.i = phi { ptr, i32 } [ %i.bx, %bb.n ], [ %lpad.thr_comm.i, %.thread126.i ], [ %.pn45.i, %.body59.i ], [ %.pn.i, %bb.t ], [ %.pn.i, %.body.thread.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.z) #43
          to label %.thread.i unwind label %bb.q, !noalias !612

.thread.i:                                        ; preds = %.thread122.i, %bb.b
  %.pn45.pn.pn115.i = phi { ptr, i32 } [ %i.at, %bb.b ], [ %.pn45.pn121.i, %.thread122.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5) #43
          to label %bb.ca unwind label %bb.q, !noalias !673

bb.ca:                                            ; preds = %.thread.i, %bb.bu, %bb.br
  %.pn45.pn.pn.pn.ph.i = phi { ptr, i32 } [ %.pn45.pn.pn115.i, %.thread.i ], [ %i.ga, %bb.bu ], [ %i.fy, %bb.br ]
end_hunk_1
begin_hunk_2_@_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder23scan_with_filters_innerNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !693)
  call void @llvm.experimental.noalias.scope.decl(metadata !696)
  %i.hv = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !699, !nonnull !16, !noundef !16
  %i.hw = atomicrmw sub ptr %i.hv, i64 1 release, align 8, !noalias !699
  %i.hx = icmp eq i64 %i.hw, 1
  br i1 %i.hx, label %bb.cw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.cw:                                            ; preds = %bb.cv
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.cz

bb.cx:                                            ; preds = %bb.cu, %bb.cr
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %i.hy = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !706, !nonnull !16, !noundef !16
  %i.hz = atomicrmw sub ptr %i.hy, i64 1 release, align 8, !noalias !706
  %i.ia = icmp eq i64 %i.hz, 1
  br i1 %i.ia, label %bb.cy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit64

bb.cy:                                            ; preds = %bb.cx
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit64 unwind label %bb.de

bb.cz:                                            ; preds = %bb.dr, %bb.dp, %bb.da, %bb.cw, %.critedge61, %bb.dq, %.thread112, %bb.dj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.db
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.cv, %bb.cw, %bb.de
  %.pn56 = phi { ptr, i32 } [ %i.ig, %bb.de ], [ %i.hu, %bb.cw ], [ %i.hu, %bb.cv ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !707)
  call void @llvm.experimental.noalias.scope.decl(metadata !710)
  %i.ic = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !713, !nonnull !16, !noundef !16
  %i.id = atomicrmw sub ptr %i.ic, i64 1 release, align 8, !noalias !713
  %i.ie = icmp eq i64 %i.id, 1
  br i1 %i.ie, label %bb.da, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.da:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.cz

bb.db:                                            ; preds = %bb.co
  %lpad.thr_comm.split-lp105 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj) #43
          to label %.thread112 unwind label %bb.cz

bb.dc:                                            ; preds = %bb.cn
  %i.if = extractvalue { ptr, i1 } %i.hm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, i64 56, i1 false)
  invoke void @_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder5aliasNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %i.if, i1 zeroext poison, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ac)
          to label %bb.dd unwind label %.thread98

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.cu

bb.de:                                            ; preds = %bb.cy
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit64: ; preds = %bb.cx, %bb.cy
  call void @llvm.experimental.noalias.scope.decl(metadata !714)
  call void @llvm.experimental.noalias.scope.decl(metadata !717)
  %i.ih = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !720, !nonnull !16, !noundef !16
  %i.ii = atomicrmw sub ptr %i.ih, i64 1 release, align 8, !noalias !720
  %i.ij = icmp eq i64 %i.ii, 1
  br i1 %i.ij, label %bb.df, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit67

bb.df:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit64
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit67 unwind label %bb.dg

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.da, %bb.dg
  %.pn58 = phi { ptr, i32 } [ %i.ik, %bb.dg ], [ %.pn56, %bb.da ], [ %.pn56, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gm) #43
          to label %common.resume unwind label %bb.cz

bb.dg:                                            ; preds = %bb.df
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit67: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit64, %bb.df
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.dh

bb.dh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit67
  %i.il = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gm)
          to label %common.resume unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit67
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gm)
  br label %bb.dm

bb.dj:                                            ; preds = %bb.cm
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(320) %i.ak) #43
          to label %.thread112 unwind label %bb.cz

bb.dk:                                            ; preds = %bb.ch, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.in = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.in, ptr noundef nonnull align 8 dereferenceable(144) %i.am, i64 144, i1 false)
  store i64 19, ptr %i.ab, align 16
  %i.io = invoke { ptr, i1 } @_RNvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB4_18LogicalPlanBuilder3new(ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(320) %i.ab)
          to label %bb.dl unwind label %bb.cg     ; 2 uses

bb.dl:                                            ; preds = %bb.dk
  %i.ip = extractvalue { ptr, i1 } %i.io, 0
  %i.iq = extractvalue { ptr, i1 } %i.io, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ip, ptr %i.ir, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.it = zext i1 %i.iq to i8
  store i8 %i.it, ptr %i.is, align 8
  store i64 20, ptr %0, align 8
  br label %bb.dm

bb.dm:                                            ; preds = %bb.cd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  ret void

bb.dn:                                            ; preds = %.thread112, %.thread
  %.pn.pn121 = phi { ptr, i32 } [ %.pn.pn122, %.thread112 ], [ %.pn.pn, %.thread ] ; 2 uses
  %.sroa.035.0119 = phi i8 [ %.sroa.035.0120, %.thread112 ], [ %.sroa.035.0, %.thread ]
  %.sroa.034.0117 = phi i1 [ %.sroa.034.0118, %.thread112 ], [ %.sroa.034.0, %.thread ]
  br i1 %.sroa.034.0117, label %bb.do, label %common.resume

.thread112:                                       ; preds = %bb.db, %bb.dj, %.thread
  %.pn.pn122 = phi { ptr, i32 } [ %.pn.pn, %.thread ], [ %lpad.thr_comm.split-lp, %bb.dj ], [ %lpad.thr_comm.split-lp105, %bb.db ]
  %.sroa.035.0120 = phi i8 [ %.sroa.035.0, %.thread ], [ 0, %bb.dj ], [ 0, %bb.db ]
  %.sroa.034.0118 = phi i1 [ %.sroa.034.0, %.thread ], [ true, %bb.dj ], [ true, %bb.db ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx) #43
          to label %bb.dn unwind label %bb.cz

bb.do:                                            ; preds = %bb.dn
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  call void @llvm.experimental.noalias.scope.decl(metadata !724)
  %i.iu = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !727, !nonnull !16, !noundef !16
  %i.iv = atomicrmw sub ptr %i.iu, i64 1 release, align 8, !noalias !727
  %i.iw = icmp eq i64 %i.iv, 1
  br i1 %i.iw, label %bb.dp, label %.noexc68

bb.dp:                                            ; preds = %bb.do
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx) #40
          to label %.noexc68 unwind label %bb.cz

.noexc68:                                         ; preds = %bb.dp, %bb.do
  %i.ix = getelementptr inbounds nuw i8, ptr %i.am, i64 96 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !range !17, !noundef !16
  %i.iz = icmp ne i64 %i.iy, -9223372036854775808
  %i.ja = trunc nuw i8 %.sroa.035.0119 to i1
  %or.cond = select i1 %i.iz, i1 %i.ja, i1 false
  br i1 %or.cond, label %bb.dq, label %.critedge

bb.dq:                                            ; preds = %.noexc68
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ix) #43
          to label %.critedge unwind label %bb.cz

.critedge:                                        ; preds = %.noexc68, %bb.dq
  call void @llvm.experimental.noalias.scope.decl(metadata !728)
  call void @llvm.experimental.noalias.scope.decl(metadata !731)
  %i.jb = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !734, !nonnull !16, !noundef !16
  %i.jc = atomicrmw sub ptr %i.jb, i64 1 release, align 8, !noalias !734
  %i.jd = icmp eq i64 %i.jc, 1
  br i1 %i.jd, label %bb.dr, label %.critedge61

bb.dr:                                            ; preds = %.critedge
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx) #40
          to label %.critedge61 unwind label %bb.cz

.critedge61:                                      ; preds = %bb.dr, %.critedge
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gm) #43
          to label %common.resume unwind label %bb.cz
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder23scan_with_filters_innerReECsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noundef nonnull %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %4, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %5, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %6, i64 noundef range(i64 0, 2) %7, i64 %8) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.6.i75.i.a = alloca [40 x i8], align 8    ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.6.i.i = alloca [40 x i8], align 8        ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [72 x i8], align 8                ; 9 uses
  %i.o = alloca [40 x i8], align 8                ; 10 uses
  %i.p = alloca [56 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [40 x i8], align 8                ; 13 uses
  %i.s = alloca [56 x i8], align 8                ; 11 uses
  %.sroa.6.i.sroa.7 = alloca [32 x i8], align 8   ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [8 x i8], align 8                 ; 15 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  %i.x = alloca [24 x i8], align 8                ; 10 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [56 x i8], align 8                ; 12 uses
  %i.aa = alloca [16 x i8], align 8               ; 12 uses
  %i.ab = alloca [320 x i8], align 16             ; 5 uses
  %i.ac = alloca [56 x i8], align 8               ; 4 uses
  %i.ad = alloca [320 x i8], align 16             ; 4 uses
  %i.ae = alloca [56 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [320 x i8], align 16             ; 4 uses
  %i.ah = alloca [40 x i8], align 8               ; 8 uses
  %i.ai = alloca [40 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [320 x i8], align 16             ; 11 uses
  %i.al = alloca [320 x i8], align 16             ; 4 uses
  %.sroa.12 = alloca [104 x i8], align 8          ; 11 uses
  %.sroa.6.sroa.7 = alloca [32 x i8], align 8     ; 7 uses
  %i.am = alloca [144 x i8], align 8              ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !740)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %3, ptr %i.aa, align 8, !noalias !742
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  store ptr %4, ptr %i.an, align 8, !noalias !742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !742
  invoke void @_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceINtNtCsbvkFyIu7lgC_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertReINtB5_4IntoNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE4intoCsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.b, !noalias !745

bb.b:                                             ; preds = %bb.p, %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertReINtB5_4IntoNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE4intoCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.a
  %i.ap = load i64, ptr %i.z, align 8, !range !441, !noalias !742, !noundef !16
  %switch.idx.mult.i = shl nuw nsw i64 %i.ap, 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 %switch.idx.mult.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noalias !742, !noundef !16
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.c, label %bb.e

default.unreachable:                              ; preds = %bb.ai
  unreachable

bb.c:                                             ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertReINtB5_4IntoNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE4intoCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !746
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef range(i64 0, -9223372036854775808) 26, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread126.i, !noalias !745

.noexc.i:                                         ; preds = %bb.c
  %i.au = load i64, ptr %i.m, align 8, !range !15, !noalias !746, !noundef !16
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !17, !noalias !746, !noundef !16 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.av, label %bb.d, label %bb.f, !prof !18

bb.d:                                             ; preds = %.noexc.i
  %i.az = load i64, ptr %i.ay, align 8, !noalias !746
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ax, i64 %i.az) #39
          to label %.noexc56.i unwind label %.thread126.i, !noalias !745

.noexc56.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertReINtB5_4IntoNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE4intoCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !742
  %i.ba = load ptr, ptr %i.aa, align 8, !noalias !742, !nonnull !16, !noundef !16
  %i.bb = load ptr, ptr %i.an, align 8, !noalias !742, !nonnull !16, !align !456, !noundef !16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !457, !invariant.load !16, !noalias !745
  %i.be = add nsw i64 %i.bd, -1
  %i.bf = and i64 %i.be, -16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !invariant.load !16, !noalias !745, !nonnull !16
  %i.bk = invoke noundef nonnull ptr %i.bj(ptr noundef nonnull %i.bh)
          to label %bb.s unwind label %.thread126.i, !noalias !745

.thread126.i:                                     ; preds = %bb.bj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i63.i, %bb.e, %bb.d, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread122.i

bb.f:                                             ; preds = %.noexc.i
  %i.bl = load ptr, ptr %i.ay, align 8, !noalias !746, !nonnull !16, !noundef !16 ; 2 uses
  %i.bm = icmp ugt i64 %i.ax, 25
  call void @llvm.assume(i1 %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.bl, ptr noundef nonnull readonly align 1 dereferenceable(26) @15, i64 range(i64 0, -9223372036854775808) 26, i1 false), !noalias !759
  store i64 %i.ax, ptr %i.x, align 8, !noalias !742
  %.sroa.4.0..sroa_idx105.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.bl, ptr %.sroa.4.0..sroa_idx105.i, align 8, !noalias !742
  %.sroa.5106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 26, ptr %.sroa.5106.0..sroa_idx.i, align 8, !noalias !742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !742
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.h unwind label %bb.g, !noalias !745

.body59.i:                                        ; preds = %bb.l, %bb.k, %bb.g
  %.pn45.i = phi { ptr, i32 } [ %i.bw, %bb.k ], [ %i.bn, %bb.g ], [ %i.bx, %bb.l ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x) #43
          to label %.thread122.i unwind label %bb.q, !noalias !745

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %bb.i, %bb.f
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body59.i

bb.h:                                             ; preds = %bb.f
  %i.bo = load i64, ptr %i.q, align 8, !range !15, !noalias !742, !noundef !16
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !range !17, !noalias !742, !noundef !16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br i1 %i.bp, label %bb.i, label %bb.j, !prof !18

bb.i:                                             ; preds = %bb.h
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !742
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.br, i64 %i.bt) #39
          to label %bb.r unwind label %bb.g, !noalias !745

bb.j:                                             ; preds = %bb.h
  %i.bu = load ptr, ptr %i.bs, align 8, !noalias !742, !nonnull !16, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !742
  store i64 %i.br, ptr %i.w, align 8, !noalias !742
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.bu, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !742
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %.sroa.527.0..sroa_idx.i, align 8, !noalias !742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !742
  store ptr %i.x, ptr %i.v, align 8, !noalias !742
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.431.0..sroa_idx.i, align 8, !noalias !742
  %i.bv = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.w, ptr %i.bv, align 8, !noalias !742
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.435.0..sroa_idx.i, align 8, !noalias !742
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull @10, ptr noundef nonnull %i.v)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit58.i unwind label %bb.k, !noalias !745

bb.k:                                             ; preds = %bb.j
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #43
          to label %.body59.i unwind label %bb.q, !noalias !745

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit58.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !742
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.l, !noalias !745

bb.l:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit58.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body59.i unwind label %bb.m, !noalias !745

bb.m:                                             ; preds = %bb.l
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !745
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit58.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.g, !noalias !745

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !742
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i63.i unwind label %bb.n, !noalias !745

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.thread122.i unwind label %bb.o, !noalias !745

bb.o:                                             ; preds = %bb.n
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !745
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i63.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit67.i unwind label %.thread126.i, !noalias !745

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit67.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i63.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !760
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit91.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit67.i
  %.sroa.772.0 = phi i64 [ 7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit67.i ], [ %.sroa.6.i.sroa.0.0.copyload85, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit91.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.z)
          to label %bb.bq unwind label %bb.b, !noalias !745

bb.q:                                             ; preds = %bb.cd, %bb.cb, %bb.ca, %.thread122.i, %.body.thread133.i, %bb.t, %bb.k, %.body59.i
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !735
  unreachable

bb.r:                                             ; preds = %bb.i
  unreachable

bb.s:                                             ; preds = %bb.e
  store ptr %i.bk, ptr %i.u, align 8, !noalias !742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !742
  %i.cc = load ptr, ptr %i.aa, align 8, !noalias !742, !nonnull !16, !noundef !16
  %i.cd = load ptr, ptr %i.an, align 8, !noalias !742, !nonnull !16, !align !456, !noundef !16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !range !457, !invariant.load !16, !noalias !745
  %i.cg = add nsw i64 %i.cf, -1
  %i.ch = and i64 %i.cg, -16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !16, !noalias !745, !nonnull !16
  %i.cm = invoke noundef align 8 ptr %i.cl(ptr noundef nonnull %i.cj)
          to label %bb.v unwind label %bb.u, !noalias !745

.body.thread.i:                                   ; preds = %.body.thread133.i, %bb.bm, %bb.bg, %.body.i, %bb.bc, %bb.az, %bb.u
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body136.i, %.body.thread133.i ], [ %lpad.thr_comm.split-lp139.i, %.body.i ], [ %i.cq, %bb.u ], [ %i.fk, %bb.bg ], [ %i.fb, %bb.az ], [ %i.fd, %bb.bc ], [ %i.ft, %bb.bm ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !761)
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %i.cn = load ptr, ptr %i.u, align 8, !alias.scope !767, !noalias !742, !nonnull !16, !noundef !16
  %i.co = atomicrmw sub ptr %i.cn, i64 1 release, align 8, !noalias !768
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.t, label %.thread122.i

bb.t:                                             ; preds = %.body.thread.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #40
          to label %.thread122.i unwind label %bb.q, !noalias !745

bb.u:                                             ; preds = %bb.v, %bb.s
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.v:                                             ; preds = %bb.s
  %i.cr = load ptr, ptr %i.u, align 8, !noalias !742, !nonnull !16, !noundef !16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load i64, ptr %i.cs, align 8, !noalias !745, !noundef !16
  invoke void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common23functional_dependenciesNtB5_22FunctionalDependencies20new_from_constraints(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.cm, i64 noundef %i.ct)
          to label %bb.w unwind label %bb.u, !noalias !745

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !742
  %i.cu = load i64, ptr %5, align 8, !range !17, !alias.scope !738, !noalias !769, !noundef !16
  %.not.i = icmp eq i64 %i.cu, -9223372036854775808
  br i1 %.not.i, label %bb.ai, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !742
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val54.i = load ptr, ptr %i.cv, align 8, !alias.scope !738, !noalias !769, !nonnull !16, !noundef !16 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val55.i = load i64, ptr %i.cw, align 8, !alias.scope !738, !noalias !769, !noundef !16 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !770)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !773
  %i.cx = icmp ult i64 %.val55.i, 1152921504606846976
  call void @llvm.assume(i1 %i.cx)
  invoke void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common23functional_dependenciesNtB5_22FunctionalDependencies31project_functional_dependencies(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val54.i, i64 noundef %.val55.i, i64 noundef %.val55.i)
          to label %.noexc69.i unwind label %.body.thread140.i, !noalias !745

.noexc69.i:                                       ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !773
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.val54.i, i64 %.val55.i
  store ptr %.val54.i, ptr %i.i, align 8, !noalias !773
  %i.cz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.cy, ptr %i.cz, align 8, !noalias !773
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.z, ptr %i.da, align 8, !noalias !773
  %i.db = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.u, ptr %i.db, align 8, !noalias !773
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecTINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEINtB2_12SpecFromIterBU_INtNtNtNtB10_4iter8adapters3map3MapINtNtNtB10_5slice4iter4IterjENCNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5i_9TableScan7try_newReE00EE9from_iterCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.i)
          to label %bb.y unwind label %.thread5.i.i, !noalias !775

.thread5.i.i:                                     ; preds = %.noexc69.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.y:                                             ; preds = %.noexc69.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !773
  %i.dd = load ptr, ptr %i.u, align 8, !noalias !773, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !773
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.de)
          to label %bb.aa unwind label %bb.ag, !noalias !775

bb.z:                                             ; preds = %bb.aa
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !773
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema17new_with_metadata(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.ab unwind label %bb.z, !noalias !775

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !773
  %i.dg = load i64, ptr %i.k, align 8, !range !17, !noalias !773, !noundef !16 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, -9223372036854775808
  %i.di = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.di, i64 40, i1 false), !noalias !773
  br i1 %i.dh, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !773
  %i.dj = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dj, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, i64 40, i1 false), !noalias !776
  store i64 -9223372036854775808, ptr %i.p, align 8, !alias.scope !770, !noalias !776
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.ad, !noalias !775

bb.ad:                                            ; preds = %bb.ac
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.thread133.i unwind label %bb.ae, !noalias !775

bb.ae:                                            ; preds = %bb.ad
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !775
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.ac
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.bf unwind label %.body.thread140.i, !noalias !745

bb.af:                                            ; preds = %bb.ab
  %.sroa.68.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.68.0.copyload.i.i = load i64, ptr %.sroa.68.0..sroa_idx.i.i, align 8, !noalias !773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !773
  store i64 %i.dg, ptr %i.g, align 8, !noalias !773
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, i64 40, i1 false), !noalias !773
  %.sroa.8.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %.sroa.68.0.copyload.i.i, ptr %.sroa.8.0..sroa_idx3.i.i, align 8, !noalias !773
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !773
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !773
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema28with_functional_dependencies(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc74.i unwind label %.body.thread140.i, !noalias !745

.noexc74.i:                                       ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !773
  br label %bb.bf

bb.ag:                                            ; preds = %bb.y
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.j) #43
          to label %.thread.i.i unwind label %bb.ah, !noalias !775

bb.ah:                                            ; preds = %.thread.i.i, %bb.ag
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !775
  unreachable

.thread.i.i:                                      ; preds = %bb.ag, %bb.z, %.thread5.i.i
  %.pn4.i.i = phi { ptr, i32 } [ %i.dc, %.thread5.i.i ], [ %i.df, %bb.z ], [ %i.dm, %bb.ag ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.l) #43
          to label %.body.thread133.i unwind label %bb.ah, !noalias !775

bb.ai:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !742
  %i.do = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.z, ptr %i.do, align 8, !noalias !742
  %i.dp = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.u, ptr %i.dp, align 8, !noalias !742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false), !noalias !742
  call void @llvm.experimental.noalias.scope.decl(metadata !777)
  call void @llvm.experimental.noalias.scope.decl(metadata !780)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !742
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i75.i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !782
  %i.dq = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !780, !noalias !783, !nonnull !16, !align !456, !noundef !16 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !784)
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  %i.ds = load i64, ptr %i.dr, align 8, !range !441, !alias.scope !787, !noalias !789, !noundef !16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !787, !noalias !789, !nonnull !16, !noundef !16 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !787, !noalias !789, !noundef !16 ; 3 uses
  %i.dx = atomicrmw add ptr %i.du, i64 1 monotonic, align 8, !noalias !790
  %i.dy = icmp slt i64 %i.dx, 0                   ; 3 uses
  %.sink18.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink18.i.sroa.gep10.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sink15.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sink15.i.sroa.gep11.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  switch i64 %i.ds, label %default.unreachable [
    i64 0, label %bb.aj
    i64 1, label %bb.ak
    i64 2, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.dy, label %bb.am, label %bb.aw

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.dy, label %bb.ao, label %bb.an

bb.al:                                            ; preds = %bb.ai
  br i1 %i.dy, label %bb.ar, label %bb.aq

bb.am:                                            ; preds = %bb.aj
  call void @llvm.trap()
  unreachable

.sink.split.i.i.i:                                ; preds = %bb.au, %bb.an
  %.sink18.i.sroa.phi.i.i = phi ptr [ %.sink18.i.sroa.gep.i.i, %bb.au ], [ %.sink18.i.sroa.gep10.i.i, %bb.an ]
  %.sink16.i.i.i = phi ptr [ %i.eg, %bb.au ], [ %i.du, %bb.an ]
  %.sink15.i.sroa.phi.i.i = phi ptr [ %.sink15.i.sroa.gep.i.i, %bb.au ], [ %.sink15.i.sroa.gep11.i.i, %bb.an ]
  %.sink13.i.i.i = phi i64 [ %i.ei, %bb.au ], [ %i.dw, %bb.an ]
  %.sink12.ph.i.i.i = phi i64 [ 40, %bb.au ], [ 24, %bb.an ]
  %.sink10.ph.i.i.i = phi ptr [ %i.em, %bb.au ], [ %i.ea, %bb.an ]
  %.sink9.ph.i.i.i = phi i64 [ 48, %bb.au ], [ 32, %bb.an ]
  %.sink7.ph.i.i.i = phi i64 [ %i.eo, %bb.au ], [ %i.ec, %bb.an ]
  store ptr %.sink16.i.i.i, ptr %.sink18.i.sroa.phi.i.i, align 8, !alias.scope !784, !noalias !791
  store i64 %.sink13.i.i.i, ptr %.sink15.i.sroa.phi.i.i, align 8, !alias.scope !784, !noalias !791
  br label %bb.aw

bb.an:                                            ; preds = %bb.ak
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !787, !noalias !789, !nonnull !16, !noundef !16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !787, !noalias !789, !noundef !16
  %i.ed = atomicrmw add ptr %i.ea, i64 1 monotonic, align 8, !noalias !790
  %i.ee = icmp slt i64 %i.ed, 0
  br i1 %i.ee, label %bb.ap, label %.sink.split.i.i.i

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.trap()
  unreachable

bb.ap:                                            ; preds = %bb.an
  call void @llvm.trap()
  unreachable

bb.aq:                                            ; preds = %bb.al
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !787, !noalias !789, !nonnull !16, !noundef !16 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !787, !noalias !789, !noundef !16
  %i.ej = atomicrmw add ptr %i.eg, i64 1 monotonic, align 8, !noalias !790
  %i.ek = icmp slt i64 %i.ej, 0
  br i1 %i.ek, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.al
  call void @llvm.trap()
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.el = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.em = load ptr, ptr %i.el, align 8, !alias.scope !787, !noalias !789, !nonnull !16, !noundef !16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !787, !noalias !789, !noundef !16
  %i.ep = atomicrmw add ptr %i.em, i64 1 monotonic, align 8, !noalias !790
  %i.eq = icmp slt i64 %i.ep, 0
  br i1 %i.eq, label %bb.av, label %bb.au

bb.at:                                            ; preds = %bb.aq
  call void @llvm.trap()
  unreachable

bb.au:                                            ; preds = %bb.as
  store ptr %i.du, ptr %.sink18.i.sroa.gep10.i.i, align 8, !alias.scope !784, !noalias !791
  store i64 %i.dw, ptr %.sink15.i.sroa.gep11.i.i, align 8, !alias.scope !784, !noalias !791
  br label %.sink.split.i.i.i

bb.av:                                            ; preds = %bb.as
  call void @llvm.trap()
  unreachable

bb.aw:                                            ; preds = %.sink.split.i.i.i, %bb.aj
  %.sink12.i.i.i = phi i64 [ 8, %bb.aj ], [ %.sink12.ph.i.i.i, %.sink.split.i.i.i ]
  %.sink10.i.i.i = phi ptr [ %i.du, %bb.aj ], [ %.sink10.ph.i.i.i, %.sink.split.i.i.i ]
  %.sink9.i.i.i = phi i64 [ 16, %bb.aj ], [ %.sink9.ph.i.i.i, %.sink.split.i.i.i ]
  %.sink7.i.i.i = phi i64 [ %i.dw, %bb.aj ], [ %.sink7.ph.i.i.i, %.sink.split.i.i.i ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink12.i.i.i
  store ptr %.sink10.i.i.i, ptr %i.er, align 8, !alias.scope !784, !noalias !791
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink9.i.i.i
  store i64 %.sink7.i.i.i, ptr %i.es, align 8, !alias.scope !784, !noalias !791
  store i64 %i.ds, ptr %i.c, align 8, !alias.scope !784, !noalias !791
  %i.et = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !780, !noalias !783, !nonnull !16, !align !456, !noundef !16
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !792, !nonnull !16, !noundef !16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  invoke void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB3_8DFSchema25try_from_qualified_schemaNtNtB5_15table_reference14TableReferenceECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ew)
          to label %bb.ax unwind label %bb.bc, !noalias !792

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !782
  %i.ex = load i64, ptr %i.d, align 8, !range !17, !noalias !782, !noundef !16 ; 2 uses
  %i.ey = icmp eq i64 %i.ex, -9223372036854775808
  %i.ez = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75.i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.ez, i64 40, i1 false), !noalias !782
  br i1 %i.ey, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !782
  %i.fa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fa, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75.i.a, i64 40, i1 false), !noalias !793
  store i64 -9223372036854775808, ptr %i.s, align 8, !alias.scope !777, !noalias !793
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i75.i.a)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newReEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.az, !noalias !794

bb.az:                                            ; preds = %bb.ay
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %.body.thread.i unwind label %bb.ba, !noalias !794

bb.ba:                                            ; preds = %bb.az
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !794
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newReEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.ay
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %bb.be unwind label %.body.i, !noalias !745

bb.bb:                                            ; preds = %bb.ax
  %.sroa.67.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.67.0.copyload.i.i = load i64, ptr %.sroa.67.0..sroa_idx.i.i, align 8, !noalias !782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !782
  store i64 %i.ex, ptr %i.b, align 8, !noalias !782
  %.sroa.6.0..sroa_idx2.i78.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx2.i78.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75.i.a, i64 40, i1 false), !noalias !782
  %.sroa.8.0..sroa_idx3.i79.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %.sroa.67.0.copyload.i.i, ptr %.sroa.8.0..sroa_idx3.i79.i, align 8, !noalias !782
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i75.i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 24, i1 false), !noalias !783
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema28with_functional_dependencies(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc84.i unwind label %.body.i, !noalias !745

.noexc84.i:                                       ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !782
  br label %bb.be

bb.bc:                                            ; preds = %bb.aw
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o) #43
          to label %.body.thread.i unwind label %bb.bd, !noalias !794

bb.bd:                                            ; preds = %bb.bc
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !794
  unreachable

.body.thread140.i:                                ; preds = %bb.af, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %bb.x
  %lpad.thr_comm138.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread133.i

.body.i:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks.exit.i85.i, %bb.bb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newReEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %lpad.thr_comm.split-lp139.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.be:                                            ; preds = %.noexc84.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newReEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !742
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newReEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newReEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks.exit.i85.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !742
  %i.ff = load i64, ptr %i.s, align 8, !range !17, !noalias !742, !noundef !16 ; 2 uses
  %i.fg = icmp eq i64 %i.ff, -9223372036854775808
  %i.fh = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.6.i.sroa.0.0.copyload85 = load i64, ptr %i.fh, align 8, !noalias !742 ; 2 uses
  %.sroa.6.i.sroa.7.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.sroa.7.0..sroa_idx86, i64 32, i1 false), !noalias !742
  br i1 %i.fg, label %bb.bi, label %bb.bk

bb.bf:                                            ; preds = %.noexc74.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 56, i1 false), !noalias !742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !742
  %i.fi = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.z, ptr %i.fi, align 8, !noalias !742
  %i.fj = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.u, ptr %i.fj, align 8, !noalias !742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !742
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks.exit.i85.i unwind label %bb.bg, !noalias !745

bb.bg:                                            ; preds = %bb.bf
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %.body.thread.i unwind label %bb.bh, !noalias !745

bb.bh:                                            ; preds = %bb.bg
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !745
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks.exit.i85.i: ; preds = %bb.bf
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newReEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %.body.i, !noalias !745

bb.bi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newReEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.sroa.7, i64 32, i1 false), !noalias !760
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !742
  call void @llvm.experimental.noalias.scope.decl(metadata !795)
  call void @llvm.experimental.noalias.scope.decl(metadata !798)
  %i.fm = load ptr, ptr %i.u, align 8, !alias.scope !801, !noalias !742, !nonnull !16, !noundef !16
  %i.fn = atomicrmw sub ptr %i.fm, i64 1 release, align 8, !noalias !802
  %i.fo = icmp eq i64 %i.fn, 1
  br i1 %i.fo, label %bb.bj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit91.i

bb.bj:                                            ; preds = %bb.bi
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit91.i unwind label %.thread126.i, !noalias !745

bb.bk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newReEs_0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %.sroa.640.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.640.0.copyload.i = load i64, ptr %.sroa.640.0..sroa_idx.i, align 8, !noalias !742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !742
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !742
  store i64 %.sroa.6.i.sroa.0.0.copyload85, ptr %.sroa.212.0..sroa_idx.i, align 8, !noalias !742
  %.sroa.6.i.sroa.7.0..sroa.212.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.sroa.7.0..sroa.212.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.sroa.7, i64 32, i1 false), !noalias !742
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.7)
  store i64 1, ptr %i.n, align 8, !noalias !742
  %i.fp = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %i.fp, align 8, !noalias !742
  %i.fq = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 %i.ff, ptr %i.fq, align 8, !noalias !742
  %.sroa.313.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i64 %.sroa.640.0.copyload.i, ptr %.sroa.313.0..sroa_idx.i, align 8, !noalias !742
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !803
  %i.fr = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 337) 72, i64 noundef range(i64 8, 17) 8) #42, !noalias !803 ; 3 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bb.bl, label %bb.bo, !prof !18

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #39
          to label %.noexc92.i unwind label %bb.bm, !noalias !745

.noexc92.i:                                       ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.fq)
          to label %.body.thread.i unwind label %bb.bn, !noalias !745

bb.bn:                                            ; preds = %bb.bm
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !745
  unreachable

bb.bo:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fr, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false), !noalias !745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 56, i1 false), !noalias !760
  %i.fv = load ptr, ptr %i.aa, align 8, !noalias !742, !nonnull !16, !noundef !16 ; 2 uses
  %i.fw = load ptr, ptr %i.an, align 8, !noalias !742, !nonnull !16, !align !456, !noundef !16 ; 3 uses
  %.sroa.12.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.96..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !alias.scope !806, !noalias !807
  %.sroa.12.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !alias.scope !808, !noalias !809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !742
  call void @llvm.experimental.noalias.scope.decl(metadata !810)
  call void @llvm.experimental.noalias.scope.decl(metadata !813)
  %i.fx = load ptr, ptr %i.u, align 8, !alias.scope !816, !noalias !742, !nonnull !16, !noundef !16
  %i.fy = atomicrmw sub ptr %i.fx, i64 1 release, align 8, !noalias !817
  %i.fz = icmp eq i64 %i.fy, 1
  br i1 %i.fz, label %bb.bp, label %bb.cf

bb.bp:                                            ; preds = %bb.bo
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #40, !noalias !745
  br label %bb.cf

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit91.i: ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !742
  br label %bb.p

bb.bq:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !742
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.bs unwind label %bb.br, !noalias !806

bb.br:                                            ; preds = %bb.bq
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.cb unwind label %bb.bt, !noalias !806

bb.bs:                                            ; preds = %bb.bq
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %6)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.bu, !noalias !806

bb.bt:                                            ; preds = %bb.br
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !806
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.bs
  %i.gd = load i64, ptr %5, align 8, !range !17, !alias.scope !818, !noalias !769, !noundef !16
  %i.ge = icmp eq i64 %i.gd, -9223372036854775808
  br i1 %i.ge, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %bb.bv

bb.bv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.bw, !noalias !735

bb.bw:                                            ; preds = %bb.bv
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.cc unwind label %bb.bx, !noalias !735

bb.bx:                                            ; preds = %bb.bw
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !735
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.bv
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.by, !noalias !735

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !821)
  call void @llvm.experimental.noalias.scope.decl(metadata !824)
  %i.gi = load ptr, ptr %i.aa, align 8, !alias.scope !827, !noalias !742, !nonnull !16, !noundef !16
  %i.gj = atomicrmw sub ptr %i.gi, i64 1 release, align 8, !noalias !828
  %i.gk = icmp eq i64 %i.gj, 1
  br i1 %i.gk, label %bb.bz, label %bb.ce

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #40, !noalias !735
  br label %bb.ce

.body.thread133.i:                                ; preds = %.body.thread140.i, %.thread.i.i, %bb.ad
  %eh.lpad-body136.i = phi { ptr, i32 } [ %lpad.thr_comm138.i, %.body.thread140.i ], [ %i.dk, %bb.ad ], [ %.pn4.i.i, %.thread.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.t) #43
          to label %.body.thread.i unwind label %bb.q, !noalias !745

.thread122.i:                                     ; preds = %bb.t, %.body.thread.i, %bb.n, %.body59.i, %.thread126.i
  %.pn45.pn121.i = phi { ptr, i32 } [ %i.bz, %bb.n ], [ %lpad.thr_comm.i, %.thread126.i ], [ %.pn45.i, %.body59.i ], [ %.pn.i, %bb.t ], [ %.pn.i, %.body.thread.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.z) #43
          to label %bb.ca unwind label %bb.q, !noalias !745

bb.ca:                                            ; preds = %.thread122.i, %bb.b
  %.pn45.pn.pn.ph.i = phi { ptr, i32 } [ %i.ao, %bb.b ], [ %.pn45.pn121.i, %.thread122.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %6) #43
          to label %bb.cb unwind label %bb.q, !noalias !806

bb.cb:                                            ; preds = %bb.ca, %bb.bu, %bb.br
  %.pn45.pn.pn.pn.ph.i = phi { ptr, i32 } [ %.pn45.pn.pn.ph.i, %bb.ca ], [ %i.gc, %bb.bu ], [ %i.ga, %bb.br ]
end_hunk_2
begin_hunk_3_@_RNvMNtCshmPyUV8PP35_6chrono8datetimeINtB2_8DateTimeNtNtNtCs1N9T06jgEdt_11arrow_array8timezone7private2TzE10to_rfc3339CsdJxlLsGgtXr_16delta_benchmarks:bb.a
          to label %.noexc11 unwind label %bb.c

.noexc11:                                         ; preds = %bb.l
  %i.bp = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5413, !noalias !5399, !nonnull !16, !noundef !16
  %i.bq = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5413, !noalias !5399, !noundef !16 ; 2 uses
  %i.br = icmp sgt i64 %i.bq, -1
  call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq
  store i8 84, ptr %i.bs, align 1, !noalias !5399
  %i.bt = add nuw i64 %i.bn, 1
  store i64 %i.bt, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5413, !noalias !5399
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !alias.scope !5399, !noalias !5396, !noundef !16 ; 3 uses
  %i.bw = urem i32 %i.bv, 60
  %i.bx = udiv i32 %i.bv, 60
  %i.by = udiv i32 %i.bv, 3600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5402
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !alias.scope !5399, !noalias !5396, !noundef !16 ; 3 uses
  %i.cb = icmp ugt i32 %i.ca, 999999999           ; 2 uses
  %i.cc = add i32 %i.ca, -1000000000
  %storemerge.i = select i1 %i.cb, i32 %i.cc, i32 %i.ca ; 6 uses
  %i.cd = zext i1 %i.cb to i32
  %.sroa.04.0.i = add nuw nsw i32 %i.bw, %i.cd
  store i32 %storemerge.i, ptr %i.h, align 4, !noalias !5402
  %i.ce = trunc i32 %i.by to i8
  %i.cf = invoke noundef zeroext i1 @_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i8 noundef %i.ce)
          to label %.noexc12 unwind label %bb.c

.noexc12:                                         ; preds = %.noexc11
  br i1 %i.cf, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.noexc12
  %i.cg = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5418, !noalias !5399, !noundef !16 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, -1
  call void @llvm.assume(i1 %i.ch)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc13 unwind label %bb.c

.noexc13:                                         ; preds = %bb.m
  %i.ci = urem i32 %i.bx, 60
  %i.cj = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5418, !noalias !5399, !nonnull !16, !noundef !16
  %i.ck = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5418, !noalias !5399, !noundef !16 ; 2 uses
  %i.cl = icmp sgt i64 %i.ck, -1
  call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck
  store i8 58, ptr %i.cm, align 1, !noalias !5399
  %i.cn = add nuw i64 %i.cg, 1
  store i64 %i.cn, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5418, !noalias !5399
  %i.co = trunc nuw nsw i32 %i.ci to i8
  %i.cp = invoke noundef zeroext i1 @_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i8 noundef %i.co)
          to label %.noexc14 unwind label %bb.c

.noexc14:                                         ; preds = %.noexc13
  br i1 %i.cp, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.noexc14
  %i.cq = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5423, !noalias !5399, !noundef !16 ; 2 uses
  %i.cr = icmp sgt i64 %i.cq, -1
  call void @llvm.assume(i1 %i.cr)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc15 unwind label %bb.c

.noexc15:                                         ; preds = %bb.n
  %i.cs = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5423, !noalias !5399, !nonnull !16, !noundef !16
  %i.ct = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5423, !noalias !5399, !noundef !16 ; 2 uses
  %i.cu = icmp sgt i64 %i.ct, -1
  call void @llvm.assume(i1 %i.cu)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ct
  store i8 58, ptr %i.cv, align 1, !noalias !5399
  %i.cw = add nuw i64 %i.cq, 1
  store i64 %i.cw, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5423, !noalias !5399
  %i.cx = trunc nuw nsw i32 %.sroa.04.0.i to i8
  %i.cy = invoke noundef zeroext i1 @_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i8 noundef %i.cx)
          to label %.noexc16 unwind label %bb.c

.noexc16:                                         ; preds = %.noexc15
  br i1 %i.cy, label %bb.q, label %bb.p

bb.o:                                             ; preds = %.noexc20, %.noexc19, %.noexc18, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5402
  store <4 x i8> <i8 0, i8 1, i8 1, i8 1>, ptr %i.b, align 4, !noalias !5402
  %i.cz = invoke fastcc noundef zeroext i1 @_RINvMs0_NtNtCshmPyUV8PP35_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i32 noundef %.val3)
          to label %bb.t unwind label %bb.c

bb.p:                                             ; preds = %.noexc16
  %i.da = icmp eq i32 %storemerge.i, 0
  br i1 %i.da, label %bb.o, label %bb.r

bb.q:                                             ; preds = %.noexc20, %.noexc19, %.noexc18, %.noexc16, %.noexc14, %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5402
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.db = urem i32 %storemerge.i, 1000000
  %i.dc = udiv i32 %storemerge.i, 1000000
  %i.dd = icmp eq i32 %i.db, 0
  br i1 %i.dd, label %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsdJxlLsGgtXr_16delta_benchmarks.exit40.i, label %bb.s

_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsdJxlLsGgtXr_16delta_benchmarks.exit40.i: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5402
  store i32 %i.dc, ptr %i.g, align 4, !noalias !5402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5402
  store ptr %i.g, ptr %i.f, align 8, !noalias !5402
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !5402
  %i.de = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @406, ptr noundef nonnull @24, ptr noundef nonnull %i.f)
          to label %.noexc18 unwind label %bb.c

.noexc18:                                         ; preds = %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsdJxlLsGgtXr_16delta_benchmarks.exit40.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5402
  br i1 %i.de, label %bb.q, label %bb.o

bb.s:                                             ; preds = %bb.r
  %i.df = urem i32 %storemerge.i, 1000
  %i.dg = udiv i32 %storemerge.i, 1000
  %i.dh = icmp eq i32 %i.df, 0
  br i1 %i.dh, label %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsdJxlLsGgtXr_16delta_benchmarks.exit44.i, label %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsdJxlLsGgtXr_16delta_benchmarks.exit48.i

_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsdJxlLsGgtXr_16delta_benchmarks.exit44.i: ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5402
  store i32 %i.dg, ptr %i.e, align 4, !noalias !5402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5402
  store ptr %i.e, ptr %i.d, align 8, !noalias !5402
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !5402
  %i.di = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @406, ptr noundef nonnull @25, ptr noundef nonnull %i.d)
          to label %.noexc19 unwind label %bb.c

.noexc19:                                         ; preds = %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsdJxlLsGgtXr_16delta_benchmarks.exit44.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5402
  br i1 %i.di, label %bb.q, label %bb.o

_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsdJxlLsGgtXr_16delta_benchmarks.exit48.i: ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5402
  store ptr %i.h, ptr %i.c, align 8, !noalias !5402
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !5402
  %i.dj = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @406, ptr noundef nonnull @26, ptr noundef nonnull %i.c)
          to label %.noexc20 unwind label %bb.c

.noexc20:                                         ; preds = %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsdJxlLsGgtXr_16delta_benchmarks.exit48.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5402
  br i1 %i.dj, label %bb.q, label %bb.o

.thread:                                          ; preds = %bb.q, %.noexc4, %.noexc10, %.noexc6, %.noexc7, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.cz, label %bb.u, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCsdJxlLsGgtXr_16delta_benchmarks.exit, !prof !5428

bb.u:                                             ; preds = %.thread, %bb.t
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 52, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #39
          to label %.noexc21 unwind label %bb.c

.noexc21:                                         ; preds = %bb.u
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.v:                                             ; preds = %bb.c
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.w:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_E4iterCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !16
  %i.d = add i64 %i.c, 1
  tail call void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EE3newCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !16
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.f, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsdJxlLsGgtXr_16delta_benchmarks5mergeNtB4_13MergeTestCase7builder(ptr dead_on_unwind noalias noundef writable sret([992 x i8]) align 16 captures(none) dereferenceable(992) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(336) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(120) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [992 x i8], align 16              ; 4 uses
  %i.b = alloca [992 x i8], align 16              ; 4 uses
  %i.c = alloca [992 x i8], align 16              ; 4 uses
  %4 = alloca [992 x i8], align 16                ; 6 uses
  %i.d = alloca [992 x i8], align 16              ; 4 uses
  %i.e = alloca [992 x i8], align 16              ; 4 uses
  %i.f = alloca [992 x i8], align 16              ; 4 uses
  %i.g = alloca [992 x i8], align 16              ; 8 uses
  %.sroa.0.i = alloca [736 x i8], align 16        ; 6 uses
  %i.h = alloca [992 x i8], align 16              ; 4 uses
  %i.i = alloca [992 x i8], align 16              ; 4 uses
  %i.j = alloca [992 x i8], align 16              ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i8, ptr %i.k, align 8, !range !1380, !noundef !16
  switch i8 %i.l, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.f
    i8 3, label %bb.g
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5429
  call void @_RINvMs_NtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB7_5table10DeltaTable5mergeReECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([992 x i8]) align 16 captures(address) dereferenceable(992) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %3, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 89), !noalias !5434
  call void @_RINvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB5_12MergeBuilder17with_source_aliasReECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([992 x i8]) align 16 captures(none) dereferenceable(992) %i.i, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(992) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 6), !noalias !5429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5429
  call void @_RINvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB5_12MergeBuilder17with_target_aliasReECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([992 x i8]) align 16 captures(none) dereferenceable(992) %i.j, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(992) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 6), !noalias !5429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5429
  call void @_RINvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB5_12MergeBuilder23when_not_matched_insertNvNtCsdJxlLsGgtXr_16delta_benchmarks5merge23apply_insert_projectionEB1H_(ptr noalias noundef nonnull sret([992 x i8]) align 16 captures(none) dereferenceable(992) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(992) %i.j), !noalias !5435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5429
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5436)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5439
  call void @_RINvMs_NtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB7_5table10DeltaTable5mergeReECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([992 x i8]) align 16 captures(address) dereferenceable(992) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %3, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 89), !noalias !5436
  call void @_RINvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB5_12MergeBuilder17with_source_aliasReECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([992 x i8]) align 16 captures(none) dereferenceable(992) %i.e, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(992) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 6), !noalias !5439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5439
  call void @_RINvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB5_12MergeBuilder17with_target_aliasReECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([992 x i8]) align 16 captures(none) dereferenceable(992) %i.f, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(992) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 6), !noalias !5439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5439
  call void @_RINvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB5_12MergeBuilder23when_not_matched_insertNCNvNtCsdJxlLsGgtXr_16delta_benchmarks5merge21merge_multiple_insert0EB1J_(ptr noalias noundef nonnull sret([992 x i8]) align 16 captures(none) dereferenceable(992) %i.g, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(992) %i.f), !noalias !5439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5439
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 736
  %i.n = load i64, ptr %i.m, align 16, !range !165, !noalias !5439, !noundef !16 ; 2 uses
  %i.o = icmp eq i64 %i.n, 3
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !5439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(992) %0, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.0.i, i64 96, i1 false), !noalias !5442
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 736
  store i64 3, ptr %i.p, align 16, !alias.scope !5436, !noalias !5442
  br label %_RNvNtCsdJxlLsGgtXr_16delta_benchmarks5merge21merge_multiple_insert.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(736) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(736) %i.g, i64 736, i1 false), !noalias !5439
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 744
  %.sroa.8.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %4, i64 744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.8.0..sroa_idx3.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.6.0..sroa_idx.i, i64 248, i1 false), !noalias !5439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(736) %4, ptr noundef nonnull align 16 dereferenceable(736) %.sroa.0.i, i64 736, i1 false), !noalias !5439
  %.sroa.7.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %4, i64 736
  store i64 %i.n, ptr %.sroa.7.0..sroa_idx1.i, align 16, !noalias !5439
  call void @_RINvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB5_12MergeBuilder23when_not_matched_insertNvNtCsdJxlLsGgtXr_16delta_benchmarks5merge23apply_insert_projectionEB1H_(ptr noalias noundef nonnull sret([992 x i8]) align 16 captures(none) dereferenceable(992) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(992) %4), !noalias !5442
  br label %_RNvNtCsdJxlLsGgtXr_16delta_benchmarks5merge21merge_multiple_insert.exit

_RNvNtCsdJxlLsGgtXr_16delta_benchmarks5merge21merge_multiple_insert.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5443
  call void @_RINvMs_NtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB7_5table10DeltaTable5mergeReECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([992 x i8]) align 16 captures(address) dereferenceable(992) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %3, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 89), !noalias !5448
  call void @_RINvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB5_12MergeBuilder17with_source_aliasReECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([992 x i8]) align 16 captures(none) dereferenceable(992) %i.b, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(992) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 6), !noalias !5443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5443
  call void @_RINvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB5_12MergeBuilder17with_target_aliasReECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([992 x i8]) align 16 captures(none) dereferenceable(992) %i.c, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(992) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 6), !noalias !5443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5443
  call void @_RINvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB5_12MergeBuilder19when_matched_deleteNCNvNtCsdJxlLsGgtXr_16delta_benchmarks5merge12merge_delete0EB1F_(ptr noalias noundef nonnull sret([992 x i8]) align 16 captures(none) dereferenceable(992) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(992) %i.c), !noalias !5449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5443
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCsdJxlLsGgtXr_16delta_benchmarks5merge12merge_upsert(ptr noalias noundef nonnull sret([992 x i8]) align 16 captures(address) dereferenceable(992) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %3)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %_RNvNtCsdJxlLsGgtXr_16delta_benchmarks5merge21merge_multiple_insert.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsdJxlLsGgtXr_16delta_benchmarks5mergeNtB4_13MergeTestCase8validate(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16
  tail call void %i.b(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMsi_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_8BTreeMapjINtNtBb_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE6insertCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.f, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5450)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.b, align 8, !noalias !5453
  %i.g = load ptr, ptr %0, align 8, !alias.scope !5450, !noalias !5455, !noundef !16 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5453
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !5450, !noalias !5455, !noundef !16
  invoke void @_RINvMs_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutjINtNtBb_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB1i_14LeafOrInternalE11search_treejECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.g, i64 noundef %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  %i.j = load i64, ptr %i.a, align 8, !range !15, !noalias !5453, !noundef !16
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.1310.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %.sroa.11.16.copyload = load ptr, ptr %i.l, align 8, !noalias !5450
  %.sroa.13.16.copyload = load i64, ptr %.sroa.13.16..sroa_idx, align 8, !noalias !5450
  %.sroa.1310.16.copyload = load ptr, ptr %.sroa.1310.16..sroa_idx, align 8, !noalias !5450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5453
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %.sroa.7.8.copyload5 = load i64, ptr %i.l, align 8, !noalias !5450
  %.sroa.11.8.copyload7 = load ptr, ptr %.sroa.13.16..sroa_idx, align 8, !noalias !5450
  %.sroa.13.8.copyload9 = load i64, ptr %.sroa.1310.16..sroa_idx, align 8, !noalias !5450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.7.8.copyload5, ptr %i.e, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.11.8.copyload7, ptr %.sroa.11.8..sroa_idx, align 8
  %.sroa.13.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.13.8.copyload9, ptr %.sroa.13.8..sroa_idx, align 8
  %.sroa.1310.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %0, ptr %.sroa.1310.8..sroa_idx, align 8
  %i.m = call noundef nonnull ptr @_RNvMs7_NtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryjINtNtBd_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE6insertCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.a
  %.sroa.1310.0.ph = phi ptr [ undef, %bb.a ], [ %.sroa.1310.16.copyload, %bb.c ]
  %.sroa.13.0.ph = phi i64 [ undef, %bb.a ], [ %.sroa.13.16.copyload, %bb.c ]
  %.sroa.11.0.ph = phi ptr [ null, %bb.a ], [ %.sroa.11.16.copyload, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.d, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.11.0.ph, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.13.0.ph, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.1310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.1310.0.ph, ptr %.sroa.1310.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs6_NtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3map5entryINtB5_11VacantEntryjINtNtBd_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE12insert_entryCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.d, ptr noundef nonnull %2)
  %i.n = call noundef nonnull align 8 ptr @_RNvMs7_NtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryjINtNtBd_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE8into_mutCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0 = phi ptr [ %i.m, %bb.d ], [ null, %bb.e ]
  ret ptr %.sroa.0.0

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.g:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.o = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !5456
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE10dying_nextCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !16 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE10take_frontCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  %i.h = load ptr, ptr %i.c, align 8, !noalias !5461, !noundef !16
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_RINvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE16deallocating_endNtNtBc_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RINvMsj_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  br label %_RINvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE16deallocating_endNtNtBc_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE16deallocating_endNtNtBc_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.i = add i64 %i.f, -1
  store i64 %i.i, ptr %i.e, align 8
  %i.j = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE10init_frontCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !5464 ; 3 uses
  %.not.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i1, label %bb.h, label %bb.e, !prof !18

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5467
  invoke void @_RINvMsj_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i.i unwind label %bb.g, !noalias !5475

.noexc.i.i:                                       ; preds = %bb.e
  %i.k = load ptr, ptr %i.a, align 8, !noalias !5467, !noundef !16
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %_RINvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, !prof !18

bb.f:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #45
          to label %.noexc1.i.i unwind label %bb.g, !noalias !5476

.noexc1.i.i:                                      ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.d
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #39, !noalias !5464
  unreachable

_RINvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5467
end_hunk_3
