Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/byte_stream_split_internal?download=true
inline.NumInlined: 154
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd6sse4_2ELi2EEEvPKhillPh:bb.a
  %i.t = shl nuw <8 x i16> %i.r, splat (i16 8)
  %i.u = shl nuw <8 x i16> %i.s, splat (i16 8)
  %i.v = zext <8 x i8> %wide.load to <8 x i16>
  %i.w = zext <8 x i8> %wide.load95 to <8 x i16>
  %i.x = or disjoint <8 x i16> %i.t, %i.v
  %i.y = or disjoint <8 x i16> %i.u, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <8 x i16> %i.x, ptr %i.q, align 1, !alias.scope !29, !noalias !31
  store <8 x i16> %i.y, ptr %i.z, align 1, !alias.scope !29, !noalias !31
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, 0
  br i1 %cmp.n, label %.preheader72, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.i, 4
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !36

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ab = and i64 %2, 3                           ; 2 uses
  %n.vec98 = sub i64 %i.d, %i.ab                  ; 2 uses
  %i.ac = add i64 %i.b, %n.vec98
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index99 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next102, %vec.epilog.vector.body ] ; 2 uses
  %i.ad = add i64 %i.b, %index99                  ; 2 uses
  %i.ae = getelementptr i8, ptr %0, i64 %i.ad     ; 2 uses
  %wide.load100 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !23, !alias.scope !24
  %i.af = getelementptr i8, ptr %i.ae, i64 %3
  %wide.load101 = load <4 x i8>, ptr %i.af, align 1, !tbaa !23, !alias.scope !27
  %i.ag = shl nsw i64 %i.ad, 1
  %i.ah = getelementptr inbounds i8, ptr %4, i64 %i.ag
  %i.ai = zext <4 x i8> %wide.load101 to <4 x i16>
  %i.aj = shl nuw <4 x i16> %i.ai, splat (i16 8)
  %i.ak = zext <4 x i8> %wide.load100 to <4 x i16>
  %i.al = or disjoint <4 x i16> %i.aj, %i.ak
  store <4 x i16> %i.al, ptr %i.ah, align 1, !alias.scope !29, !noalias !31
  %index.next102 = add nuw i64 %index99, 4        ; 2 uses
  %i.am = icmp eq i64 %index.next102, %n.vec98
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n103 = icmp eq i64 %i.ab, 0
  br i1 %cmp.n103, label %.preheader72, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05574.ph = phi i64 [ %i.b, %iter.check ], [ %i.b, %vector.memcheck ], [ %i.j, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ] ; 6 uses
  %i.an = sub i64 %2, %.05574.ph
  %.neg = add i64 %.05574.ph, 1
  %xtraiter = and i64 %i.an, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %invariant.gep.prol = getelementptr i8, ptr %0, i64 %.05574.ph ; 2 uses
  %i.ao = load i8, ptr %invariant.gep.prol, align 1, !tbaa !23
  %gep.1.prol = getelementptr i8, ptr %invariant.gep.prol, i64 %3
  %i.ap = load i8, ptr %gep.1.prol, align 1, !tbaa !23
  %i.aq = shl nsw i64 %.05574.ph, 1
  %i.ar = getelementptr inbounds i8, ptr %4, i64 %i.aq
  %.sroa.484.0.insert.ext.prol = zext i8 %i.ap to i16
  %.sroa.484.0.insert.shift.prol = shl nuw i16 %.sroa.484.0.insert.ext.prol, 8
  %.sroa.083.0.insert.ext.prol = zext i8 %i.ao to i16
  %.sroa.083.0.insert.insert.prol = or disjoint i16 %.sroa.484.0.insert.shift.prol, %.sroa.083.0.insert.ext.prol
  store i16 %.sroa.083.0.insert.insert.prol, ptr %i.ar, align 1
  %i.as = add nsw i64 %.05574.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.05574.unr = phi i64 [ %.05574.ph, %.lr.ph.preheader ], [ %i.as, %.lr.ph.prol ]
  %i.at = icmp eq i64 %2, %.neg
  br i1 %i.at, label %.preheader72, label %.lr.ph

