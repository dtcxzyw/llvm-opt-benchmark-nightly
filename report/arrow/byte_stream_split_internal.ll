inline.NumInlined: 154
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEEC2Ev:bb.a
  br i1 %.not.i, label %_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef ptr @_ZN5arrow8internal7CpuInfo11GetInstanceEv()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
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
  store ptr %spec.select, ptr %0, align 8, !tbaa !21
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
  store ptr %i.d, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
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
  %i.g = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
  %i.h = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 4)
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
  %i.j = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 32)
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
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
  br i1 %i.c, label %iter.check, label %.preheader72

iter.check:                                       ; preds = %bb.a
  %i.d = sub i64 %2, %i.b                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.d, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = shl i64 %i.a, 5
  %scevgep86 = getelementptr i8, ptr %4, i64 %i.e ; 2 uses
  %i.f = shl i64 %2, 1
  %scevgep87 = getelementptr i8, ptr %4, i64 %i.f ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 %3
  %scevgep88 = getelementptr i8, ptr %i.g, i64 %i.b
  %i.h = getelementptr i8, ptr %0, i64 %3
  %scevgep89 = getelementptr i8, ptr %i.h, i64 %2
  %scevgep90 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep91 = getelementptr i8, ptr %0, i64 %2
  %bound0 = icmp ult ptr %scevgep86, %scevgep89
  %bound1 = icmp ult ptr %scevgep88, %scevgep87
  %found.conflict = and i1 %bound0, %bound1
  %bound092 = icmp ult ptr %scevgep86, %scevgep91
  %bound193 = icmp ult ptr %scevgep90, %scevgep87
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx = or i1 %found.conflict, %found.conflict94
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check95 = icmp ult i64 %i.d, 16
  br i1 %min.iters.check95, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 15                      ; 3 uses
  %n.vec = sub nuw i64 %i.d, %n.mod.vf            ; 3 uses
  %i.i = add i64 %i.b, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = add i64 %i.b, %index                     ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 %i.j       ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %wide.load = load <8 x i8>, ptr %i.k, align 1, !tbaa !23, !alias.scope !24
  %wide.load96 = load <8 x i8>, ptr %i.l, align 1, !tbaa !23, !alias.scope !24
  %i.m = getelementptr i8, ptr %i.k, i64 %3       ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %wide.load97 = load <8 x i8>, ptr %i.m, align 1, !tbaa !23, !alias.scope !27
  %wide.load98 = load <8 x i8>, ptr %i.n, align 1, !tbaa !23, !alias.scope !27
  %i.o = shl nsw i64 %i.j, 1
  %i.p = getelementptr inbounds i8, ptr %4, i64 %i.o ; 2 uses
  %i.q = zext <8 x i8> %wide.load97 to <8 x i16>
  %i.r = zext <8 x i8> %wide.load98 to <8 x i16>
  %i.s = shl nuw <8 x i16> %i.q, splat (i16 8)
  %i.t = shl nuw <8 x i16> %i.r, splat (i16 8)
  %i.u = zext <8 x i8> %wide.load to <8 x i16>
  %i.v = zext <8 x i8> %wide.load96 to <8 x i16>
  %i.w = or disjoint <8 x i16> %i.s, %i.u
  %i.x = or disjoint <8 x i16> %i.t, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <8 x i16> %i.w, ptr %i.p, align 1, !alias.scope !29, !noalias !31
  store <8 x i16> %i.x, ptr %i.y, align 1, !alias.scope !29, !noalias !31
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %.preheader72, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %n.mod.vf, 4
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !36

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf99 = and i64 %2, 3                     ; 2 uses
  %n.vec100 = sub i64 %i.d, %n.mod.vf99           ; 2 uses
  %i.aa = add i64 %i.b, %n.vec100
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index101 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next104, %vec.epilog.vector.body ] ; 2 uses
  %i.ab = add i64 %i.b, %index101                 ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 %i.ab     ; 2 uses
  %wide.load102 = load <4 x i8>, ptr %i.ac, align 1, !tbaa !23, !alias.scope !24
  %i.ad = getelementptr i8, ptr %i.ac, i64 %3
  %wide.load103 = load <4 x i8>, ptr %i.ad, align 1, !tbaa !23, !alias.scope !27
  %i.ae = shl nsw i64 %i.ab, 1
  %i.af = getelementptr inbounds i8, ptr %4, i64 %i.ae
  %i.ag = zext <4 x i8> %wide.load103 to <4 x i16>
  %i.ah = shl nuw <4 x i16> %i.ag, splat (i16 8)
  %i.ai = zext <4 x i8> %wide.load102 to <4 x i16>
  %i.aj = or disjoint <4 x i16> %i.ah, %i.ai
  store <4 x i16> %i.aj, ptr %i.af, align 1, !alias.scope !29, !noalias !31
  %index.next104 = add nuw i64 %index101, 4       ; 2 uses
  %i.ak = icmp eq i64 %index.next104, %n.vec100
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n105 = icmp eq i64 %n.mod.vf99, 0
  br i1 %cmp.n105, label %.preheader72, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05074.ph = phi i64 [ %i.b, %iter.check ], [ %i.b, %vector.memcheck ], [ %i.i, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ] ; 6 uses
  %i.al = sub i64 %2, %.05074.ph
  %.neg = add i64 %.05074.ph, 1
  %lcmp.mod.not = trunc nuw i64 %i.al to i1
  br i1 %lcmp.mod.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %invariant.gep.prol = getelementptr i8, ptr %0, i64 %.05074.ph ; 2 uses
  %i.am = load i8, ptr %invariant.gep.prol, align 1, !tbaa !23
  %gep.1.prol = getelementptr i8, ptr %invariant.gep.prol, i64 %3
  %i.an = load i8, ptr %gep.1.prol, align 1, !tbaa !23
  %i.ao = shl nsw i64 %.05074.ph, 1
  %i.ap = getelementptr inbounds i8, ptr %4, i64 %i.ao
  %.sroa.484.0.insert.ext.prol = zext i8 %i.an to i16
  %.sroa.484.0.insert.shift.prol = shl nuw i16 %.sroa.484.0.insert.ext.prol, 8
  %.sroa.083.0.insert.ext.prol = zext i8 %i.am to i16
  %.sroa.083.0.insert.insert.prol = or disjoint i16 %.sroa.484.0.insert.shift.prol, %.sroa.083.0.insert.ext.prol
  store i16 %.sroa.083.0.insert.insert.prol, ptr %i.ap, align 1
  %i.aq = add nsw i64 %.05074.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.05074.unr = phi i64 [ %.05074.ph, %.lr.ph.preheader ], [ %i.aq, %.lr.ph.prol ]
  %i.ar = icmp eq i64 %2, %.neg
  br i1 %i.ar, label %.preheader72, label %.lr.ph

