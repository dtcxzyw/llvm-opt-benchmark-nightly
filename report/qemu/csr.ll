Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/csr?download=true
inline.NumInlined: 447
inline.NumDeleted: 65
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ctr:bb.a
  %or.cond53 = and i1 %i.al, %.not46
  br i1 %or.cond53, label %.thread52, label %.thread57

.thread52:                                        ; preds = %bb.k
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 11852
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %.pre54 = zext i32 %.pre to i64
  %.pre55 = and i64 %i.f, %.pre54
  %i.am = icmp eq i64 %.pre55, 0
  br i1 %i.am, label %bb.l, label %.thread57

.thread57:                                        ; preds = %bb.j, %bb.i, %.thread52, %bb.k
  br label %bb.l

bb.l:                                             ; preds = %.thread52, %bb.h, %bb.j, %bb.f, %bb.d, %bb.c, %bb.b, %.thread57
  %.042 = phi i32 [ 2, %bb.c ], [ -1, %.thread57 ], [ 22, %bb.h ], [ 2, %bb.f ], [ -1, %bb.d ], [ 2, %bb.b ], [ 22, %bb.j ], [ 2, %.thread52 ]
  ret i32 %.042
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 3) i32 @read_time(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5040
  %i.b = load i8, ptr %i.a, align 16, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 11600
  %i.e = load i64, ptr %i.d, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 15272
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 15280
  %i.j = load ptr, ptr %i.i, align 16
  %i.k = tail call i64 %i.h(ptr noundef %i.j) #16
  %i.l = add i64 %i.k, %i.f
  store i64 %i.l, ptr %2, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ 2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_vl(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4616
  %i.b = load i32, ptr %i.a, align 8
  %i.c = zext i32 %i.b to i64
  store i64 %i.c, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @read_vtype(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4972
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 4960
  %.val = load i32, ptr %i.d, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %.val, %bb.b ], [ %i.b, %bb.a ]
  switch i32 %.0, label %bb.e [
    i32 1, label %bb.f
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 968, ptr noundef nonnull @__func__.read_vtype, ptr noundef null) #15
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.d
  %.sink11 = phi i64 [ 63, %bb.d ], [ 31, %bb.c ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4626
  %i.f = load i8, ptr %i.e, align 2, !range !12, !noundef !13
  %i.g = zext nneg i8 %i.f to i64
  %i.h = shl nuw i64 %i.g, %.sink11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.j = load i64, ptr %i.i, align 16
  %i.k = or i64 %i.j, %i.h
  store i64 %i.k, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_vlenb(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15820
  %i.b = load i16, ptr %i.a, align 4
  %i.c = zext i16 %i.b to i64
  store i64 %i.c, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 23) i32 @ctr32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4960
  %.val = load i32, ptr %i.a, align 16
  %.not = icmp eq i32 %.val, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @ctr(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 3) i32 @read_timeh(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5040
  %i.b = load i8, ptr %i.a, align 16, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 11600
  %i.e = load i64, ptr %i.d, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 15272
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 15280
  %i.j = load ptr, ptr %i.i, align 16
  %i.k = tail call i64 %i.h(ptr noundef %i.j) #16
  %i.l = add i64 %i.k, %i.f
  %i.m = lshr i64 %i.l, 32
  store i64 %i.m, ptr %2, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ 2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 3) i32 @sscofpmf(ptr nofree noundef readonly captures(none) %0, i32 %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15752
  %i.b = load i8, ptr %i.a, align 8, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  %. = select i1 %i.c, i32 -1, i32 2
  ret i32 %.
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal range(i32 -1, 23) i32 @read_scountovf(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #10 {
bb.a:
  store i64 0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5040
  %i.b = load i8, ptr %i.a, align 16, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 15752
  %i.e = load i8, ptr %i.d, align 8, !range !12, !noundef !13
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 15692
  %i.h = load i8, ptr %i.g, align 4, !range !12, !noundef !13
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5024
  %i.k = load i64, ptr %i.j, align 16
  %i.l = and i64 %i.k, 1152921504606846976
  %.not = icmp ne i64 %i.l, 0
  %brmerge.not = and i1 %.not, %i.c
  br i1 %brmerge.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5017 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 11856 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 11552
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 2 uses
  %.pre37 = load i8, ptr %i.m, align 1            ; 2 uses
  br i1 %i.c, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.d, %bb.i
  %i.q = phi i64 [ %i.ad, %bb.i ], [ 0, %bb.d ]   ; 4 uses
  %3 = phi i8 [ %4, %bb.i ], [ %.pre37, %bb.d ]   ; 4 uses
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %bb.i ], [ 3, %bb.d ] ; 4 uses
  %i.r = icmp ult i8 %3, 3
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.split.us
  %i.s = load i32, ptr %i.n, align 16
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw nsw i64 1, %indvars.iv31         ; 2 uses
  %i.v = and i64 %i.u, %i.t
  %.not24.us = icmp eq i64 %i.v, 0
  br i1 %.not24.us, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.o, align 16
  %i.x = zext i32 %i.w to i64
  %i.y = and i64 %i.u, %i.x
  %.not25.us = icmp eq i64 %i.y, 0
  br i1 %.not25.us, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %.split.us
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv31
  %i.aa = load i64, ptr %i.z, align 8
  %.not26.us = icmp sgt i64 %i.aa, -1
  br i1 %.not26.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = shl nuw nsw i64 1, %indvars.iv31
  %i.ac = or i64 %i.q, %i.ab                      ; 2 uses
  store i64 %i.ac, ptr %2, align 8
  %.pre36 = load i8, ptr %i.m, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.ad = phi i64 [ %i.ac, %bb.h ], [ %i.q, %bb.g ], [ %i.q, %bb.f ], [ %i.q, %bb.e ]
  %4 = phi i8 [ %.pre36, %bb.h ], [ %3, %bb.g ], [ %3, %bb.f ], [ %3, %bb.e ]
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next32, 32
  br i1 %exitcond34.not, label %.loopexit, label %.split.us, !llvm.loop !34

.split:                                           ; preds = %bb.d, %bb.m
  %i.ae = phi i64 [ %i.ao, %bb.m ], [ 0, %bb.d ]  ; 3 uses
  %5 = phi i8 [ %6, %bb.m ], [ %.pre37, %bb.d ]   ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 3, %bb.d ] ; 4 uses
  %i.af = icmp ult i8 %5, 3
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split
  %i.ag = load i32, ptr %i.n, align 16
  %i.ah = zext i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 1, %indvars.iv
  %i.aj = and i64 %i.ai, %i.ah
  %.not24 = icmp eq i64 %i.aj, 0
  br i1 %.not24, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j, %.split
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.al = load i64, ptr %i.ak, align 8
  %.not26 = icmp sgt i64 %i.al, -1
  br i1 %.not26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = shl nuw nsw i64 1, %indvars.iv
  %i.an = or i64 %i.ae, %i.am                     ; 2 uses
  store i64 %i.an, ptr %2, align 8
  %.pre = load i8, ptr %i.m, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %i.ao = phi i64 [ %i.ae, %bb.k ], [ %i.an, %bb.l ], [ %i.ae, %bb.j ]
  %6 = phi i8 [ %5, %bb.k ], [ %.pre, %bb.l ], [ %5, %bb.j ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %.loopexit, label %.split, !llvm.loop !34

.loopexit:                                        ; preds = %bb.m, %bb.i, %bb.c
  %.023 = phi i32 [ 22, %bb.c ], [ -1, %bb.i ], [ -1, %bb.m ]
  ret i32 %.023
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @read_stopi(ptr noundef %0, i32 %1, ptr nofree noundef writeonly captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5040
  %i.b = load i8, ptr %i.a, align 16, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @read_vstopi(ptr noundef nonnull %0, i32 poison, ptr noundef %2) ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 @riscv_cpu_sirq_pending(ptr noundef nonnull %0) #16 ; 4 uses
  %i.f = add i32 %i.e, -64
  %or.cond = icmp ult i32 %i.f, -63
  br i1 %or.cond, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 11440
  %i.h = zext nneg i32 %i.e to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1               ; 2 uses
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call zeroext i8 @riscv_cpu_default_priority(i32 noundef %i.e) #16
  %i.l = icmp ugt i8 %i.k, 19
  %spec.select = sext i1 %i.l to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i8 [ %i.j, %bb.d ], [ %spec.select, %bb.e ]
  %i.m = shl nuw nsw i32 %i.e, 16
  %i.n = zext i8 %.0 to i32
  %i.o = or disjoint i32 %i.m, %i.n
  %i.p = zext nneg i32 %i.o to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %storemerge = phi i64 [ %i.p, %bb.f ], [ 0, %bb.c ]
  store i64 %storemerge, ptr %2, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_hgeip(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(address_is_null) %2) #7 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11592
  %i.b = load i64, ptr %i.a, align 8
  store i64 %i.b, ptr %2, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @read_vstopi(ptr noundef %0, i32 %1, ptr nofree noundef writeonly captures(none) %2) #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [5 x i32], align 16               ; 12 uses
  %i.c = alloca [5 x i32], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.b, i8 0, i64 20, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.c, i8 0, i64 20, i1 false), !annotation !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 11528
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32
  %i.g = lshr i32 %i.f, 12
  %i.h = and i32 %i.g, 63                         ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 11624 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8              ; 3 uses
  %i.k = lshr i32 %i.j, 16
  %i.l = and i32 %i.k, 4095                       ; 3 uses
  %i.m = and i32 %i.j, 255                        ; 3 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 11592
  %i.o = load i64, ptr %i.n, align 8
  %i.p = zext nneg i32 %i.h to i64
  %i.q = shl nuw i64 1, %i.p
  %i.r = and i64 %i.o, %i.q
  %.not81 = icmp eq i64 %i.r, 0
  %i.s = select i1 %.not81, i64 0, i64 1024
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5096
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 5072
  %i.w = load i64, ptr %i.v, align 16
  %i.x = or i64 %i.s, %i.w
  %i.y = and i64 %i.u, 1024
  %i.z = and i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5041
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = icmp samesign ule i32 %i.h, %i.ac
  %i.ae = icmp ne i64 %i.z, 0
  %or.cond = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  store i32 9, ptr %i.b, align 16
  store i32 256, ptr %i.c, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 15296
  %i.ag = load ptr, ptr %i.af, align 16           ; 2 uses
  %.not82 = icmp eq ptr %i.ag, null
  br i1 %.not82, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 15328
  %i.ai = load ptr, ptr %i.ah, align 16
  %i.aj = getelementptr i8, ptr %0, i64 4960
  %.val = load i32, ptr %i.aj, align 16
  %i.ak = add i32 %.val, 4
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl i64 16777216, %i.al
  %i.an = shl nuw nsw i32 %i.h, 20
  %i.ao = trunc i64 %i.am to i32
  %i.ap = or i32 %i.an, %i.ao
  %i.aq = or disjoint i32 %i.ap, 328192
  %i.ar = call i32 %i.ag(ptr noundef %i.ai, i32 noundef %i.aq, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 0) #16
  %i.as = icmp eq i32 %i.ar, 0
  %i.at = load i64, ptr %i.a, align 8             ; 2 uses
  %i.au = icmp ne i64 %i.at, 0
  %or.cond3 = select i1 %i.as, i1 %i.au, i1 false
  br i1 %or.cond3, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.av = trunc i64 %i.at to i32
  %i.aw = and i32 %i.av, 2047
  store i32 %i.aw, ptr %i.c, align 16
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ax = icmp eq i32 %i.l, 9
  %i.ay = icmp ne i32 %i.m, 0
  %or.cond5 = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %or.cond5, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.f, %bb.b
  %.0 = phi i32 [ 0, %bb.f ], [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ] ; 4 uses
  %i.az = load i32, ptr %i.i, align 8
  %i.ba = and i32 %i.az, 1073741824
  %.not83 = icmp eq i32 %i.ba, 0
  br i1 %.not83, label %bb.j, label %bb.h

.thread:                                          ; preds = %bb.f
  store i32 9, ptr %i.b, align 16
  store i32 %i.m, ptr %i.c, align 16
  %i.bb = and i32 %i.j, 1073741824
  %.not8389 = icmp eq i32 %i.bb, 0
  br i1 %.not8389, label %bb.j, label %.lr.ph.preheader

bb.h:                                             ; preds = %bb.g
  %.not84 = icmp eq i32 %i.l, 9
  br i1 %.not84, label %.thread92, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = zext nneg i32 %.0 to i64                ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bc
  store i32 %i.l, ptr %i.bd, align 4
  br label %.lr.ph.preheader.sink.split

bb.j:                                             ; preds = %.thread, %bb.g
  %.091 = phi i32 [ 1, %.thread ], [ %.0, %bb.g ] ; 3 uses
  %i.be = call i32 @riscv_cpu_vsirq_pending(ptr noundef nonnull %0) #16 ; 4 uses
  %i.bf = icmp ne i32 %i.be, 9
  %i.bg = add i32 %i.be, -1
  %i.bh = icmp ult i32 %i.bg, 63
  %or.cond9 = and i1 %i.bf, %i.bh
  br i1 %or.cond9, label %bb.k, label %.thread92

bb.k:                                             ; preds = %bb.j
  %i.bi = zext nneg i32 %.091 to i64              ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bi
  store i32 %i.be, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 11628
  %i.bl = zext nneg i32 %i.be to i64
end_hunk_0
