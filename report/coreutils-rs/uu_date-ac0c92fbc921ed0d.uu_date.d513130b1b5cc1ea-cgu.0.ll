Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_date-ac0c92fbc921ed0d.uu_date.d513130b1b5cc1ea-cgu.0?download=true
inline.NumInlined: 1460
inline.NumDeleted: 758
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvCsiibOIv6tv3q_7uu_date20escape_invalid_bytes:bb.a
  %i.bm = icmp eq i64 %.val3.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %i.bl, i1 true, i1 %i.bm
  br i1 %or.cond.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEEECsiibOIv6tv3q_7uu_date.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef %.val3.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !2733
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEEECsiibOIv6tv3q_7uu_date.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEEECsiibOIv6tv3q_7uu_date.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.val.i.i.i = load ptr, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !2732, !noalias !2711, !noundef !6 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.val1.i.i.i = load i64, ptr %i.bn, align 8, !alias.scope !2732, !noalias !2711 ; 2 uses
  %i.bo = icmp eq ptr %.val.i.i.i, null
  %i.bp = icmp eq i64 %.val1.i.i.i, 0
  %or.cond.i4.i.i.i = select i1 %i.bo, i1 true, i1 %i.bp
  br i1 %or.cond.i4.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtNtB1D_5slice4iter4IterhEBR_NCNvCsiibOIv6tv3q_7uu_date20escape_invalid_bytes0EE9from_iterB30_.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEEECsiibOIv6tv3q_7uu_date.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !2734
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtNtB1D_5slice4iter4IterhEBR_NCNvCsiibOIv6tv3q_7uu_date20escape_invalid_bytes0EE9from_iterB30_.exit

_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtNtB1D_5slice4iter4IterhEBR_NCNvCsiibOIv6tv3q_7uu_date20escape_invalid_bytes0EE9from_iterB30_.exit: ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter4IterhEBH_NCNvCsiibOIv6tv3q_7uu_date20escape_invalid_bytes0EE11spec_extendB2I_.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEEECsiibOIv6tv3q_7uu_date.exit.i.i.i, %bb.i
  %.sroa.8.0 = phi i64 [ %.sroa.8.0.copyload, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter4IterhEBH_NCNvCsiibOIv6tv3q_7uu_date20escape_invalid_bytes0EE11spec_extendB2I_.exit.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEEECsiibOIv6tv3q_7uu_date.exit.i.i.i ], [ 0, %bb.i ]
  %.sroa.5.0 = phi ptr [ %.sroa.5.0.copyload, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter4IterhEBH_NCNvCsiibOIv6tv3q_7uu_date20escape_invalid_bytes0EE11spec_extendB2I_.exit.i ], [ inttoptr (i64 1 to ptr), %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEEECsiibOIv6tv3q_7uu_date.exit.i.i.i ], [ inttoptr (i64 1 to ptr), %bb.i ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter4IterhEBH_NCNvCsiibOIv6tv3q_7uu_date20escape_invalid_bytes0EE11spec_extendB2I_.exit.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEEECsiibOIv6tv3q_7uu_date.exit.i.i.i ], [ 0, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0) ]
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0, i64 noundef %.sroa.8.0) #33
  %i.bq = load i64, ptr %i.c, align 8, !range !12, !noundef !6
  %.not = icmp eq i64 %i.bq, -1
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtNtB1D_5slice4iter4IterhEBR_NCNvCsiibOIv6tv3q_7uu_date20escape_invalid_bytes0EE9from_iterB30_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.o

bb.k:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtNtB1D_5slice4iter4IterhEBR_NCNvCsiibOIv6tv3q_7uu_date20escape_invalid_bytes0EE9from_iterB30_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !6, !noundef !6
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !6 ; 7 uses
  %.not.i = icmp slt i64 %i.bu, 0
  br i1 %.not.i, label %bb.m, label %bb.l, !prof !19

bb.l:                                             ; preds = %bb.k
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit.thread15, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !2735
  %i.bw = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.bu, i64 noundef range(i64 1, 9) 1) #33, !noalias !2735 ; 3 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.k, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.k ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.bu) #37
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit.thread15: ; preds = %bb.l, %bb.n
  %i.by = phi ptr [ %i.bw, %bb.n ], [ inttoptr (i64 1 to ptr), %bb.l ]
  store i64 %i.bu, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bu, ptr %.sroa.64.0..sroa_idx, align 8
  br label %bb.o

bb.n:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bw, ptr nonnull align 1 %i.bs, i64 %i.bu, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit.thread15

