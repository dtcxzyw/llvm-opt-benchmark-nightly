Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sme_helper?download=true
inline.NumInlined: 2089
inline.NumDeleted: 222
loop-unroll.NumCompletelyUnrolled: 108
loop-unroll.NumRuntimeUnrolled: 184
loop-unroll.NumUnrolled: 297
begin_hunk_0_@helper_sme2_uqcvt_sb:bb.a
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
  %i.v = getelementptr nuw i8, ptr %spec.select, i64 %i.q ; 2 uses
  %i.w = getelementptr i8, ptr %spec.select, i64 %i.g ; 3 uses
  %i.x = zext nneg i32 %.v.v.i to i64
  %i.y = getelementptr i8, ptr %1, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 776      ; 4 uses
  %bound0 = icmp ult ptr %spec.select, %i.u
  %bound1 = icmp samesign ult i64 %i.p, %i.h
  %found.conflict = and i1 %bound0, %bound1
  %bound0116 = icmp ult ptr %spec.select, %i.z
  %bound1117 = icmp ult ptr %1, %i.r
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %found.conflict, %found.conflict118
  %bound0120 = icmp ult ptr %i.r, %i.w
  %bound1121 = icmp samesign ult i64 %i.q, %i.p
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx123 = or i1 %conflict.rdx119, %found.conflict122
  %bound0124 = icmp ult ptr %i.r, %i.z
  %bound1125 = icmp ult ptr %1, %i.s
  %found.conflict126 = and i1 %bound0124, %bound1125
  %conflict.rdx127 = or i1 %conflict.rdx123, %found.conflict126
  %bound0128 = icmp ult ptr %i.s, %i.w
  %bound1129 = icmp ult ptr %i.v, %i.u
  %found.conflict130 = and i1 %bound0128, %bound1129
  %conflict.rdx131 = or i1 %conflict.rdx127, %found.conflict130
  %bound0132 = icmp ult ptr %i.s, %i.z
  %bound1133 = icmp ult ptr %1, %i.u
  %found.conflict134 = and i1 %bound0132, %bound1133
  %conflict.rdx135 = or i1 %conflict.rdx131, %found.conflict134
  %bound0136 = icmp ult ptr %i.v, %i.z
  %bound1137 = icmp ult ptr %1, %i.w
  %found.conflict138 = and i1 %bound0136, %bound1137
  %conflict.rdx139 = or i1 %conflict.rdx135, %found.conflict138
  br i1 %conflict.rdx139, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870908                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <4 x i32>, ptr %i.aa, align 4, !alias.scope !251
  %i.ab = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> zeroinitializer)
  %i.ac = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ab, <4 x i32> splat (i32 255))
  %i.ad = trunc nuw <4 x i32> %i.ac to <4 x i8>
  %i.ae = getelementptr inbounds nuw i8, ptr %spec.select, i64 %index ; 4 uses
  store <4 x i8> %i.ad, ptr %i.ae, align 1, !alias.scope !252, !noalias !253
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index
  %wide.load140 = load <4 x i32>, ptr %i.af, align 4, !alias.scope !251
  %i.ag = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load140, <4 x i32> zeroinitializer)
  %i.ah = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ag, <4 x i32> splat (i32 255))
  %i.ai = trunc nuw <4 x i32> %i.ah to <4 x i8>
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.h
  store <4 x i8> %i.ai, ptr %i.aj, align 1, !alias.scope !254, !noalias !255
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index
  %wide.load141 = load <4 x i32>, ptr %i.ak, align 4, !alias.scope !251
  %i.al = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load141, <4 x i32> zeroinitializer)
  %i.am = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.al, <4 x i32> splat (i32 255))
  %i.an = trunc nuw <4 x i32> %i.am to <4 x i8>
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.p
  store <4 x i8> %i.an, ptr %i.ao, align 1, !alias.scope !256, !noalias !257
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index
  %wide.load142 = load <4 x i32>, ptr %i.ap, align 4, !alias.scope !251
  %i.aq = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load142, <4 x i32> zeroinitializer)
  %i.ar = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.aq, <4 x i32> splat (i32 255))
  %i.as = trunc nuw <4 x i32> %i.ar to <4 x i8>
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.q
  store <4 x i8> %i.as, ptr %i.at, align 1, !alias.scope !258, !noalias !251
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !249

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
  %.07578 = phi i64 [ %i.bt, %scalar.ph ], [ %.07578.ph, %scalar.ph.preheader ] ; 6 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07578
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = tail call i32 @llvm.smax.i32(i32 %i.aw, i32 0)
  %i.ay = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 255)
  %i.az = trunc nuw i32 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.07578 ; 4 uses
  store i8 %i.az, ptr %i.ba, align 1
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.07578
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 0)
  %i.be = tail call i32 @llvm.umin.i32(i32 %i.bd, i32 255)
  %i.bf = trunc nuw i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.h
  store i8 %i.bf, ptr %i.bg, align 1
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.07578
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 0)
  %i.bk = tail call i32 @llvm.umin.i32(i32 %i.bj, i32 255)
  %i.bl = trunc nuw i32 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.p
  store i8 %i.bl, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.07578
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = tail call i32 @llvm.smax.i32(i32 %i.bo, i32 0)
  %i.bq = tail call i32 @llvm.umin.i32(i32 %i.bp, i32 255)
  %i.br = trunc nuw i32 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.q
  store i8 %i.br, ptr %i.bs, align 1
  %i.bt = add nuw nsw i64 %.07578, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %i.h
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
  %4 = zext nneg i32 %.v.v.i to i64
  %5 = getelementptr i8, ptr %1, i64 %4
  %i.p = getelementptr i8, ptr %5, i64 264        ; 2 uses
  %i.q = getelementptr i8, ptr %spec.select, i64 %i.g
  %bound0 = icmp ult ptr %spec.select, %i.p
  %bound1 = icmp ult ptr %1, %i.o
  %found.conflict = and i1 %bound0, %bound1
  %bound052 = icmp ult ptr %i.o, %i.p
  %bound153 = icmp ult ptr %1, %i.q
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx = or i1 %found.conflict, %found.conflict54
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870908                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <4 x i32>, ptr %i.r, align 4, !alias.scope !265
  %i.s = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> splat (i32 -32768))
  %i.t = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.s, <4 x i32> splat (i32 32767))
  %i.u = trunc nsw <4 x i32> %i.t to <4 x i16>
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %index ; 2 uses
  store <4 x i16> %i.u, ptr %i.v, align 2, !alias.scope !266, !noalias !265
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index
  %wide.load55 = load <4 x i32>, ptr %i.w, align 4, !alias.scope !265
  %i.x = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load55, <4 x i32> splat (i32 -32768))
  %i.y = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.x, <4 x i32> splat (i32 32767))
  %i.z = trunc nsw <4 x i32> %i.y to <4 x i16>
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.h
  store <4 x i16> %i.z, ptr %i.aa, align 2, !alias.scope !267, !noalias !265
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !263

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
  %.04346 = phi i64 [ %i.ao, %scalar.ph ], [ %.04346.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.04346
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 -32768)
  %i.af = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 32767)
  %i.ag = trunc nsw i32 %i.af to i16
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %.04346 ; 2 uses
  store i16 %i.ag, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.04346
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 -32768)
  %i.al = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 32767)
  %i.am = trunc nsw i32 %i.al to i16
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.h
  store i16 %i.am, ptr %i.an, align 2
  %i.ao = add nuw nsw i64 %.04346, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.h
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !264

