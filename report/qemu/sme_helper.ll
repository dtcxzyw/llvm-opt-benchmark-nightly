Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sme_helper?download=true
inline.NumInlined: 2089
inline.NumDeleted: 222
loop-unroll.NumCompletelyUnrolled: 108
loop-unroll.NumRuntimeUnrolled: 184
loop-unroll.NumUnrolled: 297
begin_hunk_0_@helper_sme2_fcvtn:bb.a
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !201

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sme2_fcvt_w(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not.i = icmp ugt ptr %i.i, %1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.k = icmp ugt ptr %i.j, %0
  %i.l = select i1 %.not.i, i1 %i.k, i1 false
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef %i.g, i64 noundef 256) #15, !alias.scope !207
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.m, %bb.b ], [ %1, %bb.a ]    ; 2 uses
  br label %bb.d

.preheader:                                       ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.0, i64 %i.h
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.d
  %.02527 = phi i64 [ 0, %bb.c ], [ %i.s, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %.0, i64 %.02527
  %i.p = load i16, ptr %i.o, align 2
  %i.q = call i32 @sve_f16_to_f32(i16 noundef zeroext %i.p, ptr noundef %2) #15
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02527
  store i32 %i.q, ptr %i.r, align 4
  %i.s = add nuw nsw i64 %.02527, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.h
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !205

bb.e:                                             ; preds = %.preheader, %bb.e
  %.128 = phi i64 [ 0, %.preheader ], [ %i.x, %bb.e ] ; 3 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %.128
  %i.u = load i16, ptr %i.t, align 2
  %i.v = call i32 @sve_f16_to_f32(i16 noundef zeroext %i.u, ptr noundef %2) #15
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.128
  store i32 %i.v, ptr %i.w, align 4
  %i.x = add nuw nsw i64 %.128, 1                 ; 2 uses
  %exitcond29.not = icmp eq i64 %i.x, %i.h
  br i1 %exitcond29.not, label %bb.f, label %bb.e, !llvm.loop !206

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sme2_fcvtl(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = lshr exact i32 %.v.i, 2
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.018 = phi i64 [ 0, %bb.a ], [ %i.r, %bb.b ]   ; 4 uses
  %.idx = shl nuw nsw i64 %.018, 2
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.k = load i16, ptr %i.j, align 2
  %i.l = tail call i32 @sve_f16_to_f32(i16 noundef zeroext %i.k, ptr noundef %2) #15
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = tail call i32 @sve_f16_to_f32(i16 noundef zeroext %i.n, ptr noundef %2) #15
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018
  store i32 %i.l, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.018
  store i32 %i.o, ptr %i.q, align 4
  %i.r = add nuw nsw i64 %.018, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !208

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sme2_scvtf(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = lshr exact i32 %.v.i, 2
  %i.h = zext nneg i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.010 = phi i64 [ 0, %bb.a ], [ %i.m, %bb.b ]   ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.010
  %i.j = load i32, ptr %i.i, align 4
  %i.k = tail call i32 @int32_to_float32(i32 noundef %i.j, ptr noundef %2) #15
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.010
  store i32 %i.k, ptr %i.l, align 4
  %i.m = add nuw nsw i64 %.010, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !209

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sme2_ucvtf(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = lshr exact i32 %.v.i, 2
  %i.h = zext nneg i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.010 = phi i64 [ 0, %bb.a ], [ %i.m, %bb.b ]   ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.010
  %i.j = load i32, ptr %i.i, align 4
  %i.k = tail call i32 @uint32_to_float32(i32 noundef %i.j, ptr noundef %2) #15
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.010
  store i32 %i.k, ptr %i.l, align 4
  %i.m = add nuw nsw i64 %.010, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !210

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sqcvt_sb(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.l, %1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.n = icmp ugt ptr %i.m, %0
  %i.o = select i1 %.not.i, i1 %i.n, i1 false
  %spec.select = select i1 %i.o, ptr %3, ptr %0   ; 11 uses
  %i.p = lshr exact i64 %i.g, 1                   ; 6 uses
  %i.q = mul nuw nsw i64 %i.h, 3                  ; 4 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 72
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.r = getelementptr nuw i8, ptr %spec.select, i64 %i.h ; 3 uses
  %i.s = getelementptr nuw i8, ptr %spec.select, i64 %i.p ; 3 uses
  %i.t = getelementptr i8, ptr %spec.select, i64 %i.h
  %i.u = getelementptr i8, ptr %i.t, i64 %i.p     ; 3 uses
  %bound0 = icmp ult ptr %spec.select, %i.u
  %bound1 = icmp samesign ult i64 %i.p, %i.h
  %found.conflict = and i1 %bound0, %bound1
  %i.v = getelementptr nuw i8, ptr %spec.select, i64 %i.q ; 2 uses
  %i.w = getelementptr i8, ptr %spec.select, i64 %i.g ; 3 uses
  %4 = zext nneg i32 %.v.v.i to i64
  %5 = getelementptr i8, ptr %1, i64 %4
  %6 = getelementptr i8, ptr %5, i64 776          ; 4 uses
  %bound0116 = icmp ult ptr %spec.select, %6
  %bound1117 = icmp ult ptr %1, %i.r
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %found.conflict, %found.conflict118
  %bound0120 = icmp ult ptr %i.r, %i.w
  %bound1121 = icmp samesign ult i64 %i.q, %i.p
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx123 = or i1 %conflict.rdx119, %found.conflict122
  %bound0124 = icmp ult ptr %i.r, %6
  %bound1125 = icmp ult ptr %1, %i.s
  %found.conflict126 = and i1 %bound0124, %bound1125
  %conflict.rdx127 = or i1 %conflict.rdx123, %found.conflict126
  %bound0128 = icmp ult ptr %i.s, %i.w
  %bound1129 = icmp ult ptr %i.v, %i.u
  %found.conflict130 = and i1 %bound0128, %bound1129
  %conflict.rdx131 = or i1 %conflict.rdx127, %found.conflict130
  %bound0132 = icmp ult ptr %i.s, %6
  %bound1133 = icmp ult ptr %1, %i.u
  %found.conflict134 = and i1 %bound0132, %bound1133
  %conflict.rdx135 = or i1 %conflict.rdx131, %found.conflict134
  %bound0136 = icmp ult ptr %i.v, %6
  %bound1137 = icmp ult ptr %1, %i.w
  %found.conflict138 = and i1 %bound0136, %bound1137
  %conflict.rdx139 = or i1 %conflict.rdx135, %found.conflict138
  br i1 %conflict.rdx139, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870908                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <4 x i32>, ptr %i.x, align 4, !alias.scope !219
  %i.y = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> splat (i32 -128))
  %i.z = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.y, <4 x i32> splat (i32 127))
  %i.aa = trunc nsw <4 x i32> %i.z to <4 x i8>
  %i.ab = getelementptr inbounds nuw i8, ptr %spec.select, i64 %index ; 4 uses
  store <4 x i8> %i.aa, ptr %i.ab, align 1, !alias.scope !220, !noalias !221
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index
  %wide.load140 = load <4 x i32>, ptr %i.ac, align 4, !alias.scope !219
  %i.ad = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load140, <4 x i32> splat (i32 -128))
  %i.ae = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ad, <4 x i32> splat (i32 127))
  %i.af = trunc nsw <4 x i32> %i.ae to <4 x i8>
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.h
  store <4 x i8> %i.af, ptr %i.ag, align 1, !alias.scope !222, !noalias !223
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index
  %wide.load141 = load <4 x i32>, ptr %i.ah, align 4, !alias.scope !219
  %i.ai = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load141, <4 x i32> splat (i32 -128))
  %i.aj = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ai, <4 x i32> splat (i32 127))
  %i.ak = trunc nsw <4 x i32> %i.aj to <4 x i8>
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.p
  store <4 x i8> %i.ak, ptr %i.al, align 1, !alias.scope !224, !noalias !225
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index
  %wide.load142 = load <4 x i32>, ptr %i.am, align 4, !alias.scope !219
  %i.an = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load142, <4 x i32> splat (i32 -128))
  %i.ao = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.an, <4 x i32> splat (i32 127))
  %i.ap = trunc nsw <4 x i32> %i.ao to <4 x i8>
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.q
  store <4 x i8> %i.ap, ptr %i.aq, align 1, !alias.scope !226, !noalias !219
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !217

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.07578.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07578 = phi i64 [ %i.bq, %scalar.ph ], [ %.07578.ph, %scalar.ph.preheader ] ; 6 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07578
  %i.at = load i32, ptr %i.as, align 4
  %i.au = tail call i32 @llvm.smax.i32(i32 %i.at, i32 -128)
  %i.av = tail call i32 @llvm.smin.i32(i32 %i.au, i32 127)
  %i.aw = trunc nsw i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.07578 ; 4 uses
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.07578
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = tail call i32 @llvm.smax.i32(i32 %i.az, i32 -128)
  %i.bb = tail call i32 @llvm.smin.i32(i32 %i.ba, i32 127)
  %i.bc = trunc nsw i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.h
  store i8 %i.bc, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.07578
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = tail call i32 @llvm.smax.i32(i32 %i.bf, i32 -128)
  %i.bh = tail call i32 @llvm.smin.i32(i32 %i.bg, i32 127)
  %i.bi = trunc nsw i32 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.p
  store i8 %i.bi, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.07578
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = tail call i32 @llvm.smax.i32(i32 %i.bl, i32 -128)
  %i.bn = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 127)
  %i.bo = trunc nsw i32 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.q
  store i8 %i.bo, ptr %i.bp, align 1
  %i.bq = add nuw nsw i64 %.07578, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bq, %i.h
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !218

bb.b:                                             ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_uqcvt_sb(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.l, %1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.n = icmp ugt ptr %i.m, %0
  %i.o = select i1 %.not.i, i1 %i.n, i1 false
  %spec.select = select i1 %i.o, ptr %3, ptr %0   ; 11 uses
  %i.p = lshr exact i64 %i.g, 1                   ; 6 uses
  %i.q = mul nuw nsw i64 %i.h, 3                  ; 4 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 104
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.r = getelementptr nuw i8, ptr %spec.select, i64 %i.h ; 3 uses
  %i.s = getelementptr nuw i8, ptr %spec.select, i64 %i.p ; 3 uses
  %i.t = getelementptr i8, ptr %spec.select, i64 %i.h
  %i.u = getelementptr i8, ptr %i.t, i64 %i.p     ; 3 uses
  %bound0 = icmp ult ptr %spec.select, %i.u
  %bound1 = icmp samesign ult i64 %i.p, %i.h
  %found.conflict = and i1 %bound0, %bound1
  %i.v = getelementptr nuw i8, ptr %spec.select, i64 %i.q ; 2 uses
  %i.w = getelementptr i8, ptr %spec.select, i64 %i.g ; 3 uses
  %4 = zext nneg i32 %.v.v.i to i64
  %5 = getelementptr i8, ptr %1, i64 %4
  %6 = getelementptr i8, ptr %5, i64 776          ; 4 uses
  %bound0116 = icmp ult ptr %spec.select, %6
  %bound1117 = icmp ult ptr %1, %i.r
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %found.conflict, %found.conflict118
  %bound0120 = icmp ult ptr %i.r, %i.w
  %bound1121 = icmp samesign ult i64 %i.q, %i.p
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx123 = or i1 %conflict.rdx119, %found.conflict122
  %bound0124 = icmp ult ptr %i.r, %6
  %bound1125 = icmp ult ptr %1, %i.s
  %found.conflict126 = and i1 %bound0124, %bound1125
  %conflict.rdx127 = or i1 %conflict.rdx123, %found.conflict126
  %bound0128 = icmp ult ptr %i.s, %i.w
  %bound1129 = icmp ult ptr %i.v, %i.u
  %found.conflict130 = and i1 %bound0128, %bound1129
  %conflict.rdx131 = or i1 %conflict.rdx127, %found.conflict130
  %bound0132 = icmp ult ptr %i.s, %6
  %bound1133 = icmp ult ptr %1, %i.u
  %found.conflict134 = and i1 %bound0132, %bound1133
  %conflict.rdx135 = or i1 %conflict.rdx131, %found.conflict134
  %bound0136 = icmp ult ptr %i.v, %6
  %bound1137 = icmp ult ptr %1, %i.w
  %found.conflict138 = and i1 %bound0136, %bound1137
  %conflict.rdx139 = or i1 %conflict.rdx135, %found.conflict138
  br i1 %conflict.rdx139, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870908                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <4 x i32>, ptr %i.x, align 4, !alias.scope !235
  %i.y = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load, <4 x i32> splat (i32 255))
  %i.z = trunc nuw <4 x i32> %i.y to <4 x i8>
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select, i64 %index ; 4 uses
  store <4 x i8> %i.z, ptr %i.aa, align 1, !alias.scope !236, !noalias !237
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index
  %wide.load140 = load <4 x i32>, ptr %i.ab, align 4, !alias.scope !235
  %i.ac = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load140, <4 x i32> splat (i32 255))
  %i.ad = trunc nuw <4 x i32> %i.ac to <4 x i8>
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.h
  store <4 x i8> %i.ad, ptr %i.ae, align 1, !alias.scope !238, !noalias !239
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index
  %wide.load141 = load <4 x i32>, ptr %i.af, align 4, !alias.scope !235
  %i.ag = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load141, <4 x i32> splat (i32 255))
  %i.ah = trunc nuw <4 x i32> %i.ag to <4 x i8>
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.p
  store <4 x i8> %i.ah, ptr %i.ai, align 1, !alias.scope !240, !noalias !241
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index
  %wide.load142 = load <4 x i32>, ptr %i.aj, align 4, !alias.scope !235
  %i.ak = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load142, <4 x i32> splat (i32 255))
  %i.al = trunc nuw <4 x i32> %i.ak to <4 x i8>
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.q
  store <4 x i8> %i.al, ptr %i.am, align 1, !alias.scope !242, !noalias !235
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !233

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.07578.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07578 = phi i64 [ %i.bi, %scalar.ph ], [ %.07578.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07578
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 255)
  %i.ar = trunc nuw i32 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.07578 ; 4 uses
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.07578
  %i.au = load i32, ptr %i.at, align 4
  %i.av = tail call i32 @llvm.umin.i32(i32 %i.au, i32 255)
  %i.aw = trunc nuw i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.h
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.07578
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = tail call i32 @llvm.umin.i32(i32 %i.az, i32 255)
  %i.bb = trunc nuw i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.p
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.07578
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = tail call i32 @llvm.umin.i32(i32 %i.be, i32 255)
  %i.bg = trunc nuw i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.q
  store i8 %i.bg, ptr %i.bh, align 1
  %i.bi = add nuw nsw i64 %.07578, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %i.h
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !234

