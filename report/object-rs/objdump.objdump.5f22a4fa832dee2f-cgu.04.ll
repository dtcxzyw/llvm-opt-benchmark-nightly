Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/objdump.objdump.5f22a4fa832dee2f-cgu.04?download=true
inline.NumInlined: 86
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string:bb.a
  store ptr %storemerge9, ptr %0, align 8
  store i64 %storemerge, ptr %i.b, align 8
  %i.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %.sroa.3.0.i15, 1
  ret { ptr, i64 } %i.j

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i64, ptr } %i.f, 1
  %i.l = tail call noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCs8aoZCP6pRcV_7objdump(ptr noundef %i.k, ptr noundef nonnull readonly %i.a) ; 4 uses
  %.not.i = icmp ult i64 %i.l, %i.c
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.l
  %i.n = xor i64 %i.l, -1
  %i.o = add i64 %i.c, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  br label %_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs8aoZCP6pRcV_7objdump.exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i8 0, 12) i8 @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read2pe4fileINtB5_6PeFileNtNtBb_2pe16ImageNtHeaders32ENtNtB9_6traits6Object12architectureCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.01.0.copyload = load i16, ptr %i.c, align 1
  switch i16 %.sroa.01.0.copyload, label %bb.f [
    i16 452, label %bb.b
    i16 -21916, label %bb.c
    i16 -22975, label %bb.c
    i16 332, label %bb.d
    i16 -31132, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.a
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 11, %bb.e ], [ 4, %bb.b ], [ 1, %bb.c ], [ 10, %bb.d ], [ 0, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read2pe4fileINtB5_6PeFileNtNtBb_2pe16ImageNtHeaders32ENtNtB9_6traits6Object16import_librariesCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs9_NtNtNtCseHTIzroA4w0_6object4read2pe6importINtB5_23PeImportLibraryIteratorNtNtBb_2pe16ImageNtHeaders32E3newCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i8 0, 4) i8 @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read2pe4fileINtB5_6PeFileNtNtBb_2pe16ImageNtHeaders32ENtNtB9_6traits6Object4kindCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %.sroa.01.0.copyload = load i16, ptr %i.c, align 1 ; 2 uses
  %i.d = and i16 %.sroa.01.0.copyload, 8192
  %.not = icmp eq i16 %i.d, 0
  %i.e = and i16 %.sroa.01.0.copyload, 4096
  %.not2 = icmp eq i16 %i.e, 0
  %. = select i1 %.not2, i8 2, i8 0
  %.sroa.0.0 = select i1 %.not, i8 %., i8 3
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read2pe4fileINtB5_6PeFileNtNtBb_2pe16ImageNtHeaders32ENtNtB9_6traits6Object5entryCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %.val = load i32, ptr %i.c, align 1
  %i.d = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_12LittleEndianE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val)
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i64, ptr %i.f, align 8, !noundef !6
  %i.h = add i64 %i.g, %i.e
  ret i64 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read2pe4fileINtB5_6PeFileNtNtBb_2pe16ImageNtHeaders32ENtNtB9_6traits6Object7exportsCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMs6_NtNtNtCseHTIzroA4w0_6object4read2pe6exportNtB6_16PeExportIterator3newNtNtBc_2pe16ImageNtHeaders32ECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read2pe4fileINtB5_6PeFileNtNtBb_2pe16ImageNtHeaders32ENtNtB9_6traits6Object7importsCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsc_NtNtNtCseHTIzroA4w0_6object4read2pe6importINtB5_16PeImportIteratorNtNtBb_2pe16ImageNtHeaders32E3newCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read2pe4fileINtB5_6PeFileNtNtBb_2pe16ImageNtHeaders32ENtNtB9_6traits6Object8pdb_infoCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = tail call noundef ptr @_RNvMNtNtNtCseHTIzroA4w0_6object4read2pe14data_directoryNtB2_15DataDirectories3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, i64 noundef 6) ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.i = load i64, ptr %i.h, align 8, !noundef !6 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_RINvMs_NtNtNtCseHTIzroA4w0_6object4read2pe14data_directoryNtNtBb_2pe18ImageDataDirectory4dataRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
  %i.k = load i64, ptr %i.c, align 8, !range !11, !noundef !6
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.l, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.w, %._crit_edge, %bb.g, %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.r, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.s = urem i64 %i.p, 28
  %.not.i.not = icmp eq i64 %i.s, 0
  br i1 %.not.i.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @39, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 25, ptr %i.u, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.w = icmp ult i64 %i.p, 28
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.x
  %.sroa.019.0118 = phi ptr [ %i.n, %.lr.ph ], [ %i.y, %bb.x ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.019.0118, i64 28 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.019.0118, i64 12
  %.sroa.093.0.copyload = load i32, ptr %i.z, align 1
  %.not97 = icmp eq i32 %.sroa.093.0.copyload, 2
  br i1 %.not97, label %bb.j, label %bb.x

._crit_edge:                                      ; preds = %bb.x, %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.019.0118, i64 24
  %.sroa.094.0.copyload = load i32, ptr %i.aa, align 1
  %i.ab = zext i32 %.sroa.094.0.copyload to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.019.0118, i64 16
  %.sroa.095.0.copyload = load i32, ptr %i.ac, align 1
  %i.ad = zext i32 %.sroa.095.0.copyload to i64
  %i.ae = tail call { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_athECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, i64 noundef %i.ab, i64 noundef %i.ad) ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ae, 0      ; 5 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @38, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 29, ptr %i.ai, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.l:                                             ; preds = %bb.j
  %i.aj = extractvalue { ptr, i64 } %i.ae, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not.i99 = icmp ult i64 %i.aj, 4
  br i1 %.not.i99, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @37, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 26, ptr %i.al, align 8
  store i64 1, ptr %0, align 8
  br label %bb.w

bb.n:                                             ; preds = %bb.l
  %i.am = load i32, ptr %i.af, align 1, !noundef !6
  %.not98 = icmp eq i32 %i.am, 1396986706
  br i1 %.not98, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i101 = icmp ult i64 %i.aj, 20
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %storemerge.i103 = tail call i64 @llvm.usub.sat.i64(i64 %i.aj, i64 20)
  br i1 %.not.i101, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8aoZCP6pRcV_7objdump.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @36, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 21, ptr %i.ap, align 8
  br label %bb.v

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.aq, i64 16, i1 false)
  %i.ar = icmp ult i64 %i.aj, 24
  br i1 %i.ar, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8aoZCP6pRcV_7objdump.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @35, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 20, ptr %i.at, align 8
  br label %bb.v