bb.b:                                             ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_uqcvt_sh(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
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
  %i.h = lshr exact i64 %i.g, 2                   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.j, %1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.l = icmp ugt ptr %i.k, %0
  %i.m = select i1 %.not.i, i1 %i.l, i1 false
  %spec.select = select i1 %i.m, ptr %3, ptr %0   ; 8 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader.new, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.n = lshr exact i64 %i.g, 1
  %i.o = getelementptr nuw i8, ptr %spec.select, i64 %i.n ; 2 uses
  %4 = zext nneg i32 %.v.v.i to i64
  %5 = getelementptr i8, ptr %1, i64 %4
  %i.p = getelementptr i8, ptr %5, i64 264        ; 2 uses
  %i.q = getelementptr i8, ptr %spec.select, i64 %i.g
  %bound0 = icmp ult ptr %spec.select, %i.p
  %bound1 = icmp ult ptr %1, %i.o
  %found.conflict = and i1 %bound0, %bound1
  %bound052 = icmp ult ptr %i.o, %i.p
  %bound153 = icmp ult ptr %1, %i.q
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx = or i1 %found.conflict, %found.conflict54
  br i1 %conflict.rdx, label %scalar.ph.preheader.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870908                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <4 x i32>, ptr %i.r, align 4, !alias.scope !274
  %i.s = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load, <4 x i32> splat (i32 65535))
  %i.t = trunc nuw <4 x i32> %i.s to <4 x i16>
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %index ; 2 uses
  store <4 x i16> %i.t, ptr %i.u, align 2, !alias.scope !275, !noalias !274
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index
  %wide.load55 = load <4 x i32>, ptr %i.v, align 4, !alias.scope !274
  %i.w = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load55, <4 x i32> splat (i32 65535))
  %i.x = trunc nuw <4 x i32> %i.w to <4 x i16>
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.h
  store <4 x i16> %i.x, ptr %i.y, align 2, !alias.scope !276, !noalias !274
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !272

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %vector.memcheck, %bb.a, %middle.block
  %.04346.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.04346 = phi i64 [ %.04346.ph, %scalar.ph.preheader.new ], [ %i.av, %scalar.ph ] ; 5 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.04346
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 65535)
  %i.ad = trunc nuw i32 %i.ac to i16
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %.04346 ; 2 uses
  store i16 %i.ad, ptr %i.ae, align 2
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.04346
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 65535)
  %i.ai = trunc nuw i32 %i.ah to i16
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.h
  store i16 %i.ai, ptr %i.aj, align 2
  %i.ak = or disjoint i64 %.04346, 1              ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %i.an = tail call i32 @llvm.umin.i32(i32 %i.am, i32 65535)
  %i.ao = trunc nuw i32 %i.an to i16
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %i.ak ; 2 uses
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ak
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = tail call i32 @llvm.umin.i32(i32 %i.ar, i32 65535)
  %i.at = trunc nuw i32 %i.as to i16
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.h
  store i16 %i.at, ptr %i.au, align 2
  %i.av = add nuw nsw i64 %.04346, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.av, %i.h
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !273

