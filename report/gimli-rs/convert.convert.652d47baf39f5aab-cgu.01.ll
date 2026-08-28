Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/convert.convert.652d47baf39f5aab-cgu.01?download=true
inline.NumInlined: 222
inline.NumDeleted: 67
begin_hunk_0_@_RINvNtNtCsi68uqYEhoRA_5gimli4read4unit15skip_attributesINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert:bb.a
  store i64 %i.bg, ptr %i.i, align 8, !alias.scope !15, !noalias !18
  %i.bi = zext i8 %i.bh to i64
  br label %bb.g

bb.k:                                             ; preds = %.loopexit412
  %.sroa.4216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.4152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4152.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4216.0..sroa_idx, i64 7, i1 false)
  %.sroa.5217.0.copyload = load i64, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i8 %i.ba, ptr %0, align 8
  %.sroa.5153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5217.0.copyload, ptr %.sroa.5153.0..sroa_idx, align 8
  br label %bb.t

bb.l:                                             ; preds = %.loopexit412
  %i.bj = load i64, ptr %i.m, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.g

bb.m:                                             ; preds = %.loopexit413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.082, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.082, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.082)
  br label %bb.t

bb.n:                                             ; preds = %.loopexit413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.082)
  br label %bb.g

bb.o:                                             ; preds = %.loopexit414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.t

bb.p:                                             ; preds = %.loopexit414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.q:                                             ; preds = %._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !65, !noalias !68, !noundef !5 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %.sroa.0.2
  %i.bn = load ptr, ptr %1, align 8, !alias.scope !65, !noalias !68, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.bm, label %bb.r, label %bb.s

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge, %bb.s
  store i8 -1, ptr %0, align 8
  br label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bo = ptrtoint ptr %i.bn to i64
  store i8 17, ptr %0, align 8
  %.sroa.5232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bo, ptr %.sroa.5232.0..sroa_idx, align 8
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bp = sub nuw i64 %i.bl, %.sroa.0.2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sroa.0.2
  store ptr %i.bq, ptr %1, align 8, !alias.scope !65, !noalias !68, !captures !11
  store i64 %i.bp, ptr %i.bk, align 8, !alias.scope !65, !noalias !68
  br label %._crit_edge.thread

bb.t:                                             ; preds = %bb.r, %bb.o, %bb.m, %bb.k, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader8read_u32Cs8GyQQEoxZtT_7convert.exit.thread, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader8read_u16Cs8GyQQEoxZtT_7convert.exit.thread, %bb.i, %.loopexit415, %.loopexit408, %.loopexit416, %._crit_edge.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read4unit10DebugTypesINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEINtB8_7SectionBQ_E4loadQNCNCNvCs8GyQQEoxZtT_7convert4mains2_00INtNtBV_5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEB1Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNCNvCs8GyQQEoxZtT_7convert4mains2_00INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBU_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i8 noundef 24)
  %i.b = load i64, ptr %i.a, align 8, !range !70, !noundef !5
  %i.c = icmp eq i64 %i.b, -2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8
  store <2 x ptr> %i.f, ptr %i.e, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read4unit10DebugTypesINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEINtB8_7SectionBQ_E4loadQNCNvCs8GyQQEoxZtT_7convert4mains0_0INtNtBV_5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEB1W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCs8GyQQEoxZtT_7convert4mains0_0INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBS_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i8 noundef 24)
  %i.b = load i64, ptr %i.a, align 8, !range !70, !noundef !5
  %i.c = icmp eq i64 %i.b, -2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8
  store <2 x ptr> %i.f, ptr %i.e, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read4unit9DebugInfoINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEINtB8_7SectionBO_E4loadQNCNCNvCs8GyQQEoxZtT_7convert4mains2_00INtNtBT_5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEB1W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNCNvCs8GyQQEoxZtT_7convert4mains2_00INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBU_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i8 noundef 9)
  %i.b = load i64, ptr %i.a, align 8, !range !70, !noundef !5
  %i.c = icmp eq i64 %i.b, -2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8
  store <2 x ptr> %i.f, ptr %i.e, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read4unit9DebugInfoINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEINtB8_7SectionBO_E4loadQNCNvCs8GyQQEoxZtT_7convert4mains0_0INtNtBT_5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEB1U_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCs8GyQQEoxZtT_7convert4mains0_0INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBS_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i8 noundef 9)
  %i.b = load i64, ptr %i.a, align 8, !range !70, !noundef !5
  %i.c = icmp eq i64 %i.b, -2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8
  store <2 x ptr> %i.f, ptr %i.e, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs3_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_9DebugInfoINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE5unitsCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 25)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !alias.scope !71, !noalias !74, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !71, !noalias !74, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load i8, ptr %i.d, align 8, !range !40, !alias.scope !71, !noalias !74, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.val.i, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs7_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_24DebugInfoUnitHeadersIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE4nextCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 19 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %.val = load i64, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %i.p = icmp eq i64 %.val, 0
  br i1 %i.p, label %bb.ao, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load i64, ptr %1, align 8, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !79
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader19read_initial_lengthCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
  %i.r = load i64, ptr %i.m, align 8, !range !81, !noalias !79, !noundef !5
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.0229.0.copyload.i = load i64, ptr %i.t, align 8, !noalias !79 ; 7 uses
  %.sroa.4230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.4230.0.copyload.i = load i8, ptr %.sroa.4230.0..sroa_idx.i, align 8, !noalias !79 ; 6 uses
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.5231.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 17
  %.sroa.55.sroa.20.sroa.0.0.copyload = load i56, ptr %.sroa.5231.0..sroa_idx.i, align 1, !noalias !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !79
  br label %bb.ap

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !79
  %i.u = load i64, ptr %i.o, align 8, !alias.scope !82, !noalias !87, !noundef !5 ; 2 uses
  %i.v = icmp ult i64 %i.u, %.sroa.0229.0.copyload.i
  %i.w = load ptr, ptr %i.n, align 8, !alias.scope !82, !noalias !87, !nonnull !5, !noundef !5 ; 5 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %.sroa.55.sroa.0.0.extract.trunc33 = trunc i64 %i.x to i8
  %.sroa.55.sroa.20.0.extract.shift64 = lshr i64 %i.x, 8
  %.sroa.55.sroa.20.0.extract.trunc65 = trunc nuw i64 %.sroa.55.sroa.20.0.extract.shift64 to i56
  br label %bb.an