bb.b:                                             ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sqcvtu_sb(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.l, %1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.n = icmp ugt ptr %i.m, %0
  %i.o = select i1 %.not.i, i1 %i.n, i1 false
  %spec.select = select i1 %i.o, ptr %3, ptr %0   ; 11 uses
  %i.p = lshr exact i64 %i.g, 1                   ; 6 uses
  %i.q = mul nuw nsw i64 %i.h, 3                  ; 4 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 72
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.r = getelementptr nuw i8, ptr %spec.select, i64 %i.h ; 3 uses
  %i.s = getelementptr nuw i8, ptr %spec.select, i64 %i.p ; 3 uses
  %i.t = getelementptr i8, ptr %spec.select, i64 %i.h
  %i.u = getelementptr i8, ptr %i.t, i64 %i.p     ; 3 uses
  %bound0 = icmp ult ptr %spec.select, %i.u
  %bound1 = icmp samesign ult i64 %i.p, %i.h
  %found.conflict = and i1 %bound0, %bound1
  %i.v = getelementptr nuw i8, ptr %spec.select, i64 %i.q ; 2 uses
  %i.w = getelementptr i8, ptr %spec.select, i64 %i.g ; 3 uses
  %4 = zext nneg i32 %.v.v.i to i64
  %5 = getelementptr i8, ptr %1, i64 %4
  %6 = getelementptr i8, ptr %5, i64 776          ; 4 uses
  %bound0116 = icmp ult ptr %spec.select, %6
  %bound1117 = icmp ult ptr %1, %i.r
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %found.conflict, %found.conflict118
  %bound0120 = icmp ult ptr %i.r, %i.w
  %bound1121 = icmp samesign ult i64 %i.q, %i.p
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx123 = or i1 %conflict.rdx119, %found.conflict122
  %bound0124 = icmp ult ptr %i.r, %6
  %bound1125 = icmp ult ptr %1, %i.s
  %found.conflict126 = and i1 %bound0124, %bound1125
  %conflict.rdx127 = or i1 %conflict.rdx123, %found.conflict126
  %bound0128 = icmp ult ptr %i.s, %i.w
  %bound1129 = icmp ult ptr %i.v, %i.u
  %found.conflict130 = and i1 %bound0128, %bound1129
  %conflict.rdx131 = or i1 %conflict.rdx127, %found.conflict130
  %bound0132 = icmp ult ptr %i.s, %6
  %bound1133 = icmp ult ptr %1, %i.u
  %found.conflict134 = and i1 %bound0132, %bound1133
  %conflict.rdx135 = or i1 %conflict.rdx131, %found.conflict134
  %bound0136 = icmp ult ptr %i.v, %6
  %bound1137 = icmp ult ptr %1, %i.w
  %found.conflict138 = and i1 %bound0136, %bound1137
  %conflict.rdx139 = or i1 %conflict.rdx135, %found.conflict138
  br i1 %conflict.rdx139, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870908                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <4 x i32>, ptr %i.x, align 4, !alias.scope !251
  %i.y = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> zeroinitializer)
  %i.z = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.y, <4 x i32> splat (i32 255))
  %i.aa = trunc nuw <4 x i32> %i.z to <4 x i8>
  %i.ab = getelementptr inbounds nuw i8, ptr %spec.select, i64 %index ; 4 uses
  store <4 x i8> %i.aa, ptr %i.ab, align 1, !alias.scope !252, !noalias !253
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index
  %wide.load140 = load <4 x i32>, ptr %i.ac, align 4, !alias.scope !251
  %i.ad = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load140, <4 x i32> zeroinitializer)
  %i.ae = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ad, <4 x i32> splat (i32 255))
  %i.af = trunc nuw <4 x i32> %i.ae to <4 x i8>
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.h
  store <4 x i8> %i.af, ptr %i.ag, align 1, !alias.scope !254, !noalias !255
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index
  %wide.load141 = load <4 x i32>, ptr %i.ah, align 4, !alias.scope !251
  %i.ai = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load141, <4 x i32> zeroinitializer)
  %i.aj = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ai, <4 x i32> splat (i32 255))
  %i.ak = trunc nuw <4 x i32> %i.aj to <4 x i8>
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.p
  store <4 x i8> %i.ak, ptr %i.al, align 1, !alias.scope !256, !noalias !257
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index
  %wide.load142 = load <4 x i32>, ptr %i.am, align 4, !alias.scope !251
  %i.an = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load142, <4 x i32> zeroinitializer)
  %i.ao = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.an, <4 x i32> splat (i32 255))
  %i.ap = trunc nuw <4 x i32> %i.ao to <4 x i8>
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.q
  store <4 x i8> %i.ap, ptr %i.aq, align 1, !alias.scope !258, !noalias !251
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !249

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.07578.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07578 = phi i64 [ %i.bq, %scalar.ph ], [ %.07578.ph, %scalar.ph.preheader ] ; 6 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07578
  %i.at = load i32, ptr %i.as, align 4
  %i.au = tail call i32 @llvm.smax.i32(i32 %i.at, i32 0)
  %i.av = tail call i32 @llvm.umin.i32(i32 %i.au, i32 255)
  %i.aw = trunc nuw i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.07578 ; 4 uses
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.07578
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = tail call i32 @llvm.smax.i32(i32 %i.az, i32 0)
  %i.bb = tail call i32 @llvm.umin.i32(i32 %i.ba, i32 255)
  %i.bc = trunc nuw i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.h
  store i8 %i.bc, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.07578
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = tail call i32 @llvm.smax.i32(i32 %i.bf, i32 0)
  %i.bh = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 255)
  %i.bi = trunc nuw i32 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.p
  store i8 %i.bi, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.07578
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = tail call i32 @llvm.smax.i32(i32 %i.bl, i32 0)
  %i.bn = tail call i32 @llvm.umin.i32(i32 %i.bm, i32 255)
  %i.bo = trunc nuw i32 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.q
  store i8 %i.bo, ptr %i.bp, align 1
  %i.bq = add nuw nsw i64 %.07578, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bq, %i.h
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !250

bb.b:                                             ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sqcvt_sh(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.j, %1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.l = icmp ugt ptr %i.k, %0
  %i.m = select i1 %.not.i, i1 %i.l, i1 false
  %spec.select = select i1 %i.m, ptr %3, ptr %0   ; 7 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.n = lshr exact i64 %i.g, 1
  %i.o = getelementptr nuw i8, ptr %spec.select, i64 %i.n ; 2 uses
  %i.p = getelementptr i8, ptr %spec.select, i64 %i.g
  %i.q = zext nneg i32 %.v.v.i to i64
  %i.r = getelementptr i8, ptr %1, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 264      ; 2 uses
  %bound0 = icmp ult ptr %i.o, %i.s
  %bound1 = icmp ult ptr %1, %i.p
  %found.conflict = and i1 %bound0, %bound1
  %bound052 = icmp ult ptr %spec.select, %i.s
  %bound153 = icmp ult ptr %1, %i.o
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx = or i1 %found.conflict, %found.conflict54
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870908                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !alias.scope !265
  %i.u = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> splat (i32 -32768))
  %i.v = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.u, <4 x i32> splat (i32 32767))
  %i.w = trunc nsw <4 x i32> %i.v to <4 x i16>
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %index ; 2 uses
  store <4 x i16> %i.w, ptr %i.x, align 2, !alias.scope !266, !noalias !265
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index
  %wide.load55 = load <4 x i32>, ptr %i.y, align 4, !alias.scope !265
  %i.z = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load55, <4 x i32> splat (i32 -32768))
  %i.aa = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.z, <4 x i32> splat (i32 32767))
  %i.ab = trunc nsw <4 x i32> %i.aa to <4 x i16>
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.h
  store <4 x i16> %i.ab, ptr %i.ac, align 2, !alias.scope !267, !noalias !265
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !263

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.04346.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.04346 = phi i64 [ %i.aq, %scalar.ph ], [ %.04346.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.04346
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = tail call i32 @llvm.smax.i32(i32 %i.af, i32 -32768)
  %i.ah = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 32767)
  %i.ai = trunc nsw i32 %i.ah to i16
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %.04346 ; 2 uses
  store i16 %i.ai, ptr %i.aj, align 2
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.04346
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = tail call i32 @llvm.smax.i32(i32 %i.al, i32 -32768)
  %i.an = tail call i32 @llvm.smin.i32(i32 %i.am, i32 32767)
  %i.ao = trunc nsw i32 %i.an to i16
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.h
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = add nuw nsw i64 %.04346, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %i.h
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !264

bb.b:                                             ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
end_hunk_0
begin_hunk_1_@helper_sme2_uunpk4_sd:bb.a
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.026.129
  store i64 %i.cy, ptr %i.cz, align 8
  %i.da = add nuw nsw i64 %.026.129, 1            ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.024.sroa.phi112, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.da
  store i64 %i.dd, ptr %i.de, align 8
  %i.df = add nuw nsw i64 %.026.129, 2            ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.024.sroa.phi112, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.df
  store i64 %i.di, ptr %i.dj, align 8
  %i.dk = add nuw nsw i64 %.026.129, 3            ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.024.sroa.phi112, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.dk
  store i64 %i.dn, ptr %i.do, align 8
  %i.dp = add nuw nsw i64 %.026.129, 4            ; 2 uses
  %exitcond.130.not.3 = icmp eq i64 %i.dp, %i.e
  br i1 %exitcond.130.not.3, label %.loopexit98, label %scalar.ph61, !llvm.loop !588

.loopexit98:                                      ; preds = %scalar.ph61.prol.loopexit, %scalar.ph61, %middle.block74
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 7 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.024.sroa.phi112, i64 %i.e ; 7 uses
  %min.iters.check83 = icmp samesign ult i32 %.v.v.i, 15
  br i1 %min.iters.check83, label %scalar.ph82.preheader, label %vector.memcheck84

vector.memcheck84:                                ; preds = %.loopexit98
  %i.ds = shl nuw nsw i32 %.v.v.i, 3
  %i.dt = zext nneg i32 %i.ds to i64              ; 2 uses
  %i.du = getelementptr i8, ptr %0, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 776
  %i.dw = getelementptr i8, ptr %.024, i64 %i.dt
  %i.dx = getelementptr i8, ptr %i.dw, i64 264
  %bound085 = icmp ult ptr %i.dq, %i.dx
  %bound186 = icmp ult ptr %i.dr, %i.dv
  %found.conflict87 = and i1 %bound085, %bound186
  br i1 %found.conflict87, label %scalar.ph82.preheader, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck84
  %n.vec89 = and i64 %i.e, 508                    ; 3 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next94, %vector.body90 ] ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %index91 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %wide.load92 = load <2 x i32>, ptr %i.dy, align 4, !alias.scope !602
  %wide.load93 = load <2 x i32>, ptr %i.dz, align 4, !alias.scope !602
  %i.ea = zext <2 x i32> %wide.load92 to <2 x i64>
  %i.eb = zext <2 x i32> %wide.load93 to <2 x i64>
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %index91 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <2 x i64> %i.ea, ptr %i.ec, align 8, !alias.scope !603, !noalias !602
  store <2 x i64> %i.eb, ptr %i.ed, align 8, !alias.scope !603, !noalias !602
  %index.next94 = add nuw i64 %index91, 4         ; 2 uses
  %i.ee = icmp eq i64 %index.next94, %n.vec89
  br i1 %i.ee, label %middle.block95, label %vector.body90, !llvm.loop !592

middle.block95:                                   ; preds = %vector.body90
  %cmp.n96 = icmp eq i64 %n.vec89, %i.e
  br i1 %cmp.n96, label %.loopexit, label %scalar.ph82.preheader

scalar.ph82.preheader:                            ; preds = %vector.memcheck84, %.loopexit98, %middle.block95
  %.026.1.1.ph = phi i64 [ 0, %vector.memcheck84 ], [ 0, %.loopexit98 ], [ %n.vec89, %middle.block95 ] ; 3 uses
  %i.ef = zext nneg i32 %.v.v.i to i64            ; 2 uses
  %i.eg = add nuw nsw i64 %i.ef, 1
  %i.eh = sub nsw i64 %i.ef, %.026.1.1.ph
  %xtraiter109 = and i64 %i.eg, 3                 ; 2 uses
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod110.not, label %scalar.ph82.prol.loopexit, label %scalar.ph82.prol

