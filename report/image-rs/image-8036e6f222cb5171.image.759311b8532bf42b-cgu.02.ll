Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.02?download=true
inline.NumInlined: 1033
inline.NumDeleted: 460
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvNtNtCsa5QsYiPB8Gl_5image6codecs4tiff19check_sample_format:bb.a
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_Cs53gkmrwjETj_4tiffNtB5_9ColorTypeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.438.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @73, ptr noundef nonnull %i.d)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit unwind label %bb.o

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  store i8 %i.p, ptr %i.k, align 1
  switch i16 %1, label %bb.g [
    i16 1, label %bb.e
    i16 3, label %bb.f
  ]

bb.d:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 %i.p, ptr %i.j, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 5, ptr %i.r, align 1
  store i8 0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.l, ptr %i.g, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs3_Cs53gkmrwjETj_4tiffNtB5_9ColorTypeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.428.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.j, ptr %i.s, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.432.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @72, ptr noundef nonnull %i.g)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit60 unwind label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.t = icmp ult i8 %i.p, 17
  br i1 %i.t, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.u = icmp eq i8 %i.p, 32
  br i1 %i.u, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 5, ptr %i.v, align 1
  store i8 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %i.a, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsV_NtNtCsj6eKBz9Db1c_4core3fmt3numtNtB7_5Debug3fmt, ptr %.sroa.445.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.w, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.449.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @71, ptr noundef nonnull %i.a)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit61 unwind label %bb.j

bb.h:                                             ; preds = %bb.e
  store i8 -1, ptr %0, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  store i8 -1, ptr %0, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #29
          to label %bb.m unwind label %bb.l

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit61: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.418.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.418, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.418.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 8, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.418, i64 31, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit61, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit60, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.l:                                             ; preds = %bb.o, %bb.n, %bb.j
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.j
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.o ], [ %i.x, %bb.j ], [ %i.z, %bb.n ]
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #29
          to label %bb.m unwind label %bb.l

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit60: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 8, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.56.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.k

