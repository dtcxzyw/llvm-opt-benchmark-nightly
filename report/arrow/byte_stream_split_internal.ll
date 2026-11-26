Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/byte_stream_split_internal?download=true
inline.NumInlined: 154
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5arrow4util8internal33ByteStreamSplitEncodeSimdDispatchILi4EEEvPKhilPh:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN5arrow4util8internal33ByteStreamSplitEncodeSimdDispatchILi4EEEvPKhilPhE8dispatch, align 8, !tbaa !44
  tail call void %i.e(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3)
  ret void

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow4util8internal33ByteStreamSplitEncodeSimdDispatchILi4EEEvPKhilPhE8dispatch) #7
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !61 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !44
  %i.a = load atomic i8, ptr @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelE.exit, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef ptr @_ZN5arrow8internal7CpuInfo11GetInstanceEv()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !36
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
  store ptr %spec.select, ptr %0, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow4util8internal33ByteStreamSplitEncodeSimdDispatchILi8EEEvPKhilPh(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !guid !62 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5arrow4util8internal33ByteStreamSplitEncodeSimdDispatchILi8EEEvPKhilPhE8dispatch acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !31

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
  %i.e = load ptr, ptr @_ZZN5arrow4util8internal33ByteStreamSplitEncodeSimdDispatchILi8EEEvPKhilPhE8dispatch, align 8, !tbaa !46
  tail call void %i.e(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3)
  ret void

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow4util8internal33ByteStreamSplitEncodeSimdDispatchILi8EEEvPKhilPhE8dispatch) #7
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !63 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !46
  %i.a = load atomic i8, ptr @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelE.exit, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef ptr @_ZN5arrow8internal7CpuInfo11GetInstanceEv()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !36
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
  store ptr %spec.select, ptr %0, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !64 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef ptr @_ZN5arrow8internal7CpuInfo11GetInstanceEv()
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !36
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
  %i.g = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !36
  %i.h = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 4)
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !36
  %i.j = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 32)
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !36
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
define linkonce_odr void @_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd6sse4_2ELi2EEEvPKhillPh(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) #4 comdat personality ptr @__gxx_personality_v0 !guid !73 {
bb.a:
  %i.a = sdiv i64 %2, 16                          ; 3 uses
  %i.b = shl nsw i64 %i.a, 4                      ; 10 uses
  %i.c = icmp slt i64 %i.b, %2
  br i1 %i.c, label %iter.check, label %.preheader

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
  %bound092 = icmp ult ptr %i.f, %i.n
  %bound193 = icmp ult ptr %i.m, %i.h
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx = or i1 %found.conflict, %found.conflict94
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check95 = icmp ult i64 %i.d, 16
  br i1 %min.iters.check95, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %2, 15                           ; 3 uses
  %n.vec = sub nuw i64 %i.d, %i.o                 ; 3 uses
  %i.p = add i64 %i.b, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = add i64 %i.b, %index                     ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.q       ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %wide.load = load <8 x i8>, ptr %i.r, align 1, !tbaa !47, !alias.scope !74
  %wide.load96 = load <8 x i8>, ptr %i.s, align 1, !tbaa !47, !alias.scope !74
  %i.t = getelementptr i8, ptr %i.r, i64 %3       ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %wide.load97 = load <8 x i8>, ptr %i.t, align 1, !tbaa !47, !alias.scope !75
  %wide.load98 = load <8 x i8>, ptr %i.u, align 1, !tbaa !47, !alias.scope !75
  %i.v = shl nsw i64 %i.q, 1
  %i.w = getelementptr inbounds i8, ptr %4, i64 %i.v ; 2 uses
  %i.x = zext <8 x i8> %wide.load97 to <8 x i16>
  %i.y = zext <8 x i8> %wide.load98 to <8 x i16>
  %i.z = shl nuw <8 x i16> %i.x, splat (i16 8)
  %i.aa = shl nuw <8 x i16> %i.y, splat (i16 8)
  %i.ab = zext <8 x i8> %wide.load to <8 x i16>
  %i.ac = zext <8 x i8> %wide.load96 to <8 x i16>
  %i.ad = or disjoint <8 x i16> %i.z, %i.ab
  %i.ae = or disjoint <8 x i16> %i.aa, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <8 x i16> %i.ad, ptr %i.w, align 1, !alias.scope !76, !noalias !77
  store <8 x i16> %i.ae, ptr %i.af, align 1, !alias.scope !76, !noalias !77
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, 0
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.o, 4
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !78

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ah = and i64 %2, 3                           ; 2 uses
  %n.vec99 = sub i64 %i.d, %i.ah                  ; 2 uses
  %i.ai = add i64 %i.b, %n.vec99
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index100 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next103, %vec.epilog.vector.body ] ; 2 uses
  %i.aj = add i64 %i.b, %index100                 ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 %i.aj     ; 2 uses
  %wide.load101 = load <4 x i8>, ptr %i.ak, align 1, !tbaa !47, !alias.scope !74
  %i.al = getelementptr i8, ptr %i.ak, i64 %3
  %wide.load102 = load <4 x i8>, ptr %i.al, align 1, !tbaa !47, !alias.scope !75
  %i.am = shl nsw i64 %i.aj, 1
  %i.an = getelementptr inbounds i8, ptr %4, i64 %i.am
  %i.ao = zext <4 x i8> %wide.load102 to <4 x i16>
  %i.ap = shl nuw <4 x i16> %i.ao, splat (i16 8)
  %i.aq = zext <4 x i8> %wide.load101 to <4 x i16>
  %i.ar = or disjoint <4 x i16> %i.ap, %i.aq
  store <4 x i16> %i.ar, ptr %i.an, align 1, !alias.scope !76, !noalias !77
  %index.next103 = add nuw i64 %index100, 4       ; 2 uses
  %i.as = icmp eq i64 %index.next103, %n.vec99
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !70

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n104 = icmp eq i64 %i.ah, 0
  br i1 %cmp.n104, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05572.ph = phi i64 [ %i.b, %iter.check ], [ %i.b, %vector.memcheck ], [ %i.p, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ] ; 6 uses
  %i.at = sub i64 %2, %.05572.ph
  %.neg = add i64 %.05572.ph, 1
  %xtraiter = and i64 %i.at, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %invariant.gep.prol = getelementptr i8, ptr %0, i64 %.05572.ph ; 2 uses
  %i.au = load i8, ptr %invariant.gep.prol, align 1, !tbaa !47
  %gep.1.prol = getelementptr i8, ptr %invariant.gep.prol, i64 %3
  %i.av = load i8, ptr %gep.1.prol, align 1, !tbaa !47
  %i.aw = shl nsw i64 %.05572.ph, 1
  %i.ax = getelementptr inbounds i8, ptr %4, i64 %i.aw
  %.sroa.482.0.insert.ext.prol = zext i8 %i.av to i16
  %.sroa.482.0.insert.shift.prol = shl nuw i16 %.sroa.482.0.insert.ext.prol, 8
  %.sroa.081.0.insert.ext.prol = zext i8 %i.au to i16
  %.sroa.081.0.insert.insert.prol = or disjoint i16 %.sroa.482.0.insert.shift.prol, %.sroa.081.0.insert.ext.prol
  store i16 %.sroa.081.0.insert.insert.prol, ptr %i.ax, align 1
  %i.ay = add nsw i64 %.05572.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.05572.unr = phi i64 [ %.05572.ph, %.lr.ph.preheader ], [ %i.ay, %.lr.ph.prol ]
  %i.az = icmp eq i64 %2, %.neg
  br i1 %i.az, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.ba = icmp sgt i64 %2, 15
  br i1 %i.ba, label %.critedge.critedge, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.05572 = phi i64 [ %i.bk, %.lr.ph ], [ %.05572.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05572 ; 2 uses
  %i.bb = load i8, ptr %invariant.gep, align 1, !tbaa !47
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %3
  %i.bc = load i8, ptr %gep.1, align 1, !tbaa !47
  %i.bd = shl nsw i64 %.05572, 1
  %i.be = getelementptr inbounds i8, ptr %4, i64 %i.bd
  %.sroa.482.0.insert.ext = zext i8 %i.bc to i16
  %.sroa.482.0.insert.shift = shl nuw i16 %.sroa.482.0.insert.ext, 8
  %.sroa.081.0.insert.ext = zext i8 %i.bb to i16
  %.sroa.081.0.insert.insert = or disjoint i16 %.sroa.482.0.insert.shift, %.sroa.081.0.insert.ext
  store i16 %.sroa.081.0.insert.insert, ptr %i.be, align 1
  %i.bf = add nsw i64 %.05572, 1                  ; 2 uses
  %invariant.gep.1 = getelementptr i8, ptr %0, i64 %i.bf ; 2 uses
  %i.bg = load i8, ptr %invariant.gep.1, align 1, !tbaa !47
  %gep.1.1 = getelementptr i8, ptr %invariant.gep.1, i64 %3
  %i.bh = load i8, ptr %gep.1.1, align 1, !tbaa !47
  %i.bi = shl nsw i64 %i.bf, 1
  %i.bj = getelementptr inbounds i8, ptr %4, i64 %i.bi
  %.sroa.482.0.insert.ext.1 = zext i8 %i.bh to i16
  %.sroa.482.0.insert.shift.1 = shl nuw i16 %.sroa.482.0.insert.ext.1, 8
  %.sroa.081.0.insert.ext.1 = zext i8 %i.bg to i16
  %.sroa.081.0.insert.insert.1 = or disjoint i16 %.sroa.482.0.insert.shift.1, %.sroa.081.0.insert.ext.1
  store i16 %.sroa.081.0.insert.insert.1, ptr %i.bj, align 1
  %i.bk = add nsw i64 %.05572, 2                  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bk, %2
  br i1 %exitcond.not.1, label %.preheader, label %.lr.ph, !llvm.loop !71

._crit_edge:                                      ; preds = %.critedge.critedge, %.preheader
  ret void

.critedge.critedge:                               ; preds = %.preheader, %.critedge.critedge
  %.05375 = phi i64 [ %i.bu, %.critedge.critedge ], [ 0, %.preheader ] ; 3 uses
  %i.bl = shl nuw nsw i64 %.05375, 4
  %i.bm = getelementptr i8, ptr %0, i64 %i.bl     ; 2 uses
  %i.bn = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bm) ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bm, i64 %3
  %i.bp = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bo) ; 2 uses
  %i.bq = shufflevector <16 x i8> %i.bn, <16 x i8> %i.bp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.br = shufflevector <16 x i8> %i.bn, <16 x i8> %i.bp, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.bs = shl nuw i64 %.05375, 5
  %i.bt = getelementptr i8, ptr %4, i64 %i.bs     ; 2 uses
  store <16 x i8> %i.bq, ptr %i.bt, align 1, !tbaa !47
  %.sroa.8.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <16 x i8> %i.br, ptr %.sroa.8.32..sroa_idx, align 1, !tbaa !47
  %i.bu = add nuw nsw i64 %.05375, 1              ; 2 uses
  %exitcond80.not = icmp eq i64 %i.bu, %i.a
  br i1 %exitcond80.not, label %._crit_edge, label %.critedge.critedge, !llvm.loop !72
}