bb.f:                                             ; preds = %bb.d
  %i.y = sub nuw i64 %i.u, %.sroa.0229.0.copyload.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0229.0.copyload.i
  store ptr %i.z, ptr %i.n, align 8, !alias.scope !82, !noalias !87, !captures !11
  store i64 %i.y, ptr %i.o, align 8, !alias.scope !82, !noalias !87
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i8, ptr %i.aa, align 8, !range !40, !alias.scope !90, !noalias !91, !noundef !5 ; 2 uses
  %.sroa.011.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i8 %i.ab, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !79
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98
  %i.ac = tail call noundef i16 @_RNvXs13_NtCskKLDkoKarTP_4core5arrayAhj2_NtNtB8_7default7Default7defaultCs8GyQQEoxZtT_7convert(), !noalias !101
  store i16 %i.ac, ptr %i.a, align 2, !noalias !98
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.ad = icmp ugt i64 %.sroa.0229.0.copyload.i, 1
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = ptrtoint ptr %i.w to i64                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98
  %.sroa.55.sroa.0.0.extract.trunc21 = trunc i64 %i.ae to i8
  %.sroa.55.sroa.20.0.extract.shift40 = lshr i64 %i.ae, 8
  %.sroa.55.sroa.20.0.extract.trunc41 = trunc nuw i64 %.sroa.55.sroa.20.0.extract.shift40 to i56
  br label %bb.an

bb.h:                                             ; preds = %bb.f
  %i.af = add i64 %.sroa.0229.0.copyload.i, -2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store ptr %i.ag, ptr %i.l, align 8, !alias.scope !105, !noalias !108, !captures !11
  store i64 %i.af, ptr %.sroa.011.sroa.4.0..sroa_idx.i, align 8, !alias.scope !105, !noalias !108
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.a, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1), !noalias !112
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.a, align 2, !noalias !98 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98
  %i.ah = trunc nuw i8 %i.ab to i1
  %i.ai = call i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i)
  %spec.select.i.i.i = select i1 %i.ah, i16 %i.ai, i16 %.sroa.0.0.copyload.i.i.i ; 5 uses
  %i.aj = add i16 %spec.select.i.i.i, -2
  %or.cond.i = icmp ult i16 %i.aj, 3
  br i1 %or.cond.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp eq i16 %spec.select.i.i.i, 5
  br i1 %i.ak, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !79
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader9read_wordCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i8 noundef range(i8 4, 9) %.sroa.4230.0.copyload.i)
  %i.al = load i8, ptr %i.k, align 8, !range !12, !noalias !79, !noundef !5 ; 2 uses
  %.not385.i = icmp eq i8 %i.al, -1
  br i1 %.not385.i, label %bb.ag, label %bb.af

bb.k:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.am = load i64, ptr %.sroa.011.sroa.4.0..sroa_idx.i, align 8, !alias.scope !113, !noalias !116, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i64 %i.am, 0
  %i.an = load ptr, ptr %i.l, align 8, !alias.scope !113, !noalias !116, !nonnull !5, !noundef !5 ; 3 uses
  br i1 %.not.i.i, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.i
  %.sroa.55.sroa.0.0.extract.trunc22 = trunc i16 %spec.select.i.i.i to i8
  %i.ao = lshr i16 %spec.select.i.i.i, 8
  %.sroa.55.sroa.20.0.extract.trunc43 = zext nneg i16 %i.ao to i56
  br label %bb.an

bb.m:                                             ; preds = %bb.k
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %.sroa.55.sroa.0.0.extract.trunc31 = trunc i64 %i.ap to i8
  %.sroa.55.sroa.20.0.extract.shift60 = lshr i64 %i.ap, 8
  %.sroa.55.sroa.20.0.extract.trunc61 = trunc nuw i64 %.sroa.55.sroa.20.0.extract.shift60 to i56
  br label %bb.an

