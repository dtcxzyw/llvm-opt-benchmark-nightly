Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.03?download=true
inline.NumInlined: 1816
inline.NumDeleted: 1049
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_RINvMNtNtCsdsTQD3x2eOp_3exr5block5chunkNtB3_15TileCoordinates4readINtNtB7_2io8PeekReadINtB15_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image:bb.a
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.587.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.584.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.pr161, ptr %i.o, align 8
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.pre184, ptr %.sroa.486.0..sroa_idx, align 8
  br label %bb.j

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit140._crit_edge: ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit140, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit140.thread
  %i.p = phi i32 [ %i.n, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit140.thread ], [ %.pre184, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit140 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !67
  store i32 0, ptr %i.b, align 4, !noalias !67
  %i.q = call noundef ptr @_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef 4), !noalias !68 ; 2 uses
  %.not.i.i141 = icmp eq ptr %i.q, null
  br i1 %.not.i.i141, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit142.thread, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit142

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit142.thread: ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit140._crit_edge
  %i.r = load i32, ptr %i.b, align 4, !noalias !67, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !67
  br label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit142._crit_edge

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit142: ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit140._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !67
  call void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noundef nonnull %i.q)
  %.pr163 = load i64, ptr %i.f, align 8           ; 2 uses
  %.not135 = icmp eq i64 %.pr163, -1
  %.phi.trans.insert185 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre186 = load i32, ptr %.phi.trans.insert185, align 8 ; 2 uses
  br i1 %.not135, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit142._crit_edge, label %bb.d

bb.d:                                             ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit142
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.596.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.593.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.pr163, ptr %i.s, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.pre186, ptr %.sroa.495.0..sroa_idx, align 8
  br label %bb.j

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit142._crit_edge: ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit142, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit142.thread
  %i.t = phi i32 [ %i.r, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit142.thread ], [ %.pre186, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit142 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69
  store i32 0, ptr %i.a, align 4, !noalias !69
  %i.u = call noundef ptr @_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef 4), !noalias !70 ; 2 uses
  %.not.i.i143 = icmp eq ptr %i.u, null
  br i1 %.not.i.i143, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit144.thread, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit144

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit144.thread: ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit142._crit_edge
  %i.v = load i32, ptr %i.a, align 4, !noalias !69, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69
  br label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit144._crit_edge

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit144: ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit142._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69
  call void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noundef nonnull %i.u)
  %.pr165 = load i64, ptr %i.e, align 8           ; 2 uses
  %.not136 = icmp eq i64 %.pr165, -1
  %.phi.trans.insert187 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre188 = load i32, ptr %.phi.trans.insert187, align 8 ; 2 uses
  br i1 %.not136, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit144._crit_edge, label %bb.e

bb.e:                                             ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit144
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5105.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5102.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.pr165, ptr %i.w, align 8
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.pre188, ptr %.sroa.4104.0..sroa_idx, align 8
  br label %bb.j

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit144._crit_edge: ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit144, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit144.thread
  %i.x = phi i32 [ %i.v, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit144.thread ], [ %.pre188, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit144 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.y = icmp sgt i32 %i.t, 31
  %i.z = icmp sgt i32 %i.x, 31
  %or.cond = or i1 %i.y, %i.z
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit144._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.aa, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.437.sroa.4.0..sroa.437.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @2, ptr %.sroa.437.sroa.4.0..sroa.437.0..sroa_idx.sroa_idx, align 8
  %.sroa.437.sroa.5.0..sroa.437.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 37, ptr %.sroa.437.sroa.5.0..sroa.437.0..sroa_idx.sroa_idx, align 8
  br label %bb.j

bb.g:                                             ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit144._crit_edge
  %i.ab = or i32 %i.p, %i.l
  %or.cond181 = icmp sgt i32 %i.ab, -1
  br i1 %or.cond181, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ac = or i32 %i.x, %i.t
  %or.cond182 = icmp sgt i32 %i.ac, -1
  br i1 %or.cond182, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ad = zext nneg i32 %i.p to i64
  %i.ae = zext nneg i32 %i.l to i64
  %i.af = zext nneg i32 %i.t to i64
  %i.ag = zext nneg i32 %i.x to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ae, ptr %i.ah, align 8
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ad, ptr %.sroa.639.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.af, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.840.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ag, ptr %.sroa.840.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.e, %bb.c, %bb.k, %bb.i
  %.sink195 = phi i64 [ 1, %bb.b ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.c ], [ 1, %bb.k ], [ 0, %bb.i ]
  store i64 %.sink195, ptr %0, align 8
  ret void

bb.k:                                             ; preds = %bb.h, %bb.g
  %.sink = phi i64 [ ptrtoint (ptr @0 to i64), %bb.g ], [ ptrtoint (ptr @1 to i64), %bb.h ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.ai, align 8
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %.sroa.4130.0..sroa_idx, align 8
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink, ptr %.sroa.5131.0..sroa_idx, align 8
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 21, ptr %.sroa.6132.0..sroa_idx, align 8
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsdsTQD3x2eOp_3exr5block6readerINtB3_6ReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE13filter_chunksNCINvMNtNtNtB7_5image4read5imageINtB1W_9ReadImageFdEuINtNtB1Y_6layers19ReadFirstValidLayerINtNtB1Y_17specific_channels13CollectPixelsINtB3l_19ReadOptionalChannelINtB3l_19ReadRequiredChannelIB4s_IB4s_NtNtB20_9recursive8NoneMorefEfEfEfETffffEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENCNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB6o_14OpenExrDecoderBP_ENtNtNtB6s_2io7decoder12ImageDecoder10read_images0_0NCB6j_s1_0EEE11from_chunksINtB20_5LayerINtB20_16SpecificChannelsB5I_TNtNtNtB7_4meta9attribute18ChannelDescriptionB9o_B9o_INtNtBW_6option6OptionB9o_EEEEBP_E0EB6s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([4384 x i8]) align 8 captures(none) dereferenceable(4384) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(4344) %1, i1 noundef zeroext %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1376) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.097 = alloca [16 x i8], align 8          ; 5 uses
  %.sroa.052.sroa.0 = alloca [4344 x i8], align 8 ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [96 x i8], align 8                ; 12 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 13 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [88 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.k = alloca [88 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4296 ; 5 uses
  invoke void @_RINvMs_NtCsdsTQD3x2eOp_3exr4metaNtB5_8MetaData18read_offset_tablesINtNtB7_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4288) %1)
          to label %bb.b unwind label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit.thread209

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.j, align 8, !range !8, !noundef !7 ; 2 uses
  %i.n = icmp eq i64 %i.m, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit144

bb.d:                                             ; preds = %bb.b
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.562.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 %i.m, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br i1 %2, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit132, label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4280 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !104, !noalias !105, !noundef !7 ; 3 uses
  %i.s = icmp ugt i64 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8
  %.sink12.i = select i1 %i.s, i64 %i.u, i64 %i.r
  %i.v = shl i64 %.sink12.i, 5                    ; 2 uses
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.v, i64 4096) ; 2 uses
  %i.w = shl nuw nsw i64 %..i, 3                  ; 2 uses
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image.exit, label %bb.j

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit132: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4280
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !106, !noalias !107, !noundef !7 ; 2 uses
  %i.aa = icmp ugt i64 %i.z, 3                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !7
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sink13.i129 = select i1 %i.aa, ptr %i.ac, ptr %i.af
  %.sink12.i130 = select i1 %i.aa, i64 %i.ae, i64 %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4336
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !7
  invoke void @_RNvNtNtCsdsTQD3x2eOp_3exr5block6reader22validate_offset_tables(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink13.i129, i64 noundef %.sink12.i130, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k, i64 noundef %i.ah)
          to label %bb.g unwind label %bb.f

