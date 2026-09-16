Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.09?download=true
inline.NumInlined: 12053
inline.NumDeleted: 5555
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RINvNtNtCs14kWLkQVSKO_14deltalake_core5table5state16coalesce_batchesINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1d_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvMs_B2_NtNtNtB6_6kernel8snapshot13EagerSnapshot31add_actions_batches_with_schema0EEB6_:bb.a
  store i64 %.sroa.7.0.i.ph, ptr %i.p, align 8
  store i64 %.sroa.11.sroa.0.0.i.ph, ptr %.sroa.491.0..sroa_idx, align 8
  store i64 %.sroa.11.sroa.7.sroa.0.0.i.ph, ptr %.sroa.592.0..sroa_idx, align 8
  store i64 %.sroa.11.sroa.7.sroa.7.sroa.0.0.i.ph, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 %.sroa.11.sroa.7.sroa.7.sroa.7.0.i.ph, ptr %.sroa.793.0..sroa_idx, align 8
  %.val.cast = inttoptr i64 %.sroa.11.sroa.7.sroa.7.sroa.0.0.i.ph to ptr ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3651)
  %i.bw = load i64, ptr %i.r, align 8, !range !26, !alias.scope !3651, !noundef !23
  %.not.i = icmp eq i64 %i.bw, 2
  br i1 %.not.i, label %bb.an, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCsa7Blp2W9WhU_12arrow_select8coalesce14BatchCoalescerE18get_or_insert_withNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table5state16coalesce_batchesINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvMs_B23_NtNtNtB27_6kernel8snapshot13EagerSnapshot31add_actions_batches_with_schema0EE0EB27_.exit

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3651
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.cast) ]
  %i.bx = atomicrmw add ptr %.val.cast, i64 1 monotonic, align 8, !noalias !3652
  %i.by = icmp slt i64 %i.bx, 0
  br i1 %i.by, label %bb.ao, label %_RNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table5state16coalesce_batchesINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1f_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvMs_B4_NtNtNtB8_6kernel8snapshot13EagerSnapshot31add_actions_batches_with_schema0EE0B8_.exit.i

bb.ao:                                            ; preds = %bb.an
  call void @llvm.trap()
  unreachable

_RNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table5state16coalesce_batchesINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1f_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvMs_B4_NtNtNtB8_6kernel8snapshot13EagerSnapshot31add_actions_batches_with_schema0EE0B8_.exit.i: ; preds = %bb.an
  invoke void @_RNvMNtCsa7Blp2W9WhU_12arrow_select8coalesceNtB2_14BatchCoalescer3new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.a, ptr noundef nonnull %.val.cast, i64 noundef 8192)
          to label %.noexc58 unwind label %bb.bb

.noexc58:                                         ; preds = %_RNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table5state16coalesce_batchesINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1f_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvMs_B4_NtNtNtB8_6kernel8snapshot13EagerSnapshot31add_actions_batches_with_schema0EE0B8_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.r, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3651
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCsa7Blp2W9WhU_12arrow_select8coalesce14BatchCoalescerE18get_or_insert_withNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table5state16coalesce_batchesINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvMs_B23_NtNtNtB27_6kernel8snapshot13EagerSnapshot31add_actions_batches_with_schema0EE0EB27_.exit

.body59.thread130.loopexit:                       ; preds = %bb.as
  %lpad.loopexit136 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.body59.thread130.loopexit.split-lp:              ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCsa7Blp2W9WhU_12arrow_select8coalesce14BatchCoalescerE18get_or_insert_withNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table5state16coalesce_batchesINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvMs_B23_NtNtNtB27_6kernel8snapshot13EagerSnapshot31add_actions_batches_with_schema0EE0EB27_.exit
  %lpad.loopexit.split-lp137 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCsa7Blp2W9WhU_12arrow_select8coalesce14BatchCoalescerE18get_or_insert_withNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table5state16coalesce_batchesINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvMs_B23_NtNtNtB27_6kernel8snapshot13EagerSnapshot31add_actions_batches_with_schema0EE0EB27_.exit: ; preds = %.noexc58, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false)
  invoke void @_RNvMNtCsa7Blp2W9WhU_12arrow_select8coalesceNtB2_14BatchCoalescer10push_batch(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.n)
          to label %bb.ap unwind label %.body59.thread130.loopexit.split-lp

