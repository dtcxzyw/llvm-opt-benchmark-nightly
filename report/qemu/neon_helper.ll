Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/neon_helper?download=true
inline.NumInlined: 278
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 44
begin_hunk_0_@helper_neon_addlp_s16:bb.a
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
  %2 = icmp ugt i32 %0, %1
  %3 = sub nsw i64 %i.a, %i.b
  %i.c = sub nsw i64 %i.b, %i.a
  %4 = select i1 %2, i64 %3, i64 %i.c
  ret i64 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 -4294967295, 4294967296) i64 @helper_neon_abdl_s64(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %2 = icmp sgt i32 %0, %1
  %3 = sub nsw i64 %i.a, %i.b
  %i.c = sub nsw i64 %i.b, %i.a
  %4 = select i1 %2, i64 %3, i64 %i.c
  ret i64 %4
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
end_hunk_0