bb.b:                                             ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sqcvtu_sh(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
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
  %4 = zext nneg i32 %.v.v.i to i64
  %5 = getelementptr i8, ptr %1, i64 %4
  %i.p = getelementptr i8, ptr %5, i64 264        ; 2 uses
  %i.q = getelementptr i8, ptr %spec.select, i64 %i.g
  %bound0 = icmp ult ptr %spec.select, %i.p
  %bound1 = icmp ult ptr %1, %i.o
  %found.conflict = and i1 %bound0, %bound1
  %bound052 = icmp ult ptr %i.o, %i.p
  %bound153 = icmp ult ptr %1, %i.q
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx = or i1 %found.conflict, %found.conflict54
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870908                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <4 x i32>, ptr %i.r, align 4, !alias.scope !283
  %i.s = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> zeroinitializer)
  %i.t = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.s, <4 x i32> splat (i32 65535))
  %i.u = trunc nuw <4 x i32> %i.t to <4 x i16>
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %index ; 2 uses
  store <4 x i16> %i.u, ptr %i.v, align 2, !alias.scope !284, !noalias !283
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index
  %wide.load55 = load <4 x i32>, ptr %i.w, align 4, !alias.scope !283
  %i.x = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load55, <4 x i32> zeroinitializer)
  %i.y = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.x, <4 x i32> splat (i32 65535))
  %i.z = trunc nuw <4 x i32> %i.y to <4 x i16>
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.h
  store <4 x i16> %i.z, ptr %i.aa, align 2, !alias.scope !285, !noalias !283
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !281

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
  %.04346 = phi i64 [ %i.ao, %scalar.ph ], [ %.04346.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.04346
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  %i.af = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 65535)
  %i.ag = trunc nuw i32 %i.af to i16
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %.04346 ; 2 uses
  store i16 %i.ag, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.04346
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 0)
  %i.al = tail call i32 @llvm.umin.i32(i32 %i.ak, i32 65535)
  %i.am = trunc nuw i32 %i.al to i16
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.h
  store i16 %i.am, ptr %i.an, align 2
  %i.ao = add nuw nsw i64 %.04346, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.h
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !282

