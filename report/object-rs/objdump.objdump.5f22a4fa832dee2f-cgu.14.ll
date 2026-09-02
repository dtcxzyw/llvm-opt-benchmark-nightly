Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/objdump.objdump.5f22a4fa832dee2f-cgu.14?download=true
inline.NumInlined: 124
inline.NumDeleted: 85
begin_hunk_0_@_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read3elf4fileINtB5_7ElfFileINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEENtNtB9_6traits6Object12architectureCs8aoZCP6pRcV_7objdump:bb.a
bb.p:                                             ; preds = %bb.a
  br label %bb.ac

bb.q:                                             ; preds = %bb.a
  br label %bb.ac

bb.r:                                             ; preds = %bb.a
  br label %bb.ac

bb.s:                                             ; preds = %bb.a
  br label %bb.ac

bb.t:                                             ; preds = %bb.a
  %.5 = select i1 %i.h, i8 26, i8 25
  br label %bb.ac

bb.u:                                             ; preds = %bb.a
  %spec.select6 = select i1 %i.h, i8 27, i8 0
  br label %bb.ac

bb.v:                                             ; preds = %bb.a
  br label %bb.ac

bb.w:                                             ; preds = %bb.a
  %spec.select7 = select i1 %i.h, i8 0, i8 29
  br label %bb.ac

bb.x:                                             ; preds = %bb.a
  %spec.select8 = select i1 %i.h, i8 0, i8 30
  br label %bb.ac

bb.y:                                             ; preds = %bb.a
  %spec.select9 = select i1 %i.h, i8 0, i8 31
  br label %bb.ac

bb.z:                                             ; preds = %bb.a
  %spec.select10 = select i1 %i.h, i8 32, i8 0
  br label %bb.ac

bb.aa:                                            ; preds = %bb.a
  %spec.select11 = select i1 %i.h, i8 0, i8 36
  br label %bb.ac

bb.ab:                                            ; preds = %bb.a
  %spec.select12 = select i1 %i.h, i8 0, i8 33
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.u, %bb.n, %bb.c, %bb.o, %bb.ad, %bb.t, %bb.m, %bb.j, %bb.h, %bb.b, %bb.a, %bb.v, %bb.s, %bb.r, %bb.q, %bb.p, %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.0.0 = phi i8 [ %spec.select7, %bb.w ], [ %.3, %bb.m ], [ %.5, %bb.t ], [ %.2, %bb.j ], [ 4, %bb.d ], [ 5, %bb.e ], [ 6, %bb.f ], [ 7, %bb.g ], [ %.1, %bb.h ], [ %spec.select6, %bb.u ], [ 10, %bb.i ], [ 0, %bb.a ], [ %., %bb.b ], [ 13, %bb.k ], [ 15, %bb.l ], [ %spec.select8, %bb.x ], [ %spec.select, %bb.c ], [ %spec.select11, %bb.aa ], [ %.13, %bb.ad ], [ %spec.select4, %bb.n ], [ 20, %bb.o ], [ 22, %bb.p ], [ 14, %bb.q ], [ 23, %bb.r ], [ 24, %bb.s ], [ %spec.select10, %bb.z ], [ %spec.select12, %bb.ab ], [ %spec.select9, %bb.y ], [ 28, %bb.v ]
  ret i8 %.sroa.0.0

bb.ad:                                            ; preds = %bb.o
  %i.i = getelementptr i8, ptr %i.b, i64 36
  %.val14 = load i32, ptr %i.i, align 1
  %i.j = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf9FileFlagsE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val14, i1 noundef zeroext %i.e)
  %i.k = and i32 %i.j, 32
  %.not = icmp eq i32 %i.k, 0
  %.13 = select i1 %.not, i8 19, i8 21
  br label %bb.ac
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read3elf4fileINtB5_7ElfFileINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEENtNtB9_6traits6Object13gnu_debuglinkCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.d = load i8, ptr %i.c, align 8, !range !8, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1                  ; 3 uses
  %i.f = tail call { i64, ptr } @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader32NtNtBa_6endian10EndiannessEE15section_by_nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, i1 noundef zeroext %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 14)
  %i.g = extractvalue { i64, ptr } %i.f, 1        ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !7, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8, !noundef !7
  call void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(40) %i.g, i1 noundef zeroext %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !9, !noundef !7
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @17, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 49, ptr %i.o, align 8
  store i64 1, ptr %0, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !7 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s
  %i.u = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !142, !nonnull !7, !noundef !7
  %i.v = tail call { i64, ptr } %i.u(i8 noundef 0, ptr noundef nonnull readonly %i.q, ptr noundef nonnull readonly %i.t), !noalias !142, !inline_history !1 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @16, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 35, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.aa = extractvalue { i64, ptr } %i.v, 1
  %i.ab = tail call noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCs8aoZCP6pRcV_7objdump(ptr noundef %i.aa, ptr noundef nonnull readonly %i.q), !noalias !143 ; 3 uses
  %.not.i.i = icmp ult i64 %i.ab, %i.s
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.ac = and i64 %i.ab, -4
  %i.ad = add i64 %i.ac, 4                        ; 3 uses
  %i.ae = icmp ult i64 %i.s, %i.ad
  %i.af = sub nuw i64 %i.s, %i.ad
  %i.ag = icmp samesign ult i64 %i.af, 4
  %i.ah = select i1 %i.ae, i1 true, i1 %i.ag
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @15, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 30, ptr %i.aj, align 8
  store i64 1, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ad
  %.sroa.046.0.copyload = load i32, ptr %i.ak, align 1 ; 2 uses
  %i.al = tail call i32 @llvm.bswap.i32(i32 %.sroa.046.0.copyload)
  %.sroa.03.0.i = select i1 %i.e, i32 %i.al, i32 %.sroa.046.0.copyload
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.am, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ab, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.03.0.i, ptr %.sroa.537.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.f, %bb.h, %bb.c, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read3elf4fileINtB5_7ElfFileINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEENtNtB9_6traits6Object16gnu_debugaltlinkCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.d = load i8, ptr %i.c, align 8, !range !8, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = tail call { i64, ptr } @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader32NtNtBa_6endian10EndiannessEE15section_by_nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, i1 noundef zeroext %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 17)
  %i.g = extractvalue { i64, ptr } %i.f, 1        ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !7, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8, !noundef !7
  call void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(40) %i.g, i1 noundef zeroext %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !9, !noundef !7
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !7 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  %i.s = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !148, !nonnull !7, !noundef !7
  %i.t = tail call { i64, ptr } %i.s(i8 noundef 0, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.r), !noalias !148, !inline_history !1 ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 0
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = extractvalue { i64, ptr } %i.t, 1
  %i.x = tail call noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCs8aoZCP6pRcV_7objdump(ptr noundef %i.w, ptr noundef nonnull readonly %i.o), !noalias !149 ; 4 uses
  %.not.i.i = icmp ult i64 %i.x, %i.q
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %2 = xor i64 %i.x, -1
  %i.z = add i64 %i.q, %2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.ab, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.x, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aa, ptr %.sroa.531.0..sroa_idx, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.z, ptr %.sroa.632.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.g, %bb.e
  ret void

