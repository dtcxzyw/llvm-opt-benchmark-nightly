Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/encname?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN14EncodeFileNameC1Ev = unnamed_addr alias void (ptr), ptr @_ZN14EncodeFileNameC2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN14EncodeFileNameC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 1), (4, 24)) %0) unnamed_addr #0 align 2 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !10
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
  %i.a = load i8, ptr %3, align 1, !tbaa !22
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
  %invariant.umin = tail call i64 @llvm.umin.i64(i64 %6, i64 %2) ; 7 uses
  %.pre = load i32, ptr %i.h, align 4, !tbaa !23
  %scevgep = getelementptr i8, ptr %1, i64 1      ; 2 uses
  %i.i = add i64 %invariant.umin, -1              ; 2 uses
  %scevgep135 = getelementptr i8, ptr %5, i64 4   ; 2 uses
  %broadcast.splatinsert154 = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat155 = shufflevector <4 x i32> %broadcast.splatinsert154, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph108, %.critedge2
  %i.j = phi i32 [ %.pre, %.lr.ph108 ], [ %i.p, %.critedge2 ] ; 2 uses
  %.074107 = phi i64 [ 0, %.lr.ph108 ], [ %.5, %.critedge2 ] ; 35 uses
  %.177106 = phi i64 [ %.076, %.lr.ph108 ], [ %.581, %.critedge2 ] ; 3 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %._crit_edge115

._crit_edge115:                                   ; preds = %bb.d
  %.pre116 = load i8, ptr %0, align 8, !tbaa !10
  %i.l = add i32 %i.j, -2
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = add nuw i64 %.177106, 1
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 %.177106
  %i.o = load i8, ptr %i.n, align 1, !tbaa !22    ; 2 uses
  store i8 %i.o, ptr %0, align 8, !tbaa !10
  store i32 8, ptr %i.h, align 4, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge115, %bb.e
  %i.p = phi i32 [ 6, %bb.e ], [ %i.l, %._crit_edge115 ] ; 2 uses
  %i.q = phi i8 [ %i.o, %bb.e ], [ %.pre116, %._crit_edge115 ] ; 2 uses
  %.278 = phi i64 [ %i.m, %bb.e ], [ %.177106, %._crit_edge115 ] ; 17 uses
  %i.r = lshr i8 %i.q, 6
  switch i8 %i.r, label %default.unreachable121 [
    i8 0, label %bb.g
    i8 1, label %bb.i
    i8 2, label %bb.k
    i8 3, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  %.not92 = icmp ult i64 %.278, %4
  br i1 %.not92, label %bb.h, label %.critedge2

bb.h:                                             ; preds = %bb.g
  %i.s = add nuw i64 %.278, 1
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 %.278
  %i.u = load i8, ptr %i.t, align 1, !tbaa !22
  %i.v = zext i8 %i.u to i32
  %i.w = add nuw i64 %.074107, 1
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.074107
  store i32 %i.v, ptr %i.x, align 4, !tbaa !25
  br label %.critedge2

bb.i:                                             ; preds = %bb.f
  %.not91 = icmp ult i64 %.278, %4
  br i1 %.not91, label %bb.j, label %.critedge2

bb.j:                                             ; preds = %bb.i
  %i.y = add nuw i64 %.278, 1
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 %.278
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !22
  %i.ab = zext i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.d, %i.ab
  %i.ad = add nuw i64 %.074107, 1
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.074107
  store i32 %i.ac, ptr %i.ae, align 4, !tbaa !25
  br label %.critedge2

bb.k:                                             ; preds = %bb.f
  %i.af = add i64 %.278, 1                        ; 2 uses
  %.not90 = icmp ult i64 %i.af, %4
  br i1 %.not90, label %bb.l, label %.critedge2

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 %.278
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !22
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 %i.af
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !22
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 8
  %i.an = or disjoint i32 %i.am, %i.ai
  %i.ao = add nuw i64 %.074107, 1
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.074107
  store i32 %i.an, ptr %i.ap, align 4, !tbaa !25
  %i.aq = add i64 %.278, 2
  br label %.critedge2

bb.m:                                             ; preds = %bb.f
  %.not87 = icmp ult i64 %.278, %4
  br i1 %.not87, label %bb.n, label %.critedge2

bb.n:                                             ; preds = %bb.m
  %i.ar = add nuw i64 %.278, 1                    ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 %.278
  %i.at = load i8, ptr %i.as, align 1, !tbaa !22  ; 4 uses
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %.not88 = icmp sgt i8 %i.at, -1
  br i1 %.not88, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not89 = icmp ult i64 %i.ar, %4
  br i1 %.not89, label %bb.p, label %.critedge2

bb.p:                                             ; preds = %bb.o
  %i.av = add nuw i64 %.278, 2                    ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 %i.ar
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !22  ; 2 uses
  %i.ay = icmp ult i64 %.074107, %invariant.umin
  br i1 %i.ay, label %.lr.ph.preheader, label %.critedge2

.lr.ph.preheader:                                 ; preds = %bb.p
  %i.az = and i32 %i.au, 127
  %i.ba = add nuw nsw i32 %i.az, 2                ; 3 uses
  %i.bb = xor i64 %.074107, -1
  %i.bc = add i64 %invariant.umin, %i.bb
  %i.bd = and i8 %i.at, 127
  %narrow = add nuw i8 %i.bd, 1
  %i.be = zext i8 %narrow to i64                  ; 2 uses
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.be) ; 2 uses
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check147 = icmp samesign ult i64 %i.bf, 7
  br i1 %min.iters.check147, label %.lr.ph.preheader167, label %vector.memcheck148

