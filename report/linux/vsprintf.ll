Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/vsprintf?download=true
inline.NumInlined: 16
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@number.digits = internal unnamed_addr constant [16 x i8] c"0123456789ABCDEF", align 16

; Function Attrs: noredzone nounwind optsize
define hidden i32 @vsnprintf(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 13 uses
  %i.b = alloca [22 x i8], align 16               ; 14 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 26 uses
  store ptr %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 22 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.va_copy.p0(ptr nonnull %4, ptr %3)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 28 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.j = ptrtoint ptr %i.c to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %i.l = phi ptr [ %.pre, %bb.a ], [ %i.pv, %.loopexit ] ; 2 uses
  %.0181 = phi i64 [ 0, %bb.a ], [ %.11, %.loopexit ] ; 8 uses
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  switch i8 %i.m, label %bb.d [
    i8 0, label %bb.ei
    i8 37, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 3 uses
  store ptr %i.n, ptr %i.a, align 8
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %i.p = icmp eq i8 %i.o, 37
  br i1 %i.p, label %bb.d, label %.preheader296

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.q = icmp ult i64 %.0181, %1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.0181
  store i8 %i.m, ptr %i.r, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = add i64 %.0181, 1
  br label %.loopexit

.preheader296:                                    ; preds = %bb.c, %bb.k
  %i.t = phi ptr [ %i.w, %bb.k ], [ %i.n, %bb.c ] ; 2 uses
  %i.u = phi i8 [ %.pr, %bb.k ], [ %i.o, %bb.c ]
  %.0.i = phi i32 [ %i.v, %bb.k ], [ 0, %bb.c ]   ; 2 uses
  switch i8 %i.u, label %get_flags.exit [
    i8 45, label %bb.k
    i8 43, label %bb.g
    i8 32, label %bb.h
    i8 35, label %bb.i
    i8 48, label %bb.j
  ]

bb.g:                                             ; preds = %.preheader296
  br label %bb.k

bb.h:                                             ; preds = %.preheader296
  br label %bb.k

bb.i:                                             ; preds = %.preheader296
  br label %bb.k

bb.j:                                             ; preds = %.preheader296
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %.preheader296
  %.sink.i = phi i32 [ 1, %bb.j ], [ 64, %bb.i ], [ 8, %bb.h ], [ 4, %bb.g ], [ 16, %.preheader296 ]
  %i.v = or i32 %.sink.i, %.0.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.w, align 1
  br label %.preheader296

get_flags.exit:                                   ; preds = %.preheader296
  store ptr %i.t, ptr %i.a, align 8
  %i.x = call fastcc i32 @get_int(ptr noundef %i.a, ptr noundef %4) #8 ; 2 uses
  %i.y = lshr i32 %i.x, 27
  %i.z = and i32 %i.y, 16
  %.0171 = or i32 %i.z, %.0.i                     ; 3 uses
  %.0164 = call i32 @llvm.abs.i32(i32 %i.x, i1 true) ; 6 uses
  %i.aa = and i32 %.0171, 16
  %.not216 = icmp eq i32 %i.aa, 0
  %i.ab = and i32 %.0171, -2                      ; 2 uses
  %.1172 = select i1 %.not216, i32 %.0171, i32 %i.ab ; 2 uses
  %i.ac = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1             ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 46
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %get_flags.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.af, ptr %i.a, align 8
  %i.ag = call fastcc i32 @get_int(ptr noundef %i.a, ptr noundef %4) #8 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 0
  %spec.select = select i1 %i.ah, i32 %.1172, i32 %i.ab
  %.pre352 = load ptr, ptr %i.a, align 8          ; 2 uses
  %.pre353 = load i8, ptr %.pre352, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %get_flags.exit
  %i.ai = phi i8 [ %i.ad, %get_flags.exit ], [ %.pre353, %bb.l ] ; 4 uses
  %i.aj = phi ptr [ %i.ac, %get_flags.exit ], [ %.pre352, %bb.l ] ; 2 uses
  %.2173 = phi i32 [ %.1172, %get_flags.exit ], [ %spec.select, %bb.l ] ; 7 uses
  %.0159 = phi i32 [ -1, %get_flags.exit ], [ %i.ag, %bb.l ] ; 9 uses
  switch i8 %i.ai, label %bb.p [
    i8 104, label %bb.n
    i8 108, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.ak = zext nneg i8 %i.ai to i32               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  store ptr %i.al, ptr %i.a, align 8
  %i.am = load i8, ptr %i.al, align 1             ; 2 uses
  %i.an = icmp eq i8 %i.ai, %i.am
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ao = add nsw i32 %i.ak, -32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 2 ; 2 uses
  store ptr %i.ap, ptr %i.a, align 8
  %.pre354 = load i8, ptr %i.ap, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %i.aq = phi i8 [ %.pre354, %bb.o ], [ %i.am, %bb.n ], [ %i.ai, %bb.m ] ; 2 uses
  %.0158 = phi i32 [ %i.ao, %bb.o ], [ %i.ak, %bb.n ], [ -1, %bb.m ] ; 4 uses
  switch i8 %i.aq, label %bb.ei [
    i8 99, label %bb.q
    i8 115, label %bb.y
    i8 111, label %.thread
    i8 112, label %bb.am
    i8 120, label %bb.an
    i8 88, label %bb.ao
    i8 100, label %bb.ap
    i8 105, label %bb.ap
    i8 117, label %bb.aq
  ]

bb.q:                                             ; preds = %bb.p
  %i.ar = and i32 %.2173, 16                      ; 2 uses
  %i.as = icmp eq i32 %.0158, 108
  %i.at = load i32, ptr %4, align 16              ; 5 uses
  %i.au = icmp ult i32 %i.at, 41                  ; 2 uses
  br i1 %i.as, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.av = load ptr, ptr %i.e, align 16
  %i.aw = zext nneg i32 %i.at to i64
  %i.ax = getelementptr i8, ptr %i.av, i64 %i.aw
  %i.ay = add nuw nsw i32 %i.at, 8
  store i32 %i.ay, ptr %4, align 16
  br label %.thread380

bb.t:                                             ; preds = %bb.r
  %i.az = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  store ptr %i.ba, ptr %i.d, align 8
  br label %.thread380

.thread380:                                       ; preds = %bb.s, %bb.t
  %i.bb = phi ptr [ %i.ax, %bb.s ], [ %i.az, %bb.t ]
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = trunc i32 %i.bc to i16
  store i16 %i.bd, ptr %i.b, align 16
  store i16 0, ptr %i.k, align 2
  %i.be = or disjoint i32 %i.ar, 128
  br label %.lr.ph.i.preheader

bb.u:                                             ; preds = %bb.q
  br i1 %i.au, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bf = load ptr, ptr %i.e, align 16
  %i.bg = zext nneg i32 %i.at to i64
  %i.bh = getelementptr i8, ptr %i.bf, i64 %i.bg
  %i.bi = add nuw nsw i32 %i.at, 8
  store i32 %i.bi, ptr %4, align 16
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bj = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  store ptr %i.bk, ptr %i.d, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bl = phi ptr [ %i.bh, %bb.v ], [ %i.bj, %bb.w ]
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = trunc i32 %i.bm to i8
  store i8 %i.bn, ptr %i.b, align 16
  br label %bb.dd

bb.y:                                             ; preds = %bb.p
  %i.bo = and i32 %.2173, 16                      ; 2 uses
  %spec.store.select = call i32 @llvm.umin.i32(i32 %.0159, i32 2147483647) ; 2 uses
  %i.bp = load i32, ptr %4, align 16              ; 3 uses
  %i.bq = icmp ult i32 %i.bp, 41
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.br = load ptr, ptr %i.e, align 16
  %i.bs = zext nneg i32 %i.bp to i64
  %i.bt = getelementptr i8, ptr %i.br, i64 %i.bs
  %i.bu = add nuw nsw i32 %i.bp, 8
  store i32 %i.bu, ptr %4, align 16
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.bv = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  store ptr %i.bw, ptr %i.d, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bx = phi ptr [ %i.bt, %bb.z ], [ %i.bv, %bb.aa ]
  %i.by = load ptr, ptr %i.bx, align 8            ; 4 uses
  %.not220 = icmp eq ptr %i.by, null
  br i1 %.not220, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bz = icmp ult i32 %.0159, 6
  %i.ca = select i1 %i.bz, ptr @.str, ptr @.str.1
  br label %bb.al

bb.ad:                                            ; preds = %bb.ab
  %i.cb = icmp eq i32 %.0158, 108
  br i1 %i.cb, label %bb.ae, label %bb.al

bb.ae:                                            ; preds = %bb.ad
  %i.cc = or disjoint i32 %i.bo, 128              ; 2 uses
  %i.cd = zext nneg i32 %spec.store.select to i64
  %.not39.i = icmp eq i32 %.0159, 0
  br i1 %.not39.i, label %utf16s_utf8nlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.thread380, %bb.ae
  %i.ce = phi i64 [ 2147483647, %.thread380 ], [ %i.cd, %bb.ae ] ; 3 uses
  %i.cf = phi i32 [ %i.be, %.thread380 ], [ %i.cc, %bb.ae ] ; 4 uses
  %.0154385 = phi ptr [ %i.b, %.thread380 ], [ %i.by, %bb.ae ] ; 5 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.ak
  %.02032.i = phi i64 [ %.pre-phi.i, %bb.ak ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  %.02131.i = phi ptr [ %.2.ph.i, %bb.ak ], [ %.0154385, %.lr.ph.i.preheader ] ; 3 uses
  %i.cg = load i16, ptr %.02131.i, align 2        ; 4 uses
  %.not.i = icmp eq i16 %i.cg, 0
  br i1 %.not.i, label %utf16s_utf8nlen.exit, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.02131.i, i64 2 ; 3 uses
  %i.ci = icmp ugt i16 %i.cg, 127
  %i.cj = select i1 %i.ci, i64 2, i64 1
  %i.ck = icmp ugt i16 %i.cg, 2047
  %i.cl = zext i1 %i.ck to i64
  %i.cm = add nuw nsw i64 %i.cj, %i.cl            ; 2 uses
  %i.cn = add i64 %i.cm, %.02032.i                ; 4 uses
  %i.co = icmp ugt i64 %i.cn, %i.ce
  br i1 %i.co, label %utf16s_utf8nlen.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cp = and i16 %i.cg, -1024
  %i.cq = icmp eq i16 %i.cp, -10240
  br i1 %i.cq, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.cr = icmp eq i64 %i.cn, %i.ce
  br i1 %i.cr, label %utf16s_utf8nlen.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cs = load i16, ptr %i.ch, align 2
  %i.ct = and i16 %i.cs, -1024
  %i.cu = icmp eq i16 %i.ct, -9216
  br i1 %i.cu, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %.02131.i, i64 4
  %i.cw = add nuw i64 %.02032.i, 1
  %.pre.i = add i64 %i.cw, %i.cm
  br label %bb.ak

end_hunk_0
