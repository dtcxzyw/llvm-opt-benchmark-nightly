begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"m101\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Matrox Uncompressed SD\00", align 1
@ff_m101_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 211, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 0, ptr null, ptr null, ptr null, ptr @m101_decode_init, %union.anon { ptr @m101_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Missing or too small extradata (size %d)\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"BPS %d\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"stride (%d) is invalid for packet sized %d\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -1094995529, 1) i32 @m101_decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = icmp slt i32 %i.b, 24
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i32 noundef %i.b) #4
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i8, ptr %i.f, align 1, !tbaa !30    ; 2 uses
  switch i8 %i.g, label %bb.f [
    i8 10, label %bb.d
    i8 8, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 64, ptr %i.h, align 8, !tbaa !31
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 1, ptr %i.i, align 8, !tbaa !31
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.j = zext i8 %i.g to i32
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i32 noundef %i.j) #4
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.b
  %.0 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @m101_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %i.e = shl nsw i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i8, ptr %i.h, align 1, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.k = load i32, ptr %i.j, align 1, !tbaa !30   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = load i32, ptr %i.l, align 8, !tbaa !31
  %i.n = icmp eq i32 %i.m, 64
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = add nsw i32 %i.d, 15
  %i.p = sdiv i32 %i.o, 16
  %i.q = mul nsw i32 %i.p, 40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.092 = phi i32 [ %i.q, %bb.b ], [ %i.e, %bb.a ]
  %i.r = icmp slt i32 %i.k, %.092
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %.pre124 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !35 ; 2 uses
  br i1 %i.r, label %._crit_edge123, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = sext i32 %.pre124 to i64
  %i.t = sext i32 %i.k to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !36
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, %i.s
  br i1 %i.y, label %._crit_edge123, label %bb.e

._crit_edge123:                                   ; preds = %bb.c, %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %i.k, i32 noundef %.pre124) #4
  br label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.z = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #4 ; 2 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !30
  %i.ae = and i8 %i.ad, 3
  %.not = icmp eq i8 %i.ae, 3
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !37 ; 2 uses
  %i.ah = or i32 %i.ag, 8
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !37
  %i.ai = load i8, ptr %i.ac, align 1, !tbaa !30
  %i.aj = and i8 %i.ai, 1
  %.not100 = icmp eq i8 %i.aj, 0
  br i1 %.not100, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = or i32 %i.ag, 24
  store i32 %i.ak, ptr %i.af, align 4, !tbaa !37
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.al = load i32, ptr %i.u, align 4, !tbaa !36  ; 4 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph107, label %._crit_edge

.lr.ph107:                                        ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  %i.ao = icmp eq i8 %i.i, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  br i1 %i.ao, label %.lr.ph107.split.us, label %.lr.ph107.split

.lr.ph107.split.us:                               ; preds = %.lr.ph107, %bb.l
  %i.aq = phi i32 [ %i.bl, %bb.l ], [ %i.al, %.lr.ph107 ]
  %.093106.us = phi i32 [ %i.bk, %bb.l ], [ 0, %.lr.ph107 ] ; 5 uses
  %i.ar = load i32, ptr %i.an, align 4, !tbaa !37 ; 2 uses
  %i.as = and i32 %i.ar, 8
  %.not101.us = icmp eq i32 %i.as, 0
  br i1 %.not101.us, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph107.split.us
  %i.at = lshr i32 %i.ar, 4
  %i.au = xor i32 %i.at, %.093106.us
  %i.av = and i32 %i.au, 1
  %.not102.us = icmp eq i32 %i.av, 0
  %i.aw = lshr i32 %.093106.us, 1                 ; 2 uses
  br i1 %.not102.us, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = sdiv i32 %i.aq, 2
  %i.ay = add nsw i32 %i.ax, %i.aw
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %.lr.ph107.split.us
  %.091.us = phi i32 [ %.093106.us, %.lr.ph107.split.us ], [ %i.ay, %bb.k ], [ %i.aw, %bb.j ]
  %i.az = load ptr, ptr %1, align 8, !tbaa !42
  %i.ba = load i32, ptr %i.ap, align 8, !tbaa !43
  %i.bb = mul nsw i32 %i.ba, %.093106.us
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 %i.bc
  %i.be = mul nsw i32 %.091.us, %i.k
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.b, i64 %i.bf
  %i.bh = load i32, ptr %i.c, align 8, !tbaa !34
  %i.bi = shl nsw i32 %i.bh, 1
  %i.bj = sext i32 %i.bi to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.bg, i64 %i.bj, i1 false)
  %i.bk = add nuw nsw i32 %.093106.us, 1          ; 2 uses
  %i.bl = load i32, ptr %i.u, align 4, !tbaa !36  ; 2 uses
  %i.bm = icmp slt i32 %i.bk, %i.bl
  br i1 %i.bm, label %.lr.ph107.split.us, label %._crit_edge, !llvm.loop !44

