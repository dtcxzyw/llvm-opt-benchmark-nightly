Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.12?download=true
inline.NumInlined: 1137
inline.NumDeleted: 369
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_RNvMNtNtCsa5QsYiPB8Gl_5image6codecs3qoiINtB2_10QoiDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newB6_:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %i.b, i8 0, i64 14, i1 false), !noalias !924
  %i.h = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull %i.b, i64 noundef 14), !noalias !925 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.b, align 4, !noalias !924 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !924
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !924
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.6.0.copyload.i.i = load i8, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !noalias !924 ; 4 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  %.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.7.0..sroa_idx.i.i, align 1, !noalias !924 ; 3 uses
  %i.i = call i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i)
  %i.j = call i32 @llvm.bswap.i32(i32 %.sroa.4.0.copyload.i.i) ; 3 uses
  %i.k = call i32 @llvm.bswap.i32(i32 %.sroa.5.0.copyload.i.i) ; 2 uses
  %.off.i.i.i = add i8 %.sroa.6.0.copyload.i.i, -3
  %switch.i.i.i = icmp ult i8 %.off.i.i.i, 2
  br i1 %switch.i.i.i, label %bb.c, label %bb.g, !prof !926

bb.c:                                             ; preds = %bb.b
  %.not68.i.i.i = icmp ult i8 %.sroa.7.0.copyload.i.i, 2
  br i1 %.not68.i.i.i, label %bb.d, label %bb.g, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.l = icmp eq i32 %.sroa.0.0.copyload.i.i, 1718185841
  br i1 %i.l, label %bb.e, label %bb.g, !prof !19

bb.e:                                             ; preds = %bb.d
  %i.m = zext i32 %i.j to i64
  %i.n = zext i32 %i.k to i64                     ; 2 uses
  %i.o = mul nuw i64 %i.n, %i.m
  %i.p = add i64 %i.o, -400000001
  %or.cond.i.i.i.i = icmp ult i64 %i.p, -400000000
  br i1 %or.cond.i.i.i.i, label %bb.f, label %bb.h, !prof !18

