Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/neon_helper?download=true
inline.NumInlined: 278
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 44
begin_hunk_0_@helper_neon_narrow_sat_s32:bb.a

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
define dso_local range(i64 -140737488355328, 140737488355328) i64 @helper_neon_widen_s16(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ashr i32 %0, 16
  %i.b = sext i32 %i.a to i64
  %i.c = shl i32 %0, 16
  %i.d = ashr exact i32 %i.c, 16
  %i.e = zext i32 %i.d to i64
  %i.f = shl nsw i64 %i.b, 32
  %i.g = or disjoint i64 %i.f, %i.e
  ret i64 %i.g
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
  %i.a = shl i64 %0, 48
  %i.b = ashr exact i64 %i.a, 48
  %i.c = shl i64 %0, 32
  %i.d = ashr i64 %i.c, 48
  %i.e = add nsw i64 %i.b, %i.d
  %i.f = shl i64 %0, 16
  %i.g = ashr i64 %i.f, 48
  %i.h = ashr i64 %0, 48
  %i.i = add nsw i64 %i.g, %i.h
  %i.j = and i64 %i.e, 4294967295
  %i.k = shl nsw i64 %i.i, 32
  %i.l = or disjoint i64 %i.j, %i.k
  ret i64 %i.l
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
define dso_local range(i64 0, 71777218572845056) i64 @helper_neon_abdl_u16(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 255
  %i.b = and i32 %1, 255
  %i.c = sub nsw i32 %i.a, %i.b
  %2 = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true)
  %i.d = lshr i32 %0, 8
  %i.e = and i32 %i.d, 255
  %i.f = lshr i32 %1, 8
  %i.g = and i32 %i.f, 255
  %i.h = sub nsw i32 %i.e, %i.g
  %3 = tail call i32 @llvm.abs.i32(i32 %i.h, i1 true)
  %i.i = lshr i32 %0, 16
  %i.j = and i32 %i.i, 255
  %i.k = lshr i32 %1, 16
  %i.l = and i32 %i.k, 255
  %i.m = sub nsw i32 %i.j, %i.l
  %4 = tail call i32 @llvm.abs.i32(i32 %i.m, i1 true)
  %i.n = lshr i32 %0, 24
  %i.o = lshr i32 %1, 24
  %5 = sub nsw i32 %i.n, %i.o
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = zext nneg i32 %3 to i64
  %8 = shl nuw nsw i64 %7, 16
  %9 = zext nneg i32 %2 to i64
  %10 = zext nneg i32 %4 to i64
  %11 = shl nuw nsw i64 %10, 32
  %i.p = zext nneg i32 %6 to i64
  %i.q = shl nuw nsw i64 %i.p, 48
  %i.r = or disjoint i64 %i.q, %9
  %12 = or i64 %i.r, %8
  %i.s = or i64 %12, %11
  ret i64 %i.s
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 0, 71777218572845056) i64 @helper_neon_abdl_s16(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i32 %0, 24
  %i.b = ashr exact i32 %i.a, 24
  %i.c = shl i32 %1, 24
  %i.d = ashr exact i32 %i.c, 24
  %i.e = sub nsw i32 %i.b, %i.d
  %i.f = tail call i32 @llvm.abs.i32(i32 %i.e, i1 true)
  %i.g = shl i32 %0, 16
  %i.h = ashr i32 %i.g, 24
  %i.i = shl i32 %1, 16
  %i.j = ashr i32 %i.i, 24
  %i.k = sub nsw i32 %i.h, %i.j
  %i.l = tail call i32 @llvm.abs.i32(i32 %i.k, i1 true)
  %i.m = shl i32 %0, 8
  %i.n = ashr i32 %i.m, 24
  %i.o = shl i32 %1, 8
  %i.p = ashr i32 %i.o, 24
  %i.q = sub nsw i32 %i.n, %i.p
  %i.r = tail call i32 @llvm.abs.i32(i32 %i.q, i1 true)
  %i.s = ashr i32 %0, 24
  %i.t = ashr i32 %1, 24
  %i.u = sub nsw i32 %i.s, %i.t
  %i.v = tail call i32 @llvm.abs.i32(i32 %i.u, i1 true)
  %i.w = zext nneg i32 %i.l to i64
  %i.x = shl nuw nsw i64 %i.w, 16
  %i.y = zext nneg i32 %i.f to i64
  %i.z = zext nneg i32 %i.r to i64
  %i.aa = shl nuw nsw i64 %i.z, 32
  %i.ab = zext nneg i32 %i.v to i64
  %i.ac = shl nuw nsw i64 %i.ab, 48
  %i.ad = or disjoint i64 %i.ac, %i.y
  %i.ae = or i64 %i.ad, %i.x
  %i.af = or i64 %i.ae, %i.aa
  ret i64 %i.af
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 0, 281470681808896) i64 @helper_neon_abdl_u32(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = and i32 %1, 65535
  %i.c = sub nsw i32 %i.a, %i.b
  %2 = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true)
  %i.d = lshr i32 %0, 16
  %i.e = lshr i32 %1, 16
  %i.f = sub nsw i32 %i.d, %i.e
  %3 = tail call i32 @llvm.abs.i32(i32 %i.f, i1 true)
  %i.g = zext nneg i32 %2 to i64
  %i.h = zext nneg i32 %3 to i64
  %i.i = shl nuw nsw i64 %i.h, 32
  %i.j = or disjoint i64 %i.i, %i.g
  ret i64 %i.j
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 0, 281470681808896) i64 @helper_neon_abdl_s32(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i32 %0, 16
  %i.b = ashr exact i32 %i.a, 16
  %i.c = shl i32 %1, 16
  %i.d = ashr exact i32 %i.c, 16
  %i.e = sub nsw i32 %i.b, %i.d
  %i.f = tail call i32 @llvm.abs.i32(i32 %i.e, i1 true)
  %i.g = ashr i32 %0, 16
  %i.h = ashr i32 %1, 16
  %i.i = sub nsw i32 %i.g, %i.h
  %i.j = tail call i32 @llvm.abs.i32(i32 %i.i, i1 true)
  %i.k = zext nneg i32 %i.f to i64
  %i.l = zext nneg i32 %i.j to i64
  %i.m = shl nuw nsw i64 %i.l, 32
  %i.n = or disjoint i64 %i.m, %i.k
  ret i64 %i.n
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 0, 4294967296) i64 @helper_neon_abdl_u64(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = zext i32 %1 to i64
  %i.c = sub nsw i64 %i.a, %i.b
  %2 = tail call i64 @llvm.abs.i64(i64 %i.c, i1 true)
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 0, 4294967296) i64 @helper_neon_abdl_s64(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = sext i32 %1 to i64
  %i.c = sub nsw i64 %i.a, %i.b
  %2 = tail call i64 @llvm.abs.i64(i64 %i.c, i1 true)
  ret i64 %2
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
  %i.a = shl i32 %0, 24
  %i.b = ashr exact i32 %i.a, 24
  %i.c = shl i32 %1, 24
  %i.d = ashr exact i32 %i.c, 24
  %i.e = mul nsw i32 %i.d, %i.b
  %i.f = and i32 %i.e, 65535
  %i.g = shl i32 %0, 16
  %i.h = shl i32 %1, 16
  %i.i = ashr i32 %i.h, 24
  %i.j = ashr exact i32 %i.g, 8
  %i.k = and i32 %i.j, -65536
  %i.l = mul nsw i32 %i.k, %i.i
  %i.m = or disjoint i32 %i.f, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = shl i32 %0, 8
  %i.p = ashr i32 %i.o, 24
  %i.q = shl i32 %1, 8
  %i.r = ashr i32 %i.q, 24
  %i.s = mul nsw i32 %i.r, %i.p
  %i.t = and i32 %i.s, 65535
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 32
  %i.w = or disjoint i64 %i.v, %i.n
  %i.x = ashr i32 %0, 24
  %i.y = ashr i32 %1, 24
  %i.z = mul nsw i32 %i.y, %i.x
  %i.aa = and i32 %i.z, 65535
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 %i.ab, 48
  %i.ad = or disjoint i64 %i.w, %i.ac
  ret i64 %i.ad
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
  %i.a = shl i32 %0, 16
  %i.b = ashr exact i32 %i.a, 16
  %i.c = shl i32 %1, 16
  %i.d = ashr exact i32 %i.c, 16
  %i.e = mul nsw i32 %i.d, %i.b
  %i.f = zext i32 %i.e to i64
  %i.g = ashr i32 %0, 16
  %i.h = ashr i32 %1, 16
  %i.i = mul nsw i32 %i.h, %i.g
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw i64 %i.j, 32
  %i.l = or disjoint i64 %i.k, %i.f
  ret i64 %i.l
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
end_hunk_0