bb.n:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ar = add i64 %i.am, -1
  %i.as = load i8, ptr %i.an, align 1, !noalias !118, !noundef !5 ; 2 uses
  store ptr %i.aq, ptr %i.l, align 8, !alias.scope !113, !noalias !116, !captures !11
  store i64 %i.ar, ptr %.sroa.011.sroa.4.0..sroa_idx.i, align 8, !alias.scope !113, !noalias !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !79
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader17read_address_sizeCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  %i.at = load i8, ptr %i.i, align 8, !range !12, !noalias !79, !noundef !5 ; 2 uses
  %.not377.i = icmp eq i8 %i.at, -1
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.av = load i8, ptr %i.au, align 1, !noalias !79 ; 7 uses
  br i1 %.not377.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.5288.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %.sroa.21.sroa.0.2.copyload = load i48, ptr %.sroa.5288.0..sroa_idx.i, align 2, !noalias !76
  %.sroa.21.sroa.0.2.insert.ext = zext i48 %.sroa.21.sroa.0.2.copyload to i64
  %.sroa.21.sroa.0.2.insert.shift = shl nuw i64 %.sroa.21.sroa.0.2.insert.ext, 16
  %.sroa.55.10..sroa.5288.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.55.10.copyload = load i64, ptr %.sroa.55.10..sroa.5288.0..sroa_idx.i.sroa_idx, align 8, !noalias !76 ; 2 uses
  %.sroa.55.sroa.0.0.extract.trunc = trunc i64 %.sroa.55.10.copyload to i8
  %.sroa.55.sroa.20.0.extract.shift = lshr i64 %.sroa.55.10.copyload, 8
  %.sroa.55.sroa.20.0.extract.trunc = trunc nuw i64 %.sroa.55.sroa.20.0.extract.shift to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !79
  %.sroa.21.sroa.0.0.insert.ext = zext nneg i8 %i.at to i64
  %.sroa.21.sroa.0.1.insert.ext = zext i8 %i.av to i64
  %.sroa.21.sroa.0.1.insert.shift = shl nuw nsw i64 %.sroa.21.sroa.0.1.insert.ext, 8
  %.sroa.21.sroa.0.0.insert.insert72 = or disjoint i64 %.sroa.21.sroa.0.1.insert.shift, %.sroa.21.sroa.0.0.insert.ext
  %.sroa.21.sroa.0.1.insert.insert118 = or disjoint i64 %.sroa.21.sroa.0.0.insert.insert72, %.sroa.21.sroa.0.2.insert.shift
  br label %bb.an

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !79
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader9read_wordCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i8 noundef range(i8 4, 9) %.sroa.4230.0.copyload.i)
  %i.aw = load i8, ptr %i.h, align 8, !range !12, !noalias !79, !noundef !5 ; 2 uses
  %.not378.i = icmp eq i8 %i.aw, -1
  br i1 %.not378.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.4293.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.21.sroa.0.1.copyload = load i56, ptr %.sroa.4293.0..sroa_idx.i, align 1, !noalias !76
  %.sroa.21.sroa.0.1.insert.ext130 = zext i56 %.sroa.21.sroa.0.1.copyload to i64
  %.sroa.21.sroa.0.1.insert.shift131 = shl nuw i64 %.sroa.21.sroa.0.1.insert.ext130, 8
  %.sroa.21.sroa.36.1..sroa.4293.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5294.0.copyload.i = load i64, ptr %.sroa.21.sroa.36.1..sroa.4293.0..sroa_idx.i.sroa_idx, align 8, !noalias !79 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !79
  %.sroa.21.sroa.0.0.insert.ext74 = zext nneg i8 %i.aw to i64
  %.sroa.21.sroa.0.0.insert.insert76 = or disjoint i64 %.sroa.21.sroa.0.1.insert.shift131, %.sroa.21.sroa.0.0.insert.ext74
  %.sroa.55.sroa.0.0.extract.trunc23 = trunc i64 %.sroa.5294.0.copyload.i to i8
  %.sroa.55.sroa.20.0.extract.shift44 = lshr i64 %.sroa.5294.0.copyload.i, 8
  %.sroa.55.sroa.20.0.extract.trunc45 = trunc nuw i64 %.sroa.55.sroa.20.0.extract.shift44 to i56
  br label %bb.an

bb.r:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !79, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !79
  switch i8 %i.as, label %2 [
    i8 1, label %bb.aq
    i8 2, label %bb.s
    i8 3, label %bb.t
    i8 4, label %bb.u
    i8 5, label %bb.v
    i8 6, label %bb.w
  ]

2:                                                ; preds = %bb.r
  %.sroa.21.sroa.0.1.insert.ext120 = zext i8 %i.as to i64
  %.sroa.21.sroa.0.1.insert.shift121 = shl nuw nsw i64 %.sroa.21.sroa.0.1.insert.ext120, 8
  %.sroa.21.sroa.0.1.insert.insert123 = or disjoint i64 %.sroa.21.sroa.0.1.insert.shift121, 60
  br label %bb.an

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !79
  call fastcc void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader8read_u64Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #16
  %i.az = load i8, ptr %i.g, align 8, !range !12, !noalias !79, !noundef !5 ; 2 uses
  %.not383.i = icmp eq i8 %i.az, -1
  br i1 %.not383.i, label %bb.ak, label %bb.aj

bb.t:                                             ; preds = %bb.r
  br label %bb.aq

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !79
  call fastcc void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader8read_u64Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #16
  %i.ba = load i8, ptr %i.e, align 8, !range !12, !noalias !79, !noundef !5 ; 2 uses
  %.not382.i = icmp eq i8 %i.ba, -1
  br i1 %.not382.i, label %bb.y, label %bb.x

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !79
  call fastcc void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader8read_u64Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #16
  %i.bb = load i8, ptr %i.d, align 8, !range !12, !noalias !79, !noundef !5 ; 2 uses
  %.not381.i = icmp eq i8 %i.bb, -1
  br i1 %.not381.i, label %bb.aa, label %bb.z

bb.w:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !79
  call fastcc void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader8read_u64Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #16
  %i.bc = load i8, ptr %i.c, align 8, !range !12, !noalias !79, !noundef !5 ; 2 uses
  %.not379.i = icmp eq i8 %i.bc, -1
  br i1 %.not379.i, label %bb.ac, label %bb.ab

