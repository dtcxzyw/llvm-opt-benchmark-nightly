Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_df-46e7ca1752cf580c.uu_df.542a784a59c1bc9-cgu.0?download=true
inline.NumInlined: 1449
inline.NumDeleted: 844
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvMs7_NtCss03989lGqH_5uu_df5tableNtB5_5Table8write_to:bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ca, i8 32, i64 %i.bp, i1 false), !noalias !2599
  %i.cc = tail call noundef ptr %i.p(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef %i.bp) #30 ; 2 uses
  %.not53 = icmp eq ptr %i.cc, null
  br i1 %.not53, label %bb.t, label %.loopexit202

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_n7RepeatNhEE9from_iterCss03989lGqH_5uu_df.exit.thread: ; preds = %bb.s
  %i.cd = tail call noundef ptr %i.p(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0) #30 ; 2 uses
  %.not5392 = icmp eq ptr %i.cd, null
  br i1 %.not5392, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECss03989lGqH_5uu_df.exit70, label %.loopexit

.loopexit202:                                     ; preds = %.lr.ph.i.i.i.i.i.peel, %.lr.ph.i.i.i.i.i
  %.lcssa192 = phi i64 [ %i.bp, %.lr.ph.i.i.i.i.i ], [ %i.ah, %.lr.ph.i.i.i.i.i.peel ]
  %.lcssa166 = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i ], [ %i.as, %.lr.ph.i.i.i.i.i.peel ]
  %.lcssa = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i ], [ %i.aq, %.lr.ph.i.i.i.i.i.peel ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.lcssa, i64 noundef %.lcssa192, i64 noundef range(i64 1, -9223372036854775807) 1) #28
  br label %.loopexit

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 1) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECss03989lGqH_5uu_df.exit70

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECss03989lGqH_5uu_df.exit70: ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_n7RepeatNhEE9from_iterCss03989lGqH_5uu_df.exit.thread, %bb.t, %bb.x
  %i.ce = tail call noundef ptr %i.p(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 1) #30 ; 2 uses
  %.not57 = icmp eq ptr %i.ce, null
  br i1 %.not57, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCss03989lGqH_5uu_df5table4CellEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit, label %.loopexit

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCss03989lGqH_5uu_df5table4CellEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECss03989lGqH_5uu_df.exit70, %bb.r, %bb.x
  %.not = icmp eq ptr %.sroa.2.0.i.i.i, null
  br i1 %.not, label %.loopexit198, label %.lr.ph378, !llvm.loop !2597

.split48:                                         ; preds = %bb.p
  %.not.i.i.i71 = icmp slt i64 %i.bp, 0
  br i1 %.not.i.i.i71, label %.loopexit203, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i72, !prof !12

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i72: ; preds = %.split48
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2600
  %i.cf = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.bp, i64 noundef range(i64 1, 9) 1) #28, !noalias !2600 ; 5 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %.loopexit203, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_n7RepeatNhEE9from_iterCss03989lGqH_5uu_df.exit78

.loopexit203:                                     ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i72.peel, %.split48.peel, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i72, %.split48
  %.lcssa193 = phi i64 [ %i.bp, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i72 ], [ %i.bp, %.split48 ], [ %i.ah, %.split48.peel ], [ %i.ah, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i72.peel ]
  %.sroa.4.0.ph.i.i77 = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i72 ], [ 0, %.split48 ], [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i72.peel ], [ 0, %.split48.peel ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i77, i64 %.lcssa193) #31, !noalias !2604
  unreachable

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_n7RepeatNhEE9from_iterCss03989lGqH_5uu_df.exit78: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i72
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cf, i8 32, i64 %i.bp, i1 false), !noalias !2601
  %i.ch = tail call noundef ptr %i.p(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cf, i64 noundef %i.bp) #30 ; 2 uses
  %.not55 = icmp eq ptr %i.ch, null
  br i1 %.not55, label %bb.v, label %.loopexit204

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_n7RepeatNhEE9from_iterCss03989lGqH_5uu_df.exit78.thread: ; preds = %bb.p
  %i.ci = tail call noundef ptr %i.p(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0) #30 ; 2 uses
  %.not55288 = icmp eq ptr %i.ci, null
  br i1 %.not55288, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECss03989lGqH_5uu_df.exit83, label %.loopexit

