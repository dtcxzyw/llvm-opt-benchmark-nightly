inline.NumInlined: 154
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd6sse4_2ELi8EEEvPKhillPh:bb.a
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
  %i.d = icmp slt i64 %i.c, %2
  br i1 %i.d, label %iter.check, label %.preheader98

iter.check:                                       ; preds = %bb.a
  %i.e = sub i64 %2, %i.c                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.e, 8
  br i1 %min.iters.check, label %.preheader99.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.f = xor i64 %i.c, -1
  %i.g = add i64 %2, %i.f                         ; 3 uses
  %i.h = shl i64 %i.b, 5                          ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.h   ; 2 uses
  %mul.result = shl i64 %i.g, 1
  %i.i = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.j = icmp ult ptr %i.i, %scevgep
  %i.k = getelementptr i8, ptr %0, i64 %i.h
  %scevgep119 = getelementptr i8, ptr %i.k, i64 1 ; 2 uses
  %mul.result121 = shl i64 %i.g, 1
  %mul.overflow122 = icmp slt i64 %i.g, 0
  %i.l = getelementptr i8, ptr %scevgep119, i64 %mul.result121
  %i.m = icmp ult ptr %i.l, %scevgep119
  %i.n = or i1 %i.m, %mul.overflow122
  %i.o = or i1 %i.j, %i.n
  br i1 %i.o, label %.preheader99.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep123.a = getelementptr i8, ptr %3, i64 %i.c ; 2 uses
  %scevgep124.a = getelementptr i8, ptr %3, i64 %2 ; 2 uses
  %i.p = getelementptr i8, ptr %3, i64 %2
  %scevgep125.a = getelementptr i8, ptr %i.p, i64 %i.c ; 2 uses
  %i.q = shl i64 %2, 1                            ; 2 uses
  %scevgep126 = getelementptr i8, ptr %3, i64 %i.q ; 2 uses
  %i.r = shl i64 %i.b, 5
  %scevgep127 = getelementptr i8, ptr %0, i64 %i.r ; 2 uses
  %scevgep128 = getelementptr i8, ptr %0, i64 %i.q ; 2 uses
  %bound0 = icmp ult ptr %scevgep123.a, %scevgep126
  %bound1 = icmp ult ptr %scevgep125.a, %scevgep124.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0129.a = icmp ult ptr %scevgep123.a, %scevgep128
  %bound1130.a = icmp ult ptr %scevgep127, %scevgep124.a
  %found.conflict131.a = and i1 %bound0129.a, %bound1130.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict131.a
  %bound0132 = icmp ult ptr %scevgep125.a, %scevgep128
  %bound1133 = icmp ult ptr %scevgep127, %scevgep126
  %found.conflict134 = and i1 %bound0132, %bound1133
  %conflict.rdx135 = or i1 %conflict.rdx, %found.conflict134
  br i1 %conflict.rdx135, label %.preheader99.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check136 = icmp ult i64 %i.e, 16
  br i1 %min.iters.check136, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 15                      ; 3 uses
  %n.vec = sub nuw i64 %i.e, %n.mod.vf            ; 3 uses
  %i.s = add i64 %i.c, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = add i64 %i.c, %index                     ; 17 uses
  %i.u = shl nsw i64 %i.t, 1
  %i.v = shl i64 %i.t, 1
  %i.w = shl i64 %i.t, 1
  %i.x = shl i64 %i.t, 1
  %i.y = shl i64 %i.t, 1
  %i.z = shl i64 %i.t, 1
  %i.aa = shl i64 %i.t, 1
  %i.ab = shl i64 %i.t, 1
  %i.ac = shl i64 %i.t, 1
  %i.ad = shl i64 %i.t, 1
  %i.ae = shl i64 %i.t, 1
  %i.af = shl i64 %i.t, 1
  %i.ag = shl i64 %i.t, 1
  %i.ah = shl i64 %i.t, 1
  %i.ai = shl i64 %i.t, 1
  %i.aj = shl i64 %i.t, 1
  %i.ak = getelementptr i8, ptr %0, i64 %i.u      ; 2 uses
  %i.al = getelementptr i8, ptr %0, i64 %i.v      ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 2
  %i.an = getelementptr i8, ptr %0, i64 %i.w      ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 4
  %i.ap = getelementptr i8, ptr %0, i64 %i.x      ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 6
  %i.ar = getelementptr i8, ptr %0, i64 %i.y      ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %i.at = getelementptr i8, ptr %0, i64 %i.z      ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 10
  %i.av = getelementptr i8, ptr %0, i64 %i.aa     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 12
  %i.ax = getelementptr i8, ptr %0, i64 %i.ab     ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 14
  %i.az = getelementptr i8, ptr %0, i64 %i.ac     ; 2 uses
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
end_hunk_0
begin_hunk_1_@_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd6sse4_2ELi2EEEvPKhilPh:bb.a
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
  %xtraiter = and i64 %i.hk, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader99.prol.loopexit, label %.preheader99.prol

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
  %4 = or i1 %i.q, %mul.overflow134
  %i.r = getelementptr i8, ptr %0, i64 %i.l
  %scevgep135.a = getelementptr i8, ptr %i.r, i64 2 ; 2 uses
  %mul.result137 = shl i64 %i.k, 2
  %i.s = getelementptr i8, ptr %scevgep135.a, i64 %mul.result137
  %i.t = icmp ult ptr %i.s, %scevgep135.a
  %5 = getelementptr i8, ptr %0, i64 %i.l
  %scevgep139.a = getelementptr i8, ptr %5, i64 3 ; 2 uses
  %mul.result141 = shl i64 %i.k, 2
  %i.u = getelementptr i8, ptr %scevgep139.a, i64 %mul.result141
  %i.v = icmp ult ptr %i.u, %scevgep139.a
  %i.w = or i1 %i.n, %4
  %i.x = or i1 %i.t, %i.w
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %.preheader101.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep143.a = getelementptr i8, ptr %3, i64 %i.g ; 4 uses
  %scevgep144 = getelementptr i8, ptr %3, i64 %2  ; 4 uses
  %i.z = getelementptr i8, ptr %3, i64 %2
  %scevgep145 = getelementptr i8, ptr %i.z, i64 %i.g ; 4 uses
  %scevgep146 = getelementptr i8, ptr %3, i64 %i.b ; 4 uses
  %i.aa = getelementptr i8, ptr %3, i64 %i.g
  %scevgep147 = getelementptr i8, ptr %i.aa, i64 %i.b ; 4 uses
  %scevgep148 = getelementptr i8, ptr %3, i64 %i.d ; 4 uses
  %i.ab = getelementptr i8, ptr %3, i64 %i.g
  %scevgep149 = getelementptr i8, ptr %i.ab, i64 %i.d ; 4 uses
  %i.ac = shl i64 %2, 2                           ; 2 uses
  %scevgep150 = getelementptr i8, ptr %3, i64 %i.ac ; 4 uses
  %i.ad = shl i64 %i.f, 6
  %scevgep151 = getelementptr i8, ptr %0, i64 %i.ad ; 4 uses
  %scevgep152 = getelementptr i8, ptr %0, i64 %i.ac ; 4 uses
  %bound0 = icmp ult ptr %scevgep143.a, %scevgep146
  %bound1 = icmp ult ptr %scevgep145, %scevgep144
  %found.conflict = and i1 %bound0, %bound1
  %bound0153 = icmp ult ptr %scevgep143.a, %scevgep148
  %bound1154 = icmp ult ptr %scevgep147, %scevgep144
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx = or i1 %found.conflict, %found.conflict155
  %bound0156 = icmp ult ptr %scevgep143.a, %scevgep150
  %bound1157 = icmp ult ptr %scevgep149, %scevgep144
  %found.conflict158 = and i1 %bound0156, %bound1157
  %conflict.rdx159 = or i1 %conflict.rdx, %found.conflict158
  %bound0160 = icmp ult ptr %scevgep143.a, %scevgep152
  %bound1161 = icmp ult ptr %scevgep151, %scevgep144
  %found.conflict162 = and i1 %bound0160, %bound1161
  %conflict.rdx163 = or i1 %conflict.rdx159, %found.conflict162
  %bound0164 = icmp ult ptr %scevgep145, %scevgep148
  %bound1165 = icmp ult ptr %scevgep147, %scevgep146
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx167 = or i1 %conflict.rdx163, %found.conflict166
  %bound0168 = icmp ult ptr %scevgep145, %scevgep150
  %bound1169 = icmp ult ptr %scevgep149, %scevgep146
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx171 = or i1 %conflict.rdx167, %found.conflict170
  %bound0172 = icmp ult ptr %scevgep145, %scevgep152
  %bound1173 = icmp ult ptr %scevgep151, %scevgep146
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx175 = or i1 %conflict.rdx171, %found.conflict174
  %bound0176 = icmp ult ptr %scevgep147, %scevgep150
  %bound1177 = icmp ult ptr %scevgep149, %scevgep148
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %conflict.rdx175, %found.conflict178
  %bound0180 = icmp ult ptr %scevgep147, %scevgep152
  %bound1181 = icmp ult ptr %scevgep151, %scevgep148
  %found.conflict182 = and i1 %bound0180, %bound1181
  %conflict.rdx183 = or i1 %conflict.rdx179, %found.conflict182
  %bound0184 = icmp ult ptr %scevgep149, %scevgep152
  %bound1185 = icmp ult ptr %scevgep151, %scevgep150
  %found.conflict186 = and i1 %bound0184, %bound1185
  %conflict.rdx187 = or i1 %conflict.rdx183, %found.conflict186
  br i1 %conflict.rdx187, label %.preheader101.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check188 = icmp ult i64 %i.i, 16
  br i1 %min.iters.check188, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 15                      ; 3 uses
  %n.vec = sub nuw i64 %i.i, %n.mod.vf            ; 3 uses
  %i.ae = add i64 %i.g, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = add i64 %i.g, %index                    ; 17 uses
  %i.ag = shl nsw i64 %i.af, 2
  %i.ah = shl i64 %i.af, 2
  %i.ai = shl i64 %i.af, 2
  %i.aj = shl i64 %i.af, 2
  %i.ak = shl i64 %i.af, 2
  %i.al = shl i64 %i.af, 2
  %i.am = shl i64 %i.af, 2
  %i.an = shl i64 %i.af, 2
  %i.ao = shl i64 %i.af, 2
  %i.ap = shl i64 %i.af, 2
  %i.aq = shl i64 %i.af, 2
  %i.ar = shl i64 %i.af, 2
  %i.as = shl i64 %i.af, 2
  %i.at = shl i64 %i.af, 2
  %i.au = shl i64 %i.af, 2
  %i.av = shl i64 %i.af, 2
  %i.aw = getelementptr i8, ptr %0, i64 %i.ag     ; 4 uses
  %i.ax = getelementptr i8, ptr %0, i64 %i.ah     ; 4 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 4
  %i.az = getelementptr i8, ptr %0, i64 %i.ai     ; 4 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %i.bb = getelementptr i8, ptr %0, i64 %i.aj     ; 4 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 12
  %i.bd = getelementptr i8, ptr %0, i64 %i.ak     ; 4 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %i.bf = getelementptr i8, ptr %0, i64 %i.al     ; 4 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 20
  %i.bh = getelementptr i8, ptr %0, i64 %i.am     ; 4 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 24
  %i.bj = getelementptr i8, ptr %0, i64 %i.an     ; 4 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 28
  %i.bl = getelementptr i8, ptr %0, i64 %i.ao     ; 4 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 32
  %i.bn = getelementptr i8, ptr %0, i64 %i.ap     ; 4 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 36
  %i.bp = getelementptr i8, ptr %0, i64 %i.aq     ; 4 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 40
  %i.br = getelementptr i8, ptr %0, i64 %i.ar     ; 4 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 44
  %i.bt = getelementptr i8, ptr %0, i64 %i.as     ; 4 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 48
  %i.bv = getelementptr i8, ptr %0, i64 %i.at     ; 4 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 52
  %i.bx = getelementptr i8, ptr %0, i64 %i.au     ; 4 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 56
  %i.bz = getelementptr i8, ptr %0, i64 %i.av     ; 4 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 60
  %i.cb = getelementptr i8, ptr %3, i64 %i.af     ; 4 uses
  %i.cc = load i8, ptr %i.aw, align 1, !tbaa !23, !alias.scope !91
  %i.cd = load i8, ptr %i.ay, align 1, !tbaa !23, !alias.scope !91
  %i.ce = load i8, ptr %i.ba, align 1, !tbaa !23, !alias.scope !91
  %i.cf = load i8, ptr %i.bc, align 1, !tbaa !23, !alias.scope !91
  %i.cg = load i8, ptr %i.be, align 1, !tbaa !23, !alias.scope !91
  %i.ch = load i8, ptr %i.bg, align 1, !tbaa !23, !alias.scope !91
  %i.ci = load i8, ptr %i.bi, align 1, !tbaa !23, !alias.scope !91
  %i.cj = load i8, ptr %i.bk, align 1, !tbaa !23, !alias.scope !91
  %i.ck = load i8, ptr %i.bm, align 1, !tbaa !23, !alias.scope !91
  %i.cl = load i8, ptr %i.bo, align 1, !tbaa !23, !alias.scope !91
  %i.cm = load i8, ptr %i.bq, align 1, !tbaa !23, !alias.scope !91
  %i.cn = load i8, ptr %i.bs, align 1, !tbaa !23, !alias.scope !91
  %i.co = load i8, ptr %i.bu, align 1, !tbaa !23, !alias.scope !91
  %i.cp = load i8, ptr %i.bw, align 1, !tbaa !23, !alias.scope !91
  %i.cq = load i8, ptr %i.by, align 1, !tbaa !23, !alias.scope !91
  %i.cr = load i8, ptr %i.ca, align 1, !tbaa !23, !alias.scope !91
  %i.cs = insertelement <16 x i8> poison, i8 %i.cc, i64 0
  %i.ct = insertelement <16 x i8> %i.cs, i8 %i.cd, i64 1
  %i.cu = insertelement <16 x i8> %i.ct, i8 %i.ce, i64 2
  %i.cv = insertelement <16 x i8> %i.cu, i8 %i.cf, i64 3
  %i.cw = insertelement <16 x i8> %i.cv, i8 %i.cg, i64 4
  %i.cx = insertelement <16 x i8> %i.cw, i8 %i.ch, i64 5
  %i.cy = insertelement <16 x i8> %i.cx, i8 %i.ci, i64 6
  %i.cz = insertelement <16 x i8> %i.cy, i8 %i.cj, i64 7
  %i.da = insertelement <16 x i8> %i.cz, i8 %i.ck, i64 8
  %i.db = insertelement <16 x i8> %i.da, i8 %i.cl, i64 9
  %i.dc = insertelement <16 x i8> %i.db, i8 %i.cm, i64 10
  %i.dd = insertelement <16 x i8> %i.dc, i8 %i.cn, i64 11
  %i.de = insertelement <16 x i8> %i.dd, i8 %i.co, i64 12
  %i.df = insertelement <16 x i8> %i.de, i8 %i.cp, i64 13
  %i.dg = insertelement <16 x i8> %i.df, i8 %i.cq, i64 14
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 15
  store <16 x i8> %i.dh, ptr %i.cb, align 1, !tbaa !23, !alias.scope !94, !noalias !96
  %i.di = getelementptr i8, ptr %i.aw, i64 1
  %i.dj = getelementptr i8, ptr %i.ax, i64 5
  %i.dk = getelementptr i8, ptr %i.az, i64 9
  %i.dl = getelementptr i8, ptr %i.bb, i64 13
  %i.dm = getelementptr i8, ptr %i.bd, i64 17
  %i.dn = getelementptr i8, ptr %i.bf, i64 21
  %i.do = getelementptr i8, ptr %i.bh, i64 25
  %i.dp = getelementptr i8, ptr %i.bj, i64 29
  %i.dq = getelementptr i8, ptr %i.bl, i64 33
  %i.dr = getelementptr i8, ptr %i.bn, i64 37
  %i.ds = getelementptr i8, ptr %i.bp, i64 41
  %i.dt = getelementptr i8, ptr %i.br, i64 45
  %i.du = getelementptr i8, ptr %i.bt, i64 49
  %i.dv = getelementptr i8, ptr %i.bv, i64 53
  %i.dw = getelementptr i8, ptr %i.bx, i64 57
  %i.dx = getelementptr i8, ptr %i.bz, i64 61
  %i.dy = load i8, ptr %i.di, align 1, !tbaa !23, !alias.scope !91
  %i.dz = load i8, ptr %i.dj, align 1, !tbaa !23, !alias.scope !91
  %i.ea = load i8, ptr %i.dk, align 1, !tbaa !23, !alias.scope !91
  %i.eb = load i8, ptr %i.dl, align 1, !tbaa !23, !alias.scope !91
  %i.ec = load i8, ptr %i.dm, align 1, !tbaa !23, !alias.scope !91
  %i.ed = load i8, ptr %i.dn, align 1, !tbaa !23, !alias.scope !91
  %i.ee = load i8, ptr %i.do, align 1, !tbaa !23, !alias.scope !91
  %i.ef = load i8, ptr %i.dp, align 1, !tbaa !23, !alias.scope !91
  %i.eg = load i8, ptr %i.dq, align 1, !tbaa !23, !alias.scope !91
  %i.eh = load i8, ptr %i.dr, align 1, !tbaa !23, !alias.scope !91
  %i.ei = load i8, ptr %i.ds, align 1, !tbaa !23, !alias.scope !91
  %i.ej = load i8, ptr %i.dt, align 1, !tbaa !23, !alias.scope !91
  %i.ek = load i8, ptr %i.du, align 1, !tbaa !23, !alias.scope !91
  %i.el = load i8, ptr %i.dv, align 1, !tbaa !23, !alias.scope !91
  %i.em = load i8, ptr %i.dw, align 1, !tbaa !23, !alias.scope !91
  %i.en = load i8, ptr %i.dx, align 1, !tbaa !23, !alias.scope !91
  %i.eo = insertelement <16 x i8> poison, i8 %i.dy, i64 0
  %i.ep = insertelement <16 x i8> %i.eo, i8 %i.dz, i64 1
  %i.eq = insertelement <16 x i8> %i.ep, i8 %i.ea, i64 2
  %i.er = insertelement <16 x i8> %i.eq, i8 %i.eb, i64 3
  %i.es = insertelement <16 x i8> %i.er, i8 %i.ec, i64 4
  %i.et = insertelement <16 x i8> %i.es, i8 %i.ed, i64 5
  %i.eu = insertelement <16 x i8> %i.et, i8 %i.ee, i64 6
  %i.ev = insertelement <16 x i8> %i.eu, i8 %i.ef, i64 7
  %i.ew = insertelement <16 x i8> %i.ev, i8 %i.eg, i64 8
  %i.ex = insertelement <16 x i8> %i.ew, i8 %i.eh, i64 9
  %i.ey = insertelement <16 x i8> %i.ex, i8 %i.ei, i64 10
  %i.ez = insertelement <16 x i8> %i.ey, i8 %i.ej, i64 11
  %i.fa = insertelement <16 x i8> %i.ez, i8 %i.ek, i64 12
  %i.fb = insertelement <16 x i8> %i.fa, i8 %i.el, i64 13