bb.o:                                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit.thread15, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bz = icmp eq i64 %.sroa.0.0, 0
  br i1 %i.bz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsiibOIv6tv3q_7uu_date.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0, i64 noundef %.sroa.0.0, i64 noundef range(i64 1, -9223372036854775807) 1) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsiibOIv6tv3q_7uu_date.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsiibOIv6tv3q_7uu_date.exit: ; preds = %bb.o, %bb.p
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define { i64, i32 } @_RNvCsiibOIv6tv3q_7uu_date20get_clock_resolution() unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},~{memory}"(ptr nonnull inttoptr (i64 229 to ptr), ptr null, ptr nonnull %i.a) #33, !srcloc !2736 ; 0 uses
  %i.c = load i64, ptr %i.a, align 8              ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = trunc i64 %i.e to i32                    ; 7 uses
  %i.g = add i64 %i.c, 377705023201
  %or.cond.i.i = icmp ult i64 %i.g, 631107230402
  %i.h = add i32 %i.f, 999999999
  %or.cond1.i.i = icmp ult i32 %i.h, 1999999999
  %or.cond.i = and i1 %or.cond.i.i, %or.cond1.i.i
  br i1 %or.cond.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.c, -377705023201
  %i.j = icmp slt i32 %i.f, 0
  %or.cond3.i.i = and i1 %i.i, %i.j
  br i1 %or.cond3.i.i, label %bb.f, label %bb.c, !prof !2737

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %i.f, 0
  %i.l = icmp eq i64 %i.c, 0
  %or.cond5.i.i = or i1 %i.l, %i.k
  br i1 %or.cond5.i.i, label %_RNvMNtCs3JjgEOiFeOI_4jiff9timestampNtB2_9Timestamp8constant.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call i64 @llvm.scmp.i64.i64(i64 %i.c, i64 0)
  %i.n = call i64 @llvm.scmp.i64.i32(i32 %i.f, i32 0)
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %_RNvMNtCs3JjgEOiFeOI_4jiff9timestampNtB2_9Timestamp8constant.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = icmp slt i64 %i.c, 0                     ; 2 uses
  %.sroa.07.0.v.i.i = select i1 %i.p, i64 1, i64 -1
  %.sroa.07.0.i.i = add nsw i64 %.sroa.07.0.v.i.i, %i.c
  %.sroa.021.0.v.i.i = select i1 %i.p, i32 -1000000000, i32 1000000000
  %.sroa.021.0.i.i = add nsw i32 %.sroa.021.0.v.i.i, %i.f
  br label %_RNvMNtCs3JjgEOiFeOI_4jiff9timestampNtB2_9Timestamp8constant.exit

bb.f:                                             ; preds = %bb.b, %bb.a
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @118, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #34
  unreachable

_RNvMNtCs3JjgEOiFeOI_4jiff9timestampNtB2_9Timestamp8constant.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.71.0.i = phi i64 [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %.sroa.07.0.i.i, %bb.e ]
  %.sroa.10.0.i = phi i32 [ %i.f, %bb.c ], [ %i.f, %bb.d ], [ %.sroa.021.0.i.i, %bb.e ]
  %i.q = insertvalue { i64, i32 } poison, i64 %.sroa.71.0.i, 0
  %i.r = insertvalue { i64, i32 } %i.q, i32 %.sroa.10.0.i, 1
  ret { i64, i32 } %i.r
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCsiibOIv6tv3q_7uu_date23format_extended_default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(20) %1, ptr noalias nofree noundef nonnull readonly captures(address) %2, i64 noundef %3, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [10 x i8], align 1                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 19 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [12 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [40 x i8], align 8                ; 10 uses
  %i.r = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.s = tail call noundef i64 @_RNvMNtCs65h624QUiyW_14parse_datetime8extendedNtB2_16ExtendedDateTime12unix_seconds(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %1) #33
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i32, ptr %i.t, align 4, !noundef !6 ; 2 uses
  call void @_RNvMNtCs65h624QUiyW_14parse_datetime8extendedNtB2_16ExtendedDateTime17from_unix_seconds(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, i64 noundef %i.s, i32 noundef %i.u, i32 noundef 0) #33
  %i.v = load i32, ptr %i.r, align 8, !range !24, !noundef !6
  %i.w = trunc nuw i32 %i.v to i1
  br i1 %i.w, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !6, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !6 ; 7 uses
  %.not.i = icmp slt i64 %i.aa, 0
  br i1 %.not.i, label %bb.cs, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit.thread373, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.c
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !2836
  %i.ac = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.aa, i64 noundef range(i64 1, 9) 1) #33, !noalias !2836 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.cs, label %bb.ct

