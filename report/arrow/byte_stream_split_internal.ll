inline.NumInlined: 154
inline.NumDeleted: 71
begin_hunk_0_@_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd6sse4_2ELi8EEEvPKhillPh:bb.a
.preheader72:                                     ; preds = %.lr.ph, %middle.block, %bb.a
  %i.bj = icmp sgt i64 %2, 15
  br i1 %i.bj, label %.lr.ph80, label %._crit_edge

.lr.ph80:                                         ; preds = %.preheader72
  %i.bk = shl nsw i64 %3, 1
  %i.bl = mul nsw i64 %3, 3
  %i.bm = shl nsw i64 %3, 2
  %i.bn = mul nsw i64 %3, 5
  %i.bo = mul nsw i64 %3, 6
  %i.bp = mul nsw i64 %3, 7
  br label %.preheader.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader148, %.lr.ph
  %.05074 = phi i64 [ %i.ca, %.lr.ph ], [ %.05074.ph, %.lr.ph.preheader148 ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05074 ; 8 uses
  %i.bq = load i8, ptr %invariant.gep, align 1, !tbaa !23
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %3
  %i.br = load i8, ptr %gep.1, align 1, !tbaa !23
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.d
  %i.bs = load i8, ptr %gep.2, align 1, !tbaa !23
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.e
  %i.bt = load i8, ptr %gep.3, align 1, !tbaa !23
  %gep.4 = getelementptr i8, ptr %invariant.gep, i64 %i.f
  %i.bu = load i8, ptr %gep.4, align 1, !tbaa !23
  %gep.5 = getelementptr i8, ptr %invariant.gep, i64 %i.g
  %i.bv = load i8, ptr %gep.5, align 1, !tbaa !23
  %gep.6 = getelementptr i8, ptr %invariant.gep, i64 %i.h
  %i.bw = load i8, ptr %gep.6, align 1, !tbaa !23
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 %i.i
  %i.bx = load i8, ptr %gep.7, align 1, !tbaa !23
  %i.by = shl nsw i64 %.05074, 3
  %i.bz = getelementptr inbounds i8, ptr %4, i64 %i.by
  %.sroa.1094.0.insert.ext = zext i8 %i.bx to i64
  %.sroa.1094.0.insert.shift = shl nuw i64 %.sroa.1094.0.insert.ext, 56
  %.sroa.9.0.insert.ext = zext i8 %i.bw to i64
  %.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.9.0.insert.ext, 48
  %.sroa.9.0.insert.insert = or disjoint i64 %.sroa.1094.0.insert.shift, %.sroa.9.0.insert.shift
  %.sroa.893.0.insert.ext = zext i8 %i.bv to i64
  %.sroa.893.0.insert.shift = shl nuw nsw i64 %.sroa.893.0.insert.ext, 40
  %.sroa.893.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.insert, %.sroa.893.0.insert.shift
  %.sroa.7.0.insert.ext = zext i8 %i.bu to i64
  %.sroa.7.0.insert.shift = shl nuw nsw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.7.0.insert.insert = or disjoint i64 %.sroa.893.0.insert.insert, %.sroa.7.0.insert.shift
  %.sroa.692.0.insert.ext = zext i8 %i.bt to i64
  %.sroa.692.0.insert.shift = shl nuw nsw i64 %.sroa.692.0.insert.ext, 24
  %.sroa.692.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.insert, %.sroa.692.0.insert.shift
  %.sroa.5.0.insert.ext = zext i8 %i.bs to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 16
  %.sroa.491.0.insert.ext = zext i8 %i.br to i64
  %.sroa.491.0.insert.shift = shl nuw nsw i64 %.sroa.491.0.insert.ext, 8
  %.sroa.491.0.insert.mask = or disjoint i64 %.sroa.692.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.090.0.insert.ext = zext i8 %i.bq to i64
  %.sroa.090.0.insert.mask = or i64 %.sroa.491.0.insert.mask, %.sroa.491.0.insert.shift
  %.sroa.090.0.insert.insert = or i64 %.sroa.090.0.insert.mask, %.sroa.090.0.insert.ext
  store i64 %.sroa.090.0.insert.insert, ptr %i.bz, align 1
  %i.ca = add nsw i64 %.05074, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %2
  br i1 %exitcond.not, label %.preheader72, label %.lr.ph, !llvm.loop !76

._crit_edge:                                      ; preds = %.preheader.preheader, %.preheader72
  ret void

.preheader.preheader:                             ; preds = %.lr.ph80, %.preheader.preheader
  %.05579 = phi i64 [ 0, %.lr.ph80 ], [ %i.dr, %.preheader.preheader ] ; 3 uses
  %i.cb = shl i64 %.05579, 7
  %scevgep = getelementptr i8, ptr %4, i64 %i.cb  ; 8 uses
  %i.cc = shl nsw i64 %.05579, 4
  %i.cd = getelementptr i8, ptr %0, i64 %i.cc     ; 8 uses
  %i.ce = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cd) ; 2 uses
  %i.cf = getelementptr i8, ptr %i.cd, i64 %3
  %i.cg = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cf) ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cd, i64 %i.bk
  %i.ci = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ch) ; 2 uses
  %i.cj = getelementptr i8, ptr %i.cd, i64 %i.bl
  %i.ck = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cj) ; 2 uses
  %i.cl = getelementptr i8, ptr %i.cd, i64 %i.bm
  %i.cm = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cl) ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cd, i64 %i.bn
  %i.co = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cn) ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cd, i64 %i.bo
  %i.cq = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cp) ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cd, i64 %i.bp
  %i.cs = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cr) ; 2 uses
  %i.ct = shufflevector <16 x i8> %i.ce, <16 x i8> %i.cm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.cu = shufflevector <16 x i8> %i.ce, <16 x i8> %i.cm, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cv = shufflevector <16 x i8> %i.cg, <16 x i8> %i.co, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.cw = shufflevector <16 x i8> %i.cg, <16 x i8> %i.co, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cx = shufflevector <16 x i8> %i.ci, <16 x i8> %i.cq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.cy = shufflevector <16 x i8> %i.ci, <16 x i8> %i.cq, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cz = shufflevector <16 x i8> %i.ck, <16 x i8> %i.cs, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.da = shufflevector <16 x i8> %i.ck, <16 x i8> %i.cs, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.db = shufflevector <16 x i8> %i.ct, <16 x i8> %i.cx, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dc = shufflevector <16 x i8> %i.ct, <16 x i8> %i.cx, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dd = shufflevector <16 x i8> %i.cu, <16 x i8> %i.cy, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.de = shufflevector <16 x i8> %i.cu, <16 x i8> %i.cy, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.df = shufflevector <16 x i8> %i.cv, <16 x i8> %i.cz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dg = shufflevector <16 x i8> %i.cv, <16 x i8> %i.cz, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dh = shufflevector <16 x i8> %i.cw, <16 x i8> %i.da, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.di = shufflevector <16 x i8> %i.cw, <16 x i8> %i.da, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dj = shufflevector <16 x i8> %i.db, <16 x i8> %i.df, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dk = shufflevector <16 x i8> %i.db, <16 x i8> %i.df, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.dl = shufflevector <16 x i8> %i.dc, <16 x i8> %i.dg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dm = shufflevector <16 x i8> %i.dc, <16 x i8> %i.dg, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.dn = shufflevector <16 x i8> %i.dd, <16 x i8> %i.dh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.do = shufflevector <16 x i8> %i.dd, <16 x i8> %i.dh, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.dp = shufflevector <16 x i8> %i.de, <16 x i8> %i.di, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dq = shufflevector <16 x i8> %i.de, <16 x i8> %i.di, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.dj, ptr %scevgep, align 1, !tbaa !23
  %.sroa.52.384.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 16
  store <16 x i8> %i.dk, ptr %.sroa.52.384.scevgep.sroa_idx, align 1, !tbaa !23
  %.sroa.53.384.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 32
  store <16 x i8> %i.dl, ptr %.sroa.53.384.scevgep.sroa_idx, align 1, !tbaa !23
  %.sroa.54.384.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 48
  store <16 x i8> %i.dm, ptr %.sroa.54.384.scevgep.sroa_idx, align 1, !tbaa !23
  %.sroa.55.384.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 64
  store <16 x i8> %i.dn, ptr %.sroa.55.384.scevgep.sroa_idx, align 1, !tbaa !23
  %.sroa.56.384.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 80
  store <16 x i8> %i.do, ptr %.sroa.56.384.scevgep.sroa_idx, align 1, !tbaa !23
  %.sroa.57.384.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 96
  store <16 x i8> %i.dp, ptr %.sroa.57.384.scevgep.sroa_idx, align 1, !tbaa !23
  %.sroa.58.384.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 112
  store <16 x i8> %i.dq, ptr %.sroa.58.384.scevgep.sroa_idx, align 1, !tbaa !23
  %i.dr = add nuw nsw i64 %.05579, 1              ; 2 uses
  %exitcond89.not = icmp eq i64 %i.dr, %i.a
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
  %scevgep123 = getelementptr i8, ptr %3, i64 %i.c ; 2 uses
  %scevgep124 = getelementptr i8, ptr %3, i64 %2  ; 2 uses
  %i.p = getelementptr i8, ptr %3, i64 %2
  %scevgep125 = getelementptr i8, ptr %i.p, i64 %i.c ; 2 uses
  %i.q = shl i64 %2, 1                            ; 2 uses
  %scevgep126 = getelementptr i8, ptr %3, i64 %i.q ; 2 uses
  %i.r = shl i64 %i.b, 5
  %scevgep127 = getelementptr i8, ptr %0, i64 %i.r ; 2 uses
  %scevgep128 = getelementptr i8, ptr %0, i64 %i.q ; 2 uses
  %bound0 = icmp ult ptr %scevgep123, %scevgep126
  %bound1 = icmp ult ptr %scevgep125, %scevgep124
  %found.conflict = and i1 %bound0, %bound1
  %bound0129 = icmp ult ptr %scevgep123, %scevgep128
  %bound1130 = icmp ult ptr %scevgep127, %scevgep124
  %found.conflict131 = and i1 %bound0129, %bound1130
  %conflict.rdx = or i1 %found.conflict, %found.conflict131
  %bound0132 = icmp ult ptr %scevgep125, %scevgep128
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
  %4 = shl nsw i64 %i.ev, 1
  %5 = shl i64 %i.ev, 1
  %6 = shl i64 %i.ev, 1
  %7 = shl i64 %i.ev, 1
  %i.ew = shl i64 %i.ev, 1
  %i.ex = shl i64 %i.ev, 1
  %i.ey = shl i64 %i.ev, 1
  %i.ez = shl i64 %i.ev, 1
  %8 = getelementptr i8, ptr %0, i64 %4           ; 2 uses
  %9 = getelementptr i8, ptr %0, i64 %5           ; 2 uses
  %10 = getelementptr i8, ptr %9, i64 2
  %11 = getelementptr i8, ptr %0, i64 %6          ; 2 uses
  %12 = getelementptr i8, ptr %11, i64 4
  %13 = getelementptr i8, ptr %0, i64 %7          ; 2 uses
  %14 = getelementptr i8, ptr %13, i64 6
  %15 = getelementptr i8, ptr %0, i64 %i.ew       ; 2 uses
  %i.fa = getelementptr i8, ptr %15, i64 8
  %i.fb = getelementptr i8, ptr %0, i64 %i.ex     ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 10
  %i.fd = getelementptr i8, ptr %0, i64 %i.ey     ; 2 uses
  %i.fe = getelementptr i8, ptr %i.fd, i64 12
  %i.ff = getelementptr i8, ptr %0, i64 %i.ez     ; 2 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 14
  %i.fh = getelementptr i8, ptr %3, i64 %i.ev     ; 2 uses
  %16 = load i8, ptr %8, align 1, !tbaa !23, !alias.scope !78
  %17 = load i8, ptr %10, align 1, !tbaa !23, !alias.scope !78
  %18 = load i8, ptr %12, align 1, !tbaa !23, !alias.scope !78
  %19 = load i8, ptr %14, align 1, !tbaa !23, !alias.scope !78
  %i.fi = load i8, ptr %i.fa, align 1, !tbaa !23, !alias.scope !78
  %i.fj = load i8, ptr %i.fc, align 1, !tbaa !23, !alias.scope !78
  %i.fk = load i8, ptr %i.fe, align 1, !tbaa !23, !alias.scope !78
  %i.fl = load i8, ptr %i.fg, align 1, !tbaa !23, !alias.scope !78
  %20 = insertelement <8 x i8> poison, i8 %16, i64 0
  %21 = insertelement <8 x i8> %20, i8 %17, i64 1
  %22 = insertelement <8 x i8> %21, i8 %18, i64 2
  %23 = insertelement <8 x i8> %22, i8 %19, i64 3
  %24 = insertelement <8 x i8> %23, i8 %i.fi, i64 4
  %25 = insertelement <8 x i8> %24, i8 %i.fj, i64 5
  %26 = insertelement <8 x i8> %25, i8 %i.fk, i64 6
  %27 = insertelement <8 x i8> %26, i8 %i.fl, i64 7
  store <8 x i8> %27, ptr %i.fh, align 1, !tbaa !23, !alias.scope !81, !noalias !83
  %28 = getelementptr i8, ptr %8, i64 1
  %29 = getelementptr i8, ptr %9, i64 3
  %30 = getelementptr i8, ptr %11, i64 5
  %31 = getelementptr i8, ptr %13, i64 7
  %i.fm = getelementptr i8, ptr %15, i64 9
  %i.fn = getelementptr i8, ptr %i.fb, i64 11
  %i.fo = getelementptr i8, ptr %i.fd, i64 13
  %i.fp = getelementptr i8, ptr %i.ff, i64 15
  %32 = load i8, ptr %28, align 1, !tbaa !23, !alias.scope !78
  %33 = load i8, ptr %29, align 1, !tbaa !23, !alias.scope !78
  %34 = load i8, ptr %30, align 1, !tbaa !23, !alias.scope !78
  %35 = load i8, ptr %31, align 1, !tbaa !23, !alias.scope !78
  %i.fq = load i8, ptr %i.fm, align 1, !tbaa !23, !alias.scope !78
  %i.fr = load i8, ptr %i.fn, align 1, !tbaa !23, !alias.scope !78
  %i.fs = load i8, ptr %i.fo, align 1, !tbaa !23, !alias.scope !78
  %i.ft = load i8, ptr %i.fp, align 1, !tbaa !23, !alias.scope !78
  %36 = insertelement <8 x i8> poison, i8 %32, i64 0
  %37 = insertelement <8 x i8> %36, i8 %33, i64 1
  %38 = insertelement <8 x i8> %37, i8 %34, i64 2
  %39 = insertelement <8 x i8> %38, i8 %35, i64 3
  %40 = insertelement <8 x i8> %39, i8 %i.fq, i64 4
  %41 = insertelement <8 x i8> %40, i8 %i.fr, i64 5
  %42 = insertelement <8 x i8> %41, i8 %i.fs, i64 6
  %43 = insertelement <8 x i8> %42, i8 %i.ft, i64 7
  %i.fu = getelementptr i8, ptr %i.fh, i64 %2
  store <8 x i8> %43, ptr %i.fu, align 1, !tbaa !23, !alias.scope !85, !noalias !78
  %index.next140 = add nuw i64 %index139, 8       ; 2 uses
  %i.fv = icmp eq i64 %index.next140, %n.vec138
  br i1 %i.fv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !88

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n141 = icmp eq i64 %n.mod.vf137, 0
  br i1 %cmp.n141, label %.preheader98, label %.preheader99.preheader