.body:                                            ; preds = %bb.u, %bb.v, %bb.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEECsa5QsYiPB8Gl_5image.exit
  %.pn116 = phi { ptr, i32 } [ %.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEECsa5QsYiPB8Gl_5image.exit ], [ %i.ai, %bb.f ], [ %i.bq, %bb.v ], [ %i.bq, %bb.u ]
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.k)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit.thread unwind label %bb.ar

bb.f:                                             ; preds = %bb.l, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit132
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit132
  %i.aj = load i64, ptr %i.i, align 8, !range !9, !noundef !7
  %.not = icmp eq i64 %i.aj, -1
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 2, ptr %0, align 8
  br label %bb.aq

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.e

bb.j:                                             ; preds = %bb.e
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !108
  %i.al = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !108 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = ptrtoint ptr %i.al to i64
  %.pre = load i64, ptr %i.q, align 8, !alias.scope !109, !noalias !110
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image.exit

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.w) #36
          to label %bb.an unwind label %bb.f

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.e, %bb.k
  %i.ao = phi i64 [ %.pre, %bb.k ], [ %i.r, %bb.e ] ; 2 uses
  %.sroa.10171.0 = phi i64 [ %i.an, %bb.k ], [ 8, %bb.e ]
  %i.ap = inttoptr i64 %.sroa.10171.0 to ptr
  store i64 %..i, ptr %i.h, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 7 uses
  store ptr %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 6 uses
  store i64 0, ptr %i.ar, align 8
  %i.as = icmp ugt i64 %i.ao, 3                   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !7
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sink13.i134 = select i1 %i.as, ptr %i.au, ptr %i.ax ; 2 uses
  %.sink12.i135 = select i1 %i.as, i64 %i.aw, i64 %i.ao ; 2 uses
  %.idx = mul nuw nsw i64 %.sink12.i135, 1424
  %i.ay = getelementptr inbounds nuw i8, ptr %.sink13.i134, i64 %.idx
  %i.az = icmp eq i64 %.sink12.i135, 0
  br i1 %i.az, label %.thread.thread, label %.lr.ph238

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEECsa5QsYiPB8Gl_5image.exit: ; preds = %.loopexit212, %.loopexit.split-lp213, %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.aa ], [ %lpad.phi, %bb.z ], [ %lpad.loopexit214, %.loopexit212 ], [ %lpad.loopexit.split-lp215, %.loopexit.split-lp213 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #37
          to label %.body unwind label %bb.ar

.loopexit212:                                     ; preds = %bb.m
  %lpad.loopexit214 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEECsa5QsYiPB8Gl_5image.exit

.loopexit.split-lp213:                            ; preds = %bb.o, %bb.p, %bb.q
  %lpad.loopexit.split-lp215 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEECsa5QsYiPB8Gl_5image.exit

.lr.ph238:                                        ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image.exit
  %.sroa.09.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.09.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.09.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.698.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7103.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.698.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.7103.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.832.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.933.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.1034.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph238, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEECsa5QsYiPB8Gl_5image.exit141
  %.sroa.0150.0237 = phi ptr [ %.sink13.i134, %.lr.ph238 ], [ %i.bd, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEECsa5QsYiPB8Gl_5image.exit141 ] ; 3 uses
  %.sroa.8152.0236 = phi i64 [ 0, %.lr.ph238 ], [ %i.be, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEECsa5QsYiPB8Gl_5image.exit141 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0150.0237, i64 1424 ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.8152.0236, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB5_6Header25blocks_increasing_y_order(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %.sroa.0150.0237)
          to label %bb.y unwind label %.loopexit212

.thread:                                          ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEECsa5QsYiPB8Gl_5image.exit141
  %.pre260 = load ptr, ptr %i.aq, align 8         ; 2 uses
  %.pre261 = load i64, ptr %i.ar, align 8         ; 4 uses
  %i.bf = icmp ult i64 %.pre261, 2
  br i1 %i.bf, label %.thread.thread, label %bb.n, !prof !111

bb.n:                                             ; preds = %.thread
  %i.bg = icmp ult i64 %.pre261, 21
  br i1 %i.bg, label %bb.p, label %bb.o, !prof !10

bb.o:                                             ; preds = %bb.n
  invoke void @_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable7ipnsortyNvYyNtNtB8_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %.pre260, i64 noundef %.pre261, ptr noalias nofree noundef nonnull %i.a)
          to label %.thread.thread unwind label %.loopexit.split-lp213

bb.p:                                             ; preds = %bb.n
  invoke void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %.pre260, i64 noundef %.pre261, i64 noundef 1, ptr noalias nofree noundef nonnull %i.a)
          to label %.thread.thread unwind label %.loopexit.split-lp213

