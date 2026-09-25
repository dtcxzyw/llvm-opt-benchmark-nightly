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

.backedge.backedge:                               ; preds = %bb.c, %.backedge.loopexit, %.loopexit51, %bb.ei
  %.1436.be = phi i32 [ %i.m, %bb.c ], [ %i.nm, %bb.ei ], [ %.27, %.loopexit51 ], [ %i.no, %.backedge.loopexit ]
  %.1431.be = phi ptr [ %.2432, %bb.c ], [ %.4434162642, %bb.ei ], [ %.443414, %.loopexit51 ], [ %.443414, %.backedge.loopexit ]
  br label %.backedge

.preheader65:                                     ; preds = %bb.b, %bb.ac
  %.1488 = phi i8 [ %i.bc, %bb.ac ], [ %i.l, %bb.b ] ; 8 uses
  %.0468 = phi i16 [ %.4472, %bb.ac ], [ 0, %bb.b ] ; 25 uses
  %.0455 = phi i32 [ %.1456, %bb.ac ], [ 0, %bb.b ] ; 19 uses
  %.0447 = phi i32 [ %.1448, %bb.ac ], [ 0, %bb.b ] ; 15 uses
  %.3433 = phi ptr [ %i.bb, %bb.ac ], [ %i.k, %bb.b ] ; 12 uses
  %i.p = icmp ult i16 %.0468, 64
  br i1 %i.p, label %bb.d, label %bb.j

bb.d:                                             ; preds = %.preheader65
  switch i8 %.1488, label %.thread [
    i8 48, label %bb.e
    i8 43, label %bb.f
    i8 32, label %bb.g
    i8 45, label %bb.h
    i8 35, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.q = or i16 %.0468, 1
  br label %bb.ac

bb.f:                                             ; preds = %bb.d
  %i.r = or i16 %.0468, 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.1469 = phi i16 [ %i.r, %bb.f ], [ %.0468, %bb.d ]
  %i.s = or i16 %.1469, 4
  br label %bb.ac

bb.h:                                             ; preds = %bb.d
  %i.t = or i16 %.0468, 8
  br label %bb.ac

bb.i:                                             ; preds = %bb.d
  %i.u = or i16 %.0468, 16
  br label %bb.ac

bb.j:                                             ; preds = %.preheader65
  %i.v = icmp ult i16 %.0468, 512
  br i1 %i.v, label %.thread, label %bb.aa

.thread:                                          ; preds = %bb.d, %bb.j
  %i.w = add i8 %.1488, -48                       ; 2 uses
  %or.cond = icmp ult i8 %i.w, 10
  br i1 %or.cond, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.thread
  %.not540.a = icmp samesign ult i16 %.0468, 256
  %i.x = zext nneg i8 %i.w to i32                 ; 2 uses
  br i1 %.not540.a, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = mul nsw i32 %.0447, 10
  %i.z = add nuw nsw i32 %i.y, %i.x
  br label %bb.ac

bb.m:                                             ; preds = %bb.k
  %i.aa = mul nsw i32 %.0455, 10
  %i.ab = add nuw nsw i32 %i.aa, %i.x
  %i.ac = or i16 %.0468, 128
  br label %bb.ac

bb.n:                                             ; preds = %.thread
  switch i8 %.1488, label %bb.ad [
    i8 42, label %bb.o
    i8 46, label %bb.y
    i8 122, label %bb.ab
    i8 116, label %bb.ab
  ]

bb.o:                                             ; preds = %bb.n
  %.not539 = icmp samesign ult i16 %.0468, 256
  %i.ad = load i32, ptr %2, align 8               ; 5 uses
  %i.ae = icmp ult i32 %i.ad, 41                  ; 2 uses
  br i1 %.not539, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.ae, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.af = load ptr, ptr %i.c, align 8
  %i.ag = zext nneg i32 %i.ad to i64
  %i.ah = getelementptr i8, ptr %i.af, i64 %i.ag
  %i.ai = add nuw nsw i32 %i.ad, 8
  store i32 %i.ai, ptr %2, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.aj = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %i.b, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.al = phi ptr [ %i.ah, %bb.q ], [ %i.aj, %bb.r ]
  %i.am = load i32, ptr %i.al, align 4
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.am, i32 0)
  br label %bb.ac

bb.t:                                             ; preds = %bb.o
  br i1 %i.ae, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.an = load ptr, ptr %i.c, align 8
  %i.ao = zext nneg i32 %i.ad to i64
  %i.ap = getelementptr i8, ptr %i.an, i64 %i.ao
  %i.aq = add nuw nsw i32 %i.ad, 8
  store i32 %i.aq, ptr %2, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ar = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  store ptr %i.as, ptr %i.b, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.at = phi ptr [ %i.ap, %bb.u ], [ %i.ar, %bb.v ]
  %i.au = load i32, ptr %i.at, align 4            ; 3 uses
  %i.av = or i16 %.0468, 128
  %i.aw = icmp slt i32 %i.au, 0
  br i1 %i.aw, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.ax = sub nsw i32 0, %i.au
  %i.ay = or i16 %.0468, 136
  br label %bb.ac

bb.y:                                             ; preds = %bb.n
  %.not538 = icmp samesign ult i16 %.0468, 256
  br i1 %.not538, label %bb.z, label %.loopexit66

bb.z:                                             ; preds = %bb.y
  %i.az = or disjoint i16 %.0468, 256
  br label %bb.ac

