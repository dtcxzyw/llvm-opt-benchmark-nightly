Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/image?download=true
inline.NumInlined: 6802
inline.NumDeleted: 1350
loop-unroll.NumCompletelyUnrolled: 53
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 117
begin_hunk_0_@qoi_encode:bb.a
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.7.0.insert.insert, %.sroa.0.0.insert.ext
  %i.aw = icmp eq i32 %.sroa.066.0.insert.insert, %.sroa.0.0.insert.insert
  br i1 %i.aw, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ax = add nsw i32 %.0170214, 1                ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 62
  %i.az = icmp eq i64 %indvars.iv, %i.aj
  %or.cond187 = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond187, label %bb.m, label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.ba = trunc i32 %.0170214 to i8
  %i.bb = or i8 %i.ba, -64
  %i.bc = add nsw i32 %.0210213, 1
  %i.bd = sext i32 %.0210213 to i64
  %i.be = getelementptr inbounds i8, ptr %i.u, i64 %i.bd
  store i8 %i.bb, ptr %i.be, align 1, !tbaa !37
  br label %bb.y

bb.n:                                             ; preds = %bb.k
  %i.bf = icmp sgt i32 %.0170214, 0
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bg = trunc i32 %.0170214 to i8
  %i.bh = add i8 %i.bg, 63
  %i.bi = or i8 %i.bh, -64
  %i.bj = add nsw i32 %.0210213, 1
  %i.bk = sext i32 %.0210213 to i64
  %i.bl = getelementptr inbounds i8, ptr %i.u, i64 %i.bk
  store i8 %i.bi, ptr %i.bl, align 1, !tbaa !37
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1211 = phi i32 [ %i.bj, %bb.o ], [ %.0210213, %bb.n ] ; 10 uses
  %.1 = phi i32 [ 0, %bb.o ], [ %.0170214, %bb.n ] ; 5 uses
  %i.bm = mul nuw nsw i32 %.sroa.066.0.insert.ext, 3
  %i.bn = mul nuw nsw i32 %.sroa.12.0.insert.ext, 5
  %i.bo = add nuw nsw i32 %i.bn, %i.bm
  %i.bp = mul nuw nsw i32 %.sroa.19.0.insert.ext, 7
  %i.bq = add nuw nsw i32 %i.bo, %i.bp
  %i.br = mul nuw nsw i32 %.sroa.26.0.insert.ext, 11
  %i.bs = add nuw nsw i32 %i.bq, %i.br
  %i.bt = and i32 %i.bs, 63                       ; 2 uses
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bu ; 5 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !37
  %i.bx = icmp eq i32 %i.bw, %.sroa.066.0.insert.insert
  br i1 %i.bx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.by = trunc nuw nsw i32 %i.bt to i8
  %i.bz = add nsw i32 %.1211, 1
  %i.ca = sext i32 %.1211 to i64
  %i.cb = getelementptr inbounds i8, ptr %i.u, i64 %i.ca
  store i8 %i.by, ptr %i.cb, align 1, !tbaa !37
  br label %bb.y

bb.r:                                             ; preds = %bb.p
  store i8 %i.ap, ptr %i.bv, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 %i.ar, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  store i8 %i.at, ptr %.sroa.19.0..sroa_idx, align 2
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 3
  store i8 %.sroa.26.1, ptr %.sroa.26.0..sroa_idx, align 1, !tbaa !37
  %i.cc = icmp eq i8 %.sroa.26.1, %.sroa.11.0216
  br i1 %i.cc, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.cd = sub i8 %i.ap, %.sroa.0.0219             ; 3 uses
  %i.ce = sub i8 %i.ar, %.sroa.7.0218             ; 5 uses
  %i.cf = sub i8 %i.at, %.sroa.9.0217             ; 2 uses
  %i.cg = add i8 %i.cd, 2
  %or.cond6 = icmp ult i8 %i.cg, 4
  %i.ch = add i8 %i.ce, 2
  %i.ci = icmp ult i8 %i.ch, 4
  %or.cond12 = select i1 %or.cond6, i1 %i.ci, i1 false
  %i.cj = add i8 %i.cf, 2                         ; 2 uses
  %i.ck = icmp ult i8 %i.cj, 4
  %or.cond18 = select i1 %or.cond12, i1 %i.ck, i1 false
  br i1 %or.cond18, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cl = shl nsw i8 %i.cd, 4
  %i.cm = add nsw i8 %i.cl, 32
  %i.cn = shl nsw i8 %i.ce, 2
  %i.co = add nsw i8 %i.cn, 8
  %i.cp = or i8 %i.cm, %i.co
  %i.cq = or disjoint i8 %i.cp, %i.cj
  %i.cr = or i8 %i.cq, 64
  %i.cs = add nsw i32 %.1211, 1
  %i.ct = sext i32 %.1211 to i64
  %i.cu = getelementptr inbounds i8, ptr %i.u, i64 %i.ct
  store i8 %i.cr, ptr %i.cu, align 1, !tbaa !37
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.cv = sub i8 %i.cf, %i.ce
  %i.cw = sub i8 %i.cd, %i.ce                     ; 2 uses
  %i.cx = add i8 %i.cw, 8
  %or.cond21 = icmp ult i8 %i.cx, 16
  %i.cy = add i8 %i.ce, 32                        ; 2 uses
  %i.cz = icmp ult i8 %i.cy, 64
  %or.cond27 = select i1 %or.cond21, i1 %i.cz, i1 false
  %i.da = add i8 %i.cv, 8                         ; 2 uses
  %i.db = icmp ult i8 %i.da, 16
  %or.cond33 = select i1 %or.cond27, i1 %i.db, i1 false
  br i1 %or.cond33, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dc = or disjoint i8 %i.cy, -128
  %i.dd = sext i32 %.1211 to i64
  %i.de = getelementptr i8, ptr %i.u, i64 %i.dd   ; 2 uses
  store i8 %i.dc, ptr %i.de, align 1, !tbaa !37
  %i.df = shl nsw i8 %i.cw, 4
  %i.dg = or disjoint i8 %i.da, %i.df
  %i.dh = xor i8 %i.dg, -128
  %i.di = add nsw i32 %.1211, 2
  %i.dj = getelementptr i8, ptr %i.de, i64 1
  store i8 %i.dh, ptr %i.dj, align 1, !tbaa !37
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.dk = sext i32 %.1211 to i64
  %i.dl = getelementptr i8, ptr %i.u, i64 %i.dk   ; 4 uses
  store i8 -2, ptr %i.dl, align 1, !tbaa !37
  %i.dm = getelementptr i8, ptr %i.dl, i64 1
  store i8 %i.ap, ptr %i.dm, align 1, !tbaa !37
  %i.dn = getelementptr i8, ptr %i.dl, i64 2
  store i8 %i.ar, ptr %i.dn, align 1, !tbaa !37
  %i.do = add nsw i32 %.1211, 4
  %i.dp = getelementptr i8, ptr %i.dl, i64 3
  store i8 %i.at, ptr %i.dp, align 1, !tbaa !37
  br label %bb.y

bb.x:                                             ; preds = %bb.r
  %i.dq = sext i32 %.1211 to i64
  %i.dr = getelementptr i8, ptr %i.u, i64 %i.dq   ; 5 uses
  store i8 -1, ptr %i.dr, align 1, !tbaa !37
  %i.ds = getelementptr i8, ptr %i.dr, i64 1
  store i8 %i.ap, ptr %i.ds, align 1, !tbaa !37
  %i.dt = getelementptr i8, ptr %i.dr, i64 2
  store i8 %i.ar, ptr %i.dt, align 1, !tbaa !37
  %i.du = getelementptr i8, ptr %i.dr, i64 3
  store i8 %i.at, ptr %i.du, align 1, !tbaa !37
  %i.dv = add nsw i32 %.1211, 5
  %i.dw = getelementptr i8, ptr %i.dr, i64 4
  store i8 %.sroa.26.1, ptr %i.dw, align 1, !tbaa !37
  br label %bb.y

