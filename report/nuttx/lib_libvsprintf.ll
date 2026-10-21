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
  %.1436.be = phi i32 [ %i.m, %bb.c ], [ %i.nu, %bb.em ], [ %.27, %.loopexit51 ], [ %i.nw, %.backedge.loopexit ]
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
  %i.cs = load i32, ptr %3, align 4               ; 11 uses
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
  %.neg214 = select i1 %.not572, i32 -3, i32 -4
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
  %i.dh = add i32 %.neg214, %.1436
  %i.di = add i32 %i.dh, %.0455
  br label %.loopexit62

.loopexit62:                                      ; preds = %.loopexit62.loopexit, %bb.aw, %bb.ax
  %.4459 = phi i32 [ 0, %bb.aw ], [ %i.dc, %bb.ax ], [ 0, %.loopexit62.loopexit ] ; 2 uses
  %.3438 = phi i32 [ %.1436, %bb.aw ], [ %.1436, %bb.ax ], [ %i.di, %.loopexit62.loopexit ] ; 2 uses
  br i1 %.not572, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.loopexit62
  %i.dj = add nsw i32 %.3438, 1
  %i.dk = load ptr, ptr %i.a, align 8
  call void %i.dk(ptr noundef %0, i32 noundef %.0424) #11
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.loopexit62
  %.4439 = phi i32 [ %i.dj, %bb.ay ], [ %.3438, %.loopexit62 ] ; 2 uses
  %i.dl = load i8, ptr %i.g, align 4
  %i.dm = and i8 %i.dl, 8
  %.not586 = icmp eq i8 %i.dm, 0
  %spec.store.select16 = select i1 %.not586, ptr @.str, ptr @.str.1 ; 2 uses
  %4 = load i8, ptr %spec.store.select16, align 1 ; 2 uses
  %.not58789 = icmp eq i8 %4, 0
  br i1 %.not58789, label %.loopexit51, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.az
  %5 = and i16 %.8476, 8192
  %.not589 = icmp eq i16 %5, 0
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph92, %bb.ba
  %i.dn = phi i8 [ %4, %.lr.ph92 ], [ %i.dt, %bb.ba ] ; 2 uses
  %.042091 = phi ptr [ %spec.store.select16, %.lr.ph92 ], [ %i.ds, %bb.ba ]
  %.590 = phi i32 [ %.4439, %.lr.ph92 ], [ %i.dp, %bb.ba ]
  %i.do = add i8 %i.dn, -32
  %spec.select593 = select i1 %.not589, i8 %i.dn, i8 %i.do
  %i.dp = add nsw i32 %.590, 1                    ; 2 uses
  %i.dq = load ptr, ptr %i.a, align 8
  %i.dr = zext i8 %spec.select593 to i32
  call void %i.dq(ptr noundef %0, i32 noundef %i.dr) #11
  %i.ds = getelementptr inbounds nuw i8, ptr %.042091, i64 1 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1             ; 2 uses
  %.not587 = icmp eq i8 %i.dt, 0
  br i1 %.not587, label %.loopexit51, label %bb.ba, !llvm.loop !9

bb.bb:                                            ; preds = %bb.av
  %i.du = icmp ult i16 %.8476, 16384
  br i1 %i.du, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.dv = and i32 %i.cq, 255
  %.not57095 = icmp eq i8 %i.cr, 0
  br i1 %.not57095, label %.critedge, label %.lr.ph97

.lr.ph97:                                         ; preds = %bb.bc, %bb.bd
  %.296 = phi i8 [ %i.eb, %bb.bd ], [ %i.cr, %bb.bc ] ; 3 uses
  %i.dw = zext i8 %.296 to i64
  %i.dx = getelementptr i8, ptr %3, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 4
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = icmp eq i8 %i.dz, 48
  br i1 %i.ea, label %bb.bd, label %.critedge

bb.bd:                                            ; preds = %.lr.ph97
  %i.eb = add i8 %.296, -1                        ; 2 uses
  %.not570 = icmp eq i8 %i.eb, 0
  br i1 %.not570, label %.critedge, label %.lr.ph97, !llvm.loop !10

