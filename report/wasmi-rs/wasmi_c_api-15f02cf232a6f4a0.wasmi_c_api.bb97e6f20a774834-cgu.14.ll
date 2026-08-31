Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi_c_api-15f02cf232a6f4a0.wasmi_c_api.bb97e6f20a774834-cgu.14?download=true
inline.NumInlined: 199
inline.NumDeleted: 154
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsG258MDvU3F_3std4path7PathBufENtNtB7_3fmt5Debug3fmtCsg6ypMx2A1Am_11wasmi_c_api:bb.a
bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENtNtNtB8_6traits8iterator8Iterator9size_hintCsg6ypMx2A1Am_11wasmi_c_api(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #8 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  store i64 %i.d, ptr %0, align 8, !alias.scope !366
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.e, align 8, !alias.scope !366
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.f, align 8, !alias.scope !366
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsa_NtCskKLDkoKarTP_4core5arrayAhj10_NtNtB7_3fmt5Debug3fmtCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef 16, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB5_21BinaryReaderErrorKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !300, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 7, i64 6
  %.1 = select i1 %i.b, ptr @90, ptr @82
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXse_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSNtNtCsefoF4u9kbII_5wasmi5value3ValENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.1014.i = alloca [3 x i8], align 1        ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !372
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !372
  %i.f = load i64, ptr %i.a, align 8, !range !307, !noalias !372, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !374, !noalias !372, !noundef !5 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg6ypMx2A1Am_11wasmi_c_api.exit.i, !prof !288

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !372
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #18, !noalias !372
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg6ypMx2A1Am_11wasmi_c_api.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !372, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = icmp samesign ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !372
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.e
  %i.o = icmp eq i64 %i.i, 0
  br i1 %i.o, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsefoF4u9kbII_5wasmi5value3ValNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsg6ypMx2A1Am_11wasmi_c_api.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg6ypMx2A1Am_11wasmi_c_api.exit.i, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %.sroa.012.044.i = phi ptr [ %i.r, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.c, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg6ypMx2A1Am_11wasmi_c_api.exit.i ] ; 15 uses
  %.sroa.7.043.i = phi i64 [ %i.s, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg6ypMx2A1Am_11wasmi_c_api.exit.i ] ; 2 uses
  %.sroa.10.042.i = phi i64 [ %i.p, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg6ypMx2A1Am_11wasmi_c_api.exit.i ]
  %i.p = add i64 %.sroa.10.042.i, -1              ; 2 uses
  %i.q = icmp eq ptr %.sroa.012.044.i, %i.n
  br i1 %i.q, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsefoF4u9kbII_5wasmi5value3ValNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i, i64 24
  %i.s = add nuw nsw i64 %.sroa.7.043.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1014.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.t = load i8, ptr %.sroa.012.044.i, align 8, !range !10, !alias.scope !378, !noalias !380, !noundef !5 ; 2 uses
  switch i8 %i.t, label %default.unreachable [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !alias.scope !378, !noalias !380, !noundef !5
  br label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !378, !noalias !380, !noundef !5 ; 2 uses
  %.sroa.15.sroa.0.0.extract.trunc16.i = trunc i64 %i.x to i32
  %.sroa.15.sroa.8.0.extract.shift19.i = and i64 %i.x, -4294967296
  br label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.f:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i, i64 4
  %i.z = load i32, ptr %i.y, align 4, !alias.scope !378, !noalias !380, !noundef !5
  br label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.g:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !378, !noalias !380, !noundef !5 ; 2 uses
  %.sroa.15.sroa.0.0.extract.trunc15.i = trunc i64 %i.ab to i32
  %.sroa.15.sroa.8.0.extract.shift17.i = and i64 %i.ab, -4294967296
  br label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.h:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.1014.i, ptr noundef nonnull align 1 dereferenceable(3) %i.ac, i64 3, i1 false), !alias.scope !381, !noalias !382
  %.sroa.11.1..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i, i64 4
  %.sroa.11.1.copyload.i = load i32, ptr %.sroa.11.1..sroa_idx.i, align 4, !alias.scope !383, !noalias !382
  %.sroa.15.1..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i, i64 8
  %.sroa.15.1.copyload.i = load i64, ptr %.sroa.15.1..sroa_idx.i, align 8, !alias.scope !383, !noalias !382 ; 2 uses
  %.sroa.15.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.15.1.copyload.i to i32
  %.sroa.15.sroa.8.0.extract.shift.i = and i64 %.sroa.15.1.copyload.i, -4294967296
  %.sroa.19.1..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i, i64 16
  %.sroa.19.1.copyload.i = load i8, ptr %.sroa.19.1..sroa_idx.i, align 8, !alias.scope !383, !noalias !382
  %.sroa.19.1.insert.ext.i = zext i8 %.sroa.19.1.copyload.i to i64
  br label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.i:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !alias.scope !378, !noalias !380, !noundef !5 ; 2 uses
  %.not3.i.i = icmp eq i32 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !alias.scope !378, !noalias !380
  %.sroa.5.0.i.i = select i1 %.not3.i.i, i32 undef, i32 %i.ag
  br label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.j:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !378, !noalias !380, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !alias.scope !378, !noalias !380
  %.sroa.52.0.i.i = select i1 %.not.i.i, i32 undef, i32 %i.ak
  br label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.19.sroa.0.0.i = phi i64 [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ %.sroa.19.1.insert.ext.i, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ]
  %.sroa.15.sroa.8.0.i = phi i64 [ 0, %bb.d ], [ %.sroa.15.sroa.8.0.extract.shift19.i, %bb.e ], [ 0, %bb.f ], [ %.sroa.15.sroa.8.0.extract.shift17.i, %bb.g ], [ %.sroa.15.sroa.8.0.extract.shift.i, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ]
  %.sroa.15.sroa.0.0.i = phi i32 [ undef, %bb.d ], [ %.sroa.15.sroa.0.0.extract.trunc16.i, %bb.e ], [ undef, %bb.f ], [ %.sroa.15.sroa.0.0.extract.trunc15.i, %bb.g ], [ %.sroa.15.sroa.0.0.extract.trunc.i, %bb.h ], [ %.sroa.5.0.i.i, %bb.i ], [ %.sroa.52.0.i.i, %bb.j ]
  %.sroa.11.0.i = phi i32 [ %i.v, %bb.d ], [ undef, %bb.e ], [ %i.z, %bb.f ], [ undef, %bb.g ], [ %.sroa.11.1.copyload.i, %bb.h ], [ %i.ae, %bb.i ], [ %i.ai, %bb.j ]
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.sroa.7.043.i ; 5 uses
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.431.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.1014.i, i64 3, i1 false), !noalias !372
  %.sroa.15.sroa.0.0.insert.ext.i = zext i32 %.sroa.15.sroa.0.0.i to i64
  %.sroa.15.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.15.sroa.8.0.i, %.sroa.15.sroa.0.0.insert.ext.i
  store i8 %i.t, ptr %i.al, align 8, !noalias !372
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 %.sroa.11.0.i, ptr %.sroa.532.0..sroa_idx.i, align 4, !noalias !372
  %.sroa.633.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %.sroa.15.sroa.0.0.insert.insert.i, ptr %.sroa.633.0..sroa_idx.i, align 8, !noalias !372
  %.sroa.734.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %.sroa.19.sroa.0.0.i, ptr %.sroa.734.0..sroa_idx.i, align 8, !noalias !372
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1014.i)
  %i.am = icmp eq i64 %i.p, 0
  br i1 %i.am, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsefoF4u9kbII_5wasmi5value3ValNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsg6ypMx2A1Am_11wasmi_c_api.exit, label %.lr.ph.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsefoF4u9kbII_5wasmi5value3ValNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %.lr.ph.i, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg6ypMx2A1Am_11wasmi_c_api.exit.i
  %1 = ptrtoint ptr %i.l to i64
  store i64 %i.i, ptr %i.b, align 8, !noalias !369
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !369
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !369
  %i.an = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValE16into_boxed_sliceCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.an
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXsf_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 5 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMs1_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxShE17clone_from_ref_inCsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !384
  %i.e = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 9) 1) #17, !noalias !384 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %_RNvMs1_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxShE17clone_from_ref_inCsg6ypMx2A1Am_11wasmi_c_api.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %i.c) #18, !noalias !389
  unreachable