bb.y:                                             ; preds = %bb.q, %bb.x, %bb.v, %bb.w, %bb.t, %bb.l, %bb.m
  %.2212 = phi i32 [ %i.bc, %bb.m ], [ %.0210213, %bb.l ], [ %i.bz, %bb.q ], [ %i.cs, %bb.t ], [ %i.di, %bb.v ], [ %i.do, %bb.w ], [ %i.dv, %bb.x ] ; 2 uses
  %.2 = phi i32 [ 0, %bb.m ], [ %i.ax, %bb.l ], [ %.1, %bb.q ], [ %.1, %bb.t ], [ %.1, %bb.v ], [ %.1, %bb.w ], [ %.1, %bb.x ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.ai ; 2 uses
  %i.dx = icmp samesign ult i64 %indvars.iv.next, %i.ak
  br i1 %i.dx, label %bb.i, label %.preheader.loopexit, !llvm.loop !245

bb.z:                                             ; preds = %bb.g, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %.preheader
  %.0172 = phi ptr [ null, %bb.a ], [ %i.u, %.preheader ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret ptr %.0172
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @qoi_decode(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [64 x %union.qoi_rgba_t], align 16  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
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
  %5 = load i32, ptr %0, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 1              ; 2 uses
  %i.i = tail call i32 @llvm.bswap.i32(i32 %i.h)  ; 3 uses
  store i32 %i.i, ptr %2, align 4, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 1              ; 2 uses
  %i.l = tail call i32 @llvm.bswap.i32(i32 %i.k)  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.l, ptr %i.m, align 4, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i8, ptr %i.n, align 1, !tbaa !37    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.o, ptr %i.p, align 4, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.r = load i8, ptr %i.q, align 1, !tbaa !37    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %i.r, ptr %i.s, align 1, !tbaa !36
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
  %i.y = icmp ne i32 %5, 1718185841
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
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #33 ; 4 uses
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
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !37  ; 6 uses
  %i.aq = zext i8 %i.ap to i32                    ; 3 uses
  switch i8 %i.ap, label %bb.o [
    i8 -2, label %bb.m
    i8 -1, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ar = sext i32 %i.am to i64
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !37
  %i.au = getelementptr i8, ptr %i.ao, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !37
  %i.aw = add nsw i32 %.0121125, 4
  %i.ax = getelementptr i8, ptr %i.ao, i64 3
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !37
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.az = sext i32 %i.am to i64
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !37
  %i.bc = getelementptr i8, ptr %i.ao, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !37
  %i.be = getelementptr i8, ptr %i.ao, i64 3
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !37
  %i.bg = add nsw i32 %.0121125, 5
  %i.bh = getelementptr i8, ptr %i.ao, i64 4
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !37
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
  %.sroa.31.0.copyload = load i8, ptr %.sroa.31.0..sroa_idx, align 1, !tbaa !37
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
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !37
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
  store i8 %.sroa.31.1, ptr %.sroa.31.0..sroa_idx51, align 1, !tbaa !37
  br label %bb.u

bb.u:                                             ; preds = %bb.k, %bb.t, %bb.j
  %.2123 = phi i32 [ %.0121125, %bb.j ], [ %.1122, %bb.t ], [ %.0121125, %bb.k ]
  %.sroa.31.2 = phi i8 [ %.sroa.31.0126, %bb.j ], [ %.sroa.31.1, %bb.t ], [ %.sroa.31.0126, %bb.k ] ; 2 uses
  %.sroa.22.2 = phi i8 [ %.sroa.22.0127, %bb.j ], [ %.sroa.22.1, %bb.t ], [ %.sroa.22.0127, %bb.k ] ; 2 uses
  %.sroa.13.2 = phi i8 [ %.sroa.13.0128, %bb.j ], [ %.sroa.13.1, %bb.t ], [ %.sroa.13.0128, %bb.k ] ; 2 uses
  %.sroa.0.2 = phi i8 [ %.sroa.0.0129, %bb.j ], [ %.sroa.0.1, %bb.t ], [ %.sroa.0.0129, %bb.k ] ; 2 uses
  %.2 = phi i32 [ %i.ak, %bb.j ], [ %.1, %bb.t ], [ 0, %bb.k ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv ; 4 uses
  store i8 %.sroa.0.2, ptr %i.dd, align 1, !tbaa !37
  %i.de = getelementptr i8, ptr %i.dd, i64 1
  store i8 %.sroa.13.2, ptr %i.de, align 1, !tbaa !37
  %i.df = getelementptr i8, ptr %i.dd, i64 2
  store i8 %.sroa.22.2, ptr %i.df, align 1, !tbaa !37
  br i1 %i.ah, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dg = getelementptr i8, ptr %i.dd, i64 3
  store i8 %.sroa.31.2, ptr %i.dg, align 1, !tbaa !37
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.ai ; 2 uses
  %i.dh = trunc nuw i64 %indvars.iv.next to i32
  %i.di = icmp sgt i32 %i.ac, %i.dh
  br i1 %i.di, label %bb.i, label %.loopexit, !llvm.loop !246
end_hunk_0
begin_hunk_1_@_ZN4pbrt5Image4ReadENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEENS_13ColorEncodingE:bb.a
  %indvars.iv.next.i.i811.7 = add nuw nsw i64 %indvars.iv.i.i810, 8 ; 2 uses
  %exitcond.not.i.i812.7 = icmp eq i64 %indvars.iv.next.i.i811.7, %.pre.i805
  br i1 %exitcond.not.i.i812.7, label %._crit_edge.thread.i.i813, label %.lr.ph.i.i809, !llvm.loop !598

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i798: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i817, %bb.fh
  %i.aho = phi i64 [ %i.afg, %bb.fh ], [ %.pre18.i820, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i817 ] ; 12 uses
  %.not.i799 = icmp eq i64 %i.aho, 0
  br i1 %.not.i799, label %._crit_edge.i803, label %iter.check1912

iter.check1912:                                   ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i798
  %i.ahp = load ptr, ptr %i.xb, align 8, !tbaa !84, !noalias !732 ; 12 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %41, i64 128
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !84, !noalias !732 ; 12 uses
  %min.iters.check1897 = icmp ult i64 %i.aho, 4
  %i.ahs = ptrtoaddr ptr %i.ahr to i64
  %i.aht = ptrtoaddr ptr %i.ahp to i64
  %i.ahu = sub i64 %i.ahs, %i.aht
  %diff.check1896 = icmp ugt i64 %i.ahu, -128
  %or.cond2446 = select i1 %min.iters.check1897, i1 true, i1 %diff.check1896
  br i1 %or.cond2446, label %vec.epilog.scalar.ph1913.preheader, label %vector.main.loop.iter.check1898

vector.main.loop.iter.check1898:                  ; preds = %iter.check1912
  %min.iters.check1899 = icmp ult i64 %i.aho, 32
  br i1 %min.iters.check1899, label %vec.epilog.ph1916, label %vector.ph1900

vector.ph1900:                                    ; preds = %vector.main.loop.iter.check1898
  %i.ahv = and i64 %i.aho, 28
  %n.vec1901 = and i64 %i.aho, -32                ; 4 uses
  br label %vector.body1902

vector.body1902:                                  ; preds = %vector.ph1900, %vector.body1902
  %index1903 = phi i64 [ 0, %vector.ph1900 ], [ %index.next1908, %vector.body1902 ] ; 3 uses
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %index1903 ; 4 uses
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %index1903 ; 4 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 32
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahx, i64 64
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahx, i64 96
  %wide.load1904 = load <8 x float>, ptr %i.ahx, align 4, !tbaa !79, !noalias !732
  %wide.load1905 = load <8 x float>, ptr %i.ahy, align 4, !tbaa !79, !noalias !732
  %wide.load1906 = load <8 x float>, ptr %i.ahz, align 4, !tbaa !79, !noalias !732
  %wide.load1907 = load <8 x float>, ptr %i.aia, align 4, !tbaa !79, !noalias !732
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahw, i64 32
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahw, i64 64
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ahw, i64 96
  store <8 x float> %wide.load1904, ptr %i.ahw, align 4, !tbaa !79, !noalias !732
  store <8 x float> %wide.load1905, ptr %i.aib, align 4, !tbaa !79, !noalias !732
  store <8 x float> %wide.load1906, ptr %i.aic, align 4, !tbaa !79, !noalias !732
  store <8 x float> %wide.load1907, ptr %i.aid, align 4, !tbaa !79, !noalias !732
  %index.next1908 = add nuw i64 %index1903, 32    ; 2 uses
  %i.aie = icmp eq i64 %index.next1908, %n.vec1901
  br i1 %i.aie, label %middle.block1909, label %vector.body1902, !llvm.loop !599

middle.block1909:                                 ; preds = %vector.body1902
  %cmp.n1910 = icmp eq i64 %i.aho, %n.vec1901
  br i1 %cmp.n1910, label %._crit_edge.i803, label %vec.epilog.iter.check1914

vec.epilog.iter.check1914:                        ; preds = %middle.block1909
  %min.epilog.iters.check1915 = icmp eq i64 %i.ahv, 0
  br i1 %min.epilog.iters.check1915, label %vec.epilog.scalar.ph1913.preheader, label %vec.epilog.ph1916, !prof !156

vec.epilog.ph1916:                                ; preds = %vector.main.loop.iter.check1898, %vec.epilog.iter.check1914
  %vec.epilog.resume.val1911 = phi i64 [ %n.vec1901, %vec.epilog.iter.check1914 ], [ 0, %vector.main.loop.iter.check1898 ]
  %n.vec1917 = and i64 %i.aho, -4                 ; 3 uses
  br label %vec.epilog.vector.body1918

vec.epilog.vector.body1918:                       ; preds = %vec.epilog.vector.body1918, %vec.epilog.ph1916
  %index1919 = phi i64 [ %vec.epilog.resume.val1911, %vec.epilog.ph1916 ], [ %index.next1921, %vec.epilog.vector.body1918 ] ; 3 uses
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %index1919
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %index1919
  %wide.load1920 = load <4 x float>, ptr %i.aig, align 4, !tbaa !79, !noalias !732
  store <4 x float> %wide.load1920, ptr %i.aif, align 4, !tbaa !79, !noalias !732
  %index.next1921 = add nuw i64 %index1919, 4     ; 2 uses
  %i.aih = icmp eq i64 %index.next1921, %n.vec1917
  br i1 %i.aih, label %vec.epilog.middle.block1922, label %vec.epilog.vector.body1918, !llvm.loop !600

vec.epilog.middle.block1922:                      ; preds = %vec.epilog.vector.body1918
  %cmp.n1923 = icmp eq i64 %i.aho, %n.vec1917
  br i1 %cmp.n1923, label %._crit_edge.i803, label %vec.epilog.scalar.ph1913.preheader

vec.epilog.scalar.ph1913.preheader:               ; preds = %iter.check1912, %vec.epilog.iter.check1914, %vec.epilog.middle.block1922
  %.017.i801.ph = phi i64 [ 0, %iter.check1912 ], [ %n.vec1901, %vec.epilog.iter.check1914 ], [ %n.vec1917, %vec.epilog.middle.block1922 ] ; 4 uses
  %i.aii = sub i64 %i.aho, %.017.i801.ph
  %xtraiter2536 = and i64 %i.aii, 7               ; 2 uses
  %lcmp.mod2537.not = icmp eq i64 %xtraiter2536, 0
  br i1 %lcmp.mod2537.not, label %vec.epilog.scalar.ph1913.prol.loopexit, label %vec.epilog.scalar.ph1913.prol

vec.epilog.scalar.ph1913.prol:                    ; preds = %vec.epilog.scalar.ph1913.preheader, %vec.epilog.scalar.ph1913.prol
  %.017.i801.prol = phi i64 [ %i.aim, %vec.epilog.scalar.ph1913.prol ], [ %.017.i801.ph, %vec.epilog.scalar.ph1913.preheader ] ; 3 uses
  %prol.iter2538 = phi i64 [ %prol.iter2538.next, %vec.epilog.scalar.ph1913.prol ], [ 0, %vec.epilog.scalar.ph1913.preheader ]
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %.017.i801.prol
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %.017.i801.prol
  %i.ail = load float, ptr %i.aik, align 4, !tbaa !79, !noalias !732
  store float %i.ail, ptr %i.aij, align 4, !tbaa !79, !noalias !732
  %i.aim = add nuw i64 %.017.i801.prol, 1         ; 2 uses
  %prol.iter2538.next = add i64 %prol.iter2538, 1 ; 2 uses
  %prol.iter2538.cmp.not = icmp eq i64 %prol.iter2538.next, %xtraiter2536
  br i1 %prol.iter2538.cmp.not, label %vec.epilog.scalar.ph1913.prol.loopexit, label %vec.epilog.scalar.ph1913.prol, !llvm.loop !601

vec.epilog.scalar.ph1913.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1913.prol, %vec.epilog.scalar.ph1913.preheader
  %.017.i801.unr = phi i64 [ %.017.i801.ph, %vec.epilog.scalar.ph1913.preheader ], [ %i.aim, %vec.epilog.scalar.ph1913.prol ]
  %i.ain = sub i64 %.017.i801.ph, %i.aho
  %i.aio = icmp ugt i64 %i.ain, -8
  br i1 %i.aio, label %._crit_edge.i803, label %vec.epilog.scalar.ph1913

._crit_edge.i803:                                 ; preds = %vec.epilog.scalar.ph1913.prol.loopexit, %vec.epilog.scalar.ph1913, %middle.block1909, %vec.epilog.middle.block1922, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i798
  store i64 %i.aho, ptr %i.afe, align 8, !tbaa !116, !noalias !732
  br label %_ZN4pbrt5ImageaSEOS0_.exit.i

vec.epilog.scalar.ph1913:                         ; preds = %vec.epilog.scalar.ph1913.prol.loopexit, %vec.epilog.scalar.ph1913
  %.017.i801 = phi i64 [ %i.aju, %vec.epilog.scalar.ph1913 ], [ %.017.i801.unr, %vec.epilog.scalar.ph1913.prol.loopexit ] ; 10 uses
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %.017.i801
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %.017.i801
  %i.air = load float, ptr %i.aiq, align 4, !tbaa !79, !noalias !732
  store float %i.air, ptr %i.aip, align 4, !tbaa !79, !noalias !732
  %i.ais = add nuw i64 %.017.i801, 1              ; 2 uses
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %i.ais
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %i.ais
  %i.aiv = load float, ptr %i.aiu, align 4, !tbaa !79, !noalias !732
  store float %i.aiv, ptr %i.ait, align 4, !tbaa !79, !noalias !732
  %i.aiw = add nuw i64 %.017.i801, 2              ; 2 uses
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %i.aiw
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %i.aiw
  %i.aiz = load float, ptr %i.aiy, align 4, !tbaa !79, !noalias !732
  store float %i.aiz, ptr %i.aix, align 4, !tbaa !79, !noalias !732
  %i.aja = add nuw i64 %.017.i801, 3              ; 2 uses
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %i.aja
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %i.aja
  %i.ajd = load float, ptr %i.ajc, align 4, !tbaa !79, !noalias !732
  store float %i.ajd, ptr %i.ajb, align 4, !tbaa !79, !noalias !732
  %i.aje = add nuw i64 %.017.i801, 4              ; 2 uses
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %i.aje
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %i.aje
  %i.ajh = load float, ptr %i.ajg, align 4, !tbaa !79, !noalias !732
  store float %i.ajh, ptr %i.ajf, align 4, !tbaa !79, !noalias !732
  %i.aji = add nuw i64 %.017.i801, 5              ; 2 uses
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %i.aji
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %i.aji
  %i.ajl = load float, ptr %i.ajk, align 4, !tbaa !79, !noalias !732
  store float %i.ajl, ptr %i.ajj, align 4, !tbaa !79, !noalias !732
  %i.ajm = add nuw i64 %.017.i801, 6              ; 2 uses
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %i.ajm
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %i.ajm
  %i.ajp = load float, ptr %i.ajo, align 4, !tbaa !79, !noalias !732
  store float %i.ajp, ptr %i.ajn, align 4, !tbaa !79, !noalias !732
  %i.ajq = add nuw i64 %.017.i801, 7              ; 2 uses
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %i.ajq
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %i.ajq
  %i.ajt = load float, ptr %i.ajs, align 4, !tbaa !79, !noalias !732
  store float %i.ajt, ptr %i.ajr, align 4, !tbaa !79, !noalias !732
  %i.aju = add nuw i64 %.017.i801, 8              ; 2 uses
  %exitcond.not.i802.7 = icmp eq i64 %i.aju, %i.aho
  br i1 %exitcond.not.i802.7, label %._crit_edge.i803, label %vec.epilog.scalar.ph1913, !llvm.loop !602

_ZN4pbrt5ImageaSEOS0_.exit.i:                     ; preds = %._crit_edge.i803, %bb.fg
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %41) #32, !noalias !732
  %i.ajv = load ptr, ptr %42, align 8, !tbaa !48, !noalias !732 ; 2 uses
  %i.ajw = icmp eq ptr %i.ajv, %i.xs
  br i1 %i.ajw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223.i: ; preds = %_ZN4pbrt5ImageaSEOS0_.exit.i
  %i.ajx = load i64, ptr %i.xs, align 8, !tbaa !37, !noalias !732
  %i.ajy = add i64 %i.ajx, 1
  call void @_ZdlPvm(ptr noundef %i.ajv, i64 noundef %i.ajy) #35, !noalias !732
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.i: ; preds = %_ZN4pbrt5ImageaSEOS0_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #32, !noalias !732
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #32, !noalias !732
  %i.ajz = load i32, ptr %i.r, align 4, !tbaa !38, !noalias !732 ; 2 uses
  %.not533.i = icmp eq i32 %i.ajz, 0
  %i.aka = load i32, ptr %i.q, align 4, !noalias !732
  %.not534.i = icmp eq i32 %i.aka, 0
  %or.cond.i171 = select i1 %.not533.i, i1 true, i1 %.not534.i
  br i1 %or.cond.i171, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit.i, label %.preheader509.preheader.i

.preheader509.preheader.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.i
  %i.akb = load ptr, ptr %40, align 8, !tbaa !197, !noalias !732
  %i.akc = and i64 %spec.select, 144115188075855871
  %i.akd = inttoptr i64 %i.akc to ptr             ; 2 uses
  %i.ake = lshr i64 %spec.select, 57
  %i.akf = trunc nuw nsw i64 %i.ake to i32
  br label %.preheader509.i

.preheader509.i:                                  ; preds = %._crit_edge.i, %.preheader509.preheader.i
  %i.akg = phi i32 [ %i.ajz, %.preheader509.preheader.i ], [ %i.ald, %._crit_edge.i ]
  %i.akh = phi i32 [ 1, %.preheader509.preheader.i ], [ %i.ale, %._crit_edge.i ]
  %indvars.iv545.i = phi i64 [ 0, %.preheader509.preheader.i ], [ %indvars.iv.next546.i, %._crit_edge.i ] ; 2 uses
  %.sroa.0471.0515.i = phi ptr [ %i.akb, %.preheader509.preheader.i ], [ %.sroa.0471.1.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.not535.i = icmp eq i32 %i.akh, 0
  br i1 %.not535.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader509.i
  %.sroa.2470.0.insert.shift.i = shl nuw i64 %indvars.iv545.i, 32 ; 3 uses
  switch i32 %i.akf, label %.lr.ph.i.split [
    i32 1, label %_ZNK4pbrt13ColorEncoding13ToFloatLinearEf.exit.i.us
    i32 2, label %.lr.ph.i.split.us978
  ]

_ZNK4pbrt13ColorEncoding13ToFloatLinearEf.exit.i.us: ; preds = %.lr.ph.i, %bb.fj
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.fj ], [ 0, %.lr.ph.i ] ; 2 uses
  %.sroa.0471.1513.i.us = phi ptr [ %i.akk, %bb.fj ], [ %.sroa.0471.0515.i, %.lr.ph.i ] ; 2 uses
  %123 = load i16, ptr %.sroa.0471.1513.i.us, align 1, !noalias !732
  %124 = call i16 @llvm.bswap.i16(i16 %123)
  %i.aki = uitofp i16 %124 to float
  %i.akj = fdiv float %i.aki, 6.553500e+04
  %.sroa.0469.0.insert.insert.i.us = add nuw nsw i64 %indvars.iv.i.us, %.sroa.2470.0.insert.shift.i
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %39, i64 %.sroa.0469.0.insert.insert.i.us, i32 noundef 0, float noundef %i.akj)
          to label %bb.fj unwind label %.split.us, !noalias !732

bb.fj:                                            ; preds = %_ZNK4pbrt13ColorEncoding13ToFloatLinearEf.exit.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %.sroa.0471.1513.i.us, i64 2 ; 2 uses
  %i.akl = load i32, ptr %i.q, align 4, !tbaa !38, !noalias !732 ; 2 uses
  %i.akm = zext i32 %i.akl to i64
  %i.akn = icmp samesign ult i64 %indvars.iv.next.i.us, %i.akm
  br i1 %i.akn, label %_ZNK4pbrt13ColorEncoding13ToFloatLinearEf.exit.i.us, label %._crit_edge.loopexit.i, !llvm.loop !603

.split.us:                                        ; preds = %_ZNK4pbrt13ColorEncoding13ToFloatLinearEf.exit.i.us
  %i.ako = landingpad { ptr, i32 }
          cleanup
  br label %.split

.lr.ph.i.split.us978:                             ; preds = %.lr.ph.i, %bb.fk
  %indvars.iv.i.us979 = phi i64 [ %indvars.iv.next.i.us984, %bb.fk ], [ 0, %.lr.ph.i ] ; 2 uses
  %.sroa.0471.1513.i.us980 = phi ptr [ %i.aks, %bb.fk ], [ %.sroa.0471.0515.i, %.lr.ph.i ] ; 2 uses
  %125 = load i16, ptr %.sroa.0471.1513.i.us980, align 1, !noalias !732
  %126 = call i16 @llvm.bswap.i16(i16 %125)
  %i.akp = uitofp i16 %126 to float
  %i.akq = fdiv float %i.akp, 6.553500e+04
  %i.akr = invoke noundef float @_ZNK4pbrt17sRGBColorEncoding13ToFloatLinearEf(ptr noundef nonnull align 1 dereferenceable(1) %i.akd, float noundef %i.akq)
          to label %_ZNK4pbrt13ColorEncoding13ToFloatLinearEf.exit.i.us981 unwind label %.split.split.us, !noalias !732

_ZNK4pbrt13ColorEncoding13ToFloatLinearEf.exit.i.us981: ; preds = %.lr.ph.i.split.us978
  %.sroa.0469.0.insert.insert.i.us983 = add nuw nsw i64 %indvars.iv.i.us979, %.sroa.2470.0.insert.shift.i
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %39, i64 %.sroa.0469.0.insert.insert.i.us983, i32 noundef 0, float noundef %i.akr)
          to label %bb.fk unwind label %.split.split.us, !noalias !732

bb.fk:                                            ; preds = %_ZNK4pbrt13ColorEncoding13ToFloatLinearEf.exit.i.us981
  %indvars.iv.next.i.us984 = add nuw nsw i64 %indvars.iv.i.us979, 1 ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %.sroa.0471.1513.i.us980, i64 2 ; 2 uses
  %i.akt = load i32, ptr %i.q, align 4, !tbaa !38, !noalias !732 ; 2 uses
  %i.aku = zext i32 %i.akt to i64
  %i.akv = icmp samesign ult i64 %indvars.iv.next.i.us984, %i.aku
  br i1 %i.akv, label %.lr.ph.i.split.us978, label %._crit_edge.loopexit.i, !llvm.loop !603

.split.split.us:                                  ; preds = %_ZNK4pbrt13ColorEncoding13ToFloatLinearEf.exit.i.us981, %.lr.ph.i.split.us978
  %i.akw = landingpad { ptr, i32 }
          cleanup
  br label %.split

bb.fl:                                            ; preds = %._crit_edge.i.i217.i
  %i.akx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.fm:                                            ; preds = %bb.fb, %_ZN4pstd3pmr21polymorphic_allocatorIhE15allocate_objectIhEEPT_m.exit.i.i874, %._crit_edge.thread.i.i848, %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt4HalfEE15allocate_objectIS3_EEPT_m.exit.i.i839, %._crit_edge.thread.i.i813, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i804, %bb.ey
  %i.aky = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %41) #32, !noalias !732
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %.pn171.i = phi { ptr, i32 } [ %i.aky, %bb.fm ], [ %i.akx, %bb.fl ]
  %i.akz = load ptr, ptr %42, align 8, !tbaa !48, !noalias !732 ; 2 uses
  %i.ala = icmp eq ptr %i.akz, %i.xs
  br i1 %i.ala, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226.i: ; preds = %bb.fn
  %i.alb = load i64, ptr %i.xs, align 8, !tbaa !37, !noalias !732
  %i.alc = add i64 %i.alb, 1
  call void @_ZdlPvm(ptr noundef %i.akz, i64 noundef %i.alc) #35, !noalias !732
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228.i: ; preds = %bb.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #32, !noalias !732
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #32, !noalias !732
  br label %.split

._crit_edge.loopexit.i:                           ; preds = %bb.fk, %bb.fj, %bb.fo
  %.us-phi976 = phi ptr [ %i.akk, %bb.fj ], [ %i.alk, %bb.fo ], [ %i.aks, %bb.fk ]
  %.us-phi977 = phi i32 [ %i.akl, %bb.fj ], [ %i.all, %bb.fo ], [ %i.akt, %bb.fk ]
  %.pre.i172 = load i32, ptr %i.r, align 4, !tbaa !38, !noalias !732
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader509.i
  %i.ald = phi i32 [ %i.akg, %.preheader509.i ], [ %.pre.i172, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ale = phi i32 [ 0, %.preheader509.i ], [ %.us-phi977, %._crit_edge.loopexit.i ]
  %.sroa.0471.1.lcssa.i = phi ptr [ %.sroa.0471.0515.i, %.preheader509.i ], [ %.us-phi976, %._crit_edge.loopexit.i ]
  %indvars.iv.next546.i = add nuw nsw i64 %indvars.iv545.i, 1 ; 2 uses
  %i.alf = zext i32 %i.ald to i64
  %i.alg = icmp samesign ult i64 %indvars.iv.next546.i, %i.alf
  br i1 %i.alg, label %.preheader509.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit.i, !llvm.loop !604

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %bb.fo
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.fo ], [ 0, %.lr.ph.i ] ; 2 uses
  %.sroa.0471.1513.i = phi ptr [ %i.alk, %bb.fo ], [ %.sroa.0471.0515.i, %.lr.ph.i ] ; 2 uses
  %127 = load i16, ptr %.sroa.0471.1513.i, align 1, !noalias !732
  %128 = call i16 @llvm.bswap.i16(i16 %127)
  %i.alh = uitofp i16 %128 to float
  %i.ali = fdiv float %i.alh, 6.553500e+04
  %i.alj = invoke noundef float @_ZNK4pbrt18GammaColorEncoding13ToFloatLinearEf(ptr noundef nonnull align 4 dereferenceable(5124) %i.akd, float noundef %i.ali)
          to label %_ZNK4pbrt13ColorEncoding13ToFloatLinearEf.exit.i unwind label %.split.split, !noalias !732

_ZNK4pbrt13ColorEncoding13ToFloatLinearEf.exit.i: ; preds = %.lr.ph.i.split
  %.sroa.0469.0.insert.insert.i = add nuw nsw i64 %indvars.iv.i, %.sroa.2470.0.insert.shift.i
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %39, i64 %.sroa.0469.0.insert.insert.i, i32 noundef 0, float noundef %i.alj)
          to label %bb.fo unwind label %.split.split, !noalias !732