bb.o:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f) #29
          to label %bb.m unwind label %bb.l

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.48.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.48, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.48.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 8, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.48, i64 31, i1 false)
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsa5QsYiPB8Gl_5image6images8dynimage16load_from_memory(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 11 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1385)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %1, ptr %i.d, align 8, !alias.scope !1386
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %2, ptr %.sroa.4.0..sroa_idx6, align 8, !alias.scope !1386
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 0, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !1386
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 -2, ptr %i.e, align 8, !alias.scope !1387
  store i64 1, ptr %i.b, align 8, !alias.scope !1387
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 536870912, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !1387
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1387
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1387
  call void @_RNvMNtNtCsa5QsYiPB8Gl_5image2io17image_reader_typeINtB2_11ImageReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19with_guessed_formatB6_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = load i64, ptr %i.c, align 8, !range !33, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 9, ptr %0, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %.sroa.411.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.f, ptr %i.a, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %.sroa.6.0..sroa_idx2, align 8
  call void @_RNvMNtNtCsa5QsYiPB8Gl_5image2io17image_reader_typeINtB2_11ImageReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE6decodeB6_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNvNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader21read_arbitrary_header23parse_single_value_line(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 4 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i8 noundef range(i8 0, 4) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = load i32, ptr %1, align 4, !range !38, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.f = tail call { ptr, i64 } @_RINvMNtCsj6eKBz9Db1c_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 3 uses
  %i.h = extractvalue { ptr, i64 } %i.f, 1        ; 2 uses
  switch i64 %i.h, label %thread-pre-split.i [
    i64 0, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.g, align 1, !alias.scope !1393, !noundef !5 ; 2 uses
  switch i8 %i.i, label %bb.d [
    i8 43, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.b
  %.pr.i = load i8, ptr %i.g, align 1, !alias.scope !1393
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i, %bb.c
  %i.j = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.i, %bb.c ]
  %cond.i = icmp eq i8 %i.j, 43                   ; 2 uses
  %i.k = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.h, %i.k          ; 10 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.0.idx.i ; 9 uses
  %i.l = icmp samesign ult i64 %.sroa.15.0.i, 9
  br i1 %i.l, label %.preheader.i, label %.preheader60.i.preheader

.preheader.i:                                     ; preds = %bb.d
  %.not5668.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5668.i, label %.loopexit.i, label %.lr.ph.i

.preheader60.i:                                   ; preds = %bb.g
  %.not55.i = icmp eq i64 %i.p, 0
  br i1 %.not55.i, label %.loopexit.i, label %.preheader60.i.preheader

.loopexit.i:                                      ; preds = %.preheader60.i, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %i.cb, %bb.o ], [ 0, %.preheader.i ], [ %i.ad, %bb.h ], [ %i.al, %bb.i ], [ %i.as, %bb.j ], [ %i.az, %bb.k ], [ %i.bg, %bb.l ], [ %i.bn, %bb.m ], [ %i.bu, %bb.n ], [ %i.z, %.preheader60.i ]
  %i.m = zext i32 %.sroa.045.1.i to i64
  %i.n = shl nuw i64 %i.m, 32
  br label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit

.preheader60.i.preheader:                         ; preds = %bb.d, %.preheader60.i
  %.sroa.0.1.i73 = phi ptr [ %i.o, %.preheader60.i ], [ %.sroa.0.0.i, %bb.d ] ; 2 uses
  %.sroa.15.1.i72 = phi i64 [ %i.p, %.preheader60.i ], [ %.sroa.15.0.i, %bb.d ]
  %.sroa.045.0.i71 = phi i32 [ %i.z, %.preheader60.i ], [ 0, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i73, i64 1
  %i.p = add nsw i64 %.sroa.15.1.i72, -1          ; 2 uses
  %i.q = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i71, i32 10) ; 2 uses
  %i.r = extractvalue { i32, i1 } %i.q, 0         ; 2 uses
  %i.s = extractvalue { i32, i1 } %i.q, 1
  %i.t = load i8, ptr %.sroa.0.1.i73, align 1, !alias.scope !1393, !noundef !5 ; 2 uses
  br i1 %i.s, label %bb.f, label %bb.e, !prof !11

bb.e:                                             ; preds = %.preheader60.i.preheader
  %i.u = zext i8 %i.t to i32
  %i.v = add nsw i32 %i.u, -48                    ; 2 uses
  %i.w = icmp ult i32 %i.v, 10
  br i1 %i.w, label %bb.g, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.f:                                             ; preds = %.preheader60.i.preheader
  %i.x = add i8 %i.t, -48
  %i.y = icmp ult i8 %i.x, 10
  %spec.select.i = select i1 %i.y, i64 513, i64 257
  br label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit

bb.g:                                             ; preds = %bb.e
  %i.z = add i32 %i.v, %i.r                       ; 3 uses
  %i.aa = icmp ult i32 %i.z, %i.r
  br i1 %i.aa, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %.preheader60.i, !prof !11

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ab = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !1393, !noundef !5
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, -48                  ; 3 uses
  %i.ae = icmp ult i32 %i.ad, 10
  br i1 %i.ae, label %bb.h, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.h:                                             ; preds = %.lr.ph.i
  %.not56.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not56.i, label %.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !1393, !noundef !5
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add nsw i32 %i.ah, -48                  ; 2 uses
  %i.aj = icmp ult i32 %i.ai, 10
  br i1 %i.aj, label %bb.i, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.1
  %i.ak = mul nuw nsw i32 %i.ad, 10
  %i.al = add nuw nsw i32 %i.ai, %i.ak            ; 2 uses
  %.not56.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not56.i.1, label %.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !1393, !noundef !5
  %i.ao = zext i8 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -48                  ; 2 uses
  %i.aq = icmp ult i32 %i.ap, 10
  br i1 %i.aq, label %bb.j, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.j:                                             ; preds = %.lr.ph.i.2
  %i.ar = mul nuw nsw i32 %i.al, 10
  %i.as = add nuw nsw i32 %i.ap, %i.ar            ; 2 uses
  %.not56.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not56.i.2, label %.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !1393, !noundef !5
  %i.av = zext i8 %i.au to i32
  %i.aw = add nsw i32 %i.av, -48                  ; 2 uses
  %i.ax = icmp ult i32 %i.aw, 10
  br i1 %i.ax, label %bb.k, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.k:                                             ; preds = %.lr.ph.i.3
  %i.ay = mul nuw nsw i32 %i.as, 10
  %i.az = add nuw nsw i32 %i.aw, %i.ay            ; 2 uses
  %.not56.i.3 = icmp eq i64 %.sroa.15.0.i, 4
  br i1 %.not56.i.3, label %.loopexit.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !1393, !noundef !5
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add nsw i32 %i.bc, -48                  ; 2 uses
  %i.be = icmp ult i32 %i.bd, 10
  br i1 %i.be, label %bb.l, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.l:                                             ; preds = %.lr.ph.i.4
  %i.bf = mul i32 %i.az, 10
  %i.bg = add i32 %i.bd, %i.bf                    ; 2 uses
  %.not56.i.4 = icmp eq i64 %.sroa.15.0.i, 5
  br i1 %.not56.i.4, label %.loopexit.i, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 5
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !1393, !noundef !5
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add nsw i32 %i.bj, -48                  ; 2 uses
  %i.bl = icmp ult i32 %i.bk, 10
  br i1 %i.bl, label %bb.m, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.m:                                             ; preds = %.lr.ph.i.5
  %i.bm = mul i32 %i.bg, 10
  %i.bn = add i32 %i.bk, %i.bm                    ; 2 uses
  %.not56.i.5 = icmp eq i64 %.sroa.15.0.i, 6
  br i1 %.not56.i.5, label %.loopexit.i, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 6
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !1393, !noundef !5
  %i.bq = zext i8 %i.bp to i32
  %i.br = add nsw i32 %i.bq, -48                  ; 2 uses
  %i.bs = icmp ult i32 %i.br, 10
  br i1 %i.bs, label %bb.n, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.n:                                             ; preds = %.lr.ph.i.6
  %i.bt = mul i32 %i.bn, 10
  %i.bu = add i32 %i.br, %i.bt                    ; 2 uses
  %.not56.i.6 = icmp eq i64 %.sroa.15.0.i, 7
  br i1 %.not56.i.6, label %.loopexit.i, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 7
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !1393, !noundef !5
  %i.bx = zext i8 %i.bw to i32
  %i.by = add nsw i32 %i.bx, -48                  ; 2 uses
  %i.bz = icmp ult i32 %i.by, 10
  br i1 %i.bz, label %bb.o, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.o:                                             ; preds = %.lr.ph.i.7
  %i.ca = mul i32 %i.bu, 10
  %i.cb = add i32 %i.by, %i.ca
  br label %.loopexit.i

_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit: ; preds = %.loopexit.i, %bb.f
  %.sroa.8.0.insert.insert.i = phi i64 [ %spec.select.i, %bb.f ], [ %i.n, %.loopexit.i ] ; 3 uses
  %i.cc = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.cc, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %bb.t

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %4, ptr %i.cd, align 1
  store i8 7, ptr %i.c, align 8
  call void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.u

_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.g, %bb.e, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.7, %bb.b, %bb.c, %bb.c, %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit
  %.sroa.8.0.insert.insert.i42 = phi i64 [ %.sroa.8.0.insert.insert.i, %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit ], [ 257, %bb.c ], [ 257, %.lr.ph.i ], [ 257, %bb.c ], [ 1, %bb.b ], [ 257, %.lr.ph.i.7 ], [ 257, %.lr.ph.i.6 ], [ 257, %.lr.ph.i.5 ], [ 257, %.lr.ph.i.4 ], [ 257, %.lr.ph.i.3 ], [ 257, %.lr.ph.i.2 ], [ 257, %.lr.ph.i.1 ], [ 257, %bb.e ], [ 513, %bb.g ]
  %.sroa.431.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i42, 8
  %.sroa.431.0.extract.trunc = trunc i64 %.sroa.431.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1394
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1394
  %i.ce = load i64, ptr %i.a, align 8, !range !22, !noalias !1394, !noundef !5
  %i.cf = trunc nuw i64 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !range !28, !noalias !1394, !noundef !5 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.cf, label %bb.q, label %bb.r, !prof !11

bb.q:                                             ; preds = %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !1394
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ch, i64 %i.cj) #33, !noalias !1394
  unreachable