.preheader72:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.au = icmp sgt i64 %2, 15
  br i1 %i.au, label %.preheader71, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.05574 = phi i64 [ %i.be, %.lr.ph ], [ %.05574.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05574 ; 2 uses
  %i.av = load i8, ptr %invariant.gep, align 1, !tbaa !23
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %3
  %i.aw = load i8, ptr %gep.1, align 1, !tbaa !23
  %i.ax = shl nsw i64 %.05574, 1
  %i.ay = getelementptr inbounds i8, ptr %4, i64 %i.ax
  %.sroa.484.0.insert.ext = zext i8 %i.aw to i16
  %.sroa.484.0.insert.shift = shl nuw i16 %.sroa.484.0.insert.ext, 8
  %.sroa.083.0.insert.ext = zext i8 %i.av to i16
  %.sroa.083.0.insert.insert = or disjoint i16 %.sroa.484.0.insert.shift, %.sroa.083.0.insert.ext
  store i16 %.sroa.083.0.insert.insert, ptr %i.ay, align 1
  %i.az = add nsw i64 %.05574, 1                  ; 2 uses
  %invariant.gep.1 = getelementptr i8, ptr %0, i64 %i.az ; 2 uses
  %i.ba = load i8, ptr %invariant.gep.1, align 1, !tbaa !23
  %gep.1.1 = getelementptr i8, ptr %invariant.gep.1, i64 %3
  %i.bb = load i8, ptr %gep.1.1, align 1, !tbaa !23
  %i.bc = shl nsw i64 %i.az, 1
  %i.bd = getelementptr inbounds i8, ptr %4, i64 %i.bc
  %.sroa.484.0.insert.ext.1 = zext i8 %i.bb to i16
  %.sroa.484.0.insert.shift.1 = shl nuw i16 %.sroa.484.0.insert.ext.1, 8
  %.sroa.083.0.insert.ext.1 = zext i8 %i.ba to i16
  %.sroa.083.0.insert.insert.1 = or disjoint i16 %.sroa.484.0.insert.shift.1, %.sroa.083.0.insert.ext.1
  store i16 %.sroa.083.0.insert.insert.1, ptr %i.bd, align 1
  %i.be = add nsw i64 %.05574, 2                  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.be, %2
  br i1 %exitcond.not.1, label %.preheader72, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %.preheader71, %.preheader72
  ret void

.preheader71:                                     ; preds = %.preheader72, %.preheader71
  %.05377 = phi i64 [ %i.bo, %.preheader71 ], [ 0, %.preheader72 ] ; 3 uses
  %i.bf = shl nuw nsw i64 %.05377, 4
  %i.bg = getelementptr i8, ptr %0, i64 %i.bf     ; 2 uses
  %i.bh = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bg) ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bg, i64 %3
  %i.bj = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bi) ; 2 uses
  %i.bk = shufflevector <16 x i8> %i.bh, <16 x i8> %i.bj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bl = shufflevector <16 x i8> %i.bh, <16 x i8> %i.bj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.bm = shl nuw i64 %.05377, 5
  %i.bn = getelementptr i8, ptr %4, i64 %i.bm     ; 2 uses
  store <16 x i8> %i.bk, ptr %i.bn, align 1, !tbaa !23
  %.sroa.8.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <16 x i8> %i.bl, ptr %.sroa.8.32..sroa_idx, align 1, !tbaa !23
  %i.bo = add nuw nsw i64 %.05377, 1              ; 2 uses
  %exitcond82.not = icmp eq i64 %i.bo, %i.a
  br i1 %exitcond82.not, label %._crit_edge, label %.preheader71, !llvm.loop !39
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
  store ptr %i.d, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
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
  %i.g = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
  %i.h = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 4)
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
  %i.j = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 32)
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
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
  %i.a = sdiv i64 %2, 16                          ; 4 uses
  %i.b = shl nsw i64 %i.a, 4                      ; 9 uses
  %i.c = icmp slt i64 %i.b, %2
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader72

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = shl nsw i64 %3, 1                        ; 4 uses
  %i.e = mul nsw i64 %3, 3                        ; 4 uses
  %5 = shl nsw i64 %i.a, 4
  %i.f = sub i64 %2, %5                           ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 20
  br i1 %min.iters.check, label %.lr.ph.preheader119, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.g = shl i64 %i.a, 6
  %scevgep = getelementptr i8, ptr %4, i64 %i.g   ; 4 uses
  %i.h = shl i64 %2, 2
  %scevgep92 = getelementptr i8, ptr %4, i64 %i.h ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 %i.b
  %scevgep93 = getelementptr i8, ptr %i.i, i64 %i.e
  %i.j = getelementptr i8, ptr %0, i64 %2
  %scevgep94 = getelementptr i8, ptr %i.j, i64 %i.e
  %i.k = getelementptr i8, ptr %0, i64 %i.b
  %scevgep95 = getelementptr i8, ptr %i.k, i64 %i.d
  %i.l = getelementptr i8, ptr %0, i64 %2
  %scevgep96 = getelementptr i8, ptr %i.l, i64 %i.d
  %i.m = getelementptr i8, ptr %0, i64 %3
  %scevgep97 = getelementptr i8, ptr %i.m, i64 %i.b
  %i.n = getelementptr i8, ptr %0, i64 %3
  %scevgep98 = getelementptr i8, ptr %i.n, i64 %2
  %scevgep99 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep100 = getelementptr i8, ptr %0, i64 %2
  %bound0 = icmp ult ptr %scevgep, %scevgep94
  %bound1 = icmp ult ptr %scevgep93, %scevgep92
  %found.conflict = and i1 %bound0, %bound1
  %bound0101 = icmp ult ptr %scevgep, %scevgep96
  %bound1102 = icmp ult ptr %scevgep95, %scevgep92
  %found.conflict103 = and i1 %bound0101, %bound1102
  %conflict.rdx = or i1 %found.conflict, %found.conflict103
  %bound0104 = icmp ult ptr %scevgep, %scevgep98
  %bound1105 = icmp ult ptr %scevgep97, %scevgep92
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx107 = or i1 %conflict.rdx, %found.conflict106
  %bound0108 = icmp ult ptr %scevgep, %scevgep100
  %bound1109 = icmp ult ptr %scevgep99, %scevgep92
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %conflict.rdx107, %found.conflict110
  br i1 %conflict.rdx111, label %.lr.ph.preheader119, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.o = and i64 %2, 7                            ; 2 uses
  %n.vec = sub i64 %i.f, %i.o                     ; 2 uses
  %i.p = add i64 %i.b, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = add i64 %i.b, %index                     ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.q       ; 5 uses
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %wide.load = load <4 x i8>, ptr %i.r, align 1, !tbaa !23, !alias.scope !40
  %wide.load112 = load <4 x i8>, ptr %i.s, align 1, !tbaa !23, !alias.scope !40
  %i.t = getelementptr i8, ptr %i.r, i64 %3       ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %wide.load113 = load <4 x i8>, ptr %i.t, align 1, !tbaa !23, !alias.scope !43
  %wide.load114 = load <4 x i8>, ptr %i.u, align 1, !tbaa !23, !alias.scope !43
  %i.v = getelementptr i8, ptr %i.r, i64 %i.d     ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %wide.load115 = load <4 x i8>, ptr %i.v, align 1, !tbaa !23, !alias.scope !45
  %wide.load116 = load <4 x i8>, ptr %i.w, align 1, !tbaa !23, !alias.scope !45
  %i.x = getelementptr i8, ptr %i.r, i64 %i.e     ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 4
  %wide.load117 = load <4 x i8>, ptr %i.x, align 1, !tbaa !23, !alias.scope !47
  %wide.load118 = load <4 x i8>, ptr %i.y, align 1, !tbaa !23, !alias.scope !47
  %i.z = shl nsw i64 %i.q, 2
  %i.aa = getelementptr inbounds i8, ptr %4, i64 %i.z ; 2 uses
  %i.ab = zext <4 x i8> %wide.load117 to <4 x i32>
  %i.ac = zext <4 x i8> %wide.load118 to <4 x i32>
  %i.ad = shl nuw <4 x i32> %i.ab, splat (i32 24)
  %i.ae = shl nuw <4 x i32> %i.ac, splat (i32 24)
  %i.af = zext <4 x i8> %wide.load115 to <4 x i32>
  %i.ag = zext <4 x i8> %wide.load116 to <4 x i32>
  %i.ah = shl nuw nsw <4 x i32> %i.af, splat (i32 16)
  %i.ai = shl nuw nsw <4 x i32> %i.ag, splat (i32 16)
  %i.aj = or disjoint <4 x i32> %i.ad, %i.ah
  %i.ak = or disjoint <4 x i32> %i.ae, %i.ai
  %i.al = zext <4 x i8> %wide.load113 to <4 x i32>
  %i.am = zext <4 x i8> %wide.load114 to <4 x i32>
  %i.an = shl nuw nsw <4 x i32> %i.al, splat (i32 8)
  %i.ao = shl nuw nsw <4 x i32> %i.am, splat (i32 8)
  %i.ap = or disjoint <4 x i32> %i.aj, %i.an
  %i.aq = or disjoint <4 x i32> %i.ak, %i.ao
  %i.ar = zext <4 x i8> %wide.load to <4 x i32>
  %i.as = zext <4 x i8> %wide.load112 to <4 x i32>
  %i.at = or disjoint <4 x i32> %i.ap, %i.ar
  %i.au = or disjoint <4 x i32> %i.aq, %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <4 x i32> %i.at, ptr %i.aa, align 1, !alias.scope !49, !noalias !51
  store <4 x i32> %i.au, ptr %i.av, align 1, !alias.scope !49, !noalias !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, 0
  br i1 %cmp.n, label %.preheader72, label %.lr.ph.preheader119