bb.d:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.sroa.091.0.copyload = load i32, ptr %i.ae, align 4
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.492.0.copyload = load i64, ptr %.sroa.492.0..sroa_idx, align 8
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.593.0.copyload = load ptr, ptr %.sroa.593.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.495.4.extract.trunc = trunc i64 %.sroa.492.0.copyload to i32 ; 4 uses
  %i.af = ptrtoint ptr %.sroa.593.0.copyload to i64 ; 7 uses
  %.sroa.796.12.extract.trunc = trunc i64 %i.af to i8 ; 4 uses
  %.sroa.796.13.extract.shift = lshr i64 %i.af, 8 ; 2 uses
  %.sroa.796.13.extract.trunc = trunc i64 %.sroa.796.13.extract.shift to i8 ; 3 uses
  %.sroa.796.14.extract.shift = lshr i64 %i.af, 16 ; 2 uses
  %.sroa.796.14.extract.trunc = trunc i64 %.sroa.796.14.extract.shift to i8
  %.sroa.796.15.extract.shift = lshr i64 %i.af, 24 ; 2 uses
  %.sroa.796.15.extract.trunc = trunc i64 %.sroa.796.15.extract.shift to i8
  %.sroa.796.16.extract.shift = lshr i64 %i.af, 32 ; 2 uses
  %.sroa.796.16.extract.trunc = trunc i64 %.sroa.796.16.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ag = zext i32 %.sroa.091.0.copyload to i64
  %i.ah = add nsw i64 %i.ag, -9599
  %i.ai = srem i64 %i.ah, 400                     ; 3 uses
  %i.aj = icmp slt i64 %i.ai, 0
  %i.ak = add nsw i64 %i.ai, 400
  %spec.select.i.i = select i1 %i.aj, i64 %i.ak, i64 %i.ai
  %i.al = trunc nuw nsw i64 %spec.select.i.i to i16
  %i.am = add nuw nsw i16 %i.al, 9599             ; 4 uses
  %i.an = add i8 %.sroa.796.12.extract.trunc, -1
  %or.cond1.i.i = icmp ult i8 %i.an, 12
  br i1 %or.cond1.i.i, label %bb.e, label %bb.o, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.ao = icmp slt i8 %.sroa.796.13.extract.trunc, 1
  br i1 %i.ao, label %bb.o, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.ap = icmp samesign ugt i8 %.sroa.796.13.extract.trunc, 28
  br i1 %i.ap, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.aq = icmp eq i8 %.sroa.796.12.extract.trunc, 2
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = urem i16 %i.am, 25
  %i.as = icmp eq i16 %i.ar, 0
  %..i.i.i = select i1 %i.as, i16 15, i16 3
  %i.at = and i16 %..i.i.i, %i.am
  %i.au = icmp eq i16 %i.at, 0
  %spec.select.i.i.i = select i1 %i.au, i8 29, i8 28
  br label %_RNvNtCscxuc9kp9KZq_9jiff_core5civil13days_in_month.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.av = lshr i8 %.sroa.796.12.extract.trunc, 3
  %i.aw = xor i8 %i.av, %.sroa.796.12.extract.trunc
  %i.ax = or i8 %i.aw, 30
  br label %_RNvNtCscxuc9kp9KZq_9jiff_core5civil13days_in_month.exit.i.i

_RNvNtCscxuc9kp9KZq_9jiff_core5civil13days_in_month.exit.i.i: ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i.i = phi i8 [ %spec.select.i.i.i, %bb.h ], [ %i.ax, %bb.i ]
  %i.ay = icmp samesign ult i8 %.sroa.0.0.i.i.i, %.sroa.796.13.extract.trunc
  br i1 %i.ay, label %bb.j, label %bb.k, !prof !29

bb.j:                                             ; preds = %_RNvNtCscxuc9kp9KZq_9jiff_core5civil13days_in_month.exit.i.i
  %.sroa.530.0.insert.ext.i.i = zext nneg i16 %i.am to i32
  %.sroa.530.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.530.0.insert.ext.i.i, 16
  %i.az = trunc i64 %i.af to i32
  %.sroa.429.0.insert.ext.i.i = shl i32 %i.az, 8
  %.sroa.429.0.insert.shift.i.i = and i32 %.sroa.429.0.insert.ext.i.i, 65280
  %.sroa.429.0.insert.insert.i.i = or disjoint i32 %.sroa.530.0.insert.shift.i.i, %.sroa.429.0.insert.shift.i.i
  br label %bb.o