bb.fo:                                            ; preds = %_ZNK4pbrt13ColorEncoding13ToFloatLinearEf.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %.sroa.0471.1513.i, i64 2 ; 2 uses
  %i.all = load i32, ptr %i.q, align 4, !tbaa !38, !noalias !732 ; 2 uses
  %i.alm = zext i32 %i.all to i64
  %i.aln = icmp samesign ult i64 %indvars.iv.next.i, %i.alm
  br i1 %i.aln, label %.lr.ph.i.split, label %._crit_edge.loopexit.i, !llvm.loop !603

.split.split:                                     ; preds = %_ZNK4pbrt13ColorEncoding13ToFloatLinearEf.exit.i, %.lr.ph.i.split
  %i.alo = landingpad { ptr, i32 }
          cleanup
  br label %.split

._crit_edge.i.i231.i:                             ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #32, !noalias !732
  %i.alp = load i32, ptr %i.q, align 4, !tbaa !38, !noalias !732
  %i.alq = load i32, ptr %i.r, align 4, !tbaa !38, !noalias !732
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #32, !noalias !732
  %i.alr = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 6 uses
  store ptr %i.alr, ptr %45, align 8, !tbaa !43, !noalias !732
  store i8 89, ptr %i.alr, align 8, !tbaa !37, !noalias !732
  %i.als = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 1, ptr %i.als, align 8, !tbaa !46, !noalias !732
  %i.alt = getelementptr inbounds nuw i8, ptr %45, i64 17
  store i8 0, ptr %i.alt, align 1, !tbaa !37, !noalias !732
  store i64 %spec.select, ptr %46, align 8, !tbaa !77, !noalias !732
  %i.alu = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #32, !noalias !732
  %.sroa.2468.0.insert.ext.i = zext i32 %i.alq to i64
  %.sroa.2468.0.insert.shift.i = shl nuw i64 %.sroa.2468.0.insert.ext.i, 32
  %.sroa.0467.0.insert.ext.i = zext i32 %i.alp to i64
  %.sroa.0467.0.insert.insert.i = or disjoint i64 %.sroa.2468.0.insert.shift.i, %.sroa.0467.0.insert.ext.i
  %i.alv = ptrtoint ptr %i.alu to i64
  invoke void @_ZN4pbrt5ImageC2ENS_11PixelFormatENS_6Point2IiEEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_13ColorEncodingENS4_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(152) %44, i32 noundef 0, i64 %.sroa.0467.0.insert.insert.i, ptr nonnull %45, i64 1, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %46, i64 %i.alv)
          to label %bb.fp unwind label %bb.gh, !noalias !732

bb.fp:                                            ; preds = %._crit_edge.i.i231.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %39, ptr noundef nonnull align 8 dereferenceable(152) %44, i64 12, i1 false), !noalias !732
  %i.alw = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.alx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS6_EEEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(32) %i.wr, ptr noundef nonnull align 8 dereferenceable(32) %i.alw)
          to label %.noexc235.i unwind label %bb.gi, !noalias !732 ; 0 uses

.noexc235.i:                                      ; preds = %bb.fp
  %i.aly = getelementptr inbounds nuw i8, ptr %39, i64 48
  %i.alz = getelementptr inbounds nuw i8, ptr %44, i64 48
  %i.ama = load i64, ptr %i.alz, align 8, !tbaa !77, !noalias !732
  store i64 %i.ama, ptr %i.aly, align 8, !tbaa !77, !noalias !732
  %i.amb = getelementptr inbounds nuw i8, ptr %44, i64 56
  %i.amc = load ptr, ptr %i.wv, align 8, !tbaa !126, !noalias !732 ; 3 uses
  %i.amd = load ptr, ptr %i.amb, align 8, !tbaa !126, !noalias !732
  %i.ame = icmp eq ptr %i.amc, %i.amd
  br i1 %i.ame, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %.noexc235.i
  %i.amf = getelementptr inbounds nuw i8, ptr %44, i64 64 ; 2 uses
  %i.amg = load ptr, ptr %i.wx, align 8, !tbaa !197, !noalias !732
  %i.amh = load ptr, ptr %i.amf, align 8, !tbaa !197, !noalias !732
  store ptr %i.amh, ptr %i.wx, align 8, !tbaa !197, !noalias !732
  store ptr %i.amg, ptr %i.amf, align 8, !tbaa !197, !noalias !732
  %i.ami = getelementptr inbounds nuw i8, ptr %39, i64 72 ; 2 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %44, i64 72 ; 2 uses
  %i.amk = load <2 x i64>, ptr %i.amj, align 8, !tbaa !47, !noalias !732
  %i.aml = load <2 x i64>, ptr %i.ami, align 8, !tbaa !47, !noalias !732
  store <2 x i64> %i.amk, ptr %i.ami, align 8, !tbaa !47, !noalias !732
  store <2 x i64> %i.aml, ptr %i.amj, align 8, !tbaa !47, !noalias !732
  br label %.noexc236.i

bb.fr:                                            ; preds = %.noexc235.i
  %i.amm = getelementptr inbounds nuw i8, ptr %39, i64 80 ; 4 uses
  store i64 0, ptr %i.amm, align 8, !tbaa !124, !noalias !732
  %i.amn = getelementptr inbounds nuw i8, ptr %44, i64 80 ; 3 uses
  %i.amo = load i64, ptr %i.amn, align 8, !tbaa !124, !noalias !732 ; 4 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %39, i64 72 ; 3 uses
  %i.amq = load i64, ptr %i.amp, align 8, !tbaa !125, !noalias !732
  %.not.i.i778 = icmp ult i64 %i.amq, %i.amo
  br i1 %.not.i.i778, label %_ZN4pstd3pmr21polymorphic_allocatorIhE15allocate_objectIhEEPT_m.exit.i.i785, label %_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEE7reserveEm.exit.i779

_ZN4pstd3pmr21polymorphic_allocatorIhE15allocate_objectIhEEPT_m.exit.i.i785: ; preds = %bb.fr
  %i.amr = load ptr, ptr %i.amc, align 8, !tbaa !120, !noalias !732
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 16
  %i.amt = load ptr, ptr %i.ams, align 8, !noalias !732
  %i.amu = invoke noundef ptr %i.amt(ptr noundef nonnull align 8 dereferenceable(8) %i.amc, i64 noundef %i.amo, i64 noundef 1)
          to label %.noexc794 unwind label %bb.gi, !inline_history !747 ; 2 uses

.noexc794:                                        ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIhE15allocate_objectIhEEPT_m.exit.i.i785
  %i.amv = load i64, ptr %i.amm, align 8, !tbaa !124, !noalias !732
  %.not13.i.i786 = icmp eq i64 %i.amv, 0
  br i1 %.not13.i.i786, label %._crit_edge.i.i790, label %.lr.ph.i.i787

._crit_edge.i.i790:                               ; preds = %.lr.ph.i.i787, %.noexc794
  %i.amw = load ptr, ptr %i.wx, align 8, !tbaa !76, !noalias !732 ; 2 uses
  %.not.i.i.i.i.i791 = icmp eq ptr %i.amw, null
  br i1 %.not.i.i.i.i.i791, label %_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i792, label %bb.fs

bb.fs:                                            ; preds = %._crit_edge.i.i790
  %i.amx = load i64, ptr %i.amp, align 8, !tbaa !125, !noalias !732
  %i.amy = load ptr, ptr %i.wv, align 8, !tbaa !126, !noalias !732 ; 2 uses
  %i.amz = load ptr, ptr %i.amy, align 8, !tbaa !120, !noalias !732
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 24
  %i.anb = load ptr, ptr %i.ana, align 8, !noalias !732
  invoke void %i.anb(ptr noundef nonnull align 8 dereferenceable(8) %i.amy, ptr noundef nonnull %i.amw, i64 noundef %i.amx, i64 noundef 1)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i792 unwind label %bb.gi, !inline_history !747

_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i792: ; preds = %bb.fs, %._crit_edge.i.i790
  store i64 %i.amo, ptr %i.amp, align 8, !tbaa !125, !noalias !732
  store ptr %i.amu, ptr %i.wx, align 8, !tbaa !76, !noalias !732
  %.pre.i793 = load i64, ptr %i.amn, align 8, !tbaa !124, !noalias !732
  br label %_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEE7reserveEm.exit.i779

.lr.ph.i.i787:                                    ; preds = %.noexc794, %.lr.ph.i.i787
  %indvars.iv.i.i788 = phi i64 [ %indvars.iv.next.i.i789, %.lr.ph.i.i787 ], [ 0, %.noexc794 ] ; 3 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amu, i64 %indvars.iv.i.i788
  %i.and = load ptr, ptr %i.wx, align 8, !tbaa !76, !noalias !732
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 %indvars.iv.i.i788
  %i.anf = load i8, ptr %i.ane, align 1, !tbaa !37, !noalias !732
  store i8 %i.anf, ptr %i.anc, align 1, !tbaa !37, !noalias !732
  %indvars.iv.next.i.i789 = add nuw nsw i64 %indvars.iv.i.i788, 1 ; 2 uses
  %i.ang = load i64, ptr %i.amm, align 8, !tbaa !124, !noalias !732
  %i.anh = icmp ugt i64 %i.ang, %indvars.iv.next.i.i789
  br i1 %i.anh, label %.lr.ph.i.i787, label %._crit_edge.i.i790, !llvm.loop !9

_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEE7reserveEm.exit.i779: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i792, %bb.fr
  %i.ani = phi i64 [ %i.amo, %bb.fr ], [ %.pre.i793, %_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i792 ]
  %.not.i780 = icmp eq i64 %i.ani, 0
  br i1 %.not.i780, label %._crit_edge.i783, label %.lr.ph.i781

.lr.ph.i781:                                      ; preds = %_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEE7reserveEm.exit.i779
  %i.anj = getelementptr inbounds nuw i8, ptr %44, i64 64
  br label %bb.ft

._crit_edge.i783:                                 ; preds = %bb.ft, %_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEE7reserveEm.exit.i779
  %.lcssa.i784 = phi i64 [ 0, %_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEE7reserveEm.exit.i779 ], [ %i.anq, %bb.ft ]
  store i64 %.lcssa.i784, ptr %i.amm, align 8, !tbaa !124, !noalias !732
  br label %.noexc236.i

bb.ft:                                            ; preds = %bb.ft, %.lr.ph.i781
  %.017.i782 = phi i64 [ 0, %.lr.ph.i781 ], [ %i.anp, %bb.ft ] ; 3 uses
  %i.ank = load ptr, ptr %i.wx, align 8, !tbaa !76, !noalias !732
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 %.017.i782
  %i.anm = load ptr, ptr %i.anj, align 8, !tbaa !76, !noalias !732
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 %.017.i782
  %i.ano = load i8, ptr %i.ann, align 1, !tbaa !37, !noalias !732
  store i8 %i.ano, ptr %i.anl, align 1, !tbaa !37, !noalias !732
  %i.anp = add nuw i64 %.017.i782, 1              ; 2 uses
  %i.anq = load i64, ptr %i.amn, align 8, !tbaa !124, !noalias !732 ; 2 uses
  %i.anr = icmp ult i64 %i.anp, %i.anq
  br i1 %i.anr, label %bb.ft, label %._crit_edge.i783, !llvm.loop !19