scalar.ph82.prol:                                 ; preds = %scalar.ph82.preheader, %scalar.ph82.prol
  %.026.1.1.prol = phi i64 [ %i.em, %scalar.ph82.prol ], [ %.026.1.1.ph, %scalar.ph82.preheader ] ; 3 uses
  %prol.iter111 = phi i64 [ %prol.iter111.next, %scalar.ph82.prol ], [ 0, %scalar.ph82.preheader ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %.026.1.1.prol
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.026.1.1.prol
  store i64 %i.ek, ptr %i.el, align 8
  %i.em = add nuw nsw i64 %.026.1.1.prol, 1       ; 2 uses
  %prol.iter111.next = add i64 %prol.iter111, 1   ; 2 uses
  %prol.iter111.cmp.not = icmp eq i64 %prol.iter111.next, %xtraiter109
  br i1 %prol.iter111.cmp.not, label %scalar.ph82.prol.loopexit, label %scalar.ph82.prol, !llvm.loop !593

scalar.ph82.prol.loopexit:                        ; preds = %scalar.ph82.prol, %scalar.ph82.preheader
  %.026.1.1.unr = phi i64 [ %.026.1.1.ph, %scalar.ph82.preheader ], [ %i.em, %scalar.ph82.prol ]
  %i.en = icmp ult i64 %i.eh, 3
  br i1 %i.en, label %.loopexit, label %scalar.ph82

scalar.ph82:                                      ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82
  %.026.1.1 = phi i64 [ %i.fh, %scalar.ph82 ], [ %.026.1.1.unr, %scalar.ph82.prol.loopexit ] ; 6 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %.026.1.1
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.026.1.1
  store i64 %i.eq, ptr %i.er, align 8
  %i.es = add nuw nsw i64 %.026.1.1, 1            ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.es
  store i64 %i.ev, ptr %i.ew, align 8
  %i.ex = add nuw nsw i64 %.026.1.1, 2            ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.ex
  store i64 %i.fa, ptr %i.fb, align 8
  %i.fc = add nuw nsw i64 %.026.1.1, 3            ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.fc
  store i64 %i.ff, ptr %i.fg, align 8
  %i.fh = add nuw nsw i64 %.026.1.1, 4            ; 2 uses
  %exitcond.1.1.not.3 = icmp eq i64 %i.fh, %i.e
  br i1 %exitcond.1.1.not.3, label %.loopexit, label %scalar.ph82, !llvm.loop !594

.loopexit:                                        ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82, %middle.block95
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.026 = phi i64 [ %i.gb, %scalar.ph ], [ %.026.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.024, i64 %.026
  %i.fj = load i32, ptr %i.fi, align 4
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.026
  store i64 %i.fk, ptr %i.fl, align 8
  %i.fm = add nuw nsw i64 %.026, 1                ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.024, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fm
  store i64 %i.fp, ptr %i.fq, align 8
  %i.fr = add nuw nsw i64 %.026, 2                ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.024, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fr
  store i64 %i.fu, ptr %i.fv, align 8
  %i.fw = add nuw nsw i64 %.026, 3                ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.024, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fw
  store i64 %i.fz, ptr %i.ga, align 8
  %i.gb = add nuw nsw i64 %.026, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.gb, %i.e
  br i1 %exitcond.not.3, label %.loopexit100, label %scalar.ph, !llvm.loop !595
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_zip2_b(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, i32 noundef %3) #4 {
bb.a:
  %4 = alloca [2 x %struct.ARMVectorReg], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %4, i8 0, i64 512, i1 false), !annotation !53
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 8 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %.not.i = icmp ugt ptr %i.i, %1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = icmp ugt ptr %i.j, %0
  %i.l = select i1 %.not.i, i1 %i.k, i1 false
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef %i.g, i64 noundef 512) #15, !alias.scope !624
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.032 = phi ptr [ %i.m, %bb.b ], [ %1, %bb.a ]  ; 12 uses
  %.not.i33 = icmp ugt ptr %i.i, %2
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.o = icmp ugt ptr %i.n, %0
  %i.p = select i1 %.not.i33, i1 %i.o, i1 false
  br i1 %i.p, label %bb.d, label %vector.memcheck

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.r = call ptr @__memcpy_chk(ptr noundef nonnull %i.q, ptr noundef nonnull %2, i64 noundef %i.g, i64 noundef 256) #15, !alias.scope !625
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.c, %bb.d
  %.031 = phi ptr [ %i.r, %bb.d ], [ %2, %bb.c ]  ; 12 uses
  %i.s = getelementptr i8, ptr %0, i64 %i.g       ; 2 uses
  %i.t = getelementptr i8, ptr %.032, i64 %i.h
  %bound0 = icmp ult ptr %0, %i.t
  %bound0.a = icmp ult ptr %.032, %i.s
  %found.conflict = and i1 %bound0, %bound0.a
  %5 = getelementptr i8, ptr %.031, i64 %i.h
  %bound043 = icmp ult ptr %0, %5
  %bound144 = icmp ult ptr %.031, %i.s
  %found.conflict45 = and i1 %bound043, %bound144
  %conflict.rdx = or i1 %found.conflict, %found.conflict45
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.h, 1073741808               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.032, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %wide.load = load <8 x i8>, ptr %i.u, align 1, !alias.scope !626
  %wide.load46 = load <8 x i8>, ptr %i.v, align 1, !alias.scope !626
  %i.w = shl nuw nsw i64 %index, 1
  %i.x = shl i64 %index, 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %.031, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %wide.load47 = load <8 x i8>, ptr %i.ab, align 1, !alias.scope !627
  %wide.load48 = load <8 x i8>, ptr %i.ac, align 1, !alias.scope !627
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> %wide.load47, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.y, align 1, !alias.scope !628, !noalias !629
  %interleaved.vec49 = shufflevector <8 x i8> %wide.load46, <8 x i8> %wide.load48, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec49, ptr %i.aa, align 1, !alias.scope !628, !noalias !629
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !614

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %iter.check92, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.ae = and i64 %i.g, 24
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader.new, label %vec.epilog.vector.body.preheader, !prof !56

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index51.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader.new:               ; preds = %vector.memcheck, %vec.epilog.iter.check
  %.034.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.memcheck ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index51 = phi i64 [ %index.next55, %vec.epilog.vector.body ], [ %index51.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.032, i64 %index51
  %wide.load52 = load <4 x i8>, ptr %i.af, align 1, !alias.scope !626
  %i.ag = shl nuw nsw i64 %index51, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.031, i64 %index51
  %wide.load53 = load <4 x i8>, ptr %i.ai, align 1, !alias.scope !627
  %interleaved.vec54 = shufflevector <4 x i8> %wide.load52, <4 x i8> %wide.load53, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec54, ptr %i.ah, align 1, !alias.scope !628, !noalias !629
  %index.next55 = add nuw i64 %index51, 4         ; 2 uses
  %i.aj = icmp eq i64 %index.next55, %i.h
  br i1 %i.aj, label %iter.check92, label %vec.epilog.vector.body, !llvm.loop !615

iter.check92:                                     ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  %i.al = zext nneg i32 %.v.v.i to i64
  %i.am = getelementptr i8, ptr %0, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 264    ; 2 uses
  %i.ao = getelementptr i8, ptr %.032, i64 %i.h
  %i.ap = getelementptr i8, ptr %.032, i64 %i.g
  %bound070 = icmp ult ptr %i.ak, %i.ap
  %bound171 = icmp ult ptr %i.ao, %i.an
  %found.conflict72 = and i1 %bound070, %bound171
  %6 = getelementptr i8, ptr %.031, i64 %i.h
  %7 = getelementptr i8, ptr %.031, i64 %i.g
  %bound073 = icmp ult ptr %i.ak, %7
  %bound174 = icmp ult ptr %6, %i.an
  %found.conflict75 = and i1 %bound073, %bound174
  %conflict.rdx76 = or i1 %found.conflict72, %found.conflict75
  br i1 %conflict.rdx76, label %vec.epilog.scalar.ph94.preheader.new, label %vector.main.loop.iter.check77

vector.main.loop.iter.check77:                    ; preds = %iter.check92
  %min.iters.check78 = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check78, label %vec.epilog.vector.body99.preheader, label %vector.ph79

vector.ph79:                                      ; preds = %vector.main.loop.iter.check77
  %n.vec80 = and i64 %i.h, 1073741808             ; 4 uses
  br label %vector.body81

vector.body81:                                    ; preds = %vector.ph79, %vector.body81
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next89, %vector.body81 ] ; 4 uses
  %i.aq = add nuw nsw i64 %index82, %i.h          ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.032, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %wide.load83 = load <8 x i8>, ptr %i.ar, align 1, !alias.scope !630
  %wide.load84 = load <8 x i8>, ptr %i.as, align 1, !alias.scope !630
  %i.at = shl nuw nsw i64 %index82, 1
  %i.au = shl i64 %index82, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %.031, i64 %i.aq ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %wide.load85 = load <8 x i8>, ptr %i.ay, align 1, !alias.scope !631
  %wide.load86 = load <8 x i8>, ptr %i.az, align 1, !alias.scope !631
  %interleaved.vec87 = shufflevector <8 x i8> %wide.load83, <8 x i8> %wide.load85, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec87, ptr %i.av, align 1, !alias.scope !632, !noalias !633
  %interleaved.vec88 = shufflevector <8 x i8> %wide.load84, <8 x i8> %wide.load86, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec88, ptr %i.ax, align 1, !alias.scope !632, !noalias !633
  %index.next89 = add nuw i64 %index82, 16        ; 2 uses
  %i.ba = icmp eq i64 %index.next89, %n.vec80
  br i1 %i.ba, label %middle.block90, label %vector.body81, !llvm.loop !620

middle.block90:                                   ; preds = %vector.body81
  %cmp.n91 = icmp eq i64 %i.h, %n.vec80
  br i1 %cmp.n91, label %vec.epilog.middle.block105, label %vec.epilog.iter.check93

vec.epilog.iter.check93:                          ; preds = %middle.block90
  %i.bb = and i64 %i.g, 24
  %min.epilog.iters.check95 = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check95, label %vec.epilog.scalar.ph94.preheader.new, label %vec.epilog.vector.body99.preheader, !prof !56

vec.epilog.vector.body99.preheader:               ; preds = %vector.main.loop.iter.check77, %vec.epilog.iter.check93
  %index100.ph = phi i64 [ 0, %vector.main.loop.iter.check77 ], [ %n.vec80, %vec.epilog.iter.check93 ]
  br label %vec.epilog.vector.body99

vec.epilog.scalar.ph94.preheader.new:             ; preds = %iter.check92, %vec.epilog.iter.check93
  %.034.1.ph = phi i64 [ %n.vec80, %vec.epilog.iter.check93 ], [ 0, %iter.check92 ]
  br label %vec.epilog.scalar.ph94

vec.epilog.vector.body99:                         ; preds = %vec.epilog.vector.body99.preheader, %vec.epilog.vector.body99
  %index100 = phi i64 [ %index.next104, %vec.epilog.vector.body99 ], [ %index100.ph, %vec.epilog.vector.body99.preheader ] ; 3 uses
  %i.bc = add nuw nsw i64 %index100, %i.h         ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.032, i64 %i.bc
  %wide.load101 = load <4 x i8>, ptr %i.bd, align 1, !alias.scope !630
  %i.be = shl nuw nsw i64 %index100, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %.031, i64 %i.bc
  %wide.load102 = load <4 x i8>, ptr %i.bg, align 1, !alias.scope !631
  %interleaved.vec103 = shufflevector <4 x i8> %wide.load101, <4 x i8> %wide.load102, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec103, ptr %i.bf, align 1, !alias.scope !632, !noalias !633
  %index.next104 = add nuw i64 %index100, 4       ; 2 uses
  %i.bh = icmp eq i64 %index.next104, %i.h
  br i1 %i.bh, label %vec.epilog.middle.block105, label %vec.epilog.vector.body99, !llvm.loop !621

vec.epilog.scalar.ph94:                           ; preds = %vec.epilog.scalar.ph94, %vec.epilog.scalar.ph94.preheader.new
  %.034.1 = phi i64 [ %.034.1.ph, %vec.epilog.scalar.ph94.preheader.new ], [ %i.bz, %vec.epilog.scalar.ph94 ] ; 4 uses
  %i.bi = add nuw nsw i64 %.034.1, %i.h           ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.032, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = shl nuw nsw i64 %.034.1, 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bl ; 2 uses
  store i8 %i.bk, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.031, i64 %i.bi
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store i8 %i.bo, ptr %i.bp, align 1
  %i.bq = or disjoint i64 %.034.1, 1              ; 2 uses
  %i.br = add nuw nsw i64 %i.bq, %i.h             ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.032, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = shl nuw nsw i64 %i.bq, 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bu ; 2 uses
  store i8 %i.bt, ptr %i.bv, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.031, i64 %i.br
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 %i.bx, ptr %i.by, align 1
  %i.bz = add nuw nsw i64 %.034.1, 2              ; 2 uses
  %exitcond.1.not.1 = icmp eq i64 %i.bz, %i.h
  br i1 %exitcond.1.not.1, label %vec.epilog.middle.block105, label %vec.epilog.scalar.ph94, !llvm.loop !622

vec.epilog.middle.block105:                       ; preds = %vec.epilog.vector.body99, %vec.epilog.scalar.ph94, %middle.block90
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.034 = phi i64 [ %.034.ph, %vec.epilog.scalar.ph.preheader.new ], [ %i.cp, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.032, i64 %.034
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = shl nuw nsw i64 %.034, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %i.cc ; 2 uses
  store i8 %i.cb, ptr %i.cd, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.031, i64 %.034
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  store i8 %i.cf, ptr %i.cg, align 1
  %i.ch = or disjoint i64 %.034, 1                ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.032, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = shl nuw nsw i64 %i.ch, 1
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %i.ck ; 2 uses
  store i8 %i.cj, ptr %i.cl, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.031, i64 %i.ch
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  store i8 %i.cn, ptr %i.co, align 1
  %i.cp = add nuw nsw i64 %.034, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cp, %i.h
  br i1 %exitcond.not.1, label %iter.check92, label %vec.epilog.scalar.ph, !llvm.loop !623
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_zip2_h(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, i32 noundef %3) #4 {
bb.a:
  %4 = alloca [2 x %struct.ARMVectorReg], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %4, i8 0, i64 512, i1 false), !annotation !53
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 8 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %.not.i = icmp ugt ptr %i.i, %1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = icmp ugt ptr %i.j, %0
  %i.l = select i1 %.not.i, i1 %i.k, i1 false
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef %i.g, i64 noundef 512) #15, !alias.scope !652
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.032 = phi ptr [ %i.m, %bb.b ], [ %1, %bb.a ]  ; 10 uses
  %.not.i33 = icmp ugt ptr %i.i, %2
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.o = icmp ugt ptr %i.n, %0
  %i.p = select i1 %.not.i33, i1 %i.o, i1 false
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.r = call ptr @__memcpy_chk(ptr noundef nonnull %i.q, ptr noundef nonnull %2, i64 noundef %i.g, i64 noundef 256) #15, !alias.scope !653
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.031 = phi ptr [ %i.r, %bb.d ], [ %2, %bb.c ]  ; 10 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader.new, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.e
  %i.s = getelementptr i8, ptr %0, i64 %i.g       ; 2 uses
  %i.t = lshr exact i64 %i.g, 1                   ; 2 uses
  %i.u = getelementptr i8, ptr %.032, i64 %i.t
  %bound0 = icmp ult ptr %0, %i.u
  %bound0.a = icmp ult ptr %.032, %i.s
  %found.conflict = and i1 %bound0, %bound0.a
  %5 = getelementptr i8, ptr %.031, i64 %i.t
  %bound043 = icmp ult ptr %0, %5
  %bound144 = icmp ult ptr %.031, %i.s
  %found.conflict45 = and i1 %bound043, %bound144
  %conflict.rdx = or i1 %found.conflict, %found.conflict45
  br i1 %conflict.rdx, label %scalar.ph.preheader.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870904                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %.032, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %wide.load = load <4 x i16>, ptr %i.v, align 2, !alias.scope !654
  %wide.load46 = load <4 x i16>, ptr %i.w, align 2, !alias.scope !654
  %i.x = shl nuw nsw i64 %index, 2
  %i.y = shl i64 %index, 2
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.031, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %wide.load47 = load <4 x i16>, ptr %i.ac, align 2, !alias.scope !655
  %wide.load48 = load <4 x i16>, ptr %i.ad, align 2, !alias.scope !655
  %interleaved.vec = shufflevector <4 x i16> %wide.load, <4 x i16> %wide.load47, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.z, align 2, !alias.scope !656, !noalias !657
  %interleaved.vec49 = shufflevector <4 x i16> %wide.load46, <4 x i16> %wide.load48, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec49, ptr %i.ab, align 2, !alias.scope !656, !noalias !657
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !644

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit86, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %vector.memcheck, %bb.e, %middle.block
  %.034.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.e ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.loopexit86:                                      ; preds = %scalar.ph, %middle.block
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 6 uses
  %min.iters.check63 = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check63, label %scalar.ph62.preheader.new, label %vector.memcheck64

