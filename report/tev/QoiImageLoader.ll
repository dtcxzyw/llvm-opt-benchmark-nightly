Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/QoiImageLoader?download=true
inline.NumInlined: 5784
inline.NumDeleted: 2205
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 61
begin_hunk_0_@qoi_encode:bb.a
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.7.0.insert.insert, %.sroa.0.0.insert.ext
  %i.bm = icmp eq i32 %.sroa.066.0.insert.insert, %.sroa.0.0.insert.insert
  br i1 %i.bm, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bn = add nsw i32 %.0170214, 1                ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 62
  %i.bp = icmp eq i64 %indvars.iv, %i.az
  %or.cond187 = select i1 %i.bo, i1 true, i1 %i.bp
  br i1 %or.cond187, label %bb.m, label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.bq = trunc i32 %.0170214 to i8
  %i.br = or i8 %i.bq, -64
  %i.bs = add nsw i32 %.0210213, 1
  %i.bt = sext i32 %.0210213 to i64
  %i.bu = getelementptr inbounds i8, ptr %i.u, i64 %i.bt
  store i8 %i.br, ptr %i.bu, align 1, !tbaa !67
  br label %bb.y

bb.n:                                             ; preds = %bb.k
  %i.bv = icmp sgt i32 %.0170214, 0
  br i1 %i.bv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bw = trunc i32 %.0170214 to i8
  %i.bx = add i8 %i.bw, 63
  %i.by = or i8 %i.bx, -64
  %i.bz = add nsw i32 %.0210213, 1
  %i.ca = sext i32 %.0210213 to i64
  %i.cb = getelementptr inbounds i8, ptr %i.u, i64 %i.ca
  store i8 %i.by, ptr %i.cb, align 1, !tbaa !67
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1211 = phi i32 [ %i.bz, %bb.o ], [ %.0210213, %bb.n ] ; 10 uses
  %.1 = phi i32 [ 0, %bb.o ], [ %.0170214, %bb.n ] ; 5 uses
  %i.cc = mul nuw nsw i32 %.sroa.066.0.insert.ext, 3
  %i.cd = mul nuw nsw i32 %.sroa.12.0.insert.ext, 5
  %i.ce = add nuw nsw i32 %i.cd, %i.cc
  %i.cf = mul nuw nsw i32 %.sroa.19.0.insert.ext, 7
  %i.cg = add nuw nsw i32 %i.ce, %i.cf
  %i.ch = mul nuw nsw i32 %.sroa.26.0.insert.ext, 11
  %i.ci = add nuw nsw i32 %i.cg, %i.ch
  %i.cj = and i32 %i.ci, 63                       ; 2 uses
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ck ; 5 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !67
  %i.cn = icmp eq i32 %i.cm, %.sroa.066.0.insert.insert
  br i1 %i.cn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.co = trunc nuw nsw i32 %i.cj to i8
  %i.cp = add nsw i32 %.1211, 1
  %i.cq = sext i32 %.1211 to i64
  %i.cr = getelementptr inbounds i8, ptr %i.u, i64 %i.cq
  store i8 %i.co, ptr %i.cr, align 1, !tbaa !67
  br label %bb.y

bb.r:                                             ; preds = %bb.p
  store i8 %i.bf, ptr %i.cl, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  store i8 %i.bh, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  store i8 %i.bj, ptr %.sroa.19.0..sroa_idx, align 2
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 3
  store i8 %.sroa.26.1, ptr %.sroa.26.0..sroa_idx, align 1, !tbaa !67
  %i.cs = icmp eq i8 %.sroa.26.1, %.sroa.11.0216
  br i1 %i.cs, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.ct = sub i8 %i.bf, %.sroa.0.0219             ; 3 uses
  %i.cu = sub i8 %i.bh, %.sroa.7.0218             ; 5 uses
  %i.cv = sub i8 %i.bj, %.sroa.9.0217             ; 2 uses
  %i.cw = add i8 %i.ct, 2
  %or.cond6 = icmp ult i8 %i.cw, 4
  %i.cx = add i8 %i.cu, 2
  %i.cy = icmp ult i8 %i.cx, 4
  %or.cond12 = select i1 %or.cond6, i1 %i.cy, i1 false
  %i.cz = add i8 %i.cv, 2                         ; 2 uses
  %i.da = icmp ult i8 %i.cz, 4
  %or.cond18 = select i1 %or.cond12, i1 %i.da, i1 false
  br i1 %or.cond18, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.db = shl nsw i8 %i.ct, 4
  %i.dc = add nsw i8 %i.db, 32
  %i.dd = shl nsw i8 %i.cu, 2
  %i.de = add nsw i8 %i.dd, 8
  %i.df = or i8 %i.dc, %i.de
  %i.dg = or disjoint i8 %i.df, %i.cz
  %i.dh = or i8 %i.dg, 64
  %i.di = add nsw i32 %.1211, 1
  %i.dj = sext i32 %.1211 to i64
  %i.dk = getelementptr inbounds i8, ptr %i.u, i64 %i.dj
  store i8 %i.dh, ptr %i.dk, align 1, !tbaa !67
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.dl = sub i8 %i.cv, %i.cu
  %i.dm = sub i8 %i.ct, %i.cu                     ; 2 uses
  %i.dn = add i8 %i.dm, 8
  %or.cond21 = icmp ult i8 %i.dn, 16
  %i.do = add i8 %i.cu, 32                        ; 2 uses
  %i.dp = icmp ult i8 %i.do, 64
  %or.cond27 = select i1 %or.cond21, i1 %i.dp, i1 false
  %i.dq = add i8 %i.dl, 8                         ; 2 uses
  %i.dr = icmp ult i8 %i.dq, 16
  %or.cond33 = select i1 %or.cond27, i1 %i.dr, i1 false
  br i1 %or.cond33, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ds = or disjoint i8 %i.do, -128
  %i.dt = sext i32 %.1211 to i64
  %i.du = getelementptr i8, ptr %i.u, i64 %i.dt   ; 2 uses
  store i8 %i.ds, ptr %i.du, align 1, !tbaa !67
  %i.dv = shl nsw i8 %i.dm, 4
  %i.dw = or disjoint i8 %i.dq, %i.dv
  %i.dx = xor i8 %i.dw, -128
  %i.dy = add nsw i32 %.1211, 2
  %i.dz = getelementptr i8, ptr %i.du, i64 1
  store i8 %i.dx, ptr %i.dz, align 1, !tbaa !67
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.ea = sext i32 %.1211 to i64
  %i.eb = getelementptr i8, ptr %i.u, i64 %i.ea   ; 4 uses
  store i8 -2, ptr %i.eb, align 1, !tbaa !67
  %i.ec = getelementptr i8, ptr %i.eb, i64 1
  store i8 %i.bf, ptr %i.ec, align 1, !tbaa !67
  %i.ed = getelementptr i8, ptr %i.eb, i64 2
  store i8 %i.bh, ptr %i.ed, align 1, !tbaa !67
  %i.ee = add nsw i32 %.1211, 4
  %i.ef = getelementptr i8, ptr %i.eb, i64 3
  store i8 %i.bj, ptr %i.ef, align 1, !tbaa !67
  br label %bb.y