bb.k:                                             ; preds = %_RNvNtCscxuc9kp9KZq_9jiff_core5civil13days_in_month.exit.i.i, %bb.f
  %.sroa.518.0.insert.ext.i.i = shl i64 %.sroa.796.13.extract.shift, 24
  %.sroa.417.0.insert.ext.i.i = shl i64 %i.af, 16
  %.sroa.417.0.insert.shift.i.i = and i64 %.sroa.417.0.insert.ext.i.i, 16711680
  %.sroa.016.0.insert.ext.i.i = zext nneg i16 %i.am to i64
  %or.cond.i57.i = icmp ult i8 %.sroa.796.14.extract.trunc, 24
  br i1 %or.cond.i57.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %or.cond1.i58.i = icmp ult i8 %.sroa.796.15.extract.trunc, 60
  br i1 %or.cond1.i58.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %or.cond2.i.i = icmp ult i8 %.sroa.796.16.extract.trunc, 60
  br i1 %or.cond2.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %or.cond3.i.i = icmp ult i32 %.sroa.495.4.extract.trunc, 1000000000
  br i1 %or.cond3.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.d, %bb.e, %bb.j
  %.sroa.6.0.i.ph.i.sink = phi i32 [ 3327, %bb.d ], [ 767, %bb.e ], [ %.sroa.429.0.insert.insert.i.i, %bb.j ], [ 3071, %bb.l ], [ 5375, %bb.m ], [ 1791, %bb.k ], [ 5631, %bb.n ]
  %i.ba = call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.6.0.i.ph.i.sink) #36, !noalias !2837 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.ba, ptr %i.n, align 8, !noalias !2838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2839
  store i64 0, ptr %i.m, align 8, !noalias !2839
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2839
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2839
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 1610612768, ptr %i.bb, align 8, !noalias !2839
  store ptr %i.m, ptr %i.l, align 8, !noalias !2839
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @232, ptr %i.bc, align 8, !noalias !2839
  %i.bd = call noundef zeroext i1 @_RNvXs1_NtCs3JjgEOiFeOI_4jiff5errorNtB5_5ErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #33, !noalias !2840
  br i1 %i.bd, label %bb.p, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCs3JjgEOiFeOI_4jiff5error5ErrorNtB5_12SpecToString14spec_to_stringCsiibOIv6tv3q_7uu_date.exit.i, !prof !11

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @233, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #34, !noalias !2840
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCs3JjgEOiFeOI_4jiff5error5ErrorNtB5_12SpecToString14spec_to_stringCsiibOIv6tv3q_7uu_date.exit.i: ; preds = %bb.o
  %.sroa.0268.0.copyload = load i64, ptr %i.m, align 8, !noalias !2841
  %.sroa.4269.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2841
  %.sroa.5270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.sroa.5270.0.copyload = load ptr, ptr %.sroa.5270.0..sroa_idx, align 4, !noalias !2841
  %.sroa.6271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %.sroa.6271.0.copyload = load i32, ptr %.sroa.6271.0..sroa_idx, align 4, !noalias !2841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2839
  %i.be = icmp eq ptr %i.ba, null
  br i1 %i.be, label %_RNCNvCsiibOIv6tv3q_7uu_date23format_extended_default0B3_.exit, label %bb.q

bb.q:                                             ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCs3JjgEOiFeOI_4jiff5error5ErrorNtB5_12SpecToString14spec_to_stringCsiibOIv6tv3q_7uu_date.exit.i
  %i.bf = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !noalias !2842
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.r, label %_RNCNvCsiibOIv6tv3q_7uu_date23format_extended_default0B3_.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtCs3JjgEOiFeOI_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #36, !noalias !2838
  br label %_RNCNvCsiibOIv6tv3q_7uu_date23format_extended_default0B3_.exit

_RNCNvCsiibOIv6tv3q_7uu_date23format_extended_default0B3_.exit: ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCs3JjgEOiFeOI_4jiff5error5ErrorNtB5_12SpecToString14spec_to_stringCsiibOIv6tv3q_7uu_date.exit.i, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bh = ptrtoint ptr %.sroa.5270.0.copyload to i64 ; 2 uses
  %.sroa.4118.sroa.4.4.extract.trunc = trunc i64 %i.bh to i32
  %.sroa.4118.sroa.4.8.extract.shift = lshr i64 %i.bh, 32
  %.sroa.4118.sroa.4.8.extract.trunc = trunc nuw i64 %.sroa.4118.sroa.4.8.extract.shift to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0268.0.copyload, ptr %i.bi, align 8
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.4269.0.copyload, ptr %.sroa.4121.0..sroa_idx, align 8
  %.sroa.4121.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.4118.sroa.4.4.extract.trunc, ptr %.sroa.4121.0..sroa_idx.sroa_idx, align 4
  %.sroa.4121.sroa.4.0..sroa.4121.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.4118.sroa.4.8.extract.trunc, ptr %.sroa.4121.sroa.4.0..sroa.4121.0..sroa_idx.sroa_idx, align 8
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.6271.0.copyload, ptr %.sroa.5122.0..sroa_idx, align 4
  store i64 1, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5zoned5ZonedECsiibOIv6tv3q_7uu_date.exit192