vector.memcheck64:                                ; preds = %.loopexit86
  %i.ag = zext nneg i32 %.v.v.i to i64
  %i.ah = getelementptr i8, ptr %0, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 264    ; 2 uses
  %i.aj = lshr exact i64 %i.g, 1                  ; 2 uses
  %i.ak = getelementptr i8, ptr %.032, i64 %i.aj
  %i.al = getelementptr i8, ptr %.032, i64 %i.g
  %bound065 = icmp ult ptr %i.af, %i.al
  %bound166 = icmp ult ptr %i.ak, %i.ai
  %found.conflict67 = and i1 %bound065, %bound166
  %6 = getelementptr i8, ptr %.031, i64 %i.aj
  %7 = getelementptr i8, ptr %.031, i64 %i.g
  %bound068 = icmp ult ptr %i.af, %7
  %bound169 = icmp ult ptr %6, %i.ai
  %found.conflict70 = and i1 %bound068, %bound169
  %conflict.rdx71 = or i1 %found.conflict67, %found.conflict70
  br i1 %conflict.rdx71, label %scalar.ph62.preheader.new, label %vector.ph72

vector.ph72:                                      ; preds = %vector.memcheck64
  %n.vec73 = and i64 %i.h, 536870904              ; 3 uses
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph72
  %index75 = phi i64 [ 0, %vector.ph72 ], [ %index.next82, %vector.body74 ] ; 4 uses
  %i.am = add nuw nsw i64 %index75, %i.h          ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.032, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %wide.load76 = load <4 x i16>, ptr %i.an, align 2, !alias.scope !658
  %wide.load77 = load <4 x i16>, ptr %i.ao, align 2, !alias.scope !658
  %i.ap = shl nuw nsw i64 %index75, 2
  %i.aq = shl i64 %index75, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.031, i64 %i.am ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %wide.load78 = load <4 x i16>, ptr %i.au, align 2, !alias.scope !659
  %wide.load79 = load <4 x i16>, ptr %i.av, align 2, !alias.scope !659
  %interleaved.vec80 = shufflevector <4 x i16> %wide.load76, <4 x i16> %wide.load78, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec80, ptr %i.ar, align 2, !alias.scope !660, !noalias !661
  %interleaved.vec81 = shufflevector <4 x i16> %wide.load77, <4 x i16> %wide.load79, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec81, ptr %i.at, align 2, !alias.scope !660, !noalias !661
  %index.next82 = add nuw i64 %index75, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next82, %n.vec73
  br i1 %i.aw, label %middle.block83, label %vector.body74, !llvm.loop !649

middle.block83:                                   ; preds = %vector.body74
  %cmp.n84 = icmp eq i64 %i.h, %n.vec73
  br i1 %cmp.n84, label %.loopexit, label %scalar.ph62.preheader.new

scalar.ph62.preheader.new:                        ; preds = %vector.memcheck64, %.loopexit86, %middle.block83
  %.034.1.ph = phi i64 [ 0, %vector.memcheck64 ], [ 0, %.loopexit86 ], [ %n.vec73, %middle.block83 ]
  br label %scalar.ph62

scalar.ph62:                                      ; preds = %scalar.ph62, %scalar.ph62.preheader.new
  %.034.1 = phi i64 [ %.034.1.ph, %scalar.ph62.preheader.new ], [ %i.bm, %scalar.ph62 ] ; 4 uses
  %i.ax = add nuw nsw i64 %.034.1, %i.h           ; 2 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %.032, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2
  %.idx.1 = shl nuw nsw i64 %.034.1, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.1 ; 2 uses
  store i16 %i.az, ptr %i.ba, align 2
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.031, i64 %i.ax
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  store i16 %i.bc, ptr %i.bd, align 2
  %i.be = or disjoint i64 %.034.1, 1              ; 2 uses
  %i.bf = add nuw nsw i64 %i.be, %i.h             ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %.032, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2
  %.idx.1.1 = shl nuw nsw i64 %i.be, 2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.1.1 ; 2 uses
  store i16 %i.bh, ptr %i.bi, align 2
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.031, i64 %i.bf
  %i.bk = load i16, ptr %i.bj, align 2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store i16 %i.bk, ptr %i.bl, align 2
  %i.bm = add nuw nsw i64 %.034.1, 2              ; 2 uses
  %exitcond.1.not.1 = icmp eq i64 %i.bm, %i.h
  br i1 %exitcond.1.not.1, label %.loopexit, label %scalar.ph62, !llvm.loop !650

.loopexit:                                        ; preds = %scalar.ph62, %middle.block83
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.034 = phi i64 [ %.034.ph, %scalar.ph.preheader.new ], [ %i.ca, %scalar.ph ] ; 5 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %.032, i64 %.034
  %i.bo = load i16, ptr %i.bn, align 2
  %.idx = shl nuw nsw i64 %.034, 2
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %.031, i64 %.034
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  store i16 %i.br, ptr %i.bs, align 2
  %i.bt = or disjoint i64 %.034, 1                ; 3 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.032, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2
  %.idx.188 = shl nuw nsw i64 %i.bt, 2
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.188 ; 2 uses
  store i16 %i.bv, ptr %i.bw, align 2
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.031, i64 %i.bt
  %i.by = load i16, ptr %i.bx, align 2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  store i16 %i.by, ptr %i.bz, align 2
  %i.ca = add nuw nsw i64 %.034, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ca, %i.h
  br i1 %exitcond.not.1, label %.loopexit86, label %scalar.ph, !llvm.loop !651
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_zip2_s(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, i32 noundef %3) #4 {
bb.a:
  %4 = alloca [2 x %struct.ARMVectorReg], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %4, i8 0, i64 512, i1 false), !annotation !53
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 10 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %.not.i = icmp ugt ptr %i.i, %1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = icmp ugt ptr %i.j, %0
  %i.l = select i1 %.not.i, i1 %i.k, i1 false
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef %i.g, i64 noundef 512) #15, !alias.scope !680
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.032 = phi ptr [ %i.m, %bb.b ], [ %1, %bb.a ]  ; 12 uses
  %.not.i33 = icmp ugt ptr %i.i, %2
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.o = icmp ugt ptr %i.n, %0
  %i.p = select i1 %.not.i33, i1 %i.o, i1 false
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.r = call ptr @__memcpy_chk(ptr noundef nonnull %i.q, ptr noundef nonnull %2, i64 noundef %i.g, i64 noundef 256) #15, !alias.scope !681
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.031 = phi ptr [ %i.r, %bb.d ], [ %2, %bb.c ]  ; 12 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 88
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.e
  %i.s = getelementptr i8, ptr %0, i64 %i.g       ; 2 uses
  %i.t = lshr exact i64 %i.g, 1                   ; 2 uses
  %i.u = getelementptr i8, ptr %.032, i64 %i.t
  %bound0 = icmp ult ptr %0, %i.u
  %bound0.a = icmp ult ptr %.032, %i.s
  %found.conflict = and i1 %bound0, %bound0.a
  %5 = getelementptr i8, ptr %.031, i64 %i.t
  %bound043 = icmp ult ptr %0, %5
  %bound144 = icmp ult ptr %.031, %i.s
  %found.conflict45 = and i1 %bound043, %bound144
  %conflict.rdx = or i1 %found.conflict, %found.conflict45
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 268435452                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.032, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %wide.load = load <2 x i32>, ptr %i.v, align 4, !alias.scope !682
  %wide.load46 = load <2 x i32>, ptr %i.w, align 4, !alias.scope !682
  %i.x = shl nuw nsw i64 %index, 3
  %i.y = shl i64 %index, 3
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.031, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %wide.load47 = load <2 x i32>, ptr %i.ac, align 4, !alias.scope !683
  %wide.load48 = load <2 x i32>, ptr %i.ad, align 4, !alias.scope !683
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load47, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.z, align 4, !alias.scope !684, !noalias !685
  %interleaved.vec49 = shufflevector <2 x i32> %wide.load46, <2 x i32> %wide.load48, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec49, ptr %i.ab, align 4, !alias.scope !684, !noalias !685
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !672

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit86, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.e, %middle.block
  %.034.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.e ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.034.ph, 1
  %i.af = and i64 %i.g, 8
  %lcmp.mod.not = icmp eq i64 %i.af, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.032, i64 %.034.ph
  %i.ah = load i32, ptr %i.ag, align 4
  %.idx.prol = shl nuw nsw i64 %.034.ph, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.prol ; 2 uses
  store i32 %i.ah, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.031, i64 %.034.ph
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.ak, ptr %i.al, align 4
  %i.am = or disjoint i64 %.034.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.034.unr = phi i64 [ %.034.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %i.an = icmp eq i64 %i.h, %.neg
  br i1 %i.an, label %.loopexit86, label %scalar.ph

.loopexit86:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  %min.iters.check63 = icmp samesign ult i32 %.v.v.i, 88
  br i1 %min.iters.check63, label %scalar.ph62.preheader, label %vector.memcheck64

vector.memcheck64:                                ; preds = %.loopexit86
  %i.ap = zext nneg i32 %.v.v.i to i64
  %i.aq = getelementptr i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 264    ; 2 uses
  %i.as = lshr exact i64 %i.g, 1                  ; 2 uses
  %i.at = getelementptr i8, ptr %.032, i64 %i.as
  %i.au = getelementptr i8, ptr %.032, i64 %i.g
  %bound065 = icmp ult ptr %i.ao, %i.au
  %bound166 = icmp ult ptr %i.at, %i.ar
  %found.conflict67 = and i1 %bound065, %bound166
  %6 = getelementptr i8, ptr %.031, i64 %i.as
  %7 = getelementptr i8, ptr %.031, i64 %i.g
  %bound068 = icmp ult ptr %i.ao, %7
  %bound169 = icmp ult ptr %6, %i.ar
  %found.conflict70 = and i1 %bound068, %bound169
  %conflict.rdx71 = or i1 %found.conflict67, %found.conflict70
  br i1 %conflict.rdx71, label %scalar.ph62.preheader, label %vector.ph72

vector.ph72:                                      ; preds = %vector.memcheck64
  %n.vec73 = and i64 %i.h, 268435452              ; 3 uses
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph72
  %index75 = phi i64 [ 0, %vector.ph72 ], [ %index.next82, %vector.body74 ] ; 4 uses
  %i.av = add nuw nsw i64 %index75, %i.h          ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.032, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %wide.load76 = load <2 x i32>, ptr %i.aw, align 4, !alias.scope !686
  %wide.load77 = load <2 x i32>, ptr %i.ax, align 4, !alias.scope !686
  %i.ay = shl nuw nsw i64 %index75, 3
  %i.az = shl i64 %index75, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.031, i64 %i.av ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %wide.load78 = load <2 x i32>, ptr %i.bd, align 4, !alias.scope !687
  %wide.load79 = load <2 x i32>, ptr %i.be, align 4, !alias.scope !687
  %interleaved.vec80 = shufflevector <2 x i32> %wide.load76, <2 x i32> %wide.load78, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec80, ptr %i.ba, align 4, !alias.scope !688, !noalias !689
  %interleaved.vec81 = shufflevector <2 x i32> %wide.load77, <2 x i32> %wide.load79, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec81, ptr %i.bc, align 4, !alias.scope !688, !noalias !689
  %index.next82 = add nuw i64 %index75, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next82, %n.vec73
  br i1 %i.bf, label %middle.block83, label %vector.body74, !llvm.loop !677

middle.block83:                                   ; preds = %vector.body74
  %cmp.n84 = icmp eq i64 %i.h, %n.vec73
  br i1 %cmp.n84, label %.loopexit, label %scalar.ph62.preheader

scalar.ph62.preheader:                            ; preds = %vector.memcheck64, %.loopexit86, %middle.block83
  %.034.1.ph = phi i64 [ 0, %vector.memcheck64 ], [ 0, %.loopexit86 ], [ %n.vec73, %middle.block83 ] ; 5 uses
  %.neg91 = or disjoint i64 %.034.1.ph, 1
  %i.bg = and i64 %i.g, 8
  %lcmp.mod90.not = icmp eq i64 %i.bg, 0
  br i1 %lcmp.mod90.not, label %scalar.ph62.prol.loopexit, label %scalar.ph62.prol

scalar.ph62.prol:                                 ; preds = %scalar.ph62.preheader
  %i.bh = add nuw nsw i64 %.034.1.ph, %i.h        ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.032, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4
  %.idx.1.prol = shl nuw nsw i64 %.034.1.ph, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.1.prol ; 2 uses
  store i32 %i.bj, ptr %i.bk, align 4
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.031, i64 %i.bh
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 %i.bm, ptr %i.bn, align 4
  %i.bo = or disjoint i64 %.034.1.ph, 1
  br label %scalar.ph62.prol.loopexit

scalar.ph62.prol.loopexit:                        ; preds = %scalar.ph62.prol, %scalar.ph62.preheader
  %.034.1.unr = phi i64 [ %.034.1.ph, %scalar.ph62.preheader ], [ %i.bo, %scalar.ph62.prol ]
  %i.bp = icmp eq i64 %i.h, %.neg91
  br i1 %i.bp, label %.loopexit, label %scalar.ph62

scalar.ph62:                                      ; preds = %scalar.ph62.prol.loopexit, %scalar.ph62
  %.034.1 = phi i64 [ %i.cf, %scalar.ph62 ], [ %.034.1.unr, %scalar.ph62.prol.loopexit ] ; 4 uses
  %i.bq = add nuw nsw i64 %.034.1, %i.h           ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.032, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4
  %.idx.1 = shl nuw nsw i64 %.034.1, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.1 ; 2 uses
  store i32 %i.bs, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.031, i64 %i.bq
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %i.bv, ptr %i.bw, align 4
  %i.bx = add nuw nsw i64 %.034.1, 1              ; 2 uses
  %i.by = add nuw nsw i64 %i.bx, %i.h             ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.032, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4
  %.idx.1.1 = shl nuw nsw i64 %i.bx, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.1.1 ; 2 uses
  store i32 %i.ca, ptr %i.cb, align 4
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.031, i64 %i.by
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 %i.cd, ptr %i.ce, align 4
  %i.cf = add nuw nsw i64 %.034.1, 2              ; 2 uses
  %exitcond.1.not.1 = icmp eq i64 %i.cf, %i.h
  br i1 %exitcond.1.not.1, label %.loopexit, label %scalar.ph62, !llvm.loop !678

.loopexit:                                        ; preds = %scalar.ph62.prol.loopexit, %scalar.ph62, %middle.block83
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.034 = phi i64 [ %i.ct, %scalar.ph ], [ %.034.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.032, i64 %.034
  %i.ch = load i32, ptr %i.cg, align 4
  %.idx = shl nuw nsw i64 %.034, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  store i32 %i.ch, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.031, i64 %.034
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 %i.ck, ptr %i.cl, align 4
  %i.cm = add nuw nsw i64 %.034, 1                ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.032, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4
  %.idx.188 = shl nuw nsw i64 %i.cm, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.188 ; 2 uses
  store i32 %i.co, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.031, i64 %i.cm
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store i32 %i.cr, ptr %i.cs, align 4
  %i.ct = add nuw nsw i64 %.034, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ct, %i.h
  br i1 %exitcond.not.1, label %.loopexit86, label %scalar.ph, !llvm.loop !679
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_zip2_d(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, i32 noundef %3) #4 {
bb.a:
  %4 = alloca [2 x %struct.ARMVectorReg], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %4, i8 0, i64 512, i1 false), !annotation !53
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 5 uses
  %i.h = lshr i64 %i.g, 4                         ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %.not.i = icmp ugt ptr %i.i, %1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = icmp ugt ptr %i.j, %0
  %i.l = select i1 %.not.i, i1 %i.k, i1 false
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef %i.g, i64 noundef 512) #15, !alias.scope !697
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.032 = phi ptr [ %i.m, %bb.b ], [ %1, %bb.a ]  ; 6 uses
  %.not.i33 = icmp ugt ptr %i.i, %2
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.o = icmp ugt ptr %i.n, %0
  %i.p = select i1 %.not.i33, i1 %i.o, i1 false
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.r = call ptr @__memcpy_chk(ptr noundef nonnull %i.q, ptr noundef nonnull %2, i64 noundef %i.g, i64 noundef 256) #15, !alias.scope !698
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.031 = phi ptr [ %i.r, %bb.d ], [ %2, %bb.c ]  ; 6 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.split36, label %.lr.ph.preheader.preheader

