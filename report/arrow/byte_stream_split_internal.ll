inline.NumInlined: 154
inline.NumDeleted: 71
begin_hunk_0_@_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd6sse4_2ELi2EEEvPKhillPh:bb.a
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
  %xtraiter = and i64 %i.al, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

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
  %i.be = shl nsw i64 %.05577, 4
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
  %i.a = sdiv i64 %2, 16                          ; 3 uses
  %i.b = shl nsw i64 %i.a, 4                      ; 10 uses
  %i.c = icmp slt i64 %i.b, %2
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader72

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = shl nsw i64 %3, 1                        ; 4 uses
  %i.e = mul nsw i64 %3, 3                        ; 4 uses
  %i.f = sub i64 %2, %i.b                         ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 20
  br i1 %min.iters.check, label %.lr.ph.preheader120, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.g = shl i64 %i.a, 6
  %scevgep92 = getelementptr i8, ptr %4, i64 %i.g ; 4 uses
  %i.h = shl i64 %2, 2
  %scevgep93 = getelementptr i8, ptr %4, i64 %i.h ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 %i.b
  %scevgep94 = getelementptr i8, ptr %i.i, i64 %i.e
  %i.j = getelementptr i8, ptr %0, i64 %2
  %scevgep95 = getelementptr i8, ptr %i.j, i64 %i.e
  %i.k = getelementptr i8, ptr %0, i64 %i.b
  %scevgep96 = getelementptr i8, ptr %i.k, i64 %i.d
  %i.l = getelementptr i8, ptr %0, i64 %2
  %scevgep97 = getelementptr i8, ptr %i.l, i64 %i.d
  %i.m = getelementptr i8, ptr %0, i64 %3
  %scevgep98 = getelementptr i8, ptr %i.m, i64 %i.b
  %i.n = getelementptr i8, ptr %0, i64 %3
  %scevgep99 = getelementptr i8, ptr %i.n, i64 %2
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
  %n.vec = sub i64 %i.f, %n.mod.vf                ; 2 uses
  %i.o = add i64 %i.b, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = add i64 %i.b, %index                     ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 %i.p       ; 5 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %wide.load = load <4 x i8>, ptr %i.q, align 1, !tbaa !23, !alias.scope !40
  %wide.load113 = load <4 x i8>, ptr %i.r, align 1, !tbaa !23, !alias.scope !40
  %i.s = getelementptr i8, ptr %i.q, i64 %3       ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %wide.load114 = load <4 x i8>, ptr %i.s, align 1, !tbaa !23, !alias.scope !43
  %wide.load115 = load <4 x i8>, ptr %i.t, align 1, !tbaa !23, !alias.scope !43
  %i.u = getelementptr i8, ptr %i.q, i64 %i.d     ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %wide.load116 = load <4 x i8>, ptr %i.u, align 1, !tbaa !23, !alias.scope !45
  %wide.load117 = load <4 x i8>, ptr %i.v, align 1, !tbaa !23, !alias.scope !45
  %i.w = getelementptr i8, ptr %i.q, i64 %i.e     ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %wide.load118 = load <4 x i8>, ptr %i.w, align 1, !tbaa !23, !alias.scope !47
  %wide.load119 = load <4 x i8>, ptr %i.x, align 1, !tbaa !23, !alias.scope !47
  %i.y = shl nsw i64 %i.p, 2
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y ; 2 uses
  %i.aa = zext <4 x i8> %wide.load118 to <4 x i32>
  %i.ab = zext <4 x i8> %wide.load119 to <4 x i32>
  %i.ac = shl nuw <4 x i32> %i.aa, splat (i32 24)
  %i.ad = shl nuw <4 x i32> %i.ab, splat (i32 24)
  %i.ae = zext <4 x i8> %wide.load116 to <4 x i32>
  %i.af = zext <4 x i8> %wide.load117 to <4 x i32>
  %i.ag = shl nuw nsw <4 x i32> %i.ae, splat (i32 16)
  %i.ah = shl nuw nsw <4 x i32> %i.af, splat (i32 16)
  %i.ai = or disjoint <4 x i32> %i.ac, %i.ag
  %i.aj = or disjoint <4 x i32> %i.ad, %i.ah
  %i.ak = zext <4 x i8> %wide.load114 to <4 x i32>
  %i.al = zext <4 x i8> %wide.load115 to <4 x i32>
  %i.am = shl nuw nsw <4 x i32> %i.ak, splat (i32 8)
  %i.an = shl nuw nsw <4 x i32> %i.al, splat (i32 8)
  %i.ao = or disjoint <4 x i32> %i.ai, %i.am
  %i.ap = or disjoint <4 x i32> %i.aj, %i.an
  %i.aq = zext <4 x i8> %wide.load to <4 x i32>
  %i.ar = zext <4 x i8> %wide.load113 to <4 x i32>
  %i.as = or disjoint <4 x i32> %i.ao, %i.aq
  %i.at = or disjoint <4 x i32> %i.ap, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <4 x i32> %i.as, ptr %i.z, align 1, !alias.scope !49, !noalias !51
  store <4 x i32> %i.at, ptr %i.au, align 1, !alias.scope !49, !noalias !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %.preheader72, label %.lr.ph.preheader120