.thread.thread:                                   ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image.exit, %bb.p, %bb.o, %.thread
  %.pre263 = load i64, ptr %i.ar, align 8         ; 2 uses
  %.pre265 = load ptr, ptr %i.aq, align 8         ; 2 uses
  br i1 %2, label %bb.q, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit138

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit138: ; preds = %bb.s, %.thread.thread
  %i.bh = phi ptr [ %.pre264, %bb.s ], [ %.pre265, %.thread.thread ] ; 3 uses
  %i.bi = phi i64 [ %.pre262, %bb.s ], [ %.pre263, %.thread.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.052.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4296) %.sroa.052.sroa.0, ptr noundef nonnull align 8 dereferenceable(4296) %1, i64 4296, i1 false)
  %i.bj = icmp ult i64 %i.bi, 1152921504606846976
  call void @llvm.assume(i1 %i.bj)
  %i.bk = load i64, ptr %i.h, align 8, !range !11, !noundef !7
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bi
  %.sroa.052.sroa.0.4296..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.052.sroa.0, i64 4296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.052.sroa.0.4296..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4344) %0, ptr noundef nonnull align 8 dereferenceable(4344) %.sroa.052.sroa.0, i64 4344, i1 false)
  %.sroa.052.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4344
  store ptr %i.bh, ptr %.sroa.052.sroa.5.0..sroa_idx, align 8
  %.sroa.052.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4352
  store ptr %i.bh, ptr %.sroa.052.sroa.6.0..sroa_idx, align 8
  %.sroa.052.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4360
  store i64 %i.bk, ptr %.sroa.052.sroa.7.0..sroa_idx, align 8
  %.sroa.052.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4368
  store ptr %i.bl, ptr %.sroa.052.sroa.8.0..sroa_idx, align 8
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4376
  store i64 %i.bi, ptr %.sroa.653.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.052.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdsTQD3x2eOp_3exr5block6reader6ReaderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit

bb.q:                                             ; preds = %.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.pre265, ptr %i.d, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.pre263, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 2, ptr %i.bn, align 8
  %i.bo = invoke fastcc noundef zeroext i1 @_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7WindowsyENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRSyNCINvMNtNtCsdsTQD3x2eOp_3exr5block6readerINtB26_6ReaderINtNtNtBa_2io6cursor6CursorRShEE13filter_chunksNCINvMNtNtNtB2a_5image4read5imageINtB3K_9ReadImageFdEuINtNtB3M_6layers19ReadFirstValidLayerINtNtB3M_17specific_channels13CollectPixelsINtB5a_19ReadOptionalChannelINtB5a_19ReadRequiredChannelIB6h_IB6h_NtNtB3O_9recursive8NoneMorefEfEfEfETffffEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENCNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB8d_14OpenExrDecoderB2T_ENtNtNtB8h_2io7decoder12ImageDecoder10read_images0_0NCB88_s1_0EEE11from_chunksINtB3O_5LayerINtB3O_16SpecificChannelsB7x_TNtNtNtB2a_4meta9attribute18ChannelDescriptionBbe_Bbe_INtNtBa_6option6OptionBbe_EEEEB2T_E0E0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEB8h_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d)
          to label %bb.r unwind label %.loopexit.split-lp213

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.bo, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.pre262 = load i64, ptr %i.ar, align 8
  %.pre264 = load ptr, ptr %i.aq, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit138

bb.t:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.bp, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.451.sroa.4.0..sroa.451.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @3, ptr %.sroa.451.sroa.4.0..sroa.451.0..sroa_idx.sroa_idx, align 8
  %.sroa.451.sroa.5.0..sroa.451.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 18, ptr %.sroa.451.sroa.5.0..sroa.451.0..sroa_idx.sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEECsa5QsYiPB8Gl_5image.exit142

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdsTQD3x2eOp_3exr5block6reader6ReaderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataECsa5QsYiPB8Gl_5image.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEj3_EECsa5QsYiPB8Gl_5image.exit138
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEECsa5QsYiPB8Gl_5image.exit142: ; preds = %bb.ao, %bb.ap, %bb.t
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEECsa5QsYiPB8Gl_5image.exit142
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.h, align 8, !alias.scope !112 ; 2 uses
  %i.br = icmp eq i64 %.val2.i, 0
  br i1 %i.br, label %.body, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val3.i = load ptr, ptr %i.aq, align 8, !alias.scope !113, !nonnull !7, !noundef !7
  %i.bs = shl nuw i64 %.val2.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !114
  br label %.body

bb.w:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEECsa5QsYiPB8Gl_5image.exit142
  %.val.i = load i64, ptr %i.h, align 8, !alias.scope !112 ; 2 uses
  %i.bt = icmp eq i64 %.val.i, 0
  br i1 %i.bt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val1.i = load ptr, ptr %i.aq, align 8, !alias.scope !113, !nonnull !7, !noundef !7
  %i.bu = shl nuw i64 %.val.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !115
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image.exit

bb.y:                                             ; preds = %bb.m
  %.sroa.09.sroa.0.0.copyload = load ptr, ptr %i.g, align 8 ; 6 uses
  %.sroa.09.sroa.2.0.copyload = load ptr, ptr %.sroa.09.sroa.2.0..sroa_idx, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.09.sroa.3.0.copyload = load i64, ptr %.sroa.09.sroa.3.0..sroa_idx, align 8 ; 6 uses
  %.sroa.09.sroa.4.0.copyload = load ptr, ptr %.sroa.09.sroa.4.0..sroa_idx, align 8, !nonnull !7, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bv = icmp eq ptr %.sroa.09.sroa.2.0.copyload, %.sroa.09.sroa.4.0.copyload
  br i1 %i.bv, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.ah, %bb.ag, %bb.al
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp:                               ; preds = %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.bw = icmp eq i64 %.sroa.09.sroa.3.0.copyload, 0
  br i1 %i.bw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEECsa5QsYiPB8Gl_5image.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.sroa.0.0.copyload) ]
end_hunk_0
begin_hunk_1_@_RNvNtNtCsa5QsYiPB8Gl_5image6codecs7openexr12to_image_err:bb.a
          to label %bb.i unwind label %bb.e, !noalias !2914

bb.c:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.d, label %bb.f, !prof !18

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #40
          to label %.noexc.i unwind label %bb.b, !noalias !2914

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !2914
  unreachable