bb.g:                                             ; preds = %bb.d, %bb.b
  %.sink47 = phi ptr [ @20, %bb.b ], [ @19, %bb.d ]
  %.sink = phi i64 [ 52, %bb.b ], [ 38, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink47, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.ad, align 8
  store i64 1, ptr %0, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read3elf4fileINtB5_7ElfFileINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEENtNtB9_6traits6Object16import_librariesCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 16), (72, 73)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.d = load i8, ptr %i.c, align 8, !range !8, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !noundef !7
  call void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader32NtNtBa_6endian10EndiannessEE13dynamic_tableCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, i1 noundef zeroext %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.k = load i8, ptr %i.j, align 8, !range !12, !noundef !7 ; 3 uses
  %i.l = icmp eq i8 %i.k, 2
  %i.m = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.517.0..sroa_idx, i64 32, i1 false)
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  %.sroa.713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.713.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.719.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.k, ptr %.sroa.612.0..sroa_idx, align 8
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.m, ptr %.sroa.814.0..sroa_idx, align 8
  %.sroa.814.sroa.4.0..sroa.814.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.p, ptr %.sroa.814.sroa.4.0..sroa.814.0..sroa_idx.sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.m, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.k, ptr %i.r, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 5) i8 @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read3elf4fileINtB5_7ElfFileINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEENtNtB9_6traits6Object4kindCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(296) %0) unnamed_addr #0 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = load i8, ptr %i.c, align 8, !range !8, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %.val = load i16, ptr %i.f, align 1
  %i.g = tail call noundef i16 @_RNvMs7_NtCseHTIzroA4w0_6object6endianINtB5_3U16NtB5_10EndiannessNtNtB7_3elf8FileTypeE3getCs8aoZCP6pRcV_7objdump(i16 noundef %.val, i1 noundef zeroext %i.e) ; 2 uses
  %i.h = icmp ult i16 %i.g, 5
  %switch.idx.cast = trunc i16 %i.g to i8
  %spec.select = select i1 %i.h, i8 %switch.idx.cast, i8 0
  ret i8 %spec.select
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 1, -4278190080) i64 @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read3elf4fileINtB5_7ElfFileINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEENtNtB9_6traits6Object5flagsCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(296) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.d = load i8, ptr %i.c, align 1, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i8, ptr %i.e, align 1, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.h = load i8, ptr %i.g, align 8, !range !8, !noundef !7
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr i8, ptr %i.b, i64 36
  %.val = load i32, ptr %i.j, align 1
  %i.k = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf9FileFlagsE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val, i1 noundef zeroext %i.i)
  %.sroa.41.0.insert.ext = zext i32 %i.k to i64
  %.sroa.41.0.insert.shift = shl nuw i64 %.sroa.41.0.insert.ext, 32
  %.sroa.3.0.insert.ext = zext i8 %i.f to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 16
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.41.0.insert.shift, %.sroa.3.0.insert.shift
  %.sroa.2.0.insert.ext = zext i8 %i.d to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.insert, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.insert, 1
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read3elf4fileINtB5_7ElfFileINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEENtNtB9_6traits6Object7exportsCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.d = load i8, ptr %i.c, align 8, !range !8, !noundef !7 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !noundef !7
  call void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader32NtNtBa_6endian10EndiannessEE8versionsCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, i1 noundef zeroext %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i)
  %i.j = load i64, ptr %i.a, align 8, !range !13, !noundef !7 ; 2 uses
  %i.k = icmp eq i64 %i.j, -2
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.68.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.d, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.r, align 8
  store i64 %i.j, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read3elf4fileINtB5_7ElfFileINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEENtNtB9_6traits6Object7importsCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.d = load i8, ptr %i.c, align 8, !range !8, !noundef !7 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !noundef !7
  call void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader32NtNtBa_6endian10EndiannessEE8versionsCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, i1 noundef zeroext %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i)
  %i.j = load i64, ptr %i.a, align 8, !range !13, !noundef !7 ; 2 uses
  %i.k = icmp eq i64 %i.j, -2
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read3elf4fileINtB5_7ElfFileINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtB9_6traits6Object12architectureCs8aoZCP6pRcV_7objdump:bb.a
bb.p:                                             ; preds = %bb.a
  br label %bb.ac

bb.q:                                             ; preds = %bb.a
  br label %bb.ac

bb.r:                                             ; preds = %bb.a
  br label %bb.ac

bb.s:                                             ; preds = %bb.a
  br label %bb.ac

bb.t:                                             ; preds = %bb.a
  %.5 = select i1 %i.h, i8 26, i8 25
  br label %bb.ac

bb.u:                                             ; preds = %bb.a
  %spec.select6 = select i1 %i.h, i8 27, i8 0
  br label %bb.ac

bb.v:                                             ; preds = %bb.a
  br label %bb.ac

bb.w:                                             ; preds = %bb.a
  %spec.select7 = select i1 %i.h, i8 0, i8 29
  br label %bb.ac

bb.x:                                             ; preds = %bb.a
  %spec.select8 = select i1 %i.h, i8 0, i8 30
  br label %bb.ac

bb.y:                                             ; preds = %bb.a
  %spec.select9 = select i1 %i.h, i8 0, i8 31
  br label %bb.ac

bb.z:                                             ; preds = %bb.a
  %spec.select10 = select i1 %i.h, i8 32, i8 0
  br label %bb.ac

bb.aa:                                            ; preds = %bb.a
  %spec.select11 = select i1 %i.h, i8 0, i8 36
  br label %bb.ac

bb.ab:                                            ; preds = %bb.a
  %spec.select12 = select i1 %i.h, i8 0, i8 33
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.u, %bb.n, %bb.c, %bb.o, %bb.ad, %bb.t, %bb.m, %bb.j, %bb.h, %bb.b, %bb.a, %bb.v, %bb.s, %bb.r, %bb.q, %bb.p, %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.0.0 = phi i8 [ %spec.select7, %bb.w ], [ %.3, %bb.m ], [ %.5, %bb.t ], [ %.2, %bb.j ], [ 4, %bb.d ], [ 5, %bb.e ], [ 6, %bb.f ], [ 7, %bb.g ], [ %.1, %bb.h ], [ %spec.select6, %bb.u ], [ 10, %bb.i ], [ 0, %bb.a ], [ %., %bb.b ], [ 13, %bb.k ], [ 15, %bb.l ], [ %spec.select8, %bb.x ], [ %spec.select, %bb.c ], [ %spec.select11, %bb.aa ], [ %.13, %bb.ad ], [ %spec.select4, %bb.n ], [ 20, %bb.o ], [ 22, %bb.p ], [ 14, %bb.q ], [ 23, %bb.r ], [ 24, %bb.s ], [ %spec.select10, %bb.z ], [ %spec.select12, %bb.ab ], [ %spec.select9, %bb.y ], [ 28, %bb.v ]
  ret i8 %.sroa.0.0

