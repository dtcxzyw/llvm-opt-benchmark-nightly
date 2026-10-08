Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarfdump.dwarfdump.33576e9ee781c344-cgu.09?download=true
inline.NumInlined: 410
inline.NumDeleted: 264
begin_hunk_0_@_RNvXs0_NtNtNtCs9Jn0q30Ea0B_6object4read4coff4fileNtB5_8CoffFileNtNtB9_6traits6Object21section_by_name_bytesCs4phXRVW1pDQ_9dwarfdump:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.l = phi i64 [ 0, %.lr.ph.i ], [ %i.o, %bb.c ]
  %i.m = phi ptr [ %i.d, %.lr.ph.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.o = add nuw nsw i64 %i.l, 1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !540
  call void @_RINvMs8_NtNtNtCs9Jn0q30Ea0B_6object4read4coff7sectionNtNtBc_2pe18ImageSectionHeader4nameRShECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(40) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a), !noalias !540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !540
  call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.p = load i64, ptr %i.b, align 8, !range !6, !alias.scope !541, !noalias !542, !noundef !5
  %i.q = icmp eq i64 %i.p, 0
  %.val2.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !540
  %i.r = icmp eq i64 %.val2.i.i.i.i, %3
  %or.cond.i.i.i = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond.i.i.i, label %_RNCNvXs0_NtNtNtCs9Jn0q30Ea0B_6object4read4coff4fileNtB7_8CoffFileNtNtBb_6traits6Object21section_by_name_bytes0Cs4phXRVW1pDQ_9dwarfdump.exit.i.i, label %_RNCNvXs0_NtNtNtCs9Jn0q30Ea0B_6object4read4coff4fileNtB7_8CoffFileNtNtBb_6traits6Object21section_by_name_bytes0Cs4phXRVW1pDQ_9dwarfdump.exit.thread.i.i

_RNCNvXs0_NtNtNtCs9Jn0q30Ea0B_6object4read4coff4fileNtB7_8CoffFileNtNtBb_6traits6Object21section_by_name_bytes0Cs4phXRVW1pDQ_9dwarfdump.exit.thread.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !540
  br label %bb.c

_RNCNvXs0_NtNtNtCs9Jn0q30Ea0B_6object4read4coff4fileNtB7_8CoffFileNtNtBb_6traits6Object21section_by_name_bytes0Cs4phXRVW1pDQ_9dwarfdump.exit.i.i: ; preds = %bb.b
  %.val5.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !541, !noalias !542, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val5.i.i.i.i, ptr nonnull readonly %2, i64 %3), !noalias !543
  %i.s = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !540
  br i1 %i.s, label %_RINvYNtNtNtNtCs9Jn0q30Ea0B_6object4read4coff7section19CoffSectionIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB19_4find5checkNtB5_11CoffSectionNCNvXs0_NtB7_4fileNtB30_8CoffFileNtNtB9_6traits6Object21section_by_name_bytes0E0INtNtNtB1h_3ops12control_flow11ControlFlowB2A_EECs4phXRVW1pDQ_9dwarfdump.exit, label %bb.c

bb.c:                                             ; preds = %_RNCNvXs0_NtNtNtCs9Jn0q30Ea0B_6object4read4coff4fileNtB7_8CoffFileNtNtBb_6traits6Object21section_by_name_bytes0Cs4phXRVW1pDQ_9dwarfdump.exit.i.i, %_RNCNvXs0_NtNtNtCs9Jn0q30Ea0B_6object4read4coff4fileNtB7_8CoffFileNtNtBb_6traits6Object21section_by_name_bytes0Cs4phXRVW1pDQ_9dwarfdump.exit.thread.i.i
  %i.t = icmp eq ptr %i.n, %i.g
  br i1 %i.t, label %.loopexit, label %bb.b

_RINvYNtNtNtNtCs9Jn0q30Ea0B_6object4read4coff7section19CoffSectionIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB19_4find5checkNtB5_11CoffSectionNCNvXs0_NtB7_4fileNtB30_8CoffFileNtNtB9_6traits6Object21section_by_name_bytes0E0INtNtNtB1h_3ops12control_flow11ControlFlowB2A_EECs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %_RNCNvXs0_NtNtNtCs9Jn0q30Ea0B_6object4read4coff4fileNtB7_8CoffFileNtNtBb_6traits6Object21section_by_name_bytes0Cs4phXRVW1pDQ_9dwarfdump.exit.i.i
  store ptr %1, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

