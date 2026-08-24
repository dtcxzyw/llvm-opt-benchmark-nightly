Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/cp?download=true
inline.NumInlined: 19
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@debugon = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [25 x i8] c"\0Apos: 0x%05X\09index: %4d\09\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"UTF8: %s\09\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Unicode\09\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"32-bit int: 0x%8lX\09\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"32-bit float: %.25G\09\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"64-bit int: 0x%lX%08lX\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"64-bit int: 0x%lX\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"64-bit float: %.25G\09\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Class: name = index %d\09\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"String: index %d\09\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Ref: class_index %d, n&t_index %d\09\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Name&Type: name_index %d, sig_index %d\09\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [64 x i8] c"Error reading constant pool entry %d of %d at file pos 0x%08x!\0A\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9ConstPool4readEP9ClassfilePt(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 2), (8, 16)) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = tail call i32 @getc(ptr noundef %i.a)
  %i.d = trunc i32 %i.c to i16
  %i.e = tail call i32 @getc(ptr noundef %i.a)
  %i.f = trunc i32 %i.e to i16
  %i.g = shl i16 %i.d, 8
  %i.h = and i16 %i.f, 255
  %i.i = or disjoint i16 %i.h, %i.g               ; 3 uses
  store i16 %i.i, ptr %0, align 8, !tbaa !22
  %i.j = zext i16 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 4
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !23
  store i8 0, ptr %i.l, align 8, !tbaa !24
  %i.n = zext i16 %i.i to i32                     ; 2 uses
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  %.not124 = icmp eq i32 %i.o, 0
  br i1 %.not124, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = add nsw i32 %i.n, -2
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.ad, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.ad
  %i.r = phi i32 [ %i.p, %.lr.ph ], [ %i.ke, %bb.ad ] ; 17 uses
  %.0127 = phi i32 [ %i.o, %.lr.ph ], [ %.2, %bb.ad ] ; 2 uses
  %.093126 = phi i32 [ 1, %.lr.ph ], [ %.295, %bb.ad ] ; 5 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.t = add nsw i32 %.093126, 1                  ; 20 uses
  %i.u = sext i32 %.093126 to i64
  %i.v = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.u ; 12 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !8
  %i.x = tail call i32 @getc(ptr noundef %i.w)
  %i.y = trunc i32 %i.x to i8                     ; 2 uses
  store i8 %i.y, ptr %i.v, align 8, !tbaa !24
  %i.z = load i32, ptr @debugon, align 4, !tbaa !4
  %.not100 = icmp eq i32 %i.z, 0
  br i1 %.not100, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !27
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aa, ptr noundef nonnull @.str, i32 noundef %i.ab, i32 noundef %.093126) #6 ; 0 uses
  %.pr = load i8, ptr %i.v, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ad = phi i8 [ %i.y, %bb.b ], [ %.pr, %bb.c ]
  switch i8 %i.ad, label %bb.ac [
    i8 1, label %bb.e
    i8 2, label %bb.g
    i8 3, label %bb.i
    i8 4, label %bb.k
    i8 5, label %bb.m
    i8 6, label %bb.r
    i8 7, label %bb.u
    i8 8, label %bb.w
    i8 9, label %bb.y
    i8 10, label %bb.y
    i8 11, label %bb.y
    i8 12, label %bb.aa
  ]

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.af = tail call i32 @getc(ptr noundef %i.ae)
  %i.ag = trunc i32 %i.af to i16
  %i.ah = tail call i32 @getc(ptr noundef %i.ae)
  %i.ai = trunc i32 %i.ah to i16
  %i.aj = shl i16 %i.ag, 8
  %i.ak = and i16 %i.ai, 255
  %i.al = or disjoint i16 %i.ak, %i.aj            ; 2 uses
  %i.am = zext i16 %i.al to i32                   ; 2 uses
  %i.an = add nuw nsw i32 %i.am, 1
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !28
  %i.ar = load i32, ptr %i.b, align 8, !tbaa !27
  %i.as = add nsw i32 %i.ar, %i.am
  store i32 %i.as, ptr %i.b, align 8, !tbaa !27
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !28
  %i.au = zext i16 %i.al to i64                   ; 2 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !8
  %i.aw = tail call i64 @fread(ptr noundef %i.at, i64 noundef %i.au, i64 noundef 1, ptr noundef %i.av) ; 0 uses
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !28
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.au
  store i8 0, ptr %i.ay, align 1, !tbaa !28
  %i.az = load i32, ptr @debugon, align 4, !tbaa !4
  %.not113 = icmp eq i32 %i.az, 0
  br i1 %.not113, label %bb.ad, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.bb = load ptr, ptr %i.aq, align 8, !tbaa !28
  %i.bc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ba, ptr noundef nonnull @.str.1, ptr noundef %i.bb) #6 ; 0 uses
  br label %bb.ad

bb.g:                                             ; preds = %bb.d
  %i.bd = load i32, ptr @debugon, align 4, !tbaa !4
  %.not112 = icmp eq i32 %i.bd, 0
  br i1 %.not112, label %bb.ad, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.bf = tail call i64 @fwrite(ptr nonnull @.str.2, i64 8, i64 1, ptr %i.be) ; 0 uses
  br label %bb.ad