.loopexit204:                                     ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_n7RepeatNhEE9from_iterCss03989lGqH_5uu_df.exit78.peel, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_n7RepeatNhEE9from_iterCss03989lGqH_5uu_df.exit78
  %.sroa.1288.0.lcssa = phi i64 [ %i.bp, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_n7RepeatNhEE9from_iterCss03989lGqH_5uu_df.exit78 ], [ %i.ah, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_n7RepeatNhEE9from_iterCss03989lGqH_5uu_df.exit78.peel ] ; 2 uses
  %.sroa.787.0.lcssa = phi ptr [ %i.cf, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_n7RepeatNhEE9from_iterCss03989lGqH_5uu_df.exit78 ], [ %i.at, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_n7RepeatNhEE9from_iterCss03989lGqH_5uu_df.exit78.peel ]
  %.lcssa167 = phi ptr [ %i.ch, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_n7RepeatNhEE9from_iterCss03989lGqH_5uu_df.exit78 ], [ %i.av, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_n7RepeatNhEE9from_iterCss03989lGqH_5uu_df.exit78.peel ] ; 2 uses
  %i.cj = icmp eq i64 %.sroa.1288.0.lcssa, 0
  br i1 %i.cj, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %.loopexit204
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.787.0.lcssa, i64 noundef %.sroa.1288.0.lcssa, i64 noundef range(i64 1, -9223372036854775807) 1) #28
  br label %.loopexit

bb.v:                                             ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_n7RepeatNhEE9from_iterCss03989lGqH_5uu_df.exit78
  %.not337 = icmp ugt i64 %i.bm, %i.bo
  br i1 %.not337, label %bb.w, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECss03989lGqH_5uu_df.exit83

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 1) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECss03989lGqH_5uu_df.exit83

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECss03989lGqH_5uu_df.exit83: ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_n7RepeatNhEE9from_iterCss03989lGqH_5uu_df.exit78.thread, %bb.v, %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i.i.i138376, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !6, !noundef !6
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i.i.i138376, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !6
  %i.co = tail call noundef ptr %i.p(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cl, i64 noundef %i.cn) #30 ; 2 uses
  %.not56 = icmp eq ptr %i.co, null
  br i1 %.not56, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECss03989lGqH_5uu_df.exit83
  br i1 %.not49.not, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCss03989lGqH_5uu_df5table4CellEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECss03989lGqH_5uu_df.exit70

