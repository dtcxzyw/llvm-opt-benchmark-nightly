Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarfdump.dwarfdump.33576e9ee781c344-cgu.15?download=true
inline.NumInlined: 532
inline.NumDeleted: 327
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowShEE5drainINtNtNtCskKLDkoKarTP_4core3ops5range9RangeFromjEECs4phXRVW1pDQ_9dwarfdump:bb.a
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapE5drainINtNtNtCskKLDkoKarTP_4core3ops5range9RangeFromjEEBH_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.c = icmp ult i64 %i.b, 192153584101141163
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range9RangeFromjEECs4phXRVW1pDQ_9dwarfdump(i64 noundef %2, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsgQ7e0lqRvgo_7memmap24MmapE5drainINtNtNtCskKLDkoKarTP_4core3ops5range9RangeFromjEECs4phXRVW1pDQ_9dwarfdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range9RangeFromjEECs4phXRVW1pDQ_9dwarfdump(i64 noundef %2, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetE6retainNCINvMs3_NtNtBJ_4read6abbrevNtB1K_18AbbreviationsCache8populateINtNtB1M_8relocate14RelocateReaderINtNtB1M_12endian_slice11EndianSliceNtNtBJ_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs_0EB4k_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !27, !noalias !28, !noundef !5 ; 5 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetE10retain_mutNCINvB2_6retainNCINvMs3_NtNtBJ_4read6abbrevNtB24_18AbbreviationsCache8populateINtNtB26_8relocate14RelocateReaderINtNtB26_12endian_slice11EndianSliceNtNtBJ_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs_0E0EB4E_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !27, !noalias !28, !nonnull !5, !noundef !5 ; 4 uses
  %.pre.i = load i32, ptr %1, align 4, !noalias !29 ; 2 uses
  %.val.i.i.i = load i64, ptr %2, align 8         ; 4 uses
  %.val11.i.peel = load i64, ptr %i.f, align 8, !noalias !29 ; 2 uses
  %i.g = icmp ne i32 %.pre.i, 0
  %.not.i.i.i.peel = icmp eq i64 %.val.i.i.i, %.val11.i.peel
  %or.cond.peel = select i1 %i.g, i1 %.not.i.i.i.peel, i1 false
  br i1 %or.cond.peel, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetE6retainNCINvMs3_NtNtBL_4read6abbrevNtB1M_18AbbreviationsCache8populateINtNtB1O_8relocate14RelocateReaderINtNtB1O_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs_0E0B4m_.exit.i.peel, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetE6retainNCINvMs3_NtNtBL_4read6abbrevNtB1M_18AbbreviationsCache8populateINtNtB1O_8relocate14RelocateReaderINtNtB1O_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs_0E0B4m_.exit.thread.i

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetE6retainNCINvMs3_NtNtBL_4read6abbrevNtB1M_18AbbreviationsCache8populateINtNtB1O_8relocate14RelocateReaderINtNtB1O_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs_0E0B4m_.exit.i.peel: ; preds = %.preheader.i
  %i.h = add i32 %.pre.i, 1                       ; 3 uses
  store i32 %i.h, ptr %1, align 4, !noalias !29
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.b, label %.loopexit.i, !prof !30

bb.b:                                             ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetE6retainNCINvMs3_NtNtBL_4read6abbrevNtB1M_18AbbreviationsCache8populateINtNtB1O_8relocate14RelocateReaderINtNtB1O_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs_0E0B4m_.exit.i.peel
  %i.j = icmp eq i64 %i.b, 1
  br i1 %i.j, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetE10retain_mutNCINvB2_6retainNCINvMs3_NtNtBJ_4read6abbrevNtB24_18AbbreviationsCache8populateINtNtB26_8relocate14RelocateReaderINtNtB26_12endian_slice11EndianSliceNtNtBJ_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs_0E0EB4E_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val11.i.pre = load i64, ptr %.phi.trans.insert, align 8, !noalias !29 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.val.i.i.i, %.val11.i.pre
  br i1 %.not.i.i.i, label %.loopexit.i.sink.split, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetE6retainNCINvMs3_NtNtBL_4read6abbrevNtB1M_18AbbreviationsCache8populateINtNtB1O_8relocate14RelocateReaderINtNtB1O_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs_0E0B4m_.exit.thread.i

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetE6retainNCINvMs3_NtNtBL_4read6abbrevNtB1M_18AbbreviationsCache8populateINtNtB1O_8relocate14RelocateReaderINtNtB1O_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs_0E0B4m_.exit.thread.i: ; preds = %bb.c, %.preheader.i
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %.preheader.i ], [ 1, %bb.c ]
  %.val11.i.lcssa = phi i64 [ %.val11.i.peel, %.preheader.i ], [ %.val11.i.pre, %bb.c ] ; 2 uses
  store i64 %.val11.i.lcssa, ptr %2, align 8, !noalias !29
  br label %.loopexit.i.sink.split

.loopexit.i.sink.split:                           ; preds = %bb.c, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetE6retainNCINvMs3_NtNtBL_4read6abbrevNtB1M_18AbbreviationsCache8populateINtNtB1O_8relocate14RelocateReaderINtNtB1O_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs_0E0B4m_.exit.thread.i
  %.sink = phi i32 [ 1, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetE6retainNCINvMs3_NtNtBL_4read6abbrevNtB1M_18AbbreviationsCache8populateINtNtB1O_8relocate14RelocateReaderINtNtB1O_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs_0E0B4m_.exit.thread.i ], [ 3, %bb.c ] ; 2 uses
  %.promoted.ph = phi i64 [ %.val11.i.lcssa, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetE6retainNCINvMs3_NtNtBL_4read6abbrevNtB1M_18AbbreviationsCache8populateINtNtB1O_8relocate14RelocateReaderINtNtB1O_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs_0E0B4m_.exit.thread.i ], [ %.val.i.i.i, %bb.c ]
  %.sroa.0.0.i14.ph = phi i64 [ %.sroa.0.0.i.lcssa, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetE6retainNCINvMs3_NtNtBL_4read6abbrevNtB1M_18AbbreviationsCache8populateINtNtB1O_8relocate14RelocateReaderINtNtB1O_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs_0E0B4m_.exit.thread.i ], [ 1, %bb.c ]
  store i32 %.sink, ptr %1, align 4, !noalias !29
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.sink.split, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetE6retainNCINvMs3_NtNtBL_4read6abbrevNtB1M_18AbbreviationsCache8populateINtNtB1O_8relocate14RelocateReaderINtNtB1O_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs_0E0B4m_.exit.i.peel
  %.promoted = phi i64 [ %.val.i.i.i, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetE6retainNCINvMs3_NtNtBL_4read6abbrevNtB1M_18AbbreviationsCache8populateINtNtB1O_8relocate14RelocateReaderINtNtB1O_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs_0E0B4m_.exit.i.peel ], [ %.promoted.ph, %.loopexit.i.sink.split ]
  %.sroa.0.0.i14 = phi i64 [ 0, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetE6retainNCINvMs3_NtNtBL_4read6abbrevNtB1M_18AbbreviationsCache8populateINtNtB1O_8relocate14RelocateReaderINtNtB1O_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs_0E0B4m_.exit.i.peel ], [ %.sroa.0.0.i14.ph, %.loopexit.i.sink.split ] ; 3 uses
  %.pre54.i = phi i32 [ %i.h, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetE6retainNCINvMs3_NtNtBL_4read6abbrevNtB1M_18AbbreviationsCache8populateINtNtB1O_8relocate14RelocateReaderINtNtB1O_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs_0E0B4m_.exit.i.peel ], [ %.sink, %.loopexit.i.sink.split ]
  %.sroa.7.045.i = add nuw nsw i64 %.sroa.0.0.i14, 1 ; 2 uses
  %i.k = icmp samesign ult i64 %.sroa.7.045.i, %i.b
  br i1 %i.k, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f, %.loopexit.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i14, %.loopexit.i ], [ %.sroa.13.1.i, %bb.f ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !27, !noalias !28
  br label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetE10retain_mutNCINvB2_6retainNCINvMs3_NtNtBJ_4read6abbrevNtB24_18AbbreviationsCache8populateINtNtB26_8relocate14RelocateReaderINtNtB26_12endian_slice11EndianSliceNtNtBJ_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs_0E0EB4E_.exit

.lr.ph.i:                                         ; preds = %.loopexit.i, %bb.f
  %.val.i.i14.i9 = phi i64 [ %.val.i.i14.i8, %bb.f ], [ %.promoted, %.loopexit.i ] ; 4 uses
  %i.l = phi i32 [ %i.s, %bb.f ], [ %.pre54.i, %.loopexit.i ] ; 2 uses
  %.sroa.7.047.i = phi i64 [ %.sroa.7.0.i, %bb.f ], [ %.sroa.7.045.i, %.loopexit.i ] ; 2 uses
  %.sroa.13.046.i = phi i64 [ %.sroa.13.1.i, %bb.f ], [ %.sroa.0.0.i14, %.loopexit.i ] ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.7.047.i
  %.val9.i = load i64, ptr %i.m, align 8, !noalias !29 ; 3 uses
  %i.n = icmp ne i32 %i.l, 0
  %.not.i.i15.i = icmp eq i64 %.val.i.i14.i9, %.val9.i
  %or.cond1 = select i1 %i.n, i1 %.not.i.i15.i, i1 false
  br i1 %or.cond1, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %.lr.ph.i
  store i64 %.val9.i, ptr %2, align 8, !noalias !29
  store i32 1, ptr %1, align 4, !noalias !29
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.o = add i32 %i.l, 1                          ; 3 uses
  store i32 %i.o, ptr %1, align 4, !noalias !29
  %i.p = icmp eq i32 %i.o, 2
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.13.046.i
  store i64 %.val.i.i14.i9, ptr %i.q, align 8, !noalias !29
  %i.r = add i64 %.sroa.13.046.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.thread.i
  %.val.i.i14.i8 = phi i64 [ %.val.i.i14.i9, %bb.e ], [ %.val9.i, %.thread.i ], [ %.val.i.i14.i9, %bb.d ]
  %i.s = phi i32 [ 2, %bb.e ], [ 1, %.thread.i ], [ %i.o, %bb.d ]
  %.sroa.13.1.i = phi i64 [ %i.r, %bb.e ], [ %.sroa.13.046.i, %.thread.i ], [ %.sroa.13.046.i, %bb.d ] ; 2 uses
  %.sroa.7.0.i = add nuw nsw i64 %.sroa.7.047.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.0.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetE10retain_mutNCINvB2_6retainNCINvMs3_NtNtBJ_4read6abbrevNtB24_18AbbreviationsCache8populateINtNtB26_8relocate14RelocateReaderINtNtB26_12endian_slice11EndianSliceNtNtBJ_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs_0E0EB4E_.exit: ; preds = %bb.b, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetE8dedup_byNCNvMs5_B5_Bv_5dedup0ECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 7 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 7 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvar = phi i64 [ 0, %bb.b ], [ %indvar.next, %bb.e ] ; 3 uses
  %.sroa.0.022 = phi i64 [ 1, %bb.b ], [ %.sroa.5.023, %bb.e ] ; 8 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.022 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %.val11 = load i64, ptr %i.g, align 8, !noundef !5
  %.val12 = load i64, ptr %i.h, align 8, !noundef !5
  %i.i = icmp eq i64 %.val11, %.val12
  %.sroa.5.023 = add nuw i64 %.sroa.0.022, 1      ; 5 uses
  br i1 %i.i, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.j = icmp ult i64 %.sroa.5.023, %i.b
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.k = sub i64 %i.b, %indvar
  %i.l = add nsw i64 %i.b, -3
  %xtraiter = and i64 %i.k, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.023
  %i.n = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.022 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %.val.prol = load i64, ptr %i.m, align 8, !noundef !5 ; 2 uses
  %.val10.prol = load i64, ptr %i.o, align 8, !noundef !5
  %i.p = icmp eq i64 %.val.prol, %.val10.prol
  br i1 %i.p, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.prol
  store i64 %.val.prol, ptr %i.n, align 8
  %i.q = add i64 %.sroa.0.022, 1
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.d, %.lr.ph.prol
  %.sroa.11.1.prol = phi i64 [ %i.q, %bb.d ], [ %.sroa.0.022, %.lr.ph.prol ] ; 2 uses
  %.sroa.5.0.prol = add nuw i64 %.sroa.0.022, 2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.11.1.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.5.025.unr = phi i64 [ %.sroa.5.023, %.lr.ph.preheader ], [ %.sroa.5.0.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.11.024.unr = phi i64 [ %.sroa.0.022, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.r = icmp eq i64 %i.l, %indvar
  br i1 %i.r, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %.sroa.5.023, %i.b
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.h, %.preheader
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.022, %.preheader ], [ %.sroa.11.1.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.sroa.11.1.1, %bb.h ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.a, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.h
  %.sroa.5.025 = phi i64 [ %.sroa.5.0.1, %bb.h ], [ %.sroa.5.025.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.11.024 = phi i64 [ %.sroa.11.1.1, %bb.h ], [ %.sroa.11.024.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.025
  %i.t = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.11.024 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %.val = load i64, ptr %i.s, align 8, !noundef !5 ; 2 uses
  %.val10 = load i64, ptr %i.u, align 8, !noundef !5
  %i.v = icmp eq i64 %.val, %.val10
  br i1 %i.v, label %.lr.ph.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store i64 %.val, ptr %i.t, align 8
  %i.w = add i64 %.sroa.11.024, 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.f
  %.sroa.11.1 = phi i64 [ %i.w, %bb.f ], [ %.sroa.11.024, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.025
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.11.1 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -8
  %.val.1 = load i64, ptr %i.y, align 8, !noundef !5 ; 2 uses
  %.val10.1 = load i64, ptr %i.aa, align 8, !noundef !5
  %i.ab = icmp eq i64 %.val.1, %.val10.1
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.1
  store i64 %.val.1, ptr %i.z, align 8
  %i.ac = add i64 %.sroa.11.1, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.1
  %.sroa.11.1.1 = phi i64 [ %i.ac, %bb.g ], [ %.sroa.11.1, %.lr.ph.1 ] ; 2 uses
  %.sroa.5.0.1 = add nuw nsw i64 %.sroa.5.025, 2  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.sroa.5.0.1, %i.b
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters8peekable8PeekableINtNtB6_9into_iter8IntoIterBG_EEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = load i64, ptr %1, align 8, !range !6, !alias.scope !42, !noalias !43, !noundef !5
  switch i64 %i.d, label %bb.b [
    i64 -2, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1c_6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCs4phXRVW1pDQ_9dwarfdump.exit
    i64 -1, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1c_6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCs4phXRVW1pDQ_9dwarfdump.exit.thread
  ]

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1c_6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCs4phXRVW1pDQ_9dwarfdump.exit.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs4phXRVW1pDQ_9dwarfdump.exit

bb.b:                                             ; preds = %bb.a
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1c_6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCs4phXRVW1pDQ_9dwarfdump.exit

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1c_6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !42, !noalias !43, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val9.i = load ptr, ptr %i.g, align 8, !alias.scope !42, !noalias !43, !nonnull !5, !noundef !5
  %i.h = ptrtoint ptr %.val9.i to i64
  %i.i = ptrtoint ptr %.val.i to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = udiv exact i64 %i.j, 24
  %i.l = add nuw nsw i64 %i.k, %.sroa.0.0.i       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !44, !noundef !5 ; 2 uses
  %i.o = load i64, ptr %0, align 8, !range !7, !alias.scope !44, !noundef !5
  %i.p = sub i64 %i.o, %i.n
  %i.q = icmp ugt i64 %i.l, %i.p
  br i1 %i.q, label %bb.c, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs4phXRVW1pDQ_9dwarfdump.exit, !prof !45

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1c_6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCs4phXRVW1pDQ_9dwarfdump.exit
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, i64 noundef %i.l, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs4phXRVW1pDQ_9dwarfdump.exit unwind label %bb.g

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1c_6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCs4phXRVW1pDQ_9dwarfdump.exit, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1c_6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCs4phXRVW1pDQ_9dwarfdump.exit.thread, %bb.c
  %i.r = phi ptr [ %i.e, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1c_6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCs4phXRVW1pDQ_9dwarfdump.exit.thread ], [ %i.m, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1c_6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCs4phXRVW1pDQ_9dwarfdump.exit ], [ %i.m, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.u = load i64, ptr %i.r, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.v = load i64, ptr %i.c, align 8, !range !6, !alias.scope !48, !noalias !49, !noundef !5
  switch i64 %i.v, label %bb.e [
    i64 -2, label %.noexc5
    i64 -1, label %bb.d
  ]

.noexc5:                                          ; preds = %bb.e, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs4phXRVW1pDQ_9dwarfdump.exit
  %.sroa.5.0.i = phi i64 [ %i.z, %bb.e ], [ %i.u, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs4phXRVW1pDQ_9dwarfdump.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !50
  store ptr %i.r, ptr %i.a, align 8, !noalias !51
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx2.i, align 8, !noalias !51
  %.sroa.8.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.t, ptr %.sroa.8.0..sroa_idx4.i, align 8, !noalias !51
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB1j_8for_each4callBX_NCINvMsk_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB1p_8adapters8peekable8PeekableBI_EE0E0ECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !50
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters8peekable8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB18_6string6StringEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_B16_INtB16_3VecB1P_E14extend_trustedB3_E0ECs4phXRVW1pDQ_9dwarfdump.exit

bb.d:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs4phXRVW1pDQ_9dwarfdump.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters8peekable8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB18_6string6StringEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_B16_INtB16_3VecB1P_E14extend_trustedB3_E0ECs4phXRVW1pDQ_9dwarfdump.exit

bb.e:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs4phXRVW1pDQ_9dwarfdump.exit
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.z = add i64 %i.u, 1
  br label %.noexc5

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters8peekable8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB18_6string6StringEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_B16_INtB16_3VecB1P_E14extend_trustedB3_E0ECs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %bb.d, %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm

bb.g:                                             ; preds = %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1q_6string6StringEEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(56) %1) #21
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCsG258MDvU3F_3std2rt10lang_startuECs4phXRVW1pDQ_9dwarfdump(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i8 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef i64 @_RNvNtCsG258MDvU3F_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @6, i64 noundef %1, ptr noundef %2, i8 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsG258MDvU3F_3std3env6var_osReECs4phXRVW1pDQ_9dwarfdump(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNtNtNtCsG258MDvU3F_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_TjNtCsfcxKEGBgCs2_7getopts6OptvalEEEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !54, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !54, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_TjNtCsfcxKEGBgCs2_7getopts6OptvalEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_TjNtCsfcxKEGBgCs2_7getopts6OptvalEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1
end_hunk_0
