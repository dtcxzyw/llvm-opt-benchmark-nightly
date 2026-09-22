Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/pdivmod?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@pzero = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"pdivmod\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @pdivmod(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  %i.d = alloca ptr, align 8                      ; 10 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !17
  store ptr %1, ptr %i.b, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i16, ptr %i.e, align 2, !tbaa !20   ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i16, ptr %0, align 2, !tbaa !21
  %i.h = add i16 %i.g, 1
  store i16 %i.h, ptr %0, align 2, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load i16, ptr %1, align 2, !tbaa !21
  %i.j = add i16 %i.i, 1
  store i16 %i.j, ptr %1, align 2, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i16, ptr %i.k, align 2, !tbaa !20   ; 5 uses
  %i.m = zext i16 %i.f to i32                     ; 2 uses
  %i.n = icmp ult i16 %i.l, %i.f
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.c, align 8, !tbaa !17
  store ptr null, ptr %i.d, align 8, !tbaa !17
  %i.o = load ptr, ptr @pzero, align 8, !tbaa !17
  %i.p = call ptr @psetq(ptr noundef nonnull %i.c, ptr noundef %i.o) #4 ; 0 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.r = call ptr @psetq(ptr noundef nonnull %i.d, ptr noundef %i.q) #4 ; 0 uses
  br label %bb.ao

bb.e:                                             ; preds = %bb.c
  %narrow = sub nuw i16 %i.l, %i.f                ; 2 uses
  %i.s = zext i16 %narrow to i32
  %i.t = zext i16 %narrow to i64                  ; 4 uses
  %i.u = zext i16 %i.f to i64                     ; 7 uses
  %i.v = zext i16 %i.l to i64
  %i.w = shl nuw nsw i64 %i.v, 1                  ; 2 uses
  %.add279 = add nuw nsw i64 %i.w, 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.u ; 2 uses
  %i.z = add nuw nsw i32 %i.s, 1
  %i.aa = tail call ptr (i32, ...) @palloc(i32 noundef %i.z) #4 ; 9 uses
  store ptr %i.aa, ptr %i.c, align 8, !tbaa !17
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.br, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !22
  %i.ag = icmp ne i8 %i.ad, %i.af
  %i.ah = zext i1 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 6
  store i8 %i.ah, ptr %i.ai, align 2, !tbaa !22
  %i.aj = tail call ptr (i32, ...) @palloc(i32 noundef %i.m) #4 ; 6 uses
  store ptr %i.aj, ptr %i.d, align 8, !tbaa !17
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.al = load i16, ptr %i.aa, align 2, !tbaa !21
  %i.am = add i16 %i.al, -1                       ; 2 uses
  store i16 %i.am, ptr %i.aa, align 2, !tbaa !21
  %i.an = icmp eq i16 %i.am, 0
  br i1 %i.an, label %bb.h, label %bb.br

bb.h:                                             ; preds = %bb.g
  %i.ao = tail call i32 (ptr, ...) @pfree(ptr noundef nonnull %i.aa) #4 ; 0 uses
  br label %bb.br

bb.i:                                             ; preds = %bb.f
  %i.ap = load i8, ptr %i.ac, align 2, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  store i8 %i.ap, ptr %i.aq, align 2, !tbaa !22
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.t
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 10 ; 4 uses
  %i.at = icmp eq i16 %i.f, 1
  %i.au = getelementptr inbounds i8, ptr %i.y, i64 -2
  %i.av = load i16, ptr %i.au, align 2, !tbaa !21 ; 3 uses
  br i1 %i.at, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.aw = zext i16 %i.av to i32                   ; 6 uses
  %i.ax = icmp eq i16 %i.av, 0
  br i1 %i.ax, label %bb.k, label %.preheader292.preheader