bb.y:                                             ; preds = %.loopexit198
  %i.cp = icmp eq ptr %i.s, %i.e
  br i1 %i.cp, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_n7RepeatNhEE9from_iterCss03989lGqH_5uu_df.exit78.peel.thread, %bb.y, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECss03989lGqH_5uu_df.exit70.peel, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECss03989lGqH_5uu_df.exit83.peel, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_n7RepeatNhEE9from_iterCss03989lGqH_5uu_df.exit.thread.peel, %bb.e, %.loopexit198, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_n7RepeatNhEE9from_iterCss03989lGqH_5uu_df.exit78.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECss03989lGqH_5uu_df.exit70, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECss03989lGqH_5uu_df.exit83, %bb.q, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_n7RepeatNhEE9from_iterCss03989lGqH_5uu_df.exit.thread, %.loopexit202, %.loopexit204, %bb.u, %bb.a
  %.sroa.0.3 = phi ptr [ %.lcssa167, %.loopexit204 ], [ null, %bb.a ], [ %.lcssa167, %bb.u ], [ %i.cd, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_n7RepeatNhEE9from_iterCss03989lGqH_5uu_df.exit.thread ], [ %.lcssa166, %.loopexit202 ], [ %i.ci, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_n7RepeatNhEE9from_iterCss03989lGqH_5uu_df.exit78.thread ], [ %i.bz, %bb.q ], [ %i.co, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECss03989lGqH_5uu_df.exit83 ], [ %i.ce, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECss03989lGqH_5uu_df.exit70 ], [ %i.aw, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_n7RepeatNhEE9from_iterCss03989lGqH_5uu_df.exit78.peel.thread ], [ %i.ap, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_n7RepeatNhEE9from_iterCss03989lGqH_5uu_df.exit.thread.peel ], [ %i.bb, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECss03989lGqH_5uu_df.exit83.peel ], [ %i.bc, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECss03989lGqH_5uu_df.exit70.peel ], [ %i.ao, %bb.e ], [ null, %bb.y ], [ %i.bu, %.loopexit198 ]
  ret ptr %.sroa.0.3
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs_Css03989lGqH_5uu_dfNtB4_7Options12from_matches(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [16 x i8], align 16               ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [40 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [40 x i8], align 8                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [64 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [32 x i8], align 8               ; 6 uses
  %i.ab = alloca [40 x i8], align 8               ; 4 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [64 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 8 uses
  %i.ah = alloca [32 x i8], align 8               ; 6 uses
  %i.ai = alloca [40 x i8], align 8               ; 4 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [32 x i8], align 8               ; 15 uses
  %i.al = alloca [64 x i8], align 8               ; 7 uses
  %i.am = alloca [72 x i8], align 8               ; 6 uses
  %i.an = alloca [64 x i8], align 8               ; 7 uses
  %i.ao = alloca [72 x i8], align 8               ; 6 uses
  %i.ap = alloca [32 x i8], align 8               ; 11 uses
  %.sroa.5159.i = alloca [56 x i8], align 8       ; 5 uses
  %.sroa.5145.i = alloca [56 x i8], align 8       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2737)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5145.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !2738
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECss03989lGqH_5uu_df(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 4) #28, !noalias !2739
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2741)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2738
  store ptr @47, ptr %i.aj, align 8, !noalias !2742
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 4, ptr %i.ar, align 8, !noalias !2742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2742
  %i.as = load i64, ptr %i.ao, align 8, !range !18, !alias.scope !2741, !noalias !2738, !noundef !6
  %i.at = trunc nuw i64 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  br i1 %i.at, label %bb.b, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECss03989lGqH_5uu_df.exit.i, !prof !11

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.au, i64 40, i1 false), !noalias !2743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2742
  store ptr %i.aj, ptr %i.ah, align 8, !noalias !2742
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCss03989lGqH_5uu_df, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !2742
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.ai, ptr %i.av, align 8, !noalias !2742
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !2742
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @16, ptr noundef nonnull %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #29, !noalias !2744
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECss03989lGqH_5uu_df.exit.i: ; preds = %bb.a
  %.sroa.0143.0.copyload144.i = load ptr, ptr %i.au, align 8, !alias.scope !2745, !noalias !2738 ; 2 uses
  %.sroa.5145.0..sroa_idx146.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5145.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5145.0..sroa_idx146.i, i64 56, i1 false), !alias.scope !2745, !noalias !2738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !2738
  %.not.i = icmp eq ptr %.sroa.0143.0.copyload144.i, null
  br i1 %.not.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECss03989lGqH_5uu_df.exit.i
  %.sroa.4.0..sroa_idx186.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2738
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx186.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5145.i, i64 56, i1 false), !noalias !2738
  store ptr %.sroa.0143.0.copyload144.i, ptr %i.an, align 8, !noalias !2738
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2746)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2738
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2747
  call fastcc void @_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB32_7Options4from00ENtNtNtB9_6traits8iterator8Iterator4nextB32_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.an) #30, !noalias !2748
  %i.aw = load i64, ptr %i.af, align 8, !range !16, !noalias !2747, !noundef !6
  %.not.i.i = icmp eq i64 %i.aw, -1
  br i1 %.not.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4L_7Options4from00EE9from_iterB4L_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %.val.i.i = load i64, ptr %i.ax, align 8, !alias.scope !2746, !noalias !2738, !noundef !6 ; 2 uses
  %i.ay = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i, i64 1)
  %..i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ay, i64 4) ; 3 uses
  %i.az = mul i64 %..i.i.i, 24                    ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.val.i.i, 384307168202282324
  br i1 %or.cond.i.i.i.i, label %bb.f, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.e
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2749
  %i.bb = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.az, i64 noundef range(i64 1, 9) 8) #28, !noalias !2749 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.f, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i.i