end_hunk_1
begin_hunk_2_@_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd6sse4_2ELi4EEEvPKhilPh:bb.a
  %i.mj = insertelement <8 x i8> %i.mi, i8 %i.mb, i64 4
  %i.mk = insertelement <8 x i8> %i.mj, i8 %i.mc, i64 5
  %i.ml = insertelement <8 x i8> %i.mk, i8 %i.md, i64 6
  %i.mm = insertelement <8 x i8> %i.ml, i8 %i.me, i64 7
  %i.mn = getelementptr i8, ptr %i.jz, i64 %i.b
  store <8 x i8> %i.mm, ptr %i.mn, align 1, !tbaa !23, !alias.scope !102, !noalias !103
  %i.mo = getelementptr i8, ptr %i.jk, i64 3
  %i.mp = getelementptr i8, ptr %i.jl, i64 7
  %i.mq = getelementptr i8, ptr %i.jn, i64 11
  %i.mr = getelementptr i8, ptr %i.jp, i64 15
  %i.ms = getelementptr i8, ptr %i.jr, i64 19
  %i.mt = getelementptr i8, ptr %i.jt, i64 23
  %i.mu = getelementptr i8, ptr %i.jv, i64 27
  %i.mv = getelementptr i8, ptr %i.jx, i64 31
  %i.mw = load i8, ptr %i.mo, align 1, !tbaa !23, !alias.scope !91
  %i.mx = load i8, ptr %i.mp, align 1, !tbaa !23, !alias.scope !91
  %i.my = load i8, ptr %i.mq, align 1, !tbaa !23, !alias.scope !91
  %i.mz = load i8, ptr %i.mr, align 1, !tbaa !23, !alias.scope !91
  %i.na = load i8, ptr %i.ms, align 1, !tbaa !23, !alias.scope !91
  %i.nb = load i8, ptr %i.mt, align 1, !tbaa !23, !alias.scope !91
  %i.nc = load i8, ptr %i.mu, align 1, !tbaa !23, !alias.scope !91
  %i.nd = load i8, ptr %i.mv, align 1, !tbaa !23, !alias.scope !91
  %i.ne = insertelement <8 x i8> poison, i8 %i.mw, i64 0
  %i.nf = insertelement <8 x i8> %i.ne, i8 %i.mx, i64 1
  %i.ng = insertelement <8 x i8> %i.nf, i8 %i.my, i64 2
  %i.nh = insertelement <8 x i8> %i.ng, i8 %i.mz, i64 3
  %i.ni = insertelement <8 x i8> %i.nh, i8 %i.na, i64 4
  %i.nj = insertelement <8 x i8> %i.ni, i8 %i.nb, i64 5
  %i.nk = insertelement <8 x i8> %i.nj, i8 %i.nc, i64 6
  %i.nl = insertelement <8 x i8> %i.nk, i8 %i.nd, i64 7
  %i.nm = getelementptr i8, ptr %i.jz, i64 %i.d
  store <8 x i8> %i.nl, ptr %i.nm, align 1, !tbaa !23, !alias.scope !104, !noalias !91
  %index.next192 = add nuw i64 %index191, 8       ; 2 uses
  %i.nn = icmp eq i64 %index.next192, %n.vec190
  br i1 %i.nn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !106

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n193 = icmp eq i64 %n.mod.vf189, 0
  br i1 %cmp.n193, label %.preheader100, label %.preheader101.preheader

