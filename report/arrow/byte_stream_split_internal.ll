Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/byte_stream_split_internal?download=true
inline.NumInlined: 154
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5arrow4util8internal33ByteStreamSplitEncodeSimdDispatchILi4EEEvPKhilPh:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow4util8internal33ByteStreamSplitEncodeSimdDispatchILi4EEEvPKhilPhE8dispatch) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN5arrow4util8internal33ByteStreamSplitEncodeSimdDispatchILi4EEEvPKhilPhE8dispatch)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN5arrow4util8internal33ByteStreamSplitEncodeSimdDispatchILi4EEEvPKhilPhE8dispatch) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow4util8internal33ByteStreamSplitEncodeSimdDispatchILi4EEEvPKhilPhE8dispatch) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN5arrow4util8internal33ByteStreamSplitEncodeSimdDispatchILi4EEEvPKhilPhE8dispatch, align 8, !tbaa !20
  tail call void %i.e(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3)
  ret void

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow4util8internal33ByteStreamSplitEncodeSimdDispatchILi4EEEvPKhilPhE8dispatch) #7
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !20
  %i.a = load atomic i8, ptr @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelE.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef ptr @_ZN5arrow8internal7CpuInfo11GetInstanceEv()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !12
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  br label %_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelE.exit

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  resume { ptr, i32 } %i.f

_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelE.exit: ; preds = %bb.d, %bb.b, %bb.a
  %i.g = tail call noundef zeroext i1 @_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 2)
  %spec.select = select i1 %i.g, ptr @_ZN5arrow4util8internal25ByteStreamSplitEncodeAvx2ILi4EEEvPKhilPh, ptr @_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd6sse4_2ELi4EEEvPKhilPh
  store ptr %spec.select, ptr %0, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow4util8internal33ByteStreamSplitEncodeSimdDispatchILi8EEEvPKhilPh(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5arrow4util8internal33ByteStreamSplitEncodeSimdDispatchILi8EEEvPKhilPhE8dispatch acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow4util8internal33ByteStreamSplitEncodeSimdDispatchILi8EEEvPKhilPhE8dispatch) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN5arrow4util8internal33ByteStreamSplitEncodeSimdDispatchILi8EEEvPKhilPhE8dispatch)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN5arrow4util8internal33ByteStreamSplitEncodeSimdDispatchILi8EEEvPKhilPhE8dispatch) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow4util8internal33ByteStreamSplitEncodeSimdDispatchILi8EEEvPKhilPhE8dispatch) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN5arrow4util8internal33ByteStreamSplitEncodeSimdDispatchILi8EEEvPKhilPhE8dispatch, align 8, !tbaa !22
  tail call void %i.e(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3)
  ret void

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow4util8internal33ByteStreamSplitEncodeSimdDispatchILi8EEEvPKhilPhE8dispatch) #7
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !22
  %i.a = load atomic i8, ptr @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelE.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef ptr @_ZN5arrow8internal7CpuInfo11GetInstanceEv()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !12
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  br label %_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelE.exit

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  resume { ptr, i32 } %i.f

_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelE.exit: ; preds = %bb.d, %bb.b, %bb.a
  %i.g = tail call noundef zeroext i1 @_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 2)
  %spec.select = select i1 %i.g, ptr @_ZN5arrow4util8internal25ByteStreamSplitEncodeAvx2ILi8EEEvPKhilPh, ptr @_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd6sse4_2ELi8EEEvPKhilPh
  store ptr %spec.select, ptr %0, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef ptr @_ZN5arrow8internal7CpuInfo11GetInstanceEv()
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !12
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  switch i32 %1, label %bb.j [
    i32 0, label %bb.k
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
  ]

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %bb.e
  %i.g = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !12
  %i.h = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 4)
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !12
  %i.j = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 32)
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !12
  %i.l = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 1984)
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.g
  %.0 = phi i1 [ false, %bb.j ], [ %i.l, %bb.i ], [ %i.h, %bb.g ], [ %i.j, %bb.h ], [ true, %bb.e ]
  ret i1 %.0
}