bb.ad:                                            ; preds = %bb.o
  %i.i = getelementptr i8, ptr %i.b, i64 48
  %.val14 = load i32, ptr %i.i, align 1
  %i.j = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf9FileFlagsE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val14, i1 noundef zeroext %i.e)
  %i.k = and i32 %i.j, 32
  %.not = icmp eq i32 %i.k, 0
  %.13 = select i1 %.not, i8 19, i8 21
  br label %bb.ac
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read3elf4fileINtB5_7ElfFileINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtB9_6traits6Object13gnu_debuglinkCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.d = load i8, ptr %i.c, align 8, !range !8, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1                  ; 3 uses
  %i.f = tail call { i64, ptr } @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader64NtNtBa_6endian10EndiannessEE15section_by_nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, i1 noundef zeroext %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 14)
  %i.g = extractvalue { i64, ptr } %i.f, 1        ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !7, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8, !noundef !7
  call void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %i.g, i1 noundef zeroext %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !9, !noundef !7
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @17, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 49, ptr %i.o, align 8
  store i64 1, ptr %0, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !7 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s
  %i.u = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !154, !nonnull !7, !noundef !7
  %i.v = tail call { i64, ptr } %i.u(i8 noundef 0, ptr noundef nonnull readonly %i.q, ptr noundef nonnull readonly %i.t), !noalias !154, !inline_history !1 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @16, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 35, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.aa = extractvalue { i64, ptr } %i.v, 1
  %i.ab = tail call noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCs8aoZCP6pRcV_7objdump(ptr noundef %i.aa, ptr noundef nonnull readonly %i.q), !noalias !155 ; 3 uses
  %.not.i.i = icmp ult i64 %i.ab, %i.s
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.ac = and i64 %i.ab, -4
  %i.ad = add i64 %i.ac, 4                        ; 3 uses
  %i.ae = icmp ult i64 %i.s, %i.ad
  %i.af = sub nuw i64 %i.s, %i.ad
  %i.ag = icmp samesign ult i64 %i.af, 4
  %i.ah = select i1 %i.ae, i1 true, i1 %i.ag
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @15, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 30, ptr %i.aj, align 8
  store i64 1, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ad
  %.sroa.046.0.copyload = load i32, ptr %i.ak, align 1 ; 2 uses
  %i.al = tail call i32 @llvm.bswap.i32(i32 %.sroa.046.0.copyload)
  %.sroa.03.0.i = select i1 %i.e, i32 %i.al, i32 %.sroa.046.0.copyload
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.am, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ab, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.03.0.i, ptr %.sroa.537.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.f, %bb.h, %bb.c, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read3elf4fileINtB5_7ElfFileINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtB9_6traits6Object16gnu_debugaltlinkCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.d = load i8, ptr %i.c, align 8, !range !8, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = tail call { i64, ptr } @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader64NtNtBa_6endian10EndiannessEE15section_by_nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, i1 noundef zeroext %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 17)
  %i.g = extractvalue { i64, ptr } %i.f, 1        ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !7, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8, !noundef !7
  call void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %i.g, i1 noundef zeroext %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !9, !noundef !7
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !7 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  %i.s = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !160, !nonnull !7, !noundef !7
  %i.t = tail call { i64, ptr } %i.s(i8 noundef 0, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.r), !noalias !160, !inline_history !1 ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 0
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = extractvalue { i64, ptr } %i.t, 1
  %i.x = tail call noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCs8aoZCP6pRcV_7objdump(ptr noundef %i.w, ptr noundef nonnull readonly %i.o), !noalias !161 ; 4 uses
  %.not.i.i = icmp ult i64 %i.x, %i.q
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %2 = xor i64 %i.x, -1
  %i.z = add i64 %i.q, %2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.ab, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.x, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aa, ptr %.sroa.531.0..sroa_idx, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.z, ptr %.sroa.632.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.g, %bb.e
  ret void

bb.g:                                             ; preds = %bb.d, %bb.b
  %.sink47 = phi ptr [ @20, %bb.b ], [ @19, %bb.d ]
  %.sink = phi i64 [ 52, %bb.b ], [ 38, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink47, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.ad, align 8
  store i64 1, ptr %0, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read3elf4fileINtB5_7ElfFileINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtB9_6traits6Object16import_librariesCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 16), (72, 73)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.d = load i8, ptr %i.c, align 8, !range !8, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !noundef !7
  call void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader64NtNtBa_6endian10EndiannessEE13dynamic_tableCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, i1 noundef zeroext %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.k = load i8, ptr %i.j, align 8, !range !12, !noundef !7 ; 3 uses
  %i.l = icmp eq i8 %i.k, 2
  %i.m = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.517.0..sroa_idx, i64 32, i1 false)
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  %.sroa.713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.713.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.719.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.o
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.k, ptr %.sroa.612.0..sroa_idx, align 8
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.m, ptr %.sroa.814.0..sroa_idx, align 8
  %.sroa.814.sroa.4.0..sroa.814.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.p, ptr %.sroa.814.sroa.4.0..sroa.814.0..sroa_idx.sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.m, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.k, ptr %i.r, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 5) i8 @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read3elf4fileINtB5_7ElfFileINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtB9_6traits6Object4kindCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(296) %0) unnamed_addr #0 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = load i8, ptr %i.c, align 8, !range !8, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %.val = load i16, ptr %i.f, align 1
  %i.g = tail call noundef i16 @_RNvMs7_NtCseHTIzroA4w0_6object6endianINtB5_3U16NtB5_10EndiannessNtNtB7_3elf8FileTypeE3getCs8aoZCP6pRcV_7objdump(i16 noundef %.val, i1 noundef zeroext %i.e) ; 2 uses
  %i.h = icmp ult i16 %i.g, 5
  %switch.idx.cast = trunc i16 %i.g to i8
  %spec.select = select i1 %i.h, i8 %switch.idx.cast, i8 0
  ret i8 %spec.select
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 1, -4278190080) i64 @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read3elf4fileINtB5_7ElfFileINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtB9_6traits6Object5flagsCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(296) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.d = load i8, ptr %i.c, align 1, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i8, ptr %i.e, align 1, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.h = load i8, ptr %i.g, align 8, !range !8, !noundef !7
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr i8, ptr %i.b, i64 48
  %.val = load i32, ptr %i.j, align 1
  %i.k = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf9FileFlagsE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val, i1 noundef zeroext %i.i)
  %.sroa.41.0.insert.ext = zext i32 %i.k to i64
  %.sroa.41.0.insert.shift = shl nuw i64 %.sroa.41.0.insert.ext, 32
  %.sroa.3.0.insert.ext = zext i8 %i.f to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 16
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.41.0.insert.shift, %.sroa.3.0.insert.shift
  %.sroa.2.0.insert.ext = zext i8 %i.d to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.insert, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.insert, 1
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read3elf4fileINtB5_7ElfFileINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtB9_6traits6Object7exportsCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.d = load i8, ptr %i.c, align 8, !range !8, !noundef !7 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !noundef !7
  call void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader64NtNtBa_6endian10EndiannessEE8versionsCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, i1 noundef zeroext %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i)
  %i.j = load i64, ptr %i.a, align 8, !range !13, !noundef !7 ; 2 uses
  %i.k = icmp eq i64 %i.j, -2
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.68.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.d, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.r, align 8
  store i64 %i.j, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read3elf4fileINtB5_7ElfFileINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtB9_6traits6Object7importsCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.d = load i8, ptr %i.c, align 8, !range !8, !noundef !7 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !noundef !7
  call void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader64NtNtBa_6endian10EndiannessEE8versionsCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, i1 noundef zeroext %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i)
  %i.j = load i64, ptr %i.a, align 8, !range !13, !noundef !7 ; 2 uses
  %i.k = icmp eq i64 %i.j, -2
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_1
begin_hunk_2_@_RNvYNtNtCseHTIzroA4w0_6object5xcoff8Symbol64NtNtNtNtB6_4read5xcoff6symbol6Symbol12has_aux_fileCs8aoZCP6pRcV_7objdump:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCseHTIzroA4w0_6object5xcoff8Symbol64NtNtNtNtB6_4read5xcoff6symbol6Symbol13has_aux_csectCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(none) dereferenceable(18) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 17
  %.val = load i8, ptr %i.a, align 1, !noundef !7
  %.not = icmp eq i8 %.val, 0
  br i1 %.not, label %switch.edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load i8, ptr %i.b, align 1, !noundef !7
  switch i8 %.val2, label %bb.c [
    i8 111, label %switch.edge
    i8 2, label %switch.edge
    i8 107, label %switch.edge
  ]

