Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/dynamic_tree?download=true
inline.NumInlined: 175
inline.NumDeleted: 37
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3DynamicTree_Query:bb.a
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %b3AABB_Overlaps.exit.thread.us, label %.split.us, !llvm.loop !58

.split.us:                                        ; preds = %.split68.us
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds [48 x i8], ptr %i.x, i64 %i.y ; 11 uses
  %i.aa = add nsw i32 %.sroa.0.066.us, 1          ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !34
  %i.ad = and i64 %i.ac, %2
  %.not.us = icmp eq i64 %i.ad, %2
  br i1 %.not.us, label %bb.c, label %b3AABB_Overlaps.exit.thread.us

bb.c:                                             ; preds = %.split.us
  %.sroa.0.0.copyload.us = load float, ptr %i.z, align 8
  %.sroa.4.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.sroa.4.0.copyload.us = load float, ptr %.sroa.4.0..sroa_idx.us, align 4
  %.sroa.5.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.5.0.copyload.us = load float, ptr %.sroa.5.0..sroa_idx.us, align 8
  %.sroa.6.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %.sroa.6.0.copyload.us = load float, ptr %.sroa.6.0..sroa_idx.us, align 4
  %.sroa.7.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.7.0.copyload.us = load float, ptr %.sroa.7.0..sroa_idx.us, align 8
  %.sroa.8.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %.sroa.8.0.copyload.us = load float, ptr %.sroa.8.0..sroa_idx.us, align 4
  %i.ae = fcmp uge float %.sroa.6.0.copyload.us, %i.h
  %i.af = fcmp ule float %.sroa.0.0.copyload.us, %i.j
  %or.cond.not63.us = select i1 %i.ae, i1 %i.af, i1 false
  %i.ag = fcmp uge float %.sroa.7.0.copyload.us, %i.l
  %or.cond45.not60.us = select i1 %or.cond.not63.us, i1 %i.ag, i1 false
  %i.ah = fcmp ule float %.sroa.4.0.copyload.us, %i.n
  %or.cond48.not58.us = select i1 %or.cond45.not60.us, i1 %i.ah, i1 false
  %i.ai = fcmp uge float %.sroa.8.0.copyload.us, %i.p
  %or.cond51.not56.us = select i1 %or.cond48.not58.us, i1 %i.ai, i1 false
  %i.aj = fcmp ule float %.sroa.5.0.copyload.us, %i.r
  %or.cond54.us = select i1 %or.cond51.not56.us, i1 %i.aj, i1 false
  br i1 %or.cond54.us, label %bb.d, label %b3AABB_Overlaps.exit.thread.us

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr i8, ptr %i.z, i64 46
  %.val.us = load i16, ptr %i.ak, align 2, !tbaa !36
  %i.al = and i16 %.val.us, 4
  %.not64.us = icmp eq i16 %i.al, 0
  br i1 %.not64.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.an = load i64, ptr %i.am, align 8, !tbaa !20
  %i.ao = tail call zeroext i1 %4(i32 noundef %i.v, i64 noundef %i.an, ptr noundef %5) #19
  %i.ap = add nsw i32 %.sroa.4.065.us, 1          ; 2 uses
  br i1 %i.ao, label %b3AABB_Overlaps.exit.thread.us, label %.thread

bb.f:                                             ; preds = %bb.d
  %i.aq = icmp samesign ult i32 %.03167.us, 1024
  br i1 %i.aq, label %bb.g, label %b3AABB_Overlaps.exit.thread.us

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !20
  store i32 %i.as, ptr %i.u, align 4, !tbaa !38
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %i.au = load i32, ptr %i.at, align 4, !tbaa !20
  %i.av = add nuw nsw i32 %.03167.us, 1
  %i.aw = zext nneg i32 %.03167.us to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aw
  store i32 %i.au, ptr %i.ax, align 4, !tbaa !38
  br label %b3AABB_Overlaps.exit.thread.us