_RNvMs1_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxShE17clone_from_ref_inCsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.a, %bb.b
  %.sroa.01.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i.i, ptr nonnull readonly align 1 %i.a, i64 range(i64 0, -9223372036854775808) %i.c, i1 false)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.01.0.i.i, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.c, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsn_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs1VvpiNK3DOA_4wast5tokenNtB5_4SpanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtCsg6ypMx2A1Am_11wasmi_c_api5frame12wasm_frame_tEEE16into_boxed_sliceB1C_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtCsg6ypMx2A1Am_11wasmi_c_api6extern13wasm_extern_tEEE16into_boxed_sliceB1C_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEE16into_boxed_sliceB1E_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types4func15wasm_functype_tEEE16into_boxed_sliceB1E_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types5table16wasm_tabletype_tEEE16into_boxed_sliceB1E_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6export17wasm_exporttype_tEEE16into_boxed_sliceB1E_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6extern17wasm_externtype_tEEE16into_boxed_sliceB1E_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6global17wasm_globaltype_tEEE16into_boxed_sliceB1E_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6import17wasm_importtype_tEEE16into_boxed_sliceB1E_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6memory17wasm_memorytype_tEEE16into_boxed_sliceB1E_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValE16into_boxed_sliceCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsg6ypMx2A1Am_11wasmi_c_api3val10wasm_val_tE16into_boxed_sliceBI_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefE16into_boxed_sliceCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE16into_boxed_sliceCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE16into_boxed_sliceCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtCsg6ypMx2A1Am_11wasmi_c_api5frame12wasm_frame_tEEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters3map3MapINtNtNtBZ_3ops5range5RangejENCNvNtB1S_3vec18wasm_frame_vec_new0EE9from_iterB1S_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtCsg6ypMx2A1Am_11wasmi_c_api6extern13wasm_extern_tEEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters3map3MapINtNtNtBZ_3ops5range5RangejENCNvNtB1S_3vec19wasm_extern_vec_new0EE9from_iterB1S_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtCsg6ypMx2A1Am_11wasmi_c_api6extern13wasm_extern_tEEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters3map3MapNtNtNtCsefoF4u9kbII_5wasmi8instance7exports11ExportsIterNCNvNtB1S_8instance21wasm_instance_exports0EE9from_iterB1S_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters3map3MapINtNtNtBZ_3ops5range5RangejENCNvNtB1U_3vec20wasm_valtype_vec_new0EE9from_iterB1U_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types4func15wasm_functype_tEEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters3map3MapINtNtNtBZ_3ops5range5RangejENCNvNtB1U_3vec21wasm_functype_vec_new0EE9from_iterB1U_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types5table16wasm_tabletype_tEEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters3map3MapINtNtNtBZ_3ops5range5RangejENCNvNtB1U_3vec22wasm_tabletype_vec_new0EE9from_iterB1U_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6export17wasm_exporttype_tEEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters3map3MapINtNtNtBZ_3ops5range5RangejENCNvNtB1U_3vec23wasm_exporttype_vec_new0EE9from_iterB1U_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6export17wasm_exporttype_tEEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters3map3MapNtNtNtCsefoF4u9kbII_5wasmi6module6export17ModuleExportsIterNCNvNtB1U_6module12fill_exports0EE9from_iterB1U_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6extern17wasm_externtype_tEEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters3map3MapINtNtNtBZ_3ops5range5RangejENCNvNtB1U_3vec23wasm_externtype_vec_new0EE9from_iterB1U_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6global17wasm_globaltype_tEEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters3map3MapINtNtNtBZ_3ops5range5RangejENCNvNtB1U_3vec23wasm_globaltype_vec_new0EE9from_iterB1U_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6import17wasm_importtype_tEEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters3map3MapINtNtNtBZ_3ops5range5RangejENCNvNtB1U_3vec23wasm_importtype_vec_new0EE9from_iterB1U_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6import17wasm_importtype_tEEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters3map3MapNtNtCsefoF4u9kbII_5wasmi6module17ModuleImportsIterNCNvNtB1U_6module12fill_imports0EE9from_iterB1U_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6memory17wasm_memorytype_tEEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters3map3MapINtNtNtBZ_3ops5range5RangejENCNvNtB1U_3vec23wasm_memorytype_vec_new0EE9from_iterB1U_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB1V_3map3MapINtNtB1V_6copied6CopiedINtNtNtB1Z_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENvMBW_BU_14default_for_tyEB2I_EE9from_iterCsg6ypMx2A1Am_11wasmi_c_api(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsg6ypMx2A1Am_11wasmi_c_api3val10wasm_val_tEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB28_6cloned6ClonedINtNtNtB2c_5slice4iter4IterNtNtCsefoF4u9kbII_5wasmi5value3ValEENvYBU_INtNtB2c_7convert4FromB3F_E4fromEE9from_iterBY_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsg6ypMx2A1Am_11wasmi_c_api3val10wasm_val_tEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2c_3ops5range5RangejENCNvNtBY_3vec16wasm_val_vec_new0EE9from_iterBY_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB6_3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefEINtB4_12SpecFromIterBW_INtNtB6_9into_iter8IntoIterBW_EE9from_iterCsg6ypMx2A1Am_11wasmi_c_api(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterNtNtNtCsefoF4u9kbII_5wasmi6module9init_expr9ConstExprENCINvMs1_NtB3o_11instantiateNtB3o_6Module25initialize_table_elementsQQINtNtB3q_5store5StoreuEE0EE9from_iterCsg6ypMx2A1Am_11wasmi_c_api(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtB2f_5slice4iter4IterINtNtB2f_6option6OptionINtNtB6_5boxed3BoxNtNtCsg6ypMx2A1Am_11wasmi_c_api6extern13wasm_extern_tEEENCNvNtB4i_8instance17wasm_instance_new0EE9from_iterB4i_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VechEINtB2_12SpecFromIterhINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangejENCNvNtCsg6ypMx2A1Am_11wasmi_c_api3vec17wasm_byte_vec_new0EE9from_iterB2E_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #5
end_hunk_0
