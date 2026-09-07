Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/neon_helper?download=true
inline.NumInlined: 278
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 44
begin_hunk_0_@helper_neon_sqrshl_d:bb.a
  %i.ad = add nuw nsw i64 %.016, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.h
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !322

bb.i:                                             ; preds = %do_sqrshl_d.exit
  %i.ae = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ae, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.af = add nuw nsw i32 %i.e, 8
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr i8, ptr %0, i64 %i.g
  %i.ai = xor i64 %i.g, -1
  %i.aj = add nsw i64 %i.ai, %i.ag
  %i.ak = and i64 %i.aj, -8
  %i.al = add nsw i64 %i.ak, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ah, i8 0, i64 %i.al, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.i, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qrshl_s32(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %sext = shl i32 %2, 24
  %i.a = ashr exact i32 %sext, 24                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12656
  %.not.i = icmp sgt i32 %i.a, -32
  br i1 %.not.i, label %bb.b, label %do_sqrshl_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %i.a, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = xor i32 %i.a, -1
  %i.e = ashr i32 %1, %i.d                        ; 2 uses
  %i.f = ashr i32 %i.e, 1
  %i.g = and i32 %i.e, 1
  %i.h = add nsw i32 %i.f, %i.g
  br label %do_sqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
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
  %i.a = tail call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %.sroa.03.0.extract.trunc, i1 false)
  %i.b = zext nneg i8 %i.a to i32
  %i.c = tail call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %.sroa.54.0.extract.trunc, i1 false)
  %i.d = zext nneg i8 %i.c to i32
  %i.e = tail call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %.sroa.65.0.extract.trunc, i1 false)
  %i.f = zext nneg i8 %i.e to i32
  %i.g = tail call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %.sroa.76.0.extract.trunc, i1 false)
  %i.h = zext nneg i8 %i.g to i32
  %.sroa.7.0.insert.ext = shl nuw nsw i32 %i.h, 24
  %.sroa.6.0.insert.ext = shl nuw nsw i32 %i.f, 16
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.7.0.insert.ext, %.sroa.6.0.insert.ext
  %.sroa.5.0.insert.ext = shl nuw nsw i32 %i.d, 8
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.ext
  %.sroa.02.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %i.b
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
define dso_local i32 @helper_neon_qdmulh_s32(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = sext i32 %2 to i64
  %i.c = mul nsw i64 %i.b, %i.a                   ; 2 uses
  %i.d = shl i64 %i.c, 1                          ; 2 uses
  %i.e = xor i64 %i.d, %i.c
  %.not = icmp sgt i64 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.f, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ 9223372036854775807, %bb.b ], [ %i.d, %bb.a ]
  %i.g = lshr i64 %.0, 32
  %i.h = trunc nuw i64 %i.g to i32