declare void @_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4avx2ELi2EEEvPKhillPh(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i8> @llvm.x86.sse3.ldu.dq(ptr) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !79 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef ptr @_ZN5arrow8internal7CpuInfo11GetInstanceEv()
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !36
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
  %i.g = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !36
  %i.h = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 4)
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !36
  %i.j = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 32)
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !36
  %i.l = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 1984)
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.g
  %.0 = phi i1 [ false, %bb.j ], [ %i.l, %bb.i ], [ %i.h, %bb.g ], [ %i.j, %bb.h ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd6sse4_2ELi4EEEvPKhillPh(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) #4 comdat personality ptr @__gxx_personality_v0 !guid !89 {
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
  %wide.load = load <4 x i8>, ptr %i.ab, align 1, !tbaa !47, !alias.scope !90
  %wide.load123 = load <4 x i8>, ptr %i.ac, align 1, !tbaa !47, !alias.scope !90
  %i.ad = getelementptr i8, ptr %i.ab, i64 %3     ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %wide.load124 = load <4 x i8>, ptr %i.ad, align 1, !tbaa !47, !alias.scope !91
  %wide.load125 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !47, !alias.scope !91
  %i.af = getelementptr i8, ptr %i.ab, i64 %i.d   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  %wide.load126 = load <4 x i8>, ptr %i.af, align 1, !tbaa !47, !alias.scope !92
  %wide.load127 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !47, !alias.scope !92
  %i.ah = getelementptr i8, ptr %i.ab, i64 %i.e   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  %wide.load128 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !47, !alias.scope !93
  %wide.load129 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !47, !alias.scope !93
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
  store <4 x i32> %i.bd, ptr %i.ak, align 1, !alias.scope !94, !noalias !95
  store <4 x i32> %i.be, ptr %i.bf, align 1, !alias.scope !94, !noalias !95
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !86

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
  %i.bj = mul nsw i64 %3, 3
  br label %.preheader.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader130, %.lr.ph
  %.05574 = phi i64 [ %i.bq, %.lr.ph ], [ %.05574.ph, %.lr.ph.preheader130 ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05574 ; 4 uses
  %i.bk = load i8, ptr %invariant.gep, align 1, !tbaa !47
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %3
  %i.bl = load i8, ptr %gep.1, align 1, !tbaa !47
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.d
  %i.bm = load i8, ptr %gep.2, align 1, !tbaa !47
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.e
  %i.bn = load i8, ptr %gep.3, align 1, !tbaa !47
  %i.bo = shl nsw i64 %.05574, 2
  %i.bp = getelementptr inbounds i8, ptr %4, i64 %i.bo
  %.sroa.690.0.insert.ext = zext i8 %i.bn to i32
  %.sroa.690.0.insert.shift = shl nuw i32 %.sroa.690.0.insert.ext, 24
  %.sroa.5.0.insert.ext = zext i8 %i.bm to i32
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %.sroa.5.0.insert.ext, 16
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.690.0.insert.shift, %.sroa.5.0.insert.shift
  %.sroa.489.0.insert.ext = zext i8 %i.bl to i32
  %.sroa.489.0.insert.shift = shl nuw nsw i32 %.sroa.489.0.insert.ext, 8
  %.sroa.489.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.489.0.insert.shift
  %.sroa.088.0.insert.ext = zext i8 %i.bk to i32
  %.sroa.088.0.insert.insert = or disjoint i32 %.sroa.489.0.insert.insert, %.sroa.088.0.insert.ext
  store i32 %.sroa.088.0.insert.insert, ptr %i.bp, align 1
  %i.bq = add nsw i64 %.05574, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bq, %2
  br i1 %exitcond.not, label %.preheader72, label %.lr.ph, !llvm.loop !87

._crit_edge:                                      ; preds = %.preheader.preheader, %.preheader72
  ret void

.preheader.preheader:                             ; preds = %.lr.ph80, %.preheader.preheader
  %.05379 = phi i64 [ 0, %.lr.ph80 ], [ %i.ck, %.preheader.preheader ] ; 3 uses
  %i.br = shl nuw nsw i64 %.05379, 4
  %i.bs = getelementptr i8, ptr %0, i64 %i.br     ; 4 uses
  %i.bt = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bs) ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bs, i64 %3
  %i.bv = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bu) ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bs, i64 %i.bi
  %i.bx = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bw) ; 2 uses
  %i.by = getelementptr i8, ptr %i.bs, i64 %i.bj
  %i.bz = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.by) ; 2 uses
  %i.ca = shufflevector <16 x i8> %i.bt, <16 x i8> %i.bx, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.cb = shufflevector <16 x i8> %i.bt, <16 x i8> %i.bx, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cc = shufflevector <16 x i8> %i.bv, <16 x i8> %i.bz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.cd = shufflevector <16 x i8> %i.bv, <16 x i8> %i.bz, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ce = shufflevector <16 x i8> %i.ca, <16 x i8> %i.cc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cf = shufflevector <16 x i8> %i.ca, <16 x i8> %i.cc, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cg = shufflevector <16 x i8> %i.cb, <16 x i8> %i.cd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ch = shufflevector <16 x i8> %i.cb, <16 x i8> %i.cd, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ci = shl i64 %.05379, 6
  %i.cj = getelementptr i8, ptr %4, i64 %i.ci     ; 4 uses
  store <16 x i8> %i.ce, ptr %i.cj, align 1, !tbaa !47
  %.sroa.20.128..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <16 x i8> %i.cf, ptr %.sroa.20.128..sroa_idx, align 1, !tbaa !47
  %.sroa.21.128..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  store <16 x i8> %i.cg, ptr %.sroa.21.128..sroa_idx, align 1, !tbaa !47
  %.sroa.22.128..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  store <16 x i8> %i.ch, ptr %.sroa.22.128..sroa_idx, align 1, !tbaa !47
  %i.ck = add nuw nsw i64 %.05379, 1              ; 2 uses
  %exitcond87.not = icmp eq i64 %i.ck, %i.a
  br i1 %exitcond87.not, label %._crit_edge, label %.preheader.preheader, !llvm.loop !88
}