.noexc236.i:                                      ; preds = %._crit_edge.i783, %bb.fq
  %i.ans = getelementptr inbounds nuw i8, ptr %44, i64 88
  %i.ant = load ptr, ptr %i.wy, align 8, !tbaa !123, !noalias !732 ; 3 uses
  %i.anu = load ptr, ptr %i.ans, align 8, !tbaa !123, !noalias !732
  %i.anv = icmp eq ptr %i.ant, %i.anu
  br i1 %i.anv, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %.noexc236.i
  %i.anw = getelementptr inbounds nuw i8, ptr %44, i64 96 ; 2 uses
  %i.anx = load ptr, ptr %i.wz, align 8, !tbaa !198, !noalias !732
  %i.any = load ptr, ptr %i.anw, align 8, !tbaa !198, !noalias !732
  store ptr %i.any, ptr %i.wz, align 8, !tbaa !198, !noalias !732
  store ptr %i.anx, ptr %i.anw, align 8, !tbaa !198, !noalias !732
  %i.anz = getelementptr inbounds nuw i8, ptr %39, i64 104 ; 2 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %44, i64 104 ; 2 uses
  %i.aob = load <2 x i64>, ptr %i.aoa, align 8, !tbaa !47, !noalias !732
  %i.aoc = load <2 x i64>, ptr %i.anz, align 8, !tbaa !47, !noalias !732
  store <2 x i64> %i.aob, ptr %i.anz, align 8, !tbaa !47, !noalias !732
  store <2 x i64> %i.aoc, ptr %i.aoa, align 8, !tbaa !47, !noalias !732
  br label %.noexc237.i

bb.fv:                                            ; preds = %.noexc236.i
  %i.aod = getelementptr inbounds nuw i8, ptr %39, i64 112 ; 3 uses
  store i64 0, ptr %i.aod, align 8, !tbaa !121, !noalias !732
  %i.aoe = getelementptr inbounds nuw i8, ptr %44, i64 112 ; 2 uses
  %i.aof = load i64, ptr %i.aoe, align 8, !tbaa !121, !noalias !732 ; 4 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %39, i64 104 ; 3 uses
  %i.aoh = load i64, ptr %i.aog, align 8, !tbaa !122, !noalias !732
  %.not.i.i743 = icmp ult i64 %i.aoh, %i.aof
  br i1 %.not.i.i743, label %bb.fw, label %_ZN4pstd6vectorIN4pbrt4HalfENS_3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i744

bb.fw:                                            ; preds = %bb.fv
  %i.aoi = shl i64 %i.aof, 1                      ; 2 uses
  %i.aoj = icmp eq i64 %i.aoi, 0
  br i1 %i.aoj, label %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt4HalfEE15allocate_objectIS3_EEPT_m.exit.i.thread.i772, label %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt4HalfEE15allocate_objectIS3_EEPT_m.exit.i.i750

_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt4HalfEE15allocate_objectIS3_EEPT_m.exit.i.thread.i772: ; preds = %bb.fw
  %.pre.i28.i774 = load ptr, ptr %i.wz, align 8, !tbaa !80, !noalias !732
  br label %._crit_edge.i.i767

_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt4HalfEE15allocate_objectIS3_EEPT_m.exit.i.i750: ; preds = %bb.fw
  %i.aok = load ptr, ptr %i.ant, align 8, !tbaa !120, !noalias !732
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 16
  %i.aom = load ptr, ptr %i.aol, align 8, !noalias !732
end_hunk_1
begin_hunk_2_@_ZN4pbrt5Image4ReadENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEENS_13ColorEncodingE:bb.a
vec.epilog.scalar.ph2401:                         ; preds = %vec.epilog.scalar.ph2401.prol.loopexit, %vec.epilog.scalar.ph2401
  %.017.i623 = phi i64 [ %i.bnj, %vec.epilog.scalar.ph2401 ], [ %.017.i623.unr, %vec.epilog.scalar.ph2401.prol.loopexit ] ; 10 uses
  %i.bme = getelementptr inbounds nuw [4 x i8], ptr %i.ble, i64 %.017.i623
  %i.bmf = getelementptr inbounds nuw [4 x i8], ptr %i.blg, i64 %.017.i623
  %i.bmg = load float, ptr %i.bmf, align 4, !tbaa !79, !noalias !732
  store float %i.bmg, ptr %i.bme, align 4, !tbaa !79, !noalias !732
  %i.bmh = add nuw i64 %.017.i623, 1              ; 2 uses
  %i.bmi = getelementptr inbounds nuw [4 x i8], ptr %i.ble, i64 %i.bmh
  %i.bmj = getelementptr inbounds nuw [4 x i8], ptr %i.blg, i64 %i.bmh
  %i.bmk = load float, ptr %i.bmj, align 4, !tbaa !79, !noalias !732
  store float %i.bmk, ptr %i.bmi, align 4, !tbaa !79, !noalias !732
  %i.bml = add nuw i64 %.017.i623, 2              ; 2 uses
  %i.bmm = getelementptr inbounds nuw [4 x i8], ptr %i.ble, i64 %i.bml
  %i.bmn = getelementptr inbounds nuw [4 x i8], ptr %i.blg, i64 %i.bml
  %i.bmo = load float, ptr %i.bmn, align 4, !tbaa !79, !noalias !732
  store float %i.bmo, ptr %i.bmm, align 4, !tbaa !79, !noalias !732
  %i.bmp = add nuw i64 %.017.i623, 3              ; 2 uses
  %i.bmq = getelementptr inbounds nuw [4 x i8], ptr %i.ble, i64 %i.bmp
  %i.bmr = getelementptr inbounds nuw [4 x i8], ptr %i.blg, i64 %i.bmp
  %i.bms = load float, ptr %i.bmr, align 4, !tbaa !79, !noalias !732
  store float %i.bms, ptr %i.bmq, align 4, !tbaa !79, !noalias !732
  %i.bmt = add nuw i64 %.017.i623, 4              ; 2 uses
  %i.bmu = getelementptr inbounds nuw [4 x i8], ptr %i.ble, i64 %i.bmt
  %i.bmv = getelementptr inbounds nuw [4 x i8], ptr %i.blg, i64 %i.bmt
  %i.bmw = load float, ptr %i.bmv, align 4, !tbaa !79, !noalias !732
  store float %i.bmw, ptr %i.bmu, align 4, !tbaa !79, !noalias !732
  %i.bmx = add nuw i64 %.017.i623, 5              ; 2 uses
  %i.bmy = getelementptr inbounds nuw [4 x i8], ptr %i.ble, i64 %i.bmx
  %i.bmz = getelementptr inbounds nuw [4 x i8], ptr %i.blg, i64 %i.bmx
  %i.bna = load float, ptr %i.bmz, align 4, !tbaa !79, !noalias !732
  store float %i.bna, ptr %i.bmy, align 4, !tbaa !79, !noalias !732
  %i.bnb = add nuw i64 %.017.i623, 6              ; 2 uses
  %i.bnc = getelementptr inbounds nuw [4 x i8], ptr %i.ble, i64 %i.bnb
  %i.bnd = getelementptr inbounds nuw [4 x i8], ptr %i.blg, i64 %i.bnb
  %i.bne = load float, ptr %i.bnd, align 4, !tbaa !79, !noalias !732
  store float %i.bne, ptr %i.bnc, align 4, !tbaa !79, !noalias !732
  %i.bnf = add nuw i64 %.017.i623, 7              ; 2 uses
  %i.bng = getelementptr inbounds nuw [4 x i8], ptr %i.ble, i64 %i.bnf
  %i.bnh = getelementptr inbounds nuw [4 x i8], ptr %i.blg, i64 %i.bnf
  %i.bni = load float, ptr %i.bnh, align 4, !tbaa !79, !noalias !732
  store float %i.bni, ptr %i.bng, align 4, !tbaa !79, !noalias !732
  %i.bnj = add nuw i64 %.017.i623, 8              ; 2 uses
  %exitcond.not.i624.7 = icmp eq i64 %i.bnj, %i.bld
  br i1 %exitcond.not.i624.7, label %._crit_edge.i625, label %vec.epilog.scalar.ph2401, !llvm.loop !636

_ZN4pbrt5ImageaSEOS0_.exit269.i:                  ; preds = %._crit_edge.i625, %bb.he
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %49) #32, !noalias !732
  %i.bnk = load ptr, ptr %i.bbg, align 8, !tbaa !48, !noalias !732 ; 2 uses
  %i.bnl = icmp eq ptr %i.bnk, %i.bbh
  br i1 %i.bnl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270.i: ; preds = %_ZN4pbrt5ImageaSEOS0_.exit269.i
  %i.bnm = load i64, ptr %i.bbh, align 8, !tbaa !37, !noalias !732
  %i.bnn = add i64 %i.bnm, 1
  call void @_ZdlPvm(ptr noundef %i.bnk, i64 noundef %i.bnn) #35, !noalias !732
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.i: ; preds = %_ZN4pbrt5ImageaSEOS0_.exit269.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270.i
  %i.bno = load ptr, ptr %i.bbc, align 8, !tbaa !48, !noalias !732 ; 2 uses
  %i.bnp = icmp eq ptr %i.bno, %i.bbd
  br i1 %i.bnp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.i
  %i.bnq = load i64, ptr %i.bbd, align 8, !tbaa !37, !noalias !732
  %i.bnr = add i64 %i.bnq, 1
  call void @_ZdlPvm(ptr noundef %i.bno, i64 noundef %i.bnr) #35, !noalias !732
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.1.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270.1.i
  %i.bns = load ptr, ptr %i.bay, align 8, !tbaa !48, !noalias !732 ; 2 uses
  %i.bnt = icmp eq ptr %i.bns, %i.baz
  br i1 %i.bnt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.2.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.1.i
  %i.bnu = load i64, ptr %i.baz, align 8, !tbaa !37, !noalias !732
  %i.bnv = add i64 %i.bnu, 1
  call void @_ZdlPvm(ptr noundef %i.bns, i64 noundef %i.bnv) #35, !noalias !732
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.2.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270.2.i
  %i.bnw = load ptr, ptr %50, align 8, !tbaa !48, !noalias !732 ; 2 uses
  %i.bnx = icmp eq ptr %i.bnw, %i.bav
  br i1 %i.bnx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270.3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270.3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.2.i
  %i.bny = load i64, ptr %i.bav, align 8, !tbaa !37, !noalias !732
  %i.bnz = add i64 %i.bny, 1
  call void @_ZdlPvm(ptr noundef %i.bnw, i64 noundef %i.bnz) #35, !noalias !732
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270.3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #32, !noalias !732
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #32, !noalias !732
  %i.boa = load i32, ptr %i.r, align 4, !tbaa !38, !noalias !732 ; 2 uses
  %.not538.i = icmp eq i32 %i.boa, 0
  br i1 %.not538.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit349.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.3.i
  %i.bob = load ptr, ptr %47, align 8, !tbaa !197, !noalias !732
  %.pre571.i = load i32, ptr %i.q, align 4, !tbaa !38, !noalias !732
  %i.boc = and i64 %spec.select, 144115188075855871
  %i.bod = inttoptr i64 %i.boc to ptr             ; 8 uses
  %i.boe = lshr i64 %spec.select, 57
  %i.bof = trunc nuw nsw i64 %i.boe to i32        ; 4 uses
  br label %.preheader.i174

.preheader.i174:                                  ; preds = %._crit_edge529.i, %.preheader.lr.ph.i
  %i.bog = phi i32 [ %i.boa, %.preheader.lr.ph.i ], [ %i.bpb, %._crit_edge529.i ]
  %i.boh = phi i32 [ %.pre571.i, %.preheader.lr.ph.i ], [ %i.bpc, %._crit_edge529.i ]
  %indvars.iv563.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next564.i, %._crit_edge529.i ] ; 2 uses
  %.sroa.0443.0531.i = phi ptr [ %i.bob, %.preheader.lr.ph.i ], [ %.sroa.0443.1.lcssa.i, %._crit_edge529.i ] ; 2 uses
  %.not539.i = icmp eq i32 %i.boh, 0
  br i1 %.not539.i, label %._crit_edge529.i, label %.lr.ph528.i

.lr.ph528.i:                                      ; preds = %.preheader.i174
  %.sroa.2442.0.insert.shift.i = shl nuw i64 %indvars.iv563.i, 32
  br label %bb.hl

bb.hh:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit349.i, %.invoke.i
  %i.boi = landingpad { ptr, i32 }
          cleanup
  br label %bb.la

bb.hi:                                            ; preds = %._crit_edge.i.i249.i
  %i.boj = landingpad { ptr, i32 }
          cleanup
  br label %bb.hk

bb.hj:                                            ; preds = %bb.gz, %_ZN4pstd3pmr21polymorphic_allocatorIhE15allocate_objectIhEEPT_m.exit.i.i696, %._crit_edge.thread.i.i670, %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt4HalfEE15allocate_objectIS3_EEPT_m.exit.i.i661, %._crit_edge.thread.i.i635, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i626, %bb.gw
  %i.bok = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %49) #32, !noalias !732
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %.pn197.i = phi { ptr, i32 } [ %i.bok, %bb.hj ], [ %i.boj, %bb.hi ]
  %i.bol = load ptr, ptr %i.bbg, align 8, !tbaa !48, !noalias !732 ; 2 uses
  %i.bom = icmp eq ptr %i.bol, %i.bbh
  br i1 %i.bom, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273.i: ; preds = %bb.hk
  %i.bon = load i64, ptr %i.bbh, align 8, !tbaa !37, !noalias !732
  %i.boo = add i64 %i.bon, 1
  call void @_ZdlPvm(ptr noundef %i.bol, i64 noundef %i.boo) #35, !noalias !732
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.i: ; preds = %bb.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273.i
  %i.bop = load ptr, ptr %i.bbc, align 8, !tbaa !48, !noalias !732 ; 2 uses
  %i.boq = icmp eq ptr %i.bop, %i.bbd
  br i1 %i.boq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.i
  %i.bor = load i64, ptr %i.bbd, align 8, !tbaa !37, !noalias !732
  %i.bos = add i64 %i.bor, 1
  call void @_ZdlPvm(ptr noundef %i.bop, i64 noundef %i.bos) #35, !noalias !732
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.1.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273.1.i
  %i.bot = load ptr, ptr %i.bay, align 8, !tbaa !48, !noalias !732 ; 2 uses
  %i.bou = icmp eq ptr %i.bot, %i.baz
  br i1 %i.bou, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.2.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.1.i
  %i.bov = load i64, ptr %i.baz, align 8, !tbaa !37, !noalias !732
  %i.bow = add i64 %i.bov, 1
  call void @_ZdlPvm(ptr noundef %i.bot, i64 noundef %i.bow) #35, !noalias !732
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.2.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273.2.i
  %i.box = load ptr, ptr %50, align 8, !tbaa !48, !noalias !732 ; 2 uses
  %i.boy = icmp eq ptr %i.box, %i.bav
  br i1 %i.boy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273.3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273.3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.2.i
  %i.boz = load i64, ptr %i.bav, align 8, !tbaa !37, !noalias !732
  %i.bpa = add i64 %i.boz, 1
  call void @_ZdlPvm(ptr noundef %i.box, i64 noundef %i.bpa) #35, !noalias !732
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273.3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #32, !noalias !732
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #32, !noalias !732
  br label %bb.la

._crit_edge529.loopexit.i:                        ; preds = %bb.ib
  %.pre572.i = load i32, ptr %i.r, align 4, !tbaa !38, !noalias !732
  br label %._crit_edge529.i

._crit_edge529.i:                                 ; preds = %._crit_edge529.loopexit.i, %.preheader.i174
  %i.bpb = phi i32 [ %i.bog, %.preheader.i174 ], [ %.pre572.i, %._crit_edge529.loopexit.i ] ; 2 uses
  %i.bpc = phi i32 [ 0, %.preheader.i174 ], [ %i.bpy, %._crit_edge529.loopexit.i ]
  %.sroa.0443.1.lcssa.i = phi ptr [ %.sroa.0443.0531.i, %.preheader.i174 ], [ %i.bpx, %._crit_edge529.loopexit.i ]
  %indvars.iv.next564.i = add nuw nsw i64 %indvars.iv563.i, 1 ; 2 uses
  %i.bpd = zext i32 %i.bpb to i64
  %i.bpe = icmp samesign ult i64 %indvars.iv.next564.i, %i.bpd
  br i1 %i.bpe, label %.preheader.i174, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit349.i, !llvm.loop !637

