inline.NumInlined: 13
inline.NumDeleted: 6
begin_hunk_0_@getNeighborBoxes:bb.a
  br i1 %i.ch, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ci = load i32, ptr %i.a, align 4, !tbaa !10
  %i.cj = mul i32 %i.bh, %i.bl
  %i.ck = load i32, ptr %0, align 4, !tbaa !4
  %i.cl = add nsw i32 %i.ck, 2
  %reass.add67.i = add i32 %i.bl, %.026
  %reass.mul68.i = mul i32 %i.cl, %reass.add67.i
  %i.cm = add i32 %i.bf, %i.cj
  %i.cn = add i32 %i.cm, %i.ci
  %i.co = add i32 %i.cn, %reass.mul68.i
  br label %getBoxFromTuple.exit

bb.v:                                             ; preds = %bb.t
  br i1 %i.bg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cp = load i32, ptr %i.a, align 4, !tbaa !10
  %i.cq = shl nsw i32 %i.bl, 1
  %i.cr = mul nsw i32 %i.cq, %i.cg
  %i.cs = load i32, ptr %0, align 4, !tbaa !4
  %i.ct = add nsw i32 %i.cs, 2
  %i.cu = mul nsw i32 %i.ct, %.026
  %i.cv = add i32 %i.bf, %i.cr
  %i.cw = add i32 %i.cv, %i.cp
  %i.cx = add i32 %i.cw, %i.cu
  br label %getBoxFromTuple.exit

bb.x:                                             ; preds = %bb.v
  %i.cy = load i32, ptr %0, align 4, !tbaa !4     ; 2 uses
  %i.cz = icmp eq i32 %.01530, %i.cy
  br i1 %i.cz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.da = load i32, ptr %i.a, align 4, !tbaa !10
  %reass.add65.i = add i32 %i.bl, %.026
  %reass.mul66.i = mul i32 %i.cg, %reass.add65.i
  %i.db = add i32 %reass.mul66.i, %.01428
  %i.dc = add i32 %i.db, %i.da
  br label %getBoxFromTuple.exit

bb.z:                                             ; preds = %bb.x
  br i1 %i.be, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dd = load i32, ptr %i.a, align 4, !tbaa !10
  %i.de = mul nsw i32 %i.cg, %.026
  %i.df = add i32 %i.de, %.01428
  %i.dg = add i32 %i.df, %i.dd
  br label %getBoxFromTuple.exit

bb.ab:                                            ; preds = %bb.z
  %i.dh = mul i32 %i.cg, %.026
  %reass.add.i = add i32 %i.dh, %.01428
  %reass.mul.i = mul i32 %i.cy, %reass.add.i
  %i.di = add i32 %reass.mul.i, %.01530
  br label %getBoxFromTuple.exit

