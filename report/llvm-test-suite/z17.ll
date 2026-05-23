begin_hunk_0_@GetGap:bb.a

.thread-pre-split_crit_edge:                      ; preds = %.lr.ph
  store float %i.bk, ptr %i.a, align 4, !tbaa !14
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %.thread-pre-split_crit_edge, %bb.u
  %.pr90 = phi float [ %i.bk, %.thread-pre-split_crit_edge ], [ %.pr, %bb.u ] ; 3 uses
  %i.bm = fcmp olt float %.pr90, -1.800000e+02
  br i1 %i.bm, label %.lr.ph95, label %bb.v

.lr.ph95:                                         ; preds = %thread-pre-split, %.lr.ph95
  %i.bn = phi float [ %i.bo, %.lr.ph95 ], [ %.pr90, %thread-pre-split ]
  %i.bo = fadd float %i.bn, 3.600000e+02          ; 4 uses
  %i.bp = fcmp olt float %i.bo, -1.800000e+02
  br i1 %i.bp, label %.lr.ph95, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph95
  store float %i.bo, ptr %i.a, align 4, !tbaa !14
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %thread-pre-split
  %.lcssa = phi float [ %i.bo, %._crit_edge ], [ %.pr90, %thread-pre-split ] ; 2 uses
  %i.bq = call float @llvm.fabs.f32(float %.lcssa)
  %or.cond89 = fcmp ugt float %i.bq, 1.800000e+02
  br i1 %or.cond89, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.br = load ptr, ptr @no_fpos, align 8, !tbaa !21
  %i.bs = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef %i.br, ptr noundef nonnull @.str.8) #5 ; 0 uses
  %.pre = load float, ptr %i.a, align 4, !tbaa !14
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.bt = phi float [ %.lcssa, %bb.v ], [ %.pre, %bb.w ]
  %i.bu = fmul float %i.bt, 1.280000e+02
  br label %.thread

bb.y:                                             ; preds = %bb.g
  %i.bv = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 17, i32 noundef 4, ptr noundef nonnull @.str.9, i32 noundef 2, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i) #5 ; 0 uses
  br label %bb.ar

.thread:                                          ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.x
  %.sink115 = phi i16 [ 1024, %bb.h ], [ 1024, %bb.i ], [ 1024, %bb.j ], [ 1024, %bb.k ], [ 1024, %bb.l ], [ 1024, %bb.m ], [ 1024, %bb.n ], [ 1024, %bb.o ], [ 1024, %bb.p ], [ 5120, %bb.q ], [ 2048, %bb.r ], [ 4096, %bb.x ]
  %.078.in.ph = phi float [ %i.t, %bb.h ], [ %i.v, %bb.i ], [ %i.x, %bb.j ], [ %i.z, %bb.k ], [ %i.ag, %bb.l ], [ %i.al, %bb.m ], [ %i.aq, %bb.n ], [ %i.av, %bb.o ], [ %i.ba, %bb.p ], [ %i.bc, %bb.q ], [ %i.be, %bb.r ], [ %i.bu, %bb.x ]
  %i.bw = load i16, ptr %2, align 4
  %i.bx = and i16 %i.bw, -7169
  %i.by = or disjoint i16 %i.bx, %.sink115
  store i16 %i.by, ptr %2, align 4
  %.078107 = fptosi float %.078.in.ph to i32
  br label %bb.ab