bb.s:                                             ; preds = %bb.n
  %.sroa.5.i.sroa.5.8.insert.shift = and i64 %.sroa.796.16.extract.shift, 63
  %.sroa.417.0.insert.insert.i.i.masked = or disjoint i64 %.sroa.518.0.insert.ext.i.i, %.sroa.417.0.insert.shift.i.i
  %.sroa.7201.12.insert.ext = or disjoint i64 %.sroa.417.0.insert.insert.i.i.masked, %.sroa.016.0.insert.ext.i.i
  %.sroa.4275.8.extract.trunc = trunc i64 %.sroa.7201.12.insert.ext to i32 ; 3 uses
  %i.bj = shl i32 %.sroa.4275.8.extract.trunc, 8
  %i.bk = ashr i32 %i.bj, 24                      ; 3 uses
  %i.bl = icmp ult i32 %i.bk, 3                   ; 2 uses
  %i.bm = or disjoint i32 %i.bk, 12
  %.sroa.02.0.i.i.i.i = select i1 %i.bl, i32 %i.bm, i32 %i.bk
  %sext.i.i.i.i = and i32 %.sroa.4275.8.extract.trunc, 32767
  %i.bn = add nuw nsw i32 %sext.i.i.i.i, 32800
  %.neg.i.i.i.i = sext i1 %i.bl to i32
  %i.bo = add nsw i32 %i.bn, %.neg.i.i.i.i        ; 3 uses
  %i.bp = lshr i32 %.sroa.4275.8.extract.trunc, 24
  %6 = udiv i32 %i.bo, 100
  %i.bq = mul nuw nsw i32 %i.bo, 1461
  %i.br = lshr i32 %i.bq, 2
  %7 = udiv i32 %i.bo, 400
  %i.bs = mul nsw i32 %.sroa.02.0.i.i.i.i, 979
  %i.bt = add nsw i32 %i.bs, -2919
  %i.bu = lshr i32 %i.bt, 5
  %i.bv = add nuw nsw i32 %i.bp, -12699423
  %i.bw = sub nuw nsw i32 %i.bv, %6
  %i.bx = add nuw nsw i32 %i.bw, %7
  %i.by = add nsw i32 %i.bx, %i.br
  %i.bz = add nsw i32 %i.by, %i.bu
  %8 = sext i32 %i.bz to i64
  %i.ca = mul nsw i64 %8, 86400
  %i.cb = and i64 %.sroa.796.14.extract.shift, 31
  %i.cc = mul nuw nsw i64 %i.cb, 3600
  %i.cd = and i64 %.sroa.796.15.extract.shift, 63
  %i.ce = mul nuw nsw i64 %i.cd, 60
  %9 = add nuw nsw i64 %i.cc, %.sroa.5.i.sroa.5.8.insert.shift
  %i.cf = add nuw nsw i64 %9, %i.ce
  %i.cg = add nsw i64 %i.cf, %i.ca                ; 2 uses
  %10 = icmp slt i64 %i.cg, 0
  %11 = icmp ne i32 %.sroa.495.4.extract.trunc, 0
  %or.cond3.not.i.i.i = and i1 %11, %10           ; 2 uses
  %12 = zext i1 %or.cond3.not.i.i.i to i64
  %.sroa.05.0.i.i.i = add nsw i64 %i.cg, %12      ; 6 uses
  %or.cond.i.i57.i = icmp slt i64 %.sroa.05.0.i.i.i, 253402207201
  br i1 %or.cond.i.i57.i, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2843
  store i32 0, ptr %i.k, align 8, !noalias !2843
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !noalias !2843
  %i.ch = call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error11jcore_range(i32 7167) #36, !noalias !2843
  %i.ci = call noundef ptr @_RNvXs_NtNtNtCs3JjgEOiFeOI_4jiff5error2tz6offsetNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k) #33, !noalias !2843
  %i.cj = call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.ch, ptr noundef %i.ci) #36, !noalias !2843 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.cj, ptr %i.j, align 8, !noalias !2844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2845
  store i64 0, ptr %i.i, align 8, !noalias !2845
  %.sroa.4.0..sroa_idx.i.i179 = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i179, align 8, !noalias !2845
  %.sroa.5.0..sroa_idx.i.i180 = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i180, align 8, !noalias !2845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2845
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 1610612768, ptr %i.ck, align 8, !noalias !2845
  store ptr %i.i, ptr %i.h, align 8, !noalias !2845
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @232, ptr %i.cl, align 8, !noalias !2845
  %i.cm = call noundef zeroext i1 @_RNvXs1_NtCs3JjgEOiFeOI_4jiff5errorNtB5_5ErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #33, !noalias !2846
  br i1 %i.cm, label %bb.u, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCs3JjgEOiFeOI_4jiff5error5ErrorNtB5_12SpecToString14spec_to_stringCsiibOIv6tv3q_7uu_date.exit.i181, !prof !11

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @233, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #34, !noalias !2846
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCs3JjgEOiFeOI_4jiff5error5ErrorNtB5_12SpecToString14spec_to_stringCsiibOIv6tv3q_7uu_date.exit.i181: ; preds = %bb.t
  %.sroa.0304.0.copyload = load ptr, ptr %i.i, align 8, !noalias !2847
  %i.cn = load <2 x i32>, ptr %.sroa.4.0..sroa_idx.i.i179, align 8, !noalias !2847
  %.sroa.6307.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx.i.i180, align 8, !noalias !2847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2845
  %i.co = icmp eq ptr %i.cj, null
  br i1 %i.co, label %_RNCNvCsiibOIv6tv3q_7uu_date23format_extended_defaults_0B3_.exit, label %bb.v

bb.v:                                             ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCs3JjgEOiFeOI_4jiff5error5ErrorNtB5_12SpecToString14spec_to_stringCsiibOIv6tv3q_7uu_date.exit.i181
  %i.cp = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !2848
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.w, label %_RNCNvCsiibOIv6tv3q_7uu_date23format_extended_defaults_0B3_.exit

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtCs3JjgEOiFeOI_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #36, !noalias !2844
  br label %_RNCNvCsiibOIv6tv3q_7uu_date23format_extended_defaults_0B3_.exit