bb.i:                                             ; preds = %bb.d
  %i.bg = load ptr, ptr %1, align 8, !tbaa !8     ; 4 uses
  %i.bh = tail call i32 @getc(ptr noundef %i.bg)
  %i.bi = zext i32 %i.bh to i64
  %i.bj = tail call i32 @getc(ptr noundef %i.bg)
  %i.bk = shl nuw nsw i64 %i.bi, 8
  %i.bl = and i32 %i.bj, 255
  %i.bm = zext nneg i32 %i.bl to i64
  %.masked.i = and i64 %i.bk, 65280
  %i.bn = or disjoint i64 %.masked.i, %i.bm
  %i.bo = tail call i32 @getc(ptr noundef %i.bg)
  %i.bp = zext i32 %i.bo to i64
  %i.bq = tail call i32 @getc(ptr noundef %i.bg)
  %i.br = shl nuw nsw i64 %i.bp, 8
  %i.bs = and i32 %i.bq, 255
  %i.bt = zext nneg i32 %i.bs to i64
  %.masked5.i = and i64 %i.br, 65280
  %i.bu = or disjoint i64 %.masked5.i, %i.bt
  %i.bv = shl nuw nsw i64 %i.bn, 16
  %i.bw = or disjoint i64 %i.bu, %i.bv            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !28
  %i.by = load i32, ptr @debugon, align 4, !tbaa !4
  %.not111 = icmp eq i32 %i.by, 0
  br i1 %.not111, label %bb.ad, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.ca = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bz, ptr noundef nonnull @.str.3, i64 noundef %i.bw) #6 ; 0 uses
  br label %bb.ad

bb.k:                                             ; preds = %bb.d
  %i.cb = load ptr, ptr %1, align 8, !tbaa !8     ; 4 uses
  %i.cc = tail call i32 @getc(ptr noundef %i.cb)
  %i.cd = zext i32 %i.cc to i64
  %i.ce = tail call i32 @getc(ptr noundef %i.cb)
  %i.cf = shl nuw nsw i64 %i.cd, 8
  %i.cg = and i32 %i.ce, 255
  %i.ch = zext nneg i32 %i.cg to i64
  %.masked.i114 = and i64 %i.cf, 65280
  %i.ci = or disjoint i64 %.masked.i114, %i.ch
  %i.cj = tail call i32 @getc(ptr noundef %i.cb)
  %i.ck = zext i32 %i.cj to i64
  %i.cl = tail call i32 @getc(ptr noundef %i.cb)
  %i.cm = shl nuw nsw i64 %i.ck, 8
  %i.cn = and i32 %i.cl, 255
  %i.co = zext nneg i32 %i.cn to i64
  %.masked5.i115 = and i64 %i.cm, 65280
  %i.cp = or disjoint i64 %.masked5.i115, %i.co
  %i.cq = shl nuw nsw i64 %i.ci, 16
  %i.cr = or disjoint i64 %i.cp, %i.cq            ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !28
  %i.ct = load i32, ptr @debugon, align 4, !tbaa !4
  %.not110 = icmp eq i32 %i.ct, 0
  br i1 %.not110, label %bb.ad, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cu = trunc nuw i64 %i.cr to i32
  %i.cv = bitcast i32 %i.cu to float
  %i.cw = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.cx = fpext float %i.cv to double
  %i.cy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cw, ptr noundef nonnull @.str.4, double noundef %i.cx) #6 ; 0 uses
  br label %bb.ad

bb.m:                                             ; preds = %bb.d
  %i.cz = load ptr, ptr %1, align 8, !tbaa !8     ; 4 uses
  %i.da = tail call i32 @getc(ptr noundef %i.cz)
  %i.db = zext i32 %i.da to i64
  %i.dc = tail call i32 @getc(ptr noundef %i.cz)
  %i.dd = shl nuw nsw i64 %i.db, 8
  %i.de = and i32 %i.dc, 255
  %i.df = zext nneg i32 %i.de to i64
  %.masked.i116 = and i64 %i.dd, 65280
  %i.dg = or disjoint i64 %.masked.i116, %i.df
  %i.dh = tail call i32 @getc(ptr noundef %i.cz)
  %i.di = zext i32 %i.dh to i64
  %i.dj = tail call i32 @getc(ptr noundef %i.cz)
  %i.dk = shl nuw nsw i64 %i.di, 8
  %i.dl = and i32 %i.dj, 255
  %i.dm = zext nneg i32 %i.dl to i64
  %.masked5.i117 = and i64 %i.dk, 65280
  %i.dn = or disjoint i64 %.masked5.i117, %i.dm
  %i.do = shl nuw nsw i64 %i.dg, 16
  %i.dp = or disjoint i64 %i.dn, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !28
  %i.dr = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.ds = add nsw i32 %.093126, 2
  %i.dt = sext i32 %i.t to i64
  %i.du = getelementptr inbounds [16 x i8], ptr %i.dr, i64 %i.dt ; 3 uses
  store i8 0, ptr %i.du, align 8, !tbaa !24
  %i.dv = load ptr, ptr %1, align 8, !tbaa !8     ; 4 uses
  %i.dw = tail call i32 @getc(ptr noundef %i.dv)
  %i.dx = zext i32 %i.dw to i64
  %i.dy = tail call i32 @getc(ptr noundef %i.dv)
  %i.dz = shl nuw nsw i64 %i.dx, 8
  %i.ea = and i32 %i.dy, 255
  %i.eb = zext nneg i32 %i.ea to i64
  %.masked.i118 = and i64 %i.dz, 65280
  %i.ec = or disjoint i64 %.masked.i118, %i.eb
  %i.ed = tail call i32 @getc(ptr noundef %i.dv)
  %i.ee = zext i32 %i.ed to i64
end_hunk_0
