Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_area?download=true
inline.NumInlined: 80
inline.NumDeleted: 1
begin_hunk_0_@lv_area_is_point_on:bb.a
  %.not.i75 = icmp samesign ule i32 %i.ah, %i.ae
  br label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.ai = sub nsw i32 %i.d, %spec.select59        ; 3 uses
  %.not.i76 = icmp slt i32 %i.a, %i.ai
  br i1 %.not.i76, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not57.i70, label %bb.j, label %lv_area_is_point_on.exit82

lv_area_is_point_on.exit82:                       ; preds = %bb.i
  %i.aj = sub nsw i32 %i.ai, %spec.select59       ; 2 uses
  %i.ak = sub nsw i32 %i.d, %i.aj
  %i.al = sdiv i32 %i.ak, 2                       ; 4 uses
  %i.am = add i32 %i.aj, %i.al
  %i.an = sub i32 %i.a, %i.am                     ; 2 uses
  %.neg138 = add i32 %spec.select59, %i.f
  %i.ao = add i32 %i.aa, %i.al
  %i.ap = sub i32 %.neg138, %i.ao                 ; 2 uses
  %i.aq = mul nsw i32 %i.al, %i.al
  %i.ar = mul nsw i32 %i.an, %i.an
  %i.as = mul nsw i32 %i.ap, %i.ap
  %i.at = add nuw nsw i32 %i.ar, %i.as
  %.not.i83 = icmp samesign ule i32 %i.at, %i.aq
  br label %.critedge

bb.j:                                             ; preds = %bb.i
  %.not58.i87.not = icmp sgt i32 %i.f, %i.r
  br i1 %.not58.i87.not, label %.critedge, label %lv_area_is_point_on.exit90

