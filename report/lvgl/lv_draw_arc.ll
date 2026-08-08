inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lv_area_t = type { i32, i32, i32, i32 }
%struct.lv_draw_arc_dsc_t = type { %struct.lv_draw_dsc_base_t, %struct.lv_color_t, i32, i32, i32, %struct.lv_point_t, ptr, i16, i8, i8 }
%struct.lv_draw_dsc_base_t = type { ptr, i32, i32, i32, ptr, i16, i16, %struct.lv_color_t, i8, i32, i64, ptr }
%struct.lv_color_t = type { i8, i8, i8 }
%struct.lv_point_t = type { i32, i32 }

; Function Attrs: nounwind uwtable
define void @lv_draw_arc_dsc_init(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @lv_memset(ptr noundef %0, i8 noundef zeroext 0, i64 noundef 104) #4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 1, ptr %i.a, align 4, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 -1, ptr %i.b, align 2, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = tail call i24 @lv_color_black() #4
  store i24 %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 104, ptr %i.e, align 8, !tbaa !19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i24 @lv_color_black() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @lv_draw_task_get_arc_dsc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = icmp eq i32 %i.b, 9
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define void @lv_draw_arc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lv_area_t, align 16         ; 5 uses
  %3 = alloca %struct.lv_draw_arc_dsc_t, align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.b = load i8, ptr %i.a, align 2, !tbaa !18
  %i.c = icmp ult i8 %i.b, 3
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.j = load i32, ptr %i.i, align 4, !tbaa !27
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.n = load i16, ptr %i.m, align 8, !tbaa !28
  %i.o = zext i16 %i.n to i32
  %i.p = load <2 x i32>, ptr %i.l, align 8, !tbaa !29
  %i.q = shufflevector <2 x i32> %i.p, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.r = insertelement <2 x i32> poison, i32 %i.o, i64 0
  %i.s = shufflevector <2 x i32> %i.r, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.t = add nsw <4 x i32> %i.s, <i32 0, i32 0, i32 -1, i32 -1> ; 2 uses
  %i.u = sub nsw <4 x i32> %i.q, %i.t
  %i.v = add <4 x i32> %i.q, %i.t
  %i.w = shufflevector <4 x i32> %i.u, <4 x i32> %i.v, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.w, ptr %2, align 16, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.y = load i8, ptr %i.x, align 1, !tbaa !30
  %.not = icmp eq i8 %i.y, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = call ptr @lv_draw_layer_create_drop_shadow(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #4 ; 3 uses
  %.not25 = icmp eq ptr %i.z, null
  br i1 %.not25, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e, %.preheader
  br label %.preheader

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false), !tbaa.struct !31
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 39
  store i8 0, ptr %i.aa, align 1, !tbaa !30
  call void @lv_draw_arc(ptr noundef nonnull %i.z, ptr noundef nonnull %3)
  call void @lv_draw_layer_finish_drop_shadow(ptr noundef nonnull %i.z, ptr noundef nonnull %1) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.ab = call ptr @lv_draw_add_task(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 9) #4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !25
  %i.ae = call ptr @lv_memcpy(ptr noundef %i.ad, ptr noundef nonnull %1, i64 noundef 104) #4 ; 0 uses
  call void @lv_draw_finalize_task_creation(ptr noundef %0, ptr noundef %i.ab) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.g
  ret void
}

