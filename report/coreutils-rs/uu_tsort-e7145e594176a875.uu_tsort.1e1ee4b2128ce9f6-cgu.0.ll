Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tsort-e7145e594176a875.uu_tsort.1e1ee4b2128ce9f6-cgu.0?download=true
inline.NumInlined: 869
inline.NumDeleted: 417
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECs2AkyTgTLZ1a_8uu_tsort:bb.a
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2AkyTgTLZ1a_8uu_tsort.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2AkyTgTLZ1a_8uu_tsort.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !212
  br label %_RNvXs7_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs2AkyTgTLZ1a_8uu_tsort.exit

_RNvXs7_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs2AkyTgTLZ1a_8uu_tsort.exit: ; preds = %bb.a, %bb.b, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2AkyTgTLZ1a_8uu_tsort.exit.i.i
  %.val = load i64, ptr %0, align 8, !range !14, !noundef !4 ; 2 uses
  %i.n = icmp eq i64 %.val, 0
  br i1 %i.n, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs2AkyTgTLZ1a_8uu_tsort.exit, label %bb.f

bb.f:                                             ; preds = %_RNvXs7_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs2AkyTgTLZ1a_8uu_tsort.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs2AkyTgTLZ1a_8uu_tsort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs2AkyTgTLZ1a_8uu_tsort.exit: ; preds = %_RNvXs7_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs2AkyTgTLZ1a_8uu_tsort.exit, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2 = load ptr, ptr %i.p, align 8, !nonnull !4, !align !7, !noundef !4 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val2, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !noundef !4
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.q, align 4
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECs2AkyTgTLZ1a_8uu_tsort.exit

bb.g:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs2AkyTgTLZ1a_8uu_tsort.exit
  store atomic i64 0, ptr %.val2 monotonic, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.val2, i64 8 ; 2 uses
  %i.v = atomicrmw xchg ptr %i.u, i32 0 release, align 4
  %i.w = icmp eq i32 %i.v, 2
  br i1 %i.w, label %bb.h, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECs2AkyTgTLZ1a_8uu_tsort.exit, !prof !5

bb.h:                                             ; preds = %bb.g
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.u) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECs2AkyTgTLZ1a_8uu_tsort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECs2AkyTgTLZ1a_8uu_tsort.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs2AkyTgTLZ1a_8uu_tsort.exit, %bb.g, %bb.h
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEECs2AkyTgTLZ1a_8uu_tsort(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs2AkyTgTLZ1a_8uu_tsort.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = ptrtoint ptr %.val to i64                ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2AkyTgTLZ1a_8uu_tsort.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2AkyTgTLZ1a_8uu_tsort.exit.i
    i64 1, label %bb.d
  ], !prof !13

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2AkyTgTLZ1a_8uu_tsort.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !216
  store i8 3, ptr %i.a, align 8, !alias.scope !216
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2AkyTgTLZ1a_8uu_tsort.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2AkyTgTLZ1a_8uu_tsort.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs2AkyTgTLZ1a_8uu_tsort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs2AkyTgTLZ1a_8uu_tsort.exit: ; preds = %bb.a, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2AkyTgTLZ1a_8uu_tsort.exit.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockEECs2AkyTgTLZ1a_8uu_tsort(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs2AkyTgTLZ1a_8uu_tsort.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = ptrtoint ptr %.val to i64                ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2AkyTgTLZ1a_8uu_tsort.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2AkyTgTLZ1a_8uu_tsort.exit.i
    i64 1, label %bb.d
  ], !prof !13

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2AkyTgTLZ1a_8uu_tsort.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !219
  store i8 3, ptr %i.a, align 8, !alias.scope !219
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2AkyTgTLZ1a_8uu_tsort.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2AkyTgTLZ1a_8uu_tsort.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs2AkyTgTLZ1a_8uu_tsort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs2AkyTgTLZ1a_8uu_tsort.exit: ; preds = %bb.a, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2AkyTgTLZ1a_8uu_tsort.exit.i
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable7ipnsortNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SBT_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2p_5Graph12detect_cycle0E0EB2p_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #3 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize7reverseCs2AkyTgTLZ1a_8uu_tsort.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val7 = load ptr, ptr %2, align 8, !nonnull !4, !align !7, !noundef !4
  %.val8 = load i64, ptr %i.b, align 8, !range !8, !noundef !4
  %.val.i = load ptr, ptr %.val7, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.c = getelementptr i8, ptr %.val.i, i64 8
  %.val6.i.i = load ptr, ptr %i.c, align 8        ; 7 uses
  %i.d = getelementptr i8, ptr %.val.i, i64 16
  %.val7.i.i = load i64, ptr %i.d, align 8, !noundef !4 ; 6 uses
  %i.e = add i64 %.val8, -1                       ; 2 uses
  %i.f = icmp ult i64 %i.e, %.val7.i.i
  br i1 %i.f, label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24
  unreachable