declare noundef ptr @_ZN5arrow8internal7CpuInfo11GetInstanceEv() local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd6sse4_2ELi2EEEvPKhillPh(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sdiv i64 %2, 16                          ; 3 uses
  %i.b = shl nsw i64 %i.a, 4                      ; 10 uses
  %i.c = icmp slt i64 %i.b, %2
  br i1 %i.c, label %iter.check, label %.preheader73

iter.check:                                       ; preds = %bb.a
  %i.d = sub i64 %2, %i.b                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.d, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = shl i64 %i.a, 5
  %i.f = getelementptr i8, ptr %4, i64 %i.e       ; 2 uses
  %i.g = shl i64 %2, 1
  %i.h = getelementptr i8, ptr %4, i64 %i.g       ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 %3
  %i.j = getelementptr i8, ptr %i.i, i64 %i.b
  %i.k = getelementptr i8, ptr %0, i64 %3
  %i.l = getelementptr i8, ptr %i.k, i64 %2
  %i.m = getelementptr i8, ptr %0, i64 %i.b
  %i.n = getelementptr i8, ptr %0, i64 %2
  %bound0 = icmp ult ptr %i.f, %i.l
  %bound1 = icmp ult ptr %i.j, %i.h
  %found.conflict = and i1 %bound0, %bound1
  %bound094 = icmp ult ptr %i.f, %i.n
  %bound195 = icmp ult ptr %i.m, %i.h
  %found.conflict96 = and i1 %bound094, %bound195
  %conflict.rdx = or i1 %found.conflict, %found.conflict96
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check97 = icmp ult i64 %i.d, 16
  br i1 %min.iters.check97, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %2, 15                           ; 3 uses
  %n.vec = sub nuw i64 %i.d, %i.o                 ; 3 uses
  %i.p = add i64 %i.b, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = add i64 %i.b, %index                     ; 3 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.q       ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %wide.load = load <8 x i8>, ptr %i.r, align 1, !tbaa !23, !alias.scope !36
  %wide.load98 = load <8 x i8>, ptr %i.s, align 1, !tbaa !23, !alias.scope !36
  %i.t = getelementptr i8, ptr %i.r, i64 %3       ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %wide.load99 = load <8 x i8>, ptr %i.t, align 1, !tbaa !23, !alias.scope !37
  %wide.load100 = load <8 x i8>, ptr %i.u, align 1, !tbaa !23, !alias.scope !37
  %i.v = shl nsw i64 %i.q, 1
  %5 = shl i64 %i.q, 1
  %6 = getelementptr inbounds i8, ptr %4, i64 %i.v
  %7 = getelementptr i8, ptr %4, i64 %5
  %8 = getelementptr i8, ptr %7, i64 16
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> %wide.load99, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %6, align 1, !alias.scope !38, !noalias !39
  %interleaved.vec101 = shufflevector <8 x i8> %wide.load98, <8 x i8> %wide.load100, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec101, ptr %8, align 1, !alias.scope !38, !noalias !39
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, 0
  br i1 %cmp.n, label %.preheader73, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.o, 4
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !40

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.x = and i64 %2, 3                            ; 2 uses
  %n.vec101 = sub i64 %i.d, %i.x                  ; 2 uses
  %i.y = add i64 %i.b, %n.vec101
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next105, %vec.epilog.vector.body ] ; 2 uses
  %i.z = add i64 %i.b, %index102                  ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 %i.z      ; 2 uses
  %wide.load103 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !23, !alias.scope !36
  %i.ab = getelementptr i8, ptr %i.aa, i64 %3
  %wide.load104 = load <4 x i8>, ptr %i.ab, align 1, !tbaa !23, !alias.scope !37
  %i.ac = shl nsw i64 %i.z, 1
  %i.ad = getelementptr inbounds i8, ptr %4, i64 %i.ac
  %interleaved.vec106 = shufflevector <4 x i8> %wide.load103, <4 x i8> %wide.load104, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec106, ptr %i.ad, align 1, !alias.scope !38, !noalias !39
  %index.next105 = add nuw i64 %index102, 4       ; 2 uses
  %i.ae = icmp eq i64 %index.next105, %n.vec101
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !33

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n106 = icmp eq i64 %i.x, 0
  br i1 %cmp.n106, label %.preheader73, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05574.ph = phi i64 [ %i.b, %iter.check ], [ %i.b, %vector.memcheck ], [ %i.p, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ] ; 6 uses
  %i.af = sub i64 %2, %.05574.ph
  %.neg = add i64 %.05574.ph, 1
  %xtraiter = and i64 %i.af, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %invariant.gep.prol = getelementptr i8, ptr %0, i64 %.05574.ph ; 2 uses
  %i.ag = load i8, ptr %invariant.gep.prol, align 1, !tbaa !23
  %gep.1.prol = getelementptr i8, ptr %invariant.gep.prol, i64 %3
  %i.ah = load i8, ptr %gep.1.prol, align 1, !tbaa !23
  %i.ai = shl nsw i64 %.05574.ph, 1
  %i.aj = getelementptr inbounds i8, ptr %4, i64 %i.ai ; 2 uses
  store i8 %i.ag, ptr %i.aj, align 1
  %.sroa.4.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store i8 %i.ah, ptr %.sroa.4.0..sroa_idx.prol, align 1
  %i.ak = add nsw i64 %.05574.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.05574.unr = phi i64 [ %.05574.ph, %.lr.ph.preheader ], [ %i.ak, %.lr.ph.prol ]
  %i.al = icmp eq i64 %2, %.neg
  br i1 %i.al, label %.preheader73, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.05574 = phi i64 [ %i.av, %.lr.ph ], [ %.05574.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05574 ; 2 uses
  %i.am = load i8, ptr %invariant.gep, align 1, !tbaa !23
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %3
  %i.an = load i8, ptr %gep.1, align 1, !tbaa !23
  %i.ao = shl nsw i64 %.05574, 1
  %i.ap = getelementptr inbounds i8, ptr %4, i64 %i.ao ; 2 uses
  store i8 %i.am, ptr %i.ap, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store i8 %i.an, ptr %.sroa.4.0..sroa_idx, align 1
  %i.aq = add nsw i64 %.05574, 1                  ; 2 uses
  %invariant.gep.1 = getelementptr i8, ptr %0, i64 %i.aq ; 2 uses
  %i.ar = load i8, ptr %invariant.gep.1, align 1, !tbaa !23
  %gep.1.1 = getelementptr i8, ptr %invariant.gep.1, i64 %3
  %i.as = load i8, ptr %gep.1.1, align 1, !tbaa !23
  %i.at = shl nsw i64 %i.aq, 1
  %i.au = getelementptr inbounds i8, ptr %4, i64 %i.at ; 2 uses
  store i8 %i.ar, ptr %i.au, align 1
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store i8 %i.as, ptr %.sroa.4.0..sroa_idx.1, align 1
  %i.av = add nsw i64 %.05574, 2                  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.av, %2
  br i1 %exitcond.not.1, label %.preheader73, label %.lr.ph, !llvm.loop !34

.preheader73:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %9 = icmp sgt i64 %2, 15
  br i1 %9, label %.preheader71, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader71, %.preheader73
  ret void

.preheader71:                                     ; preds = %.preheader73, %.preheader71
  %.05377 = phi i64 [ %i.bf, %.preheader71 ], [ 0, %.preheader73 ] ; 3 uses
  %i.aw = shl nuw nsw i64 %.05377, 4
  %i.ax = getelementptr i8, ptr %0, i64 %i.aw     ; 2 uses
  %i.ay = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ax) ; 2 uses
  %i.az = getelementptr i8, ptr %i.ax, i64 %3
  %i.ba = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.az) ; 2 uses
  %i.bb = shufflevector <16 x i8> %i.ay, <16 x i8> %i.ba, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bc = shufflevector <16 x i8> %i.ay, <16 x i8> %i.ba, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.bd = shl nuw i64 %.05377, 5
  %i.be = getelementptr i8, ptr %4, i64 %i.bd     ; 2 uses
  store <16 x i8> %i.bb, ptr %i.be, align 1, !tbaa !23
  %.sroa.8.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <16 x i8> %i.bc, ptr %.sroa.8.32..sroa_idx, align 1, !tbaa !23
  %i.bf = add nuw nsw i64 %.05377, 1              ; 2 uses
  %exitcond82.not = icmp eq i64 %i.bf, %i.a
  br i1 %exitcond82.not, label %._crit_edge, label %.preheader71, !llvm.loop !35
}

