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
  %i.a = alloca ptr, align 8                      ; 11 uses
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
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %i.l = phi ptr [ %2, %bb.a ], [ %i.pu, %.loopexit ] ; 3 uses
  %.0181 = phi i64 [ 0, %bb.a ], [ %.11, %.loopexit ] ; 8 uses
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  switch i8 %i.m, label %bb.d [
    i8 0, label %bb.ei
    i8 37, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 4 uses
  store ptr %i.n, ptr %i.a, align 8
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %i.p = icmp eq i8 %i.o, 37
  br i1 %i.p, label %bb.d, label %.preheader296

bb.d:                                             ; preds = %bb.b, %bb.c
  %5 = phi ptr [ %i.l, %bb.b ], [ %i.n, %bb.c ]
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
  %.pre.a = load ptr, ptr %i.a, align 8           ; 2 uses
  %.pre352 = load i8, ptr %.pre.a, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %get_flags.exit
  %i.ai = phi i8 [ %i.ad, %get_flags.exit ], [ %.pre352, %bb.l ] ; 4 uses
  %i.aj = phi ptr [ %i.ac, %get_flags.exit ], [ %.pre.a, %bb.l ] ; 3 uses
  %.2173 = phi i32 [ %.1172, %get_flags.exit ], [ %spec.select, %bb.l ] ; 7 uses
  %.0159 = phi i32 [ -1, %get_flags.exit ], [ %i.ag, %bb.l ] ; 9 uses
  switch i8 %i.ai, label %bb.p [
    i8 104, label %bb.n
    i8 108, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.ak = zext nneg i8 %i.ai to i32               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 3 uses
  store ptr %i.al, ptr %i.a, align 8
  %i.am = load i8, ptr %i.al, align 1             ; 2 uses
  %i.an = icmp eq i8 %i.ai, %i.am
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ao = add nsw i32 %i.ak, -32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 2 ; 3 uses
  store ptr %i.ap, ptr %i.a, align 8
  %.pre353 = load i8, ptr %i.ap, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %i.aq = phi i8 [ %.pre353, %bb.o ], [ %i.am, %bb.n ], [ %i.ai, %bb.m ] ; 2 uses
  %6 = phi ptr [ %i.ap, %bb.o ], [ %i.al, %bb.n ], [ %i.aj, %bb.m ] ; 2 uses
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
  br label %.thread379

bb.t:                                             ; preds = %bb.r
  %i.az = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  store ptr %i.ba, ptr %i.d, align 8
  br label %.thread379

.thread379:                                       ; preds = %bb.s, %bb.t
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

.lr.ph.i.preheader:                               ; preds = %.thread379, %bb.ae
  %i.ce = phi i64 [ 2147483647, %.thread379 ], [ %i.cd, %bb.ae ] ; 3 uses
  %i.cf = phi i32 [ %i.be, %.thread379 ], [ %i.cc, %bb.ae ] ; 4 uses
  %.0154384 = phi ptr [ %i.b, %.thread379 ], [ %i.by, %bb.ae ] ; 5 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.ak
  %.02032.i = phi i64 [ %.pre-phi.i, %bb.ak ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  %.02131.i = phi ptr [ %.2.ph.i, %bb.ak ], [ %.0154384, %.lr.ph.i.preheader ] ; 3 uses
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

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ag
  %.pre-phi.i = phi i64 [ %i.cn, %bb.ai ], [ %.pre.i, %bb.aj ], [ %i.cn, %bb.ag ] ; 3 uses
  %.2.ph.i = phi ptr [ %i.ch, %bb.ai ], [ %i.cv, %bb.aj ], [ %i.ch, %bb.ag ]
  %i.cx = icmp ult i64 %.pre-phi.i, %i.ce
  br i1 %i.cx, label %.lr.ph.i, label %utf16s_utf8nlen.exit, !llvm.loop !4

utf16s_utf8nlen.exit:                             ; preds = %.lr.ph.i, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %i.cy = phi i32 [ %i.cc, %bb.ae ], [ %i.cf, %bb.ak ], [ %i.cf, %bb.ah ], [ %i.cf, %bb.af ], [ %i.cf, %.lr.ph.i ]
  %.0154385 = phi ptr [ %i.by, %bb.ae ], [ %.0154384, %bb.ak ], [ %.0154384, %bb.ah ], [ %.0154384, %bb.af ], [ %.0154384, %.lr.ph.i ]
  %.020.lcssa.i = phi i64 [ 0, %bb.ae ], [ %.02032.i, %.lr.ph.i ], [ %.02032.i, %bb.af ], [ %.02032.i, %bb.ah ], [ %.pre-phi.i, %bb.ak ] ; 2 uses
  %i.cz = trunc i64 %.020.lcssa.i to i32
  br label %bb.dd

bb.al:                                            ; preds = %bb.ad, %bb.ac
  %.1 = phi ptr [ %i.by, %bb.ad ], [ %i.ca, %bb.ac ] ; 2 uses
  %i.da = zext nneg i32 %spec.store.select to i64
  %i.db = call i64 @strnlen(ptr noundef nonnull %.1, i64 noundef %i.da) #9 ; 2 uses
  %i.dc = trunc i64 %i.db to i32
  br label %bb.dd

bb.am:                                            ; preds = %bb.p
  %i.dd = icmp slt i32 %.0159, 0
  %spec.store.select1 = select i1 %i.dd, i32 16, i32 %.0159
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.p
  %.2161 = phi i32 [ %spec.store.select1, %bb.am ], [ %.0159, %bb.p ]
  %i.de = or i32 %.2173, 32
  br label %bb.ar

bb.ao:                                            ; preds = %bb.p
  br label %.thread

bb.ap:                                            ; preds = %bb.p, %bb.p
  %i.df = or i32 %.2173, 2
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.p
  %.5176 = phi i32 [ %i.df, %bb.ap ], [ %.2173, %bb.p ]
  %i.dg = and i32 %.5176, -65
  br label %bb.ar

bb.ar:                                            ; preds = %bb.an, %bb.aq
end_hunk_0
begin_hunk_1_@vsnprintf:bb.a
  store i8 %i.nj, ptr %i.nk, align 1
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.nl = add i64 %.3184, 2
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dj
  %.4185 = phi i64 [ %i.nl, %bb.do ], [ %.3184, %bb.dj ] ; 2 uses
  %i.nm = sext i32 %.8 to i64                     ; 2 uses
  %i.nn = icmp ult i64 %.0191, %i.nm
  br i1 %i.nn, label %.lr.ph311, label %._crit_edge

.lr.ph311:                                        ; preds = %bb.dp, %bb.dr
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.dr ], [ %i.nm, %bb.dp ]
  %.5186310 = phi i64 [ %i.nq, %bb.dr ], [ %.4185, %bb.dp ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.no = icmp ult i64 %.5186310, %1
  br i1 %i.no, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %.lr.ph311
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 %.5186310
  store i8 48, ptr %i.np, align 1
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %.lr.ph311
  %i.nq = add i64 %.5186310, 1                    ; 2 uses
  %i.nr = icmp ult i64 %.0191, %indvars.iv.next
  br i1 %i.nr, label %.lr.ph311, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.dr, %bb.dp
  %.5186.lcssa = phi i64 [ %.4185, %bb.dp ], [ %i.nq, %bb.dr ] ; 4 uses
  %i.ns = and i32 %.8179, 128
  %.not224 = icmp eq i32 %i.ns, 0
  %.not225321 = icmp eq i64 %.0191, 0             ; 2 uses
  br i1 %.not224, label %.preheader, label %.preheader290

.preheader290:                                    ; preds = %._crit_edge
  br i1 %.not225321, label %.loopexit289, label %.lr.ph319

.preheader:                                       ; preds = %._crit_edge
  br i1 %.not225321, label %.loopexit289, label %.lr.ph324

.lr.ph319:                                        ; preds = %.preheader290, %bb.ed
  %.in330 = phi i64 [ %.2193, %bb.ed ], [ %.0191, %.preheader290 ]
  %.6187318 = phi i64 [ %.7188, %bb.ed ], [ %.5186.lcssa, %.preheader290 ] ; 6 uses
  %.0244317 = phi ptr [ %.1245272, %bb.ed ], [ %.2, %.preheader290 ] ; 3 uses
  %i.nt = add i64 %.in330, -1                     ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.0244317, i64 2 ; 5 uses
  %i.nv = load i16, ptr %.0244317, align 2
  %.fr = freeze i16 %i.nv                         ; 4 uses
  %i.nw = zext i16 %.fr to i32                    ; 4 uses
  %i.nx = and i32 %i.nw, 63488
  %.not.i241 = icmp eq i32 %i.nx, 55296
  br i1 %.not.i241, label %bb.ds, label %utf16_to_utf32.exit

bb.ds:                                            ; preds = %.lr.ph319
  %i.ny = and i32 %i.nw, 1024
  %.not9.i = icmp eq i32 %i.ny, 0
  br i1 %.not9.i, label %bb.dt, label %utf16_to_utf32.exit.thread.thread

bb.dt:                                            ; preds = %bb.ds
  %i.nz = load i16, ptr %i.nu, align 2
  %i.oa = zext i16 %i.nz to i32                   ; 2 uses
  %i.ob = and i32 %i.oa, 64512
  %.not10.i = icmp eq i32 %i.ob, 56320
  br i1 %.not10.i, label %bb.du, label %utf16_to_utf32.exit.thread.thread

bb.du:                                            ; preds = %bb.dt
  %i.oc = getelementptr inbounds nuw i8, ptr %.0244317, i64 4
  %i.od = shl nuw nsw i32 %i.nw, 10
  %i.oe = add nsw i32 %i.od, -56613888
  %i.of = add nuw nsw i32 %i.oe, %i.oa
  br label %utf16_to_utf32.exit.thread.thread

utf16_to_utf32.exit:                              ; preds = %.lr.ph319
  %i.og = icmp ult i16 %.fr, 128
  br i1 %i.og, label %bb.dv, label %utf16_to_utf32.exit.thread

bb.dv:                                            ; preds = %utf16_to_utf32.exit
  %i.oh = icmp ult i64 %.6187318, %1
  br i1 %i.oh, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.oi = trunc nuw nsw i16 %.fr to i8
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 %.6187318
  store i8 %i.oi, ptr %i.oj, align 1
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.ok = add i64 %.6187318, 1
  br label %bb.ed, !llvm.loop !12

utf16_to_utf32.exit.thread:                       ; preds = %utf16_to_utf32.exit
  %i.ol = icmp ugt i16 %.fr, 2047
  %spec.select284 = select i1 %i.ol, i32 2, i32 1
  br label %utf16_to_utf32.exit.thread.thread

utf16_to_utf32.exit.thread.thread:                ; preds = %utf16_to_utf32.exit.thread, %bb.du, %bb.ds, %bb.dt
  %.1245273281 = phi ptr [ %i.nu, %utf16_to_utf32.exit.thread ], [ %i.nu, %bb.ds ], [ %i.oc, %bb.du ], [ %i.nu, %bb.dt ] ; 2 uses
  %.0.i242274279 = phi i32 [ %i.nw, %utf16_to_utf32.exit.thread ], [ 65533, %bb.ds ], [ %i.of, %bb.du ], [ 65533, %bb.dt ] ; 2 uses
  %i.om = phi i32 [ %spec.select284, %utf16_to_utf32.exit.thread ], [ 2, %bb.ds ], [ 2, %bb.du ], [ 2, %bb.dt ]
  %i.on = icmp samesign ugt i32 %.0.i242274279, 65535
  %i.oo = zext i1 %i.on to i32
  %i.op = add nuw nsw i32 %i.om, %i.oo            ; 2 uses
  %i.oq = zext nneg i32 %i.op to i64              ; 4 uses
  %i.or = sub i64 %i.nt, %i.oq                    ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 %.6187318 ; 3 uses
  %i.ot = icmp ult i64 %.6187318, %1
  br i1 %i.ot, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %utf16_to_utf32.exit.thread.thread
  store i8 0, ptr %i.os, align 1
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %utf16_to_utf32.exit.thread.thread
  %i.ou = add i64 %.6187318, 1
  %i.ov = add i64 %i.ou, %i.oq                    ; 3 uses
  %.not227 = icmp ult i64 %i.ov, %1
  br i1 %.not227, label %bb.ea, label %bb.ed, !llvm.loop !12

bb.ea:                                            ; preds = %bb.dz
  %i.ow = lshr exact i32 1920, %i.op
  %i.ox = trunc i32 %i.ow to i8
  store i8 %i.ox, ptr %i.os, align 1
  %i.oy = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.oq
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.eb
  %.0155315 = phi i64 [ %i.oq, %bb.ea ], [ %i.pd, %bb.eb ]
  %.0156314 = phi ptr [ %i.oy, %bb.ea ], [ %i.pc, %bb.eb ] ; 2 uses
  %.0157313 = phi i32 [ %.0.i242274279, %bb.ea ], [ %i.pe, %bb.eb ] ; 2 uses
  %i.oz = trunc i32 %.0157313 to i8
  %i.pa = and i8 %i.oz, 63
  %i.pb = or disjoint i8 %i.pa, -128
  %i.pc = getelementptr inbounds i8, ptr %.0156314, i64 -1 ; 3 uses
  store i8 %i.pb, ptr %.0156314, align 1
  %i.pd = add nsw i64 %.0155315, -1               ; 2 uses
  %i.pe = lshr i32 %.0157313, 6                   ; 2 uses
  %.not228 = icmp eq i64 %i.pd, 0
  br i1 %.not228, label %bb.ec, label %bb.eb, !llvm.loop !13

bb.ec:                                            ; preds = %bb.eb
  %i.pf = load i8, ptr %i.pc, align 1
  %i.pg = trunc i32 %i.pe to i8
  %i.ph = or i8 %i.pf, %i.pg
  store i8 %i.ph, ptr %i.pc, align 1
  br label %bb.ed

bb.ed:                                            ; preds = %bb.dz, %bb.ec, %bb.dx
  %.1245272 = phi ptr [ %i.nu, %bb.dx ], [ %.1245273281, %bb.ec ], [ %.1245273281, %bb.dz ]
  %.2193 = phi i64 [ %i.nt, %bb.dx ], [ %i.or, %bb.ec ], [ %i.or, %bb.dz ] ; 2 uses
  %.7188 = phi i64 [ %i.ok, %bb.dx ], [ %i.ov, %bb.ec ], [ %i.ov, %bb.dz ] ; 2 uses
  %.not226 = icmp eq i64 %.2193, 0
  br i1 %.not226, label %.loopexit289, label %.lr.ph319

.lr.ph324:                                        ; preds = %.preheader, %bb.ef
  %.in331 = phi i64 [ %i.pi, %bb.ef ], [ %.0191, %.preheader ]
  %.3323 = phi ptr [ %.4, %bb.ef ], [ %.2, %.preheader ] ; 3 uses
  %.8189322 = phi i64 [ %i.pn, %bb.ef ], [ %.5186.lcssa, %.preheader ] ; 3 uses
  %i.pi = add i64 %.in331, -1                     ; 2 uses
  %i.pj = icmp ult i64 %.8189322, %1
  br i1 %i.pj, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %.lr.ph324
  %i.pk = getelementptr inbounds nuw i8, ptr %.3323, i64 1
  %i.pl = load i8, ptr %.3323, align 1
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 %.8189322
  store i8 %i.pl, ptr %i.pm, align 1
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %.lr.ph324
  %.4 = phi ptr [ %i.pk, %bb.ee ], [ %.3323, %.lr.ph324 ]
  %i.pn = add i64 %.8189322, 1                    ; 2 uses
  %.not225 = icmp eq i64 %i.pi, 0
  br i1 %.not225, label %.loopexit289, label %.lr.ph324, !llvm.loop !14

.loopexit289:                                     ; preds = %bb.ed, %bb.ef, %.preheader290, %.preheader
  %.9190 = phi i64 [ %i.pn, %bb.ef ], [ %.5186.lcssa, %.preheader ], [ %.5186.lcssa, %.preheader290 ], [ %.7188, %bb.ed ] ; 2 uses
  %i.po = icmp sgt i32 %.5169, 0
  br i1 %i.po, label %.lr.ph328, label %.loopexit

.lr.ph328:                                        ; preds = %.loopexit289, %bb.eh
  %.in332 = phi i32 [ %i.pp, %bb.eh ], [ %.5169, %.loopexit289 ] ; 2 uses
  %.10326 = phi i64 [ %i.ps, %bb.eh ], [ %.9190, %.loopexit289 ] ; 3 uses
  %i.pp = add nsw i32 %.in332, -1
  %i.pq = icmp ult i64 %.10326, %1
  br i1 %i.pq, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %.lr.ph328
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 %.10326
  store i8 32, ptr %i.pr, align 1
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %.lr.ph328
  %i.ps = add i64 %.10326, 1                      ; 2 uses
  %i.pt = icmp samesign ugt i32 %.in332, 1
  br i1 %i.pt, label %.lr.ph328, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %bb.eh, %.loopexit289, %bb.f
  %7 = phi ptr [ %5, %bb.f ], [ %6, %.loopexit289 ], [ %6, %bb.eh ]
  %.11 = phi i64 [ %i.s, %bb.f ], [ %.9190, %.loopexit289 ], [ %i.ps, %bb.eh ]
  %i.pu = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 2 uses
  store ptr %i.pu, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !16

bb.ei:                                            ; preds = %bb.b, %bb.p
  call void @llvm.va_end.p0(ptr nonnull %4)
  %.not229 = icmp eq i64 %1, 0
  br i1 %.not229, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.pv = add i64 %1, -1
  %i.pw = call i64 @llvm.umin.i64(i64 %.0181, i64 %i.pv)
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 %i.pw
  store i8 0, ptr %i.px, align 1
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.py = trunc i64 %.0181 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i32 %i.py
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #2

; Function Attrs: nofree norecurse noredzone nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc i32 @get_int(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = sext i8 %i.b to i32
  %i.d = add nsw i32 %i.c, -58
  %i.e = icmp ult i32 %i.d, -10
  br i1 %i.e, label %bb.b, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.03.i = phi i32 [ %i.l, %.lr.ph.i ], [ 0, %bb.a ]
  %i.f = phi ptr [ %i.h, %.lr.ph.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.g = mul nsw i32 %.03.i, 10
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 3 uses
  store ptr %i.h, ptr %0, align 8
  %i.i = load i8, ptr %i.f, align 1
  %i.j = sext i8 %i.i to i32
  %i.k = add i32 %i.g, -48
  %i.l = add i32 %i.k, %i.j                       ; 2 uses
  %i.m = load i8, ptr %i.h, align 1
  %i.n = sext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -58
  %i.p = icmp ult i32 %i.o, -10
  br i1 %i.p, label %skip_atoi.exit, label %.lr.ph.i, !llvm.loop !17

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i8 %i.b, 42
  br i1 %i.q, label %bb.c, label %skip_atoi.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.r, ptr %0, align 8
  %i.s = load i32, ptr %1, align 8                ; 3 uses
  %i.t = icmp ult i32 %i.s, 41
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = zext nneg i32 %i.s to i64
  %i.x = getelementptr i8, ptr %i.v, i64 %i.w
  %i.y = add nuw nsw i32 %i.s, 8
  store i32 %i.y, ptr %1, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  store ptr %i.ab, ptr %i.z, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = phi ptr [ %i.x, %bb.d ], [ %i.aa, %bb.e ]
  %i.ad = load i32, ptr %i.ac, align 4
  br label %skip_atoi.exit

skip_atoi.exit:                                   ; preds = %.lr.ph.i, %bb.b, %bb.f
  %.0 = phi i32 [ 0, %bb.b ], [ %i.ad, %bb.f ], [ %i.l, %.lr.ph.i ]
  ret i32 %.0
}

; Function Attrs: noredzone optsize
declare hidden i64 @strnlen(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #2

; Function Attrs: noredzone nounwind optsize
define hidden i32 @snprintf(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = call i32 @vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %3) #8
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { noredzone nounwind optsize "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree norecurse noredzone nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone optsize "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone optsize "no-builtins" }
attributes #9 = { nobuiltin noredzone nounwind optsize "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 1, !"Code Model", i32 1}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
end_hunk_1