bb.f:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i, %bb.d
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ 0, %bb.d ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.az) #31, !noalias !2750
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i, %bb.e
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.e ], [ %i.bb, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 4 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.e ], [ %..i.i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 4 uses
  %i.bd = icmp ule i64 %..i.i.i, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.bd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !2750
  store i64 %.sroa.4.0.i.i.i, ptr %i.ag, align 8, !noalias !2747
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2747
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, ptr noundef nonnull align 8 dereferenceable(64) %i.an, i64 64, i1 false), !noalias !2751
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2755)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2756
  call fastcc void @_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB32_7Options4from00ENtNtNtB9_6traits8iterator8Iterator4nextB32_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ae) #30, !noalias !2757
  %i.be = load i64, ptr %i.ad, align 8, !range !16, !noalias !2758, !noundef !6
  %.not1.i.i.i.i = icmp eq i64 %i.be, -1
  br i1 %.not1.i.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4from00EE11spec_extendB4s_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %i.bg = phi ptr [ %.sroa.10.0.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bm, %bb.h ]
  %i.bh = phi i64 [ %.sroa.4.0.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bn, %bb.h ] ; 3 uses
  %i.bi = phi i64 [ 1, %.lr.ph.i.i.i.i ], [ %i.bp, %bb.h ] ; 4 uses
  %i.bj = icmp samesign ult i64 %i.bi, 384307168202282326
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp eq i64 %i.bi, %i.bh
  br i1 %i.bk, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCss03989lGqH_5uu_df.exit.i.i.i.i, label %bb.h

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCss03989lGqH_5uu_df.exit.i.i.i.i: ; preds = %bb.g
  %.val.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !2759, !noalias !2747, !noundef !6
  %i.bl = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECss03989lGqH_5uu_df(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag, i64 noundef %i.bh, i64 noundef %i.bl, i64 noundef 8, i64 noundef 24) #28, !noalias !2760
  %.pre2.i.i.i.i = load i64, ptr %i.ag, align 8, !range !7, !alias.scope !2761, !noalias !2747
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2761, !noalias !2747
  br label %bb.h

bb.h:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCss03989lGqH_5uu_df.exit.i.i.i.i, %bb.g
  %i.bm = phi ptr [ %i.bg, %bb.g ], [ %.pre.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCss03989lGqH_5uu_df.exit.i.i.i.i ] ; 2 uses
  %i.bn = phi i64 [ %i.bh, %bb.g ], [ %.pre2.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCss03989lGqH_5uu_df.exit.i.i.i.i ]
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !2762
  %i.bp = add nuw nsw i64 %i.bi, 1                ; 3 uses
  store i64 %i.bp, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !2761, !noalias !2747
  call fastcc void @_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB32_7Options4from00ENtNtNtB9_6traits8iterator8Iterator4nextB32_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ae) #30, !noalias !2757
  %i.bq = load i64, ptr %i.ad, align 8, !range !16, !noalias !2758, !noundef !6
  %.not.i.i2.i.i = icmp eq i64 %i.bq, -1
  br i1 %.not.i.i2.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4from00EE11spec_extendB4s_.exit.i.loopexit.i, label %bb.g

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4from00EE11spec_extendB4s_.exit.i.loopexit.i: ; preds = %bb.h
  %.sroa.0187.0.copyload.pre.i = load i64, ptr %i.ag, align 8, !noalias !2763
  %.sroa.5188.0.copyload.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2763
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4from00EE11spec_extendB4s_.exit.i.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4from00EE11spec_extendB4s_.exit.i.i: ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4from00EE11spec_extendB4s_.exit.i.loopexit.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i.i
  %.sroa.7.0.copyload.i = phi i64 [ %i.bp, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4from00EE11spec_extendB4s_.exit.i.loopexit.i ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i.i ]
  %.sroa.5188.0.copyload.i = phi ptr [ %.sroa.5188.0.copyload.pre.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4from00EE11spec_extendB4s_.exit.i.loopexit.i ], [ %.sroa.10.0.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i.i ]
  %.sroa.0187.0.copyload.i = phi i64 [ %.sroa.0187.0.copyload.pre.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4from00EE11spec_extendB4s_.exit.i.loopexit.i ], [ %.sroa.4.0.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2747
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4L_7Options4from00EE9from_iterB4L_.exit.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4L_7Options4from00EE9from_iterB4L_.exit.i: ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4from00EE11spec_extendB4s_.exit.i.i, %bb.c
  %.sroa.7.0.i = phi i64 [ %.sroa.7.0.copyload.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4from00EE11spec_extendB4s_.exit.i.i ], [ 0, %bb.c ]
  %.sroa.5188.0.i = phi ptr [ %.sroa.5188.0.copyload.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4from00EE11spec_extendB4s_.exit.i.i ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %.sroa.0187.0.i = phi i64 [ %.sroa.0187.0.copyload.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4from00EE11spec_extendB4s_.exit.i.i ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2738
  br label %bb.i

bb.i:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4L_7Options4from00EE9from_iterB4L_.exit.i, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECss03989lGqH_5uu_df.exit.i
  %.sroa.10.0.i = phi i64 [ %.sroa.7.0.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4L_7Options4from00EE9from_iterB4L_.exit.i ], [ undef, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECss03989lGqH_5uu_df.exit.i ] ; 7 uses
  %.sroa.8.0.i = phi ptr [ %.sroa.5188.0.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4L_7Options4from00EE9from_iterB4L_.exit.i ], [ undef, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECss03989lGqH_5uu_df.exit.i ] ; 10 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0187.0.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4L_7Options4from00EE9from_iterB4L_.exit.i ], [ -1, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECss03989lGqH_5uu_df.exit.i ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5145.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5159.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2738
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECss03989lGqH_5uu_df(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 12) #28, !noalias !2739
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2765)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2738
  store ptr @56, ptr %i.ac, align 8, !noalias !2766
  %i.br = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 12, ptr %i.br, align 8, !noalias !2766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2766
  %i.bs = load i64, ptr %i.am, align 8, !range !18, !alias.scope !2765, !noalias !2738, !noundef !6
  %i.bt = trunc nuw i64 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  br i1 %i.bt, label %bb.j, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECss03989lGqH_5uu_df.exit57.i, !prof !11

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.bu, i64 40, i1 false), !noalias !2767
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2766
  store ptr %i.ac, ptr %i.aa, align 8, !noalias !2766
  %.sroa.42.0..sroa_idx.i55.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCss03989lGqH_5uu_df, ptr %.sroa.42.0..sroa_idx.i55.i, align 8, !noalias !2766
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.ab, ptr %i.bv, align 8, !noalias !2766
  %.sroa.46.0..sroa_idx.i56.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i56.i, align 8, !noalias !2766
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @16, ptr noundef nonnull %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #29, !noalias !2768
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECss03989lGqH_5uu_df.exit57.i: ; preds = %bb.i
  %.sroa.0157.0.copyload158.i = load ptr, ptr %i.bu, align 8, !alias.scope !2769, !noalias !2738 ; 2 uses
  %.sroa.5159.0..sroa_idx160.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5159.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5159.0..sroa_idx160.i, i64 56, i1 false), !alias.scope !2769, !noalias !2738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2738
  %.not49.i = icmp eq ptr %.sroa.0157.0.copyload158.i, null
  br i1 %.not49.i, label %.thread.i, label %bb.k