bb.x:                                             ; preds = %bb.r
  %i.eg = sext i32 %.1211 to i64
  %i.eh = getelementptr i8, ptr %i.u, i64 %i.eg   ; 5 uses
  store i8 -1, ptr %i.eh, align 1, !tbaa !67
  %i.ei = getelementptr i8, ptr %i.eh, i64 1
  store i8 %i.bf, ptr %i.ei, align 1, !tbaa !67
  %i.ej = getelementptr i8, ptr %i.eh, i64 2
  store i8 %i.bh, ptr %i.ej, align 1, !tbaa !67
  %i.ek = getelementptr i8, ptr %i.eh, i64 3
  store i8 %i.bj, ptr %i.ek, align 1, !tbaa !67
  %i.el = add nsw i32 %.1211, 5
  %i.em = getelementptr i8, ptr %i.eh, i64 4
  store i8 %.sroa.26.1, ptr %i.em, align 1, !tbaa !67
  br label %bb.y

bb.y:                                             ; preds = %bb.q, %bb.x, %bb.v, %bb.w, %bb.t, %bb.l, %bb.m
  %.2212 = phi i32 [ %i.bs, %bb.m ], [ %.0210213, %bb.l ], [ %i.cp, %bb.q ], [ %i.di, %bb.t ], [ %i.dy, %bb.v ], [ %i.ee, %bb.w ], [ %i.el, %bb.x ] ; 2 uses
  %.2 = phi i32 [ 0, %bb.m ], [ %i.bn, %bb.l ], [ %.1, %bb.q ], [ %.1, %bb.t ], [ %.1, %bb.v ], [ %.1, %bb.w ], [ %.1, %bb.x ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.ay ; 2 uses
  %i.en = icmp samesign ult i64 %indvars.iv.next, %i.ba
  br i1 %i.en, label %bb.i, label %.preheader.loopexit, !llvm.loop !459

bb.z:                                             ; preds = %bb.g, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %.preheader
  %.0172 = phi ptr [ null, %bb.a ], [ %i.u, %.preheader ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret ptr %.0172
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @qoi_decode(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca [64 x %union.qoi_rgba_t], align 16  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %3, 3
  %i.d = and i32 %3, -5
  %i.e = icmp ne i32 %i.d, 0
  %or.cond5 = and i1 %i.c, %i.e
  %i.f = icmp slt i32 %1, 22
  %or.cond7 = or i1 %i.f, %or.cond5
  br i1 %or.cond7, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %5 = load i8, ptr %0, align 1, !tbaa !67
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !67
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %11 = load i8, ptr %10, align 1, !tbaa !67
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %14 = load i8, ptr %13, align 1, !tbaa !67
  %15 = zext i8 %14 to i32
  %16 = shl nuw i32 %6, 24
  %17 = shl nuw nsw i32 %9, 16
  %18 = or disjoint i32 %17, %16
  %19 = shl nuw nsw i32 %12, 8
  %20 = or disjoint i32 %18, %19
  %21 = or disjoint i32 %20, %15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 1              ; 2 uses
  %i.i = tail call i32 @llvm.bswap.i32(i32 %i.h)  ; 3 uses
  store i32 %i.i, ptr %2, align 4, !tbaa !63
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 1              ; 2 uses
  %i.l = tail call i32 @llvm.bswap.i32(i32 %i.k)  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.l, ptr %i.m, align 4, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i8, ptr %i.n, align 1, !tbaa !67    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.o, ptr %i.p, align 4, !tbaa !65
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.r = load i8, ptr %i.q, align 1, !tbaa !67    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %i.r, ptr %i.s, align 1, !tbaa !66
  %i.t = icmp eq i32 %i.h, 0
  %i.u = icmp eq i32 %i.k, 0
  %or.cond124 = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond124, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = zext nneg i8 %i.o to i32
  %i.w = add i8 %i.o, -5
  %or.cond116 = icmp ult i8 %i.w, -2
  br i1 %or.cond116, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp ugt i8 %i.r, 1
  %i.y = icmp ne i32 %21, 1903126886
  %or.cond9 = or i1 %i.y, %i.x
  br i1 %or.cond9, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = udiv i32 400000000, %i.i
  %.not = icmp ult i32 %i.l, %i.z
  br i1 %.not, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp eq i32 %3, 0
  %spec.select = select i1 %i.aa, i32 %i.v, i32 %3 ; 3 uses
  %i.ab = mul i32 %i.l, %i.i
  %i.ac = mul i32 %i.ab, %spec.select             ; 3 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #36 ; 4 uses
  %.not115 = icmp eq ptr %i.ae, null
  br i1 %.not115, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false)
  %i.af = add nsw i32 %1, -8
  %i.ag = icmp sgt i32 %i.ac, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ah = icmp eq i32 %spec.select, 4
  %i.ai = zext nneg i32 %spec.select to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %.0102131 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.w ] ; 2 uses
  %.sroa.0.0129 = phi i8 [ 0, %.lr.ph ], [ %.sroa.0.2, %bb.w ] ; 5 uses
  %.sroa.13.0128 = phi i8 [ 0, %.lr.ph ], [ %.sroa.13.2, %bb.w ] ; 5 uses
  %.sroa.22.0127 = phi i8 [ 0, %.lr.ph ], [ %.sroa.22.2, %bb.w ] ; 5 uses
  %.sroa.31.0126 = phi i8 [ -1, %.lr.ph ], [ %.sroa.31.2, %bb.w ] ; 6 uses
  %.0121125 = phi i32 [ 14, %.lr.ph ], [ %.2123, %bb.w ] ; 8 uses
  %i.aj = icmp sgt i32 %.0102131, 0
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = add nsw i32 %.0102131, -1
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.al = icmp slt i32 %.0121125, %i.af
  br i1 %i.al, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.am = add nsw i32 %.0121125, 1                ; 6 uses
  %i.an = sext i32 %.0121125 to i64
  %i.ao = getelementptr i8, ptr %0, i64 %i.an     ; 6 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !67  ; 6 uses
  %i.aq = zext i8 %i.ap to i32                    ; 3 uses
  switch i8 %i.ap, label %bb.o [
    i8 -2, label %bb.m
    i8 -1, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ar = sext i32 %i.am to i64
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !67
  %i.au = getelementptr i8, ptr %i.ao, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !67
  %i.aw = add nsw i32 %.0121125, 4
  %i.ax = getelementptr i8, ptr %i.ao, i64 3
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !67
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.az = sext i32 %i.am to i64
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !67
  %i.bc = getelementptr i8, ptr %i.ao, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !67
  %i.be = getelementptr i8, ptr %i.ao, i64 3
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !67
  %i.bg = add nsw i32 %.0121125, 5
  %i.bh = getelementptr i8, ptr %i.ao, i64 4
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !67
  br label %bb.t

bb.o:                                             ; preds = %bb.l
  %i.bj = lshr i32 %i.aq, 6
  switch i32 %i.bj, label %default.unreachable [
    i32 0, label %bb.p
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o
  %i.bk = zext i8 %i.ap to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bk ; 4 uses
  %.sroa.0.0.copyload = load i8, ptr %i.bl, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %.sroa.13.0.copyload = load i8, ptr %.sroa.13.0..sroa_idx, align 1
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %.sroa.22.0.copyload = load i8, ptr %.sroa.22.0..sroa_idx, align 2
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %.sroa.31.0.copyload = load i8, ptr %.sroa.31.0..sroa_idx, align 1, !tbaa !67
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.bm = lshr i8 %i.ap, 4
  %i.bn = and i8 %i.bm, 3
  %i.bo = add i8 %.sroa.0.0129, -2
  %i.bp = add i8 %i.bo, %i.bn
  %i.bq = lshr i8 %i.ap, 2
  %i.br = and i8 %i.bq, 3
  %i.bs = add i8 %.sroa.13.0128, -2
  %i.bt = add i8 %i.bs, %i.br
  %i.bu = and i8 %i.ap, 3
  %i.bv = add i8 %.sroa.22.0127, -2
  %i.bw = add i8 %i.bv, %i.bu
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.bx = add nsw i32 %.0121125, 2
  %i.by = sext i32 %i.am to i64
  %i.bz = getelementptr inbounds i8, ptr %0, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !67
  %i.cb = zext i8 %i.ca to i32                    ; 2 uses
  %i.cc = and i32 %i.aq, 63                       ; 2 uses
  %i.cd = add nsw i32 %i.cc, -40                  ; 2 uses
  %i.ce = lshr i32 %i.cb, 4
  %i.cf = add nsw i32 %i.ce, %i.cd
  %i.cg = trunc nsw i32 %i.cf to i8
  %i.ch = add i8 %.sroa.0.0129, %i.cg
  %i.ci = trunc nuw nsw i32 %i.cc to i8
  %i.cj = add i8 %.sroa.13.0128, -32
  %i.ck = add i8 %i.cj, %i.ci
  %i.cl = and i32 %i.cb, 15
  %i.cm = add nsw i32 %i.cl, %i.cd
  %i.cn = trunc nsw i32 %i.cm to i8
  %i.co = add i8 %.sroa.22.0127, %i.cn
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.cp = and i32 %i.aq, 63
  br label %bb.t

default.unreachable:                              ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.n, %bb.q, %bb.s, %bb.r, %bb.p, %bb.m
  %.1122 = phi i32 [ %i.am, %bb.p ], [ %i.am, %bb.q ], [ %i.bx, %bb.r ], [ %i.am, %bb.s ], [ %i.aw, %bb.m ], [ %i.bg, %bb.n ]
  %.sroa.31.1 = phi i8 [ %.sroa.31.0.copyload, %bb.p ], [ %.sroa.31.0126, %bb.q ], [ %.sroa.31.0126, %bb.r ], [ %.sroa.31.0126, %bb.s ], [ %.sroa.31.0126, %bb.m ], [ %i.bi, %bb.n ] ; 3 uses
  %.sroa.22.1 = phi i8 [ %.sroa.22.0.copyload, %bb.p ], [ %i.bw, %bb.q ], [ %i.co, %bb.r ], [ %.sroa.22.0127, %bb.s ], [ %i.ay, %bb.m ], [ %i.bf, %bb.n ] ; 3 uses
  %.sroa.13.1 = phi i8 [ %.sroa.13.0.copyload, %bb.p ], [ %i.bt, %bb.q ], [ %i.ck, %bb.r ], [ %.sroa.13.0128, %bb.s ], [ %i.av, %bb.m ], [ %i.bd, %bb.n ] ; 3 uses
  %.sroa.0.1 = phi i8 [ %.sroa.0.0.copyload, %bb.p ], [ %i.bp, %bb.q ], [ %i.ch, %bb.r ], [ %.sroa.0.0129, %bb.s ], [ %i.at, %bb.m ], [ %i.bb, %bb.n ] ; 3 uses
  %.1 = phi i32 [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ %i.cp, %bb.s ], [ 0, %bb.m ], [ 0, %bb.n ]
  %i.cq = zext i8 %.sroa.0.1 to i64
  %i.cr = mul nuw nsw i64 %i.cq, 3
  %i.cs = zext i8 %.sroa.13.1 to i64
  %i.ct = mul nuw nsw i64 %i.cs, 5
  %i.cu = zext i8 %.sroa.22.1 to i64
  %i.cv = mul nuw nsw i64 %i.cu, 7
  %i.cw = zext i8 %.sroa.31.1 to i64
  %i.cx = mul nuw nsw i64 %i.cw, 11
  %i.cy = add nuw nsw i64 %i.cv, %i.cx
  %i.cz = add nuw nsw i64 %i.cy, %i.ct
  %i.da = add nuw nsw i64 %i.cz, %i.cr
  %i.db = and i64 %i.da, 63
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.db ; 4 uses
  store i8 %.sroa.0.1, ptr %i.dc, align 4
  %.sroa.13.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  store i8 %.sroa.13.1, ptr %.sroa.13.0..sroa_idx41, align 1
  %.sroa.22.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  store i8 %.sroa.22.1, ptr %.sroa.22.0..sroa_idx46, align 2
  %.sroa.31.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.dc, i64 3
  store i8 %.sroa.31.1, ptr %.sroa.31.0..sroa_idx51, align 1, !tbaa !67
  br label %bb.u

bb.u:                                             ; preds = %bb.k, %bb.t, %bb.j
  %.2123 = phi i32 [ %.0121125, %bb.j ], [ %.1122, %bb.t ], [ %.0121125, %bb.k ]
  %.sroa.31.2 = phi i8 [ %.sroa.31.0126, %bb.j ], [ %.sroa.31.1, %bb.t ], [ %.sroa.31.0126, %bb.k ] ; 2 uses
  %.sroa.22.2 = phi i8 [ %.sroa.22.0127, %bb.j ], [ %.sroa.22.1, %bb.t ], [ %.sroa.22.0127, %bb.k ] ; 2 uses
  %.sroa.13.2 = phi i8 [ %.sroa.13.0128, %bb.j ], [ %.sroa.13.1, %bb.t ], [ %.sroa.13.0128, %bb.k ] ; 2 uses
  %.sroa.0.2 = phi i8 [ %.sroa.0.0129, %bb.j ], [ %.sroa.0.1, %bb.t ], [ %.sroa.0.0129, %bb.k ] ; 2 uses
  %.2 = phi i32 [ %i.ak, %bb.j ], [ %.1, %bb.t ], [ 0, %bb.k ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv ; 4 uses
  store i8 %.sroa.0.2, ptr %i.dd, align 1, !tbaa !67
  %i.de = getelementptr i8, ptr %i.dd, i64 1
  store i8 %.sroa.13.2, ptr %i.de, align 1, !tbaa !67
  %i.df = getelementptr i8, ptr %i.dd, i64 2
  store i8 %.sroa.22.2, ptr %i.df, align 1, !tbaa !67
  br i1 %i.ah, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dg = getelementptr i8, ptr %i.dd, i64 3
  store i8 %.sroa.31.2, ptr %i.dg, align 1, !tbaa !67
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.ai ; 2 uses
  %i.dh = trunc nuw i64 %indvars.iv.next to i32
  %i.di = icmp sgt i32 %i.ac, %i.dh
  br i1 %i.di, label %bb.i, label %.loopexit, !llvm.loop !460
end_hunk_0
begin_hunk_1_@_ZN3tev8ituth27318invTransferRgbImplILNS0_9ETransferE13EfEEN7nanogui5ArrayIT0_Lm3EEENSt3__117integral_constantIS2_XT_EEERKS6_:bb.a
  %i.s = add nsw <2 x i32> %i.r, splat (i32 -127)
  %i.t = sitofp <2 x i32> %i.s to <2 x float>
  %i.u = extractelement <2 x float> %i.k, i64 1   ; 4 uses
  %i.v = tail call noundef float @llvm.fma.f32(float %i.u, float f0x3D3BF404, float f0xBE471796)
  %i.w = tail call noundef float @llvm.fma.f32(float %i.v, float %i.u, float f0x3ED4B281)
  %i.x = tail call noundef float @llvm.fma.f32(float %i.w, float %i.u, float f0xBF356C3D)
  %i.y = tail call noundef float @llvm.fma.f32(float %i.x, float %i.u, float f0x3FB88DC0)
  %i.z = insertelement <2 x float> poison, float %i.p, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %i.y, i64 1
  %i.ab = fmul <2 x float> %i.k, %i.aa
  %i.ac = fadd <2 x float> %i.ab, %i.t
  %i.ad = fmul <2 x float> %i.ac, splat (float 2.400000e+00) ; 3 uses
  %i.ae = tail call <2 x float> @llvm.rint.v2f32(<2 x float> %i.ad) ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.ad, %i.ae
  %i.af = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 6 uses
  %i.ag = tail call noundef float @llvm.fma.f32(float %i.af, float f0x39222A61, float f0x3AAF931A)
  %i.ah = tail call noundef float @llvm.fma.f32(float %i.ag, float %i.af, float 9.618040e-03)
  %i.ai = tail call noundef float @llvm.fma.f32(float %i.ah, float %i.af, float f0x3D63578A)
  %i.aj = tail call noundef float @llvm.fma.f32(float %i.ai, float %i.af, float f0x3E75FDF0)
  %i.ak = tail call noundef float @llvm.fma.f32(float %i.aj, float %i.af, float f0x3F317218)
  %i.al = tail call noundef float @llvm.fma.f32(float %i.ak, float %i.af, float 1.000000e+00)
  %i.am = fmul <2 x float> %i.a, splat (float f0x3D9E8391)
  %foldExtExtBinop9 = fsub <2 x float> %i.ad, %i.ae
  %i.an = extractelement <2 x float> %foldExtExtBinop9, i64 1 ; 6 uses
  %i.ao = tail call noundef float @llvm.fma.f32(float %i.an, float f0x39222A61, float f0x3AAF931A)
  %i.ap = tail call noundef float @llvm.fma.f32(float %i.ao, float %i.an, float 9.618040e-03)
  %i.aq = tail call noundef float @llvm.fma.f32(float %i.ap, float %i.an, float f0x3D63578A)
  %i.ar = tail call noundef float @llvm.fma.f32(float %i.aq, float %i.an, float f0x3E75FDF0)
  %i.as = tail call noundef float @llvm.fma.f32(float %i.ar, float %i.an, float f0x3F317218)
  %i.at = tail call noundef float @llvm.fma.f32(float %i.as, float %i.an, float 1.000000e+00)
  %i.au = fptosi <2 x float> %i.ae to <2 x i32>
  %i.av = shl <2 x i32> %i.au, splat (i32 23)
  %i.aw = add <2 x i32> %i.av, splat (i32 1065353216)
  %i.ax = bitcast <2 x i32> %i.aw to <2 x float>
  %i.ay = insertelement <2 x float> poison, float %i.al, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %i.at, i64 1
  %i.ba = fmul <2 x float> %i.az, %i.ax
  %i.bb = fcmp oeq <2 x float> %i.d, zeroinitializer
  %i.bc = select <2 x i1> %i.bb, <2 x float> zeroinitializer, <2 x float> %i.ba
  %i.bd = tail call <2 x float> @llvm.copysign.v2f32(<2 x float> %i.bc, <2 x float> %i.a)
  %i.be = fcmp ole <2 x float> %i.b, splat (float 4.045000e-02)
  %i.bf = select <2 x i1> %i.be, <2 x float> %i.am, <2 x float> %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !61 ; 3 uses
  %i.bi = tail call noundef float @llvm.fabs.f32(float %i.bh) ; 2 uses
  %i.bj = fmul float %i.bh, f0x3D9E8391
  %i.bk = fadd float %i.bi, 5.500000e-02
  %i.bl = fmul float %i.bk, f0x3F72A76F           ; 3 uses
  %i.bm = fcmp olt float %i.bl, f0x00800000
  %i.bn = bitcast float %i.bl to i32
  %i.bo = select i1 %i.bm, i32 8388608, i32 %i.bn ; 2 uses
  %i.bp = lshr i32 %i.bo, 23
  %i.bq = and i32 %i.bp, 255
  %i.br = add nsw i32 %i.bq, -127
  %i.bs = sitofp i32 %i.br to float
  %i.bt = and i32 %i.bo, 8388607
  %i.bu = or disjoint i32 %i.bt, 1065353216
  %i.bv = bitcast i32 %i.bu to float
  %i.bw = fadd float %i.bv, -1.000000e+00         ; 5 uses
  %i.bx = tail call noundef float @llvm.fma.f32(float %i.bw, float f0x3D3BF404, float f0xBE471796)
  %i.by = tail call noundef float @llvm.fma.f32(float %i.bx, float %i.bw, float f0x3ED4B281)
  %i.bz = tail call noundef float @llvm.fma.f32(float %i.by, float %i.bw, float f0xBF356C3D)
  %i.ca = tail call noundef float @llvm.fma.f32(float %i.bz, float %i.bw, float f0x3FB88DC0)
  %i.cb = fmul float %i.bw, %i.ca
  %i.cc = fadd float %i.cb, %i.bs
  %i.cd = fmul float %i.cc, 2.400000e+00          ; 2 uses
  %i.ce = tail call noundef float @llvm.rint.f32(float %i.cd) ; 2 uses
  %i.cf = fsub float %i.cd, %i.ce                 ; 6 uses
  %i.cg = tail call noundef float @llvm.fma.f32(float %i.cf, float f0x39222A61, float f0x3AAF931A)
  %i.ch = tail call noundef float @llvm.fma.f32(float %i.cg, float %i.cf, float 9.618040e-03)
  %i.ci = tail call noundef float @llvm.fma.f32(float %i.ch, float %i.cf, float f0x3D63578A)
  %i.cj = tail call noundef float @llvm.fma.f32(float %i.ci, float %i.cf, float f0x3E75FDF0)
  %i.ck = tail call noundef float @llvm.fma.f32(float %i.cj, float %i.cf, float f0x3F317218)
  %i.cl = tail call noundef float @llvm.fma.f32(float %i.ck, float %i.cf, float 1.000000e+00)
  %i.cm = fptosi float %i.ce to i32
  %i.cn = shl i32 %i.cm, 23
  %i.co = add i32 %i.cn, 1065353216
  %i.cp = bitcast i32 %i.co to float
  %i.cq = fmul float %i.cl, %i.cp
  %i.cr = fcmp oeq float %i.bl, 0.000000e+00
  %.sroa.speculated.i.i.i.i5 = select i1 %i.cr, float 0.000000e+00, float %i.cq
  %i.cs = tail call noundef float @llvm.copysign.f32(float %.sroa.speculated.i.i.i.i5, float %i.bh)
  %i.ct = fcmp ole float %i.bi, 4.045000e-02
  %.sroa.speculated.i.i.i6 = select i1 %i.ct, float %i.bj, float %i.cs
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.bf, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.speculated.i.i.i6, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.rint.f32(float) #24

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE9set_valueIS6_EEvOT_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::exception_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !192
  %i.d = and i32 %i.c, 1
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit, label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread

_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  store ptr null, ptr %2, align 8, !tbaa !212
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !212
  %.not = icmp eq ptr %i.f, null
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br i1 %.not, label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit3, label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread

_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread: ; preds = %bb.a, %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 2) #39
          to label %bb.b unwind label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit

bb.b:                                             ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread
  unreachable

_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit: ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #35
  resume { ptr, i32 } %i.g

_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit3: ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.j = load <2 x ptr>, ptr %1, align 8, !tbaa !185
  store <2 x ptr> %i.j, ptr %i.h, align 8, !tbaa !185
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !185
  store ptr %i.l, ptr %i.i, align 8, !tbaa !185
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.m = load i32, ptr %i.b, align 8, !tbaa !192
  %i.n = or i32 %i.m, 5
  store i32 %i.n, ptr %i.b, align 8, !tbaa !192
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZNSt3__118condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.o) #35
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #35
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__118condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.resume(ptr noundef nonnull align 8 dereferenceable(104) %0) #6 personality ptr @__gxx_personality_v0 {
resume.0:
  %.reload.addr138 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.reload.addr139 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.reload.addr140 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.041.064.reload.addr136 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %index.addr143 = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  br label %bb.e

.lr.ph:                                           ; preds = %bb.j
  store ptr %i.at, ptr %.sroa.041.064.reload.addr136, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload133, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load atomic i32, ptr %i.c acquire, align 4
  %i.e = icmp slt i32 %i.d, 2
  br i1 %i.e, label %bb.a, label %AfterCoroSave

bb.a:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = atomicrmw add ptr %i.g, i32 -1 acq_rel, align 4
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %.thread.sink.split

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !104  ; 7 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !111
  %i.m = and i32 %i.l, 8
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %.thread.sink.split

bb.c:                                             ; preds = %.noexc.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !112  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !113  ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 33
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.o, %.from..lr.ph.i.i.i.i.i ], [ %i.ag, %.noexc2.i.i ] ; 2 uses
  %i.v = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !116 ; 2 uses
  %i.w = load i8, ptr %i.r, align 8               ; 2 uses
  %i.x = trunc i8 %i.w to i1                      ; 2 uses
  %i.y = load ptr, ptr %i.s, align 8
  %i.z = select i1 %i.x, ptr %i.y, ptr %i.t
  %i.aa = load i64, ptr %i.u, align 8
  %i.ab = lshr i8 %i.w, 1
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = select i1 %i.x, i64 %i.aa, i64 %i.ac
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !71
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr %i.z, i64 %i.ad, i32 noundef 8, ptr nonnull @.str.56, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %i.q
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.d

.from..loopexit.split-lp.i.i:                     ; preds = %bb.b
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.d

bb.d:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.ah = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #41
  unreachable

AfterCoroSave:                                    ; preds = %.lr.ph
  store i8 0, ptr %index.addr143, align 8
  %.sroa.041.064.reload = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !393
  %i.ai = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.041.064.reload, ptr nonnull %0) #35
  br i1 %i.ai, label %CoroEnd, label %bb.e