.lr.ph.preheader119:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.05574.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph

.preheader72:                                     ; preds = %.lr.ph, %middle.block, %bb.a
  %i.ax = icmp sgt i64 %2, 15
  br i1 %i.ax, label %.lr.ph80, label %._crit_edge

.lr.ph80:                                         ; preds = %.preheader72
  %i.ay = shl nsw i64 %3, 1
  %i.az = mul nsw i64 %3, 3
  br label %.preheader.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader119, %.lr.ph
  %.05574 = phi i64 [ %i.bg, %.lr.ph ], [ %.05574.ph, %.lr.ph.preheader119 ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05574 ; 4 uses
  %i.ba = load i8, ptr %invariant.gep, align 1, !tbaa !23
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %3
  %i.bb = load i8, ptr %gep.1, align 1, !tbaa !23
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.d
  %i.bc = load i8, ptr %gep.2, align 1, !tbaa !23
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.e
  %i.bd = load i8, ptr %gep.3, align 1, !tbaa !23
  %i.be = shl nsw i64 %.05574, 2
  %i.bf = getelementptr inbounds i8, ptr %4, i64 %i.be
  %.sroa.690.0.insert.ext = zext i8 %i.bd to i32
  %.sroa.690.0.insert.shift = shl nuw i32 %.sroa.690.0.insert.ext, 24
  %.sroa.5.0.insert.ext = zext i8 %i.bc to i32
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %.sroa.5.0.insert.ext, 16
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.690.0.insert.shift, %.sroa.5.0.insert.shift
  %.sroa.489.0.insert.ext = zext i8 %i.bb to i32
  %.sroa.489.0.insert.shift = shl nuw nsw i32 %.sroa.489.0.insert.ext, 8
  %.sroa.489.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.489.0.insert.shift
  %.sroa.088.0.insert.ext = zext i8 %i.ba to i32
  %.sroa.088.0.insert.insert = or disjoint i32 %.sroa.489.0.insert.insert, %.sroa.088.0.insert.ext
  store i32 %.sroa.088.0.insert.insert, ptr %i.bf, align 1
  %i.bg = add nsw i64 %.05574, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bg, %2
  br i1 %exitcond.not, label %.preheader72, label %.lr.ph, !llvm.loop !53

._crit_edge:                                      ; preds = %.preheader.preheader, %.preheader72
  ret void

.preheader.preheader:                             ; preds = %.lr.ph80, %.preheader.preheader
  %.05379 = phi i64 [ 0, %.lr.ph80 ], [ %i.ca, %.preheader.preheader ] ; 3 uses
  %i.bh = shl nuw nsw i64 %.05379, 4
  %i.bi = getelementptr i8, ptr %0, i64 %i.bh     ; 4 uses
  %i.bj = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bi) ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bi, i64 %3
  %i.bl = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bk) ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bi, i64 %i.ay
  %i.bn = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bm) ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bi, i64 %i.az
  %i.bp = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bo) ; 2 uses
  %i.bq = shufflevector <16 x i8> %i.bj, <16 x i8> %i.bn, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.br = shufflevector <16 x i8> %i.bj, <16 x i8> %i.bn, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bs = shufflevector <16 x i8> %i.bl, <16 x i8> %i.bp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bt = shufflevector <16 x i8> %i.bl, <16 x i8> %i.bp, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bu = shufflevector <16 x i8> %i.bq, <16 x i8> %i.bs, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bv = shufflevector <16 x i8> %i.bq, <16 x i8> %i.bs, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.bw = shufflevector <16 x i8> %i.br, <16 x i8> %i.bt, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bx = shufflevector <16 x i8> %i.br, <16 x i8> %i.bt, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.by = shl i64 %.05379, 6
  %i.bz = getelementptr i8, ptr %4, i64 %i.by     ; 4 uses
  store <16 x i8> %i.bu, ptr %i.bz, align 1, !tbaa !23
  %.sroa.20.128..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <16 x i8> %i.bv, ptr %.sroa.20.128..sroa_idx, align 1, !tbaa !23
  %.sroa.21.128..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  store <16 x i8> %i.bw, ptr %.sroa.21.128..sroa_idx, align 1, !tbaa !23
  %.sroa.22.128..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  store <16 x i8> %i.bx, ptr %.sroa.22.128..sroa_idx, align 1, !tbaa !23
  %i.ca = add nuw nsw i64 %.05379, 1              ; 2 uses
  %exitcond87.not = icmp eq i64 %i.ca, %i.a
  br i1 %exitcond87.not, label %._crit_edge, label %.preheader.preheader, !llvm.loop !54
}