vector.memcheck148:                               ; preds = %.lr.ph.preheader
  %i.bh = shl i64 %.074107, 2
  %i.bi = getelementptr i8, ptr %5, i64 %i.bh
  %i.bj = sub i64 %i.i, %.074107
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.be) ; 2 uses
  %i.bl = add i64 %.074107, %i.bk
  %i.bm = shl i64 %i.bl, 2
  %i.bn = getelementptr i8, ptr %scevgep135, i64 %i.bm
  %i.bo = getelementptr i8, ptr %1, i64 %.074107
  %i.bp = getelementptr i8, ptr %scevgep, i64 %.074107
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.bk
  %bound0149 = icmp ult ptr %i.bi, %i.bq
  %bound1150 = icmp ult ptr %i.bo, %i.bn
  %found.conflict151 = and i1 %bound0149, %bound1150
  br i1 %found.conflict151, label %.lr.ph.preheader167, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck148
  %n.vec153 = and i64 %i.bg, 504                  ; 4 uses
  %i.br = trunc nuw nsw i64 %n.vec153 to i32
  %i.bs = sub nsw i32 %i.ba, %i.br
  %i.bt = add i64 %.074107, %n.vec153             ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.ax, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph152
  %index157 = phi i64 [ 0, %vector.ph152 ], [ %index.next160, %vector.body156 ] ; 2 uses
  %i.bu = add nuw i64 %.074107, %index157         ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %wide.load158 = load <4 x i8>, ptr %i.bv, align 1, !tbaa !22, !alias.scope !26
  %wide.load159 = load <4 x i8>, ptr %i.bw, align 1, !tbaa !22, !alias.scope !26
  %i.bx = add <4 x i8> %wide.load158, %broadcast.splat
  %i.by = add <4 x i8> %wide.load159, %broadcast.splat
  %i.bz = zext <4 x i8> %i.bx to <4 x i32>
  %i.ca = zext <4 x i8> %i.by to <4 x i32>
  %i.cb = or disjoint <4 x i32> %broadcast.splat155, %i.bz
  %i.cc = or disjoint <4 x i32> %broadcast.splat155, %i.ca
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bu ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <4 x i32> %i.cb, ptr %i.cd, align 4, !tbaa !25, !alias.scope !27, !noalias !26
  store <4 x i32> %i.cc, ptr %i.ce, align 4, !tbaa !25, !alias.scope !27, !noalias !26
  %index.next160 = add nuw i64 %index157, 8       ; 2 uses
  %i.cf = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.cf, label %middle.block161, label %vector.body156, !llvm.loop !14

middle.block161:                                  ; preds = %vector.body156
  %cmp.n162 = icmp eq i64 %i.bg, %n.vec153
  br i1 %cmp.n162, label %.critedge2, label %.lr.ph.preheader167