_RNCNvCsiibOIv6tv3q_7uu_date23format_extended_defaults_0B3_.exit: ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCs3JjgEOiFeOI_4jiff5error5ErrorNtB5_12SpecToString14spec_to_stringCsiibOIv6tv3q_7uu_date.exit.i181, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.cr = ptrtoint ptr %.sroa.0304.0.copyload to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cr, ptr %i.cs, align 8
  %.sroa.4323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i32> %i.cn, ptr %.sroa.4323.0..sroa_idx, align 8
  %.sroa.6325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.6307.0.copyload, ptr %.sroa.6325.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5zoned5ZonedECsiibOIv6tv3q_7uu_date.exit192

bb.x:                                             ; preds = %bb.s
  %13 = add nuw nsw i32 %.sroa.495.4.extract.trunc, -1000000000
  %.sroa.021.0.i.i.i = select i1 %or.cond3.not.i.i.i, i32 %13, i32 %.sroa.495.4.extract.trunc ; 5 uses
  %.val176 = load ptr, ptr %5, align 8, !noundef !6 ; 11 uses
  %i.ct = ptrtoint ptr %.val176 to i64            ; 2 uses
  %i.cu = and i64 %i.ct, 7                        ; 3 uses
  switch i64 %i.cu, label %bb.y [
    i64 5, label %bb.ab
    i64 4, label %bb.z
    i64 1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5zoned5ZonedECsiibOIv6tv3q_7uu_date.exit
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5zoned5ZonedECsiibOIv6tv3q_7uu_date.exit
    i64 3, label %bb.ad
    i64 0, label %bb.af
  ]

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.cv = getelementptr i8, ptr %.val176, i64 -20
  %i.cw = atomicrmw add ptr %i.cv, i64 1 monotonic, align 8
  %i.cx = icmp slt i64 %i.cw, 0
  br i1 %i.cx, label %bb.aa, label %_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.thread

bb.aa:                                            ; preds = %bb.z
  call void @llvm.trap()
  unreachable

bb.ab:                                            ; preds = %bb.x
  %i.cy = getelementptr i8, ptr %.val176, i64 -21
  %i.cz = atomicrmw add ptr %i.cy, i64 1 monotonic, align 8
  %i.da = icmp slt i64 %i.cz, 0
  br i1 %i.da, label %bb.ac, label %_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.thread356

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.x
  %i.db = trunc i64 %i.ct to i32
  %i.dc = ashr i32 %i.db, 4                       ; 2 uses
  %i.dd = add nsw i32 %i.dc, 93599
  %or.cond.i.i = icmp ult i32 %i.dd, 187199
  br i1 %or.cond.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5zoned5ZonedECsiibOIv6tv3q_7uu_date.exit, label %bb.ae, !prof !26

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @146, ptr noundef nonnull inttoptr (i64 25 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #34
  unreachable

bb.af:                                            ; preds = %bb.x
  %i.de = call noundef i32 @_RNvMNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif5queryNtB4_8TimeZone9to_offset(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %.val176, i64 noundef %.sroa.05.0.i.i.i, i32 noundef %.sroa.021.0.i.i.i) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5zoned5ZonedECsiibOIv6tv3q_7uu_date.exit

_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.thread: ; preds = %bb.z
  %i.df = getelementptr i8, ptr %.val176, i64 -4
  %i.dg = call noundef i32 @_RNvMNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif5queryNtB4_8TimeZone9to_offset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.df, i64 noundef %.sroa.05.0.i.i.i, i32 noundef %.sroa.021.0.i.i.i) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5zoned5ZonedECsiibOIv6tv3q_7uu_date.exit

_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.thread356: ; preds = %bb.ab
  %i.dh = getelementptr i8, ptr %.val176, i64 -5
  %i.di = call noundef i32 @_RNvMs0_NtNtCscxuc9kp9KZq_9jiff_core2tz5posixNtB5_8TimeZone9to_offset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.dh, i64 noundef %.sroa.05.0.i.i.i, i32 noundef %.sroa.021.0.i.i.i) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5zoned5ZonedECsiibOIv6tv3q_7uu_date.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5zoned5ZonedECsiibOIv6tv3q_7uu_date.exit: ; preds = %bb.x, %bb.x, %_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.thread356, %_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.thread, %bb.af, %bb.ad
  %.sroa.0.0.i = phi i32 [ %i.di, %_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.thread356 ], [ 0, %bb.x ], [ 0, %bb.x ], [ %i.de, %bb.af ], [ %i.dg, %_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.thread ], [ %i.dc, %bb.ad ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call fastcc void @_RNvMNtNtCscxuc9kp9KZq_9jiff_core2tz6offsetNtB2_6Offset11to_datetime(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.o, i32 noundef %.sroa.0.0.i, i64 noundef %.sroa.05.0.i.i.i, i32 noundef %.sroa.021.0.i.i.i) #35
  %i.dj = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.0134.0.copyload = load i32, ptr %i.dj, align 8
  %.sroa.0136.0.copyload = load i64, ptr %i.o, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 %.sroa.05.0.i.i.i, ptr %i.q, align 8
  %.sroa.4124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %.sroa.021.0.i.i.i, ptr %.sroa.4124.0..sroa_idx, align 8
  %.sroa.5126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %.val176, ptr %.sroa.5126.0..sroa_idx, align 8
  %.sroa.6127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %.sroa.0136.0.copyload, ptr %.sroa.6127.0..sroa_idx, align 8
  %.sroa.6127.sroa.4.0..sroa.6127.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i32 %.sroa.0134.0.copyload, ptr %.sroa.6127.sroa.4.0..sroa.6127.0..sroa_idx.sroa_idx, align 8
  %.sroa.7128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  store i32 %.sroa.0.0.i, ptr %.sroa.7128.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.dk = call noundef i64 @_RNvMNtCs65h624QUiyW_14parse_datetime8extendedNtB2_16ExtendedDateTime12unix_seconds(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %1) #33
  call void @_RNvMNtCs65h624QUiyW_14parse_datetime8extendedNtB2_16ExtendedDateTime17from_unix_seconds(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, i64 noundef %i.dk, i32 noundef %i.u, i32 noundef %.sroa.0.0.i) #33
  %i.dl = load i32, ptr %i.p, align 8, !range !24, !noundef !6
  %i.dm = trunc nuw i32 %i.dl to i1
  br i1 %i.dm, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5zoned5ZonedECsiibOIv6tv3q_7uu_date.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !6, !noundef !6
  %i.dp = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !6 ; 7 uses
  %.not.i182 = icmp slt i64 %i.dq, 0
  br i1 %.not.i182, label %bb.cq, label %bb.ah, !prof !19

bb.ah:                                            ; preds = %bb.ag
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit185.thread366, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i183

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i183: ; preds = %bb.ah
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !2849
  %i.ds = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.dq, i64 noundef range(i64 1, 9) 1) #33, !noalias !2849 ; 3 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.cq, label %bb.cr

