Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/convert.convert.652d47baf39f5aab-cgu.07?download=true
inline.NumInlined: 165
inline.NumDeleted: 82
begin_hunk_0_@_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB4_9DebugLineINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE7programCs8GyQQEoxZtT_7convert:bb.a
  %.sroa.5.sroa.13.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.dd, ptr %.sroa.5.sroa.13.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.14.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 %i.di, ptr %.sroa.5.sroa.14.0..sroa.5.0..sroa_idx.sroa_idx, align 16
  %.sroa.5.sroa.16.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.bt, ptr %.sroa.5.sroa.16.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.17.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %i.bs, ptr %.sroa.5.sroa.17.0..sroa.5.0..sroa_idx.sroa_idx, align 16
  %.sroa.5.sroa.18.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 %.val.i479.i, ptr %.sroa.5.sroa.18.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.19.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.sroa.19.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.111.sroa.0, i64 23, i1 false)
  %.sroa.5.sroa.20.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 %.sroa.4133.2, ptr %.sroa.5.sroa.20.0..sroa.5.0..sroa_idx.sroa_idx, align 16
  %.sroa.5.sroa.22.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %2, ptr %.sroa.5.sroa.22.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.23.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %.sroa.0275.0.copyload.i, ptr %.sroa.5.sroa.23.0..sroa.5.0..sroa_idx.sroa_idx, align 16
  %.sroa.5.sroa.24.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 %i.bn, ptr %.sroa.5.sroa.24.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.25.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i8 %.sroa.0.0.i, ptr %.sroa.5.sroa.25.0..sroa.5.0..sroa_idx.sroa_idx, align 16
  %.sroa.5.sroa.26.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 305
  store i8 %i.aj, ptr %.sroa.5.sroa.26.0..sroa.5.0..sroa_idx.sroa_idx, align 1
  %.sroa.5.sroa.27.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 306
  store i16 %spec.select.i.i.i, ptr %.sroa.5.sroa.27.0..sroa.5.0..sroa_idx.sroa_idx, align 2
  %.sroa.5.sroa.28.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i8 %i.cw, ptr %.sroa.5.sroa.28.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.sroa.29.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 309
  store i8 %i.bx, ptr %.sroa.5.sroa.29.0..sroa.5.0..sroa_idx.sroa_idx, align 1
  %.sroa.5.sroa.30.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 310
  store i8 %.sroa.099.0.i, ptr %.sroa.5.sroa.30.0..sroa.5.0..sroa_idx.sroa_idx, align 2
  %.sroa.5.sroa.31.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 311
  store i8 %i.co, ptr %.sroa.5.sroa.31.0..sroa.5.0..sroa_idx.sroa_idx, align 1
  %.sroa.5.sroa.32.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 %i.cu, ptr %.sroa.5.sroa.32.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.33.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 313
  store i8 %i.da, ptr %.sroa.5.sroa.33.0..sroa.5.0..sroa_idx.sroa_idx, align 1
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.b, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE12file_has_md5Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(320) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load i64, ptr %i.c, align 16, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not.not.not.i.not.not.not1.not = icmp eq i64 %i.d, 0
  br i1 %.not.not.not.i.not.not.not1.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsa_BS_INtBS_17LineProgramHeaderINtNtBU_12endian_slice11EndianSliceNtNtBW_9endianity13RunTimeEndianEjE12file_has_md50ECs8GyQQEoxZtT_7convert.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.f = phi ptr [ %i.h, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %.val.i = load i16, ptr %i.f, align 2, !noalias !451, !noundef !5
  %i.g = icmp eq i16 %.val.i, 5                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.h, %i.e
  %or.cond = select i1 %i.g, i1 true, i1 %.not.not.not.i.not.not.not.not
  br i1 %or.cond, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsa_BS_INtBS_17LineProgramHeaderINtNtBU_12endian_slice11EndianSliceNtNtBW_9endianity13RunTimeEndianEjE12file_has_md50ECs8GyQQEoxZtT_7convert.exit, label %.lr.ph

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsa_BS_INtBS_17LineProgramHeaderINtNtBU_12endian_slice11EndianSliceNtNtBW_9endianity13RunTimeEndianEjE12file_has_md50ECs8GyQQEoxZtT_7convert.exit: ; preds = %.lr.ph, %bb.a
  %.not.not.not.i.not.not.not.lcssa = phi i1 [ false, %bb.a ], [ %i.g, %.lr.ph ]
  ret i1 %.not.not.not.i.not.not.not.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE13file_has_sizeCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(320) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 306
  %i.b = load i16, ptr %i.a, align 2, !noundef !5
  %i.c = icmp ult i16 %i.b, 5
  br i1 %i.c, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsa_BS_INtBS_17LineProgramHeaderINtNtBU_12endian_slice11EndianSliceNtNtBW_9endianity13RunTimeEndianEjE13file_has_size0ECs8GyQQEoxZtT_7convert.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = load i64, ptr %i.f, align 16, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.g, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not.not.not.i.not.not1 = icmp eq i64 %i.g, 0
  br i1 %.not.not.not.i.not.not1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsa_BS_INtBS_17LineProgramHeaderINtNtBU_12endian_slice11EndianSliceNtNtBW_9endianity13RunTimeEndianEjE13file_has_size0ECs8GyQQEoxZtT_7convert.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.b
  %i.i = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %.val.i = load i16, ptr %i.i, align 2, !noalias !454, !noundef !5
  %i.j = icmp eq i16 %.val.i, 4                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %.not.not.not.i.not.not = icmp eq ptr %i.k, %i.h
  %or.cond = select i1 %i.j, i1 true, i1 %.not.not.not.i.not.not
  br i1 %or.cond, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsa_BS_INtBS_17LineProgramHeaderINtNtBU_12endian_slice11EndianSliceNtNtBW_9endianity13RunTimeEndianEjE13file_has_size0ECs8GyQQEoxZtT_7convert.exit, label %.lr.ph

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsa_BS_INtBS_17LineProgramHeaderINtNtBU_12endian_slice11EndianSliceNtNtBW_9endianity13RunTimeEndianEjE13file_has_size0ECs8GyQQEoxZtT_7convert.exit: ; preds = %.lr.ph, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.j, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE15file_has_sourceCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(320) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load i64, ptr %i.c, align 16, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not.not.not.i.not.not.not1.not = icmp eq i64 %i.d, 0
  br i1 %.not.not.not.i.not.not.not1.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsa_BS_INtBS_17LineProgramHeaderINtNtBU_12endian_slice11EndianSliceNtNtBW_9endianity13RunTimeEndianEjE15file_has_source0ECs8GyQQEoxZtT_7convert.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.f = phi ptr [ %i.h, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %.val.i = load i16, ptr %i.f, align 2, !noalias !457, !noundef !5
  %i.g = icmp eq i16 %.val.i, 8193                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.h, %i.e
  %or.cond = select i1 %i.g, i1 true, i1 %.not.not.not.i.not.not.not.not
  br i1 %or.cond, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsa_BS_INtBS_17LineProgramHeaderINtNtBU_12endian_slice11EndianSliceNtNtBW_9endianity13RunTimeEndianEjE15file_has_source0ECs8GyQQEoxZtT_7convert.exit, label %.lr.ph

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsa_BS_INtBS_17LineProgramHeaderINtNtBU_12endian_slice11EndianSliceNtNtBW_9endianity13RunTimeEndianEjE15file_has_source0ECs8GyQQEoxZtT_7convert.exit: ; preds = %.lr.ph, %bb.a
  %.not.not.not.i.not.not.not.lcssa = phi i1 [ false, %bb.a ], [ %i.g, %.lr.ph ]
  ret i1 %.not.not.not.i.not.not.not.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE18file_has_timestampCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(320) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 306
  %i.b = load i16, ptr %i.a, align 2, !noundef !5
  %i.c = icmp ult i16 %i.b, 5
  br i1 %i.c, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsa_BS_INtBS_17LineProgramHeaderINtNtBU_12endian_slice11EndianSliceNtNtBW_9endianity13RunTimeEndianEjE18file_has_timestamp0ECs8GyQQEoxZtT_7convert.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = load i64, ptr %i.f, align 16, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.g, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not.not.not.i.not.not1 = icmp eq i64 %i.g, 0
  br i1 %.not.not.not.i.not.not1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsa_BS_INtBS_17LineProgramHeaderINtNtBU_12endian_slice11EndianSliceNtNtBW_9endianity13RunTimeEndianEjE18file_has_timestamp0ECs8GyQQEoxZtT_7convert.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.b
  %i.i = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %.val.i = load i16, ptr %i.i, align 2, !noalias !460, !noundef !5
  %i.j = icmp eq i16 %.val.i, 3                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %.not.not.not.i.not.not = icmp eq ptr %i.k, %i.h
  %or.cond = select i1 %i.j, i1 true, i1 %.not.not.not.i.not.not
  br i1 %or.cond, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsa_BS_INtBS_17LineProgramHeaderINtNtBU_12endian_slice11EndianSliceNtNtBW_9endianity13RunTimeEndianEjE18file_has_timestamp0ECs8GyQQEoxZtT_7convert.exit, label %.lr.ph

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsa_BS_INtBS_17LineProgramHeaderINtNtBU_12endian_slice11EndianSliceNtNtBW_9endianity13RunTimeEndianEjE18file_has_timestamp0ECs8GyQQEoxZtT_7convert.exit: ; preds = %.lr.ph, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.j, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE9directoryCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(320) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 306
  %i.b = load i16, ptr %i.a, align 2, !noundef !5
  %i.c = icmp ult i16 %i.b, 5
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %i.f = icmp ult i64 %2, %i.e
  br i1 %i.f, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 16
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.i = load ptr, ptr %i.h, align 16, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %2
  tail call fastcc void @_RNvXsM_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.j) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.d, %bb.e
  ret void

bb.g:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.l = load i8, ptr %i.k, align 16, !range !14, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.l, 2
  br i1 %.not, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.m = add i64 %2, -1                           ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.o = load i64, ptr %i.n, align 8, !noundef !5
  %i.p = icmp ult i64 %i.m, %i.o
  br i1 %i.p, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.r = load ptr, ptr %i.q, align 16, !alias.scope !464, !noalias !465, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !464, !noalias !465, !noundef !5
  store i64 32, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.t, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 16
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.l, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.g
  store i64 -1, ptr %0, align 16
  br label %bb.f

bb.k:                                             ; preds = %bb.h
  store i64 -1, ptr %0, align 16
  br label %bb.f

bb.l:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.v = load ptr, ptr %i.u, align 16, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.m
  tail call fastcc void @_RNvXsM_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.w) #23
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsd_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_9FileEntryINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE5parseCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(112) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader12read_uleb128Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.d = load i8, ptr %i.c, align 8, !range !10, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.440.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.437.0..sroa_idx, i64 7, i1 false)
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.538.0.copyload = load i64, ptr %.sroa.538.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.d, ptr %i.e, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.538.0.copyload, ptr %.sroa.541.0..sroa_idx, align 16
  store i64 -1, ptr %0, align 16
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader12read_uleb128Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.h = load i8, ptr %i.b, align 8, !range !10, !noundef !5 ; 2 uses
  %.not60 = icmp eq i8 %i.h, -1
  br i1 %.not60, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.449.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.446.0..sroa_idx, i64 7, i1 false)
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.547.0.copyload = load i64, ptr %.sroa.547.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.h, ptr %i.i, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.547.0.copyload, ptr %.sroa.550.0..sroa_idx, align 16
  store i64 -1, ptr %0, align 16
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader12read_uleb128Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.l = load i8, ptr %i.a, align 8, !range !10, !noundef !5 ; 2 uses
  %.not61 = icmp eq i8 %i.l, -1
  %.sroa.027.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not61, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.458.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.455.0..sroa_idx, i64 7, i1 false)
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.556.0.copyload = load i64, ptr %.sroa.556.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 %i.l, ptr %.sroa.027.sroa.4.0..sroa_idx, align 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.556.0.copyload, ptr %.sroa.559.0..sroa_idx, align 16
  store i64 -1, ptr %0, align 16
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.027.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.027.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 32, ptr %0, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.027.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.027.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %.sroa.027.sroa.5.0..sroa_idx, align 16
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.g, ptr %.sroa.628.0..sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.k, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.n, ptr %.sroa.8.0..sroa_idx, align 16
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.d, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs9Jn0q30Ea0B_6object4read4coff4fileINtB5_8CoffFileRShNtNtBb_2pe22AnonObjectHeaderBigobjENtNtB9_6traits6Object21section_by_name_bytesCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.f, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !476
  call void @_RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read4coff7sectionINtB5_19CoffSectionIteratorRShNtNtBb_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d), !noalias !477
  %i.k = load ptr, ptr %i.c, align 8, !noalias !476, !noundef !5 ; 2 uses
  %.not19.i = icmp eq ptr %i.k, null
  br i1 %.not19.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.n = phi ptr [ %i.k, %.lr.ph.i ], [ %i.t, %bb.c ] ; 2 uses
  %.sroa.59.0.copyload.i = load ptr, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !476, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !478
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !479
  call void @_RINvMs8_NtNtNtCs9Jn0q30Ea0B_6object4read4coff7sectionNtNtBc_2pe18ImageSectionHeader4nameRShECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(40) %.sroa.59.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a), !noalias !479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !478
  call void @llvm.experimental.noalias.scope.decl(metadata !480)
  %i.p = load i64, ptr %i.b, align 8, !range !9, !alias.scope !480, !noalias !481, !noundef !5
  %i.q = icmp eq i64 %i.p, 0
  %.val2.i.i.i.i = load i64, ptr %i.l, align 8, !noalias !478
  %i.r = icmp eq i64 %.val2.i.i.i.i, %3
  %or.cond.i.i.i = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond.i.i.i, label %_RNCNvXs0_NtNtNtCs9Jn0q30Ea0B_6object4read4coff4fileINtB7_8CoffFileRShNtNtBd_2pe22AnonObjectHeaderBigobjENtNtBb_6traits6Object21section_by_name_bytes0Cs8GyQQEoxZtT_7convert.exit.i.i, label %_RNCNvXs0_NtNtNtCs9Jn0q30Ea0B_6object4read4coff4fileINtB7_8CoffFileRShNtNtBd_2pe22AnonObjectHeaderBigobjENtNtBb_6traits6Object21section_by_name_bytes0Cs8GyQQEoxZtT_7convert.exit.thread.i.i