.preheader101.preheader:                          ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.073104.ph = phi i64 [ %i.g, %iter.check ], [ %i.g, %vector.scevcheck ], [ %i.g, %vector.memcheck ], [ %i.ae, %vec.epilog.iter.check ], [ %i.ja, %vec.epilog.middle.block ]
  br label %.preheader101

.preheader101:                                    ; preds = %.preheader101.preheader, %.preheader101
  %.073104 = phi i64 [ %i.nx, %.preheader101 ], [ %.073104.ph, %.preheader101.preheader ] ; 3 uses
  %i.no = shl nsw i64 %.073104, 2
  %i.np = getelementptr i8, ptr %0, i64 %i.no     ; 4 uses
  %invariant.gep = getelementptr i8, ptr %3, i64 %.073104 ; 4 uses
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !23
  store i8 %i.nq, ptr %invariant.gep, align 1, !tbaa !23
  %i.nr = getelementptr i8, ptr %i.np, i64 1
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !23
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %2
  store i8 %i.ns, ptr %gep.1, align 1, !tbaa !23
  %i.nt = getelementptr i8, ptr %i.np, i64 2
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !23
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.b
  store i8 %i.nu, ptr %gep.2, align 1, !tbaa !23
  %i.nv = getelementptr i8, ptr %i.np, i64 3
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !23
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.d
  store i8 %i.nw, ptr %gep.3, align 1, !tbaa !23
  %i.nx = add nsw i64 %.073104, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.nx, %2
  br i1 %exitcond.not, label %.preheader100, label %.preheader101, !llvm.loop !107