.preheader99.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.073102.ph = phi i64 [ %i.c, %iter.check ], [ %i.c, %vector.scevcheck ], [ %i.c, %vector.memcheck ], [ %i.s, %vec.epilog.iter.check ], [ %i.eu, %vec.epilog.middle.block ] ; 6 uses
  %i.fw = sub i64 %2, %.073102.ph
  %.neg = add i64 %.073102.ph, 1
  %xtraiter = and i64 %i.fw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader99.prol.loopexit, label %.preheader99.prol

.preheader99.prol:                                ; preds = %.preheader99.preheader
  %i.fx = shl nsw i64 %.073102.ph, 1
  %i.fy = getelementptr i8, ptr %0, i64 %i.fx     ; 2 uses
  %invariant.gep.prol = getelementptr i8, ptr %3, i64 %.073102.ph ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !23
  store i8 %i.fz, ptr %invariant.gep.prol, align 1, !tbaa !23
  %i.ga = getelementptr i8, ptr %i.fy, i64 1
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !23
  %gep.1.prol = getelementptr i8, ptr %invariant.gep.prol, i64 %2
  store i8 %i.gb, ptr %gep.1.prol, align 1, !tbaa !23
  %i.gc = add nsw i64 %.073102.ph, 1
  br label %.preheader99.prol.loopexit

.preheader99.prol.loopexit:                       ; preds = %.preheader99.prol, %.preheader99.preheader
  %.073102.unr = phi i64 [ %.073102.ph, %.preheader99.preheader ], [ %i.gc, %.preheader99.prol ]
  %i.gd = icmp eq i64 %2, %.neg
  br i1 %i.gd, label %.preheader98, label %.preheader99

.preheader99:                                     ; preds = %.preheader99.prol.loopexit, %.preheader99
  %.073102 = phi i64 [ %i.gp, %.preheader99 ], [ %.073102.unr, %.preheader99.prol.loopexit ] ; 4 uses
  %i.ge = shl nsw i64 %.073102, 1
  %i.gf = getelementptr i8, ptr %0, i64 %i.ge     ; 2 uses
  %invariant.gep = getelementptr i8, ptr %3, i64 %.073102 ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !23
  store i8 %i.gg, ptr %invariant.gep, align 1, !tbaa !23
  %i.gh = getelementptr i8, ptr %i.gf, i64 1
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !23
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %2
  store i8 %i.gi, ptr %gep.1, align 1, !tbaa !23
  %i.gj = add nsw i64 %.073102, 1                 ; 2 uses
  %i.gk = shl nsw i64 %i.gj, 1
  %i.gl = getelementptr i8, ptr %0, i64 %i.gk     ; 2 uses
  %invariant.gep.1 = getelementptr i8, ptr %3, i64 %i.gj ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !23
  store i8 %i.gm, ptr %invariant.gep.1, align 1, !tbaa !23
  %i.gn = getelementptr i8, ptr %i.gl, i64 1
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !23
  %gep.1.1 = getelementptr i8, ptr %invariant.gep.1, i64 %2
  store i8 %i.go, ptr %gep.1.1, align 1, !tbaa !23
  %i.gp = add nsw i64 %.073102, 2                 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.gp, %2
  br i1 %exitcond.not.1, label %.preheader98, label %.preheader99, !llvm.loop !89

.preheader98:                                     ; preds = %.preheader99.prol.loopexit, %.preheader99, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.gq = icmp sgt i64 %2, 15
  br i1 %i.gq, label %.preheader.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.preheader, %.preheader98
  ret void