bb.e:                                             ; preds = %resume.0, %AfterCoroSave
  %.sroa.041.064.reload137 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !393 ; 2 uses
  %.pr = load ptr, ptr %.sroa.041.064.reload137, align 8, !tbaa !145 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.g, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.f, %bb.c, %.noexc.i.i, %bb.a
  %.sroa.041.064.reload131 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !393 ; 2 uses
  store ptr null, ptr %.sroa.041.064.reload131, align 8, !tbaa !145
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.e
  %.sroa.041.064.reload135 = phi ptr [ %.sroa.041.064.reload131, %.thread.sink.split ], [ %.sroa.041.064.reload137, %bb.e ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload135, i64 8
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.am = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.an = extractvalue { ptr, i32 } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { ptr, i32 } %i.am, 1
  %i.ap = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #35
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.h, label %.loopexit52

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %i.an) #35 ; 0 uses
  tail call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %.reload.addr139) #35
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr139)
          to label %bb.i unwind label %bb.k       ; 0 uses

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #35
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %.from.104

bb.j:                                             ; preds = %bb.i, %.thread
  %.sroa.041.064.reload133 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !393 ; 2 uses
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !393
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload133, i64 32 ; 2 uses
  %.not51.not = icmp eq ptr %i.at, %.reload
  br i1 %.not51.not, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #35
  invoke void @__cxa_end_catch()
          to label %.loopexit52.from.110 unwind label %bb.ac

