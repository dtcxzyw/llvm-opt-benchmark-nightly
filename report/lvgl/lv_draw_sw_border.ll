Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_border?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lv_area_t = type { i32, i32, i32, i32 }
%struct._lv_draw_sw_blend_dsc_t = type { ptr, ptr, i32, i32, ptr, i8, %struct.lv_color_t, ptr, i32, ptr, i32, i32 }
%struct.lv_color_t = type { i8, i8, i8 }
%struct._lv_draw_sw_mask_radius_param_t = type { %struct._lv_draw_sw_mask_common_dsc_t, %struct.anon, ptr }
%struct._lv_draw_sw_mask_common_dsc_t = type { ptr, i32 }
%struct.anon = type { %struct.lv_area_t, i32, i8 }

; Function Attrs: nounwind uwtable
define void @lv_draw_sw_border(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.lv_area_t, align 4          ; 13 uses
  %4 = alloca %struct._lv_draw_sw_blend_dsc_t, align 8 ; 19 uses
  %i.a = alloca [3 x ptr], align 16               ; 10 uses
  %5 = alloca %struct._lv_draw_sw_mask_radius_param_t, align 8 ; 5 uses
  %6 = alloca %struct._lv_draw_sw_mask_radius_param_t, align 8 ; 5 uses
  %7 = alloca %struct.lv_area_t, align 4          ; 41 uses
  %8 = alloca %struct.lv_area_t, align 8          ; 10 uses
  %9 = alloca %struct.lv_area_t, align 4          ; 9 uses
  %10 = alloca %struct._lv_draw_sw_blend_dsc_t, align 8 ; 10 uses
  %11 = alloca %struct.lv_area_t, align 16        ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !21
  %i.d = icmp ult i8 %i.c, 3
  br i1 %i.d, label %bb.av, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !22
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.av, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 77 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1
  %i.j = and i8 %i.i, 31
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.av, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @lv_area_get_width(ptr noundef %2) #5
  %i.m = tail call i32 @lv_area_get_height(ptr noundef %2) #5
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load i32, ptr %i.n, align 8, !tbaa !23   ; 2 uses
  %i.p = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %i.m)
  %i.q = ashr i32 %i.p, 1                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #5
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 5 uses
  %i.x = load i8, ptr %i.h, align 1
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.o, i32 %i.q) ; 5 uses
  %.scalar = tail call i32 @llvm.smin.i32(i32 %i.o, i32 %i.q)
  %12 = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.scalar, i64 0 ; 3 uses
  %13 = shufflevector <2 x i32> %12, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %14 = load <4 x i32>, ptr %2, align 4, !tbaa !24 ; 2 uses
  %i.y = load i32, ptr %i.e, align 8, !tbaa !22   ; 3 uses
  %15 = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.y, i64 0
  %16 = shufflevector <4 x i32> %15, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %17 = add nsw <4 x i32> %16, %13
  %18 = insertelement <4 x i32> <i32 0, i32 0, i32 0, i32 poison>, i32 %i.y, i64 3 ; 2 uses
  %19 = sub nsw <4 x i32> %18, %17
  %i.z = insertelement <4 x i8> poison, i8 %i.x, i64 0
  %i.aa = shufflevector <4 x i8> %i.z, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ab = and <4 x i8> %i.aa, <i8 4, i8 2, i8 8, i8 1>
  %i.ac = icmp eq <4 x i8> %i.ab, <i8 0, i8 0, i8 0, i8 1>
  %20 = shufflevector <2 x i32> %12, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <4 x i32> <i32 0, i32 0, i32 0, i32 poison>, <4 x i32> %20, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ad = add nsw <4 x i32> %21, %18
  %i.ae = sub nsw <4 x i32> %16, %i.ad
  %i.af = select <4 x i1> %i.ac, <4 x i32> %19, <4 x i32> %i.ae ; 2 uses
  %i.ag = add nsw <4 x i32> %14, %i.af
  %i.ah = sub nsw <4 x i32> %14, %i.af
  %i.ai = shufflevector <4 x i32> %i.ag, <4 x i32> %i.ah, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ai, ptr %11, align 16, !tbaa !24
  %i.aj = sub nsw i32 %spec.select, %i.y          ; 2 uses
  %i.ak = icmp eq i32 %spec.select, 0
  %i.al = icmp slt i32 %i.aj, 1
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.an = load i8, ptr %i.b, align 4, !tbaa !21   ; 2 uses
  %.0.copyload2 = load i24, ptr %i.am, align 4    ; 2 uses
  br i1 %or.cond, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  call void @lv_memset(ptr noundef nonnull %10, i8 noundef zeroext 0, i64 noundef 72) #5
  store ptr %9, ptr %10, align 8, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i24 %.0.copyload2, ptr %i.ao, align 1, !tbaa !28
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 %i.an, ptr %i.ap, align 8, !tbaa !29
  %i.aq = load i32, ptr %i.r, align 4, !tbaa !31  ; 2 uses
  %i.ar = load i32, ptr %i.s, align 4, !tbaa !31  ; 2 uses
  %.not.i = icmp sgt i32 %i.aq, %i.ar             ; 2 uses
  %i.as = load i32, ptr %i.v, align 4, !tbaa !32  ; 2 uses
  %i.at = load i32, ptr %i.w, align 4, !tbaa !32  ; 2 uses
  %.not32.i = icmp slt i32 %i.as, %i.at
  %i.au = load i32, ptr %2, align 4, !tbaa !33    ; 2 uses
  %i.av = load i32, ptr %11, align 16, !tbaa !33
  %.not33.i = icmp sgt i32 %i.au, %i.av
  %i.aw = load i32, ptr %i.t, align 4, !tbaa !34  ; 2 uses
  %i.ax = load i32, ptr %i.u, align 8, !tbaa !34
  %.not34.i = icmp slt i32 %i.aw, %i.ax
  store i32 %i.au, ptr %9, align 4, !tbaa !33
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 3 uses
  store i32 %i.aq, ptr %i.az, align 4, !tbaa !31
  %i.ba = add nsw i32 %i.ar, -1
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !32
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %10) #5
  %.pre.i = load i32, ptr %i.w, align 4, !tbaa !32
  %.pre36.i = load i32, ptr %i.v, align 4, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bc = phi i32 [ %.pre36.i, %bb.f ], [ %i.as, %bb.e ] ; 2 uses
  %i.bd = phi i32 [ %.pre.i, %bb.f ], [ %i.at, %bb.e ]
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.az, align 4, !tbaa !31
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !32
  br i1 %.not32.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %10) #5
  %.pre37.i = load i32, ptr %i.w, align 4, !tbaa !32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bf = phi i32 [ %.pre37.i, %bb.h ], [ %i.bc, %bb.g ]
  %i.bg = load i32, ptr %2, align 4, !tbaa !33
  store i32 %i.bg, ptr %9, align 4, !tbaa !33
  %i.bh = load i32, ptr %11, align 16, !tbaa !33
  %i.bi = add nsw i32 %i.bh, -1
  store i32 %i.bi, ptr %i.ay, align 4, !tbaa !34
  %..i = select i1 %.not.i, ptr %i.r, ptr %i.s
  %i.bj = load i32, ptr %..i, align 4, !tbaa !31
  store i32 %i.bj, ptr %i.az, align 4, !tbaa !31
  store i32 %i.bf, ptr %i.bb, align 4, !tbaa !32
  br i1 %.not33.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %10) #5
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bk = load i32, ptr %i.u, align 8, !tbaa !34
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %9, align 4, !tbaa !33
  %i.bm = load i32, ptr %i.t, align 4, !tbaa !34
  store i32 %i.bm, ptr %i.ay, align 4, !tbaa !34
  br i1 %.not34.i, label %draw_border_simple.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %10) #5
  br label %draw_border_simple.exit