.preheader.preheader:                             ; preds = %.preheader98, %.preheader.preheader
  %.079106 = phi i64 [ %i.hb, %.preheader.preheader ], [ 0, %.preheader98 ] ; 3 uses
  %i.gr = shl i64 %.079106, 5
  %i.gs = getelementptr i8, ptr %0, i64 %i.gr     ; 2 uses
  %i.gt = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.gs) ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gs, i64 16
  %i.gv = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.gu) ; 2 uses
  %i.gw = shufflevector <16 x i8> %i.gt, <16 x i8> %i.gv, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.gx = shufflevector <16 x i8> %i.gt, <16 x i8> %i.gv, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.gy = shl nsw i64 %.079106, 4                 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 %i.gy
  store <16 x i8> %i.gw, ptr %i.gz, align 1, !tbaa !23
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gy
  store <16 x i8> %i.gx, ptr %i.ha, align 1, !tbaa !23
  %i.hb = add nuw nsw i64 %.079106, 1             ; 2 uses
  %exitcond113.not = icmp eq i64 %i.hb, %i.b
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
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx = or i1 %found.conflict, %found.conflict155
  %bound0156 = icmp ult ptr %scevgep143, %scevgep150
  %bound1157 = icmp ult ptr %scevgep149, %scevgep144
  %found.conflict158 = and i1 %bound0156, %bound1157
  %conflict.rdx159 = or i1 %conflict.rdx, %found.conflict158
  %bound0160 = icmp ult ptr %scevgep143, %scevgep152
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
  %i.ag = add i64 %i.g, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = add i64 %i.g, %index                    ; 17 uses
  %i.ai = shl nsw i64 %i.ah, 2
  %i.aj = shl i64 %i.ah, 2
  %i.ak = shl i64 %i.ah, 2
  %i.al = shl i64 %i.ah, 2
  %i.am = shl i64 %i.ah, 2
  %i.an = shl i64 %i.ah, 2
  %i.ao = shl i64 %i.ah, 2
  %i.ap = shl i64 %i.ah, 2
  %i.aq = shl i64 %i.ah, 2
  %i.ar = shl i64 %i.ah, 2
  %i.as = shl i64 %i.ah, 2
  %i.at = shl i64 %i.ah, 2
  %i.au = shl i64 %i.ah, 2
  %i.av = shl i64 %i.ah, 2
  %i.aw = shl i64 %i.ah, 2
  %i.ax = shl i64 %i.ah, 2
  %i.ay = getelementptr i8, ptr %0, i64 %i.ai     ; 4 uses
  %i.az = getelementptr i8, ptr %0, i64 %i.aj     ; 4 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  %i.bb = getelementptr i8, ptr %0, i64 %i.ak     ; 4 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %i.bd = getelementptr i8, ptr %0, i64 %i.al     ; 4 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 12
  %i.bf = getelementptr i8, ptr %0, i64 %i.am     ; 4 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  %i.bh = getelementptr i8, ptr %0, i64 %i.an     ; 4 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 20
  %i.bj = getelementptr i8, ptr %0, i64 %i.ao     ; 4 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 24
  %i.bl = getelementptr i8, ptr %0, i64 %i.ap     ; 4 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 28
  %i.bn = getelementptr i8, ptr %0, i64 %i.aq     ; 4 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 32
  %i.bp = getelementptr i8, ptr %0, i64 %i.ar     ; 4 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 36
  %i.br = getelementptr i8, ptr %0, i64 %i.as     ; 4 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 40
  %i.bt = getelementptr i8, ptr %0, i64 %i.at     ; 4 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 44
  %i.bv = getelementptr i8, ptr %0, i64 %i.au     ; 4 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 48
  %i.bx = getelementptr i8, ptr %0, i64 %i.av     ; 4 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 52
  %i.bz = getelementptr i8, ptr %0, i64 %i.aw     ; 4 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 56
  %i.cb = getelementptr i8, ptr %0, i64 %i.ax     ; 4 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 60
  %i.cd = getelementptr i8, ptr %3, i64 %i.ah     ; 4 uses
  %i.ce = load i8, ptr %i.ay, align 1, !tbaa !23, !alias.scope !91
  %i.cf = load i8, ptr %i.ba, align 1, !tbaa !23, !alias.scope !91
  %i.cg = load i8, ptr %i.bc, align 1, !tbaa !23, !alias.scope !91
  %i.ch = load i8, ptr %i.be, align 1, !tbaa !23, !alias.scope !91
  %i.ci = load i8, ptr %i.bg, align 1, !tbaa !23, !alias.scope !91
  %i.cj = load i8, ptr %i.bi, align 1, !tbaa !23, !alias.scope !91
  %i.ck = load i8, ptr %i.bk, align 1, !tbaa !23, !alias.scope !91
  %i.cl = load i8, ptr %i.bm, align 1, !tbaa !23, !alias.scope !91
  %i.cm = load i8, ptr %i.bo, align 1, !tbaa !23, !alias.scope !91
  %i.cn = load i8, ptr %i.bq, align 1, !tbaa !23, !alias.scope !91
  %i.co = load i8, ptr %i.bs, align 1, !tbaa !23, !alias.scope !91
  %i.cp = load i8, ptr %i.bu, align 1, !tbaa !23, !alias.scope !91
  %i.cq = load i8, ptr %i.bw, align 1, !tbaa !23, !alias.scope !91
  %i.cr = load i8, ptr %i.by, align 1, !tbaa !23, !alias.scope !91
  %i.cs = load i8, ptr %i.ca, align 1, !tbaa !23, !alias.scope !91
  %i.ct = load i8, ptr %i.cc, align 1, !tbaa !23, !alias.scope !91
  %i.cu = insertelement <16 x i8> poison, i8 %i.ce, i64 0
  %i.cv = insertelement <16 x i8> %i.cu, i8 %i.cf, i64 1
  %i.cw = insertelement <16 x i8> %i.cv, i8 %i.cg, i64 2
  %i.cx = insertelement <16 x i8> %i.cw, i8 %i.ch, i64 3
  %i.cy = insertelement <16 x i8> %i.cx, i8 %i.ci, i64 4
  %i.cz = insertelement <16 x i8> %i.cy, i8 %i.cj, i64 5
  %i.da = insertelement <16 x i8> %i.cz, i8 %i.ck, i64 6
  %i.db = insertelement <16 x i8> %i.da, i8 %i.cl, i64 7
  %i.dc = insertelement <16 x i8> %i.db, i8 %i.cm, i64 8
  %i.dd = insertelement <16 x i8> %i.dc, i8 %i.cn, i64 9
  %i.de = insertelement <16 x i8> %i.dd, i8 %i.co, i64 10
  %i.df = insertelement <16 x i8> %i.de, i8 %i.cp, i64 11
  %i.dg = insertelement <16 x i8> %i.df, i8 %i.cq, i64 12
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 13
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 14
  %i.dj = insertelement <16 x i8> %i.di, i8 %i.ct, i64 15
  store <16 x i8> %i.dj, ptr %i.cd, align 1, !tbaa !23, !alias.scope !94, !noalias !96
  %i.dk = getelementptr i8, ptr %i.ay, i64 1
  %i.dl = getelementptr i8, ptr %i.az, i64 5
  %i.dm = getelementptr i8, ptr %i.bb, i64 9
  %i.dn = getelementptr i8, ptr %i.bd, i64 13
  %i.do = getelementptr i8, ptr %i.bf, i64 17
  %i.dp = getelementptr i8, ptr %i.bh, i64 21
  %i.dq = getelementptr i8, ptr %i.bj, i64 25
  %i.dr = getelementptr i8, ptr %i.bl, i64 29
  %i.ds = getelementptr i8, ptr %i.bn, i64 33
  %i.dt = getelementptr i8, ptr %i.bp, i64 37
  %i.du = getelementptr i8, ptr %i.br, i64 41
  %i.dv = getelementptr i8, ptr %i.bt, i64 45
  %i.dw = getelementptr i8, ptr %i.bv, i64 49
  %i.dx = getelementptr i8, ptr %i.bx, i64 53
  %i.dy = getelementptr i8, ptr %i.bz, i64 57
  %i.dz = getelementptr i8, ptr %i.cb, i64 61
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
  %i.eo = load i8, ptr %i.dy, align 1, !tbaa !23, !alias.scope !91
  %i.ep = load i8, ptr %i.dz, align 1, !tbaa !23, !alias.scope !91
  %i.eq = insertelement <16 x i8> poison, i8 %i.ea, i64 0
  %i.er = insertelement <16 x i8> %i.eq, i8 %i.eb, i64 1
  %i.es = insertelement <16 x i8> %i.er, i8 %i.ec, i64 2
  %i.et = insertelement <16 x i8> %i.es, i8 %i.ed, i64 3
  %i.eu = insertelement <16 x i8> %i.et, i8 %i.ee, i64 4
  %i.ev = insertelement <16 x i8> %i.eu, i8 %i.ef, i64 5
  %i.ew = insertelement <16 x i8> %i.ev, i8 %i.eg, i64 6
  %i.ex = insertelement <16 x i8> %i.ew, i8 %i.eh, i64 7
  %i.ey = insertelement <16 x i8> %i.ex, i8 %i.ei, i64 8
  %i.ez = insertelement <16 x i8> %i.ey, i8 %i.ej, i64 9
  %i.fa = insertelement <16 x i8> %i.ez, i8 %i.ek, i64 10
  %i.fb = insertelement <16 x i8> %i.fa, i8 %i.el, i64 11
  %i.fc = insertelement <16 x i8> %i.fb, i8 %i.em, i64 12
  %i.fd = insertelement <16 x i8> %i.fc, i8 %i.en, i64 13
  %i.fe = insertelement <16 x i8> %i.fd, i8 %i.eo, i64 14
  %i.ff = insertelement <16 x i8> %i.fe, i8 %i.ep, i64 15
  %i.fg = getelementptr i8, ptr %i.cd, i64 %2
  store <16 x i8> %i.ff, ptr %i.fg, align 1, !tbaa !23, !alias.scope !100, !noalias !101
  %i.fh = getelementptr i8, ptr %i.ay, i64 2
  %i.fi = getelementptr i8, ptr %i.az, i64 6
  %i.fj = getelementptr i8, ptr %i.bb, i64 10
  %i.fk = getelementptr i8, ptr %i.bd, i64 14
  %i.fl = getelementptr i8, ptr %i.bf, i64 18
  %i.fm = getelementptr i8, ptr %i.bh, i64 22
  %i.fn = getelementptr i8, ptr %i.bj, i64 26
  %i.fo = getelementptr i8, ptr %i.bl, i64 30
  %i.fp = getelementptr i8, ptr %i.bn, i64 34
  %i.fq = getelementptr i8, ptr %i.bp, i64 38
  %i.fr = getelementptr i8, ptr %i.br, i64 42
  %i.fs = getelementptr i8, ptr %i.bt, i64 46
  %i.ft = getelementptr i8, ptr %i.bv, i64 50
  %i.fu = getelementptr i8, ptr %i.bx, i64 54
  %i.fv = getelementptr i8, ptr %i.bz, i64 58
  %i.fw = getelementptr i8, ptr %i.cb, i64 62
  %i.fx = load i8, ptr %i.fh, align 1, !tbaa !23, !alias.scope !91
  %i.fy = load i8, ptr %i.fi, align 1, !tbaa !23, !alias.scope !91
  %i.fz = load i8, ptr %i.fj, align 1, !tbaa !23, !alias.scope !91
  %i.ga = load i8, ptr %i.fk, align 1, !tbaa !23, !alias.scope !91
  %i.gb = load i8, ptr %i.fl, align 1, !tbaa !23, !alias.scope !91
  %i.gc = load i8, ptr %i.fm, align 1, !tbaa !23, !alias.scope !91
  %i.gd = load i8, ptr %i.fn, align 1, !tbaa !23, !alias.scope !91
  %i.ge = load i8, ptr %i.fo, align 1, !tbaa !23, !alias.scope !91
  %i.gf = load i8, ptr %i.fp, align 1, !tbaa !23, !alias.scope !91
  %i.gg = load i8, ptr %i.fq, align 1, !tbaa !23, !alias.scope !91
  %i.gh = load i8, ptr %i.fr, align 1, !tbaa !23, !alias.scope !91
  %i.gi = load i8, ptr %i.fs, align 1, !tbaa !23, !alias.scope !91
  %i.gj = load i8, ptr %i.ft, align 1, !tbaa !23, !alias.scope !91
  %i.gk = load i8, ptr %i.fu, align 1, !tbaa !23, !alias.scope !91
  %i.gl = load i8, ptr %i.fv, align 1, !tbaa !23, !alias.scope !91
  %i.gm = load i8, ptr %i.fw, align 1, !tbaa !23, !alias.scope !91
  %i.gn = insertelement <16 x i8> poison, i8 %i.fx, i64 0
  %i.go = insertelement <16 x i8> %i.gn, i8 %i.fy, i64 1
  %i.gp = insertelement <16 x i8> %i.go, i8 %i.fz, i64 2
  %i.gq = insertelement <16 x i8> %i.gp, i8 %i.ga, i64 3
  %i.gr = insertelement <16 x i8> %i.gq, i8 %i.gb, i64 4
  %i.gs = insertelement <16 x i8> %i.gr, i8 %i.gc, i64 5
  %i.gt = insertelement <16 x i8> %i.gs, i8 %i.gd, i64 6
  %i.gu = insertelement <16 x i8> %i.gt, i8 %i.ge, i64 7
  %i.gv = insertelement <16 x i8> %i.gu, i8 %i.gf, i64 8
  %i.gw = insertelement <16 x i8> %i.gv, i8 %i.gg, i64 9
  %i.gx = insertelement <16 x i8> %i.gw, i8 %i.gh, i64 10
  %i.gy = insertelement <16 x i8> %i.gx, i8 %i.gi, i64 11
  %i.gz = insertelement <16 x i8> %i.gy, i8 %i.gj, i64 12
  %i.ha = insertelement <16 x i8> %i.gz, i8 %i.gk, i64 13
  %i.hb = insertelement <16 x i8> %i.ha, i8 %i.gl, i64 14
  %i.hc = insertelement <16 x i8> %i.hb, i8 %i.gm, i64 15
  %i.hd = getelementptr i8, ptr %i.cd, i64 %i.b
  store <16 x i8> %i.hc, ptr %i.hd, align 1, !tbaa !23, !alias.scope !102, !noalias !103
  %i.he = getelementptr i8, ptr %i.ay, i64 3
  %i.hf = getelementptr i8, ptr %i.az, i64 7
  %i.hg = getelementptr i8, ptr %i.bb, i64 11
  %i.hh = getelementptr i8, ptr %i.bd, i64 15
  %i.hi = getelementptr i8, ptr %i.bf, i64 19
  %i.hj = getelementptr i8, ptr %i.bh, i64 23
  %i.hk = getelementptr i8, ptr %i.bj, i64 27
  %i.hl = getelementptr i8, ptr %i.bl, i64 31
  %i.hm = getelementptr i8, ptr %i.bn, i64 35
  %i.hn = getelementptr i8, ptr %i.bp, i64 39
  %i.ho = getelementptr i8, ptr %i.br, i64 43
  %i.hp = getelementptr i8, ptr %i.bt, i64 47
  %i.hq = getelementptr i8, ptr %i.bv, i64 51
  %i.hr = getelementptr i8, ptr %i.bx, i64 55
  %i.hs = getelementptr i8, ptr %i.bz, i64 59
  %i.ht = getelementptr i8, ptr %i.cb, i64 63
  %i.hu = load i8, ptr %i.he, align 1, !tbaa !23, !alias.scope !91
  %i.hv = load i8, ptr %i.hf, align 1, !tbaa !23, !alias.scope !91
  %i.hw = load i8, ptr %i.hg, align 1, !tbaa !23, !alias.scope !91
  %i.hx = load i8, ptr %i.hh, align 1, !tbaa !23, !alias.scope !91
  %i.hy = load i8, ptr %i.hi, align 1, !tbaa !23, !alias.scope !91
  %i.hz = load i8, ptr %i.hj, align 1, !tbaa !23, !alias.scope !91
  %i.ia = load i8, ptr %i.hk, align 1, !tbaa !23, !alias.scope !91
  %i.ib = load i8, ptr %i.hl, align 1, !tbaa !23, !alias.scope !91
  %i.ic = load i8, ptr %i.hm, align 1, !tbaa !23, !alias.scope !91
  %i.id = load i8, ptr %i.hn, align 1, !tbaa !23, !alias.scope !91
  %i.ie = load i8, ptr %i.ho, align 1, !tbaa !23, !alias.scope !91
  %i.if = load i8, ptr %i.hp, align 1, !tbaa !23, !alias.scope !91
  %i.ig = load i8, ptr %i.hq, align 1, !tbaa !23, !alias.scope !91
  %i.ih = load i8, ptr %i.hr, align 1, !tbaa !23, !alias.scope !91
  %i.ii = load i8, ptr %i.hs, align 1, !tbaa !23, !alias.scope !91
  %i.ij = load i8, ptr %i.ht, align 1, !tbaa !23, !alias.scope !91
  %i.ik = insertelement <16 x i8> poison, i8 %i.hu, i64 0
  %i.il = insertelement <16 x i8> %i.ik, i8 %i.hv, i64 1
  %i.im = insertelement <16 x i8> %i.il, i8 %i.hw, i64 2
  %i.in = insertelement <16 x i8> %i.im, i8 %i.hx, i64 3
  %i.io = insertelement <16 x i8> %i.in, i8 %i.hy, i64 4
  %i.ip = insertelement <16 x i8> %i.io, i8 %i.hz, i64 5
  %i.iq = insertelement <16 x i8> %i.ip, i8 %i.ia, i64 6
  %i.ir = insertelement <16 x i8> %i.iq, i8 %i.ib, i64 7
  %i.is = insertelement <16 x i8> %i.ir, i8 %i.ic, i64 8
  %i.it = insertelement <16 x i8> %i.is, i8 %i.id, i64 9
  %i.iu = insertelement <16 x i8> %i.it, i8 %i.ie, i64 10
  %i.iv = insertelement <16 x i8> %i.iu, i8 %i.if, i64 11
  %i.iw = insertelement <16 x i8> %i.iv, i8 %i.ig, i64 12
  %i.ix = insertelement <16 x i8> %i.iw, i8 %i.ih, i64 13
  %i.iy = insertelement <16 x i8> %i.ix, i8 %i.ii, i64 14
  %i.iz = insertelement <16 x i8> %i.iy, i8 %i.ij, i64 15
  %i.ja = getelementptr i8, ptr %i.cd, i64 %i.d
  store <16 x i8> %i.iz, ptr %i.ja, align 1, !tbaa !23, !alias.scope !104, !noalias !91
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.jb = icmp eq i64 %index.next, %n.vec
  br i1 %i.jb, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %.preheader100, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %n.mod.vf, 8
  br i1 %min.epilog.iters.check, label %.preheader101.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf189 = and i64 %2, 7                    ; 2 uses
  %n.vec190 = sub i64 %i.i, %n.mod.vf189          ; 2 uses
  %i.jc = add i64 %i.g, %n.vec190
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index191 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next192, %vec.epilog.vector.body ] ; 2 uses
  %i.jd = add i64 %i.g, %index191                 ; 9 uses
  %i.je = shl nsw i64 %i.jd, 2
  %i.jf = shl i64 %i.jd, 2
  %i.jg = shl i64 %i.jd, 2
  %i.jh = shl i64 %i.jd, 2
  %i.ji = shl i64 %i.jd, 2
  %i.jj = shl i64 %i.jd, 2
  %i.jk = shl i64 %i.jd, 2
  %i.jl = shl i64 %i.jd, 2
  %i.jm = getelementptr i8, ptr %0, i64 %i.je     ; 4 uses
  %i.jn = getelementptr i8, ptr %0, i64 %i.jf     ; 4 uses
  %i.jo = getelementptr i8, ptr %i.jn, i64 4
  %i.jp = getelementptr i8, ptr %0, i64 %i.jg     ; 4 uses
  %i.jq = getelementptr i8, ptr %i.jp, i64 8
  %i.jr = getelementptr i8, ptr %0, i64 %i.jh     ; 4 uses
  %i.js = getelementptr i8, ptr %i.jr, i64 12
  %i.jt = getelementptr i8, ptr %0, i64 %i.ji     ; 4 uses
  %i.ju = getelementptr i8, ptr %i.jt, i64 16
  %i.jv = getelementptr i8, ptr %0, i64 %i.jj     ; 4 uses
  %i.jw = getelementptr i8, ptr %i.jv, i64 20
  %i.jx = getelementptr i8, ptr %0, i64 %i.jk     ; 4 uses
  %i.jy = getelementptr i8, ptr %i.jx, i64 24
  %i.jz = getelementptr i8, ptr %0, i64 %i.jl     ; 4 uses
  %i.ka = getelementptr i8, ptr %i.jz, i64 28
  %i.kb = getelementptr i8, ptr %3, i64 %i.jd     ; 4 uses
  %i.kc = load i8, ptr %i.jm, align 1, !tbaa !23, !alias.scope !91
  %i.kd = load i8, ptr %i.jo, align 1, !tbaa !23, !alias.scope !91
  %i.ke = load i8, ptr %i.jq, align 1, !tbaa !23, !alias.scope !91
  %i.kf = load i8, ptr %i.js, align 1, !tbaa !23, !alias.scope !91
  %i.kg = load i8, ptr %i.ju, align 1, !tbaa !23, !alias.scope !91
  %i.kh = load i8, ptr %i.jw, align 1, !tbaa !23, !alias.scope !91
  %i.ki = load i8, ptr %i.jy, align 1, !tbaa !23, !alias.scope !91
  %i.kj = load i8, ptr %i.ka, align 1, !tbaa !23, !alias.scope !91
  %i.kk = insertelement <8 x i8> poison, i8 %i.kc, i64 0
  %i.kl = insertelement <8 x i8> %i.kk, i8 %i.kd, i64 1
  %i.km = insertelement <8 x i8> %i.kl, i8 %i.ke, i64 2
  %i.kn = insertelement <8 x i8> %i.km, i8 %i.kf, i64 3
  %i.ko = insertelement <8 x i8> %i.kn, i8 %i.kg, i64 4
  %i.kp = insertelement <8 x i8> %i.ko, i8 %i.kh, i64 5
  %i.kq = insertelement <8 x i8> %i.kp, i8 %i.ki, i64 6
  %i.kr = insertelement <8 x i8> %i.kq, i8 %i.kj, i64 7
  store <8 x i8> %i.kr, ptr %i.kb, align 1, !tbaa !23, !alias.scope !94, !noalias !96
  %i.ks = getelementptr i8, ptr %i.jm, i64 1
  %i.kt = getelementptr i8, ptr %i.jn, i64 5
  %i.ku = getelementptr i8, ptr %i.jp, i64 9
  %i.kv = getelementptr i8, ptr %i.jr, i64 13
  %i.kw = getelementptr i8, ptr %i.jt, i64 17
  %i.kx = getelementptr i8, ptr %i.jv, i64 21
  %i.ky = getelementptr i8, ptr %i.jx, i64 25
  %i.kz = getelementptr i8, ptr %i.jz, i64 29
  %i.la = load i8, ptr %i.ks, align 1, !tbaa !23, !alias.scope !91
  %i.lb = load i8, ptr %i.kt, align 1, !tbaa !23, !alias.scope !91
  %i.lc = load i8, ptr %i.ku, align 1, !tbaa !23, !alias.scope !91
  %i.ld = load i8, ptr %i.kv, align 1, !tbaa !23, !alias.scope !91
  %i.le = load i8, ptr %i.kw, align 1, !tbaa !23, !alias.scope !91
  %i.lf = load i8, ptr %i.kx, align 1, !tbaa !23, !alias.scope !91
  %i.lg = load i8, ptr %i.ky, align 1, !tbaa !23, !alias.scope !91
  %i.lh = load i8, ptr %i.kz, align 1, !tbaa !23, !alias.scope !91
  %i.li = insertelement <8 x i8> poison, i8 %i.la, i64 0
  %i.lj = insertelement <8 x i8> %i.li, i8 %i.lb, i64 1
  %i.lk = insertelement <8 x i8> %i.lj, i8 %i.lc, i64 2
  %i.ll = insertelement <8 x i8> %i.lk, i8 %i.ld, i64 3
  %i.lm = insertelement <8 x i8> %i.ll, i8 %i.le, i64 4
  %i.ln = insertelement <8 x i8> %i.lm, i8 %i.lf, i64 5
  %i.lo = insertelement <8 x i8> %i.ln, i8 %i.lg, i64 6
  %i.lp = insertelement <8 x i8> %i.lo, i8 %i.lh, i64 7
  %i.lq = getelementptr i8, ptr %i.kb, i64 %2
  store <8 x i8> %i.lp, ptr %i.lq, align 1, !tbaa !23, !alias.scope !100, !noalias !101
  %i.lr = getelementptr i8, ptr %i.jm, i64 2
  %i.ls = getelementptr i8, ptr %i.jn, i64 6
  %i.lt = getelementptr i8, ptr %i.jp, i64 10
  %i.lu = getelementptr i8, ptr %i.jr, i64 14
  %i.lv = getelementptr i8, ptr %i.jt, i64 18
  %i.lw = getelementptr i8, ptr %i.jv, i64 22
  %i.lx = getelementptr i8, ptr %i.jx, i64 26
  %i.ly = getelementptr i8, ptr %i.jz, i64 30
  %i.lz = load i8, ptr %i.lr, align 1, !tbaa !23, !alias.scope !91
  %i.ma = load i8, ptr %i.ls, align 1, !tbaa !23, !alias.scope !91
  %i.mb = load i8, ptr %i.lt, align 1, !tbaa !23, !alias.scope !91
  %i.mc = load i8, ptr %i.lu, align 1, !tbaa !23, !alias.scope !91
  %i.md = load i8, ptr %i.lv, align 1, !tbaa !23, !alias.scope !91
  %i.me = load i8, ptr %i.lw, align 1, !tbaa !23, !alias.scope !91
  %i.mf = load i8, ptr %i.lx, align 1, !tbaa !23, !alias.scope !91
  %i.mg = load i8, ptr %i.ly, align 1, !tbaa !23, !alias.scope !91
  %i.mh = insertelement <8 x i8> poison, i8 %i.lz, i64 0
  %i.mi = insertelement <8 x i8> %i.mh, i8 %i.ma, i64 1
  %i.mj = insertelement <8 x i8> %i.mi, i8 %i.mb, i64 2
  %i.mk = insertelement <8 x i8> %i.mj, i8 %i.mc, i64 3
  %i.ml = insertelement <8 x i8> %i.mk, i8 %i.md, i64 4
  %i.mm = insertelement <8 x i8> %i.ml, i8 %i.me, i64 5
  %i.mn = insertelement <8 x i8> %i.mm, i8 %i.mf, i64 6
  %i.mo = insertelement <8 x i8> %i.mn, i8 %i.mg, i64 7
  %i.mp = getelementptr i8, ptr %i.kb, i64 %i.b
  store <8 x i8> %i.mo, ptr %i.mp, align 1, !tbaa !23, !alias.scope !102, !noalias !103
  %i.mq = getelementptr i8, ptr %i.jm, i64 3
  %i.mr = getelementptr i8, ptr %i.jn, i64 7
  %i.ms = getelementptr i8, ptr %i.jp, i64 11
  %i.mt = getelementptr i8, ptr %i.jr, i64 15
  %i.mu = getelementptr i8, ptr %i.jt, i64 19
  %i.mv = getelementptr i8, ptr %i.jv, i64 23
  %i.mw = getelementptr i8, ptr %i.jx, i64 27
  %i.mx = getelementptr i8, ptr %i.jz, i64 31
  %i.my = load i8, ptr %i.mq, align 1, !tbaa !23, !alias.scope !91
  %i.mz = load i8, ptr %i.mr, align 1, !tbaa !23, !alias.scope !91
  %i.na = load i8, ptr %i.ms, align 1, !tbaa !23, !alias.scope !91
  %i.nb = load i8, ptr %i.mt, align 1, !tbaa !23, !alias.scope !91
  %i.nc = load i8, ptr %i.mu, align 1, !tbaa !23, !alias.scope !91
  %i.nd = load i8, ptr %i.mv, align 1, !tbaa !23, !alias.scope !91
  %i.ne = load i8, ptr %i.mw, align 1, !tbaa !23, !alias.scope !91
  %i.nf = load i8, ptr %i.mx, align 1, !tbaa !23, !alias.scope !91
  %i.ng = insertelement <8 x i8> poison, i8 %i.my, i64 0
  %i.nh = insertelement <8 x i8> %i.ng, i8 %i.mz, i64 1
  %i.ni = insertelement <8 x i8> %i.nh, i8 %i.na, i64 2
  %i.nj = insertelement <8 x i8> %i.ni, i8 %i.nb, i64 3
  %i.nk = insertelement <8 x i8> %i.nj, i8 %i.nc, i64 4
  %i.nl = insertelement <8 x i8> %i.nk, i8 %i.nd, i64 5
  %i.nm = insertelement <8 x i8> %i.nl, i8 %i.ne, i64 6
  %i.nn = insertelement <8 x i8> %i.nm, i8 %i.nf, i64 7
  %i.no = getelementptr i8, ptr %i.kb, i64 %i.d
  store <8 x i8> %i.nn, ptr %i.no, align 1, !tbaa !23, !alias.scope !104, !noalias !91
  %index.next192 = add nuw i64 %index191, 8       ; 2 uses
  %i.np = icmp eq i64 %index.next192, %n.vec190
  br i1 %i.np, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !106

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n193 = icmp eq i64 %n.mod.vf189, 0
  br i1 %cmp.n193, label %.preheader100, label %.preheader101.preheader