bb.x:                                             ; preds = %bb.u
  %.sroa.4329.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.21.sroa.0.1.copyload152 = load i56, ptr %.sroa.4329.0..sroa_idx.i, align 1, !noalias !76
  %.sroa.21.sroa.0.1.insert.ext154 = zext i56 %.sroa.21.sroa.0.1.copyload152 to i64
  %.sroa.21.sroa.0.1.insert.shift155 = shl nuw i64 %.sroa.21.sroa.0.1.insert.ext154, 8
  %.sroa.21.sroa.36.1..sroa.4329.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5330.0.copyload.i = load i64, ptr %.sroa.21.sroa.36.1..sroa.4329.0..sroa_idx.i.sroa_idx, align 8, !noalias !79 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !79
  %.sroa.21.sroa.0.0.insert.ext90 = zext nneg i8 %i.ba to i64
  %.sroa.21.sroa.0.0.insert.insert92 = or disjoint i64 %.sroa.21.sroa.0.1.insert.shift155, %.sroa.21.sroa.0.0.insert.ext90
  %.sroa.55.sroa.0.0.extract.trunc28 = trunc i64 %.sroa.5330.0.copyload.i to i8
  %.sroa.55.sroa.20.0.extract.shift54 = lshr i64 %.sroa.5330.0.copyload.i, 8
  %.sroa.55.sroa.20.0.extract.trunc55 = trunc nuw i64 %.sroa.55.sroa.20.0.extract.shift54 to i56
  br label %bb.an

bb.y:                                             ; preds = %bb.u
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !noalias !79, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !79
  br label %bb.aq

bb.z:                                             ; preds = %bb.v
  %.sroa.4341.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.21.sroa.0.1.copyload146 = load i56, ptr %.sroa.4341.0..sroa_idx.i, align 1, !noalias !76
  %.sroa.21.sroa.0.1.insert.ext148 = zext i56 %.sroa.21.sroa.0.1.copyload146 to i64
  %.sroa.21.sroa.0.1.insert.shift149 = shl nuw i64 %.sroa.21.sroa.0.1.insert.ext148, 8
  %.sroa.21.sroa.36.1..sroa.4341.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5342.0.copyload.i = load i64, ptr %.sroa.21.sroa.36.1..sroa.4341.0..sroa_idx.i.sroa_idx, align 8, !noalias !79 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !79
  %.sroa.21.sroa.0.0.insert.ext86 = zext nneg i8 %i.bb to i64
  %.sroa.21.sroa.0.0.insert.insert88 = or disjoint i64 %.sroa.21.sroa.0.1.insert.shift149, %.sroa.21.sroa.0.0.insert.ext86
  %.sroa.55.sroa.0.0.extract.trunc27 = trunc i64 %.sroa.5342.0.copyload.i to i8
  %.sroa.55.sroa.20.0.extract.shift52 = lshr i64 %.sroa.5342.0.copyload.i, 8
  %.sroa.55.sroa.20.0.extract.trunc53 = trunc nuw i64 %.sroa.55.sroa.20.0.extract.shift52 to i56
  br label %bb.an

bb.aa:                                            ; preds = %bb.v
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !79, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !79
  br label %bb.aq

bb.ab:                                            ; preds = %bb.w
  %.sroa.4353.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.21.sroa.0.1.copyload134 = load i56, ptr %.sroa.4353.0..sroa_idx.i, align 1, !noalias !76
  %.sroa.21.sroa.0.1.insert.ext136 = zext i56 %.sroa.21.sroa.0.1.copyload134 to i64
  %.sroa.21.sroa.0.1.insert.shift137 = shl nuw i64 %.sroa.21.sroa.0.1.insert.ext136, 8
  %.sroa.21.sroa.36.1..sroa.4353.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5354.0.copyload.i = load i64, ptr %.sroa.21.sroa.36.1..sroa.4353.0..sroa_idx.i.sroa_idx, align 8, !noalias !79 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !79
  %.sroa.21.sroa.0.0.insert.ext78 = zext nneg i8 %i.bc to i64
  %.sroa.21.sroa.0.0.insert.insert80 = or disjoint i64 %.sroa.21.sroa.0.1.insert.shift137, %.sroa.21.sroa.0.0.insert.ext78
  %.sroa.55.sroa.0.0.extract.trunc24 = trunc i64 %.sroa.5354.0.copyload.i to i8
  %.sroa.55.sroa.20.0.extract.shift46 = lshr i64 %.sroa.5354.0.copyload.i, 8
  %.sroa.55.sroa.20.0.extract.trunc47 = trunc nuw i64 %.sroa.55.sroa.20.0.extract.shift46 to i56
  br label %bb.an