.critedge:                                        ; preds = %.lr.ph97, %bb.bd, %bb.bc
  %.2.lcssa94 = phi i8 [ 0, %bb.bc ], [ 0, %bb.bd ], [ %.296, %.lr.ph97 ] ; 4 uses
  %i.ec = zext i8 %.2.lcssa94 to i32              ; 3 uses
  %i.ed = icmp sgt i32 %i.cs, -5
  %i.ee = icmp slt i32 %i.cs, %i.dv
  %or.cond594 = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond594, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %.critedge
  %i.ef = or disjoint i16 %.8476, -32768          ; 2 uses
  %i.eg = icmp slt i32 %i.cs, %i.ec
  br i1 %i.eg, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %.neg = xor i32 %i.cs, -1
  %i.eh = add nsw i32 %i.ec, %.neg
  br label %bb.bh

bb.bg:                                            ; preds = %.critedge
  %i.ei = add nsw i32 %i.ec, -1
  br label %bb.bh

bb.bh:                                            ; preds = %bb.be, %bb.bg, %bb.bf, %bb.bb
  %.9477 = phi i16 [ %i.ef, %bb.bf ], [ %.8476, %bb.bb ], [ %.8476, %bb.bg ], [ %i.ef, %bb.be ] ; 2 uses
  %.4451 = phi i32 [ %i.eh, %bb.bf ], [ %spec.select590, %bb.bb ], [ %i.ei, %bb.bg ], [ 0, %bb.be ]
  %.3 = phi i8 [ %.2.lcssa94, %bb.bf ], [ %i.cr, %bb.bb ], [ %.2.lcssa94, %bb.bg ], [ %.2.lcssa94, %bb.be ] ; 2 uses
  %.4451.fr = freeze i32 %.4451                   ; 5 uses
  %i.ej = zext i16 %.9477 to i32                  ; 6 uses
  %.not571 = icmp sgt i16 %.9477, -1              ; 2 uses
  %i.ek = call i32 @llvm.smax.i32(i32 %i.cs, i32 0) ; 2 uses
  %i.el = add nuw nsw i32 %i.ek, 1
  %.0425 = select i1 %.not571, i32 5, i32 %i.el
  %not..not572 = xor i1 %.not572, true
  %i.em = zext i1 %not..not572 to i32
  %.1426 = add nuw i32 %.0425, %i.em
  %.not573 = icmp eq i32 %.4451.fr, 0
  %i.en = add nsw i32 %.4451.fr, 1
  %i.eo = lshr i32 %i.ej, 4
  %i.ep = and i32 %i.eo, 1
  %spec.select265 = select i1 %.not573, i32 %i.ep, i32 %i.en
  %.2427 = add i32 %.1426, %spec.select265        ; 3 uses
  %i.eq = icmp sgt i32 %.0455, %.2427
  %i.er = sub nsw i32 %.0455, %.2427              ; 2 uses
  %i.es = select i1 %i.eq, i32 %i.er, i32 0       ; 2 uses
  %i.et = and i32 %i.ej, 9
  %i.eu = icmp eq i32 %i.et, 0
  %i.ev = icmp ne i32 %i.es, 0
  %or.cond36 = select i1 %i.eu, i1 %i.ev, i1 false
  br i1 %or.cond36, label %.preheader58, label %.loopexit59

.preheader58:                                     ; preds = %bb.bh, %.preheader58
  %.5460 = phi i32 [ %i.ex, %.preheader58 ], [ %i.er, %bb.bh ]
  %i.ew = load ptr, ptr %i.a, align 8
  call void %i.ew(ptr noundef %0, i32 noundef 32) #11
  %i.ex = add nsw i32 %.5460, -1                  ; 2 uses
  %.old35.not = icmp eq i32 %i.ex, 0
  br i1 %.old35.not, label %.loopexit59.loopexit, label %.preheader58

.loopexit59.loopexit:                             ; preds = %.preheader58
  %i.ey = sub i32 %.1436, %.2427
  %i.ez = add i32 %i.ey, %.0455
  br label %.loopexit59