bb.ai:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5zoned5ZonedECsiibOIv6tv3q_7uu_date.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.sroa.0148.0.copyload = load i32, ptr %i.du, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !2850)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2851
  %i.dv = add i64 %3, 8                           ; 5 uses
  %.not.i.i = icmp slt i64 %i.dv, 0
  br i1 %.not.i.i, label %bb.al, label %bb.aj, !prof !19

bb.aj:                                            ; preds = %bb.ai
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.aj
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !2852
  %i.dx = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.dv, i64 noundef range(i64 1, 9) 1) #33, !noalias !2852 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  %i.dz = ptrtoint ptr %i.dx to i64
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit.i

bb.al:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, %bb.ai
  %.sroa.464.0.ph.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.ai ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.464.0.ph.i, i64 %i.dv) #37, !noalias !2851
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit.i: ; preds = %bb.ak, %bb.aj
  %.sroa.10.0.i = phi i64 [ %i.dz, %bb.ak ], [ 1, %bb.aj ]
  %i.ea = inttoptr i64 %.sroa.10.0.i to ptr       ; 3 uses
  store i64 %i.dv, ptr %i.g, align 8, !noalias !2851
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 8 uses
  store ptr %i.ea, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2851
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2851
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2851
  %i.ec = call { ptr, i64 } @_RNvMsa_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impm4__fmt(i32 noundef %.sroa.0148.0.copyload, ptr noalias nofree noundef nonnull %i.f, i64 noundef 10) #33, !noalias !2851 ; 2 uses
  %i.ed = extractvalue { ptr, i64 } %i.ec, 0
  %i.ee = extractvalue { ptr, i64 } %i.ec, 1      ; 10 uses
  %.not.i23.i = icmp slt i64 %i.ee, 0
  br i1 %.not.i23.i, label %bb.an, label %bb.am, !prof !19

bb.am:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit.i
  %i.ef = icmp eq i64 %i.ee, 0                    ; 3 uses
  br i1 %i.ef, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit26.thread94.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i24.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i24.i: ; preds = %bb.am
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !2853
  %i.eg = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.ee, i64 noundef range(i64 1, 9) 1) #33, !noalias !2853 ; 3 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i24.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit.i
  %.sroa.467.0.ph.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i24.i ], [ 0, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.467.0.ph.i, i64 %i.ee) #37, !noalias !2851
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit26.thread94.i: ; preds = %bb.ao, %bb.am
  %i.ei = phi ptr [ %i.eg, %bb.ao ], [ inttoptr (i64 1 to ptr), %bb.am ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2851
  %i.ej = icmp samesign eq i64 %3, 0
  br i1 %i.ej, label %.outer._crit_edge.thread.i.thread, label %.lr.ph.i

bb.ao:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i24.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eg, ptr align 1 %i.ed, i64 %i.ee, i1 false), !noalias !2851
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit26.thread94.i