_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i: ; preds = %bb.b
  %.val9 = load i64, ptr %0, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i) ]
  %i.g = add i64 %.val9, -1                       ; 2 uses
  %i.h = icmp ult i64 %i.g, %.val7.i.i
  br i1 %i.h, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph12detect_cycle0E0B1Q_.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24
  unreachable

_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph12detect_cycle0E0B1Q_.exit: ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i, i64 %i.e ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i, i64 %i.g ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.p)
  %i.q = tail call i32 @memcmp(ptr nonnull %i.l, ptr nonnull %i.n, i64 %spec.store.select.i.i) ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = icmp eq i32 %i.q, 0
  %i.t = sub i64 %i.k, %i.p
  %spec.select.i.i = select i1 %i.s, i64 %i.t, i64 %i.r
  %i.u = icmp slt i64 %spec.select.i.i, 0         ; 2 uses
  %.not40 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.u, label %.preheader, label %.preheader28

.preheader28:                                     ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph12detect_cycle0E0B1Q_.exit
  br i1 %.not40, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph12detect_cycle0E0EB2z_.exit, label %.lr.ph

.preheader:                                       ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph12detect_cycle0E0B1Q_.exit
  br i1 %.not40, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph12detect_cycle0E0EB2z_.exit, label %.lr.ph37

.lr.ph:                                           ; preds = %.preheader28, %bb.g
  %.sroa.01.0.i34 = phi i64 [ %i.ao, %bb.g ], [ 2, %.preheader28 ] ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i34
  %3 = add nsw i64 %.sroa.01.0.i34, -1            ; 2 uses
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %.val5 = load i64, ptr %i.v, align 8, !range !8, !noundef !4
  %i.w = add i64 %.val5, -1                       ; 2 uses
  %i.x = icmp ult i64 %i.w, %.val7.i.i
  br i1 %i.x, label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i13, label %bb.e, !prof !11

bb.e:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24
  unreachable

_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i13: ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %.val6 = load i64, ptr %i.y, align 8
  %i.z = add i64 %.val6, -1                       ; 2 uses
  %i.aa = icmp ult i64 %i.z, %.val7.i.i
  br i1 %i.aa, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph12detect_cycle0E0B1Q_.exit16, label %bb.f, !prof !11

bb.f:                                             ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i13
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24
  unreachable

_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph12detect_cycle0E0B1Q_.exit16: ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i13
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i, i64 %i.w ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4 ; 2 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i, i64 %i.z ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !4, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i14 = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.ai)
  %i.aj = tail call i32 @memcmp(ptr nonnull %i.ae, ptr nonnull %i.ag, i64 %spec.store.select.i.i14) ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp eq i32 %i.aj, 0
  %i.am = sub i64 %i.ad, %i.ai
  %spec.select.i.i15 = select i1 %i.al, i64 %i.am, i64 %i.ak
  %i.an = icmp slt i64 %spec.select.i.i15, 0
  br i1 %i.an, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph12detect_cycle0E0EB2z_.exit, label %bb.g

