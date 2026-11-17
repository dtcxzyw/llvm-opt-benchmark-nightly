Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.05?download=true
inline.NumInlined: 720
inline.NumDeleted: 313
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RNvMs_NtCsdZSetL9bOac_8fdeflate8compressINtB4_20StoredOnlyCompressorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE6finishCsa5QsYiPB8Gl_5image:bb.a
bb.l:                                             ; preds = %.body
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder6streamINtB4_9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa5QsYiPB8Gl_5image.exit:
  %i.a = tail call noundef i32 @_RNvMNtCshj339Ta6RuV_5weezl6decodeNtB2_13Configuration21with_tiff_size_switch(i1 noundef zeroext false, i8 noundef 8)
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 32768)
  %i.b = tail call { ptr, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxShE16new_uninit_sliceCsa5QsYiPB8Gl_5image(i64 noundef %..i), !noalias !1543 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 3 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 3 uses
  %.sroa.412.0.insert.insert = and i32 %i.a, -16711681
  %.sroa.011.0.insert.insert = or disjoint i32 %.sroa.412.0.insert.insert, 65536
  %i.e = invoke { ptr, ptr } @_RNvMNtCshj339Ta6RuV_5weezl6decodeNtB2_13Configuration5build(i32 noundef %.sroa.011.0.insert.insert)
          to label %bb.c unwind label %bb.a       ; 2 uses

bb.a:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderINtNtNtB4_2io4util4TakeQINtNtB1F_6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef range(i64 1, 0) %i.d, i64 noundef 1) #28
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderINtNtNtB4_2io4util4TakeQINtNtB1F_6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  %i.h = extractvalue { ptr, ptr } %i.e, 0
  %i.i = extractvalue { ptr, ptr } %i.e, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.7.0..sroa_idx, i8 0, i64 17, i1 false)
  %.sroa.8.sroa.3.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %.sroa.8.sroa.3.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %2, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %2, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  store ptr %i.h, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.k, align 8
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderINtNtNtB4_2io4util4TakeQINtNtB1F_6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b, %bb.a
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsu_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB19_4LeafE16push_with_handleCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i16 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 274 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !noundef !6 ; 3 uses
  %i.d = icmp ult i16 %i.c, 11
  br i1 %i.d, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = zext nneg i16 %i.c to i64                ; 3 uses
  %i.f = add nuw nsw i16 %i.c, 1
  store i16 %i.f, ptr %i.b, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.e
  store i16 %2, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !6
  store ptr %i.a, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.n, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs53gkmrwjETj_4tiff7decoder3ifd15offset_to_bytes(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, i64 noundef range(i64 2, 0) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp ult i64 %1, 9
  br i1 %i.b, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %1, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %1
  call void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2o_5slice4iter4IterhENCNvB15_15offset_to_bytes0EE9from_iterCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs53gkmrwjETj_4tiff7decoder3ifd16offset_to_sbytes(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, i64 noundef range(i64 2, 0) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp ult i64 %1, 9
  br i1 %i.b, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %1, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %1
  call void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2o_5slice4iter4IterhENCNvB15_16offset_to_sbytes0EE9from_iterCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvNvNtNtCsj6eKBz9Db1c_4core5slice5ascii8is_ascii7runtime(ptr noalias nofree noundef nonnull readonly captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 64
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %1, 9223372036854775744
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 3 uses
  %i.d = and i64 %1, 63                           ; 2 uses
  br label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i, i64 64 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.b
  %.sroa.01.028.i = phi ptr [ %i.e, %bb.c ], [ %0, %bb.b ] ; 5 uses
  %.sroa.0.0.copyload.i.i = load <2 x i64>, ptr %.sroa.01.028.i, align 1, !alias.scope !1558, !noalias !1559
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i, i64 16
  %.sroa.0.0.copyload.i9.i = load <2 x i64>, ptr %i.g, align 1, !alias.scope !1558, !noalias !1560
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i, i64 32
  %.sroa.0.0.copyload.i10.i = load <2 x i64>, ptr %i.h, align 1, !alias.scope !1558, !noalias !1561
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i, i64 48
  %.sroa.0.0.copyload.i11.i = load <2 x i64>, ptr %i.i, align 1, !alias.scope !1558, !noalias !1562
  %i.j = or <2 x i64> %.sroa.0.0.copyload.i9.i, %.sroa.0.0.copyload.i.i
  %i.k = or <2 x i64> %i.j, %.sroa.0.0.copyload.i10.i
  %i.l = or <2 x i64> %i.k, %.sroa.0.0.copyload.i11.i
  %i.m = bitcast <2 x i64> %i.l to <16 x i8>
  %i.n = icmp slt <16 x i8> %i.m, zeroinitializer
  %i.o = bitcast <16 x i1> %i.n to i16
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %bb.c, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit

._crit_edge.i:                                    ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.r = icmp samesign eq i64 %i.d, 0
  br i1 %i.r, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %._crit_edge.i
  %i.s = phi ptr [ %i.u, %.lr.ph ], [ %i.c, %._crit_edge.i ] ; 2 uses
  %.val.i.i = load i8, ptr %i.s, align 1, !alias.scope !1558, !noalias !1563, !noundef !6
  %i.t = icmp sgt i8 %.val.i.i, -1                ; 2 uses
  %.not59 = xor i1 %i.t, true
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.q
  %or.cond = select i1 %.not59, i1 true, i1 %i.v
  br i1 %or.cond, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit, label %.lr.ph

bb.d:                                             ; preds = %bb.a
  %.zext = and i64 %1, 7                          ; 7 uses
  %i.w = and i64 %1, 56                           ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w ; 7 uses
  %.not47 = icmp eq i64 %i.w, 0
  br i1 %.not47, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit

_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit: ; preds = %.lr.ph51.6, %.lr.ph.i, %.lr.ph, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.1, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.2, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.3, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.4, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.5, %bb.e, %.lr.ph51, %bb.f, %.lr.ph51.1, %bb.g, %.lr.ph51.2, %bb.h, %.lr.ph51.3, %bb.i, %.lr.ph51.4, %bb.j, %.lr.ph51.5, %bb.k, %._crit_edge.i, %._crit_edge
  %.sroa.0.0 = phi i1 [ true, %._crit_edge.i ], [ %i.t, %.lr.ph ], [ false, %.lr.ph.i ], [ true, %._crit_edge ], [ false, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit ], [ false, %.lr.ph51 ], [ true, %bb.f ], [ false, %.lr.ph51.1 ], [ true, %bb.g ], [ false, %.lr.ph51.2 ], [ true, %bb.h ], [ false, %.lr.ph51.3 ], [ true, %bb.i ], [ false, %.lr.ph51.4 ], [ true, %bb.j ], [ false, %.lr.ph51.5 ], [ true, %bb.k ], [ %spec.select, %.lr.ph51.6 ], [ false, %bb.e ], [ false, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.5 ], [ false, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.4 ], [ false, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.3 ], [ false, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.2 ], [ false, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.1 ]
  ret i1 %.sroa.0.0

2:                                                ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  %.not = icmp eq i64 %i.w, 8
  br i1 %.not, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.1

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.1: ; preds = %2
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.012.0.copyload.1 = load i64, ptr %3, align 1
  %4 = and i64 %.sroa.012.0.copyload.1, -9187201950435737472
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit

6:                                                ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.1
  %.not.1 = icmp eq i64 %i.w, 16
  br i1 %.not.1, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.2

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.2: ; preds = %6
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.012.0.copyload.2 = load i64, ptr %7, align 1
  %8 = and i64 %.sroa.012.0.copyload.2, -9187201950435737472
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit

10:                                               ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.2
  %.not.2 = icmp eq i64 %i.w, 24
  br i1 %.not.2, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.3

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.3: ; preds = %10
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.012.0.copyload.3 = load i64, ptr %11, align 1
  %12 = and i64 %.sroa.012.0.copyload.3, -9187201950435737472
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit

14:                                               ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.3
  %.not.3 = icmp eq i64 %i.w, 32
  br i1 %.not.3, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.4

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.4: ; preds = %14
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.012.0.copyload.4 = load i64, ptr %15, align 1
  %16 = and i64 %.sroa.012.0.copyload.4, -9187201950435737472
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit

18:                                               ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.4
  %.not.4 = icmp eq i64 %i.w, 40
  br i1 %.not.4, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.5

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.5: ; preds = %18
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.012.0.copyload.5 = load i64, ptr %19, align 1
  %20 = and i64 %.sroa.012.0.copyload.5, -9187201950435737472
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit

22:                                               ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit.5
  %.not.5 = icmp eq i64 %i.w, 48
  br i1 %.not.5, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %22
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.012.0.copyload.6 = load i64, ptr %i.y, align 1
  %23 = and i64 %.sroa.012.0.copyload.6, -9187201950435737472
  %.not.a = icmp eq i64 %23, 0
  br i1 %.not.a, label %._crit_edge, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit

._crit_edge:                                      ; preds = %2, %6, %10, %14, %18, %22, %bb.e, %bb.d
  %i.z = icmp samesign eq i64 %.zext, 0
  br i1 %i.z, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit, label %.lr.ph51

bb.f:                                             ; preds = %.lr.ph51
  %i.aa = icmp samesign eq i64 %.zext, 1
  br i1 %i.aa, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit, label %.lr.ph51.1

.lr.ph51.1:                                       ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %.val.i.1 = load i8, ptr %i.ab, align 1, !noalias !1564, !noundef !6
  %i.ac = icmp sgt i8 %.val.i.1, -1
  br i1 %i.ac, label %bb.g, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit

bb.g:                                             ; preds = %.lr.ph51.1
  %i.ad = icmp samesign eq i64 %.zext, 2
  br i1 %i.ad, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit, label %.lr.ph51.2

.lr.ph51.2:                                       ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %.val.i.2 = load i8, ptr %i.ae, align 1, !noalias !1564, !noundef !6
  %i.af = icmp sgt i8 %.val.i.2, -1
  br i1 %i.af, label %bb.h, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit

bb.h:                                             ; preds = %.lr.ph51.2
  %i.ag = icmp samesign eq i64 %.zext, 3
  br i1 %i.ag, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit, label %.lr.ph51.3

.lr.ph51.3:                                       ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %.val.i.3 = load i8, ptr %i.ah, align 1, !noalias !1564, !noundef !6
  %i.ai = icmp sgt i8 %.val.i.3, -1
  br i1 %i.ai, label %bb.i, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit

bb.i:                                             ; preds = %.lr.ph51.3
  %i.aj = icmp samesign eq i64 %.zext, 4
  br i1 %i.aj, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit, label %.lr.ph51.4

.lr.ph51.4:                                       ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.val.i.4 = load i8, ptr %i.ak, align 1, !noalias !1564, !noundef !6
  %i.al = icmp sgt i8 %.val.i.4, -1
  br i1 %i.al, label %bb.j, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit

bb.j:                                             ; preds = %.lr.ph51.4
  %i.am = icmp samesign eq i64 %.zext, 5
  br i1 %i.am, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit, label %.lr.ph51.5

.lr.ph51.5:                                       ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  %.val.i.5 = load i8, ptr %i.an, align 1, !noalias !1564, !noundef !6
  %i.ao = icmp sgt i8 %.val.i.5, -1
  br i1 %i.ao, label %bb.k, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit

bb.k:                                             ; preds = %.lr.ph51.5
  %i.ap = icmp samesign eq i64 %.zext, 6
  br i1 %i.ap, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit, label %.lr.ph51.6

.lr.ph51.6:                                       ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %.val.i.6 = load i8, ptr %i.aq, align 1, !noalias !1564, !noundef !6
  %i.ar = icmp sgt i8 %.val.i.6, -1
  %spec.select = select i1 %i.ar, i1 true, i1 false
  br label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit

.lr.ph51:                                         ; preds = %._crit_edge
  %.val.i = load i8, ptr %i.x, align 1, !noalias !1564, !noundef !6
  %i.as = icmp sgt i8 %.val.i, -1
  br i1 %i.as, label %bb.f, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d
  %.sroa.012.0.copyload = load i64, ptr %0, align 1
  %i.at = and i64 %.sroa.012.0.copyload, -9187201950435737472
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %2, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5ascii13is_ascii_sse2.exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCs37Y8JGf013z_9hashbrownNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtB2_10EquivalentBq_E10equivalentCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly captures(none) dereferenceable(5) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(5) %1) unnamed_addr #6 {
bb.a:
  %.val = load i8, ptr %0, align 1, !range !17, !noundef !6 ; 2 uses
  %.val2 = load i8, ptr %1, align 1, !range !17, !noundef !6
  %i.a = icmp eq i8 %.val, %.val2
  br i1 %i.a, label %bb.b, label %_RNvXsb_NtCsksn9slvsHfS_10image_webp7decoderNtB5_13WebPRiffChunkNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.val3 = load i32, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.val1 = load i32, ptr %i.c, align 1
  %i.d = icmp ne i8 %.val, 11
  %i.e = icmp eq i32 %.val1, %.val3
  %spec.select.i = select i1 %i.d, i1 true, i1 %i.e
  br label %_RNvXsb_NtCsksn9slvsHfS_10image_webp7decoderNtB5_13WebPRiffChunkNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit

_RNvXsb_NtCsksn9slvsHfS_10image_webp7decoderNtB5_13WebPRiffChunkNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %spec.select.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs0_NtNtCs53gkmrwjETj_4tiff7decoder6streamINtB5_9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.pre = load i64, ptr %i.d, align 8, !alias.scope !1569
  %.pre8 = load i64, ptr %i.e, align 8, !alias.scope !1569
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %i.n = phi i64 [ %i.ad, %bb.j ], [ %.pre8, %bb.a ] ; 2 uses
  %i.o = phi i64 [ %..i, %bb.j ], [ %.pre, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !1569)
  %.not.i = icmp ult i64 %i.o, %i.n
  %.pre.i = load ptr, ptr %i.c, align 8, !alias.scope !1569 ; 3 uses
  br i1 %.not.i, label %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1p_6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1570
  %i.p = load i64, ptr %i.g, align 8, !alias.scope !1569, !noundef !6
  store ptr %.pre.i, ptr %i.a, align 8, !noalias !1570
  store i64 %i.p, ptr %i.h, align 8, !noalias !1570
  store i64 0, ptr %i.i, align 8, !noalias !1570
  %i.q = load i8, ptr %i.k, align 8, !range !11, !alias.scope !1569, !noundef !6
  store i8 %i.q, ptr %i.j, align 8, !noalias !1570
  %i.r = call noundef ptr @_RNvXs3_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBG_6cursor6CursorRShEENtNtB7_4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !1571 ; 2 uses
  store i64 0, ptr %i.d, align 8, !alias.scope !1569
  %i.s = load i64, ptr %i.i, align 8, !noalias !1570, !noundef !6 ; 2 uses
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !1569
  %i.t = load i8, ptr %i.j, align 8, !range !11, !noalias !1570, !noundef !6
  store i8 %i.t, ptr %i.k, align 8, !alias.scope !1569
  %.not3.i = icmp eq ptr %i.r, null
  br i1 %.not3.i, label %bb.d, label %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1p_6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1p_6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.c
  %i.u = ptrtoint ptr %i.r to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1570
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1570
  br label %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1p_6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit

_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1p_6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b, %bb.d
  %i.v = phi i64 [ %i.n, %bb.b ], [ %i.s, %bb.d ]
  %i.w = phi i64 [ %i.o, %bb.b ], [ 0, %bb.d ]    ; 2 uses
  %i.x = sub nuw i64 %i.v, %i.w                   ; 2 uses
  %i.y = icmp eq ptr %.pre.i, null
  br i1 %i.y, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1p_6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.w
  call void @_RNvMs_NtCshj339Ta6RuV_5weezl6decodeNtB4_7Decoder12decode_bytes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.x, ptr noalias nofree noundef nonnull %1, i64 noundef %2)
  %i.aa = load i64, ptr %i.b, align 8, !noundef !6
  %i.ab = load i64, ptr %i.d, align 8, !noundef !6
  %i.ac = add i64 %i.ab, %i.aa
  %i.ad = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.ad, i64 %i.ac) ; 2 uses
  store i64 %..i, ptr %i.d, align 8
  %i.ae = load i8, ptr %i.l, align 8, !range !1572, !noundef !6
  switch i8 %i.ae, label %default.unreachable [
    i8 -1, label %bb.f
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.af = call noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newNtNtCshj339Ta6RuV_5weezl5error8LzwErrorECsa5QsYiPB8Gl_5image(i8 noundef 21) #29
  %i.ag = ptrtoint ptr %i.af to i64
  br label %.loopexit

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ah = load i64, ptr %i.m, align 8, !noundef !6 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %.loopexit

bb.h:                                             ; preds = %bb.e
  %i.aj = call noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 37, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 21) #29
  %i.ak = ptrtoint ptr %i.aj to i64
  br label %.loopexit

