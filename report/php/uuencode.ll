Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/uuencode?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [52 x i8] c"Argument #1 ($data) is not a valid uuencoded string\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @php_uuencode(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 1                           ; 2 uses
  %i.b = tail call noalias ptr @_safe_emalloc(i64 noundef range(i64 0, -9223372036854775808) %i.a, i64 noundef 3, i64 noundef 72) #7 ; 9 uses
  store i32 1, ptr %i.b, align 4, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  store i32 22, ptr %i.c, align 4, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !17
  %i.e = mul i64 %i.a, 3
  %i.f = add i64 %i.e, 46
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.f, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 7 uses
  %i.j = icmp samesign ugt i64 %1, 3
  br i1 %i.j, label %.lr.ph119, label %._crit_edge120.thread

.lr.ph119:                                        ; preds = %bb.a
  %i.k = ptrtoint ptr %i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph119, %bb.g
  %.077117 = phi ptr [ %0, %.lr.ph119 ], [ %.1.lcssa, %bb.g ] ; 6 uses
  %.078116 = phi ptr [ %i.h, %.lr.ph119 ], [ %.2, %bb.g ] ; 2 uses
  %.080115 = phi i64 [ 45, %.lr.ph119 ], [ %.181, %bb.g ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.077117, i64 %.080115 ; 2 uses
  %i.m = icmp ugt ptr %i.l, %i.i
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = ptrtoint ptr %.077117 to i64
  %i.o = sub i64 %i.k, %i.n                       ; 4 uses
  %i.p = urem i64 %i.o, 3
  %.not101 = icmp eq i64 %i.p, 0
  br i1 %.not101, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = uitofp i64 %i.o to double
  %i.r = fdiv nnan double %i.q, 3.000000e+00
  %i.s = tail call nnan double @llvm.floor.f64(double %i.r)
  %i.t = fmul nnan double %i.s, 3.000000e+00
  %i.u = fptosi double %i.t to i32
  %2 = sext i32 %i.u to i64
  %i.v = getelementptr inbounds i8, ptr %.077117, i64 %2
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.181 = phi i64 [ %i.o, %bb.d ], [ %i.o, %bb.c ], [ %.080115, %bb.b ] ; 7 uses
  %.0 = phi ptr [ %i.v, %bb.d ], [ %i.i, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.not102 = icmp eq i64 %.181, 0
  %i.w = trunc i64 %.181 to i8
  %i.x = and i8 %i.w, 63
  %i.y = add nuw nsw i8 %i.x, 32
  %i.z = select i1 %.not102, i8 96, i8 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.078116, i64 1 ; 2 uses
  store i8 %i.z, ptr %.078116, align 1, !tbaa !14
  %i.ab = icmp ult ptr %.077117, %.0
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.1113 = phi ptr [ %i.bj, %.lr.ph ], [ %.077117, %bb.e ] ; 5 uses
  %.179112 = phi ptr [ %i.bi, %.lr.ph ], [ %i.aa, %bb.e ] ; 5 uses
  %i.ac = load i8, ptr %.1113, align 1, !tbaa !14
  %i.ad = lshr i8 %i.ac, 2                        ; 2 uses
  %.not103 = icmp eq i8 %i.ad, 0
  %narrow104 = add nuw nsw i8 %i.ad, 32
  %spec.select = select i1 %.not103, i8 96, i8 %narrow104
  %i.ae = getelementptr inbounds nuw i8, ptr %.179112, i64 1
  store i8 %spec.select, ptr %.179112, align 1, !tbaa !14
  %i.af = load i8, ptr %.1113, align 1, !tbaa !14
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 4
  %i.ai = and i32 %i.ah, 48
  %i.aj = getelementptr inbounds nuw i8, ptr %.1113, i64 1 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !14
  %i.al = lshr i8 %i.ak, 4
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ai, %i.am            ; 2 uses
  %.not105 = icmp eq i32 %i.an, 0
  %i.ao = trunc nuw nsw i32 %i.an to i8
  %i.ap = add nuw nsw i8 %i.ao, 32
  %i.aq = select i1 %.not105, i8 96, i8 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.179112, i64 2
  store i8 %i.aq, ptr %i.ae, align 1, !tbaa !14
  %i.as = load i8, ptr %i.aj, align 1, !tbaa !14
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 2
  %i.av = and i32 %i.au, 60
  %i.aw = getelementptr inbounds nuw i8, ptr %.1113, i64 2 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !14
  %i.ay = lshr i8 %i.ax, 6
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.av, %i.az            ; 2 uses
  %.not106 = icmp eq i32 %i.ba, 0
  %i.bb = trunc nuw nsw i32 %i.ba to i8
  %i.bc = add nuw nsw i8 %i.bb, 32
  %i.bd = select i1 %.not106, i8 96, i8 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.179112, i64 3
  store i8 %i.bd, ptr %i.ar, align 1, !tbaa !14
  %i.bf = load i8, ptr %i.aw, align 1, !tbaa !14
  %i.bg = and i8 %i.bf, 63                        ; 2 uses
  %.not107 = icmp eq i8 %i.bg, 0
  %narrow108 = add nuw nsw i8 %i.bg, 32
  %i.bh = select i1 %.not107, i8 96, i8 %narrow108
  %i.bi = getelementptr inbounds nuw i8, ptr %.179112, i64 4 ; 2 uses
  store i8 %i.bh, ptr %i.be, align 1, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %.1113, i64 3 ; 3 uses
  %i.bk = icmp ult ptr %i.bj, %.0
  br i1 %i.bk, label %.lr.ph, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.179.lcssa = phi ptr [ %i.aa, %bb.e ], [ %i.bi, %.lr.ph ] ; 3 uses
  %.1.lcssa = phi ptr [ %.077117, %bb.e ], [ %i.bj, %.lr.ph ] ; 6 uses
  %i.bl = icmp eq i64 %.181, 45
  br i1 %i.bl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.bm = getelementptr inbounds nuw i8, ptr %.179.lcssa, i64 1
  store i8 10, ptr %.179.lcssa, align 1, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.2 = phi ptr [ %i.bm, %bb.f ], [ %.179.lcssa, %._crit_edge ] ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 3
  %i.bo = icmp ult ptr %i.bn, %i.i
  br i1 %i.bo, label %bb.b, label %._crit_edge120, !llvm.loop !27

._crit_edge120:                                   ; preds = %bb.g
  %i.bp = icmp ult ptr %.1.lcssa, %i.i
  br i1 %i.bp, label %bb.h, label %bb.m

._crit_edge120.thread:                            ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.thread147, label %.thread140

bb.h:                                             ; preds = %._crit_edge120
  %i.bq = icmp eq i64 %.181, 45
  br i1 %i.bq, label %.thread140, label %._crit_edge125

._crit_edge125:                                   ; preds = %bb.h
  %.pre = ptrtoint ptr %i.i to i64
  %.pre126 = ptrtoint ptr %.1.lcssa to i64
  %.pre128 = sub i64 %.pre, %.pre126
  br label %bb.i

.thread140:                                       ; preds = %._crit_edge120.thread, %bb.h
  %.078.lcssa138146 = phi ptr [ %.2, %bb.h ], [ %i.h, %._crit_edge120.thread ] ; 2 uses
  %.077.lcssa139145 = phi ptr [ %.1.lcssa, %bb.h ], [ %0, %._crit_edge120.thread ] ; 2 uses
  %i.br = ptrtoint ptr %.077.lcssa139145 to i64
  %i.bs = ptrtoint ptr %i.i to i64
  %i.bt = sub i64 %i.bs, %i.br                    ; 2 uses
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = and i8 %i.bu, 63
  %i.bw = add nuw nsw i8 %i.bv, 32
  %i.bx = getelementptr inbounds nuw i8, ptr %.078.lcssa138146, i64 1
  store i8 %i.bw, ptr %.078.lcssa138146, align 1, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge125, %.thread140
  %.077.lcssa139144 = phi ptr [ %.1.lcssa, %._crit_edge125 ], [ %.077.lcssa139145, %.thread140 ] ; 4 uses
  %.pre-phi129 = phi i64 [ %.pre128, %._crit_edge125 ], [ %i.bt, %.thread140 ] ; 2 uses
  %.282 = phi i64 [ %.181, %._crit_edge125 ], [ 0, %.thread140 ]
  %.3 = phi ptr [ %.2, %._crit_edge125 ], [ %i.bx, %.thread140 ] ; 5 uses
  %i.by = load i8, ptr %.077.lcssa139144, align 1, !tbaa !14
  %i.bz = lshr i8 %i.by, 2                        ; 2 uses
  %.not96 = icmp eq i8 %i.bz, 0
  %narrow = add nuw nsw i8 %i.bz, 32
  %spec.select109 = select i1 %.not96, i8 96, i8 %narrow
  %i.ca = getelementptr inbounds nuw i8, ptr %.3, i64 1
  store i8 %spec.select109, ptr %.3, align 1, !tbaa !14
  %i.cb = load i8, ptr %.077.lcssa139144, align 1, !tbaa !14
  %i.cc = zext i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 4
  %i.ce = and i32 %i.cd, 48
  %i.cf = getelementptr inbounds nuw i8, ptr %.077.lcssa139144, i64 1 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !14
  %i.ch = lshr i8 %i.cg, 4
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = or disjoint i32 %i.ce, %i.ci            ; 2 uses
  %.not97 = icmp eq i32 %i.cj, 0
  %i.ck = trunc nuw nsw i32 %i.cj to i8
  %i.cl = add nuw nsw i8 %i.ck, 32
  %i.cm = select i1 %.not97, i8 96, i8 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i8 %i.cm, ptr %i.ca, align 1, !tbaa !14
  %i.co = icmp sgt i64 %.pre-phi129, 1
  br i1 %i.co, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.i
  store i8 96, ptr %i.cn, align 1, !tbaa !14
  br label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cp = load i8, ptr %i.cf, align 1, !tbaa !14
  %i.cq = zext i8 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 2
  %i.cs = and i32 %i.cr, 60
  %i.ct = getelementptr inbounds nuw i8, ptr %.077.lcssa139144, i64 2 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !14
  %i.cv = lshr i8 %i.cu, 6
  %i.cw = zext nneg i8 %i.cv to i32
  %i.cx = or disjoint i32 %i.cs, %i.cw            ; 2 uses
  %.not98 = icmp eq i32 %i.cx, 0
  %i.cy = trunc nuw nsw i32 %i.cx to i8
  %i.cz = add nuw nsw i8 %i.cy, 32
  %i.da = select i1 %.not98, i8 96, i8 %i.cz
  store i8 %i.da, ptr %i.cn, align 1, !tbaa !14
  %.not111 = icmp eq i64 %.pre-phi129, 2
  br i1 %.not111, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.db = load i8, ptr %i.ct, align 1, !tbaa !14
  %i.dc = and i8 %i.db, 63                        ; 2 uses
  %.not99 = icmp eq i8 %i.dc, 0
  %narrow100 = add nuw nsw i8 %i.dc, 32
  %spec.select110 = select i1 %.not99, i8 96, i8 %narrow100
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k, %bb.j
  %i.dd = phi i8 [ %spec.select110, %bb.k ], [ 96, %bb.j ], [ 96, %.thread ]
  %i.de = getelementptr inbounds nuw i8, ptr %.3, i64 3
  %i.df = getelementptr inbounds nuw i8, ptr %.3, i64 4
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge120
  %.383 = phi i64 [ %.282, %bb.l ], [ %.181, %._crit_edge120 ]
  %.4 = phi ptr [ %i.df, %bb.l ], [ %.2, %._crit_edge120 ] ; 3 uses
  %i.dg = icmp ult i64 %.383, 45
  br i1 %i.dg, label %bb.n, label %.thread147

bb.n:                                             ; preds = %bb.m
  %i.dh = getelementptr inbounds nuw i8, ptr %.4, i64 1
  store i8 10, ptr %.4, align 1, !tbaa !14
  br label %.thread147

.thread147:                                       ; preds = %._crit_edge120.thread, %bb.n, %bb.m
  %.5 = phi ptr [ %i.dh, %bb.n ], [ %.4, %bb.m ], [ %i.h, %._crit_edge120.thread ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.5, i64 1
  store i8 96, ptr %.5, align 1, !tbaa !14
  %i.dj = getelementptr inbounds nuw i8, ptr %.5, i64 2 ; 2 uses
  store i8 10, ptr %i.di, align 1, !tbaa !14
  store i8 0, ptr %i.dj, align 1, !tbaa !14
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.h to i64
  %i.dm = sub i64 %i.dk, %i.dl                    ; 6 uses
  %i.dn = load i64, ptr %i.g, align 8, !tbaa !18
  %i.do = icmp ule i64 %i.dm, %i.dn
  tail call void @llvm.assume(i1 %i.do)
  %i.dp = load i32, ptr %i.c, align 4, !tbaa !14
  %i.dq = and i32 %i.dp, 64
  %.not.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i, label %bb.o, label %zend_string_alloc.exit

bb.o:                                             ; preds = %.thread147
  %i.dr = load i32, ptr %i.b, align 8, !tbaa !13
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %bb.p, label %zend_string_alloc.exit, !prof !20

bb.p:                                             ; preds = %bb.o
  %i.dt = and i64 %i.dm, -8
  %i.du = add i64 %i.dt, 32
  %i.dv = tail call ptr @_erealloc(ptr noundef nonnull %i.b, i64 noundef %i.du) #8 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store i64 %i.dm, ptr %i.dw, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 0, ptr %i.dx, align 8, !tbaa !17
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 4 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !14
  %i.ea = and i32 %i.dz, -513
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !14
  br label %zend_string_truncate.exit

zend_string_alloc.exit:                           ; preds = %.thread147, %bb.o
  %i.eb = and i64 %i.dm, -8
  %i.ec = add i64 %i.eb, 32
  %i.ed = tail call noalias ptr @_emalloc(i64 noundef %i.ec) #9 ; 7 uses
  store i32 1, ptr %i.ed, align 4, !tbaa !13
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 22, ptr %i.ee, align 4, !tbaa !14
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 0, ptr %i.ef, align 8, !tbaa !17
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store i64 %i.dm, ptr %i.eg, align 8, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ei = add i64 %i.dm, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eh, ptr nonnull align 8 %i.h, i64 %i.ei, i1 false)
  %i.ej = load i32, ptr %i.c, align 4, !tbaa !14
  %i.ek = and i32 %i.ej, 64
  %.not21.i = icmp eq i32 %i.ek, 0
  br i1 %.not21.i, label %bb.q, label %zend_string_truncate.exit

bb.q:                                             ; preds = %zend_string_alloc.exit
  %i.el = load i32, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %i.em = icmp ne i32 %i.el, 0
  tail call void @llvm.assume(i1 %i.em)
  %i.en = add i32 %i.el, -1
  store i32 %i.en, ptr %i.b, align 8, !tbaa !13
  br label %zend_string_truncate.exit

zend_string_truncate.exit:                        ; preds = %bb.p, %zend_string_alloc.exit, %bb.q
  %.0.i = phi ptr [ %i.dv, %bb.p ], [ %i.ed, %bb.q ], [ %i.ed, %zend_string_alloc.exit ]
  ret ptr %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @php_uudecode(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.k, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %bb.a
  %i.b = uitofp i64 %1 to double
  %i.c = fmul nnan double %i.b, 7.500000e-01
  %i.d = tail call double @llvm.ceil.f64(double %i.c)
  %i.e = fptoui double %i.d to i64                ; 2 uses
  %i.f = and i64 %i.e, -8
  %i.g = add i64 %i.f, 32
  %i.h = tail call noalias ptr @_emalloc(i64 noundef %i.g) #9 ; 7 uses
  store i32 1, ptr %i.h, align 4, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 22, ptr %i.i, align 4, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 %i.e, ptr %i.k, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  br label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %bb.f
  %.072 = phi ptr [ %i.bj, %bb.f ], [ %0, %.lr.ph73.preheader ] ; 3 uses
  %.05471 = phi ptr [ %.155.lcssa, %bb.f ], [ %i.l, %.lr.ph73.preheader ] ; 3 uses
  %.05770 = phi i64 [ %i.u, %bb.f ], [ 0, %.lr.ph73.preheader ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.072, i64 1 ; 4 uses
  %i.o = load i8, ptr %.072, align 1, !tbaa !14
  %i.p = and i8 %i.o, 63                          ; 3 uses
  %i.q = xor i8 %i.p, 32                          ; 3 uses
  %i.r = zext nneg i8 %i.q to i64                 ; 2 uses
  %i.s = icmp eq i8 %i.p, 32
  br i1 %i.s, label %._crit_edge74, label %bb.b

bb.b:                                             ; preds = %.lr.ph73
  %i.t = icmp ult i64 %1, %i.r
  br i1 %i.t, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = add i64 %.05770, %i.r                    ; 3 uses
  %i.v = icmp eq i8 %i.p, 13
  br i1 %i.v, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = uitofp nneg i8 %i.q to double
  %i.x = fmul nnan double %i.w, 1.330000e+00
  %i.y = tail call double @llvm.floor.f64(double %i.x)
  %i.z = fptosi double %i.y to i32                ; 2 uses
  %2 = sext i32 %i.z to i64
  %i.aa = getelementptr inbounds i8, ptr %i.n, i64 %2 ; 2 uses
  %i.ab = icmp ugt ptr %i.aa, %i.m
  br i1 %i.ab, label %.loopexit, label %.preheader

.thread:                                          ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.072, i64 61 ; 2 uses
  %i.ad = icmp ugt ptr %i.ac, %i.m
  br i1 %i.ad, label %.loopexit, label %.lr.ph.preheader

.preheader:                                       ; preds = %bb.d
  %3 = icmp sgt i32 %i.z, 0
  br i1 %3, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.thread, %.preheader
  %i.ae = phi ptr [ %i.aa, %.preheader ], [ %i.ac, %.thread ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.168 = phi ptr [ %i.af, %bb.e ], [ %i.n, %.lr.ph.preheader ] ; 5 uses
  %.15567 = phi ptr [ %i.bg, %bb.e ], [ %.05471, %.lr.ph.preheader ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.168, i64 4 ; 4 uses
  %i.ag = icmp ugt ptr %i.af, %i.m
  br i1 %i.ag, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ah = load i8, ptr %.168, align 1, !tbaa !14
  %i.ai = shl i8 %i.ah, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %.168, i64 1 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !14
  %i.al = lshr i8 %i.ak, 4
  %i.am = and i8 %i.al, 3
  %i.an = or disjoint i8 %i.am, %i.ai
  %i.ao = xor i8 %i.an, -126
  %i.ap = getelementptr inbounds nuw i8, ptr %.15567, i64 1
  store i8 %i.ao, ptr %.15567, align 1, !tbaa !14
  %i.aq = load i8, ptr %i.aj, align 1, !tbaa !14
  %i.ar = shl i8 %i.aq, 4
  %i.as = getelementptr inbounds nuw i8, ptr %.168, i64 2 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !14
  %i.au = lshr i8 %i.at, 2
  %i.av = and i8 %i.au, 15
  %i.aw = or disjoint i8 %i.av, %i.ar
  %i.ax = xor i8 %i.aw, 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.15567, i64 2
  store i8 %i.ax, ptr %i.ap, align 1, !tbaa !14
  %i.az = load i8, ptr %i.as, align 1, !tbaa !14
  %i.ba = shl i8 %i.az, 6
  %i.bb = getelementptr inbounds nuw i8, ptr %.168, i64 3
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !14
  %i.bd = and i8 %i.bc, 63
  %i.be = or disjoint i8 %i.bd, %i.ba
  %i.bf = xor i8 %i.be, 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.15567, i64 3 ; 2 uses
  store i8 %i.bf, ptr %i.ay, align 1, !tbaa !14
  %i.bh = icmp ult ptr %i.af, %i.ae
  br i1 %i.bh, label %.lr.ph, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %.155.lcssa = phi ptr [ %.05471, %.preheader ], [ %i.bg, %bb.e ] ; 3 uses
  %.1.lcssa = phi ptr [ %i.n, %.preheader ], [ %i.af, %bb.e ] ; 2 uses
  %i.bi = icmp samesign ult i8 %i.q, 45
  br i1 %i.bi, label %._crit_edge74, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 1 ; 3 uses
  %i.bk = icmp ult ptr %i.bj, %i.m
  br i1 %i.bk, label %.lr.ph73, label %._crit_edge74, !llvm.loop !29

._crit_edge74:                                    ; preds = %bb.f, %.lr.ph73, %._crit_edge
  %.158.ph = phi i64 [ %i.u, %bb.f ], [ %.05770, %.lr.ph73 ], [ %i.u, %._crit_edge ] ; 5 uses
  %.256.ph = phi ptr [ %.155.lcssa, %bb.f ], [ %.05471, %.lr.ph73 ], [ %.155.lcssa, %._crit_edge ] ; 4 uses
  %.2.ph = phi ptr [ %i.bj, %bb.f ], [ %i.n, %.lr.ph73 ], [ %.1.lcssa, %._crit_edge ] ; 4 uses
  %i.bl = ptrtoint ptr %.256.ph to i64
  %i.bm = ptrtoint ptr %i.l to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = icmp ugt i64 %.158.ph, %i.bn
  br i1 %i.bo, label %bb.g, label %bb.j

bb.g:                                             ; preds = %._crit_edge74
  %i.bp = load i8, ptr %.2.ph, align 1, !tbaa !14
  %i.bq = shl i8 %i.bp, 2
  %i.br = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !14
  %i.bt = lshr i8 %i.bs, 4
  %i.bu = and i8 %i.bt, 3
  %i.bv = or disjoint i8 %i.bu, %i.bq
  %i.bw = xor i8 %i.bv, -126
  store i8 %i.bw, ptr %.256.ph, align 1, !tbaa !14
  %i.bx = icmp ugt i64 %.158.ph, 1
  br i1 %i.bx, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %.256.ph, i64 1
  %i.bz = load i8, ptr %i.br, align 1, !tbaa !14
  %i.ca = shl i8 %i.bz, 4
  %i.cb = getelementptr inbounds nuw i8, ptr %.2.ph, i64 2 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !14
  %i.cd = lshr i8 %i.cc, 2
  %i.ce = and i8 %i.cd, 15
  %i.cf = or disjoint i8 %i.ce, %i.ca
  %i.cg = xor i8 %i.cf, 8
  store i8 %i.cg, ptr %i.by, align 1, !tbaa !14
  %.not = icmp eq i64 %.158.ph, 2
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %.256.ph, i64 2
  %i.ci = load i8, ptr %i.cb, align 1, !tbaa !14
  %i.cj = shl i8 %i.ci, 6
  %i.ck = getelementptr inbounds nuw i8, ptr %.2.ph, i64 3
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !14
  %i.cm = and i8 %i.cl, 63
  %i.cn = or disjoint i8 %i.cm, %i.cj
  %i.co = xor i8 %i.cn, 32
  store i8 %i.co, ptr %i.ch, align 1, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h, %._crit_edge74
  store i64 %.158.ph, ptr %i.k, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %i.l, i64 %.158.ph
  store i8 0, ptr %i.cp, align 1, !tbaa !14
  br label %bb.k

.loopexit:                                        ; preds = %bb.d, %bb.b, %.thread, %.lr.ph
  tail call void @_efree(ptr noundef nonnull %i.h) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %.loopexit, %bb.j
  %.059 = phi ptr [ null, %.loopexit ], [ %i.h, %bb.j ], [ null, %bb.a ]
  ret ptr %.059
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #2

; Function Attrs: nounwind uwtable
define hidden void @zif_convert_uuencode(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14
  %cond = icmp eq i32 %i.c, 1
  br i1 %cond, label %bb.b, label %.thread55, !prof !21

.thread55:                                        ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #7
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !14
  %i.g = icmp eq i8 %i.f, 6
  br i1 %i.g, label %.split65.thread, label %zend_parse_arg_str_ex.exit, !prof !20

.split65.thread:                                  ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !24
  br label %.critedge

zend_parse_arg_str_ex.exit:                       ; preds = %bb.b
  %i.i = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef 1) #7
  %cond.fr45 = freeze i1 %i.i
  br i1 %cond.fr45, label %zend_parse_arg_str_ex.exit..critedge_crit_edge, label %bb.c, !prof !25

zend_parse_arg_str_ex.exit..critedge_crit_edge:   ; preds = %zend_parse_arg_str_ex.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !24
  br label %.critedge

bb.c:                                             ; preds = %zend_parse_arg_str_ex.exit, %.thread55
  %.03664 = phi i32 [ 1, %.thread55 ], [ 9, %zend_parse_arg_str_ex.exit ]
  %.03763 = phi i32 [ 0, %.thread55 ], [ 4, %zend_parse_arg_str_ex.exit ]
  %.03862 = phi ptr [ null, %.thread55 ], [ %i.d, %zend_parse_arg_str_ex.exit ]
  %.03961 = phi i32 [ 0, %.thread55 ], [ 1, %zend_parse_arg_str_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.03664, i32 noundef %.03961, ptr noundef null, i32 noundef %.03763, ptr noundef %.03862) #7
  br label %bb.d

.critedge:                                        ; preds = %zend_parse_arg_str_ex.exit..critedge_crit_edge, %.split65.thread
  %i.j = phi ptr [ %.pre, %zend_parse_arg_str_ex.exit..critedge_crit_edge ], [ %i.h, %.split65.thread ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !18
  %i.n = call ptr @php_uuencode(ptr noundef nonnull %i.k, i64 noundef %i.m) ; 2 uses
  store ptr %i.n, ptr %1, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !14
  %i.q = and i32 %i.p, 64
  %.not42 = icmp eq i32 %i.q, 0
  %i.r = select i1 %.not42, i32 262, i32 6
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.r, ptr %i.s, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

declare void @zend_wrong_parameters_count_error(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

declare void @zend_wrong_parameter_error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @zif_convert_uudecode(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
end_hunk_0