.lr.ph.preheader120:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.05074.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

.preheader72:                                     ; preds = %.lr.ph, %middle.block, %bb.a
  %i.aw = icmp sgt i64 %2, 15
  br i1 %i.aw, label %.lr.ph80, label %._crit_edge

.lr.ph80:                                         ; preds = %.preheader72
  %i.ax = shl nsw i64 %3, 1
  %i.ay = mul nsw i64 %3, 3
  br label %.preheader.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader120, %.lr.ph
  %.05074 = phi i64 [ %i.bf, %.lr.ph ], [ %.05074.ph, %.lr.ph.preheader120 ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05074 ; 4 uses
  %i.az = load i8, ptr %invariant.gep, align 1, !tbaa !23
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %3
  %i.ba = load i8, ptr %gep.1, align 1, !tbaa !23
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.d
  %i.bb = load i8, ptr %gep.2, align 1, !tbaa !23
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.e
  %i.bc = load i8, ptr %gep.3, align 1, !tbaa !23
  %i.bd = shl nsw i64 %.05074, 2
  %i.be = getelementptr inbounds i8, ptr %4, i64 %i.bd
  %.sroa.690.0.insert.ext = zext i8 %i.bc to i32
  %.sroa.690.0.insert.shift = shl nuw i32 %.sroa.690.0.insert.ext, 24
  %.sroa.5.0.insert.ext = zext i8 %i.bb to i32
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %.sroa.5.0.insert.ext, 16
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.690.0.insert.shift, %.sroa.5.0.insert.shift
  %.sroa.489.0.insert.ext = zext i8 %i.ba to i32
  %.sroa.489.0.insert.shift = shl nuw nsw i32 %.sroa.489.0.insert.ext, 8
  %.sroa.489.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.489.0.insert.shift
  %.sroa.088.0.insert.ext = zext i8 %i.az to i32
  %.sroa.088.0.insert.insert = or disjoint i32 %.sroa.489.0.insert.insert, %.sroa.088.0.insert.ext
  store i32 %.sroa.088.0.insert.insert, ptr %i.be, align 1
  %i.bf = add nsw i64 %.05074, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %2
  br i1 %exitcond.not, label %.preheader72, label %.lr.ph, !llvm.loop !53

._crit_edge:                                      ; preds = %.preheader.preheader, %.preheader72
  ret void

.preheader.preheader:                             ; preds = %.lr.ph80, %.preheader.preheader
  %.05579 = phi i64 [ 0, %.lr.ph80 ], [ %i.by, %.preheader.preheader ] ; 3 uses
  %i.bg = shl i64 %.05579, 6
  %scevgep = getelementptr i8, ptr %4, i64 %i.bg  ; 4 uses
  %i.bh = shl nsw i64 %.05579, 4
  %i.bi = getelementptr i8, ptr %0, i64 %i.bh     ; 4 uses
  %i.bj = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bi) ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bi, i64 %3
  %i.bl = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bk) ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bi, i64 %i.ax
  %i.bn = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bm) ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bi, i64 %i.ay
  %i.bp = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bo) ; 2 uses
  %i.bq = shufflevector <16 x i8> %i.bj, <16 x i8> %i.bn, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.br = shufflevector <16 x i8> %i.bj, <16 x i8> %i.bn, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bs = shufflevector <16 x i8> %i.bl, <16 x i8> %i.bp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bt = shufflevector <16 x i8> %i.bl, <16 x i8> %i.bp, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bu = shufflevector <16 x i8> %i.bq, <16 x i8> %i.bs, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bv = shufflevector <16 x i8> %i.bq, <16 x i8> %i.bs, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.bw = shufflevector <16 x i8> %i.br, <16 x i8> %i.bt, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bx = shufflevector <16 x i8> %i.br, <16 x i8> %i.bt, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.bu, ptr %scevgep, align 1, !tbaa !23
  %.sroa.20.128.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 16
  store <16 x i8> %i.bv, ptr %.sroa.20.128.scevgep.sroa_idx, align 1, !tbaa !23
  %.sroa.21.128.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 32
  store <16 x i8> %i.bw, ptr %.sroa.21.128.scevgep.sroa_idx, align 1, !tbaa !23
  %.sroa.22.128.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 48
  store <16 x i8> %i.bx, ptr %.sroa.22.128.scevgep.sroa_idx, align 1, !tbaa !23
  %i.by = add nuw nsw i64 %.05579, 1              ; 2 uses
  %exitcond87.not = icmp eq i64 %i.by, %i.a
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
  %i.a = sdiv i64 %2, 16                          ; 3 uses
  %i.b = shl nsw i64 %i.a, 4                      ; 14 uses
  %i.c = icmp slt i64 %i.b, %2
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader72

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = shl i64 %3, 1                            ; 4 uses
  %i.e = mul i64 %3, 3                            ; 4 uses
  %i.f = shl nsw i64 %3, 2                        ; 4 uses
  %i.g = mul nsw i64 %3, 5                        ; 4 uses
  %i.h = mul nsw i64 %3, 6                        ; 4 uses
  %i.i = mul nsw i64 %3, 7                        ; 4 uses
  %i.j = sub i64 %2, %i.b                         ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 20
  br i1 %min.iters.check, label %.lr.ph.preheader148, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.k = shl i64 %i.a, 7
  %scevgep96 = getelementptr i8, ptr %4, i64 %i.k ; 8 uses
  %i.l = shl i64 %2, 3
  %scevgep97 = getelementptr i8, ptr %4, i64 %i.l ; 8 uses
  %i.m = getelementptr i8, ptr %0, i64 %i.b
  %scevgep98 = getelementptr i8, ptr %i.m, i64 %i.i
  %i.n = getelementptr i8, ptr %0, i64 %2
  %scevgep99 = getelementptr i8, ptr %i.n, i64 %i.i
  %i.o = getelementptr i8, ptr %0, i64 %i.b
  %scevgep100 = getelementptr i8, ptr %i.o, i64 %i.h
  %i.p = getelementptr i8, ptr %0, i64 %2
  %scevgep101 = getelementptr i8, ptr %i.p, i64 %i.h
  %i.q = getelementptr i8, ptr %0, i64 %i.b
  %scevgep102 = getelementptr i8, ptr %i.q, i64 %i.g
  %i.r = getelementptr i8, ptr %0, i64 %2
  %scevgep103 = getelementptr i8, ptr %i.r, i64 %i.g
  %i.s = getelementptr i8, ptr %0, i64 %i.b
  %scevgep104 = getelementptr i8, ptr %i.s, i64 %i.f
  %i.t = getelementptr i8, ptr %0, i64 %2
  %scevgep105 = getelementptr i8, ptr %i.t, i64 %i.f
  %i.u = getelementptr i8, ptr %0, i64 %i.b
  %scevgep106 = getelementptr i8, ptr %i.u, i64 %i.e
  %i.v = getelementptr i8, ptr %0, i64 %2
  %scevgep107 = getelementptr i8, ptr %i.v, i64 %i.e
  %i.w = getelementptr i8, ptr %0, i64 %i.b
  %scevgep108 = getelementptr i8, ptr %i.w, i64 %i.d
  %i.x = getelementptr i8, ptr %0, i64 %2
  %scevgep109 = getelementptr i8, ptr %i.x, i64 %i.d
  %i.y = getelementptr i8, ptr %0, i64 %3
  %scevgep110 = getelementptr i8, ptr %i.y, i64 %i.b
  %i.z = getelementptr i8, ptr %0, i64 %3
  %scevgep111 = getelementptr i8, ptr %i.z, i64 %2
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
  %n.mod.vf = and i64 %2, 1                       ; 2 uses
  %n.vec = sub i64 %i.j, %n.mod.vf                ; 2 uses
  %i.aa = add i64 %i.b, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = add i64 %i.b, %index                    ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 %i.ab     ; 8 uses
  %wide.load = load <2 x i8>, ptr %i.ac, align 1, !tbaa !23, !alias.scope !55
  %i.ad = getelementptr i8, ptr %i.ac, i64 %3
  %wide.load141 = load <2 x i8>, ptr %i.ad, align 1, !tbaa !23, !alias.scope !58
  %i.ae = getelementptr i8, ptr %i.ac, i64 %i.d
  %wide.load142 = load <2 x i8>, ptr %i.ae, align 1, !tbaa !23, !alias.scope !60
  %i.af = getelementptr i8, ptr %i.ac, i64 %i.e
  %wide.load143 = load <2 x i8>, ptr %i.af, align 1, !tbaa !23, !alias.scope !62
  %i.ag = getelementptr i8, ptr %i.ac, i64 %i.f
  %wide.load144 = load <2 x i8>, ptr %i.ag, align 1, !tbaa !23, !alias.scope !64
  %i.ah = getelementptr i8, ptr %i.ac, i64 %i.g
  %wide.load145 = load <2 x i8>, ptr %i.ah, align 1, !tbaa !23, !alias.scope !66
  %i.ai = getelementptr i8, ptr %i.ac, i64 %i.h
  %wide.load146 = load <2 x i8>, ptr %i.ai, align 1, !tbaa !23, !alias.scope !68
  %i.aj = getelementptr i8, ptr %i.ac, i64 %i.i
  %wide.load147 = load <2 x i8>, ptr %i.aj, align 1, !tbaa !23, !alias.scope !70
  %i.ak = shl nsw i64 %i.ab, 3
  %i.al = getelementptr inbounds i8, ptr %4, i64 %i.ak
  %i.am = zext <2 x i8> %wide.load147 to <2 x i64>
  %i.an = shl nuw <2 x i64> %i.am, splat (i64 56)
  %i.ao = zext <2 x i8> %wide.load146 to <2 x i64>
  %i.ap = shl nuw nsw <2 x i64> %i.ao, splat (i64 48)
  %i.aq = or disjoint <2 x i64> %i.an, %i.ap
  %i.ar = zext <2 x i8> %wide.load145 to <2 x i64>
  %i.as = shl nuw nsw <2 x i64> %i.ar, splat (i64 40)
  %i.at = or disjoint <2 x i64> %i.aq, %i.as
  %i.au = zext <2 x i8> %wide.load144 to <2 x i64>
  %i.av = shl nuw nsw <2 x i64> %i.au, splat (i64 32)
  %i.aw = or disjoint <2 x i64> %i.at, %i.av
  %i.ax = zext <2 x i8> %wide.load143 to <2 x i64>
  %i.ay = shl nuw nsw <2 x i64> %i.ax, splat (i64 24)
  %i.az = or disjoint <2 x i64> %i.aw, %i.ay
  %i.ba = zext <2 x i8> %wide.load142 to <2 x i64>
  %i.bb = shl nuw nsw <2 x i64> %i.ba, splat (i64 16)
  %i.bc = zext <2 x i8> %wide.load141 to <2 x i64>
  %i.bd = shl nuw nsw <2 x i64> %i.bc, splat (i64 8)
  %i.be = or disjoint <2 x i64> %i.az, %i.bb
  %i.bf = zext <2 x i8> %wide.load to <2 x i64>
  %i.bg = or <2 x i64> %i.be, %i.bd
  %i.bh = or <2 x i64> %i.bg, %i.bf
  store <2 x i64> %i.bh, ptr %i.al, align 1, !alias.scope !72, !noalias !74
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %.preheader72, label %.lr.ph.preheader148

.lr.ph.preheader148:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.05074.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph

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
end_hunk_0