b3AABB_Overlaps.exit.thread.us:                   ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %.split.us, %.split68.us
  %.sroa.4.3.us = phi i32 [ %.sroa.4.065.us, %.split68.us ], [ %i.ap, %bb.e ], [ %.sroa.4.065.us, %bb.g ], [ %.sroa.4.065.us, %bb.f ], [ %.sroa.4.065.us, %bb.c ], [ %.sroa.4.065.us, %.split.us ] ; 2 uses
  %.sroa.0.1.us = phi i32 [ %.sroa.0.066.us, %.split68.us ], [ %i.aa, %bb.e ], [ %i.aa, %bb.g ], [ %i.aa, %bb.f ], [ %i.aa, %bb.c ], [ %i.aa, %.split.us ] ; 2 uses
  %.3.us = phi i32 [ %i.s, %.split68.us ], [ %i.s, %bb.e ], [ %i.av, %bb.g ], [ %i.s, %bb.f ], [ %i.s, %bb.c ], [ %i.s, %.split.us ] ; 2 uses
  %i.ay = icmp sgt i32 %.3.us, 0
  br i1 %i.ay, label %.split68.us, label %.thread

.split68:                                         ; preds = %bb.b, %b3AABB_Overlaps.exit.thread
  %.03167 = phi i32 [ %.3, %b3AABB_Overlaps.exit.thread ], [ 1, %bb.b ] ; 4 uses
  %.sroa.0.066 = phi i32 [ %.sroa.0.1, %b3AABB_Overlaps.exit.thread ], [ 0, %bb.b ] ; 2 uses
  %.sroa.4.065 = phi i32 [ %.sroa.4.3, %b3AABB_Overlaps.exit.thread ], [ 0, %bb.b ] ; 6 uses
  %i.az = add nsw i32 %.03167, -1                 ; 6 uses
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !38 ; 3 uses
  %i.bd = icmp eq i32 %i.bc, -1
  br i1 %i.bd, label %b3AABB_Overlaps.exit.thread, label %bb.h, !llvm.loop !58

bb.h:                                             ; preds = %.split68
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.bf = sext i32 %i.bc to i64
  %i.bg = getelementptr inbounds [48 x i8], ptr %i.be, i64 %i.bf ; 11 uses
  %i.bh = add nsw i32 %.sroa.0.066, 1             ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !34
  %i.bk = and i64 %i.bj, %2
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %b3AABB_Overlaps.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload = load float, ptr %i.bg, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4
  %i.bm = fcmp uge float %.sroa.6.0.copyload, %i.h
  %i.bn = fcmp ule float %.sroa.0.0.copyload, %i.j
  %or.cond.not63 = select i1 %i.bm, i1 %i.bn, i1 false
  %i.bo = fcmp uge float %.sroa.7.0.copyload, %i.l
  %or.cond45.not60 = select i1 %or.cond.not63, i1 %i.bo, i1 false
  %i.bp = fcmp ule float %.sroa.4.0.copyload, %i.n
  %or.cond48.not58 = select i1 %or.cond45.not60, i1 %i.bp, i1 false
  %i.bq = fcmp uge float %.sroa.8.0.copyload, %i.p
  %or.cond51.not56 = select i1 %or.cond48.not58, i1 %i.bq, i1 false
  %i.br = fcmp ule float %.sroa.5.0.copyload, %i.r
  %or.cond54 = select i1 %or.cond51.not56, i1 %i.br, i1 false
  br i1 %or.cond54, label %bb.j, label %b3AABB_Overlaps.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr i8, ptr %i.bg, i64 46
  %.val = load i16, ptr %i.bs, align 2, !tbaa !36
  %i.bt = and i16 %.val, 4
  %.not64 = icmp eq i16 %i.bt, 0
  br i1 %.not64, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !20
  %i.bw = tail call zeroext i1 %4(i32 noundef %i.bc, i64 noundef %i.bv, ptr noundef %5) #19
  %i.bx = add nsw i32 %.sroa.4.065, 1             ; 2 uses
  br i1 %i.bw, label %b3AABB_Overlaps.exit.thread, label %.thread

bb.l:                                             ; preds = %bb.j
  %i.by = icmp samesign ult i32 %.03167, 1024
  br i1 %i.by, label %bb.m, label %b3AABB_Overlaps.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !20
  store i32 %i.ca, ptr %i.bb, align 4, !tbaa !38
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 36
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !20
  %i.cd = add nuw nsw i32 %.03167, 1
  %i.ce = zext nneg i32 %.03167 to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ce
  store i32 %i.cc, ptr %i.cf, align 4, !tbaa !38
  br label %b3AABB_Overlaps.exit.thread