.preheader100:                                    ; preds = %.preheader101, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.ny = icmp sgt i64 %2, 15
  br i1 %i.ny, label %.preheader96.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader96.preheader, %.preheader100
  ret void

.preheader96.preheader:                           ; preds = %.preheader100, %.preheader96.preheader
  %.079110 = phi i64 [ %i.oz, %.preheader96.preheader ], [ 0, %.preheader100 ] ; 3 uses
  %i.nz = shl i64 %.079110, 6
  %i.oa = getelementptr i8, ptr %0, i64 %i.nz     ; 4 uses
  %i.ob = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.oa) ; 2 uses
  %i.oc = getelementptr i8, ptr %i.oa, i64 16
  %i.od = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.oc) ; 2 uses
  %i.oe = getelementptr i8, ptr %i.oa, i64 32
  %i.of = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.oe) ; 2 uses
  %i.og = getelementptr i8, ptr %i.oa, i64 48
  %i.oh = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.og) ; 2 uses
  %i.oi = shufflevector <16 x i8> %i.ob, <16 x i8> %i.od, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.oj = bitcast <16 x i8> %i.oi to <2 x i64>    ; 2 uses
  %i.ok = shufflevector <16 x i8> %i.ob, <16 x i8> %i.od, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.ol = bitcast <16 x i8> %i.ok to <2 x i64>    ; 2 uses
  %i.om = shufflevector <16 x i8> %i.of, <16 x i8> %i.oh, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.on = bitcast <16 x i8> %i.om to <2 x i64>    ; 2 uses
  %i.oo = shufflevector <16 x i8> %i.of, <16 x i8> %i.oh, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.op = bitcast <16 x i8> %i.oo to <2 x i64>    ; 2 uses
  %i.oq = shufflevector <2 x i64> %i.oj, <2 x i64> %i.on, <2 x i32> <i32 0, i32 2>
  %i.or = shufflevector <2 x i64> %i.oj, <2 x i64> %i.on, <2 x i32> <i32 1, i32 3>
  %i.os = shufflevector <2 x i64> %i.ol, <2 x i64> %i.op, <2 x i32> <i32 0, i32 2>
  %i.ot = shufflevector <2 x i64> %i.ol, <2 x i64> %i.op, <2 x i32> <i32 1, i32 3>
  %i.ou = shl nuw nsw i64 %.079110, 4             ; 4 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %3, i64 %i.ou
  store <2 x i64> %i.oq, ptr %i.ov, align 1, !tbaa !23
  %i.ow = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ou
  store <2 x i64> %i.or, ptr %i.ow, align 1, !tbaa !23
  %i.ox = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ou
  store <2 x i64> %i.os, ptr %i.ox, align 1, !tbaa !23
  %i.oy = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ou
  store <2 x i64> %i.ot, ptr %i.oy, align 1, !tbaa !23
  %i.oz = add nuw nsw i64 %.079110, 1             ; 2 uses
  %exitcond121.not = icmp eq i64 %i.oz, %i.f
  br i1 %exitcond121.not, label %._crit_edge, label %.preheader96.preheader, !llvm.loop !108
}