bb.g:                                             ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph12detect_cycle0E0B1Q_.exit16
  %i.ao = add nuw nsw i64 %.sroa.01.0.i34, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph12detect_cycle0E0EB2z_.exit.thread, label %.lr.ph

.lr.ph37:                                         ; preds = %.preheader, %bb.j
  %.sroa.01.1.i36 = phi i64 [ %i.bi, %bb.j ], [ 2, %.preheader ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i36
  %5 = add nsw i64 %.sroa.01.1.i36, -1            ; 2 uses
  %6 = icmp samesign ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  %.val2 = load i64, ptr %i.ap, align 8, !range !8, !noundef !4
  %i.aq = add i64 %.val2, -1                      ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %.val7.i.i
  br i1 %i.ar, label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i20, label %bb.h, !prof !11

bb.h:                                             ; preds = %.lr.ph37
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24
  unreachable

_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i20: ; preds = %.lr.ph37
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %.val3 = load i64, ptr %i.as, align 8
  %i.at = add i64 %.val3, -1                      ; 2 uses
  %i.au = icmp ult i64 %i.at, %.val7.i.i
  br i1 %i.au, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph12detect_cycle0E0B1Q_.exit23, label %bb.i, !prof !11

bb.i:                                             ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i20
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24
  unreachable

_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph12detect_cycle0E0B1Q_.exit23: ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i20
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i, i64 %i.aq ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !4 ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8, !nonnull !4, !noundef !4
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i, i64 %i.at ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !4, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i21 = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 %i.bc)
  %i.bd = tail call i32 @memcmp(ptr nonnull %i.ay, ptr nonnull %i.ba, i64 %spec.store.select.i.i21) ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp eq i32 %i.bd, 0
  %i.bg = sub i64 %i.ax, %i.bc
  %spec.select.i.i22 = select i1 %i.bf, i64 %i.bg, i64 %i.be
  %i.bh = icmp slt i64 %spec.select.i.i22, 0
  br i1 %i.bh, label %bb.j, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph12detect_cycle0E0EB2z_.exit

bb.j:                                             ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph12detect_cycle0E0B1Q_.exit23
  %i.bi = add nuw nsw i64 %.sroa.01.1.i36, 1      ; 2 uses
  %exitcond43.not = icmp eq i64 %i.bi, %1
  br i1 %exitcond43.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph12detect_cycle0E0EB2z_.exit.thread, label %.lr.ph37

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph12detect_cycle0E0EB2z_.exit: ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph12detect_cycle0E0B1Q_.exit16, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph12detect_cycle0E0B1Q_.exit23, %.preheader28, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader28 ], [ 2, %.preheader ], [ %.sroa.01.1.i36, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph12detect_cycle0E0B1Q_.exit23 ], [ %.sroa.01.0.i34, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph12detect_cycle0E0B1Q_.exit16 ] ; 2 uses
  %i.bj = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.bk, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph12detect_cycle0E0EB2z_.exit.thread, label %bb.k

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph12detect_cycle0E0EB2z_.exit.thread: ; preds = %bb.g, %bb.j, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph12detect_cycle0E0EB2z_.exit
  br i1 %i.u, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.preheader.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize7reverseCs2AkyTgTLZ1a_8uu_tsort.exit

bb.k:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph12detect_cycle0E0EB2z_.exit
  %i.bl = or i64 %1, 1
  %i.bm = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.bl, i1 true)
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, 1
  %i.bp = xor i32 %i.bo, 126
  tail call fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB8_SB17_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2E_5Graph12detect_cycle0E0EB2E_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.bp, ptr noalias nofree noundef align 8 dereferenceable(8) %2) #23
  br label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize7reverseCs2AkyTgTLZ1a_8uu_tsort.exit

_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize7reverseCs2AkyTgTLZ1a_8uu_tsort.exit: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph12detect_cycle0E0EB2z_.exit.thread, %bb.k
  ret void

