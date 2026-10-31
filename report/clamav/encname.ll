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
  %invariant.umin = tail call i64 @llvm.umin.i64(i64 %6, i64 %2) ; 8 uses
  %.pre = load i32, ptr %i.h, align 4, !tbaa !23
  %scevgep130 = getelementptr i8, ptr %5, i64 4
  %scevgep133 = getelementptr i8, ptr %1, i64 1
  %scevgep139 = getelementptr i8, ptr %5, i64 4
  %scevgep143 = getelementptr i8, ptr %1, i64 1
  %broadcast.splatinsert152 = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat153 = shufflevector <4 x i32> %broadcast.splatinsert152, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph108, %.critedge2
  %i.i = phi i32 [ %.pre, %.lr.ph108 ], [ %i.o, %.critedge2 ] ; 2 uses
  %.074107 = phi i64 [ 0, %.lr.ph108 ], [ %.5, %.critedge2 ] ; 35 uses
  %.177106 = phi i64 [ %.076, %.lr.ph108 ], [ %.581, %.critedge2 ] ; 3 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %._crit_edge115

._crit_edge115:                                   ; preds = %bb.d
  %.pre116 = load i8, ptr %0, align 8, !tbaa !10
  %i.k = add i32 %i.i, -2
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = add nuw i64 %.177106, 1
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 %.177106
  %i.n = load i8, ptr %i.m, align 1, !tbaa !22    ; 2 uses
  store i8 %i.n, ptr %0, align 8, !tbaa !10
  store i32 8, ptr %i.h, align 4, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge115, %bb.e
  %i.o = phi i32 [ 6, %bb.e ], [ %i.k, %._crit_edge115 ] ; 2 uses
  %i.p = phi i8 [ %i.n, %bb.e ], [ %.pre116, %._crit_edge115 ] ; 2 uses
  %.278 = phi i64 [ %i.l, %bb.e ], [ %.177106, %._crit_edge115 ] ; 17 uses
  %i.q = lshr i8 %i.p, 6
  switch i8 %i.q, label %default.unreachable121 [
    i8 0, label %bb.g
    i8 1, label %bb.i
    i8 2, label %bb.k
    i8 3, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  %.not92 = icmp ult i64 %.278, %4
  br i1 %.not92, label %bb.h, label %.critedge2

bb.h:                                             ; preds = %bb.g
  %i.r = add nuw i64 %.278, 1
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 %.278
  %i.t = load i8, ptr %i.s, align 1, !tbaa !22
  %i.u = zext i8 %i.t to i32
  %i.v = add nuw i64 %.074107, 1
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.074107
  store i32 %i.u, ptr %i.w, align 4, !tbaa !25
  br label %.critedge2

bb.i:                                             ; preds = %bb.f
  %.not91 = icmp ult i64 %.278, %4
  br i1 %.not91, label %bb.j, label %.critedge2

bb.j:                                             ; preds = %bb.i
  %i.x = add nuw i64 %.278, 1
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %.278
  %i.z = load i8, ptr %i.y, align 1, !tbaa !22
  %i.aa = zext i8 %i.z to i32
  %i.ab = or disjoint i32 %i.d, %i.aa
  %i.ac = add nuw i64 %.074107, 1
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.074107
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !25
  br label %.critedge2

bb.k:                                             ; preds = %bb.f
  %i.ae = add i64 %.278, 1                        ; 2 uses
  %.not90 = icmp ult i64 %i.ae, %4
  br i1 %.not90, label %bb.l, label %.critedge2

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %.278
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !22
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 %i.ae
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !22
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 8
  %i.am = or disjoint i32 %i.al, %i.ah
  %i.an = add nuw i64 %.074107, 1
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.074107
  store i32 %i.am, ptr %i.ao, align 4, !tbaa !25
  %i.ap = add i64 %.278, 2
  br label %.critedge2

bb.m:                                             ; preds = %bb.f
  %.not87 = icmp ult i64 %.278, %4
  br i1 %.not87, label %bb.n, label %.critedge2

bb.n:                                             ; preds = %bb.m
  %i.aq = add nuw i64 %.278, 1                    ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 %.278
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !22  ; 6 uses
  %i.at = zext i8 %i.as to i32                    ; 2 uses
  %.not88 = icmp sgt i8 %i.as, -1
  br i1 %.not88, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not89 = icmp ult i64 %i.aq, %4
  br i1 %.not89, label %bb.p, label %.critedge2

bb.p:                                             ; preds = %bb.o
  %i.au = add nuw i64 %.278, 2                    ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 %i.aq
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !22  ; 2 uses
  %i.ax = icmp ult i64 %.074107, %invariant.umin
  br i1 %i.ax, label %.lr.ph.preheader, label %.critedge2

.lr.ph.preheader:                                 ; preds = %bb.p
  %i.ay = and i32 %i.at, 127
  %i.az = add nuw nsw i32 %i.ay, 2                ; 3 uses
  %i.ba = xor i64 %.074107, -1
  %i.bb = add i64 %invariant.umin, %i.ba
  %i.bc = and i8 %i.as, 127
  %narrow = add nuw i8 %i.bc, 1
  %i.bd = zext i8 %narrow to i64
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 %i.bd) ; 2 uses
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check149 = icmp samesign ult i64 %i.be, 7
  br i1 %min.iters.check149, label %.lr.ph.preheader167, label %vector.memcheck137