bb.hl:                                            ; preds = %bb.ib, %.lr.ph528.i
  %indvars.iv560.i = phi i64 [ 0, %.lr.ph528.i ], [ %indvars.iv.next561.i, %bb.ib ] ; 2 uses
  %.sroa.0443.1526.i = phi ptr [ %.sroa.0443.0531.i, %.lr.ph528.i ], [ %i.bpx, %bb.ib ] ; 2 uses
  %129 = load <4 x i16>, ptr %.sroa.0443.1526.i, align 1, !noalias !732
  %i.bpf = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %129)
  %i.bpg = uitofp <4 x i16> %i.bpf to <4 x float> ; 4 uses
  %i.bph = extractelement <4 x float> %i.bpg, i64 0
  %i.bpi = fdiv float %i.bph, 6.553500e+04        ; 3 uses
  %i.bpj = extractelement <4 x float> %i.bpg, i64 1
  %i.bpk = fdiv float %i.bpj, 6.553500e+04        ; 3 uses
  %i.bpl = extractelement <4 x float> %i.bpg, i64 2
  %i.bpm = fdiv float %i.bpl, 6.553500e+04        ; 3 uses
  %i.bpn = extractelement <4 x float> %i.bpg, i64 3
  %i.bpo = fdiv float %i.bpn, 6.553500e+04        ; 3 uses
  %.sroa.0441.0.insert.insert.i = add nuw nsw i64 %indvars.iv560.i, %.sroa.2442.0.insert.shift.i ; 4 uses
  switch i32 %i.bof, label %bb.hn [
    i32 1, label %bb.ho
    i32 2, label %bb.hm
  ]

bb.hm:                                            ; preds = %bb.hl
  %i.bpp = invoke noundef float @_ZNK4pbrt17sRGBColorEncoding13ToFloatLinearEf(ptr noundef nonnull align 1 dereferenceable(1) %i.bod, float noundef %i.bpi)
          to label %bb.ho unwind label %bb.ic, !noalias !732

bb.hn:                                            ; preds = %bb.hl
  %i.bpq = invoke noundef float @_ZNK4pbrt18GammaColorEncoding13ToFloatLinearEf(ptr noundef nonnull align 4 dereferenceable(5124) %i.bod, float noundef %i.bpi)
          to label %bb.ho unwind label %bb.ic, !noalias !732

bb.ho:                                            ; preds = %bb.hn, %bb.hm, %bb.hl
  %.0.i.i.i279.i = phi float [ %i.bpp, %bb.hm ], [ %i.bpi, %bb.hl ], [ %i.bpq, %bb.hn ]
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %39, i64 %.sroa.0441.0.insert.insert.i, i32 noundef 0, float noundef %.0.i.i.i279.i)
          to label %bb.hp unwind label %bb.ic, !noalias !732

bb.hp:                                            ; preds = %bb.ho
  switch i32 %i.bof, label %bb.hr [
    i32 1, label %bb.hs
    i32 2, label %bb.hq
  ]

bb.hq:                                            ; preds = %bb.hp
  %i.bpr = invoke noundef float @_ZNK4pbrt17sRGBColorEncoding13ToFloatLinearEf(ptr noundef nonnull align 1 dereferenceable(1) %i.bod, float noundef %i.bpk)
          to label %bb.hs unwind label %bb.ic, !noalias !732

bb.hr:                                            ; preds = %bb.hp
  %i.bps = invoke noundef float @_ZNK4pbrt18GammaColorEncoding13ToFloatLinearEf(ptr noundef nonnull align 4 dereferenceable(5124) %i.bod, float noundef %i.bpk)
          to label %bb.hs unwind label %bb.ic, !noalias !732

bb.hs:                                            ; preds = %bb.hr, %bb.hq, %bb.hp
  %.0.i.i.i279.1.i = phi float [ %i.bpr, %bb.hq ], [ %i.bpk, %bb.hp ], [ %i.bps, %bb.hr ]
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %39, i64 %.sroa.0441.0.insert.insert.i, i32 noundef 1, float noundef %.0.i.i.i279.1.i)
          to label %bb.ht unwind label %bb.ic, !noalias !732

bb.ht:                                            ; preds = %bb.hs
  switch i32 %i.bof, label %bb.hv [
    i32 1, label %bb.hw
    i32 2, label %bb.hu
  ]

bb.hu:                                            ; preds = %bb.ht
  %i.bpt = invoke noundef float @_ZNK4pbrt17sRGBColorEncoding13ToFloatLinearEf(ptr noundef nonnull align 1 dereferenceable(1) %i.bod, float noundef %i.bpm)
          to label %bb.hw unwind label %bb.ic, !noalias !732

bb.hv:                                            ; preds = %bb.ht
  %i.bpu = invoke noundef float @_ZNK4pbrt18GammaColorEncoding13ToFloatLinearEf(ptr noundef nonnull align 4 dereferenceable(5124) %i.bod, float noundef %i.bpm)
          to label %bb.hw unwind label %bb.ic, !noalias !732

bb.hw:                                            ; preds = %bb.hv, %bb.hu, %bb.ht
  %.0.i.i.i279.2.i = phi float [ %i.bpt, %bb.hu ], [ %i.bpm, %bb.ht ], [ %i.bpu, %bb.hv ]
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %39, i64 %.sroa.0441.0.insert.insert.i, i32 noundef 2, float noundef %.0.i.i.i279.2.i)
          to label %bb.hx unwind label %bb.ic, !noalias !732

bb.hx:                                            ; preds = %bb.hw
  switch i32 %i.bof, label %bb.hz [
    i32 1, label %bb.ia
    i32 2, label %bb.hy
  ]

bb.hy:                                            ; preds = %bb.hx
  %i.bpv = invoke noundef float @_ZNK4pbrt17sRGBColorEncoding13ToFloatLinearEf(ptr noundef nonnull align 1 dereferenceable(1) %i.bod, float noundef %i.bpo)
          to label %bb.ia unwind label %bb.ic, !noalias !732

bb.hz:                                            ; preds = %bb.hx
  %i.bpw = invoke noundef float @_ZNK4pbrt18GammaColorEncoding13ToFloatLinearEf(ptr noundef nonnull align 4 dereferenceable(5124) %i.bod, float noundef %i.bpo)
          to label %bb.ia unwind label %bb.ic, !noalias !732

bb.ia:                                            ; preds = %bb.hz, %bb.hy, %bb.hx
  %.0.i.i.i279.3.i = phi float [ %i.bpv, %bb.hy ], [ %i.bpo, %bb.hx ], [ %i.bpw, %bb.hz ]
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %39, i64 %.sroa.0441.0.insert.insert.i, i32 noundef 3, float noundef %.0.i.i.i279.3.i)
          to label %bb.ib unwind label %bb.ic, !noalias !732

bb.ib:                                            ; preds = %bb.ia
  %indvars.iv.next561.i = add nuw nsw i64 %indvars.iv560.i, 1 ; 2 uses
  %i.bpx = getelementptr inbounds nuw i8, ptr %.sroa.0443.1526.i, i64 8 ; 2 uses
  %i.bpy = load i32, ptr %i.q, align 4, !tbaa !38, !noalias !732 ; 2 uses
  %i.bpz = zext i32 %i.bpy to i64
  %i.bqa = icmp samesign ult i64 %indvars.iv.next561.i, %i.bpz
  br i1 %i.bqa, label %bb.hl, label %._crit_edge529.loopexit.i, !llvm.loop !638

bb.ic:                                            ; preds = %bb.ia, %bb.hz, %bb.hy, %bb.hw, %bb.hv, %bb.hu, %bb.hs, %bb.hr, %bb.hq, %bb.ho, %bb.hn, %bb.hm
  %i.bqb = landingpad { ptr, i32 }
          cleanup
  br label %bb.la

._crit_edge.i.i283.i:                             ; preds = %bb.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #32, !noalias !732
  %i.bqc = load i32, ptr %i.q, align 4, !tbaa !38, !noalias !732
  %i.bqd = load i32, ptr %i.r, align 4, !tbaa !38, !noalias !732
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #32, !noalias !732
  %i.bqe = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 6 uses
  store ptr %i.bqe, ptr %53, align 8, !tbaa !43, !noalias !732
  store i8 82, ptr %i.bqe, align 8, !tbaa !37, !noalias !732
  %i.bqf = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i64 1, ptr %i.bqf, align 8, !tbaa !46, !noalias !732
  %i.bqg = getelementptr inbounds nuw i8, ptr %53, i64 17
  store i8 0, ptr %i.bqg, align 1, !tbaa !37, !noalias !732
  %i.bqh = getelementptr inbounds nuw i8, ptr %53, i64 32 ; 3 uses
  %i.bqi = getelementptr inbounds nuw i8, ptr %53, i64 48 ; 6 uses
  store ptr %i.bqi, ptr %i.bqh, align 8, !tbaa !43, !noalias !732
  store i8 71, ptr %i.bqi, align 8, !tbaa !37, !noalias !732
  %i.bqj = getelementptr inbounds nuw i8, ptr %53, i64 40
  store i64 1, ptr %i.bqj, align 8, !tbaa !46, !noalias !732
  %i.bqk = getelementptr inbounds nuw i8, ptr %53, i64 49
  store i8 0, ptr %i.bqk, align 1, !tbaa !37, !noalias !732
  %i.bql = getelementptr inbounds nuw i8, ptr %53, i64 64 ; 3 uses
  %i.bqm = getelementptr inbounds nuw i8, ptr %53, i64 80 ; 6 uses
  store ptr %i.bqm, ptr %i.bql, align 8, !tbaa !43, !noalias !732
  store i8 66, ptr %i.bqm, align 8, !tbaa !37, !noalias !732
  %i.bqn = getelementptr inbounds nuw i8, ptr %53, i64 72
  store i64 1, ptr %i.bqn, align 8, !tbaa !46, !noalias !732
  %i.bqo = getelementptr inbounds nuw i8, ptr %53, i64 81
  store i8 0, ptr %i.bqo, align 1, !tbaa !37, !noalias !732
  store i64 0, ptr %54, align 8, !tbaa !77, !noalias !732
  %i.bqp = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #32, !noalias !732
  %.sroa.2440.0.insert.ext.i = zext i32 %i.bqd to i64
  %.sroa.2440.0.insert.shift.i = shl nuw i64 %.sroa.2440.0.insert.ext.i, 32
  %.sroa.0439.0.insert.ext.i = zext i32 %i.bqc to i64
  %.sroa.0439.0.insert.insert.i = or disjoint i64 %.sroa.2440.0.insert.shift.i, %.sroa.0439.0.insert.ext.i
  %i.bqq = ptrtoint ptr %i.bqp to i64
  invoke void @_ZN4pbrt5ImageC2ENS_11PixelFormatENS_6Point2IiEEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_13ColorEncodingENS4_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(152) %52, i32 noundef 1, i64 %.sroa.0439.0.insert.insert.i, ptr nonnull %53, i64 3, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %54, i64 %i.bqq)
          to label %bb.id unwind label %bb.io, !noalias !732

bb.id:                                            ; preds = %._crit_edge.i.i283.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %39, ptr noundef nonnull align 8 dereferenceable(152) %52, i64 12, i1 false), !noalias !732
  %i.bqr = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.bqs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS6_EEEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(32) %i.wr, ptr noundef nonnull align 8 dereferenceable(32) %i.bqr)
          to label %.noexc295.i unwind label %bb.ip, !noalias !732 ; 0 uses

.noexc295.i:                                      ; preds = %bb.id
  %i.bqt = getelementptr inbounds nuw i8, ptr %39, i64 48
  %i.bqu = getelementptr inbounds nuw i8, ptr %52, i64 48
  %i.bqv = load i64, ptr %i.bqu, align 8, !tbaa !77, !noalias !732
  store i64 %i.bqv, ptr %i.bqt, align 8, !tbaa !77, !noalias !732
  %i.bqw = getelementptr inbounds nuw i8, ptr %52, i64 56
  %i.bqx = load ptr, ptr %i.wv, align 8, !tbaa !126, !noalias !732 ; 3 uses
  %i.bqy = load ptr, ptr %i.bqw, align 8, !tbaa !126, !noalias !732
  %i.bqz = icmp eq ptr %i.bqx, %i.bqy
  br i1 %i.bqz, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %.noexc295.i
  %i.bra = getelementptr inbounds nuw i8, ptr %52, i64 64 ; 2 uses
  %i.brb = load ptr, ptr %i.wx, align 8, !tbaa !197, !noalias !732
  %i.brc = load ptr, ptr %i.bra, align 8, !tbaa !197, !noalias !732
  store ptr %i.brc, ptr %i.wx, align 8, !tbaa !197, !noalias !732
  store ptr %i.brb, ptr %i.bra, align 8, !tbaa !197, !noalias !732
  %i.brd = getelementptr inbounds nuw i8, ptr %39, i64 72 ; 2 uses
  %i.bre = getelementptr inbounds nuw i8, ptr %52, i64 72 ; 2 uses
  %i.brf = load <2 x i64>, ptr %i.bre, align 8, !tbaa !47, !noalias !732
  %i.brg = load <2 x i64>, ptr %i.brd, align 8, !tbaa !47, !noalias !732
  store <2 x i64> %i.brf, ptr %i.brd, align 8, !tbaa !47, !noalias !732
  store <2 x i64> %i.brg, ptr %i.bre, align 8, !tbaa !47, !noalias !732
  br label %.noexc296.i

bb.if:                                            ; preds = %.noexc295.i
  %i.brh = getelementptr inbounds nuw i8, ptr %39, i64 80 ; 4 uses
  store i64 0, ptr %i.brh, align 8, !tbaa !124, !noalias !732
  %i.bri = getelementptr inbounds nuw i8, ptr %52, i64 80 ; 3 uses
  %i.brj = load i64, ptr %i.bri, align 8, !tbaa !124, !noalias !732 ; 4 uses
  %i.brk = getelementptr inbounds nuw i8, ptr %39, i64 72 ; 3 uses
  %i.brl = load i64, ptr %i.brk, align 8, !tbaa !125, !noalias !732
  %.not.i.i600 = icmp ult i64 %i.brl, %i.brj
  br i1 %.not.i.i600, label %_ZN4pstd3pmr21polymorphic_allocatorIhE15allocate_objectIhEEPT_m.exit.i.i607, label %_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEE7reserveEm.exit.i601

_ZN4pstd3pmr21polymorphic_allocatorIhE15allocate_objectIhEEPT_m.exit.i.i607: ; preds = %bb.if
  %i.brm = load ptr, ptr %i.bqx, align 8, !tbaa !120, !noalias !732
  %i.brn = getelementptr inbounds nuw i8, ptr %i.brm, i64 16
  %i.bro = load ptr, ptr %i.brn, align 8, !noalias !732
  %i.brp = invoke noundef ptr %i.bro(ptr noundef nonnull align 8 dereferenceable(8) %i.bqx, i64 noundef %i.brj, i64 noundef 1)
          to label %.noexc616 unwind label %bb.ip, !inline_history !747 ; 2 uses

.noexc616:                                        ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIhE15allocate_objectIhEEPT_m.exit.i.i607
  %i.brq = load i64, ptr %i.brh, align 8, !tbaa !124, !noalias !732
  %.not13.i.i608 = icmp eq i64 %i.brq, 0
  br i1 %.not13.i.i608, label %._crit_edge.i.i612, label %.lr.ph.i.i609

._crit_edge.i.i612:                               ; preds = %.lr.ph.i.i609, %.noexc616
  %i.brr = load ptr, ptr %i.wx, align 8, !tbaa !76, !noalias !732 ; 2 uses
  %.not.i.i.i.i.i613 = icmp eq ptr %i.brr, null
  br i1 %.not.i.i.i.i.i613, label %_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i614, label %bb.ig