.lr.ph.preheader167:                              ; preds = %vector.memcheck148, %.lr.ph.preheader, %middle.block161
  %.0100.ph = phi i32 [ %i.ba, %vector.memcheck148 ], [ %i.ba, %.lr.ph.preheader ], [ %i.bs, %middle.block161 ]
  %.17599.ph = phi i64 [ %.074107, %vector.memcheck148 ], [ %.074107, %.lr.ph.preheader ], [ %i.bt, %middle.block161 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader167, %.lr.ph
  %.0100 = phi i32 [ %i.cl, %.lr.ph ], [ %.0100.ph, %.lr.ph.preheader167 ] ; 2 uses
  %.17599 = phi i64 [ %i.cm, %.lr.ph ], [ %.17599.ph, %.lr.ph.preheader167 ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %.17599
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !22
  %.narrow = add i8 %i.ch, %i.ax
  %i.ci = zext i8 %.narrow to i32
  %i.cj = or disjoint i32 %i.d, %i.ci
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.17599
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !25
  %i.cl = add nsw i32 %.0100, -1
  %i.cm = add nuw i64 %.17599, 1                  ; 3 uses
  %i.cn = icmp samesign ugt i32 %.0100, 1
  %i.co = icmp ult i64 %i.cm, %invariant.umin
  %or.cond93 = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %or.cond93, label %.lr.ph, label %.critedge2, !llvm.loop !15

bb.q:                                             ; preds = %bb.n
  %i.cp = icmp ult i64 %.074107, %invariant.umin
  br i1 %i.cp, label %.lr.ph104.preheader, label %.critedge2

.lr.ph104.preheader:                              ; preds = %bb.q
  %i.cq = add nuw nsw i32 %i.au, 2                ; 3 uses
  %i.cr = xor i64 %.074107, -1
  %i.cs = add i64 %invariant.umin, %i.cr
  %narrow165 = add nuw i8 %i.at, 1
  %i.ct = zext i8 %narrow165 to i64               ; 2 uses
  %i.cu = tail call i64 @llvm.umin.i64(i64 %i.cs, i64 %i.ct) ; 2 uses
  %i.cv = add nuw nsw i64 %i.cu, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.cu, 7
  br i1 %min.iters.check, label %.lr.ph104.preheader166, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph104.preheader
  %i.cw = shl i64 %.074107, 2
  %i.cx = getelementptr i8, ptr %5, i64 %i.cw
  %i.cy = sub i64 %i.i, %.074107
  %i.cz = tail call i64 @llvm.umin.i64(i64 %i.cy, i64 %i.ct) ; 2 uses
  %i.da = add i64 %.074107, %i.cz
  %i.db = shl i64 %i.da, 2
  %i.dc = getelementptr i8, ptr %scevgep135, i64 %i.db
  %i.dd = getelementptr i8, ptr %1, i64 %.074107
  %i.de = getelementptr i8, ptr %scevgep, i64 %.074107
  %i.df = getelementptr i8, ptr %i.de, i64 %i.cz
  %bound0 = icmp ult ptr %i.cx, %i.df
  %bound1 = icmp ult ptr %i.dd, %i.dc
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph104.preheader166, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cv, 504                     ; 4 uses
  %i.dg = trunc nuw nsw i64 %n.vec to i32
  %i.dh = sub nsw i32 %i.cq, %i.dg
  %i.di = add i64 %.074107, %n.vec                ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = add nuw i64 %.074107, %index            ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 %i.dj ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %wide.load = load <4 x i8>, ptr %i.dk, align 1, !tbaa !22, !alias.scope !31
  %wide.load135 = load <4 x i8>, ptr %i.dl, align 1, !tbaa !22, !alias.scope !31
  %i.dm = sext <4 x i8> %wide.load to <4 x i32>
  %i.dn = sext <4 x i8> %wide.load135 to <4 x i32>
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.dj ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <4 x i32> %i.dm, ptr %i.do, align 4, !tbaa !25, !alias.scope !32, !noalias !31
  store <4 x i32> %i.dn, ptr %i.dp, align 4, !tbaa !25, !alias.scope !32, !noalias !31
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cv, %n.vec
  br i1 %cmp.n, label %.critedge2, label %.lr.ph104.preheader166

.lr.ph104.preheader166:                           ; preds = %vector.memcheck, %.lr.ph104.preheader, %middle.block
  %.1103.ph = phi i32 [ %i.cq, %vector.memcheck ], [ %i.cq, %.lr.ph104.preheader ], [ %i.dh, %middle.block ]
  %.2102.ph = phi i64 [ %.074107, %vector.memcheck ], [ %.074107, %.lr.ph104.preheader ], [ %i.di, %middle.block ]
  br label %.lr.ph104

.lr.ph104:                                        ; preds = %.lr.ph104.preheader166, %.lr.ph104
  %.1103 = phi i32 [ %i.dv, %.lr.ph104 ], [ %.1103.ph, %.lr.ph104.preheader166 ] ; 2 uses
  %.2102 = phi i64 [ %i.dw, %.lr.ph104 ], [ %.2102.ph, %.lr.ph104.preheader166 ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 %.2102
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !22
  %i.dt = sext i8 %i.ds to i32
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.2102
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !25
  %i.dv = add nsw i32 %.1103, -1
  %i.dw = add nuw i64 %.2102, 1                   ; 3 uses
  %i.dx = icmp samesign ugt i32 %.1103, 1
  %i.dy = icmp ult i64 %i.dw, %invariant.umin
  %or.cond95 = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %or.cond95, label %.lr.ph104, label %.critedge2, !llvm.loop !20

default.unreachable121:                           ; preds = %bb.f
  unreachable

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph104, %middle.block161, %middle.block, %bb.p, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.l, %bb.j, %bb.h
  %.581 = phi i64 [ %.278, %bb.g ], [ %i.s, %bb.h ], [ %.278, %bb.i ], [ %i.y, %bb.j ], [ %.278, %bb.k ], [ %i.aq, %bb.l ], [ %.278, %bb.m ], [ %i.ar, %bb.o ], [ %i.ar, %bb.q ], [ %i.av, %bb.p ], [ %i.ar, %middle.block ], [ %i.av, %middle.block161 ], [ %i.ar, %.lr.ph104 ], [ %i.av, %.lr.ph ] ; 2 uses
  %.5 = phi i64 [ %.074107, %bb.g ], [ %i.w, %bb.h ], [ %.074107, %bb.i ], [ %i.ad, %bb.j ], [ %.074107, %bb.k ], [ %i.ao, %bb.l ], [ %.074107, %bb.m ], [ %.074107, %bb.o ], [ %.074107, %bb.q ], [ %.074107, %bb.p ], [ %i.di, %middle.block ], [ %i.bt, %middle.block161 ], [ %i.dw, %.lr.ph104 ], [ %i.cm, %.lr.ph ] ; 3 uses
  %i.dz = shl i8 %i.q, 2
  store i8 %i.dz, ptr %0, align 8, !tbaa !10
  store i32 %i.p, ptr %i.h, align 4, !tbaa !23
  %i.ea = icmp ult i64 %.581, %4
  %i.eb = icmp ult i64 %.5, %6                    ; 2 uses
  %i.ec = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %i.ec, label %bb.d, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %.critedge2, %bb.c
  %.074.lcssa = phi i64 [ 0, %bb.c ], [ %.5, %.critedge2 ]
  %.lcssa = phi i1 [ %i.f, %bb.c ], [ %i.eb, %.critedge2 ]
  %i.ed = add i64 %6, -1
  %i.ee = select i1 %.lcssa, i64 %.074.lcssa, i64 %i.ed
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ee
  store i32 0, ptr %i.ef, align 4, !tbaa !25
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
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!"_ZTS14EncodeFileName", !4, i64 0, !5, i64 4, !8, i64 8, !8, i64 16}
!10 = !{!9, !4, i64 0}
!11 = distinct !{!11, i1 false, !"LVerDomain"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !28, !29, !30}
!15 = distinct !{!15, !28, !29}
!16 = distinct !{!16, i1 false, !"LVerDomain"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !28, !29, !30}
!20 = distinct !{!20, !28, !29}
!21 = distinct !{!21, !28}
!22 = !{!4, !4, i64 0}
!23 = !{!9, !5, i64 4}
!24 = !{!"wchar_t", !4, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!12}
!27 = !{!13}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = !{!17}
!32 = !{!18}
end_hunk_0
