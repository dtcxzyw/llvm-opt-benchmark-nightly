Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-zbee-security?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@zbee_security_parse_key:bb.a
  %i.ay = getelementptr i8, ptr %0, i64 8
  %i.az = getelementptr i8, ptr %1, i64 %indvars.iv.next54.5
  store i8 %.3.us.5, ptr %i.az, align 1
  %.3.us.6 = load i8, ptr %i.ay, align 1          ; 2 uses
  %i.ba = zext i8 %.3.us.6 to i64
  %i.bb = getelementptr [2 x i8], ptr %i.i, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = and i16 %i.bc, 64
  %.not46.us.7 = icmp eq i16 %i.bd, 0
  br i1 %.not46.us.7, label %.loopexit, label %.split.us.8

.split.us.8:                                      ; preds = %.split.us.7
  %indvars.iv.next54.6 = select i1 %2, i64 8, i64 7
  %i.be = getelementptr i8, ptr %0, i64 9
  %i.bf = getelementptr i8, ptr %1, i64 %indvars.iv.next54.6
  store i8 %.3.us.6, ptr %i.bf, align 1
  %.3.us.7 = load i8, ptr %i.be, align 1          ; 2 uses
  %i.bg = zext i8 %.3.us.7 to i64
  %i.bh = getelementptr [2 x i8], ptr %i.i, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = and i16 %i.bi, 64
  %.not46.us.8 = icmp eq i16 %i.bj, 0
  br i1 %.not46.us.8, label %.loopexit, label %.split.us.9

.split.us.9:                                      ; preds = %.split.us.8
  %indvars.iv.next54.7 = select i1 %2, i64 7, i64 8
  %i.bk = getelementptr i8, ptr %0, i64 10
  %i.bl = getelementptr i8, ptr %1, i64 %indvars.iv.next54.7
  store i8 %.3.us.7, ptr %i.bl, align 1
  %.3.us.8 = load i8, ptr %i.bk, align 1          ; 2 uses
  %i.bm = zext i8 %.3.us.8 to i64
  %i.bn = getelementptr [2 x i8], ptr %i.i, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = and i16 %i.bo, 64
  %.not46.us.9 = icmp eq i16 %i.bp, 0
  br i1 %.not46.us.9, label %.loopexit, label %.split.us.10

.split.us.10:                                     ; preds = %.split.us.9
  %indvars.iv.next54.8 = select i1 %2, i64 6, i64 9
  %i.bq = getelementptr i8, ptr %0, i64 11
  %i.br = getelementptr i8, ptr %1, i64 %indvars.iv.next54.8
  store i8 %.3.us.8, ptr %i.br, align 1
  %.3.us.9 = load i8, ptr %i.bq, align 1          ; 2 uses
  %i.bs = zext i8 %.3.us.9 to i64
  %i.bt = getelementptr [2 x i8], ptr %i.i, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2
  %i.bv = and i16 %i.bu, 64
  %.not46.us.10 = icmp eq i16 %i.bv, 0
  br i1 %.not46.us.10, label %.loopexit, label %.split.us.11

.split.us.11:                                     ; preds = %.split.us.10
  %indvars.iv.next54.9 = select i1 %2, i64 5, i64 10
  %i.bw = getelementptr i8, ptr %0, i64 12
  %i.bx = getelementptr i8, ptr %1, i64 %indvars.iv.next54.9
  store i8 %.3.us.9, ptr %i.bx, align 1
  %.3.us.10 = load i8, ptr %i.bw, align 1         ; 2 uses
  %i.by = zext i8 %.3.us.10 to i64
  %i.bz = getelementptr [2 x i8], ptr %i.i, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = and i16 %i.ca, 64
  %.not46.us.11 = icmp eq i16 %i.cb, 0
  br i1 %.not46.us.11, label %.loopexit, label %.split.us.12

.split.us.12:                                     ; preds = %.split.us.11
  %indvars.iv.next54.10 = select i1 %2, i64 4, i64 11
  %i.cc = getelementptr i8, ptr %0, i64 13
  %i.cd = getelementptr i8, ptr %1, i64 %indvars.iv.next54.10
  store i8 %.3.us.10, ptr %i.cd, align 1
  %.3.us.11 = load i8, ptr %i.cc, align 1         ; 2 uses
  %i.ce = zext i8 %.3.us.11 to i64
  %i.cf = getelementptr [2 x i8], ptr %i.i, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = and i16 %i.cg, 64
  %.not46.us.12 = icmp eq i16 %i.ch, 0
  br i1 %.not46.us.12, label %.loopexit, label %.split.us.13