bb.b:                                             ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sqcvt_dh(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
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
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.l, %1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.n = icmp ugt ptr %i.m, %0
  %i.o = select i1 %.not.i, i1 %i.n, i1 false
  %spec.select = select i1 %i.o, ptr %3, ptr %0   ; 3 uses
  %.idx = lshr exact i64 %i.g, 1
  %.idx78 = mul nuw nsw i64 %i.h, 6
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.c
  %.07579 = phi i64 [ 0, %bb.a ], [ %i.an, %bb.c ] ; 6 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.07579
  %i.q = load i64, ptr %i.p, align 8
  %i.r = tail call i64 @llvm.smax.i64(i64 %i.q, i64 -32768)
  %i.s = tail call i64 @llvm.smin.i64(i64 %i.r, i64 32767)
  %i.t = trunc nsw i64 %i.s to i16
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %.07579 ; 4 uses
  store i16 %i.t, ptr %i.u, align 2
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.07579
  %i.w = load i64, ptr %i.v, align 8
  %i.x = tail call i64 @llvm.smax.i64(i64 %i.w, i64 -32768)
  %i.y = tail call i64 @llvm.smin.i64(i64 %i.x, i64 32767)
  %i.z = trunc nsw i64 %i.y to i16
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.h
  store i16 %i.z, ptr %i.aa, align 2
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.07579
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = tail call i64 @llvm.smax.i64(i64 %i.ac, i64 -32768)
  %i.ae = tail call i64 @llvm.smin.i64(i64 %i.ad, i64 32767)
  %i.af = trunc nsw i64 %i.ae to i16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  store i16 %i.af, ptr %i.ag, align 2
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.07579
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = tail call i64 @llvm.smax.i64(i64 %i.ai, i64 -32768)
  %i.ak = tail call i64 @llvm.smin.i64(i64 %i.aj, i64 32767)
  %i.al = trunc nsw i64 %i.ak to i16
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx78
  store i16 %i.al, ptr %i.am, align 2
  %i.an = add nuw nsw i64 %.07579, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %i.h
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !286

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_uqcvt_dh(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
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
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.l, %1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.n = icmp ugt ptr %i.m, %0
  %i.o = select i1 %.not.i, i1 %i.n, i1 false
  %spec.select = select i1 %i.o, ptr %3, ptr %0   ; 3 uses
  %.idx = lshr exact i64 %i.g, 1
  %.idx78 = mul nuw nsw i64 %i.h, 6
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.c
  %.07579 = phi i64 [ 0, %bb.a ], [ %i.aj, %bb.c ] ; 6 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.07579
  %i.q = load i64, ptr %i.p, align 8
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.q, i64 65535)
  %i.s = trunc nuw i64 %i.r to i16
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %.07579 ; 4 uses
  store i16 %i.s, ptr %i.t, align 2
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.07579
  %i.v = load i64, ptr %i.u, align 8
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 65535)
  %i.x = trunc nuw i64 %i.w to i16
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.h
  store i16 %i.x, ptr %i.y, align 2
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.07579
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 65535)
  %i.ac = trunc nuw i64 %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  store i16 %i.ac, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.07579
  %i.af = load i64, ptr %i.ae, align 8