.loopexit59:                                      ; preds = %.loopexit59.loopexit, %bb.bh
  %.6461 = phi i32 [ %i.es, %bb.bh ], [ 0, %.loopexit59.loopexit ] ; 4 uses
  %.7 = phi i32 [ %.1436, %bb.bh ], [ %i.ez, %.loopexit59.loopexit ] ; 2 uses
  br i1 %.not572, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.loopexit59
  %i.fa = add nsw i32 %.7, 1
  %i.fb = load ptr, ptr %i.a, align 8
  call void %i.fb(ptr noundef %0, i32 noundef %.0424) #11
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.loopexit59
  %.8 = phi i32 [ %i.fa, %bb.bi ], [ %.7, %.loopexit59 ] ; 2 uses
  %i.fc = and i32 %i.ej, 8
  %i.fd = icmp eq i32 %i.fc, 0
  %i.fe = icmp ne i32 %.6461, 0
  %or.cond39 = select i1 %i.fd, i1 %i.fe, i1 false
  br i1 %or.cond39, label %.preheader56, label %.loopexit57

.preheader56:                                     ; preds = %bb.bj, %.preheader56
  %.7462 = phi i32 [ %i.fg, %.preheader56 ], [ %.6461, %bb.bj ]
  %i.ff = load ptr, ptr %i.a, align 8
  call void %i.ff(ptr noundef %0, i32 noundef 48) #11
  %i.fg = add nsw i32 %.7462, -1                  ; 2 uses
  %.old38.not = icmp eq i32 %i.fg, 0
  br i1 %.old38.not, label %.loopexit57.loopexit, label %.preheader56

.loopexit57.loopexit:                             ; preds = %.preheader56
  %i.fh = add i32 %.6461, %.8
  br label %.loopexit57

.loopexit57:                                      ; preds = %.loopexit57.loopexit, %bb.bj
  %.8463 = phi i32 [ %.6461, %bb.bj ], [ 0, %.loopexit57.loopexit ] ; 4 uses
  %.10 = phi i32 [ %.8, %bb.bj ], [ %i.fh, %.loopexit57.loopexit ] ; 4 uses
  br i1 %.not571, label %bb.bx, label %.preheader55

.preheader55:                                     ; preds = %.loopexit57
  %i.fi = zext i8 %.3 to i32
  %i.fj = sub nsw i32 0, %.4451.fr
  br label %bb.bk

bb.bk:                                            ; preds = %.preheader55, %bb.bp
  %.11 = phi i32 [ %i.fu, %bb.bp ], [ %.10, %.preheader55 ] ; 2 uses
  %.3428 = phi i32 [ %i.ft, %bb.bp ], [ %i.ek, %.preheader55 ] ; 5 uses
  %i.fk = icmp eq i32 %.3428, -1
  br i1 %i.fk, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.fl = add nsw i32 %.11, 1
  %i.fm = load ptr, ptr %i.a, align 8
  call void %i.fm(ptr noundef %0, i32 noundef 46) #11
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.12 = phi i32 [ %i.fl, %bb.bl ], [ %.11, %bb.bk ] ; 3 uses
  %i.fn = sub nsw i32 %i.cs, %.3428               ; 3 uses
  %i.fo = icmp sgt i32 %i.fn, -1
  %i.fp = icmp slt i32 %i.fn, %i.fi
  %or.cond598 = select i1 %i.fo, i1 %i.fp, i1 false
  br i1 %or.cond598, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.fq = zext nneg i32 %i.fn to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %.0417 = phi i8 [ %i.fs, %bb.bn ], [ 48, %bb.bm ] ; 4 uses
  %i.ft = add nsw i32 %.3428, -1                  ; 2 uses
  %.not581 = icmp sgt i32 %.3428, %i.fj
  br i1 %.not581, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.fu = add nsw i32 %.12, 1
  %i.fv = load ptr, ptr %i.a, align 8
  %i.fw = sext i8 %.0417 to i32
  call void %i.fv(ptr noundef %0, i32 noundef %i.fw) #11
  br label %bb.bk