.lr.ph.preheader.preheader:                       ; preds = %bb.e
  %i.s = add nsw i64 %i.h, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.preheader.epil.preheader, label %.lr.ph.preheader.preheader.new

.lr.ph.preheader.preheader.new:                   ; preds = %.lr.ph.preheader.preheader
  %unroll_iter = and i64 %i.h, 134217726
  br label %.lr.ph.preheader

.split36.loopexit.unr-lcssa:                      ; preds = %bb.f
  %i.u = and i64 %i.g, 16
  %lcmp.mod43.not = icmp eq i64 %i.u, 0
  br i1 %lcmp.mod43.not, label %.split36, label %.epil.preheader

.epil.preheader:                                  ; preds = %.split36.loopexit.unr-lcssa, %._crit_edge
  %.034.1.epil.init = phi i64 [ 0, %._crit_edge ], [ %i.ba, %.split36.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod44 = trunc i64 %i.h to i1
  call void @llvm.assume(i1 %lcmp.mod44)
  %i.v = add nuw nsw i64 %.034.1.epil.init, %i.h  ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.032, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8
  %.idx.1.epil = shl nuw nsw i64 %.034.1.epil.init, 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.1.epil ; 2 uses
  store i64 %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.031, i64 %i.v
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.aa, ptr %i.ab, align 8
  br label %.split36

.split36:                                         ; preds = %.epil.preheader, %.split36.loopexit.unr-lcssa, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void

end_hunk_1
begin_hunk_2_@helper_sme2_sqrshru_sb:bb.a
  %i.an = add nsw i64 %i.am, %i.ak
  %i.ao = tail call i64 @llvm.smax.i64(i64 %i.an, i64 0)
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 255)
  %i.aq = trunc nuw i64 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.h
  store i8 %i.aq, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.08093.us
  %i.at = load i32, ptr %i.as, align 4
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = ashr i64 %i.au, %i.t
  %i.aw = lshr i64 %i.au, %i.v
  %i.ax = and i64 %i.aw, 1
  %i.ay = add nsw i64 %i.ax, %i.av
  %i.az = tail call i64 @llvm.smax.i64(i64 %i.ay, i64 0)
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.az, i64 255)
  %i.bb = trunc nuw i64 %i.ba to i8
  %gep.us = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.08093.us
  store i8 %i.bb, ptr %gep.us, align 1
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.08093.us
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = ashr i64 %i.be, %i.t
  %i.bg = lshr i64 %i.be, %i.v
  %i.bh = and i64 %i.bg, 1
  %i.bi = add nsw i64 %i.bh, %i.bf
  %i.bj = tail call i64 @llvm.smax.i64(i64 %i.bi, i64 0)
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 255)
  %i.bl = trunc nuw i64 %i.bk to i8
  %gep92.us = getelementptr inbounds nuw i8, ptr %invariant.gep91, i64 %.08093.us
  store i8 %i.bl, ptr %gep92.us, align 1
  %i.bm = add nuw nsw i64 %.08093.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.bm, %i.h
  br i1 %exitcond.not, label %.split95.us, label %do_srshr.exit86.us, !llvm.loop !877

.split95.us:                                      ; preds = %do_srshr.exit86.us, %do_srshr.exit84.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split95.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split95.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sqrshr_dh(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 3 uses
  %i.i = ashr i32 %2, 10                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.m, %1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.o = icmp ugt ptr %i.n, %0
  %i.p = select i1 %.not.i, i1 %i.o, i1 false
  %spec.select = select i1 %i.p, ptr %3, ptr %0   ; 7 uses
  %i.q = icmp ult i32 %i.i, 64
  %.idx = lshr exact i64 %i.g, 1
  %invariant.gep = getelementptr i8, ptr %spec.select, i64 %.idx ; 2 uses
  %.idx83 = mul nuw nsw i64 %i.h, 6
  %invariant.gep92 = getelementptr i8, ptr %spec.select, i64 %.idx83 ; 2 uses
  %i.r = zext nneg i32 %i.i to i64                ; 4 uses
  %i.s = add nsw i32 %i.i, -1
  %i.t = zext nneg i32 %i.s to i64                ; 4 uses
  br i1 %i.q, label %do_srshr.exit87.us, label %do_srshr.exit85.preheader, !prof !54

do_srshr.exit85.preheader:                        ; preds = %bb.a
  %i.u = lshr exact i64 %i.g, 2                   ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %spec.select, i8 0, i64 range(i64 0, 513) %i.u, i1 false)
  %scevgep = getelementptr i8, ptr %spec.select, i64 %i.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, i8 0, i64 range(i64 0, 513) %i.u, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %invariant.gep, i8 0, i64 range(i64 0, 513) %i.u, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %invariant.gep92, i8 0, i64 range(i64 0, 513) %i.u, i1 false)
  br label %.split96.us

do_srshr.exit87.us:                               ; preds = %bb.a, %do_srshr.exit87.us
  %.08094.us = phi i64 [ %i.bh, %do_srshr.exit87.us ], [ 0, %bb.a ] ; 8 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.08094.us
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = ashr i64 %i.w, %i.r
  %i.y = lshr i64 %i.w, %i.t
  %i.z = and i64 %i.y, 1
  %i.aa = add i64 %i.z, %i.x
  %i.ab = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -32768)
  %i.ac = tail call i64 @llvm.smin.i64(i64 %i.ab, i64 32767)
  %i.ad = trunc nsw i64 %i.ac to i16
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %.08094.us ; 2 uses
  store i16 %i.ad, ptr %i.ae, align 2
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.08094.us
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = ashr i64 %i.ag, %i.r
  %i.ai = lshr i64 %i.ag, %i.t
  %i.aj = and i64 %i.ai, 1
  %i.ak = add i64 %i.aj, %i.ah
  %i.al = tail call i64 @llvm.smax.i64(i64 %i.ak, i64 -32768)
  %i.am = tail call i64 @llvm.smin.i64(i64 %i.al, i64 32767)
  %i.an = trunc nsw i64 %i.am to i16
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.h
  store i16 %i.an, ptr %i.ao, align 2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.08094.us
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.ar = ashr i64 %i.aq, %i.r
  %i.as = lshr i64 %i.aq, %i.t
  %i.at = and i64 %i.as, 1
  %i.au = add i64 %i.at, %i.ar
  %i.av = tail call i64 @llvm.smax.i64(i64 %i.au, i64 -32768)
  %i.aw = tail call i64 @llvm.smin.i64(i64 %i.av, i64 32767)
  %i.ax = trunc nsw i64 %i.aw to i16
  %gep.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %.08094.us
  store i16 %i.ax, ptr %gep.us, align 2
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.08094.us
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = ashr i64 %i.az, %i.r
  %i.bb = lshr i64 %i.az, %i.t
  %i.bc = and i64 %i.bb, 1
  %i.bd = add i64 %i.bc, %i.ba
  %i.be = tail call i64 @llvm.smax.i64(i64 %i.bd, i64 -32768)
  %i.bf = tail call i64 @llvm.smin.i64(i64 %i.be, i64 32767)
  %i.bg = trunc nsw i64 %i.bf to i16
  %gep93.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep92, i64 %.08094.us
  store i16 %i.bg, ptr %gep93.us, align 2
  %i.bh = add nuw nsw i64 %.08094.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %i.h
  br i1 %exitcond.not, label %.split96.us, label %do_srshr.exit87.us, !llvm.loop !878

.split96.us:                                      ; preds = %do_srshr.exit87.us, %do_srshr.exit85.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split96.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split96.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_uqrshr_dh(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 11 uses
  %i.i = ashr i32 %2, 10                          ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.m, %1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.o = icmp ugt ptr %i.n, %0
  %i.p = select i1 %.not.i, i1 %i.o, i1 false
  %spec.select = select i1 %i.p, ptr %3, ptr %0   ; 24 uses
  %i.q = icmp ult i32 %i.i, 64
  %.idx83 = mul nuw nsw i64 %i.h, 6               ; 3 uses
  %invariant.gep = getelementptr i8, ptr %spec.select, i64 %.idx83 ; 13 uses
  %.idx = lshr exact i64 %i.g, 1                  ; 9 uses
  %i.r = zext nneg i32 %i.i to i64                ; 5 uses
  %i.s = add nsw i32 %i.i, -1
  %i.t = zext nneg i32 %i.s to i64                ; 5 uses
  br i1 %i.q, label %do_urshr.exit92.us.preheader, label %.split, !prof !54

do_urshr.exit92.us.preheader:                     ; preds = %bb.a
  %min.iters.check228 = icmp samesign ult i32 %.v.v.i, 296
  br i1 %min.iters.check228, label %do_urshr.exit92.us.preheader275, label %vector.memcheck229

vector.memcheck229:                               ; preds = %do_urshr.exit92.us.preheader
  %i.u = lshr exact i64 %i.g, 2                   ; 3 uses
  %i.v = getelementptr i8, ptr %spec.select, i64 %i.u ; 5 uses
  %i.w = getelementptr i8, ptr %spec.select, i64 %.idx ; 5 uses
  %i.x = getelementptr i8, ptr %spec.select, i64 %i.u
  %i.y = getelementptr i8, ptr %i.x, i64 %.idx    ; 3 uses
  %bound0230 = icmp ult ptr %spec.select, %i.y
  %bound1231 = icmp ult ptr %i.w, %i.v
  %found.conflict232 = and i1 %bound0230, %bound1231
  %i.z = getelementptr i8, ptr %spec.select, i64 %i.u
  %i.aa = getelementptr i8, ptr %i.z, i64 %.idx83 ; 4 uses
  %bound0230.a = icmp ult ptr %spec.select, %i.aa
  %bound1231.a = icmp ult ptr %invariant.gep, %i.v
  %found.conflict232.a = and i1 %bound0230.a, %bound1231.a
  %conflict.rdx236 = or i1 %found.conflict232, %found.conflict232.a
  %4 = zext nneg i32 %.v.v.i to i64
  %5 = getelementptr i8, ptr %1, i64 %4
  %6 = getelementptr i8, ptr %5, i64 776          ; 4 uses
  %bound0237 = icmp ult ptr %spec.select, %6
  %bound1238 = icmp ult ptr %1, %i.v
  %found.conflict239 = and i1 %bound0237, %bound1238
  %conflict.rdx240 = or i1 %conflict.rdx236, %found.conflict239
  %bound0241 = icmp ult ptr %i.v, %i.aa
  %bound1242 = icmp ult ptr %invariant.gep, %i.w
  %found.conflict243 = and i1 %bound0241, %bound1242
  %conflict.rdx244 = or i1 %conflict.rdx240, %found.conflict243
  %bound0245 = icmp ult ptr %i.v, %6
  %bound1246 = icmp ult ptr %1, %i.w
  %found.conflict247 = and i1 %bound0245, %bound1246
  %conflict.rdx248 = or i1 %conflict.rdx244, %found.conflict247
  %bound0249 = icmp ult ptr %i.w, %i.aa
  %bound1250 = icmp ult ptr %invariant.gep, %i.y
  %found.conflict251 = and i1 %bound0249, %bound1250
  %conflict.rdx252 = or i1 %conflict.rdx248, %found.conflict251
  %bound0253 = icmp ult ptr %i.w, %6
  %bound1254 = icmp ult ptr %1, %i.y
  %found.conflict255 = and i1 %bound0253, %bound1254
  %conflict.rdx256 = or i1 %conflict.rdx252, %found.conflict255
  %bound0257 = icmp ult ptr %invariant.gep, %6
  %bound1258 = icmp ult ptr %1, %i.aa
  %found.conflict259 = and i1 %bound0257, %bound1258
  %conflict.rdx260 = or i1 %conflict.rdx256, %found.conflict259
  br i1 %conflict.rdx260, label %do_urshr.exit92.us.preheader275, label %vector.ph261

vector.ph261:                                     ; preds = %vector.memcheck229
  %n.vec262 = and i64 %i.h, 268435454             ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert263 = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %broadcast.splat264 = shufflevector <2 x i64> %broadcast.splatinsert263, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body265

vector.body265:                                   ; preds = %vector.body265, %vector.ph261
  %index266 = phi i64 [ 0, %vector.ph261 ], [ %index.next271, %vector.body265 ] ; 7 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index266
  %wide.load267 = load <2 x i64>, ptr %i.ab, align 8, !alias.scope !895 ; 2 uses
  %i.ac = lshr <2 x i64> %wide.load267, %broadcast.splat
  %i.ad = lshr <2 x i64> %wide.load267, %broadcast.splat264
  %i.ae = and <2 x i64> %i.ad, splat (i64 1)
  %i.af = add <2 x i64> %i.ae, %i.ac
  %i.ag = call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.af, <2 x i64> splat (i64 65535))
  %i.ah = trunc nuw <2 x i64> %i.ag to <2 x i16>
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %index266 ; 3 uses
  store <2 x i16> %i.ah, ptr %i.ai, align 2, !alias.scope !896, !noalias !897
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index266
  %wide.load268 = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !895 ; 2 uses
  %i.ak = lshr <2 x i64> %wide.load268, %broadcast.splat
  %i.al = lshr <2 x i64> %wide.load268, %broadcast.splat264
  %i.am = and <2 x i64> %i.al, splat (i64 1)
  %i.an = add <2 x i64> %i.am, %i.ak
  %i.ao = call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.an, <2 x i64> splat (i64 65535))
  %i.ap = trunc nuw <2 x i64> %i.ao to <2 x i16>
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.h
  store <2 x i16> %i.ap, ptr %i.aq, align 2, !alias.scope !898, !noalias !899
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index266
  %wide.load269 = load <2 x i64>, ptr %i.ar, align 8, !alias.scope !895 ; 2 uses
  %i.as = lshr <2 x i64> %wide.load269, %broadcast.splat
  %i.at = lshr <2 x i64> %wide.load269, %broadcast.splat264
  %i.au = and <2 x i64> %i.at, splat (i64 1)
  %i.av = add <2 x i64> %i.au, %i.as
  %i.aw = call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.av, <2 x i64> splat (i64 65535))
  %i.ax = trunc nuw <2 x i64> %i.aw to <2 x i16>
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx
  store <2 x i16> %i.ax, ptr %i.ay, align 2, !alias.scope !900, !noalias !901
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index266
  %wide.load270 = load <2 x i64>, ptr %i.az, align 8, !alias.scope !895 ; 2 uses
  %i.ba = lshr <2 x i64> %wide.load270, %broadcast.splat
  %i.bb = lshr <2 x i64> %wide.load270, %broadcast.splat264
  %i.bc = and <2 x i64> %i.bb, splat (i64 1)
  %i.bd = add <2 x i64> %i.bc, %i.ba
  %i.be = call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.bd, <2 x i64> splat (i64 65535))
  %i.bf = trunc nuw <2 x i64> %i.be to <2 x i16>
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %index266
  store <2 x i16> %i.bf, ptr %i.bg, align 2, !alias.scope !902, !noalias !895
  %index.next271 = add nuw i64 %index266, 2       ; 2 uses
  %i.bh = icmp eq i64 %index.next271, %n.vec262
  br i1 %i.bh, label %middle.block272, label %vector.body265, !llvm.loop !885