bb.ac:                                            ; preds = %bb.w
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !79, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !79
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader9read_wordCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i8 noundef range(i8 4, 9) %.sroa.4230.0.copyload.i)
  %i.bj = load i8, ptr %i.b, align 8, !range !12, !noalias !79, !noundef !5 ; 2 uses
  %.not380.i = icmp eq i8 %i.bj, -1
  br i1 %.not380.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.4365.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.21.sroa.0.1.copyload140 = load i56, ptr %.sroa.4365.0..sroa_idx.i, align 1, !noalias !76
  %.sroa.21.sroa.0.1.insert.ext142 = zext i56 %.sroa.21.sroa.0.1.copyload140 to i64
  %.sroa.21.sroa.0.1.insert.shift143 = shl nuw i64 %.sroa.21.sroa.0.1.insert.ext142, 8
  %.sroa.21.sroa.36.1..sroa.4365.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5366.0.copyload.i = load i64, ptr %.sroa.21.sroa.36.1..sroa.4365.0..sroa_idx.i.sroa_idx, align 8, !noalias !79 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79
  %.sroa.21.sroa.0.0.insert.ext82 = zext nneg i8 %i.bj to i64
  %.sroa.21.sroa.0.0.insert.insert84 = or disjoint i64 %.sroa.21.sroa.0.1.insert.shift143, %.sroa.21.sroa.0.0.insert.ext82
  %.sroa.55.sroa.0.0.extract.trunc25 = trunc i64 %.sroa.5366.0.copyload.i to i8
  %.sroa.55.sroa.20.0.extract.shift48 = lshr i64 %.sroa.5366.0.copyload.i, 8
  %.sroa.55.sroa.20.0.extract.trunc49 = trunc nuw i64 %.sroa.55.sroa.20.0.extract.shift48 to i56
  br label %bb.an

bb.ae:                                            ; preds = %bb.ac
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !79, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79
  br label %bb.aq

bb.af:                                            ; preds = %bb.j
  %.sroa.4251.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.21.sroa.0.1.copyload170 = load i56, ptr %.sroa.4251.0..sroa_idx.i, align 1, !noalias !76
  %.sroa.21.sroa.0.1.insert.ext172 = zext i56 %.sroa.21.sroa.0.1.copyload170 to i64
  %.sroa.21.sroa.0.1.insert.shift173 = shl nuw i64 %.sroa.21.sroa.0.1.insert.ext172, 8
  %.sroa.21.sroa.36.1..sroa.4251.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5252.0.copyload.i = load i64, ptr %.sroa.21.sroa.36.1..sroa.4251.0..sroa_idx.i.sroa_idx, align 8, !noalias !79 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !79
  %.sroa.21.sroa.0.0.insert.ext108 = zext nneg i8 %i.al to i64
  %.sroa.21.sroa.0.0.insert.insert110 = or disjoint i64 %.sroa.21.sroa.0.1.insert.shift173, %.sroa.21.sroa.0.0.insert.ext108
  %.sroa.55.sroa.0.0.extract.trunc32 = trunc i64 %.sroa.5252.0.copyload.i to i8
  %.sroa.55.sroa.20.0.extract.shift62 = lshr i64 %.sroa.5252.0.copyload.i, 8
  %.sroa.55.sroa.20.0.extract.trunc63 = trunc nuw i64 %.sroa.55.sroa.20.0.extract.shift62 to i56
  br label %bb.an

bb.ag:                                            ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !79, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !79
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader17read_address_sizeCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  %i.bo = load i8, ptr %i.j, align 8, !range !12, !noalias !79, !noundef !5 ; 2 uses
  %.not386.i = icmp eq i8 %i.bo, -1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !79 ; 2 uses
  br i1 %.not386.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.5267.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %.sroa.21.sroa.0.2.copyload179 = load i48, ptr %.sroa.5267.0..sroa_idx.i, align 2, !noalias !76
  %.sroa.21.sroa.0.2.insert.ext181 = zext i48 %.sroa.21.sroa.0.2.copyload179 to i64
  %.sroa.21.sroa.0.2.insert.shift182 = shl nuw i64 %.sroa.21.sroa.0.2.insert.ext181, 16
  %.sroa.55.10..sroa.5267.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.55.10.copyload16 = load i64, ptr %.sroa.55.10..sroa.5267.0..sroa_idx.i.sroa_idx, align 8, !noalias !76 ; 2 uses
  %.sroa.55.sroa.0.0.extract.trunc20 = trunc i64 %.sroa.55.10.copyload16 to i8
  %.sroa.55.sroa.20.0.extract.shift38 = lshr i64 %.sroa.55.10.copyload16, 8
  %.sroa.55.sroa.20.0.extract.trunc39 = trunc nuw i64 %.sroa.55.sroa.20.0.extract.shift38 to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !79
  %.sroa.21.sroa.0.0.insert.ext112 = zext nneg i8 %i.bo to i64
  %.sroa.21.sroa.0.1.insert.ext125 = zext i8 %i.bq to i64
  %.sroa.21.sroa.0.1.insert.shift126 = shl nuw nsw i64 %.sroa.21.sroa.0.1.insert.ext125, 8
  %.sroa.21.sroa.0.0.insert.insert114 = or disjoint i64 %.sroa.21.sroa.0.1.insert.shift126, %.sroa.21.sroa.0.0.insert.ext112
  %.sroa.21.sroa.0.1.insert.insert128 = or disjoint i64 %.sroa.21.sroa.0.0.insert.insert114, %.sroa.21.sroa.0.2.insert.shift182
  br label %bb.an

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !79
  br label %bb.aq

bb.aj:                                            ; preds = %bb.s
  %.sroa.4305.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.21.sroa.0.1.copyload158 = load i56, ptr %.sroa.4305.0..sroa_idx.i, align 1, !noalias !76
  %.sroa.21.sroa.0.1.insert.ext160 = zext i56 %.sroa.21.sroa.0.1.copyload158 to i64
  %.sroa.21.sroa.0.1.insert.shift161 = shl nuw i64 %.sroa.21.sroa.0.1.insert.ext160, 8
  %.sroa.21.sroa.36.1..sroa.4305.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5306.0.copyload.i = load i64, ptr %.sroa.21.sroa.36.1..sroa.4305.0..sroa_idx.i.sroa_idx, align 8, !noalias !79 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !79
  %.sroa.21.sroa.0.0.insert.ext94 = zext nneg i8 %i.az to i64
  %.sroa.21.sroa.0.0.insert.insert96 = or disjoint i64 %.sroa.21.sroa.0.1.insert.shift161, %.sroa.21.sroa.0.0.insert.ext94
  %.sroa.55.sroa.0.0.extract.trunc29 = trunc i64 %.sroa.5306.0.copyload.i to i8
  %.sroa.55.sroa.20.0.extract.shift56 = lshr i64 %.sroa.5306.0.copyload.i, 8
  %.sroa.55.sroa.20.0.extract.trunc57 = trunc nuw i64 %.sroa.55.sroa.20.0.extract.shift56 to i56
  br label %bb.an