bb.ap:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCsa7Blp2W9WhU_12arrow_select8coalesce14BatchCoalescerE18get_or_insert_withNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table5state16coalesce_batchesINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvMs_B23_NtNtNtB27_6kernel8snapshot13EagerSnapshot31add_actions_batches_with_schema0EE0EB27_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bz = load i64, ptr %i.o, align 8, !range !86, !noundef !23
  %.not40 = icmp eq i64 %i.bz, -9223372036854775788
  br i1 %.not40, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.430.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 -9223372036854775741, ptr %0, align 16
  br label %bb.ba

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.as

bb.as:                                            ; preds = %bb.az, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMNtCsa7Blp2W9WhU_12arrow_select8coalesceNtB2_14BatchCoalescer20next_completed_batch(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.r)
          to label %bb.at unwind label %.body59.thread130.loopexit

bb.at:                                            ; preds = %bb.as
  %i.ca = load i64, ptr %i.m, align 8, !range !28, !noundef !23
  %.not41 = icmp eq i64 %i.ca, -9223372036854775808
  br i1 %.not41, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false)
  %i.cb = load i64, ptr %i.t, align 8, !alias.scope !3653, !noalias !3654, !noundef !23 ; 3 uses
  %i.cc = load i64, ptr %i.q, align 8, !range !29, !alias.scope !3653, !noalias !3654, !noundef !23
  %i.cd = icmp eq i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE8grow_oneCsa7Blp2W9WhU_12arrow_select(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.az unwind label %bb.aw, !noalias !3654

bb.aw:                                            ; preds = %bb.av
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.l) #43
          to label %.thread unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.ay:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  %.not213 = icmp eq ptr %i.z, %.sroa.5.0.copyload
  br i1 %.not213, label %._crit_edge, label %bb.b

bb.az:                                            ; preds = %bb.av, %bb.au
  %i.cg = load ptr, ptr %i.s, align 8, !alias.scope !3653, !noalias !3654, !nonnull !23, !noundef !23
  %i.ch = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ch, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false)
  %i.ci = add i64 %i.cb, 1
  store i64 %i.ci, ptr %i.t, align 8, !alias.scope !3653, !noalias !3654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.as

bb.ba:                                            ; preds = %bb.aq, %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  br label %bb.ai

bb.bb:                                            ; preds = %_RNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table5state16coalesce_batchesINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1f_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvMs_B4_NtNtNtB8_6kernel8snapshot13EagerSnapshot31add_actions_batches_with_schema0EE0B8_.exit.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.p) #43
          to label %.thread unwind label %bb.ah

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit57: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.cj = load i64, ptr %i.r, align 8, !range !26, !noundef !23
  %.not45 = icmp eq i64 %i.cj, 2
  br i1 %.not45, label %bb.ab, label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit57
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsa7Blp2W9WhU_12arrow_select8coalesce14BatchCoalescerECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.r)
  br label %bb.ab

.thread:                                          ; preds = %.body59.thread130.loopexit, %.body59.thread130.loopexit.split-lp, %bb.aw, %bb.n, %bb.k, %bb.f, %bb.e, %.body47, %bb.bb, %.thread99
  %i.ck = phi i1 [ false, %.thread99 ], [ true, %bb.bb ], [ false, %.body47 ], [ true, %bb.aw ], [ true, %bb.n ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.k ], [ true, %.body59.thread130.loopexit ], [ true, %.body59.thread130.loopexit.split-lp ]
  %.pn98 = phi { ptr, i32 } [ %i.bd, %.thread99 ], [ %lpad.thr_comm.split-lp, %bb.bb ], [ %eh.lpad-body48, %.body47 ], [ %i.ce, %bb.aw ], [ %i.az, %bb.n ], [ %i.am, %bb.e ], [ %i.am, %bb.f ], [ %i.av, %bb.k ], [ %lpad.loopexit136, %.body59.thread130.loopexit ], [ %lpad.loopexit.split-lp137, %.body59.thread130.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.q) #43
          to label %.body50 unwind label %bb.ah