bb.ap:                                            ; preds = %.lr.ph.i, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit.i
  %i.ek = phi ptr [ %i.iy, %.lr.ph.i ], [ %i.gd, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit.i ] ; 2 uses
  %i.el = phi i64 [ %i.iz, %.lr.ph.i ], [ %i.he, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit.i ] ; 23 uses
  %.sroa.0.082110.i = phi ptr [ %.sroa.0.082.ph112.i, %.lr.ph.i ], [ %.sroa.0.5.ph.i, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit.i ] ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.082110.i, i64 1 ; 3 uses
  %i.en = load i8, ptr %.sroa.0.082110.i, align 1, !alias.scope !2850, !noalias !2854, !noundef !6 ; 5 uses
  %i.eo = icmp sgt i8 %i.en, -1
  br i1 %i.eo, label %bb.aq, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i: ; preds = %bb.ap
  %i.ep = and i8 %i.en, 31
  %i.eq = zext nneg i8 %i.ep to i32               ; 3 uses
  %i.er = icmp ne ptr %i.em, %i.eb
  call void @llvm.assume(i1 %i.er)
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.082110.i, i64 2 ; 3 uses
  %i.et = load i8, ptr %i.em, align 1, !alias.scope !2850, !noalias !2854, !noundef !6
  %i.eu = shl nuw nsw i32 %i.eq, 6
  %i.ev = and i8 %i.et, 63
  %i.ew = zext nneg i8 %i.ev to i32               ; 2 uses
  %i.ex = or disjoint i32 %i.eu, %i.ew
  %i.ey = icmp samesign ugt i8 %i.en, -33
  br i1 %i.ey, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ez = zext nneg i8 %i.en to i32
  br label %bb.ar

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i
  %i.fa = icmp ne ptr %i.es, %i.eb
  call void @llvm.assume(i1 %i.fa)
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.082110.i, i64 3 ; 3 uses
  %i.fc = load i8, ptr %i.es, align 1, !alias.scope !2850, !noalias !2854, !noundef !6
  %i.fd = shl nuw nsw i32 %i.ew, 6
  %i.fe = and i8 %i.fc, 63
  %i.ff = zext nneg i8 %i.fe to i32
  %i.fg = or disjoint i32 %i.fd, %i.ff            ; 2 uses
  %i.fh = shl nuw nsw i32 %i.eq, 12
  %i.fi = or disjoint i32 %i.fg, %i.fh
  %i.fj = icmp samesign ugt i8 %i.en, -17
  br i1 %i.fj, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i, label %bb.ar

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i
  %i.fk = icmp ne ptr %i.fb, %i.eb
  call void @llvm.assume(i1 %i.fk)
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.082110.i, i64 4
  %i.fm = load i8, ptr %i.fb, align 1, !alias.scope !2850, !noalias !2854, !noundef !6
  %i.fn = shl nuw nsw i32 %i.eq, 18
  %i.fo = and i32 %i.fn, 1835008
  %i.fp = shl nuw nsw i32 %i.fg, 6
  %i.fq = and i8 %i.fm, 63
  %i.fr = zext nneg i8 %i.fq to i32
  %i.fs = or disjoint i32 %i.fp, %i.fr
  %i.ft = or disjoint i32 %i.fs, %i.fo
  br label %bb.ar

.outer._crit_edge.i:                              ; preds = %.outer.i, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit.i
  %.sroa.760.0.copyload.i = phi i64 [ %i.he, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit.i ], [ %.sink.i186, %.outer.i ]
  %.sroa.0.0.ph.lcssa.i = phi i1 [ %.sroa.0.0.ph113.i, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit.i ], [ %.sroa.0.1.i, %.outer.i ]
  %.sroa.056.0.copyload.i = load i64, ptr %i.g, align 8, !noalias !2851 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2851 ; 2 uses
  br i1 %.sroa.0.0.ph.lcssa.i, label %bb.bz, label %.outer._crit_edge.thread.i

bb.ar:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i, %bb.aq, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i
  %.sroa.0.5.ph.i = phi ptr [ %i.es, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i ], [ %i.fb, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i ], [ %i.fl, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i ], [ %i.em, %bb.aq ] ; 8 uses
  %.sroa.4.0.i.ph.i = phi i32 [ %i.ex, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i ], [ %i.fi, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i ], [ %i.ft, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i ], [ %i.ez, %bb.aq ] ; 12 uses
  %i.fu = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  call void @llvm.assume(i1 %i.fu)
  %i.fv = icmp eq i32 %.sroa.4.0.i.ph.i, 37
  br i1 %i.fv, label %bb.bd, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !2855)
  %i.fw = icmp sgt i64 %i.el, -1
  call void @llvm.assume(i1 %i.fw)
  %i.fx = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 128 ; 2 uses
  br i1 %i.fx, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fy = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 2048
  br i1 %i.fy, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fz = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 65536
  %..i.i = select i1 %i.fz, i64 3, i64 4
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.sroa.0.0.i27.i = phi i64 [ 2, %bb.at ], [ %..i.i, %bb.au ], [ 1, %bb.as ] ; 3 uses
  %i.ga = load i64, ptr %i.g, align 8, !range !9, !alias.scope !2856, !noalias !2851, !noundef !6
  %i.gb = sub nsw i64 %i.ga, %i.el
  %i.gc = icmp ugt i64 %.sroa.0.0.i27.i, %i.gb
  br i1 %i.gc, label %bb.aw, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i.i, !prof !11

bb.aw:                                            ; preds = %bb.av
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.el, i64 noundef %.sroa.0.0.i27.i, i64 noundef 1, i64 noundef 1) #33, !noalias !2851
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2855, !noalias !2851
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i.i
end_hunk_0