.preheader292.preheader:                          ; preds = %bb.j
  %4 = add nsw i64 %i.w, -2                       ; 3 uses
  %5 = lshr exact i64 %4, 1
  %6 = add nuw i64 %5, 1                          ; 2 uses
  %7 = icmp eq i64 %4, 0
  br i1 %7, label %.preheader292.epil.preheader, label %.preheader292.preheader.new

.preheader292.preheader.new:                      ; preds = %.preheader292.preheader
  %unroll_iter = and i64 %6, -2
  br label %.preheader292

bb.k:                                             ; preds = %bb.j
  %i.ay = tail call ptr @errorp(i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #4
  %i.az = tail call ptr @pnew(ptr noundef %i.ay) #4 ; 2 uses
  store ptr %i.az, ptr %i.c, align 8, !tbaa !17
  br label %bb.ai

.preheader292:                                    ; preds = %.preheader292, %.preheader292.preheader.new
  %.0176.idx = phi i64 [ %.add279, %.preheader292.preheader.new ], [ %.0176.add, %.preheader292 ] ; 2 uses
  %.0168 = phi ptr [ %i.as, %.preheader292.preheader.new ], [ %i.bg, %.preheader292 ] ; 2 uses
  %.0160 = phi i32 [ 0, %.preheader292.preheader.new ], [ %i.bh, %.preheader292 ]
  %niter = phi i64 [ 0, %.preheader292.preheader.new ], [ %niter.next.1, %.preheader292 ]
  %8 = shl nuw i32 %.0160, 16
  %9 = getelementptr i8, ptr %0, i64 %.0176.idx
  %.ptr280 = getelementptr i8, ptr %9, i64 -2
  %10 = load i16, ptr %.ptr280, align 2, !tbaa !21
  %11 = zext i16 %10 to i32
  %12 = or disjoint i32 %8, %11                   ; 2 uses
  %13 = udiv i32 %12, %i.aw
  %14 = trunc i32 %13 to i16
  %15 = getelementptr inbounds i8, ptr %.0168, i64 -2
  store i16 %14, ptr %15, align 2, !tbaa !21
  %16 = urem i32 %12, %i.aw
  %i.ba = shl nuw i32 %16, 16
  %.0176.add = add nsw i64 %.0176.idx, -4         ; 3 uses
  %.ptr280.a = getelementptr inbounds i8, ptr %0, i64 %.0176.add
  %i.bb = load i16, ptr %.ptr280.a, align 2, !tbaa !21
  %i.bc = zext i16 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc            ; 2 uses
  %i.be = udiv i32 %i.bd, %i.aw
  %i.bf = trunc i32 %i.be to i16
  %i.bg = getelementptr inbounds i8, ptr %.0168, i64 -4 ; 4 uses
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !21
  %i.bh = urem i32 %i.bd, %i.aw                   ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.unr-lcssa, label %.preheader292, !llvm.loop !8

.unr-lcssa:                                       ; preds = %.preheader292
  %17 = and i64 %4, 2
  %lcmp.mod.not.not = icmp eq i64 %17, 0
  br i1 %lcmp.mod.not.not, label %.preheader292.epil.preheader, label %bb.l

.preheader292.epil.preheader:                     ; preds = %.unr-lcssa, %.preheader292.preheader
  %.0176.idx.epil.init = phi i64 [ %.add279, %.preheader292.preheader ], [ %.0176.add, %.unr-lcssa ]
  %.0168.epil.init = phi ptr [ %i.as, %.preheader292.preheader ], [ %i.bg, %.unr-lcssa ]
  %.0160.epil.init = phi i32 [ 0, %.preheader292.preheader ], [ %i.bh, %.unr-lcssa ]
  %lcmp.mod311 = trunc i64 %6 to i1
  tail call void @llvm.assume(i1 %lcmp.mod311)
  %18 = shl nuw i32 %.0160.epil.init, 16
  %19 = getelementptr i8, ptr %0, i64 %.0176.idx.epil.init
  %.ptr280.epil = getelementptr i8, ptr %19, i64 -2
  %20 = load i16, ptr %.ptr280.epil, align 2, !tbaa !21
  %21 = zext i16 %20 to i32
  %22 = or disjoint i32 %18, %21                  ; 2 uses
  %23 = udiv i32 %22, %i.aw
  %24 = trunc i32 %23 to i16
  %25 = getelementptr inbounds i8, ptr %.0168.epil.init, i64 -2 ; 2 uses
  store i16 %24, ptr %25, align 2, !tbaa !21
  %26 = urem i32 %22, %i.aw
  br label %bb.l

bb.l:                                             ; preds = %.unr-lcssa, %.preheader292.epil.preheader
  %.lcssa301 = phi ptr [ %i.bg, %.unr-lcssa ], [ %25, %.preheader292.epil.preheader ]
  %.lcssa = phi i32 [ %i.bh, %.unr-lcssa ], [ %26, %.preheader292.epil.preheader ]
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.u
  %i.bj = trunc nuw i32 %.lcssa to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 6
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !21
  br label %bb.ai

bb.m:                                             ; preds = %bb.i
  %i.bl = tail call ptr (i32, ...) @palloc(i32 noundef %i.m) #4 ; 6 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.br, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = zext i16 %i.av to i32
  %i.bo = add nuw nsw i32 %i.bn, 1
  %i.bp = udiv i32 65536, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.br = and i32 %i.bp, 65535                    ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.1177 = phi ptr [ %i.bq, %bb.n ], [ %i.bz, %bb.o ] ; 2 uses
  %.0171 = phi ptr [ %i.x, %bb.n ], [ %i.bs, %bb.o ] ; 2 uses
  %.1161 = phi i32 [ 0, %bb.n ], [ %i.bx, %bb.o ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0171, i64 2 ; 2 uses
  %i.bt = load i16, ptr %.0171, align 2, !tbaa !21
  %i.bu = zext i16 %i.bt to i32
  %i.bv = mul nuw nsw i32 %i.br, %i.bu
  %i.bw = add nuw i32 %i.bv, %.1161               ; 2 uses
  %i.bx = lshr i32 %i.bw, 16                      ; 2 uses
  %i.by = trunc i32 %i.bw to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %.1177, i64 2
  store i16 %i.by, ptr %.1177, align 2, !tbaa !21
  %i.ca = icmp ult ptr %i.bs, %i.y
  br i1 %i.ca, label %bb.o, label %bb.p, !llvm.loop !9

bb.p:                                             ; preds = %bb.o
  %i.cb = call ptr @psetq(ptr noundef nonnull %i.b, ptr noundef nonnull %i.bl) #4 ; 0 uses
  %i.cc = load i16, ptr %i.bl, align 2, !tbaa !21
  %i.cd = add i16 %i.cc, -1                       ; 2 uses
  store i16 %i.cd, ptr %i.bl, align 2, !tbaa !21
  %i.ce = icmp eq i16 %i.cd, 0
  br i1 %i.ce, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cf = call i32 (ptr, ...) @pfree(ptr noundef nonnull %i.bl) #4 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cg = zext i16 %i.l to i32
  %i.ch = add nuw nsw i32 %i.cg, 1
  %i.ci = call ptr (i32, ...) @palloc(i32 noundef %i.ch) #4 ; 6 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.br, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.t
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.u
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.2178 = phi ptr [ %i.cl, %bb.s ], [ %i.cp, %bb.t ] ; 2 uses
  %.1172 = phi ptr [ %i.cm, %bb.s ], [ %i.cw, %bb.t ] ; 2 uses
  %.2162 = phi i32 [ %i.bx, %bb.s ], [ %i.cu, %bb.t ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.2178, i64 2 ; 2 uses
  %i.cq = load i16, ptr %.2178, align 2, !tbaa !21
  %i.cr = zext i16 %i.cq to i32
  %i.cs = mul nuw nsw i32 %i.br, %i.cr
  %i.ct = add nuw i32 %i.cs, %.2162               ; 2 uses
  %i.cu = lshr i32 %i.ct, 16                      ; 2 uses
  %i.cv = trunc i32 %i.ct to i16
  %i.cw = getelementptr inbounds nuw i8, ptr %.1172, i64 2 ; 2 uses
  store i16 %i.cv, ptr %.1172, align 2, !tbaa !21
  %i.cx = icmp ult ptr %i.cp, %i.co
  br i1 %i.cx, label %bb.t, label %bb.u, !llvm.loop !10

bb.u:                                             ; preds = %bb.t
  %i.cy = trunc nuw i32 %i.cu to i16
  store i16 %i.cy, ptr %i.cw, align 2, !tbaa !21
  %i.cz = call ptr @psetq(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ci) #4 ; 0 uses
  %i.da = load i16, ptr %i.ci, align 2, !tbaa !21
  %i.db = add i16 %i.da, -1                       ; 2 uses
  store i16 %i.db, ptr %i.ci, align 2, !tbaa !21
  %i.dc = icmp eq i16 %i.db, 0
  br i1 %i.dc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dd = call i32 (ptr, ...) @pfree(ptr noundef nonnull %i.ci) #4 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !17  ; 6 uses
  %.idx225 = shl nuw nsw i64 %i.t, 1
  %.add226 = add nuw nsw i64 %.idx225, 10
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %i.u ; 2 uses
  %.idx233 = shl nuw nsw i64 %i.u, 1              ; 3 uses
  %invariant.gep = getelementptr i8, ptr %i.de, i64 %.idx233
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 6
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %.neg = mul nsw i64 %i.u, -2                    ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  br label %bb.x

bb.x:                                             ; preds = %bb.ae, %bb.w
  %.3179.idx = phi i64 [ %.add226, %bb.w ], [ %.6.idx, %bb.ae ]
  %.1169 = phi ptr [ %i.as, %bb.w ], [ %i.fw, %bb.ae ]
  %.3179.add = add nsw i64 %.3179.idx, -2         ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.3179.add ; 3 uses
  %i.dk = load i16, ptr %gep, align 2, !tbaa !21  ; 2 uses
  %i.dl = load i16, ptr %i.dh, align 2, !tbaa !21 ; 2 uses
  %i.dm = icmp eq i16 %i.dk, %i.dl
  br i1 %i.dm, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = zext i16 %i.dl to i32                   ; 3 uses
  %i.do = zext i16 %i.dk to i32
  %i.dp = shl nuw i32 %i.do, 16
  %i.dq = getelementptr inbounds i8, ptr %gep, i64 -2
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !21
  %i.ds = zext i16 %i.dr to i32
  %i.dt = or disjoint i32 %i.dp, %i.ds            ; 2 uses
  %i.du = udiv i32 %i.dt, %i.dn
  %i.dv = trunc i32 %i.du to i16
  %i.dw = urem i32 %i.dt, %i.dn
  %i.dx = getelementptr inbounds i8, ptr %gep, i64 -4
  %i.dy = load i16, ptr %i.dj, align 2, !tbaa !21
  %i.dz = zext i16 %i.dy to i32
  %i.ea = load i16, ptr %i.dx, align 2, !tbaa !21
  %i.eb = zext i16 %i.ea to i32
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %bb.y
  %.0166 = phi i32 [ %i.dw, %bb.y ], [ %i.ei, %bb.aa ] ; 2 uses
  %.0 = phi i16 [ %i.dv, %bb.y ], [ %i.eh, %bb.aa ] ; 3 uses
  %i.ec = zext i16 %.0 to i32
  %i.ed = mul nuw nsw i32 %i.dz, %i.ec
  %i.ee = shl nuw i32 %.0166, 16
  %i.ef = or disjoint i32 %i.ee, %i.eb
  %i.eg = icmp ugt i32 %i.ed, %i.ef
  br i1 %i.eg, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.eh = add i16 %.0, -1                         ; 2 uses
  %i.ei = add nuw nsw i32 %.0166, %i.dn           ; 2 uses
  %i.ej = icmp samesign ugt i32 %i.ei, 65535
  br i1 %i.ej, label %.loopexit, label %bb.z, !llvm.loop !11

.loopexit:                                        ; preds = %bb.z, %bb.aa, %bb.x
  %.2 = phi i16 [ -1, %bb.x ], [ %.0, %bb.z ], [ %i.eh, %bb.aa ] ; 3 uses
  %i.ek = zext i16 %.2 to i32
  %i.el = add nuw nsw i64 %.3179.add, %.idx233
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.loopexit
  %.4180.idx = phi i64 [ %.3179.add, %.loopexit ], [ %.4180.add, %bb.ab ] ; 3 uses
  %.2173 = phi ptr [ %i.di, %.loopexit ], [ %i.em, %bb.ab ] ; 2 uses
  %.0164 = phi i32 [ 1, %.loopexit ], [ %i.ey, %bb.ab ]
  %.3163 = phi i32 [ 0, %.loopexit ], [ %i.er, %bb.ab ]
  %.4180.ptr = getelementptr inbounds nuw i8, ptr %i.de, i64 %.4180.idx ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.2173, i64 2
  %i.en = load i16, ptr %.2173, align 2, !tbaa !21
  %i.eo = zext i16 %i.en to i32
  %i.ep = mul nuw nsw i32 %i.eo, %i.ek
  %i.eq = add nuw i32 %i.ep, %.3163               ; 2 uses
  %i.er = lshr i32 %i.eq, 16                      ; 2 uses
  %i.es = and i32 %i.eq, 65535
  %i.et = xor i32 %i.es, 65535
  %i.eu = load i16, ptr %.4180.ptr, align 2, !tbaa !21
  %i.ev = zext i16 %i.eu to i32
  %i.ew = add nuw nsw i32 %.0164, %i.ev
  %i.ex = add nuw nsw i32 %i.ew, %i.et            ; 2 uses
  %i.ey = lshr i32 %i.ex, 16                      ; 2 uses
  %i.ez = trunc i32 %i.ex to i16
  %.4180.add = add nuw nsw i64 %.4180.idx, 2      ; 4 uses
  store i16 %i.ez, ptr %.4180.ptr, align 2, !tbaa !21
  %i.fa = icmp slt i64 %.4180.add, %i.el
  br i1 %i.fa, label %bb.ab, label %bb.ac, !llvm.loop !12

bb.ac:                                            ; preds = %bb.ab
  %.ptr = getelementptr inbounds nuw i8, ptr %i.de, i64 %.4180.add ; 2 uses
  %i.fb = xor i32 %i.er, 65535
  %i.fc = load i16, ptr %.ptr, align 2, !tbaa !21
  %i.fd = zext i16 %i.fc to i32
  %i.fe = add nuw nsw i32 %i.ey, %i.fb
  %i.ff = add nuw nsw i32 %i.fe, %i.fd            ; 2 uses
  %i.fg = trunc i32 %i.ff to i16
  store i16 %i.fg, ptr %.ptr, align 2, !tbaa !21
  %.add = add nsw i64 %.4180.add, %.neg           ; 2 uses
  %i.fh = icmp samesign ult i32 %i.ff, 65536
  br i1 %i.fh, label %.preheader, label %bb.ae

.preheader:                                       ; preds = %bb.ac, %.preheader
  %.5.idx = phi i64 [ %.5.add, %.preheader ], [ %.add, %bb.ac ] ; 3 uses
  %.3174 = phi ptr [ %i.fk, %.preheader ], [ %i.di, %bb.ac ] ; 2 uses
  %.1165 = phi i32 [ %i.fp, %.preheader ], [ 0, %bb.ac ]
  %.5.ptr = getelementptr inbounds i8, ptr %i.de, i64 %.5.idx ; 2 uses
  %i.fi = load i16, ptr %.5.ptr, align 2, !tbaa !21
  %i.fj = zext i16 %i.fi to i32
  %i.fk = getelementptr inbounds nuw i8, ptr %.3174, i64 2
  %i.fl = load i16, ptr %.3174, align 2, !tbaa !21
  %i.fm = zext i16 %i.fl to i32
  %i.fn = add nuw nsw i32 %.1165, %i.fj
  %i.fo = add nuw nsw i32 %i.fn, %i.fm            ; 2 uses
  %i.fp = lshr i32 %i.fo, 16                      ; 2 uses
  %i.fq = trunc i32 %i.fo to i16
  %.5.add = add nsw i64 %.5.idx, 2                ; 3 uses
  store i16 %i.fq, ptr %.5.ptr, align 2, !tbaa !21
  %i.fr = icmp slt i64 %.5.idx, %.4180.idx
  br i1 %i.fr, label %.preheader, label %bb.ad, !llvm.loop !13

bb.ad:                                            ; preds = %.preheader
  %.ptr228 = getelementptr inbounds i8, ptr %i.de, i64 %.5.add ; 2 uses
  %i.fs = load i16, ptr %.ptr228, align 2, !tbaa !21
  %i.ft = trunc nuw nsw i32 %i.fp to i16
  %i.fu = add i16 %i.fs, %i.ft
  store i16 %i.fu, ptr %.ptr228, align 2, !tbaa !21
  %.add224 = add nsw i64 %.5.add, %.neg
  %i.fv = add i16 %.2, -1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.6.idx = phi i64 [ %.add224, %bb.ad ], [ %.add, %bb.ac ] ; 2 uses
  %.3 = phi i16 [ %i.fv, %bb.ad ], [ %.2, %bb.ac ]
  %i.fw = getelementptr inbounds i8, ptr %.1169, i64 -2 ; 3 uses
  store i16 %.3, ptr %i.fw, align 2, !tbaa !21
  %i.fx = icmp sgt i64 %.6.idx, 8
  br i1 %i.fx, label %bb.x, label %bb.af, !llvm.loop !14

bb.af:                                            ; preds = %bb.ae
  %.add235 = add nuw nsw i64 %.idx233, 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.fy, i64 %i.u
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %bb.af
  %.7.idx = phi i64 [ %.add235, %bb.af ], [ %.7.add, %bb.ag ] ; 2 uses
  %.4175 = phi ptr [ %i.fz, %bb.af ], [ %i.gg, %bb.ag ]
  %.4 = phi i32 [ 0, %bb.af ], [ %i.gh, %bb.ag ]
  %i.ga = shl nuw i32 %.4, 16
  %.7.add = add nsw i64 %.7.idx, -2               ; 2 uses
  %.ptr236 = getelementptr inbounds i8, ptr %i.de, i64 %.7.add
  %i.gb = load i16, ptr %.ptr236, align 2, !tbaa !21
  %i.gc = zext i16 %i.gb to i32
  %i.gd = or disjoint i32 %i.ga, %i.gc            ; 2 uses
  %i.ge = udiv i32 %i.gd, %i.br
  %i.gf = trunc i32 %i.ge to i16
  %i.gg = getelementptr inbounds i8, ptr %.4175, i64 -2 ; 2 uses
  store i16 %i.gf, ptr %i.gg, align 2, !tbaa !21
  %i.gh = urem i32 %i.gd, %i.br
  %i.gi = icmp sgt i64 %.7.idx, 10
  br i1 %i.gi, label %bb.ag, label %bb.ah, !llvm.loop !15

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ...) @pnorm(ptr noundef nonnull %i.aj) #4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.k, %bb.l, %bb.ah
  %i.gj = phi ptr [ %i.az, %bb.k ], [ %i.aa, %bb.l ], [ %i.aa, %bb.ah ] ; 3 uses
  %.2170 = phi ptr [ %i.as, %bb.k ], [ %.lcssa301, %bb.l ], [ %i.fw, %bb.ah ] ; 2 uses
  %.not211 = icmp eq i16 %i.l, %i.f
  br i1 %.not211, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %.2170, i64 %i.t
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !21
  %i.gm = icmp eq i16 %i.gl, 0
  br i1 %i.gm, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 4 ; 2 uses
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !20
  %i.gp = add i16 %i.go, -1
  store i16 %i.gp, ptr %i.gn, align 2, !tbaa !20
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !20
  %i.gs = icmp eq i16 %i.gr, 1
  br i1 %i.gs, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.gt = load i16, ptr %.2170, align 2, !tbaa !21
  %i.gu = icmp eq i16 %i.gt, 0
  br i1 %i.gu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gj, i64 6
  store i8 0, ptr %i.gv, align 2, !tbaa !22
  br label %bb.ao

bb.ao:                                            ; preds = %bb.al, %bb.am, %bb.an, %bb.d
  %i.gw = load ptr, ptr %i.a, align 8, !tbaa !17  ; 4 uses
  %.not213 = icmp eq ptr %i.gw, null
  br i1 %.not213, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !21
  %i.gy = add i16 %i.gx, -1                       ; 2 uses
  store i16 %i.gy, ptr %i.gw, align 2, !tbaa !21
  %i.gz = icmp eq i16 %i.gy, 0
  br i1 %i.gz, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ha = call i32 (ptr, ...) @pfree(ptr noundef nonnull %i.gw) #4 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.hb = load ptr, ptr %i.b, align 8, !tbaa !17  ; 4 uses
  %.not214 = icmp eq ptr %i.hb, null
  br i1 %.not214, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !21
  %i.hd = add i16 %i.hc, -1                       ; 2 uses
  store i16 %i.hd, ptr %i.hb, align 2, !tbaa !21
  %i.he = icmp eq i16 %i.hd, 0
  br i1 %i.he, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hf = call i32 (ptr, ...) @pfree(ptr noundef nonnull %i.hb) #4 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %i.hg = icmp eq ptr %3, inttoptr (i64 -1 to ptr)
  br i1 %i.hg, label %bb.av, label %bb.bb

bb.av:                                            ; preds = %bb.au
  %.not221 = icmp eq ptr %2, null
  %.pre258 = load ptr, ptr %i.c, align 8, !tbaa !17 ; 2 uses
  br i1 %.not221, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hh = call ptr @psetq(ptr noundef nonnull %2, ptr noundef %.pre258) #4 ; 0 uses
  %.pre257 = load ptr, ptr %i.c, align 8, !tbaa !17
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.hi = phi ptr [ %.pre257, %bb.aw ], [ %.pre258, %bb.av ] ; 4 uses
  %.not222 = icmp eq ptr %i.hi, null
  br i1 %.not222, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !21
  %i.hk = add i16 %i.hj, -1                       ; 2 uses
  store i16 %i.hk, ptr %i.hi, align 2, !tbaa !21
  %i.hl = icmp eq i16 %i.hk, 0
  br i1 %i.hl, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.hm = call i32 (ptr, ...) @pfree(ptr noundef nonnull %i.hi) #4 ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %i.hn = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.ho = call ptr @presult(ptr noundef %i.hn) #4
  br label %bb.br

bb.bb:                                            ; preds = %bb.au
  %magicptr = ptrtoint ptr %2 to i64
  switch i64 %magicptr, label %bb.bi [
    i64 -1, label %bb.bc
    i64 0, label %bb.bj
  ]

bb.bc:                                            ; preds = %bb.bb
  %.not219 = icmp eq ptr %3, null
  %.pre256 = load ptr, ptr %i.d, align 8, !tbaa !17 ; 2 uses
  br i1 %.not219, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hp = call ptr @psetq(ptr noundef nonnull %3, ptr noundef %.pre256) #4 ; 0 uses
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !17
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.hq = phi ptr [ %.pre, %bb.bd ], [ %.pre256, %bb.bc ] ; 4 uses
  %.not220 = icmp eq ptr %i.hq, null
  br i1 %.not220, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !21
  %i.hs = add i16 %i.hr, -1                       ; 2 uses
  store i16 %i.hs, ptr %i.hq, align 2, !tbaa !21
  %i.ht = icmp eq i16 %i.hs, 0
  br i1 %i.ht, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.hu = call i32 (ptr, ...) @pfree(ptr noundef nonnull %i.hq) #4 ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %i.hv = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.hw = call ptr @presult(ptr noundef %i.hv) #4
  br label %bb.br

bb.bi:                                            ; preds = %bb.bb
  %i.hx = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.hy = call ptr @psetq(ptr noundef nonnull %2, ptr noundef %i.hx) #4 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bb, %bb.bi
  %.not216 = icmp eq ptr %3, null
  br i1 %.not216, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hz = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.ia = call ptr @psetq(ptr noundef nonnull %3, ptr noundef %i.hz) #4 ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.ib = load ptr, ptr %i.c, align 8, !tbaa !17  ; 4 uses
  %.not217 = icmp eq ptr %i.ib, null
  br i1 %.not217, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !21
  %i.id = add i16 %i.ic, -1                       ; 2 uses
  store i16 %i.id, ptr %i.ib, align 2, !tbaa !21
  %i.ie = icmp eq i16 %i.id, 0
  br i1 %i.ie, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.if = call i32 (ptr, ...) @pfree(ptr noundef nonnull %i.ib) #4 ; 0 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl
  %i.ig = load ptr, ptr %i.d, align 8, !tbaa !17  ; 4 uses
  %.not218 = icmp eq ptr %i.ig, null
  br i1 %.not218, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !21
  %i.ii = add i16 %i.ih, -1                       ; 2 uses
  store i16 %i.ii, ptr %i.ig, align 2, !tbaa !21
  %i.ij = icmp eq i16 %i.ii, 0
  br i1 %i.ij, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ik = call i32 (ptr, ...) @pfree(ptr noundef nonnull %i.ig) #4 ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.g, %bb.h, %bb.bo, %bb.bp, %bb.bq, %bb.r, %bb.m, %bb.e, %bb.bh, %bb.ba
  %.0181 = phi ptr [ %i.ho, %bb.ba ], [ %i.hw, %bb.bh ], [ null, %bb.r ], [ null, %bb.m ], [ null, %bb.bo ], [ null, %bb.e ], [ null, %bb.bq ], [ null, %bb.bp ], [ null, %bb.h ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  ret ptr %.0181
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @psetq(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @palloc(...) local_unnamed_addr #2

declare i32 @pfree(...) local_unnamed_addr #2

declare ptr @pnew(ptr noundef) local_unnamed_addr #2

declare ptr @errorp(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @pnorm(...) local_unnamed_addr #2

declare ptr @presult(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = distinct !{!8, !23}
!9 = distinct !{!9, !23}
!10 = distinct !{!10, !23}
!11 = distinct !{!11, !23}
!12 = distinct !{!12, !23}
!13 = distinct !{!13, !23}
!14 = distinct !{!14, !23}
!15 = distinct !{!15, !23}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"short", !5, i64 0}
!19 = !{!"", !18, i64 0, !18, i64 2, !18, i64 4, !5, i64 6, !5, i64 8}
!20 = !{!19, !18, i64 4}
!21 = !{!18, !18, i64 0}
!22 = !{!19, !5, i64 6}
!23 = !{!"llvm.loop.mustprogress"}
end_hunk_0