.body50.thread:                                   ; preds = %bb.ad, %bb.bd, %.body50
  %.pn43127 = phi { ptr, i32 } [ %i.bo, %bb.ad ], [ %.pn43, %bb.bd ], [ %.pn43, %.body50 ]
  resume { ptr, i32 } %.pn43127

bb.bd:                                            ; preds = %.body50
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsa7Blp2W9WhU_12arrow_select8coalesce14BatchCoalescerECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.r) #43
          to label %.body50.thread unwind label %bb.ah
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift4sortNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSBW_7sort_byNCNCNvNtNtB14_10operations8optimize21build_compaction_plan0s0_0E0EB14_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 33909456017848441) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 33909456017848441) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i82 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i87 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cf, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cd, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB13_7sort_byNCNCNvNtNtB1b_10operations8optimize21build_compaction_plan0s0_0E0EB1b_.exit
  %.sroa.021.0 = phi i8 [ %i.aw, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB13_7sort_byNCNCNvNtNtB1b_10operations8optimize21build_compaction_plan0s0_0E0EB1b_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB13_7sort_byNCNCNvNtNtB1b_10operations8optimize21build_compaction_plan0s0_0E0EB1b_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph57, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 9 uses
  %i.n = getelementptr inbounds nuw [272 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB12_7sort_byNCNCNvNtNtB1a_10operations8optimize21build_compaction_plan0s0_0E0EB1a_.exit.i.thread85, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB12_7sort_byNCNCNvNtNtB1a_10operations8optimize21build_compaction_plan0s0_0E0EB1a_.exit.i.thread, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB12_7sort_byNCNCNvNtNtB1a_10operations8optimize21build_compaction_plan0s0_0E0EB1a_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3Add7reverseBC_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 472
  %.val10.i = load i64, ptr %i.p, align 8, !alias.scope !3661, !noalias !3662, !noundef !23 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 200
  %.val11.i = load i64, ptr %i.q, align 8, !alias.scope !3661, !noalias !3662, !noundef !23
  %i.r = icmp sge i64 %.val11.i, %.val10.i        ; 2 uses
  %.not64 = icmp eq i64 %i.m, 2                   ; 2 uses
  br i1 %i.r, label %.preheader45, label %.preheader

.preheader45:                                     ; preds = %bb.k
  br i1 %.not64, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB12_7sort_byNCNCNvNtNtB1a_10operations8optimize21build_compaction_plan0s0_0E0EB1a_.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader45
  %smax = tail call i64 @llvm.smax.i64(i64 %i.m, i64 3) ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not64, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB12_7sort_byNCNCNvNtNtB1a_10operations8optimize21build_compaction_plan0s0_0E0EB1a_.exit.i.thread85, label %.lr.ph51.preheader

.lr.ph51.preheader:                               ; preds = %.preheader
  %smax67 = tail call i64 @llvm.smax.i64(i64 %i.m, i64 3) ; 2 uses
  br label %.lr.ph51

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.lr.ph.preheader ]
  %.sroa.01.0.i.i47 = phi i64 [ %i.v, %bb.l ], [ 2, %.lr.ph.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw [272 x i8], ptr %i.n, i64 %.sroa.01.0.i.i47
  %i.t = getelementptr i8, ptr %i.s, i64 200
  %.val8.i = load i64, ptr %i.t, align 8, !alias.scope !3661, !noalias !3662, !noundef !23 ; 2 uses
  %i.u = icmp slt i64 %.val9.i, %.val8.i
  br i1 %i.u, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB12_7sort_byNCNCNvNtNtB1a_10operations8optimize21build_compaction_plan0s0_0E0EB1a_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.v = add nuw nsw i64 %.sroa.01.0.i.i47, 1     ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %smax
  br i1 %exitcond.not, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB12_7sort_byNCNCNvNtNtB1a_10operations8optimize21build_compaction_plan0s0_0E0EB1a_.exit.i, label %.lr.ph

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.lr.ph51.preheader ]
  %.sroa.01.1.i.i50 = phi i64 [ %i.z, %bb.m ], [ 2, %.lr.ph51.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw [272 x i8], ptr %i.n, i64 %.sroa.01.1.i.i50
  %i.x = getelementptr i8, ptr %i.w, i64 200
  %.val.i = load i64, ptr %i.x, align 8, !alias.scope !3661, !noalias !3662, !noundef !23 ; 2 uses
  %i.y = icmp slt i64 %.val7.i, %.val.i
  br i1 %i.y, label %bb.m, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB12_7sort_byNCNCNvNtNtB1a_10operations8optimize21build_compaction_plan0s0_0E0EB1a_.exit.i

bb.m:                                             ; preds = %.lr.ph51
  %i.z = add nuw nsw i64 %.sroa.01.1.i.i50, 1     ; 2 uses
  %exitcond67.not = icmp eq i64 %i.z, %smax67
  br i1 %exitcond67.not, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB12_7sort_byNCNCNvNtNtB1a_10operations8optimize21build_compaction_plan0s0_0E0EB1a_.exit.i, label %.lr.ph51

_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB12_7sort_byNCNCNvNtNtB1a_10operations8optimize21build_compaction_plan0s0_0E0EB1a_.exit.i: ; preds = %bb.m, %.lr.ph51, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i47, %.lr.ph ], [ %smax, %bb.l ], [ %.sroa.01.1.i.i50, %.lr.ph51 ], [ %smax67, %bb.m ] ; 5 uses
  %i.aa = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aa)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB12_7sort_byNCNCNvNtNtB1a_10operations8optimize21build_compaction_plan0s0_0E0EB1a_.exit.i.thread85: ; preds = %.preheader
  br i1 %.not5.i87, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB12_7sort_byNCNCNvNtNtB1a_10operations8optimize21build_compaction_plan0s0_0E0EB1a_.exit.i.thread: ; preds = %.preheader45
  br i1 %.not5.i82, label %bb.i, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3Add7reverseBC_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB12_7sort_byNCNCNvNtNtB1a_10operations8optimize21build_compaction_plan0s0_0E0EB1a_.exit.i
  %i.ab = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.ab, 0
  %or.cond = or i1 %i.r, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3Add7reverseBC_.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 33909456017848441) %i.m, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i36, 1
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB13_7sort_byNCNCNvNtNtB1b_10operations8optimize21build_compaction_plan0s0_0E0EB1b_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 33909456017848441) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB15_7sort_byNCNCNvNtNtB1d_10operations8optimize21build_compaction_plan0s0_0E0EB1d_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i35, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 33909456017848441) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(272) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #45, !inline_history !3659
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i35, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB13_7sort_byNCNCNvNtNtB1b_10operations8optimize21build_compaction_plan0s0_0E0EB1b_.exit