declare void @_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4avx2ELi4EEEvPKhillPh(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !96 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef ptr @_ZN5arrow8internal7CpuInfo11GetInstanceEv()
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !36
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
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
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %bb.e
  %i.g = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !36
  %i.h = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 4)
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !36
  %i.j = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 32)
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !36
  %i.l = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 1984)
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.g
  %.0 = phi i1 [ false, %bb.j ], [ %i.l, %bb.i ], [ %i.h, %bb.g ], [ %i.j, %bb.h ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd6sse4_2ELi8EEEvPKhillPh(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) #4 comdat personality ptr @__gxx_personality_v0 !guid !110 {
bb.a:
  %i.a = sdiv i64 %2, 16                          ; 3 uses
  %i.b = shl nsw i64 %i.a, 4                      ; 14 uses
  %i.c = icmp slt i64 %i.b, %2
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader72

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = shl nsw i64 %3, 1                        ; 4 uses
  %i.e = mul nsw i64 %3, 3                        ; 4 uses
  %i.f = shl nsw i64 %3, 2                        ; 4 uses
  %i.g = mul nsw i64 %3, 5                        ; 4 uses
  %i.h = mul nsw i64 %3, 6                        ; 4 uses
  %i.i = mul nsw i64 %3, 7                        ; 4 uses
  %i.j = sub i64 %2, %i.b                         ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 20
  br i1 %min.iters.check, label %.lr.ph.preheader174, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.k = shl i64 %i.a, 7
  %i.l = getelementptr i8, ptr %4, i64 %i.k       ; 8 uses
  %i.m = shl i64 %2, 3
  %i.n = getelementptr i8, ptr %4, i64 %i.m       ; 8 uses
  %i.o = getelementptr i8, ptr %0, i64 %i.b
  %5 = getelementptr i8, ptr %i.o, i64 %i.i
  %i.p = getelementptr i8, ptr %0, i64 %2
  %6 = getelementptr i8, ptr %i.p, i64 %i.i
  %i.q = getelementptr i8, ptr %0, i64 %i.b
  %i.r = getelementptr i8, ptr %i.q, i64 %i.h
  %i.s = getelementptr i8, ptr %0, i64 %2
  %i.t = getelementptr i8, ptr %i.s, i64 %i.h
  %i.u = getelementptr i8, ptr %0, i64 %i.b
  %i.v = getelementptr i8, ptr %i.u, i64 %i.g
  %i.w = getelementptr i8, ptr %0, i64 %2
  %i.x = getelementptr i8, ptr %i.w, i64 %i.g
  %i.y = getelementptr i8, ptr %0, i64 %i.b
  %i.z = getelementptr i8, ptr %i.y, i64 %i.f
  %i.aa = getelementptr i8, ptr %0, i64 %2
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.f
  %i.ac = getelementptr i8, ptr %0, i64 %i.b
  %i.ad = getelementptr i8, ptr %i.ac, i64 %i.e
  %i.ae = getelementptr i8, ptr %0, i64 %2
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.e
  %i.ag = getelementptr i8, ptr %0, i64 %i.b
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.d
  %i.ai = getelementptr i8, ptr %0, i64 %2
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.d
  %i.ak = getelementptr i8, ptr %0, i64 %3
  %i.al = getelementptr i8, ptr %i.ak, i64 %i.b
  %i.am = getelementptr i8, ptr %0, i64 %3
  %i.an = getelementptr i8, ptr %i.am, i64 %2
  %i.ao = getelementptr i8, ptr %0, i64 %i.b
  %i.ap = getelementptr i8, ptr %0, i64 %2
  %bound0 = icmp ult ptr %i.l, %6
  %bound1 = icmp ult ptr %5, %i.n
  %found.conflict = and i1 %bound0, %bound1
  %bound0140 = icmp ult ptr %i.l, %i.t
  %bound1141 = icmp ult ptr %i.r, %i.n
  %found.conflict142 = and i1 %bound0140, %bound1141
  %conflict.rdx = or i1 %found.conflict, %found.conflict142
  %bound0143 = icmp ult ptr %i.l, %i.x
  %bound1144 = icmp ult ptr %i.v, %i.n
  %found.conflict145 = and i1 %bound0143, %bound1144
  %conflict.rdx146 = or i1 %conflict.rdx, %found.conflict145
  %bound0147 = icmp ult ptr %i.l, %i.ab
  %bound1148 = icmp ult ptr %i.z, %i.n
  %found.conflict149 = and i1 %bound0147, %bound1148
  %conflict.rdx150 = or i1 %conflict.rdx146, %found.conflict149
  %bound0151 = icmp ult ptr %i.l, %i.af
  %bound1152 = icmp ult ptr %i.ad, %i.n
  %found.conflict153 = and i1 %bound0151, %bound1152
  %conflict.rdx154 = or i1 %conflict.rdx150, %found.conflict153
  %bound0155 = icmp ult ptr %i.l, %i.aj
  %bound1156 = icmp ult ptr %i.ah, %i.n
  %found.conflict157 = and i1 %bound0155, %bound1156
  %conflict.rdx158 = or i1 %conflict.rdx154, %found.conflict157
  %bound0159 = icmp ult ptr %i.l, %i.an
  %bound1160 = icmp ult ptr %i.al, %i.n
  %found.conflict161 = and i1 %bound0159, %bound1160
  %conflict.rdx162 = or i1 %conflict.rdx158, %found.conflict161
  %bound0163 = icmp ult ptr %i.l, %i.ap
  %bound1164 = icmp ult ptr %i.ao, %i.n
  %found.conflict165 = and i1 %bound0163, %bound1164
  %conflict.rdx166 = or i1 %conflict.rdx162, %found.conflict165
  br i1 %conflict.rdx166, label %.lr.ph.preheader174, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aq = and i64 %2, 1                           ; 2 uses
  %n.vec = sub i64 %i.j, %i.aq                    ; 2 uses
  %i.ar = add i64 %i.b, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = add i64 %i.b, %index                    ; 2 uses
  %i.at = getelementptr i8, ptr %0, i64 %i.as     ; 8 uses
  %wide.load = load <2 x i8>, ptr %i.at, align 1, !tbaa !47, !alias.scope !111
  %i.au = getelementptr i8, ptr %i.at, i64 %3
  %wide.load167 = load <2 x i8>, ptr %i.au, align 1, !tbaa !47, !alias.scope !112
  %i.av = getelementptr i8, ptr %i.at, i64 %i.d
  %wide.load168 = load <2 x i8>, ptr %i.av, align 1, !tbaa !47, !alias.scope !113
  %i.aw = getelementptr i8, ptr %i.at, i64 %i.e
  %wide.load169 = load <2 x i8>, ptr %i.aw, align 1, !tbaa !47, !alias.scope !114
  %i.ax = getelementptr i8, ptr %i.at, i64 %i.f
  %wide.load170 = load <2 x i8>, ptr %i.ax, align 1, !tbaa !47, !alias.scope !115
  %i.ay = getelementptr i8, ptr %i.at, i64 %i.g
  %wide.load171 = load <2 x i8>, ptr %i.ay, align 1, !tbaa !47, !alias.scope !116
  %i.az = getelementptr i8, ptr %i.at, i64 %i.h
  %wide.load172 = load <2 x i8>, ptr %i.az, align 1, !tbaa !47, !alias.scope !117
  %i.ba = getelementptr i8, ptr %i.at, i64 %i.i
  %wide.load173 = load <2 x i8>, ptr %i.ba, align 1, !tbaa !47, !alias.scope !118
  %i.bb = shl nsw i64 %i.as, 3
  %i.bc = getelementptr inbounds i8, ptr %4, i64 %i.bb
  %i.bd = zext <2 x i8> %wide.load173 to <2 x i64>
  %i.be = shl nuw <2 x i64> %i.bd, splat (i64 56)
  %i.bf = zext <2 x i8> %wide.load172 to <2 x i64>
  %i.bg = shl nuw nsw <2 x i64> %i.bf, splat (i64 48)
  %i.bh = or disjoint <2 x i64> %i.be, %i.bg
  %i.bi = zext <2 x i8> %wide.load171 to <2 x i64>
  %i.bj = shl nuw nsw <2 x i64> %i.bi, splat (i64 40)
  %i.bk = or disjoint <2 x i64> %i.bh, %i.bj
  %i.bl = zext <2 x i8> %wide.load170 to <2 x i64>
  %i.bm = shl nuw nsw <2 x i64> %i.bl, splat (i64 32)
  %i.bn = or disjoint <2 x i64> %i.bk, %i.bm
  %i.bo = zext <2 x i8> %wide.load169 to <2 x i64>
  %i.bp = shl nuw nsw <2 x i64> %i.bo, splat (i64 24)
  %i.bq = or disjoint <2 x i64> %i.bn, %i.bp
  %i.br = zext <2 x i8> %wide.load168 to <2 x i64>
  %i.bs = shl nuw nsw <2 x i64> %i.br, splat (i64 16)
  %i.bt = zext <2 x i8> %wide.load167 to <2 x i64>
  %i.bu = shl nuw nsw <2 x i64> %i.bt, splat (i64 8)
  %i.bv = or disjoint <2 x i64> %i.bq, %i.bs
  %i.bw = zext <2 x i8> %wide.load to <2 x i64>
  %i.bx = or <2 x i64> %i.bv, %i.bu
  %i.by = or <2 x i64> %i.bx, %i.bw
  store <2 x i64> %i.by, ptr %i.bc, align 1, !alias.scope !119, !noalias !120
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, 0
  br i1 %cmp.n, label %.preheader72, label %.lr.ph.preheader174

.lr.ph.preheader174:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.05574.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph

.preheader72:                                     ; preds = %.lr.ph, %middle.block, %bb.a
  %i.ca = icmp sgt i64 %2, 15
  br i1 %i.ca, label %.lr.ph80, label %._crit_edge

.lr.ph80:                                         ; preds = %.preheader72
  %i.cb = shl nsw i64 %3, 1
  %i.cc = mul nsw i64 %3, 3
  %i.cd = shl nsw i64 %3, 2
  %i.ce = mul nsw i64 %3, 5
  %i.cf = mul nsw i64 %3, 6
  %i.cg = mul nsw i64 %3, 7
  br label %.preheader.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader174, %.lr.ph
  %.05574 = phi i64 [ %i.cr, %.lr.ph ], [ %.05574.ph, %.lr.ph.preheader174 ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05574 ; 8 uses
  %i.ch = load i8, ptr %invariant.gep, align 1, !tbaa !47
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %3
  %i.ci = load i8, ptr %gep.1, align 1, !tbaa !47
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.d
  %i.cj = load i8, ptr %gep.2, align 1, !tbaa !47
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.e
  %i.ck = load i8, ptr %gep.3, align 1, !tbaa !47
  %gep.4 = getelementptr i8, ptr %invariant.gep, i64 %i.f
  %i.cl = load i8, ptr %gep.4, align 1, !tbaa !47
  %gep.5 = getelementptr i8, ptr %invariant.gep, i64 %i.g
  %i.cm = load i8, ptr %gep.5, align 1, !tbaa !47
  %gep.6 = getelementptr i8, ptr %invariant.gep, i64 %i.h
  %i.cn = load i8, ptr %gep.6, align 1, !tbaa !47
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 %i.i
  %i.co = load i8, ptr %gep.7, align 1, !tbaa !47
  %i.cp = shl nsw i64 %.05574, 3
  %i.cq = getelementptr inbounds i8, ptr %4, i64 %i.cp
  %.sroa.1094.0.insert.ext = zext i8 %i.co to i64
  %.sroa.1094.0.insert.shift = shl nuw i64 %.sroa.1094.0.insert.ext, 56
  %.sroa.9.0.insert.ext = zext i8 %i.cn to i64
  %.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.9.0.insert.ext, 48
  %.sroa.9.0.insert.insert = or disjoint i64 %.sroa.1094.0.insert.shift, %.sroa.9.0.insert.shift
  %.sroa.893.0.insert.ext = zext i8 %i.cm to i64
  %.sroa.893.0.insert.shift = shl nuw nsw i64 %.sroa.893.0.insert.ext, 40
  %.sroa.893.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.insert, %.sroa.893.0.insert.shift
  %.sroa.7.0.insert.ext = zext i8 %i.cl to i64
  %.sroa.7.0.insert.shift = shl nuw nsw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.7.0.insert.insert = or disjoint i64 %.sroa.893.0.insert.insert, %.sroa.7.0.insert.shift
  %.sroa.692.0.insert.ext = zext i8 %i.ck to i64
  %.sroa.692.0.insert.shift = shl nuw nsw i64 %.sroa.692.0.insert.ext, 24
  %.sroa.692.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.insert, %.sroa.692.0.insert.shift
  %.sroa.5.0.insert.ext = zext i8 %i.cj to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 16
  %.sroa.491.0.insert.ext = zext i8 %i.ci to i64
  %.sroa.491.0.insert.shift = shl nuw nsw i64 %.sroa.491.0.insert.ext, 8
  %.sroa.491.0.insert.mask = or disjoint i64 %.sroa.692.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.090.0.insert.ext = zext i8 %i.ch to i64
  %.sroa.090.0.insert.mask = or i64 %.sroa.491.0.insert.mask, %.sroa.491.0.insert.shift
  %.sroa.090.0.insert.insert = or i64 %.sroa.090.0.insert.mask, %.sroa.090.0.insert.ext
  store i64 %.sroa.090.0.insert.insert, ptr %i.cq, align 1
  %i.cr = add nsw i64 %.05574, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cr, %2
  br i1 %exitcond.not, label %.preheader72, label %.lr.ph, !llvm.loop !108

._crit_edge:                                      ; preds = %.preheader.preheader, %.preheader72
  ret void

.preheader.preheader:                             ; preds = %.lr.ph80, %.preheader.preheader
  %.05379 = phi i64 [ 0, %.lr.ph80 ], [ %i.ej, %.preheader.preheader ] ; 3 uses
  %i.cs = shl nuw nsw i64 %.05379, 4
  %i.ct = getelementptr i8, ptr %0, i64 %i.cs     ; 8 uses
  %i.cu = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ct) ; 2 uses
  %i.cv = getelementptr i8, ptr %i.ct, i64 %3
  %i.cw = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cv) ; 2 uses
  %i.cx = getelementptr i8, ptr %i.ct, i64 %i.cb
  %i.cy = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cx) ; 2 uses
  %i.cz = getelementptr i8, ptr %i.ct, i64 %i.cc
  %i.da = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cz) ; 2 uses
  %i.db = getelementptr i8, ptr %i.ct, i64 %i.cd
  %i.dc = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.db) ; 2 uses
  %i.dd = getelementptr i8, ptr %i.ct, i64 %i.ce
  %i.de = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.dd) ; 2 uses
  %i.df = getelementptr i8, ptr %i.ct, i64 %i.cf
  %i.dg = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.df) ; 2 uses
  %i.dh = getelementptr i8, ptr %i.ct, i64 %i.cg
  %i.di = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.dh) ; 2 uses
  %i.dj = shufflevector <16 x i8> %i.cu, <16 x i8> %i.dc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dk = shufflevector <16 x i8> %i.cu, <16 x i8> %i.dc, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dl = shufflevector <16 x i8> %i.cw, <16 x i8> %i.de, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dm = shufflevector <16 x i8> %i.cw, <16 x i8> %i.de, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dn = shufflevector <16 x i8> %i.cy, <16 x i8> %i.dg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.do = shufflevector <16 x i8> %i.cy, <16 x i8> %i.dg, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dp = shufflevector <16 x i8> %i.da, <16 x i8> %i.di, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dq = shufflevector <16 x i8> %i.da, <16 x i8> %i.di, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dr = shufflevector <16 x i8> %i.dj, <16 x i8> %i.dn, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ds = shufflevector <16 x i8> %i.dj, <16 x i8> %i.dn, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dt = shufflevector <16 x i8> %i.dk, <16 x i8> %i.do, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.du = shufflevector <16 x i8> %i.dk, <16 x i8> %i.do, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dv = shufflevector <16 x i8> %i.dl, <16 x i8> %i.dp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dw = shufflevector <16 x i8> %i.dl, <16 x i8> %i.dp, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dx = shufflevector <16 x i8> %i.dm, <16 x i8> %i.dq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dy = shufflevector <16 x i8> %i.dm, <16 x i8> %i.dq, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dz = shufflevector <16 x i8> %i.dr, <16 x i8> %i.dv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ea = shufflevector <16 x i8> %i.dr, <16 x i8> %i.dv, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.eb = shufflevector <16 x i8> %i.ds, <16 x i8> %i.dw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ec = shufflevector <16 x i8> %i.ds, <16 x i8> %i.dw, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ed = shufflevector <16 x i8> %i.dt, <16 x i8> %i.dx, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ee = shufflevector <16 x i8> %i.dt, <16 x i8> %i.dx, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ef = shufflevector <16 x i8> %i.du, <16 x i8> %i.dy, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.eg = shufflevector <16 x i8> %i.du, <16 x i8> %i.dy, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.eh = shl i64 %.05379, 7
  %i.ei = getelementptr i8, ptr %4, i64 %i.eh     ; 8 uses
  store <16 x i8> %i.dz, ptr %i.ei, align 1, !tbaa !47
  %.sroa.52.384..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store <16 x i8> %i.ea, ptr %.sroa.52.384..sroa_idx, align 1, !tbaa !47
  %.sroa.53.384..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  store <16 x i8> %i.eb, ptr %.sroa.53.384..sroa_idx, align 1, !tbaa !47
  %.sroa.54.384..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  store <16 x i8> %i.ec, ptr %.sroa.54.384..sroa_idx, align 1, !tbaa !47
  %.sroa.55.384..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  store <16 x i8> %i.ed, ptr %.sroa.55.384..sroa_idx, align 1, !tbaa !47
  %.sroa.56.384..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 80
  store <16 x i8> %i.ee, ptr %.sroa.56.384..sroa_idx, align 1, !tbaa !47
  %.sroa.57.384..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 96
  store <16 x i8> %i.ef, ptr %.sroa.57.384..sroa_idx, align 1, !tbaa !47
  %.sroa.58.384..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 112
  store <16 x i8> %i.eg, ptr %.sroa.58.384..sroa_idx, align 1, !tbaa !47
  %i.ej = add nuw nsw i64 %.05379, 1              ; 2 uses
  %exitcond89.not = icmp eq i64 %i.ej, %i.a
  br i1 %exitcond89.not, label %._crit_edge, label %.preheader.preheader, !llvm.loop !109
}