.preheader72:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.as = icmp sgt i64 %2, 15
  br i1 %i.as, label %.preheader71, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.05074 = phi i64 [ %i.bc, %.lr.ph ], [ %.05074.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05074 ; 2 uses
  %i.at = load i8, ptr %invariant.gep, align 1, !tbaa !23
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %3
  %i.au = load i8, ptr %gep.1, align 1, !tbaa !23
  %i.av = shl nsw i64 %.05074, 1
  %i.aw = getelementptr inbounds i8, ptr %4, i64 %i.av
  %.sroa.484.0.insert.ext = zext i8 %i.au to i16
  %.sroa.484.0.insert.shift = shl nuw i16 %.sroa.484.0.insert.ext, 8
  %.sroa.083.0.insert.ext = zext i8 %i.at to i16
  %.sroa.083.0.insert.insert = or disjoint i16 %.sroa.484.0.insert.shift, %.sroa.083.0.insert.ext
  store i16 %.sroa.083.0.insert.insert, ptr %i.aw, align 1
  %i.ax = add nsw i64 %.05074, 1                  ; 2 uses
  %invariant.gep.1 = getelementptr i8, ptr %0, i64 %i.ax ; 2 uses
  %i.ay = load i8, ptr %invariant.gep.1, align 1, !tbaa !23
  %gep.1.1 = getelementptr i8, ptr %invariant.gep.1, i64 %3
  %i.az = load i8, ptr %gep.1.1, align 1, !tbaa !23
  %i.ba = shl nsw i64 %i.ax, 1
  %i.bb = getelementptr inbounds i8, ptr %4, i64 %i.ba
  %.sroa.484.0.insert.ext.1 = zext i8 %i.az to i16
  %.sroa.484.0.insert.shift.1 = shl nuw i16 %.sroa.484.0.insert.ext.1, 8
  %.sroa.083.0.insert.ext.1 = zext i8 %i.ay to i16
  %.sroa.083.0.insert.insert.1 = or disjoint i16 %.sroa.484.0.insert.shift.1, %.sroa.083.0.insert.ext.1
  store i16 %.sroa.083.0.insert.insert.1, ptr %i.bb, align 1
  %i.bc = add nsw i64 %.05074, 2                  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bc, %2
  br i1 %exitcond.not.1, label %.preheader72, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %.preheader71, %.preheader72
  ret void

.preheader71:                                     ; preds = %.preheader72, %.preheader71
  %.05577 = phi i64 [ %i.bl, %.preheader71 ], [ 0, %.preheader72 ] ; 3 uses
  %i.bd = shl nuw i64 %.05577, 5
  %scevgep = getelementptr i8, ptr %4, i64 %i.bd  ; 2 uses
  %i.be = shl nuw nsw i64 %.05577, 4
  %i.bf = getelementptr i8, ptr %0, i64 %i.be     ; 2 uses
  %i.bg = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bf) ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 %3
  %i.bi = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bh) ; 2 uses
  %i.bj = shufflevector <16 x i8> %i.bg, <16 x i8> %i.bi, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bk = shufflevector <16 x i8> %i.bg, <16 x i8> %i.bi, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.bj, ptr %scevgep, align 1, !tbaa !23
  %.sroa.8.32.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 16
  store <16 x i8> %i.bk, ptr %.sroa.8.32.scevgep.sroa_idx, align 1, !tbaa !23
  %i.bl = add nuw nsw i64 %.05577, 1              ; 2 uses
  %exitcond82.not = icmp eq i64 %i.bl, %i.a
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
  %i.f = shl nsw i64 %i.a, 4
  %i.g = sub i64 %2, %i.f                         ; 2 uses
  %min.iters.check = icmp ult i64 %i.g, 20
  br i1 %min.iters.check, label %.lr.ph.preheader120, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.h = shl i64 %i.a, 6
  %scevgep92 = getelementptr i8, ptr %4, i64 %i.h ; 4 uses
  %i.i = shl i64 %2, 2
  %scevgep93 = getelementptr i8, ptr %4, i64 %i.i ; 4 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.b
  %scevgep94 = getelementptr i8, ptr %i.j, i64 %i.e
  %i.k = getelementptr i8, ptr %0, i64 %2
  %scevgep95 = getelementptr i8, ptr %i.k, i64 %i.e
  %i.l = getelementptr i8, ptr %0, i64 %i.b
  %scevgep96 = getelementptr i8, ptr %i.l, i64 %i.d
  %i.m = getelementptr i8, ptr %0, i64 %2
  %scevgep97 = getelementptr i8, ptr %i.m, i64 %i.d
  %i.n = getelementptr i8, ptr %0, i64 %3
  %scevgep98 = getelementptr i8, ptr %i.n, i64 %i.b
  %i.o = getelementptr i8, ptr %0, i64 %3
  %scevgep99 = getelementptr i8, ptr %i.o, i64 %2
  %scevgep100 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep101 = getelementptr i8, ptr %0, i64 %2
  %bound0 = icmp ult ptr %scevgep92, %scevgep95
  %bound1 = icmp ult ptr %scevgep94, %scevgep93
  %found.conflict = and i1 %bound0, %bound1
  %bound0102 = icmp ult ptr %scevgep92, %scevgep97
  %bound1103 = icmp ult ptr %scevgep96, %scevgep93
  %found.conflict104 = and i1 %bound0102, %bound1103
  %conflict.rdx = or i1 %found.conflict, %found.conflict104
  %bound0105 = icmp ult ptr %scevgep92, %scevgep99
  %bound1106 = icmp ult ptr %scevgep98, %scevgep93
  %found.conflict107 = and i1 %bound0105, %bound1106
  %conflict.rdx108 = or i1 %conflict.rdx, %found.conflict107
  %bound0109 = icmp ult ptr %scevgep92, %scevgep101
  %bound1110 = icmp ult ptr %scevgep100, %scevgep93
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %conflict.rdx108, %found.conflict111
  br i1 %conflict.rdx112, label %.lr.ph.preheader120, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %2, 7                       ; 2 uses
  %n.vec = sub i64 %i.g, %n.mod.vf                ; 2 uses
  %i.p = add i64 %i.b, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd6sse4_2ELi4EEEvPKhillPh:bb.a
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
  %i.bg = add nsw i64 %.05074, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bg, %2
  br i1 %exitcond.not, label %.preheader72, label %.lr.ph, !llvm.loop !53

._crit_edge:                                      ; preds = %.preheader.preheader, %.preheader72
  ret void