vector.memcheck137:                               ; preds = %.lr.ph.preheader
  %i.bg = shl i64 %.074107, 2
  %scevgep138 = getelementptr i8, ptr %5, i64 %i.bg
  %7 = xor i64 %.074107, -1
  %i.bh = add i64 %invariant.umin, %7
  %8 = and i8 %i.as, 127
  %narrow163 = add nuw i8 %8, 1
  %9 = zext i8 %narrow163 to i64
  %umin140 = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 %9) ; 2 uses
  %10 = add i64 %.074107, %umin140
  %11 = shl i64 %10, 2
  %scevgep141 = getelementptr i8, ptr %scevgep139, i64 %11
  %scevgep142 = getelementptr i8, ptr %1, i64 %.074107
  %i.bi = getelementptr i8, ptr %scevgep143, i64 %.074107
  %scevgep144 = getelementptr i8, ptr %i.bi, i64 %umin140
  %bound0145 = icmp ult ptr %scevgep138, %scevgep144
  %bound1146 = icmp ult ptr %scevgep142, %scevgep141
  %found.conflict147 = and i1 %bound0145, %bound1146
  br i1 %found.conflict147, label %.lr.ph.preheader167, label %vector.ph150

vector.ph150:                                     ; preds = %vector.memcheck137
  %n.vec151 = and i64 %i.bf, 504                  ; 4 uses
  %i.bj = trunc nuw nsw i64 %n.vec151 to i32
  %i.bk = sub nsw i32 %i.az, %i.bj
  %i.bl = add i64 %.074107, %n.vec151             ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.aw, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph150
  %index155 = phi i64 [ 0, %vector.ph150 ], [ %index.next158, %vector.body154 ] ; 2 uses
  %i.bm = add nuw i64 %.074107, %index155         ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %wide.load156 = load <4 x i8>, ptr %i.bn, align 1, !tbaa !22, !alias.scope !26
  %wide.load157 = load <4 x i8>, ptr %i.bo, align 1, !tbaa !22, !alias.scope !26
  %i.bp = add <4 x i8> %wide.load156, %broadcast.splat
  %i.bq = add <4 x i8> %wide.load157, %broadcast.splat
  %i.br = zext <4 x i8> %i.bp to <4 x i32>
  %i.bs = zext <4 x i8> %i.bq to <4 x i32>
  %i.bt = or disjoint <4 x i32> %broadcast.splat153, %i.br
  %i.bu = or disjoint <4 x i32> %broadcast.splat153, %i.bs
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bm ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <4 x i32> %i.bt, ptr %i.bv, align 4, !tbaa !25, !alias.scope !27, !noalias !26
  store <4 x i32> %i.bu, ptr %i.bw, align 4, !tbaa !25, !alias.scope !27, !noalias !26
  %index.next158 = add nuw i64 %index155, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next158, %n.vec151
  br i1 %i.bx, label %middle.block159, label %vector.body154, !llvm.loop !14

