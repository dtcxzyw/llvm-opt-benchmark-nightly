inline.NumInlined: 13
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@initLinkCells:bb.a
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #13 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = load <2 x double>, ptr %i.b, align 8, !tbaa !8
  store <2 x double> %i.f, ptr %i.c, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.i = load <2 x double>, ptr %i.d, align 8, !tbaa !8 ; 2 uses
  %i.j = insertelement <2 x double> poison, double %1, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fdiv <2 x double> %i.i, %i.k
  %i.m = fptosi <2 x double> %i.l to <2 x i32>    ; 4 uses
  %i.n = sitofp <2 x i32> %i.m to <2 x double>
  %i.o = fdiv <2 x double> %i.i, %i.n             ; 3 uses
  store <2 x i32> %i.m, ptr %i.a, align 8, !tbaa !4
  store <2 x double> %i.o, ptr %i.e, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.s = load <2 x double>, ptr %i.q, align 8, !tbaa !8
  store <2 x double> %i.s, ptr %i.r, align 8, !tbaa !8
  %i.t = load <2 x double>, ptr %i.g, align 8, !tbaa !8
  store <2 x double> %i.t, ptr %i.h, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.v = load double, ptr %i.u, align 8, !tbaa !8 ; 2 uses
  %i.w = fdiv double %i.v, %1
  %i.x = fptosi double %i.w to i32                ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.x, ptr %i.y, align 8, !tbaa !4
  %i.z = sitofp i32 %i.x to double
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.ab = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.v, i64 0
  %i.ac = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ad = insertelement <2 x double> %i.ac, double %i.z, i64 0
  %i.ae = fdiv <2 x double> %i.ab, %i.ad          ; 2 uses
  store <2 x double> %i.ae, ptr %i.aa, align 8, !tbaa !8
  %i.af = shufflevector <2 x double> %i.o, <2 x double> %i.ae, <2 x i32> <i32 1, i32 2>
  %i.ag = fdiv <2 x double> splat (double 1.000000e+00), %i.af
  store <2 x double> %i.ag, ptr %i.p, align 8, !tbaa !8
  %i.ah = extractelement <2 x i32> %i.m, i64 1    ; 2 uses
  %i.ai = mul i32 %i.ah, %i.x                     ; 2 uses
  %i.aj = extractelement <2 x i32> %i.m, i64 0    ; 2 uses
  %i.ak = mul i32 %i.ai, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !10
  %i.am = add nsw i32 %i.aj, 2
  %i.an = add i32 %i.ah, 2
  %i.ao = add i32 %i.an, %i.x
  %i.ap = mul nsw i32 %i.ao, %i.am
  %i.aq = add nsw i32 %i.ap, %i.ai
  %i.ar = shl nsw i32 %i.aq, 1                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !14
  %i.at = add nsw i32 %i.ar, %i.ak                ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.at, ptr %i.au, align 4, !tbaa !15
  %i.av = sext i32 %i.at to i64
  %i.aw = shl nsw i64 %i.av, 2
  %i.ax = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934592, 8589934589) %i.aw) #13 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !16
  %i.az = icmp sgt i32 %i.at, 0
  br i1 %i.az, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.ba = zext nneg i32 %i.at to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ax, i8 0, i64 %i.bb, i1 false), !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @destroyLinkCells(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.c) #14
  %i.d = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.d) #14
  store ptr null, ptr %0, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @getNeighborBoxes(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10   ; 2 uses
  %i.c = icmp slt i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !4      ; 2 uses
  %i.e = srem i32 %1, %i.d
  %i.f = sdiv i32 %1, %i.d                        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4    ; 2 uses
  %i.i = srem i32 %i.f, %i.h
  %i.j = sdiv i32 %i.f, %i.h
  br label %getTuple.exit

bb.c:                                             ; preds = %bb.a
  %i.k = sub nsw i32 %1, %i.b                     ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4    ; 7 uses
  %i.n = shl nsw i32 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4    ; 5 uses
  %i.q = mul nsw i32 %i.n, %i.p
  %i.r = icmp slt i32 %i.k, %i.q
  br i1 %i.r, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = mul nsw i32 %i.p, %i.m                   ; 2 uses
  %i.t = icmp slt i32 %i.k, %i.s
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = sub nsw i32 %i.k, %i.s
  %i.v = load i32, ptr %0, align 4, !tbaa !4
  %i.w = add nsw i32 %i.v, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.074.i = phi i32 [ %i.w, %bb.e ], [ 0, %bb.d ]
  %.0.i = phi i32 [ %i.u, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  %i.x = srem i32 %.0.i, %i.m
  %i.y = add nsw i32 %i.x, 1
  %i.z = sdiv i32 %.0.i, %i.m
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.aa = shl nsw i32 %i.p, 1                     ; 2 uses
  %i.ab = load i32, ptr %0, align 4, !tbaa !4     ; 3 uses
  %i.ac = add i32 %i.m, 2                         ; 2 uses
  %i.ad = add i32 %i.ab, %i.ac
  %i.ae = mul nsw i32 %i.ad, %i.aa                ; 2 uses
  %i.af = icmp slt i32 %i.k, %i.ae
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = mul nsw i32 %i.aa, %i.m
  %i.ah = sub nsw i32 %i.k, %i.ag                 ; 2 uses
  %i.ai = add nsw i32 %i.ab, 2                    ; 3 uses
  %i.aj = mul nsw i32 %i.ai, %i.p                 ; 2 uses
  %i.ak = icmp slt i32 %i.ah, %i.aj               ; 2 uses
  %i.al = add nsw i32 %i.m, 1
  %.071.i = select i1 %i.ak, i32 0, i32 %i.al
  %i.am = select i1 %i.ak, i32 0, i32 %i.aj
  %.1.i = sub nsw i32 %i.ah, %i.am                ; 2 uses
  %i.an = srem i32 %.1.i, %i.ai
  %i.ao = sdiv i32 %.1.i, %i.ai
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ap = sub nsw i32 %i.k, %i.ae                 ; 2 uses
  %i.aq = add nsw i32 %i.ab, 2                    ; 3 uses
  %i.ar = mul nsw i32 %i.aq, %i.ac                ; 2 uses
  %i.as = icmp slt i32 %i.ap, %i.ar               ; 2 uses
  %.068.i = select i1 %i.as, i32 -1, i32 %i.p
  %i.at = select i1 %i.as, i32 0, i32 %i.ar
  %.2.i = sub nsw i32 %i.ap, %i.at                ; 2 uses
  %i.au = srem i32 %.2.i, %i.aq
  %i.av = sdiv i32 %.2.i, %i.aq
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.175.i = phi i32 [ %.074.i, %bb.f ], [ %i.an, %bb.h ], [ %i.au, %bb.i ]
  %.172.i = phi i32 [ %i.y, %bb.f ], [ %.071.i, %bb.h ], [ %i.av, %bb.i ]
  %.169.i = phi i32 [ %i.z, %bb.f ], [ %i.ao, %bb.h ], [ %.068.i, %bb.i ]
  %i.aw = add nsw i32 %.175.i, -1
  %i.ax = add nsw i32 %.172.i, -1
  br label %getTuple.exit

getTuple.exit:                                    ; preds = %bb.b, %bb.j
  %.276.i = phi i32 [ %i.e, %bb.b ], [ %i.aw, %bb.j ] ; 2 uses
  %.273.i = phi i32 [ %i.i, %bb.b ], [ %i.ax, %bb.j ] ; 4 uses
  %.270.i = phi i32 [ %i.j, %bb.b ], [ %.169.i, %bb.j ] ; 5 uses
  %i.ay = add nsw i32 %.276.i, -1
  %i.az = add i32 %.273.i, -1                     ; 2 uses
  %i.ba = add i32 %.270.i, -1                     ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %3 = sext i32 %.270.i to i64
  %4 = add nsw i64 %3, 1
  %5 = sext i32 %i.ba to i64
  %smax = tail call i64 @llvm.smax.i64(i64 %4, i64 %5)
  %6 = trunc i64 %smax to i32                     ; 2 uses
  %7 = add i32 %6, 2
  %8 = sub i32 %7, %.270.i                        ; 2 uses
  %9 = sext i32 %.273.i to i64
  %10 = add nsw i64 %9, 1
  %11 = sext i32 %i.az to i64
  %smax31 = tail call i64 @llvm.smax.i64(i64 %10, i64 %11)
  %12 = trunc i64 %smax31 to i32
  %13 = add i32 %12, 1
  %14 = sub i32 %13, %.273.i
  %15 = mul i32 %8, %14
  %16 = add i32 %15, %6
  %17 = add i32 %16, 2
  %18 = sub i32 %17, %.270.i
  br label %bb.l

bb.k:                                             ; preds = %bb.m
  %i.bd = trunc nsw i64 %indvars.iv.next.a to i32
  ret i32 %i.bd

bb.l:                                             ; preds = %getTuple.exit, %bb.m
  %.01530.a = phi i32 [ 0, %getTuple.exit ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %.01530 = phi i32 [ %i.ay, %getTuple.exit ], [ %i.bf, %bb.m ] ; 5 uses
  %i.be = icmp eq i32 %.01530, -1
  %i.bf = add i32 %.01530, 1                      ; 5 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.o
  %.not = icmp sgt i32 %.01530, %.276.i
  %indvars.iv.next = add i32 %.01530.a, %18
  br i1 %.not, label %bb.k, label %bb.l

bb.n:                                             ; preds = %bb.l, %bb.o
  %indvars.iv32 = phi i32 [ %.01530.a, %bb.l ], [ %indvars.iv.next33, %bb.o ] ; 2 uses
  %.01428 = phi i32 [ %i.az, %bb.l ], [ %i.bi, %bb.o ] ; 9 uses
  %19 = sext i32 %indvars.iv32 to i64
  %i.bg = icmp eq i32 %.01428, -1
  %i.bh = shl i32 %.01428, 1
  %i.bi = add nsw i32 %.01428, 1                  ; 2 uses
  %i.bj = add i32 %.01428, 3
  br label %bb.p

bb.o:                                             ; preds = %getBoxFromTuple.exit
  %.not17 = icmp sgt i32 %.01428, %.273.i
  %indvars.iv.next33 = add i32 %indvars.iv32, %8
  br i1 %.not17, label %bb.m, label %bb.n

bb.p:                                             ; preds = %bb.n, %getBoxFromTuple.exit
  %indvars.iv = phi i64 [ %19, %bb.n ], [ %indvars.iv.next.a, %getBoxFromTuple.exit ] ; 2 uses
  %.026 = phi i32 [ %i.ba, %bb.n ], [ %i.dj, %getBoxFromTuple.exit ] ; 10 uses
  %i.bk = load i32, ptr %i.bb, align 4, !tbaa !4  ; 6 uses
  %i.bl = icmp eq i32 %.026, %i.bk
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bm = load i32, ptr %i.a, align 4, !tbaa !10
  %i.bn = shl nsw i32 %.026, 1                    ; 2 uses
  %i.bo = load i32, ptr %i.bc, align 4, !tbaa !4  ; 2 uses
  %i.bp = mul nsw i32 %i.bo, %i.bn
  %i.bq = load i32, ptr %0, align 4, !tbaa !4
  %i.br = add nsw i32 %i.bq, 2
  %reass.add71.i = add i32 %i.bj, %i.bn
  %reass.add72.i = add i32 %reass.add71.i, %i.bo
  %reass.mul73.i = mul i32 %i.br, %reass.add72.i
  %i.bs = add i32 %i.bf, %i.bm
  %i.bt = add i32 %i.bs, %i.bp
  %i.bu = add i32 %i.bt, %reass.mul73.i
  br label %getBoxFromTuple.exit

bb.r:                                             ; preds = %bb.p
  %i.bv = icmp eq i32 %.026, -1
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bw = load i32, ptr %i.a, align 4, !tbaa !10
  %i.bx = shl nsw i32 %i.bk, 1                    ; 2 uses
  %i.by = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.bz = mul nsw i32 %i.by, %i.bx
  %i.ca = load i32, ptr %0, align 4, !tbaa !4
  %i.cb = add nsw i32 %i.ca, 2
  %reass.add69.i = add i32 %i.bi, %i.bx
  %reass.mul70.i = mul i32 %i.cb, %reass.add69.i
  %i.cc = add i32 %i.bf, %i.bw
  %i.cd = add i32 %i.cc, %i.bz
  %i.ce = add i32 %i.cd, %reass.mul70.i
  br label %getBoxFromTuple.exit

bb.t:                                             ; preds = %bb.r
  %i.cf = load i32, ptr %i.bc, align 4, !tbaa !4  ; 5 uses
  %i.cg = icmp eq i32 %.01428, %i.cf
  br i1 %i.cg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ch = load i32, ptr %i.a, align 4, !tbaa !10
  %i.ci = mul i32 %i.bh, %i.bk
  %i.cj = load i32, ptr %0, align 4, !tbaa !4
  %i.ck = add nsw i32 %i.cj, 2
  %reass.add67.i = add i32 %i.bk, %.026
  %reass.mul68.i = mul i32 %i.ck, %reass.add67.i
  %i.cl = add i32 %i.bf, %i.ci
  %i.cm = add i32 %i.cl, %i.ch
  %i.cn = add i32 %i.cm, %reass.mul68.i
  br label %getBoxFromTuple.exit

bb.v:                                             ; preds = %bb.t
  br i1 %i.bg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.co = load i32, ptr %i.a, align 4, !tbaa !10
  %i.cp = shl nsw i32 %i.bk, 1
  %i.cq = mul nsw i32 %i.cp, %i.cf
  %i.cr = load i32, ptr %0, align 4, !tbaa !4
  %i.cs = add nsw i32 %i.cr, 2
  %i.ct = mul nsw i32 %i.cs, %.026
  %i.cu = add i32 %i.bf, %i.cq
  %i.cv = add i32 %i.cu, %i.co
  %i.cw = add i32 %i.cv, %i.ct
  br label %getBoxFromTuple.exit

bb.x:                                             ; preds = %bb.v
  %i.cx = load i32, ptr %0, align 4, !tbaa !4     ; 2 uses
  %i.cy = icmp eq i32 %.01530, %i.cx
  br i1 %i.cy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cz = load i32, ptr %i.a, align 4, !tbaa !10
  %reass.add65.i = add i32 %i.bk, %.026
  %reass.mul66.i = mul i32 %i.cf, %reass.add65.i
  %i.da = add i32 %reass.mul66.i, %.01428
  %i.db = add i32 %i.da, %i.cz
  br label %getBoxFromTuple.exit

bb.z:                                             ; preds = %bb.x
  br i1 %i.be, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dc = load i32, ptr %i.a, align 4, !tbaa !10
  %i.dd = mul nsw i32 %i.cf, %.026
  %i.de = add i32 %i.dd, %.01428
  %i.df = add i32 %i.de, %i.dc
  br label %getBoxFromTuple.exit

bb.ab:                                            ; preds = %bb.z
  %i.dg = mul i32 %i.cf, %.026
  %reass.add.i = add i32 %i.dg, %.01428
  %reass.mul.i = mul i32 %i.cx, %reass.add.i
  %i.dh = add i32 %reass.mul.i, %.01530
  br label %getBoxFromTuple.exit

getBoxFromTuple.exit:                             ; preds = %bb.q, %bb.s, %bb.u, %bb.w, %bb.y, %bb.aa, %bb.ab
  %.0.i19 = phi i32 [ %i.bu, %bb.q ], [ %i.ce, %bb.s ], [ %i.cn, %bb.u ], [ %i.cw, %bb.w ], [ %i.db, %bb.y ], [ %i.df, %bb.aa ], [ %i.dh, %bb.ab ]
  %indvars.iv.next.a = add nsw i64 %indvars.iv, 1 ; 2 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %.0.i19, ptr %i.di, align 4, !tbaa !4
  %i.dj = add nsw i32 %.026, 1
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
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load <2 x double>, ptr %i.b, align 8, !tbaa !8
  %i.e = load <2 x double>, ptr %i.c, align 8, !tbaa !8
  %i.f = load double, ptr %i.a, align 8, !tbaa !8
  %i.g = fcmp olt double %4, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load double, ptr %i.i, align 8, !tbaa !8
  %i.k = fsub double %4, %i.j
  %i.l = load double, ptr %i.h, align 8, !tbaa !8
  %i.m = fmul double %i.k, %i.l
  %i.n = tail call double @llvm.floor.f64(double %i.m)
  %i.o = fptosi double %i.n to i32                ; 2 uses
  %i.p = load i32, ptr %0, align 8, !tbaa !4      ; 2 uses
  %i.q = icmp eq i32 %i.p, %i.o
  %i.r = add nsw i32 %i.p, -1
  %spec.select.i = select i1 %i.q, i32 %i.r, i32 %i.o
  br label %getBoxFromCoord.exit

bb.c:                                             ; preds = %bb.a
  %i.s = load i32, ptr %0, align 8, !tbaa !4
  br label %getBoxFromCoord.exit

getBoxFromCoord.exit:                             ; preds = %bb.b, %bb.c
  %.034.i = phi i32 [ %i.s, %bb.c ], [ %spec.select.i, %bb.b ]
  %i.t = insertelement <2 x double> poison, double %5, i64 0
  %i.u = insertelement <2 x double> %i.t, double %6, i64 1
  %i.v = fsub <2 x double> %i.u, %i.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load double, ptr %i.w, align 8, !tbaa !8
  %i.y = fcmp olt double %5, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !8
  %i.ac = fcmp olt double %6, %i.ab
  %i.ad = fmul <2 x double> %i.v, %i.e
  %i.ae = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.ad)
  %i.af = fptosi <2 x double> %i.ae to <2 x i32>  ; 3 uses
  %i.ag = load <2 x i32>, ptr %i.z, align 4, !tbaa !4 ; 3 uses
  %i.ah = extractelement <2 x i32> %i.ag, i64 0   ; 2 uses
  %i.ai = add nsw i32 %i.ah, -1
  %i.aj = icmp eq <2 x i32> %i.ag, %i.af          ; 2 uses
  %i.ak = extractelement <2 x i1> %i.aj, i64 0
  %i.al = extractelement <2 x i32> %i.af, i64 0
  %spec.select41.i = select i1 %i.ak, i32 %i.ai, i32 %i.al
  %.033.i = select i1 %i.y, i32 %spec.select41.i, i32 %i.ah
  %i.am = extractelement <2 x i32> %i.ag, i64 1   ; 2 uses
  %i.an = add nsw i32 %i.am, -1
  %i.ao = extractelement <2 x i1> %i.aj, i64 1
  %i.ap = extractelement <2 x i32> %i.af, i64 1
  %spec.select42.i = select i1 %i.ao, i32 %i.an, i32 %i.ap
  %.0.i = select i1 %i.ac, i32 %spec.select42.i, i32 %i.am
  %i.aq = tail call i32 @getBoxFromTuple(ptr noundef nonnull readonly %0, i32 noundef %.034.i, i32 noundef %.033.i, i32 noundef %.0.i) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !16
  %i.at = sext i32 %i.aq to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.at ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12
end_hunk_0
begin_hunk_1_@updateLinkCells:bb.a
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !4
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.at
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !4
  %i.fs = load ptr, ptr %i.p, align 8, !tbaa !24  ; 2 uses
  %i.ft = getelementptr inbounds [24 x i8], ptr %i.fs, i64 %i.at
  %i.fu = getelementptr inbounds [24 x i8], ptr %i.fs, i64 %i.fj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ft, ptr noundef nonnull align 8 dereferenceable(24) %i.fu, i64 24, i1 false)
  %i.fv = load ptr, ptr %i.aa, align 8, !tbaa !25 ; 2 uses
  %i.fw = getelementptr inbounds [24 x i8], ptr %i.fv, i64 %i.at
  %i.fx = getelementptr inbounds [24 x i8], ptr %i.fv, i64 %i.fj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fw, ptr noundef nonnull align 8 dereferenceable(24) %i.fx, i64 24, i1 false)
  %i.fy = load ptr, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  %i.fz = getelementptr inbounds [24 x i8], ptr %i.fy, i64 %i.at
  %i.ga = getelementptr inbounds [24 x i8], ptr %i.fy, i64 %i.fj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fz, ptr noundef nonnull align 8 dereferenceable(24) %i.ga, i64 24, i1 false)
  %i.gb = load ptr, ptr %i.ac, align 8, !tbaa !27 ; 2 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.at
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.fj
  %i.ge = load i64, ptr %i.gd, align 8
  store i64 %i.ge, ptr %i.gc, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.gf = load i32, ptr %i.a, align 4, !tbaa !10  ; 15 uses
  %i.gg = icmp sgt i32 %.0.i21, %i.gf
  br i1 %i.gg, label %bb.u, label %moveAtom.exit