.body:                                            ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2913
  invoke void @_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtCs4wP2HXfJTCR_5alloc6string6StringEB7_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.g unwind label %.body

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  store i8 4, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr5error5ErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.h:                                             ; preds = %.body, %bb.i
  %eh.lpad-body4 = phi { ptr, i32 } [ %i.k, %bb.i ], [ %i.m, %.body ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr5error5ErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #37
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #37
          to label %bb.h unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.k:                                             ; preds = %bb.h
  resume { ptr, i32 } %eh.lpad-body4
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangetENCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder12read_entriesINtNtNtB6_2io6cursor6CursorRShEE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1Q_5error10ImageErrorEENtNtNtB4_6traits8iterator8Iterator4nextB1Q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([20 x i8]) align 4 captures(none) dereferenceable(20) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2940)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2940, !noalias !2941, !nonnull !7, !align !16, !noundef !7 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2943)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2944)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2946)
  %i.f = load i16, ptr %i.d, align 8, !alias.scope !2947, !noalias !2948, !noundef !7 ; 2 uses
  %i.g = load i16, ptr %i.e, align 2, !alias.scope !2949, !noalias !2950, !noundef !7
  %i.h = icmp ult i16 %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3ops5range5RangetENCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder12read_entriesINtNtNtB7_2io6cursor6CursorRShEE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1R_5error10ImageErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4v_12try_for_each4callNtB1L_8DirEntryINtNtB1j_12control_flow11ControlFlowB5H_ENcNtB5W_5Break0E0B5W_EB1R_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = add nuw i16 %i.f, 1
  store i16 %i.i, ptr %i.d, align 8, !alias.scope !2951, !noalias !2952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2953
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !2954, !noalias !2955, !nonnull !7, !align !16, !noundef !7
  call void @_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder10read_entryINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i), !noalias !2956
  %.sroa.0.0.copyload.i.i.i.i = load i8, ptr %i.a, align 8, !noalias !2956 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.c, align 8, !range !25, !alias.scope !2957, !noalias !2958, !noundef !7
  %i.m = icmp eq i8 %i.l, -1
  br i1 %i.m, label %_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3ops5range5RangetENCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder12read_entriesINtNtNtB7_2io6cursor6CursorRShEE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1R_5error10ImageErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4v_12try_for_each4callNtB1L_8DirEntryINtNtB1j_12control_flow11ControlFlowB5H_ENcNtB5W_5Break0E0B5W_EB1R_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB1s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3ops5range5RangetENCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder12read_entriesINtNtNtB7_2io6cursor6CursorRShEE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1R_5error10ImageErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4v_12try_for_each4callNtB1L_8DirEntryINtNtB1j_12control_flow11ControlFlowB5H_ENcNtB5W_5Break0E0B5W_EB1R_.exit unwind label %bb.e, !noalias !2958

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  store i8 %.sroa.0.0.copyload.i.i.i.i, ptr %i.c, align 8, !alias.scope !2943, !noalias !2958
  %.sroa.510.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.510.0..8.val.sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(19) %i.j, i64 19, i1 false), !noalias !2959
  %.sroa.612.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.612.0..8.val.sroa_idx.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(44) %i.k, i64 44, i1 false), !noalias !2959
  resume { ptr, i32 } %i.n

_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3ops5range5RangetENCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder12read_entriesINtNtNtB7_2io6cursor6CursorRShEE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1R_5error10ImageErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4v_12try_for_each4callNtB1L_8DirEntryINtNtB1j_12control_flow11ControlFlowB5H_ENcNtB5W_5Break0E0B5W_EB1R_.exit: ; preds = %bb.c, %bb.d
  store i8 %.sroa.0.0.copyload.i.i.i.i, ptr %i.c, align 8, !alias.scope !2943, !noalias !2958
  %.sroa.510.0..8.val.sroa_idx11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.510.0..8.val.sroa_idx11.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(19) %i.j, i64 19, i1 false), !noalias !2959
  %.sroa.612.0..8.val.sroa_idx13.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.612.0..8.val.sroa_idx13.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(44) %i.k, i64 44, i1 false), !noalias !2959
  br label %_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3ops5range5RangetENCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder12read_entriesINtNtNtB7_2io6cursor6CursorRShEE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1R_5error10ImageErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4v_12try_for_each4callNtB1L_8DirEntryINtNtB1j_12control_flow11ControlFlowB5H_ENcNtB5W_5Break0E0B5W_EB1R_.exit.thread.sink.split

bb.f:                                             ; preds = %bb.b
  %.sroa.4.4..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.4..sroa_idx.i.i.i.i, i64 16, i1 false)
  br label %_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3ops5range5RangetENCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder12read_entriesINtNtNtB7_2io6cursor6CursorRShEE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1R_5error10ImageErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4v_12try_for_each4callNtB1L_8DirEntryINtNtB1j_12control_flow11ControlFlowB5H_ENcNtB5W_5Break0E0B5W_EB1R_.exit.thread.sink.split

_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3ops5range5RangetENCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder12read_entriesINtNtNtB7_2io6cursor6CursorRShEE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1R_5error10ImageErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4v_12try_for_each4callNtB1L_8DirEntryINtNtB1j_12control_flow11ControlFlowB5H_ENcNtB5W_5Break0E0B5W_EB1R_.exit.thread.sink.split: ; preds = %bb.f, %_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3ops5range5RangetENCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder12read_entriesINtNtNtB7_2io6cursor6CursorRShEE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1R_5error10ImageErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4v_12try_for_each4callNtB1L_8DirEntryINtNtB1j_12control_flow11ControlFlowB5H_ENcNtB5W_5Break0E0B5W_EB1R_.exit
  %storemerge.ph = phi i32 [ 0, %_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3ops5range5RangetENCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder12read_entriesINtNtNtB7_2io6cursor6CursorRShEE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1R_5error10ImageErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4v_12try_for_each4callNtB1L_8DirEntryINtNtB1j_12control_flow11ControlFlowB5H_ENcNtB5W_5Break0E0B5W_EB1R_.exit ], [ 1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2953
  br label %_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3ops5range5RangetENCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder12read_entriesINtNtNtB7_2io6cursor6CursorRShEE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1R_5error10ImageErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4v_12try_for_each4callNtB1L_8DirEntryINtNtB1j_12control_flow11ControlFlowB5H_ENcNtB5W_5Break0E0B5W_EB1R_.exit.thread

_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3ops5range5RangetENCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder12read_entriesINtNtNtB7_2io6cursor6CursorRShEE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1R_5error10ImageErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4v_12try_for_each4callNtB1L_8DirEntryINtNtB1j_12control_flow11ControlFlowB5H_ENcNtB5W_5Break0E0B5W_EB1R_.exit.thread: ; preds = %_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3ops5range5RangetENCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder12read_entriesINtNtNtB7_2io6cursor6CursorRShEE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1R_5error10ImageErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4v_12try_for_each4callNtB1L_8DirEntryINtNtB1j_12control_flow11ControlFlowB5H_ENcNtB5W_5Break0E0B5W_EB1R_.exit.thread.sink.split, %bb.a
  %storemerge = phi i32 [ 0, %bb.a ], [ %storemerge.ph, %_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3ops5range5RangetENCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder12read_entriesINtNtNtB7_2io6cursor6CursorRShEE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1R_5error10ImageErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4v_12try_for_each4callNtB1L_8DirEntryINtNtB1j_12control_flow11ControlFlowB5H_ENcNtB5W_5Break0E0B5W_EB1R_.exit.thread.sink.split ]
  store i32 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangetENCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder12read_entriesINtNtNtB6_2io6cursor6CursorRShEE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1Q_5error10ImageErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB1Q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !align !16, !noundef !7
  %i.c = load i8, ptr %i.b, align 8, !range !25, !noundef !7
  %.not = icmp eq i8 %i.c, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i16, ptr %i.d, align 8, !alias.scope !2963, !noalias !2964, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.val1 = load i16, ptr %i.e, align 2, !alias.scope !2964, !noalias !2963, !noundef !7
  %narrow.i.i = tail call i16 @llvm.usub.sat.i16(i16 %.val1, i16 %.val)
  %.sink1.i.i = zext i16 %narrow.i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %.sink1.i.i, %bb.b ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.g, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta6header6HeaderENCINvMs_B1H_NtB1H_8MetaData18read_offset_tablesINtNtB1J_2io8TrackingINtNtNtB6_2io6cursor6CursorRShEEE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1J_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 15 uses
  %.sroa.8.i.i.i.i = alloca [16 x i8], align 8    ; 12 uses
  %.sroa.5.i.i.i = alloca [16 x i8], align 8      ; 9 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3011)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3011, !noalias !3012, !nonnull !7, !align !16, !noundef !7 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3015)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3016, !noalias !3017, !nonnull !7, !noundef !7 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %1, align 8, !alias.scope !3016, !noalias !3017 ; 2 uses
  %i.g = icmp eq ptr %.promoted.i.i.i, %i.f
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEEECsa5QsYiPB8Gl_5image.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %.val.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !3018, !noalias !3019, !nonnull !7, !align !16, !noundef !7
  br label %bb.b