.preheader101.preheader:                          ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.073104.ph = phi i64 [ %i.g, %iter.check ], [ %i.g, %vector.scevcheck ], [ %i.g, %vector.memcheck ], [ %i.ag, %vec.epilog.iter.check ], [ %i.jc, %vec.epilog.middle.block ]
  br label %.preheader101

.preheader101:                                    ; preds = %.preheader101.preheader, %.preheader101
  %.073104 = phi i64 [ %i.nz, %.preheader101 ], [ %.073104.ph, %.preheader101.preheader ] ; 3 uses
  %i.nq = shl nsw i64 %.073104, 2
  %i.nr = getelementptr i8, ptr %0, i64 %i.nq     ; 4 uses
  %invariant.gep = getelementptr i8, ptr %3, i64 %.073104 ; 4 uses
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !23
  store i8 %i.ns, ptr %invariant.gep, align 1, !tbaa !23
  %i.nt = getelementptr i8, ptr %i.nr, i64 1
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !23
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %2
  store i8 %i.nu, ptr %gep.1, align 1, !tbaa !23
  %i.nv = getelementptr i8, ptr %i.nr, i64 2
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !23
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.b
  store i8 %i.nw, ptr %gep.2, align 1, !tbaa !23
  %i.nx = getelementptr i8, ptr %i.nr, i64 3
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !23
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.d
  store i8 %i.ny, ptr %gep.3, align 1, !tbaa !23
  %i.nz = add nsw i64 %.073104, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.nz, %2
  br i1 %exitcond.not, label %.preheader100, label %.preheader101, !llvm.loop !107

.preheader100:                                    ; preds = %.preheader101, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.oa = icmp sgt i64 %2, 15
  br i1 %i.oa, label %.preheader96.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader96.preheader, %.preheader100
  ret void