.lr.ph107.split:                                  ; preds = %.lr.ph107
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i32, ptr %i.an, align 4, !tbaa !37 ; 2 uses
  %i.br = and i32 %.pre, 8
  %.not101 = icmp eq i32 %i.br, 0
  %i.bs = lshr i32 %.pre, 4
  %i.bt = lshr i32 %i.al, 1
  %i.bu = load ptr, ptr %1, align 8, !tbaa !42
  %i.bv = load i32, ptr %i.ap, align 8, !tbaa !43
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !42
  %i.bx = load i32, ptr %i.bp, align 4, !tbaa !43
  %i.by = load ptr, ptr %i.bo, align 8, !tbaa !42
  %i.bz = load i32, ptr %i.bn, align 8, !tbaa !43
  %i.ca = load i32, ptr %i.c, align 8, !tbaa !34  ; 3 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  %wide.trip.count120 = zext nneg i32 %i.ca to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph107.split, %.loopexit
  %.093106 = phi i32 [ 0, %.lr.ph107.split ], [ %i.ek, %.loopexit ] ; 7 uses
  br i1 %.not101, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = xor i32 %i.bs, %.093106
  %i.cd = and i32 %i.cc, 1
  %.not102 = icmp eq i32 %i.cd, 0
  %i.ce = lshr i32 %.093106, 1
  %i.cf = select i1 %.not102, i32 %i.bt, i32 0
  %spec.select = add nuw nsw i32 %i.ce, %i.cf
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.091 = phi i32 [ %.093106, %bb.m ], [ %spec.select, %bb.n ]
  %i.cg = mul nsw i32 %i.bv, %.093106
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr %i.bu, i64 %i.ch ; 2 uses
  %i.cj = mul nsw i32 %i.bx, %.093106
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds i8, ptr %i.bw, i64 %i.ck
  %i.cm = mul nsw i32 %i.bz, %.093106
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %i.by, i64 %i.cn
  br i1 %i.cb, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.o
  %i.cp = mul nsw i32 %.091, %i.k
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %i.b, i64 %i.cq
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv115 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next116, %.critedge ] ; 2 uses
  %indvars.iv113 = phi i64 [ 0, %.lr.ph ], [ %7, %.critedge ]
  %i.cs = mul nuw nsw i64 %indvars.iv115, 40
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs ; 2 uses
  %4 = and i64 %indvars.iv113, 4294967280
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.u
  %indvars.iv = phi i64 [ 0, %bb.p ], [ %indvars.iv.next, %bb.u ] ; 5 uses
  %i.cu = or disjoint i64 %indvars.iv, %4         ; 4 uses
  %5 = trunc nuw i64 %i.cu to i32
  %6 = icmp sgt i32 %i.ca, %5
  br i1 %6, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.cv = and i64 %indvars.iv, 1
  %.not103 = icmp eq i64 %i.cv, 0
  %i.cw = shl nuw nsw i64 %indvars.iv, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cw ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !30
  %i.cz = zext i8 %i.cy to i16
  %i.da = shl nuw nsw i16 %i.cz, 2                ; 2 uses
  %i.db = lshr i64 %indvars.iv, 1
  %i.dc = and i64 %i.db, 2147483647
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32 ; 3 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !30  ; 2 uses
  br i1 %.not103, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dg = lshr i8 %i.df, 4
  %i.dh = and i8 %i.dg, 3
  %i.di = zext nneg i8 %i.dh to i16
  %i.dj = or disjoint i16 %i.da, %i.di
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.cu
  store i16 %i.dj, ptr %i.dk, align 2, !tbaa !46
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.dl = and i8 %i.df, 3
  %i.dm = zext nneg i8 %i.dl to i16
  %i.dn = or disjoint i16 %i.da, %i.dm
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.cu
  store i16 %i.dn, ptr %i.do, align 2, !tbaa !46
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !30
  %i.dr = zext i8 %i.dq to i16
  %i.ds = shl nuw nsw i16 %i.dr, 2
  %i.dt = load i8, ptr %i.de, align 1, !tbaa !30
  %i.du = lshr i8 %i.dt, 2
  %i.dv = and i8 %i.du, 3
  %i.dw = zext nneg i8 %i.dv to i16
  %i.dx = or disjoint i16 %i.ds, %i.dw
  %i.dy = lshr exact i64 %i.cu, 1
  %i.dz = and i64 %i.dy, 2147483647               ; 2 uses
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.dz
  store i16 %i.dx, ptr %i.ea, align 2, !tbaa !46
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cx, i64 3
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !30
  %i.ed = zext i8 %i.ec to i16
  %i.ee = shl nuw nsw i16 %i.ed, 2
  %i.ef = load i8, ptr %i.de, align 1, !tbaa !30
  %i.eg = lshr i8 %i.ef, 6
  %i.eh = zext nneg i8 %i.eg to i16
  %i.ei = or disjoint i16 %i.ee, %i.eh
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.dz
  store i16 %i.ei, ptr %i.ej, align 2, !tbaa !46
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond112.not, label %.critedge, label %bb.q, !llvm.loop !48

