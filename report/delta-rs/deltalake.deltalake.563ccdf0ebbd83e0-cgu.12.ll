inline.NumInlined: 5547
inline.NumDeleted: 1701
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16resolve_uri_typeReECs7p2uQeJxui2_9deltalake:bb.a
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i155: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit135
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit159 unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit159: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %common.resume unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.bq:                                            ; preds = %bb.q
  unreachable

.thread:                                          ; preds = %bb.az, %bb.as, %.body139, %.thread181
  %.pn102171 = phi { ptr, i32 } [ %i.dw, %bb.as ], [ %lpad.thr_comm, %.thread181 ], [ %.pn, %.body139 ], [ %i.ec, %bb.az ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(88) %i.s) #43
          to label %.body151 unwind label %bb.bb

bb.br:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.635)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.er = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4
  %i.es = load i64, ptr %i.y, align 8, !noundef !4
  invoke void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core5table7builder17expand_tilde_path(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.er, i64 noundef %i.es)
          to label %bb.bt unwind label %bb.f

bb.bs:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.x, ptr %i.i, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.481.0..sroa_idx, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.l, ptr %i.et, align 8
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs9_NtCseo6ZV82fEK1_3url6parserNtB5_10ParseErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.494.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @33, ptr noundef nonnull %i.i)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit163 unwind label %bb.f

bb.bt:                                            ; preds = %bb.br
  %i.eu = load i64, ptr %i.k, align 16, !range !39, !noundef !4 ; 2 uses
  %.not106 = icmp eq i64 %i.eu, -9223372036854775711
  %i.ev = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.635, ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i64 24, i1 false)
  br i1 %.not106, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.sroa.687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.390.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.687.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.289.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.635, i64 24, i1 false)
  store i64 %i.eu, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.635)
  br label %bb.bn

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.531.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.635, i64 24, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.ew, align 8
  store i64 -9223372036854775711, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.635)
  br label %bb.bh

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.bn, %bb.bh
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret void

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit163: ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.443.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store i64 -9223372036854775724, ptr %0, align 16
  br label %bb.bh
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs2pqxYH9ZEk8_3std2io4copy17stack_buffer_copyINtB4_4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEQINtNtNtB16_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = alloca [8192 x i8], align 1              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 8192, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %.val13 = load ptr, ptr %1, align 8, !nonnull !4, !align !32
  br label %.outer

.outer:                                           ; preds = %bb.e, %bb.a
  %.sroa.02.0.ph = phi i64 [ %i.p, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %i.e = call noundef ptr @_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) ; 2 uses
  %.not58 = icmp eq ptr %i.e, null
  br i1 %.not58, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.outer, %bb.j
  %i.f = phi ptr [ %i.z, %bb.j ], [ %i.e, %.outer ] ; 9 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %bb.f
    i64 3, label %bb.i
    i64 0, label %bb.g
    i64 1, label %bb.h
  ], !prof !4272

default.unreachable:                              ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.j, %.outer
  %i.i = load i64, ptr %i.d, align 8, !noundef !4 ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = inttoptr i64 %.sroa.02.0.ph to ptr
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.l = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.m = call noundef ptr @_RNvXs_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB4_12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write9write_allCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val13, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef range(i64 0, -9223372036854775808) %i.i) ; 2 uses
  %.not11 = icmp eq ptr %i.m, null
  br i1 %.not11, label %bb.e, label %.loopexit

bb.d:                                             ; preds = %.loopexit, %bb.b
  %.sroa.4.0 = phi ptr [ %.sroa.4.1.in, %.loopexit ], [ %i.k, %bb.b ]
  %.sroa.0.0 = phi i64 [ 1, %.loopexit ], [ 0, %bb.b ]
  %i.n = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.o = insertvalue { i64, ptr } %i.n, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.o

bb.e:                                             ; preds = %bb.c
  %i.p = add i64 %i.i, %.sroa.02.0.ph
  store i64 0, ptr %i.d, align 8
  br label %.outer