getBoxFromTuple.exit:                             ; preds = %bb.q, %bb.s, %bb.u, %bb.w, %bb.y, %bb.aa, %bb.ab
  %.0.i19 = phi i32 [ %i.bv, %bb.q ], [ %i.cf, %bb.s ], [ %i.co, %bb.u ], [ %i.cx, %bb.w ], [ %i.dc, %bb.y ], [ %i.dg, %bb.aa ], [ %i.di, %bb.ab ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 4 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %.0.i19, ptr %i.dj, align 4, !tbaa !4
  %i.dk = add nsw i32 %.026, 1
  %.not18 = icmp sgt i32 %.026, %.270.i
  br i1 %.not18, label %bb.o, label %bb.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @getBoxFromTuple(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !4    ; 6 uses
  %i.c = icmp eq i32 %3, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !10
  %i.f = shl nsw i32 %3, 1                        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4    ; 2 uses
  %i.i = mul nsw i32 %i.h, %i.f
  %i.j = load i32, ptr %0, align 4, !tbaa !4
  %i.k = add nsw i32 %i.j, 2
  %i.l = add i32 %2, 3
  %reass.add71 = add i32 %i.l, %i.f
  %reass.add72 = add i32 %reass.add71, %i.h
  %reass.mul73 = mul i32 %reass.add72, %i.k
  %i.m = add i32 %1, 1
  %i.n = add i32 %i.m, %i.e
  %i.o = add i32 %i.n, %i.i
  %i.p = add i32 %i.o, %reass.mul73
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.q = icmp eq i32 %3, -1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !10
  %i.t = shl nsw i32 %i.b, 1                      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = mul nsw i32 %i.v, %i.t
  %i.x = load i32, ptr %0, align 4, !tbaa !4
  %i.y = add nsw i32 %i.x, 2
  %i.z = add nsw i32 %2, 1
  %reass.add69 = add i32 %i.z, %i.t
  %reass.mul70 = mul i32 %i.y, %reass.add69
  %i.aa = add i32 %1, 1
  %i.ab = add i32 %i.aa, %i.s
  %i.ac = add i32 %i.ab, %i.w
  %i.ad = add i32 %i.ac, %reass.mul70
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4  ; 5 uses
  %i.ag = icmp eq i32 %2, %i.af
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !10
  %i.aj = shl nsw i32 %i.b, 1
  %i.ak = mul nsw i32 %i.aj, %2
  %i.al = load i32, ptr %0, align 4, !tbaa !4
  %i.am = add nsw i32 %i.al, 2
  %reass.add67 = add i32 %i.b, %3
  %reass.mul68 = mul i32 %i.am, %reass.add67
  %i.an = add i32 %1, 1
  %i.ao = add i32 %i.an, %i.ak
  %i.ap = add i32 %i.ao, %i.ai
  %i.aq = add i32 %i.ap, %reass.mul68
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.ar = icmp eq i32 %2, -1
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !10
  %i.au = shl nsw i32 %i.b, 1
  %i.av = mul nsw i32 %i.au, %i.af
  %i.aw = load i32, ptr %0, align 4, !tbaa !4
  %i.ax = add nsw i32 %i.aw, 2
  %i.ay = mul nsw i32 %i.ax, %3
  %i.az = add i32 %1, 1
  %i.ba = add i32 %i.az, %i.av
  %i.bb = add i32 %i.ba, %i.at
  %i.bc = add i32 %i.bb, %i.ay
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.bd = load i32, ptr %0, align 4, !tbaa !4     ; 2 uses
  %i.be = icmp eq i32 %1, %i.bd
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !10
  %reass.add65 = add i32 %i.b, %3
  %reass.mul66 = mul i32 %i.af, %reass.add65
  %i.bh = add i32 %reass.mul66, %2
  %i.bi = add i32 %i.bh, %i.bg
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.bj = icmp eq i32 %1, -1
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !10
  %i.bm = mul nsw i32 %i.af, %3
  %i.bn = add i32 %i.bm, %2
  %i.bo = add i32 %i.bn, %i.bl
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bp = mul i32 %i.af, %3
  %reass.add = add i32 %i.bp, %2
  %reass.mul = mul i32 %reass.add, %i.bd
  %i.bq = add i32 %reass.mul, %1
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.h, %bb.l, %bb.m, %bb.j, %bb.f, %bb.b
  %.0 = phi i32 [ %i.p, %bb.b ], [ %i.ad, %bb.d ], [ %i.aq, %bb.f ], [ %i.bc, %bb.h ], [ %i.bi, %bb.j ], [ %i.bo, %bb.l ], [ %i.bq, %bb.m ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @putAtomInBox(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %10 = load double, ptr %i.b, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %11 = load double, ptr %i.c, align 8, !tbaa !8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %13 = load double, ptr %12, align 8, !tbaa !8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %15 = load double, ptr %14, align 8, !tbaa !8
  %i.d = load double, ptr %i.a, align 8, !tbaa !8
  %i.e = fcmp olt double %4, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load double, ptr %i.g, align 8, !tbaa !8
  %i.i = fsub double %4, %i.h
  %i.j = load double, ptr %i.f, align 8, !tbaa !8
  %i.k = fmul double %i.i, %i.j
  %i.l = tail call double @llvm.floor.f64(double %i.k)
  %i.m = fptosi double %i.l to i32                ; 2 uses
  %i.n = load i32, ptr %0, align 8, !tbaa !4      ; 2 uses
  %i.o = icmp eq i32 %i.n, %i.m
  %i.p = add nsw i32 %i.n, -1
  %spec.select.i = select i1 %i.o, i32 %i.p, i32 %i.m
  br label %getBoxFromCoord.exit

bb.c:                                             ; preds = %bb.a
  %i.q = load i32, ptr %0, align 8, !tbaa !4
  br label %getBoxFromCoord.exit

getBoxFromCoord.exit:                             ; preds = %bb.b, %bb.c
  %.034.i = phi i32 [ %i.q, %bb.c ], [ %spec.select.i, %bb.b ]
  %16 = fsub double %6, %13
  %17 = fmul double %16, %15
  %18 = tail call double @llvm.floor.f64(double %17)
  %19 = fptosi double %18 to i32                  ; 2 uses
  %20 = fsub double %5, %10
  %21 = fmul double %20, %11
  %22 = tail call double @llvm.floor.f64(double %21)
  %23 = fptosi double %22 to i32                  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load double, ptr %i.r, align 8, !tbaa !8
  %i.t = fcmp olt double %5, %i.s
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %25 = load i32, ptr %24, align 4, !tbaa !4      ; 3 uses
  %26 = icmp eq i32 %25, %23
  %i.u = add nsw i32 %25, -1
  %spec.select41.i = select i1 %26, i32 %i.u, i32 %23
  %.033.i = select i1 %i.t, i32 %spec.select41.i, i32 %25
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %28 = load double, ptr %27, align 8, !tbaa !8
  %29 = fcmp olt double %6, %28
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %31 = load i32, ptr %30, align 8, !tbaa !4      ; 3 uses
  %32 = icmp eq i32 %31, %19
  %33 = add nsw i32 %31, -1
  %spec.select42.i = select i1 %32, i32 %33, i32 %19
  %.0.i = select i1 %29, i32 %spec.select42.i, i32 %31
  %i.v = tail call i32 @getBoxFromTuple(ptr noundef nonnull readonly %0, i32 noundef %.034.i, i32 noundef %.033.i, i32 noundef %.0.i) ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.y ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !10
  %i.ad = icmp slt i32 %i.v, %i.ac
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %getBoxFromCoord.exit
  %i.ae = load i32, ptr %1, align 8, !tbaa !19
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %1, align 8, !tbaa !19
  %.pre = load i32, ptr %i.z, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %getBoxFromCoord.exit
  %i.ag = phi i32 [ %.pre, %bb.d ], [ %i.aa, %getBoxFromCoord.exit ]
  %i.ah = shl nsw i32 %i.v, 6
  %i.ai = add nsw i32 %i.aa, %i.ah
  %i.aj = add nsw i32 %i.ag, 1
  store i32 %i.aj, ptr %i.z, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !22
  %i.am = sext i32 %i.ai to i64                   ; 4 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.am
  store i32 %2, ptr %i.an, align 4, !tbaa !4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !23
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.am
  store i32 %3, ptr %i.aq, align 4, !tbaa !4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.at = getelementptr inbounds [24 x i8], ptr %i.as, i64 %i.am ; 3 uses
  store double %4, ptr %i.at, align 8, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store double %5, ptr %i.au, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store double %6, ptr %i.av, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !25
  %i.ay = getelementptr inbounds [24 x i8], ptr %i.ax, i64 %i.am ; 3 uses
  store double %7, ptr %i.ay, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store double %8, ptr %i.az, align 8, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store double %9, ptr %i.ba, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @moveAtom(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = sext i32 %4 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = shl nsw i32 %3, 6                        ; 2 uses
  %i.g = add nsw i32 %i.f, %2
  %i.h = shl nsw i32 %4, 6
  %i.i = add nsw i32 %i.e, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.l = sext i32 %i.g to i64                     ; 12 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = sext i32 %i.i to i64                     ; 6 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.o
  store i32 %i.n, ptr %i.p, align 4, !tbaa !4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23   ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.l
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.o
  store i32 %i.t, ptr %i.u, align 4, !tbaa !4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24   ; 2 uses
  %i.x = getelementptr inbounds [24 x i8], ptr %i.w, i64 %i.o
  %i.y = getelementptr inbounds [24 x i8], ptr %i.w, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25  ; 2 uses
  %i.ab = getelementptr inbounds [24 x i8], ptr %i.aa, i64 %i.o
  %i.ac = getelementptr inbounds [24 x i8], ptr %i.aa, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26 ; 2 uses
  %i.af = getelementptr inbounds [24 x i8], ptr %i.ae, i64 %i.o
  %i.ag = getelementptr inbounds [24 x i8], ptr %i.ae, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.o
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.l
  %i.al = load i64, ptr %i.ak, align 8
  store i64 %i.al, ptr %i.aj, align 8
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.c ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !4
  %i.aq = sext i32 %3 to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = add nsw i32 %i.as, -1                   ; 3 uses
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !4
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.au = add nsw i32 %i.at, %i.f
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !22  ; 2 uses
  %i.aw = sext i32 %i.au to i64                   ; 6 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.az = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.l
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !4
  %i.ba = load ptr, ptr %i.q, align 8, !tbaa !23  ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.aw
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.l
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !4
  %i.be = load ptr, ptr %i.v, align 8, !tbaa !24  ; 2 uses
  %i.bf = getelementptr inbounds [24 x i8], ptr %i.be, i64 %i.l
  %i.bg = getelementptr inbounds [24 x i8], ptr %i.be, i64 %i.aw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false)
  %i.bh = load ptr, ptr %i.z, align 8, !tbaa !25  ; 2 uses
  %i.bi = getelementptr inbounds [24 x i8], ptr %i.bh, i64 %i.l
  %i.bj = getelementptr inbounds [24 x i8], ptr %i.bh, i64 %i.aw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false)
  %i.bk = load ptr, ptr %i.ad, align 8, !tbaa !26 ; 2 uses
  %i.bl = getelementptr inbounds [24 x i8], ptr %i.bk, i64 %i.l
  %i.bm = getelementptr inbounds [24 x i8], ptr %i.bk, i64 %i.aw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  %i.bn = load ptr, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.l
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.aw
  %i.bq = load i64, ptr %i.bp, align 8
  store i64 %i.bq, ptr %i.bo, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !10
  %i.bt = icmp sgt i32 %4, %i.bs
  br i1 %i.bt, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bu = load i32, ptr %1, align 8, !tbaa !19
  %i.bv = add nsw i32 %i.bu, -1
  store i32 %i.bv, ptr %1, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @updateLinkCells(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %.lr.ph.i, label %emptyHaloCells.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = sext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.h, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv.i
  store i32 0, ptr %i.i, align 4, !tbaa !4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.j = load i32, ptr %i.c, align 4, !tbaa !15
  %i.k = sext i32 %i.j to i64
  %i.l = icmp slt i64 %indvars.iv.next.i, %i.k
  br i1 %i.l, label %bb.b, label %emptyHaloCells.exit.loopexit

emptyHaloCells.exit.loopexit:                     ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 4, !tbaa !10
  br label %emptyHaloCells.exit

emptyHaloCells.exit:                              ; preds = %emptyHaloCells.exit.loopexit, %bb.a
  %i.m = phi i32 [ %.pre, %emptyHaloCells.exit.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph24, label %._crit_edge25

.lr.ph24:                                         ; preds = %emptyHaloCells.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.pre27 = load ptr, ptr %i.o, align 8, !tbaa !16
  br label %bb.c

._crit_edge25:                                    ; preds = %._crit_edge, %emptyHaloCells.exit
  ret void

bb.c:                                             ; preds = %.lr.ph24, %._crit_edge
  %i.ad = phi i32 [ %i.m, %.lr.ph24 ], [ %i.fz, %._crit_edge ] ; 8 uses
  %i.ae = phi ptr [ %.pre27, %.lr.ph24 ], [ %i.ga, %._crit_edge ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph24 ], [ %indvars.iv.next, %._crit_edge ] ; 6 uses
  %i.af = shl nsw i64 %indvars.iv, 6              ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %moveAtom.exit
  %i.aj = phi i32 [ %i.fo, %moveAtom.exit ], [ %i.ad, %bb.c ]
  %i.ak = phi i32 [ %i.fp, %moveAtom.exit ], [ %i.ad, %bb.c ] ; 7 uses
  %i.al = phi i32 [ %i.fq, %moveAtom.exit ], [ %i.ad, %bb.c ] ; 11 uses
  %i.am = phi i32 [ %i.fr, %moveAtom.exit ], [ %i.ad, %bb.c ] ; 9 uses
  %i.an = phi i32 [ %i.fs, %moveAtom.exit ], [ %i.ad, %bb.c ] ; 7 uses
  %i.ao = phi i32 [ %i.ft, %moveAtom.exit ], [ %i.ad, %bb.c ] ; 5 uses
  %i.ap = phi i32 [ %i.fu, %moveAtom.exit ], [ %i.ad, %bb.c ] ; 3 uses
  %i.aq = phi ptr [ %i.fv, %moveAtom.exit ], [ %i.ae, %bb.c ]
  %.01922 = phi i32 [ %.1, %moveAtom.exit ], [ 0, %bb.c ] ; 4 uses
  %i.ar = load ptr, ptr %i.p, align 8, !tbaa !24  ; 2 uses
  %i.as = sext i32 %.01922 to i64
  %i.at = add nsw i64 %i.af, %i.as                ; 12 uses
  %i.au = getelementptr inbounds [24 x i8], ptr %i.ar, i64 %i.at ; 4 uses
  %5 = load double, ptr %i.au, align 8, !tbaa !8  ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %7 = load double, ptr %6, align 8, !tbaa !8     ; 2 uses
  %8 = load double, ptr %i.r, align 8, !tbaa !8
  %i.av = load double, ptr %i.s, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %9 = load double, ptr %i.aw, align 8, !tbaa !8  ; 2 uses
  %10 = load double, ptr %2, align 8, !tbaa !8
  %11 = load double, ptr %3, align 8, !tbaa !8
  %i.ax = load double, ptr %i.q, align 8, !tbaa !8
  %i.ay = fcmp olt double %5, %i.ax
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.az = load double, ptr %i.u, align 8, !tbaa !8
  %i.ba = fsub double %5, %i.az
  %i.bb = load double, ptr %i.t, align 8, !tbaa !8
  %i.bc = fmul double %i.ba, %i.bb
  %i.bd = tail call double @llvm.floor.f64(double %i.bc)
  %i.be = fptosi double %i.bd to i32              ; 2 uses
  %i.bf = load i32, ptr %0, align 8, !tbaa !4     ; 3 uses
  %i.bg = icmp eq i32 %i.bf, %i.be
  %i.bh = add nsw i32 %i.bf, -1
  %spec.select.i = select i1 %i.bg, i32 %i.bh, i32 %i.be
  br label %getBoxFromCoord.exit

bb.e:                                             ; preds = %.lr.ph
  %i.bi = load i32, ptr %0, align 8, !tbaa !4     ; 2 uses
  br label %getBoxFromCoord.exit

getBoxFromCoord.exit:                             ; preds = %bb.d, %bb.e
  %i.bj = phi i32 [ %i.bi, %bb.e ], [ %i.bf, %bb.d ] ; 6 uses
  %.034.i = phi i32 [ %i.bi, %bb.e ], [ %spec.select.i, %bb.d ] ; 7 uses
  %12 = fsub double %9, %10
  %13 = fmul double %12, %11
  %14 = tail call double @llvm.floor.f64(double %13)
  %15 = fptosi double %14 to i32                  ; 2 uses
  %16 = fsub double %7, %8
  %17 = fmul double %16, %i.av
  %18 = tail call double @llvm.floor.f64(double %17)
  %19 = fptosi double %18 to i32                  ; 2 uses
  %20 = load double, ptr %i.v, align 8, !tbaa !8
  %21 = fcmp uge double %7, %20                   ; 2 uses
  %22 = load i32, ptr %i.w, align 4, !tbaa !4     ; 10 uses
  %23 = icmp eq i32 %22, %19
  %i.bk = add nsw i32 %22, -1
  %spec.select41.i = select i1 %23, i32 %i.bk, i32 %19 ; 4 uses
  %.033.i.a = select i1 %21, i32 %22, i32 %spec.select41.i ; 2 uses
  %24 = load double, ptr %i.x, align 8, !tbaa !8
  %25 = fcmp uge double %9, %24
  %26 = load i32, ptr %4, align 8, !tbaa !4       ; 8 uses
  %27 = icmp eq i32 %26, %15
  %28 = add nsw i32 %26, -1
  %spec.select42.i = select i1 %27, i32 %28, i32 %15 ; 5 uses
  br i1 %25, label %bb.f, label %bb.g

bb.f:                                             ; preds = %getBoxFromCoord.exit
  %i.bl = shl nsw i32 %26, 1                      ; 2 uses
  %i.bm = mul nsw i32 %i.bl, %22
  %i.bn = add nsw i32 %i.bj, 2
  %i.bo = add i32 %22, 3
  %reass.add71.i = add i32 %i.bo, %.033.i.a
  %reass.add72.i = add i32 %reass.add71.i, %i.bl
  %reass.mul73.i = mul i32 %i.bn, %reass.add72.i
  %i.bp = add i32 %.034.i, 1
  %i.bq = add i32 %i.bp, %i.bm
  %i.br = add i32 %i.bq, %i.ak
  %i.bs = add i32 %i.br, %reass.mul73.i
  br label %getBoxFromTuple.exit

bb.g:                                             ; preds = %getBoxFromCoord.exit
  %i.bt = icmp eq i32 %spec.select42.i, -1
  br i1 %i.bt, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bu = shl nsw i32 %26, 1                      ; 2 uses
  %i.bv = mul nsw i32 %i.bu, %22
  %i.bw = add nsw i32 %i.bj, 2
  %i.bx = add nsw i32 %.033.i.a, 1
  %reass.add69.i = add i32 %i.bx, %i.bu
  %reass.mul70.i = mul i32 %i.bw, %reass.add69.i
  %i.by = add i32 %.034.i, 1
  %i.bz = add i32 %i.by, %i.bv
  %i.ca = add i32 %i.bz, %i.al
  %i.cb = add i32 %i.ca, %reass.mul70.i
  br label %getBoxFromTuple.exit

bb.i:                                             ; preds = %bb.g
  br i1 %21, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = shl nsw i32 %26, 1
  %i.cd = mul nsw i32 %i.cc, %22
  %i.ce = add nsw i32 %i.bj, 2
  %reass.add67.i = add i32 %spec.select42.i, %26
  %reass.mul68.i = mul i32 %i.ce, %reass.add67.i
  %i.cf = add i32 %.034.i, 1
  %i.cg = add i32 %i.cf, %i.cd
  %i.ch = add i32 %i.cg, %i.am
  %i.ci = add i32 %i.ch, %reass.mul68.i
  br label %getBoxFromTuple.exit

bb.k:                                             ; preds = %bb.i
  %i.cj = icmp eq i32 %spec.select41.i, -1
  br i1 %i.cj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ck = shl i32 %22, 1
  %i.cl = mul i32 %i.ck, %26
  %i.cm = add nsw i32 %i.bj, 2
  %i.cn = mul nsw i32 %i.cm, %spec.select42.i
  %i.co = add i32 %.034.i, 1
  %i.cp = add i32 %i.co, %i.cl
  %i.cq = add i32 %i.cp, %i.an
  %i.cr = add i32 %i.cq, %i.cn
  br label %getBoxFromTuple.exit

bb.m:                                             ; preds = %bb.k
  %i.cs = icmp eq i32 %.034.i, %i.bj
  br i1 %i.cs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %reass.add65.i = add i32 %spec.select42.i, %26
  %reass.mul66.i = mul i32 %reass.add65.i, %22
  %i.ct = add i32 %reass.mul66.i, %spec.select41.i
  %i.cu = add i32 %i.ct, %i.ao
  br label %getBoxFromTuple.exit

bb.o:                                             ; preds = %bb.m
  %i.cv = icmp eq i32 %.034.i, -1
  %i.cw = mul i32 %spec.select42.i, %22
  %i.cx = add i32 %i.cw, %spec.select41.i         ; 2 uses
  br i1 %i.cv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cy = add i32 %i.cx, %i.ap
  br label %getBoxFromTuple.exit

bb.q:                                             ; preds = %bb.o
  %reass.mul.i = mul i32 %i.bj, %i.cx
  %i.cz = add i32 %reass.mul.i, %.034.i
  br label %getBoxFromTuple.exit

getBoxFromTuple.exit:                             ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.q
  %i.da = phi i32 [ %i.ak, %bb.f ], [ %i.al, %bb.h ], [ %i.al, %bb.j ], [ %i.al, %bb.l ], [ %i.al, %bb.n ], [ %i.al, %bb.p ], [ %i.al, %bb.q ]
  %i.db = phi i32 [ %i.ak, %bb.f ], [ %i.al, %bb.h ], [ %i.am, %bb.j ], [ %i.am, %bb.l ], [ %i.am, %bb.n ], [ %i.am, %bb.p ], [ %i.am, %bb.q ]
  %i.dc = phi i32 [ %i.ak, %bb.f ], [ %i.al, %bb.h ], [ %i.am, %bb.j ], [ %i.an, %bb.l ], [ %i.an, %bb.n ], [ %i.an, %bb.p ], [ %i.an, %bb.q ]
  %i.dd = phi i32 [ %i.ak, %bb.f ], [ %i.al, %bb.h ], [ %i.am, %bb.j ], [ %i.an, %bb.l ], [ %i.ao, %bb.n ], [ %i.ao, %bb.p ], [ %i.ao, %bb.q ]
  %i.de = phi i32 [ %i.ak, %bb.f ], [ %i.al, %bb.h ], [ %i.am, %bb.j ], [ %i.an, %bb.l ], [ %i.ao, %bb.n ], [ %i.ap, %bb.p ], [ %i.ap, %bb.q ]
  %.0.i21 = phi i32 [ %i.bs, %bb.f ], [ %i.cb, %bb.h ], [ %i.ci, %bb.j ], [ %i.cr, %bb.l ], [ %i.cu, %bb.n ], [ %i.cy, %bb.p ], [ %i.cz, %bb.q ] ; 4 uses
  %i.df = zext i32 %.0.i21 to i64
  %.not = icmp eq i64 %indvars.iv, %i.df
  br i1 %.not, label %bb.v, label %bb.r

bb.r:                                             ; preds = %getBoxFromTuple.exit
  %i.dg = sext i32 %.0.i21 to i64                 ; 2 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !4
  %i.dj = shl nsw i32 %.0.i21, 6
  %i.dk = add nsw i32 %i.di, %i.dj
  %i.dl = load ptr, ptr %i.y, align 8, !tbaa !22  ; 2 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.at
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !4
  %i.do = sext i32 %i.dk to i64                   ; 6 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.do
  store i32 %i.dn, ptr %i.dp, align 4, !tbaa !4
  %i.dq = load ptr, ptr %i.z, align 8, !tbaa !23  ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.at
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !4
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.do
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !4
  %i.du = getelementptr inbounds [24 x i8], ptr %i.ar, i64 %i.do
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.du, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false)
  %i.dv = load ptr, ptr %i.aa, align 8, !tbaa !25 ; 2 uses
  %i.dw = getelementptr inbounds [24 x i8], ptr %i.dv, i64 %i.do
  %i.dx = getelementptr inbounds [24 x i8], ptr %i.dv, i64 %i.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 24, i1 false)
  %i.dy = load ptr, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  %i.dz = getelementptr inbounds [24 x i8], ptr %i.dy, i64 %i.do
  %i.ea = getelementptr inbounds [24 x i8], ptr %i.dy, i64 %i.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i64 24, i1 false)
  %i.eb = load ptr, ptr %i.ac, align 8, !tbaa !27 ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.do
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.at
  %i.ee = load i64, ptr %i.ed, align 8
  store i64 %i.ee, ptr %i.ec, align 8
  %i.ef = load ptr, ptr %i.o, align 8, !tbaa !16  ; 2 uses
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.dg ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !4
  %i.ei = add nsw i32 %i.eh, 1
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !4
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !4
  %i.el = add nsw i32 %i.ek, -1                   ; 3 uses
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !4
  %.not.i = icmp eq i32 %i.el, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.em = sext i32 %i.el to i64
  %i.en = add nsw i64 %i.af, %i.em                ; 6 uses
  %i.eo = load ptr, ptr %i.y, align 8, !tbaa !22  ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.en
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !4
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.at
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !4
  %i.es = load ptr, ptr %i.z, align 8, !tbaa !23  ; 2 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.en
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !4
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.at
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !4
  %i.ew = load ptr, ptr %i.p, align 8, !tbaa !24  ; 2 uses
  %i.ex = getelementptr inbounds [24 x i8], ptr %i.ew, i64 %i.at
  %i.ey = getelementptr inbounds [24 x i8], ptr %i.ew, i64 %i.en
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ex, ptr noundef nonnull align 8 dereferenceable(24) %i.ey, i64 24, i1 false)
  %i.ez = load ptr, ptr %i.aa, align 8, !tbaa !25 ; 2 uses
  %i.fa = getelementptr inbounds [24 x i8], ptr %i.ez, i64 %i.at
  %i.fb = getelementptr inbounds [24 x i8], ptr %i.ez, i64 %i.en
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %i.fb, i64 24, i1 false)
  %i.fc = load ptr, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  %i.fd = getelementptr inbounds [24 x i8], ptr %i.fc, i64 %i.at
  %i.fe = getelementptr inbounds [24 x i8], ptr %i.fc, i64 %i.en
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i64 24, i1 false)
  %i.ff = load ptr, ptr %i.ac, align 8, !tbaa !27 ; 2 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.at
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.en
  %i.fi = load i64, ptr %i.fh, align 8
  store i64 %i.fi, ptr %i.fg, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fj = load i32, ptr %i.a, align 4, !tbaa !10  ; 15 uses
  %i.fk = icmp sgt i32 %.0.i21, %i.fj
  br i1 %i.fk, label %bb.u, label %moveAtom.exit