_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3Add7reverseBC_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEB18_.exit.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB12_7sort_byNCNCNvNtNtB1a_10operations8optimize21build_compaction_plan0s0_0E0EB1a_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4144 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB12_7sort_byNCNCNvNtNtB1a_10operations8optimize21build_compaction_plan0s0_0E0EB1a_.exit.i.thread ], [ %.sroa.0.0.i.i839094, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEB18_.exit.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i4144, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB13_7sort_byNCNCNvNtNtB1b_10operations8optimize21build_compaction_plan0s0_0E0EB1b_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB12_7sort_byNCNCNvNtNtB1a_10operations8optimize21build_compaction_plan0s0_0E0EB1a_.exit.i.thread85
  %i.ah = phi i64 [ %i.ab, %bb.n ], [ 1, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB12_7sort_byNCNCNvNtNtB1a_10operations8optimize21build_compaction_plan0s0_0E0EB1a_.exit.i.thread85 ]
  %.sroa.0.0.i.i839094 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB12_7sort_byNCNCNvNtNtB1a_10operations8optimize21build_compaction_plan0s0_0E0EB1a_.exit.i.thread85 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [272 x i8], ptr %i.n, i64 %.sroa.0.0.i.i839094
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEB18_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.an, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEB18_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.aj = xor i64 %.sroa.0.017.i.i, -1
  %i.ak = getelementptr inbounds nuw [272 x i8], ptr %i.n, i64 %.sroa.0.017.i.i
  %i.al = getelementptr [272 x i8], ptr %i.ai, i64 %i.aj
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, i64 noundef 34)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEB18_.exit.i.i unwind label %bb.q, !noalias !3662

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #40, !noalias !3662
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEB18_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.an = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.an, %i.ah
  br i1 %exitcond.not.i.i, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3Add7reverseBC_.exit, label %.lr.ph.i.i

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB13_7sort_byNCNCNvNtNtB1b_10operations8optimize21build_compaction_plan0s0_0E0EB1b_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3Add7reverseBC_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ag, %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3Add7reverseBC_.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.ao = lshr i64 %.sroa.023.0, 1
  %i.ap = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aq = sub nsw i64 %factor, %i.ao
  %i.ar = add nuw nsw i64 %i.ap, %factor
  %i.as = mul i64 %i.aq, %.sroa.0.0
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = xor i64 %i.at, %i.as
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 false)
  %i.aw = trunc nuw nsw i64 %i.av to i8
  br label %bb.g