end_hunk_0
begin_hunk_1_@helper_sme2_uzp4_q:bb.a
  %i.z = add nuw nsw i64 %.040.1, 1               ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.z, %i.h
  br i1 %exitcond.1.not, label %._crit_edge.1, label %._crit_edge, !llvm.loop !863

._crit_edge.1:                                    ; preds = %._crit_edge
  %i.aa = shl nuw nsw i64 %i.h, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %._crit_edge.1
  %.040.2 = phi i64 [ 0, %._crit_edge.1 ], [ %i.ao, %bb.d ] ; 3 uses
  %.idx.2 = shl nuw nsw i64 %.040.2, 6
  %i.ab = getelementptr inbounds nuw i8, ptr %.038.sroa.phi, i64 %.idx.2 ; 4 uses
  %i.ac = load i128, ptr %i.ab, align 16
  %i.ad = add nuw nsw i64 %.040.2, %i.aa          ; 4 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ad
  store i128 %i.ac, ptr %i.ae, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ag = load i128, ptr %i.af, align 16
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.ad
  store i128 %i.ag, ptr %i.ah, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.aj = load i128, ptr %i.ai, align 16
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.ad
  store i128 %i.aj, ptr %i.ak, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.am = load i128, ptr %i.al, align 16
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.ad
  store i128 %i.am, ptr %i.an, align 16
  %i.ao = add nuw nsw i64 %.040.2, 1              ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.ao, %i.h
  br i1 %exitcond.2.not, label %._crit_edge.2, label %bb.d, !llvm.loop !863

._crit_edge.2:                                    ; preds = %bb.d
  %i.ap = mul nuw nsw i64 %i.h, 3
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %._crit_edge.2
  %.040.3 = phi i64 [ 0, %._crit_edge.2 ], [ %i.bd, %bb.e ] ; 3 uses
  %.idx.3 = shl nuw nsw i64 %.040.3, 6
  %i.aq = getelementptr inbounds nuw i8, ptr %.038.sroa.phi56, i64 %.idx.3 ; 4 uses
  %i.ar = load i128, ptr %i.aq, align 16
  %i.as = add nuw nsw i64 %.040.3, %i.ap          ; 4 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.as
  store i128 %i.ar, ptr %i.at, align 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = load i128, ptr %i.au, align 16
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.as
  store i128 %i.av, ptr %i.aw, align 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.ay = load i128, ptr %i.ax, align 16
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.as
  store i128 %i.ay, ptr %i.az, align 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.bb = load i128, ptr %i.ba, align 16
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.as
  store i128 %i.bb, ptr %i.bc, align 16
  %i.bd = add nuw nsw i64 %.040.3, 1              ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.bd, %i.h
  br i1 %exitcond.3.not, label %.split42, label %bb.e, !llvm.loop !863