bb.i:                                             ; preds = %bb.e
  %i.al = load i64, ptr %i.m, align 8, !noundef !6
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b

.loopexit:                                        ; preds = %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1p_6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit, %bb.g, %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1p_6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit.thread, %bb.i, %bb.h, %bb.f
  %.sroa.6.0 = phi i64 [ %i.u, %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1p_6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit.thread ], [ %i.ag, %bb.f ], [ %i.al, %bb.i ], [ %i.ak, %bb.h ], [ %i.x, %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1p_6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit ], [ %i.ah, %bb.g ]
  %.sroa.0.0 = phi i64 [ 1, %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1p_6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit.thread ], [ 1, %bb.f ], [ 0, %bb.i ], [ 1, %bb.h ], [ 1, %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1p_6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.am = inttoptr i64 %.sroa.6.0 to ptr
  %i.an = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ao = insertvalue { i64, ptr } %i.an, ptr %i.am, 1
  ret { i64, ptr } %i.ao
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm9autobreakINtB5_9AutoBreakQDNtNtNtCsj6eKBz9Db1c_4core2io5write5WriteEL_ENtNtNtB1e_3ops4drop4Drop4dropBb_(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.c = load i8, ptr %i.b, align 1, !range !11, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef ptr @_RNvMNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm9autobreakINtB2_9AutoBreakQDNtNtNtCsj6eKBz9Db1c_4core2io5write5WriteEL_E9flush_bufB8_(ptr noalias nofree noundef align 8 dereferenceable(56) %0) ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1577
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i
    i64 1, label %bb.e
  ], !prof !24

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult ptr %i.e, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.e, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !1578, !noalias !1577
  store i8 3, ptr %i.a, align 8, !alias.scope !1578, !noalias !1577
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m), !noalias !1577
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1577
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtBG_6cursor6CursorRShEINtBE_4TakeIB1G_QB1f_EEENtNtB7_4read4Read11read_to_endCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !11, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b
end_hunk_0