.loopexit:                                        ; preds = %bb.c, %bb.i, %bb.f, %bb.h, %bb.g
  %.sroa.4.1.in = phi ptr [ %i.f, %bb.i ], [ %i.f, %bb.g ], [ %i.f, %bb.h ], [ %i.f, %bb.f ], [ %i.m, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.f:                                             ; preds = %.lr.ph
  %.mask51 = and i64 %i.g, -4294967296
  %i.q = icmp eq i64 %.mask51, 17179869184
  br i1 %i.q, label %bb.j, label %.loopexit

bb.g:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = load i8, ptr %i.r, align 8, !range !2201, !noundef !4
  %i.t = icmp eq i8 %i.s, 35
  br i1 %i.t, label %bb.j, label %.loopexit

bb.h:                                             ; preds = %.lr.ph
  %i.u = getelementptr i8, ptr %i.f, i64 15
  %i.v = load i8, ptr %i.u, align 8, !range !2201, !noundef !4
  %i.w = icmp eq i8 %i.v, 35
  br i1 %i.w, label %bb.j, label %.loopexit

bb.i:                                             ; preds = %.lr.ph
  %i.x = icmp ult ptr %i.f, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.x)
  %.mask = and i64 %i.g, -4294967296
  %i.y = icmp eq i64 %.mask, 150323855360
  br i1 %i.y, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.f, %bb.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr nonnull %i.f)
  %i.z = call noundef ptr @_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs2pqxYH9ZEk8_3std2io4copy4copyINtB4_4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEQINtNtNtBS_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvXs2_NtNtCs2pqxYH9ZEk8_3std2io4copyQINtNtNtCs4tdlwR1I4n2_7parquet4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtB6_18BufferedWriterSpec9copy_fromINtB8_4TakeNtNtNtBI_5arrow12arrow_writer22ArrowColumnChunkReaderEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %2 = extractvalue { i64, ptr } %i.a, 0
  %3 = extractvalue { i64, ptr } %i.a, 1
  %spec.select9 = and i64 %2, 1
  %4 = insertvalue { i64, ptr } poison, i64 %spec.select9, 0
  %5 = insertvalue { i64, ptr } %4, ptr %3, 1
  ret { i64, ptr } %5
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef range(i16 0, -32768) i16 @_RINvNtNtCs4j34XAPZOn0_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 16               ; 13 uses
  %i.d = load i64, ptr %0, align 8, !range !165, !noundef !4
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load <2 x i64>, ptr %i.f, align 8        ; 3 uses
  %i.h = shufflevector <2 x i64> %i.g, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.i = xor <2 x i64> %i.h, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.i, ptr %i.c, align 16
  %i.j = shufflevector <2 x i64> %i.g, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.k = xor <2 x i64> %i.j, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.k, ptr %.sroa.513.0..sroa_idx, align 16
  store <2 x i64> %i.g, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.915.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.915.0..sroa_idx, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %1, align 8, !noalias !5475, !noundef !4 ; 2 uses
  %i.m = icmp ne ptr %i.l, null
  %i.n = zext i1 %i.m to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5480
  store i64 %i.n, ptr %i.b, align 8, !noalias !5480
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5480
  %.not.i.i = icmp eq ptr %i.l, null
  %i.o = getelementptr i8, ptr %1, i64 8          ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load ptr, ptr %i.o, align 8, !noalias !5475, !noundef !4
  %i.p = getelementptr i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.p, align 8, !noalias !5475, !noundef !4
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i) #47
  br label %_RINvXsz_NtNtCs4j34XAPZOn0_4http6header4nameNtB6_10HeaderNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.o, align 8, !range !1436, !noalias !5475, !noundef !4
  %i.r = zext nneg i8 %i.q to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5485
  store i64 %i.r, ptr %i.a, align 8, !noalias !5485
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5485
  br label %_RINvXsz_NtNtCs4j34XAPZOn0_4http6header4nameNtB6_10HeaderNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