switch.edge:                                      ; preds = %bb.b, %bb.b, %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  br label %switch.edge
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCs8aoZCP6pRcV_7objdump(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_atNtNtBc_5xcoff5Rel32ECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_atNtNtBc_5xcoff5Rel64ECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs3_NtNtCseHTIzroA4w0_6object4read4utilNtB5_11StringTable3getCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvXsb_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolNtNtBb_5xcoff8Symbol32NtB5_6Symbol11name_offset(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(18)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readNtNtBc_5xcoff11AuxHeader32ECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readNtNtBc_5xcoff12FileHeader32ECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readNtNtBc_5xcoff11AuxHeader64ECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readNtNtBc_5xcoff12FileHeader64ECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf12FileHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf4file10FileHeader5parseRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtCseHTIzroA4w0_6object3elf12FileHeader32NtNtB7_6endian10EndiannessENtNtNtNtB7_4read3elf4file10FileHeader6endianCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(52)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf12FileHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf4file10FileHeader15program_headersRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(52), i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf12FileHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf4file10FileHeader8sectionsRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(52), i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCseHTIzroA4w0_6object4read3elf10relocationNtB3_18RelocationSections5parseINtNtB9_3elf12FileHeader32NtNtB9_6endian10EndiannessERShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf12FileHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf4file10FileHeader5parseRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtCseHTIzroA4w0_6object3elf12FileHeader64NtNtB7_6endian10EndiannessENtNtNtNtB7_4read3elf4file10FileHeader6endianCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf12FileHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf4file10FileHeader15program_headersRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(64), i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf12FileHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf4file10FileHeader8sectionsRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(64), i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCseHTIzroA4w0_6object4read3elf10relocationNtB3_18RelocationSections5parseINtNtB9_3elf12FileHeader64NtNtB9_6endian10EndiannessERShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf6symbolINtB4_11SymbolTableINtNtBa_3elf12FileHeader32NtNtBa_6endian10EndiannessEE5parseCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf6symbolINtB4_11SymbolTableINtNtBa_3elf12FileHeader64NtNtBa_6endian10EndiannessEE5parseCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYINtNtCseHTIzroA4w0_6object3elf12FileHeader32NtNtB7_6endian10EndiannessENtNtNtNtB7_4read3elf4file10FileHeader11is_class_64Cs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(52)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader32NtNtBa_6endian10EndiannessEE15section_by_nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(40), i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader32NtNtBa_6endian10EndiannessEE13dynamic_tableCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader32NtNtBa_6endian10EndiannessEE8versionsCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader5notesRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(40), i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCseHTIzroA4w0_6object4read3elf4noteINtB2_12NoteIteratorINtNtB8_3elf12FileHeader32NtNtB8_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf15ProgramHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7segment13ProgramHeader5notesRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32), i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB5_18ElfSectionIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE3newCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYINtNtCseHTIzroA4w0_6object3elf12FileHeader64NtNtB7_6endian10EndiannessENtNtNtNtB7_4read3elf4file10FileHeader11is_class_64Cs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader64NtNtBa_6endian10EndiannessEE15section_by_nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(64), i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader64NtNtBa_6endian10EndiannessEE13dynamic_tableCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader64NtNtBa_6endian10EndiannessEE8versionsCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader5notesRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(64), i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCseHTIzroA4w0_6object4read3elf4noteINtB2_12NoteIteratorINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf15ProgramHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7segment13ProgramHeader5notesRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(56), i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB5_18ElfSectionIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE3newCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCseHTIzroA4w0_6object5xcoffNtB2_12SectionFlagsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtCseHTIzroA4w0_6object5xcoffNtB5_9FileFlagsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i16 @_RNvMs7_NtCseHTIzroA4w0_6object6endianINtB5_3U16NtB5_10EndiannessNtNtB7_3elf8FileTypeE3getCs8aoZCP6pRcV_7objdump(i16 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf9FileFlagsE3getCs8aoZCP6pRcV_7objdump(i32 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i16 @_RNvMs7_NtCseHTIzroA4w0_6object6endianINtB5_3U16NtB5_10EndiannessNtNtB7_3elf7MachineE3getCs8aoZCP6pRcV_7objdump(i16 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf8NoteTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11SectionTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs5_NtNtCseHTIzroA4w0_6object4read10symbol_mapNtB6_16SymbolMapBuilder5buildINtNtNtB8_3elf4file7ElfFileINtNtBa_3elf12FileHeader32NtNtBa_6endian10EndiannessEEECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs5_NtNtCseHTIzroA4w0_6object4read10symbol_mapNtB6_16SymbolMapBuilder5buildINtNtNtB8_3elf4file7ElfFileINtNtBa_3elf12FileHeader64NtNtBa_6endian10EndiannessEEECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{null}
!1 = distinct !{null, null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 2, !"RtLibUseGOT", i32 1}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!7 = !{}
!8 = !{i8 0, i8 2}
!9 = !{i64 0, i64 2}
!10 = !{i64 -1, i64 -9223372036854775808}
!11 = !{i64 8}
!12 = !{i8 0, i8 3}
!13 = !{i64 -2, i64 -9223372036854775808}
!14 = !{i8 -1, i8 3}
!15 = distinct !{!15, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump"}
!16 = distinct !{!16, !15, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump: argument 0"}
!17 = !{!16}
!18 = distinct !{!18, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump"}
!19 = distinct !{!19, !18, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump: argument 0"}
!20 = !{!19}
!21 = distinct !{!21, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump"}
!22 = distinct !{!22, !21, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump: argument 0"}
!23 = !{!22}
!24 = distinct !{!24, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader32NtNtBa_6endian10EndiannessEE7symbolsCs8aoZCP6pRcV_7objdump"}
!25 = distinct !{!25, !24, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader32NtNtBa_6endian10EndiannessEE7symbolsCs8aoZCP6pRcV_7objdump: argument 0"}
!26 = distinct !{!26, !"_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB2b_6endian10EndiannessEuINtNtNtBf_3ops12control_flow11ControlFlowTNtNtB2b_4read12SectionIndexB25_EENCINvNtBb_3map12map_try_foldTjB25_EB3Z_uB3k_NCNvMs_NtNtB42_3elf7sectionINtB5m_12SectionTableINtB29_12FileHeader32B2R_EE9enumerate0NCINvNvB1e_4find5checkB3Z_NCNvB5j_7symbols0E0E0E0Cs8aoZCP6pRcV_7objdump"}
!27 = distinct !{!27, !26, !"_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB2b_6endian10EndiannessEuINtNtNtBf_3ops12control_flow11ControlFlowTNtNtB2b_4read12SectionIndexB25_EENCINvNtBb_3map12map_try_foldTjB25_EB3Z_uB3k_NCNvMs_NtNtB42_3elf7sectionINtB5m_12SectionTableINtB29_12FileHeader32B2R_EE9enumerate0NCINvNvB1e_4find5checkB3Z_NCNvB5j_7symbols0E0E0E0Cs8aoZCP6pRcV_7objdump: argument 1"}
!28 = distinct !{!28, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldTjRINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB17_6endian10EndiannessEETNtNtB17_4read12SectionIndexB11_EuINtNtNtBa_3ops12control_flow11ControlFlowB2g_ENCNvMs_NtNtB2j_3elf7sectionINtB3F_12SectionTableINtB15_12FileHeader32B1N_EE9enumerate0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2g_NCNvB3C_7symbols0E0E0Cs8aoZCP6pRcV_7objdump"}
!29 = distinct !{!29, !28, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldTjRINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB17_6endian10EndiannessEETNtNtB17_4read12SectionIndexB11_EuINtNtNtBa_3ops12control_flow11ControlFlowB2g_ENCNvMs_NtNtB2j_3elf7sectionINtB3F_12SectionTableINtB15_12FileHeader32B1N_EE9enumerate0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2g_NCNvB3C_7symbols0E0E0Cs8aoZCP6pRcV_7objdump: argument 0"}
!30 = distinct !{!30, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkTNtNtCseHTIzroA4w0_6object4read12SectionIndexRINtNtB1h_3elf15SectionHeader32NtNtB1h_6endian10EndiannessEENCNvMs_NtNtB1f_3elf7sectionINtB30_12SectionTableINtB1Z_12FileHeader32B2q_EE7symbols0E0Cs8aoZCP6pRcV_7objdump"}
!31 = distinct !{!31, !30, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkTNtNtCseHTIzroA4w0_6object4read12SectionIndexRINtNtB1h_3elf15SectionHeader32NtNtB1h_6endian10EndiannessEENCNvMs_NtNtB1f_3elf7sectionINtB30_12SectionTableINtB1Z_12FileHeader32B2q_EE7symbols0E0Cs8aoZCP6pRcV_7objdump: argument 0"}
!32 = distinct !{!32, !24, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader32NtNtBa_6endian10EndiannessEE7symbolsCs8aoZCP6pRcV_7objdump: argument 2"}
!33 = distinct !{!33, !24, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader32NtNtBa_6endian10EndiannessEE7symbolsCs8aoZCP6pRcV_7objdump: argument 1"}
!34 = distinct !{!34, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtBO_6endian10EndiannessEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB22_8adapters9enumerateINtB2V_9EnumeratepEB1W_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTNtNtBO_4read12SectionIndexB42_EENCINvNtB2X_3map12map_try_foldTjB42_EB4M_uB47_NCNvMs_NtNtB4P_3elf7sectionINtB69_12SectionTableINtBM_12FileHeader32B1u_EE9enumerate0NCINvNvB1W_4find5checkB4M_NCNvB66_7symbols0E0E0E0B47_ECs8aoZCP6pRcV_7objdump"}
!35 = distinct !{!35, !34, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtBO_6endian10EndiannessEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB22_8adapters9enumerateINtB2V_9EnumeratepEB1W_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTNtNtBO_4read12SectionIndexB42_EENCINvNtB2X_3map12map_try_foldTjB42_EB4M_uB47_NCNvMs_NtNtB4P_3elf7sectionINtB69_12SectionTableINtBM_12FileHeader32B1u_EE9enumerate0NCINvNvB1W_4find5checkB4M_NCNvB66_7symbols0E0E0E0B47_ECs8aoZCP6pRcV_7objdump: argument 1"}
!36 = distinct !{!36, !34, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtBO_6endian10EndiannessEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB22_8adapters9enumerateINtB2V_9EnumeratepEB1W_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTNtNtBO_4read12SectionIndexB42_EENCINvNtB2X_3map12map_try_foldTjB42_EB4M_uB47_NCNvMs_NtNtB4P_3elf7sectionINtB69_12SectionTableINtBM_12FileHeader32B1u_EE9enumerate0NCINvNvB1W_4find5checkB4M_NCNvB66_7symbols0E0E0E0B47_ECs8aoZCP6pRcV_7objdump: argument 0"}
!37 = distinct !{!37, !26, !"_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB2b_6endian10EndiannessEuINtNtNtBf_3ops12control_flow11ControlFlowTNtNtB2b_4read12SectionIndexB25_EENCINvNtBb_3map12map_try_foldTjB25_EB3Z_uB3k_NCNvMs_NtNtB42_3elf7sectionINtB5m_12SectionTableINtB29_12FileHeader32B2R_EE9enumerate0NCINvNvB1e_4find5checkB3Z_NCNvB5j_7symbols0E0E0E0Cs8aoZCP6pRcV_7objdump: argument 0"}
!38 = distinct !{!38, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader32NtNtBa_6endian10EndiannessEE7symbolsCs8aoZCP6pRcV_7objdump"}
!39 = distinct !{!39, !38, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader32NtNtBa_6endian10EndiannessEE7symbolsCs8aoZCP6pRcV_7objdump: argument 0"}
!40 = distinct !{!40, !"_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB2b_6endian10EndiannessEuINtNtNtBf_3ops12control_flow11ControlFlowTNtNtB2b_4read12SectionIndexB25_EENCINvNtBb_3map12map_try_foldTjB25_EB3Z_uB3k_NCNvMs_NtNtB42_3elf7sectionINtB5m_12SectionTableINtB29_12FileHeader32B2R_EE9enumerate0NCINvNvB1e_4find5checkB3Z_NCNvB5j_7symbols0E0E0E0Cs8aoZCP6pRcV_7objdump"}
!41 = distinct !{!41, !40, !"_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB2b_6endian10EndiannessEuINtNtNtBf_3ops12control_flow11ControlFlowTNtNtB2b_4read12SectionIndexB25_EENCINvNtBb_3map12map_try_foldTjB25_EB3Z_uB3k_NCNvMs_NtNtB42_3elf7sectionINtB5m_12SectionTableINtB29_12FileHeader32B2R_EE9enumerate0NCINvNvB1e_4find5checkB3Z_NCNvB5j_7symbols0E0E0E0Cs8aoZCP6pRcV_7objdump: argument 1"}
!42 = distinct !{!42, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldTjRINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB17_6endian10EndiannessEETNtNtB17_4read12SectionIndexB11_EuINtNtNtBa_3ops12control_flow11ControlFlowB2g_ENCNvMs_NtNtB2j_3elf7sectionINtB3F_12SectionTableINtB15_12FileHeader32B1N_EE9enumerate0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2g_NCNvB3C_7symbols0E0E0Cs8aoZCP6pRcV_7objdump"}
!43 = distinct !{!43, !42, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldTjRINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB17_6endian10EndiannessEETNtNtB17_4read12SectionIndexB11_EuINtNtNtBa_3ops12control_flow11ControlFlowB2g_ENCNvMs_NtNtB2j_3elf7sectionINtB3F_12SectionTableINtB15_12FileHeader32B1N_EE9enumerate0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2g_NCNvB3C_7symbols0E0E0Cs8aoZCP6pRcV_7objdump: argument 0"}
!44 = distinct !{!44, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkTNtNtCseHTIzroA4w0_6object4read12SectionIndexRINtNtB1h_3elf15SectionHeader32NtNtB1h_6endian10EndiannessEENCNvMs_NtNtB1f_3elf7sectionINtB30_12SectionTableINtB1Z_12FileHeader32B2q_EE7symbols0E0Cs8aoZCP6pRcV_7objdump"}
!45 = distinct !{!45, !44, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkTNtNtCseHTIzroA4w0_6object4read12SectionIndexRINtNtB1h_3elf15SectionHeader32NtNtB1h_6endian10EndiannessEENCNvMs_NtNtB1f_3elf7sectionINtB30_12SectionTableINtB1Z_12FileHeader32B2q_EE7symbols0E0Cs8aoZCP6pRcV_7objdump: argument 0"}
!46 = distinct !{!46, !38, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader32NtNtBa_6endian10EndiannessEE7symbolsCs8aoZCP6pRcV_7objdump: argument 2"}
!47 = distinct !{!47, !38, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader32NtNtBa_6endian10EndiannessEE7symbolsCs8aoZCP6pRcV_7objdump: argument 1"}
!48 = distinct !{!48, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtBO_6endian10EndiannessEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB22_8adapters9enumerateINtB2V_9EnumeratepEB1W_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTNtNtBO_4read12SectionIndexB42_EENCINvNtB2X_3map12map_try_foldTjB42_EB4M_uB47_NCNvMs_NtNtB4P_3elf7sectionINtB69_12SectionTableINtBM_12FileHeader32B1u_EE9enumerate0NCINvNvB1W_4find5checkB4M_NCNvB66_7symbols0E0E0E0B47_ECs8aoZCP6pRcV_7objdump"}
!49 = distinct !{!49, !48, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtBO_6endian10EndiannessEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB22_8adapters9enumerateINtB2V_9EnumeratepEB1W_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTNtNtBO_4read12SectionIndexB42_EENCINvNtB2X_3map12map_try_foldTjB42_EB4M_uB47_NCNvMs_NtNtB4P_3elf7sectionINtB69_12SectionTableINtBM_12FileHeader32B1u_EE9enumerate0NCINvNvB1W_4find5checkB4M_NCNvB66_7symbols0E0E0E0B47_ECs8aoZCP6pRcV_7objdump: argument 1"}
!50 = distinct !{!50, !48, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtBO_6endian10EndiannessEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB22_8adapters9enumerateINtB2V_9EnumeratepEB1W_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTNtNtBO_4read12SectionIndexB42_EENCINvNtB2X_3map12map_try_foldTjB42_EB4M_uB47_NCNvMs_NtNtB4P_3elf7sectionINtB69_12SectionTableINtBM_12FileHeader32B1u_EE9enumerate0NCINvNvB1W_4find5checkB4M_NCNvB66_7symbols0E0E0E0B47_ECs8aoZCP6pRcV_7objdump: argument 0"}
!51 = distinct !{!51, !40, !"_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB2b_6endian10EndiannessEuINtNtNtBf_3ops12control_flow11ControlFlowTNtNtB2b_4read12SectionIndexB25_EENCINvNtBb_3map12map_try_foldTjB25_EB3Z_uB3k_NCNvMs_NtNtB42_3elf7sectionINtB5m_12SectionTableINtB29_12FileHeader32B2R_EE9enumerate0NCINvNvB1e_4find5checkB3Z_NCNvB5j_7symbols0E0E0E0Cs8aoZCP6pRcV_7objdump: argument 0"}
!52 = !{!25}
!53 = !{!27}
!54 = !{!29}
!55 = !{!31}
!56 = !{!31, !29, !27}
!57 = !{!37, !36, !35, !25, !33, !32}
!58 = !{!31, !29, !37, !27, !36, !35, !25, !33, !32}
!59 = !{!33, !32}
!60 = !{!39}
!61 = !{!41}
!62 = !{!43}
!63 = !{!45}
!64 = !{!45, !43, !41}
!65 = !{!51, !50, !49, !39, !47, !46}
!66 = !{!45, !43, !51, !41, !50, !49, !39, !47, !46}
!67 = !{!47, !46}
!68 = distinct !{!68, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader64NtNtBa_6endian10EndiannessEE7symbolsCs8aoZCP6pRcV_7objdump"}
!69 = distinct !{!69, !68, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader64NtNtBa_6endian10EndiannessEE7symbolsCs8aoZCP6pRcV_7objdump: argument 0"}
!70 = distinct !{!70, !"_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB2b_6endian10EndiannessEuINtNtNtBf_3ops12control_flow11ControlFlowTNtNtB2b_4read12SectionIndexB25_EENCINvNtBb_3map12map_try_foldTjB25_EB3Z_uB3k_NCNvMs_NtNtB42_3elf7sectionINtB5m_12SectionTableINtB29_12FileHeader64B2R_EE9enumerate0NCINvNvB1e_4find5checkB3Z_NCNvB5j_7symbols0E0E0E0Cs8aoZCP6pRcV_7objdump"}
!71 = distinct !{!71, !70, !"_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB2b_6endian10EndiannessEuINtNtNtBf_3ops12control_flow11ControlFlowTNtNtB2b_4read12SectionIndexB25_EENCINvNtBb_3map12map_try_foldTjB25_EB3Z_uB3k_NCNvMs_NtNtB42_3elf7sectionINtB5m_12SectionTableINtB29_12FileHeader64B2R_EE9enumerate0NCINvNvB1e_4find5checkB3Z_NCNvB5j_7symbols0E0E0E0Cs8aoZCP6pRcV_7objdump: argument 1"}
!72 = distinct !{!72, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldTjRINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB17_6endian10EndiannessEETNtNtB17_4read12SectionIndexB11_EuINtNtNtBa_3ops12control_flow11ControlFlowB2g_ENCNvMs_NtNtB2j_3elf7sectionINtB3F_12SectionTableINtB15_12FileHeader64B1N_EE9enumerate0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2g_NCNvB3C_7symbols0E0E0Cs8aoZCP6pRcV_7objdump"}
!73 = distinct !{!73, !72, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldTjRINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB17_6endian10EndiannessEETNtNtB17_4read12SectionIndexB11_EuINtNtNtBa_3ops12control_flow11ControlFlowB2g_ENCNvMs_NtNtB2j_3elf7sectionINtB3F_12SectionTableINtB15_12FileHeader64B1N_EE9enumerate0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2g_NCNvB3C_7symbols0E0E0Cs8aoZCP6pRcV_7objdump: argument 0"}
!74 = distinct !{!74, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkTNtNtCseHTIzroA4w0_6object4read12SectionIndexRINtNtB1h_3elf15SectionHeader64NtNtB1h_6endian10EndiannessEENCNvMs_NtNtB1f_3elf7sectionINtB30_12SectionTableINtB1Z_12FileHeader64B2q_EE7symbols0E0Cs8aoZCP6pRcV_7objdump"}
!75 = distinct !{!75, !74, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkTNtNtCseHTIzroA4w0_6object4read12SectionIndexRINtNtB1h_3elf15SectionHeader64NtNtB1h_6endian10EndiannessEENCNvMs_NtNtB1f_3elf7sectionINtB30_12SectionTableINtB1Z_12FileHeader64B2q_EE7symbols0E0Cs8aoZCP6pRcV_7objdump: argument 0"}
!76 = distinct !{!76, !68, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader64NtNtBa_6endian10EndiannessEE7symbolsCs8aoZCP6pRcV_7objdump: argument 2"}
!77 = distinct !{!77, !68, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader64NtNtBa_6endian10EndiannessEE7symbolsCs8aoZCP6pRcV_7objdump: argument 1"}
!78 = distinct !{!78, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtBO_6endian10EndiannessEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB22_8adapters9enumerateINtB2V_9EnumeratepEB1W_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTNtNtBO_4read12SectionIndexB42_EENCINvNtB2X_3map12map_try_foldTjB42_EB4M_uB47_NCNvMs_NtNtB4P_3elf7sectionINtB69_12SectionTableINtBM_12FileHeader64B1u_EE9enumerate0NCINvNvB1W_4find5checkB4M_NCNvB66_7symbols0E0E0E0B47_ECs8aoZCP6pRcV_7objdump"}
!79 = distinct !{!79, !78, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtBO_6endian10EndiannessEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB22_8adapters9enumerateINtB2V_9EnumeratepEB1W_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTNtNtBO_4read12SectionIndexB42_EENCINvNtB2X_3map12map_try_foldTjB42_EB4M_uB47_NCNvMs_NtNtB4P_3elf7sectionINtB69_12SectionTableINtBM_12FileHeader64B1u_EE9enumerate0NCINvNvB1W_4find5checkB4M_NCNvB66_7symbols0E0E0E0B47_ECs8aoZCP6pRcV_7objdump: argument 1"}
!80 = distinct !{!80, !78, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtBO_6endian10EndiannessEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB22_8adapters9enumerateINtB2V_9EnumeratepEB1W_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTNtNtBO_4read12SectionIndexB42_EENCINvNtB2X_3map12map_try_foldTjB42_EB4M_uB47_NCNvMs_NtNtB4P_3elf7sectionINtB69_12SectionTableINtBM_12FileHeader64B1u_EE9enumerate0NCINvNvB1W_4find5checkB4M_NCNvB66_7symbols0E0E0E0B47_ECs8aoZCP6pRcV_7objdump: argument 0"}
!81 = distinct !{!81, !70, !"_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB2b_6endian10EndiannessEuINtNtNtBf_3ops12control_flow11ControlFlowTNtNtB2b_4read12SectionIndexB25_EENCINvNtBb_3map12map_try_foldTjB25_EB3Z_uB3k_NCNvMs_NtNtB42_3elf7sectionINtB5m_12SectionTableINtB29_12FileHeader64B2R_EE9enumerate0NCINvNvB1e_4find5checkB3Z_NCNvB5j_7symbols0E0E0E0Cs8aoZCP6pRcV_7objdump: argument 0"}
!82 = distinct !{!82, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader64NtNtBa_6endian10EndiannessEE7symbolsCs8aoZCP6pRcV_7objdump"}
!83 = distinct !{!83, !82, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader64NtNtBa_6endian10EndiannessEE7symbolsCs8aoZCP6pRcV_7objdump: argument 0"}
!84 = distinct !{!84, !"_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB2b_6endian10EndiannessEuINtNtNtBf_3ops12control_flow11ControlFlowTNtNtB2b_4read12SectionIndexB25_EENCINvNtBb_3map12map_try_foldTjB25_EB3Z_uB3k_NCNvMs_NtNtB42_3elf7sectionINtB5m_12SectionTableINtB29_12FileHeader64B2R_EE9enumerate0NCINvNvB1e_4find5checkB3Z_NCNvB5j_7symbols0E0E0E0Cs8aoZCP6pRcV_7objdump"}
!85 = distinct !{!85, !84, !"_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB2b_6endian10EndiannessEuINtNtNtBf_3ops12control_flow11ControlFlowTNtNtB2b_4read12SectionIndexB25_EENCINvNtBb_3map12map_try_foldTjB25_EB3Z_uB3k_NCNvMs_NtNtB42_3elf7sectionINtB5m_12SectionTableINtB29_12FileHeader64B2R_EE9enumerate0NCINvNvB1e_4find5checkB3Z_NCNvB5j_7symbols0E0E0E0Cs8aoZCP6pRcV_7objdump: argument 1"}
!86 = distinct !{!86, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldTjRINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB17_6endian10EndiannessEETNtNtB17_4read12SectionIndexB11_EuINtNtNtBa_3ops12control_flow11ControlFlowB2g_ENCNvMs_NtNtB2j_3elf7sectionINtB3F_12SectionTableINtB15_12FileHeader64B1N_EE9enumerate0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2g_NCNvB3C_7symbols0E0E0Cs8aoZCP6pRcV_7objdump"}
!87 = distinct !{!87, !86, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldTjRINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB17_6endian10EndiannessEETNtNtB17_4read12SectionIndexB11_EuINtNtNtBa_3ops12control_flow11ControlFlowB2g_ENCNvMs_NtNtB2j_3elf7sectionINtB3F_12SectionTableINtB15_12FileHeader64B1N_EE9enumerate0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2g_NCNvB3C_7symbols0E0E0Cs8aoZCP6pRcV_7objdump: argument 0"}
!88 = distinct !{!88, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkTNtNtCseHTIzroA4w0_6object4read12SectionIndexRINtNtB1h_3elf15SectionHeader64NtNtB1h_6endian10EndiannessEENCNvMs_NtNtB1f_3elf7sectionINtB30_12SectionTableINtB1Z_12FileHeader64B2q_EE7symbols0E0Cs8aoZCP6pRcV_7objdump"}
!89 = distinct !{!89, !88, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkTNtNtCseHTIzroA4w0_6object4read12SectionIndexRINtNtB1h_3elf15SectionHeader64NtNtB1h_6endian10EndiannessEENCNvMs_NtNtB1f_3elf7sectionINtB30_12SectionTableINtB1Z_12FileHeader64B2q_EE7symbols0E0Cs8aoZCP6pRcV_7objdump: argument 0"}
!90 = distinct !{!90, !82, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader64NtNtBa_6endian10EndiannessEE7symbolsCs8aoZCP6pRcV_7objdump: argument 2"}
!91 = distinct !{!91, !82, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader64NtNtBa_6endian10EndiannessEE7symbolsCs8aoZCP6pRcV_7objdump: argument 1"}
!92 = distinct !{!92, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtBO_6endian10EndiannessEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB22_8adapters9enumerateINtB2V_9EnumeratepEB1W_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTNtNtBO_4read12SectionIndexB42_EENCINvNtB2X_3map12map_try_foldTjB42_EB4M_uB47_NCNvMs_NtNtB4P_3elf7sectionINtB69_12SectionTableINtBM_12FileHeader64B1u_EE9enumerate0NCINvNvB1W_4find5checkB4M_NCNvB66_7symbols0E0E0E0B47_ECs8aoZCP6pRcV_7objdump"}
!93 = distinct !{!93, !92, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtBO_6endian10EndiannessEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB22_8adapters9enumerateINtB2V_9EnumeratepEB1W_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTNtNtBO_4read12SectionIndexB42_EENCINvNtB2X_3map12map_try_foldTjB42_EB4M_uB47_NCNvMs_NtNtB4P_3elf7sectionINtB69_12SectionTableINtBM_12FileHeader64B1u_EE9enumerate0NCINvNvB1W_4find5checkB4M_NCNvB66_7symbols0E0E0E0B47_ECs8aoZCP6pRcV_7objdump: argument 1"}
!94 = distinct !{!94, !92, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtBO_6endian10EndiannessEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB22_8adapters9enumerateINtB2V_9EnumeratepEB1W_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTNtNtBO_4read12SectionIndexB42_EENCINvNtB2X_3map12map_try_foldTjB42_EB4M_uB47_NCNvMs_NtNtB4P_3elf7sectionINtB69_12SectionTableINtBM_12FileHeader64B1u_EE9enumerate0NCINvNvB1W_4find5checkB4M_NCNvB66_7symbols0E0E0E0B47_ECs8aoZCP6pRcV_7objdump: argument 0"}
!95 = distinct !{!95, !84, !"_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB2b_6endian10EndiannessEuINtNtNtBf_3ops12control_flow11ControlFlowTNtNtB2b_4read12SectionIndexB25_EENCINvNtBb_3map12map_try_foldTjB25_EB3Z_uB3k_NCNvMs_NtNtB42_3elf7sectionINtB5m_12SectionTableINtB29_12FileHeader64B2R_EE9enumerate0NCINvNvB1e_4find5checkB3Z_NCNvB5j_7symbols0E0E0E0Cs8aoZCP6pRcV_7objdump: argument 0"}
!96 = !{!69}
!97 = !{!71}
!98 = !{!73}
!99 = !{!75}
!100 = !{!75, !73, !71}
!101 = !{!81, !80, !79, !69, !77, !76}
!102 = !{!75, !73, !81, !71, !80, !79, !69, !77, !76}
!103 = !{!77, !76}
!104 = !{!83}
!105 = !{!85}
!106 = !{!87}
!107 = !{!89}
!108 = !{!89, !87, !85}
!109 = !{!95, !94, !93, !83, !91, !90}
!110 = !{!89, !87, !95, !85, !94, !93, !83, !91, !90}
!111 = !{!91, !90}
!112 = distinct !{!112, !"_RINvMs2_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB6_17DyldChainedImport5parseNtNtBc_6endian10EndiannessECs8aoZCP6pRcV_7objdump"}
!113 = distinct !{!113, !112, !"_RINvMs2_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB6_17DyldChainedImport5parseNtNtBc_6endian10EndiannessECs8aoZCP6pRcV_7objdump: argument 2"}
!114 = distinct !{!114, !112, !"_RINvMs2_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB6_17DyldChainedImport5parseNtNtBc_6endian10EndiannessECs8aoZCP6pRcV_7objdump: argument 1"}
!115 = distinct !{!115, !112, !"_RINvMs2_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB6_17DyldChainedImport5parseNtNtBc_6endian10EndiannessECs8aoZCP6pRcV_7objdump: argument 0"}
!116 = distinct !{!116, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string"}
!117 = distinct !{!117, !116, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string: argument 0"}
!118 = distinct !{!118, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump"}
!119 = distinct !{!119, !118, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump: argument 0"}
!120 = distinct !{null, null, null}
!121 = !{!113}
!122 = !{!115, !114}
!123 = !{!"address", !"read_provenance"}
!124 = !{!115, !114, !113}
!125 = !{!119, !117, !115, !114, !113}
!126 = !{!119, !117, !115, !113}
!127 = !{!117, !115, !113}
!128 = distinct !{!128, !"_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump"}
!129 = distinct !{!129, !128, !"_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump: argument 1"}
!130 = distinct !{!130, !128, !"_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump: argument 0"}
!131 = !{!129}
!132 = !{!130}
!133 = distinct !{!133, !"_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump"}
!134 = distinct !{!134, !133, !"_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump: argument 1"}
!135 = distinct !{!135, !133, !"_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump: argument 0"}
!136 = !{!134}
!137 = !{!135}
!138 = distinct !{!138, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string"}
!139 = distinct !{!139, !138, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string: argument 0"}
!140 = distinct !{!140, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump"}
!141 = distinct !{!141, !140, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump: argument 0"}
!142 = !{!141, !139}
!143 = !{!139}
!144 = distinct !{!144, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string"}
!145 = distinct !{!145, !144, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string: argument 0"}
!146 = distinct !{!146, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump"}
!147 = distinct !{!147, !146, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump: argument 0"}
!148 = !{!147, !145}
!149 = !{!145}
!150 = distinct !{!150, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string"}
!151 = distinct !{!151, !150, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string: argument 0"}
!152 = distinct !{!152, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump"}
!153 = distinct !{!153, !152, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump: argument 0"}
!154 = !{!153, !151}
!155 = !{!151}
!156 = distinct !{!156, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string"}
!157 = distinct !{!157, !156, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string: argument 0"}
!158 = distinct !{!158, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump"}
!159 = distinct !{!159, !158, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump: argument 0"}
!160 = !{!159, !157}
!161 = !{!157}
!162 = !{i64 4}
!163 = !{i64 2}
!164 = distinct !{!164, !"_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCseHTIzroA4w0_6object2pe18ImageSectionHeaderEENtNtNtB8_6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump"}
!165 = distinct !{!165, !164, !"_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCseHTIzroA4w0_6object2pe18ImageSectionHeaderEENtNtNtB8_6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump: argument 0"}
!166 = distinct !{!166, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCseHTIzroA4w0_6object2pe18ImageSectionHeaderENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump"}
!167 = distinct !{!167, !166, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCseHTIzroA4w0_6object2pe18ImageSectionHeaderENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump: argument 0"}
!168 = !{!167, !165}
!169 = !{!165}
!170 = distinct !{!170, !"_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCseHTIzroA4w0_6object2pe18ImageSectionHeaderEENtNtNtB8_6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump"}
!171 = distinct !{!171, !170, !"_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCseHTIzroA4w0_6object2pe18ImageSectionHeaderEENtNtNtB8_6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump: argument 0"}
!172 = distinct !{!172, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCseHTIzroA4w0_6object2pe18ImageSectionHeaderENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump"}
!173 = distinct !{!173, !172, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCseHTIzroA4w0_6object2pe18ImageSectionHeaderENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump: argument 0"}
!174 = !{!173, !171}
!175 = !{!171}
!176 = distinct !{!176, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump"}
!177 = distinct !{!177, !176, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump: argument 0"}
!178 = !{!177}
!179 = distinct !{!179, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump"}
!180 = distinct !{!180, !179, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0Cs8aoZCP6pRcV_7objdump: argument 0"}
!181 = !{!180}
end_hunk_2