bb.bq:                                            ; preds = %bb.bo
  %i.fx = icmp eq i32 %i.ft, %i.cs
  br i1 %i.fx, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %bb.bq
  %i.fy = load i8, ptr %i.h, align 1              ; 2 uses
  %i.fz = icmp sgt i8 %i.fy, 53
  br i1 %i.fz, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ga = icmp eq i8 %i.fy, 53
  br i1 %i.ga, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.gb = load i8, ptr %i.g, align 4
  %i.gc = and i8 %i.gb, 16
  %.not582 = icmp eq i8 %i.gc, 0
  br i1 %.not582, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %bb.br
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.bq
  %.1418 = phi i8 [ 49, %bb.bu ], [ %.0417, %bb.bt ], [ %.0417, %bb.bs ], [ %.0417, %bb.bq ]
  %i.gd = add nsw i32 %.12, 1
end_hunk_0
begin_hunk_1_@vsprintf_internal:bb.a

.backedge.loopexit:                               ; preds = %.lr.ph127
  %i.nw = add i32 %.11466, %.27
  br label %.backedge.backedge

bb.en:                                            ; preds = %.thread44, %bb.do
  %.pre-phi = phi i16 [ %.pre, %.thread44 ], [ %i.lh, %bb.do ]
  %.4434162641 = phi ptr [ %.4434162642, %.thread44 ], [ %.3433, %bb.do ] ; 3 uses
  %.2449122739 = phi i32 [ %.2449122740, %.thread44 ], [ %.0447, %bb.do ] ; 5 uses
  %.2457112837 = phi i32 [ %.2457112838, %.thread44 ], [ %.0455, %bb.do ] ; 3 uses
  %.8495 = phi i8 [ %.6493, %.thread44 ], [ %i.lp, %bb.do ] ; 6 uses
  %.16484 = phi i16 [ %i.ns, %.thread44 ], [ %.10478, %bb.do ] ; 4 uses
  %.not553 = icmp eq i16 %.pre-phi, 0
  br i1 %.not553, label %bb.eq, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.nx = and i16 %.16484, -2                     ; 2 uses
  %i.ny = zext i8 %.8495 to i32
  %i.nz = icmp sgt i32 %.2449122739, %i.ny
  br i1 %i.nz, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.oa = trunc i32 %.2449122739 to i8
  %i.ob = and i16 %.16484, 16400
  %or.cond604 = icmp eq i16 %i.ob, 16
  %i.oc = and i16 %.16484, -16402
  %spec.select607 = select i1 %or.cond604, i16 %i.oc, i16 %i.nx
  br label %bb.eq

bb.eq:                                            ; preds = %.thread234, %bb.ep, %bb.eo, %bb.en
  %.8495231 = phi i8 [ %.8495, %bb.eo ], [ %.8495, %bb.en ], [ %.8495, %bb.ep ], [ 0, %.thread234 ] ; 5 uses
  %.2457112837228 = phi i32 [ %.2457112837, %bb.eo ], [ %.2457112837, %bb.en ], [ %.2457112837, %bb.ep ], [ %.0455, %.thread234 ] ; 7 uses
  %.2449122739226 = phi i32 [ %.2449122739, %bb.eo ], [ %.2449122739, %bb.en ], [ %.2449122739, %bb.ep ], [ 0, %.thread234 ] ; 2 uses
  %.4434162641224 = phi ptr [ %.4434162641, %bb.eo ], [ %.4434162641, %bb.en ], [ %.4434162641, %bb.ep ], [ %.3433, %.thread234 ] ; 2 uses
  %.17485 = phi i16 [ %i.nx, %bb.eo ], [ %.16484, %bb.en ], [ %spec.select607, %bb.ep ], [ %i.ll, %.thread234 ] ; 2 uses
  %.0440 = phi i8 [ %.8495, %bb.eo ], [ %.8495, %bb.en ], [ %i.oa, %bb.ep ], [ 0, %.thread234 ] ; 3 uses
  %i.od = zext i16 %.17485 to i32                 ; 5 uses
  %i.oe = and i32 %i.od, 16
  %.not555 = icmp eq i32 %i.oe, 0
  br i1 %.not555, label %bb.eu, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.of = zext i8 %.8495231 to i64
  %i.og = getelementptr i8, ptr %3, i64 %i.of
  %i.oh = getelementptr i8, ptr %i.og, i64 -1
  %i.oi = load i8, ptr %i.oh, align 1
  %i.oj = icmp eq i8 %i.oi, 48
  br i1 %i.oj, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.ok = and i16 %.17485, -24593
  %.pre177 = zext i16 %i.ok to i32
  br label %bb.ev