bb.ig:                                            ; preds = %._crit_edge.i.i612
  %i.brs = load i64, ptr %i.brk, align 8, !tbaa !125, !noalias !732
  %i.brt = load ptr, ptr %i.wv, align 8, !tbaa !126, !noalias !732 ; 2 uses
  %i.bru = load ptr, ptr %i.brt, align 8, !tbaa !120, !noalias !732
  %i.brv = getelementptr inbounds nuw i8, ptr %i.bru, i64 24
  %i.brw = load ptr, ptr %i.brv, align 8, !noalias !732
end_hunk_2
begin_hunk_3_@_ZN4pbrt5Image4ReadENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEENS_13ColorEncodingE:bb.a
  %.017.i534.ph = phi i64 [ 0, %iter.check2278 ], [ %n.vec2267, %vec.epilog.iter.check2280 ], [ %n.vec2283, %vec.epilog.middle.block2288 ] ; 4 uses
  %i.cbc = sub i64 %i.cai, %.017.i534.ph
  %xtraiter2572 = and i64 %i.cbc, 7               ; 2 uses
  %lcmp.mod2573.not = icmp eq i64 %xtraiter2572, 0
  br i1 %lcmp.mod2573.not, label %vec.epilog.scalar.ph2279.prol.loopexit, label %vec.epilog.scalar.ph2279.prol

vec.epilog.scalar.ph2279.prol:                    ; preds = %vec.epilog.scalar.ph2279.preheader, %vec.epilog.scalar.ph2279.prol
  %.017.i534.prol = phi i64 [ %i.cbg, %vec.epilog.scalar.ph2279.prol ], [ %.017.i534.ph, %vec.epilog.scalar.ph2279.preheader ] ; 3 uses
  %prol.iter2574 = phi i64 [ %prol.iter2574.next, %vec.epilog.scalar.ph2279.prol ], [ 0, %vec.epilog.scalar.ph2279.preheader ]
  %i.cbd = getelementptr inbounds nuw [4 x i8], ptr %i.caj, i64 %.017.i534.prol
  %i.cbe = getelementptr inbounds nuw [4 x i8], ptr %i.cal, i64 %.017.i534.prol
  %i.cbf = load float, ptr %i.cbe, align 4, !tbaa !79, !noalias !732
  store float %i.cbf, ptr %i.cbd, align 4, !tbaa !79, !noalias !732
  %i.cbg = add nuw i64 %.017.i534.prol, 1         ; 2 uses
  %prol.iter2574.next = add i64 %prol.iter2574, 1 ; 2 uses
  %prol.iter2574.cmp.not = icmp eq i64 %prol.iter2574.next, %xtraiter2572
  br i1 %prol.iter2574.cmp.not, label %vec.epilog.scalar.ph2279.prol.loopexit, label %vec.epilog.scalar.ph2279.prol, !llvm.loop !653

vec.epilog.scalar.ph2279.prol.loopexit:           ; preds = %vec.epilog.scalar.ph2279.prol, %vec.epilog.scalar.ph2279.preheader
  %.017.i534.unr = phi i64 [ %.017.i534.ph, %vec.epilog.scalar.ph2279.preheader ], [ %i.cbg, %vec.epilog.scalar.ph2279.prol ]
  %i.cbh = sub i64 %.017.i534.ph, %i.cai
  %i.cbi = icmp ugt i64 %i.cbh, -8
  br i1 %i.cbi, label %._crit_edge.i536, label %vec.epilog.scalar.ph2279

._crit_edge.i536:                                 ; preds = %vec.epilog.scalar.ph2279.prol.loopexit, %vec.epilog.scalar.ph2279, %middle.block2275, %vec.epilog.middle.block2288, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i531
  store i64 %i.cai, ptr %i.bxy, align 8, !tbaa !116, !noalias !732
  br label %_ZN4pbrt5ImageaSEOS0_.exit299.i

vec.epilog.scalar.ph2279:                         ; preds = %vec.epilog.scalar.ph2279.prol.loopexit, %vec.epilog.scalar.ph2279
  %.017.i534 = phi i64 [ %i.cco, %vec.epilog.scalar.ph2279 ], [ %.017.i534.unr, %vec.epilog.scalar.ph2279.prol.loopexit ] ; 10 uses
  %i.cbj = getelementptr inbounds nuw [4 x i8], ptr %i.caj, i64 %.017.i534
  %i.cbk = getelementptr inbounds nuw [4 x i8], ptr %i.cal, i64 %.017.i534
  %i.cbl = load float, ptr %i.cbk, align 4, !tbaa !79, !noalias !732
  store float %i.cbl, ptr %i.cbj, align 4, !tbaa !79, !noalias !732
  %i.cbm = add nuw i64 %.017.i534, 1              ; 2 uses
  %i.cbn = getelementptr inbounds nuw [4 x i8], ptr %i.caj, i64 %i.cbm
  %i.cbo = getelementptr inbounds nuw [4 x i8], ptr %i.cal, i64 %i.cbm
  %i.cbp = load float, ptr %i.cbo, align 4, !tbaa !79, !noalias !732
  store float %i.cbp, ptr %i.cbn, align 4, !tbaa !79, !noalias !732
  %i.cbq = add nuw i64 %.017.i534, 2              ; 2 uses
  %i.cbr = getelementptr inbounds nuw [4 x i8], ptr %i.caj, i64 %i.cbq
  %i.cbs = getelementptr inbounds nuw [4 x i8], ptr %i.cal, i64 %i.cbq
  %i.cbt = load float, ptr %i.cbs, align 4, !tbaa !79, !noalias !732
  store float %i.cbt, ptr %i.cbr, align 4, !tbaa !79, !noalias !732
  %i.cbu = add nuw i64 %.017.i534, 3              ; 2 uses
  %i.cbv = getelementptr inbounds nuw [4 x i8], ptr %i.caj, i64 %i.cbu
  %i.cbw = getelementptr inbounds nuw [4 x i8], ptr %i.cal, i64 %i.cbu
  %i.cbx = load float, ptr %i.cbw, align 4, !tbaa !79, !noalias !732
  store float %i.cbx, ptr %i.cbv, align 4, !tbaa !79, !noalias !732
  %i.cby = add nuw i64 %.017.i534, 4              ; 2 uses
  %i.cbz = getelementptr inbounds nuw [4 x i8], ptr %i.caj, i64 %i.cby
  %i.cca = getelementptr inbounds nuw [4 x i8], ptr %i.cal, i64 %i.cby
  %i.ccb = load float, ptr %i.cca, align 4, !tbaa !79, !noalias !732
  store float %i.ccb, ptr %i.cbz, align 4, !tbaa !79, !noalias !732
  %i.ccc = add nuw i64 %.017.i534, 5              ; 2 uses
  %i.ccd = getelementptr inbounds nuw [4 x i8], ptr %i.caj, i64 %i.ccc
  %i.cce = getelementptr inbounds nuw [4 x i8], ptr %i.cal, i64 %i.ccc
  %i.ccf = load float, ptr %i.cce, align 4, !tbaa !79, !noalias !732
  store float %i.ccf, ptr %i.ccd, align 4, !tbaa !79, !noalias !732
  %i.ccg = add nuw i64 %.017.i534, 6              ; 2 uses
  %i.cch = getelementptr inbounds nuw [4 x i8], ptr %i.caj, i64 %i.ccg
  %i.cci = getelementptr inbounds nuw [4 x i8], ptr %i.cal, i64 %i.ccg
  %i.ccj = load float, ptr %i.cci, align 4, !tbaa !79, !noalias !732
  store float %i.ccj, ptr %i.cch, align 4, !tbaa !79, !noalias !732
  %i.cck = add nuw i64 %.017.i534, 7              ; 2 uses
  %i.ccl = getelementptr inbounds nuw [4 x i8], ptr %i.caj, i64 %i.cck
  %i.ccm = getelementptr inbounds nuw [4 x i8], ptr %i.cal, i64 %i.cck
  %i.ccn = load float, ptr %i.ccm, align 4, !tbaa !79, !noalias !732
  store float %i.ccn, ptr %i.ccl, align 4, !tbaa !79, !noalias !732
  %i.cco = add nuw i64 %.017.i534, 8              ; 2 uses
  %exitcond.not.i535.7 = icmp eq i64 %i.cco, %i.cai
  br i1 %exitcond.not.i535.7, label %._crit_edge.i536, label %vec.epilog.scalar.ph2279, !llvm.loop !654

_ZN4pbrt5ImageaSEOS0_.exit299.i:                  ; preds = %._crit_edge.i536, %bb.il
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %52) #32, !noalias !732
  %i.ccp = load ptr, ptr %i.bql, align 8, !tbaa !48, !noalias !732 ; 2 uses
  %i.ccq = icmp eq ptr %i.ccp, %i.bqm
  br i1 %i.ccq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.i: ; preds = %_ZN4pbrt5ImageaSEOS0_.exit299.i
  %i.ccr = load i64, ptr %i.bqm, align 8, !tbaa !37, !noalias !732
  %i.ccs = add i64 %i.ccr, 1
  call void @_ZdlPvm(ptr noundef %i.ccp, i64 noundef %i.ccs) #35, !noalias !732
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.i: ; preds = %_ZN4pbrt5ImageaSEOS0_.exit299.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.i
  %i.cct = load ptr, ptr %i.bqh, align 8, !tbaa !48, !noalias !732 ; 2 uses
  %i.ccu = icmp eq ptr %i.cct, %i.bqi
  br i1 %i.ccu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.i
  %i.ccv = load i64, ptr %i.bqi, align 8, !tbaa !37, !noalias !732
  %i.ccw = add i64 %i.ccv, 1
  call void @_ZdlPvm(ptr noundef %i.cct, i64 noundef %i.ccw) #35, !noalias !732
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.1.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.1.i
  %i.ccx = load ptr, ptr %53, align 8, !tbaa !48, !noalias !732 ; 2 uses
  %i.ccy = icmp eq ptr %i.ccx, %i.bqe
  br i1 %i.ccy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.2.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.1.i
  %i.ccz = load i64, ptr %i.bqe, align 8, !tbaa !37, !noalias !732
  %i.cda = add i64 %i.ccz, 1
  call void @_ZdlPvm(ptr noundef %i.ccx, i64 noundef %i.cda) #35, !noalias !732
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.2.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #32, !noalias !732
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #32, !noalias !732
  %i.cdb = load i32, ptr %i.r, align 4, !tbaa !38, !noalias !732 ; 2 uses
  %.not536.i = icmp eq i32 %i.cdb, 0
  br i1 %.not536.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit349.i, label %.preheader507.lr.ph.i

.preheader507.lr.ph.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.2.i
  %i.cdc = load ptr, ptr %47, align 8, !tbaa !197, !noalias !732
  %.pre569.i = load i32, ptr %i.q, align 4, !tbaa !38, !noalias !732
  %i.cdd = and i64 %spec.select, 144115188075855871
  %i.cde = inttoptr i64 %i.cdd to ptr             ; 6 uses
  %i.cdf = lshr i64 %spec.select, 57
  %i.cdg = trunc nuw nsw i64 %i.cdf to i32        ; 3 uses
  br label %.preheader507.i

.preheader507.i:                                  ; preds = %._crit_edge521.i, %.preheader507.lr.ph.i
  %i.cdh = phi i32 [ %i.cdb, %.preheader507.lr.ph.i ], [ %i.cdx, %._crit_edge521.i ]
  %i.cdi = phi i32 [ %.pre569.i, %.preheader507.lr.ph.i ], [ %i.cdy, %._crit_edge521.i ]
  %indvars.iv554.i = phi i64 [ 0, %.preheader507.lr.ph.i ], [ %indvars.iv.next555.i, %._crit_edge521.i ] ; 2 uses
  %.sroa.0426.0523.i = phi ptr [ %i.cdc, %.preheader507.lr.ph.i ], [ %.sroa.0426.1.lcssa.i, %._crit_edge521.i ] ; 2 uses
  %.not537.i = icmp eq i32 %i.cdi, 0
  br i1 %.not537.i, label %._crit_edge521.i, label %.lr.ph520.i

.lr.ph520.i:                                      ; preds = %.preheader507.i
  %.sroa.2425.0.insert.shift.i = shl nuw i64 %indvars.iv554.i, 32
  br label %bb.ir

bb.io:                                            ; preds = %._crit_edge.i.i283.i
  %i.cdj = landingpad { ptr, i32 }
          cleanup
  br label %bb.iq

bb.ip:                                            ; preds = %bb.ig, %_ZN4pstd3pmr21polymorphic_allocatorIhE15allocate_objectIhEEPT_m.exit.i.i607, %._crit_edge.thread.i.i581, %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt4HalfEE15allocate_objectIS3_EEPT_m.exit.i.i572, %._crit_edge.thread.i.i546, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i537, %bb.id
  %i.cdk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %52) #32, !noalias !732
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io
  %.pn191.i = phi { ptr, i32 } [ %i.cdk, %bb.ip ], [ %i.cdj, %bb.io ]
  %i.cdl = load ptr, ptr %i.bql, align 8, !tbaa !48, !noalias !732 ; 2 uses
  %i.cdm = icmp eq ptr %i.cdl, %i.bqm
  br i1 %i.cdm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303.i: ; preds = %bb.iq
  %i.cdn = load i64, ptr %i.bqm, align 8, !tbaa !37, !noalias !732
  %i.cdo = add i64 %i.cdn, 1
  call void @_ZdlPvm(ptr noundef %i.cdl, i64 noundef %i.cdo) #35, !noalias !732
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305.i: ; preds = %bb.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303.i
  %i.cdp = load ptr, ptr %i.bqh, align 8, !tbaa !48, !noalias !732 ; 2 uses
  %i.cdq = icmp eq ptr %i.cdp, %i.bqi
  br i1 %i.cdq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305.i
  %i.cdr = load i64, ptr %i.bqi, align 8, !tbaa !37, !noalias !732
  %i.cds = add i64 %i.cdr, 1
  call void @_ZdlPvm(ptr noundef %i.cdp, i64 noundef %i.cds) #35, !noalias !732
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305.1.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303.1.i
  %i.cdt = load ptr, ptr %53, align 8, !tbaa !48, !noalias !732 ; 2 uses
  %i.cdu = icmp eq ptr %i.cdt, %i.bqe
  br i1 %i.cdu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305.2.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305.1.i
  %i.cdv = load i64, ptr %i.bqe, align 8, !tbaa !37, !noalias !732
  %i.cdw = add i64 %i.cdv, 1
  call void @_ZdlPvm(ptr noundef %i.cdt, i64 noundef %i.cdw) #35, !noalias !732
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305.2.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #32, !noalias !732
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #32, !noalias !732
  br label %bb.la

._crit_edge521.loopexit.i:                        ; preds = %bb.jd
  %.pre570.i = load i32, ptr %i.r, align 4, !tbaa !38, !noalias !732
  br label %._crit_edge521.i

._crit_edge521.i:                                 ; preds = %._crit_edge521.loopexit.i, %.preheader507.i
  %i.cdx = phi i32 [ %i.cdh, %.preheader507.i ], [ %.pre570.i, %._crit_edge521.loopexit.i ] ; 2 uses
  %i.cdy = phi i32 [ 0, %.preheader507.i ], [ %i.cen, %._crit_edge521.loopexit.i ]
  %.sroa.0426.1.lcssa.i = phi ptr [ %.sroa.0426.0523.i, %.preheader507.i ], [ %i.cem, %._crit_edge521.loopexit.i ]
  %indvars.iv.next555.i = add nuw nsw i64 %indvars.iv554.i, 1 ; 2 uses
  %i.cdz = zext i32 %i.cdx to i64
  %i.cea = icmp samesign ult i64 %indvars.iv.next555.i, %i.cdz
  br i1 %i.cea, label %.preheader507.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit349.i, !llvm.loop !655