middle.block272:                                  ; preds = %vector.body265
  %cmp.n273 = icmp eq i64 %i.h, %n.vec262
  br i1 %cmp.n273, label %.split99.us, label %do_urshr.exit92.us.preheader275

do_urshr.exit92.us.preheader275:                  ; preds = %vector.memcheck229, %do_urshr.exit92.us.preheader, %middle.block272
  %.08097.us.ph = phi i64 [ 0, %vector.memcheck229 ], [ 0, %do_urshr.exit92.us.preheader ], [ %n.vec262, %middle.block272 ]
  br label %do_urshr.exit92.us

do_urshr.exit92.us:                               ; preds = %do_urshr.exit92.us.preheader275, %do_urshr.exit92.us
  %.08097.us = phi i64 [ %i.cr, %do_urshr.exit92.us ], [ %.08097.us.ph, %do_urshr.exit92.us.preheader275 ] ; 7 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.08097.us
  %i.bj = load i64, ptr %i.bi, align 8            ; 2 uses
  %i.bk = lshr i64 %i.bj, %i.r
  %i.bl = lshr i64 %i.bj, %i.t
  %i.bm = and i64 %i.bl, 1
  %i.bn = add i64 %i.bm, %i.bk
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 65535)
  %i.bp = trunc nuw i64 %i.bo to i16
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %.08097.us ; 3 uses
  store i16 %i.bp, ptr %i.bq, align 2
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.08097.us
  %i.bs = load i64, ptr %i.br, align 8            ; 2 uses
  %i.bt = lshr i64 %i.bs, %i.r
  %i.bu = lshr i64 %i.bs, %i.t
  %i.bv = and i64 %i.bu, 1
  %i.bw = add i64 %i.bv, %i.bt
  %i.bx = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 65535)
  %i.by = trunc nuw i64 %i.bx to i16
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %i.h
  store i16 %i.by, ptr %i.bz, align 2
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.08097.us
  %i.cb = load i64, ptr %i.ca, align 8            ; 2 uses
  %i.cc = lshr i64 %i.cb, %i.r
  %i.cd = lshr i64 %i.cb, %i.t
  %i.ce = and i64 %i.cd, 1
  %i.cf = add i64 %i.ce, %i.cc
  %i.cg = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 65535)
  %i.ch = trunc nuw i64 %i.cg to i16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx
  store i16 %i.ch, ptr %i.ci, align 2
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.08097.us
  %i.ck = load i64, ptr %i.cj, align 8            ; 2 uses
  %i.cl = lshr i64 %i.ck, %i.r
  %i.cm = lshr i64 %i.ck, %i.t
  %i.cn = and i64 %i.cm, 1
  %i.co = add i64 %i.cn, %i.cl
  %i.cp = tail call i64 @llvm.umin.i64(i64 %i.co, i64 65535)
  %i.cq = trunc nuw i64 %i.cp to i16
  %gep.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %.08097.us
  store i16 %i.cq, ptr %gep.us, align 2
  %i.cr = add nuw nsw i64 %.08097.us, 1           ; 2 uses
  %exitcond121.not = icmp eq i64 %i.cr, %i.h
  br i1 %exitcond121.not, label %.split99.us, label %do_urshr.exit92.us, !llvm.loop !886

.split:                                           ; preds = %bb.a
  %i.cs = icmp eq i32 %i.i, 64
  br i1 %i.cs, label %do_urshr.exit92.us100.preheader, label %do_urshr.exit92.preheader

do_urshr.exit92.us100.preheader:                  ; preds = %.split
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 216
  br i1 %min.iters.check, label %do_urshr.exit92.us100.preheader276, label %vector.memcheck

vector.memcheck:                                  ; preds = %do_urshr.exit92.us100.preheader
  %i.ct = lshr exact i64 %i.g, 2                  ; 3 uses
  %i.cu = getelementptr i8, ptr %spec.select, i64 %i.ct ; 5 uses
  %i.cv = getelementptr i8, ptr %spec.select, i64 %.idx ; 5 uses
  %i.cw = getelementptr i8, ptr %spec.select, i64 %i.ct
  %i.cx = getelementptr i8, ptr %i.cw, i64 %.idx  ; 3 uses
  %bound0 = icmp ult ptr %spec.select, %i.cx
  %bound1 = icmp ult ptr %i.cv, %i.cu
  %found.conflict = and i1 %bound0, %bound1
  %i.cy = getelementptr i8, ptr %spec.select, i64 %i.ct
  %i.cz = getelementptr i8, ptr %i.cy, i64 %.idx83 ; 4 uses
  %bound0.a = icmp ult ptr %spec.select, %i.cz
  %bound1.a = icmp ult ptr %invariant.gep, %i.cu
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict.a
  %7 = zext nneg i32 %.v.v.i to i64
  %8 = getelementptr i8, ptr %1, i64 %7
  %9 = getelementptr i8, ptr %8, i64 776          ; 4 uses
  %bound0161 = icmp ult ptr %spec.select, %9
  %bound1162 = icmp ult ptr %1, %i.cu
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx164 = or i1 %conflict.rdx, %found.conflict163
  %bound0165 = icmp ult ptr %i.cu, %i.cz
  %bound1166 = icmp ult ptr %invariant.gep, %i.cv
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx168 = or i1 %conflict.rdx164, %found.conflict167
  %bound0169 = icmp ult ptr %i.cu, %9
  %bound1170 = icmp ult ptr %1, %i.cv
  %found.conflict171 = and i1 %bound0169, %bound1170
  %conflict.rdx172 = or i1 %conflict.rdx168, %found.conflict171
  %bound0173 = icmp ult ptr %i.cv, %i.cz
  %bound1174 = icmp ult ptr %invariant.gep, %i.cx
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx176 = or i1 %conflict.rdx172, %found.conflict175
  %bound0177 = icmp ult ptr %i.cv, %9
  %bound1178 = icmp ult ptr %1, %i.cx
  %found.conflict179 = and i1 %bound0177, %bound1178
  %conflict.rdx180 = or i1 %conflict.rdx176, %found.conflict179
  %bound0181 = icmp ult ptr %invariant.gep, %9
  %bound1182 = icmp ult ptr %1, %i.cz
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx184 = or i1 %conflict.rdx180, %found.conflict183
  br i1 %conflict.rdx184, label %do_urshr.exit92.us100.preheader276, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 268435454                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %wide.load = load <2 x i64>, ptr %i.da, align 8, !alias.scope !903
  %i.db = lshr <2 x i64> %wide.load, splat (i64 63)
  %i.dc = trunc nuw nsw <2 x i64> %i.db to <2 x i16>
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %index ; 3 uses
  store <2 x i16> %i.dc, ptr %i.dd, align 2, !alias.scope !904, !noalias !905
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index
  %wide.load185 = load <2 x i64>, ptr %i.de, align 8, !alias.scope !903
  %i.df = lshr <2 x i64> %wide.load185, splat (i64 63)
  %i.dg = trunc nuw nsw <2 x i64> %i.df to <2 x i16>
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %i.h
  store <2 x i16> %i.dg, ptr %i.dh, align 2, !alias.scope !906, !noalias !907
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index
  %wide.load186 = load <2 x i64>, ptr %i.di, align 8, !alias.scope !903
  %i.dj = lshr <2 x i64> %wide.load186, splat (i64 63)
  %i.dk = trunc nuw nsw <2 x i64> %i.dj to <2 x i16>
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx
  store <2 x i16> %i.dk, ptr %i.dl, align 2, !alias.scope !908, !noalias !909
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index
  %wide.load187 = load <2 x i64>, ptr %i.dm, align 8, !alias.scope !903
  %i.dn = lshr <2 x i64> %wide.load187, splat (i64 63)
  %i.do = trunc nuw nsw <2 x i64> %i.dn to <2 x i16>
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %index
  store <2 x i16> %i.do, ptr %i.dp, align 2, !alias.scope !910, !noalias !903
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !893

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.split99.us, label %do_urshr.exit92.us100.preheader276

do_urshr.exit92.us100.preheader276:               ; preds = %vector.memcheck, %do_urshr.exit92.us100.preheader, %middle.block
  %.08097.us101.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %do_urshr.exit92.us100.preheader ], [ %n.vec, %middle.block ]
  br label %do_urshr.exit92.us100

do_urshr.exit92.preheader:                        ; preds = %.split
  %i.dr = lshr exact i64 %i.g, 2                  ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %spec.select, i8 0, i64 range(i64 0, 513) %i.dr, i1 false)
  %scevgep = getelementptr i8, ptr %spec.select, i64 %i.dr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, i8 0, i64 range(i64 0, 513) %i.dr, i1 false)
  %scevgep120 = getelementptr i8, ptr %spec.select, i64 %.idx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep120, i8 0, i64 range(i64 0, 513) %i.dr, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %invariant.gep, i8 0, i64 range(i64 0, 513) %i.dr, i1 false)
  br label %.split99.us

do_urshr.exit92.us100:                            ; preds = %do_urshr.exit92.us100.preheader276, %do_urshr.exit92.us100
  %.08097.us101 = phi i64 [ %i.el, %do_urshr.exit92.us100 ], [ %.08097.us101.ph, %do_urshr.exit92.us100.preheader276 ] ; 7 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.08097.us101
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = lshr i64 %i.dt, 63
  %i.dv = trunc nuw nsw i64 %i.du to i16
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %.08097.us101 ; 3 uses
  store i16 %i.dv, ptr %i.dw, align 2
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.08097.us101
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = lshr i64 %i.dy, 63
  %i.ea = trunc nuw nsw i64 %i.dz to i16
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.dw, i64 %i.h
  store i16 %i.ea, ptr %i.eb, align 2
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.08097.us101
  %i.ed = load i64, ptr %i.ec, align 8
  %i.ee = lshr i64 %i.ed, 63
  %i.ef = trunc nuw nsw i64 %i.ee to i16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.idx
  store i16 %i.ef, ptr %i.eg, align 2
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.08097.us101
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = lshr i64 %i.ei, 63
  %i.ek = trunc nuw nsw i64 %i.ej to i16
  %gep.us102 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %.08097.us101
  store i16 %i.ek, ptr %gep.us102, align 2
  %i.el = add nuw nsw i64 %.08097.us101, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.el, %i.h
  br i1 %exitcond.not, label %.split99.us, label %do_urshr.exit92.us100, !llvm.loop !894

.split99.us:                                      ; preds = %do_urshr.exit92.us100, %do_urshr.exit92.us, %middle.block, %middle.block272, %do_urshr.exit92.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split99.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split99.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sqrshru_dh(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 3 uses
  %i.i = ashr i32 %2, 10                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.m, %1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.o = icmp ugt ptr %i.n, %0
  %i.p = select i1 %.not.i, i1 %i.o, i1 false
  %spec.select = select i1 %i.p, ptr %3, ptr %0   ; 7 uses
  %i.q = icmp ult i32 %i.i, 64
  %.idx = lshr exact i64 %i.g, 1
  %invariant.gep = getelementptr i8, ptr %spec.select, i64 %.idx ; 2 uses
  %.idx83 = mul nuw nsw i64 %i.h, 6
  %invariant.gep92 = getelementptr i8, ptr %spec.select, i64 %.idx83 ; 2 uses
  %i.r = zext nneg i32 %i.i to i64                ; 4 uses
  %i.s = add nsw i32 %i.i, -1
  %i.t = zext nneg i32 %i.s to i64                ; 4 uses
  br i1 %i.q, label %do_srshr.exit87.us, label %do_srshr.exit85.preheader, !prof !54

do_srshr.exit85.preheader:                        ; preds = %bb.a
  %i.u = lshr exact i64 %i.g, 2                   ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %spec.select, i8 0, i64 range(i64 0, 513) %i.u, i1 false)
  %scevgep = getelementptr i8, ptr %spec.select, i64 %i.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, i8 0, i64 range(i64 0, 513) %i.u, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %invariant.gep, i8 0, i64 range(i64 0, 513) %i.u, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %invariant.gep92, i8 0, i64 range(i64 0, 513) %i.u, i1 false)
  br label %.split96.us

