Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/drop3?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1, !guid !8
@stdin = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !guid !9
@str = private unnamed_addr constant [25 x i8] c"Usage: drop_0XX [infile]\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -268435456, 268435456) i32 @drop_0xx(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 !guid !10 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = icmp slt i32 %i.a, 3
  br i1 %i.b, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.af
  %.0146 = phi i32 [ %.8, %bb.af ], [ 0, %bb.a ]  ; 2 uses
  %.091145 = phi i16 [ %.899, %bb.af ], [ 0, %bb.a ] ; 2 uses
  %.0101144 = phi i32 [ %i.dw, %bb.af ], [ 0, %bb.a ]
  %.0102143 = phi i32 [ %i.di, %bb.af ], [ %i.a, %bb.a ] ; 9 uses
  %.0103142 = phi ptr [ %i.cf, %bb.af ], [ %0, %bb.a ] ; 4 uses
  %.0104141 = phi ptr [ %.8112, %bb.af ], [ %1, %bb.a ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0103142, i64 1
  %i.d = load i8, ptr %.0103142, align 1, !tbaa !11
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
  store i8 %i.r, ptr %.0104141, align 1, !tbaa !11
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
  store i8 %i.ag, ptr %.1105, align 1, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.2106 = phi ptr [ %i.ah, %bb.g ], [ %.1105, %bb.f ], [ %.1105, %bb.e ] ; 5 uses
  %.293 = phi i16 [ %i.ab, %bb.g ], [ %i.ab, %bb.f ], [ %.192, %bb.e ] ; 3 uses
  %.2 = phi i32 [ %i.ac, %bb.g ], [ %i.ac, %bb.f ], [ %.1, %bb.e ] ; 3 uses
  %i.ai = icmp samesign ult i32 %.0102143, 9
  br i1 %i.ai, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.0103142, i64 2
  %i.ak = load i8, ptr %i.c, align 1, !tbaa !11
  %i.al = zext i8 %i.ak to i32                    ; 3 uses
  %i.am = and i32 %i.g, 960                       ; 2 uses
  %i.an = or i32 %i.am, %i.al                     ; 2 uses
  %i.ao = icmp samesign ugt i32 %i.am, 511
  br i1 %i.ao, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ap = lshr i32 %i.an, 7
  %i.aq = zext i16 %.293 to i32
  %i.ar = shl nuw nsw i32 %i.aq, 3
  %i.as = or disjoint i32 %i.ap, %i.ar            ; 2 uses
  %i.at = trunc i32 %i.as to i16                  ; 2 uses
  %i.au = add nsw i32 %.2, 3                      ; 3 uses
  %i.av = and i32 %i.au, 7                        ; 2 uses
  %i.aw = icmp samesign ult i32 %i.av, 3
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = lshr i32 %i.as, %i.av
  %i.ay = trunc i32 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %.2106, i64 1
  store i8 %i.ay, ptr %.2106, align 1, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %.3107 = phi ptr [ %i.az, %bb.k ], [ %.2106, %bb.j ], [ %.2106, %bb.i ] ; 5 uses
  %.394 = phi i16 [ %i.at, %bb.k ], [ %i.at, %bb.j ], [ %.293, %bb.i ] ; 3 uses
  %.3 = phi i32 [ %i.au, %bb.k ], [ %i.au, %bb.j ], [ %.2, %bb.i ] ; 3 uses
  %i.ba = icmp samesign ult i32 %.0102143, 12
  br i1 %i.ba, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = shl nuw nsw i32 %i.an, 9
  %i.bc = and i32 %i.bb, 65024                    ; 2 uses
  %i.bd = icmp samesign ugt i32 %i.bc, 32767
  br i1 %i.bd, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.be = lshr i32 %i.bc, 13
  %i.bf = zext i16 %.394 to i32
  %i.bg = shl nuw nsw i32 %i.bf, 3
  %i.bh = or disjoint i32 %i.bg, %i.be            ; 2 uses
  %i.bi = trunc i32 %i.bh to i16                  ; 2 uses
  %i.bj = add nsw i32 %.3, 3                      ; 3 uses
  %i.bk = and i32 %i.bj, 7                        ; 2 uses
  %i.bl = icmp samesign ult i32 %i.bk, 3
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bm = lshr i32 %i.bh, %i.bk
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %.3107, i64 1
  store i8 %i.bn, ptr %.3107, align 1, !tbaa !11
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %.4108 = phi ptr [ %i.bo, %bb.o ], [ %.3107, %bb.n ], [ %.3107, %bb.m ] ; 5 uses
  %.495 = phi i16 [ %i.bi, %bb.o ], [ %i.bi, %bb.n ], [ %.394, %bb.m ] ; 3 uses
  %.4 = phi i32 [ %i.bj, %bb.o ], [ %i.bj, %bb.n ], [ %.3, %bb.m ] ; 3 uses
  %i.bp = icmp samesign ult i32 %.0102143, 15
  br i1 %i.bp, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = shl nuw nsw i32 %i.al, 12
  %i.br = and i32 %i.bq, 61440                    ; 2 uses
  %i.bs = icmp samesign ugt i32 %i.br, 32767
  br i1 %i.bs, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bt = lshr i32 %i.br, 13
  %i.bu = zext i16 %.495 to i32
  %i.bv = shl nuw nsw i32 %i.bu, 3
  %i.bw = or disjoint i32 %i.bv, %i.bt            ; 2 uses
  %i.bx = trunc i32 %i.bw to i16                  ; 2 uses
  %i.by = add nsw i32 %.4, 3                      ; 3 uses
  %i.bz = and i32 %i.by, 7                        ; 2 uses
  %i.ca = icmp samesign ult i32 %i.bz, 3
  br i1 %i.ca, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cb = lshr i32 %i.bw, %i.bz
  %i.cc = trunc i32 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %.4108, i64 1
  store i8 %i.cc, ptr %.4108, align 1, !tbaa !11
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %.5109 = phi ptr [ %i.cd, %bb.s ], [ %.4108, %bb.r ], [ %.4108, %bb.q ] ; 5 uses
  %.596 = phi i16 [ %i.bx, %bb.s ], [ %i.bx, %bb.r ], [ %.495, %bb.q ] ; 3 uses
  %.5 = phi i32 [ %i.by, %bb.s ], [ %i.by, %bb.r ], [ %.4, %bb.q ] ; 3 uses
  %i.ce = icmp samesign ult i32 %.0102143, 18
  br i1 %i.ce, label %._crit_edge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %.0103142, i64 3
  %i.cg = load i8, ptr %i.aj, align 1, !tbaa !11  ; 3 uses
  %i.ch = and i32 %i.al, 1
  %.not = icmp eq i32 %i.ch, 0
  br i1 %.not, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = lshr i8 %i.cg, 6
  %3 = or disjoint i8 %i.ci, 4
  %i.cj = zext nneg i8 %3 to i32
  %i.ck = zext i16 %.596 to i32
  %i.cl = shl nuw nsw i32 %i.ck, 3
  %i.cm = or disjoint i32 %i.cl, %i.cj            ; 2 uses
  %i.cn = trunc i32 %i.cm to i16                  ; 2 uses
  %i.co = add nsw i32 %.5, 3                      ; 3 uses
  %i.cp = and i32 %i.co, 7                        ; 2 uses
  %i.cq = icmp samesign ult i32 %i.cp, 3
  br i1 %i.cq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cr = lshr i32 %i.cm, %i.cp
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %.5109, i64 1
  store i8 %i.cs, ptr %.5109, align 1, !tbaa !11
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u
  %.6110 = phi ptr [ %i.ct, %bb.w ], [ %.5109, %bb.v ], [ %.5109, %bb.u ] ; 5 uses
  %.697 = phi i16 [ %i.cn, %bb.w ], [ %i.cn, %bb.v ], [ %.596, %bb.u ] ; 3 uses
  %.6 = phi i32 [ %i.co, %bb.w ], [ %i.co, %bb.v ], [ %.5, %bb.u ] ; 3 uses
  %i.cu = icmp samesign ult i32 %.0102143, 21
  br i1 %i.cu, label %._crit_edge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.tr139 = zext i8 %i.cg to i32
  %.tr = shl nuw nsw i32 %.tr139, 10
  %i.cv = and i32 %.tr, 64512                     ; 3 uses
  %i.cw = icmp samesign ugt i32 %i.cv, 32767
  br i1 %i.cw, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.cx = lshr i32 %i.cv, 13
  %i.cy = zext i16 %.697 to i32
  %i.cz = shl nuw nsw i32 %i.cy, 3
  %i.da = or disjoint i32 %i.cz, %i.cx            ; 2 uses
  %i.db = trunc i32 %i.da to i16                  ; 2 uses
  %i.dc = add nsw i32 %.6, 3                      ; 3 uses
  %i.dd = and i32 %i.dc, 7                        ; 2 uses
  %i.de = icmp samesign ult i32 %i.dd, 3
  br i1 %i.de, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.df = lshr i32 %i.da, %i.dd
  %i.dg = trunc i32 %i.df to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %.6110, i64 1
  store i8 %i.dg, ptr %.6110, align 1, !tbaa !11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.y
  %.7111 = phi ptr [ %i.dh, %bb.aa ], [ %.6110, %bb.z ], [ %.6110, %bb.y ] ; 5 uses
  %.798 = phi i16 [ %i.db, %bb.aa ], [ %i.db, %bb.z ], [ %.697, %bb.y ] ; 3 uses
  %.7 = phi i32 [ %i.dc, %bb.aa ], [ %i.dc, %bb.z ], [ %.6, %bb.y ] ; 3 uses
  %i.di = add nsw i32 %.0102143, -24
  %i.dj = icmp samesign ult i32 %.0102143, 24
  br i1 %i.dj, label %._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dk = and i8 %i.cg, 7                         ; 2 uses
  %i.dl = icmp samesign ugt i8 %i.dk, 3
  br i1 %i.dl, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.dm = zext nneg i8 %i.dk to i16
  %i.dn = shl i16 %.798, 3
  %i.do = or disjoint i16 %i.dn, %i.dm            ; 3 uses
  %i.dp = add nsw i32 %.7, 3                      ; 3 uses
  %i.dq = and i32 %i.dp, 7                        ; 2 uses
  %i.dr = icmp samesign ult i32 %i.dq, 3
  br i1 %i.dr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ds = zext i16 %i.do to i32
  %i.dt = lshr i32 %i.ds, %i.dq
  %i.du = trunc i32 %i.dt to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %.7111, i64 1
  store i8 %i.du, ptr %.7111, align 1, !tbaa !11
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  %.8112 = phi ptr [ %i.dv, %bb.ae ], [ %.7111, %bb.ad ], [ %.7111, %bb.ac ] ; 2 uses
  %.899 = phi i16 [ %i.do, %bb.ae ], [ %i.do, %bb.ad ], [ %.798, %bb.ac ] ; 2 uses
  %.8 = phi i32 [ %i.dp, %bb.ae ], [ %i.dp, %bb.ad ], [ %.7, %bb.ac ] ; 2 uses
  %i.dw = shl nuw nsw i32 %i.cv, 6
  %i.dx = icmp slt i32 %.0102143, 27
  br i1 %i.dx, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.af, %bb.d, %bb.h, %bb.l, %bb.p, %bb.t, %bb.x, %bb.ab
  %.9113.ph = phi ptr [ %.8112, %bb.af ], [ %.7111, %bb.ab ], [ %.6110, %bb.x ], [ %.5109, %bb.t ], [ %.4108, %bb.p ], [ %.3107, %bb.l ], [ %.2106, %bb.h ], [ %.1105, %bb.d ]
  %.9100.ph = phi i16 [ %.899, %bb.af ], [ %.798, %bb.ab ], [ %.697, %bb.x ], [ %.596, %bb.t ], [ %.495, %bb.p ], [ %.394, %bb.l ], [ %.293, %bb.h ], [ %.192, %bb.d ]
  %.9.ph = phi i32 [ %.8, %bb.af ], [ %.7, %bb.ab ], [ %.6, %bb.x ], [ %.5, %bb.t ], [ %.4, %bb.p ], [ %.3, %bb.l ], [ %.2, %bb.h ], [ %.1, %bb.d ] ; 3 uses
  %i.dy = and i32 %.9.ph, 7                       ; 2 uses
  %.not140 = icmp eq i32 %i.dy, 0
  br i1 %.not140, label %._crit_edge.thread, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge
  %i.dz = zext i16 %.9100.ph to i32
  %i.ea = sub nuw nsw i32 8, %i.dy
  %i.eb = shl nuw nsw i32 %i.dz, %i.ea
  %i.ec = trunc i32 %i.eb to i8
  store i8 %i.ec, ptr %.9113.ph, align 1, !tbaa !11
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.ag, %._crit_edge
  %.9196 = phi i32 [ %.9.ph, %._crit_edge ], [ %.9.ph, %bb.ag ], [ 0, %bb.a ]
  %i.ed = ashr i32 %.9196, 3
  ret i32 %i.ed
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 !guid !12 {
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = tail call noalias ptr @fopen(ptr noundef %i.e, ptr noundef nonnull @.str) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !15
  tail call void @perror(ptr noundef %i.h) #10
  tail call void @exit(i32 noundef 1) #11
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = add nsw i32 %0, -1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @stdin, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.021 = phi i32 [ %i.i, %bb.d ], [ %0, %bb.e ]
  %.020 = phi ptr [ %i.f, %bb.d ], [ %i.j, %bb.e ]
  %.not = icmp eq i32 %.021, 1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 2) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.k = tail call noundef i64 @fread(ptr noundef %i.a, i64 noundef 1, i64 noundef 4000000, ptr noundef %.020)
  %i.l = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #8 ; 0 uses
  %i.m = shl i64 %i.k, 3                          ; 20 uses
  %i.n = tail call i32 @drop_0xx(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.m) ; 0 uses
  %i.o = tail call i32 @drop_0xx(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.m) ; 0 uses
  %i.p = tail call i32 @drop_0xx(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.m) ; 0 uses
  %i.q = tail call i32 @drop_0xx(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.m) ; 0 uses
  %i.r = tail call i32 @drop_0xx(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.m) ; 0 uses
  %i.s = tail call i32 @drop_0xx(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.m) ; 0 uses
  %i.t = tail call i32 @drop_0xx(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.m) ; 0 uses
  %i.u = tail call i32 @drop_0xx(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.m) ; 0 uses
  %i.v = tail call i32 @drop_0xx(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.m) ; 0 uses
  %i.w = tail call i32 @drop_0xx(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.m) ; 0 uses
  %i.x = tail call i32 @drop_0xx(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.m) ; 0 uses
  %i.y = tail call i32 @drop_0xx(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.m) ; 0 uses
  %i.z = tail call i32 @drop_0xx(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.m) ; 0 uses
  %i.aa = tail call i32 @drop_0xx(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.m) ; 0 uses
  %i.ab = tail call i32 @drop_0xx(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.m) ; 0 uses
  %i.ac = tail call i32 @drop_0xx(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.m) ; 0 uses
  %i.ad = tail call i32 @drop_0xx(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.m) ; 0 uses
  %i.ae = tail call i32 @drop_0xx(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.m) ; 0 uses
  %i.af = tail call i32 @drop_0xx(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.m) ; 0 uses
  %i.ag = tail call i32 @drop_0xx(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.m)
  %i.ah = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #8 ; 0 uses
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ag) ; 0 uses
  tail call void @exit(i32 noundef 0) #12
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

end_hunk_0