bb.s:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8aoZCP6pRcV_7objdump.exit
  %i.au = add nsw i64 %storemerge.i103, -4
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.av, ptr %i.b, align 8, !captures !10
  store i64 %i.au, ptr %i.x, align 8
  %i.aw = call fastcc { ptr, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b) #14 ; 2 uses
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0      ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @34, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 26, ptr %i.ba, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bb = extractvalue { ptr, i64 } %i.aw, 1
  %.sroa.096.0.copyload = load i32, ptr %i.an, align 1
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.588.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.bc, align 8
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bb, ptr %.sroa.487.0..sroa_idx, align 8
  %.sroa.689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.096.0.copyload, ptr %.sroa.689.0..sroa_idx, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r, %bb.q
  %.sink = phi i64 [ 0, %bb.u ], [ 1, %bb.t ], [ 1, %bb.r ], [ 1, %bb.q ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.x:                                             ; preds = %bb.i, %bb.p
  %i.bd = icmp eq ptr %i.y, %i.v
  br i1 %i.bd, label %._crit_edge, label %bb.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i8 0, 12) i8 @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read2pe4fileINtB5_6PeFileNtNtBb_2pe16ImageNtHeaders64ENtNtB9_6traits6Object12architectureCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.01.0.copyload = load i16, ptr %i.c, align 1
  switch i16 %.sroa.01.0.copyload, label %bb.f [
    i16 452, label %bb.b
    i16 -21916, label %bb.c
    i16 -22975, label %bb.c
    i16 332, label %bb.d
    i16 -31132, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.a
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 11, %bb.e ], [ 4, %bb.b ], [ 1, %bb.c ], [ 10, %bb.d ], [ 0, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read2pe4fileINtB5_6PeFileNtNtBb_2pe16ImageNtHeaders64ENtNtB9_6traits6Object16import_librariesCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs9_NtNtNtCseHTIzroA4w0_6object4read2pe6importINtB5_23PeImportLibraryIteratorNtNtBb_2pe16ImageNtHeaders64E3newCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i8 0, 4) i8 @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read2pe4fileINtB5_6PeFileNtNtBb_2pe16ImageNtHeaders64ENtNtB9_6traits6Object4kindCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %.sroa.01.0.copyload = load i16, ptr %i.c, align 1 ; 2 uses
  %i.d = and i16 %.sroa.01.0.copyload, 8192
  %.not = icmp eq i16 %i.d, 0
  %i.e = and i16 %.sroa.01.0.copyload, 4096
  %.not2 = icmp eq i16 %i.e, 0
  %. = select i1 %.not2, i8 2, i8 0
  %.sroa.0.0 = select i1 %.not, i8 %., i8 3
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read2pe4fileINtB5_6PeFileNtNtBb_2pe16ImageNtHeaders64ENtNtB9_6traits6Object5entryCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %.val = load i32, ptr %i.c, align 1
  %i.d = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_12LittleEndianE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val)
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i64, ptr %i.f, align 8, !noundef !6
  %i.h = add i64 %i.g, %i.e
  ret i64 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read2pe4fileINtB5_6PeFileNtNtBb_2pe16ImageNtHeaders64ENtNtB9_6traits6Object7exportsCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMs6_NtNtNtCseHTIzroA4w0_6object4read2pe6exportNtB6_16PeExportIterator3newNtNtBc_2pe16ImageNtHeaders64ECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read2pe4fileINtB5_6PeFileNtNtBb_2pe16ImageNtHeaders64ENtNtB9_6traits6Object7importsCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsc_NtNtNtCseHTIzroA4w0_6object4read2pe6importINtB5_16PeImportIteratorNtNtBb_2pe16ImageNtHeaders64E3newCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read2pe4fileINtB5_6PeFileNtNtBb_2pe16ImageNtHeaders64ENtNtB9_6traits6Object8pdb_infoCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = tail call noundef ptr @_RNvMNtNtNtCseHTIzroA4w0_6object4read2pe14data_directoryNtB2_15DataDirectories3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, i64 noundef 6) ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.i = load i64, ptr %i.h, align 8, !noundef !6 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_RINvMs_NtNtNtCseHTIzroA4w0_6object4read2pe14data_directoryNtNtBb_2pe18ImageDataDirectory4dataRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
  %i.k = load i64, ptr %i.c, align 8, !range !11, !noundef !6
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.l, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.w, %._crit_edge, %bb.g, %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.r, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.s = urem i64 %i.p, 28
  %.not.i.not = icmp eq i64 %i.s, 0
  br i1 %.not.i.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @39, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 25, ptr %i.u, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.w = icmp ult i64 %i.p, 28
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.x
  %.sroa.019.0118 = phi ptr [ %i.n, %.lr.ph ], [ %i.y, %bb.x ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.019.0118, i64 28 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.019.0118, i64 12
  %.sroa.093.0.copyload = load i32, ptr %i.z, align 1
  %.not97 = icmp eq i32 %.sroa.093.0.copyload, 2
  br i1 %.not97, label %bb.j, label %bb.x

._crit_edge:                                      ; preds = %bb.x, %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.019.0118, i64 24
  %.sroa.094.0.copyload = load i32, ptr %i.aa, align 1
  %i.ab = zext i32 %.sroa.094.0.copyload to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.019.0118, i64 16
  %.sroa.095.0.copyload = load i32, ptr %i.ac, align 1
  %i.ad = zext i32 %.sroa.095.0.copyload to i64
  %i.ae = tail call { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_athECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, i64 noundef %i.ab, i64 noundef %i.ad) ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ae, 0      ; 5 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @38, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 29, ptr %i.ai, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.l:                                             ; preds = %bb.j
  %i.aj = extractvalue { ptr, i64 } %i.ae, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not.i99 = icmp ult i64 %i.aj, 4
  br i1 %.not.i99, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @37, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 26, ptr %i.al, align 8
  store i64 1, ptr %0, align 8
  br label %bb.w

bb.n:                                             ; preds = %bb.l
  %i.am = load i32, ptr %i.af, align 1, !noundef !6
  %.not98 = icmp eq i32 %i.am, 1396986706
  br i1 %.not98, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i101 = icmp ult i64 %i.aj, 20
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %storemerge.i103 = tail call i64 @llvm.usub.sat.i64(i64 %i.aj, i64 20)
  br i1 %.not.i101, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8aoZCP6pRcV_7objdump.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @36, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 21, ptr %i.ap, align 8
  br label %bb.v

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.aq, i64 16, i1 false)
  %i.ar = icmp ult i64 %i.aj, 24
  br i1 %i.ar, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8aoZCP6pRcV_7objdump.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @35, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 20, ptr %i.at, align 8
  br label %bb.v