bb.u:                                             ; preds = %bb.t
  %i.fl = load i32, ptr %1, align 8, !tbaa !19
  %i.fm = add nsw i32 %i.fl, -1
  store i32 %i.fm, ptr %1, align 8, !tbaa !19
  br label %moveAtom.exit

bb.v:                                             ; preds = %getBoxFromTuple.exit
  %i.fn = add nsw i32 %.01922, 1
  br label %moveAtom.exit

moveAtom.exit:                                    ; preds = %bb.u, %bb.t, %bb.v
  %i.fo = phi i32 [ %i.aj, %bb.v ], [ %i.fj, %bb.t ], [ %i.fj, %bb.u ] ; 2 uses
  %i.fp = phi i32 [ %i.ak, %bb.v ], [ %i.fj, %bb.t ], [ %i.fj, %bb.u ]
  %i.fq = phi i32 [ %i.da, %bb.v ], [ %i.fj, %bb.t ], [ %i.fj, %bb.u ]
  %i.fr = phi i32 [ %i.db, %bb.v ], [ %i.fj, %bb.t ], [ %i.fj, %bb.u ]
  %i.fs = phi i32 [ %i.dc, %bb.v ], [ %i.fj, %bb.t ], [ %i.fj, %bb.u ]
  %i.ft = phi i32 [ %i.dd, %bb.v ], [ %i.fj, %bb.t ], [ %i.fj, %bb.u ]
  %i.fu = phi i32 [ %i.de, %bb.v ], [ %i.fj, %bb.t ], [ %i.fj, %bb.u ]
  %.1 = phi i32 [ %i.fn, %bb.v ], [ %.01922, %bb.t ], [ %.01922, %bb.u ] ; 2 uses
  %i.fv = load ptr, ptr %i.o, align 8, !tbaa !16  ; 3 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !4
  %i.fy = icmp slt i32 %.1, %i.fx
  br i1 %i.fy, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %moveAtom.exit, %bb.c
  %i.fz = phi i32 [ %i.ad, %bb.c ], [ %i.fo, %moveAtom.exit ] ; 2 uses
  %i.ga = phi ptr [ %i.ae, %bb.c ], [ %i.fv, %moveAtom.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gb = sext i32 %i.fz to i64
  %i.gc = icmp slt i64 %indvars.iv.next, %i.gb
  br i1 %i.gc, label %bb.c, label %._crit_edge25
}