.preheader96.preheader:                           ; preds = %.preheader100, %.preheader96.preheader
  %.079110 = phi i64 [ %i.pb, %.preheader96.preheader ], [ 0, %.preheader100 ] ; 3 uses
  %i.ob = shl i64 %.079110, 6
  %i.oc = getelementptr i8, ptr %0, i64 %i.ob     ; 4 uses
  %i.od = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.oc) ; 2 uses
  %i.oe = getelementptr i8, ptr %i.oc, i64 16
  %i.of = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.oe) ; 2 uses
  %i.og = getelementptr i8, ptr %i.oc, i64 32
  %i.oh = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.og) ; 2 uses
  %i.oi = getelementptr i8, ptr %i.oc, i64 48
  %i.oj = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.oi) ; 2 uses
  %i.ok = shufflevector <16 x i8> %i.od, <16 x i8> %i.of, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.ol = bitcast <16 x i8> %i.ok to <2 x i64>    ; 2 uses
  %i.om = shufflevector <16 x i8> %i.od, <16 x i8> %i.of, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.on = bitcast <16 x i8> %i.om to <2 x i64>    ; 2 uses
  %i.oo = shufflevector <16 x i8> %i.oh, <16 x i8> %i.oj, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.op = bitcast <16 x i8> %i.oo to <2 x i64>    ; 2 uses
  %i.oq = shufflevector <16 x i8> %i.oh, <16 x i8> %i.oj, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.or = bitcast <16 x i8> %i.oq to <2 x i64>    ; 2 uses
  %i.os = shufflevector <2 x i64> %i.ol, <2 x i64> %i.op, <2 x i32> <i32 0, i32 2>
  %i.ot = shufflevector <2 x i64> %i.ol, <2 x i64> %i.op, <2 x i32> <i32 1, i32 3>
  %i.ou = shufflevector <2 x i64> %i.on, <2 x i64> %i.or, <2 x i32> <i32 0, i32 2>
  %i.ov = shufflevector <2 x i64> %i.on, <2 x i64> %i.or, <2 x i32> <i32 1, i32 3>
  %i.ow = shl nsw i64 %.079110, 4                 ; 4 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %3, i64 %i.ow
  store <2 x i64> %i.os, ptr %i.ox, align 1, !tbaa !23
  %i.oy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ow
  store <2 x i64> %i.ot, ptr %i.oy, align 1, !tbaa !23
  %i.oz = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ow
  store <2 x i64> %i.ou, ptr %i.oz, align 1, !tbaa !23
  %i.pa = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ow
  store <2 x i64> %i.ov, ptr %i.pa, align 1, !tbaa !23
  %i.pb = add nuw nsw i64 %.079110, 1             ; 2 uses
  %exitcond121.not = icmp eq i64 %i.pb, %i.f
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
  %i.z = or i1 %i.y, %mul.overflow154
  %i.aa = getelementptr i8, ptr %0, i64 %i.t
  %scevgep155 = getelementptr i8, ptr %i.aa, i64 2 ; 2 uses
  %mul.result157 = shl i64 %i.s, 3
  %i.ab = getelementptr i8, ptr %scevgep155, i64 %mul.result157
  %i.ac = icmp ult ptr %i.ab, %scevgep155
  %i.ad = getelementptr i8, ptr %0, i64 %i.t
  %scevgep159 = getelementptr i8, ptr %i.ad, i64 3 ; 2 uses
  %mul.result161 = shl i64 %i.s, 3
  %i.ae = getelementptr i8, ptr %scevgep159, i64 %mul.result161
  %i.af = icmp ult ptr %i.ae, %scevgep159
  %i.ag = getelementptr i8, ptr %0, i64 %i.t
  %scevgep163 = getelementptr i8, ptr %i.ag, i64 4 ; 2 uses
  %mul.result165 = shl i64 %i.s, 3
  %i.ah = getelementptr i8, ptr %scevgep163, i64 %mul.result165
  %i.ai = icmp ult ptr %i.ah, %scevgep163
  %i.aj = getelementptr i8, ptr %0, i64 %i.t
  %scevgep167 = getelementptr i8, ptr %i.aj, i64 5 ; 2 uses
  %mul.result169 = shl i64 %i.s, 3
  %i.ak = getelementptr i8, ptr %scevgep167, i64 %mul.result169