declare void @_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4avx2ELi2EEEvPKhillPh(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i8> @llvm.x86.sse3.ldu.dq(ptr) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef ptr @_ZN5arrow8internal7CpuInfo11GetInstanceEv()
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !12
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  switch i32 %1, label %bb.j [
    i32 0, label %bb.k
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
  ]

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %bb.e
  %i.g = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !12
  %i.h = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 4)
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !12
  %i.j = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 32)
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !12
  %i.l = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 1984)
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.g
  %.0 = phi i1 [ false, %bb.j ], [ %i.l, %bb.i ], [ %i.h, %bb.g ], [ %i.j, %bb.h ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd6sse4_2ELi4EEEvPKhillPh(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sdiv i64 %2, 16                          ; 3 uses
  %i.b = shl nsw i64 %i.a, 4                      ; 10 uses
  %i.c = icmp slt i64 %i.b, %2
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader72

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = shl nsw i64 %3, 1                        ; 4 uses
  %i.e = mul nsw i64 %3, 3                        ; 4 uses
  %i.f = sub i64 %2, %i.b                         ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 20
  br i1 %min.iters.check, label %.lr.ph.preheader130, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.g = shl i64 %i.a, 6
  %i.h = getelementptr i8, ptr %4, i64 %i.g       ; 4 uses
  %i.i = shl i64 %2, 2
  %i.j = getelementptr i8, ptr %4, i64 %i.i       ; 4 uses
  %i.k = getelementptr i8, ptr %0, i64 %i.b
  %i.l = getelementptr i8, ptr %i.k, i64 %i.e
  %i.m = getelementptr i8, ptr %0, i64 %2
  %i.n = getelementptr i8, ptr %i.m, i64 %i.e
  %i.o = getelementptr i8, ptr %0, i64 %i.b
  %i.p = getelementptr i8, ptr %i.o, i64 %i.d
  %i.q = getelementptr i8, ptr %0, i64 %2
  %i.r = getelementptr i8, ptr %i.q, i64 %i.d
  %i.s = getelementptr i8, ptr %0, i64 %3
  %i.t = getelementptr i8, ptr %i.s, i64 %i.b
  %i.u = getelementptr i8, ptr %0, i64 %3
  %i.v = getelementptr i8, ptr %i.u, i64 %2
  %i.w = getelementptr i8, ptr %0, i64 %i.b
  %i.x = getelementptr i8, ptr %0, i64 %2
  %bound0 = icmp ult ptr %i.h, %i.n
  %bound1 = icmp ult ptr %i.l, %i.j
  %found.conflict = and i1 %bound0, %bound1
  %bound0112 = icmp ult ptr %i.h, %i.r
  %bound1113 = icmp ult ptr %i.p, %i.j
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx = or i1 %found.conflict, %found.conflict114
  %bound0115 = icmp ult ptr %i.h, %i.v
  %bound1116 = icmp ult ptr %i.t, %i.j
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx118 = or i1 %conflict.rdx, %found.conflict117
  %bound0119 = icmp ult ptr %i.h, %i.x
  %bound1120 = icmp ult ptr %i.w, %i.j
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx122 = or i1 %conflict.rdx118, %found.conflict121
  br i1 %conflict.rdx122, label %.lr.ph.preheader130, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.y = and i64 %2, 7                            ; 2 uses
  %n.vec = sub i64 %i.f, %i.y                     ; 2 uses
  %i.z = add i64 %i.b, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = add i64 %i.b, %index                    ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 %i.aa     ; 5 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  %wide.load = load <4 x i8>, ptr %i.ab, align 1, !tbaa !23, !alias.scope !50
  %wide.load123 = load <4 x i8>, ptr %i.ac, align 1, !tbaa !23, !alias.scope !50
  %i.ad = getelementptr i8, ptr %i.ab, i64 %3     ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %wide.load124 = load <4 x i8>, ptr %i.ad, align 1, !tbaa !23, !alias.scope !51
  %wide.load125 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !23, !alias.scope !51
  %i.af = getelementptr i8, ptr %i.ab, i64 %i.d   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  %wide.load126 = load <4 x i8>, ptr %i.af, align 1, !tbaa !23, !alias.scope !52
  %wide.load127 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !23, !alias.scope !52
  %i.ah = getelementptr i8, ptr %i.ab, i64 %i.e   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  %wide.load128 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !23, !alias.scope !53
  %wide.load129 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !23, !alias.scope !53
  %i.aj = shl nsw i64 %i.aa, 2
  %i.ak = getelementptr inbounds i8, ptr %4, i64 %i.aj ; 2 uses
  %i.al = zext <4 x i8> %wide.load128 to <4 x i32>
  %i.am = zext <4 x i8> %wide.load129 to <4 x i32>
  %i.an = shl nuw <4 x i32> %i.al, splat (i32 24)
  %i.ao = shl nuw <4 x i32> %i.am, splat (i32 24)
  %i.ap = zext <4 x i8> %wide.load126 to <4 x i32>
  %i.aq = zext <4 x i8> %wide.load127 to <4 x i32>
  %i.ar = shl nuw nsw <4 x i32> %i.ap, splat (i32 16)
  %i.as = shl nuw nsw <4 x i32> %i.aq, splat (i32 16)
  %i.at = or disjoint <4 x i32> %i.an, %i.ar
  %i.au = or disjoint <4 x i32> %i.ao, %i.as
  %i.av = zext <4 x i8> %wide.load124 to <4 x i32>
  %i.aw = zext <4 x i8> %wide.load125 to <4 x i32>
  %i.ax = shl nuw nsw <4 x i32> %i.av, splat (i32 8)
  %i.ay = shl nuw nsw <4 x i32> %i.aw, splat (i32 8)
  %i.az = or disjoint <4 x i32> %i.at, %i.ax
  %i.ba = or disjoint <4 x i32> %i.au, %i.ay
  %i.bb = zext <4 x i8> %wide.load to <4 x i32>
  %i.bc = zext <4 x i8> %wide.load123 to <4 x i32>
  %i.bd = or disjoint <4 x i32> %i.az, %i.bb
  %i.be = or disjoint <4 x i32> %i.ba, %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <4 x i32> %i.bd, ptr %i.ak, align 1, !alias.scope !54, !noalias !55
  store <4 x i32> %i.be, ptr %i.bf, align 1, !alias.scope !54, !noalias !55
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, 0
  br i1 %cmp.n, label %.preheader72, label %.lr.ph.preheader130

.lr.ph.preheader130:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.05574.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph

.preheader72:                                     ; preds = %.lr.ph, %middle.block, %bb.a
  %i.bh = icmp sgt i64 %2, 15
  br i1 %i.bh, label %.lr.ph80, label %._crit_edge

.lr.ph80:                                         ; preds = %.preheader72
  %i.bi = shl nsw i64 %3, 1
end_hunk_0