draw_border_simple.exit:                          ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  br label %bb.au

bb.m:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bo = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %i.bn) #5
  br i1 %i.bo, label %bb.n, label %draw_border_complex.exit

bb.n:                                             ; preds = %bb.m
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.aj, i32 0)
  %i.bp = call i32 @lv_area_get_width(ptr noundef nonnull %3) #5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @lv_memset(ptr noundef nonnull %4, i8 noundef zeroext 0, i64 noundef 72) #5
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = call ptr @lv_malloc(i64 noundef %i.bq) #5 ; 12 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @lv_draw_sw_mask_radius_init(ptr noundef nonnull %5, ptr noundef nonnull %11, i32 noundef %spec.store.select, i1 noundef zeroext true) #5
  store ptr %5, ptr %i.a, align 16, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.bt = icmp sgt i32 %spec.select, 0            ; 2 uses
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @lv_draw_sw_mask_radius_init(ptr noundef nonnull %6, ptr noundef nonnull %2, i32 noundef range(i32 -2147483648, 1073741824) %spec.select, i1 noundef zeroext false) #5
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %6, ptr %i.bu, align 8, !tbaa !36
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  store ptr %7, ptr %4, align 8, !tbaa !27
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %7, ptr %i.bv, align 8, !tbaa !37
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i24 %.0.copyload2, ptr %i.bw, align 1, !tbaa !28
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 %i.an, ptr %i.bx, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 6 uses
  %i.ca = load <2 x i32>, ptr %2, align 4, !tbaa !24
  %i.cb = shufflevector <2 x i32> %12, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cc = add nsw <2 x i32> %i.ca, %i.cb
  %i.cd = load <2 x i32>, ptr %11, align 16, !tbaa !24
  %i.ce = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.cc, <2 x i32> %i.cd)
  store <2 x i32> %i.ce, ptr %8, align 8, !tbaa !24
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 4 uses
  %i.cg = load <2 x i32>, ptr %i.t, align 4, !tbaa !24
  %i.ch = sub nsw <2 x i32> %i.cg, %i.cb
  %i.ci = load <2 x i32>, ptr %i.u, align 8, !tbaa !24
  %i.cj = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ch, <2 x i32> %i.ci)
  store <2 x i32> %i.cj, ptr %i.by, align 8, !tbaa !24
  %i.ck = call i32 @lv_area_get_width(ptr noundef nonnull %8) #5
  %i.cl = load i32, ptr %i.r, align 4, !tbaa !31  ; 2 uses
  %i.cm = load i32, ptr %i.s, align 4, !tbaa !31  ; 2 uses
  %i.cn = icmp sle i32 %i.cl, %i.cm               ; 4 uses
  %i.co = load i32, ptr %i.v, align 4, !tbaa !32
  %i.cp = load i32, ptr %i.w, align 4, !tbaa !32
  %i.cq = icmp sge i32 %i.co, %i.cp               ; 4 uses
  %i.cr = load i32, ptr %2, align 4, !tbaa !33
  %i.cs = load i32, ptr %11, align 16, !tbaa !33
  %i.ct = icmp sle i32 %i.cr, %i.cs               ; 5 uses
  %i.cu = load i32, ptr %i.t, align 4, !tbaa !34
  %i.cv = load i32, ptr %i.u, align 8, !tbaa !34
  %i.cw = icmp sge i32 %i.cu, %i.cv               ; 5 uses
  %or.cond.i = select i1 %i.ct, i1 %i.cw, i1 false
  %or.cond3.i = and i1 %i.cn, %or.cond.i
  %or.cond5.i = select i1 %or.cond3.i, i1 %i.cq, i1 false
  %i.cx = icmp slt i32 %i.ck, 50
  %or.cond7.i = select i1 %or.cond5.i, i1 %i.cx, i1 false ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 6 uses
  store i32 1, ptr %i.cy, align 8, !tbaa !38
  %or.cond9.i = xor i1 %i.cn, %or.cond7.i
  br i1 %or.cond9.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cz = load i32, ptr %8, align 8, !tbaa !33
  store i32 %i.cz, ptr %7, align 4, !tbaa !33
  %i.da = load i32, ptr %i.by, align 8, !tbaa !34
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.da, ptr %i.db, align 4, !tbaa !34
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.cl, ptr %i.dc, align 4, !tbaa !31
  %i.dd = add nsw i32 %i.cm, -1
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !32
  call void @lv_draw_sw_blend(ptr noundef nonnull %0, ptr noundef nonnull %4) #5
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %or.cond11.i = xor i1 %i.cq, %or.cond7.i
  br i1 %or.cond11.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.df = load i32, ptr %8, align 8, !tbaa !33
  store i32 %i.df, ptr %7, align 4, !tbaa !33
  %i.dg = load i32, ptr %i.by, align 8, !tbaa !34
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !34
  %i.di = load i32, ptr %i.w, align 4, !tbaa !32
  %i.dj = add nsw i32 %i.di, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !31
  %i.dl = load i32, ptr %i.v, align 4, !tbaa !32
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !32
  call void @lv_draw_sw_blend(ptr noundef nonnull %0, ptr noundef nonnull %4) #5
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dn = load i32, ptr %11, align 16, !tbaa !33  ; 2 uses
  %i.do = load i32, ptr %i.u, align 8, !tbaa !34
  %i.dp = icmp sge i32 %i.dn, %i.do
  %or.cond13.i = and i1 %i.ct, %i.dp
  %or.cond15.i = select i1 %or.cond13.i, i1 %i.cw, i1 false
  br i1 %or.cond15.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dq = load i32, ptr %2, align 4, !tbaa !33
  br label %.sink.split.i