bb.ak:                                            ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !noalias !79, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !79
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader9read_wordCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i8 noundef range(i8 4, 9) %.sroa.4230.0.copyload.i)
  %i.bt = load i8, ptr %i.f, align 8, !range !12, !noalias !79, !noundef !5 ; 2 uses
  %.not384.i = icmp eq i8 %i.bt, -1
  br i1 %.not384.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.4317.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.21.sroa.0.1.copyload164 = load i56, ptr %.sroa.4317.0..sroa_idx.i, align 1, !noalias !76
  %.sroa.21.sroa.0.1.insert.ext166 = zext i56 %.sroa.21.sroa.0.1.copyload164 to i64
  %.sroa.21.sroa.0.1.insert.shift167 = shl nuw i64 %.sroa.21.sroa.0.1.insert.ext166, 8
  %.sroa.21.sroa.36.1..sroa.4317.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5318.0.copyload.i = load i64, ptr %.sroa.21.sroa.36.1..sroa.4317.0..sroa_idx.i.sroa_idx, align 8, !noalias !79 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !79
  %.sroa.21.sroa.0.0.insert.ext98 = zext nneg i8 %i.bt to i64
  %.sroa.21.sroa.0.0.insert.insert100 = or disjoint i64 %.sroa.21.sroa.0.1.insert.shift167, %.sroa.21.sroa.0.0.insert.ext98
  %.sroa.55.sroa.0.0.extract.trunc30 = trunc i64 %.sroa.5318.0.copyload.i to i8
  %.sroa.55.sroa.20.0.extract.shift58 = lshr i64 %.sroa.5318.0.copyload.i, 8
  %.sroa.55.sroa.20.0.extract.trunc59 = trunc nuw i64 %.sroa.55.sroa.20.0.extract.shift58 to i56
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !79, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !79
  br label %bb.aq