.lr.ph57:                                         ; preds = %bb.g, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB16_7sort_byNCNCNvNtNtB1e_10operations8optimize21build_compaction_plan0s0_0E0EB1e_.exit
  %.sroa.02.156 = phi i64 [ %i.ax, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB16_7sort_byNCNCNvNtNtB1e_10operations8optimize21build_compaction_plan0s0_0E0EB1e_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.155 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB16_7sort_byNCNCNvNtNtB1e_10operations8optimize21build_compaction_plan0s0_0E0EB1e_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ax = add i64 %.sroa.02.156, -1               ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noundef !23
  %.not29 = icmp ult i8 %i.az, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB16_7sort_byNCNCNvNtNtB1e_10operations8optimize21build_compaction_plan0s0_0E0EB1e_.exit, %.lr.ph57, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.155, %.lr.ph57 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB16_7sort_byNCNCNvNtNtB1e_10operations8optimize21build_compaction_plan0s0_0E0EB1e_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.156, %.lr.ph57 ], [ 1, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB16_7sort_byNCNCNvNtNtB1e_10operations8optimize21build_compaction_plan0s0_0E0EB1e_.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bb, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph57
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !23 ; 3 uses
  %i.be = lshr i64 %i.bd, 1                       ; 5 uses
  %i.bf = lshr i64 %.sroa.023.155, 1              ; 3 uses
  %i.bg = add nuw i64 %i.be, %i.bf                ; 5 uses
  %i.bh = sub i64 %.sroa.09.0, %i.bg
  %i.bi = getelementptr inbounds nuw [272 x i8], ptr %0, i64 %i.bh ; 3 uses
  %i.bj = icmp samesign ugt i64 %i.bg, %3
  %i.bk = trunc i64 %.sroa.023.155 to i1
  %i.bl = or i64 %i.bd, %.sroa.023.155
  %i.bm = trunc i64 %i.bl to i1
  %or.cond3.i = or i1 %i.bj, %i.bm
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = trunc i64 %i.bd to i1
  br i1 %i.bn, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bo = shl nuw nsw i64 %i.bg, 1
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB16_7sort_byNCNCNvNtNtB1e_10operations8optimize21build_compaction_plan0s0_0E0EB1e_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bk, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.bp = or i64 %i.be, 1
  %i.bq = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = xor i32 %i.bs, 126
  tail call void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB15_7sort_byNCNCNvNtNtB1d_10operations8optimize21build_compaction_plan0s0_0E0EB1d_(ptr noalias noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 33909456017848441) %i.be, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 33909456017848441) %3, i32 noundef %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(272) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #45, !inline_history !3660
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5merge5mergeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSBX_7sort_byNCNCNvNtNtB15_10operations8optimize21build_compaction_plan0s0_0E0EB15_(ptr noalias noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 33909456017848441) %i.bg, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 33909456017848441) %3, i64 noundef %i.be, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.bu = shl nuw nsw i64 %i.bg, 1
  %i.bv = or disjoint i64 %i.bu, 1
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB16_7sort_byNCNCNvNtNtB1e_10operations8optimize21build_compaction_plan0s0_0E0EB1e_.exit