.critedge:                                        ; preds = %bb.u, %bb.q
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %7 = shl nsw i64 %indvars.iv.next116, 4         ; 2 uses
  %8 = icmp samesign ult i64 %7, %wide.trip.count120
  br i1 %8, label %bb.p, label %.loopexit, !llvm.loop !49

.loopexit:                                        ; preds = %.critedge, %bb.o
  %i.ek = add nuw nsw i32 %.093106, 1             ; 2 uses
  %exitcond122.not = icmp eq i32 %i.ek, %i.al
  br i1 %exitcond122.not, label %._crit_edge, label %bb.m, !llvm.loop !44

._crit_edge:                                      ; preds = %.loopexit, %bb.l, %bb.i
  store i32 1, ptr %2, align 4, !tbaa !43
  %i.el = load i32, ptr %.phi.trans.insert, align 8, !tbaa !35
  br label %bb.v

bb.v:                                             ; preds = %bb.e, %._crit_edge, %._crit_edge123
  %.090 = phi i32 [ -1094995529, %._crit_edge123 ], [ %i.el, %._crit_edge ], [ %i.z, %bb.e ]
  ret i32 %.090
}

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 80}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!10, !16, i64 72}
!30 = !{!7, !7, i64 0}
!31 = !{!10, !6, i64 136}
!32 = !{!33, !16, i64 24}
!33 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!34 = !{!10, !6, i64 112}
!35 = !{!33, !6, i64 32}
!36 = !{!10, !6, i64 116}
!37 = !{!38, !6, i64 276}
!38 = !{!"AVFrame", !7, i64 0, !7, i64 64, !39, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !40, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !41, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!39 = !{!"p2 omnipotent char", !28, i64 0}
!40 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!41 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!42 = !{!16, !16, i64 0}
!43 = !{!6, !6, i64 0}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!47, !47, i64 0}
!47 = !{!"short", !7, i64 0}
!48 = distinct !{!48, !45}
!49 = distinct !{!49, !45}
end_hunk_0
