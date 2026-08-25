Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/encname?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN14EncodeFileNameC1Ev = unnamed_addr alias void (ptr), ptr @_ZN14EncodeFileNameC2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN14EncodeFileNameC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 1), (4, 24)) %0) unnamed_addr #0 align 2 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN14EncodeFileName6DecodeEPcmPhmPwm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef writeonly captures(none) %5, i64 noundef %6) local_unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %3, align 1, !tbaa !11
  %i.b = zext i8 %i.a to i32
  %i.c = shl nuw nsw i32 %i.b, 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.076 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]      ; 2 uses
  %i.d = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.e = icmp ult i64 %.076, %4
  %i.f = icmp ne i64 %6, 0                        ; 2 uses
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %.lr.ph108, label %._crit_edge

.lr.ph108:                                        ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %invariant.umin = tail call i64 @llvm.umin.i64(i64 %6, i64 %2) ; 8 uses
  %.promoted = load i32, ptr %i.h, align 4, !tbaa !12
  %.promoted111 = load i8, ptr %0, align 8, !tbaa !8
  %scevgep129 = getelementptr i8, ptr %5, i64 4
  %scevgep132.a = getelementptr i8, ptr %1, i64 1
  %scevgep138.a = getelementptr i8, ptr %5, i64 4
  %scevgep142.a = getelementptr i8, ptr %1, i64 1
  %broadcast.splatinsert151 = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat152 = shufflevector <4 x i32> %broadcast.splatinsert151, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph108, %.critedge2
  %7 = phi i8 [ %.promoted111, %.lr.ph108 ], [ %i.dq, %.critedge2 ]
  %i.i = phi i32 [ %.promoted, %.lr.ph108 ], [ %10, %.critedge2 ] ; 2 uses
  %.074107 = phi i64 [ 0, %.lr.ph108 ], [ %.5, %.critedge2 ] ; 35 uses
  %.177106 = phi i64 [ %.076, %.lr.ph108 ], [ %.581, %.critedge2 ] ; 3 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw i64 %.177106, 1
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 %.177106
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11    ; 2 uses
  store i8 %i.m, ptr %0, align 8, !tbaa !8
  store i32 8, ptr %i.h, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %8 = phi i8 [ %i.m, %bb.e ], [ %7, %bb.d ]      ; 2 uses
  %9 = phi i32 [ 8, %bb.e ], [ %i.i, %bb.d ]
  %.278 = phi i64 [ %i.k, %bb.e ], [ %.177106, %bb.d ] ; 17 uses
  %i.n = lshr i8 %8, 6
  switch i8 %i.n, label %default.unreachable120 [
    i8 0, label %bb.g
    i8 1, label %bb.i
    i8 2, label %bb.k
    i8 3, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  %.not92 = icmp ult i64 %.278, %4
  br i1 %.not92, label %bb.h, label %.critedge2

bb.h:                                             ; preds = %bb.g
  %i.o = add nuw i64 %.278, 1
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %.278
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11
  %i.r = zext i8 %i.q to i32
  %i.s = add nuw i64 %.074107, 1
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.074107
  store i32 %i.r, ptr %i.t, align 4, !tbaa !13
  br label %.critedge2

bb.i:                                             ; preds = %bb.f
  %.not91 = icmp ult i64 %.278, %4
  br i1 %.not91, label %bb.j, label %.critedge2

bb.j:                                             ; preds = %bb.i
  %i.u = add nuw i64 %.278, 1
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 %.278
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11
  %i.x = zext i8 %i.w to i32
  %i.y = or disjoint i32 %i.d, %i.x
  %i.z = add nuw i64 %.074107, 1
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.074107
  store i32 %i.y, ptr %i.aa, align 4, !tbaa !13
  br label %.critedge2

bb.k:                                             ; preds = %bb.f
  %i.ab = add i64 %.278, 1                        ; 2 uses
  %.not90 = icmp ult i64 %i.ab, %4
  br i1 %.not90, label %bb.l, label %.critedge2

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %.278
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !11
  %i.ae = zext i8 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %i.ab
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !11
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 8
  %i.aj = or disjoint i32 %i.ai, %i.ae
  %i.ak = add nuw i64 %.074107, 1
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.074107
  store i32 %i.aj, ptr %i.al, align 4, !tbaa !13
  %i.am = add i64 %.278, 2
  br label %.critedge2

bb.m:                                             ; preds = %bb.f
  %.not87 = icmp ult i64 %.278, %4
  br i1 %.not87, label %bb.n, label %.critedge2

bb.n:                                             ; preds = %bb.m
  %i.an = add nuw i64 %.278, 1                    ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 %.278
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !11  ; 6 uses
  %i.aq = zext i8 %i.ap to i32                    ; 2 uses
  %.not88 = icmp sgt i8 %i.ap, -1
  br i1 %.not88, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not89 = icmp ult i64 %i.an, %4
  br i1 %.not89, label %bb.p, label %.critedge2

bb.p:                                             ; preds = %bb.o
  %i.ar = add nuw i64 %.278, 2                    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 %i.an
  %i.at = load i8, ptr %i.as, align 1, !tbaa !11  ; 2 uses
  %i.au = icmp ult i64 %.074107, %invariant.umin
  br i1 %i.au, label %.lr.ph.preheader, label %.critedge2

.lr.ph.preheader:                                 ; preds = %bb.p
  %i.av = and i32 %i.aq, 127
  %i.aw = add nuw nsw i32 %i.av, 2                ; 3 uses
  %i.ax = xor i64 %.074107, -1
  %i.ay = add i64 %invariant.umin, %i.ax
  %i.az = and i8 %i.ap, 127
  %narrow = add nuw i8 %i.az, 1
  %i.ba = zext i8 %narrow to i64
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.ba) ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check148 = icmp samesign ult i64 %i.bb, 7
  br i1 %min.iters.check148, label %.lr.ph.preheader166, label %vector.memcheck136