bb.et:                                            ; preds = %bb.er
  %i.ol = and i32 %i.od, 16384
  %.not557 = icmp eq i32 %i.ol, 0
  %spec.select605.v = select i1 %.not557, i8 1, i8 2
  %spec.select605 = add i8 %spec.select605.v, %.0440
  br label %bb.ev

bb.eu:                                            ; preds = %bb.eq
  %i.om = and i32 %i.od, 4102
  %.not556 = icmp ne i32 %i.om, 0
  %i.on = zext i1 %.not556 to i8
  %spec.select606 = add i8 %.0440, %i.on
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.es
  %.pre-phi178 = phi i32 [ %i.od, %bb.eu ], [ %i.od, %bb.et ], [ %.pre177, %bb.es ] ; 8 uses
  %.1441 = phi i8 [ %spec.select606, %bb.eu ], [ %spec.select605, %bb.et ], [ %.0440, %bb.es ] ; 4 uses
  %i.oo = and i32 %.pre-phi178, 8
  %i.op = icmp eq i32 %i.oo, 0
  br i1 %i.op, label %bb.ew, label %..loopexit52_crit_edge

..loopexit52_crit_edge:                           ; preds = %bb.ev
  %.pre181 = zext i8 %.1441 to i32
  br label %.loopexit52

bb.ew:                                            ; preds = %bb.ev
  %i.oq = and i32 %.pre-phi178, 1
  %.not558 = icmp eq i32 %i.oq, 0
  br i1 %.not558, label %bb.ez, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.or = zext i8 %.8495231 to i32                ; 2 uses
  %i.os = zext i8 %.1441 to i32                   ; 2 uses
  %i.ot = icmp sgt i32 %.2457112837228, %i.os
  br i1 %i.ot, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.ou = add nuw i32 %.2457112837228, %i.or
  %i.ov = sub i32 %i.ou, %i.os
  %i.ow = trunc i32 %.2457112837228 to i8
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ex, %bb.ey, %bb.ew
  %.5452 = phi i32 [ %i.ov, %bb.ey ], [ %i.or, %bb.ex ], [ %.2449122739226, %bb.ew ] ; 2 uses
  %.2442 = phi i8 [ %i.ow, %bb.ey ], [ %.1441, %bb.ex ], [ %.1441, %bb.ew ] ; 2 uses
  %i.ox = zext i8 %.2442 to i32                   ; 2 uses
  %i.oy = icmp sgt i32 %.2457112837228, %i.ox
  br i1 %i.oy, label %.lr.ph112, label %.loopexit52

.lr.ph112:                                        ; preds = %bb.ez, %.lr.ph112
  %.22111 = phi i32 [ %i.oz, %.lr.ph112 ], [ %.1436, %bb.ez ]
  %.3443110 = phi i8 [ %i.pb, %.lr.ph112 ], [ %.2442, %bb.ez ]
  %i.oz = add nsw i32 %.22111, 1                  ; 2 uses
  %i.pa = load ptr, ptr %i.a, align 8
  call void %i.pa(ptr noundef %0, i32 noundef 32) #11
  %i.pb = add i8 %.3443110, 1                     ; 2 uses
  %i.pc = zext i8 %i.pb to i32                    ; 2 uses
  %i.pd = icmp samesign ugt i32 %.2457112837228, %i.pc
  br i1 %i.pd, label %.lr.ph112, label %.loopexit52, !llvm.loop !14