.preheader.preheader:                             ; preds = %.lr.ph80, %.preheader.preheader
  %.05579 = phi i64 [ 0, %.lr.ph80 ], [ %i.bz, %.preheader.preheader ] ; 3 uses
  %i.bh = shl i64 %.05579, 6
  %scevgep = getelementptr i8, ptr %4, i64 %i.bh  ; 4 uses
  %i.bi = shl nuw nsw i64 %.05579, 4
  %i.bj = getelementptr i8, ptr %0, i64 %i.bi     ; 4 uses
  %i.bk = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bj) ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bj, i64 %3
  %i.bm = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bl) ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bj, i64 %i.ay
  %i.bo = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bn) ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bj, i64 %i.az
  %i.bq = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bp) ; 2 uses
  %i.br = shufflevector <16 x i8> %i.bk, <16 x i8> %i.bo, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bs = shufflevector <16 x i8> %i.bk, <16 x i8> %i.bo, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bt = shufflevector <16 x i8> %i.bm, <16 x i8> %i.bq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bu = shufflevector <16 x i8> %i.bm, <16 x i8> %i.bq, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bv = shufflevector <16 x i8> %i.br, <16 x i8> %i.bt, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bw = shufflevector <16 x i8> %i.br, <16 x i8> %i.bt, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.bx = shufflevector <16 x i8> %i.bs, <16 x i8> %i.bu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.by = shufflevector <16 x i8> %i.bs, <16 x i8> %i.bu, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.bv, ptr %scevgep, align 1, !tbaa !23
  %.sroa.20.128.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 16
  store <16 x i8> %i.bw, ptr %.sroa.20.128.scevgep.sroa_idx, align 1, !tbaa !23
  %.sroa.21.128.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 32
  store <16 x i8> %i.bx, ptr %.sroa.21.128.scevgep.sroa_idx, align 1, !tbaa !23
  %.sroa.22.128.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 48
  store <16 x i8> %i.by, ptr %.sroa.22.128.scevgep.sroa_idx, align 1, !tbaa !23
  %i.bz = add nuw nsw i64 %.05579, 1              ; 2 uses
  %exitcond87.not = icmp eq i64 %i.bz, %i.a
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
  %i.j = shl nsw i64 %i.a, 4
  %i.k = sub i64 %2, %i.j                         ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 20
  br i1 %min.iters.check, label %.lr.ph.preheader148, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.l = shl i64 %i.a, 7
  %scevgep96 = getelementptr i8, ptr %4, i64 %i.l ; 8 uses
  %i.m = shl i64 %2, 3
  %scevgep97 = getelementptr i8, ptr %4, i64 %i.m ; 8 uses
  %i.n = getelementptr i8, ptr %0, i64 %i.b
  %scevgep98 = getelementptr i8, ptr %i.n, i64 %i.i
  %i.o = getelementptr i8, ptr %0, i64 %2
  %scevgep99 = getelementptr i8, ptr %i.o, i64 %i.i
  %i.p = getelementptr i8, ptr %0, i64 %i.b
  %scevgep100 = getelementptr i8, ptr %i.p, i64 %i.h
  %i.q = getelementptr i8, ptr %0, i64 %2
  %scevgep101 = getelementptr i8, ptr %i.q, i64 %i.h
  %i.r = getelementptr i8, ptr %0, i64 %i.b
  %scevgep102 = getelementptr i8, ptr %i.r, i64 %i.g
  %i.s = getelementptr i8, ptr %0, i64 %2
  %scevgep103 = getelementptr i8, ptr %i.s, i64 %i.g
  %i.t = getelementptr i8, ptr %0, i64 %i.b
  %scevgep104 = getelementptr i8, ptr %i.t, i64 %i.f
  %i.u = getelementptr i8, ptr %0, i64 %2
  %scevgep105 = getelementptr i8, ptr %i.u, i64 %i.f
  %i.v = getelementptr i8, ptr %0, i64 %i.b
  %scevgep106 = getelementptr i8, ptr %i.v, i64 %i.e
  %i.w = getelementptr i8, ptr %0, i64 %2
  %scevgep107 = getelementptr i8, ptr %i.w, i64 %i.e
  %i.x = getelementptr i8, ptr %0, i64 %i.b
  %scevgep108 = getelementptr i8, ptr %i.x, i64 %i.d
  %i.y = getelementptr i8, ptr %0, i64 %2
  %scevgep109 = getelementptr i8, ptr %i.y, i64 %i.d
  %i.z = getelementptr i8, ptr %0, i64 %3
  %scevgep110 = getelementptr i8, ptr %i.z, i64 %i.b
  %i.aa = getelementptr i8, ptr %0, i64 %3
  %scevgep111 = getelementptr i8, ptr %i.aa, i64 %2
  %scevgep112 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep113 = getelementptr i8, ptr %0, i64 %2
  %bound0 = icmp ult ptr %scevgep96, %scevgep99
  %bound1 = icmp ult ptr %scevgep98, %scevgep97
  %found.conflict = and i1 %bound0, %bound1
  %bound0114 = icmp ult ptr %scevgep96, %scevgep101
  %bound1115 = icmp ult ptr %scevgep100, %scevgep97
  %found.conflict116 = and i1 %bound0114, %bound1115
  %conflict.rdx = or i1 %found.conflict, %found.conflict116
  %bound0117 = icmp ult ptr %scevgep96, %scevgep103
  %bound1118 = icmp ult ptr %scevgep102, %scevgep97
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx120 = or i1 %conflict.rdx, %found.conflict119
  %bound0121 = icmp ult ptr %scevgep96, %scevgep105
  %bound1122 = icmp ult ptr %scevgep104, %scevgep97
  %found.conflict123 = and i1 %bound0121, %bound1122
  %conflict.rdx124 = or i1 %conflict.rdx120, %found.conflict123
  %bound0125 = icmp ult ptr %scevgep96, %scevgep107
  %bound1126 = icmp ult ptr %scevgep106, %scevgep97
  %found.conflict127 = and i1 %bound0125, %bound1126
  %conflict.rdx128 = or i1 %conflict.rdx124, %found.conflict127
  %bound0129 = icmp ult ptr %scevgep96, %scevgep109
  %bound1130 = icmp ult ptr %scevgep108, %scevgep97
  %found.conflict131 = and i1 %bound0129, %bound1130
  %conflict.rdx132 = or i1 %conflict.rdx128, %found.conflict131
  %bound0133 = icmp ult ptr %scevgep96, %scevgep111
  %bound1134 = icmp ult ptr %scevgep110, %scevgep97
  %found.conflict135 = and i1 %bound0133, %bound1134
  %conflict.rdx136 = or i1 %conflict.rdx132, %found.conflict135
  %bound0137 = icmp ult ptr %scevgep96, %scevgep113
  %bound1138 = icmp ult ptr %scevgep112, %scevgep97
  %found.conflict139 = and i1 %bound0137, %bound1138
  %conflict.rdx140 = or i1 %conflict.rdx136, %found.conflict139
  br i1 %conflict.rdx140, label %.lr.ph.preheader148, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %2, 1
  %n.vec = sub i64 %i.k, %n.mod.vf                ; 2 uses
  %i.ab = add i64 %i.b, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = add i64 %i.b, %index                    ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 %i.ac     ; 8 uses
  %wide.load = load <2 x i8>, ptr %i.ad, align 1, !tbaa !23, !alias.scope !55
  %i.ae = getelementptr i8, ptr %i.ad, i64 %3
  %wide.load141 = load <2 x i8>, ptr %i.ae, align 1, !tbaa !23, !alias.scope !58
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.d
  %wide.load142 = load <2 x i8>, ptr %i.af, align 1, !tbaa !23, !alias.scope !60
  %i.ag = getelementptr i8, ptr %i.ad, i64 %i.e
  %wide.load143 = load <2 x i8>, ptr %i.ag, align 1, !tbaa !23, !alias.scope !62
  %i.ah = getelementptr i8, ptr %i.ad, i64 %i.f
  %wide.load144 = load <2 x i8>, ptr %i.ah, align 1, !tbaa !23, !alias.scope !64
  %i.ai = getelementptr i8, ptr %i.ad, i64 %i.g
  %wide.load145 = load <2 x i8>, ptr %i.ai, align 1, !tbaa !23, !alias.scope !66
  %i.aj = getelementptr i8, ptr %i.ad, i64 %i.h
  %wide.load146 = load <2 x i8>, ptr %i.aj, align 1, !tbaa !23, !alias.scope !68
  %i.ak = getelementptr i8, ptr %i.ad, i64 %i.i
  %wide.load147 = load <2 x i8>, ptr %i.ak, align 1, !tbaa !23, !alias.scope !70
  %i.al = shl nsw i64 %i.ac, 3
  %i.am = getelementptr inbounds i8, ptr %4, i64 %i.al
  %i.an = zext <2 x i8> %wide.load147 to <2 x i64>
  %i.ao = shl nuw <2 x i64> %i.an, splat (i64 56)
  %i.ap = zext <2 x i8> %wide.load146 to <2 x i64>
  %i.aq = shl nuw nsw <2 x i64> %i.ap, splat (i64 48)
  %i.ar = or disjoint <2 x i64> %i.ao, %i.aq
  %i.as = zext <2 x i8> %wide.load145 to <2 x i64>
  %i.at = shl nuw nsw <2 x i64> %i.as, splat (i64 40)
  %i.au = or disjoint <2 x i64> %i.ar, %i.at
  %i.av = zext <2 x i8> %wide.load144 to <2 x i64>
  %i.aw = shl nuw nsw <2 x i64> %i.av, splat (i64 32)
  %i.ax = or disjoint <2 x i64> %i.au, %i.aw
  %i.ay = zext <2 x i8> %wide.load143 to <2 x i64>
  %i.az = shl nuw nsw <2 x i64> %i.ay, splat (i64 24)
  %i.ba = or disjoint <2 x i64> %i.ax, %i.az
  %i.bb = zext <2 x i8> %wide.load142 to <2 x i64>
  %i.bc = shl nuw nsw <2 x i64> %i.bb, splat (i64 16)
  %i.bd = zext <2 x i8> %wide.load141 to <2 x i64>
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
  %cmp.n = trunc nuw i64 %2 to i1
  br i1 %cmp.n, label %.lr.ph.preheader148, label %.preheader72