bb.b:                                             ; preds = %bb.u, %.lr.ph.i.i.i
  %i.k = phi ptr [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.l, %bb.u ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1424 ; 3 uses
  store ptr %i.l, ptr %1, align 8, !alias.scope !3016, !noalias !3017
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.m = getelementptr i8, ptr %i.k, i64 1400
  %.val5.i.i.i = load i64, ptr %i.m, align 8, !noalias !3020, !noundef !7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i)
  %i.n = load ptr, ptr %.val.i.i.i.i, align 8, !noalias !3021, !nonnull !7, !align !16, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3022
  %..i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val5.i.i.i, i64 65535) ; 3 uses
  %i.o = icmp eq i64 %.val5.i.i.i, 0
  br i1 %i.o, label %.thread17, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = shl nuw nsw i64 %..i.i.i.i.i.i.i, 3      ; 2 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !3023
  %i.q = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !3023 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %.lr.ph.i.preheader.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.p) #36, !noalias !3022
  unreachable

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.c
  store i64 %..i.i.i.i.i.i.i, ptr %i.b, align 8, !noalias !3022
  store ptr %i.q, ptr %i.i, align 8, !noalias !3022
  store i64 0, ptr %i.j, align 8, !noalias !3022
  call void @llvm.experimental.noalias.scope.decl(metadata !3024)
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.val107.i.i.i.i.i.i.i = phi i64 [ %.val10.i.i.i.i.i.i.i, %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 5 uses
  %i.s = add nuw nsw i64 %.val107.i.i.i.i.i.i.i, 65535
  %..i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val5.i.i.i, i64 %i.s) ; 4 uses
  invoke void @_RNvXsb_NtCsdsTQD3x2eOp_3exr2ioINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEINtB5_12ResizableVecyE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %..i.i.i.i.i.i.i.i, i64 noundef 0)
          to label %.noexc.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !3025

.noexc.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3026
  %.val13.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !3024, !noalias !3027, !noundef !7 ; 2 uses
  %i.t = icmp ult i64 %.val5.i.i.i, %.val107.i.i.i.i.i.i.i
  %.not.i11.i.i.i.i.i.i = icmp ugt i64 %..i.i.i.i.i.i.i.i, %.val13.i.i.i.i.i.i.i
  %or.cond.i12.i.i.i.i.i.i = or i1 %i.t, %.not.i11.i.i.i.i.i.i
  br i1 %or.cond.i12.i.i.i.i.i.i, label %bb.f, label %bb.e, !prof !31

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %.val12.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !3024, !noalias !3027, !nonnull !7, !noundef !7
  %i.u = sub nuw nsw i64 %..i.i.i.i.i.i.i.i, %.val107.i.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val12.i.i.i.i.i.i.i, i64 %.val107.i.i.i.i.i.i.i
  %i.w = invoke noundef ptr @_RNvXsu_NtCslM68MWqqr2K_4lebe2ioINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtBw_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEINtB5_10ReadEndianSyE28read_from_little_endian_intoCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.n, ptr noalias nofree noundef nonnull align 8 %i.v, i64 noundef range(i64 0, 1152921504606846976) %i.u)
          to label %.noexc13.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !3025 ; 2 uses

.noexc13.i.i.i.i.i.i:                             ; preds = %bb.e
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i.i.i.i, label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i

_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i: ; preds = %.noexc13.i.i.i.i.i.i
  invoke void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.w)
          to label %.noexc14.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !3025

.noexc14.i.i.i.i.i.i:                             ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !3026 ; 3 uses
  %.not9.i.i.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i.i.i, -1
  br i1 %.not9.i.i.i.i.i.i.i, label %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i.i.i.i, label %bb.l

bb.f:                                             ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.val107.i.i.i.i.i.i.i, i64 noundef %..i.i.i.i.i.i.i.i, i64 noundef %.val13.i.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #40
          to label %.noexc15.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !3025

.noexc15.i.i.i.i.i.i:                             ; preds = %bb.f
  unreachable

_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i.i.i.i: ; preds = %.noexc14.i.i.i.i.i.i, %.noexc13.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3026
  %.val10.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !3024, !noalias !3027, !noundef !7 ; 3 uses
  %i.x = icmp ult i64 %.val10.i.i.i.i.i.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.x)
  %i.y = icmp ult i64 %.val10.i.i.i.i.i.i.i, %.val5.i.i.i
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.i, label %bb.s