.from.104:                                        ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit52.from.110

.loopexit52.from.110:                             ; preds = %.from.104, %bb.k
  %.pn = phi { ptr, i32 } [ %i.av, %.from.104 ], [ %i.au, %bb.k ]
  %.011 = extractvalue { ptr, i32 } %.pn, 0
  br label %.loopexit52

._crit_edge:                                      ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !398
  %.pre70 = load ptr, ptr %.reload.addr138, align 8, !tbaa !399 ; 2 uses
  %i.aw = ptrtoint ptr %.pre to i64
  %i.ax = ptrtoint ptr %.pre70 to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = icmp eq i64 %i.ay, 8
  br i1 %i.az, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge
  tail call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr140, ptr noundef nonnull align 8 dereferenceable(8) %.pre70) #35
  invoke void @_ZSt17rethrow_exceptionSt13exception_ptr(ptr nofree noundef nonnull align 8 dereferenceable(8) %.reload.addr140) #39
          to label %bb.m unwind label %.loopexit52.from.115
end_hunk_1
begin_hunk_2_@_ZNK3tev14QoiImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.resume:resume.entry
_ZN3tev5Latch9countDownEv.exit.i149:              ; preds = %.noexc2.i.i161, %bb.au
  %i.iz = icmp slt i32 %i.hy, 2
  br i1 %i.iz, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i149, %bb.aw, %.noexc.i.i154
  %i.ja = load ptr, ptr %i.hv, align 8, !tbaa !81
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !186 ; 2 uses
  %i.jc = inttoptr i64 %i.jb to ptr               ; 3 uses
  store ptr %i.jc, ptr %.reload.addr511, align 8
  %.not.i163 = icmp eq i64 %i.jb, 0
  br i1 %.not.i163, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit
  store ptr null, ptr %0, align 16
  store i8 3, ptr %index.addr, align 16
  %i.jd = load ptr, ptr %i.jc, align 8
  musttail call void %i.jd(ptr nonnull %i.jc)
  ret void