bb.s:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8aoZCP6pRcV_7objdump.exit
  %i.au = add nsw i64 %storemerge.i103, -4
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.av, ptr %i.b, align 8, !captures !10
  store i64 %i.au, ptr %i.x, align 8
  %i.aw = call fastcc { ptr, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b) #14 ; 2 uses
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0      ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @34, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 26, ptr %i.ba, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bb = extractvalue { ptr, i64 } %i.aw, 1
  %.sroa.096.0.copyload = load i32, ptr %i.an, align 1
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.588.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.bc, align 8
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bb, ptr %.sroa.487.0..sroa_idx, align 8
  %.sroa.689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.096.0.copyload, ptr %.sroa.689.0..sroa_idx, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r, %bb.q
  %.sink = phi i64 [ 0, %bb.u ], [ 1, %bb.t ], [ 1, %bb.r ], [ 1, %bb.q ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.x:                                             ; preds = %bb.i, %bb.p
  %i.bd = icmp eq ptr %i.y, %i.v
  br i1 %i.bd, label %._crit_edge, label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1G_NtCskKLDkoKarTP_4core3fmtTyNtNtCseHTIzroA4w0_6object4read10RelocationENtB6_5Debug3fmtCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40) ; 0 uses
  %i.f = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @41) ; 0 uses
  %i.g = call noundef zeroext i1 @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCseHTIzroA4w0_6object4read10RelocationNtB6_5Debug3fmtCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !12, !noundef !6
  %i.b = tail call noundef zeroext i1 @_RNvXsl_NtCseHTIzroA4w0_6object4readNtB5_10RelocationNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCseHTIzroA4w0_6object4read11SymbolIndexNtB6_5Debug3fmtCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !12, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !124
  store ptr %i.b, ptr %i.a, align 8, !noalias !124
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !124
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCseHTIzroA4w0_6object4read12SectionIndexNtB6_5Debug3fmtCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !12, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !128
  store ptr %i.b, ptr %i.a, align 8, !noalias !128
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !128
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCseHTIzroA4w0_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader32NtNtBb_6endian10EndiannessEENtNtB9_6traits13ObjectSection11relocationsCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !6, !align !12, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.f = load i8, ptr %i.e, align 8, !range !8, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !noundef !6
  call void @_RINvYINtNtCseHTIzroA4w0_6object5macho9Section32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho7section7Section11relocationsRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(68) %i.d, i1 noundef zeroext %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !11, !noundef !6
  %i.m = trunc nuw i64 %i.l to i1                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !6
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8
  %.sroa.4.0 = select i1 %i.m, i64 0, i64 %i.q
  %.sroa.0.0 = select i1 %i.m, ptr inttoptr (i64 1 to ptr), ptr %i.o ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %.sroa.4.0
  store ptr %i.b, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %i.t, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCseHTIzroA4w0_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader32NtNtBb_6endian10EndiannessEENtNtB9_6traits13ObjectSection5flagsCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !6, !align !12, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !8, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = tail call noundef i32 @_RNvXs5_NtNtNtCseHTIzroA4w0_6object4read5macho7sectionINtNtBb_5macho9Section32NtNtBb_6endian10EndiannessENtB5_7Section5flagsCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(68) %i.b, i1 noundef zeroext %i.f)
  %i.h = load i8, ptr %i.d, align 8, !range !8, !noundef !6
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = tail call noundef i32 @_RNvXs5_NtNtNtCseHTIzroA4w0_6object4read5macho7sectionINtNtBb_5macho9Section32NtNtBb_6endian10EndiannessENtB5_7Section9reserved2Cs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(68) %i.b, i1 noundef zeroext %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.g, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %i.l, align 8
  store i32 2, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCseHTIzroA4w0_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader64NtNtBb_6endian10EndiannessEENtNtB9_6traits13ObjectSection11relocationsCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !6, !align !12, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.f = load i8, ptr %i.e, align 8, !range !8, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !noundef !6
  call void @_RINvYINtNtCseHTIzroA4w0_6object5macho9Section64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho7section7Section11relocationsRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(80) %i.d, i1 noundef zeroext %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !11, !noundef !6
  %i.m = trunc nuw i64 %i.l to i1                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !6
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8
  %.sroa.4.0 = select i1 %i.m, i64 0, i64 %i.q
  %.sroa.0.0 = select i1 %i.m, ptr inttoptr (i64 1 to ptr), ptr %i.o ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %.sroa.4.0
  store ptr %i.b, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %i.t, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCseHTIzroA4w0_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader64NtNtBb_6endian10EndiannessEENtNtB9_6traits13ObjectSection5flagsCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
end_hunk_0