.loopexit:                                        ; preds = %bb.c, %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %_RINvYNtNtNtNtCs9Jn0q30Ea0B_6object4read4coff7section19CoffSectionIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB19_4find5checkNtB5_11CoffSectionNCNvXs0_NtB7_4fileNtB30_8CoffFileNtNtB9_6traits6Object21section_by_name_bytes0E0INtNtNtB1h_3ops12control_flow11ControlFlowB2A_EECs4phXRVW1pDQ_9dwarfdump.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs9Jn0q30Ea0B_6object4read4wasmNtB5_8WasmFileNtNtB7_6traits6Object16section_by_indexCs4phXRVW1pDQ_9dwarfdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, 14
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %2 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !6, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @27, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 26, ptr %i.j, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  %i.m = icmp ult i64 %i.g, %i.l
  br i1 %i.m, label %bb.g, label %bb.f, !prof !16

bb.e:                                             ; preds = %bb.g, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %bb.g ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #26
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.r, align 8
  br label %bb.e
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { ptr, ptr } @_RNvXs1_NtNtCs9Jn0q30Ea0B_6object4read4wasmNtB5_8WasmFileNtNtB7_6traits6Object21section_by_name_bytesCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx ; 2 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvYNtNtNtCs9Jn0q30Ea0B_6object4read4wasm19WasmSectionIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBZ_4find5checkNtB5_11WasmSectionNCNvXs1_B5_NtB5_8WasmFileNtNtB7_6traits6Object21section_by_name_bytes0E0INtNtNtB17_3ops12control_flow11ControlFlowB2p_EECs4phXRVW1pDQ_9dwarfdump.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtNtNtCs9Jn0q30Ea0B_6object4read4wasm11WasmSectionNCNvXs1_B1e_NtB1e_8WasmFileNtNtB1g_6traits6Object21section_by_name_bytes0E0Cs4phXRVW1pDQ_9dwarfdump.exit.i
  %i.g = phi ptr [ %i.h, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtNtNtCs9Jn0q30Ea0B_6object4read4wasm11WasmSectionNCNvXs1_B1e_NtB1e_8WasmFileNtNtB1g_6traits6Object21section_by_name_bytes0E0Cs4phXRVW1pDQ_9dwarfdump.exit.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555)
  %i.i = load i64, ptr %i.g, align 8, !range !556, !alias.scope !555, !noalias !557, !noundef !5 ; 3 uses
  switch i64 %i.i, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.o
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 4, label %bb.e
    i64 5, label %bb.f
    i64 6, label %bb.g
    i64 7, label %bb.h
    i64 8, label %bb.i
    i64 9, label %bb.j
    i64 10, label %bb.k
    i64 11, label %bb.l
    i64 12, label %bb.m
    i64 13, label %bb.n
  ]

default.unreachable:                              ; preds = %.lr.ph.i
  unreachable

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !555, !noalias !557, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !555, !noalias !557, !noundef !5
  br label %bb.o

bb.c:                                             ; preds = %.lr.ph.i
  br label %bb.o

bb.d:                                             ; preds = %.lr.ph.i
  br label %bb.o

bb.e:                                             ; preds = %.lr.ph.i
  br label %bb.o

bb.f:                                             ; preds = %.lr.ph.i
  br label %bb.o

bb.g:                                             ; preds = %.lr.ph.i
  br label %bb.o

bb.h:                                             ; preds = %.lr.ph.i
  br label %bb.o

bb.i:                                             ; preds = %.lr.ph.i
  br label %bb.o

bb.j:                                             ; preds = %.lr.ph.i
  br label %bb.o

bb.k:                                             ; preds = %.lr.ph.i
  br label %bb.o