do_srshr.exit87.us:                               ; preds = %bb.a, %do_srshr.exit87.us
  %.08094.us = phi i64 [ %i.bh, %do_srshr.exit87.us ], [ 0, %bb.a ] ; 8 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.08094.us
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = ashr i64 %i.w, %i.r
  %i.y = lshr i64 %i.w, %i.t
  %i.z = and i64 %i.y, 1
  %i.aa = add i64 %i.z, %i.x
  %i.ab = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 0)
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 65535)
  %i.ad = trunc nuw i64 %i.ac to i16
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %.08094.us ; 2 uses
  store i16 %i.ad, ptr %i.ae, align 2
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.08094.us
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = ashr i64 %i.ag, %i.r
  %i.ai = lshr i64 %i.ag, %i.t
  %i.aj = and i64 %i.ai, 1
  %i.ak = add i64 %i.aj, %i.ah
  %i.al = tail call i64 @llvm.smax.i64(i64 %i.ak, i64 0)
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 65535)
  %i.an = trunc nuw i64 %i.am to i16
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.h
  store i16 %i.an, ptr %i.ao, align 2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.08094.us
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.ar = ashr i64 %i.aq, %i.r
  %i.as = lshr i64 %i.aq, %i.t
  %i.at = and i64 %i.as, 1
  %i.au = add i64 %i.at, %i.ar
  %i.av = tail call i64 @llvm.smax.i64(i64 %i.au, i64 0)
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.av, i64 65535)
  %i.ax = trunc nuw i64 %i.aw to i16
  %gep.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %.08094.us
  store i16 %i.ax, ptr %gep.us, align 2
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.08094.us
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = ashr i64 %i.az, %i.r
  %i.bb = lshr i64 %i.az, %i.t
  %i.bc = and i64 %i.bb, 1
  %i.bd = add i64 %i.bc, %i.ba
  %i.be = tail call i64 @llvm.smax.i64(i64 %i.bd, i64 0)
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.be, i64 65535)
  %i.bg = trunc nuw i64 %i.bf to i16
  %gep93.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep92, i64 %.08094.us
  store i16 %i.bg, ptr %gep93.us, align 2
  %i.bh = add nuw nsw i64 %.08094.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %i.h
  br i1 %exitcond.not, label %.split96.us, label %do_srshr.exit87.us, !llvm.loop !911

.split96.us:                                      ; preds = %do_srshr.exit87.us, %do_srshr.exit85.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split96.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
end_hunk_2
begin_hunk_3_@helper_sme2_sel_s:bb.a
  store i32 %i.dc, ptr %i.dd, align 4
  %indvars.iv.next241.prol = add nuw nsw i64 %indvars.iv240.prol, 1 ; 2 uses
  %prol.iter475.next = add i64 %prol.iter475, 1   ; 2 uses
  %prol.iter475.cmp.not = icmp eq i64 %prol.iter475.next, %xtraiter473
  br i1 %prol.iter475.cmp.not, label %.lr.ph204.prol.loopexit, label %.lr.ph204.prol, !llvm.loop !1038

.lr.ph204.prol.loopexit:                          ; preds = %.lr.ph204.prol, %.lr.ph204.preheader459
  %indvars.iv240.unr = phi i64 [ %indvars.iv240.ph, %.lr.ph204.preheader459 ], [ %indvars.iv.next241.prol, %.lr.ph204.prol ]
  %i.de = sub nsw i64 %indvars.iv240.ph, %i.cn
  %i.df = icmp ugt i64 %i.de, -4
  br i1 %i.df, label %.lr.ph206.preheader, label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204.prol.loopexit, %.lr.ph204
  %indvars.iv240 = phi i64 [ %indvars.iv.next241.3, %.lr.ph204 ], [ %indvars.iv240.unr, %.lr.ph204.prol.loopexit ] ; 6 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv240
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv240
  store i32 %i.dh, ptr %i.di, align 4
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.next241
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.next241
  store i32 %i.dk, ptr %i.dl, align 4
  %indvars.iv.next241.1 = add nuw nsw i64 %indvars.iv240, 2 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.next241.1
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.next241.1
  store i32 %i.dn, ptr %i.do, align 4
  %indvars.iv.next241.2 = add nuw nsw i64 %indvars.iv240, 3 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.next241.2
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.next241.2
  store i32 %i.dq, ptr %i.dr, align 4
  %indvars.iv.next241.3 = add nuw nsw i64 %indvars.iv240, 4 ; 2 uses
  %exitcond246.not.3 = icmp eq i64 %indvars.iv.next241.3, %i.cn
  br i1 %exitcond246.not.3, label %.lr.ph206.preheader, label %.lr.ph204, !llvm.loop !1039

.lr.ph206.preheader:                              ; preds = %.lr.ph204.prol.loopexit, %.lr.ph204, %middle.block449
  %i.ds = add i32 %i.am, %i.ct                    ; 2 uses
  %i.dt = zext i32 %i.ds to i64
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %min.iters.check423 = icmp ult i32 %i.ds, 7
  %or.cond455 = or i1 %min.iters.check423, %diff.check425
  br i1 %or.cond455, label %.lr.ph206.preheader458, label %vector.ph426

vector.ph426:                                     ; preds = %.lr.ph206.preheader
  %n.vec427 = and i64 %i.du, 8589934584           ; 3 uses
  %i.dv = add nuw nsw i64 %n.vec427, %i.cn
  br label %vector.body428

vector.body428:                                   ; preds = %vector.body428, %vector.ph426
  %index429 = phi i64 [ 0, %vector.ph426 ], [ %index.next432, %vector.body428 ] ; 2 uses
  %i.dw = add nuw i64 %index429, %i.cn            ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load430 = load <4 x i32>, ptr %i.dx, align 4
  %wide.load431 = load <4 x i32>, ptr %i.dy, align 4
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.dw ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <4 x i32> %wide.load430, ptr %i.dz, align 4
  store <4 x i32> %wide.load431, ptr %i.ea, align 4
  %index.next432 = add nuw i64 %index429, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next432, %n.vec427
  br i1 %i.eb, label %middle.block433, label %vector.body428, !llvm.loop !1040

middle.block433:                                  ; preds = %vector.body428
  %cmp.n434 = icmp eq i64 %i.du, %n.vec427
  br i1 %cmp.n434, label %.loopexit179, label %.lr.ph206.preheader458

.lr.ph206.preheader458:                           ; preds = %.lr.ph206.preheader, %middle.block433
  %indvars.iv250.ph = phi i64 [ %i.cn, %.lr.ph206.preheader ], [ %i.dv, %middle.block433 ]
  br label %.lr.ph206

.lr.ph206:                                        ; preds = %.lr.ph206.preheader458, %.lr.ph206
  %indvars.iv250 = phi i64 [ %indvars.iv.next251, %.lr.ph206 ], [ %indvars.iv250.ph, %.lr.ph206.preheader458 ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv250
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv250
  store i32 %i.ed, ptr %i.ee, align 4
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %i.ef = trunc nuw i64 %indvars.iv.next251 to i32
  %i.eg = icmp sgt i32 %i.l, %i.ef
  br i1 %i.eg, label %.lr.ph206, label %.loopexit179, !llvm.loop !1041

.loopexit179.sink.split:                          ; preds = %bb.f, %.lr.ph208
  %.sink296 = phi ptr [ %i.cr, %.lr.ph208 ], [ %i.cq, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cp, ptr noundef nonnull align 1 dereferenceable(1) %.sink296, i64 noundef %i.j, i1 noundef false) #15
  br label %.loopexit179

.loopexit179:                                     ; preds = %.lr.ph206, %middle.block433, %.loopexit179.sink.split
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %indvars.iv.next244 = sub i32 %indvars.iv243, %i.l
  %exitcond257.not = icmp eq i64 %indvars.iv.next254, %wide.trip.count256
  br i1 %exitcond257.not, label %.loopexit177, label %.lr.ph208, !llvm.loop !1042

bb.g:                                             ; preds = %decode_counter.exit
  %i.eh = icmp sgt i32 %i.k, 0                    ; 2 uses
  br i1 %.not298, label %.preheader187, label %.preheader184

.preheader187:                                    ; preds = %bb.g
  br i1 %i.eh, label %.lr.ph193.preheader, label %.loopexit177

.lr.ph193.preheader:                              ; preds = %.preheader187
  %i.ei = zext nneg i32 %i.l to i64               ; 4 uses
  %wide.trip.count227 = zext nneg i32 %i.k to i64
  %i.ej = sub i64 %i.b, %i.c
  %diff.check336 = icmp ugt i64 %i.ej, -32
  br label %.lr.ph193

.preheader184:                                    ; preds = %bb.g
  br i1 %i.eh, label %.lr.ph202.preheader, label %.loopexit177

.lr.ph202.preheader:                              ; preds = %.preheader184
  %i.ek = zext nneg i32 %i.l to i64               ; 2 uses
  %wide.trip.count238 = zext nneg i32 %i.k to i64
  %i.el = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.el, -32
  br label %.lr.ph202

.lr.ph202:                                        ; preds = %.lr.ph202.preheader, %._crit_edge200
  %indvars.iv235 = phi i64 [ 0, %.lr.ph202.preheader ], [ %indvars.iv.next236, %._crit_edge200 ] ; 3 uses
  %i.em = shl nuw nsw i64 %indvars.iv235, 8       ; 6 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 %i.em ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 %i.em ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 %i.em ; 4 uses
  %i.eq = trunc i64 %indvars.iv235 to i32
  %i.er = mul i32 %i.l, %i.eq
  %i.es = sub i32 %i.ah, %i.er                    ; 2 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %.lr.ph196.preheader, label %.lr.ph199.preheader

.lr.ph196.preheader:                              ; preds = %.lr.ph202
  %i.eu = tail call i32 @llvm.smin.i32(i32 %i.es, i32 %i.l) ; 2 uses
  %i.ev = zext nneg i32 %i.eu to i64              ; 3 uses
  %min.iters.check321 = icmp ult i32 %i.eu, 8
  %or.cond456 = or i1 %min.iters.check321, %diff.check
  br i1 %or.cond456, label %.lr.ph196.preheader467, label %vector.ph323

vector.ph323:                                     ; preds = %.lr.ph196.preheader
  %n.vec324 = and i64 %i.ev, 1073741816           ; 4 uses
  br label %vector.body325

vector.body325:                                   ; preds = %vector.body325, %vector.ph323
  %index326 = phi i64 [ 0, %vector.ph323 ], [ %index.next328, %vector.body325 ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %index326 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load = load <4 x i32>, ptr %i.ew, align 4
  %wide.load327 = load <4 x i32>, ptr %i.ex, align 4
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %index326 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store <4 x i32> %wide.load, ptr %i.ey, align 4
  store <4 x i32> %wide.load327, ptr %i.ez, align 4
  %index.next328 = add nuw i64 %index326, 8       ; 2 uses
  %i.fa = icmp eq i64 %index.next328, %n.vec324
  br i1 %i.fa, label %middle.block329, label %vector.body325, !llvm.loop !1043

middle.block329:                                  ; preds = %vector.body325
  %cmp.n = icmp eq i64 %n.vec324, %i.ev
  br i1 %cmp.n, label %.preheader183, label %.lr.ph196.preheader467

.lr.ph196.preheader467:                           ; preds = %.lr.ph196.preheader, %middle.block329
  %indvars.iv229.ph = phi i64 [ 0, %.lr.ph196.preheader ], [ %n.vec324, %middle.block329 ]
  br label %.lr.ph196

.preheader183:                                    ; preds = %.lr.ph196, %middle.block329
  %indvars.iv.next230.lcssa = phi i64 [ %n.vec324, %middle.block329 ], [ %indvars.iv.next230, %.lr.ph196 ] ; 2 uses
  %i.fb = trunc nuw nsw i64 %indvars.iv.next230.lcssa to i32
  %i.fc = icmp samesign ugt i32 %i.l, %i.fb
  br i1 %i.fc, label %.lr.ph199.preheader, label %._crit_edge200

.lr.ph199.preheader:                              ; preds = %.lr.ph202, %.preheader183
  %.0154.lcssa289 = phi i64 [ %indvars.iv.next230.lcssa, %.preheader183 ], [ 0, %.lr.ph202 ] ; 7 uses
  %i.fd = add nuw nsw i64 %.0154.lcssa289, 2
  %i.fe = tail call i64 @llvm.umax.i64(i64 %i.ek, i64 %i.fd)
  %i.ff = xor i64 %.0154.lcssa289, -1
  %i.fg = add i64 %i.fe, %i.ff                    ; 4 uses
  %i.fh = lshr i64 %i.fg, 1
  %i.fi = add nuw i64 %i.fh, 1
  %min.iters.check = icmp ult i64 %i.fg, 20
  br i1 %min.iters.check, label %.lr.ph199.preheader466, label %vector.memcheck

.lr.ph199.preheader466:                           ; preds = %vector.body, %vector.memcheck, %.lr.ph199.preheader
  %indvars.iv232.ph = phi i64 [ %.0154.lcssa289, %vector.memcheck ], [ %.0154.lcssa289, %.lr.ph199.preheader ], [ %i.fz, %vector.body ]
  br label %.lr.ph199

vector.memcheck:                                  ; preds = %.lr.ph199.preheader
  %i.fj = shl nuw nsw i64 %.0154.lcssa289, 2      ; 4 uses
  %i.fk = add nuw i64 %i.em, %i.fj                ; 2 uses
  %i.fl = getelementptr nuw i8, ptr %0, i64 %i.fk ; 2 uses
  %i.fm = or disjoint i64 %i.em, 8
  %i.fn = shl i64 %i.fg, 2
  %i.fo = and i64 %i.fn, -8                       ; 2 uses
  %i.fp = add i64 %i.fm, %i.fo
  %i.fq = add i64 %i.fp, %i.fj                    ; 2 uses
  %i.fr = getelementptr i8, ptr %0, i64 %i.fq     ; 2 uses
  %i.fs = getelementptr nuw i8, ptr %1, i64 %i.fk
  %i.ft = or disjoint i64 %i.em, 4                ; 2 uses
  %i.fu = getelementptr i8, ptr %1, i64 %i.ft
  %i.fv = getelementptr i8, ptr %i.fu, i64 %i.fo
  %i.fw = getelementptr i8, ptr %i.fv, i64 %i.fj
  %bound0 = icmp ult ptr %i.fl, %i.fw
  %bound1 = icmp ult ptr %i.fs, %i.fr
  %found.conflict = and i1 %bound0, %bound1
  %5 = getelementptr i8, ptr %2, i64 %i.ft
  %6 = getelementptr i8, ptr %5, i64 %i.fj
  %7 = getelementptr i8, ptr %2, i64 %i.fq
  %bound0314 = icmp ult ptr %i.fl, %7
  %bound1315 = icmp ult ptr %6, %i.fr
  %found.conflict316 = and i1 %bound0314, %bound1315
  %conflict.rdx = or i1 %found.conflict, %found.conflict316
  br i1 %conflict.rdx, label %.lr.ph199.preheader466, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fx = and i64 %i.fg, 2
  %.not452 = icmp eq i64 %i.fx, 0
  %.neg = select i1 %.not452, i64 -1, i64 -2
  %n.vec = add i64 %.neg, %i.fi                   ; 2 uses
  %i.fy = shl i64 %n.vec, 1
  %i.fz = add i64 %.0154.lcssa289, %i.fy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ga = shl nuw i64 %index, 1
  %i.gb = add nuw i64 %.0154.lcssa289, %i.ga      ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.gb
  %wide.vec = load <4 x i32>, ptr %i.gc, align 4, !alias.scope !1062
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.gb
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.gb
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %wide.vec317 = load <4 x i32>, ptr %i.gf, align 4, !alias.scope !1063
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> %wide.vec317, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  store <4 x i32> %interleaved.vec, ptr %i.gd, align 4, !alias.scope !1064, !noalias !1065
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gg = icmp eq i64 %index.next, %n.vec
  br i1 %i.gg, label %.lr.ph199.preheader466, label %vector.body, !llvm.loop !1048

.lr.ph196:                                        ; preds = %.lr.ph196.preheader467, %.lr.ph196
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %.lr.ph196 ], [ %indvars.iv229.ph, %.lr.ph196.preheader467 ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv229
  %i.gi = load i32, ptr %i.gh, align 4
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv229
  store i32 %i.gi, ptr %i.gj, align 4
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 3 uses
  %i.gk = icmp samesign ult i64 %indvars.iv.next230, %i.ev
  br i1 %i.gk, label %.lr.ph196, label %.preheader183, !llvm.loop !1049

.lr.ph199:                                        ; preds = %.lr.ph199.preheader466, %.lr.ph199
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %.lr.ph199 ], [ %indvars.iv232.ph, %.lr.ph199.preheader466 ] ; 4 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv232
  %i.gm = load i32, ptr %i.gl, align 4
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv232
  store i32 %i.gm, ptr %i.gn, align 4
  %i.go = add nuw nsw i64 %indvars.iv232, 1       ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 4
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.go
  store i32 %i.gq, ptr %i.gr, align 4
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 2 ; 2 uses
  %i.gs = icmp samesign ult i64 %indvars.iv.next233, %i.ek
  br i1 %i.gs, label %.lr.ph199, label %._crit_edge200, !llvm.loop !1050

._crit_edge200:                                   ; preds = %.lr.ph199, %.preheader183
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %exitcond239.not = icmp eq i64 %indvars.iv.next236, %wide.trip.count238
  br i1 %exitcond239.not, label %.loopexit177, label %.lr.ph202, !llvm.loop !1051

.lr.ph193:                                        ; preds = %.lr.ph193.preheader, %._crit_edge
  %indvars.iv224 = phi i64 [ 0, %.lr.ph193.preheader ], [ %indvars.iv.next225, %._crit_edge ] ; 3 uses
  %i.gt = shl nuw nsw i64 %indvars.iv224, 8       ; 5 uses
  %i.gu = getelementptr i8, ptr %0, i64 %i.gt     ; 12 uses
  %i.gv = getelementptr i8, ptr %1, i64 %i.gt     ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 %i.gt ; 9 uses
  %i.gx = trunc i64 %indvars.iv224 to i32
  %i.gy = mul i32 %i.l, %i.gx
  %i.gz = sub i32 %i.ah, %i.gy                    ; 2 uses
  %i.ha = icmp sgt i32 %i.gz, 0
  br i1 %i.ha, label %.lr.ph.preheader, label %.lr.ph191.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph193
  %i.hb = tail call i32 @llvm.smin.i32(i32 %i.gz, i32 %i.l) ; 2 uses
  %i.hc = zext nneg i32 %i.hb to i64              ; 2 uses
  %i.hd = tail call i64 @llvm.umax.i64(i64 %i.hc, i64 2)
  %i.he = add nsw i64 %i.hd, -1                   ; 2 uses
  %i.hf = lshr i64 %i.he, 1
  %i.hg = add nuw nsw i64 %i.hf, 1                ; 2 uses
  %min.iters.check362 = icmp ult i32 %i.hb, 13
  br i1 %min.iters.check362, label %.lr.ph.preheader464, label %vector.memcheck363

.lr.ph.preheader464:                              ; preds = %vector.body373, %vector.memcheck363, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck363 ], [ 0, %.lr.ph.preheader ], [ %i.hs, %vector.body373 ]
  br label %.lr.ph

