Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fpu_helper?download=true
inline.NumInlined: 830
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 540
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 554
begin_hunk_0_@helper_vpsrlvd_xmm:bb.a

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = phi i32 [ %i.aa, %bb.h ], [ 0, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.ab, ptr %i.ac, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpsravd_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = load i32, ptr %3, align 4
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.b, i32 31)
  %i.c = ashr i32 %i.a, %spec.select
  store i32 %i.c, ptr %1, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %spec.select.1 = tail call i32 @llvm.umin.i32(i32 %i.g, i32 31)
  %i.h = ashr i32 %i.e, %spec.select.1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.h, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i32, ptr %i.l, align 4
  %spec.select.2 = tail call i32 @llvm.umin.i32(i32 %i.m, i32 31)
  %i.n = ashr i32 %i.k, %spec.select.2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.n, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %spec.select.3 = tail call i32 @llvm.umin.i32(i32 %i.s, i32 31)
  %i.t = ashr i32 %i.q, %spec.select.3
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.t, ptr %i.u, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpsllvd_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %3, align 4                ; 2 uses
  %i.b = icmp ult i32 %i.a, 32
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 4
  %i.d = shl i32 %i.c, %i.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  store i32 %i.e, ptr %1, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp ult i32 %i.g, 32
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = shl i32 %i.j, %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i32 [ %i.k, %bb.d ], [ 0, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = icmp ult i32 %i.o, 32
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i32, ptr %i.q, align 4
  %i.s = shl i32 %i.r, %i.o
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = phi i32 [ %i.s, %bb.f ], [ 0, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.t, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = icmp ult i32 %i.w, 32
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = shl i32 %i.z, %i.w
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = phi i32 [ %i.aa, %bb.h ], [ 0, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.ab, ptr %i.ac, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpsrlvq_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8                ; 2 uses
  %i.b = icmp ult i64 %i.a, 64
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8
  %i.d = lshr i64 %i.c, %i.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  store i64 %i.e, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp ult i64 %i.g, 64
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i64 %i.j, %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.l, ptr %i.m, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpsravq_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = load i64, ptr %3, align 8
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.b, i64 63)
  %i.c = ashr i64 %i.a, %spec.select
  store i64 %i.c, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %spec.select.1 = tail call i64 @llvm.umin.i64(i64 %i.g, i64 63)
  %i.h = ashr i64 %i.e, %spec.select.1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.h, ptr %i.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpsllvq_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8                ; 2 uses
  %i.b = icmp ult i64 %i.a, 64
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8
  %i.d = shl i64 %i.c, %i.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  store i64 %i.e, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp ult i64 %i.g, 64
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = shl i64 %i.j, %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.l, ptr %i.m, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vtestps_xmm(ptr nofree noundef writeonly captures(none) initializes((280, 288), (296, 300)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x i32>, ptr %2, align 4          ; 2 uses
  %i.d = load <2 x i32>, ptr %1, align 4          ; 2 uses
  %i.e = xor <2 x i32> %i.d, <i32 -1, i32 0>
  %i.f = and <2 x i32> %i.c, %i.e
  %3 = shufflevector <2 x i32> %i.f, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %4 = xor <2 x i32> %i.d, <i32 0, i32 -1>
  %5 = and <2 x i32> %i.c, %4
  %i.g = or <2 x i32> %5, %3
  %i.h = load <2 x i32>, ptr %i.b, align 4        ; 2 uses
  %i.i = shufflevector <2 x i32> %i.h, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.j = xor <2 x i32> %i.i, <i32 0, i32 -1>
  %i.k = load <2 x i32>, ptr %i.a, align 4        ; 2 uses
  %i.l = shufflevector <2 x i32> %i.k, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.m = and <2 x i32> %i.l, %i.j
  %i.n = or <2 x i32> %i.m, %i.g
  %i.o = shufflevector <2 x i32> %i.h, <2 x i32> poison, <2 x i32> <i32 1, i32 1>
  %i.p = xor <2 x i32> %i.o, <i32 0, i32 -1>
  %i.q = shufflevector <2 x i32> %i.k, <2 x i32> poison, <2 x i32> <i32 1, i32 1>
  %i.r = and <2 x i32> %i.q, %i.p
  %i.s = or <2 x i32> %i.r, %i.n                  ; 2 uses
  %i.t = extractelement <2 x i32> %i.s, i64 0
  %.not.inv = icmp slt i32 %i.t, 0
  %i.u = select i1 %.not.inv, i64 0, i64 64
  %i.v = extractelement <2 x i32> %i.s, i64 1
  %.not = icmp sgt i32 %i.v, -1
  %i.w = zext i1 %.not to i64
  %i.x = or disjoint i64 %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 0, ptr %i.z, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vtestpd_xmm(ptr nofree noundef writeonly captures(none) initializes((280, 288), (296, 300)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load <2 x i64>, ptr %2, align 8          ; 2 uses
  %i.b = load <2 x i64>, ptr %1, align 8          ; 2 uses
  %i.c = xor <2 x i64> %i.b, <i64 -1, i64 0>
  %i.d = and <2 x i64> %i.a, %i.c
  %i.e = shufflevector <2 x i64> %i.d, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.f = xor <2 x i64> %i.b, <i64 0, i64 -1>
  %i.g = and <2 x i64> %i.a, %i.f
  %i.h = or <2 x i64> %i.g, %i.e                  ; 2 uses
  %i.i = extractelement <2 x i64> %i.h, i64 0
  %.not.inv = icmp slt i64 %i.i, 0
  %i.j = select i1 %.not.inv, i64 0, i64 64
  %i.k = extractelement <2 x i64> %i.h, i64 1
  %.not17 = icmp sgt i64 %i.k, -1
  %i.l = zext i1 %.not17 to i64
  %i.m = or disjoint i64 %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 0, ptr %i.o, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vpmaskmovd_st_xmm(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %.not = icmp sgt i32 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 4
  %i.c = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.d = ptrtoint ptr %i.c to i64
  tail call void @cpu_stl_mmu(ptr noundef %0, i64 noundef %3, i32 noundef %i.b, i32 noundef 66, i64 noundef %i.d) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %.not.1 = icmp sgt i32 %i.f, -1
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add i64 %3, 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.k = ptrtoint ptr %i.j to i64
  tail call void @cpu_stl_mmu(ptr noundef %0, i64 noundef %i.g, i32 noundef %i.i, i32 noundef 66, i64 noundef %i.k) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 4
  %.not.2 = icmp sgt i32 %i.m, -1
  br i1 %.not.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = add i64 %3, 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.r = ptrtoint ptr %i.q to i64
  tail call void @cpu_stl_mmu(ptr noundef %0, i64 noundef %i.n, i32 noundef %i.p, i32 noundef 66, i64 noundef %i.r) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load i32, ptr %i.s, align 4
  %.not.3 = icmp sgt i32 %i.t, -1
  br i1 %.not.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add i64 %3, 12
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.w = load i32, ptr %i.v, align 4
  %i.x = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.y = ptrtoint ptr %i.x to i64
  tail call void @cpu_stl_mmu(ptr noundef %0, i64 noundef %i.u, i32 noundef %i.w, i32 noundef 66, i64 noundef %i.y) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vpmaskmovq_st_xmm(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp sgt i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 8
  %i.c = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.d = ptrtoint ptr %i.c to i64
  tail call void @cpu_stq_mmu(ptr noundef %0, i64 noundef %3, i64 noundef %i.b, i32 noundef 98, i64 noundef %i.d) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %.not.1 = icmp sgt i64 %i.f, -1
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add i64 %3, 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.k = ptrtoint ptr %i.j to i64
  tail call void @cpu_stq_mmu(ptr noundef %0, i64 noundef %i.g, i64 noundef %i.i, i32 noundef 98, i64 noundef %i.k) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpmaskmovd_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %.not = icmp sgt i32 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %3, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  store i32 %i.c, ptr %1, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %.not.1 = icmp sgt i32 %i.e, -1
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load i32, ptr %i.f, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi i32 [ %i.g, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.h, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 4
  %.not.2 = icmp sgt i32 %i.k, -1
  br i1 %.not.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i32, ptr %i.l, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi i32 [ %i.m, %bb.f ], [ 0, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.n, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %.not.3 = icmp sgt i32 %i.q, -1
  br i1 %.not.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.s = load i32, ptr %i.r, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = phi i32 [ %i.s, %bb.h ], [ 0, %bb.g ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.t, ptr %i.u, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpmaskmovq_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %.not = icmp sgt i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8
  br label %bb.c
end_hunk_0
begin_hunk_1_@helper_pblendvb_ymm:bb.a
  %.not9.21 = icmp slt i8 %i.bk, 0
  %..21 = select i1 %.not9.21, ptr %3, ptr %2
  %.in.in.21 = getelementptr inbounds nuw i8, ptr %..21, i64 21
  %.in.21 = load i8, ptr %.in.in.21, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 %.in.21, ptr %i.bl, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.bn = load i8, ptr %i.bm, align 1
  %.not9.22 = icmp slt i8 %i.bn, 0
  %..22 = select i1 %.not9.22, ptr %3, ptr %2
  %.in.in.22 = getelementptr inbounds nuw i8, ptr %..22, i64 22
  %.in.22 = load i8, ptr %.in.in.22, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 %.in.22, ptr %i.bo, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 23
  %i.bq = load i8, ptr %i.bp, align 1
  %.not9.23 = icmp slt i8 %i.bq, 0
  %..23 = select i1 %.not9.23, ptr %3, ptr %2
  %.in.in.23 = getelementptr inbounds nuw i8, ptr %..23, i64 23
  %.in.23 = load i8, ptr %.in.in.23, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 %.in.23, ptr %i.br, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bt = load i8, ptr %i.bs, align 1
  %.not9.24 = icmp slt i8 %i.bt, 0
  %..24 = select i1 %.not9.24, ptr %3, ptr %2
  %.in.in.24 = getelementptr inbounds nuw i8, ptr %..24, i64 24
  %.in.24 = load i8, ptr %.in.in.24, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 %.in.24, ptr %i.bu, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 25
  %i.bw = load i8, ptr %i.bv, align 1
  %.not9.25 = icmp slt i8 %i.bw, 0
  %..25 = select i1 %.not9.25, ptr %3, ptr %2
  %.in.in.25 = getelementptr inbounds nuw i8, ptr %..25, i64 25
  %.in.25 = load i8, ptr %.in.in.25, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 %.in.25, ptr %i.bx, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.bz = load i8, ptr %i.by, align 1
  %.not9.26 = icmp slt i8 %i.bz, 0
  %..26 = select i1 %.not9.26, ptr %3, ptr %2
  %.in.in.26 = getelementptr inbounds nuw i8, ptr %..26, i64 26
  %.in.26 = load i8, ptr %.in.in.26, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 %.in.26, ptr %i.ca, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 27
  %i.cc = load i8, ptr %i.cb, align 1
  %.not9.27 = icmp slt i8 %i.cc, 0
  %..27 = select i1 %.not9.27, ptr %3, ptr %2
  %.in.in.27 = getelementptr inbounds nuw i8, ptr %..27, i64 27
  %.in.27 = load i8, ptr %.in.in.27, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 %.in.27, ptr %i.cd, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.cf = load i8, ptr %i.ce, align 1
  %.not9.28 = icmp slt i8 %i.cf, 0
  %..28 = select i1 %.not9.28, ptr %3, ptr %2
  %.in.in.28 = getelementptr inbounds nuw i8, ptr %..28, i64 28
  %.in.28 = load i8, ptr %.in.in.28, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 %.in.28, ptr %i.cg, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 29
  %i.ci = load i8, ptr %i.ch, align 1
  %.not9.29 = icmp slt i8 %i.ci, 0
  %..29 = select i1 %.not9.29, ptr %3, ptr %2
  %.in.in.29 = getelementptr inbounds nuw i8, ptr %..29, i64 29
  %.in.29 = load i8, ptr %.in.in.29, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 %.in.29, ptr %i.cj, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 30
  %i.cl = load i8, ptr %i.ck, align 1
  %.not9.30 = icmp slt i8 %i.cl, 0
  %..30 = select i1 %.not9.30, ptr %3, ptr %2
  %.in.in.30 = getelementptr inbounds nuw i8, ptr %..30, i64 30
  %.in.30 = load i8, ptr %.in.in.30, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i8 %.in.30, ptr %i.cm, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 31
  %i.co = load i8, ptr %i.cn, align 1
  %.not9.31 = icmp slt i8 %i.co, 0
  %..31 = select i1 %.not9.31, ptr %3, ptr %2
  %.in.in.31 = getelementptr inbounds nuw i8, ptr %..31, i64 31
  %.in.31 = load i8, ptr %.in.in.31, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 31
  store i8 %.in.31, ptr %i.cp, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_blendvps_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %4, align 4
  %.not9 = icmp slt i32 %i.a, 0
  %. = select i1 %.not9, ptr %3, ptr %2
  %i.b = load i32, ptr %., align 4
  store i32 %i.b, ptr %1, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %.not9.1 = icmp slt i32 %i.d, 0
  %..1 = select i1 %.not9.1, ptr %3, ptr %2
  %.in.1 = getelementptr inbounds nuw i8, ptr %..1, i64 4
  %i.e = load i32, ptr %.in.1, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i32, ptr %i.g, align 4
  %.not9.2 = icmp slt i32 %i.h, 0
  %..2 = select i1 %.not9.2, ptr %3, ptr %2
  %.in.2 = getelementptr inbounds nuw i8, ptr %..2, i64 8
  %i.i = load i32, ptr %.in.2, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %.not9.3 = icmp slt i32 %i.l, 0
  %..3 = select i1 %.not9.3, ptr %3, ptr %2
  %.in.3 = getelementptr inbounds nuw i8, ptr %..3, i64 12
  %i.m = load i32, ptr %.in.3, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.m, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %i.o, align 4
  %.not9.4 = icmp slt i32 %i.p, 0
  %..4 = select i1 %.not9.4, ptr %3, ptr %2
  %.in.4 = getelementptr inbounds nuw i8, ptr %..4, i64 16
  %i.q = load i32, ptr %.in.4, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.q, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.t = load i32, ptr %i.s, align 4
  %.not9.5 = icmp slt i32 %i.t, 0
  %..5 = select i1 %.not9.5, ptr %3, ptr %2
  %.in.5 = getelementptr inbounds nuw i8, ptr %..5, i64 20
  %i.u = load i32, ptr %.in.5, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.u, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.x = load i32, ptr %i.w, align 4
  %.not9.6 = icmp slt i32 %i.x, 0
  %..6 = select i1 %.not9.6, ptr %3, ptr %2
  %.in.6 = getelementptr inbounds nuw i8, ptr %..6, i64 24
  %i.y = load i32, ptr %.in.6, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.y, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ab = load i32, ptr %i.aa, align 4
  %.not9.7 = icmp slt i32 %i.ab, 0
  %..7 = select i1 %.not9.7, ptr %3, ptr %2
  %.in.7 = getelementptr inbounds nuw i8, ptr %..7, i64 28
  %i.ac = load i32, ptr %.in.7, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.ac, ptr %i.ad, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_blendvpd_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %4, align 8
  %.not9 = icmp slt i64 %i.a, 0
  %. = select i1 %.not9, ptr %3, ptr %2
  %i.b = load i64, ptr %., align 8
  store i64 %i.b, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not9.1 = icmp slt i64 %i.d, 0
  %..1 = select i1 %.not9.1, ptr %3, ptr %2
  %.in.1 = getelementptr inbounds nuw i8, ptr %..1, i64 8
  %i.e = load i64, ptr %.in.1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %.not9.2 = icmp slt i64 %i.h, 0
  %..2 = select i1 %.not9.2, ptr %3, ptr %2
  %.in.2 = getelementptr inbounds nuw i8, ptr %..2, i64 16
  %i.i = load i64, ptr %.in.2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %.not9.3 = icmp slt i64 %i.l, 0
  %..3 = select i1 %.not9.3, ptr %3, ptr %2
  %.in.3 = getelementptr inbounds nuw i8, ptr %..3, i64 24
  %i.m = load i64, ptr %.in.3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.m, ptr %i.n, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_ptest_ymm(ptr nofree noundef writeonly captures(none) initializes((280, 288), (296, 300)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load <2 x i64>, ptr %2, align 8          ; 2 uses
  %i.d = load <2 x i64>, ptr %1, align 8          ; 2 uses
  %i.e = xor <2 x i64> %i.d, <i64 -1, i64 0>
  %i.f = and <2 x i64> %i.c, %i.e
  %3 = xor <2 x i64> %i.d, <i64 0, i64 -1>
  %4 = and <2 x i64> %i.c, %3
  %5 = shufflevector <2 x i64> %4, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.g = or <2 x i64> %i.f, %5
  %i.h = load <2 x i64>, ptr %i.b, align 8        ; 2 uses
  %i.i = shufflevector <2 x i64> %i.h, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.j = xor <2 x i64> %i.i, <i64 -1, i64 0>
  %i.k = load <2 x i64>, ptr %i.a, align 8        ; 2 uses
  %i.l = shufflevector <2 x i64> %i.k, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.m = and <2 x i64> %i.l, %i.j
  %i.n = or <2 x i64> %i.m, %i.g
  %i.o = shufflevector <2 x i64> %i.h, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.p = xor <2 x i64> %i.o, <i64 -1, i64 0>
  %i.q = shufflevector <2 x i64> %i.k, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.r = and <2 x i64> %i.q, %i.p
  %i.s = or <2 x i64> %i.r, %i.n
  %i.t = icmp eq <2 x i64> %i.s, zeroinitializer  ; 2 uses
  %i.u = extractelement <2 x i1> %i.t, i64 1
  %i.v = select i1 %i.u, i64 64, i64 0
  %i.w = extractelement <2 x i1> %i.t, i64 0
  %i.x = zext i1 %i.w to i64
  %i.y = or disjoint i64 %i.v, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 0, ptr %i.aa, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmovsxbw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 16
  %i.d = add i64 %i.a, 32
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !19

.rtvec:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load <8 x i8>, ptr %i.e, align 1
  %i.h = sext <8 x i8> %i.g to <8 x i16>
  store <8 x i16> %i.h, ptr %i.f, align 2
  %i.i = load <8 x i8>, ptr %2, align 1
  %i.j = sext <8 x i8> %i.i to <8 x i16>
  store <8 x i16> %i.j, ptr %1, align 2
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.l = load i8, ptr %i.k, align 1
  %i.m = sext i8 %i.l to i16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i16 %i.m, ptr %i.n, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.p = load i8, ptr %i.o, align 1
  %i.q = sext i8 %i.p to i16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i16 %i.q, ptr %i.r, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.t = load i8, ptr %i.s, align 1
  %i.u = sext i8 %i.t to i16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i16 %i.u, ptr %i.v, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.x = load i8, ptr %i.w, align 1
  %i.y = sext i8 %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i16 %i.y, ptr %i.z, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = sext i8 %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i16 %i.ac, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = sext i8 %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i16 %i.ag, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = sext i8 %i.aj to i16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = sext i8 %i.an to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = sext i8 %i.ar to i16
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.as, ptr %i.at, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = sext i8 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.aw, ptr %i.ax, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = sext i8 %i.az to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.ba, ptr %i.bb, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = sext i8 %i.bd to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.be, ptr %i.bf, align 2
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = sext i8 %i.bh to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.bi, ptr %i.bj, align 2
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = sext i8 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.bm, ptr %i.bn, align 2
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = sext i8 %i.bp to i16
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.bq, ptr %i.br, align 2
  %i.bs = load i8, ptr %2, align 1
  %i.bt = sext i8 %i.bs to i16
  store i16 %i.bt, ptr %1, align 2
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmovsxbd_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.b = load i8, ptr %i.a, align 1
  %i.c = sext i8 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.c, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.f = load i8, ptr %i.e, align 1
  %i.g = sext i8 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.g, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.j = load i8, ptr %i.i, align 1
  %i.k = sext i8 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.k, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i8, ptr %i.m, align 1
  %i.o = sext i8 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.r = load i8, ptr %i.q, align 1
  %i.s = sext i8 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.s, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.v = load i8, ptr %i.u, align 1
  %i.w = sext i8 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.w, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = sext i8 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = load i8, ptr %2, align 1
  %i.ad = sext i8 %i.ac to i32
  store i32 %i.ad, ptr %1, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmovsxbq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1
  %i.c = sext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = load i8, ptr %i.e, align 1
  %i.g = sext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = sext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = load i8, ptr %2, align 1
  %i.n = sext i8 %i.m to i64
  store i64 %i.n, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmovsxwd_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.b = load i16, ptr %i.a, align 2
  %i.c = sext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.c, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i16, ptr %i.e, align 2
  %i.g = sext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.g, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.j = load i16, ptr %i.i, align 2
end_hunk_1
begin_hunk_2_@helper_vpsllvd_ymm:bb.a
  %i.ar = phi i32 [ %i.aq, %bb.l ], [ 0, %bb.k ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.ar, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.au = load i32, ptr %i.at, align 4            ; 2 uses
  %i.av = icmp ult i32 %i.au, 32
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = shl i32 %i.ax, %i.au
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.az = phi i32 [ %i.ay, %bb.n ], [ 0, %bb.m ]
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.az, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.bc = load i32, ptr %i.bb, align 4            ; 2 uses
  %i.bd = icmp ult i32 %i.bc, 32
  br i1 %i.bd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = shl i32 %i.bf, %i.bc
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bh = phi i32 [ %i.bg, %bb.p ], [ 0, %bb.o ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.bh, ptr %i.bi, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpsrlvq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8                ; 2 uses
  %i.b = icmp ult i64 %i.a, 64
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8
  %i.d = lshr i64 %i.c, %i.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  store i64 %i.e, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp ult i64 %i.g, 64
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i64 %i.j, %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp ult i64 %i.o, 64
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = lshr i64 %i.r, %i.o
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = phi i64 [ %i.s, %bb.f ], [ 0, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp ult i64 %i.w, 64
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = lshr i64 %i.z, %i.w
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = phi i64 [ %i.aa, %bb.h ], [ 0, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.ab, ptr %i.ac, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpsravq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = load i64, ptr %3, align 8
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.b, i64 63)
  %i.c = ashr i64 %i.a, %spec.select
  store i64 %i.c, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %spec.select.1 = tail call i64 @llvm.umin.i64(i64 %i.g, i64 63)
  %i.h = ashr i64 %i.e, %spec.select.1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %spec.select.2 = tail call i64 @llvm.umin.i64(i64 %i.m, i64 63)
  %i.n = ashr i64 %i.k, %spec.select.2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.s = load i64, ptr %i.r, align 8
  %spec.select.3 = tail call i64 @llvm.umin.i64(i64 %i.s, i64 63)
  %i.t = ashr i64 %i.q, %spec.select.3
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.t, ptr %i.u, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpsllvq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8                ; 2 uses
  %i.b = icmp ult i64 %i.a, 64
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8
  %i.d = shl i64 %i.c, %i.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  store i64 %i.e, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp ult i64 %i.g, 64
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = shl i64 %i.j, %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp ult i64 %i.o, 64
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = shl i64 %i.r, %i.o
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = phi i64 [ %i.s, %bb.f ], [ 0, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp ult i64 %i.w, 64
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = shl i64 %i.z, %i.w
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = phi i64 [ %i.aa, %bb.h ], [ 0, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.ab, ptr %i.ac, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vtestps_ymm(ptr nofree noundef writeonly captures(none) initializes((280, 288), (296, 300)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %3 = load <2 x i32>, ptr %2, align 4            ; 2 uses
  %4 = load <2 x i32>, ptr %1, align 4            ; 2 uses
  %5 = xor <2 x i32> %4, <i32 -1, i32 0>
  %6 = and <2 x i32> %3, %5
  %7 = shufflevector <2 x i32> %6, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %8 = xor <2 x i32> %4, <i32 0, i32 -1>
  %9 = and <2 x i32> %3, %8
  %10 = or <2 x i32> %9, %7
  %11 = load <6 x i32>, ptr %i.b, align 4         ; 6 uses
  %12 = shufflevector <6 x i32> %11, <6 x i32> poison, <2 x i32> zeroinitializer
  %13 = xor <2 x i32> %12, <i32 0, i32 -1>
  %14 = load <6 x i32>, ptr %i.a, align 4         ; 6 uses
  %15 = shufflevector <6 x i32> %14, <6 x i32> poison, <2 x i32> zeroinitializer
  %16 = and <2 x i32> %15, %13
  %17 = or <2 x i32> %16, %10
  %18 = shufflevector <6 x i32> %11, <6 x i32> poison, <2 x i32> <i32 1, i32 1>
  %19 = xor <2 x i32> %18, <i32 0, i32 -1>
  %20 = shufflevector <6 x i32> %14, <6 x i32> poison, <2 x i32> <i32 1, i32 1>
  %21 = and <2 x i32> %20, %19
  %22 = or <2 x i32> %21, %17
  %23 = shufflevector <6 x i32> %11, <6 x i32> poison, <2 x i32> <i32 2, i32 2>
  %24 = xor <2 x i32> %23, <i32 0, i32 -1>
  %25 = shufflevector <6 x i32> %14, <6 x i32> poison, <2 x i32> <i32 2, i32 2>
  %26 = and <2 x i32> %25, %24
  %27 = or <2 x i32> %26, %22
  %28 = shufflevector <6 x i32> %11, <6 x i32> poison, <2 x i32> <i32 3, i32 3>
  %29 = xor <2 x i32> %28, <i32 0, i32 -1>
  %30 = shufflevector <6 x i32> %14, <6 x i32> poison, <2 x i32> <i32 3, i32 3>
  %31 = and <2 x i32> %30, %29
  %32 = or <2 x i32> %31, %27
  %33 = shufflevector <6 x i32> %11, <6 x i32> poison, <2 x i32> <i32 4, i32 4>
  %34 = xor <2 x i32> %33, <i32 0, i32 -1>
  %35 = shufflevector <6 x i32> %14, <6 x i32> poison, <2 x i32> <i32 4, i32 4>
  %36 = and <2 x i32> %35, %34
  %37 = or <2 x i32> %36, %32
  %38 = shufflevector <6 x i32> %11, <6 x i32> poison, <2 x i32> <i32 5, i32 5>
  %39 = xor <2 x i32> %38, <i32 0, i32 -1>
  %40 = shufflevector <6 x i32> %14, <6 x i32> poison, <2 x i32> <i32 5, i32 5>
  %41 = and <2 x i32> %40, %39
  %42 = or <2 x i32> %41, %37                     ; 2 uses
  %43 = extractelement <2 x i32> %42, i64 0
  %.not.inv = icmp slt i32 %43, 0
  %44 = select i1 %.not.inv, i64 0, i64 64
  %45 = extractelement <2 x i32> %42, i64 1
  %.not = icmp sgt i32 %45, -1
  %i.c = zext i1 %.not to i64
  %i.d = or disjoint i64 %44, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 0, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vtestpd_ymm(ptr nofree noundef writeonly captures(none) initializes((280, 288), (296, 300)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load <2 x i64>, ptr %2, align 8          ; 2 uses
  %i.b = load <2 x i64>, ptr %1, align 8          ; 2 uses
  %i.c = xor <2 x i64> %i.b, <i64 -1, i64 0>
  %i.d = and <2 x i64> %i.a, %i.c
  %i.e = shufflevector <2 x i64> %i.d, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.f = xor <2 x i64> %i.b, <i64 0, i64 -1>
  %i.g = and <2 x i64> %i.a, %i.f
  %i.h = or <2 x i64> %i.g, %i.e                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = and i64 %i.l, %i.j
  %i.n = extractelement <2 x i64> %i.h, i64 0
  %i.o = or i64 %i.m, %i.n
  %i.p = xor i64 %i.l, -1
  %i.q = and i64 %i.j, %i.p
  %i.r = extractelement <2 x i64> %i.h, i64 1
  %i.s = or i64 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = and i64 %i.w, %i.u
  %i.y = or i64 %i.x, %i.o
  %i.z = xor i64 %i.w, -1
  %i.aa = and i64 %i.u, %i.z
  %i.ab = or i64 %i.aa, %i.s
  %.not.inv = icmp slt i64 %i.y, 0
  %i.ac = select i1 %.not.inv, i64 0, i64 64
  %.not17 = icmp sgt i64 %i.ab, -1
  %i.ad = zext i1 %.not17 to i64
  %i.ae = or disjoint i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 0, ptr %i.ag, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vpmaskmovd_st_ymm(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %.not = icmp sgt i32 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 4
  %i.c = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.d = ptrtoint ptr %i.c to i64
  tail call void @cpu_stl_mmu(ptr noundef %0, i64 noundef %3, i32 noundef %i.b, i32 noundef 66, i64 noundef %i.d) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %.not.1 = icmp sgt i32 %i.f, -1
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add i64 %3, 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.k = ptrtoint ptr %i.j to i64
  tail call void @cpu_stl_mmu(ptr noundef %0, i64 noundef %i.g, i32 noundef %i.i, i32 noundef 66, i64 noundef %i.k) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 4
  %.not.2 = icmp sgt i32 %i.m, -1
  br i1 %.not.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = add i64 %3, 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.r = ptrtoint ptr %i.q to i64
  tail call void @cpu_stl_mmu(ptr noundef %0, i64 noundef %i.n, i32 noundef %i.p, i32 noundef 66, i64 noundef %i.r) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load i32, ptr %i.s, align 4
  %.not.3 = icmp sgt i32 %i.t, -1
  br i1 %.not.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add i64 %3, 12
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.w = load i32, ptr %i.v, align 4
  %i.x = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.y = ptrtoint ptr %i.x to i64
  tail call void @cpu_stl_mmu(ptr noundef %0, i64 noundef %i.u, i32 noundef %i.w, i32 noundef 66, i64 noundef %i.y) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i32, ptr %i.z, align 4
  %.not.4 = icmp sgt i32 %i.aa, -1
  br i1 %.not.4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = add i64 %3, 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.af = ptrtoint ptr %i.ae to i64
  tail call void @cpu_stl_mmu(ptr noundef %0, i64 noundef %i.ab, i32 noundef %i.ad, i32 noundef 66, i64 noundef %i.af) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load i32, ptr %i.ag, align 4
  %.not.5 = icmp sgt i32 %i.ah, -1
  br i1 %.not.5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = add i64 %3, 20
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.am = ptrtoint ptr %i.al to i64
  tail call void @cpu_stl_mmu(ptr noundef %0, i64 noundef %i.ai, i32 noundef %i.ak, i32 noundef 66, i64 noundef %i.am) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load i32, ptr %i.an, align 4
  %.not.6 = icmp sgt i32 %i.ao, -1
  br i1 %.not.6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = add i64 %3, 24
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.at = ptrtoint ptr %i.as to i64
  tail call void @cpu_stl_mmu(ptr noundef %0, i64 noundef %i.ap, i32 noundef %i.ar, i32 noundef 66, i64 noundef %i.at) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.av = load i32, ptr %i.au, align 4
  %.not.7 = icmp sgt i32 %i.av, -1
  br i1 %.not.7, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = add i64 %3, 28
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.ba = ptrtoint ptr %i.az to i64
  tail call void @cpu_stl_mmu(ptr noundef %0, i64 noundef %i.aw, i32 noundef %i.ay, i32 noundef 66, i64 noundef %i.ba) #26
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vpmaskmovq_st_ymm(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp sgt i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 8
  %i.c = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.d = ptrtoint ptr %i.c to i64
  tail call void @cpu_stq_mmu(ptr noundef %0, i64 noundef %3, i64 noundef %i.b, i32 noundef 98, i64 noundef %i.d) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %.not.1 = icmp sgt i64 %i.f, -1
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add i64 %3, 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.k = ptrtoint ptr %i.j to i64
  tail call void @cpu_stq_mmu(ptr noundef %0, i64 noundef %i.g, i64 noundef %i.i, i32 noundef 98, i64 noundef %i.k) #26
end_hunk_2