end_hunk_0
begin_hunk_1_@_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd6sse4_2ELi8EEEvPKhilPh:bb.a
  %i.kn = getelementptr i8, ptr %i.ct, i64 84
  %i.ko = getelementptr i8, ptr %i.cv, i64 92
  %i.kp = getelementptr i8, ptr %i.cx, i64 100
  %i.kq = getelementptr i8, ptr %i.cz, i64 108
  %i.kr = getelementptr i8, ptr %i.db, i64 116
  %i.ks = getelementptr i8, ptr %i.dd, i64 124
  %i.kt = load i8, ptr %i.kd, align 1, !tbaa !23, !alias.scope !109
  %i.ku = load i8, ptr %i.ke, align 1, !tbaa !23, !alias.scope !109
  %i.kv = load i8, ptr %i.kf, align 1, !tbaa !23, !alias.scope !109
  %i.kw = load i8, ptr %i.kg, align 1, !tbaa !23, !alias.scope !109
  %i.kx = load i8, ptr %i.kh, align 1, !tbaa !23, !alias.scope !109
  %i.ky = load i8, ptr %i.ki, align 1, !tbaa !23, !alias.scope !109
  %i.kz = load i8, ptr %i.kj, align 1, !tbaa !23, !alias.scope !109
  %i.la = load i8, ptr %i.kk, align 1, !tbaa !23, !alias.scope !109
  %i.lb = load i8, ptr %i.kl, align 1, !tbaa !23, !alias.scope !109
  %i.lc = load i8, ptr %i.km, align 1, !tbaa !23, !alias.scope !109
  %i.ld = load i8, ptr %i.kn, align 1, !tbaa !23, !alias.scope !109
  %i.le = load i8, ptr %i.ko, align 1, !tbaa !23, !alias.scope !109
  %i.lf = load i8, ptr %i.kp, align 1, !tbaa !23, !alias.scope !109
  %i.lg = load i8, ptr %i.kq, align 1, !tbaa !23, !alias.scope !109
  %i.lh = load i8, ptr %i.kr, align 1, !tbaa !23, !alias.scope !109
  %i.li = load i8, ptr %i.ks, align 1, !tbaa !23, !alias.scope !109
  %i.lj = insertelement <16 x i8> poison, i8 %i.kt, i64 0
  %i.lk = insertelement <16 x i8> %i.lj, i8 %i.ku, i64 1
  %i.ll = insertelement <16 x i8> %i.lk, i8 %i.kv, i64 2
  %i.lm = insertelement <16 x i8> %i.ll, i8 %i.kw, i64 3
  %i.ln = insertelement <16 x i8> %i.lm, i8 %i.kx, i64 4
  %i.lo = insertelement <16 x i8> %i.ln, i8 %i.ky, i64 5
  %i.lp = insertelement <16 x i8> %i.lo, i8 %i.kz, i64 6
  %i.lq = insertelement <16 x i8> %i.lp, i8 %i.la, i64 7
  %i.lr = insertelement <16 x i8> %i.lq, i8 %i.lb, i64 8
  %i.ls = insertelement <16 x i8> %i.lr, i8 %i.lc, i64 9
  %i.lt = insertelement <16 x i8> %i.ls, i8 %i.ld, i64 10
  %i.lu = insertelement <16 x i8> %i.lt, i8 %i.le, i64 11
  %i.lv = insertelement <16 x i8> %i.lu, i8 %i.lf, i64 12
  %i.lw = insertelement <16 x i8> %i.lv, i8 %i.lg, i64 13
  %i.lx = insertelement <16 x i8> %i.lw, i8 %i.lh, i64 14
  %i.ly = insertelement <16 x i8> %i.lx, i8 %i.li, i64 15
  %i.lz = getelementptr i8, ptr %i.df, i64 %i.f
  store <16 x i8> %i.ly, ptr %i.lz, align 1, !tbaa !23, !alias.scope !128, !noalias !129
  %i.ma = getelementptr i8, ptr %i.ca, i64 5
  %i.mb = getelementptr i8, ptr %i.cb, i64 13
  %i.mc = getelementptr i8, ptr %i.cd, i64 21
  %i.md = getelementptr i8, ptr %i.cf, i64 29
  %i.me = getelementptr i8, ptr %i.ch, i64 37
  %i.mf = getelementptr i8, ptr %i.cj, i64 45
  %i.mg = getelementptr i8, ptr %i.cl, i64 53
  %i.mh = getelementptr i8, ptr %i.cn, i64 61
  %i.mi = getelementptr i8, ptr %i.cp, i64 69
  %i.mj = getelementptr i8, ptr %i.cr, i64 77
  %i.mk = getelementptr i8, ptr %i.ct, i64 85
  %i.ml = getelementptr i8, ptr %i.cv, i64 93
  %i.mm = getelementptr i8, ptr %i.cx, i64 101
  %i.mn = getelementptr i8, ptr %i.cz, i64 109
  %i.mo = getelementptr i8, ptr %i.db, i64 117
  %i.mp = getelementptr i8, ptr %i.dd, i64 125
  %i.mq = load i8, ptr %i.ma, align 1, !tbaa !23, !alias.scope !109
  %i.mr = load i8, ptr %i.mb, align 1, !tbaa !23, !alias.scope !109
  %i.ms = load i8, ptr %i.mc, align 1, !tbaa !23, !alias.scope !109
  %i.mt = load i8, ptr %i.md, align 1, !tbaa !23, !alias.scope !109
  %i.mu = load i8, ptr %i.me, align 1, !tbaa !23, !alias.scope !109
  %i.mv = load i8, ptr %i.mf, align 1, !tbaa !23, !alias.scope !109
  %i.mw = load i8, ptr %i.mg, align 1, !tbaa !23, !alias.scope !109
  %i.mx = load i8, ptr %i.mh, align 1, !tbaa !23, !alias.scope !109
  %i.my = load i8, ptr %i.mi, align 1, !tbaa !23, !alias.scope !109
  %i.mz = load i8, ptr %i.mj, align 1, !tbaa !23, !alias.scope !109
  %i.na = load i8, ptr %i.mk, align 1, !tbaa !23, !alias.scope !109
  %i.nb = load i8, ptr %i.ml, align 1, !tbaa !23, !alias.scope !109
  %i.nc = load i8, ptr %i.mm, align 1, !tbaa !23, !alias.scope !109
  %i.nd = load i8, ptr %i.mn, align 1, !tbaa !23, !alias.scope !109
  %i.ne = load i8, ptr %i.mo, align 1, !tbaa !23, !alias.scope !109
  %i.nf = load i8, ptr %i.mp, align 1, !tbaa !23, !alias.scope !109
  %i.ng = insertelement <16 x i8> poison, i8 %i.mq, i64 0
  %i.nh = insertelement <16 x i8> %i.ng, i8 %i.mr, i64 1
  %i.ni = insertelement <16 x i8> %i.nh, i8 %i.ms, i64 2
  %i.nj = insertelement <16 x i8> %i.ni, i8 %i.mt, i64 3
  %i.nk = insertelement <16 x i8> %i.nj, i8 %i.mu, i64 4
  %i.nl = insertelement <16 x i8> %i.nk, i8 %i.mv, i64 5
  %i.nm = insertelement <16 x i8> %i.nl, i8 %i.mw, i64 6
  %i.nn = insertelement <16 x i8> %i.nm, i8 %i.mx, i64 7
  %i.no = insertelement <16 x i8> %i.nn, i8 %i.my, i64 8
  %i.np = insertelement <16 x i8> %i.no, i8 %i.mz, i64 9
  %i.nq = insertelement <16 x i8> %i.np, i8 %i.na, i64 10
  %i.nr = insertelement <16 x i8> %i.nq, i8 %i.nb, i64 11
  %i.ns = insertelement <16 x i8> %i.nr, i8 %i.nc, i64 12
  %i.nt = insertelement <16 x i8> %i.ns, i8 %i.nd, i64 13
  %i.nu = insertelement <16 x i8> %i.nt, i8 %i.ne, i64 14
  %i.nv = insertelement <16 x i8> %i.nu, i8 %i.nf, i64 15
  %i.nw = getelementptr i8, ptr %i.df, i64 %i.h
  store <16 x i8> %i.nv, ptr %i.nw, align 1, !tbaa !23, !alias.scope !130, !noalias !131
  %i.nx = getelementptr i8, ptr %i.ca, i64 6
  %i.ny = getelementptr i8, ptr %i.cb, i64 14
  %i.nz = getelementptr i8, ptr %i.cd, i64 22
  %i.oa = getelementptr i8, ptr %i.cf, i64 30
  %i.ob = getelementptr i8, ptr %i.ch, i64 38
  %i.oc = getelementptr i8, ptr %i.cj, i64 46
  %i.od = getelementptr i8, ptr %i.cl, i64 54
  %i.oe = getelementptr i8, ptr %i.cn, i64 62
  %i.of = getelementptr i8, ptr %i.cp, i64 70
  %i.og = getelementptr i8, ptr %i.cr, i64 78
  %i.oh = getelementptr i8, ptr %i.ct, i64 86
  %i.oi = getelementptr i8, ptr %i.cv, i64 94
  %i.oj = getelementptr i8, ptr %i.cx, i64 102
  %i.ok = getelementptr i8, ptr %i.cz, i64 110
  %i.ol = getelementptr i8, ptr %i.db, i64 118
  %i.om = getelementptr i8, ptr %i.dd, i64 126
  %i.on = load i8, ptr %i.nx, align 1, !tbaa !23, !alias.scope !109
  %i.oo = load i8, ptr %i.ny, align 1, !tbaa !23, !alias.scope !109
  %i.op = load i8, ptr %i.nz, align 1, !tbaa !23, !alias.scope !109
  %i.oq = load i8, ptr %i.oa, align 1, !tbaa !23, !alias.scope !109
  %i.or = load i8, ptr %i.ob, align 1, !tbaa !23, !alias.scope !109
  %i.os = load i8, ptr %i.oc, align 1, !tbaa !23, !alias.scope !109
  %i.ot = load i8, ptr %i.od, align 1, !tbaa !23, !alias.scope !109
  %i.ou = load i8, ptr %i.oe, align 1, !tbaa !23, !alias.scope !109
  %i.ov = load i8, ptr %i.of, align 1, !tbaa !23, !alias.scope !109
  %i.ow = load i8, ptr %i.og, align 1, !tbaa !23, !alias.scope !109
  %i.ox = load i8, ptr %i.oh, align 1, !tbaa !23, !alias.scope !109
  %i.oy = load i8, ptr %i.oi, align 1, !tbaa !23, !alias.scope !109
  %i.oz = load i8, ptr %i.oj, align 1, !tbaa !23, !alias.scope !109
  %i.pa = load i8, ptr %i.ok, align 1, !tbaa !23, !alias.scope !109
  %i.pb = load i8, ptr %i.ol, align 1, !tbaa !23, !alias.scope !109
  %i.pc = load i8, ptr %i.om, align 1, !tbaa !23, !alias.scope !109
  %i.pd = insertelement <16 x i8> poison, i8 %i.on, i64 0
  %i.pe = insertelement <16 x i8> %i.pd, i8 %i.oo, i64 1
  %i.pf = insertelement <16 x i8> %i.pe, i8 %i.op, i64 2
  %i.pg = insertelement <16 x i8> %i.pf, i8 %i.oq, i64 3
  %i.ph = insertelement <16 x i8> %i.pg, i8 %i.or, i64 4
  %i.pi = insertelement <16 x i8> %i.ph, i8 %i.os, i64 5
  %i.pj = insertelement <16 x i8> %i.pi, i8 %i.ot, i64 6
  %i.pk = insertelement <16 x i8> %i.pj, i8 %i.ou, i64 7
  %i.pl = insertelement <16 x i8> %i.pk, i8 %i.ov, i64 8
  %i.pm = insertelement <16 x i8> %i.pl, i8 %i.ow, i64 9
  %i.pn = insertelement <16 x i8> %i.pm, i8 %i.ox, i64 10
  %i.po = insertelement <16 x i8> %i.pn, i8 %i.oy, i64 11
  %i.pp = insertelement <16 x i8> %i.po, i8 %i.oz, i64 12
  %i.pq = insertelement <16 x i8> %i.pp, i8 %i.pa, i64 13
  %i.pr = insertelement <16 x i8> %i.pq, i8 %i.pb, i64 14
  %i.ps = insertelement <16 x i8> %i.pr, i8 %i.pc, i64 15
  %i.pt = getelementptr i8, ptr %i.df, i64 %i.j
  store <16 x i8> %i.ps, ptr %i.pt, align 1, !tbaa !23, !alias.scope !132, !noalias !133
  %i.pu = getelementptr i8, ptr %i.ca, i64 7
  %i.pv = getelementptr i8, ptr %i.cb, i64 15
  %i.pw = getelementptr i8, ptr %i.cd, i64 23
  %i.px = getelementptr i8, ptr %i.cf, i64 31
  %i.py = getelementptr i8, ptr %i.ch, i64 39
  %i.pz = getelementptr i8, ptr %i.cj, i64 47
  %i.qa = getelementptr i8, ptr %i.cl, i64 55
  %i.qb = getelementptr i8, ptr %i.cn, i64 63
  %i.qc = getelementptr i8, ptr %i.cp, i64 71
  %i.qd = getelementptr i8, ptr %i.cr, i64 79
  %i.qe = getelementptr i8, ptr %i.ct, i64 87
  %i.qf = getelementptr i8, ptr %i.cv, i64 95
  %i.qg = getelementptr i8, ptr %i.cx, i64 103
  %i.qh = getelementptr i8, ptr %i.cz, i64 111
  %i.qi = getelementptr i8, ptr %i.db, i64 119
  %i.qj = getelementptr i8, ptr %i.dd, i64 127
  %i.qk = load i8, ptr %i.pu, align 1, !tbaa !23, !alias.scope !109
  %i.ql = load i8, ptr %i.pv, align 1, !tbaa !23, !alias.scope !109
  %i.qm = load i8, ptr %i.pw, align 1, !tbaa !23, !alias.scope !109
  %i.qn = load i8, ptr %i.px, align 1, !tbaa !23, !alias.scope !109
  %i.qo = load i8, ptr %i.py, align 1, !tbaa !23, !alias.scope !109
  %i.qp = load i8, ptr %i.pz, align 1, !tbaa !23, !alias.scope !109
  %i.qq = load i8, ptr %i.qa, align 1, !tbaa !23, !alias.scope !109
  %i.qr = load i8, ptr %i.qb, align 1, !tbaa !23, !alias.scope !109
  %i.qs = load i8, ptr %i.qc, align 1, !tbaa !23, !alias.scope !109
  %i.qt = load i8, ptr %i.qd, align 1, !tbaa !23, !alias.scope !109
  %i.qu = load i8, ptr %i.qe, align 1, !tbaa !23, !alias.scope !109
  %i.qv = load i8, ptr %i.qf, align 1, !tbaa !23, !alias.scope !109
  %i.qw = load i8, ptr %i.qg, align 1, !tbaa !23, !alias.scope !109
  %i.qx = load i8, ptr %i.qh, align 1, !tbaa !23, !alias.scope !109
  %i.qy = load i8, ptr %i.qi, align 1, !tbaa !23, !alias.scope !109
  %i.qz = load i8, ptr %i.qj, align 1, !tbaa !23, !alias.scope !109
  %i.ra = insertelement <16 x i8> poison, i8 %i.qk, i64 0
  %i.rb = insertelement <16 x i8> %i.ra, i8 %i.ql, i64 1
  %i.rc = insertelement <16 x i8> %i.rb, i8 %i.qm, i64 2
  %i.rd = insertelement <16 x i8> %i.rc, i8 %i.qn, i64 3
  %i.re = insertelement <16 x i8> %i.rd, i8 %i.qo, i64 4
  %i.rf = insertelement <16 x i8> %i.re, i8 %i.qp, i64 5
  %i.rg = insertelement <16 x i8> %i.rf, i8 %i.qq, i64 6
  %i.rh = insertelement <16 x i8> %i.rg, i8 %i.qr, i64 7
  %i.ri = insertelement <16 x i8> %i.rh, i8 %i.qs, i64 8
  %i.rj = insertelement <16 x i8> %i.ri, i8 %i.qt, i64 9
  %i.rk = insertelement <16 x i8> %i.rj, i8 %i.qu, i64 10
  %i.rl = insertelement <16 x i8> %i.rk, i8 %i.qv, i64 11
  %i.rm = insertelement <16 x i8> %i.rl, i8 %i.qw, i64 12
  %i.rn = insertelement <16 x i8> %i.rm, i8 %i.qx, i64 13
  %i.ro = insertelement <16 x i8> %i.rn, i8 %i.qy, i64 14
  %i.rp = insertelement <16 x i8> %i.ro, i8 %i.qz, i64 15
  %i.rq = getelementptr i8, ptr %i.df, i64 %i.l
  store <16 x i8> %i.rp, ptr %i.rq, align 1, !tbaa !23, !alias.scope !134, !noalias !109
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.rr = icmp eq i64 %index.next, %n.vec
  br i1 %i.rr, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %.preheader100, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %n.mod.vf, 8
  br i1 %min.epilog.iters.check, label %.preheader101.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf337 = and i64 %2, 7                    ; 2 uses
  %n.vec338 = sub i64 %i.q, %n.mod.vf337          ; 2 uses
  %i.rs = add i64 %i.o, %n.vec338
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index339 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next340, %vec.epilog.vector.body ] ; 2 uses
  %i.rt = add i64 %i.o, %index339                 ; 9 uses
  %i.ru = shl nsw i64 %i.rt, 3
  %i.rv = shl i64 %i.rt, 3
  %i.rw = shl i64 %i.rt, 3
  %i.rx = shl i64 %i.rt, 3
  %i.ry = shl i64 %i.rt, 3
  %i.rz = shl i64 %i.rt, 3
  %i.sa = shl i64 %i.rt, 3
  %i.sb = shl i64 %i.rt, 3
  %i.sc = getelementptr i8, ptr %0, i64 %i.ru     ; 8 uses
  %i.sd = getelementptr i8, ptr %0, i64 %i.rv     ; 8 uses
  %i.se = getelementptr i8, ptr %i.sd, i64 8
  %i.sf = getelementptr i8, ptr %0, i64 %i.rw     ; 8 uses
  %i.sg = getelementptr i8, ptr %i.sf, i64 16
  %i.sh = getelementptr i8, ptr %0, i64 %i.rx     ; 8 uses
  %i.si = getelementptr i8, ptr %i.sh, i64 24
  %i.sj = getelementptr i8, ptr %0, i64 %i.ry     ; 8 uses
  %i.sk = getelementptr i8, ptr %i.sj, i64 32
  %i.sl = getelementptr i8, ptr %0, i64 %i.rz     ; 8 uses
  %i.sm = getelementptr i8, ptr %i.sl, i64 40
  %i.sn = getelementptr i8, ptr %0, i64 %i.sa     ; 8 uses
  %i.so = getelementptr i8, ptr %i.sn, i64 48
  %i.sp = getelementptr i8, ptr %0, i64 %i.sb     ; 8 uses
  %i.sq = getelementptr i8, ptr %i.sp, i64 56
  %i.sr = getelementptr i8, ptr %3, i64 %i.rt     ; 8 uses
  %i.ss = load i8, ptr %i.sc, align 1, !tbaa !23, !alias.scope !109
  %i.st = load i8, ptr %i.se, align 1, !tbaa !23, !alias.scope !109
  %i.su = load i8, ptr %i.sg, align 1, !tbaa !23, !alias.scope !109
  %i.sv = load i8, ptr %i.si, align 1, !tbaa !23, !alias.scope !109
  %i.sw = load i8, ptr %i.sk, align 1, !tbaa !23, !alias.scope !109
  %i.sx = load i8, ptr %i.sm, align 1, !tbaa !23, !alias.scope !109
  %i.sy = load i8, ptr %i.so, align 1, !tbaa !23, !alias.scope !109
  %i.sz = load i8, ptr %i.sq, align 1, !tbaa !23, !alias.scope !109
  %i.ta = insertelement <8 x i8> poison, i8 %i.ss, i64 0
  %i.tb = insertelement <8 x i8> %i.ta, i8 %i.st, i64 1
  %i.tc = insertelement <8 x i8> %i.tb, i8 %i.su, i64 2
  %i.td = insertelement <8 x i8> %i.tc, i8 %i.sv, i64 3
  %i.te = insertelement <8 x i8> %i.td, i8 %i.sw, i64 4
  %i.tf = insertelement <8 x i8> %i.te, i8 %i.sx, i64 5
  %i.tg = insertelement <8 x i8> %i.tf, i8 %i.sy, i64 6
  %i.th = insertelement <8 x i8> %i.tg, i8 %i.sz, i64 7
  store <8 x i8> %i.th, ptr %i.sr, align 1, !tbaa !23, !alias.scope !112, !noalias !114
  %i.ti = getelementptr i8, ptr %i.sc, i64 1
  %i.tj = getelementptr i8, ptr %i.sd, i64 9
  %i.tk = getelementptr i8, ptr %i.sf, i64 17
  %i.tl = getelementptr i8, ptr %i.sh, i64 25
  %i.tm = getelementptr i8, ptr %i.sj, i64 33
  %i.tn = getelementptr i8, ptr %i.sl, i64 41
  %i.to = getelementptr i8, ptr %i.sn, i64 49
  %i.tp = getelementptr i8, ptr %i.sp, i64 57
  %i.tq = load i8, ptr %i.ti, align 1, !tbaa !23, !alias.scope !109
  %i.tr = load i8, ptr %i.tj, align 1, !tbaa !23, !alias.scope !109
  %i.ts = load i8, ptr %i.tk, align 1, !tbaa !23, !alias.scope !109
  %i.tt = load i8, ptr %i.tl, align 1, !tbaa !23, !alias.scope !109
  %i.tu = load i8, ptr %i.tm, align 1, !tbaa !23, !alias.scope !109
  %i.tv = load i8, ptr %i.tn, align 1, !tbaa !23, !alias.scope !109
  %i.tw = load i8, ptr %i.to, align 1, !tbaa !23, !alias.scope !109
  %i.tx = load i8, ptr %i.tp, align 1, !tbaa !23, !alias.scope !109
  %i.ty = insertelement <8 x i8> poison, i8 %i.tq, i64 0
  %i.tz = insertelement <8 x i8> %i.ty, i8 %i.tr, i64 1
  %i.ua = insertelement <8 x i8> %i.tz, i8 %i.ts, i64 2
  %i.ub = insertelement <8 x i8> %i.ua, i8 %i.tt, i64 3
  %i.uc = insertelement <8 x i8> %i.ub, i8 %i.tu, i64 4
  %i.ud = insertelement <8 x i8> %i.uc, i8 %i.tv, i64 5
  %i.ue = insertelement <8 x i8> %i.ud, i8 %i.tw, i64 6
  %i.uf = insertelement <8 x i8> %i.ue, i8 %i.tx, i64 7
  %i.ug = getelementptr i8, ptr %i.sr, i64 %2
  store <8 x i8> %i.uf, ptr %i.ug, align 1, !tbaa !23, !alias.scope !122, !noalias !123
  %i.uh = getelementptr i8, ptr %i.sc, i64 2
  %i.ui = getelementptr i8, ptr %i.sd, i64 10
  %i.uj = getelementptr i8, ptr %i.sf, i64 18
  %i.uk = getelementptr i8, ptr %i.sh, i64 26
  %i.ul = getelementptr i8, ptr %i.sj, i64 34
  %i.um = getelementptr i8, ptr %i.sl, i64 42
  %i.un = getelementptr i8, ptr %i.sn, i64 50
  %i.uo = getelementptr i8, ptr %i.sp, i64 58
  %i.up = load i8, ptr %i.uh, align 1, !tbaa !23, !alias.scope !109
  %i.uq = load i8, ptr %i.ui, align 1, !tbaa !23, !alias.scope !109
  %i.ur = load i8, ptr %i.uj, align 1, !tbaa !23, !alias.scope !109
  %i.us = load i8, ptr %i.uk, align 1, !tbaa !23, !alias.scope !109
  %i.ut = load i8, ptr %i.ul, align 1, !tbaa !23, !alias.scope !109
  %i.uu = load i8, ptr %i.um, align 1, !tbaa !23, !alias.scope !109
  %i.uv = load i8, ptr %i.un, align 1, !tbaa !23, !alias.scope !109
  %i.uw = load i8, ptr %i.uo, align 1, !tbaa !23, !alias.scope !109
  %i.ux = insertelement <8 x i8> poison, i8 %i.up, i64 0
  %i.uy = insertelement <8 x i8> %i.ux, i8 %i.uq, i64 1
  %i.uz = insertelement <8 x i8> %i.uy, i8 %i.ur, i64 2
  %i.va = insertelement <8 x i8> %i.uz, i8 %i.us, i64 3
  %i.vb = insertelement <8 x i8> %i.va, i8 %i.ut, i64 4
  %i.vc = insertelement <8 x i8> %i.vb, i8 %i.uu, i64 5
  %i.vd = insertelement <8 x i8> %i.vc, i8 %i.uv, i64 6
  %i.ve = insertelement <8 x i8> %i.vd, i8 %i.uw, i64 7
  %i.vf = getelementptr i8, ptr %i.sr, i64 %i.b
  store <8 x i8> %i.ve, ptr %i.vf, align 1, !tbaa !23, !alias.scope !124, !noalias !125
  %i.vg = getelementptr i8, ptr %i.sc, i64 3
  %i.vh = getelementptr i8, ptr %i.sd, i64 11
  %i.vi = getelementptr i8, ptr %i.sf, i64 19
  %i.vj = getelementptr i8, ptr %i.sh, i64 27
  %i.vk = getelementptr i8, ptr %i.sj, i64 35
  %i.vl = getelementptr i8, ptr %i.sl, i64 43
  %i.vm = getelementptr i8, ptr %i.sn, i64 51
  %i.vn = getelementptr i8, ptr %i.sp, i64 59
  %i.vo = load i8, ptr %i.vg, align 1, !tbaa !23, !alias.scope !109
  %i.vp = load i8, ptr %i.vh, align 1, !tbaa !23, !alias.scope !109
  %i.vq = load i8, ptr %i.vi, align 1, !tbaa !23, !alias.scope !109
  %i.vr = load i8, ptr %i.vj, align 1, !tbaa !23, !alias.scope !109
  %i.vs = load i8, ptr %i.vk, align 1, !tbaa !23, !alias.scope !109
  %i.vt = load i8, ptr %i.vl, align 1, !tbaa !23, !alias.scope !109
  %i.vu = load i8, ptr %i.vm, align 1, !tbaa !23, !alias.scope !109
  %i.vv = load i8, ptr %i.vn, align 1, !tbaa !23, !alias.scope !109
  %i.vw = insertelement <8 x i8> poison, i8 %i.vo, i64 0
  %i.vx = insertelement <8 x i8> %i.vw, i8 %i.vp, i64 1
  %i.vy = insertelement <8 x i8> %i.vx, i8 %i.vq, i64 2
  %i.vz = insertelement <8 x i8> %i.vy, i8 %i.vr, i64 3
  %i.wa = insertelement <8 x i8> %i.vz, i8 %i.vs, i64 4
  %i.wb = insertelement <8 x i8> %i.wa, i8 %i.vt, i64 5
  %i.wc = insertelement <8 x i8> %i.wb, i8 %i.vu, i64 6
  %i.wd = insertelement <8 x i8> %i.wc, i8 %i.vv, i64 7
  %i.we = getelementptr i8, ptr %i.sr, i64 %i.d
  store <8 x i8> %i.wd, ptr %i.we, align 1, !tbaa !23, !alias.scope !126, !noalias !127
  %i.wf = getelementptr i8, ptr %i.sc, i64 4
  %i.wg = getelementptr i8, ptr %i.sd, i64 12
  %i.wh = getelementptr i8, ptr %i.sf, i64 20
  %i.wi = getelementptr i8, ptr %i.sh, i64 28
  %i.wj = getelementptr i8, ptr %i.sj, i64 36
  %i.wk = getelementptr i8, ptr %i.sl, i64 44
  %i.wl = getelementptr i8, ptr %i.sn, i64 52
  %i.wm = getelementptr i8, ptr %i.sp, i64 60
  %i.wn = load i8, ptr %i.wf, align 1, !tbaa !23, !alias.scope !109
  %i.wo = load i8, ptr %i.wg, align 1, !tbaa !23, !alias.scope !109
  %i.wp = load i8, ptr %i.wh, align 1, !tbaa !23, !alias.scope !109
  %i.wq = load i8, ptr %i.wi, align 1, !tbaa !23, !alias.scope !109
  %i.wr = load i8, ptr %i.wj, align 1, !tbaa !23, !alias.scope !109
  %i.ws = load i8, ptr %i.wk, align 1, !tbaa !23, !alias.scope !109
  %i.wt = load i8, ptr %i.wl, align 1, !tbaa !23, !alias.scope !109
  %i.wu = load i8, ptr %i.wm, align 1, !tbaa !23, !alias.scope !109
  %i.wv = insertelement <8 x i8> poison, i8 %i.wn, i64 0
  %i.ww = insertelement <8 x i8> %i.wv, i8 %i.wo, i64 1
  %i.wx = insertelement <8 x i8> %i.ww, i8 %i.wp, i64 2
  %i.wy = insertelement <8 x i8> %i.wx, i8 %i.wq, i64 3
  %i.wz = insertelement <8 x i8> %i.wy, i8 %i.wr, i64 4
  %i.xa = insertelement <8 x i8> %i.wz, i8 %i.ws, i64 5
  %i.xb = insertelement <8 x i8> %i.xa, i8 %i.wt, i64 6
  %i.xc = insertelement <8 x i8> %i.xb, i8 %i.wu, i64 7
  %i.xd = getelementptr i8, ptr %i.sr, i64 %i.f
  store <8 x i8> %i.xc, ptr %i.xd, align 1, !tbaa !23, !alias.scope !128, !noalias !129
  %i.xe = getelementptr i8, ptr %i.sc, i64 5
  %i.xf = getelementptr i8, ptr %i.sd, i64 13
  %i.xg = getelementptr i8, ptr %i.sf, i64 21
  %i.xh = getelementptr i8, ptr %i.sh, i64 29
  %i.xi = getelementptr i8, ptr %i.sj, i64 37
  %i.xj = getelementptr i8, ptr %i.sl, i64 45
  %i.xk = getelementptr i8, ptr %i.sn, i64 53
  %i.xl = getelementptr i8, ptr %i.sp, i64 61
  %i.xm = load i8, ptr %i.xe, align 1, !tbaa !23, !alias.scope !109
  %i.xn = load i8, ptr %i.xf, align 1, !tbaa !23, !alias.scope !109
  %i.xo = load i8, ptr %i.xg, align 1, !tbaa !23, !alias.scope !109
  %i.xp = load i8, ptr %i.xh, align 1, !tbaa !23, !alias.scope !109
  %i.xq = load i8, ptr %i.xi, align 1, !tbaa !23, !alias.scope !109
  %i.xr = load i8, ptr %i.xj, align 1, !tbaa !23, !alias.scope !109
  %i.xs = load i8, ptr %i.xk, align 1, !tbaa !23, !alias.scope !109
  %i.xt = load i8, ptr %i.xl, align 1, !tbaa !23, !alias.scope !109
  %i.xu = insertelement <8 x i8> poison, i8 %i.xm, i64 0
  %i.xv = insertelement <8 x i8> %i.xu, i8 %i.xn, i64 1
  %i.xw = insertelement <8 x i8> %i.xv, i8 %i.xo, i64 2
  %i.xx = insertelement <8 x i8> %i.xw, i8 %i.xp, i64 3
  %i.xy = insertelement <8 x i8> %i.xx, i8 %i.xq, i64 4
  %i.xz = insertelement <8 x i8> %i.xy, i8 %i.xr, i64 5
  %i.ya = insertelement <8 x i8> %i.xz, i8 %i.xs, i64 6
  %i.yb = insertelement <8 x i8> %i.ya, i8 %i.xt, i64 7
  %i.yc = getelementptr i8, ptr %i.sr, i64 %i.h
  store <8 x i8> %i.yb, ptr %i.yc, align 1, !tbaa !23, !alias.scope !130, !noalias !131
  %i.yd = getelementptr i8, ptr %i.sc, i64 6
  %i.ye = getelementptr i8, ptr %i.sd, i64 14
  %i.yf = getelementptr i8, ptr %i.sf, i64 22
  %i.yg = getelementptr i8, ptr %i.sh, i64 30
  %i.yh = getelementptr i8, ptr %i.sj, i64 38
  %i.yi = getelementptr i8, ptr %i.sl, i64 46
  %i.yj = getelementptr i8, ptr %i.sn, i64 54
  %i.yk = getelementptr i8, ptr %i.sp, i64 62
  %i.yl = load i8, ptr %i.yd, align 1, !tbaa !23, !alias.scope !109
  %i.ym = load i8, ptr %i.ye, align 1, !tbaa !23, !alias.scope !109
  %i.yn = load i8, ptr %i.yf, align 1, !tbaa !23, !alias.scope !109
  %i.yo = load i8, ptr %i.yg, align 1, !tbaa !23, !alias.scope !109
  %i.yp = load i8, ptr %i.yh, align 1, !tbaa !23, !alias.scope !109
  %i.yq = load i8, ptr %i.yi, align 1, !tbaa !23, !alias.scope !109
  %i.yr = load i8, ptr %i.yj, align 1, !tbaa !23, !alias.scope !109
  %i.ys = load i8, ptr %i.yk, align 1, !tbaa !23, !alias.scope !109
  %i.yt = insertelement <8 x i8> poison, i8 %i.yl, i64 0
  %i.yu = insertelement <8 x i8> %i.yt, i8 %i.ym, i64 1