declare void @_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4avx2ELi8EEEvPKhillPh(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !121 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info acquire, align 8
end_hunk_0
begin_hunk_1_@_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd6sse4_2ELi8EEEvPKhilPh:bb.a
  %i.abb = getelementptr i8, ptr %i.aax, i64 2
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !47
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.b
  store i8 %i.abc, ptr %gep.2, align 1, !tbaa !47
  %i.abd = getelementptr i8, ptr %i.aax, i64 3
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !47
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.d
  store i8 %i.abe, ptr %gep.3, align 1, !tbaa !47
  %i.abf = getelementptr i8, ptr %i.aax, i64 4
  %i.abg = load i8, ptr %i.abf, align 1, !tbaa !47
  %gep.4 = getelementptr i8, ptr %invariant.gep, i64 %i.f
  store i8 %i.abg, ptr %gep.4, align 1, !tbaa !47
  %i.abh = getelementptr i8, ptr %i.aax, i64 5
  %i.abi = load i8, ptr %i.abh, align 1, !tbaa !47
  %gep.5 = getelementptr i8, ptr %invariant.gep, i64 %i.h
  store i8 %i.abi, ptr %gep.5, align 1, !tbaa !47
  %i.abj = getelementptr i8, ptr %i.aax, i64 6
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !47
  %gep.6 = getelementptr i8, ptr %invariant.gep, i64 %i.j
  store i8 %i.abk, ptr %gep.6, align 1, !tbaa !47
  %i.abl = getelementptr i8, ptr %i.aax, i64 7
  %i.abm = load i8, ptr %i.abl, align 1, !tbaa !47
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 %i.l
  store i8 %i.abm, ptr %gep.7, align 1, !tbaa !47
  %i.abn = add nsw i64 %.080104, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.abn, %2
  br i1 %exitcond.not, label %.preheader100, label %.preheader101, !llvm.loop !168

.preheader100:                                    ; preds = %.preheader101, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.abo = icmp sgt i64 %2, 15
  br i1 %i.abo, label %.preheader96.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader96.preheader, %.preheader100
  ret void

.preheader96.preheader:                           ; preds = %.preheader100, %.preheader96.preheader
  %.078111 = phi i64 [ %i.adv, %.preheader96.preheader ], [ 0, %.preheader100 ] ; 3 uses
  %i.abp = shl i64 %.078111, 7
  %i.abq = getelementptr i8, ptr %0, i64 %i.abp   ; 8 uses
  %i.abr = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.abq) ; 2 uses
  %i.abs = getelementptr i8, ptr %i.abq, i64 16
  %i.abt = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.abs) ; 2 uses
  %i.abu = getelementptr i8, ptr %i.abq, i64 32
  %i.abv = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.abu) ; 2 uses
  %i.abw = getelementptr i8, ptr %i.abq, i64 48
  %i.abx = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.abw) ; 2 uses
  %i.aby = getelementptr i8, ptr %i.abq, i64 64
  %i.abz = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.aby) ; 2 uses
  %i.aca = getelementptr i8, ptr %i.abq, i64 80
  %i.acb = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.aca) ; 2 uses
  %i.acc = getelementptr i8, ptr %i.abq, i64 96
  %i.acd = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.acc) ; 2 uses
  %i.ace = getelementptr i8, ptr %i.abq, i64 112
  %i.acf = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ace) ; 2 uses
  %i.acg = shufflevector <16 x i8> %i.abr, <16 x i8> %i.abt, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27>
  %i.ach = bitcast <16 x i8> %i.acg to <4 x i32>  ; 2 uses
  %i.aci = shufflevector <16 x i8> %i.abr, <16 x i8> %i.abt, <16 x i32> <i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %i.acj = bitcast <16 x i8> %i.aci to <4 x i32>  ; 2 uses
  %i.ack = shufflevector <16 x i8> %i.abv, <16 x i8> %i.abx, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27>
  %i.acl = bitcast <16 x i8> %i.ack to <4 x i32>  ; 2 uses
  %i.acm = shufflevector <16 x i8> %i.abv, <16 x i8> %i.abx, <16 x i32> <i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %i.acn = bitcast <16 x i8> %i.acm to <4 x i32>  ; 2 uses
  %i.aco = shufflevector <16 x i8> %i.abz, <16 x i8> %i.acb, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27>
  %i.acp = bitcast <16 x i8> %i.aco to <4 x i32>  ; 2 uses
  %i.acq = shufflevector <16 x i8> %i.abz, <16 x i8> %i.acb, <16 x i32> <i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %i.acr = bitcast <16 x i8> %i.acq to <4 x i32>  ; 2 uses
  %i.acs = shufflevector <16 x i8> %i.acd, <16 x i8> %i.acf, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27>
  %i.act = bitcast <16 x i8> %i.acs to <4 x i32>  ; 2 uses
  %i.acu = shufflevector <16 x i8> %i.acd, <16 x i8> %i.acf, <16 x i32> <i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %i.acv = bitcast <16 x i8> %i.acu to <4 x i32>  ; 2 uses
  %i.acw = shufflevector <4 x i32> %i.ach, <4 x i32> %i.acp, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.acx = shufflevector <4 x i32> %i.ach, <4 x i32> %i.acp, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.acy = shufflevector <4 x i32> %i.acj, <4 x i32> %i.acr, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.acz = shufflevector <4 x i32> %i.acj, <4 x i32> %i.acr, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ada = shufflevector <4 x i32> %i.acl, <4 x i32> %i.act, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.adb = shufflevector <4 x i32> %i.acl, <4 x i32> %i.act, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.adc = shufflevector <4 x i32> %i.acn, <4 x i32> %i.acv, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.add = shufflevector <4 x i32> %i.acn, <4 x i32> %i.acv, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ade = shufflevector <4 x i32> %i.acw, <4 x i32> %i.ada, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.adf = shufflevector <4 x i32> %i.acw, <4 x i32> %i.ada, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.adg = shufflevector <4 x i32> %i.acx, <4 x i32> %i.adb, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.adh = shufflevector <4 x i32> %i.acx, <4 x i32> %i.adb, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.adi = shufflevector <4 x i32> %i.acy, <4 x i32> %i.adc, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.adj = shufflevector <4 x i32> %i.acy, <4 x i32> %i.adc, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.adk = shufflevector <4 x i32> %i.acz, <4 x i32> %i.add, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.adl = shufflevector <4 x i32> %i.acz, <4 x i32> %i.add, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.adm = shl nuw nsw i64 %.078111, 4            ; 8 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %3, i64 %i.adm
  store <4 x i32> %i.ade, ptr %i.adn, align 1, !tbaa !47
  %i.ado = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.adm
  store <4 x i32> %i.adf, ptr %i.ado, align 1, !tbaa !47
  %i.adp = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.adm
  store <4 x i32> %i.adg, ptr %i.adp, align 1, !tbaa !47
  %i.adq = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.adm
  store <4 x i32> %i.adh, ptr %i.adq, align 1, !tbaa !47
  %i.adr = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.adm
  store <4 x i32> %i.adi, ptr %i.adr, align 1, !tbaa !47
  %i.ads = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.adm
  store <4 x i32> %i.adj, ptr %i.ads, align 1, !tbaa !47
  %i.adt = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.adm
  store <4 x i32> %i.adk, ptr %i.adt, align 1, !tbaa !47
  %i.adu = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.adm
  store <4 x i32> %i.adl, ptr %i.adu, align 1, !tbaa !47
  %i.adv = add nuw nsw i64 %.078111, 1            ; 2 uses
  %exitcond125.not = icmp eq i64 %i.adv, %i.n
  br i1 %exitcond125.not, label %._crit_edge, label %.preheader96.preheader, !llvm.loop !169
}