_RINvXsz_NtNtCs4j34XAPZOn0_4http6header4nameNtB6_10HeaderNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 16, !alias.scope !5490
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !5490
  %.sroa.17.0.copyload.i = load i64, ptr %.sroa.513.0..sroa_idx, align 16, !alias.scope !5490 ; 3 uses
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.614.0..sroa_idx, align 8, !alias.scope !5490
  %i.s = load i64, ptr %.sroa.915.0..sroa_idx, align 16, !alias.scope !5490, !noundef !4
  %i.t = shl i64 %i.s, 56
  %i.u = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !5490, !noundef !4
  %i.v = or i64 %i.t, %i.u                        ; 2 uses
  %i.w = xor i64 %i.v, %.sroa.22.0.copyload.i     ; 3 uses
  %i.x = add i64 %.sroa.17.0.copyload.i, %.sroa.0.0.copyload.i ; 3 uses
  %i.y = add i64 %i.w, %.sroa.10.0.copyload.i     ; 2 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i, i64 %.sroa.17.0.copyload.i, i64 13)
  %i.aa = xor i64 %i.z, %i.x                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 16)
  %i.ac = xor i64 %i.ab, %i.y                     ; 3 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 32)
  %i.ae = add i64 %i.y, %i.aa                     ; 3 uses
  %i.af = add i64 %i.ac, %i.ad                    ; 2 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 17)
  %i.ah = xor i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 21)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = xor i64 %i.af, %i.v
  %i.am = xor i64 %i.ak, 255
  %i.an = add i64 %i.al, %i.ah                    ; 3 uses
  %i.ao = add i64 %i.aj, %i.am                    ; 2 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 13)
  %i.aq = xor i64 %i.an, %i.ap                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 16)
  %i.as = xor i64 %i.ar, %i.ao                    ; 3 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 32)
  %i.au = add i64 %i.aq, %i.ao                    ; 3 uses
  %i.av = add i64 %i.as, %i.at                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 17)
  %i.ax = xor i64 %i.au, %i.aw                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 21)
  %i.az = xor i64 %i.ay, %i.av                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 32)
  %i.bb = add i64 %i.ax, %i.av                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 13)
  %i.be = xor i64 %i.bd, %i.bb                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 16)
  %i.bg = xor i64 %i.bf, %i.bc                    ; 3 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  %i.bi = add i64 %i.be, %i.bc                    ; 3 uses
  %i.bj = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 17)
  %i.bl = xor i64 %i.bk, %i.bi                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 21)
  %i.bn = xor i64 %i.bm, %i.bj                    ; 2 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 32)
  %i.bp = add i64 %i.bl, %i.bj
  %i.bq = add i64 %i.bn, %i.bo                    ; 2 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 13)
  %i.bs = xor i64 %i.br, %i.bp                    ; 2 uses
  %i.bt = shl i64 %i.bn, 16
  %i.bu = xor i64 %i.bt, %i.bq
  %i.bv = add i64 %i.bs, %i.bq                    ; 2 uses
  %i.bw = lshr i64 %i.bs, 47
  %i.bx = lshr i64 %i.bu, 43
  %i.by = lshr i64 %i.bv, 32
  %i.bz = xor i64 %i.bx, %i.bw
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = xor i64 %i.ca, %i.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvXsz_NtNtCs4j34XAPZOn0_4http6header4nameNtB6_10HeaderNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.a
  %i.cc = load ptr, ptr %1, align 8, !noalias !5493, !noundef !4 ; 2 uses
  %i.cd = icmp ne ptr %i.cc, null
  %i.ce = zext i1 %i.cd to i64
  %i.cf = xor i64 %i.ce, -3750763034362895579
  %i.cg = mul i64 %i.cf, 2232315406967589409      ; 4 uses
  %.not.i.i20 = icmp eq ptr %i.cc, null
  %i.ch = getelementptr i8, ptr %1, i64 8         ; 2 uses
  br i1 %.not.i.i20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i.i21 = load ptr, ptr %i.ch, align 8, !noalias !5493, !noundef !4 ; 3 uses
  %i.ci = getelementptr i8, ptr %1, i64 16
  %.val1.i.i22 = load i64, ptr %i.ci, align 8, !noalias !5493, !noundef !4 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i.i21, i64 %.val1.i.i22
  %i.ck = icmp samesign eq i64 %.val1.i.i22, 0
  br i1 %i.ck, label %_RINvXsz_NtNtCs4j34XAPZOn0_4http6header4nameNtB6_10HeaderNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %xtraiter = and i64 %.val1.i.i22, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.prol = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.prol ], [ %i.cg, %.lr.ph.i.i.i.i.preheader ]
  %.sroa.03.05.i.i.i.i.prol = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.prol ], [ %.val.i.i21, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.prol, i64 1 ; 2 uses
  %i.cm = load i8, ptr %.sroa.03.05.i.i.i.i.prol, align 1, !alias.scope !5498, !noalias !5501, !noundef !4
  %i.cn = zext i8 %i.cm to i64
  %i.co = xor i64 %.sroa.0.06.i.i.i.i.prol, %i.cn
  %i.cp = mul i64 %i.co, 1099511628211            ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !5505

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.unr = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.prol ]
  %.sroa.03.05.i.i.i.i.unr = phi ptr [ %.val.i.i21, %.lr.ph.i.i.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.i.i.prol ]
  %i.cq = icmp ult i64 %.val1.i.i22, 8
  br i1 %i.cq, label %_RINvXsz_NtNtCs4j34XAPZOn0_4http6header4nameNtB6_10HeaderNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.03.05.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i ], [ %.sroa.03.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 1
  %i.cs = load i8, ptr %.sroa.03.05.i.i.i.i, align 1, !alias.scope !5498, !noalias !5501, !noundef !4
  %i.ct = zext i8 %i.cs to i64
  %i.cu = xor i64 %.sroa.0.06.i.i.i.i, %i.ct
  %i.cv = mul i64 %i.cu, 1099511628211
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 2
  %i.cx = load i8, ptr %i.cr, align 1, !alias.scope !5498, !noalias !5501, !noundef !4
  %i.cy = zext i8 %i.cx to i64
  %i.cz = xor i64 %i.cv, %i.cy
  %i.da = mul i64 %i.cz, 1099511628211
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 3
  %i.dc = load i8, ptr %i.cw, align 1, !alias.scope !5498, !noalias !5501, !noundef !4
  %i.dd = zext i8 %i.dc to i64
  %i.de = xor i64 %i.da, %i.dd
  %i.df = mul i64 %i.de, 1099511628211
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 4
  %i.dh = load i8, ptr %i.db, align 1, !alias.scope !5498, !noalias !5501, !noundef !4
  %i.di = zext i8 %i.dh to i64
  %i.dj = xor i64 %i.df, %i.di
  %i.dk = mul i64 %i.dj, 1099511628211
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 5
  %i.dm = load i8, ptr %i.dg, align 1, !alias.scope !5498, !noalias !5501, !noundef !4
  %i.dn = zext i8 %i.dm to i64
  %i.do = xor i64 %i.dk, %i.dn
  %i.dp = mul i64 %i.do, 1099511628211
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 6
  %i.dr = load i8, ptr %i.dl, align 1, !alias.scope !5498, !noalias !5501, !noundef !4
end_hunk_0