.loopexit.i.i.i.i.i.i:                            ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i, %bb.e, %.lr.ph.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %bb.f
  %lpad.loopexit.split-lp.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i ] ; 2 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.j unwind label %bb.h, !noalias !3025

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val2.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !3028, !noalias !3025 ; 2 uses
  %i.aa = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.aa, label %.body.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val3.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !3029, !noalias !3025, !nonnull !7, !noundef !7
  %i.ab = shl nuw i64 %.val2.i.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !3030
  br label %.body.i.i.i

bb.j:                                             ; preds = %bb.g
  %.val.i6.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !3028, !noalias !3025 ; 2 uses
  %i.ac = icmp eq i64 %.val.i6.i.i.i, 0
  br i1 %i.ac, label %common.resume.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val1.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !3029, !noalias !3025, !nonnull !7, !noundef !7
  %i.ad = shl nuw i64 %.val.i6.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !3031
  br label %common.resume.i.i.i.i

bb.l:                                             ; preds = %.noexc14.i.i.i.i.i.i
  %.sroa.7.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.52.8.copyload.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx2.i.i.i.i.i.i, align 8, !noalias !3032 ; 2 uses
  %.sroa.8.8..sroa.7.0..sroa_idx2.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.8..sroa.7.0..sroa_idx2.i.i.sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !3032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3026
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.o unwind label %bb.m, !noalias !3025

bb.m:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !3033, !noalias !3022 ; 2 uses
  %i.af = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %common.resume.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !3034, !noalias !3022, !nonnull !7, !noundef !7
  %i.ag = shl nuw i64 %.val2.i.i.i.i.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !3035
  br label %common.resume.i.i.i.i

bb.o:                                             ; preds = %bb.l
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !3033, !noalias !3022 ; 2 uses
  %i.ah = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.ah, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !3034, !noalias !3022, !nonnull !7, !noundef !7
  %i.ai = shl nuw i64 %.val.i.i.i.i.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !3036
  br label %bb.q

common.resume.i.i.i.i:                            ; preds = %bb.t, %bb.n, %bb.m, %bb.k, %bb.j
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.al, %bb.t ], [ %i.ae, %bb.m ], [ %i.ae, %bb.n ], [ %lpad.phi.i.i.i.i.i.i, %bb.j ], [ %lpad.phi.i.i.i.i.i.i, %bb.k ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.h
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !3025
  unreachable

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3022
  %i.aj = load i64, ptr %i.d, align 8, !range !9, !alias.scope !3037, !noalias !3038, !noundef !7
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta6header6HeaderENCINvMs_B1I_NtB1I_8MetaData18read_offset_tablesINtNtB1K_2io8TrackingINtNtNtB7_2io6cursor6CursorRShEEE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1K_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5a_12try_for_each4callINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEINtNtNtB7_3ops12control_flow11ControlFlowB6m_ENcNtB6V_5Break0E0B6V_ECsa5QsYiPB8Gl_5image.exit.thread11, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr5error5ErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta6header6HeaderENCINvMs_B1I_NtB1I_8MetaData18read_offset_tablesINtNtB1K_2io8TrackingINtNtNtB7_2io6cursor6CursorRShEEE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1K_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5a_12try_for_each4callINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEINtNtNtB7_3ops12control_flow11ControlFlowB6m_ENcNtB6V_5Break0E0B6V_ECsa5QsYiPB8Gl_5image.exit.thread11 unwind label %bb.t, !noalias !3038

bb.s:                                             ; preds = %_RINvXso_NtCsdsTQD3x2eOp_3exr2ioyNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i.i.i.i
  %.sroa.52.8.copyload3.pr.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !3032 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !3032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3022
  %.not.i3.i.i.i.i.i = icmp eq i64 %.sroa.52.8.copyload3.pr.i.i.i.i, -1
  br i1 %.not.i3.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRNtNtNtCsdsTQD3x2eOp_3exr4meta6header6HeaderINtNtBa_6result6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VecyENtNtB16_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Z_B23_EENCINvMs_B14_NtB14_8MetaData18read_offset_tablesINtNtB16_2io8TrackingINtNtNtBa_2io6cursor6CursorRShEEE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3O_EIB1I_NtNtBa_7convert10InfallibleB2C_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7h_12try_for_each4callB23_B3D_NcNtB3D_5Break0E0B3D_E0E0Csa5QsYiPB8Gl_5image.exit.thread.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRNtNtNtCsdsTQD3x2eOp_3exr4meta6header6HeaderINtNtBa_6result6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VecyENtNtB16_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Z_B23_EENCINvMs_B14_NtB14_8MetaData18read_offset_tablesINtNtB16_2io8TrackingINtNtNtBa_2io6cursor6CursorRShEEE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3O_EIB1I_NtNtBa_7convert10InfallibleB2C_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7h_12try_for_each4callB23_B3D_NcNtB3D_5Break0E0B3D_E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRNtNtNtCsdsTQD3x2eOp_3exr4meta6header6HeaderINtNtBa_6result6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VecyENtNtB16_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Z_B23_EENCINvMs_B14_NtB14_8MetaData18read_offset_tablesINtNtB16_2io8TrackingINtNtNtBa_2io6cursor6CursorRShEEE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3O_EIB1I_NtNtBa_7convert10InfallibleB2C_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7h_12try_for_each4callB23_B3D_NcNtB3D_5Break0E0B3D_E0E0Csa5QsYiPB8Gl_5image.exit.thread.i.i.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.al = landingpad { ptr, i32 }
          cleanup
  store i64 %.pr.i.i.i.i.i.i.i, ptr %i.d, align 8, !alias.scope !3014, !noalias !3038
  %.sroa.516.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.52.8.copyload.i.i.i.i, ptr %.sroa.516.0..8.val.sroa_idx.i.i.i.i.i, align 8, !alias.scope !3014, !noalias !3038
  %.sroa.6.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..8.val.sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i.i, i64 16, i1 false), !noalias !3039
  br label %common.resume.i.i.i.i