declare void @_ZN5arrow4util8internal25ByteStreamSplitEncodeAvx2ILi8EEEvPKhilPh(ptr noundef, i32 noundef, i64 noundef, ptr noundef) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{i64 5064558424583173818}
!8 = !{i64 -4655303867834181907}
!9 = !{i64 4746032643133005810}
!10 = !{i64 -3963968085777437840}
!11 = !{i64 8524115632177720232}
!12 = !{i64 3884386620286365971}
!13 = !{i64 2353896075390154834}
!14 = !{i64 -2056578294472247363}
!15 = !{i64 7643516136891516626}
!16 = !{i64 5070161970491423638}
!17 = !{i64 6313388587042318871}
!18 = !{i64 8848822976021526653}
!19 = !{i64 -618464863706592942}
!20 = !{i64 -8824909373171793338}
!21 = !{i64 -1460765693941645139}
!22 = !{i64 -732453227760755722}
!23 = !{i64 -1673944335972352452}
!24 = !{i64 4227942131132596002}
!25 = !{i64 -7816366189536983153}
!26 = !{i64 7844780867207169638}
!27 = !{i64 4056406377785292181}
!28 = !{i64 -2343315344600975946}
!29 = !{i64 -811290472753636650}
!30 = !{i64 4745070567652929375}
!31 = !{!"branch_weights", i32 1, i32 1048575}
!32 = !{!"any pointer", !4, i64 0}
!33 = !{!"_ZTSN5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi2EEEEE", !32, i64 0}
!34 = !{!33, !32, i64 0}
!35 = !{!"p1 _ZTSN5arrow8internal7CpuInfoE", !32, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"_ZTSN5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi4EEEEE", !32, i64 0}
!38 = !{!37, !32, i64 0}
!39 = !{!"_ZTSN5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi8EEEEE", !32, i64 0}
!40 = !{!39, !32, i64 0}
!41 = !{!"_ZTSN5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi2EEEEE", !32, i64 0}
!42 = !{!41, !32, i64 0}
!43 = !{!"_ZTSN5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEEE", !32, i64 0}
!44 = !{!43, !32, i64 0}
!45 = !{!"_ZTSN5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEEE", !32, i64 0}
!46 = !{!45, !32, i64 0}
!47 = !{!4, !4, i64 0}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.isvectorized", i32 1}
!50 = !{!"llvm.loop.unroll.runtime.disable"}
!51 = !{!"branch_weights", i32 8, i32 8}
!52 = !{i64 3726684064388765397}
!53 = !{i64 -886135506983849247}
!54 = !{i64 7349394440862359525}
!55 = !{i64 -8326992068877237787}
!56 = !{i64 -1851431836584311289}
!57 = !{i64 4003998078098418974}
!58 = !{i64 -8522391025831243695}
!59 = !{i64 -2434381886511791002}
!60 = !{i64 -2831498352202785354}
!61 = !{i64 -8375886644374925428}
!62 = !{i64 -5882342732777435907}
!63 = !{i64 1007769956678716615}
!64 = !{i64 6080826753750035476}
!65 = distinct !{!65, i1 false, !"LVerDomain"}
!66 = distinct !{!66, !65}
!67 = distinct !{!67, !65}
!68 = distinct !{!68, !65}
!69 = distinct !{!69, !48, !49, !50}
!70 = distinct !{!70, !48, !49, !50}
!71 = distinct !{!71, !48, !49}
!72 = distinct !{!72, !48}
!73 = !{i64 2194796270205522804}
!74 = !{!66}
!75 = !{!67}
!76 = !{!68}
!77 = !{!67, !66}
!78 = !{!"branch_weights", i32 4, i32 12}
!79 = !{i64 -1583796485935786994}
!80 = distinct !{!80, i1 false, !"LVerDomain"}
!81 = distinct !{!81, !80}
!82 = distinct !{!82, !80}
!83 = distinct !{!83, !80}
!84 = distinct !{!84, !80}
!85 = distinct !{!85, !80}
!86 = distinct !{!86, !48, !49, !50}
!87 = distinct !{!87, !48, !49}
!88 = distinct !{!88, !48}
!89 = !{i64 -4436418856857075558}
!90 = !{!81}
!91 = !{!82}
!92 = !{!83}
!93 = !{!84}
!94 = !{!85}
!95 = !{!84, !83, !82, !81}
!96 = !{i64 -418094766516119183}
!97 = distinct !{!97, i1 false, !"LVerDomain"}
!98 = distinct !{!98, !97}
!99 = distinct !{!99, !97}
!100 = distinct !{!100, !97}
!101 = distinct !{!101, !97}
!102 = distinct !{!102, !97}
!103 = distinct !{!103, !97}
!104 = distinct !{!104, !97}
!105 = distinct !{!105, !97}
!106 = distinct !{!106, !97}
!107 = distinct !{!107, !48, !49, !50}
!108 = distinct !{!108, !48, !49}
!109 = distinct !{!109, !48}
!110 = !{i64 5552802482081580809}
!111 = !{!98}
!112 = !{!99}
!113 = !{!100}
!114 = !{!101}
!115 = !{!102}
!116 = !{!103}
!117 = !{!104}
!118 = !{!105}
!119 = !{!106}
!120 = !{!105, !104, !103, !102, !101, !100, !99, !98}
!121 = !{i64 2700574380348743705}
!122 = distinct !{!122, i1 false, !"LVerDomain"}
!123 = distinct !{!123, !122}
!124 = distinct !{!124, !122}
!125 = distinct !{!125, !122}
!126 = distinct !{!126, !48, !49, !50}
!127 = distinct !{!127, !48, !49, !50}
!128 = distinct !{!128, !48, !49}
!129 = distinct !{!129, !48}
!130 = !{i64 -4489009766404233086}
!131 = !{!123}
!132 = !{!124}
!133 = !{!125, !123}
!134 = !{!125}
!135 = !{i64 987105541115086651}
!136 = distinct !{!136, i1 false, !"LVerDomain"}
!137 = distinct !{!137, !136}
!138 = distinct !{!138, !136}
!139 = distinct !{!139, !136}
!140 = distinct !{!140, !136}
!141 = distinct !{!141, !136}
!142 = distinct !{!142, !48, !49, !50}
!143 = distinct !{!143, !48, !49, !50}
!144 = distinct !{!144, !48, !49}
!145 = distinct !{!145, !48}
!146 = !{i64 -7223034536157773405}
!147 = !{!137}
!148 = !{!138}
!149 = !{!141, !140, !139, !137}
!150 = !{!141}
!151 = !{!140, !139, !137}
!152 = !{!140}
!153 = !{!139, !137}
!154 = !{!139}
!155 = !{i64 606889870416364063}
!156 = distinct !{!156, i1 false, !"LVerDomain"}
!157 = distinct !{!157, !156}
!158 = distinct !{!158, !156}
!159 = distinct !{!159, !156}
!160 = distinct !{!160, !156}
!161 = distinct !{!161, !156}
!162 = distinct !{!162, !156}
!163 = distinct !{!163, !156}
!164 = distinct !{!164, !156}
!165 = distinct !{!165, !156}
!166 = distinct !{!166, !48, !49, !50}
!167 = distinct !{!167, !48, !49, !50}
!168 = distinct !{!168, !48, !49}
!169 = distinct !{!169, !48}
!170 = !{i64 36301476601364435}
!171 = !{!157}
!172 = !{!158}
!173 = !{!165, !164, !163, !162, !161, !160, !159, !157}
!174 = !{!165}
!175 = !{!164, !163, !162, !161, !160, !159, !157}
!176 = !{!164}
!177 = !{!163, !162, !161, !160, !159, !157}
!178 = !{!163}
!179 = !{!162, !161, !160, !159, !157}
!180 = !{!162}
!181 = !{!161, !160, !159, !157}
!182 = !{!161}
!183 = !{!160, !159, !157}
!184 = !{!160}
!185 = !{!159, !157}
!186 = !{!159}
end_hunk_1