.lr.ph.preheader148:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.05074.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
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

.lr.ph:                                           ; preds = %.lr.ph.preheader148, %.lr.ph
  %.05074 = phi i64 [ %i.cb, %.lr.ph ], [ %.05074.ph, %.lr.ph.preheader148 ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05074 ; 8 uses
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
  %i.bz = shl nsw i64 %.05074, 3
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
  %i.cb = add nsw i64 %.05074, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %2
  br i1 %exitcond.not, label %.preheader72, label %.lr.ph, !llvm.loop !76

._crit_edge:                                      ; preds = %.preheader.preheader, %.preheader72
  ret void

.preheader.preheader:                             ; preds = %.lr.ph80, %.preheader.preheader
  %.05579 = phi i64 [ 0, %.lr.ph80 ], [ %i.ds, %.preheader.preheader ] ; 3 uses
  %i.cc = shl i64 %.05579, 7
  %scevgep = getelementptr i8, ptr %4, i64 %i.cc  ; 8 uses
  %i.cd = shl nuw nsw i64 %.05579, 4
  %i.ce = getelementptr i8, ptr %0, i64 %i.cd     ; 8 uses
  %i.cf = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ce) ; 2 uses
  %i.cg = getelementptr i8, ptr %i.ce, i64 %3
  %i.ch = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cg) ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ce, i64 %i.bl
  %i.cj = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ci) ; 2 uses
  %i.ck = getelementptr i8, ptr %i.ce, i64 %i.bm
  %i.cl = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ck) ; 2 uses
  %i.cm = getelementptr i8, ptr %i.ce, i64 %i.bn
  %i.cn = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cm) ; 2 uses
  %i.co = getelementptr i8, ptr %i.ce, i64 %i.bo
  %i.cp = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.co) ; 2 uses
  %i.cq = getelementptr i8, ptr %i.ce, i64 %i.bp
  %i.cr = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cq) ; 2 uses
  %i.cs = getelementptr i8, ptr %i.ce, i64 %i.bq
  %i.ct = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cs) ; 2 uses
  %i.cu = shufflevector <16 x i8> %i.cf, <16 x i8> %i.cn, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.cv = shufflevector <16 x i8> %i.cf, <16 x i8> %i.cn, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cw = shufflevector <16 x i8> %i.ch, <16 x i8> %i.cp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.cx = shufflevector <16 x i8> %i.ch, <16 x i8> %i.cp, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cy = shufflevector <16 x i8> %i.cj, <16 x i8> %i.cr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.cz = shufflevector <16 x i8> %i.cj, <16 x i8> %i.cr, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.da = shufflevector <16 x i8> %i.cl, <16 x i8> %i.ct, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.db = shufflevector <16 x i8> %i.cl, <16 x i8> %i.ct, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dc = shufflevector <16 x i8> %i.cu, <16 x i8> %i.cy, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dd = shufflevector <16 x i8> %i.cu, <16 x i8> %i.cy, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.de = shufflevector <16 x i8> %i.cv, <16 x i8> %i.cz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.df = shufflevector <16 x i8> %i.cv, <16 x i8> %i.cz, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dg = shufflevector <16 x i8> %i.cw, <16 x i8> %i.da, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dh = shufflevector <16 x i8> %i.cw, <16 x i8> %i.da, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.di = shufflevector <16 x i8> %i.cx, <16 x i8> %i.db, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dj = shufflevector <16 x i8> %i.cx, <16 x i8> %i.db, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dk = shufflevector <16 x i8> %i.dc, <16 x i8> %i.dg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dl = shufflevector <16 x i8> %i.dc, <16 x i8> %i.dg, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.dm = shufflevector <16 x i8> %i.dd, <16 x i8> %i.dh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dn = shufflevector <16 x i8> %i.dd, <16 x i8> %i.dh, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.do = shufflevector <16 x i8> %i.de, <16 x i8> %i.di, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dp = shufflevector <16 x i8> %i.de, <16 x i8> %i.di, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.dq = shufflevector <16 x i8> %i.df, <16 x i8> %i.dj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dr = shufflevector <16 x i8> %i.df, <16 x i8> %i.dj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.dk, ptr %scevgep, align 1, !tbaa !23
  %.sroa.52.384.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 16
  store <16 x i8> %i.dl, ptr %.sroa.52.384.scevgep.sroa_idx, align 1, !tbaa !23
  %.sroa.53.384.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 32
  store <16 x i8> %i.dm, ptr %.sroa.53.384.scevgep.sroa_idx, align 1, !tbaa !23
  %.sroa.54.384.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 48
  store <16 x i8> %i.dn, ptr %.sroa.54.384.scevgep.sroa_idx, align 1, !tbaa !23
  %.sroa.55.384.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 64
  store <16 x i8> %i.do, ptr %.sroa.55.384.scevgep.sroa_idx, align 1, !tbaa !23
  %.sroa.56.384.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 80
  store <16 x i8> %i.dp, ptr %.sroa.56.384.scevgep.sroa_idx, align 1, !tbaa !23
  %.sroa.57.384.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 96
  store <16 x i8> %i.dq, ptr %.sroa.57.384.scevgep.sroa_idx, align 1, !tbaa !23
  %.sroa.58.384.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 112
  store <16 x i8> %i.dr, ptr %.sroa.58.384.scevgep.sroa_idx, align 1, !tbaa !23
  %i.ds = add nuw nsw i64 %.05579, 1              ; 2 uses
  %exitcond89.not = icmp eq i64 %i.ds, %i.a
  br i1 %exitcond89.not, label %._crit_edge, label %.preheader.preheader, !llvm.loop !77
}