vector.memcheck363:                               ; preds = %.lr.ph.preheader
  %i.hh = or disjoint i64 %i.gt, 8
  %i.hi = shl nuw nsw i64 %i.he, 2
  %i.hj = and i64 %i.hi, 9223372036854775800      ; 2 uses
  %i.hk = add nuw i64 %i.hh, %i.hj                ; 2 uses
  %i.hl = getelementptr i8, ptr %0, i64 %i.hk     ; 2 uses
  %i.hm = or disjoint i64 %i.gt, 4                ; 2 uses
  %i.hn = getelementptr i8, ptr %1, i64 %i.hm
  %i.ho = getelementptr i8, ptr %i.hn, i64 %i.hj
  %bound0364 = icmp ult ptr %i.gu, %i.ho
  %bound1365 = icmp ult ptr %i.gv, %i.hl
  %found.conflict366 = and i1 %bound0364, %bound1365
  %8 = getelementptr i8, ptr %2, i64 %i.hm
  %9 = getelementptr i8, ptr %2, i64 %i.hk
  %bound0367 = icmp ult ptr %i.gu, %9
  %bound1368 = icmp ult ptr %8, %i.hl
  %found.conflict369 = and i1 %bound0367, %bound1368
  %conflict.rdx370 = or i1 %found.conflict366, %found.conflict369
  br i1 %conflict.rdx370, label %.lr.ph.preheader464, label %vector.ph371

vector.ph371:                                     ; preds = %vector.memcheck363
  %i.hp = and i64 %i.hg, 3                        ; 2 uses
  %i.hq = icmp eq i64 %i.hp, 0
  %i.hr = select i1 %i.hq, i64 4, i64 %i.hp
  %n.vec372 = sub nsw i64 %i.hg, %i.hr            ; 2 uses
  %i.hs = shl i64 %n.vec372, 1
  br label %vector.body373

vector.body373:                                   ; preds = %vector.body373, %vector.ph371
  %index374 = phi i64 [ 0, %vector.ph371 ], [ %index.next385, %vector.body373 ] ; 2 uses
  %i.ht = shl nuw i64 %index374, 1                ; 5 uses
  %i.hu = or disjoint i64 %i.ht, 4                ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.ht
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.hu
  %wide.vec375 = load <4 x i32>, ptr %i.hv, align 4, !alias.scope !1066
  %wide.vec377 = load <4 x i32>, ptr %i.hw, align 4, !alias.scope !1066
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.ht
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.hu
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.ht
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.ht
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 20
  %wide.vec379 = load <4 x i32>, ptr %i.ia, align 4, !alias.scope !1067
  %wide.vec381 = load <4 x i32>, ptr %i.ic, align 4, !alias.scope !1067
  %interleaved.vec383 = shufflevector <4 x i32> %wide.vec375, <4 x i32> %wide.vec379, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  store <4 x i32> %interleaved.vec383, ptr %i.hx, align 4, !alias.scope !1068, !noalias !1069
  %interleaved.vec384 = shufflevector <4 x i32> %wide.vec377, <4 x i32> %wide.vec381, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  store <4 x i32> %interleaved.vec384, ptr %i.hy, align 4, !alias.scope !1068, !noalias !1069
  %index.next385 = add nuw i64 %index374, 4       ; 2 uses
  %i.id = icmp eq i64 %index.next385, %n.vec372
  br i1 %i.id, label %.lr.ph.preheader464, label %vector.body373, !llvm.loop !1056

.preheader186:                                    ; preds = %.lr.ph
  %i.ie = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.if = icmp sgt i32 %i.l, %i.ie
  br i1 %i.if, label %.lr.ph191.preheader, label %._crit_edge

.lr.ph191.preheader:                              ; preds = %.lr.ph193, %.preheader186
  %.0.lcssa291 = phi i64 [ %indvars.iv.next, %.preheader186 ], [ 0, %.lr.ph193 ] ; 4 uses
  %i.ig = sub i64 %i.ei, %.0.lcssa291             ; 3 uses
  %min.iters.check334 = icmp ult i64 %i.ig, 8
  %or.cond457 = or i1 %min.iters.check334, %diff.check336
  br i1 %or.cond457, label %.lr.ph191.preheader463, label %vector.ph337

vector.ph337:                                     ; preds = %.lr.ph191.preheader
  %n.vec338 = and i64 %i.ig, -8                   ; 3 uses
  %i.ih = add i64 %.0.lcssa291, %n.vec338
  br label %vector.body339

vector.body339:                                   ; preds = %vector.body339, %vector.ph337
  %index340 = phi i64 [ 0, %vector.ph337 ], [ %index.next343, %vector.body339 ] ; 2 uses
  %i.ii = add nuw i64 %.0.lcssa291, %index340     ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.ii ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %wide.load341 = load <4 x i32>, ptr %i.ij, align 4
  %wide.load342 = load <4 x i32>, ptr %i.ik, align 4
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.ii ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store <4 x i32> %wide.load341, ptr %i.il, align 4
  store <4 x i32> %wide.load342, ptr %i.im, align 4
  %index.next343 = add nuw i64 %index340, 8       ; 2 uses
  %i.in = icmp eq i64 %index.next343, %n.vec338
  br i1 %i.in, label %middle.block344, label %vector.body339, !llvm.loop !1057

middle.block344:                                  ; preds = %vector.body339
  %cmp.n345 = icmp eq i64 %i.ig, %n.vec338
  br i1 %cmp.n345, label %._crit_edge, label %.lr.ph191.preheader463

.lr.ph191.preheader463:                           ; preds = %.lr.ph191.preheader, %middle.block344
  %indvars.iv221.ph = phi i64 [ %.0.lcssa291, %.lr.ph191.preheader ], [ %i.ih, %middle.block344 ] ; 4 uses
  %i.io = sub i64 %i.ei, %indvars.iv221.ph
  %xtraiter = and i64 %i.io, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph191.prol.loopexit, label %.lr.ph191.prol

.lr.ph191.prol:                                   ; preds = %.lr.ph191.preheader463, %.lr.ph191.prol
  %indvars.iv221.prol = phi i64 [ %indvars.iv.next222.prol, %.lr.ph191.prol ], [ %indvars.iv221.ph, %.lr.ph191.preheader463 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph191.prol ], [ 0, %.lr.ph191.preheader463 ]
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv221.prol
  %i.iq = load i32, ptr %i.ip, align 4
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv221.prol
  store i32 %i.iq, ptr %i.ir, align 4
  %indvars.iv.next222.prol = add nuw nsw i64 %indvars.iv221.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph191.prol.loopexit, label %.lr.ph191.prol, !llvm.loop !1058

.lr.ph191.prol.loopexit:                          ; preds = %.lr.ph191.prol, %.lr.ph191.preheader463
  %indvars.iv221.unr = phi i64 [ %indvars.iv221.ph, %.lr.ph191.preheader463 ], [ %indvars.iv.next222.prol, %.lr.ph191.prol ]
  %i.is = sub i64 %indvars.iv221.ph, %i.ei
  %i.it = icmp ugt i64 %i.is, -4
  br i1 %i.it, label %._crit_edge, label %.lr.ph191

.lr.ph:                                           ; preds = %.lr.ph.preheader464, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader464 ] ; 4 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv
  %i.iv = load i32, ptr %i.iu, align 4
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv
  store i32 %i.iv, ptr %i.iw, align 4
  %i.ix = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.ix
  store i32 %i.iz, ptr %i.ja, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.jb = icmp samesign ult i64 %indvars.iv.next, %i.hc
  br i1 %i.jb, label %.lr.ph, label %.preheader186, !llvm.loop !1059

.lr.ph191:                                        ; preds = %.lr.ph191.prol.loopexit, %.lr.ph191
  %indvars.iv221 = phi i64 [ %indvars.iv.next222.3, %.lr.ph191 ], [ %indvars.iv221.unr, %.lr.ph191.prol.loopexit ] ; 6 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv221
  %i.jd = load i32, ptr %i.jc, align 4
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv221
  store i32 %i.jd, ptr %i.je, align 4
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv.next222
  %i.jg = load i32, ptr %i.jf, align 4
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next222
  store i32 %i.jg, ptr %i.jh, align 4
  %indvars.iv.next222.1 = add nuw nsw i64 %indvars.iv221, 2 ; 2 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv.next222.1
  %i.jj = load i32, ptr %i.ji, align 4
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next222.1
  store i32 %i.jj, ptr %i.jk, align 4
  %indvars.iv.next222.2 = add nuw nsw i64 %indvars.iv221, 3 ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv.next222.2
  %i.jm = load i32, ptr %i.jl, align 4
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next222.2
  store i32 %i.jm, ptr %i.jn, align 4
  %indvars.iv.next222.3 = add nuw nsw i64 %indvars.iv221, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next222.3, %i.ei
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph191, !llvm.loop !1060

._crit_edge:                                      ; preds = %.lr.ph191.prol.loopexit, %.lr.ph191, %middle.block344, %.preheader186
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count227
  br i1 %exitcond228.not, label %.loopexit177, label %.lr.ph193, !llvm.loop !1061

.loopexit177:                                     ; preds = %._crit_edge200, %._crit_edge, %.loopexit, %.loopexit179, %.preheader187, %.preheader184, %.preheader181, %.preheader176
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_sel_d(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.g = zext nneg i32 %.v.i to i64               ; 5 uses
  %i.h = ashr i32 %4, 10                          ; 4 uses
  %i.i = lshr exact i32 %.v.i, 3                  ; 6 uses
  %i.j = and i32 %3, 15
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %.preheader70, label %bb.b, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.k = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %3, i1 false) ; 5 uses
  %i.l = add nsw i64 %i.g, -1
  %i.m = tail call range(i64 53, 65) i64 @llvm.ctlz.i64(i64 range(i64 7, 2048) %i.l, i1 true)
  %i.n = add nsw i64 %i.m, -1
  %i.o = lshr exact i64 -9223372036854775808, %i.n
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 3
  %i.r = add nsw i32 %i.q, -1
  %i.s = and i32 %i.r, %3                         ; 2 uses
  %i.t = add nuw nsw i32 %i.k, 1
  %i.u = lshr i32 %i.s, %i.t                      ; 4 uses
  %i.v = and i32 %3, 32768
  %.not93 = icmp eq i32 %i.v, 0                   ; 3 uses
  %.not29.i = icmp eq i32 %i.k, 3
  br i1 %.not29.i, label %decode_counter.exit, label %bb.c, !prof !54

bb.c:                                             ; preds = %bb.b
  %i.w = icmp samesign ult i32 %i.k, 3
  br i1 %i.w, label %.split91, label %.split

.split91:                                         ; preds = %bb.c
  %i.x = sub nuw nsw i32 3, %i.k
  %i.y = lshr i32 %i.s, 4                         ; 2 uses
  %i.z = shl nuw nsw i32 %i.y, %i.x
  %i.aa = icmp ne i32 %i.u, %i.z
  %i.ab = zext i1 %i.aa to i32
  %i.ac = add nuw nsw i32 %i.y, %i.ab             ; 2 uses
  br i1 %.not93, label %.preheader70, label %.preheader

.split:                                           ; preds = %bb.c
  %i.ad = add nsw i32 %i.k, -3
  %i.ae = shl i32 %i.u, %i.ad                     ; 2 uses
  br i1 %.not93, label %.preheader70, label %.preheader
end_hunk_3
