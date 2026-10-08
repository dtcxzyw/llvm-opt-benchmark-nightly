Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/neon_helper?download=true
inline.NumInlined: 278
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 44
begin_hunk_0_@helper_neon_unarrow_sat16:bb.a
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
define dso_local range(i64 -140737488355328, 140737488355328) i64 @helper_neon_widen_s16(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = ashr i32 %0, 16
  %2 = sext i32 %1 to i64
  %sext3 = shl i32 %0, 16
  %i.a = ashr exact i32 %sext3, 16
  %i.b = zext i32 %i.a to i64
  %3 = shl nsw i64 %2, 32
  %i.c = or disjoint i64 %3, %i.b
  ret i64 %i.c
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
end_hunk_0