end_hunk_0
begin_hunk_1_@helper_neon_narrow_sat_s8:bb.a
  %i.z = ashr exact i64 %sext, 56
  %.not38 = icmp eq i64 %i.y, %i.z
  br i1 %.not38, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = icmp sgt i64 %i.y, -1
  %i.ab = select i1 %i.aa, i64 127, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.ac, align 16
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ad = and i64 %i.x, 255
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.3 = phi i64 [ %i.ab, %bb.k ], [ %i.ad, %bb.l ]
  %i.ae = shl nuw nsw i64 %.1, 8
  %i.af = or disjoint i64 %i.ae, %.0
  %i.ag = shl nuw nsw i64 %.2, 16
  %i.ah = or disjoint i64 %i.ag, %i.af
  %i.ai = shl nuw nsw i64 %.3, 24
  %i.aj = or disjoint i64 %i.ai, %i.ah
  ret i64 %i.aj
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local range(i64 0, 4294967296) i64 @helper_neon_unarrow_sat16(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  %.not = icmp sgt i32 %i.a, -1
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ugt i32 %i.a, 65535
  br i1 %i.b, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.0.ph = phi i64 [ 0, %bb.a ], [ 65535, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.c, align 16
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i64 [ %1, %bb.b ], [ %.0.ph, %.sink.split ]
  %.not14 = icmp sgt i64 %1, -1
  br i1 %.not14, label %bb.d, label %.sink.split17

bb.d:                                             ; preds = %bb.c
  %i.d = lshr i64 %1, 32
  %i.e = icmp samesign ugt i64 %1, 281474976710655
  br i1 %i.e, label %.sink.split17, label %bb.e

.sink.split17:                                    ; preds = %bb.d, %bb.c
  %.011.ph = phi i64 [ 0, %bb.c ], [ 65535, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.f, align 16
  br label %bb.e

bb.e:                                             ; preds = %.sink.split17, %bb.d
  %.011 = phi i64 [ %i.d, %bb.d ], [ %.011.ph, %.sink.split17 ]
  %i.g = shl nuw nsw i64 %.011, 16
  %i.h = or i64 %i.g, %.0
  %i.i = and i64 %i.h, 4294967295
  ret i64 %i.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local range(i64 0, 4294967296) i64 @helper_neon_narrow_sat_u16(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = and i64 %1, 4294901760
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.b, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 65535, %bb.b ], [ %1, %bb.a ]
  %i.c = lshr i64 %1, 32
  %i.d = icmp ugt i64 %1, 281474976710655
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.e, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.07 = phi i64 [ 65535, %bb.d ], [ %i.c, %bb.c ]
  %i.f = shl nuw nsw i64 %.07, 16
  %i.g = or i64 %i.f, %.0
  %i.h = and i64 %i.g, 4294967295
  ret i64 %i.h
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local range(i64 0, 4294967296) i64 @helper_neon_narrow_sat_s16(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  %i.b = trunc i64 %1 to i16
  %i.c = sext i16 %i.b to i32
  %.not = icmp eq i32 %i.a, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %i.a, -1
  %i.e = select i1 %i.d, i64 32767, i64 4294934528
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.f, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.011 = phi i64 [ %i.e, %bb.b ], [ %1, %bb.a ]
  %i.g = lshr i64 %1, 32                          ; 3 uses
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = trunc i64 %i.g to i16
  %i.j = sext i16 %i.i to i32
  %.not15 = icmp eq i32 %i.h, %i.j
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp sgt i64 %1, -1
  %i.l = select i1 %i.k, i64 32767, i64 4294934528
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.m, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %i.l, %bb.d ], [ %i.g, %bb.c ]
  %i.n = and i64 %.011, 65535
  %i.o = shl nuw nsw i64 %.0, 16
  %.masked = and i64 %i.o, 4294901760
  %i.p = or disjoint i64 %.masked, %i.n
  ret i64 %i.p
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local range(i64 0, 4294967296) i64 @helper_neon_unarrow_sat32(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp sgt i64 %1, -1
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.a = icmp samesign ugt i64 %1, 4294967295
  br i1 %i.a, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.0.ph = phi i64 [ 0, %bb.a ], [ 4294967295, %bb.b ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.b, align 16
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i64 [ %1, %bb.b ], [ %.0.ph, %.sink.split ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local range(i64 0, 4294967296) i64 @helper_neon_narrow_sat_u32(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i64 %1, 4294967295
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.b, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ 4294967295, %bb.b ], [ %1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local range(i64 0, 4294967296) i64 @helper_neon_narrow_sat_s32(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %1, 2147483648
  %.not = icmp ult i64 %i.a, 4294967296
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.b, align 16
  %i.c = icmp sgt i64 %1, -1
  %i.d = select i1 %i.c, i64 2147483647, i64 2147483648
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = and i64 %1, 4294967295
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 0, 71777214294589696) i64 @helper_neon_widen_u8(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 255
  %i.b = shl i32 %0, 8
  %i.c = and i32 %i.b, 16711680
  %i.d = or disjoint i32 %i.c, %i.a
  %i.e = zext nneg i32 %i.d to i64
  %i.f = lshr i32 %0, 16
  %i.g = and i32 %i.f, 255
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 32
  %i.j = or disjoint i64 %i.i, %i.e
  %i.k = lshr i32 %0, 24
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 48
  %i.n = or disjoint i64 %i.j, %i.m
  ret i64 %i.n
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i64 @helper_neon_widen_s8(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %sext = shl i64 %i.a, 56
  %i.b = ashr exact i64 %sext, 56
  %i.c = and i64 %i.b, 65535
  %i.d = lshr i32 %0, 8
  %i.e = zext nneg i32 %i.d to i64
  %sext11 = shl i64 %i.e, 56
  %i.f = ashr exact i64 %sext11, 40
  %i.g = and i64 %i.f, 4294901760
  %i.h = lshr i32 %0, 16
  %i.i = zext nneg i32 %i.h to i64
  %sext12 = shl i64 %i.i, 56
  %i.j = ashr exact i64 %sext12, 24
  %i.k = and i64 %i.j, 281470681743360
  %i.l = ashr i32 %0, 24
  %i.m = and i32 %i.l, 65535
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl nuw i64 %i.n, 48
  %i.p = or disjoint i64 %i.o, %i.c
  %i.q = or disjoint i64 %i.p, %i.g
  %i.r = or disjoint i64 %i.q, %i.k
  ret i64 %i.r
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 0, 281470681808896) i64 @helper_neon_widen_u16(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %0, 16
  %i.b = zext nneg i32 %i.a to i64
  %i.c = and i32 %0, 65535
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.b, 32
  %i.f = or disjoint i64 %i.e, %i.d
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 -140737488355328, 140741783322623) i64 @helper_neon_widen_s16(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %0, 16
  %i.b = zext nneg i32 %i.a to i64
  %sext = shl nuw i64 %i.b, 48
  %sext3 = shl i32 %0, 16
  %i.c = ashr exact i32 %sext3, 16
  %i.d = zext i32 %i.c to i64
  %i.e = ashr exact i64 %sext, 16
  %i.f = or disjoint i64 %i.e, %i.d
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i64 @helper_neon_addlp_s8(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %0, 71777214294589695
  %i.b = xor i64 %i.a, -9187201950435737472
  %i.c = add i64 %i.b, -36029346783166592         ; 2 uses
  %i.d = lshr i64 %0, 8
  %i.e = and i64 %i.d, 71777214294589695
  %i.f = xor i64 %i.e, -9187201950435737472
  %i.g = add i64 %i.f, -36029346783166592         ; 2 uses
  %i.h = xor i64 %i.g, %i.c
  %i.i = and i64 %i.h, -9223231297218904064
  %i.j = and i64 %i.c, 9223231297218904063
  %i.k = and i64 %i.g, 9223231297218904063
  %i.l = add nuw i64 %i.k, %i.j
  %i.m = xor i64 %i.l, %i.i
  ret i64 %i.m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 -281474976710656, 281470681743360) i64 @helper_neon_addlp_s16(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %sext = shl i64 %0, 48
  %i.a = ashr exact i64 %sext, 48
  %i.b = shl i64 %0, 32
  %i.c = ashr i64 %i.b, 48
  %i.d = add nsw i64 %i.a, %i.c
  %i.e = shl i64 %0, 16
  %i.f = ashr i64 %i.e, 48
  %i.g = ashr i64 %0, 48
  %i.h = add nsw i64 %i.f, %i.g
  %i.i = and i64 %i.d, 4294967295
  %i.j = shl nsw i64 %i.h, 32
  %i.k = or disjoint i64 %i.i, %i.j
  ret i64 %i.k
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i64 @helper_neon_addl_saturate_s32(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %1 to i32                      ; 4 uses
  %i.b = trunc i64 %2 to i32                      ; 2 uses
  %i.c = add i32 %i.b, %i.a                       ; 2 uses
  %i.d = xor i32 %i.c, %i.a
  %.not = icmp slt i32 %i.d, 0
  %i.e = xor i32 %i.b, %i.a
  %.not22 = icmp sgt i32 %i.e, -1
  %or.cond = and i1 %.not22, %.not
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.f, align 16
  %i.g = icmp sgt i32 %i.a, -1
  %i.h = select i1 %i.g, i32 2147483647, i32 -2147483648
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.021 = phi i32 [ %i.c, %bb.a ], [ %i.h, %bb.b ]
  %i.i = lshr i64 %1, 32
  %i.j = trunc nuw i64 %i.i to i32                ; 3 uses
  %i.k = lshr i64 %2, 32
  %i.l = trunc nuw i64 %i.k to i32                ; 2 uses
  %i.m = add i32 %i.l, %i.j                       ; 2 uses
  %i.n = xor i32 %i.m, %i.j
  %.not23 = icmp slt i32 %i.n, 0
  %i.o = xor i32 %i.l, %i.j
  %.not24 = icmp sgt i32 %i.o, -1
  %or.cond25 = and i1 %.not24, %.not23
  br i1 %or.cond25, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.p, align 16
  %i.q = icmp sgt i64 %1, -1
  %i.r = select i1 %i.q, i32 2147483647, i32 -2147483648
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.m, %bb.c ], [ %i.r, %bb.d ]
  %i.s = zext i32 %.021 to i64
  %i.t = zext i32 %.0 to i64
  %i.u = shl nuw i64 %i.t, 32
  %i.v = or disjoint i64 %i.u, %i.s
  ret i64 %i.v
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local noundef i64 @helper_neon_addl_saturate_s64(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %2, %1                           ; 2 uses
  %i.b = xor i64 %i.a, %1
  %.not = icmp slt i64 %i.b, 0
  %i.c = xor i64 %2, %1
  %.not8 = icmp sgt i64 %i.c, -1
  %or.cond = and i1 %.not8, %.not
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.d, align 16
  %i.e = icmp sgt i64 %1, -1
  %i.f = select i1 %i.e, i64 9223372036854775807, i64 -9223372036854775808
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.a, %bb.a ], [ %i.f, %bb.b ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 0, 71777214294589696) i64 @helper_neon_abdl_u16(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 255                          ; 3 uses
  %i.b = and i32 %1, 255                          ; 3 uses
  %i.c = icmp samesign ugt i32 %i.a, %i.b
  %i.d = sub nuw nsw i32 %i.a, %i.b
  %i.e = sub nuw nsw i32 %i.b, %i.a
  %i.f = select i1 %i.c, i32 %i.d, i32 %i.e
  %i.g = lshr i32 %0, 8
  %i.h = and i32 %i.g, 255                        ; 3 uses
  %i.i = lshr i32 %1, 8
  %i.j = and i32 %i.i, 255                        ; 3 uses
  %i.k = icmp samesign ugt i32 %i.h, %i.j
  %i.l = sub nuw nsw i32 %i.h, %i.j
  %i.m = sub nuw nsw i32 %i.j, %i.h
  %i.n = select i1 %i.k, i32 %i.l, i32 %i.m
  %i.o = lshr i32 %0, 16
  %i.p = and i32 %i.o, 255                        ; 3 uses
  %i.q = lshr i32 %1, 16
  %i.r = and i32 %i.q, 255                        ; 3 uses
  %i.s = icmp samesign ugt i32 %i.p, %i.r
  %i.t = sub nuw nsw i32 %i.p, %i.r
  %i.u = sub nuw nsw i32 %i.r, %i.p
  %i.v = select i1 %i.s, i32 %i.t, i32 %i.u
  %i.w = lshr i32 %0, 24                          ; 3 uses
  %i.x = lshr i32 %1, 24                          ; 3 uses
  %i.y = icmp samesign ugt i32 %i.w, %i.x
  %i.z = sub nuw nsw i32 %i.w, %i.x
  %i.aa = sub nuw nsw i32 %i.x, %i.w
  %i.ab = select i1 %i.y, i32 %i.z, i32 %i.aa
  %i.ac = shl nuw nsw i32 %i.n, 16
  %i.ad = or disjoint i32 %i.ac, %i.f
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = zext nneg i32 %i.v to i64
  %i.ag = shl nuw nsw i64 %i.af, 32
  %i.ah = or disjoint i64 %i.ag, %i.ae
  %i.ai = zext nneg i32 %i.ab to i64
  %i.aj = shl nuw nsw i64 %i.ai, 48
  %i.ak = or disjoint i64 %i.ah, %i.aj
  ret i64 %i.ak
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 0, 71777218572845056) i64 @helper_neon_abdl_s16(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %sext = shl i32 %0, 24
  %i.a = ashr exact i32 %sext, 24
  %sext53 = shl i32 %1, 24
  %i.b = ashr exact i32 %sext53, 24
  %i.c = sub nsw i32 %i.a, %i.b
  %i.d = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true)
  %i.e = shl i32 %0, 16
  %i.f = ashr i32 %i.e, 24
  %i.g = shl i32 %1, 16
  %i.h = ashr i32 %i.g, 24
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = tail call i32 @llvm.abs.i32(i32 %i.i, i1 true)
  %i.k = shl i32 %0, 8
  %i.l = ashr i32 %i.k, 24
  %i.m = shl i32 %1, 8
  %i.n = ashr i32 %i.m, 24
  %i.o = sub nsw i32 %i.l, %i.n
  %i.p = tail call i32 @llvm.abs.i32(i32 %i.o, i1 true)
  %i.q = ashr i32 %0, 24
  %i.r = ashr i32 %1, 24
  %i.s = sub nsw i32 %i.q, %i.r
  %i.t = tail call i32 @llvm.abs.i32(i32 %i.s, i1 true)
  %i.u = zext nneg i32 %i.j to i64
  %i.v = shl nuw nsw i64 %i.u, 16
  %i.w = zext nneg i32 %i.d to i64
  %i.x = zext nneg i32 %i.p to i64
  %i.y = shl nuw nsw i64 %i.x, 32
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = shl nuw nsw i64 %i.z, 48
  %i.ab = or disjoint i64 %i.aa, %i.w
  %i.ac = or i64 %i.ab, %i.v
  %i.ad = or i64 %i.ac, %i.y
  ret i64 %i.ad
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 0, 281470681808896) i64 @helper_neon_abdl_u32(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 65535                        ; 3 uses
  %i.b = and i32 %1, 65535                        ; 3 uses
  %i.c = icmp samesign ugt i32 %i.a, %i.b
  %i.d = sub nuw nsw i32 %i.a, %i.b
  %i.e = sub nuw nsw i32 %i.b, %i.a
  %i.f = select i1 %i.c, i32 %i.d, i32 %i.e
  %i.g = lshr i32 %0, 16                          ; 3 uses
  %i.h = lshr i32 %1, 16                          ; 3 uses
  %i.i = icmp samesign ugt i32 %i.g, %i.h
  %i.j = sub nuw nsw i32 %i.g, %i.h
  %i.k = sub nuw nsw i32 %i.h, %i.g
  %i.l = select i1 %i.i, i32 %i.j, i32 %i.k
  %i.m = zext nneg i32 %i.f to i64
  %i.n = zext nneg i32 %i.l to i64
  %i.o = shl nuw nsw i64 %i.n, 32
  %i.p = or disjoint i64 %i.o, %i.m
  ret i64 %i.p
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 0, 281470681808896) i64 @helper_neon_abdl_s32(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %sext = shl i32 %0, 16
  %i.a = ashr exact i32 %sext, 16
  %sext24 = shl i32 %1, 16
  %i.b = ashr exact i32 %sext24, 16
  %i.c = sub nsw i32 %i.a, %i.b
  %i.d = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true)
  %i.e = ashr i32 %0, 16
  %i.f = ashr i32 %1, 16
  %i.g = sub nsw i32 %i.e, %i.f
  %i.h = tail call i32 @llvm.abs.i32(i32 %i.g, i1 true)
  %i.i = zext nneg i32 %i.d to i64
  %i.j = zext nneg i32 %i.h to i64
  %i.k = shl nuw nsw i64 %i.j, 32
  %i.l = or disjoint i64 %i.k, %i.i
  ret i64 %i.l
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 -4294967295, 4294967296) i64 @helper_neon_abdl_u64(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64                       ; 2 uses
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = icmp ugt i32 %0, %1
  %i.d = sub nsw i64 %i.a, %i.b
  %i.e = sub nsw i64 %i.b, %i.a
  %i.f = select i1 %i.c, i64 %i.d, i64 %i.e
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 -4294967295, 4294967296) i64 @helper_neon_abdl_s64(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = icmp sgt i32 %0, %1
  %i.d = sub nsw i64 %i.a, %i.b
  %i.e = sub nsw i64 %i.b, %i.a
  %i.f = select i1 %i.c, i64 %i.d, i64 %i.e
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 0, -143554428589179390) i64 @helper_neon_mull_u8(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 255
  %i.b = and i32 %1, 255
  %i.c = mul nuw nsw i32 %i.b, %i.a
  %i.d = lshr i32 %1, 8
  %i.e = and i32 %i.d, 255
  %i.f = shl i32 %0, 8
  %i.g = and i32 %i.f, 16711680
  %i.h = mul nuw i32 %i.g, %i.e
  %i.i = or disjoint i32 %i.h, %i.c
  %i.j = zext i32 %i.i to i64
  %i.k = lshr i32 %0, 16
  %i.l = lshr i32 %1, 16
  %i.m = and i32 %i.k, 255
  %i.n = and i32 %i.l, 255
  %i.o = mul nuw nsw i32 %i.n, %i.m
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 32
  %i.r = or disjoint i64 %i.q, %i.j
  %i.s = lshr i32 %0, 24
  %i.t = lshr i32 %1, 24
  %i.u = mul nuw nsw i32 %i.t, %i.s
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nuw i64 %i.v, 48
  %i.x = or disjoint i64 %i.r, %i.w
  ret i64 %i.x
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i64 @helper_neon_mull_s8(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %sext = shl i32 %0, 24
  %i.a = ashr exact i32 %sext, 24
  %sext23 = shl i32 %1, 24
  %i.b = ashr exact i32 %sext23, 24
  %i.c = mul nsw i32 %i.b, %i.a
  %i.d = and i32 %i.c, 65535
  %i.e = shl i32 %0, 16
  %i.f = shl i32 %1, 16
  %i.g = ashr i32 %i.f, 24
  %i.h = ashr exact i32 %i.e, 8
  %i.i = and i32 %i.h, -65536
  %i.j = mul nsw i32 %i.i, %i.g
  %i.k = or disjoint i32 %i.d, %i.j
  %i.l = zext i32 %i.k to i64
  %i.m = shl i32 %0, 8
  %i.n = ashr i32 %i.m, 24
  %i.o = shl i32 %1, 8
  %i.p = ashr i32 %i.o, 24
  %i.q = mul nsw i32 %i.p, %i.n
  %i.r = and i32 %i.q, 65535
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 32
  %i.u = or disjoint i64 %i.t, %i.l
  %i.v = ashr i32 %0, 24
  %i.w = ashr i32 %1, 24
  %i.x = mul nsw i32 %i.w, %i.v
  %i.y = and i32 %i.x, 65535
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw i64 %i.z, 48
  %i.ab = or disjoint i64 %i.u, %i.aa
  ret i64 %i.ab
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 0, -562941363617790) i64 @helper_neon_mull_u16(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = and i32 %1, 65535
  %i.c = mul nuw i32 %i.b, %i.a
  %i.d = zext i32 %i.c to i64
  %i.e = lshr i32 %0, 16
  %i.f = lshr i32 %1, 16
  %i.g = mul nuw i32 %i.f, %i.e
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw i64 %i.h, 32
  %i.j = or disjoint i64 %i.i, %i.d
  ret i64 %i.j
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i64 @helper_neon_mull_s16(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %sext = shl i32 %0, 16
  %i.a = ashr exact i32 %sext, 16
  %sext10 = shl i32 %1, 16
  %i.b = ashr exact i32 %sext10, 16
  %i.c = mul nsw i32 %i.b, %i.a
  %i.d = zext i32 %i.c to i64
  %i.e = ashr i32 %0, 16
  %i.f = ashr i32 %1, 16
  %i.g = mul nsw i32 %i.f, %i.e
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw i64 %i.h, 32
  %i.j = or disjoint i64 %i.i, %i.d
  ret i64 %i.j
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i64 @helper_neon_negl_u16(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = sub i64 0, %0
  %i.b = and i64 %i.a, 65535
  %i.c = and i64 %0, 4294901760
  %i.d = sub nsw i64 0, %i.c
  %i.e = and i64 %i.d, 4294901760
  %i.f = and i64 %0, 281470681743360
  %i.g = sub nsw i64 0, %i.f
  %i.h = and i64 %i.g, 281470681743360
  %i.i = and i64 %0, -281474976710656
  %i.j = sub i64 %i.b, %i.i
  %i.k = or disjoint i64 %i.j, %i.e
  %i.l = or disjoint i64 %i.k, %i.h
  ret i64 %i.l
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i64 @helper_neon_negl_u32(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = sub i64 0, %0
  %i.b = and i64 %0, -4294967296
  %i.c = and i64 %i.a, 4294967295
  %i.d = sub i64 %i.c, %i.b
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qabs_s8(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.sroa.10.0.extract.shift = lshr i32 %1, 8      ; 3 uses
  %.sroa.15.0.extract.shift = lshr i32 %1, 16     ; 3 uses
  %.sroa.20.0.extract.shift = lshr i32 %1, 24
  %sext = shl i32 %1, 24                          ; 2 uses
  %i.a = icmp eq i32 %sext, -2147483648
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.b, align 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %sext, 0
  %i.d = sub i32 0, %1
  %spec.select = select i1 %i.c, i32 %i.d, i32 %1
  %i.e = and i32 %spec.select, 255
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.02.0 = phi i32 [ 127, %bb.b ], [ %i.e, %bb.c ]
  %sext30 = shl i32 %.sroa.10.0.extract.shift, 24 ; 2 uses
  %i.f = icmp eq i32 %sext30, -2147483648
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.g, align 16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.h = icmp slt i32 %sext30, 0
  %i.i = sub nsw i32 0, %.sroa.10.0.extract.shift
  %spec.select33 = select i1 %i.h, i32 %i.i, i32 %.sroa.10.0.extract.shift
  %i.j = shl i32 %spec.select33, 8
  %i.k = and i32 %i.j, 65280
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.10.0 = phi i32 [ 32512, %bb.e ], [ %i.k, %bb.f ]
  %sext31 = shl i32 %.sroa.15.0.extract.shift, 24 ; 2 uses
  %i.l = icmp eq i32 %sext31, -2147483648
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.m, align 16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.n = icmp slt i32 %sext31, 0
  %i.o = sub nsw i32 0, %.sroa.15.0.extract.shift
  %spec.select34 = select i1 %i.n, i32 %i.o, i32 %.sroa.15.0.extract.shift
  %i.p = shl i32 %spec.select34, 16
  %i.q = and i32 %i.p, 16711680
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.15.0 = phi i32 [ 8323072, %bb.h ], [ %i.q, %bb.i ]
  %i.r = ashr i32 %1, 24                          ; 3 uses
  %i.s = icmp eq i32 %i.r, -128
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.t, align 16
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.u = icmp slt i32 %i.r, 0
  %i.v = sub nsw i32 0, %i.r
  %spec.select35 = select i1 %i.u, i32 %i.v, i32 %.sroa.20.0.extract.shift
  %i.w = shl nuw i32 %spec.select35, 24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.20.0 = phi i32 [ 2130706432, %bb.k ], [ %i.w, %bb.l ]
  %.sroa.15.0.insert.insert = or disjoint i32 %.sroa.10.0, %.sroa.02.0
  %.sroa.10.0.insert.insert = or disjoint i32 %.sroa.15.0.insert.insert, %.sroa.15.0
  %.sroa.02.0.insert.insert = or disjoint i32 %.sroa.10.0.insert.insert, %.sroa.20.0
  ret i32 %.sroa.02.0.insert.insert
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qneg_s8(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %sext.mask = and i32 %1, 255
  %i.a = icmp eq i32 %sext.mask, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.b, align 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = sub i32 0, %1
  %i.d = and i32 %i.c, 255
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.02.0 = phi i32 [ 127, %bb.b ], [ %i.d, %bb.c ]
  %i.e = shl i32 %1, 16
  %i.f = ashr i32 %i.e, 24                        ; 2 uses
  %i.g = icmp eq i32 %i.f, -128
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.h, align 16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.neg22 = mul nsw i32 %i.f, 65280
  %i.i = and i32 %.neg22, 65280
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.9.0 = phi i32 [ 32512, %bb.e ], [ %i.i, %bb.f ]
  %i.j = shl i32 %1, 8
  %i.k = ashr i32 %i.j, 24                        ; 2 uses
  %i.l = icmp eq i32 %i.k, -128
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.m, align 16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %.neg = mul nsw i32 %i.k, 16711680
  %i.n = and i32 %.neg, 16711680
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.13.0 = phi i32 [ 8323072, %bb.h ], [ %i.n, %bb.i ]
  %i.o = icmp slt i32 %1, -2130706432
end_hunk_1
