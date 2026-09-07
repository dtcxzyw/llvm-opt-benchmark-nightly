Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_libvsprintf?download=true
inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { %struct.dtoa_s }
%struct.dtoa_s = type { i32, i8, [16 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@g_nullstring = internal constant [7 x i8] c"(null)\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i32 @lib_vsprintf(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i32 @vsprintf_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret i32 %i.a
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal fastcc i32 @vsprintf_internal(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %union.anon, align 4                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 29 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.d = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 5 ; 4 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.1436 = phi i32 [ 0, %bb.a ], [ %.1436.be, %.backedge.backedge ] ; 13 uses
  %.1431 = phi ptr [ %1, %bb.a ], [ %.1431.be, %.backedge.backedge ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.1431, i64 1 ; 2 uses
  %i.j = load i8, ptr %.1431, align 1             ; 2 uses
  switch i8 %i.j, label %bb.c [
    i8 0, label %.loopexit66
    i8 37, label %bb.b
  ]

bb.b:                                             ; preds = %.backedge
  %i.k = getelementptr inbounds nuw i8, ptr %.1431, i64 2 ; 2 uses
  %i.l = load i8, ptr %i.i, align 1               ; 2 uses
  %.not = icmp eq i8 %i.l, 37
  br i1 %.not, label %bb.c, label %.preheader65

bb.c:                                             ; preds = %.backedge, %bb.b
  %.2432 = phi ptr [ %i.k, %bb.b ], [ %i.i, %.backedge ]
  %i.m = add nsw i32 %.1436, 1
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = zext i8 %i.j to i32
  call void %i.n(ptr noundef %0, i32 noundef %i.o) #11
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.c, %.backedge.loopexit, %.loopexit51, %bb.em
  %.1436.be = phi i32 [ %i.m, %bb.c ], [ %i.nv, %bb.em ], [ %.27, %.loopexit51 ], [ %i.nx, %.backedge.loopexit ]
  %.1431.be = phi ptr [ %.2432, %bb.c ], [ %.4434162642, %bb.em ], [ %.443414, %.loopexit51 ], [ %.443414, %.backedge.loopexit ]
  br label %.backedge

.preheader65:                                     ; preds = %bb.b, %bb.ag
  %.1488 = phi i8 [ %i.bn, %bb.ag ], [ %i.l, %bb.b ] ; 7 uses
  %.0468 = phi i16 [ %.4472, %bb.ag ], [ 0, %bb.b ] ; 27 uses
  %.0455 = phi i32 [ %.1456, %bb.ag ], [ 0, %bb.b ] ; 21 uses
  %.0447 = phi i32 [ %.1448, %bb.ag ], [ 0, %bb.b ] ; 17 uses
  %.3433 = phi ptr [ %i.bm, %bb.ag ], [ %i.k, %bb.b ] ; 12 uses
  %i.p = zext i16 %.0468 to i32                   ; 2 uses
  %i.q = icmp ult i16 %.0468, 64
  br i1 %i.q, label %bb.d, label %bb.j

bb.d:                                             ; preds = %.preheader65
  switch i8 %.1488, label %.thread [
    i8 48, label %bb.e
    i8 43, label %bb.f
    i8 32, label %bb.g
    i8 45, label %bb.h
    i8 35, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.r = or i16 %.0468, 1
  br label %bb.ag

bb.f:                                             ; preds = %bb.d
  %i.s = or i16 %.0468, 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.1469 = phi i16 [ %i.s, %bb.f ], [ %.0468, %bb.d ]
  %i.t = or i16 %.1469, 4
  br label %bb.ag

bb.h:                                             ; preds = %bb.d
  %i.u = or i16 %.0468, 8
  br label %bb.ag

bb.i:                                             ; preds = %bb.d
  %i.v = or i16 %.0468, 16
  br label %bb.ag

bb.j:                                             ; preds = %.preheader65
  %i.w = icmp ult i16 %.0468, 512
  br i1 %i.w, label %.thread, label %bb.aa

.thread:                                          ; preds = %bb.d, %bb.j
  %i.x = add i8 %.1488, -48                       ; 2 uses
  %or.cond = icmp ult i8 %i.x, 10
  br i1 %or.cond, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.thread
  %.not540 = icmp samesign ult i16 %.0468, 256
  %i.y = zext nneg i8 %i.x to i32                 ; 2 uses
  br i1 %.not540, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = mul nsw i32 %.0447, 10
  %i.aa = add nuw nsw i32 %i.z, %i.y
  br label %bb.ag

bb.m:                                             ; preds = %bb.k
  %i.ab = mul nsw i32 %.0455, 10
  %i.ac = add nuw nsw i32 %i.ab, %i.y
  %i.ad = or i16 %.0468, 128
  br label %bb.ag

bb.n:                                             ; preds = %.thread
  switch i8 %.1488, label %bb.aa [
    i8 42, label %bb.o
    i8 46, label %bb.y
  ]

bb.o:                                             ; preds = %bb.n
  %.not539 = icmp samesign ult i16 %.0468, 256
  %i.ae = load i32, ptr %2, align 8               ; 5 uses
  %i.af = icmp ult i32 %i.ae, 41                  ; 2 uses
  br i1 %.not539, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.af, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ag = load ptr, ptr %i.c, align 8
  %i.ah = zext nneg i32 %i.ae to i64
  %i.ai = getelementptr i8, ptr %i.ag, i64 %i.ah
  %i.aj = add nuw nsw i32 %i.ae, 8
  store i32 %i.aj, ptr %2, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ak = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  store ptr %i.al, ptr %i.b, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.am = phi ptr [ %i.ai, %bb.q ], [ %i.ak, %bb.r ]
  %i.an = load i32, ptr %i.am, align 4
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.an, i32 0)
  br label %bb.ag

bb.t:                                             ; preds = %bb.o
  br i1 %i.af, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ao = load ptr, ptr %i.c, align 8
  %i.ap = zext nneg i32 %i.ae to i64
  %i.aq = getelementptr i8, ptr %i.ao, i64 %i.ap
  %i.ar = add nuw nsw i32 %i.ae, 8
  store i32 %i.ar, ptr %2, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.as = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 8
  store ptr %i.at, ptr %i.b, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.au = phi ptr [ %i.aq, %bb.u ], [ %i.as, %bb.v ]
  %i.av = load i32, ptr %i.au, align 4            ; 3 uses
  %i.aw = or i16 %.0468, 128
  %i.ax = icmp slt i32 %i.av, 0
  br i1 %i.ax, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.ay = sub nsw i32 0, %i.av
  %i.az = or i16 %.0468, 136
  br label %bb.ag

bb.y:                                             ; preds = %bb.n
  %.not538 = icmp samesign ult i16 %.0468, 256
  br i1 %.not538, label %bb.z, label %.loopexit66

bb.z:                                             ; preds = %bb.y
  %i.ba = or disjoint i16 %.0468, 256
  br label %bb.ag

bb.aa:                                            ; preds = %bb.n, %bb.j
  %i.bb = icmp eq i8 %.1488, 122
  %i.bc = icmp eq i8 %.1488, 116
  %or.cond5 = or i1 %i.bb, %i.bc
  %spec.store.select34 = select i1 %or.cond5, i8 108, i8 %.1488 ; 10 uses
  %i.bd = icmp eq i8 %spec.store.select34, 106
  br i1 %i.bd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.be = and i16 %.0468, -3585
  %i.bf = or disjoint i16 %i.be, 2560
  br label %bb.ag

bb.ac:                                            ; preds = %bb.aa
  %i.bg = and i8 %spec.store.select34, -33
  %or.cond8 = icmp eq i8 %i.bg, 76
  br i1 %or.cond8, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bh = and i32 %i.p, 512
  %.not537 = icmp eq i32 %i.bh, 0
  %.2470.v = select i1 %.not537, i16 512, i16 2048
  %.0468.masked49 = and i16 %.0468, -1025
  %i.bi = or i16 %.2470.v, %.0468.masked49
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bj = icmp eq i8 %spec.store.select34, 104
  br i1 %i.bj, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.bk = and i32 %i.p, 1024
  %.not536 = icmp eq i32 %i.bk, 0
  %.3471.v = select i1 %.not536, i16 1024, i16 2048
  %.0468.masked = and i16 %.0468, -513
  %i.bl = or i16 %.3471.v, %.0468.masked
  br label %bb.ag

bb.ag:                                            ; preds = %bb.s, %bb.x, %bb.w, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.m, %bb.l, %bb.i, %bb.h, %bb.g, %bb.e
  %.4472 = phi i16 [ %.0468, %bb.l ], [ %i.ad, %bb.m ], [ %.0468, %bb.s ], [ %i.az, %bb.x ], [ %i.aw, %bb.w ], [ %i.ba, %bb.z ], [ %i.bf, %bb.ab ], [ %i.bi, %bb.ad ], [ %i.bl, %bb.af ], [ %i.r, %bb.e ], [ %i.t, %bb.g ], [ %i.u, %bb.h ], [ %i.v, %bb.i ] ; 2 uses
  %.1456 = phi i32 [ %.0455, %bb.l ], [ %i.ac, %bb.m ], [ %.0455, %bb.s ], [ %i.ay, %bb.x ], [ %i.av, %bb.w ], [ %.0455, %bb.z ], [ %.0455, %bb.ab ], [ %.0455, %bb.ad ], [ %.0455, %bb.af ], [ %.0455, %bb.e ], [ %.0455, %bb.g ], [ %.0455, %bb.h ], [ %.0455, %bb.i ] ; 2 uses
  %.1448 = phi i32 [ %i.aa, %bb.l ], [ %.0447, %bb.m ], [ %spec.store.select, %bb.s ], [ %.0447, %bb.x ], [ %.0447, %bb.w ], [ %.0447, %bb.z ], [ %.0447, %bb.ab ], [ %.0447, %bb.ad ], [ %.0447, %bb.af ], [ %.0447, %bb.e ], [ %.0447, %bb.g ], [ %.0447, %bb.h ], [ %.0447, %bb.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.3433, i64 1 ; 2 uses
  %i.bn = load i8, ptr %.3433, align 1            ; 2 uses
  %.not541 = icmp eq i8 %i.bn, 0
  br i1 %.not541, label %.thread30, label %.preheader65, !llvm.loop !7

bb.ah:                                            ; preds = %bb.ae
  %i.bo = zext i8 %spec.store.select34 to i32
  %i.bp = icmp eq i8 %spec.store.select34, 112
  %i.bq = or i16 %.0468, 2560
  %spec.select = select i1 %i.bp, i16 %i.bq, i16 %.0468 ; 3 uses
  %i.br = add i8 %spec.store.select34, -69
  %or.cond11 = icmp ult i8 %i.br, 3
  br i1 %or.cond11, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.bs = or i16 %.0468, 8192
  %i.bt = or disjoint i8 %spec.store.select34, 32
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.bu = add i8 %spec.store.select34, -101
  %or.cond14 = icmp ult i8 %i.bu, 3
  br i1 %or.cond14, label %bb.ak, label %bb.cm

bb.ak:                                            ; preds = %bb.aj
  %i.bv = and i16 %.0468, -8193
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %.3490 = phi i8 [ %i.bt, %bb.ai ], [ %.1488, %bb.ak ]
  %.7475 = phi i16 [ %i.bs, %bb.ai ], [ %i.bv, %bb.ak ] ; 2 uses
  %i.bw = and i16 %.7475, 256
  %i.bx = icmp eq i16 %i.bw, 0
  %spec.select590 = select i1 %i.bx, i32 6, i32 %.0447 ; 4 uses
  %i.by = and i16 %.7475, 16383                   ; 3 uses
  switch i8 %.3490, label %bb.ao [
    i8 101, label %bb.am
    i8 102, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  %i.bz = trunc i32 %spec.select590 to i8
  %i.ca = add i8 %i.bz, 1
  %i.cb = or disjoint i16 %i.by, 16384
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.cc = or disjoint i16 %i.by, -32768
  %i.cd = and i32 %spec.select590, 255
  br label %bb.ap

bb.ao:                                            ; preds = %bb.al
  %i.ce = trunc i32 %spec.select590 to i8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.am
  %.8476 = phi i16 [ %i.cb, %bb.am ], [ %i.cc, %bb.an ], [ %i.by, %bb.ao ] ; 7 uses
  %.0422 = phi i8 [ %i.ca, %bb.am ], [ 15, %bb.an ], [ %i.ce, %bb.ao ]
  %.0421 = phi i32 [ 0, %bb.am ], [ %i.cd, %bb.an ], [ 0, %bb.ao ]
  %spec.store.select15 = call i8 @llvm.umin.i8(i8 %.0422, i8 15)
  %i.cf = load i32, ptr %i.f, align 4             ; 3 uses
  %i.cg = icmp ult i32 %i.cf, 161
  br i1 %i.cg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ch = load ptr, ptr %i.c, align 8
  %i.ci = zext nneg i32 %i.cf to i64
  %i.cj = getelementptr i8, ptr %i.ch, i64 %i.ci
  %i.ck = add nuw nsw i32 %i.cf, 16
  store i32 %i.ck, ptr %i.f, align 4
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.cl = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  store ptr %i.cm, ptr %i.b, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.cn = phi ptr [ %i.cj, %bb.aq ], [ %i.cl, %bb.ar ]
  %i.co = load double, ptr %i.cn, align 8
  %i.cp = zext nneg i8 %spec.store.select15 to i32
  %i.cq = call i32 @__dtoa_engine(double noundef %i.co, ptr noundef nonnull %3, i32 noundef %i.cp, i32 noundef %.0421) #11 ; 2 uses
  %i.cr = trunc i32 %i.cq to i8                   ; 3 uses
  %i.cs = load i32, ptr %3, align 4               ; 12 uses
  %i.ct = load i8, ptr %i.g, align 4              ; 2 uses
  %i.cu = and i8 %i.ct, 1
  %.not566 = icmp eq i8 %i.cu, 0
  br i1 %.not566, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.cv = zext i16 %.8476 to i32                  ; 2 uses
  %i.cw = and i32 %i.cv, 2
  %.not567 = icmp eq i32 %i.cw, 0
  br i1 %.not567, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.cx = and i32 %i.cv, 4                        ; 2 uses
  %.not568 = icmp eq i32 %i.cx, 0
  %i.cy = shl nuw nsw i32 %i.cx, 3
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.not572 = phi i1 [ %.not568, %bb.au ], [ false, %bb.as ], [ false, %bb.at ] ; 5 uses
  %.0424 = phi i32 [ %i.cy, %bb.au ], [ 45, %bb.as ], [ 43, %bb.at ] ; 2 uses
  %i.cz = and i8 %i.ct, 12
  %.not569 = icmp eq i8 %i.cz, 0
  br i1 %.not569, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.neg212 = select i1 %.not572, i32 -3, i32 -4
  %i.da = select i1 %.not572, i32 3, i32 4        ; 2 uses
  %i.db = icmp sgt i32 %.0455, %i.da
  br i1 %i.db, label %bb.ax, label %.loopexit62

bb.ax:                                            ; preds = %bb.aw
  %i.dc = sub nuw nsw i32 %.0455, %i.da           ; 2 uses
  %i.dd = and i16 %.8476, 8
  %i.de = icmp eq i16 %i.dd, 0
  br i1 %i.de, label %.preheader61, label %.loopexit62

.preheader61:                                     ; preds = %bb.ax, %.preheader61
  %.3458 = phi i32 [ %i.dg, %.preheader61 ], [ %i.dc, %bb.ax ]
  %i.df = load ptr, ptr %i.a, align 8
  call void %i.df(ptr noundef %0, i32 noundef 32) #11
  %i.dg = add nsw i32 %.3458, -1                  ; 2 uses
  %.not584 = icmp eq i32 %i.dg, 0
  br i1 %.not584, label %.loopexit62.loopexit, label %.preheader61, !llvm.loop !8

.loopexit62.loopexit:                             ; preds = %.preheader61
  %4 = add i32 %.neg212, %.1436
  %i.dh = add i32 %4, %.0455
  br label %.loopexit62

.loopexit62:                                      ; preds = %.loopexit62.loopexit, %bb.aw, %bb.ax
  %.4459 = phi i32 [ 0, %bb.aw ], [ %i.dc, %bb.ax ], [ 0, %.loopexit62.loopexit ] ; 2 uses
  %.3438 = phi i32 [ %.1436, %bb.aw ], [ %.1436, %bb.ax ], [ %i.dh, %.loopexit62.loopexit ] ; 2 uses
  br i1 %.not572, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.loopexit62
  %i.di = add nsw i32 %.3438, 1
  %i.dj = load ptr, ptr %i.a, align 8
  call void %i.dj(ptr noundef %0, i32 noundef %.0424) #11
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.loopexit62
  %.4439 = phi i32 [ %i.di, %bb.ay ], [ %.3438, %.loopexit62 ] ; 2 uses
  %i.dk = load i8, ptr %i.g, align 4
  %i.dl = and i8 %i.dk, 8
  %.not586 = icmp eq i8 %i.dl, 0
  %spec.store.select16 = select i1 %.not586, ptr @.str, ptr @.str.1 ; 2 uses
  %i.dm = load i8, ptr %spec.store.select16, align 1 ; 2 uses
  %.not58789 = icmp eq i8 %i.dm, 0
  br i1 %.not58789, label %.loopexit51, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.az
  %i.dn = and i16 %.8476, 8192
  %.not589 = icmp eq i16 %i.dn, 0
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph92, %bb.ba
  %i.do = phi i8 [ %i.dm, %.lr.ph92 ], [ %i.du, %bb.ba ] ; 2 uses
  %.042091 = phi ptr [ %spec.store.select16, %.lr.ph92 ], [ %i.dt, %bb.ba ]
  %.590 = phi i32 [ %.4439, %.lr.ph92 ], [ %i.dq, %bb.ba ]
  %i.dp = add i8 %i.do, -32
  %spec.select593 = select i1 %.not589, i8 %i.do, i8 %i.dp
  %i.dq = add nsw i32 %.590, 1                    ; 2 uses
  %i.dr = load ptr, ptr %i.a, align 8
  %i.ds = zext i8 %spec.select593 to i32
  call void %i.dr(ptr noundef %0, i32 noundef %i.ds) #11
  %i.dt = getelementptr inbounds nuw i8, ptr %.042091, i64 1 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1             ; 2 uses
  %.not587 = icmp eq i8 %i.du, 0
  br i1 %.not587, label %.loopexit51, label %bb.ba, !llvm.loop !9

bb.bb:                                            ; preds = %bb.av
  %i.dv = icmp ult i16 %.8476, 16384
  br i1 %i.dv, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.dw = and i32 %i.cq, 255
  %.not57095 = icmp eq i8 %i.cr, 0
  br i1 %.not57095, label %.critedge, label %.lr.ph97

.lr.ph97:                                         ; preds = %bb.bc, %bb.bd
  %.296 = phi i8 [ %i.ec, %bb.bd ], [ %i.cr, %bb.bc ] ; 3 uses
  %i.dx = zext i8 %.296 to i64
  %i.dy = getelementptr i8, ptr %3, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.dy, i64 4
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = icmp eq i8 %i.ea, 48
  br i1 %i.eb, label %bb.bd, label %.critedge

bb.bd:                                            ; preds = %.lr.ph97
  %i.ec = add i8 %.296, -1                        ; 2 uses
  %.not570 = icmp eq i8 %i.ec, 0
  br i1 %.not570, label %.critedge, label %.lr.ph97, !llvm.loop !10

.critedge:                                        ; preds = %.lr.ph97, %bb.bd, %bb.bc
  %.2.lcssa94 = phi i8 [ 0, %bb.bc ], [ 0, %bb.bd ], [ %.296, %.lr.ph97 ] ; 4 uses
  %i.ed = zext i8 %.2.lcssa94 to i32              ; 3 uses
  %i.ee = icmp sgt i32 %i.cs, -5
  %i.ef = icmp slt i32 %i.cs, %i.dw
  %or.cond594 = select i1 %i.ee, i1 %i.ef, i1 false
  br i1 %or.cond594, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %.critedge
  %i.eg = or disjoint i16 %.8476, -32768          ; 2 uses
  %i.eh = icmp slt i32 %i.cs, 0
  %i.ei = icmp slt i32 %i.cs, %i.ed
  %or.cond595 = or i1 %i.eh, %i.ei
  br i1 %or.cond595, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %.neg = xor i32 %i.cs, -1
  %i.ej = add nsw i32 %i.ed, %.neg
  br label %bb.bh

bb.bg:                                            ; preds = %.critedge
  %i.ek = add nsw i32 %i.ed, -1
  br label %bb.bh

bb.bh:                                            ; preds = %bb.be, %bb.bg, %bb.bf, %bb.bb
  %.9477 = phi i16 [ %i.eg, %bb.bf ], [ %.8476, %bb.bb ], [ %.8476, %bb.bg ], [ %i.eg, %bb.be ] ; 2 uses
  %.4451 = phi i32 [ %i.ej, %bb.bf ], [ %spec.select590, %bb.bb ], [ %i.ek, %bb.bg ], [ 0, %bb.be ]
  %.3 = phi i8 [ %.2.lcssa94, %bb.bf ], [ %i.cr, %bb.bb ], [ %.2.lcssa94, %bb.bg ], [ %.2.lcssa94, %bb.be ] ; 2 uses
  %.4451.fr = freeze i32 %.4451                   ; 5 uses
  %i.el = zext i16 %.9477 to i32                  ; 6 uses
  %.not571 = icmp sgt i16 %.9477, -1              ; 2 uses
  %i.em = call i32 @llvm.smax.i32(i32 %i.cs, i32 0) ; 2 uses
  %i.en = add nuw nsw i32 %i.em, 1
  %.0425 = select i1 %.not571, i32 5, i32 %i.en
  %not..not572 = xor i1 %.not572, true
  %i.eo = zext i1 %not..not572 to i32
  %.1426 = add nuw i32 %.0425, %i.eo
  %.not573 = icmp eq i32 %.4451.fr, 0
  %i.ep = add nsw i32 %.4451.fr, 1
  %i.eq = lshr i32 %i.el, 4
  %i.er = and i32 %i.eq, 1
  %spec.select263 = select i1 %.not573, i32 %i.er, i32 %i.ep
  %.2427 = add i32 %.1426, %spec.select263        ; 3 uses
  %i.es = icmp sgt i32 %.0455, %.2427
  %i.et = sub nsw i32 %.0455, %.2427              ; 2 uses
  %i.eu = select i1 %i.es, i32 %i.et, i32 0       ; 2 uses
  %i.ev = and i32 %i.el, 9
  %i.ew = icmp eq i32 %i.ev, 0
  %i.ex = icmp ne i32 %i.eu, 0
  %or.cond36 = select i1 %i.ew, i1 %i.ex, i1 false
  br i1 %or.cond36, label %.preheader58, label %.loopexit59

.preheader58:                                     ; preds = %bb.bh, %.preheader58
  %.5460 = phi i32 [ %i.ez, %.preheader58 ], [ %i.et, %bb.bh ]
  %i.ey = load ptr, ptr %i.a, align 8
  call void %i.ey(ptr noundef %0, i32 noundef 32) #11
  %i.ez = add nsw i32 %.5460, -1                  ; 2 uses
  %.old35.not = icmp eq i32 %i.ez, 0
  br i1 %.old35.not, label %.loopexit59.loopexit, label %.preheader58

.loopexit59.loopexit:                             ; preds = %.preheader58
  %5 = sub i32 %.1436, %.2427
  %i.fa = add i32 %5, %.0455
  br label %.loopexit59

.loopexit59:                                      ; preds = %.loopexit59.loopexit, %bb.bh
  %.6461 = phi i32 [ %i.eu, %bb.bh ], [ 0, %.loopexit59.loopexit ] ; 4 uses
  %.7 = phi i32 [ %.1436, %bb.bh ], [ %i.fa, %.loopexit59.loopexit ] ; 2 uses
  br i1 %.not572, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.loopexit59
  %i.fb = add nsw i32 %.7, 1
  %i.fc = load ptr, ptr %i.a, align 8
  call void %i.fc(ptr noundef %0, i32 noundef %.0424) #11
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.loopexit59
  %.8 = phi i32 [ %i.fb, %bb.bi ], [ %.7, %.loopexit59 ] ; 2 uses
  %i.fd = and i32 %i.el, 8
  %i.fe = icmp eq i32 %i.fd, 0
  %i.ff = icmp ne i32 %.6461, 0
  %or.cond39 = select i1 %i.fe, i1 %i.ff, i1 false
  br i1 %or.cond39, label %.preheader56, label %.loopexit57

.preheader56:                                     ; preds = %bb.bj, %.preheader56
  %.7462 = phi i32 [ %i.fh, %.preheader56 ], [ %.6461, %bb.bj ]
  %i.fg = load ptr, ptr %i.a, align 8
  call void %i.fg(ptr noundef %0, i32 noundef 48) #11
  %i.fh = add nsw i32 %.7462, -1                  ; 2 uses
  %.old38.not = icmp eq i32 %i.fh, 0
  br i1 %.old38.not, label %.loopexit57.loopexit, label %.preheader56

.loopexit57.loopexit:                             ; preds = %.preheader56
  %i.fi = add i32 %.6461, %.8
  br label %.loopexit57

.loopexit57:                                      ; preds = %.loopexit57.loopexit, %bb.bj
  %.8463 = phi i32 [ %.6461, %bb.bj ], [ 0, %.loopexit57.loopexit ] ; 4 uses
  %.10 = phi i32 [ %.8, %bb.bj ], [ %i.fi, %.loopexit57.loopexit ] ; 4 uses
  br i1 %.not571, label %bb.bx, label %.preheader55

.preheader55:                                     ; preds = %.loopexit57
  %i.fj = zext i8 %.3 to i32
  %i.fk = sub nsw i32 0, %.4451.fr
  br label %bb.bk

bb.bk:                                            ; preds = %.preheader55, %bb.bp
  %.11 = phi i32 [ %i.fv, %bb.bp ], [ %.10, %.preheader55 ] ; 2 uses
  %.3428 = phi i32 [ %i.fu, %bb.bp ], [ %i.em, %.preheader55 ] ; 5 uses
  %i.fl = icmp eq i32 %.3428, -1
  br i1 %i.fl, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.fm = add nsw i32 %.11, 1
  %i.fn = load ptr, ptr %i.a, align 8
  call void %i.fn(ptr noundef %0, i32 noundef 46) #11
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.12 = phi i32 [ %i.fm, %bb.bl ], [ %.11, %bb.bk ] ; 3 uses
  %i.fo = sub nsw i32 %i.cs, %.3428               ; 3 uses
  %i.fp = icmp sgt i32 %i.fo, -1
  %i.fq = icmp slt i32 %i.fo, %i.fj
  %or.cond598 = select i1 %i.fp, i1 %i.fq, i1 false
  br i1 %or.cond598, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.fr = zext nneg i32 %i.fo to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %.0417 = phi i8 [ %i.ft, %bb.bn ], [ 48, %bb.bm ] ; 4 uses
  %i.fu = add nsw i32 %.3428, -1                  ; 2 uses
  %.not581 = icmp sgt i32 %.3428, %i.fk
  br i1 %.not581, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.fv = add nsw i32 %.12, 1
  %i.fw = load ptr, ptr %i.a, align 8
  %i.fx = sext i8 %.0417 to i32
  call void %i.fw(ptr noundef %0, i32 noundef %i.fx) #11
  br label %bb.bk

bb.bq:                                            ; preds = %bb.bo
  %i.fy = icmp eq i32 %i.fu, %i.cs
  br i1 %i.fy, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %bb.bq
  %i.fz = load i8, ptr %i.h, align 1              ; 2 uses
  %i.ga = icmp sgt i8 %i.fz, 53
  br i1 %i.ga, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gb = icmp eq i8 %i.fz, 53
  br i1 %i.gb, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.gc = load i8, ptr %i.g, align 4
  %i.gd = and i8 %i.gc, 16
  %.not582 = icmp eq i8 %i.gd, 0
  br i1 %.not582, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %bb.br
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.bq
  %.1418 = phi i8 [ 49, %bb.bu ], [ %.0417, %bb.bt ], [ %.0417, %bb.bs ], [ %.0417, %bb.bq ]
  %i.ge = add nsw i32 %.12, 1
  %i.gf = load ptr, ptr %i.a, align 8
  %i.gg = sext i8 %.1418 to i32
  call void %i.gf(ptr noundef %0, i32 noundef %i.gg) #11
  %i.gh = and i32 %i.el, 16
  %i.gi = icmp ne i32 %i.gh, 0
  %i.gj = icmp eq i32 %.3428, 0
  %or.cond18 = and i1 %i.gi, %i.gj
  br i1 %or.cond18, label %bb.bw, label %.loopexit51

bb.bw:                                            ; preds = %bb.bv
  %i.gk = add nsw i32 %.12, 2
  %i.gl = load ptr, ptr %i.a, align 8
  call void %i.gl(ptr noundef nonnull %0, i32 noundef 46) #11
  br label %.loopexit51

bb.bx:                                            ; preds = %.loopexit57
  %i.gm = load i8, ptr %i.h, align 1              ; 2 uses
  %.not575 = icmp eq i8 %i.gm, 49
  br i1 %.not575, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gn = load i8, ptr %i.g, align 4
  %i.go = and i8 %i.gn, -17
  store i8 %i.go, ptr %i.g, align 4
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.gp = load ptr, ptr %i.a, align 8
  %i.gq = sext i8 %i.gm to i32
  call void %i.gp(ptr noundef %0, i32 noundef %i.gq) #11
  %i.gr = icmp sgt i32 %.4451.fr, 0
  br i1 %i.gr, label %bb.ca, label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  %i.gs = add nsw i32 %.10, 2
  %i.gt = load ptr, ptr %i.a, align 8
  call void %i.gt(ptr noundef nonnull %0, i32 noundef 46) #11
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.cd
  %.0416104 = phi i8 [ 1, %bb.ca ], [ %i.hc, %bb.cd ] ; 3 uses
  %.14103 = phi i32 [ %i.gs, %bb.ca ], [ %i.gu, %bb.cd ]
  %i.gu = add nsw i32 %.14103, 1                  ; 2 uses
  %i.gv = load ptr, ptr %i.a, align 8
  %i.gw = icmp ult i8 %.0416104, %.3
  br i1 %i.gw, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.gx = zext i8 %.0416104 to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1
  %i.ha = sext i8 %i.gz to i32
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.hb = phi i32 [ %i.ha, %bb.cc ], [ 48, %bb.cb ]
  call void %i.gv(ptr noundef nonnull %0, i32 noundef %i.hb) #11
  %i.hc = add i8 %.0416104, 1                     ; 2 uses
  %i.hd = zext i8 %i.hc to i32
  %.not577 = icmp samesign ult i32 %.4451.fr, %i.hd
  br i1 %.not577, label %.loopexit54, label %bb.cb, !llvm.loop !11

bb.ce:                                            ; preds = %bb.bz
  %i.he = add nsw i32 %.10, 1
  %i.hf = and i32 %i.el, 16
  %.not576 = icmp eq i32 %i.hf, 0
  br i1 %.not576, label %.loopexit54, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hg = add nsw i32 %.10, 2
  %i.hh = load ptr, ptr %i.a, align 8
  call void %i.hh(ptr noundef nonnull %0, i32 noundef 46) #11
  br label %.loopexit54

.loopexit54:                                      ; preds = %bb.cd, %bb.ce, %bb.cf
  %.15 = phi i32 [ %i.he, %bb.ce ], [ %i.hg, %bb.cf ], [ %i.gu, %bb.cd ] ; 2 uses
  %i.hi = load ptr, ptr %i.a, align 8
  %i.hj = and i32 %i.el, 8192
  %.not578 = icmp eq i32 %i.hj, 0
  %i.hk = select i1 %.not578, i32 101, i32 69
  call void %i.hi(ptr noundef nonnull %0, i32 noundef %i.hk) #11
  %i.hl = icmp slt i32 %i.cs, 0
  br i1 %i.hl, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %.loopexit54
  %i.hm = icmp eq i32 %i.cs, 0
  br i1 %i.hm, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.hn = load i8, ptr %i.g, align 4
  %i.ho = and i8 %i.hn, 16
  %.not579 = icmp eq i8 %i.ho, 0
  br i1 %.not579, label %bb.cj, label %bb.ci
end_hunk_0