.thread.i:                                        ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECss03989lGqH_5uu_df.exit57.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5159.i)
  %.not50235.i = icmp eq i64 %.sroa.0.0.i, -1
  br label %bb.r

bb.k:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECss03989lGqH_5uu_df.exit57.i
  %.sroa.4190.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !2738
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4190.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5159.i, i64 56, i1 false), !noalias !2738
  store ptr %.sroa.0157.0.copyload158.i, ptr %i.al, align 8, !noalias !2738
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2770)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2738
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2771
  call fastcc void @_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB32_7Options4froms_00ENtNtNtB9_6traits8iterator8Iterator4nextB32_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.al) #30, !noalias !2772
  %i.bw = load i64, ptr %i.y, align 8, !range !16, !noalias !2771, !noundef !6
  %.not.i58.i = icmp eq i64 %i.bw, -1
  br i1 %.not.i58.i, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %.val.i59.i = load i64, ptr %i.bx, align 8, !alias.scope !2770, !noalias !2738, !noundef !6 ; 2 uses
  %i.by = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i59.i, i64 1)
  %..i.i60.i = tail call noundef i64 @llvm.umax.i64(i64 %i.by, i64 4) ; 3 uses
  %i.bz = mul i64 %..i.i60.i, 24                  ; 3 uses
  %or.cond.i.i.i61.i = icmp ugt i64 %.val.i59.i, 384307168202282324
  br i1 %or.cond.i.i.i61.i, label %bb.n, label %bb.m, !prof !12

bb.m:                                             ; preds = %bb.l
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i63.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i62.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i62.i: ; preds = %bb.m
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2773
  %i.cb = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.bz, i64 noundef range(i64 1, 9) 8) #28, !noalias !2773 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.n, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i63.i