declare ptr @lv_draw_layer_create_drop_shadow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_layer_finish_drop_shadow(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lv_draw_add_task(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @lv_draw_finalize_task_creation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_draw_arc_get_area(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i16 %2 to i32                       ; 29 uses
  %i.b = add nsw i32 %3, 360
  %i.c = icmp eq i32 %4, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = sub nsw i32 %0, %i.a
  store i32 %i.d, ptr %7, align 4, !tbaa !38
  %i.e = sub nsw i32 %1, %i.a
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.e, ptr %i.f, align 4, !tbaa !39
  %i.g = add nsw i32 %0, %i.a
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.g, ptr %i.h, align 4, !tbaa !40
  %i.i = add nsw i32 %1, %i.a
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.i, ptr %i.j, align 4, !tbaa !41
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.k = icmp sgt i32 %3, 360
  %i.l = add nsw i32 %3, -360
  %spec.select = select i1 %i.k, i32 %i.l, i32 %3 ; 10 uses
  %i.m = icmp sgt i32 %4, 360
  %i.n = add nsw i32 %4, -360
  %.0239 = select i1 %i.m, i32 %i.n, i32 %4       ; 10 uses
  %i.o = sub nsw i32 %i.a, %5                     ; 14 uses
  br i1 %6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = sdiv i32 %5, 2
  %i.q = add nsw i32 %i.p, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.r = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]    ; 32 uses
  %i.s = sdiv i32 %spec.select, 90
  %i.t = sdiv i32 %.0239, 90
  %i.u = and i32 %i.s, 255                        ; 2 uses
  %i.v = icmp eq i32 %i.u, 4
  %i.w = and i32 %i.t, 255                        ; 2 uses
  %i.x = icmp eq i32 %i.w, 4
  %i.y = select i1 %i.v, i32 3, i32 %i.u          ; 6 uses
  %i.z = select i1 %i.x, i32 3, i32 %i.w          ; 5 uses
  %i.aa = icmp ne i32 %i.y, %i.z
  %.not = icmp sgt i32 %spec.select, %.0239
  %or.cond243 = select i1 %i.aa, i1 true, i1 %.not
  br i1 %or.cond243, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %trunc = trunc nuw i32 %i.y to i8
  switch i8 %trunc, label %bb.t [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.ab = trunc i32 %spec.select to i16           ; 2 uses
  %i.ac = tail call i32 @lv_trigo_sin(i16 noundef signext %i.ab) #4
  %i.ad = mul nsw i32 %i.ac, %i.o
  %i.ae = ashr i32 %i.ad, 15
  %i.af = sub i32 %1, %i.r
  %i.ag = add i32 %i.af, %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !39
  %i.ai = add i16 %i.ab, 90
  %i.aj = tail call i32 @lv_trigo_sin(i16 noundef signext %i.ai) #4
  %i.ak = mul nsw i32 %i.aj, %i.a
  %i.al = ashr i32 %i.ak, 15
  %i.am = add i32 %i.r, %0
  %i.an = add i32 %i.am, %i.al
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !40
  %i.ap = trunc i32 %.0239 to i16                 ; 2 uses
  %i.aq = tail call i32 @lv_trigo_sin(i16 noundef signext %i.ap) #4
  %i.ar = mul nsw i32 %i.aq, %i.a
  %i.as = ashr i32 %i.ar, 15
  %i.at = add i32 %i.r, %1
  %i.au = add i32 %i.at, %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.au, ptr %i.av, align 4, !tbaa !41
  %i.aw = add i16 %i.ap, 90
  %i.ax = tail call i32 @lv_trigo_sin(i16 noundef signext %i.aw) #4
  %i.ay = mul nsw i32 %i.ax, %i.o
  %i.az = ashr i32 %i.ay, 15
  %i.ba = sub i32 %0, %i.r
  %i.bb = add i32 %i.ba, %i.az
  store i32 %i.bb, ptr %7, align 4, !tbaa !38
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.bc = trunc i32 %spec.select to i16           ; 2 uses
  %i.bd = tail call i32 @lv_trigo_sin(i16 noundef signext %i.bc) #4
  %i.be = mul nsw i32 %i.bd, %i.a
  %i.bf = ashr i32 %i.be, 15
  %i.bg = add i32 %i.r, %1
  %i.bh = add i32 %i.bg, %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !41
  %i.bj = add i16 %i.bc, 90
  %i.bk = tail call i32 @lv_trigo_sin(i16 noundef signext %i.bj) #4
  %i.bl = mul nsw i32 %i.bk, %i.o
  %i.bm = ashr i32 %i.bl, 15
  %i.bn = add i32 %i.r, %0
  %i.bo = add i32 %i.bn, %i.bm
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !40
  %i.bq = trunc i32 %.0239 to i16                 ; 2 uses
  %i.br = tail call i32 @lv_trigo_sin(i16 noundef signext %i.bq) #4
  %i.bs = mul nsw i32 %i.br, %i.o
  %i.bt = ashr i32 %i.bs, 15
  %i.bu = sub i32 %1, %i.r
  %i.bv = add i32 %i.bu, %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !39
  %i.bx = add i16 %i.bq, 90
  %i.by = tail call i32 @lv_trigo_sin(i16 noundef signext %i.bx) #4
  %i.bz = mul nsw i32 %i.by, %i.a
  %i.ca = ashr i32 %i.bz, 15
  %i.cb = sub i32 %0, %i.r
  %i.cc = add i32 %i.cb, %i.ca
  store i32 %i.cc, ptr %7, align 4, !tbaa !38
  br label %bb.t

bb.i:                                             ; preds = %bb.f
  %i.cd = trunc i32 %spec.select to i16           ; 2 uses
  %i.ce = add i16 %i.cd, 90
  %i.cf = tail call i32 @lv_trigo_sin(i16 noundef signext %i.ce) #4
  %i.cg = mul nsw i32 %i.cf, %i.a
  %i.ch = ashr i32 %i.cg, 15
  %i.ci = sub i32 %0, %i.r
  %i.cj = add i32 %i.ci, %i.ch
  store i32 %i.cj, ptr %7, align 4, !tbaa !38
  %i.ck = tail call i32 @lv_trigo_sin(i16 noundef signext %i.cd) #4
  %i.cl = mul nsw i32 %i.ck, %i.o
  %i.cm = ashr i32 %i.cl, 15
  %i.cn = add i32 %i.r, %1
  %i.co = add i32 %i.cn, %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !41
  %i.cq = trunc i32 %.0239 to i16                 ; 2 uses
  %i.cr = tail call i32 @lv_trigo_sin(i16 noundef signext %i.cq) #4
  %i.cs = mul nsw i32 %i.cr, %i.a
  %i.ct = ashr i32 %i.cs, 15
  %i.cu = sub i32 %1, %i.r
  %i.cv = add i32 %i.cu, %i.ct
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !39
  %i.cx = add i16 %i.cq, 90
  %i.cy = tail call i32 @lv_trigo_sin(i16 noundef signext %i.cx) #4
  %i.cz = mul nsw i32 %i.cy, %i.o
  %i.da = ashr i32 %i.cz, 15
  %i.db = add i32 %i.r, %0
  %i.dc = add i32 %i.db, %i.da
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !40
  br label %bb.t

bb.j:                                             ; preds = %bb.f
  %i.de = trunc i32 %spec.select to i16           ; 2 uses
  %i.df = add i16 %i.de, 90
  %i.dg = tail call i32 @lv_trigo_sin(i16 noundef signext %i.df) #4
  %i.dh = mul nsw i32 %i.dg, %i.o
  %i.di = ashr i32 %i.dh, 15
  %i.dj = sub i32 %0, %i.r
  %i.dk = add i32 %i.dj, %i.di
  store i32 %i.dk, ptr %7, align 4, !tbaa !38
  %i.dl = tail call i32 @lv_trigo_sin(i16 noundef signext %i.de) #4
  %i.dm = mul nsw i32 %i.dl, %i.a
  %i.dn = ashr i32 %i.dm, 15
  %i.do = sub i32 %1, %i.r
  %i.dp = add i32 %i.do, %i.dn
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !39
  %i.dr = trunc i32 %.0239 to i16                 ; 2 uses
  %i.ds = add i16 %i.dr, 90
  %i.dt = tail call i32 @lv_trigo_sin(i16 noundef signext %i.ds) #4
  %i.du = mul nsw i32 %i.dt, %i.a
  %i.dv = ashr i32 %i.du, 15
  %i.dw = add i32 %i.r, %0
  %i.dx = add i32 %i.dw, %i.dv
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !40
  %i.dz = tail call i32 @lv_trigo_sin(i16 noundef signext %i.dr) #4
  %i.ea = mul nsw i32 %i.dz, %i.o
  %i.eb = ashr i32 %i.ea, 15
  %i.ec = add i32 %i.r, %1
  %i.ed = add i32 %i.ec, %i.eb
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !41
  br label %bb.t

bb.k:                                             ; preds = %bb.e
  %i.ef = icmp eq i32 %i.y, 0
  %i.eg = icmp eq i32 %i.z, 1
  %or.cond = and i1 %i.ef, %i.eg
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.eh = trunc i32 %.0239 to i16                 ; 3 uses
  %i.ei = add i16 %i.eh, 90
  %i.ej = tail call i32 @lv_trigo_sin(i16 noundef signext %i.ei) #4
  %i.ek = mul nsw i32 %i.ej, %i.a
  %i.el = ashr i32 %i.ek, 15
  %i.em = sub i32 %0, %i.r
  %i.en = add i32 %i.em, %i.el
  store i32 %i.en, ptr %7, align 4, !tbaa !38
  %i.eo = tail call i32 @lv_trigo_sin(i16 noundef signext %i.eh) #4
  %i.ep = trunc i32 %spec.select to i16           ; 3 uses
  %i.eq = tail call i32 @lv_trigo_sin(i16 noundef signext %i.ep) #4
  %i.er = icmp slt i32 %i.eo, %i.eq
  %. = select i1 %i.er, i16 %i.eh, i16 %i.ep
  %i.es = tail call i32 @lv_trigo_sin(i16 noundef signext %.) #4
  %i.et = mul nsw i32 %i.es, %i.o
  %i.eu = ashr i32 %i.et, 15
  %i.ev = sub i32 %1, %i.r
  %i.ew = add i32 %i.ev, %i.eu
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !39
  %i.ey = add i16 %i.ep, 90
  %i.ez = tail call i32 @lv_trigo_sin(i16 noundef signext %i.ey) #4
  %i.fa = mul nsw i32 %i.ez, %i.a
  %i.fb = ashr i32 %i.fa, 15
  %i.fc = add i32 %i.r, %0
  %i.fd = add i32 %i.fc, %i.fb
  %i.fe = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !40
  %i.ff = add nsw i32 %1, %i.a
  %i.fg = add nsw i32 %i.ff, %i.r
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !41
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.fi = icmp eq i32 %i.y, 1
  %i.fj = icmp eq i32 %i.z, 2
  %or.cond5 = and i1 %i.fi, %i.fj
  br i1 %or.cond5, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fk = add nsw i32 %i.r, %i.a
  %i.fl = sub i32 %0, %i.fk
  store i32 %i.fl, ptr %7, align 4, !tbaa !38
  %i.fm = trunc i32 %.0239 to i16                 ; 2 uses
  %i.fn = tail call i32 @lv_trigo_sin(i16 noundef signext %i.fm) #4
  %i.fo = mul nsw i32 %i.fn, %i.a
  %i.fp = ashr i32 %i.fo, 15
  %i.fq = sub i32 %1, %i.r
  %i.fr = add i32 %i.fq, %i.fp
  %i.fs = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !39
  %i.ft = trunc i32 %spec.select to i16           ; 2 uses
  %i.fu = add i16 %i.ft, 90                       ; 2 uses
  %i.fv = tail call i32 @lv_trigo_sin(i16 noundef signext %i.fu) #4
  %i.fw = add i16 %i.fm, 90                       ; 2 uses
  %i.fx = tail call i32 @lv_trigo_sin(i16 noundef signext %i.fw) #4
  %i.fy = icmp sgt i32 %i.fv, %i.fx
  %.251.a = select i1 %i.fy, i16 %i.fu, i16 %i.fw
  %i.fz = tail call i32 @lv_trigo_sin(i16 noundef signext %.251.a) #4
  %i.ga = mul nsw i32 %i.fz, %i.o
  %i.gb = ashr i32 %i.ga, 15
  %i.gc = add i32 %i.r, %0
  %i.gd = add i32 %i.gc, %i.gb
  %i.ge = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !40
  %i.gf = tail call i32 @lv_trigo_sin(i16 noundef signext %i.ft) #4
  %i.gg = mul nsw i32 %i.gf, %i.a
  %i.gh = ashr i32 %i.gg, 15
  %i.gi = add i32 %i.r, %1
  %i.gj = add i32 %i.gi, %i.gh
  %i.gk = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !41
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.gl = icmp eq i32 %i.y, 2
  %i.gm = icmp eq i32 %i.z, 3
  %or.cond8 = and i1 %i.gl, %i.gm
  br i1 %or.cond8, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gn = trunc i32 %spec.select to i16           ; 3 uses
  %i.go = add i16 %i.gn, 90
  %i.gp = tail call i32 @lv_trigo_sin(i16 noundef signext %i.go) #4
  %i.gq = mul nsw i32 %i.gp, %i.a
  %i.gr = ashr i32 %i.gq, 15
  %i.gs = sub i32 %0, %i.r
  %i.gt = add i32 %i.gs, %i.gr
  store i32 %i.gt, ptr %7, align 4, !tbaa !38
  %i.gu = add nsw i32 %i.r, %i.a
  %i.gv = sub i32 %1, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !39
  %i.gx = trunc i32 %.0239 to i16                 ; 3 uses
  %i.gy = add i16 %i.gx, 90
  %i.gz = tail call i32 @lv_trigo_sin(i16 noundef signext %i.gy) #4
  %i.ha = mul nsw i32 %i.gz, %i.a
  %i.hb = ashr i32 %i.ha, 15
  %i.hc = add i32 %i.r, %0
  %i.hd = add i32 %i.hc, %i.hb
  %i.he = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !40
  %i.hf = tail call i32 @lv_trigo_sin(i16 noundef signext %i.gx) #4
  %i.hg = mul nsw i32 %i.hf, %i.o
  %i.hh = tail call i32 @lv_trigo_sin(i16 noundef signext %i.gn) #4
  %i.hi = mul nsw i32 %i.hh, %i.o
  %i.hj = icmp sgt i32 %i.hg, %i.hi
  %.252.a = select i1 %i.hj, i16 %i.gx, i16 %i.gn
  %i.hk = tail call i32 @lv_trigo_sin(i16 noundef signext %.252.a) #4
  %i.hl = mul nsw i32 %i.hk, %i.o
  %i.hm = ashr i32 %i.hl, 15
  %i.hn = add i32 %i.r, %1
  %i.ho = add i32 %i.hn, %i.hm
  %i.hp = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !41
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.hq = icmp eq i32 %i.y, 3
  %i.hr = icmp eq i32 %i.z, 0
  %or.cond11 = and i1 %i.hq, %i.hr
  br i1 %or.cond11, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hs = trunc i32 %.0239 to i16                 ; 2 uses
  %i.ht = add i16 %i.hs, 90                       ; 2 uses
  %i.hu = tail call i32 @lv_trigo_sin(i16 noundef signext %i.ht) #4
  %i.hv = trunc i32 %spec.select to i16           ; 2 uses
  %i.hw = add i16 %i.hv, 90                       ; 2 uses
  %i.hx = tail call i32 @lv_trigo_sin(i16 noundef signext %i.hw) #4
  %i.hy = icmp slt i32 %i.hu, %i.hx
  %.253 = select i1 %i.hy, i16 %i.ht, i16 %i.hw
  %i.hz = tail call i32 @lv_trigo_sin(i16 noundef signext %.253) #4
  %i.ia = mul nsw i32 %i.hz, %i.o
  %i.ib = ashr i32 %i.ia, 15
  %i.ic = sub i32 %0, %i.r
  %i.id = add i32 %i.ic, %i.ib
  store i32 %i.id, ptr %7, align 4, !tbaa !38
  %i.ie = tail call i32 @lv_trigo_sin(i16 noundef signext %i.hv) #4
  %i.if = mul nsw i32 %i.ie, %i.a
  %i.ig = ashr i32 %i.if, 15
  %i.ih = sub i32 %1, %i.r
  %i.ii = add i32 %i.ih, %i.ig
  %i.ij = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !39
  %i.ik = add nsw i32 %0, %i.a
  %i.il = add nsw i32 %i.ik, %i.r
  %i.im = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.il, ptr %i.im, align 4, !tbaa !40
  %i.in = tail call i32 @lv_trigo_sin(i16 noundef signext %i.hs) #4
  %i.io = mul nsw i32 %i.in, %i.a
  %i.ip = ashr i32 %i.io, 15
  %i.iq = add i32 %i.r, %1
  %i.ir = add i32 %i.iq, %i.ip
  %i.is = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.ir, ptr %i.is, align 4, !tbaa !41
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.it = sub nsw i32 %0, %i.a
  store i32 %i.it, ptr %7, align 4, !tbaa !38
  %i.iu = sub nsw i32 %1, %i.a
  %i.iv = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !39
  %i.iw = add nsw i32 %0, %i.a
  %i.ix = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.iw, ptr %i.ix, align 4, !tbaa !40
  %i.iy = add nsw i32 %1, %i.a
  %i.iz = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.iy, ptr %i.iz, align 4, !tbaa !41
  br label %bb.t

bb.t:                                             ; preds = %bb.h, %bb.j, %bb.i, %bb.g, %bb.n, %bb.r, %bb.s, %bb.p, %bb.l, %bb.f, %bb.b
  ret void
}

declare i32 @lv_trigo_sin(i16 noundef signext) local_unnamed_addr #2

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 68}
!9 = !{!"", !10, i64 0, !15, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !17, i64 80, !12, i64 88, !14, i64 96, !6, i64 98, !6, i64 99}
!10 = !{!"", !11, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !13, i64 24, !14, i64 32, !14, i64 34, !15, i64 36, !6, i64 39, !5, i64 40, !5, i64 42, !16, i64 48, !12, i64 56}
!11 = !{!"p1 _ZTS9_lv_obj_t", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTS11_lv_layer_t", !12, i64 0}
!14 = !{!"short", !6, i64 0}
!15 = !{!"", !6, i64 0, !6, i64 1, !6, i64 2}
!16 = !{!"long", !6, i64 0}
!17 = !{!"", !5, i64 0, !5, i64 4}
!18 = !{!9, !6, i64 98}
!19 = !{!9, !16, i64 48}
!20 = !{!21, !5, i64 8}
!21 = !{!"_lv_draw_task_t", !22, i64 0, !5, i64 8, !23, i64 12, !23, i64 28, !23, i64 44, !23, i64 60, !13, i64 80, !24, i64 88, !5, i64 96, !12, i64 104, !6, i64 112, !6, i64 113, !6, i64 114}
!22 = !{!"p1 _ZTS15_lv_draw_task_t", !12, i64 0}
!23 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!24 = !{!"p1 _ZTS15_lv_draw_unit_t", !12, i64 0}
!25 = !{!21, !12, i64 104}
!26 = !{!9, !5, i64 72}
!27 = !{!9, !5, i64 76}
!28 = !{!9, !14, i64 96}
!29 = !{!5, !5, i64 0}
!30 = !{!9, !6, i64 39}
!31 = !{i64 0, i64 8, !32, i64 8, i64 4, !29, i64 12, i64 4, !29, i64 16, i64 4, !29, i64 24, i64 8, !33, i64 32, i64 2, !34, i64 34, i64 2, !34, i64 36, i64 1, !35, i64 37, i64 1, !35, i64 38, i64 1, !35, i64 39, i64 1, !35, i64 40, i64 4, !35, i64 48, i64 8, !36, i64 56, i64 8, !37, i64 64, i64 1, !35, i64 65, i64 1, !35, i64 66, i64 1, !35, i64 68, i64 4, !29, i64 72, i64 4, !29, i64 76, i64 4, !29, i64 80, i64 4, !29, i64 84, i64 4, !29, i64 88, i64 8, !37, i64 96, i64 2, !34, i64 98, i64 1, !35, i64 99, i64 1, !35}
!32 = !{!11, !11, i64 0}
!33 = !{!13, !13, i64 0}
!34 = !{!14, !14, i64 0}
!35 = !{!6, !6, i64 0}
!36 = !{!16, !16, i64 0}
!37 = !{!12, !12, i64 0}
!38 = !{!23, !5, i64 0}
!39 = !{!23, !5, i64 4}
!40 = !{!23, !5, i64 8}
!41 = !{!23, !5, i64 12}
end_hunk_0