bb.f:                                             ; preds = %bb.e
  %i.q = inttoptr i64 %i.n to ptr
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.f
  %.sroa.17.1.ph.i = phi ptr [ undef, %bb.d ], [ %i.q, %bb.f ], [ %i.h, %bb.a ], [ undef, %bb.b ], [ undef, %bb.c ]
  %.sroa.1343.0.ph.i = phi i32 [ %i.i, %bb.d ], [ %i.j, %bb.f ], [ undef, %bb.a ], [ undef, %bb.b ], [ undef, %bb.c ]
  %.sroa.10.0.ph.i = phi i8 [ undef, %bb.d ], [ undef, %bb.f ], [ undef, %bb.a ], [ %.sroa.6.0.copyload.i.i, %bb.b ], [ %.sroa.7.0.copyload.i.i, %bb.c ]
  %.sroa.0.0.ph.i = phi i8 [ 0, %bb.d ], [ 3, %bb.f ], [ 8, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !924
  %i.r = ptrtoint ptr %.sroa.17.1.ph.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 %.sroa.0.0.ph.i, ptr %i.g, align 8
  %.sroa.7.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %.sroa.10.0.ph.i, ptr %.sroa.7.0..sroa_idx24, align 1
  %.sroa.833.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %.sroa.1343.0.ph.i, ptr %.sroa.833.0..sroa_idx34, align 4
  %.sroa.9.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.r, ptr %.sroa.9.0..sroa_idx38, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !927
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 14, ptr %i.s, align 1, !noalias !927
  store i8 0, ptr %i.a, align 8, !noalias !927
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtCsltZrX1n1NSl_3qoi5error5ErrorEB7_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !927
  %.sroa.67.sroa.5.0.copyload = load i8, ptr %i.t, align 8
  %.sroa.67.sroa.7.0..sroa.67.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %.sroa.67.sroa.7.0.copyload = load i8, ptr %.sroa.67.sroa.7.0..sroa.67.0..sroa_idx.sroa_idx, align 1
  %.sroa.67.sroa.8.0..sroa.67.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %.sroa.67.sroa.8.0.copyload = load i16, ptr %.sroa.67.sroa.8.0..sroa.67.0..sroa_idx.sroa_idx, align 2
  %.sroa.67.sroa.9.0..sroa.67.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.67.sroa.9.0.copyload = load i32, ptr %.sroa.67.sroa.9.0..sroa.67.0..sroa_idx.sroa_idx, align 4
  %.sroa.67.sroa.10.0..sroa.67.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.67.sroa.12.0..sroa.67.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.67.sroa.14.0..sroa.67.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.67.sroa.14.0.copyload = load i8, ptr %.sroa.67.sroa.14.0..sroa.67.0..sroa_idx.sroa_idx, align 8
  %.sroa.67.sroa.15.0..sroa.67.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 41
  %.sroa.67.sroa.15.0.copyload = load i24, ptr %.sroa.67.sroa.15.0..sroa.67.0..sroa_idx.sroa_idx, align 1
  %.sroa.67.sroa.16.0..sroa.67.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %.sroa.67.sroa.16.0.copyload = load i8, ptr %.sroa.67.sroa.16.0..sroa.67.0..sroa_idx.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i8 4, ptr %0, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.420.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %i.d, i64 7, i1 false)
  %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.67.sroa.5.0.copyload, ptr %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx, align 8
  %.sroa.420.sroa.5.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.67.sroa.7.0.copyload, ptr %.sroa.420.sroa.5.0..sroa.420.0..sroa_idx.sroa_idx, align 1
  %.sroa.420.sroa.6.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %.sroa.67.sroa.8.0.copyload, ptr %.sroa.420.sroa.6.0..sroa.420.0..sroa_idx.sroa_idx, align 2
  %.sroa.420.sroa.7.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.67.sroa.9.0.copyload, ptr %.sroa.420.sroa.7.0..sroa.420.0..sroa_idx.sroa_idx, align 4
  %.sroa.420.sroa.8.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load <2 x i64>, ptr %.sroa.67.sroa.10.0..sroa.67.0..sroa_idx.sroa_idx, align 8
  store <2 x i64> %i.u, ptr %.sroa.420.sroa.8.0..sroa.420.0..sroa_idx.sroa_idx, align 8
  %.sroa.420.sroa.10.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load <2 x i32>, ptr %.sroa.67.sroa.12.0..sroa.67.0..sroa_idx.sroa_idx, align 8
  store <2 x i32> %i.v, ptr %.sroa.420.sroa.10.0..sroa.420.0..sroa_idx.sroa_idx, align 8
  %.sroa.420.sroa.12.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.sroa.67.sroa.14.0.copyload, ptr %.sroa.420.sroa.12.0..sroa.420.0..sroa_idx.sroa_idx, align 8
  %.sroa.420.sroa.13.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i24 %.sroa.67.sroa.15.0.copyload, ptr %.sroa.420.sroa.13.0..sroa.420.0..sroa_idx.sroa_idx, align 1
  %.sroa.420.sroa.14.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %.sroa.67.sroa.16.0.copyload, ptr %.sroa.420.sroa.14.0..sroa.420.0..sroa_idx.sroa_idx, align 4
  %.sroa.420.sroa.15.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.420.sroa.15.0..sroa.420.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %i.e, i64 3, i1 false)
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !924
  %.sroa.17.13.extract.trunc56.i = zext nneg i8 %.sroa.7.0.copyload.i.i to i24
  %.sroa.0.0.copyload23 = load i8, ptr %1, align 8, !alias.scope !928
  %.sroa.7.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.7.0.copyload27 = load i8, ptr %.sroa.7.0..sroa_idx26, align 1, !alias.scope !928
  %.sroa.828.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.sroa.828.0.copyload32 = load i16, ptr %.sroa.828.0..sroa_idx31, align 2, !alias.scope !928
  %.sroa.833.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.833.0.copyload37 = load i32, ptr %.sroa.833.0..sroa_idx36, align 4, !alias.scope !928
  %.sroa.9.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.0.copyload23, ptr %i.w, align 8
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.7.0.copyload27, ptr %.sroa.4103.0..sroa_idx, align 1
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %.sroa.828.0.copyload32, ptr %.sroa.5104.0..sroa_idx, align 2
  %.sroa.6105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.833.0.copyload37, ptr %.sroa.6105.0..sroa_idx, align 4
  %.sroa.7106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load <2 x i64>, ptr %.sroa.9.0..sroa_idx40, align 8, !alias.scope !928
  store <2 x i64> %i.x, ptr %.sroa.7106.0..sroa_idx, align 8
  %.sroa.9108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.j, ptr %.sroa.9108.0..sroa_idx, align 8
  %.sroa.10109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.k, ptr %.sroa.10109.0..sroa_idx, align 4
  %.sroa.11110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.sroa.6.0.copyload.i.i, ptr %.sroa.11110.0..sroa_idx, align 8
  %.sroa.12111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i24 %.sroa.17.13.extract.trunc56.i, ptr %.sroa.12111.0..sroa_idx, align 1
  %.sroa.13112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %.sroa.6.0.copyload.i.i, ptr %.sroa.13112.0..sroa_idx, align 4
  store i8 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsz_NtCs7x0KzV2oPbY_15crossbeam_epoch6atomicINtB5_6SharedINtNtCseXAJVirNrmf_15crossbeam_deque5deque6BufferNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEE5derefCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !5
  %i.b = and i64 %i.a, -8
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsa5QsYiPB8Gl_5image5utils11expand_bits(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef %1, i32 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = and i8 %1, 7                             ; 2 uses
  %notmask = shl nsw i8 -1, %i.b
  %i.c = xor i8 %notmask, -1                      ; 2 uses
  %i.d = icmp eq i8 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv i8 -1, %i.c
  %i.f = zext i8 %1 to i32
  %i.g = mul i32 %2, %i.f
  %i.h = and i32 %i.g, 7                          ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = trunc nuw nsw i32 %i.h to i8
  %.lhs.trunc = sub nuw nsw i8 8, %i.j
  %i.k = udiv i8 %.lhs.trunc, %1
  %.zext = zext nneg i8 %i.k to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.0.0 = phi i32 [ %.zext, %bb.d ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.o = icmp samesign eq i64 %4, 0
  br i1 %i.o, label %._crit_edge.split, label %.lr.ph27.split.a

.lr.ph27.split.a:                                 ; preds = %bb.e
  %i.p = add i32 %.sroa.0.0, %2                   ; 2 uses
  %5 = zext i32 %i.p to i64
  %6 = zext i32 %2 to i64
  %7 = udiv i8 8, %1
  %.not.i22 = icmp ugt i8 %1, 8
  br i1 %.not.i22, label %._crit_edge.split, label %.lr.ph27.split.split

.lr.ph27.split.split:                             ; preds = %.lr.ph27.split.a
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.i, label %.lr.ph

..loopexit_crit_edge:                             ; preds = %bb.l
  %i.r = icmp eq ptr %i.t, %i.n
  br i1 %i.r, label %._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph27.split.split, %..loopexit_crit_edge
  %i.s = phi i64 [ %i.al, %..loopexit_crit_edge ], [ 0, %.lr.ph27.split.split ]
  %.sroa.01.026 = phi i64 [ %i.am, %..loopexit_crit_edge ], [ 0, %.lr.ph27.split.split ]
  %.sroa.03.025 = phi ptr [ %i.t, %..loopexit_crit_edge ], [ %3, %.lr.ph27.split.split ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.03.025, i64 1 ; 2 uses
  br label %bb.h

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.lr.ph27.split.a, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.loopexit19:                                      ; preds = %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit19
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit19 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #22
          to label %bb.n unwind label %bb.m

bb.g:                                             ; preds = %bb.i
  unreachable

bb.h:                                             ; preds = %.lr.ph, %bb.l
  %i.u = phi i64 [ %i.s, %.lr.ph ], [ %i.al, %bb.l ] ; 4 uses
  %.sroa.01.124 = phi i64 [ %.sroa.01.026, %.lr.ph ], [ %i.am, %bb.l ] ; 2 uses
  %.sroa.5.023 = phi i8 [ 1, %.lr.ph ], [ %i.v, %bb.l ] ; 3 uses
  %i.v = add nuw nsw i8 %.sroa.5.023, 1
  %i.w = urem i64 %.sroa.01.124, %5
  %i.x = icmp samesign ult i64 %i.w, %6
  br i1 %i.x, label %bb.j, label %bb.l

bb.i:                                             ; preds = %.lr.ph27.split.split
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #24
          to label %bb.g unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.h
  %i.y = mul i8 %1, %.sroa.5.023
  %i.z = sub i8 0, %i.y
  %i.aa = and i8 %i.z, 7                          ; 2 uses
  %i.ab = shl i8 %i.c, %i.aa
  %i.ac = load i8, ptr %.sroa.03.025, align 1, !noundef !5
  %i.ad = and i8 %i.ac, %i.ab
  %i.ae = lshr i8 %i.ad, %i.aa
  %i.af = mul i8 %i.ae, %i.e
  %i.ag = load i64, ptr %i.a, align 8, !range !9, !alias.scope !931, !noundef !5
  %i.ah = icmp eq i64 %i.u, %i.ag
  br i1 %i.ah, label %bb.k, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #25
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit unwind label %.loopexit19

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.k, %bb.j
  %i.ai = load ptr, ptr %i.l, align 8, !alias.scope !931, !nonnull !5, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.u
  store i8 %i.af, ptr %i.aj, align 1
  %i.ak = add i64 %i.u, 1                         ; 2 uses
  store i64 %i.ak, ptr %i.m, align 8, !alias.scope !931
  br label %bb.l

bb.l:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit, %bb.h
  %i.al = phi i64 [ %i.ak, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit ], [ %i.u, %bb.h ] ; 2 uses
  %i.am = add i64 %.sroa.01.124, 1                ; 2 uses
  %.not.i.not = icmp samesign ult i8 %.sroa.5.023, %7
  br i1 %.not.i.not, label %bb.h, label %..loopexit_crit_edge

bb.m:                                             ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.n:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3qoi14decoding_error(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 14, ptr %i.b, align 1
  store i8 0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtCsltZrX1n1NSl_3qoi5error5ErrorEB7_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 4, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3qoi14encoding_error(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 14, ptr %i.b, align 1
  store i8 0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RINvMs0_NtCsa5QsYiPB8Gl_5image5errorNtB6_13EncodingError3newNtNtCsltZrX1n1NSl_3qoi5error5ErrorEB8_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 5, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur15boxes_for_gauss(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, float noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = fmul float %1, %1                        ; 2 uses
  %i.f = fmul float %i.e, 1.200000e+01
  %i.g = uitofp i64 %2 to float                   ; 2 uses
  %i.h = fdiv float %i.f, %i.g
  %i.i = fadd float %i.h, 1.000000e+00
  %i.j = tail call float @llvm.sqrt.f32(float %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.k = tail call float @llvm.floor.f32(float %i.j) ; 3 uses
  %i.l = frem float %i.k, 2.000000e+00
  %i.m = fcmp oeq float %i.l, 0.000000e+00
  %i.n = fadd float %i.k, -1.000000e+00
  %storemerge = select i1 %i.m, float %i.n, float %i.k ; 4 uses
  store float %storemerge, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = fadd float %storemerge, 2.000000e+00
  store float %i.o, ptr %i.c, align 4
  %i.p = fmul nnan float %i.g, 2.500000e-01
  %i.q = fadd float %storemerge, 3.000000e+00
  %i.r = fmul float %i.p, %i.q
  %i.s = fmul float %i.e, 3.000000e+00
  %i.t = fadd float %storemerge, 1.000000e+00
  %i.u = fdiv float 1.000000e+00, %i.t
  %i.v = fmul float %i.s, %i.u
  %i.w = fsub float %i.r, %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.x = tail call float @llvm.round.f32(float %i.w)
  %i.y = tail call i64 @llvm.fptoui.sat.i64.f32(float %i.x)
  store i64 %i.y, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapIB1x_INtNtNtB1F_3ops5range5RangejENCNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur15boxes_for_gauss0ENCB2U_s_0EE9from_iterB30_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQFdEuINtB7_5FnMutTdEE8call_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  tail call void %.val(double noundef %1), !inline_history !932
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsvKatKEpids_3gif6reader7decoder19DecodingFormatErrorNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !936
  store ptr %i.b, ptr %i.a, align 8, !noalias !936
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 19, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !936
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs7_NtCshj339Ta6RuV_5weezl5errorNtB5_8LzwErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 11)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXsK_NtCslM68MWqqr2K_4lebe2ioQQRShINtB5_10ReadEndianSfE28read_from_little_endian_intoCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 4 %1, i64 noundef range(i64 0, 2305843009213693952) %2) unnamed_addr #0 {
bb.a:
  %i.a = shl nuw nsw i64 %2, 2                    ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5
  %.val.i = load ptr, ptr %.val, align 8, !noalias !944, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !945)
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !945, !noalias !946, !noundef !5 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  %i.e = load ptr, ptr %.val.i, align 8, !alias.scope !945, !noalias !946, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.d, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc2io5implsQQRShNtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.a
  %i.f = sub nuw nsw i64 %i.c, %i.a
  tail call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, 9223372036854775807) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef range(i64 0, 9223372036854775807) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43), !noalias !945
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc2io5implsQQRShNtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image.exit

_RNvXNtNtCs4wP2HXfJTCR_5alloc2io5implsQQRShNtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i.i.i
  %.pn = phi i64 [ %i.a, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %i.c, %bb.a ]
  %storemerge.i.i.i = phi i64 [ %i.f, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i.i.i ], [ 0, %bb.a ]
  %.sroa.0.0.i.i.i = phi ptr [ null, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i.i.i ], [ @45, %bb.a ]
  %storemerge3.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.pn
  store ptr %storemerge3.i.i.i, ptr %.val.i, align 8, !alias.scope !945, !noalias !947
  store i64 %storemerge.i.i.i, ptr %i.b, align 8, !alias.scope !945, !noalias !947
  ret ptr %.sroa.0.0.i.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXsK_NtCslM68MWqqr2K_4lebe2ioRShINtB5_10ReadEndianSfE28read_from_little_endian_intoCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 4 %1, i64 noundef range(i64 0, 2305843009213693952) %2) unnamed_addr #0 {
bb.a:
  %i.a = shl nuw nsw i64 %2, 2                    ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !951, !noalias !952, !noundef !5 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  %i.e = load ptr, ptr %0, align 8, !alias.scope !951, !noalias !952, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.d, label %_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read10read_exact.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.a
  %i.f = sub nuw nsw i64 %i.c, %i.a
  tail call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef range(i64 0, -9223372036854775808) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43), !noalias !951
  br label %_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read10read_exact.exit