end_hunk_1
begin_hunk_2_@_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd6sse4_2ELi8EEEvPKhilPh:bb.a
  %gep.4 = getelementptr i8, ptr %invariant.gep, i64 %i.f
  store i8 %i.aam, ptr %gep.4, align 1, !tbaa !23
  %i.aan = getelementptr i8, ptr %i.aad, i64 5
  %i.aao = load i8, ptr %i.aan, align 1, !tbaa !23
  %gep.5 = getelementptr i8, ptr %invariant.gep, i64 %i.h
  store i8 %i.aao, ptr %gep.5, align 1, !tbaa !23
  %i.aap = getelementptr i8, ptr %i.aad, i64 6
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !23
  %gep.6 = getelementptr i8, ptr %invariant.gep, i64 %i.j
  store i8 %i.aaq, ptr %gep.6, align 1, !tbaa !23
  %i.aar = getelementptr i8, ptr %i.aad, i64 7
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !23
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 %i.l
  store i8 %i.aas, ptr %gep.7, align 1, !tbaa !23
  %i.aat = add nsw i64 %.073104, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.aat, %2
  br i1 %exitcond.not, label %.preheader100, label %.preheader101, !llvm.loop !137

.preheader100:                                    ; preds = %.preheader101, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.aau = icmp sgt i64 %2, 15
  br i1 %i.aau, label %.preheader96.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader96.preheader, %.preheader100
  ret void