bb.n:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i62.i, %bb.l
  %.sroa.4.0.ph.i.i75.i = phi i64 [ 8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i62.i ], [ 0, %bb.l ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i75.i, i64 %i.bz) #31, !noalias !2774
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i63.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i62.i, %bb.m
  %.sroa.10.0.i.i64.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.m ], [ %i.cb, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i62.i ] ; 4 uses
  %.sroa.4.0.i.i65.i = phi i64 [ 0, %bb.m ], [ %..i.i60.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i62.i ] ; 4 uses
  %i.cd = icmp ule i64 %..i.i60.i, %.sroa.4.0.i.i65.i
  tail call void @llvm.assume(i1 %i.cd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0.i.i64.i, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !2774
  store i64 %.sroa.4.0.i.i65.i, ptr %i.z, align 8, !noalias !2771
  %.sroa.4.0..sroa_idx.i66.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i64.i, ptr %.sroa.4.0..sroa_idx.i66.i, align 8, !noalias !2771
  %.sroa.6.0..sroa_idx.i67.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i67.i, align 8, !noalias !2771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.al, i64 64, i1 false), !noalias !2775
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2779)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2780
  call fastcc void @_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB32_7Options4froms_00ENtNtNtB9_6traits8iterator8Iterator4nextB32_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.x) #30, !noalias !2781
  %i.ce = load i64, ptr %i.w, align 8, !range !16, !noalias !2782, !noundef !6
  %.not1.i.i.i68.i = icmp eq i64 %i.ce, -1
  br i1 %.not1.i.i.i68.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4froms_00EE11spec_extendB4s_.exit.i.i, label %.lr.ph.i.i.i69.i

.lr.ph.i.i.i69.i:                                 ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i63.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i.i69.i
  %i.cg = phi ptr [ %.sroa.10.0.i.i64.i, %.lr.ph.i.i.i69.i ], [ %i.cm, %bb.p ]
  %i.ch = phi i64 [ %.sroa.4.0.i.i65.i, %.lr.ph.i.i.i69.i ], [ %i.cn, %bb.p ] ; 3 uses
  %i.ci = phi i64 [ 1, %.lr.ph.i.i.i69.i ], [ %i.cp, %bb.p ] ; 4 uses
  %i.cj = icmp samesign ult i64 %i.ci, 384307168202282326
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = icmp eq i64 %i.ci, %i.ch
  br i1 %i.ck, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCss03989lGqH_5uu_df.exit.i.i.i71.i, label %bb.p

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCss03989lGqH_5uu_df.exit.i.i.i71.i: ; preds = %bb.o
  %.val.i.i.i72.i = load i64, ptr %i.cf, align 8, !alias.scope !2783, !noalias !2771, !noundef !6
  %i.cl = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i72.i, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECss03989lGqH_5uu_df(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %i.ch, i64 noundef %i.cl, i64 noundef 8, i64 noundef 24) #28, !noalias !2784
  %.pre2.i.i.i73.i = load i64, ptr %i.z, align 8, !range !7, !alias.scope !2785, !noalias !2771
  %.pre.i74.i = load ptr, ptr %.sroa.4.0..sroa_idx.i66.i, align 8, !alias.scope !2785, !noalias !2771
  br label %bb.p