bb.v:                                             ; preds = %bb.t
  br i1 %i.ct, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dr = load i32, ptr %2, align 4, !tbaa !33
  store i32 %i.dr, ptr %7, align 4, !tbaa !33
  %i.ds = add nsw i32 %i.dn, -1
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !34
  %i.du = load i32, ptr %i.bz, align 4, !tbaa !31
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !31
  %i.dw = load i32, ptr %i.cf, align 4, !tbaa !32
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !32
  call void @lv_draw_sw_blend(ptr noundef nonnull %0, ptr noundef nonnull %4) #5
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %i.cw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dy = load i32, ptr %i.u, align 8, !tbaa !34
  %i.dz = add nsw i32 %i.dy, 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.y, %bb.u
  %.sink.i = phi i32 [ %i.dz, %bb.y ], [ %i.dq, %bb.u ]
  store i32 %.sink.i, ptr %7, align 4, !tbaa !33
  %i.ea = load i32, ptr %i.t, align 4, !tbaa !34
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !34
  %i.ec = load i32, ptr %i.bz, align 4, !tbaa !31
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !31
  %i.ee = load i32, ptr %i.cf, align 4, !tbaa !32
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !32
  call void @lv_draw_sw_blend(ptr noundef nonnull %0, ptr noundef nonnull %4) #5
  br label %bb.z

