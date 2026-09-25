Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/neon_helper?download=true
inline.NumInlined: 278
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 44
begin_hunk_0_@helper_neon_qrshl_s32:bb.a
  %i.i = icmp samesign ult i32 %i.a, 32
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = shl i32 %1, %i.a                         ; 2 uses
  %i.k = ashr exact i32 %i.j, %i.a
  %i.l = icmp eq i32 %i.k, %1
  br i1 %i.l, label %do_sqrshl_bhs.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = icmp eq i32 %1, 0
  br i1 %i.m, label %do_sqrshl_bhs.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 1, ptr %i.b, align 4
  %i.n = icmp sgt i32 %1, -1
  %i.o = select i1 %i.n, i32 2147483647, i32 -2147483648
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.a, %bb.c, %bb.e, %bb.f, %bb.g
  %.3.i = phi i32 [ %i.o, %bb.g ], [ 0, %bb.f ], [ %i.h, %bb.c ], [ %i.j, %bb.e ], [ 0, %bb.a ]
  ret i32 %.3.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i64 @helper_neon_qrshl_s64(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %sext = shl i64 %2, 56
  %i.a = ashr exact i64 %sext, 56                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12656
  %i.c = icmp slt i64 %i.a, -63
  br i1 %i.c, label %do_sqrshl_d.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %i.a, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = xor i64 %i.a, -1
  %i.f = ashr i64 %1, %i.e                        ; 2 uses
  %i.g = ashr i64 %i.f, 1
  %i.h = and i64 %i.f, 1
  %i.i = add nsw i64 %i.g, %i.h
  br label %do_sqrshl_d.exit

bb.d:                                             ; preds = %bb.b
  %i.j = icmp samesign ult i64 %i.a, 64
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = shl i64 %1, %i.a                         ; 2 uses
  %i.l = ashr exact i64 %i.k, %i.a
  %i.m = icmp eq i64 %i.l, %1
  br i1 %i.m, label %do_sqrshl_d.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %1, 0
  br i1 %i.n, label %do_sqrshl_d.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 1, ptr %i.b, align 4
  %i.o = icmp slt i64 %1, 0
  %i.p = select i1 %i.o, i64 -9223372036854775808, i64 9223372036854775807
  br label %do_sqrshl_d.exit

do_sqrshl_d.exit:                                 ; preds = %bb.a, %bb.c, %bb.e, %bb.f, %bb.g
  %.1.i = phi i64 [ %i.p, %bb.g ], [ 0, %bb.f ], [ %i.i, %bb.c ], [ %i.k, %bb.e ], [ 0, %bb.a ]
  ret i64 %.1.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_neon_add_u8(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = xor i32 %1, %0
  %i.b = and i32 %i.a, -2139062144
  %i.c = and i32 %0, 2139062143
  %i.d = and i32 %1, 2139062143
  %i.e = add nuw i32 %i.d, %i.c
  %i.f = xor i32 %i.e, %i.b
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_neon_add_u16(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = xor i32 %1, %0
  %i.b = and i32 %i.a, -2147450880
  %i.c = and i32 %0, 2147450879
  %i.d = and i32 %1, 2147450879
  %i.e = add nuw i32 %i.d, %i.c
  %i.f = xor i32 %i.e, %i.b
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_neon_sub_u8(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = insertelement <4 x i32> poison, i32 %1, i64 0
  %i.b = shufflevector <4 x i32> %i.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.c = and <4 x i32> %i.b, <i32 16711680, i32 -1, i32 -16777216, i32 65280>
  %i.d = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.e = shufflevector <4 x i32> %i.d, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.f = sub <4 x i32> %i.e, %i.c
  %i.g = and <4 x i32> %i.f, <i32 16711680, i32 255, i32 -16777216, i32 65280>
  %i.h = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.g)
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_neon_sub_u16(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.sroa.55.0.extract.shift = and i32 %1, -65536
  %i.a = sub i32 %0, %1
  %.sroa.57.0.extract.shift10 = sub i32 %0, %.sroa.55.0.extract.shift
  %.sroa.5.0.insert.ext = and i32 %.sroa.57.0.extract.shift10, -65536
  %.sroa.03.0.insert.ext = and i32 %i.a, 65535
  %.sroa.03.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.ext, %.sroa.03.0.insert.ext
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_neon_mul_u8(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.sroa.59.0.extract.shift = and i32 %0, 65280
  %.sroa.610.0.extract.shift = and i32 %0, 16711680
  %.sroa.711.0.extract.shift = and i32 %0, -16777216
  %.sroa.55.0.extract.shift = lshr i32 %1, 8
  %.sroa.66.0.extract.shift = lshr i32 %1, 16
  %.sroa.77.0.extract.shift = lshr i32 %1, 24
  %i.a = mul i32 %1, %0
  %.sroa.7.0.insert.ext = mul i32 %.sroa.711.0.extract.shift, %.sroa.77.0.extract.shift
  %.sroa.6.0.insert.ext = mul i32 %.sroa.610.0.extract.shift, %.sroa.66.0.extract.shift
  %.sroa.6.0.insert.shift = and i32 %.sroa.6.0.insert.ext, 16711680
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.shift, %.sroa.7.0.insert.ext
  %.sroa.5.0.insert.ext = mul i32 %.sroa.59.0.extract.shift, %.sroa.55.0.extract.shift
  %.sroa.5.0.insert.shift = and i32 %.sroa.5.0.insert.ext, 65280
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.03.0.insert.ext = and i32 %i.a, 255
  %.sroa.03.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.03.0.insert.ext
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_neon_mul_u16(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.sroa.57.0.extract.shift = and i32 %0, -65536
  %.sroa.55.0.extract.shift = lshr i32 %1, 16
  %i.a = mul i32 %1, %0
  %.sroa.5.0.insert.ext = mul i32 %.sroa.57.0.extract.shift, %.sroa.55.0.extract.shift
  %.sroa.03.0.insert.ext = and i32 %i.a, 65535
  %.sroa.03.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.ext, %.sroa.03.0.insert.ext
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 -16777216, 16777216) i32 @helper_neon_tst_u8(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, %0                           ; 4 uses
  %i.b = and i32 %i.a, 255
  %.not.not = icmp eq i32 %i.b, 0
  %i.c = and i32 %i.a, 65280
  %.not14.not = icmp eq i32 %i.c, 0
  %i.d = and i32 %i.a, 16711680
  %.not15.not = icmp eq i32 %i.d, 0
  %.not17 = icmp ugt i32 %i.a, 16777215
  %.sroa.7.0.insert.ext = select i1 %.not17, i32 -16777216, i32 0
  %.sroa.6.0.insert.ext = select i1 %.not15.not, i32 0, i32 16711680
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.ext, %.sroa.7.0.insert.ext
  %.sroa.5.0.insert.ext = select i1 %.not14.not, i32 0, i32 65280
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.ext
  %.sroa.03.0.insert.ext = select i1 %.not.not, i32 0, i32 255
  %.sroa.03.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.03.0.insert.ext
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 -65536, 65536) i32 @helper_neon_tst_u16(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, %0                           ; 2 uses
  %i.b = and i32 %i.a, 65535
  %.not.not = icmp eq i32 %i.b, 0
  %.not11 = icmp ugt i32 %i.a, 65535
  %.sroa.5.0.insert.ext = select i1 %.not11, i32 -65536, i32 0
  %.sroa.03.0.insert.ext = select i1 %.not.not, i32 0, i32 65535
  %.sroa.03.0.insert.insert = or disjoint i32 %.sroa.03.0.insert.ext, %.sroa.5.0.insert.ext
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 -1, 1) i32 @helper_neon_tst_u32(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, %0
  %.not = icmp ne i32 %i.a, 0
  %i.b = sext i1 %.not to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 134744073) i32 @helper_neon_clz_u8(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.03.0.extract.trunc = trunc i32 %0 to i8
  %.sroa.54.0.extract.shift = lshr i32 %0, 8
  %.sroa.54.0.extract.trunc = trunc i32 %.sroa.54.0.extract.shift to i8
  %.sroa.65.0.extract.shift = lshr i32 %0, 16
  %.sroa.65.0.extract.trunc = trunc i32 %.sroa.65.0.extract.shift to i8
  %.sroa.76.0.extract.shift = lshr i32 %0, 24
  %.sroa.76.0.extract.trunc = trunc nuw i32 %.sroa.76.0.extract.shift to i8
  %1 = tail call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %.sroa.03.0.extract.trunc, i1 false)
  %2 = zext nneg i8 %1 to i32
  %3 = tail call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %.sroa.54.0.extract.trunc, i1 false)
  %4 = zext nneg i8 %3 to i32
  %5 = tail call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %.sroa.65.0.extract.trunc, i1 false)
  %6 = zext nneg i8 %5 to i32
  %7 = tail call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %.sroa.76.0.extract.trunc, i1 false)
  %8 = zext nneg i8 %7 to i32
  %.sroa.7.0.insert.ext = shl nuw nsw i32 %8, 24
  %.sroa.6.0.insert.ext = shl nuw nsw i32 %6, 16
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.7.0.insert.ext, %.sroa.6.0.insert.ext
  %.sroa.5.0.insert.ext = shl nuw nsw i32 %4, 8
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.ext
  %.sroa.02.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %2
  ret i32 %.sroa.02.0.insert.insert
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 1048593) i32 @helper_neon_clz_u16(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.03.0.extract.trunc = trunc i32 %0 to i16
  %.sroa.54.0.extract.shift = lshr i32 %0, 16
  %.sroa.54.0.extract.trunc = trunc nuw i32 %.sroa.54.0.extract.shift to i16
  %i.a = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %.sroa.03.0.extract.trunc, i1 false)
  %i.b = zext nneg i16 %i.a to i32
  %i.c = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %.sroa.54.0.extract.trunc, i1 false)
  %i.d = zext nneg i16 %i.c to i32
  %.sroa.5.0.insert.ext = shl nuw nsw i32 %i.d, 16
  %.sroa.02.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.ext, %i.b
  ret i32 %.sroa.02.0.insert.insert
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 -16777216, 134217728) i32 @helper_neon_cls_s8(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %sext = shl i32 %0, 24
  %.lobit = ashr i32 %sext, 31
  %i.a = xor i32 %.lobit, %0
  %i.b = trunc i32 %i.a to i8
  %i.c = tail call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %i.b, i1 false)
  %i.d = shl i32 %0, 16                           ; 2 uses
  %i.e = lshr i32 %i.d, 24
  %.lobit23 = ashr i32 %i.d, 31
  %i.f = xor i32 %i.e, %.lobit23
  %i.g = trunc i32 %i.f to i8
  %i.h = tail call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %i.g, i1 false)
  %i.i = zext nneg i8 %i.h to i32
  %i.j = shl i32 %0, 8                            ; 2 uses
  %i.k = lshr i32 %i.j, 24
  %.lobit25 = ashr i32 %i.j, 31
  %i.l = xor i32 %i.k, %.lobit25
  %i.m = trunc i32 %i.l to i8
  %i.n = tail call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %i.m, i1 false)
  %i.o = zext nneg i8 %i.n to i32
  %i.p = lshr i32 %0, 24
  %.lobit27 = ashr i32 %0, 31
  %i.q = xor i32 %i.p, %.lobit27
  %i.r = trunc i32 %i.q to i8
  %i.s = tail call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %i.r, i1 false)
  %i.t = zext nneg i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 24
  %.sroa.7.0.insert.ext = add nsw i32 %i.u, -16777216
  %i.v = shl nuw nsw i32 %i.o, 16
  %.sroa.6.0.insert.ext = add nuw nsw i32 %i.v, 16711680
  %.sroa.6.0.insert.shift = and i32 %.sroa.6.0.insert.ext, 16711680
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.shift, %.sroa.7.0.insert.ext
  %i.w = shl nuw nsw i32 %i.i, 8
  %.sroa.5.0.insert.ext = add nuw nsw i32 %i.w, 65280
  %.sroa.5.0.insert.shift = and i32 %.sroa.5.0.insert.ext, 65280
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %i.x = add nsw i8 %i.c, -1
  %.sroa.02.0.insert.ext = zext i8 %i.x to i32
  %.sroa.02.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.02.0.insert.ext
  ret i32 %.sroa.02.0.insert.insert
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 -65536, 1048576) i32 @helper_neon_cls_s16(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %sext = shl i32 %0, 16
  %.lobit = ashr i32 %sext, 31
  %i.a = xor i32 %.lobit, %0
  %i.b = trunc i32 %i.a to i16
  %i.c = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.b, i1 false)
  %i.d = zext nneg i16 %i.c to i32
  %i.e = add nuw nsw i32 %i.d, 65535
  %i.f = lshr i32 %0, 16
  %.lobit14 = ashr i32 %0, 31
  %i.g = xor i32 %i.f, %.lobit14
  %i.h = trunc i32 %i.g to i16
  %i.i = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.h, i1 false)
  %i.j = zext nneg i16 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 16
  %i.l = or i32 %i.e, -65536
  %.sroa.02.0.insert.insert = add nsw i32 %i.l, %i.k
  ret i32 %.sroa.02.0.insert.insert
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(none) uwtable
define dso_local range(i32 2147483647, 2147483645) i32 @helper_neon_cls_s32(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %.lobit = ashr i32 %0, 31                       ; 2 uses
  %.not9 = icmp eq i32 %.lobit, %0
  br i1 %.not9, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %spec.select = xor i32 %.lobit, %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.011 = phi i32 [ %i.b, %.lr.ph ], [ 32, %.lr.ph.preheader ] ; 2 uses
  %.110 = phi i32 [ %i.a, %.lr.ph ], [ %spec.select, %.lr.ph.preheader ]
  %i.a = lshr i32 %.110, 1                        ; 2 uses
  %i.b = add nsw i32 %.011, -1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !323

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.c = add i32 %.011, -2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 31, %bb.a ], [ %i.c, %._crit_edge.loopexit ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qdmulh_s16(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %sext = shl i32 %1, 16
  %i.a = ashr exact i32 %sext, 16
  %sext22 = shl i32 %2, 16
  %i.b = ashr exact i32 %sext22, 16
  %i.c = mul nsw i32 %i.b, %i.a                   ; 2 uses
  %i.d = shl i32 %i.c, 1                          ; 2 uses
  %i.e = xor i32 %i.d, %i.c
  %.not = icmp sgt i32 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.f, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.021 = phi i32 [ 2147483647, %bb.b ], [ %i.d, %bb.a ]
  %i.g = ashr i32 %1, 16
  %i.h = ashr i32 %2, 16
  %i.i = mul nsw i32 %i.h, %i.g                   ; 2 uses
  %i.j = shl i32 %i.i, 1                          ; 2 uses
  %i.k = xor i32 %i.j, %i.i
  %.not25 = icmp sgt i32 %i.k, -1
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.l, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ 2147483647, %bb.d ], [ %i.j, %bb.c ]
  %i.m = lshr i32 %.021, 16
  %.sroa.5.0.insert.shift = and i32 %.0, -65536
  %.sroa.012.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.shift, %i.m
  ret i32 %.sroa.012.0.insert.insert
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qrdmulh_s16(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %sext = shl i32 %1, 16
  %i.a = ashr exact i32 %sext, 16
  %sext35 = shl i32 %2, 16
  %i.b = ashr exact i32 %sext35, 16
  %i.c = mul nsw i32 %i.b, %i.a                   ; 2 uses
  %i.d = shl i32 %i.c, 1                          ; 3 uses
  %i.e = xor i32 %i.d, %i.c
  %.not = icmp slt i32 %i.e, 0
  %i.f = add nsw i32 %i.d, 32768
  %i.g = icmp sgt i32 %i.d, 2147450879
  %or.cond = or i1 %.not, %i.g
  br i1 %or.cond, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.h, align 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread
  %.132 = phi i32 [ 2147483647, %.thread ], [ %i.f, %bb.a ]
  %i.i = ashr i32 %1, 16
  %i.j = ashr i32 %2, 16
  %i.k = mul nsw i32 %i.j, %i.i                   ; 2 uses
  %i.l = shl i32 %i.k, 1                          ; 3 uses
  %i.m = xor i32 %i.l, %i.k
  %.not38 = icmp slt i32 %i.m, 0
  %i.n = add nsw i32 %i.l, 32768
  %i.o = icmp sgt i32 %i.l, 2147450879
  %or.cond44 = or i1 %.not38, %i.o
  br i1 %or.cond44, label %.thread40, label %bb.c

.thread40:                                        ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.p, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread40
  %.1 = phi i32 [ 2147483647, %.thread40 ], [ %i.n, %bb.b ]
  %i.q = lshr i32 %.132, 16
  %.sroa.5.0.insert.shift = and i32 %.1, -65536
  %.sroa.020.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.shift, %i.q
  ret i32 %.sroa.020.0.insert.insert
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
end_hunk_0
begin_hunk_1_@helper_neon_qzip16:bb.a
  %i.h = shl i64 %i.d, 16
  %i.i = and i64 %i.h, 4294901760
  %i.j = shl i64 %i.a, 16
  %i.k = and i64 %i.j, 281470681743360
  %i.l = shl i64 %i.d, 32
  %i.m = and i64 %i.l, -281474976710656
  %i.n = or disjoint i64 %i.k, %i.g
  %i.o = or disjoint i64 %i.n, %i.i
  %i.p = or disjoint i64 %i.o, %i.m
  %i.q = lshr i64 %i.a, 32
  %i.r = and i64 %i.q, 65535
  %i.s = lshr i64 %i.d, 16
  %i.t = and i64 %i.s, 4294901760
  %i.u = lshr i64 %i.a, 16
  %i.v = and i64 %i.u, 281470681743360
  %i.w = and i64 %i.d, -281474976710656
  %i.x = or disjoint i64 %i.v, %i.r
  %i.y = or disjoint i64 %i.x, %i.w
  %i.z = or disjoint i64 %i.y, %i.t
  %i.aa = and i64 %i.c, 65535
  %i.ab = shl i64 %i.f, 16
  %i.ac = and i64 %i.ab, 4294901760
  %i.ad = shl i64 %i.c, 16
  %i.ae = and i64 %i.ad, 281470681743360
  %i.af = shl i64 %i.f, 32
  %i.ag = and i64 %i.af, -281474976710656
  %i.ah = or disjoint i64 %i.ae, %i.aa
  %i.ai = or disjoint i64 %i.ah, %i.ac
  %i.aj = or disjoint i64 %i.ai, %i.ag
  %i.ak = lshr i64 %i.c, 32
  %i.al = and i64 %i.ak, 65535
  %i.am = lshr i64 %i.f, 16
  %i.an = and i64 %i.am, 4294901760
  %i.ao = lshr i64 %i.c, 16
  %i.ap = and i64 %i.ao, 281470681743360
  %i.aq = and i64 %i.f, -281474976710656
  %i.ar = or disjoint i64 %i.ap, %i.al
  %i.as = or disjoint i64 %i.ar, %i.aq
  %i.at = or disjoint i64 %i.as, %i.an
  store i64 %i.aj, ptr %1, align 8
  store i64 %i.at, ptr %i.e, align 8
  store i64 %i.p, ptr %0, align 8
  store i64 %i.z, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_qzip32(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = load i64, ptr %1, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = and i64 %i.a, 4294967295
  %i.h = shl i64 %i.d, 32
  %i.i = or disjoint i64 %i.h, %i.g
  %i.j = lshr i64 %i.a, 32
  %i.k = and i64 %i.d, -4294967296
  %i.l = or disjoint i64 %i.k, %i.j
  %i.m = and i64 %i.c, 4294967295
  %i.n = shl i64 %i.f, 32
  %i.o = or disjoint i64 %i.n, %i.m
  %i.p = lshr i64 %i.c, 32
  %i.q = and i64 %i.f, -4294967296
  %i.r = or disjoint i64 %i.q, %i.p
  store i64 %i.o, ptr %1, align 8
  store i64 %i.r, ptr %i.e, align 8
  store i64 %i.i, ptr %0, align 8
  store i64 %i.l, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_zip8(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 8 uses
  %i.b = load i64, ptr %1, align 8                ; 8 uses
  %i.c = and i64 %i.a, 255
  %i.d = shl i64 %i.b, 8
  %i.e = and i64 %i.d, 65280
  %i.f = shl i64 %i.a, 8
  %i.g = and i64 %i.f, 16711680
  %i.h = shl i64 %i.b, 16
  %i.i = and i64 %i.h, 4278190080
  %i.j = shl i64 %i.a, 16
  %i.k = and i64 %i.j, 1095216660480
  %i.l = shl i64 %i.b, 24
  %i.m = and i64 %i.l, 280375465082880
  %i.n = shl i64 %i.a, 24
  %i.o = and i64 %i.n, 71776119061217280
  %i.p = shl i64 %i.b, 32
  %i.q = and i64 %i.p, -72057594037927936
  %i.r = or disjoint i64 %i.g, %i.c
  %i.s = or disjoint i64 %i.r, %i.k
  %i.t = or disjoint i64 %i.s, %i.o
  %i.u = or disjoint i64 %i.t, %i.e
  %i.v = or disjoint i64 %i.u, %i.i
  %i.w = or i64 %i.v, %i.m
  %i.x = or i64 %i.w, %i.q
  %i.y = lshr i64 %i.a, 32
  %i.z = and i64 %i.y, 255
  %i.aa = lshr i64 %i.b, 24
  %i.ab = and i64 %i.aa, 65280
  %i.ac = lshr i64 %i.a, 24
  %i.ad = and i64 %i.ac, 16711680
  %i.ae = lshr i64 %i.b, 16
  %i.af = and i64 %i.ae, 4278190080
  %i.ag = lshr i64 %i.a, 16
  %i.ah = and i64 %i.ag, 1095216660480
  %i.ai = lshr i64 %i.b, 8
  %i.aj = and i64 %i.ai, 280375465082880
  %i.ak = lshr i64 %i.a, 8
  %i.al = and i64 %i.ak, 71776119061217280
  %i.am = and i64 %i.b, -72057594037927936
  %i.an = or disjoint i64 %i.ad, %i.z
  %i.ao = or disjoint i64 %i.an, %i.ah
  %i.ap = or disjoint i64 %i.ao, %i.al
  %i.aq = or disjoint i64 %i.ap, %i.am
  %i.ar = or disjoint i64 %i.aq, %i.ab
  %i.as = or i64 %i.ar, %i.af
  %i.at = or i64 %i.as, %i.aj
  store i64 %i.at, ptr %1, align 8
  store i64 %i.x, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_zip16(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = load i64, ptr %1, align 8                ; 4 uses
  %i.c = and i64 %i.a, 65535
  %i.d = shl i64 %i.b, 16
  %i.e = and i64 %i.d, 4294901760
  %i.f = shl i64 %i.a, 16
  %i.g = and i64 %i.f, 281470681743360
  %i.h = shl i64 %i.b, 32
  %i.i = and i64 %i.h, -281474976710656
  %i.j = or disjoint i64 %i.g, %i.c
  %i.k = or disjoint i64 %i.j, %i.e
  %i.l = or disjoint i64 %i.k, %i.i
  %i.m = lshr i64 %i.a, 32
  %i.n = and i64 %i.m, 65535
  %i.o = lshr i64 %i.b, 16
  %i.p = and i64 %i.o, 4294901760
  %i.q = lshr i64 %i.a, 16
  %i.r = and i64 %i.q, 281470681743360
  %i.s = and i64 %i.b, -281474976710656
  %i.t = or disjoint i64 %i.r, %i.n
  %i.u = or disjoint i64 %i.t, %i.s
  %i.v = or disjoint i64 %i.u, %i.p
  store i64 %i.v, ptr %1, align 8
  store i64 %i.l, ptr %0, align 8
  ret void
}

declare i32 @float32_compare_quiet(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @float32_compare(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @float64_compare(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctlz.i8(i8, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #7

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nofree noinline norecurse nosync nounwind sspstrong memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = !{!"branch_weights", i32 8, i32 8}
!11 = !{!"branch_weights", i32 4, i32 12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7, !8, !9}
!29 = distinct !{!29, !7, !8, !9}
!30 = distinct !{!30, !7, !8}
!31 = distinct !{!31, !"LVerDomain"}
!32 = distinct !{!32, !31}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !31}
!35 = distinct !{!35, !7, !8, !9}
!36 = distinct !{!36, !"LVerDomain"}
!37 = distinct !{!37, !36}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !36}
!40 = distinct !{!40, !7, !8, !9}
!41 = distinct !{!41, !7, !8}
!42 = distinct !{!42, !7, !8}
!43 = !{!32}
!44 = !{!33}
!45 = !{!34, !32}
!46 = !{!34}
!47 = !{!37}
!48 = !{!38}
!49 = !{!39, !37}
!50 = !{!39}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7, !8, !9}
!53 = distinct !{!53, !7, !8, !9}
!54 = distinct !{!54, !7, !8}
!55 = distinct !{!55, !"LVerDomain"}
!56 = distinct !{!56, !55}
!57 = distinct !{!57, !55}
!58 = distinct !{!58, !55}
!59 = distinct !{!59, !7, !8, !9}
!60 = distinct !{!60, !"LVerDomain"}
!61 = distinct !{!61, !60}
!62 = distinct !{!62, !60}
!63 = distinct !{!63, !60}
!64 = distinct !{!64, !7, !8, !9}
!65 = distinct !{!65, !7, !8}
!66 = distinct !{!66, !7, !8}
!67 = !{!56}
!68 = !{!57}
!69 = !{!58, !56}
!70 = !{!58}
!71 = !{!61}
!72 = !{!62}
!73 = !{!63, !61}
!74 = !{!63}
!75 = distinct !{!75, !7}
!76 = distinct !{!76, !7, !8, !9}
!77 = distinct !{!77, !12}
!78 = distinct !{!78, !7, !8}
!79 = distinct !{!79, !"LVerDomain"}
!80 = distinct !{!80, !79}
!81 = distinct !{!81, !79}
!82 = distinct !{!82, !79}
!83 = distinct !{!83, !7, !8, !9}
!84 = distinct !{!84, !"LVerDomain"}
!85 = distinct !{!85, !84}
!86 = distinct !{!86, !84}
!87 = distinct !{!87, !84}
!88 = distinct !{!88, !7, !8, !9}
!89 = distinct !{!89, !7, !8}
!90 = distinct !{!90, !7, !8}
!91 = !{!80}
!92 = !{!81}
!93 = !{!82, !80}
!94 = !{!82}
!95 = !{!85}
!96 = !{!86}
!97 = !{!87, !85}
!98 = !{!87}
!99 = distinct !{!99, !7}
!100 = distinct !{!100, !7, !8, !9}
!101 = distinct !{!101, !12}
!102 = distinct !{!102, !7, !8}
!103 = distinct !{!103, !7}
!104 = distinct !{!104, !7}
!105 = distinct !{!105, !7, !8, !9}
!106 = distinct !{!106, !7, !8, !9}
!107 = distinct !{!107, !7, !8, !9}
!108 = distinct !{!108, !7, !8, !9}
!109 = distinct !{!109, !7, !8}
!110 = distinct !{!110, !"LVerDomain"}
!111 = distinct !{!111, !110}
!112 = distinct !{!112, !110}
!113 = distinct !{!113, !110}
!114 = distinct !{!114, !7, !8, !9}
!115 = distinct !{!115, !"LVerDomain"}
!116 = distinct !{!116, !115}
!117 = distinct !{!117, !115}
!118 = distinct !{!118, !115}
!119 = distinct !{!119, !7, !8, !9}
!120 = distinct !{!120, !7, !8}
!121 = distinct !{!121, !7, !8}
!122 = distinct !{!122, !7, !8}
!123 = !{!"branch_weights", i32 8, i32 24}
!124 = !{!111}
!125 = !{!112}
!126 = !{!113, !111}
!127 = !{!113}
!128 = !{!116}
!129 = !{!117}
!130 = !{!118, !116}
!131 = !{!118}
!132 = distinct !{!132, !7}
!133 = distinct !{!133, !7, !8, !9}
!134 = distinct !{!134, !7, !8, !9}
!135 = distinct !{!135, !7, !8, !9}
!136 = distinct !{!136, !7, !8, !9}
!137 = distinct !{!137, !7, !8}
!138 = distinct !{!138, !"LVerDomain"}
!139 = distinct !{!139, !138}
!140 = distinct !{!140, !138}
!141 = distinct !{!141, !138}
!142 = distinct !{!142, !7, !8, !9}
!143 = distinct !{!143, !"LVerDomain"}
!144 = distinct !{!144, !143}
!145 = distinct !{!145, !143}
!146 = distinct !{!146, !143}
!147 = distinct !{!147, !7, !8, !9}
!148 = distinct !{!148, !7, !8}
!149 = distinct !{!149, !7, !8}
!150 = distinct !{!150, !7, !8}
!151 = !{!139}
!152 = !{!140}
!153 = !{!141, !139}
!154 = !{!141}
!155 = !{!144}
!156 = !{!145}
!157 = !{!146, !144}
!158 = !{!146}
!159 = distinct !{!159, !7}
!160 = distinct !{!160, !7, !8, !9}
!161 = distinct !{!161, !12}
!162 = distinct !{!162, !7, !8, !9}
!163 = distinct !{!163, !12}
!164 = distinct !{!164, !7, !8}
!165 = distinct !{!165, !"LVerDomain"}
!166 = distinct !{!166, !165}
!167 = distinct !{!167, !165}
!168 = distinct !{!168, !165}
!169 = distinct !{!169, !7, !8, !9}
!170 = distinct !{!170, !"LVerDomain"}
!171 = distinct !{!171, !170}
!172 = distinct !{!172, !170}
!173 = distinct !{!173, !170}
!174 = distinct !{!174, !7, !8, !9}
!175 = distinct !{!175, !7, !8}
!176 = distinct !{!176, !7, !8}
!177 = distinct !{!177, !7, !8}
!178 = !{!166}
!179 = !{!167}
!180 = !{!168, !166}
!181 = !{!168}
!182 = !{!171}
!183 = !{!172}
end_hunk_1