vector.memcheck136:                               ; preds = %.lr.ph.preheader
  %i.bd = shl i64 %.074107, 2
  %scevgep137 = getelementptr i8, ptr %5, i64 %i.bd
  %i.be = xor i64 %.074107, -1
  %i.bf = add i64 %invariant.umin, %i.be
  %i.bg = and i8 %i.ap, 127
  %narrow162 = add nuw i8 %i.bg, 1
  %i.bh = zext i8 %narrow162 to i64
  %umin139 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bh) ; 2 uses
  %i.bi = add i64 %.074107, %umin139
  %i.bj = shl i64 %i.bi, 2
  %scevgep140 = getelementptr i8, ptr %scevgep138.a, i64 %i.bj
  %scevgep141 = getelementptr i8, ptr %1, i64 %.074107
  %i.bk = getelementptr i8, ptr %scevgep142.a, i64 %.074107
  %scevgep143 = getelementptr i8, ptr %i.bk, i64 %umin139
  %bound0144 = icmp ult ptr %scevgep137, %scevgep143
  %bound1145 = icmp ult ptr %scevgep141, %scevgep140
  %found.conflict146 = and i1 %bound0144, %bound1145
  br i1 %found.conflict146, label %.lr.ph.preheader166, label %vector.ph149

vector.ph149:                                     ; preds = %vector.memcheck136
  %n.vec150 = and i64 %i.bc, 504                  ; 4 uses
  %i.bl = trunc nuw nsw i64 %n.vec150 to i32
  %i.bm = sub nsw i32 %i.aw, %i.bl
  %i.bn = add i64 %.074107, %n.vec150             ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.at, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph149
  %index154 = phi i64 [ 0, %vector.ph149 ], [ %index.next157, %vector.body153 ] ; 2 uses
  %i.bo = add nuw i64 %.074107, %index154         ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %wide.load155 = load <4 x i8>, ptr %i.bp, align 1, !tbaa !11, !alias.scope !15
  %wide.load156 = load <4 x i8>, ptr %i.bq, align 1, !tbaa !11, !alias.scope !15
  %i.br = add <4 x i8> %wide.load155, %broadcast.splat
  %i.bs = add <4 x i8> %wide.load156, %broadcast.splat
  %i.bt = zext <4 x i8> %i.br to <4 x i32>
  %i.bu = zext <4 x i8> %i.bs to <4 x i32>
  %i.bv = or disjoint <4 x i32> %broadcast.splat152, %i.bt
  %i.bw = or disjoint <4 x i32> %broadcast.splat152, %i.bu
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bo ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <4 x i32> %i.bv, ptr %i.bx, align 4, !tbaa !13, !alias.scope !18, !noalias !15
  store <4 x i32> %i.bw, ptr %i.by, align 4, !tbaa !13, !alias.scope !18, !noalias !15
  %index.next157 = add nuw i64 %index154, 8       ; 2 uses
  %i.bz = icmp eq i64 %index.next157, %n.vec150
  br i1 %i.bz, label %middle.block158, label %vector.body153, !llvm.loop !20