bb.z:                                             ; preds = %.sink.split.i, %bb.x
  %i.eg = load i32, ptr %3, align 4, !tbaa !33
  store i32 %i.eg, ptr %7, align 4, !tbaa !33
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !34 ; 2 uses
  br i1 %or.cond7.i, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %bb.z
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !34
  %i.ek = load i32, ptr %i.s, align 4, !tbaa !31
  %i.el = load i32, ptr %i.r, align 4, !tbaa !31
  %i.em = sub nsw i32 %i.ek, %i.el
  %.194.i = call i32 @llvm.smax.i32(i32 range(i32 -2147483648, 1073741824) %spec.select, i32 %i.em) ; 2 uses
  %i.en = icmp sgt i32 %.194.i, 0
  br i1 %i.en, label %.lr.ph212.i, label %.loopexit.i

.lr.ph212.i:                                      ; preds = %bb.aa
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ag, %.lr.ph212.i
  %.0175211.i = phi i32 [ 0, %.lr.ph212.i ], [ %i.fe, %bb.ag ] ; 3 uses
  %i.es = load i32, ptr %i.r, align 4, !tbaa !31
  %i.et = add nsw i32 %i.es, %.0175211.i          ; 5 uses
  %i.eu = load i32, ptr %i.v, align 4, !tbaa !32
  %i.ev = sub nsw i32 %i.eu, %.0175211.i          ; 4 uses
  %i.ew = load i32, ptr %i.eo, align 4, !tbaa !31
  %i.ex = icmp slt i32 %i.et, %i.ew
  %i.ey = load i32, ptr %i.ep, align 4
  %i.ez = icmp sgt i32 %i.ev, %i.ey
  %or.cond197.i = select i1 %i.ex, i1 %i.ez, i1 false
  br i1 %or.cond197.i, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @lv_memset(ptr noundef %i.br, i8 noundef zeroext -1, i64 noundef %i.bq) #5
  %i.fa = load i32, ptr %7, align 4, !tbaa !33
  %i.fb = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.br, i32 noundef %i.fa, i32 noundef %i.et, i32 noundef %i.bp) #5
  store i32 %i.fb, ptr %i.cy, align 8, !tbaa !38
  %i.fc = load i32, ptr %i.eo, align 4, !tbaa !31
  %.not.i54 = icmp slt i32 %i.et, %i.fc
  br i1 %.not.i54, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.et, ptr %i.eq, align 4, !tbaa !31
  store i32 %i.et, ptr %i.er, align 4, !tbaa !32
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %4) #5
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fd = load i32, ptr %i.ep, align 4, !tbaa !32
  %.not191.i = icmp sgt i32 %i.ev, %i.fd
  br i1 %.not191.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 %i.ev, ptr %i.eq, align 4, !tbaa !31
  store i32 %i.ev, ptr %i.er, align 4, !tbaa !32
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %4) #5
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ab
  %i.fe = add nuw nsw i32 %.0175211.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.fe, %.194.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.ab, !llvm.loop !8

bb.ah:                                            ; preds = %bb.z
  %i.ff = load i32, ptr %8, align 8, !tbaa !33
  %i.fg = add nsw i32 %i.ff, -1
  %i.fh = call i32 @llvm.smin.i32(i32 %i.ei, i32 %i.fg)
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !34
  %i.fj = call i32 @lv_area_get_width(ptr noundef nonnull %7) #5 ; 5 uses
  %i.fk = icmp sgt i32 %i.fj, 0
  br i1 %i.fk, label %bb.ai, label %.loopexit200.i

bb.ai:                                            ; preds = %bb.ah
  %or.cond17.i = or i1 %i.cn, %i.ct
end_hunk_0