_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta6header6HeaderENCINvMs_B1I_NtB1I_8MetaData18read_offset_tablesINtNtB1K_2io8TrackingINtNtNtB7_2io6cursor6CursorRShEEE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1K_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5a_12try_for_each4callINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEINtNtNtB7_3ops12control_flow11ControlFlowB6m_ENcNtB6V_5Break0E0B6V_ECsa5QsYiPB8Gl_5image.exit.thread11: ; preds = %bb.q, %bb.r
  store i64 %.pr.i.i.i.i.i.i.i, ptr %i.d, align 8, !alias.scope !3014, !noalias !3038
  %.sroa.516.0..8.val.sroa_idx17.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.52.8.copyload.i.i.i.i, ptr %.sroa.516.0..8.val.sroa_idx17.i.i.i.i.i, align 8, !alias.scope !3014, !noalias !3038
  %.sroa.6.0..8.val.sroa_idx19.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..8.val.sroa_idx19.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i.i, i64 16, i1 false), !noalias !3040
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEEECsa5QsYiPB8Gl_5image.exit

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRNtNtNtCsdsTQD3x2eOp_3exr4meta6header6HeaderINtNtBa_6result6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VecyENtNtB16_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Z_B23_EENCINvMs_B14_NtB14_8MetaData18read_offset_tablesINtNtB16_2io8TrackingINtNtNtBa_2io6cursor6CursorRShEEE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3O_EIB1I_NtNtBa_7convert10InfallibleB2C_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7h_12try_for_each4callB23_B3D_NcNtB3D_5Break0E0B3D_E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i.i, i64 16, i1 false), !noalias !3020
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i)
  %.not.i.i.i.i = icmp eq i64 %.sroa.52.8.copyload3.pr.i.i.i.i, -2
  br i1 %.not.i.i.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRNtNtNtCsdsTQD3x2eOp_3exr4meta6header6HeaderINtNtBa_6result6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VecyENtNtB16_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Z_B23_EENCINvMs_B14_NtB14_8MetaData18read_offset_tablesINtNtB16_2io8TrackingINtNtNtBa_2io6cursor6CursorRShEEE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3O_EIB1I_NtNtBa_7convert10InfallibleB2C_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7h_12try_for_each4callB23_B3D_NcNtB3D_5Break0E0B3D_E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRNtNtNtCsdsTQD3x2eOp_3exr4meta6header6HeaderINtNtBa_6result6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VecyENtNtB16_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Z_B23_EENCINvMs_B14_NtB14_8MetaData18read_offset_tablesINtNtB16_2io8TrackingINtNtNtBa_2io6cursor6CursorRShEEE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3O_EIB1I_NtNtBa_7convert10InfallibleB2C_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7h_12try_for_each4callB23_B3D_NcNtB3D_5Break0E0B3D_E0E0Csa5QsYiPB8Gl_5image.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.am = icmp eq ptr %i.l, %i.f
  br i1 %i.am, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEEECsa5QsYiPB8Gl_5image.exit, label %bb.b

.thread17:                                        ; preds = %bb.b
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !3022
  store i64 0, ptr %i.j, align 8, !noalias !3022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !3032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i.i, i64 16, i1 false), !noalias !3040
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, i64 16, i1 false), !noalias !3011
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  store i64 %..i.i.i.i.i.i.i, ptr %0, align 8
  %.sroa.8.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx51, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  br label %bb.w

bb.v:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRNtNtNtCsdsTQD3x2eOp_3exr4meta6header6HeaderINtNtBa_6result6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VecyENtNtB16_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Z_B23_EENCINvMs_B14_NtB14_8MetaData18read_offset_tablesINtNtB16_2io8TrackingINtNtNtBa_2io6cursor6CursorRShEEE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3O_EIB1I_NtNtBa_7convert10InfallibleB2C_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7h_12try_for_each4callB23_B3D_NcNtB3D_5Break0E0B3D_E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, i64 16, i1 false), !noalias !3011
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  store i64 %.sroa.52.8.copyload3.pr.i.i.i.i, ptr %0, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread17, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEEECsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.u, %bb.a, %_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta6header6HeaderENCINvMs_B1I_NtB1I_8MetaData18read_offset_tablesINtNtB1K_2io8TrackingINtNtNtB7_2io6cursor6CursorRShEEE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1K_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5a_12try_for_each4callINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEINtNtNtB7_3ops12control_flow11ControlFlowB6m_ENcNtB6V_5Break0E0B6V_ECsa5QsYiPB8Gl_5image.exit.thread11
  store i64 -1, ptr %0, align 8
  br label %bb.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta6header6HeaderENCINvMs_B1H_NtB1H_8MetaData18read_offset_tablesINtNtB1J_2io8TrackingINtNtNtB6_2io6cursor6CursorRShEEE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1J_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !align !16, !noundef !7
  %i.c = load i64, ptr %i.b, align 8, !range !9, !noundef !7
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 1424
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.j, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIteryENCNCINvMs8_NtCs53gkmrwjETj_4tiff7decoderNtB2e_10IfdDecoder21find_tag_unsigned_vectEs_00EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2g_5error9TiffErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3054)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !3054, !nonnull !7, !align !16, !noundef !7 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3056)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3057)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !3058, !noalias !3056, !nonnull !7, !noundef !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !3058, !noalias !3056, !nonnull !7, !noundef !7 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i.i, label %_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIteryENCNCINvMs8_NtCs53gkmrwjETj_4tiff7decoderNtB2f_10IfdDecoder21find_tag_unsigned_vectEs_00EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2h_5error9TiffErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4H_12try_for_each4calltINtNtNtB7_3ops12control_flow11ControlFlowtENcNtB5U_5Break0E0B5U_ECsa5QsYiPB8Gl_5image.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !3059, !noundef !7 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %i.f, align 8, !alias.scope !3058, !noalias !3056
  %i.j = icmp ugt i64 %i.h, 65535
  %i.k = trunc nuw nsw i64 %i.h to i32
  %i.l = shl nuw i32 %i.k, 16
  %.sroa.0.0.insert.insert.i.i.i.i.i.i = select i1 %i.j, i32 513, i32 %i.l ; 2 uses
  %i.m = trunc i32 %.sroa.0.0.insert.insert.i.i.i.i.i.i to i1
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.val.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !3060, !noalias !3061, !nonnull !7, !noundef !7
  %i.n = load <2 x i16>, ptr %.val.i.i.i.i, align 2, !noalias !3062 ; 3 uses
  %i.o = load i64, ptr %i.b, align 8, !range !26, !alias.scope !3063, !noalias !3064, !noundef !7
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i unwind label %bb.e, !noalias !3064

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775792, ptr %i.b, align 8, !alias.scope !3056, !noalias !3064
  %.sroa.58.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 6, ptr %.sroa.58.0..8.val.sroa_idx.i.i.i.i.i, align 8, !alias.scope !3056, !noalias !3064
  %.sroa.611.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i48 -140737488355328, ptr %.sroa.611.0..8.val.sroa_idx.i.i.i.i.i, align 2, !alias.scope !3056, !noalias !3058
  %.sroa.5.sroa.5.0..sroa.611.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = extractelement <2 x i16> %i.n, i64 0
  store i16 %i.r, ptr %.sroa.5.sroa.5.0..sroa.611.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i, align 8, !alias.scope !3056, !noalias !3058
  %.sroa.5.sroa.6.0..sroa.611.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.s = extractelement <2 x i16> %i.n, i64 1
  store i16 %i.s, ptr %.sroa.5.sroa.6.0..sroa.611.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i, align 2, !alias.scope !3056, !noalias !3058
  resume { ptr, i32 } %i.q

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  store i64 -9223372036854775792, ptr %i.b, align 8, !alias.scope !3056, !noalias !3064
  %.sroa.58.0..8.val.sroa_idx9.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 6, ptr %.sroa.58.0..8.val.sroa_idx9.i.i.i.i.i, align 8, !alias.scope !3056, !noalias !3064
  %.sroa.611.0..8.val.sroa_idx12.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i48 -140737488355328, ptr %.sroa.611.0..8.val.sroa_idx12.i.i.i.i.i, align 2, !alias.scope !3056, !noalias !3058
  %.sroa.5.sroa.5.0..sroa.611.0..8.val.sroa_idx12.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <2 x i16> %i.n, ptr %.sroa.5.sroa.5.0..sroa.611.0..8.val.sroa_idx12.i.sroa_idx.i.i.i.i, align 8, !alias.scope !3056, !noalias !3058
  br label %_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIteryENCNCINvMs8_NtCs53gkmrwjETj_4tiff7decoderNtB2f_10IfdDecoder21find_tag_unsigned_vectEs_00EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2h_5error9TiffErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4H_12try_for_each4calltINtNtNtB7_3ops12control_flow11ControlFlowtENcNtB5U_5Break0E0B5U_ECsa5QsYiPB8Gl_5image.exit.thread