bb.az:                                            ; preds = %bb.as
  %i.je = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bc unwind label %bb.bd

.from.459:                                        ; preds = %bb.at
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i149, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jh = load ptr, ptr %i.jg, align 16, !tbaa !82 ; 5 uses
  %.not.i.i164 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i164, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = atomicrmw add ptr %i.ji, i64 -1 acq_rel, align 8
  %i.jk = icmp eq i64 %i.jj, 0
  br i1 %i.jk, label %bb.bb, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

bb.bb:                                            ; preds = %bb.ba
  %i.jl = load ptr, ptr %i.jh, align 8, !tbaa !71
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jn = load ptr, ptr %i.jm, align 8
  call void %i.jn(ptr noundef nonnull align 8 dereferenceable(24) %i.jh) #35, !inline_history !6
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jh) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit: ; preds = %bb.bb, %bb.ba, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr524) #35
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 736) #35
  br label %CoroEnd

CoroEnd:                                          ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, %AfterCoroSave298, %AfterCoroSave294
  ret void

bb.bc:                                            ; preds = %bb.az, %.from.459
  %.pn65 = phi { ptr, i32 } [ %i.jf, %.from.459 ], [ %i.je, %bb.az ]
  store ptr null, ptr %0, align 16
  store i8 3, ptr %index.addr, align 16
  resume { ptr, i32 } %.pn65