lv_area_is_point_on.exit90:                       ; preds = %bb.j
  %i.au = sub nsw i32 %i.ai, %spec.select59       ; 2 uses
  %i.av = sub nsw i32 %i.d, %i.au
  %i.aw = sdiv i32 %i.av, 2                       ; 4 uses
  %i.ax = add i32 %i.au, %i.aw
  %i.ay = sub i32 %i.a, %i.ax                     ; 2 uses
  %i.az = add i32 %i.h, %i.aw
  %i.ba = sub i32 %i.f, %i.az                     ; 2 uses
  %i.bb = mul nsw i32 %i.aw, %i.aw
  %i.bc = mul nsw i32 %i.ay, %i.ay
  %i.bd = mul nsw i32 %i.ba, %i.ba
  %i.be = add nuw nsw i32 %i.bc, %i.bd
  %.not.i91 = icmp samesign ule i32 %i.be, %i.bb
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.j, %lv_area_is_point_on.exit, %lv_area_is_point_on.exit74, %lv_area_is_point_on.exit82, %lv_area_is_point_on.exit90, %bb.a, %bb.c, %bb.b, %bb.e, %bb.d
  %.1 = phi i1 [ false, %bb.d ], [ false, %bb.a ], [ true, %bb.e ], [ false, %bb.b ], [ false, %bb.c ], [ %.not.i67, %lv_area_is_point_on.exit ], [ %.not.i75, %lv_area_is_point_on.exit74 ], [ %.not.i83, %lv_area_is_point_on.exit82 ], [ %.not.i91, %lv_area_is_point_on.exit90 ], [ true, %bb.j ], [ true, %bb.h ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @lv_point_set(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @lv_area_is_out(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.lv_point_t, align 4         ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !11   ; 3 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !9
  %i.d = icmp slt i32 %i.b, %i.c
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !10
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %0, align 4, !tbaa !9      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !11
  %i.m = icmp sgt i32 %i.j, %i.l
  br i1 %i.m, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !10   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !12
  %i.r = icmp sgt i32 %i.o, %i.q
  br i1 %i.r, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq i32 %2, 0
  br i1 %i.s, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store i32 %i.j, ptr %3, align 4, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  store i32 %i.o, ptr %i.t, align 4, !tbaa !16
  %i.u = call zeroext i1 @lv_area_is_point_on(ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef %2)
  br i1 %i.u, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.b, ptr %3, align 4, !tbaa !15
  store i32 %i.o, ptr %i.t, align 4, !tbaa !16
  %i.v = call zeroext i1 @lv_area_is_point_on(ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef %2)
  br i1 %i.v, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.j, ptr %3, align 4, !tbaa !15
  store i32 %i.f, ptr %i.t, align 4, !tbaa !16
  %i.w = call zeroext i1 @lv_area_is_point_on(ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef %2)
  br i1 %i.w, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.b, ptr %3, align 4, !tbaa !15
  store i32 %i.f, ptr %i.t, align 4, !tbaa !16
  %i.x = call zeroext i1 @lv_area_is_point_on(ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef %2)
  %not. = xor i1 %i.x, true
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.g ], [ %not., %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.a, %bb.b, %bb.c, %bb.d, %bb.j
  %.1 = phi i1 [ %.0, %bb.j ], [ true, %bb.a ], [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.b ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @lv_area_is_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = load i32, ptr %1, align 4, !tbaa !9
  %i.c = icmp eq i32 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !11
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !10
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !12
  %i.r = icmp eq i32 %i.o, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.s = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ %i.r, %bb.d ]
  ret i1 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @lv_area_align(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  switch i32 %2, label %bb.v [
    i32 9, label %bb.b
    i32 21, label %bb.u
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 10, label %bb.j
    i32 11, label %bb.k
    i32 12, label %bb.l
    i32 13, label %bb.m
    i32 14, label %bb.n
    i32 15, label %bb.o
    i32 16, label %bb.p
    i32 17, label %bb.q
    i32 18, label %bb.r
    i32 19, label %bb.s
    i32 20, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %7 = load i32, ptr %5, align 4, !tbaa !12
  %8 = load i32, ptr %i.a, align 4, !tbaa !11
  %9 = load i32, ptr %6, align 4, !tbaa !10
  %10 = load i32, ptr %0, align 4, !tbaa !9
  %11 = add i32 %7, 1
  %12 = add i32 %8, 1
  %13 = sub i32 %11, %9
  %14 = sub i32 %12, %10
  %15 = sdiv i32 %13, 2
  %16 = sdiv i32 %14, 2
  %i.e = load i32, ptr %i.c, align 4, !tbaa !12
  %i.f = load i32, ptr %i.b, align 4, !tbaa !11
  %i.g = load i32, ptr %i.d, align 4, !tbaa !10
  %i.h = load i32, ptr %1, align 4, !tbaa !9
  %i.i = add i32 %i.e, 1
  %i.j = add i32 %i.f, 1
  %i.k = sub i32 %i.i, %i.g
  %i.l = sub i32 %i.j, %i.h
  %.neg79 = sdiv i32 %i.k, -2
  %.neg78 = sdiv i32 %i.l, -2
  %i.m = add nsw i32 %.neg78, %16
  %i.n = add nsw i32 %.neg79, %15
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !11
  %i.q = load i32, ptr %0, align 4, !tbaa !9
  %i.r = add i32 %i.p, 1
  %i.s = sub i32 %i.r, %i.q
  %i.t = sdiv i32 %i.s, 2
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !11
  %i.w = load i32, ptr %1, align 4, !tbaa !9
  %i.x = add i32 %i.v, 1
  %i.y = sub i32 %i.x, %i.w
  %.neg77 = sdiv i32 %i.y, -2
  %i.z = add nsw i32 %.neg77, %i.t
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !11
  %i.ac = load i32, ptr %0, align 4, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !11
  %i.af = load i32, ptr %1, align 4, !tbaa !9
  %.neg109 = xor i32 %i.ae, -1
  %.neg108 = add i32 %i.ab, 1
  %i.ag = sub i32 %.neg108, %i.ac
  %i.ah = add i32 %i.ag, %.neg109
  %i.ai = add i32 %i.ah, %i.af
  br label %bb.v

bb.e:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !10
  %.neg107 = xor i32 %i.ao, -1
  %.neg106 = add i32 %i.ak, 1
  %i.ar = sub i32 %.neg106, %i.am
  %i.as = add i32 %i.ar, %.neg107
  %i.at = add i32 %i.as, %i.aq
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !11
  %i.aw = load i32, ptr %0, align 4, !tbaa !9
  %i.ax = add i32 %i.av, 1
  %i.ay = sub i32 %i.ax, %i.aw
  %i.az = sdiv i32 %i.ay, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !11
  %i.bc = load i32, ptr %1, align 4, !tbaa !9
  %i.bd = add i32 %i.bb, 1
  %i.be = sub i32 %i.bd, %i.bc
  %.neg76 = sdiv i32 %i.be, -2
  %i.bf = add nsw i32 %.neg76, %i.az
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !10
  %.neg105 = xor i32 %i.bl, -1
  %.neg104 = add i32 %i.bh, 1
  %i.bo = sub i32 %.neg104, %i.bj
  %i.bp = add i32 %i.bo, %.neg105
  %i.bq = add i32 %i.bp, %i.bn
  br label %bb.v

bb.g:                                             ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bx = load i32, ptr %i.bt, align 4, !tbaa !12
  %i.by = load i32, ptr %i.br, align 4, !tbaa !11
  %i.bz = load i32, ptr %i.bu, align 4, !tbaa !10
  %i.ca = load i32, ptr %0, align 4, !tbaa !9
  %i.cb = load i32, ptr %i.bv, align 4, !tbaa !12
  %i.cc = load i32, ptr %i.bs, align 4, !tbaa !11
  %i.cd = load i32, ptr %i.bw, align 4, !tbaa !10
  %i.ce = load i32, ptr %1, align 4, !tbaa !9
  %.neg103 = xor i32 %i.cb, -1
  %.neg101 = xor i32 %i.cc, -1
  %.neg102 = add i32 %i.bx, 1
  %.neg100 = add i32 %i.by, 1
  %i.cf = sub i32 %.neg102, %i.bz
  %i.cg = sub i32 %.neg100, %i.ca
  %i.ch = add i32 %i.cf, %.neg103
  %i.ci = add i32 %i.cg, %.neg101
  %i.cj = add i32 %i.ci, %i.ce
  %i.ck = add i32 %i.ch, %i.cd
  br label %bb.v

bb.h:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !12
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !10
  %i.cp = add i32 %i.cm, 1
  %i.cq = sub i32 %i.cp, %i.co
  %i.cr = sdiv i32 %i.cq, 2
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !12
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !10
  %i.cw = add i32 %i.ct, 1
  %i.cx = sub i32 %i.cw, %i.cv
  %.neg75 = sdiv i32 %i.cx, -2
  %i.cy = add nsw i32 %.neg75, %i.cr
  br label %bb.v

bb.i:                                             ; preds = %bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !11
  %i.db = load i32, ptr %0, align 4, !tbaa !9
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !11
  %i.de = load i32, ptr %1, align 4, !tbaa !9
  %.neg99 = xor i32 %i.dd, -1
  %.neg98 = add i32 %i.da, 1
  %i.df = sub i32 %.neg98, %i.db
  %i.dg = add i32 %i.df, %.neg99
  %i.dh = add i32 %i.dg, %i.de
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !12
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !10
  %i.dm = add i32 %i.dj, 1
  %i.dn = sub i32 %i.dm, %i.dl
  %i.do = sdiv i32 %i.dn, 2
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !12
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !10
  %i.dt = add i32 %i.dq, 1
  %i.du = sub i32 %i.dt, %i.ds
  %.neg74 = sdiv i32 %i.du, -2
  %i.dv = add nsw i32 %.neg74, %i.do
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !12
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !10
  %.neg97 = xor i32 %i.dx, -1
  %.neg96 = add i32 %i.dz, %.neg97
  br label %bb.v

bb.k:                                             ; preds = %bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !11
  %i.ec = load i32, ptr %0, align 4, !tbaa !9
  %i.ed = add i32 %i.eb, 1
  %i.ee = sub i32 %i.ed, %i.ec
  %i.ef = sdiv i32 %i.ee, 2
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !11
  %i.ei = load i32, ptr %1, align 4, !tbaa !9
  %i.ej = add i32 %i.eh, 1
  %i.ek = sub i32 %i.ej, %i.ei
  %.neg73 = sdiv i32 %i.ek, -2
  %i.el = add nsw i32 %.neg73, %i.ef
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.en = load i32, ptr %i.em, align 4, !tbaa !12
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !10
  %.neg95 = xor i32 %i.en, -1
  %.neg94 = add i32 %i.ep, %.neg95
  br label %bb.v

bb.l:                                             ; preds = %bb.a
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !11
  %i.es = load i32, ptr %0, align 4, !tbaa !9
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.neg90 = add i32 %i.er, 1
  %i.eu = sub i32 %.neg90, %i.es
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ex = load i32, ptr %i.ev, align 4, !tbaa !12
  %i.ey = load i32, ptr %i.et, align 4, !tbaa !11
  %.neg93 = xor i32 %i.ex, -1
  %.neg91 = xor i32 %i.ey, -1
  %i.ez = add i32 %i.eu, %.neg91
  %i.fa = load i32, ptr %i.ew, align 4, !tbaa !10
  %i.fb = load i32, ptr %1, align 4, !tbaa !9
  %i.fc = add i32 %i.ez, %i.fb
  %.neg92 = add i32 %i.fa, %.neg93
end_hunk_0