bb.x:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw [272 x i8], ptr %i.bi, i64 %i.be
  %i.bx = or i64 %i.bf, 1
  %i.by = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bz, 1
  %i.cb = xor i32 %i.ca, 126
  tail call void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB15_7sort_byNCNCNvNtNtB1d_10operations8optimize21build_compaction_plan0s0_0E0EB1d_(ptr noalias noundef nonnull align 8 %i.bw, i64 noundef range(i64 0, 33909456017848441) %i.bf, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 33909456017848441) %3, i32 noundef %i.cb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(272) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #45, !inline_history !3660
  br label %bb.w

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB16_7sort_byNCNCNvNtNtB1e_10operations8optimize21build_compaction_plan0s0_0E0EB1e_.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.bv, %bb.w ], [ %i.bo, %bb.t ] ; 2 uses
  %i.cc = icmp ugt i64 %i.ax, 1
  br i1 %i.cc, label %.lr.ph57, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cd = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ce = lshr i64 %.sroa.018.0, 1
  %i.cf = add nuw i64 %i.ce, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cg = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.cg, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ch = or i64 %1, 1
  %i.ci = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB15_7sort_byNCNCNvNtNtB1d_10operations8optimize21build_compaction_plan0s0_0E0EB1d_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 33909456017848441) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 33909456017848441) %3, i32 noundef %i.cl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(272) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #45, !inline_history !3660
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift4sortxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i79 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i84 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ck, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ci, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.021.0 = phi i8 [ %i.bb, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph57, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 9 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.i.thread82, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.i.thread, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx7reverseCs14kWLkQVSKO_14deltalake_core.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val10.i = load i64, ptr %i.p, align 8, !alias.scope !3679, !noalias !3680, !noundef !23 ; 3 uses
  %.val11.i = load i64, ptr %i.n, align 8, !alias.scope !3681, !noalias !3682, !noundef !23
  %i.q = icmp slt i64 %.val10.i, %.val11.i        ; 2 uses
  %.not64 = icmp eq i64 %i.m, 2                   ; 2 uses
  br i1 %i.q, label %.preheader, label %.preheader45

.preheader45:                                     ; preds = %bb.k
  br i1 %.not64, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader45
  %smax = tail call i64 @llvm.smax.i64(i64 %i.m, i64 3) ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not64, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.i.thread82, label %.lr.ph51.preheader

.lr.ph51.preheader:                               ; preds = %.preheader
  %smax67 = tail call i64 @llvm.smax.i64(i64 %i.m, i64 3) ; 2 uses
  br label %.lr.ph51

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.lr.ph.preheader ]
  %.sroa.01.0.i.i47 = phi i64 [ %i.t, %bb.l ], [ 2, %.lr.ph.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i.i47
  %.val8.i = load i64, ptr %i.r, align 8, !alias.scope !3679, !noalias !3680, !noundef !23 ; 2 uses
  %i.s = icmp slt i64 %.val8.i, %.val9.i
  br i1 %i.s, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.t = add nuw nsw i64 %.sroa.01.0.i.i47, 1     ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %smax
  br i1 %exitcond.not, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.i, label %.lr.ph

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.lr.ph51.preheader ]
  %.sroa.01.1.i.i50 = phi i64 [ %i.w, %bb.m ], [ 2, %.lr.ph51.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i.i50
  %.val.i = load i64, ptr %i.u, align 8, !alias.scope !3679, !noalias !3680, !noundef !23 ; 2 uses
  %i.v = icmp slt i64 %.val.i, %.val7.i
  br i1 %i.v, label %bb.m, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.i

bb.m:                                             ; preds = %.lr.ph51
  %i.w = add nuw nsw i64 %.sroa.01.1.i.i50, 1     ; 2 uses
  %exitcond67.not = icmp eq i64 %i.w, %smax67
  br i1 %exitcond67.not, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.i, label %.lr.ph51

_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph51
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i50, %.lr.ph51 ], [ %smax67, %bb.m ], [ %.sroa.01.0.i.i47, %.lr.ph ], [ %smax, %bb.l ] ; 6 uses
  %i.x = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.x)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.i.thread82: ; preds = %.preheader
  br i1 %.not5.i84, label %bb.i, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx12split_at_mutCs14kWLkQVSKO_14deltalake_core.exit11.preheader.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.i.thread: ; preds = %.preheader45
  br i1 %.not5.i79, label %bb.i, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx7reverseCs14kWLkQVSKO_14deltalake_core.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.i
  br i1 %i.q, label %bb.q, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx7reverseCs14kWLkQVSKO_14deltalake_core.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.y = shl nuw nsw i64 %.sroa.0.0.i36, 1
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i35, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5) #45, !inline_history !3670
  %i.z = shl nuw nsw i64 %.sroa.0.0.i35, 1
  %i.aa = or disjoint i64 %i.z, 1
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit

_RNvMNtCsbvkFyIu7lgC_4core5sliceSx7reverseCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx12split_at_mutCs14kWLkQVSKO_14deltalake_core.exit11.i.i, %middle.block, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4144 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.i.thread ], [ %.sroa.0.0.i.i808791, %middle.block ], [ %.sroa.0.0.i.i808791, %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx12split_at_mutCs14kWLkQVSKO_14deltalake_core.exit11.i.i ]
  %i.ab = shl nuw nsw i64 %.sroa.0.0.i.i4144, 1
  %i.ac = or disjoint i64 %i.ab, 1
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit

bb.q:                                             ; preds = %bb.n
  %i.ad = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3683), !noalias !3684
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3685), !noalias !3684
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx7reverseCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx12split_at_mutCs14kWLkQVSKO_14deltalake_core.exit11.preheader.i.i

_RNvMNtCsbvkFyIu7lgC_4core5sliceSx12split_at_mutCs14kWLkQVSKO_14deltalake_core.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.i.thread82, %bb.q
  %i.ae = phi i64 [ %i.ad, %bb.q ], [ 1, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.i.thread82 ] ; 4 uses
  %.sroa.0.0.i.i808791 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.i.thread82 ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i.i808791 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ae, 4
  br i1 %min.iters.check, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx12split_at_mutCs14kWLkQVSKO_14deltalake_core.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx12split_at_mutCs14kWLkQVSKO_14deltalake_core.exit11.preheader.i.i
  %n.vec = and i64 %i.ae, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = xor i64 %index, -1
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 3 uses
  %i.ai = getelementptr [8 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ah, align 8, !alias.scope !3686, !noalias !3687
  %wide.load96 = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !3686, !noalias !3687
  %i.ak = getelementptr i8, ptr %i.ai, i64 -8     ; 2 uses
  %i.al = getelementptr i8, ptr %i.ai, i64 -24    ; 2 uses
  %wide.load97 = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !3688, !noalias !3689
  %wide.load98 = load <2 x i64>, ptr %i.al, align 8, !alias.scope !3688, !noalias !3689
  %reverse = shufflevector <2 x i64> %wide.load97, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse99 = shufflevector <2 x i64> %wide.load98, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.ah, align 8, !alias.scope !3686, !noalias !3687
  store <2 x i64> %reverse99, ptr %i.aj, align 8, !alias.scope !3686, !noalias !3687
  %reverse100 = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse101 = shufflevector <2 x i64> %wide.load96, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse100, ptr %i.ak, align 8, !alias.scope !3688, !noalias !3689
  store <2 x i64> %reverse101, ptr %i.al, align 8, !alias.scope !3688, !noalias !3689
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !3676

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx7reverseCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx12split_at_mutCs14kWLkQVSKO_14deltalake_core.exit11.i.i.preheader

_RNvMNtCsbvkFyIu7lgC_4core5sliceSx12split_at_mutCs14kWLkQVSKO_14deltalake_core.exit11.i.i.preheader: ; preds = %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx12split_at_mutCs14kWLkQVSKO_14deltalake_core.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx12split_at_mutCs14kWLkQVSKO_14deltalake_core.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx12split_at_mutCs14kWLkQVSKO_14deltalake_core.exit11.i.i

_RNvMNtCsbvkFyIu7lgC_4core5sliceSx12split_at_mutCs14kWLkQVSKO_14deltalake_core.exit11.i.i: ; preds = %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx12split_at_mutCs14kWLkQVSKO_14deltalake_core.exit11.i.i.preheader, %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx12split_at_mutCs14kWLkQVSKO_14deltalake_core.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.as, %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx12split_at_mutCs14kWLkQVSKO_14deltalake_core.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx12split_at_mutCs14kWLkQVSKO_14deltalake_core.exit11.i.i.preheader ] ; 3 uses
  %i.an = xor i64 %.sroa.0.016.i.i, -1
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.af, i64 %i.an ; 2 uses
  %i.aq = load i64, ptr %i.ao, align 8, !alias.scope !3686, !noalias !3687, !noundef !23
  %i.ar = load i64, ptr %i.ap, align 8, !alias.scope !3688, !noalias !3689
  store i64 %i.ar, ptr %i.ao, align 8, !alias.scope !3686, !noalias !3687
  store i64 %i.aq, ptr %i.ap, align 8, !alias.scope !3688, !noalias !3689
  %i.as = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.as, %i.ae
  br i1 %exitcond.not.i.i, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx7reverseCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx12split_at_mutCs14kWLkQVSKO_14deltalake_core.exit11.i.i, !llvm.loop !3677

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx7reverseCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ac, %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx7reverseCs14kWLkQVSKO_14deltalake_core.exit ], [ %i.aa, %bb.p ], [ %i.y, %bb.o ] ; 2 uses
  %i.at = lshr i64 %.sroa.023.0, 1
  %i.au = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.av = sub nsw i64 %factor, %i.at
  %i.aw = add nuw nsw i64 %i.au, %factor
  %i.ax = mul i64 %i.av, %.sroa.0.0
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.az, i1 false)
  %i.bb = trunc nuw nsw i64 %i.ba to i8
  br label %bb.g