bb.bd:                                            ; preds = %bb.az
  %i.jo = landingpad { ptr, i32 }
          catch ptr null
  %i.jp = extractvalue { ptr, i32 } %i.jo, 0
  call void @__clang_call_terminate(ptr %i.jp) #41
  unreachable

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK3tev14QoiImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.destroy(ptr noundef nonnull align 16 dereferenceable(736) %0) #8 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr510 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.reload.addr511 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.reload.addr517 = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 720
  %index = load i8, ptr %index.addr, align 16
  switch i8 %index, label %unreachable [
    i8 0, label %.from.419
    i8 1, label %_ZN3tev4TaskIvE12await_resumeEv.exit
    i8 2, label %_ZN3tev4TaskIvE12await_resumeEv.exit135
    i8 3, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  ], !prof !1490

.from.419:                                        ; preds = %resume.entry
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr510) #35
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit138

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr512 = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr510) #35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load i64, ptr %i.a, align 16, !tbaa !143 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 5
  br i1 %i.c, label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.sink.split, label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit

_ZN3tev4TaskIvE12await_resumeEv.exit135:          ; preds = %resume.entry
  %.reload.addr513 = getelementptr inbounds nuw i8, ptr %0, i64 472
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr510) #35
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.e = load i64, ptr %i.d, align 16, !tbaa !143 ; 2 uses
  %i.f = icmp ugt i64 %i.e, 5
  br i1 %i.f, label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.sink.split, label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit

_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.sink.split: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit135, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %.sink9 = phi i64 [ %i.b, %_ZN3tev4TaskIvE12await_resumeEv.exit ], [ %i.e, %_ZN3tev4TaskIvE12await_resumeEv.exit135 ]
  %.sink.in = phi ptr [ %.reload.addr512, %_ZN3tev4TaskIvE12await_resumeEv.exit ], [ %.reload.addr513, %_ZN3tev4TaskIvE12await_resumeEv.exit135 ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !141
  %i.g = mul i64 %.sink9, 24
  tail call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.g) #40
  br label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit

_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit: ; preds = %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.sink.split, %_ZN3tev4TaskIvE12await_resumeEv.exit135, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load i64, ptr %i.h, align 16, !tbaa !143 ; 2 uses
  %i.j = icmp ugt i64 %i.i, 5
  br i1 %i.j, label %bb.a, label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit138

bb.a:                                             ; preds = %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit
  %i.k = load ptr, ptr %.reload.addr511, align 8, !tbaa !141
  %i.l = mul i64 %i.i, 24
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.l) #40
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit138

.from._ZN3tev16MultiChannelViewIfED2Ev.exit138:   ; preds = %bb.a, %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit, %.from.419
  %i.m = load ptr, ptr %.reload.addr517, align 8, !tbaa !101 ; 5 uses
  %.not.i.i140 = icmp eq ptr %i.m, null
  br i1 %.not.i.i140, label %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %.from._ZN3tev16MultiChannelViewIfED2Ev.exit138
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !184 ; 2 uses
  %.not6.i.i.i.i141 = icmp eq ptr %i.m, %i.o
  br i1 %.not6.i.i.i.i141, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i142

.lr.ph.i.i.i.i142:                                ; preds = %bb.b, %.lr.ph.i.i.i.i142
  %.07.i.i.i.i143 = phi ptr [ %i.p, %.lr.ph.i.i.i.i142 ], [ %i.o, %bb.b ]
  %i.p = getelementptr inbounds i8, ptr %.07.i.i.i.i143, i64 -280 ; 3 uses
  tail call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.p) #35
  %.not.i.i.i.i144 = icmp eq ptr %i.m, %i.p
  br i1 %.not.i.i.i.i144, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i142

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i142
  %.pre1.i.i145 = load ptr, ptr %.reload.addr517, align 8, !tbaa !101
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.b, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.q = phi ptr [ %.pre1.i.i145, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.m, %bb.b ] ; 2 uses
  store ptr %i.m, ptr %i.n, align 16, !tbaa !184
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !185
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.v) #40
  br label %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit

_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, %.from._ZN3tev16MultiChannelViewIfED2Ev.exit138
  %.reload.addr476 = getelementptr inbounds nuw i8, ptr %0, i64 672
  %.reload477 = load ptr, ptr %.reload.addr476, align 16, !tbaa !123
  tail call void @free(ptr noundef nonnull %.reload477) #35, !inline_history !5
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread: ; preds = %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit, %resume.entry
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !82  ; 5 uses
  %.not.i.i164 = icmp eq ptr %i.x, null
  br i1 %.not.i.i164, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw add ptr %i.y, i64 -1 acq_rel, align 8
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.d, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !71
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(24) %i.x) #35, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.x) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit: ; preds = %bb.d, %bb.c, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %.reload.addr524 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr524) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 736) #35
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.rint.v2f32(<2 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) #24

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind memory(none) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #34 = { inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nounwind }
attributes #36 = { nounwind allocsize(0) }
attributes #37 = { allocsize(0) }
attributes #38 = { builtin allocsize(0) }
attributes #39 = { noreturn }
attributes #40 = { builtin nounwind }
attributes #41 = { noreturn nounwind }