.lr.ph.preheader:                                 ; preds = %bb.c, %.lr.ph.preheader
  %.040 = phi i64 [ %i.bq, %.lr.ph.preheader ], [ 0, %bb.c ] ; 6 uses
  %.idx = shl nuw nsw i64 %.040, 6
  %i.be = getelementptr inbounds nuw i8, ptr %.038, i64 %.idx ; 4 uses
  %i.bf = load i128, ptr %i.be, align 16
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.040
  store i128 %i.bf, ptr %i.bg, align 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bi = load i128, ptr %i.bh, align 16
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.040
  store i128 %i.bi, ptr %i.bj, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bl = load i128, ptr %i.bk, align 16
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.040
  store i128 %i.bl, ptr %i.bm, align 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bo = load i128, ptr %i.bn, align 16
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.040
  store i128 %i.bo, ptr %i.bp, align 16
  %i.bq = add nuw nsw i64 %.040, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bq, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.preheader, !llvm.loop !863
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sqrshr_sh(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
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
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 2 uses
  %i.i = ashr i32 %2, 10                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.k, %1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.m = icmp ugt ptr %i.l, %0
  %i.n = select i1 %.not.i, i1 %i.m, i1 false
  %spec.select = select i1 %i.n, ptr %3, ptr %0   ; 5 uses
  %i.o = icmp ult i32 %i.i, 64
  %invariant.gep = getelementptr [2 x i8], ptr %spec.select, i64 %i.h ; 2 uses
  %i.p = zext nneg i32 %i.i to i64                ; 2 uses
  %i.q = add nsw i32 %i.i, -1
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  br i1 %i.o, label %do_srshr.exit50.us, label %do_srshr.exit.preheader, !prof !54

do_srshr.exit.preheader:                          ; preds = %bb.a
  %i.s = lshr exact i64 %i.g, 1                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %spec.select, i8 0, i64 range(i64 0, 1025) %i.s, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %invariant.gep, i8 0, i64 range(i64 0, 1025) %i.s, i1 false)
  br label %.split54.us

do_srshr.exit50.us:                               ; preds = %bb.a, %do_srshr.exit50.us
  %.04652.us = phi i64 [ %i.ao, %do_srshr.exit50.us ], [ 0, %bb.a ] ; 5 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.04652.us
  %i.u = load i32, ptr %i.t, align 4
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = ashr i64 %i.v, %i.p
  %i.x = lshr i64 %i.v, %i.r
  %i.y = and i64 %i.x, 1
  %i.z = add nsw i64 %i.y, %i.w
  %i.aa = tail call i64 @llvm.smax.i64(i64 %i.z, i64 -32768)
  %i.ab = tail call i64 @llvm.smin.i64(i64 %i.aa, i64 32767)
  %i.ac = trunc nsw i64 %i.ab to i16
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %.04652.us
  store i16 %i.ac, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.04652.us
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = ashr i64 %i.ag, %i.p
  %i.ai = lshr i64 %i.ag, %i.r
  %i.aj = and i64 %i.ai, 1
  %i.ak = add nsw i64 %i.aj, %i.ah
  %i.al = tail call i64 @llvm.smax.i64(i64 %i.ak, i64 -32768)
  %i.am = tail call i64 @llvm.smin.i64(i64 %i.al, i64 32767)
  %i.an = trunc nsw i64 %i.am to i16
  %gep.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %.04652.us
  store i16 %i.an, ptr %gep.us, align 2
  %i.ao = add nuw nsw i64 %.04652.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.h
  br i1 %exitcond.not, label %.split54.us, label %do_srshr.exit50.us, !llvm.loop !864