_RNCNvXs0_NtNtNtCs9Jn0q30Ea0B_6object4read4coff4fileINtB7_8CoffFileRShNtNtBd_2pe22AnonObjectHeaderBigobjENtNtBb_6traits6Object21section_by_name_bytes0Cs8GyQQEoxZtT_7convert.exit.thread.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !478
  br label %bb.c

_RNCNvXs0_NtNtNtCs9Jn0q30Ea0B_6object4read4coff4fileINtB7_8CoffFileRShNtNtBd_2pe22AnonObjectHeaderBigobjENtNtBb_6traits6Object21section_by_name_bytes0Cs8GyQQEoxZtT_7convert.exit.i.i: ; preds = %bb.b
  %.val5.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !480, !noalias !481, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val5.i.i.i.i, ptr nonnull readonly %2, i64 %3), !noalias !482
  %i.s = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !478
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNCNvXs0_NtNtNtCs9Jn0q30Ea0B_6object4read4coff4fileINtB7_8CoffFileRShNtNtBd_2pe22AnonObjectHeaderBigobjENtNtBb_6traits6Object21section_by_name_bytes0Cs8GyQQEoxZtT_7convert.exit.i.i, %_RNCNvXs0_NtNtNtCs9Jn0q30Ea0B_6object4read4coff4fileINtB7_8CoffFileRShNtNtBd_2pe22AnonObjectHeaderBigobjENtNtBb_6traits6Object21section_by_name_bytes0Cs8GyQQEoxZtT_7convert.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !476
  call void @_RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read4coff7sectionINtB5_19CoffSectionIteratorRShNtNtBb_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d), !noalias !477
  %i.t = load ptr, ptr %i.c, align 8, !noalias !476, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %.loopexit, label %bb.b

bb.d:                                             ; preds = %_RNCNvXs0_NtNtNtCs9Jn0q30Ea0B_6object4read4coff4fileINtB7_8CoffFileRShNtNtBd_2pe22AnonObjectHeaderBigobjENtNtBb_6traits6Object21section_by_name_bytes0Cs8GyQQEoxZtT_7convert.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !476
  store ptr %i.n, ptr %0, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.59.0.copyload.i, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.5.0..sroa_idx4, align 8
  br label %bb.e

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !476
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs9Jn0q30Ea0B_6object4read4coff4fileNtB5_8CoffFileNtNtB9_6traits6Object21section_by_name_bytesCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
end_hunk_0