b3AABB_Overlaps.exit.thread:                      ; preds = %bb.k, %bb.i, %bb.m, %bb.l, %bb.h, %.split68
  %.sroa.4.3 = phi i32 [ %.sroa.4.065, %.split68 ], [ %i.bx, %bb.k ], [ %.sroa.4.065, %bb.m ], [ %.sroa.4.065, %bb.l ], [ %.sroa.4.065, %bb.i ], [ %.sroa.4.065, %bb.h ] ; 2 uses
  %.sroa.0.1 = phi i32 [ %.sroa.0.066, %.split68 ], [ %i.bh, %bb.k ], [ %i.bh, %bb.m ], [ %i.bh, %bb.l ], [ %i.bh, %bb.i ], [ %i.bh, %bb.h ] ; 2 uses
  %.3 = phi i32 [ %i.az, %.split68 ], [ %i.az, %bb.k ], [ %i.cd, %bb.m ], [ %i.az, %bb.l ], [ %i.az, %bb.i ], [ %i.az, %bb.h ] ; 2 uses
  %i.cg = icmp sgt i32 %.3, 0
  br i1 %i.cg, label %.split68, label %.thread

.thread:                                          ; preds = %b3AABB_Overlaps.exit.thread, %bb.k, %bb.e, %b3AABB_Overlaps.exit.thread.us
  %.us-phi = phi i32 [ %i.ap, %bb.e ], [ %.sroa.4.3.us, %b3AABB_Overlaps.exit.thread.us ], [ %.sroa.4.3, %b3AABB_Overlaps.exit.thread ], [ %i.bx, %bb.k ]
  %.us-phi69 = phi i32 [ %i.aa, %bb.e ], [ %.sroa.0.1.us, %b3AABB_Overlaps.exit.thread.us ], [ %.sroa.0.1, %b3AABB_Overlaps.exit.thread ], [ %i.bh, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ch = zext i32 %.us-phi to i64
  %i.ci = shl nuw i64 %i.ch, 32
  %i.cj = zext i32 %.us-phi69 to i64
  %i.ck = or disjoint i64 %i.ci, %i.cj
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %.thread
  %.sroa.0.0.insert.insert = phi i64 [ 0, %bb.a ], [ %i.ck, %.thread ]
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nounwind uwtable
define i64 @b3DynamicTree_QueryClosest(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, float %2, i64 noundef %3, i1 noundef zeroext %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr nofree noundef captures(none) %7) local_unnamed_addr #4 {
bb.a:
  %8 = alloca [1024 x %struct.b3QueryClosestItem], align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load float, ptr %7, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [48 x i8], ptr %i.f, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.sroa.015.0.copyload.i87 = load <2 x float>, ptr %i.j, align 8 ; 2 uses
  %.sroa.216.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.216.0.copyload.i89 = load float, ptr %.sroa.216.0..sroa_idx.i88, align 8 ; 2 uses
  %.sroa.013.0.copyload.i90 = load <2 x float>, ptr %i.k, align 4 ; 2 uses
  %.sroa.214.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %.sroa.214.0.copyload.i92 = load float, ptr %.sroa.214.0..sroa_idx.i91, align 4 ; 2 uses
  %.sroa.010.0.vec.extract.i = extractelement <2 x float> %1, i64 0 ; 4 uses
  %.sroa.06.0.vec.extract.i = extractelement <2 x float> %.sroa.015.0.copyload.i87, i64 0 ; 2 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.013.0.copyload.i90, i64 0 ; 2 uses
  %9 = fcmp olt float %.sroa.010.0.vec.extract.i, %.sroa.06.0.vec.extract.i
  %10 = fcmp olt float %.sroa.03.0.vec.extract.i, %.sroa.010.0.vec.extract.i
  %11 = select i1 %10, float %.sroa.03.0.vec.extract.i, float %.sroa.010.0.vec.extract.i
  %12 = select i1 %9, float %.sroa.06.0.vec.extract.i, float %11
  %.sroa.010.4.vec.extract.i = extractelement <2 x float> %1, i64 1 ; 4 uses
  %.sroa.06.4.vec.extract.i = extractelement <2 x float> %.sroa.015.0.copyload.i87, i64 1 ; 2 uses
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.013.0.copyload.i90, i64 1 ; 2 uses
  %i.l = fcmp olt float %.sroa.010.4.vec.extract.i, %.sroa.06.4.vec.extract.i
  %i.m = fcmp olt float %.sroa.03.4.vec.extract.i, %.sroa.010.4.vec.extract.i
  %i.n = select i1 %i.m, float %.sroa.03.4.vec.extract.i, float %.sroa.010.4.vec.extract.i
  %i.o = select i1 %i.l, float %.sroa.06.4.vec.extract.i, float %i.n
  %13 = fcmp olt float %2, %.sroa.216.0.copyload.i89
  %14 = fcmp olt float %.sroa.214.0.copyload.i92, %2
  %15 = select i1 %14, float %.sroa.214.0.copyload.i92, float %2
  %16 = select i1 %13, float %.sroa.216.0.copyload.i89, float %15
  %17 = fsub float %.sroa.010.0.vec.extract.i, %12 ; 2 uses
  %18 = fsub float %.sroa.010.4.vec.extract.i, %i.o ; 2 uses
  %19 = fsub float %2, %16                        ; 2 uses
  %20 = fmul float %17, %17
  %21 = fmul float %18, %18
  %22 = fadd float %20, %21
  %i.p = fmul float %19, %19
  %i.q = fadd float %i.p, %22
  store i32 %i.h, ptr %8, align 16, !tbaa !38
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.q, ptr %.sroa.227.0..sroa_idx, align 4, !tbaa !28
  %i.r = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.s = insertelement <2 x float> %i.r, float %2, i64 0 ; 8 uses
  %i.t = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.h
  %.sroa.063.0152 = phi i32 [ 0, %bb.b ], [ %i.aa, %bb.h ]
  %.sroa.465.0151 = phi i32 [ 0, %bb.b ], [ %.sroa.465.1, %bb.h ] ; 4 uses
  %.0150 = phi float [ %i.d, %bb.b ], [ %.2, %bb.h ] ; 7 uses
  %.068149 = phi i32 [ 1, %bb.b ], [ %.270, %bb.h ] ; 4 uses
  %i.u = add nsw i32 %.068149, -1                 ; 4 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.v ; 3 uses
  %.sroa.023.0.copyload = load i32, ptr %i.w, align 8, !tbaa !38 ; 2 uses
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %.sroa.525.0.copyload = load float, ptr %.sroa.525.0..sroa_idx, align 4, !tbaa !28
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !19   ; 3 uses
  %i.y = sext i32 %.sroa.023.0.copyload to i64
  %i.z = getelementptr inbounds [48 x i8], ptr %i.x, i64 %i.y ; 5 uses
  %i.aa = add nuw nsw i32 %.sroa.063.0152, 1      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !34
  %i.ad = and i64 %i.ac, %3                       ; 2 uses
  %i.ae = icmp ne i64 %i.ad, %3
  %i.af = icmp eq i64 %i.ad, 0
  %.not = select i1 %4, i1 %i.ae, i1 %i.af
  %i.ag = fcmp uge float %.sroa.525.0.copyload, %.0150
  %or.cond.not = select i1 %.not, i1 true, i1 %i.ag
  br i1 %or.cond.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr i8, ptr %i.z, i64 46
  %.val = load i16, ptr %i.ah, align 2, !tbaa !36
  %i.ai = and i16 %.val, 4
  %.not148 = icmp eq i16 %i.ai, 0
  br i1 %.not148, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !20
  %i.al = tail call float %5(float noundef %.0150, i32 noundef %.sroa.023.0.copyload, i64 noundef %i.ak, ptr noundef %6) #19 ; 2 uses
  %i.am = fcmp olt float %i.al, %.0150
  %.1 = select i1 %i.am, float %i.al, float %.0150
  %i.an = add nsw i32 %.sroa.465.0151, 1
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ao = icmp samesign ult i32 %.068149, 1024
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !20 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !20 ; 3 uses
  %i.at = sext i32 %i.aq to i64
  %i.au = getelementptr inbounds [48 x i8], ptr %i.x, i64 %i.at ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %.sroa.015.0.copyload.i77 = load <2 x float>, ptr %i.au, align 8 ; 2 uses
  %.sroa.216.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.216.0.copyload.i79 = load float, ptr %.sroa.216.0..sroa_idx.i78, align 8
  %.sroa.013.0.copyload.i80 = load <2 x float>, ptr %i.av, align 4 ; 2 uses
  %.sroa.214.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %.sroa.214.0.copyload.i82 = load float, ptr %.sroa.214.0..sroa_idx.i81, align 4
  %i.aw = shufflevector <2 x float> %.sroa.015.0.copyload.i77, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ax = insertelement <2 x float> %i.aw, float %.sroa.216.0.copyload.i79, i64 0 ; 2 uses
  %i.ay = fcmp olt <2 x float> %i.s, %i.ax
  %i.az = shufflevector <2 x float> %.sroa.013.0.copyload.i80, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ba = insertelement <2 x float> %i.az, float %.sroa.214.0.copyload.i82, i64 0 ; 2 uses
  %i.bb = fcmp olt <2 x float> %i.ba, %i.s
  %i.bc = select <2 x i1> %i.bb, <2 x float> %i.ba, <2 x float> %i.s
  %i.bd = select <2 x i1> %i.ay, <2 x float> %i.ax, <2 x float> %i.bc
  %i.be = fsub <2 x float> %i.s, %i.bd            ; 2 uses
  %i.bf = fmul <2 x float> %i.be, %i.be           ; 2 uses
  %i.bg = sext i32 %i.as to i64
  %i.bh = getelementptr inbounds [48 x i8], ptr %i.x, i64 %i.bg ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %.sroa.015.0.copyload.i = load <2 x float>, ptr %i.bh, align 8 ; 2 uses
  %.sroa.216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.216.0.copyload.i = load float, ptr %.sroa.216.0..sroa_idx.i, align 8
  %.sroa.013.0.copyload.i = load <2 x float>, ptr %i.bi, align 4 ; 2 uses
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  %.sroa.214.0.copyload.i = load float, ptr %.sroa.214.0..sroa_idx.i, align 4
  %i.bj = shufflevector <2 x float> %.sroa.015.0.copyload.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bk = insertelement <2 x float> %i.bj, float %.sroa.216.0.copyload.i, i64 0 ; 2 uses
  %i.bl = fcmp olt <2 x float> %i.s, %i.bk
  %i.bm = shufflevector <2 x float> %.sroa.013.0.copyload.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bn = insertelement <2 x float> %i.bm, float %.sroa.214.0.copyload.i, i64 0 ; 2 uses
  %i.bo = fcmp olt <2 x float> %i.bn, %i.s
  %i.bp = select <2 x i1> %i.bo, <2 x float> %i.bn, <2 x float> %i.s
  %i.bq = select <2 x i1> %i.bl, <2 x float> %i.bk, <2 x float> %i.bp
  %i.br = fsub <2 x float> %i.s, %i.bq            ; 2 uses
  %i.bs = fmul <2 x float> %i.br, %i.br           ; 2 uses
  %i.bt = shufflevector <2 x float> %.sroa.015.0.copyload.i, <2 x float> %.sroa.015.0.copyload.i77, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bu = fcmp olt <2 x float> %i.t, %i.bt
  %i.bv = shufflevector <2 x float> %.sroa.013.0.copyload.i, <2 x float> %.sroa.013.0.copyload.i80, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bw = fcmp olt <2 x float> %i.bv, %i.t
  %i.bx = select <2 x i1> %i.bw, <2 x float> %i.bv, <2 x float> %i.t
  %i.by = select <2 x i1> %i.bu, <2 x float> %i.bt, <2 x float> %i.bx
  %i.bz = fsub <2 x float> %i.t, %i.by            ; 2 uses
  %i.ca = fmul <2 x float> %i.bz, %i.bz
  %i.cb = shufflevector <2 x float> %i.bs, <2 x float> %i.bf, <2 x i32> <i32 1, i32 3>
  %i.cc = fadd <2 x float> %i.cb, %i.ca
  %i.cd = shufflevector <2 x float> %i.bs, <2 x float> %i.bf, <2 x i32> <i32 0, i32 2>
  %i.ce = fadd <2 x float> %i.cd, %i.cc           ; 2 uses
  %i.cf = extractelement <2 x float> %i.ce, i64 0 ; 3 uses
  %i.cg = extractelement <2 x float> %i.ce, i64 1 ; 3 uses
  %i.ch = fcmp olt float %i.cf, %i.cg             ; 4 uses
  %i.ci = zext nneg i32 %.068149 to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.ci ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %. = select i1 %i.ch, i32 %i.aq, i32 %i.as
  %.159 = select i1 %i.ch, float %i.cg, float %i.cf
  %.160 = select i1 %i.ch, i32 %i.as, i32 %i.aq
  %.161 = select i1 %i.ch, float %i.cf, float %i.cg
  store i32 %., ptr %i.w, align 8, !tbaa !38
  store float %.159, ptr %.sroa.525.0..sroa_idx, align 4, !tbaa !28
  store i32 %.160, ptr %i.cj, align 8, !tbaa !38
  store float %.161, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !28
  %.169 = add nuw nsw i32 %.068149, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.c
  %.270 = phi i32 [ %i.u, %bb.e ], [ %.169, %bb.g ], [ %i.u, %bb.f ], [ %i.u, %bb.c ] ; 2 uses
  %.2 = phi float [ %.1, %bb.e ], [ %.0150, %bb.g ], [ %.0150, %bb.f ], [ %.0150, %bb.c ] ; 2 uses
  %.sroa.465.1 = phi i32 [ %i.an, %bb.e ], [ %.sroa.465.0151, %bb.g ], [ %.sroa.465.0151, %bb.f ], [ %.sroa.465.0151, %bb.c ] ; 2 uses
  %i.ck = icmp sgt i32 %.270, 0
  br i1 %i.ck, label %bb.c, label %bb.i, !llvm.loop !59

bb.i:                                             ; preds = %bb.h
  store float %.2, ptr %7, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.cl = zext i32 %.sroa.465.1 to i64
  %i.cm = shl nuw i64 %i.cl, 32
  %i.cn = zext nneg i32 %i.aa to i64
  %i.co = or disjoint i64 %i.cm, %i.cn
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.sroa.063.0.insert.insert = phi i64 [ 0, %bb.a ], [ %i.co, %bb.i ]
  ret i64 %.sroa.063.0.insert.insert
}

