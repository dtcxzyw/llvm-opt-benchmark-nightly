Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarfdump.dwarfdump.33576e9ee781c344-cgu.08?download=true
inline.NumInlined: 366
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs9_NtNtCsi68uqYEhoRA_5gimli4read5indexINtB5_24UnitIndexSectionIteratorINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB2Q_:bb.a
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.g, ptr %1, align 8
  %i.h = load i8, ptr %i.c, align 1, !range !1116, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1119
  %i.i = tail call noundef i32 @_RNvXs11_NtCskKLDkoKarTP_4core5arrayAhj4_NtNtB8_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump(), !noalias !1119
  store i32 %i.i, ptr %i.b, align 4, !noalias !1119
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1122, !noundef !5 ; 2 uses
  %i.l = icmp ugt i64 %i.k, 3
  br i1 %i.l, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit.thread

_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1119
  br label %bb.c

_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1122, !nonnull !5, !noundef !5 ; 2 uses
  %i.o = add i64 %i.k, -4
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store ptr %i.p, ptr %i.m, align 8, !alias.scope !1122, !captures !8
  store i64 %i.o, ptr %i.j, align 8, !alias.scope !1122
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull %i.b, i64 noundef range(i64 1, 9) 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef range(i64 1, 9) 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24), !noalias !1123
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.b, align 4, !noalias !1119 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1119
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i = load i8, ptr %i.q, align 8, !range !12, !alias.scope !1117, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1126
  %i.r = call noundef i32 @_RNvXs11_NtCskKLDkoKarTP_4core5arrayAhj4_NtNtB8_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump(), !noalias !1126
  store i32 %i.r, ptr %i.a, align 4, !noalias !1126
  call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1129, !noundef !5 ; 2 uses
  %i.u = icmp ugt i64 %i.t, 3
  br i1 %i.u, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit18, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit18.thread

_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit18.thread: ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1126
  br label %bb.c

_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit18: ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit
  %i.v = trunc nuw i8 %.val.i to i1
  %i.w = call i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i)
  %spec.select.i.i = select i1 %i.v, i32 %i.w, i32 %.sroa.0.0.copyload.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1129, !nonnull !5, !noundef !5 ; 2 uses
  %i.z = add i64 %i.t, -4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store ptr %i.aa, ptr %i.x, align 8, !alias.scope !1129, !captures !8
  store i64 %i.z, ptr %i.s, align 8, !alias.scope !1129
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull %i.a, i64 noundef range(i64 1, 9) 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef range(i64 1, 9) 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24), !noalias !1130
  %.sroa.0.0.copyload.i.i15 = load i32, ptr %i.a, align 4, !noalias !1126 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1126
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val.i16 = load i8, ptr %i.ab, align 8, !range !12, !alias.scope !1124, !noundef !5
  %i.ac = trunc nuw i8 %.val.i16 to i1
  %i.ad = call i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i15)
  %spec.select.i.i17 = select i1 %i.ac, i32 %i.ad, i32 %.sroa.0.0.copyload.i.i15
  store i32 %spec.select.i.i, ptr %0, align 4
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %spec.select.i.i17, ptr %.sroa.410.0..sroa_idx, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit18.thread, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit.thread, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit18
  %.sink = phi i8 [ %i.h, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit18 ], [ -1, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit18.thread ], [ -1, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit.thread ], [ -1, %bb.a ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink, ptr %i.ae, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i8, i64 } @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read7aranges12DebugArangesINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEINtB7_7SectionBU_E16lookup_offset_idB2A_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val3 = load i64, ptr %i.b, align 8, !noundef !5
  %i.c = ptrtoint ptr %.val to i64                ; 3 uses
  %i.d = icmp uge i64 %1, %i.c
  %i.e = add i64 %.val3, %i.c
  %i.f = icmp ule i64 %1, %i.e
  %or.cond.i.i = and i1 %i.d, %i.f                ; 2 uses
  %i.g = sub nuw i64 %1, %i.c
  %spec.select = select i1 %or.cond.i.i, i64 %i.g, i64 undef
  %spec.select4 = select i1 %or.cond.i.i, i8 2, i8 -1
  %i.h = insertvalue { i8, i64 } poison, i8 %spec.select4, 0
  %i.i = insertvalue { i8, i64 } %i.h, i64 %spec.select, 1
  ret { i8, i64 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader11skip_leb128B26_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.promoted.i = load i64, ptr %i.c, align 8, !alias.scope !1157 ; 2 uses
  %.promoted23.i = load ptr, ptr %i.b, align 8, !alias.scope !1157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1158
  %i.d = tail call noundef i8 @_RNvXs14_NtCskKLDkoKarTP_4core5arrayAhj1_NtNtB8_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump(), !noalias !1158
  store i8 %i.d, ptr %i.a, align 1, !noalias !1158
  %.not.i.i.i5 = icmp eq i64 %.promoted.i, 0
  br i1 %.not.i.i.i5, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1159
  %i.e = call noundef i8 @_RNvXs14_NtCskKLDkoKarTP_4core5arrayAhj1_NtNtB8_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump(), !noalias !1159
  store i8 %i.e, ptr %i.a, align 1, !noalias !1159
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi ptr [ %.promoted23.i, %bb.a ], [ %i.j, %bb.b ]
  %i.f = ptrtoint ptr %.lcssa to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1160
  store i8 17, ptr %0, align 8, !alias.scope !1156
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.413.0..sroa_idx.i, align 1, !alias.scope !1156
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i48 0, ptr %.sroa.514.0..sroa_idx.i, align 2, !alias.scope !1156
  %.sroa.514.sroa.4.0..sroa.514.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %.sroa.514.sroa.4.0..sroa.514.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1156
  br label %_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read4skipINtNtNtB6_4read8relocate14RelocateReaderINtNtBM_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2u_.exit

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.i, %bb.b ], [ %.promoted.i, %bb.a ]
  %i.h = phi ptr [ %i.j, %bb.b ], [ %.promoted23.i, %bb.a ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  %i.i = add i64 %i.g, -1                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  store ptr %i.j, ptr %i.b, align 8, !alias.scope !1165, !captures !8
  store i64 %i.i, ptr %i.c, align 8, !alias.scope !1165
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull %i.a, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24), !noalias !1166
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.a, align 1, !noalias !1160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1160
  %i.k = icmp sgt i8 %.sroa.0.0.copyload.i.i.i, -1
  br i1 %i.k, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  store i8 -1, ptr %0, align 8, !alias.scope !1156
  br label %_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read4skipINtNtNtB6_4read8relocate14RelocateReaderINtNtBM_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2u_.exit