bb.f:                                             ; preds = %bb.b
  %.sroa.58.0.extract.shift.i.i.i.i.i = lshr i32 %.sroa.0.0.insert.insert.i.i.i.i.i.i, 16
  %.sroa.58.0.extract.trunc.i.i.i.i.i = trunc nuw i32 %.sroa.58.0.extract.shift.i.i.i.i.i to i16
  br label %_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIteryENCNCINvMs8_NtCs53gkmrwjETj_4tiff7decoderNtB2f_10IfdDecoder21find_tag_unsigned_vectEs_00EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2h_5error9TiffErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4H_12try_for_each4calltINtNtNtB7_3ops12control_flow11ControlFlowtENcNtB5U_5Break0E0B5U_ECsa5QsYiPB8Gl_5image.exit.thread

_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIteryENCNCINvMs8_NtCs53gkmrwjETj_4tiff7decoderNtB2f_10IfdDecoder21find_tag_unsigned_vectEs_00EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2h_5error9TiffErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4H_12try_for_each4calltINtNtNtB7_3ops12control_flow11ControlFlowtENcNtB5U_5Break0E0B5U_ECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i, %bb.f
  %.sroa.0.0.i6 = phi i16 [ 1, %bb.f ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i ], [ 0, %bb.a ]
  %i.t = phi i16 [ %.sroa.58.0.extract.trunc.i.i.i.i.i, %bb.f ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i ], [ undef, %bb.a ]
  %i.u = insertvalue { i16, i16 } poison, i16 %.sroa.0.0.i6, 0
  %i.v = insertvalue { i16, i16 } %i.u, i16 %i.t, 1
  ret { i16, i16 } %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIteryENCNCINvMs8_NtCs53gkmrwjETj_4tiff7decoderNtB2e_10IfdDecoder21find_tag_unsigned_vectEs_00EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2g_5error9TiffErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !align !16, !noundef !7
  %i.c = load i64, ptr %i.b, align 8, !range !26, !noundef !7
  %.not = icmp eq i64 %i.c, -1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !7
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !7
  %i.f = ptrtoint ptr %.val1 to i64
  %i.g = ptrtoint ptr %.val to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 3
  %.sink = select i1 %.not, i64 %i.i, i64 0
  store i64 0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i1, i8 } @_RNvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIteryENCNCINvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB2d_9TagReaderINtB2f_11ValueReaderINtNtNtB6_2io6cursor6CursorRShEEE17find_tag_uint_vechEs_00EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2h_5error9TiffErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3078)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !3078, !nonnull !7, !align !16, !noundef !7 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3080)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3081)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !3082, !noalias !3080, !nonnull !7, !noundef !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !3082, !noalias !3080, !nonnull !7, !noundef !7 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i.i, label %_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIteryENCNCINvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB2e_9TagReaderINtB2g_11ValueReaderINtNtNtB7_2io6cursor6CursorRShEEE17find_tag_uint_vechEs_00EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2i_5error9TiffErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5G_12try_for_each4callhINtNtNtB7_3ops12control_flow11ControlFlowhENcNtB6T_5Break0E0B6T_ECsa5QsYiPB8Gl_5image.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !3083, !noundef !7 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %i.f, align 8, !alias.scope !3082, !noalias !3080
  %i.j = icmp ult i64 %i.h, 256
  br i1 %i.j, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !3084, !noalias !3085, !nonnull !7, !noundef !7
  %i.k = load <2 x i16>, ptr %.val.i.i.i.i, align 2, !noalias !3086 ; 3 uses
  %i.l = load i64, ptr %i.b, align 8, !range !26, !alias.scope !3087, !noalias !3088, !noundef !7
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i unwind label %bb.e, !noalias !3088

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775792, ptr %i.b, align 8, !alias.scope !3080, !noalias !3088
  %.sroa.58.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 6, ptr %.sroa.58.0..8.val.sroa_idx.i.i.i.i.i, align 8, !alias.scope !3080, !noalias !3088
  %.sroa.611.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i56 -36028797018963968, ptr %.sroa.611.0..8.val.sroa_idx.i.i.i.i.i, align 1, !alias.scope !3080, !noalias !3082
  %.sroa.5.sroa.5.0..sroa.611.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = extractelement <2 x i16> %i.k, i64 0
  store i16 %i.o, ptr %.sroa.5.sroa.5.0..sroa.611.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i, align 8, !alias.scope !3080, !noalias !3082
  %.sroa.5.sroa.6.0..sroa.611.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.p = extractelement <2 x i16> %i.k, i64 1
end_hunk_1