_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph12detect_cycle0E0EB2z_.exit.thread
  %i.bq = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.preheader.i.i
  %n.vec = and i64 %i.bq, 576460752303423484      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bs = xor i64 %index, -1
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.bu = getelementptr [8 x i8], ptr %i.br, i64 %i.bs ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bt, align 8, !alias.scope !229, !noalias !228
  %wide.load69 = load <2 x i64>, ptr %i.bv, align 8, !alias.scope !229, !noalias !228
  %i.bw = getelementptr i8, ptr %i.bu, i64 -8     ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bu, i64 -24    ; 2 uses
  %wide.load70 = load <2 x i64>, ptr %i.bw, align 8, !alias.scope !230, !noalias !227
  %wide.load71 = load <2 x i64>, ptr %i.bx, align 8, !alias.scope !230, !noalias !227
  %reverse = shufflevector <2 x i64> %wide.load70, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse72 = shufflevector <2 x i64> %wide.load71, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.bt, align 8, !alias.scope !229, !noalias !228
  store <2 x i64> %reverse72, ptr %i.bv, align 8, !alias.scope !229, !noalias !228
  %reverse73 = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse74 = shufflevector <2 x i64> %wide.load69, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse73, ptr %i.bw, align 8, !alias.scope !230, !noalias !227
  store <2 x i64> %reverse74, ptr %i.bx, align 8, !alias.scope !230, !noalias !227
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !225

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize7reverseCs2AkyTgTLZ1a_8uu_tsort.exit, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.i.i.preheader

_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.i.i.preheader: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.i.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.i.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.i.i.preheader, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ce, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.i.i.preheader ] ; 3 uses
  %i.bz = xor i64 %.sroa.0.016.i.i, -1
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.cb = getelementptr [8 x i8], ptr %i.br, i64 %i.bz ; 2 uses
  %i.cc = load i64, ptr %i.ca, align 8, !range !8, !alias.scope !229, !noalias !228, !noundef !4
  %i.cd = load i64, ptr %i.cb, align 8, !alias.scope !230, !noalias !227
  store i64 %i.cd, ptr %i.ca, align 8, !alias.scope !229, !noalias !228
  store i64 %i.cc, ptr %i.cb, align 8, !alias.scope !230, !noalias !227
  %i.ce = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ce, %i.bq
  br i1 %exitcond.not.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize7reverseCs2AkyTgTLZ1a_8uu_tsort.exit, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.i.i, !llvm.loop !226
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable7ipnsortNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SBT_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2p_5Graph9run_tsorts_0E0EB2p_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #3 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize7reverseCs2AkyTgTLZ1a_8uu_tsort.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val7 = load ptr, ptr %2, align 8, !nonnull !4, !align !7, !noundef !4
  %.val8 = load i64, ptr %i.b, align 8, !range !8, !noundef !4
  %.val.i = load ptr, ptr %.val7, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.c = getelementptr i8, ptr %.val.i, i64 8
  %.val6.i.i = load ptr, ptr %i.c, align 8        ; 7 uses
  %i.d = getelementptr i8, ptr %.val.i, i64 16
  %.val7.i.i = load i64, ptr %i.d, align 8, !noundef !4 ; 6 uses
  %i.e = add i64 %.val8, -1                       ; 2 uses
  %i.f = icmp ult i64 %i.e, %.val7.i.i
  br i1 %i.f, label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24
  unreachable

_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i: ; preds = %bb.b
  %.val9 = load i64, ptr %0, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i) ]
  %i.g = add i64 %.val9, -1                       ; 2 uses
  %i.h = icmp ult i64 %i.g, %.val7.i.i
  br i1 %i.h, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24
  unreachable

