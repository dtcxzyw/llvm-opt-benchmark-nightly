Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/image?download=true
inline.NumInlined: 6802
inline.NumDeleted: 1350
loop-unroll.NumCompletelyUnrolled: 53
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 117
begin_hunk_0_@qoi_encode:bb.a
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %1, null
  %or.cond3 = or i1 %i.c, %or.cond
  br i1 %or.cond3, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !33     ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !34   ; 4 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i8, ptr %i.i, align 4, !tbaa !35    ; 6 uses
  %i.k = add i8 %i.j, -5
  %or.cond186 = icmp ult i8 %i.k, -2
  br i1 %or.cond186, label %bb.z, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.m = load i8, ptr %i.l, align 1, !tbaa !36    ; 2 uses
  %i.n = icmp ugt i8 %i.m, 1
  br i1 %i.n, label %bb.z, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = udiv i32 400000000, %i.d
  %.not = icmp ult i32 %i.g, %i.o
  br i1 %.not, label %bb.g, label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.p = mul i32 %i.g, %i.d                       ; 2 uses
  %narrow = add nuw nsw i8 %i.j, 1
  %i.q = zext nneg i8 %narrow to i32
  %i.r = mul i32 %i.p, %i.q
  %i.s = add i32 %i.r, 22
  %i.t = sext i32 %i.s to i64
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #33 ; 14 uses
  %.not185 = icmp eq ptr %i.u, null
  br i1 %.not185, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  store <4 x i8> <i8 113, i8 111, i8 105, i8 102>, ptr %i.u, align 1, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = insertelement <8 x i32> poison, i32 %i.d, i64 0
  %i.x = insertelement <8 x i32> %i.w, i32 %i.g, i64 1
  %i.y = shufflevector <8 x i32> %i.x, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.z = lshr <8 x i32> %i.y, <i32 24, i32 16, i32 8, i32 0, i32 24, i32 16, i32 8, i32 0>
  %i.aa = trunc <8 x i32> %i.z to <8 x i8>
  store <8 x i8> %i.aa, ptr %i.v, align 1, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i8 %i.j, ptr %i.ab, align 1, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 13
  store i8 %i.m, ptr %i.ac, align 1, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false)
  %i.ad = zext nneg i8 %i.j to i32                ; 2 uses
  %i.ae = mul i32 %i.p, %i.ad                     ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.h
  %i.ag = sub nsw i32 %i.ae, %i.ad
  %i.ah = icmp eq i8 %i.j, 4
  %i.ai = zext nneg i8 %i.j to i64
  %i.aj = zext i32 %i.ag to i64
  %i.ak = zext nneg i32 %i.ae to i64
  br label %bb.i

.preheader.loopexit:                              ; preds = %bb.y
  %i.al = sext i32 %.2212 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.h
  %.0210.lcssa = phi i64 [ 14, %bb.h ], [ %i.al, %.preheader.loopexit ] ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %.0210.lcssa
  store i64 72057594037927936, ptr %scevgep, align 1, !tbaa !37
  %i.am = trunc nsw i64 %.0210.lcssa to i32
  %i.an = add i32 %i.am, 8
  store i32 %i.an, ptr %2, align 4, !tbaa !38
  br label %bb.z