bb.p:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCss03989lGqH_5uu_df.exit.i.i.i71.i, %bb.o
  %i.cm = phi ptr [ %i.cg, %bb.o ], [ %.pre.i74.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCss03989lGqH_5uu_df.exit.i.i.i71.i ] ; 2 uses
  %i.cn = phi i64 [ %i.ch, %bb.o ], [ %.pre2.i.i.i73.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCss03989lGqH_5uu_df.exit.i.i.i71.i ]
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !2786
  %i.cp = add nuw nsw i64 %i.ci, 1                ; 3 uses
  store i64 %i.cp, ptr %.sroa.6.0..sroa_idx.i67.i, align 8, !alias.scope !2785, !noalias !2771
  call fastcc void @_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB32_7Options4froms_00ENtNtNtB9_6traits8iterator8Iterator4nextB32_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.x) #30, !noalias !2781
  %i.cq = load i64, ptr %i.w, align 8, !range !16, !noalias !2782, !noundef !6
  %.not.i.i2.i70.i = icmp eq i64 %i.cq, -1
  br i1 %.not.i.i2.i70.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4froms_00EE11spec_extendB4s_.exit.i.loopexit.i, label %bb.o

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4froms_00EE11spec_extendB4s_.exit.i.loopexit.i: ; preds = %bb.p
  %.sroa.0191.0.copyload.pre.i = load i64, ptr %i.z, align 8, !noalias !2787
  %.sroa.5192.0.copyload.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i66.i, align 8, !noalias !2787
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4froms_00EE11spec_extendB4s_.exit.i.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4froms_00EE11spec_extendB4s_.exit.i.i: ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4froms_00EE11spec_extendB4s_.exit.i.loopexit.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i63.i
  %.sroa.7193.0.copyload.i = phi i64 [ %i.cp, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4froms_00EE11spec_extendB4s_.exit.i.loopexit.i ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i63.i ]
  %.sroa.5192.0.copyload.i = phi ptr [ %.sroa.5192.0.copyload.pre.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4froms_00EE11spec_extendB4s_.exit.i.loopexit.i ], [ %.sroa.10.0.i.i64.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i63.i ]
  %.sroa.0191.0.copyload.i = phi i64 [ %.sroa.0191.0.copyload.pre.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4froms_00EE11spec_extendB4s_.exit.i.loopexit.i ], [ %.sroa.4.0.i.i65.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i63.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2771
  br label %bb.q

bb.q:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4froms_00EE11spec_extendB4s_.exit.i.i, %bb.k
  %.sroa.7193.0.i = phi i64 [ %.sroa.7193.0.copyload.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4froms_00EE11spec_extendB4s_.exit.i.i ], [ 0, %bb.k ] ; 6 uses
  %.sroa.5192.0.i = phi ptr [ %.sroa.5192.0.copyload.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4froms_00EE11spec_extendB4s_.exit.i.i ], [ inttoptr (i64 8 to ptr), %bb.k ] ; 7 uses
  %.sroa.0191.0.i = phi i64 [ %.sroa.0191.0.copyload.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNCNvMs0_Css03989lGqH_5uu_dfNtB4s_7Options4froms_00EE11spec_extendB4s_.exit.i.i ], [ 0, %bb.k ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2738
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5159.i)
  %.not50.i = icmp eq i64 %.sroa.0.0.i, -1        ; 2 uses
  %.not51.i = icmp eq i64 %.sroa.0191.0.i, -1     ; 2 uses
  %or.cond.i = select i1 %.not50.i, i1 true, i1 %.not51.i
  br i1 %or.cond.i, label %bb.r, label %bb.ac

bb.r:                                             ; preds = %_RNvMs0_Css03989lGqH_5uu_dfNtB5_7Options21get_intersected_types.exit.i, %_RNvMs0_Css03989lGqH_5uu_dfNtB5_7Options21get_intersected_types.exit.thread.i, %bb.q, %.thread.i
  %.not51246.i = phi i1 [ true, %.thread.i ], [ %.not51.i, %bb.q ], [ false, %_RNvMs0_Css03989lGqH_5uu_dfNtB5_7Options21get_intersected_types.exit.thread.i ], [ false, %_RNvMs0_Css03989lGqH_5uu_dfNtB5_7Options21get_intersected_types.exit.i ] ; 2 uses
  %.not50244.i = phi i1 [ %.not50235.i, %.thread.i ], [ %.not50.i, %bb.q ], [ false, %_RNvMs0_Css03989lGqH_5uu_dfNtB5_7Options21get_intersected_types.exit.thread.i ], [ false, %_RNvMs0_Css03989lGqH_5uu_dfNtB5_7Options21get_intersected_types.exit.i ] ; 3 uses
  %.sroa.0147.0242.i = phi i64 [ -1, %.thread.i ], [ %.sroa.0191.0.i, %bb.q ], [ %.sroa.0191.0.i, %_RNvMs0_Css03989lGqH_5uu_dfNtB5_7Options21get_intersected_types.exit.thread.i ], [ %.sroa.0191.0.i, %_RNvMs0_Css03989lGqH_5uu_dfNtB5_7Options21get_intersected_types.exit.i ] ; 4 uses
  %.sroa.9.0240.i = phi ptr [ undef, %.thread.i ], [ %.sroa.5192.0.i, %bb.q ], [ %.sroa.5192.0.i, %_RNvMs0_Css03989lGqH_5uu_dfNtB5_7Options21get_intersected_types.exit.thread.i ], [ %.sroa.5192.0.i, %_RNvMs0_Css03989lGqH_5uu_dfNtB5_7Options21get_intersected_types.exit.i ] ; 5 uses
  %.sroa.11.0238.i = phi i64 [ undef, %.thread.i ], [ %.sroa.7193.0.i, %bb.q ], [ %.sroa.7193.0.i, %_RNvMs0_Css03989lGqH_5uu_dfNtB5_7Options21get_intersected_types.exit.thread.i ], [ %.sroa.7193.0.i, %_RNvMs0_Css03989lGqH_5uu_dfNtB5_7Options21get_intersected_types.exit.i ] ; 4 uses
  %i.cr = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef 5) #28, !noalias !2739
  %i.cs = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 3) #28, !noalias !2739
  %i.ct = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 4) #28, !noalias !2739
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2738
  call void @llvm.experimental.noalias.scope.decl(metadata !2788)
  %i.cu = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 9) #28, !noalias !2789
  br i1 %i.cu, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cv = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 11) #28, !noalias !2789
  br i1 %i.cv, label %bb.w, label %bb.v

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2790
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2791)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2790
  store ptr @53, ptr %i.r, align 8, !noalias !2792
  %i.cw = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 9, ptr %i.cw, align 8, !noalias !2792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2792
  %i.cx = load i64, ptr %i.s, align 8, !range !20, !alias.scope !2791, !noalias !2790, !noundef !6
  %.not.i.i.i = icmp eq i64 %i.cx, 2
  br i1 %.not.i.i.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECss03989lGqH_5uu_df.exit.i.i, label %bb.u, !prof !10

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.s, i64 40, i1 false), !noalias !2790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2792
  store ptr %i.r, ptr %i.p, align 8, !noalias !2792
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCss03989lGqH_5uu_df, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !2792
  %i.cy = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.cy, align 8, !noalias !2792
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !2792
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @16, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #29, !noalias !2793
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECss03989lGqH_5uu_df.exit.i.i: ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !2791, !noalias !2790, !align !8, !noundef !6 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2790
  %.not.i76.i = icmp eq ptr %i.da, null
  br i1 %.not.i76.i, label %bb.aa, label %bb.z, !prof !11