declare void @_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4avx2ELi4EEEvPKhillPh(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef ptr @_ZN5arrow8internal7CpuInfo11GetInstanceEv()
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
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
  %i.g = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
  %i.h = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 4)
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
  %i.j = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 32)
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
  %i.l = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 1984)
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.g
  %.0 = phi i1 [ false, %bb.j ], [ %i.l, %bb.i ], [ %i.h, %bb.g ], [ %i.j, %bb.h ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd6sse4_2ELi8EEEvPKhillPh(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sdiv i64 %2, 16                          ; 4 uses
  %i.b = shl nsw i64 %i.a, 4                      ; 13 uses
  %i.c = icmp slt i64 %i.b, %2
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader72

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = shl i64 %3, 1                            ; 4 uses
  %i.e = mul i64 %3, 3                            ; 4 uses
  %i.f = shl nsw i64 %3, 2                        ; 4 uses
  %i.g = mul nsw i64 %3, 5                        ; 4 uses
  %i.h = mul nsw i64 %3, 6                        ; 4 uses
  %i.i = mul nsw i64 %3, 7                        ; 4 uses
  %5 = shl nsw i64 %i.a, 4
  %i.j = sub i64 %2, %5                           ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 20
  br i1 %min.iters.check, label %.lr.ph.preheader147, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.k = shl i64 %i.a, 7
  %scevgep = getelementptr i8, ptr %4, i64 %i.k   ; 8 uses
  %i.l = shl i64 %2, 3
  %scevgep96 = getelementptr i8, ptr %4, i64 %i.l ; 8 uses
  %i.m = getelementptr i8, ptr %0, i64 %i.b
  %scevgep97 = getelementptr i8, ptr %i.m, i64 %i.i
  %i.n = getelementptr i8, ptr %0, i64 %2
  %scevgep98 = getelementptr i8, ptr %i.n, i64 %i.i
  %i.o = getelementptr i8, ptr %0, i64 %i.b
  %scevgep99 = getelementptr i8, ptr %i.o, i64 %i.h
  %i.p = getelementptr i8, ptr %0, i64 %2
  %scevgep100 = getelementptr i8, ptr %i.p, i64 %i.h
  %i.q = getelementptr i8, ptr %0, i64 %i.b
  %scevgep101 = getelementptr i8, ptr %i.q, i64 %i.g
  %i.r = getelementptr i8, ptr %0, i64 %2
  %scevgep102 = getelementptr i8, ptr %i.r, i64 %i.g
  %i.s = getelementptr i8, ptr %0, i64 %i.b
  %scevgep103 = getelementptr i8, ptr %i.s, i64 %i.f
  %i.t = getelementptr i8, ptr %0, i64 %2
  %scevgep104 = getelementptr i8, ptr %i.t, i64 %i.f
  %i.u = getelementptr i8, ptr %0, i64 %i.b
  %scevgep105 = getelementptr i8, ptr %i.u, i64 %i.e
  %i.v = getelementptr i8, ptr %0, i64 %2
  %scevgep106 = getelementptr i8, ptr %i.v, i64 %i.e
  %i.w = getelementptr i8, ptr %0, i64 %i.b
  %scevgep107 = getelementptr i8, ptr %i.w, i64 %i.d
  %i.x = getelementptr i8, ptr %0, i64 %2
  %scevgep108 = getelementptr i8, ptr %i.x, i64 %i.d
  %i.y = getelementptr i8, ptr %0, i64 %3
  %scevgep109 = getelementptr i8, ptr %i.y, i64 %i.b
  %i.z = getelementptr i8, ptr %0, i64 %3
  %scevgep110 = getelementptr i8, ptr %i.z, i64 %2
  %scevgep111 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep112 = getelementptr i8, ptr %0, i64 %2
  %bound0 = icmp ult ptr %scevgep, %scevgep98
  %bound1 = icmp ult ptr %scevgep97, %scevgep96
  %found.conflict = and i1 %bound0, %bound1
  %bound0113 = icmp ult ptr %scevgep, %scevgep100
  %bound1114 = icmp ult ptr %scevgep99, %scevgep96
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx = or i1 %found.conflict, %found.conflict115
  %bound0116 = icmp ult ptr %scevgep, %scevgep102
  %bound1117 = icmp ult ptr %scevgep101, %scevgep96
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %conflict.rdx, %found.conflict118
  %bound0120 = icmp ult ptr %scevgep, %scevgep104
  %bound1121 = icmp ult ptr %scevgep103, %scevgep96
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx123 = or i1 %conflict.rdx119, %found.conflict122
  %bound0124 = icmp ult ptr %scevgep, %scevgep106
  %bound1125 = icmp ult ptr %scevgep105, %scevgep96
  %found.conflict126 = and i1 %bound0124, %bound1125
  %conflict.rdx127 = or i1 %conflict.rdx123, %found.conflict126
  %bound0128 = icmp ult ptr %scevgep, %scevgep108
  %bound1129 = icmp ult ptr %scevgep107, %scevgep96
  %found.conflict130 = and i1 %bound0128, %bound1129
  %conflict.rdx131 = or i1 %conflict.rdx127, %found.conflict130
  %bound0132 = icmp ult ptr %scevgep, %scevgep110
  %bound1133 = icmp ult ptr %scevgep109, %scevgep96
  %found.conflict134 = and i1 %bound0132, %bound1133
  %conflict.rdx135 = or i1 %conflict.rdx131, %found.conflict134
  %bound0136 = icmp ult ptr %scevgep, %scevgep112
  %bound1137 = icmp ult ptr %scevgep111, %scevgep96
  %found.conflict138 = and i1 %bound0136, %bound1137
  %conflict.rdx139 = or i1 %conflict.rdx135, %found.conflict138
  br i1 %conflict.rdx139, label %.lr.ph.preheader147, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aa = and i64 %2, 1                           ; 2 uses
  %n.vec = sub i64 %i.j, %i.aa                    ; 2 uses
  %i.ab = add i64 %i.b, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = add i64 %i.b, %index                    ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 %i.ac     ; 8 uses
  %wide.load = load <2 x i8>, ptr %i.ad, align 1, !tbaa !23, !alias.scope !55
  %i.ae = getelementptr i8, ptr %i.ad, i64 %3
  %wide.load140 = load <2 x i8>, ptr %i.ae, align 1, !tbaa !23, !alias.scope !58
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.d
  %wide.load141 = load <2 x i8>, ptr %i.af, align 1, !tbaa !23, !alias.scope !60
  %i.ag = getelementptr i8, ptr %i.ad, i64 %i.e
  %wide.load142 = load <2 x i8>, ptr %i.ag, align 1, !tbaa !23, !alias.scope !62
  %i.ah = getelementptr i8, ptr %i.ad, i64 %i.f
  %wide.load143 = load <2 x i8>, ptr %i.ah, align 1, !tbaa !23, !alias.scope !64
  %i.ai = getelementptr i8, ptr %i.ad, i64 %i.g
  %wide.load144 = load <2 x i8>, ptr %i.ai, align 1, !tbaa !23, !alias.scope !66
  %i.aj = getelementptr i8, ptr %i.ad, i64 %i.h
  %wide.load145 = load <2 x i8>, ptr %i.aj, align 1, !tbaa !23, !alias.scope !68
  %i.ak = getelementptr i8, ptr %i.ad, i64 %i.i
  %wide.load146 = load <2 x i8>, ptr %i.ak, align 1, !tbaa !23, !alias.scope !70
  %i.al = shl nsw i64 %i.ac, 3
  %i.am = getelementptr inbounds i8, ptr %4, i64 %i.al
  %i.an = zext <2 x i8> %wide.load146 to <2 x i64>
  %i.ao = shl nuw <2 x i64> %i.an, splat (i64 56)
  %i.ap = zext <2 x i8> %wide.load145 to <2 x i64>
  %i.aq = shl nuw nsw <2 x i64> %i.ap, splat (i64 48)
  %i.ar = or disjoint <2 x i64> %i.ao, %i.aq
  %i.as = zext <2 x i8> %wide.load144 to <2 x i64>
  %i.at = shl nuw nsw <2 x i64> %i.as, splat (i64 40)
  %i.au = or disjoint <2 x i64> %i.ar, %i.at
  %i.av = zext <2 x i8> %wide.load143 to <2 x i64>
  %i.aw = shl nuw nsw <2 x i64> %i.av, splat (i64 32)
  %i.ax = or disjoint <2 x i64> %i.au, %i.aw
  %i.ay = zext <2 x i8> %wide.load142 to <2 x i64>
  %i.az = shl nuw nsw <2 x i64> %i.ay, splat (i64 24)
  %i.ba = or disjoint <2 x i64> %i.ax, %i.az
  %i.bb = zext <2 x i8> %wide.load141 to <2 x i64>
  %i.bc = shl nuw nsw <2 x i64> %i.bb, splat (i64 16)
  %i.bd = zext <2 x i8> %wide.load140 to <2 x i64>
  %i.be = shl nuw nsw <2 x i64> %i.bd, splat (i64 8)
  %i.bf = or disjoint <2 x i64> %i.ba, %i.bc
  %i.bg = zext <2 x i8> %wide.load to <2 x i64>
  %i.bh = or <2 x i64> %i.bf, %i.be
  %i.bi = or <2 x i64> %i.bh, %i.bg
  store <2 x i64> %i.bi, ptr %i.am, align 1, !alias.scope !72, !noalias !74
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, 0
  br i1 %cmp.n, label %.preheader72, label %.lr.ph.preheader147

.lr.ph.preheader147:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.05574.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph

.preheader72:                                     ; preds = %.lr.ph, %middle.block, %bb.a
  %i.bk = icmp sgt i64 %2, 15
  br i1 %i.bk, label %.lr.ph80, label %._crit_edge

.lr.ph80:                                         ; preds = %.preheader72
  %i.bl = shl nsw i64 %3, 1
  %i.bm = mul nsw i64 %3, 3
  %i.bn = shl nsw i64 %3, 2
  %i.bo = mul nsw i64 %3, 5
  %i.bp = mul nsw i64 %3, 6
  %i.bq = mul nsw i64 %3, 7
  br label %.preheader.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader147, %.lr.ph
  %.05574 = phi i64 [ %i.cb, %.lr.ph ], [ %.05574.ph, %.lr.ph.preheader147 ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05574 ; 8 uses
  %i.br = load i8, ptr %invariant.gep, align 1, !tbaa !23
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %3
  %i.bs = load i8, ptr %gep.1, align 1, !tbaa !23
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.d
  %i.bt = load i8, ptr %gep.2, align 1, !tbaa !23
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.e
  %i.bu = load i8, ptr %gep.3, align 1, !tbaa !23
  %gep.4 = getelementptr i8, ptr %invariant.gep, i64 %i.f
  %i.bv = load i8, ptr %gep.4, align 1, !tbaa !23
  %gep.5 = getelementptr i8, ptr %invariant.gep, i64 %i.g
  %i.bw = load i8, ptr %gep.5, align 1, !tbaa !23
  %gep.6 = getelementptr i8, ptr %invariant.gep, i64 %i.h
  %i.bx = load i8, ptr %gep.6, align 1, !tbaa !23
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 %i.i
  %i.by = load i8, ptr %gep.7, align 1, !tbaa !23
  %i.bz = shl nsw i64 %.05574, 3
  %i.ca = getelementptr inbounds i8, ptr %4, i64 %i.bz
  %.sroa.1094.0.insert.ext = zext i8 %i.by to i64
  %.sroa.1094.0.insert.shift = shl nuw i64 %.sroa.1094.0.insert.ext, 56
  %.sroa.9.0.insert.ext = zext i8 %i.bx to i64
  %.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.9.0.insert.ext, 48
  %.sroa.9.0.insert.insert = or disjoint i64 %.sroa.1094.0.insert.shift, %.sroa.9.0.insert.shift
  %.sroa.893.0.insert.ext = zext i8 %i.bw to i64
  %.sroa.893.0.insert.shift = shl nuw nsw i64 %.sroa.893.0.insert.ext, 40
  %.sroa.893.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.insert, %.sroa.893.0.insert.shift
  %.sroa.7.0.insert.ext = zext i8 %i.bv to i64
  %.sroa.7.0.insert.shift = shl nuw nsw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.7.0.insert.insert = or disjoint i64 %.sroa.893.0.insert.insert, %.sroa.7.0.insert.shift
  %.sroa.692.0.insert.ext = zext i8 %i.bu to i64
  %.sroa.692.0.insert.shift = shl nuw nsw i64 %.sroa.692.0.insert.ext, 24
  %.sroa.692.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.insert, %.sroa.692.0.insert.shift
  %.sroa.5.0.insert.ext = zext i8 %i.bt to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 16
  %.sroa.491.0.insert.ext = zext i8 %i.bs to i64
  %.sroa.491.0.insert.shift = shl nuw nsw i64 %.sroa.491.0.insert.ext, 8
  %.sroa.491.0.insert.mask = or disjoint i64 %.sroa.692.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.090.0.insert.ext = zext i8 %i.br to i64
  %.sroa.090.0.insert.mask = or i64 %.sroa.491.0.insert.mask, %.sroa.491.0.insert.shift
  %.sroa.090.0.insert.insert = or i64 %.sroa.090.0.insert.mask, %.sroa.090.0.insert.ext
  store i64 %.sroa.090.0.insert.insert, ptr %i.ca, align 1
  %i.cb = add nsw i64 %.05574, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %2
  br i1 %exitcond.not, label %.preheader72, label %.lr.ph, !llvm.loop !76

._crit_edge:                                      ; preds = %.preheader.preheader, %.preheader72
  ret void

.preheader.preheader:                             ; preds = %.lr.ph80, %.preheader.preheader
  %.05379 = phi i64 [ 0, %.lr.ph80 ], [ %i.dt, %.preheader.preheader ] ; 3 uses
  %i.cc = shl nuw nsw i64 %.05379, 4
  %i.cd = getelementptr i8, ptr %0, i64 %i.cc     ; 8 uses
end_hunk_0