.split.us.13:                                     ; preds = %.split.us.12
  %indvars.iv.next54.11 = select i1 %2, i64 3, i64 12
  %i.ci = getelementptr i8, ptr %0, i64 14
  %i.cj = getelementptr i8, ptr %1, i64 %indvars.iv.next54.11
  store i8 %.3.us.11, ptr %i.cj, align 1
  %.3.us.12 = load i8, ptr %i.ci, align 1         ; 2 uses
  %i.ck = zext i8 %.3.us.12 to i64
  %i.cl = getelementptr [2 x i8], ptr %i.i, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = and i16 %i.cm, 64
  %.not46.us.13 = icmp eq i16 %i.cn, 0
  br i1 %.not46.us.13, label %.loopexit, label %.split.us.14

.split.us.14:                                     ; preds = %.split.us.13
  %indvars.iv.next54.12 = select i1 %2, i64 2, i64 13
  %i.co = getelementptr i8, ptr %0, i64 15
  %i.cp = getelementptr i8, ptr %1, i64 %indvars.iv.next54.12
  store i8 %.3.us.12, ptr %i.cp, align 1
  %.3.us.13 = load i8, ptr %i.co, align 1         ; 2 uses
  %i.cq = zext i8 %.3.us.13 to i64
  %i.cr = getelementptr [2 x i8], ptr %i.i, i64 %i.cq
  %i.cs = load i16, ptr %i.cr, align 2
  %i.ct = and i16 %i.cs, 64
  %.not46.us.14 = icmp eq i16 %i.ct, 0
  br i1 %.not46.us.14, label %.loopexit, label %.split.us.15

.split.us.15:                                     ; preds = %.split.us.14
  %indvars.iv.next54.13 = select i1 %2, i64 1, i64 14 ; 2 uses
  %i.cu = getelementptr i8, ptr %0, i64 16
  %i.cv = getelementptr i8, ptr %1, i64 %indvars.iv.next54.13
  store i8 %.3.us.13, ptr %i.cv, align 1
  %.3.us.14 = load i8, ptr %i.cu, align 1         ; 2 uses
  %i.cw = zext i8 %.3.us.14 to i64
  %i.cx = getelementptr [2 x i8], ptr %i.i, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2
  %i.cz = and i16 %i.cy, 64
  %.not46.us.15 = icmp eq i16 %i.cz, 0
  br i1 %.not46.us.15, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.split.us.15
  %i.da = getelementptr i8, ptr %1, i64 %indvars.iv.next54.13
  %i.db = getelementptr i8, ptr %i.da, i64 %i.e
  store i8 %.3.us.14, ptr %i.db, align 1
  br label %.loopexit

