Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/drop3?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str = private unnamed_addr constant [25 x i8] c"Usage: drop_0XX [infile]\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -268435456, 268435456) i32 @drop_0xx(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = icmp slt i32 %i.a, 3
  br i1 %i.b, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.af
  %.0146 = phi i32 [ %.8, %bb.af ], [ 0, %bb.a ]  ; 2 uses
  %.091145 = phi i16 [ %.899, %bb.af ], [ 0, %bb.a ] ; 2 uses
  %.0101144 = phi i32 [ %i.dv, %bb.af ], [ 0, %bb.a ]
  %.0102143 = phi i32 [ %i.dh, %bb.af ], [ %i.a, %bb.a ] ; 9 uses
  %.0103142 = phi ptr [ %i.cd, %bb.af ], [ %0, %bb.a ] ; 4 uses
  %.0104141 = phi ptr [ %.8112, %bb.af ], [ %1, %bb.a ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0103142, i64 1
  %i.d = load i8, ptr %.0103142, align 1, !tbaa !8
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 8
  %.0101.masked = and i32 %.0101144, 65472
  %i.g = or i32 %i.f, %.0101.masked               ; 4 uses
  %i.h = icmp samesign ugt i32 %i.g, 32767
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.i = lshr i32 %i.g, 13
  %i.j = zext i16 %.091145 to i32
  %i.k = shl nuw nsw i32 %i.j, 3
  %i.l = or disjoint i32 %i.i, %i.k               ; 2 uses
  %i.m = trunc i32 %i.l to i16                    ; 2 uses
  %i.n = add nsw i32 %.0146, 3                    ; 3 uses
  %i.o = and i32 %i.n, 7                          ; 2 uses
  %i.p = icmp samesign ult i32 %i.o, 3
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = lshr i32 %i.l, %i.o
  %i.r = trunc i32 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %.0104141, i64 1
  store i8 %i.r, ptr %.0104141, align 1, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %.lr.ph
  %.1105 = phi ptr [ %i.s, %bb.c ], [ %.0104141, %bb.b ], [ %.0104141, %.lr.ph ] ; 5 uses
  %.192 = phi i16 [ %i.m, %bb.c ], [ %i.m, %bb.b ], [ %.091145, %.lr.ph ] ; 3 uses
  %.1 = phi i32 [ %i.n, %bb.c ], [ %i.n, %bb.b ], [ %.0146, %.lr.ph ] ; 3 uses
  %i.t = icmp samesign ult i32 %.0102143, 6
  br i1 %i.t, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = shl nuw nsw i32 %i.g, 3
  %i.v = and i32 %i.u, 65024                      ; 2 uses
  %i.w = icmp samesign ugt i32 %i.v, 32767
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = lshr i32 %i.v, 13
  %i.y = zext i16 %.192 to i32
  %i.z = shl nuw nsw i32 %i.y, 3
  %i.aa = or disjoint i32 %i.z, %i.x              ; 2 uses
  %i.ab = trunc i32 %i.aa to i16                  ; 2 uses
  %i.ac = add nsw i32 %.1, 3                      ; 3 uses
  %i.ad = and i32 %i.ac, 7                        ; 2 uses
  %i.ae = icmp samesign ult i32 %i.ad, 3
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = lshr i32 %i.aa, %i.ad
  %i.ag = trunc i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %.1105, i64 1
  store i8 %i.ag, ptr %.1105, align 1, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.2106 = phi ptr [ %i.ah, %bb.g ], [ %.1105, %bb.f ], [ %.1105, %bb.e ] ; 5 uses
  %.293 = phi i16 [ %i.ab, %bb.g ], [ %i.ab, %bb.f ], [ %.192, %bb.e ] ; 3 uses
  %.2 = phi i32 [ %i.ac, %bb.g ], [ %i.ac, %bb.f ], [ %.1, %bb.e ] ; 3 uses
  %i.ai = icmp samesign ult i32 %.0102143, 9
  br i1 %i.ai, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.0103142, i64 2
  %i.ak = load i8, ptr %i.c, align 1, !tbaa !8
  %i.al = zext i8 %i.ak to i32                    ; 3 uses
  %3 = and i32 %i.g, 960                          ; 2 uses
  %4 = or i32 %3, %i.al                           ; 2 uses
  %i.am = icmp samesign ugt i32 %3, 511
  br i1 %i.am, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.an = lshr i32 %4, 7
  %i.ao = zext i16 %.293 to i32
  %i.ap = shl nuw nsw i32 %i.ao, 3
  %i.aq = or disjoint i32 %i.an, %i.ap            ; 2 uses
  %i.ar = trunc i32 %i.aq to i16                  ; 2 uses
  %i.as = add nsw i32 %.2, 3                      ; 3 uses
  %i.at = and i32 %i.as, 7                        ; 2 uses
  %i.au = icmp samesign ult i32 %i.at, 3
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = lshr i32 %i.aq, %i.at
  %i.aw = trunc i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %.2106, i64 1
  store i8 %i.aw, ptr %.2106, align 1, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %.3107 = phi ptr [ %i.ax, %bb.k ], [ %.2106, %bb.j ], [ %.2106, %bb.i ] ; 5 uses
  %.394 = phi i16 [ %i.ar, %bb.k ], [ %i.ar, %bb.j ], [ %.293, %bb.i ] ; 3 uses
  %.3 = phi i32 [ %i.as, %bb.k ], [ %i.as, %bb.j ], [ %.2, %bb.i ] ; 3 uses
  %i.ay = icmp samesign ult i32 %.0102143, 12
  br i1 %i.ay, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = shl nuw nsw i32 %4, 9
  %i.ba = and i32 %i.az, 65024                    ; 2 uses
  %i.bb = icmp samesign ugt i32 %i.ba, 32767
  br i1 %i.bb, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bc = lshr i32 %i.ba, 13
  %i.bd = zext i16 %.394 to i32
  %i.be = shl nuw nsw i32 %i.bd, 3
  %i.bf = or disjoint i32 %i.be, %i.bc            ; 2 uses
  %i.bg = trunc i32 %i.bf to i16                  ; 2 uses
  %i.bh = add nsw i32 %.3, 3                      ; 3 uses
  %i.bi = and i32 %i.bh, 7                        ; 2 uses
  %i.bj = icmp samesign ult i32 %i.bi, 3
  br i1 %i.bj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bk = lshr i32 %i.bf, %i.bi
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %.3107, i64 1
  store i8 %i.bl, ptr %.3107, align 1, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %.4108 = phi ptr [ %i.bm, %bb.o ], [ %.3107, %bb.n ], [ %.3107, %bb.m ] ; 5 uses
  %.495 = phi i16 [ %i.bg, %bb.o ], [ %i.bg, %bb.n ], [ %.394, %bb.m ] ; 3 uses
  %.4 = phi i32 [ %i.bh, %bb.o ], [ %i.bh, %bb.n ], [ %.3, %bb.m ] ; 3 uses
  %i.bn = icmp samesign ult i32 %.0102143, 15
  br i1 %i.bn, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = shl nuw nsw i32 %i.al, 12
  %i.bp = and i32 %i.bo, 61440                    ; 2 uses
  %i.bq = icmp samesign ugt i32 %i.bp, 32767
  br i1 %i.bq, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.br = lshr i32 %i.bp, 13
  %i.bs = zext i16 %.495 to i32
  %i.bt = shl nuw nsw i32 %i.bs, 3
  %i.bu = or disjoint i32 %i.bt, %i.br            ; 2 uses
  %i.bv = trunc i32 %i.bu to i16                  ; 2 uses
  %i.bw = add nsw i32 %.4, 3                      ; 3 uses
  %i.bx = and i32 %i.bw, 7                        ; 2 uses
  %i.by = icmp samesign ult i32 %i.bx, 3
  br i1 %i.by, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bz = lshr i32 %i.bu, %i.bx
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %.4108, i64 1
  store i8 %i.ca, ptr %.4108, align 1, !tbaa !8
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %.5109 = phi ptr [ %i.cb, %bb.s ], [ %.4108, %bb.r ], [ %.4108, %bb.q ] ; 5 uses
  %.596 = phi i16 [ %i.bv, %bb.s ], [ %i.bv, %bb.r ], [ %.495, %bb.q ] ; 3 uses
  %.5 = phi i32 [ %i.bw, %bb.s ], [ %i.bw, %bb.r ], [ %.4, %bb.q ] ; 3 uses
  %i.cc = icmp samesign ult i32 %.0102143, 18
  br i1 %i.cc, label %._crit_edge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %.0103142, i64 3
  %i.ce = load i8, ptr %i.aj, align 1, !tbaa !8   ; 3 uses
  %i.cf = and i32 %i.al, 1
  %.not = icmp eq i32 %i.cf, 0
  br i1 %.not, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = lshr i8 %i.ce, 6
  %i.ch = or disjoint i8 %i.cg, 4
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = zext i16 %.596 to i32
  %i.ck = shl nuw nsw i32 %i.cj, 3
  %i.cl = or disjoint i32 %i.ck, %i.ci            ; 2 uses
  %i.cm = trunc i32 %i.cl to i16                  ; 2 uses
  %i.cn = add nsw i32 %.5, 3                      ; 3 uses
  %i.co = and i32 %i.cn, 7                        ; 2 uses
  %i.cp = icmp samesign ult i32 %i.co, 3
  br i1 %i.cp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cq = lshr i32 %i.cl, %i.co
  %i.cr = trunc i32 %i.cq to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %.5109, i64 1
  store i8 %i.cr, ptr %.5109, align 1, !tbaa !8
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u
  %.6110 = phi ptr [ %i.cs, %bb.w ], [ %.5109, %bb.v ], [ %.5109, %bb.u ] ; 5 uses
  %.697 = phi i16 [ %i.cm, %bb.w ], [ %i.cm, %bb.v ], [ %.596, %bb.u ] ; 3 uses
  %.6 = phi i32 [ %i.cn, %bb.w ], [ %i.cn, %bb.v ], [ %.5, %bb.u ] ; 3 uses
  %i.ct = icmp samesign ult i32 %.0102143, 21
  br i1 %i.ct, label %._crit_edge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.tr139 = zext i8 %i.ce to i32
  %.tr = shl nuw nsw i32 %.tr139, 10
  %i.cu = and i32 %.tr, 64512                     ; 3 uses
  %i.cv = icmp samesign ugt i32 %i.cu, 32767
  br i1 %i.cv, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.cw = lshr i32 %i.cu, 13
  %i.cx = zext i16 %.697 to i32
  %i.cy = shl nuw nsw i32 %i.cx, 3
  %i.cz = or disjoint i32 %i.cy, %i.cw            ; 2 uses
  %i.da = trunc i32 %i.cz to i16                  ; 2 uses
  %i.db = add nsw i32 %.6, 3                      ; 3 uses
  %i.dc = and i32 %i.db, 7                        ; 2 uses
  %i.dd = icmp samesign ult i32 %i.dc, 3
  br i1 %i.dd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.de = lshr i32 %i.cz, %i.dc
  %i.df = trunc i32 %i.de to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %.6110, i64 1
  store i8 %i.df, ptr %.6110, align 1, !tbaa !8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.y
  %.7111 = phi ptr [ %i.dg, %bb.aa ], [ %.6110, %bb.z ], [ %.6110, %bb.y ] ; 5 uses
  %.798 = phi i16 [ %i.da, %bb.aa ], [ %i.da, %bb.z ], [ %.697, %bb.y ] ; 3 uses
  %.7 = phi i32 [ %i.db, %bb.aa ], [ %i.db, %bb.z ], [ %.6, %bb.y ] ; 3 uses
  %i.dh = add nsw i32 %.0102143, -24
  %i.di = icmp samesign ult i32 %.0102143, 24
  br i1 %i.di, label %._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dj = and i8 %i.ce, 7                         ; 2 uses
  %i.dk = icmp samesign ugt i8 %i.dj, 3
  br i1 %i.dk, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.dl = zext nneg i8 %i.dj to i16
  %i.dm = shl i16 %.798, 3
  %i.dn = or disjoint i16 %i.dm, %i.dl            ; 3 uses
  %i.do = add nsw i32 %.7, 3                      ; 3 uses
  %i.dp = and i32 %i.do, 7                        ; 2 uses
  %i.dq = icmp samesign ult i32 %i.dp, 3
  br i1 %i.dq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dr = zext i16 %i.dn to i32
  %i.ds = lshr i32 %i.dr, %i.dp
  %i.dt = trunc i32 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %.7111, i64 1
  store i8 %i.dt, ptr %.7111, align 1, !tbaa !8
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  %.8112 = phi ptr [ %i.du, %bb.ae ], [ %.7111, %bb.ad ], [ %.7111, %bb.ac ] ; 2 uses
  %.899 = phi i16 [ %i.dn, %bb.ae ], [ %i.dn, %bb.ad ], [ %.798, %bb.ac ] ; 2 uses
  %.8 = phi i32 [ %i.do, %bb.ae ], [ %i.do, %bb.ad ], [ %.7, %bb.ac ] ; 2 uses
  %i.dv = shl nuw nsw i32 %i.cu, 6
  %i.dw = icmp slt i32 %.0102143, 27
  br i1 %i.dw, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.af, %bb.d, %bb.h, %bb.l, %bb.p, %bb.t, %bb.x, %bb.ab
  %.9113.ph = phi ptr [ %.8112, %bb.af ], [ %.7111, %bb.ab ], [ %.6110, %bb.x ], [ %.5109, %bb.t ], [ %.4108, %bb.p ], [ %.3107, %bb.l ], [ %.2106, %bb.h ], [ %.1105, %bb.d ]
  %.9100.ph = phi i16 [ %.899, %bb.af ], [ %.798, %bb.ab ], [ %.697, %bb.x ], [ %.596, %bb.t ], [ %.495, %bb.p ], [ %.394, %bb.l ], [ %.293, %bb.h ], [ %.192, %bb.d ]
  %.9.ph = phi i32 [ %.8, %bb.af ], [ %.7, %bb.ab ], [ %.6, %bb.x ], [ %.5, %bb.t ], [ %.4, %bb.p ], [ %.3, %bb.l ], [ %.2, %bb.h ], [ %.1, %bb.d ] ; 3 uses
  %i.dx = and i32 %.9.ph, 7                       ; 2 uses
  %.not140 = icmp eq i32 %i.dx, 0
  br i1 %.not140, label %._crit_edge.thread, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge
  %i.dy = zext i16 %.9100.ph to i32
  %i.dz = sub nuw nsw i32 8, %i.dx
  %i.ea = shl nuw nsw i32 %i.dy, %i.dz
  %i.eb = trunc i32 %i.ea to i8
  store i8 %i.eb, ptr %.9113.ph, align 1, !tbaa !8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.ag, %._crit_edge
  %.9197 = phi i32 [ %.9.ph, %._crit_edge ], [ %.9.ph, %bb.ag ], [ 0, %bb.a ]
  %i.ec = ashr i32 %.9197, 3
  ret i32 %i.ec
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.timeval, align 8            ; 2 uses
  %3 = alloca %struct.timeval, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.a = tail call noalias dereferenceable_or_null(4000000) ptr @malloc(i64 noundef 4000000) #9 ; 21 uses
  %i.b = tail call noalias dereferenceable_or_null(4000000) ptr @malloc(i64 noundef 4000000) #9 ; 20 uses
  %i.c = icmp sgt i32 %0, 1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.f = tail call noalias ptr @fopen(ptr noundef %i.e, ptr noundef nonnull @.str) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.d
end_hunk_0