bb.r:                                             ; preds = %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  %i.ck = load ptr, ptr %i.ci, align 8, !noalias !1394, !nonnull !5, !noundef !5 ; 2 uses
  %i.cl = icmp ule i64 %3, %i.ch
  tail call void @llvm.assume(i1 %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1394
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_RNCNvNvNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader21read_arbitrary_header23parse_single_value_line0Bd_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ck, ptr nonnull align 1 %2, i64 %3, i1 false), !noalias !1394
  br label %_RNCNvNvNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader21read_arbitrary_header23parse_single_value_line0Bd_.exit

_RNCNvNvNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader21read_arbitrary_header23parse_single_value_line0Bd_.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 1, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %4, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %.sroa.431.0.extract.trunc, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 2
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ch, ptr %.sroa.621.0..sroa_idx, align 8
  %.sroa.621.sroa.4.0..sroa.621.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ck, ptr %.sroa.621.sroa.4.0..sroa.621.0..sroa_idx.sroa_idx, align 8
  %.sroa.621.sroa.5.0..sroa.621.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %3, ptr %.sroa.621.sroa.5.0..sroa.621.0..sroa_idx.sroa_idx, align 8
  call void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

bb.t:                                             ; preds = %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit
  %.sroa.633.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.633.0.extract.trunc = trunc nuw i64 %.sroa.633.0.extract.shift to i32
  store i32 1, ptr %1, align 4
  store i32 %.sroa.633.0.extract.trunc, ptr %i.e, align 4
  store i8 -1, ptr %0, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.p, %bb.t, %_RNCNvNvNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader21read_arbitrary_header23parse_single_value_line0Bd_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvXNtCsa5QsYiPB8Gl_5image6traitsShNtB2_15EncodableLayout8as_bytes(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read16is_read_vectoredCsa5QsYiPB8Gl_5image(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtB2_12DecoderErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = load i32, ptr %0, align 4, !range !1395, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  switch i32 %i.o, label %default.unreachable111 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
  ]

default.unreachable111:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.p, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.n, ptr %i.m, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRmNtB6_7Display3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.427.0..sroa_idx, align 8
  %i.q = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !5, !align !13, !noundef !5
  %i.t = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @76, ptr noundef nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.p, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRmNtB6_7Display3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.423.0..sroa_idx, align 8
  %i.u = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !align !13, !noundef !5
  %i.x = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w, ptr noundef nonnull @77, ptr noundef nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.p, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1q_NtCsj6eKBz9Db1c_4core3fmtRmNtB6_8UpperHex3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.419.0..sroa_idx, align 8
  %i.y = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !5, !align !13, !noundef !5
  %i.ab = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aa, ptr noundef nonnull @78, ptr noundef nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.p, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRmNtB6_7Display3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.415.0..sroa_idx, align 8
  %i.ac = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !5, !align !13, !noundef !5
  %i.af = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ae, ptr noundef nonnull @79, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.p, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRmNtB6_7Display3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.411.0..sroa_idx, align 8
  %i.ag = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5, !align !13, !noundef !5
  %i.aj = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ai, ptr noundef nonnull @80, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.p, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1q_NtCsj6eKBz9Db1c_4core3fmtRmNtB6_8UpperHex3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.47.0..sroa_idx, align 8
  %i.ak = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !5, !align !13, !noundef !5
  %i.an = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.am, ptr noundef nonnull @81, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.p, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