_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit: ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i, i64 %i.e ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i, i64 %i.g ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.p)
  %i.q = tail call i32 @memcmp(ptr nonnull %i.l, ptr nonnull %i.n, i64 %spec.store.select.i.i) ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = icmp eq i32 %i.q, 0
  %i.t = sub i64 %i.k, %i.p
  %spec.select.i.i = select i1 %i.s, i64 %i.t, i64 %i.r
  %i.u = icmp slt i64 %spec.select.i.i, 0         ; 2 uses
  %.not40 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.u, label %.preheader, label %.preheader28

.preheader28:                                     ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit
  br i1 %.not40, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph9run_tsorts_0E0EB2z_.exit, label %.lr.ph

.preheader:                                       ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit
  br i1 %.not40, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph9run_tsorts_0E0EB2z_.exit, label %.lr.ph37

.lr.ph:                                           ; preds = %.preheader28, %bb.g
  %.sroa.01.0.i34 = phi i64 [ %i.ao, %bb.g ], [ 2, %.preheader28 ] ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i34
  %3 = add nsw i64 %.sroa.01.0.i34, -1            ; 2 uses
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %.val5 = load i64, ptr %i.v, align 8, !range !8, !noundef !4
  %i.w = add i64 %.val5, -1                       ; 2 uses
  %i.x = icmp ult i64 %i.w, %.val7.i.i
  br i1 %i.x, label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i13, label %bb.e, !prof !11

bb.e:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24
  unreachable

_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i13: ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %.val6 = load i64, ptr %i.y, align 8
  %i.z = add i64 %.val6, -1                       ; 2 uses
  %i.aa = icmp ult i64 %i.z, %.val7.i.i
  br i1 %i.aa, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit16, label %bb.f, !prof !11

bb.f:                                             ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i13
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24
  unreachable

_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit16: ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i13
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i, i64 %i.w ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4 ; 2 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i, i64 %i.z ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !4, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i14 = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.ai)
  %i.aj = tail call i32 @memcmp(ptr nonnull %i.ae, ptr nonnull %i.ag, i64 %spec.store.select.i.i14) ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp eq i32 %i.aj, 0
  %i.am = sub i64 %i.ad, %i.ai
  %spec.select.i.i15 = select i1 %i.al, i64 %i.am, i64 %i.ak
  %i.an = icmp slt i64 %spec.select.i.i15, 0
  br i1 %i.an, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph9run_tsorts_0E0EB2z_.exit, label %bb.g

bb.g:                                             ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit16
  %i.ao = add nuw nsw i64 %.sroa.01.0.i34, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph9run_tsorts_0E0EB2z_.exit.thread, label %.lr.ph

.lr.ph37:                                         ; preds = %.preheader, %bb.j
  %.sroa.01.1.i36 = phi i64 [ %i.bi, %bb.j ], [ 2, %.preheader ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i36
  %5 = add nsw i64 %.sroa.01.1.i36, -1            ; 2 uses
  %6 = icmp samesign ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  %.val2 = load i64, ptr %i.ap, align 8, !range !8, !noundef !4
  %i.aq = add i64 %.val2, -1                      ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %.val7.i.i
  br i1 %i.ar, label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i20, label %bb.h, !prof !11

bb.h:                                             ; preds = %.lr.ph37
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24
  unreachable

_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i20: ; preds = %.lr.ph37
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %.val3 = load i64, ptr %i.as, align 8
  %i.at = add i64 %.val3, -1                      ; 2 uses
  %i.au = icmp ult i64 %i.at, %.val7.i.i
  br i1 %i.au, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit23, label %bb.i, !prof !11

bb.i:                                             ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i20
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24
  unreachable

_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit23: ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i20
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i, i64 %i.aq ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !4 ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8, !nonnull !4, !noundef !4
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i, i64 %i.at ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !4, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i21 = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 %i.bc)
  %i.bd = tail call i32 @memcmp(ptr nonnull %i.ay, ptr nonnull %i.ba, i64 %spec.store.select.i.i21) ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp eq i32 %i.bd, 0
  %i.bg = sub i64 %i.ax, %i.bc
  %spec.select.i.i22 = select i1 %i.bf, i64 %i.bg, i64 %i.be
  %i.bh = icmp slt i64 %spec.select.i.i22, 0
  br i1 %i.bh, label %bb.j, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph9run_tsorts_0E0EB2z_.exit