declare void @_ZN5arrow4util8internal25ByteStreamSplitEncodeAvx2ILi4EEEvPKhilPh(ptr noundef, i32 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef ptr @_ZN5arrow8internal7CpuInfo11GetInstanceEv()
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
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
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info) #7
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %bb.e
  %i.g = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
  %i.h = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 4)
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
  %i.j = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 32)
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @_ZZNK5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEE11IsSupportedENS0_13DispatchLevelEE8cpu_info, align 8, !tbaa !11
  %i.l = tail call noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 1984)
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.g
  %.0 = phi i1 [ false, %bb.j ], [ %i.l, %bb.i ], [ %i.h, %bb.g ], [ %i.j, %bb.h ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd6sse4_2ELi8EEEvPKhilPh(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %3, i64 %2
  %i.b = shl i64 %2, 1                            ; 6 uses
  %i.c = getelementptr inbounds i8, ptr %3, i64 %i.b
  %i.d = mul i64 %2, 3                            ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  %i.f = shl i64 %2, 2                            ; 6 uses
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  %i.h = mul i64 %2, 5                            ; 6 uses
  %i.i = getelementptr inbounds i8, ptr %3, i64 %i.h
  %i.j = mul i64 %2, 6                            ; 6 uses
  %i.k = getelementptr inbounds i8, ptr %3, i64 %i.j
  %i.l = mul i64 %2, 7                            ; 6 uses
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.l
  %i.n = sdiv i64 %2, 16                          ; 4 uses
  %i.o = shl nsw i64 %i.n, 4                      ; 18 uses
  %i.p = icmp slt i64 %i.o, %2
  br i1 %i.p, label %iter.check, label %.preheader100

iter.check:                                       ; preds = %bb.a
  %i.q = sub i64 %2, %i.o                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.q, 8
  br i1 %min.iters.check, label %.preheader101.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.r = xor i64 %i.o, -1
  %i.s = add i64 %2, %i.r                         ; 9 uses
  %i.t = shl i64 %i.n, 7                          ; 8 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.t   ; 2 uses
  %mul.result = shl i64 %i.s, 3
  %i.u = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.v = icmp ult ptr %i.u, %scevgep
  %i.w = getelementptr i8, ptr %0, i64 %i.t
  %scevgep151 = getelementptr i8, ptr %i.w, i64 1 ; 2 uses
  %mul.result153 = shl i64 %i.s, 3
  %mul.overflow154 = icmp ugt i64 %i.s, 2305843009213693951
  %i.x = getelementptr i8, ptr %scevgep151, i64 %mul.result153
  %i.y = icmp ult ptr %i.x, %scevgep151
  %4 = or i1 %i.y, %mul.overflow154
  %i.z = getelementptr i8, ptr %0, i64 %i.t
  %scevgep155.a = getelementptr i8, ptr %i.z, i64 2 ; 2 uses
  %mul.result157 = shl i64 %i.s, 3
  %i.aa = getelementptr i8, ptr %scevgep155.a, i64 %mul.result157
  %i.ab = icmp ult ptr %i.aa, %scevgep155.a
  %5 = getelementptr i8, ptr %0, i64 %i.t
  %scevgep159.a = getelementptr i8, ptr %5, i64 3 ; 2 uses
  %mul.result161 = shl i64 %i.s, 3
  %i.ac = getelementptr i8, ptr %scevgep159.a, i64 %mul.result161
  %i.ad = icmp ult ptr %i.ac, %scevgep159.a
  %i.ae = getelementptr i8, ptr %0, i64 %i.t
  %scevgep163.a = getelementptr i8, ptr %i.ae, i64 4 ; 2 uses
  %mul.result165 = shl i64 %i.s, 3
  %i.af = getelementptr i8, ptr %scevgep163.a, i64 %mul.result165
  %i.ag = icmp ult ptr %i.af, %scevgep163.a
  %i.ah = getelementptr i8, ptr %0, i64 %i.t
  %scevgep167.a = getelementptr i8, ptr %i.ah, i64 5 ; 2 uses
  %mul.result169 = shl i64 %i.s, 3
  %i.ai = getelementptr i8, ptr %scevgep167.a, i64 %mul.result169
  %i.aj = icmp ult ptr %i.ai, %scevgep167.a
  %i.ak = getelementptr i8, ptr %0, i64 %i.t
  %scevgep171.a = getelementptr i8, ptr %i.ak, i64 6 ; 2 uses
  %mul.result173 = shl i64 %i.s, 3
  %i.al = getelementptr i8, ptr %scevgep171.a, i64 %mul.result173
  %i.am = icmp ult ptr %i.al, %scevgep171.a
  %i.an = getelementptr i8, ptr %0, i64 %i.t
  %scevgep175.a = getelementptr i8, ptr %i.an, i64 7 ; 2 uses
  %mul.result177 = shl i64 %i.s, 3
  %i.ao = getelementptr i8, ptr %scevgep175.a, i64 %mul.result177
  %i.ap = icmp ult ptr %i.ao, %scevgep175.a
  %i.aq = or i1 %i.v, %4
  %i.ar = or i1 %i.ab, %i.aq
  %i.as = or i1 %i.ad, %i.ar
  %i.at = or i1 %i.ag, %i.as
  %i.au = or i1 %i.aj, %i.at
  %i.av = or i1 %i.am, %i.au
  %i.aw = or i1 %i.ap, %i.av
  br i1 %i.aw, label %.preheader101.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep179 = getelementptr i8, ptr %3, i64 %i.o ; 8 uses
  %scevgep180 = getelementptr i8, ptr %3, i64 %2  ; 8 uses
  %i.ax = getelementptr i8, ptr %3, i64 %2
  %scevgep181 = getelementptr i8, ptr %i.ax, i64 %i.o ; 8 uses
  %scevgep182 = getelementptr i8, ptr %3, i64 %i.b ; 8 uses
  %i.ay = getelementptr i8, ptr %3, i64 %i.o
  %scevgep183 = getelementptr i8, ptr %i.ay, i64 %i.b ; 8 uses
  %scevgep184 = getelementptr i8, ptr %3, i64 %i.d ; 8 uses
  %i.az = getelementptr i8, ptr %3, i64 %i.o
  %scevgep185 = getelementptr i8, ptr %i.az, i64 %i.d ; 8 uses
  %scevgep186 = getelementptr i8, ptr %3, i64 %i.f ; 8 uses
  %i.ba = getelementptr i8, ptr %3, i64 %i.o
  %scevgep187 = getelementptr i8, ptr %i.ba, i64 %i.f ; 8 uses
  %scevgep188 = getelementptr i8, ptr %3, i64 %i.h ; 8 uses
  %i.bb = getelementptr i8, ptr %3, i64 %i.o
  %scevgep189 = getelementptr i8, ptr %i.bb, i64 %i.h ; 8 uses
  %scevgep190 = getelementptr i8, ptr %3, i64 %i.j ; 8 uses
  %i.bc = getelementptr i8, ptr %3, i64 %i.o
  %scevgep191 = getelementptr i8, ptr %i.bc, i64 %i.j ; 8 uses
  %scevgep192 = getelementptr i8, ptr %3, i64 %i.l ; 8 uses
  %i.bd = getelementptr i8, ptr %3, i64 %i.o
  %scevgep193 = getelementptr i8, ptr %i.bd, i64 %i.l ; 8 uses
  %i.be = shl i64 %2, 3                           ; 2 uses
  %scevgep194 = getelementptr i8, ptr %3, i64 %i.be ; 8 uses
  %i.bf = shl i64 %i.n, 7
  %scevgep195 = getelementptr i8, ptr %0, i64 %i.bf ; 8 uses
  %scevgep196 = getelementptr i8, ptr %0, i64 %i.be ; 8 uses
  %bound0 = icmp ult ptr %scevgep179, %scevgep182
  %bound1 = icmp ult ptr %scevgep181, %scevgep180
  %found.conflict = and i1 %bound0, %bound1
  %bound0197 = icmp ult ptr %scevgep179, %scevgep184
  %bound1198 = icmp ult ptr %scevgep183, %scevgep180
  %found.conflict199 = and i1 %bound0197, %bound1198
  %conflict.rdx = or i1 %found.conflict, %found.conflict199
  %bound0200 = icmp ult ptr %scevgep179, %scevgep186
  %bound1201 = icmp ult ptr %scevgep185, %scevgep180
  %found.conflict202 = and i1 %bound0200, %bound1201
  %conflict.rdx203 = or i1 %conflict.rdx, %found.conflict202
  %bound0204 = icmp ult ptr %scevgep179, %scevgep188
  %bound1205 = icmp ult ptr %scevgep187, %scevgep180
  %found.conflict206 = and i1 %bound0204, %bound1205
  %conflict.rdx207 = or i1 %conflict.rdx203, %found.conflict206
  %bound0208 = icmp ult ptr %scevgep179, %scevgep190
  %bound1209 = icmp ult ptr %scevgep189, %scevgep180
  %found.conflict210 = and i1 %bound0208, %bound1209
  %conflict.rdx211 = or i1 %conflict.rdx207, %found.conflict210
  %bound0212 = icmp ult ptr %scevgep179, %scevgep192
  %bound1213 = icmp ult ptr %scevgep191, %scevgep180
  %found.conflict214 = and i1 %bound0212, %bound1213
  %conflict.rdx215 = or i1 %conflict.rdx211, %found.conflict214
  %bound0216 = icmp ult ptr %scevgep179, %scevgep194
  %bound1217 = icmp ult ptr %scevgep193, %scevgep180
  %found.conflict218 = and i1 %bound0216, %bound1217
  %conflict.rdx219 = or i1 %conflict.rdx215, %found.conflict218
  %bound0220 = icmp ult ptr %scevgep179, %scevgep196
  %bound1221 = icmp ult ptr %scevgep195, %scevgep180
  %found.conflict222 = and i1 %bound0220, %bound1221
  %conflict.rdx223 = or i1 %conflict.rdx219, %found.conflict222
  %bound0224 = icmp ult ptr %scevgep181, %scevgep184
  %bound1225 = icmp ult ptr %scevgep183, %scevgep182
  %found.conflict226 = and i1 %bound0224, %bound1225
  %conflict.rdx227 = or i1 %conflict.rdx223, %found.conflict226
  %bound0228 = icmp ult ptr %scevgep181, %scevgep186
  %bound1229 = icmp ult ptr %scevgep185, %scevgep182
  %found.conflict230 = and i1 %bound0228, %bound1229
  %conflict.rdx231 = or i1 %conflict.rdx227, %found.conflict230
  %bound0232 = icmp ult ptr %scevgep181, %scevgep188
  %bound1233 = icmp ult ptr %scevgep187, %scevgep182
  %found.conflict234 = and i1 %bound0232, %bound1233
  %conflict.rdx235 = or i1 %conflict.rdx231, %found.conflict234
  %bound0236 = icmp ult ptr %scevgep181, %scevgep190
  %bound1237 = icmp ult ptr %scevgep189, %scevgep182
  %found.conflict238 = and i1 %bound0236, %bound1237
  %conflict.rdx239 = or i1 %conflict.rdx235, %found.conflict238
  %bound0240 = icmp ult ptr %scevgep181, %scevgep192
  %bound1241 = icmp ult ptr %scevgep191, %scevgep182
  %found.conflict242 = and i1 %bound0240, %bound1241
  %conflict.rdx243 = or i1 %conflict.rdx239, %found.conflict242
  %bound0244 = icmp ult ptr %scevgep181, %scevgep194
  %bound1245 = icmp ult ptr %scevgep193, %scevgep182
  %found.conflict246 = and i1 %bound0244, %bound1245
  %conflict.rdx247 = or i1 %conflict.rdx243, %found.conflict246
  %bound0248 = icmp ult ptr %scevgep181, %scevgep196
  %bound1249 = icmp ult ptr %scevgep195, %scevgep182
  %found.conflict250 = and i1 %bound0248, %bound1249
  %conflict.rdx251 = or i1 %conflict.rdx247, %found.conflict250
  %bound0252 = icmp ult ptr %scevgep183, %scevgep186
  %bound1253 = icmp ult ptr %scevgep185, %scevgep184
  %found.conflict254 = and i1 %bound0252, %bound1253
  %conflict.rdx255 = or i1 %conflict.rdx251, %found.conflict254
  %bound0256 = icmp ult ptr %scevgep183, %scevgep188
  %bound1257 = icmp ult ptr %scevgep187, %scevgep184
  %found.conflict258 = and i1 %bound0256, %bound1257
  %conflict.rdx259 = or i1 %conflict.rdx255, %found.conflict258
  %bound0260 = icmp ult ptr %scevgep183, %scevgep190
  %bound1261 = icmp ult ptr %scevgep189, %scevgep184
  %found.conflict262 = and i1 %bound0260, %bound1261
  %conflict.rdx263 = or i1 %conflict.rdx259, %found.conflict262
  %bound0264 = icmp ult ptr %scevgep183, %scevgep192
  %bound1265 = icmp ult ptr %scevgep191, %scevgep184
  %found.conflict266 = and i1 %bound0264, %bound1265
  %conflict.rdx267 = or i1 %conflict.rdx263, %found.conflict266
  %bound0268 = icmp ult ptr %scevgep183, %scevgep194
  %bound1269 = icmp ult ptr %scevgep193, %scevgep184
  %found.conflict270 = and i1 %bound0268, %bound1269
  %conflict.rdx271 = or i1 %conflict.rdx267, %found.conflict270
  %bound0272 = icmp ult ptr %scevgep183, %scevgep196
  %bound1273 = icmp ult ptr %scevgep195, %scevgep184
  %found.conflict274 = and i1 %bound0272, %bound1273
  %conflict.rdx275 = or i1 %conflict.rdx271, %found.conflict274
  %bound0276 = icmp ult ptr %scevgep185, %scevgep188
  %bound1277 = icmp ult ptr %scevgep187, %scevgep186
  %found.conflict278 = and i1 %bound0276, %bound1277
  %conflict.rdx279 = or i1 %conflict.rdx275, %found.conflict278
  %bound0280 = icmp ult ptr %scevgep185, %scevgep190
  %bound1281 = icmp ult ptr %scevgep189, %scevgep186
  %found.conflict282 = and i1 %bound0280, %bound1281
  %conflict.rdx283 = or i1 %conflict.rdx279, %found.conflict282
  %bound0284 = icmp ult ptr %scevgep185, %scevgep192
  %bound1285 = icmp ult ptr %scevgep191, %scevgep186
  %found.conflict286 = and i1 %bound0284, %bound1285
  %conflict.rdx287 = or i1 %conflict.rdx283, %found.conflict286
  %bound0288 = icmp ult ptr %scevgep185, %scevgep194
  %bound1289 = icmp ult ptr %scevgep193, %scevgep186
  %found.conflict290 = and i1 %bound0288, %bound1289
  %conflict.rdx291 = or i1 %conflict.rdx287, %found.conflict290
  %bound0292 = icmp ult ptr %scevgep185, %scevgep196
  %bound1293 = icmp ult ptr %scevgep195, %scevgep186
  %found.conflict294 = and i1 %bound0292, %bound1293
  %conflict.rdx295 = or i1 %conflict.rdx291, %found.conflict294
  %bound0296 = icmp ult ptr %scevgep187, %scevgep190
  %bound1297 = icmp ult ptr %scevgep189, %scevgep188
  %found.conflict298 = and i1 %bound0296, %bound1297
  %conflict.rdx299 = or i1 %conflict.rdx295, %found.conflict298
  %bound0300 = icmp ult ptr %scevgep187, %scevgep192
  %bound1301 = icmp ult ptr %scevgep191, %scevgep188
  %found.conflict302 = and i1 %bound0300, %bound1301
  %conflict.rdx303 = or i1 %conflict.rdx299, %found.conflict302
  %bound0304 = icmp ult ptr %scevgep187, %scevgep194
  %bound1305 = icmp ult ptr %scevgep193, %scevgep188
  %found.conflict306 = and i1 %bound0304, %bound1305
  %conflict.rdx307 = or i1 %conflict.rdx303, %found.conflict306
  %bound0308 = icmp ult ptr %scevgep187, %scevgep196
  %bound1309 = icmp ult ptr %scevgep195, %scevgep188
  %found.conflict310 = and i1 %bound0308, %bound1309
  %conflict.rdx311 = or i1 %conflict.rdx307, %found.conflict310
  %bound0312 = icmp ult ptr %scevgep189, %scevgep192
  %bound1313 = icmp ult ptr %scevgep191, %scevgep190
  %found.conflict314 = and i1 %bound0312, %bound1313
  %conflict.rdx315 = or i1 %conflict.rdx311, %found.conflict314
  %bound0316 = icmp ult ptr %scevgep189, %scevgep194
  %bound1317 = icmp ult ptr %scevgep193, %scevgep190
  %found.conflict318 = and i1 %bound0316, %bound1317
  %conflict.rdx319 = or i1 %conflict.rdx315, %found.conflict318
  %bound0320 = icmp ult ptr %scevgep189, %scevgep196
  %bound1321 = icmp ult ptr %scevgep195, %scevgep190
  %found.conflict322 = and i1 %bound0320, %bound1321
  %conflict.rdx323 = or i1 %conflict.rdx319, %found.conflict322
  %bound0324 = icmp ult ptr %scevgep191, %scevgep194
  %bound1325 = icmp ult ptr %scevgep193, %scevgep192
  %found.conflict326 = and i1 %bound0324, %bound1325
  %conflict.rdx327 = or i1 %conflict.rdx323, %found.conflict326
  %bound0328 = icmp ult ptr %scevgep191, %scevgep196
  %bound1329 = icmp ult ptr %scevgep195, %scevgep192
  %found.conflict330 = and i1 %bound0328, %bound1329
  %conflict.rdx331 = or i1 %conflict.rdx327, %found.conflict330
  %bound0332 = icmp ult ptr %scevgep193, %scevgep196
  %bound1333 = icmp ult ptr %scevgep195, %scevgep194
  %found.conflict334 = and i1 %bound0332, %bound1333
  %conflict.rdx335 = or i1 %conflict.rdx331, %found.conflict334
  br i1 %conflict.rdx335, label %.preheader101.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check336 = icmp ult i64 %i.q, 16
  br i1 %min.iters.check336, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 15                      ; 3 uses
  %n.vec = sub nuw i64 %i.q, %n.mod.vf            ; 3 uses
  %i.bg = add i64 %i.o, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bh = add i64 %i.o, %index                    ; 17 uses
  %i.bi = shl nsw i64 %i.bh, 3
  %i.bj = shl i64 %i.bh, 3
  %i.bk = shl i64 %i.bh, 3
  %i.bl = shl i64 %i.bh, 3
  %i.bm = shl i64 %i.bh, 3
  %i.bn = shl i64 %i.bh, 3
  %i.bo = shl i64 %i.bh, 3
end_hunk_2