!llvm.module.flags = !{!50, !51, !52, !53}
!llvm.ident = !{!54}
!llvm.errno.tbaa = !{!59}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null, null, null, null, null, null}
!3 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!4 = distinct !{null}
!5 = distinct !{null, null}
!6 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev, null, null, null}
!7 = distinct !{null, null, null}
!8 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev, null, null, null}
!9 = distinct !{null, null}
!10 = distinct !{!10, !69}
!11 = distinct !{!11, !69}
!12 = distinct !{!12, !69}
!13 = distinct !{null, null}
!14 = distinct !{null, null, null}
!15 = distinct !{null, null}
!16 = distinct !{!16, !69}
!17 = distinct !{!17, !69}
!18 = distinct !{!18, !69}
!19 = distinct !{!19, !69}
!20 = distinct !{null, null}
!21 = distinct !{null, null}
!22 = distinct !{!22, !69}
!23 = distinct !{null}
!24 = distinct !{null}
!25 = distinct !{!25, !69}
!26 = distinct !{!26, !69}
!27 = distinct !{!27, !69}
!28 = distinct !{null, null, null, null}
!29 = distinct !{!29, !69}
!30 = distinct !{null, null}
!31 = distinct !{null}
!32 = distinct !{null, null}
!33 = distinct !{!33, !69}
!34 = distinct !{!34, !69}
!35 = distinct !{!35, !69}
!36 = distinct !{null}
!37 = distinct !{null, null, null, null}
!38 = distinct !{null, null, null}
!39 = distinct !{null}
!40 = distinct !{!40, !69}
!41 = distinct !{!41, !69}
!42 = distinct !{null, null, null, null}
!43 = distinct !{null, null, null, null, null}
!44 = distinct !{null, null}
!45 = distinct !{!45, !69}
!46 = distinct !{null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN4tlog7IOutputEED2B8ne180100Ev, null, null}
!47 = distinct !{null, null, null}
!48 = distinct !{ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!49 = distinct !{null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!50 = !{i32 1, !"long-double-type", !"x86_fp80"}
!51 = !{i32 8, !"PIC Level", i32 2}
!52 = !{i32 7, !"PIE Level", i32 2}
!53 = !{i32 7, !"uwtable", i32 2}
!54 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!55 = !{!"Simple C++ TBAA"}
!56 = !{!"omnipotent char", !55, i64 0}
!57 = !{!"int", !56, i64 0}
!58 = !{!"__libc_errno", !57, i64 0}
!59 = !{!58, !57, i64 0}
!60 = !{!"float", !56, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!"_ZTS8qoi_desc", !57, i64 0, !57, i64 4, !56, i64 8, !56, i64 9}
!63 = !{!62, !57, i64 0}
!64 = !{!62, !57, i64 4}
!65 = !{!62, !56, i64 8}
!66 = !{!62, !56, i64 9}
!67 = !{!56, !56, i64 0}
!68 = !{!57, !57, i64 0}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"vtable pointer", !55, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!"any pointer", !56, i64 0}
!73 = !{!"p1 _ZTSNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEEE", !72, i64 0}
!74 = !{!"_ZTSNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEEE", !73, i64 0}
!75 = !{!74, !73, i64 0}
!76 = !{!"_ZTSNSt3__122__cxx_atomic_base_implIiEE", !56, i64 0}
!77 = !{!76, !56, i64 0}
!78 = !{!"p1 _ZTSN3tev15TaskSharedStateE", !72, i64 0}
!79 = !{!"p1 _ZTSNSt3__119__shared_weak_countE", !72, i64 0}
!80 = !{!"_ZTSNSt3__110shared_ptrIN3tev15TaskSharedStateEEE", !78, i64 0, !79, i64 8}
!81 = !{!80, !78, i64 0}
!82 = !{!80, !79, i64 8}
!83 = !{!"p1 _ZTSNSt3__16locale5__impE", !72, i64 0}
!84 = !{!"_ZTSNSt3__16localeE", !83, i64 0}
!85 = !{!"p1 omnipotent char", !72, i64 0}
!86 = !{!"_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE", !84, i64 8, !85, i64 16, !85, i64 24, !85, i64 32, !85, i64 40, !85, i64 48, !85, i64 56}
!87 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE", !56, i64 0}
!88 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE", !87, i64 0}
!89 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE", !88, i64 0}
!90 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !89, i64 0}
!91 = !{!"_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !86, i64 0, !90, i64 64, !85, i64 88, !57, i64 96}
!92 = !{!91, !57, i64 96}
!93 = !{!91, !85, i64 88}
!94 = !{!86, !85, i64 48}
!95 = !{!86, !85, i64 40}
!96 = !{!86, !85, i64 32}
!97 = !{!"p1 _ZTSN3tev9ImageDataE", !72, i64 0}
!98 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3tev9ImageDataELi0ELb0EEE", !97, i64 0}
!99 = !{!"_ZTSNSt3__117__compressed_pairIPN3tev9ImageDataENS_9allocatorIS2_EEEE", !98, i64 0}
!100 = !{!"_ZTSNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEEE", !97, i64 0, !97, i64 8, !99, i64 16}
!101 = !{!100, !97, i64 0}
!102 = !{!"long", !56, i64 0}
!103 = !{!"p1 _ZTSN4tlog6LoggerE", !72, i64 0}
!104 = !{!103, !103, i64 0}
!105 = !{!"_ZTSN4tlog9ESeverityE", !56, i64 0}
!106 = !{!"p1 _ZTSNSt3__110shared_ptrIN4tlog7IOutputEEE", !72, i64 0}
!107 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_10shared_ptrIN4tlog7IOutputEEELi0ELb0EEE", !106, i64 0}
!108 = !{!"_ZTSNSt3__117__compressed_pairIPNS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEEE", !107, i64 0}
!109 = !{!"_ZTSNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEEE", !106, i64 0, !106, i64 8, !108, i64 16}
!110 = !{!"_ZTSN4tlog6LoggerE", !105, i64 0, !109, i64 8, !90, i64 32}
!111 = !{!110, !105, i64 0}
!112 = !{!109, !106, i64 0}
!113 = !{!109, !106, i64 8}
!114 = !{!"p1 _ZTSN4tlog7IOutputE", !72, i64 0}
!115 = !{!"_ZTSNSt3__110shared_ptrIN4tlog7IOutputEEE", !114, i64 0, !79, i64 8}
!116 = !{!115, !114, i64 0}
!117 = !{!"_ZTSNSt3__116coroutine_handleIN3tev11TaskPromiseINS1_4TaskINS_6vectorINS1_7ChannelENS_9allocatorIS5_EEEEEES8_EEEE", !72, i64 0}
!118 = !{!117, !72, i64 0}
!119 = !{!"p1 _ZTSNSt3__113__assoc_stateINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEEE", !72, i64 0}
!120 = !{!"_ZTSNSt3__16futureINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEEE", !119, i64 0}
!121 = !{!120, !119, i64 0}
!122 = !{!"_ZNK3tev14QoiImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.Frame Slot", !55, i64 0}
!123 = !{!122, !122, i64 0}
!124 = !{!"p1 _ZTSN3tev7ChannelE", !72, i64 0}
!125 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3tev7ChannelELi0ELb0EEE", !124, i64 0}
!126 = !{!"_ZTSNSt3__117__compressed_pairIPN3tev7ChannelENS_9allocatorIS2_EEEE", !125, i64 0}
!127 = !{!"_ZTSNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEEE", !124, i64 0, !124, i64 8, !126, i64 16}
!128 = !{!127, !124, i64 0}
!129 = !{!127, !124, i64 8}
!130 = !{!"p1 _ZTSN3tev11PixelBufferE", !72, i64 0}
!131 = !{!"_ZTSNSt3__110shared_ptrIN3tev11PixelBufferEEE", !130, i64 0, !79, i64 8}
!132 = !{!131, !79, i64 8}
!133 = !{!124, !124, i64 0}
!134 = !{!"bool", !56, i64 0}
!135 = !{!"_ZTSNSt3__124__optional_destruct_baseINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEELb1EEE", !56, i64 0, !134, i64 32}
!136 = !{!135, !134, i64 32}
!137 = !{i8 0, i8 2}
!138 = !{}
!139 = !{!"p1 _ZTSN3tev11ChannelViewIfEE", !72, i64 0}
!140 = !{!"_ZTSN3gch6detail22small_vector_data_baseIPN3tev11ChannelViewIfEEmEE", !139, i64 0, !102, i64 8, !102, i64 16}
!141 = !{!140, !139, i64 0}
!142 = !{!140, !102, i64 16}
!143 = !{!140, !102, i64 8}
!144 = !{!"_ZTSNSt3__116coroutine_handleIN3tev11TaskPromiseINS1_4TaskIvEEvEEEE", !72, i64 0}
end_hunk_2