bb.z:                                             ; preds = %bb.g
  %i.bz = load float, ptr %i.a, align 4, !tbaa !14
  %i.ca = fmul float %i.bz, 4.096000e+03
  %i.cb = load i16, ptr %2, align 4
  %i.cc = and i16 %i.cb, -7169
  %i.cd = or disjoint i16 %i.cc, 3072
  store i16 %i.cd, ptr %2, align 4
  %.078 = fptosi float %i.ca to i32               ; 2 uses
  %i.ce = icmp sgt i32 %.078, 4096
  br i1 %i.ce, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cf = load float, ptr %i.a, align 4, !tbaa !14
  %i.cg = fpext float %i.cf to double
  %i.ch = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 17, i32 noundef 5, ptr noundef nonnull @.str.10, i32 noundef 2, ptr noundef nonnull %i.f, double noundef %i.cg) #5 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.thread, %bb.aa, %bb.z
  %.179 = phi i32 [ 4096, %bb.aa ], [ %.078, %bb.z ], [ %.078107, %.thread ]
  %i.ci = trunc i32 %.179 to i16
  store i16 %i.ci, ptr %i.c, align 2, !tbaa !8
  %i.cj = load i8, ptr %i.r, align 1, !tbaa !11
  switch i8 %i.cj, label %bb.aj [
    i8 117, label %bb.ac
    i8 0, label %bb.ac
    i8 101, label %bb.ad
    i8 104, label %bb.ae
    i8 120, label %bb.af
    i8 111, label %bb.ag
    i8 107, label %bb.ah
    i8 116, label %bb.ai
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  %i.ck = load i16, ptr %2, align 4
  %i.cl = and i16 %i.ck, 8191
  %i.cm = or disjoint i16 %i.cl, 8192             ; 2 uses
  store i16 %i.cm, ptr %2, align 4
  br label %bb.ak

bb.ad:                                            ; preds = %bb.ab
  %i.cn = load i16, ptr %2, align 4
  %i.co = and i16 %i.cn, 8191
  %i.cp = or disjoint i16 %i.co, 8192             ; 2 uses
  store i16 %i.cp, ptr %2, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.1, i64 2
  br label %bb.ak

bb.ae:                                            ; preds = %bb.ab
  %i.cr = load i16, ptr %2, align 4
  %i.cs = and i16 %i.cr, 8191
  %i.ct = or disjoint i16 %i.cs, 16384            ; 2 uses
  store i16 %i.ct, ptr %2, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %.1, i64 2
  br label %bb.ak

bb.af:                                            ; preds = %bb.ab
  %i.cv = load i16, ptr %2, align 4
  %i.cw = and i16 %i.cv, 8191
  %i.cx = or disjoint i16 %i.cw, 24576            ; 2 uses
  store i16 %i.cx, ptr %2, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %.1, i64 2
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ab
  %i.cz = load i16, ptr %2, align 4
  %i.da = and i16 %i.cz, 8191
  %i.db = or disjoint i16 %i.da, -32768           ; 2 uses
  store i16 %i.db, ptr %2, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %.1, i64 2
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ab
  %i.dd = load i16, ptr %2, align 4
  %i.de = and i16 %i.dd, 8191
  %i.df = or disjoint i16 %i.de, -24576           ; 2 uses
  store i16 %i.df, ptr %2, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %.1, i64 2
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ab
  %i.dh = load i16, ptr %2, align 4
  %i.di = and i16 %i.dh, 8191
  %i.dj = or disjoint i16 %i.di, -16384           ; 2 uses
  store i16 %i.dj, ptr %2, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.1, i64 2
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ab
  %i.dl = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 17, i32 noundef 7, ptr noundef nonnull @.str.11, i32 noundef 2, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i) #5 ; 0 uses
  br label %bb.ar

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %i.dm = phi i16 [ %i.cm, %bb.ac ], [ %i.cp, %bb.ad ], [ %i.ct, %bb.ae ], [ %i.cx, %bb.af ], [ %i.db, %bb.ag ], [ %i.df, %bb.ah ], [ %i.dj, %bb.ai ] ; 2 uses
  %.2 = phi ptr [ %i.r, %bb.ac ], [ %i.cq, %bb.ad ], [ %i.cu, %bb.ae ], [ %i.cy, %bb.af ], [ %i.dc, %bb.ag ], [ %i.dg, %bb.ah ], [ %i.dk, %bb.ai ] ; 2 uses
  %i.dn = load i8, ptr %.2, align 1, !tbaa !11    ; 2 uses
  %i.do = icmp eq i8 %i.dn, 117
  br i1 %i.do, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %.mask = and i16 %i.dm, -8192
  %i.dp = icmp eq i16 %.mask, 16384
  br i1 %i.dp, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dq = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 17, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef 2, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i) #5 ; 0 uses
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.dr = or i16 %i.dm, 128
  store i16 %i.dr, ptr %2, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ds = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %.pr91 = load i8, ptr %i.ds, align 1, !tbaa !11
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ak
  %i.dt = phi i8 [ %.pr91, %bb.ao ], [ %i.dn, %bb.ak ]
  %.not87 = icmp eq i8 %i.dt, 0
  br i1 %.not87, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.du = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 17, i32 noundef 8, ptr noundef nonnull @.str.13, i32 noundef 2, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i) #5 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.c, %bb.aj, %bb.y, %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare i32 @FontSize(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @MinGap(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %3, align 4                ; 5 uses
  %4 = lshr i16 %i.a, 10
  %5 = and i16 %4, 7
  switch i16 %5, label %bb.d [
    i16 1, label %bb.b
    i16 2, label %bb.e
    i16 3, label %bb.e
    i16 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !8
  %i.d = sext i16 %i.c to i32
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !8
  %i.g = sext i16 %i.f to i32
  %i.h = add nsw i32 %2, %1
  %i.i = mul nsw i32 %i.h, %i.g
  %i.j = sdiv i32 %i.i, 4096
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @no_fpos, align 8, !tbaa !21
  %i.l = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef %i.k, ptr noundef nonnull @.str.14) #5 ; 0 uses
  %.pre = load i16, ptr %3, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.d, %bb.c, %bb.b
  %i.m = phi i16 [ %.pre, %bb.d ], [ %i.a, %bb.b ], [ %i.a, %bb.c ], [ %i.a, %bb.a ], [ %i.a, %bb.a ]
  %.0 = phi i32 [ undef, %bb.d ], [ %i.d, %bb.b ], [ %i.j, %bb.c ], [ 0, %bb.a ], [ 0, %bb.a ] ; 6 uses
  %i.n = lshr i16 %i.m, 13
  switch i16 %i.n, label %default.unreachable43 [
    i16 0, label %bb.f
    i16 7, label %bb.g
    i16 2, label %bb.g
    i16 1, label %bb.g
    i16 3, label %bb.h
    i16 4, label %bb.m
    i16 5, label %bb.k
    i16 6, label %bb.l
  ]

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr @no_fpos, align 8, !tbaa !21
  %i.p = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef %i.o, ptr noundef nonnull @.str.15) #5 ; 0 uses
  br label %bb.m

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.q = add i32 %1, %0
  %i.r = add i32 %i.q, %.0
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.r, i32 8388607)
  br label %bb.m