declare void @_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4avx2ELi8EEEvPKhillPh(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef ptr @_ZN5arrow8internal7CpuInfo11GetInstanceEv()
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
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
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %bb.e
  %i.g = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
  %i.h = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 4)
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
  %i.j = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 32)
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi2EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
  %i.l = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 1984)
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.g
  %.0 = phi i1 [ false, %bb.j ], [ %i.l, %bb.i ], [ %i.h, %bb.g ], [ %i.j, %bb.h ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd6sse4_2ELi2EEEvPKhilPh(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %3, i64 %2
  %i.b = sdiv i64 %2, 16                          ; 4 uses
  %i.c = shl nsw i64 %i.b, 4                      ; 12 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd6sse4_2ELi2EEEvPKhilPh:bb.a
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %i.bb = getelementptr i8, ptr %0, i64 %i.ad     ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 18
  %i.bd = getelementptr i8, ptr %0, i64 %i.ae     ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 20
  %i.bf = getelementptr i8, ptr %0, i64 %i.af     ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 22
  %i.bh = getelementptr i8, ptr %0, i64 %i.ag     ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 24
  %i.bj = getelementptr i8, ptr %0, i64 %i.ah     ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 26
  %i.bl = getelementptr i8, ptr %0, i64 %i.ai     ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 28
  %i.bn = getelementptr i8, ptr %0, i64 %i.aj     ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 30
  %i.bp = getelementptr i8, ptr %3, i64 %i.t      ; 2 uses
  %i.bq = load i8, ptr %i.ak, align 1, !tbaa !23, !alias.scope !78
  %i.br = load i8, ptr %i.am, align 1, !tbaa !23, !alias.scope !78
  %i.bs = load i8, ptr %i.ao, align 1, !tbaa !23, !alias.scope !78
  %i.bt = load i8, ptr %i.aq, align 1, !tbaa !23, !alias.scope !78
  %i.bu = load i8, ptr %i.as, align 1, !tbaa !23, !alias.scope !78
  %i.bv = load i8, ptr %i.au, align 1, !tbaa !23, !alias.scope !78
  %i.bw = load i8, ptr %i.aw, align 1, !tbaa !23, !alias.scope !78
  %i.bx = load i8, ptr %i.ay, align 1, !tbaa !23, !alias.scope !78
  %i.by = load i8, ptr %i.ba, align 1, !tbaa !23, !alias.scope !78
  %i.bz = load i8, ptr %i.bc, align 1, !tbaa !23, !alias.scope !78
  %i.ca = load i8, ptr %i.be, align 1, !tbaa !23, !alias.scope !78
  %i.cb = load i8, ptr %i.bg, align 1, !tbaa !23, !alias.scope !78
  %i.cc = load i8, ptr %i.bi, align 1, !tbaa !23, !alias.scope !78
  %i.cd = load i8, ptr %i.bk, align 1, !tbaa !23, !alias.scope !78
  %i.ce = load i8, ptr %i.bm, align 1, !tbaa !23, !alias.scope !78
  %i.cf = load i8, ptr %i.bo, align 1, !tbaa !23, !alias.scope !78
  %i.cg = insertelement <16 x i8> poison, i8 %i.bq, i64 0
  %i.ch = insertelement <16 x i8> %i.cg, i8 %i.br, i64 1
  %i.ci = insertelement <16 x i8> %i.ch, i8 %i.bs, i64 2
  %i.cj = insertelement <16 x i8> %i.ci, i8 %i.bt, i64 3
  %i.ck = insertelement <16 x i8> %i.cj, i8 %i.bu, i64 4
  %i.cl = insertelement <16 x i8> %i.ck, i8 %i.bv, i64 5
  %i.cm = insertelement <16 x i8> %i.cl, i8 %i.bw, i64 6
  %i.cn = insertelement <16 x i8> %i.cm, i8 %i.bx, i64 7
  %i.co = insertelement <16 x i8> %i.cn, i8 %i.by, i64 8
  %i.cp = insertelement <16 x i8> %i.co, i8 %i.bz, i64 9
  %i.cq = insertelement <16 x i8> %i.cp, i8 %i.ca, i64 10
  %i.cr = insertelement <16 x i8> %i.cq, i8 %i.cb, i64 11
  %i.cs = insertelement <16 x i8> %i.cr, i8 %i.cc, i64 12
  %i.ct = insertelement <16 x i8> %i.cs, i8 %i.cd, i64 13
  %i.cu = insertelement <16 x i8> %i.ct, i8 %i.ce, i64 14
  %i.cv = insertelement <16 x i8> %i.cu, i8 %i.cf, i64 15
  store <16 x i8> %i.cv, ptr %i.bp, align 1, !tbaa !23, !alias.scope !81, !noalias !83
  %i.cw = getelementptr i8, ptr %i.ak, i64 1
  %i.cx = getelementptr i8, ptr %i.al, i64 3
  %i.cy = getelementptr i8, ptr %i.an, i64 5
  %i.cz = getelementptr i8, ptr %i.ap, i64 7
  %i.da = getelementptr i8, ptr %i.ar, i64 9
  %i.db = getelementptr i8, ptr %i.at, i64 11
  %i.dc = getelementptr i8, ptr %i.av, i64 13
  %i.dd = getelementptr i8, ptr %i.ax, i64 15
  %i.de = getelementptr i8, ptr %i.az, i64 17
  %i.df = getelementptr i8, ptr %i.bb, i64 19
  %i.dg = getelementptr i8, ptr %i.bd, i64 21
  %i.dh = getelementptr i8, ptr %i.bf, i64 23
  %i.di = getelementptr i8, ptr %i.bh, i64 25
  %i.dj = getelementptr i8, ptr %i.bj, i64 27
  %i.dk = getelementptr i8, ptr %i.bl, i64 29
  %i.dl = getelementptr i8, ptr %i.bn, i64 31
  %i.dm = load i8, ptr %i.cw, align 1, !tbaa !23, !alias.scope !78
  %i.dn = load i8, ptr %i.cx, align 1, !tbaa !23, !alias.scope !78
  %i.do = load i8, ptr %i.cy, align 1, !tbaa !23, !alias.scope !78
  %i.dp = load i8, ptr %i.cz, align 1, !tbaa !23, !alias.scope !78
  %i.dq = load i8, ptr %i.da, align 1, !tbaa !23, !alias.scope !78
  %i.dr = load i8, ptr %i.db, align 1, !tbaa !23, !alias.scope !78
  %i.ds = load i8, ptr %i.dc, align 1, !tbaa !23, !alias.scope !78
  %i.dt = load i8, ptr %i.dd, align 1, !tbaa !23, !alias.scope !78
  %i.du = load i8, ptr %i.de, align 1, !tbaa !23, !alias.scope !78
  %i.dv = load i8, ptr %i.df, align 1, !tbaa !23, !alias.scope !78
  %i.dw = load i8, ptr %i.dg, align 1, !tbaa !23, !alias.scope !78
  %i.dx = load i8, ptr %i.dh, align 1, !tbaa !23, !alias.scope !78
  %i.dy = load i8, ptr %i.di, align 1, !tbaa !23, !alias.scope !78
  %i.dz = load i8, ptr %i.dj, align 1, !tbaa !23, !alias.scope !78
  %i.ea = load i8, ptr %i.dk, align 1, !tbaa !23, !alias.scope !78
  %i.eb = load i8, ptr %i.dl, align 1, !tbaa !23, !alias.scope !78
  %i.ec = insertelement <16 x i8> poison, i8 %i.dm, i64 0
  %i.ed = insertelement <16 x i8> %i.ec, i8 %i.dn, i64 1
  %i.ee = insertelement <16 x i8> %i.ed, i8 %i.do, i64 2
  %i.ef = insertelement <16 x i8> %i.ee, i8 %i.dp, i64 3
  %i.eg = insertelement <16 x i8> %i.ef, i8 %i.dq, i64 4
  %i.eh = insertelement <16 x i8> %i.eg, i8 %i.dr, i64 5
  %i.ei = insertelement <16 x i8> %i.eh, i8 %i.ds, i64 6
  %i.ej = insertelement <16 x i8> %i.ei, i8 %i.dt, i64 7
  %i.ek = insertelement <16 x i8> %i.ej, i8 %i.du, i64 8
  %i.el = insertelement <16 x i8> %i.ek, i8 %i.dv, i64 9
  %i.em = insertelement <16 x i8> %i.el, i8 %i.dw, i64 10
  %i.en = insertelement <16 x i8> %i.em, i8 %i.dx, i64 11
  %i.eo = insertelement <16 x i8> %i.en, i8 %i.dy, i64 12
  %i.ep = insertelement <16 x i8> %i.eo, i8 %i.dz, i64 13
  %i.eq = insertelement <16 x i8> %i.ep, i8 %i.ea, i64 14
  %i.er = insertelement <16 x i8> %i.eq, i8 %i.eb, i64 15
  %i.es = getelementptr i8, ptr %i.bp, i64 %2
  store <16 x i8> %i.er, ptr %i.es, align 1, !tbaa !23, !alias.scope !85, !noalias !78
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %.preheader98, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %n.mod.vf, 8
  br i1 %min.epilog.iters.check, label %.preheader99.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf137 = and i64 %2, 7                    ; 2 uses
  %n.vec138 = sub i64 %i.e, %n.mod.vf137          ; 2 uses
  %i.eu = add i64 %i.c, %n.vec138
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index139 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next140, %vec.epilog.vector.body ] ; 2 uses
  %i.ev = add i64 %i.c, %index139                 ; 9 uses
  %i.ew = shl nsw i64 %i.ev, 1
  %i.ex = shl i64 %i.ev, 1
  %i.ey = shl i64 %i.ev, 1
  %i.ez = shl i64 %i.ev, 1
  %i.fa = shl i64 %i.ev, 1
  %i.fb = shl i64 %i.ev, 1
  %i.fc = shl i64 %i.ev, 1
  %i.fd = shl i64 %i.ev, 1
  %i.fe = getelementptr i8, ptr %0, i64 %i.ew     ; 2 uses
  %i.ff = getelementptr i8, ptr %0, i64 %i.ex     ; 2 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 2
  %i.fh = getelementptr i8, ptr %0, i64 %i.ey     ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 4
  %i.fj = getelementptr i8, ptr %0, i64 %i.ez     ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 6
  %i.fl = getelementptr i8, ptr %0, i64 %i.fa     ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 8
  %i.fn = getelementptr i8, ptr %0, i64 %i.fb     ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 10
  %i.fp = getelementptr i8, ptr %0, i64 %i.fc     ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 12
  %i.fr = getelementptr i8, ptr %0, i64 %i.fd     ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 14
  %i.ft = getelementptr i8, ptr %3, i64 %i.ev     ; 2 uses
  %i.fu = load i8, ptr %i.fe, align 1, !tbaa !23, !alias.scope !78
  %i.fv = load i8, ptr %i.fg, align 1, !tbaa !23, !alias.scope !78
  %i.fw = load i8, ptr %i.fi, align 1, !tbaa !23, !alias.scope !78
  %i.fx = load i8, ptr %i.fk, align 1, !tbaa !23, !alias.scope !78
  %i.fy = load i8, ptr %i.fm, align 1, !tbaa !23, !alias.scope !78
  %i.fz = load i8, ptr %i.fo, align 1, !tbaa !23, !alias.scope !78
  %i.ga = load i8, ptr %i.fq, align 1, !tbaa !23, !alias.scope !78
  %i.gb = load i8, ptr %i.fs, align 1, !tbaa !23, !alias.scope !78
  %i.gc = insertelement <8 x i8> poison, i8 %i.fu, i64 0
  %i.gd = insertelement <8 x i8> %i.gc, i8 %i.fv, i64 1
  %i.ge = insertelement <8 x i8> %i.gd, i8 %i.fw, i64 2
  %i.gf = insertelement <8 x i8> %i.ge, i8 %i.fx, i64 3
  %i.gg = insertelement <8 x i8> %i.gf, i8 %i.fy, i64 4
  %i.gh = insertelement <8 x i8> %i.gg, i8 %i.fz, i64 5
  %i.gi = insertelement <8 x i8> %i.gh, i8 %i.ga, i64 6
  %i.gj = insertelement <8 x i8> %i.gi, i8 %i.gb, i64 7
  store <8 x i8> %i.gj, ptr %i.ft, align 1, !tbaa !23, !alias.scope !81, !noalias !83
  %i.gk = getelementptr i8, ptr %i.fe, i64 1
  %i.gl = getelementptr i8, ptr %i.ff, i64 3
  %i.gm = getelementptr i8, ptr %i.fh, i64 5
  %i.gn = getelementptr i8, ptr %i.fj, i64 7
  %i.go = getelementptr i8, ptr %i.fl, i64 9
  %i.gp = getelementptr i8, ptr %i.fn, i64 11
  %i.gq = getelementptr i8, ptr %i.fp, i64 13
  %i.gr = getelementptr i8, ptr %i.fr, i64 15
  %i.gs = load i8, ptr %i.gk, align 1, !tbaa !23, !alias.scope !78
  %i.gt = load i8, ptr %i.gl, align 1, !tbaa !23, !alias.scope !78
  %i.gu = load i8, ptr %i.gm, align 1, !tbaa !23, !alias.scope !78
  %i.gv = load i8, ptr %i.gn, align 1, !tbaa !23, !alias.scope !78
  %i.gw = load i8, ptr %i.go, align 1, !tbaa !23, !alias.scope !78
  %i.gx = load i8, ptr %i.gp, align 1, !tbaa !23, !alias.scope !78
  %i.gy = load i8, ptr %i.gq, align 1, !tbaa !23, !alias.scope !78
  %i.gz = load i8, ptr %i.gr, align 1, !tbaa !23, !alias.scope !78
  %i.ha = insertelement <8 x i8> poison, i8 %i.gs, i64 0
  %i.hb = insertelement <8 x i8> %i.ha, i8 %i.gt, i64 1
  %i.hc = insertelement <8 x i8> %i.hb, i8 %i.gu, i64 2
  %i.hd = insertelement <8 x i8> %i.hc, i8 %i.gv, i64 3
  %i.he = insertelement <8 x i8> %i.hd, i8 %i.gw, i64 4
  %i.hf = insertelement <8 x i8> %i.he, i8 %i.gx, i64 5
  %i.hg = insertelement <8 x i8> %i.hf, i8 %i.gy, i64 6
  %i.hh = insertelement <8 x i8> %i.hg, i8 %i.gz, i64 7
  %i.hi = getelementptr i8, ptr %i.ft, i64 %2
  store <8 x i8> %i.hh, ptr %i.hi, align 1, !tbaa !23, !alias.scope !85, !noalias !78
  %index.next140 = add nuw i64 %index139, 8       ; 2 uses
  %i.hj = icmp eq i64 %index.next140, %n.vec138
  br i1 %i.hj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !88

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n141 = icmp eq i64 %n.mod.vf137, 0
  br i1 %cmp.n141, label %.preheader98, label %.preheader99.preheader

.preheader99.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.073102.ph = phi i64 [ %i.c, %iter.check ], [ %i.c, %vector.scevcheck ], [ %i.c, %vector.memcheck ], [ %i.s, %vec.epilog.iter.check ], [ %i.eu, %vec.epilog.middle.block ] ; 6 uses
  %i.hk = sub i64 %2, %.073102.ph
  %.neg = add i64 %.073102.ph, 1
  %lcmp.mod.not = trunc nuw i64 %i.hk to i1
  br i1 %lcmp.mod.not, label %.preheader99.prol, label %.preheader99.prol.loopexit

.preheader99.prol:                                ; preds = %.preheader99.preheader
  %i.hl = shl nsw i64 %.073102.ph, 1
  %i.hm = getelementptr i8, ptr %0, i64 %i.hl     ; 2 uses
  %invariant.gep.prol = getelementptr i8, ptr %3, i64 %.073102.ph ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !23
  store i8 %i.hn, ptr %invariant.gep.prol, align 1, !tbaa !23
  %i.ho = getelementptr i8, ptr %i.hm, i64 1
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !23
  %gep.1.prol = getelementptr i8, ptr %invariant.gep.prol, i64 %2
  store i8 %i.hp, ptr %gep.1.prol, align 1, !tbaa !23
  %i.hq = add nsw i64 %.073102.ph, 1
  br label %.preheader99.prol.loopexit

.preheader99.prol.loopexit:                       ; preds = %.preheader99.prol, %.preheader99.preheader
  %.073102.unr = phi i64 [ %.073102.ph, %.preheader99.preheader ], [ %i.hq, %.preheader99.prol ]
  %i.hr = icmp eq i64 %2, %.neg
  br i1 %i.hr, label %.preheader98, label %.preheader99

.preheader99:                                     ; preds = %.preheader99.prol.loopexit, %.preheader99
  %.073102 = phi i64 [ %i.id, %.preheader99 ], [ %.073102.unr, %.preheader99.prol.loopexit ] ; 4 uses
  %i.hs = shl nsw i64 %.073102, 1
  %i.ht = getelementptr i8, ptr %0, i64 %i.hs     ; 2 uses
  %invariant.gep = getelementptr i8, ptr %3, i64 %.073102 ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !23
  store i8 %i.hu, ptr %invariant.gep, align 1, !tbaa !23
  %i.hv = getelementptr i8, ptr %i.ht, i64 1
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !23
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %2
  store i8 %i.hw, ptr %gep.1, align 1, !tbaa !23
  %i.hx = add nsw i64 %.073102, 1                 ; 2 uses
  %i.hy = shl nsw i64 %i.hx, 1
  %i.hz = getelementptr i8, ptr %0, i64 %i.hy     ; 2 uses
  %invariant.gep.1 = getelementptr i8, ptr %3, i64 %i.hx ; 2 uses
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !23
  store i8 %i.ia, ptr %invariant.gep.1, align 1, !tbaa !23
  %i.ib = getelementptr i8, ptr %i.hz, i64 1
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !23
  %gep.1.1 = getelementptr i8, ptr %invariant.gep.1, i64 %2
  store i8 %i.ic, ptr %gep.1.1, align 1, !tbaa !23
  %i.id = add nsw i64 %.073102, 2                 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.id, %2
  br i1 %exitcond.not.1, label %.preheader98, label %.preheader99, !llvm.loop !89

.preheader98:                                     ; preds = %.preheader99.prol.loopexit, %.preheader99, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.ie = icmp sgt i64 %2, 15
  br i1 %i.ie, label %.preheader.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.preheader, %.preheader98
  ret void

.preheader.preheader:                             ; preds = %.preheader98, %.preheader.preheader
  %.079106 = phi i64 [ %i.ip, %.preheader.preheader ], [ 0, %.preheader98 ] ; 3 uses
  %i.if = shl nuw i64 %.079106, 5
  %i.ig = getelementptr i8, ptr %0, i64 %i.if     ; 2 uses
  %i.ih = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ig) ; 2 uses
  %i.ii = getelementptr i8, ptr %i.ig, i64 16
  %i.ij = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ii) ; 2 uses
  %i.ik = shufflevector <16 x i8> %i.ih, <16 x i8> %i.ij, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.il = shufflevector <16 x i8> %i.ih, <16 x i8> %i.ij, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.im = shl nuw nsw i64 %.079106, 4             ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 %i.im
  store <16 x i8> %i.ik, ptr %i.in, align 1, !tbaa !23
  %i.io = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.im
  store <16 x i8> %i.il, ptr %i.io, align 1, !tbaa !23
  %i.ip = add nuw nsw i64 %.079106, 1             ; 2 uses
  %exitcond113.not = icmp eq i64 %i.ip, %i.b
  br i1 %exitcond113.not, label %._crit_edge, label %.preheader.preheader, !llvm.loop !90
}