bb.u:                                             ; preds = %bb.t
  %i.gh = load i32, ptr %1, align 8, !tbaa !19
  %i.gi = add nsw i32 %i.gh, -1
  store i32 %i.gi, ptr %1, align 8, !tbaa !19
  br label %moveAtom.exit

bb.v:                                             ; preds = %getBoxFromTuple.exit
  %i.gj = add nsw i32 %.01922, 1
  br label %moveAtom.exit

moveAtom.exit:                                    ; preds = %bb.u, %bb.t, %bb.v
  %i.gk = phi i32 [ %i.aj, %bb.v ], [ %i.gf, %bb.t ], [ %i.gf, %bb.u ] ; 2 uses
  %i.gl = phi i32 [ %i.ak, %bb.v ], [ %i.gf, %bb.t ], [ %i.gf, %bb.u ]
  %i.gm = phi i32 [ %i.dw, %bb.v ], [ %i.gf, %bb.t ], [ %i.gf, %bb.u ]
  %i.gn = phi i32 [ %i.dx, %bb.v ], [ %i.gf, %bb.t ], [ %i.gf, %bb.u ]
  %i.go = phi i32 [ %i.dy, %bb.v ], [ %i.gf, %bb.t ], [ %i.gf, %bb.u ]
  %i.gp = phi i32 [ %i.dz, %bb.v ], [ %i.gf, %bb.t ], [ %i.gf, %bb.u ]
  %i.gq = phi i32 [ %i.ea, %bb.v ], [ %i.gf, %bb.t ], [ %i.gf, %bb.u ]
  %.1 = phi i32 [ %i.gj, %bb.v ], [ %.01922, %bb.t ], [ %.01922, %bb.u ] ; 2 uses
  %i.gr = load ptr, ptr %i.o, align 8, !tbaa !16  ; 3 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !4
  %i.gu = icmp slt i32 %.1, %i.gt
  br i1 %i.gu, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %moveAtom.exit, %bb.c
  %i.gv = phi i32 [ %i.ad, %bb.c ], [ %i.gk, %moveAtom.exit ] ; 2 uses
  %i.gw = phi ptr [ %i.ae, %bb.c ], [ %i.gr, %moveAtom.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gx = sext i32 %i.gv to i64
  %i.gy = icmp slt i64 %indvars.iv.next, %i.gx
  br i1 %i.gy, label %bb.c, label %._crit_edge25
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
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #11

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
end_hunk_1