bb.v:                                             ; preds = %bb.s
  %i.db = call { i64, i64 } @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6parser16parse_block_size19block_size_from_env(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @154, i64 noundef 3) #28, !noalias !2789 ; 2 uses
  %i.dc = extractvalue { i64, i64 } %i.db, 0
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.s
  %i.de = call noundef i64 @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6parser16parse_block_size18default_block_size() #28, !noalias !2789
  br label %bb.ap

bb.x:                                             ; preds = %bb.v
  %i.df = extractvalue { i64, i64 } %i.db, 1
  br label %bb.ap

bb.y:                                             ; preds = %bb.v
  %i.dg = call noundef i64 @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6parser16parse_block_size18default_block_size() #28, !noalias !2789
  br label %bb.ap

bb.z:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECss03989lGqH_5uu_df.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2790
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !2789, !nonnull !6, !noundef !6
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !2789, !noundef !6
  call void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14parse_size_u64(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.di, i64 noundef %i.dk) #28, !noalias !2789
  %i.dl = load i64, ptr %i.v, align 8, !range !2794, !noalias !2790, !noundef !6 ; 3 uses
  %.not35.i.i = icmp eq i64 %i.dl, -1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !2790 ; 8 uses
  br i1 %.not35.i.i, label %bb.ab, label %_RNvNtCss03989lGqH_5uu_df6blocks15read_block_size.exit.i

bb.aa:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECss03989lGqH_5uu_df.exit.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #29, !noalias !2789
  unreachable

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2790
  %.not36.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not36.i.i, label %_RNvNtCss03989lGqH_5uu_df6blocks15read_block_size.exit.thread258.i, label %bb.ap

_RNvNtCss03989lGqH_5uu_df6blocks15read_block_size.exit.thread258.i: ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2790
  %i.do = load ptr, ptr %i.dh, align 8, !noalias !2789, !nonnull !6, !noundef !6
  %i.dp = load i64, ptr %i.dj, align 8, !noalias !2789, !noundef !6
  store i64 0, ptr %i.u, align 8, !noalias !2790
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.do, ptr %.sroa.425.0..sroa_idx.i.i, align 8, !noalias !2790
  %.sroa.526.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
end_hunk_0