bb.aa:                                            ; preds = %bb.j
  switch i8 %.1488, label %bb.ad [
    i8 122, label %bb.ab
    i8 116, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.n, %bb.n, %bb.aa, %bb.aa
  %4 = and i16 %.0468, 512
  %.not536 = icmp eq i16 %4, 0
  %.3471.v = select i1 %.not536, i16 512, i16 2048
  %.0468.masked = and i16 %.0468, -1025
  %i.ba = or i16 %.3471.v, %.0468.masked
  br label %bb.ac

bb.ac:                                            ; preds = %bb.s, %bb.x, %bb.w, %bb.ab, %bb.z, %bb.m, %bb.l, %bb.i, %bb.h, %bb.g, %bb.e
  %.4472 = phi i16 [ %.0468, %bb.l ], [ %i.ac, %bb.m ], [ %.0468, %bb.s ], [ %i.ay, %bb.x ], [ %i.av, %bb.w ], [ %i.az, %bb.z ], [ %i.u, %bb.i ], [ %i.ba, %bb.ab ], [ %i.t, %bb.h ], [ %i.q, %bb.e ], [ %i.s, %bb.g ] ; 2 uses
  %.1456 = phi i32 [ %.0455, %bb.l ], [ %i.ab, %bb.m ], [ %.0455, %bb.s ], [ %i.ax, %bb.x ], [ %i.au, %bb.w ], [ %.0455, %bb.z ], [ %.0455, %bb.i ], [ %.0455, %bb.ab ], [ %.0455, %bb.h ], [ %.0455, %bb.e ], [ %.0455, %bb.g ] ; 2 uses
  %.1448 = phi i32 [ %i.z, %bb.l ], [ %.0447, %bb.m ], [ %spec.store.select, %bb.s ], [ %.0447, %bb.x ], [ %.0447, %bb.w ], [ %.0447, %bb.z ], [ %.0447, %bb.i ], [ %.0447, %bb.ab ], [ %.0447, %bb.h ], [ %.0447, %bb.e ], [ %.0447, %bb.g ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.3433, i64 1 ; 2 uses
  %i.bc = load i8, ptr %.3433, align 1            ; 2 uses
  %.not541.a = icmp eq i8 %i.bc, 0
  br i1 %.not541.a, label %.thread30, label %.preheader65, !llvm.loop !7

bb.ad:                                            ; preds = %bb.n, %bb.aa
  %5 = icmp eq i8 %.1488, 122
  %6 = icmp eq i8 %.1488, 116
  %or.cond5.le = or i1 %5, %6
  %spec.store.select34.le = select i1 %or.cond5.le, i8 108, i8 %.1488 ; 7 uses
  %i.bd = zext i8 %spec.store.select34.le to i32
  %i.be = icmp eq i8 %spec.store.select34.le, 112
  %i.bf = or i16 %.0468, 2560
  %spec.select = select i1 %i.be, i16 %i.bf, i16 %.0468 ; 3 uses
  %i.bg = add i8 %spec.store.select34.le, -69
  %or.cond11 = icmp ult i8 %i.bg, 3
  br i1 %or.cond11, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bh = or i16 %.0468, 8192
  %i.bi = or disjoint i8 %spec.store.select34.le, 32
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.bj = add i8 %spec.store.select34.le, -101
  %or.cond14 = icmp ult i8 %i.bj, 3
  br i1 %or.cond14, label %bb.ag, label %bb.ci

bb.ag:                                            ; preds = %bb.af
  %i.bk = and i16 %.0468, -8193
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.3490 = phi i8 [ %i.bi, %bb.ae ], [ %.1488, %bb.ag ]
  %.7475 = phi i16 [ %i.bh, %bb.ae ], [ %i.bk, %bb.ag ] ; 2 uses
  %i.bl = and i16 %.7475, 256
  %i.bm = icmp eq i16 %i.bl, 0
  %spec.select590 = select i1 %i.bm, i32 6, i32 %.0447 ; 4 uses
  %i.bn = and i16 %.7475, 16383                   ; 3 uses
  switch i8 %.3490, label %bb.ak [
    i8 101, label %bb.ai
    i8 102, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.bo = trunc i32 %spec.select590 to i8
  %i.bp = add i8 %i.bo, 1
  %i.bq = or disjoint i16 %i.bn, 16384
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.br = or disjoint i16 %i.bn, -32768
  %i.bs = and i32 %spec.select590, 255
  br label %bb.al

bb.ak:                                            ; preds = %bb.ah
  %i.bt = trunc i32 %spec.select590 to i8
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.ai
  %.8476 = phi i16 [ %i.bq, %bb.ai ], [ %i.br, %bb.aj ], [ %i.bn, %bb.ak ] ; 7 uses
  %.0422 = phi i8 [ %i.bp, %bb.ai ], [ 15, %bb.aj ], [ %i.bt, %bb.ak ]
  %.0421 = phi i32 [ 0, %bb.ai ], [ %i.bs, %bb.aj ], [ 0, %bb.ak ]
  %spec.store.select15 = call i8 @llvm.umin.i8(i8 %.0422, i8 15)
  %i.bu = load i32, ptr %i.f, align 4             ; 3 uses
  %i.bv = icmp ult i32 %i.bu, 161
  br i1 %i.bv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.bw = load ptr, ptr %i.c, align 8
  %i.bx = zext nneg i32 %i.bu to i64
  %i.by = getelementptr i8, ptr %i.bw, i64 %i.bx
  %i.bz = add nuw nsw i32 %i.bu, 16
  store i32 %i.bz, ptr %i.f, align 4
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.ca = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  store ptr %i.cb, ptr %i.b, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.cc = phi ptr [ %i.by, %bb.am ], [ %i.ca, %bb.an ]
  %i.cd = load double, ptr %i.cc, align 8
  %i.ce = zext nneg i8 %spec.store.select15 to i32
  %i.cf = call i32 @__dtoa_engine(double noundef %i.cd, ptr noundef nonnull %3, i32 noundef %i.ce, i32 noundef %.0421) #11 ; 2 uses
  %i.cg = trunc i32 %i.cf to i8                   ; 3 uses
  %i.ch = load i32, ptr %3, align 4               ; 12 uses
  %i.ci = load i8, ptr %i.g, align 4              ; 2 uses
  %i.cj = and i8 %i.ci, 1
  %.not566.a = icmp eq i8 %i.cj, 0
  br i1 %.not566.a, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ck = zext i16 %.8476 to i32                  ; 2 uses
  %i.cl = and i32 %i.ck, 2
  %.not567.a = icmp eq i32 %i.cl, 0
  br i1 %.not567.a, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.cm = and i32 %i.ck, 4                        ; 2 uses
  %.not568.a = icmp eq i32 %i.cm, 0
  %i.cn = shl nuw nsw i32 %i.cm, 3
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %.not572.a = phi i1 [ %.not568.a, %bb.aq ], [ false, %bb.ao ], [ false, %bb.ap ] ; 5 uses
  %.0424 = phi i32 [ %i.cn, %bb.aq ], [ 45, %bb.ao ], [ 43, %bb.ap ] ; 2 uses
  %i.co = and i8 %i.ci, 12
  %.not569.a = icmp eq i8 %i.co, 0
  br i1 %.not569.a, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.neg212 = select i1 %.not572.a, i32 -3, i32 -4
  %i.cp = select i1 %.not572.a, i32 3, i32 4      ; 2 uses
  %i.cq = icmp sgt i32 %.0455, %i.cp
  br i1 %i.cq, label %bb.at, label %.loopexit62

bb.at:                                            ; preds = %bb.as
  %i.cr = sub nuw nsw i32 %.0455, %i.cp           ; 2 uses
  %i.cs = and i16 %.8476, 8
  %i.ct = icmp eq i16 %i.cs, 0
  br i1 %i.ct, label %.preheader61, label %.loopexit62

.preheader61:                                     ; preds = %bb.at, %.preheader61
  %.3458 = phi i32 [ %i.cv, %.preheader61 ], [ %i.cr, %bb.at ]
  %i.cu = load ptr, ptr %i.a, align 8
  call void %i.cu(ptr noundef %0, i32 noundef 32) #11
  %i.cv = add nsw i32 %.3458, -1                  ; 2 uses
  %.not584 = icmp eq i32 %i.cv, 0
  br i1 %.not584, label %.loopexit62.loopexit, label %.preheader61, !llvm.loop !8

.loopexit62.loopexit:                             ; preds = %.preheader61
  %i.cw = add i32 %.neg212, %.1436
  %i.cx = add i32 %i.cw, %.0455
  br label %.loopexit62

.loopexit62:                                      ; preds = %.loopexit62.loopexit, %bb.as, %bb.at
  %.4459 = phi i32 [ 0, %bb.as ], [ %i.cr, %bb.at ], [ 0, %.loopexit62.loopexit ] ; 2 uses
  %.3438 = phi i32 [ %.1436, %bb.as ], [ %.1436, %bb.at ], [ %i.cx, %.loopexit62.loopexit ] ; 2 uses
  br i1 %.not572.a, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.loopexit62
  %i.cy = add nsw i32 %.3438, 1
  %i.cz = load ptr, ptr %i.a, align 8
  call void %i.cz(ptr noundef %0, i32 noundef %.0424) #11
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.loopexit62
  %.4439 = phi i32 [ %i.cy, %bb.au ], [ %.3438, %.loopexit62 ] ; 2 uses
  %i.da = load i8, ptr %i.g, align 4
  %i.db = and i8 %i.da, 8
  %.not586.a = icmp eq i8 %i.db, 0
  %spec.store.select16 = select i1 %.not586.a, ptr @.str, ptr @.str.1 ; 2 uses
  %i.dc = load i8, ptr %spec.store.select16, align 1 ; 2 uses
  %.not58789 = icmp eq i8 %i.dc, 0
  br i1 %.not58789, label %.loopexit51, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.av
  %i.dd = and i16 %.8476, 8192
  %.not589 = icmp eq i16 %i.dd, 0
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph92, %bb.aw
  %i.de = phi i8 [ %i.dc, %.lr.ph92 ], [ %i.dk, %bb.aw ] ; 2 uses
  %.042091 = phi ptr [ %spec.store.select16, %.lr.ph92 ], [ %i.dj, %bb.aw ]
  %.590 = phi i32 [ %.4439, %.lr.ph92 ], [ %i.dg, %bb.aw ]
  %i.df = add i8 %i.de, -32
  %spec.select593 = select i1 %.not589, i8 %i.de, i8 %i.df
  %i.dg = add nsw i32 %.590, 1                    ; 2 uses
  %i.dh = load ptr, ptr %i.a, align 8
  %i.di = zext i8 %spec.select593 to i32
  call void %i.dh(ptr noundef %0, i32 noundef %i.di) #11
  %i.dj = getelementptr inbounds nuw i8, ptr %.042091, i64 1 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1             ; 2 uses
  %.not587.a = icmp eq i8 %i.dk, 0
  br i1 %.not587.a, label %.loopexit51, label %bb.aw, !llvm.loop !9

bb.ax:                                            ; preds = %bb.ar
  %i.dl = icmp ult i16 %.8476, 16384
  br i1 %i.dl, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.dm = and i32 %i.cf, 255
  %.not57095 = icmp eq i8 %i.cg, 0
  br i1 %.not57095, label %.critedge, label %.lr.ph97

.lr.ph97:                                         ; preds = %bb.ay, %bb.az
  %.296 = phi i8 [ %i.ds, %bb.az ], [ %i.cg, %bb.ay ] ; 3 uses
  %i.dn = zext i8 %.296 to i64
  %i.do = getelementptr i8, ptr %3, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 4
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = icmp eq i8 %i.dq, 48
  br i1 %i.dr, label %bb.az, label %.critedge

bb.az:                                            ; preds = %.lr.ph97
  %i.ds = add i8 %.296, -1                        ; 2 uses
  %.not570.a = icmp eq i8 %i.ds, 0
  br i1 %.not570.a, label %.critedge, label %.lr.ph97, !llvm.loop !10

.critedge:                                        ; preds = %.lr.ph97, %bb.az, %bb.ay
  %.2.lcssa94 = phi i8 [ 0, %bb.ay ], [ 0, %bb.az ], [ %.296, %.lr.ph97 ] ; 4 uses
  %i.dt = zext i8 %.2.lcssa94 to i32              ; 3 uses
  %i.du = icmp sgt i32 %i.ch, -5
  %i.dv = icmp slt i32 %i.ch, %i.dm
  %or.cond594.a = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %or.cond594.a, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %.critedge
  %i.dw = or disjoint i16 %.8476, -32768          ; 2 uses
  %i.dx = icmp slt i32 %i.ch, 0
  %i.dy = icmp slt i32 %i.ch, %i.dt
  %or.cond595 = or i1 %i.dx, %i.dy
  br i1 %or.cond595, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %.neg = xor i32 %i.ch, -1
  %i.dz = add nsw i32 %i.dt, %.neg
  br label %bb.bd

bb.bc:                                            ; preds = %.critedge
  %i.ea = add nsw i32 %i.dt, -1
  br label %bb.bd
end_hunk_0
begin_hunk_1_@vsprintf_internal:bb.a
  %i.fd = add nsw i32 %.11, 1
  %i.fe = load ptr, ptr %i.a, align 8
  call void %i.fe(ptr noundef %0, i32 noundef 46) #11
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.12 = phi i32 [ %i.fd, %bb.bh ], [ %.11, %bb.bg ] ; 3 uses
  %i.ff = sub nsw i32 %i.ch, %.3428               ; 3 uses
  %i.fg = icmp sgt i32 %i.ff, -1
  %i.fh = icmp slt i32 %i.ff, %i.fa
  %or.cond598 = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %or.cond598, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.fi = zext nneg i32 %i.ff to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %.0417 = phi i8 [ %i.fk, %bb.bj ], [ 48, %bb.bi ] ; 4 uses
  %i.fl = add nsw i32 %.3428, -1                  ; 2 uses
  %.not581.a = icmp sgt i32 %.3428, %i.fb
  br i1 %.not581.a, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.fm = add nsw i32 %.12, 1
  %i.fn = load ptr, ptr %i.a, align 8
  %i.fo = sext i8 %.0417 to i32
  call void %i.fn(ptr noundef %0, i32 noundef %i.fo) #11
  br label %bb.bg

bb.bm:                                            ; preds = %bb.bk
  %i.fp = icmp eq i32 %i.fl, %i.ch
  br i1 %i.fp, label %bb.bn, label %bb.br

bb.bn:                                            ; preds = %bb.bm
  %i.fq = load i8, ptr %i.h, align 1              ; 2 uses
  %i.fr = icmp sgt i8 %i.fq, 53
  br i1 %i.fr, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fs = icmp eq i8 %i.fq, 53
  br i1 %i.fs, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.ft = load i8, ptr %i.g, align 4
  %i.fu = and i8 %i.ft, 16
  %.not582 = icmp eq i8 %i.fu, 0
  br i1 %.not582, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp, %bb.bn
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bm
  %.1418 = phi i8 [ 49, %bb.bq ], [ %.0417, %bb.bp ], [ %.0417, %bb.bo ], [ %.0417, %bb.bm ]
  %i.fv = add nsw i32 %.12, 1
  %i.fw = load ptr, ptr %i.a, align 8
  %i.fx = sext i8 %.1418 to i32
  call void %i.fw(ptr noundef %0, i32 noundef %i.fx) #11
  %i.fy = and i32 %i.eb, 16
  %i.fz = icmp ne i32 %i.fy, 0
  %i.ga = icmp eq i32 %.3428, 0
  %or.cond18 = and i1 %i.fz, %i.ga
  br i1 %or.cond18, label %bb.bs, label %.loopexit51

bb.bs:                                            ; preds = %bb.br
  %i.gb = add nsw i32 %.12, 2
  %i.gc = load ptr, ptr %i.a, align 8
  call void %i.gc(ptr noundef nonnull %0, i32 noundef 46) #11
  br label %.loopexit51

bb.bt:                                            ; preds = %.loopexit57
  %i.gd = load i8, ptr %i.h, align 1              ; 2 uses
  %.not575.a = icmp eq i8 %i.gd, 49
  br i1 %.not575.a, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ge = load i8, ptr %i.g, align 4
  %i.gf = and i8 %i.ge, -17
  store i8 %i.gf, ptr %i.g, align 4
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.gg = load ptr, ptr %i.a, align 8
  %i.gh = sext i8 %i.gd to i32
  call void %i.gg(ptr noundef %0, i32 noundef %i.gh) #11
  %i.gi = icmp sgt i32 %.4451.fr, 0
  br i1 %i.gi, label %bb.bw, label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  %i.gj = add nsw i32 %.10, 2
  %i.gk = load ptr, ptr %i.a, align 8
  call void %i.gk(ptr noundef nonnull %0, i32 noundef 46) #11
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bz
  %.0416104 = phi i8 [ 1, %bb.bw ], [ %i.gt, %bb.bz ] ; 3 uses
  %.14103 = phi i32 [ %i.gj, %bb.bw ], [ %i.gl, %bb.bz ]
  %i.gl = add nsw i32 %.14103, 1                  ; 2 uses
  %i.gm = load ptr, ptr %i.a, align 8
  %i.gn = icmp ult i8 %.0416104, %.3
  br i1 %i.gn, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.go = zext i8 %.0416104 to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1
  %i.gr = sext i8 %i.gq to i32
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.by
  %i.gs = phi i32 [ %i.gr, %bb.by ], [ 48, %bb.bx ]
  call void %i.gm(ptr noundef nonnull %0, i32 noundef %i.gs) #11
  %i.gt = add i8 %.0416104, 1                     ; 2 uses
  %i.gu = zext i8 %i.gt to i32
  %.not577.a = icmp samesign ult i32 %.4451.fr, %i.gu
  br i1 %.not577.a, label %.loopexit54, label %bb.bx, !llvm.loop !11

bb.ca:                                            ; preds = %bb.bv
  %i.gv = add nsw i32 %.10, 1
  %i.gw = and i32 %i.eb, 16
  %.not576 = icmp eq i32 %i.gw, 0
  br i1 %.not576, label %.loopexit54, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gx = add nsw i32 %.10, 2
  %i.gy = load ptr, ptr %i.a, align 8
  call void %i.gy(ptr noundef nonnull %0, i32 noundef 46) #11
  br label %.loopexit54

.loopexit54:                                      ; preds = %bb.bz, %bb.ca, %bb.cb
  %.15 = phi i32 [ %i.gv, %bb.ca ], [ %i.gx, %bb.cb ], [ %i.gl, %bb.bz ] ; 2 uses
  %i.gz = load ptr, ptr %i.a, align 8
  %i.ha = and i32 %i.eb, 8192
  %.not578.a = icmp eq i32 %i.ha, 0
  %i.hb = select i1 %.not578.a, i32 101, i32 69
  call void %i.gz(ptr noundef nonnull %0, i32 noundef %i.hb) #11
  %i.hc = icmp slt i32 %i.ch, 0
  br i1 %i.hc, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %.loopexit54
  %i.hd = icmp eq i32 %i.ch, 0
  br i1 %i.hd, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.he = load i8, ptr %i.g, align 4
  %i.hf = and i8 %i.he, 16
  %.not579.a = icmp eq i8 %i.hf, 0
  br i1 %.not579.a, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.loopexit54
  %i.hg = sub nsw i32 0, %i.ch
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cc
  %.0429 = phi i32 [ %i.hg, %bb.ce ], [ 0, %bb.cd ], [ %i.ch, %bb.cc ] ; 2 uses
  %.4 = phi i32 [ 45, %bb.ce ], [ 43, %bb.cd ], [ 43, %bb.cc ]
  %i.hh = add nsw i32 %.15, 2
  %i.hi = load ptr, ptr %i.a, align 8
  call void %i.hi(ptr noundef nonnull %0, i32 noundef %.4) #11
  %i.hj = zext nneg i32 %.0429 to i64
  %i.hk = call ptr @__ultoa_invert(i64 noundef %i.hj, ptr noundef nonnull %3, i32 noundef 10) #11
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = sub i64 %i.hl, %i.d                     ; 2 uses
  %or.cond20 = icmp samesign ult i32 %.0429, 10
  br i1 %or.cond20, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.hn = add nsw i32 %.15, 3
  %i.ho = load ptr, ptr %i.a, align 8
  call void %i.ho(ptr noundef nonnull %0, i32 noundef 48) #11
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.16 = phi i32 [ %i.hn, %bb.cg ], [ %i.hh, %bb.cf ] ; 2 uses
  %i.hp = and i64 %i.hm, 255
  %.not580105 = icmp eq i64 %i.hp, 0
  br i1 %.not580105, label %.loopexit51, label %.lr.ph108.preheader

.lr.ph108.preheader:                              ; preds = %bb.ch
  %i.hq = and i64 %i.hm, 255
  br label %.lr.ph108

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.lr.ph108
  %indvars.iv170 = phi i64 [ %i.hq, %.lr.ph108.preheader ], [ %indvars.iv.next171, %.lr.ph108 ] ; 2 uses
  %.17107 = phi i32 [ %.16, %.lr.ph108.preheader ], [ %i.hr, %.lr.ph108 ]
  %i.hr = add nsw i32 %.17107, 1                  ; 2 uses
  %i.hs = load ptr, ptr %i.a, align 8
  %i.ht = getelementptr i8, ptr %3, i64 %indvars.iv170
  %i.hu = getelementptr i8, ptr %i.ht, i64 -1
  %i.hv = load i8, ptr %i.hu, align 1
  %i.hw = sext i8 %i.hv to i32
  call void %i.hs(ptr noundef nonnull %0, i32 noundef %i.hw) #11
  %indvars.iv.next171 = add nsw i64 %indvars.iv170, -1 ; 2 uses
  %i.hx = and i64 %indvars.iv.next171, 255
  %.not580 = icmp eq i64 %i.hx, 0
  br i1 %.not580, label %.loopexit51, label %.lr.ph108, !llvm.loop !12

bb.ci:                                            ; preds = %bb.af
  switch i8 %spec.store.select34.le, label %.thread30 [
    i8 99, label %bb.cj
    i8 115, label %bb.cn
    i8 83, label %bb.cn
    i8 105, label %bb.cs
    i8 100, label %bb.cs
  ]

bb.cj:                                            ; preds = %bb.ci
  %i.hy = load i32, ptr %2, align 8               ; 3 uses
  %i.hz = icmp ult i32 %i.hy, 41
  br i1 %i.hz, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.ia = load ptr, ptr %i.c, align 8
  %i.ib = zext nneg i32 %i.hy to i64
  %i.ic = getelementptr i8, ptr %i.ia, i64 %i.ib
  %i.id = add nuw nsw i32 %i.hy, 8
  store i32 %i.id, ptr %2, align 8
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  %i.ie = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.if = getelementptr i8, ptr %i.ie, i64 8
  store ptr %i.if, ptr %i.b, align 8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.ig = phi ptr [ %i.ic, %bb.ck ], [ %i.ie, %bb.cl ]
  %i.ih = load i32, ptr %i.ig, align 4
  %i.ii = trunc i32 %i.ih to i8
  store i8 %i.ii, ptr %3, align 4
  br label %bb.cr

bb.cn:                                            ; preds = %bb.ci, %bb.ci
  %i.ij = load i32, ptr %2, align 8               ; 3 uses
  %i.ik = icmp ult i32 %i.ij, 41
  br i1 %i.ik, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.il = load ptr, ptr %i.c, align 8
  %i.im = zext nneg i32 %i.ij to i64
  %i.in = getelementptr i8, ptr %i.il, i64 %i.im
  %i.io = add nuw nsw i32 %i.ij, 8
  store i32 %i.io, ptr %2, align 8
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.ip = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.iq = getelementptr i8, ptr %i.ip, i64 8
  store ptr %i.iq, ptr %i.b, align 8
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.ir = phi ptr [ %i.in, %bb.co ], [ %i.ip, %bb.cp ]
  %i.is = load ptr, ptr %i.ir, align 8            ; 2 uses
  %i.it = icmp eq ptr %i.is, null
  %spec.store.select21 = select i1 %i.it, ptr @g_nullstring, ptr %i.is ; 2 uses
  %i.iu = and i16 %spec.select, 256
  %.not542 = icmp eq i16 %i.iu, 0
  %i.iv = zext nneg i32 %.0447 to i64
  %i.iw = select i1 %.not542, i64 -1, i64 %i.iv
  %i.ix = call i64 @strnlen(ptr noundef nonnull %spec.store.select21, i64 noundef %i.iw) #9
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cm
  %.0446 = phi ptr [ %3, %bb.cm ], [ %spec.store.select21, %bb.cq ]
  %.0445 = phi i64 [ 1, %bb.cm ], [ %i.ix, %bb.cq ] ; 5 uses
  %i.iy = and i16 %spec.select, 8
  %i.iz = icmp eq i16 %i.iy, 0
  %i.ja = zext nneg i32 %.0455 to i64             ; 3 uses
  %i.jb = icmp ult i64 %.0445, %i.ja
  %or.cond130 = select i1 %i.iz, i1 %i.jb, i1 false
  br i1 %or.cond130, label %.lr.ph, label %.loopexit64

.lr.ph:                                           ; preds = %bb.cr, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.ja, %bb.cr ]
  %.1887 = phi i32 [ %i.jc, %.lr.ph ], [ %.1436, %bb.cr ]
  %i.jc = add nsw i32 %.1887, 1                   ; 2 uses
  %i.jd = load ptr, ptr %i.a, align 8
  call void %i.jd(ptr noundef %0, i32 noundef 32) #11
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.je = icmp ult i64 %.0445, %indvars.iv.next
  br i1 %i.je, label %.lr.ph, label %.loopexit64, !llvm.loop !13

.loopexit64:                                      ; preds = %.lr.ph, %bb.cr
  %.pre-phi180 = phi i64 [ %i.ja, %bb.cr ], [ %indvars.iv.next, %.lr.ph ]
  %.19 = phi i32 [ %.1436, %bb.cr ], [ %i.jc, %.lr.ph ]
  %i.jf = trunc i64 %.0445 to i32
  %i.jg = add i32 %.19, %i.jf
  %i.jh = load ptr, ptr %i.e, align 8
  %i.ji = call i64 %i.jh(ptr noundef %0, ptr noundef nonnull %.0446, i64 noundef %.0445) #11 ; 0 uses
  %i.jj = call i64 @llvm.usub.sat.i64(i64 %.pre-phi180, i64 %.0445)
  %i.jk = trunc nuw nsw i64 %i.jj to i32
  br label %.loopexit51

bb.cs:                                            ; preds = %bb.ci, %bb.ci
  %i.jl = zext i16 %.0468 to i32                  ; 4 uses
  %i.jm = and i32 %i.jl, 2048
  %.not550.a = icmp eq i32 %i.jm, 0
  %i.jn = and i32 %i.jl, 2560
  %or.cond599.not.a = icmp eq i32 %i.jn, 2560
  br i1 %or.cond599.not.a, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  %i.jo = load i32, ptr %2, align 8               ; 3 uses
  %i.jp = icmp ult i32 %i.jo, 41
  br i1 %i.jp, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.jq = load ptr, ptr %i.c, align 8
  %i.jr = zext nneg i32 %i.jo to i64
  %i.js = getelementptr i8, ptr %i.jq, i64 %i.jr
  %i.jt = add nuw nsw i32 %i.jo, 8
  store i32 %i.jt, ptr %2, align 8
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.ju = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.jv = getelementptr i8, ptr %i.ju, i64 8
  store ptr %i.jv, ptr %i.b, align 8
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.jw = phi ptr [ %i.js, %bb.cu ], [ %i.ju, %bb.cv ]
  %i.jx = load i64, ptr %i.jw, align 8
  br label %bb.dj

bb.cx:                                            ; preds = %bb.cs
  %i.jy = and i32 %i.jl, 512
  %.not549 = icmp eq i32 %i.jy, 0
  %i.jz = load i32, ptr %2, align 8               ; 5 uses
  %i.ka = icmp ult i32 %i.jz, 41                  ; 2 uses
  br i1 %.not549, label %bb.dc, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  br i1 %i.ka, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.kb = load ptr, ptr %i.c, align 8
  %i.kc = zext nneg i32 %i.jz to i64
  %i.kd = getelementptr i8, ptr %i.kb, i64 %i.kc
  %i.ke = add nuw nsw i32 %i.jz, 8
  store i32 %i.ke, ptr %2, align 8
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  %i.kf = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.kg = getelementptr i8, ptr %i.kf, i64 8
  store ptr %i.kg, ptr %i.b, align 8
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.kh = phi ptr [ %i.kd, %bb.cz ], [ %i.kf, %bb.da ]
  %i.ki = load i64, ptr %i.kh, align 8
  br label %bb.dj

bb.dc:                                            ; preds = %bb.cx
  br i1 %i.ka, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.kj = load ptr, ptr %i.c, align 8
  %i.kk = zext nneg i32 %i.jz to i64
  %i.kl = getelementptr i8, ptr %i.kj, i64 %i.kk
  %i.km = add nuw nsw i32 %i.jz, 8
  store i32 %i.km, ptr %2, align 8
  br label %bb.df

bb.de:                                            ; preds = %bb.dc
  %i.kn = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ko = getelementptr i8, ptr %i.kn, i64 8
  store ptr %i.ko, ptr %i.b, align 8
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.kp = phi ptr [ %i.kl, %bb.dd ], [ %i.kn, %bb.de ]
  %i.kq = load i32, ptr %i.kp, align 4            ; 2 uses
  %i.kr = sext i32 %i.kq to i64
  %i.ks = and i32 %i.jl, 1024
  %.not551 = icmp eq i32 %i.ks, 0
  br i1 %.not551, label %bb.dj, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.kt = zext i32 %i.kq to i64                   ; 2 uses
  br i1 %.not550.a, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %sext552 = shl i64 %i.kt, 48
  %i.ku = ashr exact i64 %sext552, 48
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %sext = shl i64 %i.kt, 56
  %i.kv = ashr exact i64 %sext, 56
  br label %bb.dj

bb.dj:                                            ; preds = %bb.db, %bb.dh, %bb.di, %bb.df, %bb.cw
  %.0415 = phi i64 [ %i.jx, %bb.cw ], [ %i.ki, %bb.db ], [ %i.ku, %bb.dh ], [ %i.kv, %bb.di ], [ %i.kr, %bb.df ] ; 3 uses
  %i.kw = and i16 %.0468, -4113                   ; 2 uses
  %i.kx = icmp slt i64 %.0415, 0
  %i.ky = or disjoint i16 %i.kw, 4096
  %.10478 = select i1 %i.kx, i16 %i.ky, i16 %i.kw ; 2 uses
  %i.kz = and i16 %.10478, 256                    ; 2 uses
  %i.la = icmp ne i16 %i.kz, 0
  %i.lb = icmp eq i32 %.0447, 0
  %or.cond26 = select i1 %i.la, i1 %i.lb, i1 false
  %i.lc = icmp eq i64 %.0415, 0
  %or.cond28 = and i1 %i.lc, %or.cond26
  br i1 %or.cond28, label %.thread232, label %bb.dk

.thread232:                                       ; preds = %bb.dj
  %i.ld = and i16 %.0468, -4114
  br label %bb.em

bb.dk:                                            ; preds = %bb.dj
  %.1 = call i64 @llvm.abs.i64(i64 %.0415, i1 false)
  %i.le = call ptr @__ultoa_invert(i64 noundef %.1, ptr noundef nonnull %3, i32 noundef 10) #11
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = sub i64 %i.lf, %i.d
  %i.lh = trunc i64 %i.lg to i8
  br label %bb.ej

.thread30:                                        ; preds = %bb.ac, %bb.ci
  %spec.select172543 = phi i16 [ %spec.select, %bb.ci ], [ %.4472, %bb.ac ] ; 4 uses
  %i.li = phi i32 [ %i.bd, %bb.ci ], [ 0, %bb.ac ]
  %.4434162642 = phi ptr [ %.3433, %bb.ci ], [ %i.bb, %bb.ac ] ; 2 uses
  %.2449122740 = phi i32 [ %.0447, %bb.ci ], [ %.1448, %bb.ac ] ; 2 uses
  %.2457112838 = phi i32 [ %.0455, %bb.ci ], [ %.1456, %bb.ac ]
  %.248992936 = phi i8 [ %spec.store.select34.le, %bb.ci ], [ 0, %bb.ac ]
  %i.lj = zext i16 %spec.select172543 to i32      ; 4 uses
  %i.lk = and i32 %i.lj, 2048
  %.not545.a = icmp eq i32 %i.lk, 0
  %i.ll = and i32 %i.lj, 2560
  %or.cond600.not = icmp eq i32 %i.ll, 2560
  br i1 %or.cond600.not, label %bb.dl, label %bb.dp

bb.dl:                                            ; preds = %.thread30
  %i.lm = load i32, ptr %2, align 8               ; 3 uses
  %i.ln = icmp ult i32 %i.lm, 41
  br i1 %i.ln, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.lo = load ptr, ptr %i.c, align 8
  %i.lp = zext nneg i32 %i.lm to i64
  %i.lq = getelementptr i8, ptr %i.lo, i64 %i.lp
  %i.lr = add nuw nsw i32 %i.lm, 8
  store i32 %i.lr, ptr %2, align 8
  br label %bb.do

bb.dn:                                            ; preds = %bb.dl
  %i.ls = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.lt = getelementptr i8, ptr %i.ls, i64 8
  store ptr %i.lt, ptr %i.b, align 8
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.lu = phi ptr [ %i.lq, %bb.dm ], [ %i.ls, %bb.dn ]
  %i.lv = load i64, ptr %i.lu, align 8
  br label %bb.eb

bb.dp:                                            ; preds = %.thread30
  %i.lw = and i32 %i.lj, 512
  %.not544 = icmp eq i32 %i.lw, 0
  %i.lx = load i32, ptr %2, align 8               ; 5 uses
  %i.ly = icmp ult i32 %i.lx, 41                  ; 2 uses
  br i1 %.not544, label %bb.du, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  br i1 %i.ly, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.lz = load ptr, ptr %i.c, align 8
  %i.ma = zext nneg i32 %i.lx to i64
  %i.mb = getelementptr i8, ptr %i.lz, i64 %i.ma
  %i.mc = add nuw nsw i32 %i.lx, 8
  store i32 %i.mc, ptr %2, align 8
  br label %bb.dt

bb.ds:                                            ; preds = %bb.dq
  %i.md = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.me = getelementptr i8, ptr %i.md, i64 8
  store ptr %i.me, ptr %i.b, align 8
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.mf = phi ptr [ %i.mb, %bb.dr ], [ %i.md, %bb.ds ]
  %i.mg = load i64, ptr %i.mf, align 8
  br label %bb.eb

bb.du:                                            ; preds = %bb.dp
  br i1 %i.ly, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.mh = load ptr, ptr %i.c, align 8
  %i.mi = zext nneg i32 %i.lx to i64
  %i.mj = getelementptr i8, ptr %i.mh, i64 %i.mi
  %i.mk = add nuw nsw i32 %i.lx, 8
  store i32 %i.mk, ptr %2, align 8
  br label %bb.dx

bb.dw:                                            ; preds = %bb.du
  %i.ml = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.mm = getelementptr i8, ptr %i.ml, i64 8
  store ptr %i.mm, ptr %i.b, align 8
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.mn = phi ptr [ %i.mj, %bb.dv ], [ %i.ml, %bb.dw ]
  %i.mo = load i32, ptr %i.mn, align 4            ; 3 uses
  %i.mp = zext i32 %i.mo to i64
  %i.mq = and i32 %i.lj, 1024
  %.not546.a = icmp eq i32 %i.mq, 0
  br i1 %.not546.a, label %bb.eb, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  br i1 %.not545.a, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.mr = and i32 %i.mo, 65535
  %i.ms = zext nneg i32 %i.mr to i64
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dy
  %i.mt = and i32 %i.mo, 255
  %i.mu = zext nneg i32 %i.mt to i64
  br label %bb.eb

bb.eb:                                            ; preds = %bb.dt, %bb.dz, %bb.ea, %bb.dx, %bb.do
  %.0413 = phi i64 [ %i.lv, %bb.do ], [ %i.mg, %bb.dt ], [ %i.ms, %bb.dz ], [ %i.mu, %bb.ea ], [ %i.mp, %bb.dx ] ; 2 uses
  %i.mv = and i16 %spec.select172543, -7          ; 5 uses
  switch i8 %.248992936, label %bb.ei [
    i8 117, label %bb.ec
    i8 111, label %bb.eg
    i8 112, label %bb.ed
    i8 120, label %bb.ee
    i8 88, label %bb.ef
  ]

bb.ec:                                            ; preds = %bb.eb
  %i.mw = and i16 %spec.select172543, -23
  br label %bb.eg

bb.ed:                                            ; preds = %bb.eb
  %i.mx = or i16 %i.mv, 16
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.eb
  %.11479 = phi i16 [ %i.mx, %bb.ed ], [ %i.mv, %bb.eb ] ; 2 uses
  %i.my = shl i16 %.11479, 10
  %i.mz = and i16 %i.my, 16384
  %spec.select601.a = or i16 %i.mz, %.11479
  br label %bb.eg

bb.ef:                                            ; preds = %bb.eb
  %i.na = and i16 %spec.select172543, 16
  %.not547 = icmp eq i16 %i.na, 0
  %i.nb = or i16 %i.mv, 24576
  %spec.select602 = select i1 %.not547, i16 %i.mv, i16 %i.nb
  br label %bb.eg

bb.eg:                                            ; preds = %bb.eb, %bb.ef, %bb.ee, %bb.ec
  %.14482 = phi i16 [ %i.mw, %bb.ec ], [ %spec.select602, %bb.ef ], [ %spec.select601.a, %bb.ee ], [ %i.mv, %bb.eb ] ; 3 uses
  %.0414 = phi i32 [ 10, %bb.ec ], [ 528, %bb.ef ], [ 16, %bb.ee ], [ 8, %bb.eb ]
  %i.nc = and i16 %.14482, 256
  %i.nd = icmp ne i16 %i.nc, 0
  %i.ne = icmp eq i32 %.2449122740, 0
  %or.cond30 = select i1 %i.nd, i1 %i.ne, i1 false
  %i.nf = icmp eq i64 %.0413, 0
  %or.cond32 = select i1 %or.cond30, i1 %i.nf, i1 false
  br i1 %or.cond32, label %.thread44, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ng = call ptr @__ultoa_invert(i64 noundef %.0413, ptr noundef nonnull %3, i32 noundef %.0414) #11
  %i.nh = ptrtoint ptr %i.ng to i64
  %i.ni = sub i64 %i.nh, %i.d
  %i.nj = trunc i64 %i.ni to i8
  br label %.thread44

.thread44:                                        ; preds = %bb.eh, %bb.eg
  %.6493 = phi i8 [ %i.nj, %bb.eh ], [ 0, %bb.eg ]
  %i.nk = and i16 %.14482, -4097
  %.pre = and i16 %.14482, 256
  br label %bb.ej

bb.ei:                                            ; preds = %bb.eb
  %i.nl = load ptr, ptr %i.a, align 8
  call void %i.nl(ptr noundef %0, i32 noundef 37) #11
  %i.nm = add nsw i32 %.1436, 2
  %i.nn = load ptr, ptr %i.a, align 8
  call void %i.nn(ptr noundef %0, i32 noundef %i.li) #11
  br label %.backedge.backedge

.backedge.loopexit:                               ; preds = %.lr.ph127
  %i.no = add i32 %.11466, %.27
  br label %.backedge.backedge

bb.ej:                                            ; preds = %.thread44, %bb.dk
  %.pre-phi = phi i16 [ %.pre, %.thread44 ], [ %i.kz, %bb.dk ]
  %.4434162641 = phi ptr [ %.4434162642, %.thread44 ], [ %.3433, %bb.dk ] ; 3 uses
  %.2449122739 = phi i32 [ %.2449122740, %.thread44 ], [ %.0447, %bb.dk ] ; 5 uses
  %.2457112837 = phi i32 [ %.2457112838, %.thread44 ], [ %.0455, %bb.dk ] ; 3 uses
  %.8495 = phi i8 [ %.6493, %.thread44 ], [ %i.lh, %bb.dk ] ; 6 uses
  %.16484 = phi i16 [ %i.nk, %.thread44 ], [ %.10478, %bb.dk ] ; 4 uses
  %.not553 = icmp eq i16 %.pre-phi, 0
  br i1 %.not553, label %bb.em, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.np = and i16 %.16484, -2                     ; 2 uses
  %i.nq = zext i8 %.8495 to i32
  %i.nr = icmp sgt i32 %.2449122739, %i.nq
  br i1 %i.nr, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.ns = trunc i32 %.2449122739 to i8
  %i.nt = and i16 %.16484, 16400
  %or.cond604 = icmp eq i16 %i.nt, 16
  %i.nu = and i16 %.16484, -16402
  %spec.select607 = select i1 %or.cond604, i16 %i.nu, i16 %i.np
  br label %bb.em

bb.em:                                            ; preds = %.thread232, %bb.el, %bb.ek, %bb.ej
  %.8495229 = phi i8 [ %.8495, %bb.ek ], [ %.8495, %bb.ej ], [ %.8495, %bb.el ], [ 0, %.thread232 ] ; 5 uses
  %.2457112837226 = phi i32 [ %.2457112837, %bb.ek ], [ %.2457112837, %bb.ej ], [ %.2457112837, %bb.el ], [ %.0455, %.thread232 ] ; 7 uses
  %.2449122739224 = phi i32 [ %.2449122739, %bb.ek ], [ %.2449122739, %bb.ej ], [ %.2449122739, %bb.el ], [ 0, %.thread232 ] ; 2 uses
  %.4434162641222 = phi ptr [ %.4434162641, %bb.ek ], [ %.4434162641, %bb.ej ], [ %.4434162641, %bb.el ], [ %.3433, %.thread232 ] ; 2 uses
  %.17485 = phi i16 [ %i.np, %bb.ek ], [ %.16484, %bb.ej ], [ %spec.select607, %bb.el ], [ %i.ld, %.thread232 ] ; 2 uses
  %.0440 = phi i8 [ %.8495, %bb.ek ], [ %.8495, %bb.ej ], [ %i.ns, %bb.el ], [ 0, %.thread232 ] ; 3 uses
  %i.nv = zext i16 %.17485 to i32                 ; 5 uses
  %i.nw = and i32 %i.nv, 16
end_hunk_1