.lr.ph57:                                         ; preds = %bb.g, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergexNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.02.156 = phi i64 [ %i.bc, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergexNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.155 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergexNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bc = add i64 %.sroa.02.156, -1               ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noundef !23
  %.not29 = icmp ult i8 %i.be, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergexNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit, %.lr.ph57, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.155, %.lr.ph57 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergexNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.156, %.lr.ph57 ], [ 1, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergexNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bg, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph57
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bc
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !23 ; 3 uses
  %i.bj = lshr i64 %i.bi, 1                       ; 5 uses
  %i.bk = lshr i64 %.sroa.023.155, 1              ; 3 uses
  %i.bl = add nuw i64 %i.bj, %i.bk                ; 5 uses
  %i.bm = sub i64 %.sroa.09.0, %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bm ; 3 uses
  %i.bo = icmp samesign ugt i64 %i.bl, %3
  %i.bp = trunc i64 %.sroa.023.155 to i1
  %i.bq = or i64 %i.bi, %.sroa.023.155
  %i.br = trunc i64 %i.bq to i1
  %or.cond3.i = or i1 %i.bo, %i.br
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = trunc i64 %i.bi to i1
  br i1 %i.bs, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bt = shl nuw nsw i64 %i.bl, 1
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergexNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bp, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.bu = or i64 %i.bj, 1
  %i.bv = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true)
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = xor i32 %i.bx, 126
  tail call void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %i.bn, i64 noundef range(i64 0, 1152921504606846976) %i.bj, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5) #45, !inline_history !3678
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5merge5mergexNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %i.bn, i64 noundef range(i64 0, 1152921504606846976) %i.bl, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.bj, ptr noalias noundef nonnull %5)
  %i.bz = shl nuw nsw i64 %i.bl, 1
  %i.ca = or disjoint i64 %i.bz, 1
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergexNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit

bb.x:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bj
  %i.cc = or i64 %i.bk, 1
  %i.cd = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 1
  %i.cg = xor i32 %i.cf, 126
  tail call void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 1152921504606846976) %i.bk, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5) #45, !inline_history !3678
  br label %bb.w

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergexNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.ca, %bb.w ], [ %i.bt, %bb.t ] ; 2 uses
  %i.ch = icmp ugt i64 %i.bc, 1
  br i1 %i.ch, label %.lr.ph57, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ci = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cj = lshr i64 %.sroa.018.0, 1
  %i.ck = add nuw i64 %i.cj, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cl = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.cl, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cm = or i64 %1, 1
  %i.cn = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
end_hunk_0