; Function Attrs: nounwind uwtable
define i64 @b3DynamicTree_RayCast(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i1 noundef zeroext %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [1024 x i32], align 16            ; 5 uses
  %6 = alloca %struct.b3RayCastInput, align 4     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0216.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !28 ; 13 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !28 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0212.0.copyload = load <2 x float>, ptr %i.e, align 4, !tbaa !28 ; 3 uses
  %.sroa.6215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.6215.0.copyload = load float, ptr %.sroa.6215.0..sroa_idx, align 4, !tbaa !28 ; 3 uses
  %i.f = bitcast <2 x float> %.sroa.0216.0.copyload to double
  %i.g = insertelement <2 x double> poison, double %i.f, i64 0
  %i.h = bitcast <2 x double> %i.g to <4 x float>
  %i.i = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.12.0.copyload, i64 0
  %i.j = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.k = bitcast <2 x float> %.sroa.0212.0.copyload to double
  %i.l = insertelement <2 x double> poison, double %i.k, i64 0
  %i.m = bitcast <2 x double> %i.l to <4 x float>
  %i.n = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.6215.0.copyload, i64 0
  %i.o = shufflevector <4 x float> %i.m, <4 x float> %i.n, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load float, ptr %i.p, align 4, !tbaa !62 ; 3 uses
  %i.r = fmul float %.sroa.6215.0.copyload, %i.q
  %i.s = fadd float %.sroa.12.0.copyload, %i.r    ; 4 uses
  %i.t = fcmp olt float %.sroa.12.0.copyload, %i.s
  %i.u = select i1 %i.t, float %.sroa.12.0.copyload, float %i.s
  %i.v = insertelement <2 x float> poison, float %i.q, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x float> %.sroa.0212.0.copyload, %i.w
  %i.y = fadd <2 x float> %.sroa.0216.0.copyload, %i.x ; 4 uses
  %i.z = fcmp olt <2 x float> %.sroa.0216.0.copyload, %i.y
  %i.aa = select <2 x i1> %i.z, <2 x float> %.sroa.0216.0.copyload, <2 x float> %i.y
  %i.ab = fcmp ogt <2 x float> %.sroa.0216.0.copyload, %i.y
  %i.ac = select <2 x i1> %i.ab, <2 x float> %.sroa.0216.0.copyload, <2 x float> %i.y
  %i.ad = fcmp ogt float %.sroa.12.0.copyload, %i.s
  %i.ae = select i1 %i.ad, float %.sroa.12.0.copyload, float %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !16
  store i32 %i.ag, ptr %i.a, align 16, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef nonnull align 4 dereferenceable(28) %1, i64 24, i1 false), !tbaa.struct !63
  %i.aj = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.ak = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
end_hunk_0