.split54.us:                                      ; preds = %do_srshr.exit50.us, %do_srshr.exit.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split54.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split54.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_uqrshr_sh(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
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
  %i.h = lshr exact i64 %i.g, 2                   ; 4 uses
  %i.i = ashr i32 %2, 10                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.k, %1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.m = icmp ugt ptr %i.l, %0
  %i.n = select i1 %.not.i, i1 %i.m, i1 false
  %spec.select = select i1 %i.n, ptr %3, ptr %0   ; 8 uses
  %i.o = icmp ult i32 %i.i, 64
  %invariant.gep = getelementptr [2 x i8], ptr %spec.select, i64 %i.h ; 5 uses
  %i.p = zext nneg i32 %i.i to i64                ; 3 uses
  %i.q = add nsw i32 %i.i, -1
  %i.r = zext nneg i32 %i.q to i64                ; 3 uses
  br i1 %i.o, label %do_urshr.exit51.us.preheader, label %do_urshr.exit51.preheader, !prof !54

do_urshr.exit51.us.preheader:                     ; preds = %bb.a
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %do_urshr.exit51.us.preheader67, label %vector.memcheck

vector.memcheck:                                  ; preds = %do_urshr.exit51.us.preheader
  %4 = zext nneg i32 %.v.v.i to i64
  %5 = getelementptr i8, ptr %1, i64 %4
  %i.s = getelementptr i8, ptr %5, i64 264        ; 2 uses
  %i.t = getelementptr i8, ptr %spec.select, i64 %i.g
  %bound0 = icmp ult ptr %spec.select, %i.s
  %bound1 = icmp ult ptr %1, %invariant.gep
  %found.conflict = and i1 %bound0, %bound1
  %bound061 = icmp ult ptr %invariant.gep, %i.s
  %bound162 = icmp ult ptr %1, %i.t
  %found.conflict63 = and i1 %bound061, %bound162
  %conflict.rdx = or i1 %found.conflict, %found.conflict63
  br i1 %conflict.rdx, label %do_urshr.exit51.us.preheader67, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870908                ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.p, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert64 = insertelement <4 x i64> poison, i64 %i.r, i64 0
  %broadcast.splat65 = shufflevector <4 x i64> %broadcast.splatinsert64, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <4 x i32>, ptr %i.u, align 4, !alias.scope !871
  %i.v = zext <4 x i32> %wide.load to <4 x i64>   ; 2 uses
  %i.w = lshr <4 x i64> %i.v, %broadcast.splat
  %i.x = lshr <4 x i64> %i.v, %broadcast.splat65
  %i.y = and <4 x i64> %i.x, splat (i64 1)
  %i.z = add nuw nsw <4 x i64> %i.y, %i.w
  %i.aa = call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.z, <4 x i64> splat (i64 65535))
  %i.ab = trunc nuw <4 x i64> %i.aa to <4 x i16>
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %index
  store <4 x i16> %i.ab, ptr %i.ac, align 2, !alias.scope !872, !noalias !871
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index
  %wide.load66 = load <4 x i32>, ptr %i.ad, align 4, !alias.scope !871
  %i.ae = zext <4 x i32> %wide.load66 to <4 x i64> ; 2 uses
  %i.af = lshr <4 x i64> %i.ae, %broadcast.splat
  %i.ag = lshr <4 x i64> %i.ae, %broadcast.splat65
  %i.ah = and <4 x i64> %i.ag, splat (i64 1)
  %i.ai = add nuw nsw <4 x i64> %i.ah, %i.af
  %i.aj = call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.ai, <4 x i64> splat (i64 65535))
  %i.ak = trunc nuw <4 x i64> %i.aj to <4 x i16>
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %index
  store <4 x i16> %i.ak, ptr %i.al, align 2, !alias.scope !873, !noalias !871
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !869

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.split55.us, label %do_urshr.exit51.us.preheader67

do_urshr.exit51.us.preheader67:                   ; preds = %vector.memcheck, %do_urshr.exit51.us.preheader, %middle.block
  %.04653.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %do_urshr.exit51.us.preheader ], [ %n.vec, %middle.block ]
  br label %do_urshr.exit51.us

do_urshr.exit51.preheader:                        ; preds = %bb.a
  %i.an = lshr exact i64 %i.g, 1                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %spec.select, i8 0, i64 range(i64 0, 1025) %i.an, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %invariant.gep, i8 0, i64 range(i64 0, 1025) %i.an, i1 false)
  br label %.split55.us