.loopexit52:                                      ; preds = %.lr.ph112, %..loopexit52_crit_edge, %bb.ez
  %.pre-phi182 = phi i32 [ %.pre181, %..loopexit52_crit_edge ], [ %i.ox, %bb.ez ], [ %i.pc, %.lr.ph112 ] ; 2 uses
  %.6453 = phi i32 [ %.2449122739226, %..loopexit52_crit_edge ], [ %.5452, %bb.ez ], [ %.5452, %.lr.ph112 ] ; 3 uses
  %.23 = phi i32 [ %.1436, %..loopexit52_crit_edge ], [ %.1436, %bb.ez ], [ %i.oz, %.lr.ph112 ] ; 4 uses
  %i.pe = icmp sgt i32 %.2457112837228, %.pre-phi182
  %i.pf = sub nsw i32 %.2457112837228, %.pre-phi182
  %i.pg = select i1 %i.pe, i32 %i.pf, i32 0       ; 2 uses
  %i.ph = and i32 %.pre-phi178, 16
  %.not559 = icmp eq i32 %i.ph, 0
  br i1 %.not559, label %bb.fc, label %bb.fa

bb.fa:                                            ; preds = %.loopexit52
  %i.pi = add nsw i32 %.23, 1
  %i.pj = load ptr, ptr %i.a, align 8
  call void %i.pj(ptr noundef %0, i32 noundef 48) #11
  %i.pk = and i32 %.pre-phi178, 16384
  %.not563 = icmp eq i32 %i.pk, 0
  br i1 %.not563, label %bb.fe, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.pl = add nsw i32 %.23, 2
  %i.pm = load ptr, ptr %i.a, align 8
  %i.pn = and i32 %.pre-phi178, 8192
  %.not564 = icmp eq i32 %i.pn, 0
  %i.po = select i1 %.not564, i32 120, i32 88
  call void %i.pm(ptr noundef nonnull %0, i32 noundef %i.po) #11
  br label %bb.fe

bb.fc:                                            ; preds = %.loopexit52
  %i.pp = and i32 %.pre-phi178, 4102
  %.not560 = icmp eq i32 %i.pp, 0
  br i1 %.not560, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.pq = and i32 %.pre-phi178, 2
  %.not561 = icmp eq i32 %i.pq, 0
  %i.pr = and i32 %.pre-phi178, 4096
  %.not562 = icmp eq i32 %i.pr, 0
  %i.ps = add nsw i32 %.23, 1
  %i.pt = load ptr, ptr %i.a, align 8
  %i.pu = select i1 %.not561, i32 32, i32 43
  %i.pv = select i1 %.not562, i32 %i.pu, i32 45
  call void %i.pt(ptr noundef %0, i32 noundef %i.pv) #11
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fc, %bb.fd, %bb.fa, %bb.fb
  %.24 = phi i32 [ %i.pl, %bb.fb ], [ %i.pi, %bb.fa ], [ %i.ps, %bb.fd ], [ %.23, %bb.fc ] ; 2 uses
  %i.pw = zext i8 %.8495231 to i32                ; 3 uses
  %i.px = icmp sgt i32 %.6453, %i.pw
  br i1 %i.px, label %.lr.ph117, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph117
  %i.py = add i32 %.24, %.6453
  %i.pz = sub i32 %i.py, %i.pw
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.fe
  %.25.lcssa = phi i32 [ %.24, %bb.fe ], [ %i.pz, %.preheader.loopexit ] ; 2 uses
  %.not565119 = icmp eq i8 %.8495231, 0
  br i1 %.not565119, label %.loopexit51, label %.lr.ph122.preheader

.lr.ph122.preheader:                              ; preds = %.preheader
  %i.qa = zext i8 %.8495231 to i64
  br label %.lr.ph122