bb.ir:                                            ; preds = %bb.jd, %.lr.ph520.i
  %indvars.iv551.i = phi i64 [ 0, %.lr.ph520.i ], [ %indvars.iv.next552.i, %bb.jd ] ; 2 uses
  %.sroa.0426.1518.i = phi ptr [ %.sroa.0426.0523.i, %.lr.ph520.i ], [ %i.cem, %bb.jd ] ; 3 uses
  %130 = load i16, ptr %.sroa.0426.1518.i, align 1, !noalias !732
  %131 = call i16 @llvm.bswap.i16(i16 %130)
  %i.ceb = uitofp i16 %131 to float
  %i.cec = fdiv float %i.ceb, 6.553500e+04        ; 3 uses
  %i.ced = getelementptr inbounds nuw i8, ptr %.sroa.0426.1518.i, i64 2
  %132 = load <2 x i16>, ptr %i.ced, align 1, !noalias !732
  %133 = call <2 x i16> @llvm.bswap.v2i16(<2 x i16> %132)
  %134 = uitofp <2 x i16> %133 to <2 x float>     ; 2 uses
  %135 = extractelement <2 x float> %134, i64 0
  %i.cee = fdiv float %135, 6.553500e+04          ; 3 uses
  %136 = extractelement <2 x float> %134, i64 1
  %i.cef = fdiv float %136, 6.553500e+04          ; 3 uses
  %.sroa.0424.0.insert.insert.i = add nuw nsw i64 %indvars.iv551.i, %.sroa.2425.0.insert.shift.i ; 3 uses
  switch i32 %i.cdg, label %bb.it [
    i32 1, label %bb.iu
    i32 2, label %bb.is
  ]

bb.is:                                            ; preds = %bb.ir
  %i.ceg = invoke noundef float @_ZNK4pbrt17sRGBColorEncoding13ToFloatLinearEf(ptr noundef nonnull align 1 dereferenceable(1) %i.cde, float noundef %i.cec)
          to label %bb.iu unwind label %bb.je, !noalias !732

bb.it:                                            ; preds = %bb.ir
  %i.ceh = invoke noundef float @_ZNK4pbrt18GammaColorEncoding13ToFloatLinearEf(ptr noundef nonnull align 4 dereferenceable(5124) %i.cde, float noundef %i.cec)
          to label %bb.iu unwind label %bb.je, !noalias !732

bb.iu:                                            ; preds = %bb.it, %bb.is, %bb.ir
  %.0.i.i.i309.i = phi float [ %i.ceg, %bb.is ], [ %i.cec, %bb.ir ], [ %i.ceh, %bb.it ]
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %39, i64 %.sroa.0424.0.insert.insert.i, i32 noundef 0, float noundef %.0.i.i.i309.i)
          to label %bb.iv unwind label %bb.je, !noalias !732

bb.iv:                                            ; preds = %bb.iu
  switch i32 %i.cdg, label %bb.ix [
    i32 1, label %bb.iy
    i32 2, label %bb.iw
  ]

bb.iw:                                            ; preds = %bb.iv
  %i.cei = invoke noundef float @_ZNK4pbrt17sRGBColorEncoding13ToFloatLinearEf(ptr noundef nonnull align 1 dereferenceable(1) %i.cde, float noundef %i.cee)
          to label %bb.iy unwind label %bb.je, !noalias !732

bb.ix:                                            ; preds = %bb.iv
  %i.cej = invoke noundef float @_ZNK4pbrt18GammaColorEncoding13ToFloatLinearEf(ptr noundef nonnull align 4 dereferenceable(5124) %i.cde, float noundef %i.cee)
          to label %bb.iy unwind label %bb.je, !noalias !732

bb.iy:                                            ; preds = %bb.ix, %bb.iw, %bb.iv
  %.0.i.i.i309.1.i = phi float [ %i.cei, %bb.iw ], [ %i.cee, %bb.iv ], [ %i.cej, %bb.ix ]
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %39, i64 %.sroa.0424.0.insert.insert.i, i32 noundef 1, float noundef %.0.i.i.i309.1.i)
          to label %bb.iz unwind label %bb.je, !noalias !732

bb.iz:                                            ; preds = %bb.iy
  switch i32 %i.cdg, label %bb.jb [
    i32 1, label %bb.jc
    i32 2, label %bb.ja
  ]

bb.ja:                                            ; preds = %bb.iz
  %i.cek = invoke noundef float @_ZNK4pbrt17sRGBColorEncoding13ToFloatLinearEf(ptr noundef nonnull align 1 dereferenceable(1) %i.cde, float noundef %i.cef)
          to label %bb.jc unwind label %bb.je, !noalias !732

bb.jb:                                            ; preds = %bb.iz
  %i.cel = invoke noundef float @_ZNK4pbrt18GammaColorEncoding13ToFloatLinearEf(ptr noundef nonnull align 4 dereferenceable(5124) %i.cde, float noundef %i.cef)
          to label %bb.jc unwind label %bb.je, !noalias !732

bb.jc:                                            ; preds = %bb.jb, %bb.ja, %bb.iz
  %.0.i.i.i309.2.i = phi float [ %i.cek, %bb.ja ], [ %i.cef, %bb.iz ], [ %i.cel, %bb.jb ]
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %39, i64 %.sroa.0424.0.insert.insert.i, i32 noundef 2, float noundef %.0.i.i.i309.2.i)
          to label %bb.jd unwind label %bb.je, !noalias !732

bb.jd:                                            ; preds = %bb.jc
  %indvars.iv.next552.i = add nuw nsw i64 %indvars.iv551.i, 1 ; 2 uses
  %i.cem = getelementptr inbounds nuw i8, ptr %.sroa.0426.1518.i, i64 6 ; 2 uses
  %i.cen = load i32, ptr %i.q, align 4, !tbaa !38, !noalias !732 ; 2 uses
  %i.ceo = zext i32 %i.cen to i64
  %i.cep = icmp samesign ult i64 %indvars.iv.next552.i, %i.ceo
  br i1 %i.cep, label %bb.ir, label %._crit_edge521.loopexit.i, !llvm.loop !656

bb.je:                                            ; preds = %bb.jc, %bb.jb, %bb.ja, %bb.iy, %bb.ix, %bb.iw, %bb.iu, %bb.it, %bb.is
  %i.ceq = landingpad { ptr, i32 }
          cleanup
  br label %bb.la

bb.jf:                                            ; preds = %bb.gu
  br i1 %i.azp, label %._crit_edge.i.i313.i, label %._crit_edge.i.i356.i

._crit_edge.i.i313.i:                             ; preds = %bb.jf
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #32, !noalias !732
  %i.cer = load i32, ptr %i.q, align 4, !tbaa !38, !noalias !732
  %i.ces = load i32, ptr %i.r, align 4, !tbaa !38, !noalias !732
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #32, !noalias !732
  %i.cet = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 6 uses
  store ptr %i.cet, ptr %56, align 8, !tbaa !43, !noalias !732
  store i8 82, ptr %i.cet, align 8, !tbaa !37, !noalias !732
  %i.ceu = getelementptr inbounds nuw i8, ptr %56, i64 8
  store i64 1, ptr %i.ceu, align 8, !tbaa !46, !noalias !732
  %i.cev = getelementptr inbounds nuw i8, ptr %56, i64 17
  store i8 0, ptr %i.cev, align 1, !tbaa !37, !noalias !732
  %i.cew = getelementptr inbounds nuw i8, ptr %56, i64 32 ; 3 uses
  %i.cex = getelementptr inbounds nuw i8, ptr %56, i64 48 ; 6 uses
  store ptr %i.cex, ptr %i.cew, align 8, !tbaa !43, !noalias !732
  store i8 71, ptr %i.cex, align 8, !tbaa !37, !noalias !732
  %i.cey = getelementptr inbounds nuw i8, ptr %56, i64 40
  store i64 1, ptr %i.cey, align 8, !tbaa !46, !noalias !732
  %i.cez = getelementptr inbounds nuw i8, ptr %56, i64 49
  store i8 0, ptr %i.cez, align 1, !tbaa !37, !noalias !732
  %i.cfa = getelementptr inbounds nuw i8, ptr %56, i64 64 ; 3 uses
  %i.cfb = getelementptr inbounds nuw i8, ptr %56, i64 80 ; 6 uses
  store ptr %i.cfb, ptr %i.cfa, align 8, !tbaa !43, !noalias !732
  store i8 66, ptr %i.cfb, align 8, !tbaa !37, !noalias !732
  %i.cfc = getelementptr inbounds nuw i8, ptr %56, i64 72
  store i64 1, ptr %i.cfc, align 8, !tbaa !46, !noalias !732
  %i.cfd = getelementptr inbounds nuw i8, ptr %56, i64 81
  store i8 0, ptr %i.cfd, align 1, !tbaa !37, !noalias !732
  %i.cfe = getelementptr inbounds nuw i8, ptr %56, i64 96 ; 3 uses
  %i.cff = getelementptr inbounds nuw i8, ptr %56, i64 112 ; 6 uses
  store ptr %i.cff, ptr %i.cfe, align 8, !tbaa !43, !noalias !732
  store i8 65, ptr %i.cff, align 8, !tbaa !37, !noalias !732
  %i.cfg = getelementptr inbounds nuw i8, ptr %56, i64 104
  store i64 1, ptr %i.cfg, align 8, !tbaa !46, !noalias !732
  %i.cfh = getelementptr inbounds nuw i8, ptr %56, i64 113
  store i8 0, ptr %i.cfh, align 1, !tbaa !37, !noalias !732
  store i64 %spec.select, ptr %57, align 8, !tbaa !77, !noalias !732
  %i.cfi = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #32, !noalias !732
  %.sroa.2423.0.insert.ext.i = zext i32 %i.ces to i64
  %.sroa.2423.0.insert.shift.i = shl nuw i64 %.sroa.2423.0.insert.ext.i, 32
  %.sroa.0422.0.insert.ext.i = zext i32 %i.cer to i64
  %.sroa.0422.0.insert.insert.i = or disjoint i64 %.sroa.2423.0.insert.shift.i, %.sroa.0422.0.insert.ext.i
  %i.cfj = ptrtoint ptr %i.cfi to i64
  invoke void @_ZN4pbrt5ImageC2ENS_11PixelFormatENS_6Point2IiEEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_13ColorEncodingENS4_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(152) %55, i32 noundef 0, i64 %.sroa.0422.0.insert.insert.i, ptr nonnull %56, i64 4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %57, i64 %i.cfj)
          to label %bb.jg unwind label %bb.jx, !noalias !732

bb.jg:                                            ; preds = %._crit_edge.i.i313.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %39, ptr noundef nonnull align 8 dereferenceable(152) %55, i64 12, i1 false), !noalias !732
  %i.cfk = getelementptr inbounds nuw i8, ptr %55, i64 16
  %i.cfl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS6_EEEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(32) %i.wr, ptr noundef nonnull align 8 dereferenceable(32) %i.cfk)
          to label %.noexc329.i unwind label %bb.jy, !noalias !732 ; 0 uses

.noexc329.i:                                      ; preds = %bb.jg
  %i.cfm = getelementptr inbounds nuw i8, ptr %39, i64 48
  %i.cfn = getelementptr inbounds nuw i8, ptr %55, i64 48
  %i.cfo = load i64, ptr %i.cfn, align 8, !tbaa !77, !noalias !732
  store i64 %i.cfo, ptr %i.cfm, align 8, !tbaa !77, !noalias !732
  %i.cfp = getelementptr inbounds nuw i8, ptr %55, i64 56
  %i.cfq = load ptr, ptr %i.wv, align 8, !tbaa !126, !noalias !732 ; 3 uses
  %i.cfr = load ptr, ptr %i.cfp, align 8, !tbaa !126, !noalias !732
  %i.cfs = icmp eq ptr %i.cfq, %i.cfr
  br i1 %i.cfs, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %.noexc329.i
  %i.cft = getelementptr inbounds nuw i8, ptr %55, i64 64 ; 2 uses
  %i.cfu = load ptr, ptr %i.wx, align 8, !tbaa !197, !noalias !732
  %i.cfv = load ptr, ptr %i.cft, align 8, !tbaa !197, !noalias !732
  store ptr %i.cfv, ptr %i.wx, align 8, !tbaa !197, !noalias !732
  store ptr %i.cfu, ptr %i.cft, align 8, !tbaa !197, !noalias !732
  %i.cfw = getelementptr inbounds nuw i8, ptr %39, i64 72 ; 2 uses
  %i.cfx = getelementptr inbounds nuw i8, ptr %55, i64 72 ; 2 uses
  %i.cfy = load <2 x i64>, ptr %i.cfx, align 8, !tbaa !47, !noalias !732
  %i.cfz = load <2 x i64>, ptr %i.cfw, align 8, !tbaa !47, !noalias !732
  store <2 x i64> %i.cfy, ptr %i.cfw, align 8, !tbaa !47, !noalias !732
  store <2 x i64> %i.cfz, ptr %i.cfx, align 8, !tbaa !47, !noalias !732
  br label %.noexc330.i

bb.ji:                                            ; preds = %.noexc329.i
  %i.cga = getelementptr inbounds nuw i8, ptr %39, i64 80 ; 4 uses
  store i64 0, ptr %i.cga, align 8, !tbaa !124, !noalias !732
  %i.cgb = getelementptr inbounds nuw i8, ptr %55, i64 80 ; 3 uses
  %i.cgc = load i64, ptr %i.cgb, align 8, !tbaa !124, !noalias !732 ; 4 uses
  %i.cgd = getelementptr inbounds nuw i8, ptr %39, i64 72 ; 3 uses
  %i.cge = load i64, ptr %i.cgd, align 8, !tbaa !125, !noalias !732
  %.not.i.i511 = icmp ult i64 %i.cge, %i.cgc
  br i1 %.not.i.i511, label %_ZN4pstd3pmr21polymorphic_allocatorIhE15allocate_objectIhEEPT_m.exit.i.i518, label %_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEE7reserveEm.exit.i512

_ZN4pstd3pmr21polymorphic_allocatorIhE15allocate_objectIhEEPT_m.exit.i.i518: ; preds = %bb.ji
  %i.cgf = load ptr, ptr %i.cfq, align 8, !tbaa !120, !noalias !732
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.cgf, i64 16
  %i.cgh = load ptr, ptr %i.cgg, align 8, !noalias !732
  %i.cgi = invoke noundef ptr %i.cgh(ptr noundef nonnull align 8 dereferenceable(8) %i.cfq, i64 noundef %i.cgc, i64 noundef 1)
          to label %.noexc527 unwind label %bb.jy, !inline_history !747 ; 2 uses

.noexc527:                                        ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIhE15allocate_objectIhEEPT_m.exit.i.i518
  %i.cgj = load i64, ptr %i.cga, align 8, !tbaa !124, !noalias !732
  %.not13.i.i519 = icmp eq i64 %i.cgj, 0
  br i1 %.not13.i.i519, label %._crit_edge.i.i523, label %.lr.ph.i.i520

._crit_edge.i.i523:                               ; preds = %.lr.ph.i.i520, %.noexc527
  %i.cgk = load ptr, ptr %i.wx, align 8, !tbaa !76, !noalias !732 ; 2 uses
  %.not.i.i.i.i.i524 = icmp eq ptr %i.cgk, null
  br i1 %.not.i.i.i.i.i524, label %_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i525, label %bb.jj