.split:                                           ; preds = %.split.preheader, %bb.g
  %indvars.iv = phi i64 [ %i.g, %.split.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.150 = phi i8 [ %i.c, %.split.preheader ], [ %.3, %bb.g ] ; 2 uses
  %.03848 = phi i32 [ 15, %.split.preheader ], [ %i.dv, %bb.g ] ; 2 uses
  %.14147 = phi ptr [ %i.b, %.split.preheader ], [ %i.du, %bb.g ] ; 3 uses
  switch i8 %.150, label %bb.e [
    i8 58, label %bb.d
    i8 45, label %bb.d
    i8 32, label %bb.d
  ]

bb.d:                                             ; preds = %.split, %.split, %.split
  %i.dc = getelementptr i8, ptr %.14147, i64 1
  %i.dd = load i8, ptr %.14147, align 1
  br label %bb.e

bb.e:                                             ; preds = %.split, %bb.d
  %.242 = phi ptr [ %i.dc, %bb.d ], [ %.14147, %.split ] ; 3 uses
  %.2 = phi i8 [ %i.dd, %bb.d ], [ %.150, %.split ] ; 2 uses
  %i.de = zext i8 %.2 to i64
  %i.df = getelementptr [2 x i8], ptr %i.f, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 2
  %i.dh = and i16 %i.dg, 1024
  %.not = icmp eq i16 %i.dh, 0
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.di = tail call i32 @g_ascii_xdigit_value(i8 noundef signext %.2) #16
  %.tr = trunc i32 %i.di to i8
  %i.dj = shl i8 %.tr, 4                          ; 2 uses
  %i.dk = getelementptr i8, ptr %1, i64 %indvars.iv ; 2 uses
  store i8 %i.dj, ptr %i.dk, align 1
  %i.dl = load i8, ptr %.242, align 1             ; 2 uses
  %i.dm = zext i8 %i.dl to i64
  %i.dn = getelementptr [2 x i8], ptr %i.f, i64 %i.dm
  %i.do = load i16, ptr %i.dn, align 2
  %i.dp = and i16 %i.do, 1024
  %.not45 = icmp eq i16 %i.dp, 0
  br i1 %.not45, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dq = getelementptr i8, ptr %.242, i64 1
  %i.dr = tail call i32 @g_ascii_xdigit_value(i8 noundef signext %i.dl) #16
  %i.ds = trunc i32 %i.dr to i8
  %i.dt = or i8 %i.dj, %i.ds
  store i8 %i.dt, ptr %i.dk, align 1
  %i.du = getelementptr i8, ptr %.242, i64 2
  %.3 = load i8, ptr %i.dq, align 1
  %i.dv = add nsw i32 %.03848, -1
  %.not56 = icmp eq i32 %.03848, 0
  %indvars.iv.next = add i64 %indvars.iv, %i.e
  br i1 %.not56, label %.loopexit, label %.split, !llvm.loop !19

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.g, %.split.us.preheader, %.split.us.1, %.split.us.2, %.split.us.3, %.split.us.4, %.split.us.5, %.split.us.6, %.split.us.7, %.split.us.8, %.split.us.9, %.split.us.10, %.split.us.11, %.split.us.12, %.split.us.13, %.split.us.14, %.split.us.15, %bb.c, %bb.a
  %.039 = phi i1 [ false, %bb.a ], [ false, %.split.us.8 ], [ true, %bb.c ], [ false, %.split.us.preheader ], [ false, %.split.us.1 ], [ false, %.split.us.15 ], [ false, %.split.us.2 ], [ false, %.split.us.10 ], [ false, %.split.us.3 ], [ false, %.split.us.14 ], [ false, %.split.us.4 ], [ false, %.split.us.9 ], [ false, %.split.us.5 ], [ false, %.split.us.13 ], [ false, %.split.us.6 ], [ false, %.split.us.11 ], [ false, %.split.us.7 ], [ false, %.split.us.12 ], [ false, %bb.f ], [ false, %bb.e ], [ true, %bb.g ]
  ret i1 %.039
}

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_ascii_xdigit_value(i8 noundef signext) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare void @g_slist_free_full(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @zbee_free_key_record(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @g_free(ptr noundef %i.b)
  tail call void @g_free(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @zbee_sec_key_hash(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext range(i8 0, 3) %1, ptr noundef initializes((0, 17)) %2) unnamed_addr #0 {
.preheader.preheader:
  %3 = ptrtoaddr ptr %2 to i64                    ; 2 uses
  %4 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  %5 = add i64 %4, 16
  %6 = add i64 %3, 17
  %rt.bound0 = icmp ugt i64 %5, %3
  %rt.bound1 = icmp ugt i64 %6, %4
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %7 = alloca [32 x i8], align 16                 ; 25 uses
  br i1 %rt.conflict, label %.preheader.preheader.a, label %.preheader.preheader.rtvec, !prof !20

.preheader.preheader.rtvec:                       ; preds = %.preheader.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %8 = load <16 x i8>, ptr %0, align 1            ; 2 uses
  %9 = xor <16 x i8> %8, splat (i8 92)
  store <16 x i8> %9, ptr %7, align 16
  %10 = xor <16 x i8> %8, splat (i8 54)
  store <16 x i8> %10, ptr %2, align 1
  %11 = getelementptr i8, ptr %2, i64 16
  store i8 %1, ptr %11, align 1
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 16
  call fastcc void @zbee_sec_hash(ptr noundef %2, i32 noundef 17, ptr noundef nonnull %12)
  call fastcc void @zbee_sec_hash(ptr noundef nonnull %7, i32 noundef 32, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %.preheader.preheader.rtcont

.preheader.preheader.a:                           ; preds = %.preheader.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %13 = load i8, ptr %0, align 1                  ; 2 uses
  %14 = xor i8 %13, 92
  store i8 %14, ptr %7, align 16
  %i.a = getelementptr i8, ptr %0, i64 1          ; 2 uses
  %15 = load i8, ptr %i.a, align 1
  %16 = xor i8 %15, 92
  %17 = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %16, ptr %17, align 1
  %i.b = getelementptr i8, ptr %0, i64 2          ; 2 uses
  %18 = load i8, ptr %i.b, align 1
  %19 = xor i8 %18, 92
  %20 = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 %19, ptr %20, align 2
  %i.c = getelementptr i8, ptr %0, i64 3          ; 2 uses
  %21 = load i8, ptr %i.c, align 1
  %22 = xor i8 %21, 92
  %23 = getelementptr inbounds nuw i8, ptr %7, i64 3
  store i8 %22, ptr %23, align 1
  %i.d = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %24 = load i8, ptr %i.d, align 1
  %25 = xor i8 %24, 92
  %26 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i8 %25, ptr %26, align 4
  %i.e = getelementptr i8, ptr %0, i64 5          ; 2 uses
  %27 = load i8, ptr %i.e, align 1
  %28 = xor i8 %27, 92
  %29 = getelementptr inbounds nuw i8, ptr %7, i64 5
  store i8 %28, ptr %29, align 1
  %i.f = getelementptr i8, ptr %0, i64 6          ; 2 uses
  %30 = load i8, ptr %i.f, align 1
  %31 = xor i8 %30, 92
  %32 = getelementptr inbounds nuw i8, ptr %7, i64 6
  store i8 %31, ptr %32, align 2
  %i.g = getelementptr i8, ptr %0, i64 7          ; 2 uses
  %33 = load i8, ptr %i.g, align 1
  %34 = xor i8 %33, 92
  %35 = getelementptr inbounds nuw i8, ptr %7, i64 7
  store i8 %34, ptr %35, align 1
  %i.h = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %36 = load i8, ptr %i.h, align 1
  %37 = xor i8 %36, 92
  %38 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 %37, ptr %38, align 8
  %i.i = getelementptr i8, ptr %0, i64 9          ; 2 uses
  %39 = load i8, ptr %i.i, align 1
  %40 = xor i8 %39, 92
  %41 = getelementptr inbounds nuw i8, ptr %7, i64 9
  store i8 %40, ptr %41, align 1
  %i.j = getelementptr i8, ptr %0, i64 10         ; 2 uses
  %42 = load i8, ptr %i.j, align 1
  %43 = xor i8 %42, 92
  %44 = getelementptr inbounds nuw i8, ptr %7, i64 10
  store i8 %43, ptr %44, align 2
  %i.k = getelementptr i8, ptr %0, i64 11         ; 2 uses
  %45 = load i8, ptr %i.k, align 1
  %46 = xor i8 %45, 92
  %47 = getelementptr inbounds nuw i8, ptr %7, i64 11
  store i8 %46, ptr %47, align 1
  %i.l = getelementptr i8, ptr %0, i64 12         ; 2 uses
  %48 = load i8, ptr %i.l, align 1
  %49 = xor i8 %48, 92
  %50 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 %49, ptr %50, align 4
  %i.m = getelementptr i8, ptr %0, i64 13         ; 2 uses
  %51 = load i8, ptr %i.m, align 1
  %52 = xor i8 %51, 92
  %53 = getelementptr inbounds nuw i8, ptr %7, i64 13
  store i8 %52, ptr %53, align 1
  %i.n = getelementptr i8, ptr %0, i64 14         ; 2 uses
  %54 = load i8, ptr %i.n, align 1
  %55 = xor i8 %54, 92
  %56 = getelementptr inbounds nuw i8, ptr %7, i64 14
  store i8 %55, ptr %56, align 2
  %i.o = getelementptr i8, ptr %0, i64 15         ; 2 uses
  %57 = load i8, ptr %i.o, align 1
  %58 = xor i8 %57, 92
  %59 = getelementptr inbounds nuw i8, ptr %7, i64 15
  store i8 %58, ptr %59, align 1
  %i.p = xor i8 %13, 54
  store i8 %i.p, ptr %2, align 1
  %i.q = load i8, ptr %i.a, align 1
  %i.r = xor i8 %i.q, 54
  %i.s = getelementptr i8, ptr %2, i64 1
  store i8 %i.r, ptr %i.s, align 1
  %i.t = load i8, ptr %i.b, align 1
  %i.u = xor i8 %i.t, 54
  %i.v = getelementptr i8, ptr %2, i64 2
  store i8 %i.u, ptr %i.v, align 1
  %i.w = load i8, ptr %i.c, align 1
  %i.x = xor i8 %i.w, 54
  %i.y = getelementptr i8, ptr %2, i64 3
  store i8 %i.x, ptr %i.y, align 1
  %i.z = load i8, ptr %i.d, align 1
  %i.aa = xor i8 %i.z, 54
  %i.ab = getelementptr i8, ptr %2, i64 4
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = load i8, ptr %i.e, align 1
  %i.ad = xor i8 %i.ac, 54
  %i.ae = getelementptr i8, ptr %2, i64 5
  store i8 %i.ad, ptr %i.ae, align 1
  %i.af = load i8, ptr %i.f, align 1
  %i.ag = xor i8 %i.af, 54
  %i.ah = getelementptr i8, ptr %2, i64 6
  store i8 %i.ag, ptr %i.ah, align 1
  %i.ai = load i8, ptr %i.g, align 1
  %i.aj = xor i8 %i.ai, 54
  %i.ak = getelementptr i8, ptr %2, i64 7
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = load i8, ptr %i.h, align 1
  %i.am = xor i8 %i.al, 54
  %i.an = getelementptr i8, ptr %2, i64 8
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = load i8, ptr %i.i, align 1
  %i.ap = xor i8 %i.ao, 54
  %i.aq = getelementptr i8, ptr %2, i64 9
  store i8 %i.ap, ptr %i.aq, align 1
  %i.ar = load i8, ptr %i.j, align 1
  %i.as = xor i8 %i.ar, 54
  %i.at = getelementptr i8, ptr %2, i64 10
  store i8 %i.as, ptr %i.at, align 1
  %i.au = load i8, ptr %i.k, align 1
  %i.av = xor i8 %i.au, 54
  %i.aw = getelementptr i8, ptr %2, i64 11
  store i8 %i.av, ptr %i.aw, align 1
  %i.ax = load i8, ptr %i.l, align 1
  %i.ay = xor i8 %i.ax, 54
  %i.az = getelementptr i8, ptr %2, i64 12
  store i8 %i.ay, ptr %i.az, align 1
  %i.ba = load i8, ptr %i.m, align 1
  %i.bb = xor i8 %i.ba, 54
  %i.bc = getelementptr i8, ptr %2, i64 13
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = load i8, ptr %i.n, align 1
  %i.be = xor i8 %i.bd, 54
  %i.bf = getelementptr i8, ptr %2, i64 14
  store i8 %i.be, ptr %i.bf, align 1
  %i.bg = load i8, ptr %i.o, align 1
  %i.bh = xor i8 %i.bg, 54
  %i.bi = getelementptr i8, ptr %2, i64 15
  store i8 %i.bh, ptr %i.bi, align 1
  %i.bj = getelementptr i8, ptr %2, i64 16
  store i8 %1, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16
  call fastcc void @zbee_sec_hash(ptr noundef %2, i32 noundef 17, ptr noundef nonnull %i.bk)
  call fastcc void @zbee_sec_hash(ptr noundef nonnull %7, i32 noundef 32, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %.preheader.preheader.rtcont

.preheader.preheader.rtcont:                      ; preds = %.preheader.preheader.a, %.preheader.preheader.rtvec
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @zbee_sec_hash(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 17, 33) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 13 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(16) %2, i8 noundef 0, i64 noundef 16, i1 noundef false) #14
  %i.c = call i32 @gcry_cipher_open(ptr noundef nonnull %i.b, i32 noundef 7, i32 noundef 1, i32 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.preheader.preheader, label %bb.c

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit39
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %.loopexit39 ] ; 2 uses
  %.042 = phi i32 [ 0, %.preheader.preheader ], [ %.2, %.loopexit39 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1
  %i.f = add i32 %.042, 1                         ; 2 uses
  %i.g = zext i32 %.042 to i64
  %i.h = getelementptr i8, ptr %i.a, i64 %i.g
  store i8 %i.e, ptr %i.h, align 1
  %i.i = icmp ugt i32 %i.f, 15
  br i1 %i.i, label %.loopexit39.loopexit, label %.loopexit39

.loopexit39.loopexit:                             ; preds = %.preheader
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = call i32 @gcry_cipher_setkey(ptr noundef %i.j, ptr noundef %2, i64 noundef 16) ; 0 uses
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = call i32 @gcry_cipher_encrypt(ptr noundef %i.l, ptr noundef %2, i64 noundef 16, ptr noundef nonnull %i.a, i64 noundef 16) ; 0 uses
  %i.n = load <16 x i8>, ptr %i.a, align 16
  %i.o = load <16 x i8>, ptr %2, align 1
  %i.p = xor <16 x i8> %i.o, %i.n
  store <16 x i8> %i.p, ptr %2, align 1
  br label %.loopexit39

.loopexit39:                                      ; preds = %.loopexit39.loopexit, %.preheader
  %.2 = phi i32 [ %i.f, %.preheader ], [ 0, %.loopexit39.loopexit ] ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !21

bb.b:                                             ; preds = %.loopexit39
  %i.q = zext nneg i32 %.2 to i64
  %i.r = getelementptr i8, ptr %i.a, i64 %i.q
  store i8 -128, ptr %i.r, align 1
  %.344 = add nuw nsw i32 %.2, 1                  ; 2 uses
  %.not3845 = icmp eq i32 %.344, 14
  br i1 %.not3845, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.loopexit
  %.347 = phi i32 [ %.3, %.loopexit ], [ %.344, %bb.b ]
  %.3.in46 = phi i32 [ %.5, %.loopexit ], [ %.2, %bb.b ]
  %i.s = icmp ugt i32 %.3.in46, 14
  br i1 %i.s, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.t = load ptr, ptr %i.b, align 8
  %i.u = call i32 @gcry_cipher_setkey(ptr noundef %i.t, ptr noundef %2, i64 noundef 16) ; 0 uses
  %i.v = load ptr, ptr %i.b, align 8
  %i.w = call i32 @gcry_cipher_encrypt(ptr noundef %i.v, ptr noundef %2, i64 noundef 16, ptr noundef nonnull %i.a, i64 noundef 16) ; 0 uses
  %i.x = load <16 x i8>, ptr %i.a, align 16
  %i.y = load <16 x i8>, ptr %2, align 1
  %i.z = xor <16 x i8> %i.y, %i.x
  store <16 x i8> %i.z, ptr %2, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph
  %.5 = phi i32 [ %.347, %.lr.ph ], [ 0, %.loopexit.loopexit ] ; 3 uses
  %i.aa = zext nneg i32 %.5 to i64
  %i.ab = getelementptr i8, ptr %i.a, i64 %i.aa
  store i8 0, ptr %i.ab, align 1
  %.3 = add nuw nsw i32 %.5, 1                    ; 2 uses
  %.not38 = icmp eq i32 %.3, 14
  br i1 %.not38, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  %i.ac = lshr i32 %1, 5
  %i.ad = trunc nuw nsw i32 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 %i.ad, ptr %i.ae, align 2
  %.tr = trunc nuw nsw i32 %1 to i8
  %i.af = shl i8 %.tr, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = load ptr, ptr %i.b, align 8
  %i.ai = call i32 @gcry_cipher_setkey(ptr noundef %i.ah, ptr noundef %2, i64 noundef 16) ; 0 uses
  %i.aj = load ptr, ptr %i.b, align 8
  %i.ak = call i32 @gcry_cipher_encrypt(ptr noundef %i.aj, ptr noundef %2, i64 noundef 16, ptr noundef nonnull %i.a, i64 noundef 16) ; 0 uses
  %i.al = load <16 x i8>, ptr %i.a, align 16
  %i.am = load <16 x i8>, ptr %2, align 1
  %i.an = xor <16 x i8> %i.am, %i.al
  store <16 x i8> %i.an, ptr %2, align 1
  %i.ao = load ptr, ptr %i.b, align 8
  call void @gcry_cipher_close(ptr noundef %i.ao)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { allocsize(0) }
attributes #14 = { nounwind }
attributes #15 = { allocsize(1) }
attributes #16 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !"memcpy.inline"}
!13 = distinct !{!13, !12, !"memcpy.inline: argument 1"}
!14 = distinct !{!14, !12, !"memcpy.inline: argument 0"}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = !{!14, !13}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = !{!"branch_weights", i32 1, i32 1048575}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
end_hunk_0