.lr.ph117:                                        ; preds = %bb.fe, %.lr.ph117
  %.7454115 = phi i32 [ %i.qc, %.lr.ph117 ], [ %.6453, %bb.fe ]
  %i.qb = load ptr, ptr %i.a, align 8
  call void %i.qb(ptr noundef %0, i32 noundef 48) #11
  %i.qc = add nsw i32 %.7454115, -1               ; 2 uses
  %i.qd = icmp samesign ugt i32 %i.qc, %i.pw
  br i1 %i.qd, label %.lr.ph117, label %.preheader.loopexit, !llvm.loop !15

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %.lr.ph122
  %indvars.iv173 = phi i64 [ %i.qa, %.lr.ph122.preheader ], [ %i.qg, %.lr.ph122 ]
  %.26121 = phi i32 [ %.25.lcssa, %.lr.ph122.preheader ], [ %i.qe, %.lr.ph122 ]
  %i.qe = add nsw i32 %.26121, 1                  ; 2 uses
  %i.qf = load ptr, ptr %i.a, align 8
  %i.qg = add nsw i64 %indvars.iv173, -1          ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %3, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1
  %i.qj = sext i8 %i.qi to i32
  call void %i.qf(ptr noundef %0, i32 noundef %i.qj) #11
  %.not565.wide = icmp eq i64 %i.qg, 0
  br i1 %.not565.wide, label %.loopexit51, label %.lr.ph122, !llvm.loop !16

.loopexit51:                                      ; preds = %bb.ba, %.lr.ph108, %.lr.ph122, %bb.az, %bb.cl, %.preheader, %bb.bv, %bb.bw, %.loopexit64
  %.443414 = phi ptr [ %.3433, %.loopexit64 ], [ %.4434162641224, %.preheader ], [ %.3433, %bb.cl ], [ %.3433, %bb.bv ], [ %.3433, %bb.bw ], [ %.3433, %bb.az ], [ %.3433, %.lr.ph108 ], [ %.4434162641224, %.lr.ph122 ], [ %.3433, %bb.ba ] ; 2 uses
  %.11466 = phi i32 [ %i.js, %.loopexit64 ], [ %i.pg, %.preheader ], [ %.8463, %bb.cl ], [ %.8463, %bb.bv ], [ %.8463, %bb.bw ], [ %.4459, %bb.az ], [ %.8463, %.lr.ph108 ], [ %i.pg, %.lr.ph122 ], [ %.4459, %bb.ba ] ; 3 uses
  %.27 = phi i32 [ %i.jo, %.loopexit64 ], [ %.25.lcssa, %.preheader ], [ %.16, %bb.cl ], [ %i.gd, %bb.bv ], [ %i.gj, %bb.bw ], [ %.4439, %bb.az ], [ %i.hz, %.lr.ph108 ], [ %i.qe, %.lr.ph122 ], [ %i.dp, %bb.ba ] ; 2 uses
  %.not588124 = icmp eq i32 %.11466, 0
  br i1 %.not588124, label %.backedge.backedge, label %.lr.ph127

.lr.ph127:                                        ; preds = %.loopexit51, %.lr.ph127
  %.12467125 = phi i32 [ %i.ql, %.lr.ph127 ], [ %.11466, %.loopexit51 ]
  %i.qk = load ptr, ptr %i.a, align 8
  call void %i.qk(ptr noundef %0, i32 noundef 32) #11
  %i.ql = add nsw i32 %.12467125, -1              ; 2 uses
  %.not588 = icmp eq i32 %i.ql, 0
  br i1 %.not588, label %.backedge.loopexit, label %.lr.ph127, !llvm.loop !17

.loopexit66:                                      ; preds = %.backedge, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.1436
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i32 @lib_sprintf(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #2 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call fastcc i32 @vsprintf_internal(ptr noundef %0, ptr noundef readonly %1, ptr noundef nonnull %2) #9
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i32 @lib_sprintf_internal(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #2 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call fastcc i32 @vsprintf_internal(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #9
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %i.a
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i32 @lib_vsprintf_internal(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i32 @vsprintf_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret i32 %i.a
}

; Function Attrs: noredzone optsize
declare dso_local i32 @__dtoa_engine(double noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local ptr @__ultoa_invert(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind optsize willreturn memory(argmem: read)
declare dso_local i64 @strnlen(ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree noredzone nosync nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noredzone optsize }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = distinct !{!7, !18}
!8 = distinct !{!8, !18}
!9 = distinct !{!9, !18}
!10 = distinct !{!10, !18}
!11 = distinct !{!11, !18}
!12 = distinct !{!12, !18}
!13 = distinct !{!13, !18}
!14 = distinct !{!14, !18}
!15 = distinct !{!15, !18}
!16 = distinct !{!16, !18}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
end_hunk_1