.preheader96.preheader:                           ; preds = %.preheader100, %.preheader96.preheader
  %.079111 = phi i64 [ %i.adb, %.preheader96.preheader ], [ 0, %.preheader100 ] ; 3 uses
  %i.aav = shl i64 %.079111, 7
  %i.aaw = getelementptr i8, ptr %0, i64 %i.aav   ; 8 uses
  %i.aax = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.aaw) ; 2 uses
  %i.aay = getelementptr i8, ptr %i.aaw, i64 16
  %i.aaz = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.aay) ; 2 uses
  %i.aba = getelementptr i8, ptr %i.aaw, i64 32
  %i.abb = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.aba) ; 2 uses
  %i.abc = getelementptr i8, ptr %i.aaw, i64 48
  %i.abd = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.abc) ; 2 uses
  %i.abe = getelementptr i8, ptr %i.aaw, i64 64
  %i.abf = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.abe) ; 2 uses
  %i.abg = getelementptr i8, ptr %i.aaw, i64 80
  %i.abh = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.abg) ; 2 uses
  %i.abi = getelementptr i8, ptr %i.aaw, i64 96
  %i.abj = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.abi) ; 2 uses
  %i.abk = getelementptr i8, ptr %i.aaw, i64 112
  %i.abl = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.abk) ; 2 uses
  %i.abm = shufflevector <16 x i8> %i.aax, <16 x i8> %i.aaz, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27>
  %i.abn = bitcast <16 x i8> %i.abm to <4 x i32>  ; 2 uses
  %i.abo = shufflevector <16 x i8> %i.aax, <16 x i8> %i.aaz, <16 x i32> <i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %i.abp = bitcast <16 x i8> %i.abo to <4 x i32>  ; 2 uses
  %i.abq = shufflevector <16 x i8> %i.abb, <16 x i8> %i.abd, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27>
  %i.abr = bitcast <16 x i8> %i.abq to <4 x i32>  ; 2 uses
  %i.abs = shufflevector <16 x i8> %i.abb, <16 x i8> %i.abd, <16 x i32> <i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %i.abt = bitcast <16 x i8> %i.abs to <4 x i32>  ; 2 uses
  %i.abu = shufflevector <16 x i8> %i.abf, <16 x i8> %i.abh, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27>
  %i.abv = bitcast <16 x i8> %i.abu to <4 x i32>  ; 2 uses
  %i.abw = shufflevector <16 x i8> %i.abf, <16 x i8> %i.abh, <16 x i32> <i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %i.abx = bitcast <16 x i8> %i.abw to <4 x i32>  ; 2 uses
  %i.aby = shufflevector <16 x i8> %i.abj, <16 x i8> %i.abl, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27>
  %i.abz = bitcast <16 x i8> %i.aby to <4 x i32>  ; 2 uses
  %i.aca = shufflevector <16 x i8> %i.abj, <16 x i8> %i.abl, <16 x i32> <i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %i.acb = bitcast <16 x i8> %i.aca to <4 x i32>  ; 2 uses
  %i.acc = shufflevector <4 x i32> %i.abn, <4 x i32> %i.abv, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.acd = shufflevector <4 x i32> %i.abn, <4 x i32> %i.abv, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ace = shufflevector <4 x i32> %i.abp, <4 x i32> %i.abx, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.acf = shufflevector <4 x i32> %i.abp, <4 x i32> %i.abx, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.acg = shufflevector <4 x i32> %i.abr, <4 x i32> %i.abz, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ach = shufflevector <4 x i32> %i.abr, <4 x i32> %i.abz, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aci = shufflevector <4 x i32> %i.abt, <4 x i32> %i.acb, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.acj = shufflevector <4 x i32> %i.abt, <4 x i32> %i.acb, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ack = shufflevector <4 x i32> %i.acc, <4 x i32> %i.acg, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.acl = shufflevector <4 x i32> %i.acc, <4 x i32> %i.acg, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.acm = shufflevector <4 x i32> %i.acd, <4 x i32> %i.ach, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.acn = shufflevector <4 x i32> %i.acd, <4 x i32> %i.ach, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.aco = shufflevector <4 x i32> %i.ace, <4 x i32> %i.aci, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.acp = shufflevector <4 x i32> %i.ace, <4 x i32> %i.aci, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.acq = shufflevector <4 x i32> %i.acf, <4 x i32> %i.acj, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.acr = shufflevector <4 x i32> %i.acf, <4 x i32> %i.acj, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.acs = shl nsw i64 %.079111, 4                ; 8 uses
  %i.act = getelementptr inbounds nuw i8, ptr %3, i64 %i.acs
  store <4 x i32> %i.ack, ptr %i.act, align 1, !tbaa !23
  %i.acu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.acs
  store <4 x i32> %i.acl, ptr %i.acu, align 1, !tbaa !23
  %i.acv = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.acs
  store <4 x i32> %i.acm, ptr %i.acv, align 1, !tbaa !23
  %i.acw = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.acs
  store <4 x i32> %i.acn, ptr %i.acw, align 1, !tbaa !23
  %i.acx = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.acs
  store <4 x i32> %i.aco, ptr %i.acx, align 1, !tbaa !23
  %i.acy = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.acs
  store <4 x i32> %i.acp, ptr %i.acy, align 1, !tbaa !23
  %i.acz = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.acs
  store <4 x i32> %i.acq, ptr %i.acz, align 1, !tbaa !23
  %i.ada = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.acs
  store <4 x i32> %i.acr, ptr %i.ada, align 1, !tbaa !23
  %i.adb = add nuw nsw i64 %.079111, 1            ; 2 uses
  %exitcond125.not = icmp eq i64 %i.adb, %i.n
  br i1 %exitcond125.not, label %._crit_edge, label %.preheader96.preheader, !llvm.loop !138
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
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"branch_weights", i32 1, i32 1048575}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi2EEEEE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTSN5arrow8internal7CpuInfoE", !10, i64 0}
!13 = !{!14, !10, i64 0}
!14 = !{!"_ZTSN5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi4EEEEE", !10, i64 0}
!15 = !{!16, !10, i64 0}
!16 = !{!"_ZTSN5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitDecodeDynamicILi8EEEEE", !10, i64 0}
!17 = !{!18, !10, i64 0}
!18 = !{!"_ZTSN5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi2EEEEE", !10, i64 0}
!19 = !{!20, !10, i64 0}
!20 = !{!"_ZTSN5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi4EEEEE", !10, i64 0}
!21 = !{!22, !10, i64 0}
!22 = !{!"_ZTSN5arrow8internal15DynamicDispatchINS_4util8internal28ByteStreamSplitEncodeDynamicILi8EEEEE", !10, i64 0}
!23 = !{!5, !5, i64 0}
!24 = !{!25}
!25 = distinct !{!25, !26}
!26 = distinct !{!26, !"LVerDomain"}
!27 = !{!28}
!28 = distinct !{!28, !26}
!29 = !{!30}
!30 = distinct !{!30, !26}
!31 = !{!28, !25}
!32 = distinct !{!32, !33, !34, !35}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = !{!"branch_weights", i32 4, i32 12}
!37 = distinct !{!37, !33, !34, !35}
!38 = distinct !{!38, !33, !34}
!39 = distinct !{!39, !33}
!40 = !{!41}
!41 = distinct !{!41, !42}
!42 = distinct !{!42, !"LVerDomain"}
!43 = !{!44}
!44 = distinct !{!44, !42}
!45 = !{!46}
!46 = distinct !{!46, !42}
!47 = !{!48}
!48 = distinct !{!48, !42}
!49 = !{!50}
!50 = distinct !{!50, !42}
!51 = !{!48, !46, !44, !41}
!52 = distinct !{!52, !33, !34, !35}
!53 = distinct !{!53, !33, !34}
!54 = distinct !{!54, !33}
!55 = !{!56}
!56 = distinct !{!56, !57}
!57 = distinct !{!57, !"LVerDomain"}
!58 = !{!59}
!59 = distinct !{!59, !57}
!60 = !{!61}
!61 = distinct !{!61, !57}
!62 = !{!63}
!63 = distinct !{!63, !57}
!64 = !{!65}
!65 = distinct !{!65, !57}
!66 = !{!67}
!67 = distinct !{!67, !57}
!68 = !{!69}
!69 = distinct !{!69, !57}
!70 = !{!71}
!71 = distinct !{!71, !57}
!72 = !{!73}
!73 = distinct !{!73, !57}
!74 = !{!71, !69, !67, !65, !63, !61, !59, !56}
!75 = distinct !{!75, !33, !34, !35}
!76 = distinct !{!76, !33, !34}
!77 = distinct !{!77, !33}
!78 = !{!79}
!79 = distinct !{!79, !80}
!80 = distinct !{!80, !"LVerDomain"}
!81 = !{!82}
!82 = distinct !{!82, !80}
!83 = !{!84, !79}
!84 = distinct !{!84, !80}
!85 = !{!84}
!86 = distinct !{!86, !33, !34, !35}
!87 = !{!"branch_weights", i32 8, i32 8}
!88 = distinct !{!88, !33, !34, !35}
!89 = distinct !{!89, !33, !34}
!90 = distinct !{!90, !33}
!91 = !{!92}
!92 = distinct !{!92, !93}
!93 = distinct !{!93, !"LVerDomain"}
!94 = !{!95}
!95 = distinct !{!95, !93}
!96 = !{!97, !98, !99, !92}
!97 = distinct !{!97, !93}
!98 = distinct !{!98, !93}
!99 = distinct !{!99, !93}
!100 = !{!97}
!101 = !{!98, !99, !92}
!102 = !{!98}
!103 = !{!99, !92}
!104 = !{!99}
!105 = distinct !{!105, !33, !34, !35}
!106 = distinct !{!106, !33, !34, !35}
!107 = distinct !{!107, !33, !34}
!108 = distinct !{!108, !33}
!109 = !{!110}
!110 = distinct !{!110, !111}
!111 = distinct !{!111, !"LVerDomain"}
!112 = !{!113}
!113 = distinct !{!113, !111}
!114 = !{!115, !116, !117, !118, !119, !120, !121, !110}
!115 = distinct !{!115, !111}
!116 = distinct !{!116, !111}
!117 = distinct !{!117, !111}
!118 = distinct !{!118, !111}
!119 = distinct !{!119, !111}
!120 = distinct !{!120, !111}
!121 = distinct !{!121, !111}
!122 = !{!115}
!123 = !{!116, !117, !118, !119, !120, !121, !110}
!124 = !{!116}
!125 = !{!117, !118, !119, !120, !121, !110}
!126 = !{!117}
!127 = !{!118, !119, !120, !121, !110}
!128 = !{!118}
!129 = !{!119, !120, !121, !110}
!130 = !{!119}
!131 = !{!120, !121, !110}
!132 = !{!120}
!133 = !{!121, !110}
!134 = !{!121}
!135 = distinct !{!135, !33, !34, !35}
!136 = distinct !{!136, !33, !34, !35}
!137 = distinct !{!137, !33, !34}
!138 = distinct !{!138, !33}
end_hunk_2