bb.j:                                             ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit23
  %i.bi = add nuw nsw i64 %.sroa.01.1.i36, 1      ; 2 uses
  %exitcond43.not = icmp eq i64 %i.bi, %1
  br i1 %exitcond43.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph9run_tsorts_0E0EB2z_.exit.thread, label %.lr.ph37

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph9run_tsorts_0E0EB2z_.exit: ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit16, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit23, %.preheader28, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader28 ], [ 2, %.preheader ], [ %.sroa.01.1.i36, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit23 ], [ %.sroa.01.0.i34, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph9run_tsorts_0E0B1Q_.exit16 ] ; 2 uses
  %i.bj = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.bk, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph9run_tsorts_0E0EB2z_.exit.thread, label %bb.k

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph9run_tsorts_0E0EB2z_.exit.thread: ; preds = %bb.g, %bb.j, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph9run_tsorts_0E0EB2z_.exit
  br i1 %i.u, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.preheader.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize7reverseCs2AkyTgTLZ1a_8uu_tsort.exit

bb.k:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph9run_tsorts_0E0EB2z_.exit
  %i.bl = or i64 %1, 1
  %i.bm = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.bl, i1 true)
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, 1
  %i.bp = xor i32 %i.bo, 126
  tail call fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB8_SB17_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2E_5Graph9run_tsorts_0E0EB2E_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.bp, ptr noalias nofree noundef align 8 dereferenceable(8) %2) #23
  br label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize7reverseCs2AkyTgTLZ1a_8uu_tsort.exit

_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize7reverseCs2AkyTgTLZ1a_8uu_tsort.exit: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph9run_tsorts_0E0EB2z_.exit.thread, %bb.k
  ret void

_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB6_SB12_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2z_5Graph9run_tsorts_0E0EB2z_.exit.thread
  %i.bq = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.preheader.i.i
  %n.vec = and i64 %i.bq, 576460752303423484      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bs = xor i64 %index, -1
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.bu = getelementptr [8 x i8], ptr %i.br, i64 %i.bs ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bt, align 8, !alias.scope !240, !noalias !239
  %wide.load69 = load <2 x i64>, ptr %i.bv, align 8, !alias.scope !240, !noalias !239
  %i.bw = getelementptr i8, ptr %i.bu, i64 -8     ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bu, i64 -24    ; 2 uses
  %wide.load70 = load <2 x i64>, ptr %i.bw, align 8, !alias.scope !241, !noalias !238
  %wide.load71 = load <2 x i64>, ptr %i.bx, align 8, !alias.scope !241, !noalias !238
  %reverse = shufflevector <2 x i64> %wide.load70, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse72 = shufflevector <2 x i64> %wide.load71, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.bt, align 8, !alias.scope !240, !noalias !239
  store <2 x i64> %reverse72, ptr %i.bv, align 8, !alias.scope !240, !noalias !239
  %reverse73 = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse74 = shufflevector <2 x i64> %wide.load69, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse73, ptr %i.bw, align 8, !alias.scope !241, !noalias !238
  store <2 x i64> %reverse74, ptr %i.bx, align 8, !alias.scope !241, !noalias !238
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !236

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize7reverseCs2AkyTgTLZ1a_8uu_tsort.exit, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.i.i.preheader