bb.l:                                             ; preds = %.lr.ph.i
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph.i
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.i
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph.i
  %.sroa.15.0.i.i.i.i = phi i64 [ %i.m, %bb.b ], [ 5, %bb.n ], [ 8, %bb.c ], [ 10, %bb.d ], [ 7, %bb.e ], [ 8, %bb.f ], [ 8, %bb.g ], [ 8, %bb.h ], [ 7, %bb.i ], [ %i.i, %bb.j ], [ 6, %bb.k ], [ 6, %bb.l ], [ %i.i, %bb.m ], [ 6, %.lr.ph.i ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.k, %bb.b ], [ @42, %bb.n ], [ @31, %bb.c ], [ @32, %bb.d ], [ @33, %bb.e ], [ @34, %bb.f ], [ @35, %bb.g ], [ @36, %bb.h ], [ @37, %bb.i ], [ @38, %bb.j ], [ @39, %bb.k ], [ @40, %bb.l ], [ @41, %bb.m ], [ @30, %.lr.ph.i ]
  %i.n = icmp eq i64 %.sroa.15.0.i.i.i.i, %2
  br i1 %i.n, label %_RNCNvXs1_NtNtCs9Jn0q30Ea0B_6object4read4wasmNtB7_8WasmFileNtNtB9_6traits6Object21section_by_name_bytes0Cs4phXRVW1pDQ_9dwarfdump.exit.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtNtNtCs9Jn0q30Ea0B_6object4read4wasm11WasmSectionNCNvXs1_B1e_NtB1e_8WasmFileNtNtB1g_6traits6Object21section_by_name_bytes0E0Cs4phXRVW1pDQ_9dwarfdump.exit.i

_RNCNvXs1_NtNtCs9Jn0q30Ea0B_6object4read4wasmNtB7_8WasmFileNtNtB9_6traits6Object21section_by_name_bytes0Cs4phXRVW1pDQ_9dwarfdump.exit.i.i: ; preds = %bb.o
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i, ptr nonnull readonly %1, i64 %2), !noalias !558
  %bcmp.i.i.i.i.i.fr.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.o = icmp eq i32 %bcmp.i.i.i.i.i.fr.i.i, 0
  br i1 %i.o, label %_RINvYNtNtNtCs9Jn0q30Ea0B_6object4read4wasm19WasmSectionIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBZ_4find5checkNtB5_11WasmSectionNCNvXs1_B5_NtB5_8WasmFileNtNtB7_6traits6Object21section_by_name_bytes0E0INtNtNtB17_3ops12control_flow11ControlFlowB2p_EECs4phXRVW1pDQ_9dwarfdump.exit, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtNtNtCs9Jn0q30Ea0B_6object4read4wasm11WasmSectionNCNvXs1_B1e_NtB1e_8WasmFileNtNtB1g_6traits6Object21section_by_name_bytes0E0Cs4phXRVW1pDQ_9dwarfdump.exit.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtNtNtCs9Jn0q30Ea0B_6object4read4wasm11WasmSectionNCNvXs1_B1e_NtB1e_8WasmFileNtNtB1g_6traits6Object21section_by_name_bytes0E0Cs4phXRVW1pDQ_9dwarfdump.exit.i: ; preds = %_RNCNvXs1_NtNtCs9Jn0q30Ea0B_6object4read4wasmNtB7_8WasmFileNtNtB9_6traits6Object21section_by_name_bytes0Cs4phXRVW1pDQ_9dwarfdump.exit.i.i, %bb.o
  %i.p = icmp eq ptr %i.h, %i.e
  br i1 %i.p, label %_RINvYNtNtNtCs9Jn0q30Ea0B_6object4read4wasm19WasmSectionIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBZ_4find5checkNtB5_11WasmSectionNCNvXs1_B5_NtB5_8WasmFileNtNtB7_6traits6Object21section_by_name_bytes0E0INtNtNtB17_3ops12control_flow11ControlFlowB2p_EECs4phXRVW1pDQ_9dwarfdump.exit, label %.lr.ph.i