bb.i:                                             ; preds = %.lr.ph, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.y ] ; 3 uses
  %.sroa.0.0219 = phi i8 [ 0, %.lr.ph ], [ %i.ap, %bb.y ] ; 2 uses
  %.sroa.7.0218 = phi i8 [ 0, %.lr.ph ], [ %i.ar, %bb.y ] ; 2 uses
  %.sroa.9.0217 = phi i8 [ 0, %.lr.ph ], [ %i.at, %bb.y ] ; 2 uses
  %.sroa.11.0216 = phi i8 [ -1, %.lr.ph ], [ %.sroa.26.1, %bb.y ] ; 3 uses
  %.0170214 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.y ] ; 5 uses
  %.0210213 = phi i32 [ 14, %.lr.ph ], [ %.2212, %bb.y ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 4 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !37  ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !37  ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !37  ; 6 uses
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  %i.av = load i8, ptr %i.au, align 1, !tbaa !37
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.26.1 = phi i8 [ %i.av, %bb.j ], [ %.sroa.11.0216, %bb.i ] ; 5 uses
  %.sroa.26.0.insert.ext = zext i8 %.sroa.26.1 to i32 ; 2 uses
  %.sroa.26.0.insert.shift = shl nuw i32 %.sroa.26.0.insert.ext, 24
  %.sroa.19.0.insert.ext = zext i8 %i.at to i32   ; 2 uses
  %.sroa.19.0.insert.shift = shl nuw nsw i32 %.sroa.19.0.insert.ext, 16
  %.sroa.19.0.insert.insert = or disjoint i32 %.sroa.26.0.insert.shift, %.sroa.19.0.insert.shift
  %.sroa.12.0.insert.ext = zext i8 %i.ar to i32   ; 2 uses
  %.sroa.12.0.insert.shift = shl nuw nsw i32 %.sroa.12.0.insert.ext, 8
  %.sroa.12.0.insert.insert = or disjoint i32 %.sroa.19.0.insert.insert, %.sroa.12.0.insert.shift
  %.sroa.066.0.insert.ext = zext i8 %i.ap to i32  ; 2 uses
  %.sroa.066.0.insert.insert = or disjoint i32 %.sroa.12.0.insert.insert, %.sroa.066.0.insert.ext ; 2 uses
  %.sroa.11.0.insert.ext = zext i8 %.sroa.11.0216 to i32
  %.sroa.11.0.insert.shift = shl nuw i32 %.sroa.11.0.insert.ext, 24
  %.sroa.9.0.insert.ext = zext i8 %.sroa.9.0217 to i32
  %.sroa.9.0.insert.shift = shl nuw nsw i32 %.sroa.9.0.insert.ext, 16
  %.sroa.9.0.insert.insert = or disjoint i32 %.sroa.9.0.insert.shift, %.sroa.11.0.insert.shift
  %.sroa.7.0.insert.ext = zext i8 %.sroa.7.0218 to i32
  %.sroa.7.0.insert.shift = shl nuw nsw i32 %.sroa.7.0.insert.ext, 8
  %.sroa.7.0.insert.insert = or disjoint i32 %.sroa.9.0.insert.insert, %.sroa.7.0.insert.shift
  %.sroa.0.0.insert.ext = zext i8 %.sroa.0.0219 to i32
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
  %i.ce = sub i8 %i.ar, %.sroa.7.0218             ; 6 uses
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
  %i.cy = add i8 %i.ce, 32
  %i.cz = icmp ult i8 %i.cy, 64
  %or.cond27 = select i1 %or.cond21, i1 %i.cz, i1 false
  %i.da = add i8 %i.cv, 8                         ; 2 uses
  %i.db = icmp ult i8 %i.da, 16
  %or.cond33 = select i1 %or.cond27, i1 %i.db, i1 false
  br i1 %or.cond33, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %4 = add nsw i8 %i.ce, -96
  %i.dc = sext i32 %.1211 to i64
  %i.dd = getelementptr i8, ptr %i.u, i64 %i.dc   ; 2 uses
  store i8 %4, ptr %i.dd, align 1, !tbaa !37
  %i.de = shl nsw i8 %i.cw, 4
  %i.df = or disjoint i8 %i.da, %i.de
  %i.dg = xor i8 %i.df, -128
  %i.dh = add nsw i32 %.1211, 2
  %i.di = getelementptr i8, ptr %i.dd, i64 1
  store i8 %i.dg, ptr %i.di, align 1, !tbaa !37
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.dj = sext i32 %.1211 to i64
  %i.dk = getelementptr i8, ptr %i.u, i64 %i.dj   ; 4 uses
  store i8 -2, ptr %i.dk, align 1, !tbaa !37
  %i.dl = getelementptr i8, ptr %i.dk, i64 1
  store i8 %i.ap, ptr %i.dl, align 1, !tbaa !37
  %i.dm = getelementptr i8, ptr %i.dk, i64 2
  store i8 %i.ar, ptr %i.dm, align 1, !tbaa !37
  %i.dn = add nsw i32 %.1211, 4
  %i.do = getelementptr i8, ptr %i.dk, i64 3
  store i8 %i.at, ptr %i.do, align 1, !tbaa !37
  br label %bb.y

bb.x:                                             ; preds = %bb.r
  %i.dp = sext i32 %.1211 to i64
  %i.dq = getelementptr i8, ptr %i.u, i64 %i.dp   ; 5 uses
  store i8 -1, ptr %i.dq, align 1, !tbaa !37
  %i.dr = getelementptr i8, ptr %i.dq, i64 1
  store i8 %i.ap, ptr %i.dr, align 1, !tbaa !37
  %i.ds = getelementptr i8, ptr %i.dq, i64 2
  store i8 %i.ar, ptr %i.ds, align 1, !tbaa !37
  %i.dt = getelementptr i8, ptr %i.dq, i64 3
  store i8 %i.at, ptr %i.dt, align 1, !tbaa !37
  %i.du = add nsw i32 %.1211, 5
  %i.dv = getelementptr i8, ptr %i.dq, i64 4
  store i8 %.sroa.26.1, ptr %i.dv, align 1, !tbaa !37
  br label %bb.y

bb.y:                                             ; preds = %bb.q, %bb.x, %bb.v, %bb.w, %bb.t, %bb.l, %bb.m
  %.2212 = phi i32 [ %i.bc, %bb.m ], [ %.0210213, %bb.l ], [ %i.bz, %bb.q ], [ %i.cs, %bb.t ], [ %i.dh, %bb.v ], [ %i.dn, %bb.w ], [ %i.du, %bb.x ] ; 2 uses
  %.2 = phi i32 [ 0, %bb.m ], [ %i.ax, %bb.l ], [ %.1, %bb.q ], [ %.1, %bb.t ], [ %.1, %bb.v ], [ %.1, %bb.w ], [ %.1, %bb.x ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.ai ; 2 uses
  %i.dw = icmp samesign ult i64 %indvars.iv.next, %i.ak
  br i1 %i.dw, label %bb.i, label %.preheader.loopexit, !llvm.loop !245

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
  %i.g = load i8, ptr %0, align 1, !tbaa !37
  %i.h = zext i8 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !37
  %i.k = zext i8 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !37
  %i.n = zext i8 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !37
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw i32 %i.h, 24
  %i.s = shl nuw nsw i32 %i.k, 16
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = shl nuw nsw i32 %i.n, 8
  %i.v = or disjoint i32 %i.t, %i.u
  %i.w = or disjoint i32 %i.v, %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 1              ; 2 uses
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)  ; 3 uses
  store i32 %i.z, ptr %2, align 4, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i32, ptr %i.aa, align 1            ; 2 uses
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.ab) ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !37  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.af, ptr %i.ag, align 4, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !37  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !36
  %i.ak = icmp eq i32 %i.y, 0
  %i.al = icmp eq i32 %i.ab, 0
  %or.cond124 = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond124, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = zext nneg i8 %i.af to i32
  %i.an = add i8 %i.af, -5
  %or.cond116 = icmp ult i8 %i.an, -2
  br i1 %or.cond116, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = icmp ugt i8 %i.ai, 1
  %i.ap = icmp ne i32 %i.w, 1903126886
  %or.cond9 = or i1 %i.ap, %i.ao
  br i1 %or.cond9, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = udiv i32 400000000, %i.z
  %.not = icmp ult i32 %i.ac, %i.aq
  br i1 %.not, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ar = icmp eq i32 %3, 0
  %spec.select = select i1 %i.ar, i32 %i.am, i32 %3 ; 3 uses
  %i.as = mul i32 %i.ac, %i.z
  %i.at = mul i32 %i.as, %spec.select             ; 3 uses
  %i.au = sext i32 %i.at to i64
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.au) #33 ; 4 uses
  %.not115 = icmp eq ptr %i.av, null
  br i1 %.not115, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false)
  %i.aw = add nsw i32 %1, -8
  %i.ax = icmp sgt i32 %i.at, 0
  br i1 %i.ax, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ay = icmp eq i32 %spec.select, 4
  %i.az = zext nneg i32 %spec.select to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %.0102131 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.w ] ; 2 uses
  %.sroa.0.0129 = phi i8 [ 0, %.lr.ph ], [ %.sroa.0.2, %bb.w ] ; 5 uses
  %.sroa.13.0128 = phi i8 [ 0, %.lr.ph ], [ %.sroa.13.2, %bb.w ] ; 5 uses
  %.sroa.22.0127 = phi i8 [ 0, %.lr.ph ], [ %.sroa.22.2, %bb.w ] ; 5 uses
  %.sroa.31.0126 = phi i8 [ -1, %.lr.ph ], [ %.sroa.31.2, %bb.w ] ; 6 uses
  %.0121125 = phi i32 [ 14, %.lr.ph ], [ %.2123, %bb.w ] ; 8 uses
  %i.ba = icmp sgt i32 %.0102131, 0
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bb = add nsw i32 %.0102131, -1
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.bc = icmp slt i32 %.0121125, %i.aw
  br i1 %i.bc, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.bd = add nsw i32 %.0121125, 1                ; 6 uses
  %i.be = sext i32 %.0121125 to i64
  %i.bf = getelementptr i8, ptr %0, i64 %i.be     ; 6 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !37  ; 6 uses
  %i.bh = zext i8 %i.bg to i32                    ; 3 uses
  switch i8 %i.bg, label %bb.o [
    i8 -2, label %bb.m
    i8 -1, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.bi = sext i32 %i.bd to i64
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !37
  %i.bl = getelementptr i8, ptr %i.bf, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !37
end_hunk_0