middle.block159:                                  ; preds = %vector.body154
  %cmp.n160 = icmp eq i64 %i.bf, %n.vec151
  br i1 %cmp.n160, label %.critedge2, label %.lr.ph.preheader167

.lr.ph.preheader167:                              ; preds = %vector.memcheck137, %.lr.ph.preheader, %middle.block159
  %.0100.ph = phi i32 [ %i.az, %vector.memcheck137 ], [ %i.az, %.lr.ph.preheader ], [ %i.bk, %middle.block159 ]
  %.17599.ph = phi i64 [ %.074107, %vector.memcheck137 ], [ %.074107, %.lr.ph.preheader ], [ %i.bl, %middle.block159 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader167, %.lr.ph
  %.0100 = phi i32 [ %i.cd, %.lr.ph ], [ %.0100.ph, %.lr.ph.preheader167 ] ; 2 uses
  %.17599 = phi i64 [ %i.ce, %.lr.ph ], [ %.17599.ph, %.lr.ph.preheader167 ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %.17599
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !22
  %.narrow = add i8 %i.bz, %i.aw
  %i.ca = zext i8 %.narrow to i32
  %i.cb = or disjoint i32 %i.d, %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.17599
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !25
  %i.cd = add nsw i32 %.0100, -1
  %i.ce = add nuw i64 %.17599, 1                  ; 3 uses
  %i.cf = icmp samesign ugt i32 %.0100, 1
  %i.cg = icmp ult i64 %i.ce, %invariant.umin
  %or.cond93 = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %or.cond93, label %.lr.ph, label %.critedge2, !llvm.loop !15

bb.q:                                             ; preds = %bb.n
  %i.ch = icmp ult i64 %.074107, %invariant.umin
  br i1 %i.ch, label %.lr.ph104.preheader, label %.critedge2

.lr.ph104.preheader:                              ; preds = %bb.q
  %i.ci = add nuw nsw i32 %i.at, 2                ; 3 uses
  %i.cj = xor i64 %.074107, -1
  %i.ck = add i64 %invariant.umin, %i.cj
  %narrow164 = add nuw i8 %i.as, 1
  %i.cl = zext i8 %narrow164 to i64
  %i.cm = tail call i64 @llvm.umin.i64(i64 %i.ck, i64 %i.cl) ; 2 uses
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.cm, 7
  br i1 %min.iters.check, label %.lr.ph104.preheader166, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph104.preheader
  %i.co = shl i64 %.074107, 2
  %scevgep = getelementptr i8, ptr %5, i64 %i.co
  %12 = xor i64 %.074107, -1
  %i.cp = add i64 %invariant.umin, %12
  %narrow165 = add nuw i8 %i.as, 1
  %13 = zext i8 %narrow165 to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 %13) ; 2 uses
  %14 = add i64 %.074107, %umin
  %15 = shl i64 %14, 2
  %scevgep131 = getelementptr i8, ptr %scevgep130, i64 %15
  %scevgep132 = getelementptr i8, ptr %1, i64 %.074107
  %i.cq = getelementptr i8, ptr %scevgep133, i64 %.074107
  %scevgep134 = getelementptr i8, ptr %i.cq, i64 %umin
  %bound0 = icmp ult ptr %scevgep, %scevgep134
  %bound1 = icmp ult ptr %scevgep132, %scevgep131
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph104.preheader166, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cn, 504                     ; 4 uses
  %i.cr = trunc nuw nsw i64 %n.vec to i32
  %i.cs = sub nsw i32 %i.ci, %i.cr
  %i.ct = add i64 %.074107, %n.vec                ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cu = add nuw i64 %.074107, %index            ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %wide.load = load <4 x i8>, ptr %i.cv, align 1, !tbaa !22, !alias.scope !31
  %wide.load135 = load <4 x i8>, ptr %i.cw, align 1, !tbaa !22, !alias.scope !31
  %i.cx = sext <4 x i8> %wide.load to <4 x i32>
  %i.cy = sext <4 x i8> %wide.load135 to <4 x i32>
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cu ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <4 x i32> %i.cx, ptr %i.cz, align 4, !tbaa !25, !alias.scope !32, !noalias !31
  store <4 x i32> %i.cy, ptr %i.da, align 4, !tbaa !25, !alias.scope !32, !noalias !31
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %.critedge2, label %.lr.ph104.preheader166

.lr.ph104.preheader166:                           ; preds = %vector.memcheck, %.lr.ph104.preheader, %middle.block
  %.1103.ph = phi i32 [ %i.ci, %vector.memcheck ], [ %i.ci, %.lr.ph104.preheader ], [ %i.cs, %middle.block ]
  %.2102.ph = phi i64 [ %.074107, %vector.memcheck ], [ %.074107, %.lr.ph104.preheader ], [ %i.ct, %middle.block ]
  br label %.lr.ph104

.lr.ph104:                                        ; preds = %.lr.ph104.preheader166, %.lr.ph104
  %.1103 = phi i32 [ %i.dg, %.lr.ph104 ], [ %.1103.ph, %.lr.ph104.preheader166 ] ; 2 uses
  %.2102 = phi i64 [ %i.dh, %.lr.ph104 ], [ %.2102.ph, %.lr.ph104.preheader166 ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 %.2102
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !22
  %i.de = sext i8 %i.dd to i32
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.2102
  store i32 %i.de, ptr %i.df, align 4, !tbaa !25
  %i.dg = add nsw i32 %.1103, -1
  %i.dh = add nuw i64 %.2102, 1                   ; 3 uses
  %i.di = icmp samesign ugt i32 %.1103, 1
  %i.dj = icmp ult i64 %i.dh, %invariant.umin
  %or.cond95 = select i1 %i.di, i1 %i.dj, i1 false
  br i1 %or.cond95, label %.lr.ph104, label %.critedge2, !llvm.loop !20

default.unreachable121:                           ; preds = %bb.f
  unreachable

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph104, %middle.block159, %middle.block, %bb.p, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.l, %bb.j, %bb.h
  %.581 = phi i64 [ %.278, %bb.g ], [ %i.r, %bb.h ], [ %.278, %bb.i ], [ %i.x, %bb.j ], [ %.278, %bb.k ], [ %i.ap, %bb.l ], [ %.278, %bb.m ], [ %i.aq, %bb.o ], [ %i.aq, %bb.q ], [ %i.au, %bb.p ], [ %i.aq, %middle.block ], [ %i.au, %middle.block159 ], [ %i.aq, %.lr.ph104 ], [ %i.au, %.lr.ph ] ; 2 uses
  %.5 = phi i64 [ %.074107, %bb.g ], [ %i.v, %bb.h ], [ %.074107, %bb.i ], [ %i.ac, %bb.j ], [ %.074107, %bb.k ], [ %i.an, %bb.l ], [ %.074107, %bb.m ], [ %.074107, %bb.o ], [ %.074107, %bb.q ], [ %.074107, %bb.p ], [ %i.ct, %middle.block ], [ %i.bl, %middle.block159 ], [ %i.dh, %.lr.ph104 ], [ %i.ce, %.lr.ph ] ; 3 uses
  %i.dk = shl i8 %i.p, 2
  store i8 %i.dk, ptr %0, align 8, !tbaa !10
  store i32 %i.o, ptr %i.h, align 4, !tbaa !23
  %i.dl = icmp ult i64 %.581, %4
  %i.dm = icmp ult i64 %.5, %6                    ; 2 uses
  %i.dn = select i1 %i.dl, i1 %i.dm, i1 false
  br i1 %i.dn, label %bb.d, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %.critedge2, %bb.c
  %.074.lcssa = phi i64 [ 0, %bb.c ], [ %.5, %.critedge2 ]
  %.lcssa = phi i1 [ %i.f, %bb.c ], [ %i.dm, %.critedge2 ]
  %i.do = add i64 %6, -1
  %i.dp = select i1 %.lcssa, i64 %.074.lcssa, i64 %i.do
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.dp
  store i32 0, ptr %i.dq, align 4, !tbaa !25
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