; Function Attrs: nounwind uwtable
define dso_local i32 @maxOccupancy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 8 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.d, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep12 = getelementptr i8, ptr %i.g, i64 %i.h
  %bound0 = icmp ult ptr %i.a, %scevgep12
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi13 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <4 x i32>, ptr %i.i, align 4, !tbaa !4, !alias.scope !28
  %wide.load14 = load <4 x i32>, ptr %i.j, align 4, !tbaa !4, !alias.scope !28
  %i.k = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.l = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi13, <4 x i32> %wide.load14) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.k, <4 x i32> %i.l)
  %i.n = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  store i32 %i.n, ptr %i.a, align 4, !tbaa !4, !alias.scope !34, !noalias !28
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.89.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.n, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.89.prol = phi i32 [ %..prol, %scalar.ph.prol ], [ %.89.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.prol
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %..prol = tail call i32 @llvm.smax.i32(i32 %.89.prol, i32 %i.p) ; 3 uses
  store i32 %..prol, ptr %i.a, align 4, !tbaa !4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !36

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.89.unr = phi i32 [ %.89.ph, %scalar.ph.preheader ], [ %..prol, %scalar.ph.prol ]
  %i.q = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.r = icmp ugt i64 %i.q, -4
  br i1 %i.r, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  tail call void @profileStart(i32 noundef 10) #14
  call void @maxIntParallel(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 1) #14
  call void @profileStop(i32 noundef 10) #14
  %i.s = load i32, ptr %i.b, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %i.s

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.89 = phi i32 [ %..3, %scalar.ph ], [ %.89.unr, %scalar.ph.prol.loopexit ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %. = tail call i32 @llvm.smax.i32(i32 %.89, i32 %i.u) ; 2 uses
  store i32 %., ptr %i.a, align 4, !tbaa !4
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %..1 = tail call i32 @llvm.smax.i32(i32 %., i32 %i.x) ; 2 uses
  store i32 %..1, ptr %i.a, align 4, !tbaa !4
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %..2 = tail call i32 @llvm.smax.i32(i32 %..1, i32 %i.aa) ; 2 uses
  store i32 %..2, ptr %i.a, align 4, !tbaa !4
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %..3 = tail call i32 @llvm.smax.i32(i32 %..2, i32 %i.ad) ; 2 uses
  store i32 %..3, ptr %i.a, align 4, !tbaa !4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !38
}

declare void @profileStart(i32 noundef) local_unnamed_addr #8

declare void @maxIntParallel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @profileStop(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #11

attributes #0 = { mustprogress nofree nounwind willreturn memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !5, i64 12}
!11 = !{!"LinkCellSt", !6, i64 0, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 48, !6, i64 72, !6, i64 96, !12, i64 120}
!12 = !{!"p1 int", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!11, !5, i64 16}
!15 = !{!11, !5, i64 20}
!16 = !{!11, !12, i64 120}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTS10LinkCellSt", !13, i64 0}
!19 = !{!20, !5, i64 0}
!20 = !{!"AtomsSt", !5, i64 0, !5, i64 4, !12, i64 8, !12, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48}
!21 = !{!"p1 double", !13, i64 0}
!22 = !{!20, !12, i64 8}
!23 = !{!20, !12, i64 16}
!24 = !{!20, !21, i64 24}
!25 = !{!20, !21, i64 32}
!26 = !{!20, !21, i64 40}
!27 = !{!20, !21, i64 48}
!28 = !{!29}
!29 = distinct !{!29, !30}
!30 = distinct !{!30, !"LVerDomain"}
!31 = distinct !{!31, !32, !33}
!32 = !{!"llvm.loop.isvectorized", i32 1}
!33 = !{!"llvm.loop.unroll.runtime.disable"}
!34 = !{!35}
!35 = distinct !{!35, !30}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = distinct !{!38, !32}
end_hunk_0