declare void @_ZN5arrow4util8internal25ByteStreamSplitEncodeAvx2ILi2EEEvPKhilPh(ptr noundef, i32 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef ptr @_ZN5arrow8internal7CpuInfo11GetInstanceEv()
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
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
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %bb.e
  %i.g = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
  %i.h = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 4)
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
  %i.j = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 32)
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
  %i.l = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 1984)
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.g
  %.0 = phi i1 [ false, %bb.j ], [ %i.l, %bb.i ], [ %i.h, %bb.g ], [ %i.j, %bb.h ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd6sse4_2ELi4EEEvPKhilPh(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %3, i64 %2
  %i.b = shl i64 %2, 1                            ; 6 uses
  %i.c = getelementptr inbounds i8, ptr %3, i64 %i.b
  %i.d = mul i64 %2, 3                            ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  %i.f = sdiv i64 %2, 16                          ; 4 uses
  %i.g = shl nsw i64 %i.f, 4                      ; 14 uses
  %i.h = icmp slt i64 %i.g, %2
  br i1 %i.h, label %iter.check, label %.preheader100

iter.check:                                       ; preds = %bb.a
  %i.i = sub i64 %2, %i.g                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 8
  br i1 %min.iters.check, label %.preheader101.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.j = xor i64 %i.g, -1
  %i.k = add i64 %2, %i.j                         ; 5 uses
  %i.l = shl i64 %i.f, 6                          ; 4 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.l   ; 2 uses
  %mul.result = shl i64 %i.k, 2
  %i.m = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.n = icmp ult ptr %i.m, %scevgep
  %i.o = getelementptr i8, ptr %0, i64 %i.l
  %scevgep131 = getelementptr i8, ptr %i.o, i64 1 ; 2 uses
  %mul.result133 = shl i64 %i.k, 2
  %mul.overflow134 = icmp ugt i64 %i.k, 4611686018427387903
  %i.p = getelementptr i8, ptr %scevgep131, i64 %mul.result133
  %i.q = icmp ult ptr %i.p, %scevgep131
  %i.r = or i1 %i.q, %mul.overflow134
  %i.s = getelementptr i8, ptr %0, i64 %i.l
  %scevgep135 = getelementptr i8, ptr %i.s, i64 2 ; 2 uses
  %mul.result137 = shl i64 %i.k, 2
  %i.t = getelementptr i8, ptr %scevgep135, i64 %mul.result137
  %i.u = icmp ult ptr %i.t, %scevgep135
  %i.v = getelementptr i8, ptr %0, i64 %i.l
  %scevgep139 = getelementptr i8, ptr %i.v, i64 3 ; 2 uses
  %mul.result141 = shl i64 %i.k, 2
  %i.w = getelementptr i8, ptr %scevgep139, i64 %mul.result141
  %i.x = icmp ult ptr %i.w, %scevgep139
  %i.y = or i1 %i.n, %i.r
  %i.z = or i1 %i.u, %i.y
  %i.aa = or i1 %i.x, %i.z
  br i1 %i.aa, label %.preheader101.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep143 = getelementptr i8, ptr %3, i64 %i.g ; 4 uses
  %scevgep144 = getelementptr i8, ptr %3, i64 %2  ; 4 uses
  %i.ab = getelementptr i8, ptr %3, i64 %2
  %scevgep145 = getelementptr i8, ptr %i.ab, i64 %i.g ; 4 uses
  %scevgep146 = getelementptr i8, ptr %3, i64 %i.b ; 4 uses
  %i.ac = getelementptr i8, ptr %3, i64 %i.g
  %scevgep147 = getelementptr i8, ptr %i.ac, i64 %i.b ; 4 uses
  %scevgep148 = getelementptr i8, ptr %3, i64 %i.d ; 4 uses
  %i.ad = getelementptr i8, ptr %3, i64 %i.g
  %scevgep149 = getelementptr i8, ptr %i.ad, i64 %i.d ; 4 uses
  %i.ae = shl i64 %2, 2                           ; 2 uses
  %scevgep150 = getelementptr i8, ptr %3, i64 %i.ae ; 4 uses
  %i.af = shl i64 %i.f, 6
  %scevgep151 = getelementptr i8, ptr %0, i64 %i.af ; 4 uses
  %scevgep152 = getelementptr i8, ptr %0, i64 %i.ae ; 4 uses
  %bound0 = icmp ult ptr %scevgep143, %scevgep146
  %bound1 = icmp ult ptr %scevgep145, %scevgep144
  %found.conflict = and i1 %bound0, %bound1
  %bound0153 = icmp ult ptr %scevgep143, %scevgep148
  %bound1154 = icmp ult ptr %scevgep147, %scevgep144
end_hunk_2
