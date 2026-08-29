Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/csr?download=true
inline.NumInlined: 447
inline.NumDeleted: 65
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@hstateenh:bb.a
  br label %hstateen_pred.exit

hstateen_pred.exit:                               ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 2, %bb.a ], [ 2, %bb.b ], [ -1, %bb.d ], [ 2, %bb.c ], [ -1, %bb.g ], [ 2, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_hstateenh(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #7 {
bb.a:
  %i.a = add i32 %1, -1564
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 15392
  %i.c = sext i32 %i.a to i64                     ; 2 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 15360
  %i.g = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.c
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, %i.e
  %i.j = lshr i64 %i.i, 32
  store i64 %i.j, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @write_hstateen0h(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 noundef %2, i64 %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15749
  %i.b = load i8, ptr %i.a, align 1, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 15695
  %i.e = load i8, ptr %i.d, align 1, !range !7, !noundef !8
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ -3458764513820540928, %bb.c ], [ -4611686018427387904, %bb.b ] ; 2 uses
  %i.g = or disjoint i64 %.0, 864691128455135232
  %spec.select = select i1 %i.c, i64 %i.g, i64 %.0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 15751
  %i.i = load i8, ptr %i.h, align 1, !range !7, !noundef !8
  %i.j = zext nneg i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 54
  %.2 = or disjoint i64 %i.k, %spec.select
  %i.l = add i32 %1, -1564
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 15392
  %i.n = sext i32 %i.l to i64                     ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = shl i64 %2, 32
  %i.q = load i64, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 15360
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.n
  %i.t = load i64, ptr %i.s, align 8
  %i.u = and i64 %.2, %i.t                        ; 2 uses
  %i.v = xor i64 %i.u, -1
  %i.w = and i64 %i.q, %i.v
  %i.x = and i64 %i.u, %i.p
  %i.y = or i64 %i.w, %i.x
  store i64 %i.y, ptr %i.o, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @write_hstateenh_1_3(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 noundef %2, i64 %3) #7 {
bb.a:
  %i.a = add i32 %1, -1564
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 15392
  %i.c = sext i32 %i.a to i64                     ; 2 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = shl i64 %2, 32
  %i.f = load i64, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 15360
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.c
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, -9223372036854775808       ; 2 uses
  %i.k = xor i64 %i.j, -1
  %i.l = and i64 %i.f, %i.k
  %i.m = and i64 %i.j, %i.e
  %i.n = or i64 %i.l, %i.m
  store i64 %i.n, ptr %i.d, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_htval(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11560
  %i.b = load i64, ptr %i.a, align 8
  store i64 %i.b, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal noundef i32 @write_htval(ptr nofree noundef writeonly captures(none) initializes((11560, 11568)) %0, i32 %1, i64 noundef %2, i64 %3) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11560
  store i64 %2, ptr %i.a, align 8
  ret i32 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @rmw_hip(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i64 noundef %3, i64 noundef %4) #3 {
bb.a:
  %i.a = and i64 %4, 4                            ; 2 uses
  %.not36.i.i = icmp eq i64 %i.a, 0
  br i1 %.not36.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %3, 4
  %i.c = tail call i64 @riscv_cpu_update_mip(ptr noundef nonnull %0, i64 noundef %i.a, i64 noundef %i.b) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5072
  %i.e = load i64, ptr %i.d, align 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.029.i.i = phi i64 [ %i.c, %bb.b ], [ %i.e, %bb.c ] ; 2 uses
  %.not37.i.i = icmp eq i32 %1, 1605
  br i1 %.not37.i.i, label %rmw_mip64.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 11528
  %i.g = load i64, ptr %i.f, align 8
  %i.h = lshr i64 %i.g, 12
  %i.i = and i64 %i.h, 63
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11592
  %i.k = load i64, ptr %i.j, align 8
  %i.l = shl nuw i64 1, %i.i
  %i.m = and i64 %i.l, %i.k
  %.not38.i.i = icmp eq i64 %i.m, 0
  %i.n = select i1 %.not38.i.i, i64 0, i64 1024
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 15536
  %i.p = load i8, ptr %i.o, align 16, !range !7, !noundef !8
  %i.q = shl nuw nsw i8 %i.p, 6
  %i.r = zext nneg i8 %i.q to i64
  %i.s = or disjoint i64 %i.n, %i.r
  %i.t = or i64 %i.s, %.029.i.i
  br label %rmw_mip64.exit.i

rmw_mip64.exit.i:                                 ; preds = %bb.e, %bb.d
  %.130.i.i = phi i64 [ %i.t, %bb.e ], [ %.029.i.i, %bb.d ]
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %rmw_mip.exit.thread, label %bb.f

bb.f:                                             ; preds = %rmw_mip64.exit.i
  %i.u = and i64 %.130.i.i, 5188
  store i64 %i.u, ptr %2, align 8
  br label %rmw_mip.exit.thread

rmw_mip.exit.thread:                              ; preds = %rmw_mip64.exit.i, %bb.f
  ret i32 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @rmw_hvip(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i64 noundef %3, i64 noundef %4) #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call fastcc void @rmw_hvip64(ptr noundef %0, i32 noundef %1, ptr noundef %i.a, i64 noundef %3, i64 noundef %4)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8
  store i64 %i.b, ptr %2, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef range(i32 -1, 23) i32 @read_hviprio1(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef captures(none) initializes((0, 8)) %2) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 11628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.d = getelementptr i8, ptr %0, i64 4960
  %.val.i = load i32, ptr %i.d, align 16
  %i.e = add i32 %.val.i, 4
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f
  %i.h = lshr i64 %i.g, 3                         ; 2 uses
  %i.i = trunc i64 %i.h to i32
  store i64 0, ptr %2, align 8
  %i.j = icmp sgt i32 %i.i, 3
  br i1 %i.j, label %.lr.ph.preheader.i, label %read_hvipriox.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = and i64 %i.h, 2147483644
  store i32 0, ptr %i.a, align 4, !annotation !17
  store i32 0, ptr %i.b, align 4, !annotation !17
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.k = trunc i64 %indvars.iv.i to i32
  %i.l = call i32 @riscv_cpu_hviprio_index2irq(i32 noundef %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %i.m = icmp ne i32 %i.l, 0
  %i.n = load i32, ptr %i.b, align 4
  %i.o = icmp ne i32 %i.n, 0
  %or.cond.i = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = load i32, ptr %i.a, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.c, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %indvars.iv.i, 3
  %i.v = and i64 %i.u, 4294967288
  %i.w = shl i64 %i.t, %i.v
  %i.x = load i64, ptr %2, align 8
  %i.y = or i64 %i.w, %i.x
  store i64 %i.y, ptr %2, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %read_hvipriox.exit, label %.lr.ph.i, !llvm.loop !32

read_hvipriox.exit:                               ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef range(i32 -1, 23) i32 @write_hviprio1(ptr nofree noundef captures(none) %0, i32 %1, i64 noundef %2, i64 %3) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 11628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.d = getelementptr i8, ptr %0, i64 4960
  %.val.i = load i32, ptr %i.d, align 16
  %i.e = add i32 %.val.i, 4
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f
  %i.h = lshr i64 %i.g, 3                         ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp sgt i32 %i.i, 3
  br i1 %i.j, label %.lr.ph.preheader.i, label %write_hvipriox.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = and i64 %i.h, 2147483644
  store i32 0, ptr %i.a, align 4, !annotation !17
  store i32 0, ptr %i.b, align 4, !annotation !17
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.k = trunc i64 %indvars.iv.i to i32
  %i.l = call i32 @riscv_cpu_hviprio_index2irq(i32 noundef %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %.not14.i = icmp eq i32 %i.l, 0
  br i1 %.not14.i, label %.sink.split.i, label %bb.b

.sink.split.i:                                    ; preds = %.lr.ph.i
  %i.m = load i32, ptr %i.b, align 4
  %.not15.i = icmp eq i32 %i.m, 0
  %i.n = shl nuw nsw i64 %indvars.iv.i, 3
  %i.o = and i64 %i.n, 4294967288
  %i.p = lshr i64 %2, %i.o
  %i.q = trunc i64 %i.p to i8
  %.sink.i = select i1 %.not15.i, i8 %i.q, i8 0
  %i.r = load i32, ptr %i.a, align 4
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.c, i64 %i.s
  store i8 %.sink.i, ptr %i.t, align 1
  br label %bb.b

bb.b:                                             ; preds = %.sink.split.i, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %write_hvipriox.exit, label %.lr.ph.i, !llvm.loop !33

write_hvipriox.exit:                              ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 23) i32 @read_hviprio2(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef captures(none) %2) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 11628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.d = getelementptr i8, ptr %0, i64 4960
  %.val.i = load i32, ptr %i.d, align 16
  %i.e = add i32 %.val.i, 4
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f
  %i.h = lshr i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  %3 = and i32 %i.i, -4
  %i.j = add i32 %i.i, 12
  %i.k = and i32 %i.j, 8
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5040
  %i.m = load i8, ptr %i.l, align 16, !range !7, !noundef !8
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.n, i32 22, i32 2
  br label %read_hvipriox.exit

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %2, align 8
  %i.p = icmp sgt i32 %i.i, 3
  br i1 %i.p, label %.lr.ph.preheader.i, label %read_hvipriox.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  store i32 0, ptr %i.a, align 4, !annotation !17
  store i32 0, ptr %i.b, align 4, !annotation !17
  %smax.i = tail call i32 @llvm.smax.i32(i32 %3, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.q = trunc i64 %indvars.iv.i to i32
  %i.r = add i32 %i.q, 8
  %i.s = call i32 @riscv_cpu_hviprio_index2irq(i32 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %i.t = icmp ne i32 %i.s, 0
  %i.u = load i32, ptr %i.b, align 4
  %i.v = icmp ne i32 %i.u, 0
  %or.cond.i = select i1 %i.t, i1 true, i1 %i.v
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.w = load i32, ptr %i.a, align 4
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.c, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %indvars.iv.i, 3
  %i.ac = and i64 %i.ab, 4294967288
  %i.ad = shl i64 %i.aa, %i.ac
  %i.ae = load i64, ptr %2, align 8
  %i.af = or i64 %i.ad, %i.ae
  store i64 %i.af, ptr %2, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %read_hvipriox.exit, label %.lr.ph.i, !llvm.loop !32

read_hvipriox.exit:                               ; preds = %bb.e, %bb.b, %bb.c
  %.014.i = phi i32 [ %i.o, %bb.b ], [ -1, %bb.c ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.014.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 23) i32 @write_hviprio2(ptr nofree noundef captures(none) %0, i32 %1, i64 noundef %2, i64 %3) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 11628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.d = getelementptr i8, ptr %0, i64 4960
  %.val.i = load i32, ptr %i.d, align 16
  %i.e = add i32 %.val.i, 4
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f
  %i.h = lshr i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  %4 = and i32 %i.i, -4
  %i.j = add i32 %i.i, 12
  %i.k = and i32 %i.j, 8
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %i.l = icmp sgt i32 %i.i, 3
  br i1 %i.l, label %.lr.ph.preheader.i, label %write_hvipriox.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  store i32 0, ptr %i.a, align 4, !annotation !17
  store i32 0, ptr %i.b, align 4, !annotation !17
  %smax.i = tail call i32 @llvm.smax.i32(i32 %4, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5040
  %i.n = load i8, ptr %i.m, align 16, !range !7, !noundef !8
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = select i1 %i.o, i32 22, i32 2
  br label %write_hvipriox.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.q = trunc i64 %indvars.iv.i to i32
  %i.r = add i32 %i.q, 8
  %i.s = call i32 @riscv_cpu_hviprio_index2irq(i32 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %.not14.i = icmp eq i32 %i.s, 0
  br i1 %.not14.i, label %.sink.split.i, label %bb.c

.sink.split.i:                                    ; preds = %.lr.ph.i
  %i.t = load i32, ptr %i.b, align 4
  %.not15.i = icmp eq i32 %i.t, 0
  %i.u = shl nuw nsw i64 %indvars.iv.i, 3
  %i.v = and i64 %i.u, 4294967288
  %i.w = lshr i64 %2, %i.v
  %i.x = trunc i64 %i.w to i8
  %.sink.i = select i1 %.not15.i, i8 %i.x, i8 0
  %i.y = load i32, ptr %i.a, align 4
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %i.c, i64 %i.z
  store i8 %.sink.i, ptr %i.aa, align 1
  br label %bb.c

bb.c:                                             ; preds = %.sink.split.i, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %write_hvipriox.exit, label %.lr.ph.i, !llvm.loop !33

write_hvipriox.exit:                              ; preds = %bb.c, %.preheader.i, %bb.b
  %.013.i = phi i32 [ %i.p, %bb.b ], [ -1, %.preheader.i ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.013.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_htinst(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11568
  %i.b = load i64, ptr %i.a, align 16
  store i64 %i.b, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i32 @write_htinst(ptr nofree readnone captures(none) %0, i32 %1, i64 %2, i64 %3) #9 {
bb.a:
  ret i32 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @rmw_hviph(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i64 noundef %3, i64 noundef %4) #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = shl i64 %3, 32
  %i.c = shl i64 %4, 32
  call fastcc void @rmw_hvip64(ptr noundef %0, i32 noundef %1, ptr noundef %i.a, i64 noundef %i.b, i64 noundef %i.c)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8
  %i.e = lshr i64 %i.d, 32
  store i64 %i.e, ptr %2, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 23) i32 @read_hviprio1h(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef captures(none) %2) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 11628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.d = getelementptr i8, ptr %0, i64 4960
  %.val.i = load i32, ptr %i.d, align 16
  %i.e = add i32 %.val.i, 4
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f
  %i.h = lshr i64 %i.g, 3                         ; 2 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %wide.trip.count.i = and i64 %i.h, 4294967292
  %i.j = and i32 %i.i, 4
  %.not.i.not = icmp eq i32 %i.j, 0
  br i1 %.not.i.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5040
  %i.l = load i8, ptr %i.k, align 16, !range !7, !noundef !8
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.m, i32 22, i32 2
  br label %read_hvipriox.exit

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %2, align 8
  %i.o = icmp sgt i32 %i.i, 3
  br i1 %i.o, label %.lr.ph.preheader.i, label %read_hvipriox.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  store i32 0, ptr %i.a, align 4, !annotation !17
  store i32 0, ptr %i.b, align 4, !annotation !17
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.p = trunc i64 %indvars.iv.i to i32
  %i.q = add i32 %i.p, 4
  %i.r = call i32 @riscv_cpu_hviprio_index2irq(i32 noundef %i.q, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %i.s = icmp ne i32 %i.r, 0
  %i.t = load i32, ptr %i.b, align 4
  %i.u = icmp ne i32 %i.t, 0
  %or.cond.i = select i1 %i.s, i1 true, i1 %i.u
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.v = load i32, ptr %i.a, align 4
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %i.c, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i64
  %i.aa = shl i64 %indvars.iv.i, 3
  %i.ab = and i64 %i.aa, 4294967288
  %i.ac = shl i64 %i.z, %i.ab
  %i.ad = load i64, ptr %2, align 8
  %i.ae = or i64 %i.ac, %i.ad
  store i64 %i.ae, ptr %2, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %read_hvipriox.exit, label %.lr.ph.i, !llvm.loop !32

read_hvipriox.exit:                               ; preds = %bb.e, %bb.b, %bb.c
  %.014.i = phi i32 [ %i.n, %bb.b ], [ -1, %bb.c ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.014.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 23) i32 @write_hviprio1h(ptr nofree noundef captures(none) %0, i32 %1, i64 noundef %2, i64 %3) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 11628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.d = getelementptr i8, ptr %0, i64 4960
  %.val.i = load i32, ptr %i.d, align 16
  %i.e = add i32 %.val.i, 4
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f
  %i.h = lshr i64 %i.g, 3                         ; 2 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %wide.trip.count.i = and i64 %i.h, 4294967292
  %i.j = and i32 %i.i, 4
  %.not.i.not = icmp eq i32 %i.j, 0
  br i1 %.not.i.not, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.k = icmp sgt i32 %i.i, 3
  br i1 %i.k, label %.lr.ph.preheader.i, label %write_hvipriox.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  store i32 0, ptr %i.a, align 4, !annotation !17
  store i32 0, ptr %i.b, align 4, !annotation !17
  br label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5040
  %i.m = load i8, ptr %i.l, align 16, !range !7, !noundef !8
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.n, i32 22, i32 2
  br label %write_hvipriox.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.p = trunc i64 %indvars.iv.i to i32
  %i.q = add i32 %i.p, 4
  %i.r = call i32 @riscv_cpu_hviprio_index2irq(i32 noundef %i.q, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %.not14.i = icmp eq i32 %i.r, 0
  br i1 %.not14.i, label %.sink.split.i, label %bb.c

.sink.split.i:                                    ; preds = %.lr.ph.i
  %i.s = load i32, ptr %i.b, align 4
  %.not15.i = icmp eq i32 %i.s, 0
  %i.t = shl i64 %indvars.iv.i, 3
  %i.u = and i64 %i.t, 4294967288
  %i.v = lshr i64 %2, %i.u
  %i.w = trunc i64 %i.v to i8
  %.sink.i = select i1 %.not15.i, i8 %i.w, i8 0
  %i.x = load i32, ptr %i.a, align 4
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.c, i64 %i.y
  store i8 %.sink.i, ptr %i.z, align 1
  br label %bb.c

bb.c:                                             ; preds = %.sink.split.i, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %write_hvipriox.exit, label %.lr.ph.i, !llvm.loop !33

write_hvipriox.exit:                              ; preds = %bb.c, %.preheader.i, %bb.b
  %.013.i = phi i32 [ %i.o, %bb.b ], [ -1, %.preheader.i ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.013.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 23) i32 @read_hviprio2h(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef captures(none) %2) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 11628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.d = getelementptr i8, ptr %0, i64 4960
  %.val.i = load i32, ptr %i.d, align 16
  %i.e = add i32 %.val.i, 4
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f
  %i.h = lshr i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  %3 = and i32 %i.i, -4
  %i.j = add i32 %i.i, 12
  %i.k = and i32 %i.j, 12
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5040
  %i.m = load i8, ptr %i.l, align 16, !range !7, !noundef !8
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.n, i32 22, i32 2
  br label %read_hvipriox.exit

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %2, align 8
  %i.p = icmp sgt i32 %i.i, 3
  br i1 %i.p, label %.lr.ph.preheader.i, label %read_hvipriox.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  store i32 0, ptr %i.a, align 4, !annotation !17
  store i32 0, ptr %i.b, align 4, !annotation !17
  %smax.i = tail call i32 @llvm.smax.i32(i32 %3, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.q = trunc i64 %indvars.iv.i to i32
  %i.r = add i32 %i.q, 12
  %i.s = call i32 @riscv_cpu_hviprio_index2irq(i32 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %i.t = icmp ne i32 %i.s, 0
  %i.u = load i32, ptr %i.b, align 4
  %i.v = icmp ne i32 %i.u, 0
  %or.cond.i = select i1 %i.t, i1 true, i1 %i.v
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.w = load i32, ptr %i.a, align 4
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.c, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %indvars.iv.i, 3
  %i.ac = and i64 %i.ab, 4294967288
  %i.ad = shl i64 %i.aa, %i.ac
  %i.ae = load i64, ptr %2, align 8
  %i.af = or i64 %i.ad, %i.ae
  store i64 %i.af, ptr %2, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %read_hvipriox.exit, label %.lr.ph.i, !llvm.loop !32

read_hvipriox.exit:                               ; preds = %bb.e, %bb.b, %bb.c
  %.014.i = phi i32 [ %i.o, %bb.b ], [ -1, %bb.c ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.014.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 23) i32 @write_hviprio2h(ptr nofree noundef captures(none) %0, i32 %1, i64 noundef %2, i64 %3) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 11628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.d = getelementptr i8, ptr %0, i64 4960
  %.val.i = load i32, ptr %i.d, align 16
  %i.e = add i32 %.val.i, 4
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f
  %i.h = lshr i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  %4 = and i32 %i.i, -4
  %i.j = add i32 %i.i, 12
  %i.k = and i32 %i.j, 12
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %i.l = icmp sgt i32 %i.i, 3
  br i1 %i.l, label %.lr.ph.preheader.i, label %write_hvipriox.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  store i32 0, ptr %i.a, align 4, !annotation !17
  store i32 0, ptr %i.b, align 4, !annotation !17
  %smax.i = tail call i32 @llvm.smax.i32(i32 %4, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5040
  %i.n = load i8, ptr %i.m, align 16, !range !7, !noundef !8
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = select i1 %i.o, i32 22, i32 2
  br label %write_hvipriox.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.q = trunc i64 %indvars.iv.i to i32
  %i.r = add i32 %i.q, 12
  %i.s = call i32 @riscv_cpu_hviprio_index2irq(i32 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %.not14.i = icmp eq i32 %i.s, 0
  br i1 %.not14.i, label %.sink.split.i, label %bb.c

.sink.split.i:                                    ; preds = %.lr.ph.i
  %i.t = load i32, ptr %i.b, align 4
  %.not15.i = icmp eq i32 %i.t, 0
  %i.u = shl nuw nsw i64 %indvars.iv.i, 3
  %i.v = and i64 %i.u, 4294967288
  %i.w = lshr i64 %2, %i.v
  %i.x = trunc i64 %i.w to i8
  %.sink.i = select i1 %.not15.i, i8 %i.x, i8 0
  %i.y = load i32, ptr %i.a, align 4
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %i.c, i64 %i.z
  store i8 %.sink.i, ptr %i.aa, align 1
  br label %bb.c

bb.c:                                             ; preds = %.sink.split.i, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %write_hvipriox.exit, label %.lr.ph.i, !llvm.loop !33

write_hvipriox.exit:                              ; preds = %bb.c, %.preheader.i, %bb.b
  %.013.i = phi i32 [ %i.p, %bb.b ], [ -1, %.preheader.i ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.013.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 3) i32 @hgatp(ptr nofree noundef readonly captures(none) %0, i32 %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5017
  %i.b = load i8, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5040
  %i.e = load i8, ptr %i.d, align 16, !range !7, !noundef !8
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5064
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 1048576
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr i8, ptr %0, i64 4964
  %.val.i = load i32, ptr %i.j, align 4
  %i.k = and i32 %.val.i, 128
  %.not.i = icmp eq i32 %i.k, 0
  %..i = select i1 %.not.i, i32 2, i32 -1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %..i, %bb.d ], [ 2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_hgatp(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11576
  %i.b = load i64, ptr %i.a, align 8
  store i64 %i.b, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @write_hgatp(ptr noundef %0, i32 %1, i64 noundef %2, i64 %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11576 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 4960
  %.val.i = load i32, ptr %i.c, align 16
  %i.d = icmp eq i32 %.val.i, 1
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %2, 31
  %i.f = and i64 %i.e, 1                          ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 15836
  %.val20.i = load i8, ptr %i.g, align 4          ; 2 uses
  %i.h = icmp sgt i8 %.val20.i, -1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.437, ptr noundef nonnull @.str, i32 noundef 1955, ptr noundef nonnull @__PRETTY_FUNCTION__.validate_vm) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = zext nneg i8 %.val20.i to i64
  %.not.i.i = icmp samesign ugt i64 %i.f, %i.i
  br i1 %.not.i.i, label %validate_vm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr @valid_vm_1_10_32, i64 %i.f
  %i.k = load i8, ptr %i.j, align 1, !range !7, !noundef !8
  %i.l = trunc nuw i8 %i.k to i1
  br label %validate_vm.exit.i

validate_vm.exit.i:                               ; preds = %bb.e, %bb.d
  %i.m = phi i1 [ false, %bb.d ], [ %i.l, %bb.e ]
  %i.n = xor i64 %i.b, %2
  %i.o = and i64 %i.n, 4294967295
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.p = lshr i64 %2, 60                          ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 15836
  %.val18.i = load i8, ptr %i.q, align 4          ; 2 uses
  %i.r = icmp sgt i8 %.val18.i, -1
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.437, ptr noundef nonnull @.str, i32 noundef 1955, ptr noundef nonnull @__PRETTY_FUNCTION__.validate_vm) #15
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = zext nneg i8 %.val18.i to i64
  %.not.i21.i = icmp samesign ugt i64 %i.p, %i.s
  br i1 %.not.i21.i, label %validate_vm.exit22.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr @valid_vm_1_10_64, i64 %i.p
  %i.u = load i8, ptr %i.t, align 1, !range !7, !noundef !8
  %i.v = trunc nuw i8 %i.u to i1
  br label %validate_vm.exit22.i

validate_vm.exit22.i:                             ; preds = %bb.i, %bb.h
  %i.w = phi i1 [ false, %bb.h ], [ %i.v, %bb.i ]
  %i.x = xor i64 %i.b, %2
  br label %bb.j

bb.j:                                             ; preds = %validate_vm.exit22.i, %validate_vm.exit.i
  %.015.i = phi i64 [ %i.o, %validate_vm.exit.i ], [ %i.x, %validate_vm.exit22.i ]
  %.0.in.i = phi i1 [ %i.m, %validate_vm.exit.i ], [ %i.w, %validate_vm.exit22.i ]
  %i.y = icmp ne i64 %.015.i, 0
  %or.cond.i = and i1 %.0.in.i, %i.y
  br i1 %or.cond.i, label %bb.k, label %legalize_xatp.exit

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds i8, ptr %0, i64 -16496
  tail call void @tlb_flush(ptr noundef nonnull %i.z) #16
  br label %legalize_xatp.exit

legalize_xatp.exit:                               ; preds = %bb.j, %bb.k
  %.016.i = phi i64 [ %2, %bb.k ], [ %i.b, %bb.j ]
  store i64 %.016.i, ptr %i.a, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 3) i32 @smcntrpmf_32(ptr nofree noundef readonly captures(none) %0, i32 %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4960
  %.val = load i32, ptr %i.a, align 16
  %.not = icmp eq i32 %.val, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 15693
  %i.c = load i8, ptr %i.b, align 1, !range !7, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  %..i = select i1 %i.d, i32 -1, i32 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %..i, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_mcyclecfgh(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11872
  %i.b = load i64, ptr %i.a, align 16
  %i.c = lshr i64 %i.b, 32
  store i64 %i.c, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @write_mcyclecfgh(ptr nofree noundef captures(none) %0, i32 %1, i64 noundef %2, i64 %3) #7 {
.thread:
  %i.a = getelementptr i8, ptr %0, i64 4964
  %.val22 = load i32, ptr %i.a, align 4           ; 3 uses
  %i.b = and i32 %.val22, 1048576
  %.not = icmp eq i32 %i.b, 0                     ; 2 uses
  %i.c = select i1 %.not, i64 3288334335, i64 3556769791
  %i.d = and i32 %.val22, 262144
  %.not13 = icmp eq i32 %i.d, 0                   ; 2 uses
  %i.e = select i1 %.not13, i64 0, i64 536870912
  %i.f = or disjoint i64 %i.c, %i.e
  %i.g = and i32 %.val22, 128
  %.not14 = icmp eq i32 %i.g, 0
  %i.h = select i1 %.not, i64 0, i64 67108864
  %i.i = select i1 %.not13, i64 0, i64 134217728
  %i.j = or disjoint i64 %i.h, %i.i
  %i.k = select i1 %.not14, i64 0, i64 %i.j
  %i.l = or disjoint i64 %i.f, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 11872 ; 2 uses
  %i.n = load i64, ptr %i.m, align 16
end_hunk_0
begin_hunk_1_@rmw_cd_ctr_cfgh:bb.a
bb.e:                                             ; preds = %bb.c
  store i64 %i.d, ptr %2, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 11880 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = lshr i64 %i.n, 32                        ; 2 uses
  %.not27 = icmp eq i64 %4, 0
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = and i64 %4, -1073741825
  %i.q = xor i64 %i.p, -1
  %i.r = and i64 %i.o, %i.q
  %i.s = and i64 %i.n, 4294967295
  %i.t = and i64 %3, 3221225471
  %.masked = and i64 %i.t, %4
  %i.u = or i64 %i.r, %.masked
  %i.v = shl nuw i64 %i.u, 32
  %i.w = or disjoint i64 %i.v, %i.s
  store i64 %i.w, ptr %i.m, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i64 %i.o, ptr %2, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.h, %bb.g, %bb.b, %bb.a
  %.0 = phi i32 [ -22, %bb.b ], [ 2, %bb.a ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -22, 1) i32 @rmw_cd_mhpmeventh(ptr noundef %0, i32 noundef range(i32 3, 65536) %1, ptr nofree noundef writeonly captures(address_is_null) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12656
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = lshr i64 %i.d, 32                        ; 3 uses
  %.not = icmp eq i64 %4, 0                       ; 2 uses
  %i.f = add i64 %4, -1
  %or.cond = icmp ult i64 %i.f, -2
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ne ptr %2, null
  %or.cond3 = and i1 %i.g, %.not
  br i1 %or.cond3, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  store i64 %i.e, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 15752
  %i.i = load i8, ptr %i.h, align 8, !range !7, !noundef !8
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = and i64 %i.e, 3221225471
  store i64 %i.k, ptr %2, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = and i64 %4, -1073741825
  %i.m = xor i64 %i.l, -1
  %i.n = and i64 %i.e, %i.m
  %i.o = and i64 %3, 3221225471
  %.masked = and i64 %i.o, %4
  %i.p = or i64 %i.n, %.masked
  %i.q = and i64 %i.d, 4294967295
  %i.r = shl nuw i64 %i.p, 32
  %i.s = or disjoint i64 %i.r, %i.q               ; 2 uses
  store i64 %i.s, ptr %i.c, align 8
  %i.t = tail call i32 @riscv_pmu_update_event_map(ptr noundef nonnull %0, i64 noundef %i.s, i32 noundef %1) #16 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.c, %bb.e, %bb.a
  %.0 = phi i32 [ -22, %bb.a ], [ -22, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @riscv_pmu_write_ctr(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11888
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.b ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 4960
  %.val = load i32, ptr %i.d, align 16
  %i.e = icmp eq i32 %.val, 1
  %i.f = load i64, ptr %i.c, align 8
  %i.g = select i1 %i.e, i64 4294967295, i64 -1   ; 3 uses
  %i.h = xor i64 %i.g, -1                         ; 3 uses
  %i.i = and i64 %i.f, %i.h
  %i.j = and i64 %i.g, %1                         ; 2 uses
  %i.k = or i64 %i.i, %i.j
  store i64 %i.k, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 11864
  %i.m = load i32, ptr %i.l, align 8
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw i64 1, %i.b
  %i.p = and i64 %i.o, %i.n
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.q = tail call zeroext i1 @riscv_pmu_ctr_monitor_cycles(ptr noundef nonnull %0, i32 noundef %2) #16
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call zeroext i1 @riscv_pmu_ctr_monitor_instructions(ptr noundef nonnull %0, i32 noundef %2) #16
  br i1 %i.r, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = tail call fastcc i64 @riscv_pmu_ctr_get_fixed_counters_val(ptr noundef nonnull %0, i32 noundef %2)
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = and i64 %i.u, %i.h
  %i.w = and i64 %i.s, %i.g
  %i.x = or i64 %i.v, %i.w
  store i64 %i.x, ptr %i.t, align 8
  %i.y = icmp ugt i32 %2, 2
  br i1 %i.y, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.z = load i64, ptr %i.c, align 8
  %i.aa = tail call i32 @riscv_pmu_setup_timer(ptr noundef nonnull %0, i64 noundef %i.z, i32 noundef %2) #16 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = and i64 %i.ac, %i.h
  %i.ae = or i64 %i.ad, %i.j
  store i64 %i.ae, ptr %i.ab, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  ret void
}

declare i32 @riscv_pmu_setup_timer(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @riscv_pmu_update_event_map(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare void @tlb_flush(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @riscv_env_smode_dbltrp_enabled(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @riscv_cpu_validate_set_extensions(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare zeroext i1 @cpu_unwind_state_data(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare void @riscv_timer_stce_changed(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

declare i64 @pmpcfg_csr_read(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @pmpcfg_csr_write(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare i64 @pmpaddr_csr_read(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @pmpaddr_csr_write(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare i32 @riscv_cpu_hviprio_index2irq(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i64 @mseccfg_csr_read(ptr noundef) local_unnamed_addr #5

declare void @mseccfg_csr_write(ptr noundef, i64 noundef) local_unnamed_addr #5

declare i64 @tselect_csr_read(ptr noundef) local_unnamed_addr #5

declare void @tselect_csr_write(ptr noundef, i64 noundef) local_unnamed_addr #5

declare zeroext i1 @tdata_available(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i64 @tdata_csr_read(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @tdata_csr_write(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare i64 @tinfo_csr_read(ptr noundef) local_unnamed_addr #5

declare i32 @riscv_cpu_sirq_pending(ptr noundef) local_unnamed_addr #5

declare zeroext i8 @riscv_cpu_default_priority(i32 noundef) local_unnamed_addr #5

declare i32 @riscv_cpu_vsirq_pending(ptr noundef) local_unnamed_addr #5

declare i32 @riscv_cpu_mirq_pending(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{i64 2897998}
!11 = distinct !{null}
!12 = distinct !{null}
!13 = distinct !{ptr @riscv_csrrw, null}
!14 = distinct !{ptr @riscv_csrrw, null}
!15 = distinct !{ptr @riscv_csrr, null}
!16 = distinct !{ptr @riscv_csrr, null}
!17 = !{!"auto-init"}
!18 = distinct !{null}
!19 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!20 = distinct !{!20, !21, !22, !23}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !21, !22}
!25 = distinct !{!25, !21, !22, !23}
!26 = !{!"branch_weights", i32 8, i32 8}
!27 = distinct !{!27, !21, !22, !23}
!28 = distinct !{!28, !21, !22}
!29 = distinct !{null}
!30 = distinct !{!30, !21, !31}
!31 = !{!"llvm.loop.peeled.count", i32 3}
!32 = distinct !{!32, !21}
!33 = distinct !{!33, !21}
!34 = distinct !{!34, !21}
!35 = distinct !{!35, !21}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