bb.h:                                             ; preds = %bb.e
  %i.s = load ptr, ptr @BackEnd, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !25
  %.not = icmp eq i32 %i.u, 0
  %i.v = add nsw i32 %1, %0                       ; 2 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = sitofp i32 %.0 to double
  %i.x = fmul nnan double %i.w, 1.000000e-01
  %i.y = fptosi double %i.x to i32
  %i.z = add nsw i32 %i.v, %i.y
  %..0 = tail call i32 @llvm.smax.i32(i32 %.0, i32 %i.z)
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.aa = tail call i32 @llvm.smax.i32(i32 %.0, i32 %i.v)
  br label %bb.m

bb.k:                                             ; preds = %bb.e
  %i.ab = tail call i32 @llvm.smax.i32(i32 %0, i32 %1)
  %.0. = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 %.0)
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.ac = add nsw i32 %1, %0
  br label %bb.m

default.unreachable43:                            ; preds = %bb.e
  unreachable

bb.m:                                             ; preds = %bb.e, %bb.i, %bb.j, %bb.l, %bb.k, %bb.g, %bb.f
  %.039 = phi i32 [ 0, %bb.f ], [ %spec.select, %bb.g ], [ %..0, %bb.i ], [ %i.aa, %bb.j ], [ %i.ac, %bb.l ], [ %.0., %bb.k ], [ %.0, %bb.e ]
  ret i32 %.039
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ExtraGap(i32 noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %2, align 4                ; 2 uses
  %i.b = and i16 %i.a, 7168
  %i.c = icmp eq i16 %i.b, 1024
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !8
  %i.f = sext i16 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.h = lshr i16 %i.a, 13
  switch i16 %i.h, label %default.unreachable38 [
    i16 0, label %bb.d
    i16 7, label %bb.j
    i16 2, label %bb.j
    i16 1, label %bb.j
    i16 3, label %bb.e
    i16 4, label %bb.h
    i16 5, label %bb.i
    i16 6, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @no_fpos, align 8, !tbaa !21
  %i.j = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef %i.i, ptr noundef nonnull @.str.17) #5 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @BackEnd, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.m = load i32, ptr %i.l, align 4, !tbaa !25
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = sitofp i32 %i.g to double
  %i.o = fmul nnan double %i.n, 9.000000e-01
  %i.p = fptosi double %i.o to i32
  %i.q = add i32 %1, %0
  %i.r = sub i32 %i.p, %i.q
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.r, i32 0)
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.s = add i32 %1, %0
  %i.t = sub i32 %i.g, %i.s
  %spec.select34 = tail call i32 @llvm.smax.i32(i32 %i.t, i32 0)
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.u = tail call i32 @llvm.smax.i32(i32 %1, i32 %i.g)
  %. = tail call i32 @llvm.smax.i32(i32 %0, i32 %i.u)
  %i.v = icmp eq i32 %3, 151
  %.pn = select i1 %i.v, i32 %1, i32 %0
  %i.w = sub nsw i32 %., %.pn
  br label %bb.j