bb.an:                                            ; preds = %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %2, %bb.q, %bb.o, %bb.m, %bb.l, %bb.g, %bb.e
  %.sroa.21.sroa.0.0 = phi i64 [ 17, %bb.e ], [ %.sroa.21.sroa.0.1.insert.insert128, %bb.ah ], [ %.sroa.21.sroa.0.0.insert.insert110, %bb.af ], [ 17, %bb.m ], [ %.sroa.21.sroa.0.1.insert.insert123, %2 ], [ %.sroa.21.sroa.0.0.insert.insert100, %bb.al ], [ %.sroa.21.sroa.0.0.insert.insert96, %bb.aj ], [ %.sroa.21.sroa.0.0.insert.insert92, %bb.x ], [ %.sroa.21.sroa.0.0.insert.insert88, %bb.z ], [ %.sroa.21.sroa.0.0.insert.insert84, %bb.ad ], [ %.sroa.21.sroa.0.0.insert.insert80, %bb.ab ], [ %.sroa.21.sroa.0.0.insert.insert76, %bb.q ], [ %.sroa.21.sroa.0.1.insert.insert118, %bb.o ], [ 15, %bb.l ], [ 17, %bb.g ]
  %.sroa.55.sroa.20.sroa.0.0 = phi i56 [ %.sroa.55.sroa.20.0.extract.trunc65, %bb.e ], [ %.sroa.55.sroa.20.0.extract.trunc39, %bb.ah ], [ %.sroa.55.sroa.20.0.extract.trunc63, %bb.af ], [ %.sroa.55.sroa.20.0.extract.trunc61, %bb.m ], [ undef, %2 ], [ %.sroa.55.sroa.20.0.extract.trunc59, %bb.al ], [ %.sroa.55.sroa.20.0.extract.trunc57, %bb.aj ], [ %.sroa.55.sroa.20.0.extract.trunc55, %bb.x ], [ %.sroa.55.sroa.20.0.extract.trunc53, %bb.z ], [ %.sroa.55.sroa.20.0.extract.trunc49, %bb.ad ], [ %.sroa.55.sroa.20.0.extract.trunc47, %bb.ab ], [ %.sroa.55.sroa.20.0.extract.trunc45, %bb.q ], [ %.sroa.55.sroa.20.0.extract.trunc, %bb.o ], [ %.sroa.55.sroa.20.0.extract.trunc43, %bb.l ], [ %.sroa.55.sroa.20.0.extract.trunc41, %bb.g ]
  %.sroa.55.sroa.0.0 = phi i8 [ %.sroa.55.sroa.0.0.extract.trunc33, %bb.e ], [ %.sroa.55.sroa.0.0.extract.trunc20, %bb.ah ], [ %.sroa.55.sroa.0.0.extract.trunc32, %bb.af ], [ %.sroa.55.sroa.0.0.extract.trunc31, %bb.m ], [ undef, %2 ], [ %.sroa.55.sroa.0.0.extract.trunc30, %bb.al ], [ %.sroa.55.sroa.0.0.extract.trunc29, %bb.aj ], [ %.sroa.55.sroa.0.0.extract.trunc28, %bb.x ], [ %.sroa.55.sroa.0.0.extract.trunc27, %bb.z ], [ %.sroa.55.sroa.0.0.extract.trunc25, %bb.ad ], [ %.sroa.55.sroa.0.0.extract.trunc24, %bb.ab ], [ %.sroa.55.sroa.0.0.extract.trunc23, %bb.q ], [ %.sroa.55.sroa.0.0.extract.trunc, %bb.o ], [ %.sroa.55.sroa.0.0.extract.trunc22, %bb.l ], [ %.sroa.55.sroa.0.0.extract.trunc21, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !79
  br label %bb.ap

bb.ao:                                            ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.ar

bb.ap:                                            ; preds = %bb.c, %bb.an
  %.sroa.21.sroa.36.1.ph = phi i64 [ %.sroa.21.sroa.0.0, %bb.an ], [ %.sroa.0229.0.copyload.i, %bb.c ]
  %.sroa.55.sroa.20.sroa.0.1.ph = phi i56 [ %.sroa.55.sroa.20.sroa.0.0, %bb.an ], [ %.sroa.55.sroa.20.sroa.0.0.copyload, %bb.c ]
  %.sroa.55.sroa.0.1.ph = phi i8 [ %.sroa.55.sroa.0.0, %bb.an ], [ %.sroa.4230.0.copyload.i, %bb.c ]
  %.sroa.55.sroa.20.0.insert.ext34 = zext i56 %.sroa.55.sroa.20.sroa.0.1.ph to i64
  %.sroa.55.sroa.20.0.insert.shift35 = shl nuw i64 %.sroa.55.sroa.20.0.insert.ext34, 8
  %.sroa.55.sroa.0.0.insert.ext17 = zext i8 %.sroa.55.sroa.0.1.ph to i64
  %.sroa.55.sroa.0.0.insert.insert19 = or disjoint i64 %.sroa.55.sroa.20.0.insert.shift35, %.sroa.55.sroa.0.0.insert.ext17
  store ptr inttoptr (i64 1 to ptr), ptr %i.n, align 8, !alias.scope !119
  store i64 0, ptr %i.o, align 8, !alias.scope !119
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.21.sroa.36.1.ph, ptr %i.bw, align 8
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.55.sroa.0.0.insert.insert19, ptr %.sroa.4144.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am, %bb.ai, %bb.ae, %bb.aa, %bb.y, %bb.t, %bb.r
  %.sroa.11111.0.i = phi i64 [ %i.bv, %bb.am ], [ %i.bl, %bb.ae ], [ undef, %bb.t ], [ undef, %bb.y ], [ undef, %bb.aa ], [ undef, %bb.ai ], [ undef, %bb.r ]
  %.sroa.7110.0.i = phi i64 [ %i.bs, %bb.am ], [ %i.bi, %bb.ae ], [ undef, %bb.t ], [ %i.be, %bb.y ], [ %i.bg, %bb.aa ], [ undef, %bb.ai ], [ undef, %bb.r ]
  %.sroa.0109.0.i = phi i64 [ 1, %bb.am ], [ 5, %bb.ae ], [ 2, %bb.t ], [ 3, %bb.y ], [ 4, %bb.aa ], [ 0, %bb.ai ], [ 0, %bb.r ]
  %.sroa.0107.2.i = phi i8 [ %i.av, %bb.am ], [ %i.av, %bb.ae ], [ %i.av, %bb.t ], [ %i.av, %bb.y ], [ %i.av, %bb.aa ], [ %i.bq, %bb.ai ], [ %i.av, %bb.r ]
  %.sroa.0103.2.i = phi i64 [ %i.ay, %bb.am ], [ %i.ay, %bb.ae ], [ %i.ay, %bb.t ], [ %i.ay, %bb.y ], [ %i.ay, %bb.aa ], [ %i.bn, %bb.ai ], [ %i.ay, %bb.r ]
  %.sroa.6134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6134.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !79
  %.val1 = load i64, ptr %i.o, align 8, !noundef !5
  %i.bx = sub i64 %.val, %.val1
  %i.by = load i64, ptr %1, align 8, !alias.scope !122, !noundef !5
  %i.bz = add i64 %i.bx, %i.by
  store i64 %i.bz, ptr %1, align 8, !alias.scope !122
  store i64 %.sroa.0109.0.i, ptr %0, align 8
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7110.0.i, ptr %.sroa.4132.0..sroa_idx, align 8
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11111.0.i, ptr %.sroa.5133.0..sroa_idx, align 8
  %.sroa.7135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0229.0.copyload.i, ptr %.sroa.7135.0..sroa_idx, align 8
  %.sroa.8136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0103.2.i, ptr %.sroa.8136.0..sroa_idx, align 8
  %.sroa.9137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.q, ptr %.sroa.9137.0..sroa_idx, align 8
  %.sroa.10138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %.sroa.0107.2.i, ptr %.sroa.10138.0..sroa_idx, align 8
  %.sroa.11139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %.sroa.4230.0.copyload.i, ptr %.sroa.11139.0..sroa_idx, align 1
  %.sroa.12140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i16 %spec.select.i.i.i, ptr %.sroa.12140.0..sroa_idx, align 2
  %.sroa.13141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 9, ptr %.sroa.13141.0..sroa_idx, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.ao
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsb_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_10UnitHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE11entries_rawCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 16), (40, 41)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, i64 noundef range(i64 0, 2) %3, i64 %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = trunc nuw i64 %3 to i1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val1.i.i.i.pre = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.phi.trans.insert44 = getelementptr inbounds nuw i8, ptr %1, i64 73
  %.val2.i.i.i.pre = load i8, ptr %.phi.trans.insert44, align 1, !range !125 ; 2 uses
  br i1 %i.a, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert46 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i.pre = load i64, ptr %.phi.trans.insert46, align 8, !alias.scope !126, !noalias !133 ; 2 uses
  %.pre = sub i64 %.val1.i.i.i.pre, %.val.i.i.i.pre
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i8 %.val2.i.i.i.pre, 8
  %spec.select.i.i = select i1 %i.b, i64 12, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !135, !noundef !5 ; 2 uses
  %i.d = sub i64 %.val1.i.i.i.pre, %.val.i        ; 2 uses
  %i.e = add i64 %i.d, %spec.select.i.i
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.d, %bb.b ]
  %.val.i.i.i = phi i64 [ %.val.i.i.i.pre, %._crit_edge ], [ %.val.i, %bb.b ] ; 2 uses
  %.sroa.02.0 = phi i64 [ %4, %._crit_edge ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = icmp eq i8 %.val2.i.i.i.pre, 8
  %spec.select.i.i.i.i = select i1 %i.f, i64 12, i64 4
  %i.g = add i64 %.pre-phi, %spec.select.i.i.i.i  ; 2 uses
  %i.h = icmp uge i64 %.sroa.02.0, %i.g
  %i.i = sub i64 %.sroa.02.0, %i.g                ; 3 uses
  %i.j = icmp ult i64 %i.i, %.val.i.i.i
  %.sroa.0.0.i.i = and i1 %i.h, %i.j
  br i1 %.sroa.0.0.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !138, !noalias !141, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i2.i = load i8, ptr %i.m, align 8, !range !40, !alias.scope !138, !noalias !141, !noundef !5
  %i.n = sub nuw i64 %.val.i.i.i, %i.i            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.08.0.copyload = load i32, ptr %i.q, align 8
  %i.r = add i64 %i.n, %.sroa.02.0
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.p, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.n, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.08.0.copyload, ptr %.sroa.814.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink42 = phi i64 [ %i.r, %bb.d ], [ 53, %bb.c ]
  %.sroa.02.0.sink = phi i64 [ 0, %bb.d ], [ %.sroa.02.0, %bb.c ]
  %.sink = phi i8 [ %.val.i2.i, %bb.d ], [ 2, %bb.c ]
  store i64 %.sink42, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.0.sink, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.sink, ptr %i.t, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvMsb_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_10UnitHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE11header_sizeCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1 = load i64, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 73
  %.val2 = load i8, ptr %i.b, align 1, !range !125, !noundef !5
  %i.c = icmp eq i8 %.val2, 8
  %spec.select.i = select i1 %i.c, i64 12, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load i64, ptr %i.d, align 8, !noundef !5
  %i.e = sub i64 %.val1, %.val
  %i.f = add i64 %i.e, %spec.select.i
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMsb_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_10UnitHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE12is_in_boundsCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i = load i64, ptr %i.a, align 8, !alias.scope !143
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 73
  %.val2.i = load i8, ptr %i.b, align 1, !range !125, !alias.scope !143, !noundef !5
  %i.c = icmp eq i8 %.val2.i, 8
  %spec.select.i.i = select i1 %i.c, i64 12, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !143, !noundef !5 ; 2 uses
  %i.e = sub i64 %.val1.i, %.val.i
  %i.f = add i64 %i.e, %spec.select.i.i           ; 2 uses
  %i.g = icmp uge i64 %1, %i.f
  %i.h = sub nuw i64 %1, %i.f
  %i.i = icmp ult i64 %i.h, %.val.i
  %.sroa.0.0 = select i1 %i.g, i1 %i.i, i1 false
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvMsb_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_10UnitHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE7entriesCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 43), (48, 89), (96, 100)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !146, !noalias !149, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !146, !noalias !149, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i = load i8, ptr %i.e, align 8, !range !40, !alias.scope !146, !noalias !149, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.0.0.copyload = load i32, ptr %i.f, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val1.i = load i64, ptr %i.g, align 8, !alias.scope !151
  %i.h = and i32 %.sroa.0.0.copyload, 65280
  %i.i = icmp eq i32 %i.h, 2048
  %spec.select.i.i = select i1 %i.i, i64 12, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.j = add i64 %.val1.i, %spec.select.i.i
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !157, !noalias !159
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.j, ptr %i.k, align 8, !alias.scope !157, !noalias !159
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !157, !noalias !159
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %2, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !157, !noalias !159
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.b, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !161, !noalias !162
  %.sroa.4.0..sroa.6.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.d, ptr %.sroa.4.0..sroa.6.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !161, !noalias !162
  %.sroa.6.0..sroa.6.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %.val.i, ptr %.sroa.6.0..sroa.6.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !161, !noalias !162
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %.sroa.0.0.copyload, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !157, !noalias !159
  store i64 0, ptr %0, align 8, !alias.scope !157, !noalias !159
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !157, !noalias !159
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 0, ptr %.sroa.67.0..sroa_idx.i, align 8, !alias.scope !157, !noalias !159
  %.sroa.78.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 0, ptr %.sroa.78.0..sroa_idx.i, align 2, !alias.scope !157, !noalias !159
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMsd_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_25DebuggingInformationEntryINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE10attr_valueCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1, i16 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
end_hunk_0