_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.i.i.preheader: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.i.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.i.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.i.i.preheader, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ce, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.i.i.preheader ] ; 3 uses
  %i.bz = xor i64 %.sroa.0.016.i.i, -1
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.cb = getelementptr [8 x i8], ptr %i.br, i64 %i.bz ; 2 uses
  %i.cc = load i64, ptr %i.ca, align 8, !range !8, !alias.scope !240, !noalias !239, !noundef !4
  %i.cd = load i64, ptr %i.cb, align 8, !alias.scope !241, !noalias !238
  store i64 %i.cd, ptr %i.ca, align 8, !alias.scope !240, !noalias !239
  store i64 %i.cc, ptr %i.cb, align 8, !alias.scope !241, !noalias !238
  %i.ce = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ce, %i.bq
  br i1 %exitcond.not.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize7reverseCs2AkyTgTLZ1a_8uu_tsort.exit, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize12split_at_mutCs2AkyTgTLZ1a_8uu_tsort.exit11.i.i, !llvm.loop !237
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB8_SB14_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2B_5Graph12detect_cycle0E0EB2B_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 144115188075855872) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #2 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB8_SB14_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2B_5Graph12detect_cycle0E0EB2B_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %4) #23
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB8_SB14_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2B_5Graph12detect_cycle0E0EB2B_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %4) #23
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB8_SB14_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2B_5Graph12detect_cycle0E0EB2B_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %4) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.val14 = load ptr, ptr %4, align 8, !nonnull !4, !align !7, !noundef !4
  %.sroa.0.0.val15 = load i64, ptr %.sroa.0.0, align 8, !range !8, !noundef !4
  %.val.i = load ptr, ptr %.val14, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.n = getelementptr i8, ptr %.val.i, i64 8
  %.val6.i.i = load ptr, ptr %i.n, align 8        ; 4 uses
  %i.o = getelementptr i8, ptr %.val.i, i64 16
  %.val7.i.i = load i64, ptr %i.o, align 8, !noundef !4 ; 3 uses
  %i.p = add i64 %.sroa.0.0.val15, -1             ; 2 uses
  %i.q = icmp ult i64 %i.p, %.val7.i.i
  br i1 %i.q, label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24
  unreachable

_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i: ; preds = %bb.c
  %.sroa.04.0.val16 = load i64, ptr %.sroa.04.0, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i) ]
  %i.r = add i64 %.sroa.04.0.val16, -1            ; 2 uses
  %i.s = icmp ult i64 %i.r, %.val7.i.i
  br i1 %i.s, label %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i20, label %bb.e, !prof !11

bb.e:                                             ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24
  unreachable

_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i20: ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i, i64 %i.p ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noundef !4 ; 4 uses
  %i.w = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i, i64 %i.r ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4 ; 4 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.aa)
  %i.ab = tail call i32 @memcmp(ptr nonnull %i.w, ptr nonnull %i.y, i64 %spec.store.select.i.i) ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub i64 %i.v, %i.aa
  %spec.select.i.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac ; 2 uses
  %.sroa.08.0.val13 = load i64, ptr %.sroa.08.0, align 8
  %i.af = add i64 %.sroa.08.0.val13, -1           ; 2 uses
  %i.ag = icmp ult i64 %i.af, %.val7.i.i
  br i1 %i.ag, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph12detect_cycle0E0B1Q_.exit23, label %bb.f, !prof !11

bb.f:                                             ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i20
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24
  unreachable

_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph12detect_cycle0E0B1Q_.exit23: ; preds = %_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph13get_node_name.exit.i.i20
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i, i64 %i.af ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !4 ; 4 uses
  %spec.store.select.i.i21 = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.ak)
  %i.al = tail call i32 @memcmp(ptr nonnull %i.w, ptr nonnull %i.ai, i64 %spec.store.select.i.i21) ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub i64 %i.v, %i.ak
  %spec.select.i.i22 = select i1 %i.an, i64 %i.ao, i64 %i.am
  %i.ap = xor i64 %spec.select.i.i22, %spec.select.i.i
  %i.aq = icmp slt i64 %i.ap, 0
  br i1 %i.aq, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot7median3NtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNCINvMB8_SBZ_16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB2v_5Graph12detect_cycle0E0EB2v_.exit, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsize16sort_unstable_byNCNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB1Q_5Graph12detect_cycle0E0B1Q_.exit30
end_hunk_0