middle.block158:                                  ; preds = %vector.body153
  %cmp.n159 = icmp eq i64 %i.bc, %n.vec150
  br i1 %cmp.n159, label %.critedge2, label %.lr.ph.preheader166

.lr.ph.preheader166:                              ; preds = %vector.memcheck136, %.lr.ph.preheader, %middle.block158
  %.0100.ph = phi i32 [ %i.aw, %vector.memcheck136 ], [ %i.aw, %.lr.ph.preheader ], [ %i.bm, %middle.block158 ]
  %.17599.ph = phi i64 [ %.074107, %vector.memcheck136 ], [ %.074107, %.lr.ph.preheader ], [ %i.bn, %middle.block158 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader166, %.lr.ph
  %.0100 = phi i32 [ %i.cf, %.lr.ph ], [ %.0100.ph, %.lr.ph.preheader166 ] ; 2 uses
  %.17599 = phi i64 [ %i.cg, %.lr.ph ], [ %.17599.ph, %.lr.ph.preheader166 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %.17599
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !11
  %.narrow = add i8 %i.cb, %i.at
  %i.cc = zext i8 %.narrow to i32
  %i.cd = or disjoint i32 %i.d, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.17599
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !13
  %i.cf = add nsw i32 %.0100, -1
  %i.cg = add nuw i64 %.17599, 1                  ; 3 uses
  %i.ch = icmp samesign ugt i32 %.0100, 1
  %i.ci = icmp ult i64 %i.cg, %invariant.umin
  %or.cond93 = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond93, label %.lr.ph, label %.critedge2, !llvm.loop !24

bb.q:                                             ; preds = %bb.n
  %i.cj = icmp ult i64 %.074107, %invariant.umin
  br i1 %i.cj, label %.lr.ph104.preheader, label %.critedge2

.lr.ph104.preheader:                              ; preds = %bb.q
  %i.ck = add nuw nsw i32 %i.aq, 2                ; 3 uses
  %i.cl = xor i64 %.074107, -1
  %i.cm = add i64 %invariant.umin, %i.cl
  %narrow163 = add nuw i8 %i.ap, 1
  %i.cn = zext i8 %narrow163 to i64
  %i.co = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 %i.cn) ; 2 uses
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.co, 7
  br i1 %min.iters.check, label %.lr.ph104.preheader165, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph104.preheader
  %i.cq = shl i64 %.074107, 2
  %scevgep = getelementptr i8, ptr %5, i64 %i.cq
  %i.cr = xor i64 %.074107, -1
  %i.cs = add i64 %invariant.umin, %i.cr
  %narrow164 = add nuw i8 %i.ap, 1
  %i.ct = zext i8 %narrow164 to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %i.cs, i64 %i.ct) ; 2 uses
  %i.cu = add i64 %.074107, %umin
  %i.cv = shl i64 %i.cu, 2
  %scevgep130 = getelementptr i8, ptr %scevgep129, i64 %i.cv
  %scevgep131 = getelementptr i8, ptr %1, i64 %.074107
  %i.cw = getelementptr i8, ptr %scevgep132.a, i64 %.074107
  %scevgep133 = getelementptr i8, ptr %i.cw, i64 %umin
  %bound0 = icmp ult ptr %scevgep, %scevgep133
  %bound1 = icmp ult ptr %scevgep131, %scevgep130
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph104.preheader165, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cp, 504                     ; 4 uses
  %i.cx = trunc nuw nsw i64 %n.vec to i32
  %i.cy = sub nsw i32 %i.ck, %i.cx
  %i.cz = add i64 %.074107, %n.vec                ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.da = add nuw i64 %.074107, %index            ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %wide.load = load <4 x i8>, ptr %i.db, align 1, !tbaa !11, !alias.scope !25
  %wide.load134 = load <4 x i8>, ptr %i.dc, align 1, !tbaa !11, !alias.scope !25
  %i.dd = sext <4 x i8> %wide.load to <4 x i32>
  %i.de = sext <4 x i8> %wide.load134 to <4 x i32>
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.da ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <4 x i32> %i.dd, ptr %i.df, align 4, !tbaa !13, !alias.scope !28, !noalias !25
  store <4 x i32> %i.de, ptr %i.dg, align 4, !tbaa !13, !alias.scope !28, !noalias !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cp, %n.vec
  br i1 %cmp.n, label %.critedge2, label %.lr.ph104.preheader165