_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read4skipINtNtNtB6_4read8relocate14RelocateReaderINtNtBM_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2u_.exit: ; preds = %._crit_edge, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader12read_sleb128B26_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.promoted.i = load i64, ptr %i.c, align 8, !alias.scope !1193 ; 2 uses
  %.promoted38.i = load ptr, ptr %i.b, align 8, !alias.scope !1193 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1194
  %i.d = tail call noundef i8 @_RNvXs14_NtCskKLDkoKarTP_4core5arrayAhj1_NtNtB8_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump(), !noalias !1194
  store i8 %i.d, ptr %i.a, align 1, !noalias !1194
  %.not.i.i.i21 = icmp eq i64 %.promoted.i, 0
  br i1 %.not.i.i.i21, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1195
  %i.e = call noundef i8 @_RNvXs14_NtCskKLDkoKarTP_4core5arrayAhj1_NtNtB8_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump(), !noalias !1195
  store i8 %i.e, ptr %i.a, align 1, !noalias !1195
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi ptr [ %.promoted38.i, %bb.a ], [ %i.j, %bb.b ]
  %i.f = ptrtoint ptr %.lcssa to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1196
  store i8 17, ptr %0, align 8, !alias.scope !1192
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.424.0..sroa_idx.i, align 1, !alias.scope !1192
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i48 0, ptr %.sroa.525.0..sroa_idx.i, align 2, !alias.scope !1192
  %.sroa.525.sroa.4.0..sroa.525.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %.sroa.525.sroa.4.0..sroa.525.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1192
  br label %_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read6signedINtNtNtB6_4read8relocate14RelocateReaderINtNtBO_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2w_.exit

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i23 = phi i64 [ %i.q, %bb.b ], [ 0, %bb.a ]
  %.sroa.04.0.i22 = phi i32 [ %i.r, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.g = phi i64 [ %i.i, %bb.b ], [ %.promoted.i, %bb.a ]
  %i.h = phi ptr [ %i.j, %bb.b ], [ %.promoted38.i, %bb.a ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  %i.i = add i64 %i.g, -1                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  store ptr %i.j, ptr %i.b, align 8, !alias.scope !1201, !captures !8
  store i64 %i.i, ptr %i.c, align 8, !alias.scope !1201
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull %i.a, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24), !noalias !1202
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.a, align 1, !noalias !1196 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1196
  %i.k = icmp eq i32 %.sroa.04.0.i22, 63
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  switch i8 %.sroa.0.0.copyload.i.i.i, label %bb.e [
    i8 0, label %bb.d
    i8 127, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %.lr.ph
  %i.l = and i8 %.sroa.0.0.copyload.i.i.i, 127
  %i.m = zext nneg i8 %i.l to i64
  %i.n = and i32 %.sroa.04.0.i22, 63
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = or i64 %i.p, %.sroa.0.0.i23              ; 2 uses
  %i.r = add nuw nsw i32 %.sroa.04.0.i22, 7       ; 2 uses
  %i.s = icmp sgt i8 %.sroa.0.0.copyload.i.i.i, -1
  br i1 %i.s, label %bb.f, label %bb.b

bb.e:                                             ; preds = %bb.c
  store i8 7, ptr %0, align 8, !alias.scope !1192
  br label %_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read6signedINtNtNtB6_4read8relocate14RelocateReaderINtNtBO_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2w_.exit

bb.f:                                             ; preds = %bb.d
  %2 = icmp samesign ult i32 %.sroa.04.0.i22, 57
  %i.t = icmp samesign ugt i8 %.sroa.0.0.copyload.i.i.i, 63
  %or.cond.i = and i1 %2, %i.t
  %i.u = and i32 %i.r, 63
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nsw i64 -1, %i.v
  %i.x = select i1 %or.cond.i, i64 %i.w, i64 0
  %.sroa.0.1.i = or i64 %i.q, %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.1.i, ptr %i.y, align 8, !alias.scope !1192
  store i8 -1, ptr %0, align 8, !alias.scope !1192
  br label %_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read6signedINtNtNtB6_4read8relocate14RelocateReaderINtNtBO_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2w_.exit

_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read6signedINtNtNtB6_4read8relocate14RelocateReaderINtNtBO_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2w_.exit: ; preds = %._crit_edge, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader12read_uleb128B26_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read8unsignedINtNtNtB6_4read8relocate14RelocateReaderINtNtBQ_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2y_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader16read_uleb128_u16B26_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 6 uses
  %i.c = alloca [1 x i8], align 1                 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1252
  %i.d = tail call noundef i8 @_RNvXs14_NtCskKLDkoKarTP_4core5arrayAhj1_NtNtB8_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump(), !noalias !1252
  store i8 %i.d, ptr %i.c, align 1, !noalias !1252
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1255, !noundef !5 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.g, 0
  %i.h = load ptr, ptr %i.e, align 8, !alias.scope !1255, !nonnull !5, !noundef !5 ; 5 uses
  br i1 %.not.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.h to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1252
  store i8 17, ptr %0, align 8, !alias.scope !1248
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.439.0..sroa_idx.i, align 1, !alias.scope !1248
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i48 0, ptr %.sroa.540.0..sroa_idx.i, align 2, !alias.scope !1248
  %.sroa.540.sroa.4.0..sroa.540.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %.sroa.540.sroa.4.0..sroa.540.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1248
  br label %_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read3u16INtNtNtB6_4read8relocate14RelocateReaderINtNtBL_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2t_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = add i64 %i.g, -1                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  store ptr %i.k, ptr %i.e, align 8, !alias.scope !1255, !captures !8
  store i64 %i.j, ptr %i.f, align 8, !alias.scope !1255
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull %i.c, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24), !noalias !1256
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.c, align 1, !noalias !1252 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1252
  %i.l = icmp sgt i8 %.sroa.0.0.copyload.i.i.i, -1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = zext nneg i8 %.sroa.0.0.copyload.i.i.i to i16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.m, ptr %i.n, align 2, !alias.scope !1248
  store i8 -1, ptr %0, align 8, !alias.scope !1248
  br label %_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read3u16INtNtNtB6_4read8relocate14RelocateReaderINtNtBL_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2t_.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1259
  %i.o = call noundef i8 @_RNvXs14_NtCskKLDkoKarTP_4core5arrayAhj1_NtNtB8_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump(), !noalias !1259
  store i8 %i.o, ptr %i.b, align 1, !noalias !1259
  call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  %.not.i.i61.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i61.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = ptrtoint ptr %i.k to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1259
  store i8 17, ptr %0, align 8, !alias.scope !1248
  %.sroa.448.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.448.0..sroa_idx.i, align 1, !alias.scope !1248
  %.sroa.549.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i48 0, ptr %.sroa.549.0..sroa_idx.i, align 2, !alias.scope !1248
  %.sroa.549.sroa.4.0..sroa.549.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %.sroa.549.sroa.4.0..sroa.549.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1248
  br label %_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read3u16INtNtNtB6_4read8relocate14RelocateReaderINtNtBL_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2t_.exit

bb.g:                                             ; preds = %bb.e
  %i.q = add i64 %i.g, -2                         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 3 uses
  store ptr %i.r, ptr %i.e, align 8, !alias.scope !1262, !captures !8
  store i64 %i.q, ptr %i.f, align 8, !alias.scope !1262
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull %i.b, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24), !noalias !1263
  %.sroa.0.0.copyload.i.i63.i = load i8, ptr %i.b, align 1, !noalias !1259 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1259
  %i.s = and i8 %.sroa.0.0.copyload.i.i.i, 127
  %i.t = zext nneg i8 %i.s to i16
  %i.u = and i8 %.sroa.0.0.copyload.i.i63.i, 127
  %i.v = zext nneg i8 %i.u to i16
  %i.w = shl nuw nsw i16 %i.v, 7
  %i.x = or disjoint i16 %i.w, %i.t               ; 2 uses
  %i.y = icmp sgt i8 %.sroa.0.0.copyload.i.i63.i, -1
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.x, ptr %i.z, align 2, !alias.scope !1248
  store i8 -1, ptr %0, align 8, !alias.scope !1248
  br label %_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read3u16INtNtNtB6_4read8relocate14RelocateReaderINtNtBL_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2t_.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  call void @llvm.experimental.noalias.scope.decl(metadata !1265), !noalias !1248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1266
  %i.aa = call noundef i8 @_RNvXs14_NtCskKLDkoKarTP_4core5arrayAhj1_NtNtB8_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump(), !noalias !1266
  store i8 %i.aa, ptr %i.a, align 1, !noalias !1266
  call void @llvm.experimental.noalias.scope.decl(metadata !1267), !noalias !1248
  call void @llvm.experimental.noalias.scope.decl(metadata !1268), !noalias !1248
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = ptrtoint ptr %i.r to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1266
  %.sroa.558.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i48 0, ptr %.sroa.558.0..sroa_idx.i, align 2, !noalias !1249
  %.sroa.10.2..sroa.558.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ab, ptr %.sroa.10.2..sroa.558.0..sroa_idx.i.sroa_idx, align 8, !noalias !1249
  store i8 17, ptr %0, align 8, !alias.scope !1248
  %.sroa.457.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.457.0..sroa_idx.i, align 1, !alias.scope !1248
  br label %_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read3u16INtNtNtB6_4read8relocate14RelocateReaderINtNtBL_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2t_.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = add i64 %i.g, -3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  store ptr %i.ad, ptr %i.e, align 8, !alias.scope !1269, !noalias !1248, !captures !8
  store i64 %i.ac, ptr %i.f, align 8, !alias.scope !1269, !noalias !1248
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull %i.a, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24), !noalias !1270
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.a, align 1, !noalias !1266 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1266
  %i.ae = icmp ugt i8 %.sroa.0.0.copyload.i.i, 3
  br i1 %i.ae, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = zext nneg i8 %.sroa.0.0.copyload.i.i to i16
  %i.ag = shl nuw i16 %i.af, 14
  %i.ah = or disjoint i16 %i.ag, %i.x
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.ah, ptr %i.ai, align 2, !alias.scope !1248
  store i8 -1, ptr %0, align 8, !alias.scope !1248
  br label %_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read3u16INtNtNtB6_4read8relocate14RelocateReaderINtNtBL_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2t_.exit

bb.m:                                             ; preds = %bb.k
  store i8 6, ptr %0, align 8, !alias.scope !1248
  br label %_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read3u16INtNtNtB6_4read8relocate14RelocateReaderINtNtBL_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2t_.exit

_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read3u16INtNtNtB6_4read8relocate14RelocateReaderINtNtBL_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2t_.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader16read_uleb128_u32B26_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read8unsignedINtNtNtB6_4read8relocate14RelocateReaderINtNtBQ_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2y_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef align 8 dereferenceable(56) %1)
  %i.b = load i8, ptr %i.a, align 8, !range !6, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.414.0..sroa_idx, i64 7, i1 false)
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.515.0.copyload = load i64, ptr %.sroa.515.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 %i.b, ptr %0, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.515.0.copyload, ptr %.sroa.518.0..sroa_idx, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp ugt i64 %i.d, 4294967295
  br i1 %i.e, label %bb.e, label %bb.d
end_hunk_0