do_urshr.exit51.us:                               ; preds = %do_urshr.exit51.us.preheader67, %do_urshr.exit51.us
  %.04653.us = phi i64 [ %i.bh, %do_urshr.exit51.us ], [ %.04653.us.ph, %do_urshr.exit51.us.preheader67 ] ; 5 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.04653.us
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, %i.p
  %i.as = lshr i64 %i.aq, %i.r
  %i.at = and i64 %i.as, 1
  %i.au = add nuw nsw i64 %i.at, %i.ar
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.au, i64 65535)
  %i.aw = trunc nuw i64 %i.av to i16
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %.04653.us
  store i16 %i.aw, ptr %i.ax, align 2
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.04653.us
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = lshr i64 %i.ba, %i.p
  %i.bc = lshr i64 %i.ba, %i.r
  %i.bd = and i64 %i.bc, 1
  %i.be = add nuw nsw i64 %i.bd, %i.bb
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.be, i64 65535)
  %i.bg = trunc nuw i64 %i.bf to i16
  %gep.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %.04653.us
  store i16 %i.bg, ptr %gep.us, align 2
  %i.bh = add nuw nsw i64 %.04653.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %i.h
  br i1 %exitcond.not, label %.split55.us, label %do_urshr.exit51.us, !llvm.loop !870

.split55.us:                                      ; preds = %do_urshr.exit51.us, %middle.block, %do_urshr.exit51.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split55.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split55.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sqrshru_sh(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
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
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 2 uses
  %i.i = ashr i32 %2, 10                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.k, %1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.m = icmp ugt ptr %i.l, %0
  %i.n = select i1 %.not.i, i1 %i.m, i1 false
  %spec.select = select i1 %i.n, ptr %3, ptr %0   ; 5 uses
  %i.o = icmp ult i32 %i.i, 64
  %invariant.gep = getelementptr [2 x i8], ptr %spec.select, i64 %i.h ; 2 uses
  %i.p = zext nneg i32 %i.i to i64                ; 2 uses
  %i.q = add nsw i32 %i.i, -1
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  br i1 %i.o, label %do_srshr.exit50.us, label %do_srshr.exit.preheader, !prof !54

do_srshr.exit.preheader:                          ; preds = %bb.a
  %i.s = lshr exact i64 %i.g, 1                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %spec.select, i8 0, i64 range(i64 0, 1025) %i.s, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %invariant.gep, i8 0, i64 range(i64 0, 1025) %i.s, i1 false)
  br label %.split54.us

do_srshr.exit50.us:                               ; preds = %bb.a, %do_srshr.exit50.us
  %.04652.us = phi i64 [ %i.ao, %do_srshr.exit50.us ], [ 0, %bb.a ] ; 5 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.04652.us
  %i.u = load i32, ptr %i.t, align 4
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = ashr i64 %i.v, %i.p
  %i.x = lshr i64 %i.v, %i.r
  %i.y = and i64 %i.x, 1
  %i.z = add nsw i64 %i.y, %i.w
  %i.aa = tail call i64 @llvm.smax.i64(i64 %i.z, i64 0)
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 65535)
  %i.ac = trunc nuw i64 %i.ab to i16
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %.04652.us
  store i16 %i.ac, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.04652.us
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = ashr i64 %i.ag, %i.p
  %i.ai = lshr i64 %i.ag, %i.r
  %i.aj = and i64 %i.ai, 1
  %i.ak = add nsw i64 %i.aj, %i.ah
  %i.al = tail call i64 @llvm.smax.i64(i64 %i.ak, i64 0)
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 65535)
  %i.an = trunc nuw i64 %i.am to i16
  %gep.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %.04652.us
  store i16 %i.an, ptr %gep.us, align 2
  %i.ao = add nuw nsw i64 %.04652.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.h
  br i1 %exitcond.not, label %.split54.us, label %do_srshr.exit50.us, !llvm.loop !874

.split54.us:                                      ; preds = %do_srshr.exit50.us, %do_srshr.exit.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split54.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split54.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sqrshr_sb(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
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
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 8 uses
  %i.i = ashr i32 %2, 10                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.m, %1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.o = icmp ugt ptr %i.n, %0
  %i.p = select i1 %.not.i, i1 %i.o, i1 false
end_hunk_1