default.unreachable38:                            ; preds = %bb.c
  unreachable

bb.j:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.f, %bb.g, %bb.i, %bb.h, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.c ], [ %spec.select, %bb.f ], [ %spec.select34, %bb.g ], [ 8388607, %bb.h ], [ %i.w, %bb.i ], [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 8388608) i32 @ActualGap(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %3, align 4                ; 6 uses
  %6 = lshr i16 %i.a, 10
  %7 = and i16 %6, 7
  switch i16 %7, label %bb.g [
    i16 1, label %bb.b
    i16 2, label %bb.c
    i16 3, label %bb.e
    i16 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !8
  %i.d = sext i16 %i.c to i32
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !8    ; 2 uses
  %i.g = icmp sgt i16 %i.f, 4096
  br i1 %i.g, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sext i16 %i.f to i32
  %i.i = mul nsw i32 %4, %i.h
  %i.j = sdiv i32 %i.i, 4096
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !8
  %i.m = sext i16 %i.l to i32
  %i.n = add i32 %2, %1
  %i.o = sub i32 %4, %i.n
  %i.p = mul nsw i32 %i.o, %i.m
  %i.q = sdiv i32 %i.p, 4096
  %i.r = tail call i32 @llvm.smax.i32(i32 %i.q, i32 0)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !8
  %i.u = sext i16 %i.t to i32
  %i.v = add nsw i32 %2, %1
  %i.w = mul nsw i32 %i.v, %i.u
  %i.x = sdiv i32 %i.w, 4096
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.y = load ptr, ptr @no_fpos, align 8, !tbaa !21
  %i.z = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef %i.y, ptr noundef nonnull @.str.19) #5 ; 0 uses
  %.pre = load i16, ptr %3, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.g, %bb.f, %bb.e, %bb.b
  %i.aa = phi i16 [ %.pre, %bb.g ], [ %i.a, %bb.b ], [ %i.a, %bb.f ], [ %i.a, %bb.d ], [ %i.a, %bb.e ], [ %i.a, %bb.c ]
  %.054 = phi i32 [ undef, %bb.g ], [ %i.d, %bb.b ], [ %i.x, %bb.f ], [ %i.j, %bb.d ], [ %i.r, %bb.e ], [ 8388607, %bb.c ] ; 7 uses
  %i.ab = lshr i16 %i.aa, 13
  switch i16 %i.ab, label %default.unreachable62 [
    i16 0, label %bb.i
    i16 7, label %bb.j
    i16 2, label %bb.j
    i16 1, label %bb.j
    i16 3, label %bb.k
    i16 4, label %bb.p
    i16 5, label %bb.n
    i16 6, label %bb.o
  ]

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr @no_fpos, align 8, !tbaa !21
  %i.ad = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 17, i32 noundef 10, ptr noundef nonnull @.str.20, i32 noundef 1, ptr noundef %i.ac) #5 ; 0 uses
  %i.ae = load ptr, ptr @no_fpos, align 8, !tbaa !21
  %i.af = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef %i.ae, ptr noundef nonnull @.str.21) #5 ; 0 uses
  br label %bb.p

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.ag = add i32 %1, %0
  %i.ah = add i32 %i.ag, %.054
  br label %bb.p