_RINvYNtNtNtCs9Jn0q30Ea0B_6object4read4wasm19WasmSectionIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBZ_4find5checkNtB5_11WasmSectionNCNvXs1_B5_NtB5_8WasmFileNtNtB7_6traits6Object21section_by_name_bytes0E0INtNtNtB17_3ops12control_flow11ControlFlowB2p_EECs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtNtNtCs9Jn0q30Ea0B_6object4read4wasm11WasmSectionNCNvXs1_B1e_NtB1e_8WasmFileNtNtB1g_6traits6Object21section_by_name_bytes0E0Cs4phXRVW1pDQ_9dwarfdump.exit.i, %_RNCNvXs1_NtNtCs9Jn0q30Ea0B_6object4read4wasmNtB7_8WasmFileNtNtB9_6traits6Object21section_by_name_bytes0Cs4phXRVW1pDQ_9dwarfdump.exit.i.i, %bb.a
  %.lcssa.i = phi ptr [ %i.b, %bb.a ], [ %i.e, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtNtNtCs9Jn0q30Ea0B_6object4read4wasm11WasmSectionNCNvXs1_B1e_NtB1e_8WasmFileNtNtB1g_6traits6Object21section_by_name_bytes0E0Cs4phXRVW1pDQ_9dwarfdump.exit.i ], [ %i.g, %_RNCNvXs1_NtNtCs9Jn0q30Ea0B_6object4read4wasmNtB7_8WasmFileNtNtB9_6traits6Object21section_by_name_bytes0Cs4phXRVW1pDQ_9dwarfdump.exit.i.i ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ null, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtNtNtCs9Jn0q30Ea0B_6object4read4wasm11WasmSectionNCNvXs1_B1e_NtB1e_8WasmFileNtNtB1g_6traits6Object21section_by_name_bytes0E0Cs4phXRVW1pDQ_9dwarfdump.exit.i ], [ %0, %_RNCNvXs1_NtNtCs9Jn0q30Ea0B_6object4read4wasmNtB7_8WasmFileNtNtB9_6traits6Object21section_by_name_bytes0Cs4phXRVW1pDQ_9dwarfdump.exit.i.i ] ; 2 uses
  %i.q = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %.not = icmp eq ptr %.sroa.0.0.i, null
  %spec.select = select i1 %.not, ptr undef, ptr %.lcssa.i
  %i.r = insertvalue { ptr, ptr } %i.q, ptr %spec.select, 1
  ret { ptr, ptr } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtNtCs9Jn0q30Ea0B_6object4read4coff7sectionINtB5_11CoffSectionRShNtNtBb_2pe22AnonObjectHeaderBigobjENtNtB9_6traits13ObjectSection11relocationsCs4phXRVW1pDQ_9dwarfdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !align !13, !noundef !5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  call void @_RINvMs8_NtNtNtCs9Jn0q30Ea0B_6object4read4coff7sectionNtNtBc_2pe18ImageSectionHeader16coff_relocationsRShECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h)
  %i.i = load i64, ptr %i.a, align 8, !range !6, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8
  %.sroa.4.0 = select i1 %i.j, i64 0, i64 %i.n
  %.sroa.0.0 = select i1 %i.j, ptr inttoptr (i64 1 to ptr), ptr %i.l ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw [10 x i8], ptr %.sroa.0.0, i64 %.sroa.4.0
  store ptr %i.d, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.q, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtNtCs9Jn0q30Ea0B_6object4read4coff7sectionNtB5_11CoffSectionNtNtB9_6traits13ObjectSection11relocationsCs4phXRVW1pDQ_9dwarfdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !align !13, !noundef !5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  call void @_RINvMs8_NtNtNtCs9Jn0q30Ea0B_6object4read4coff7sectionNtNtBc_2pe18ImageSectionHeader16coff_relocationsRShECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h)
  %i.i = load i64, ptr %i.a, align 8, !range !6, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8
  %.sroa.4.0 = select i1 %i.j, i64 0, i64 %i.n
  %.sroa.0.0 = select i1 %i.j, ptr inttoptr (i64 1 to ptr), ptr %i.l ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw [10 x i8], ptr %.sroa.0.0, i64 %.sroa.4.0
  store ptr %i.d, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.q, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecIBx_IBH_INtNtCskKLDkoKarTP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEEEEENtNtB1X_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.b = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 377) 48, i64 noundef 8) #23 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #27
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs7_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_4sync3ArcIBL_INtNtCskKLDkoKarTP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEEEEENtNtB1U_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.b, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8
  ret ptr %i.b

bb.d:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 48, i64 noundef 8) #23
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCskKLDkoKarTP_4core6option6OptionuEEENtNtB1z_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 377) 24, i64 noundef 8) #23 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #27
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  %i.c = invoke i64 @_RNvXs7_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionuEENtNtB11_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump()
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  store i64 1, ptr %i.a, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %.sroa.512.0..sroa_idx, align 8
  ret ptr %i.a

bb.d:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #23
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsb_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB11_8relocate14RelocateReaderINtNtB11_12endian_slice11EndianSliceNtNtB13_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3s_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBR_8relocate14RelocateReaderINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 24                  ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit, label %.lr.ph

.body:                                            ; preds = %bb.d, %.body.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.h unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4phXRVW1pDQ_9dwarfdump.exit.i.i
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i
  %.sroa.0.0.i16 = phi i64 [ %i.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.0.i16 ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.0.0.i16, 1        ; 4 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4phXRVW1pDQ_9dwarfdump.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body.i unwind label %bb.c
end_hunk_0