bb.jj:                                            ; preds = %._crit_edge.i.i523
  %i.cgl = load i64, ptr %i.cgd, align 8, !tbaa !125, !noalias !732
  %i.cgm = load ptr, ptr %i.wv, align 8, !tbaa !126, !noalias !732 ; 2 uses
  %i.cgn = load ptr, ptr %i.cgm, align 8, !tbaa !120, !noalias !732
  %i.cgo = getelementptr inbounds nuw i8, ptr %i.cgn, i64 24
  %i.cgp = load ptr, ptr %i.cgo, align 8, !noalias !732
  invoke void %i.cgp(ptr noundef nonnull align 8 dereferenceable(8) %i.cgm, ptr noundef nonnull %i.cgk, i64 noundef %i.cgl, i64 noundef 1)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i525 unwind label %bb.jy, !inline_history !747

_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i525: ; preds = %bb.jj, %._crit_edge.i.i523
  store i64 %i.cgc, ptr %i.cgd, align 8, !tbaa !125, !noalias !732
  store ptr %i.cgi, ptr %i.wx, align 8, !tbaa !76, !noalias !732
  %.pre.i526 = load i64, ptr %i.cgb, align 8, !tbaa !124, !noalias !732
  br label %_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEE7reserveEm.exit.i512

.lr.ph.i.i520:                                    ; preds = %.noexc527, %.lr.ph.i.i520
  %indvars.iv.i.i521 = phi i64 [ %indvars.iv.next.i.i522, %.lr.ph.i.i520 ], [ 0, %.noexc527 ] ; 3 uses
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.cgi, i64 %indvars.iv.i.i521
  %i.cgr = load ptr, ptr %i.wx, align 8, !tbaa !76, !noalias !732
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.cgr, i64 %indvars.iv.i.i521
  %i.cgt = load i8, ptr %i.cgs, align 1, !tbaa !37, !noalias !732
  store i8 %i.cgt, ptr %i.cgq, align 1, !tbaa !37, !noalias !732
  %indvars.iv.next.i.i522 = add nuw nsw i64 %indvars.iv.i.i521, 1 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4pbrt6detail21stringPrintfRecursiveIRiJRA12_KcS2_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS3_OT_DpOT0_:bb.a
  %i.ew = sub i64 4611686018427387903, %i.ev
  %i.ex = icmp ult i64 %i.ew, %i.et
  br i1 %i.ex, label %bb.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i74

bb.ad:                                            ; preds = %_ZN4pbrt6detail9formatOneIRiEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_.exit73
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #34
          to label %.noexc75 unwind label %bb.ae

.noexc75:                                         ; preds = %bb.ad
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i74: ; preds = %_ZN4pbrt6detail9formatOneIRiEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_.exit73
  %i.ey = load ptr, ptr %10, align 8, !tbaa !48
  %i.ez = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ey, i64 noundef %i.et)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit77 unwind label %bb.ae ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i74
  %i.fa = load ptr, ptr %10, align 8, !tbaa !48   ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.eh
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit77
  %i.fc = load i64, ptr %i.eh, align 8, !tbaa !37
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.ah

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i74, %bb.ad
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = load ptr, ptr %10, align 8, !tbaa !48   ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.eh
  br i1 %i.fg, label %.body71, label %.body71.sink.split

.body71.sink.split:                               ; preds = %bb.ae, %bb.ac
  %.sink133 = phi ptr [ %i.er, %bb.ac ], [ %i.ff, %bb.ae ]
  %.pn.ph = phi { ptr, i32 } [ %i.eq, %bb.ac ], [ %i.fe, %bb.ae ]
  %i.fh = load i64, ptr %i.eh, align 8, !tbaa !37
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %.sink133, i64 noundef %i.fi) #35
  br label %.body71

.body71:                                          ; preds = %.body71.sink.split, %bb.ae, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.eq, %bb.ac ], [ %i.fe, %bb.ae ], [ %.pn.ph, %.body71.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.aj

bb.af:                                            ; preds = %bb.z
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.97, i32 noundef 266, ptr noundef nonnull @.str.100) #34
          to label %bb.ag unwind label %bb.c

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fj = load ptr, ptr %i.a, align 8, !tbaa !197
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA12_KcJRiEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull %0, ptr noundef %i.fj, ptr noundef nonnull align 1 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.ai unwind label %bb.c

bb.ai:                                            ; preds = %bb.ah, %bb.b
  %i.fk = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.ai
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !37
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void

bb.aj:                                            ; preds = %.body71, %bb.y, %.body, %bb.c
  %.pn35 = phi { ptr, i32 } [ %i.g, %bb.c ], [ %.pn33, %.body ], [ %.pn28.pn.pn.pn, %bb.y ], [ %.pn, %.body71 ]
  %i.fp = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.aj
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !37
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %.pn35
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail34stringPrintfRecursiveWithPrecisionIRA12_KcJRiEEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEEvE4typeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_RKSI_iOS8_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !48
  %i.b = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.a, i32 noundef %3, ptr noundef nonnull %4) #32
  %i.c = add nsw i32 %i.b, 1
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !46
  store i8 0, ptr %i.e, align 8, !tbaa !37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.d, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %6, align 8, !tbaa !48
  %i.h = load ptr, ptr %2, align 8, !tbaa !48
  %i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.g, i64 noundef %i.d, ptr noundef %i.h, i32 noundef %3, ptr noundef nonnull %4) #32 ; 0 uses
  %i.j = load i64, ptr %i.f, align 8, !tbaa !46
  %i.k = add i64 %i.j, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.k, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.n = load i64, ptr %i.f, align 8, !tbaa !46   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !46
  %i.q = sub i64 4611686018427387903, %i.p
  %i.r = icmp ult i64 %i.q, %i.n
  br i1 %i.r, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #34
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit
  %i.s = load ptr, ptr %6, align 8, !tbaa !48
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.s, i64 noundef %i.n)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.e ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRiJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.u = load ptr, ptr %6, align 8, !tbaa !48     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.e
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.w = load i64, ptr %i.e, align 8, !tbaa !37
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  ret void

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.c, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %6, align 8, !tbaa !48     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.e
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.e
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !37
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  resume { ptr, i32 } %i.y
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.floor.v8f32(<8 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x double> @llvm.masked.load.v4f64.p0(ptr captures(none), <4 x i1>, <4 x double>) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f64.p0(<4 x double>, ptr captures(none), <4 x i1>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.bswap.v8i32(<8 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.bswap.v2i16(<2 x i16>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #31

attributes #0 = { mustprogress nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nounwind memory(none) }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #27 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #32 = { nounwind }
attributes #33 = { nounwind allocsize(0) }
attributes #34 = { noreturn }
attributes #35 = { builtin nounwind }
attributes #36 = { builtin allocsize(0) }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!23, !24, !25}
!llvm.ident = !{!26}
!llvm.errno.tbaa = !{!31}

!0 = distinct !{!0, !39}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{!4, !39}
!5 = distinct !{null}
!6 = distinct !{!6, !39}
!7 = distinct !{null, null, null, null}
!8 = distinct !{null, null, null, null}
!9 = distinct !{!9, !39}
!10 = distinct !{null, null, null, null}
!11 = distinct !{null, null, null, null}
!12 = distinct !{null, null, null, null}
!13 = distinct !{null, null, null, null}
!14 = distinct !{null}
!15 = distinct !{null}
!16 = distinct !{null, null, null, null, null, null}
!17 = distinct !{null}
!18 = distinct !{!18, !39}
!19 = distinct !{!19, !39}
!20 = distinct !{!20, !39}
!21 = distinct !{!21, !"_ZNK4pbrt6Tuple2INS_6Point2EiE8ToStringB5cxx11Ev"}
!22 = distinct !{!22, !21, !"_ZNK4pbrt6Tuple2INS_6Point2EiE8ToStringB5cxx11Ev: argument 0"}
!23 = !{i32 8, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 2}
!26 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!27 = !{!"Simple C++ TBAA"}
!28 = !{!"omnipotent char", !27, i64 0}
!29 = !{!"int", !28, i64 0}
!30 = !{!"__libc_errno", !29, i64 0}
!31 = !{!30, !29, i64 0}
!32 = !{!"_ZTS8qoi_desc", !29, i64 0, !29, i64 4, !28, i64 8, !28, i64 9}
!33 = !{!32, !29, i64 0}
!34 = !{!32, !29, i64 4}
!35 = !{!32, !28, i64 8}
!36 = !{!32, !28, i64 9}
!37 = !{!28, !28, i64 0}
!38 = !{!29, !29, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"any pointer", !28, i64 0}
!41 = !{!"p1 omnipotent char", !40, i64 0}
!42 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !41, i64 0}
!43 = !{!42, !41, i64 0}
!44 = !{!"long", !28, i64 0}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !42, i64 0, !44, i64 8, !28, i64 16}
!46 = !{!45, !44, i64 8}
!47 = !{!44, !44, i64 0}
!48 = !{!45, !41, i64 0}
!49 = !{!"bool", !28, i64 0}
!50 = !{!"_ZTSN4pstd8optionalIPKN4pbrt13RGBColorSpaceEEE", !28, i64 0, !49, i64 8}
!51 = !{!50, !49, i64 8}
!52 = !{i8 0, i8 2}
!53 = !{}
!54 = !{!"_ZTSN4pbrt11PixelFormatE", !28, i64 0}
!55 = !{!"_ZTSN4pbrt6Tuple2INS_6Point2EiEE", !29, i64 0, !29, i64 4}
!56 = !{!"_ZTSN4pbrt6Point2IiEE", !55, i64 0}
!57 = !{!"p1 _ZTSN4pstd3pmr15memory_resourceE", !40, i64 0}
!58 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !57, i64 0}
!59 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !40, i64 0}
!60 = !{!"_ZTSN4pstd6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS6_EEEE", !58, i64 0, !59, i64 8, !44, i64 16, !44, i64 24}
!61 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_19LinearColorEncodingENS_17sRGBColorEncodingENS_18GammaColorEncodingEEEE", !44, i64 0}
!62 = !{!"_ZTSN4pbrt13ColorEncodingE", !61, i64 0}
!63 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIhEE", !57, i64 0}
!64 = !{!"_ZTSN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEEE", !63, i64 0, !41, i64 8, !44, i64 16, !44, i64 24}
!65 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIN4pbrt4HalfEEE", !57, i64 0}
!66 = !{!"p1 _ZTSN4pbrt4HalfE", !40, i64 0}
!67 = !{!"_ZTSN4pstd6vectorIN4pbrt4HalfENS_3pmr21polymorphic_allocatorIS2_EEEE", !65, i64 0, !66, i64 8, !44, i64 16, !44, i64 24}
!68 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIfEE", !57, i64 0}
!69 = !{!"p1 float", !40, i64 0}
!70 = !{!"_ZTSN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEE", !68, i64 0, !69, i64 8, !44, i64 16, !44, i64 24}
!71 = !{!"_ZTSN4pbrt5ImageE", !54, i64 0, !56, i64 4, !60, i64 16, !62, i64 48, !64, i64 56, !67, i64 88, !70, i64 120}
!72 = !{!71, !54, i64 0}
!73 = !{!55, !29, i64 4}
!74 = !{!55, !29, i64 0}
!75 = !{!60, !44, i64 24}
!76 = !{!64, !41, i64 8}
!77 = !{!61, !44, i64 0}
!78 = !{!"float", !28, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!67, !66, i64 8}
!81 = !{!"short", !28, i64 0}
!82 = !{!"_ZTSN4pbrt4HalfE", !81, i64 0}
!83 = !{!82, !81, i64 0}
!84 = !{!70, !69, i64 8}
!85 = !{!"llvm.loop.unswitch.partial.disable"}
!86 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!87 = !{!86, !69, i64 0}
!88 = !{!86, !69, i64 16}
!89 = !{!86, !69, i64 8}
!90 = !{!"llvm.loop.isvectorized", i32 1}
!91 = !{!"llvm.loop.unroll.runtime.disable"}
!92 = !{!"branch_weights", i32 8, i32 24}
!93 = !{!"llvm.loop.unroll.disable"}
!94 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!95 = !{!94, !59, i64 0}
!96 = !{!94, !59, i64 8}
!97 = !{!94, !59, i64 16}
!98 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIiEE", !57, i64 0}
!99 = !{!"p1 int", !40, i64 0}
!100 = !{!"_ZTSN4pbrt13InlinedVectorIiLi4EN4pstd3pmr21polymorphic_allocatorIiEEEE", !98, i64 0, !99, i64 8, !28, i64 16, !44, i64 32, !44, i64 40}
!101 = !{!100, !44, i64 40}
!102 = !{!"_ZTSSt14_Function_base", !28, i64 0, !40, i64 16}
!103 = !{!102, !40, i64 16}
!104 = !{!"p1 _ZTSN4pbrt5ImageE", !40, i64 0}
!105 = !{!104, !104, i64 0}
!106 = !{!"p1 _ZTSN4pbrt16ImageChannelDescE", !40, i64 0}
!107 = !{!106, !106, i64 0}
!108 = !{!99, !99, i64 0}
!109 = !{!"p1 _ZTSSt6vectorIfSaIfEE", !40, i64 0}
!110 = !{!109, !109, i64 0}
!111 = !{!40, !40, i64 0}
!112 = !{!"_ZTSSt8functionIFvllEE", !102, i64 0, !40, i64 24}
!113 = !{!112, !40, i64 24}
!114 = !{!100, !99, i64 8}
!115 = !{!60, !59, i64 8}
!116 = !{!70, !44, i64 24}
!117 = !{!70, !44, i64 16}
!118 = !{!68, !57, i64 0}
!119 = !{!"vtable pointer", !27, i64 0}
!120 = !{!119, !119, i64 0}
!121 = !{!67, !44, i64 24}
!122 = !{!67, !44, i64 16}
!123 = !{!65, !57, i64 0}
!124 = !{!64, !44, i64 24}
!125 = !{!64, !44, i64 16}
!126 = !{!63, !57, i64 0}
!127 = !{!60, !44, i64 16}
!128 = !{!58, !57, i64 0}
!129 = !{!"p1 _ZTSN4pbrt14ResampleWeightE", !40, i64 0}
!130 = !{!"_ZTSNSt12_Vector_baseIN4pbrt14ResampleWeightESaIS1_EE17_Vector_impl_dataE", !129, i64 0, !129, i64 8, !129, i64 16}
!131 = !{!130, !129, i64 0}
!132 = !{!130, !129, i64 16}
!133 = !{!"_ZTSN4pbrt14ResampleWeightE", !29, i64 0, !28, i64 4}
!134 = !{!133, !29, i64 0}
!135 = !{!"p1 _ZTSSt6vectorIN4pbrt14ResampleWeightESaIS1_EE", !40, i64 0}
!136 = !{!135, !135, i64 0}
!137 = !{!"p1 _ZTSN4pbrt10WrapMode2DE", !40, i64 0}
!138 = !{!137, !137, i64 0}
!139 = !{!57, !57, i64 0}
!140 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIN4pbrt5ImageEEE", !57, i64 0}
!141 = !{!"_ZTSN4pstd6vectorIN4pbrt5ImageENS_3pmr21polymorphic_allocatorIS2_EEEE", !140, i64 0, !104, i64 8, !44, i64 16, !44, i64 24}
!142 = !{!141, !44, i64 16}
!143 = !{!141, !44, i64 24}
!144 = !{!141, !104, i64 8}
!145 = !{!"p1 _ZTSN4pbrt6Point2IiEE", !40, i64 0}
!146 = !{!145, !145, i64 0}
!147 = !{!"p1 _ZTSN4pstd6vectorIN4pbrt5ImageENS_3pmr21polymorphic_allocatorIS2_EEEE", !40, i64 0}
!148 = !{!147, !147, i64 0}
!149 = !{!"_ZTSSt8functionIFvlEE", !102, i64 0, !40, i64 24}
!150 = !{!149, !40, i64 24}
!151 = !{!"p1 _ZTSSt8functionIFvlEE", !40, i64 0}
!152 = !{!151, !151, i64 0}
end_hunk_4