bb.k:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr @BackEnd, align 8, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 36
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !25
  %.not = icmp eq i32 %i.ak, 0
  %i.al = add nsw i32 %1, %0                      ; 2 uses
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = sitofp i32 %.054 to double
  %i.an = fmul nnan double %i.am, 1.000000e-01
  %i.ao = fptosi double %i.an to i32
  %i.ap = add nsw i32 %i.al, %i.ao
  %..054 = tail call i32 @llvm.smax.i32(i32 %.054, i32 %i.ap)
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.aq = tail call i32 @llvm.smax.i32(i32 %.054, i32 %i.al)
  br label %bb.p

bb.n:                                             ; preds = %bb.h
  %i.ar = tail call i32 @llvm.smax.i32(i32 %0, i32 %1)
  %.054. = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 %.054)
  br label %bb.p

bb.o:                                             ; preds = %bb.h
  %i.as = sub i32 %1, %5
  %i.at = add i32 %i.as, %.054
  %i.au = add nsw i32 %1, %0
  %i.av = tail call i32 @llvm.smax.i32(i32 %i.at, i32 %i.au)
  br label %bb.p

default.unreachable62:                            ; preds = %bb.h
  unreachable

bb.p:                                             ; preds = %bb.h, %bb.l, %bb.m, %bb.o, %bb.n, %bb.j, %bb.i
  %.0 = phi i32 [ 0, %bb.i ], [ %i.ah, %bb.j ], [ %..054, %bb.l ], [ %i.aq, %bb.m ], [ %i.av, %bb.o ], [ %.054., %bb.n ], [ %.054, %bb.h ]
  %i.aw = tail call i32 @llvm.smin.i32(i32 %.0, i32 8388607)
  ret i32 %i.aw
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!8 = !{!9, !10, i64 2}
!9 = !{!"", !5, i64 0, !5, i64 0, !5, i64 1, !5, i64 1, !5, i64 1, !5, i64 1, !10, i64 2}
!10 = !{!"short", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !6, i64 0}
!16 = !{!17, !10, i64 8}
!17 = !{!"", !6, i64 0, !6, i64 4, !10, i64 8, !10, i64 10, !5, i64 12, !5, i64 13, !5, i64 14, !5, i64 15, !5, i64 15, !5, i64 15}
!18 = !{!17, !10, i64 10}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = !{!22, !22, i64 0}
!22 = !{!"any pointer", !6, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTS12back_end_rec", !22, i64 0}
!25 = !{!26, !5, i64 36}
!26 = !{!"back_end_rec", !5, i64 0, !27, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !22, i64 48, !22, i64 56, !22, i64 64, !22, i64 72, !22, i64 80, !22, i64 88, !22, i64 96, !22, i64 104, !22, i64 112, !22, i64 120, !22, i64 128, !22, i64 136, !22, i64 144, !22, i64 152, !22, i64 160, !22, i64 168, !22, i64 176, !22, i64 184, !22, i64 192, !22, i64 200, !22, i64 208, !22, i64 216, !22, i64 224}
!27 = !{!"p1 omnipotent char", !22, i64 0}
end_hunk_0