_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read10read_exact.exit: ; preds = %bb.a, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i
  %.pn = phi i64 [ %i.a, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i ], [ %i.c, %bb.a ]
  %storemerge.i = phi i64 [ %i.f, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i ], [ 0, %bb.a ]
  %.sroa.0.0.i = phi ptr [ null, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i ], [ @45, %bb.a ]
  %storemerge3.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.pn
  store ptr %storemerge3.i, ptr %0, align 8, !alias.scope !951, !noalias !952
  store i64 %storemerge.i, ptr %i.b, align 8, !alias.scope !951, !noalias !952
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs3qoiINtB4_10QoiDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB8_2io7decoder12ImageDecoder16read_image_boxedB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) %1, ptr noalias nofree noundef nonnull writeonly captures(address) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [1 x i8], align 1                 ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 9 uses
  %i.e = alloca [3 x i8], align 1                 ; 8 uses
  %i.f = alloca [1 x i8], align 1                 ; 6 uses
  %i.g = alloca [1024 x i8], align 1              ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [1 x i8], align 1                 ; 6 uses
  %i.j = alloca [3 x i8], align 1                 ; 8 uses
  %i.k = alloca [1 x i8], align 1                 ; 7 uses
  %i.l = alloca [1024 x i8], align 1              ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [1 x i8], align 1                 ; 6 uses
  %i.o = alloca [4 x i8], align 4                 ; 8 uses
  %i.p = alloca [3 x i8], align 1                 ; 8 uses
  %i.q = alloca [1 x i8], align 1                 ; 6 uses
  %i.r = alloca [768 x i8], align 1               ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 6 uses
  %i.t = alloca [1 x i8], align 1                 ; 6 uses
end_hunk_0