.lr.ph104.preheader165:                           ; preds = %vector.memcheck, %.lr.ph104.preheader, %middle.block
  %.1103.ph = phi i32 [ %i.ck, %vector.memcheck ], [ %i.ck, %.lr.ph104.preheader ], [ %i.cy, %middle.block ]
  %.2102.ph = phi i64 [ %.074107, %vector.memcheck ], [ %.074107, %.lr.ph104.preheader ], [ %i.cz, %middle.block ]
  br label %.lr.ph104

.lr.ph104:                                        ; preds = %.lr.ph104.preheader165, %.lr.ph104
  %.1103 = phi i32 [ %i.dm, %.lr.ph104 ], [ %.1103.ph, %.lr.ph104.preheader165 ] ; 2 uses
  %.2102 = phi i64 [ %i.dn, %.lr.ph104 ], [ %.2102.ph, %.lr.ph104.preheader165 ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %.2102
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !11
  %i.dk = sext i8 %i.dj to i32
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.2102
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !13
  %i.dm = add nsw i32 %.1103, -1
  %i.dn = add nuw i64 %.2102, 1                   ; 3 uses
  %i.do = icmp samesign ugt i32 %.1103, 1
  %i.dp = icmp ult i64 %i.dn, %invariant.umin
  %or.cond95 = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %or.cond95, label %.lr.ph104, label %.critedge2, !llvm.loop !31

default.unreachable120:                           ; preds = %bb.f
  unreachable

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph104, %middle.block158, %middle.block, %bb.p, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.l, %bb.j, %bb.h
  %.581 = phi i64 [ %.278, %bb.g ], [ %i.o, %bb.h ], [ %.278, %bb.i ], [ %i.u, %bb.j ], [ %.278, %bb.k ], [ %i.am, %bb.l ], [ %.278, %bb.m ], [ %i.an, %bb.o ], [ %i.an, %bb.q ], [ %i.ar, %bb.p ], [ %i.an, %middle.block ], [ %i.ar, %middle.block158 ], [ %i.an, %.lr.ph104 ], [ %i.ar, %.lr.ph ] ; 2 uses
  %.5 = phi i64 [ %.074107, %bb.g ], [ %i.s, %bb.h ], [ %.074107, %bb.i ], [ %i.z, %bb.j ], [ %.074107, %bb.k ], [ %i.ak, %bb.l ], [ %.074107, %bb.m ], [ %.074107, %bb.o ], [ %.074107, %bb.q ], [ %.074107, %bb.p ], [ %i.cz, %middle.block ], [ %i.bn, %middle.block158 ], [ %i.dn, %.lr.ph104 ], [ %i.cg, %.lr.ph ] ; 3 uses
  %i.dq = shl i8 %8, 2                            ; 2 uses
  store i8 %i.dq, ptr %0, align 8, !tbaa !8
  %10 = add i32 %9, -2                            ; 2 uses
  store i32 %10, ptr %i.h, align 4, !tbaa !12
  %i.dr = icmp ult i64 %.581, %4
  %i.ds = icmp ult i64 %.5, %6                    ; 2 uses
  %i.dt = select i1 %i.dr, i1 %i.ds, i1 false
  br i1 %i.dt, label %bb.d, label %._crit_edge, !llvm.loop !32

._crit_edge:                                      ; preds = %.critedge2, %bb.c
  %.074.lcssa = phi i64 [ 0, %bb.c ], [ %.5, %.critedge2 ]
  %.lcssa = phi i1 [ %i.f, %bb.c ], [ %i.ds, %.critedge2 ]
  %i.du = add i64 %6, -1
  %i.dv = select i1 %.lcssa, i64 %.074.lcssa, i64 %i.du
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.dv
  store i32 0, ptr %i.dw, align 4, !tbaa !13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !6, i64 0}
!9 = !{!"_ZTS14EncodeFileName", !6, i64 0, !5, i64 4, !10, i64 8, !10, i64 16}
!10 = !{!"long", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!9, !5, i64 4}
!13 = !{!14, !14, i64 0}
!14 = !{!"wchar_t", !6, i64 0}
!15 = !{!16}
!16 = distinct !{!16, !17}
!17 = distinct !{!17, !"LVerDomain"}
!18 = !{!19}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !21, !22, !23}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !21, !22}
!25 = !{!26}
!26 = distinct !{!26, !27}
!27 = distinct !{!27, !"LVerDomain"}
!28 = !{!29}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !21, !22, !23}
!31 = distinct !{!31, !21, !22}
!32 = distinct !{!32, !21}
end_hunk_0
