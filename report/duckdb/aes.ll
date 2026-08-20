inline.NumInlined: 9
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mbedtls_aes_context = type { i32, i64, [68 x i32] }
%struct.anon = type { [4 x i32], [4 x i32] }
%struct.anon.0 = type { [4 x i32], [4 x i32] }

@_ZL13aes_init_done = internal unnamed_addr global i1 false, align 4
@_ZL15round_constants = internal unnamed_addr global [10 x i32] zeroinitializer, align 16
@_ZL3FSb = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@_ZL3RT0 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@_ZL3RT1 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@_ZL3RT2 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@_ZL3RT3 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@_ZL3FT0 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@_ZL3FT1 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@_ZL3FT2 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@_ZL3FT3 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@_ZL3RSb = internal unnamed_addr global [256 x i8] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @mbedtls_aes_init(ptr nofree noundef writeonly captures(none) initializes((0, 288)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %0, i8 0, i64 288, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @mbedtls_aes_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 288)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -32, 1) i32 @mbedtls_aes_setkey_enc(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = alloca [256 x i8], align 16              ; 9 uses
  %i.d = alloca [256 x i8], align 16              ; 10 uses
  switch i32 %2, label %.loopexit [
    i32 128, label %bb.d
    i32 192, label %bb.b
    i32 256, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i32 [ 14, %bb.c ], [ 12, %bb.b ], [ 10, %bb.a ] ; 2 uses
  store i32 %.sink, ptr %0, align 8, !tbaa !7
  %.b = load i1, ptr @_ZL13aes_init_done, align 4
  br i1 %.b, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i.1, %bb.f ] ; 4 uses
  %.097.i = phi i8 [ 1, %bb.e ], [ %i.t, %bb.f ]  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  store i8 %.097.i, ptr %i.e, align 2, !tbaa !10
  %i.f = trunc i64 %indvars.iv.i to i8
  %i.g = zext i8 %.097.i to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  store i8 %i.f, ptr %i.h, align 1, !tbaa !10
  %i.i = shl i8 %.097.i, 1
  %.not86.inv.i = icmp slt i8 %.097.i, 0
  %i.j = select i1 %.not86.inv.i, i8 27, i8 0
  %i.k = xor i8 %i.i, %i.j
  %i.l = xor i8 %i.k, %.097.i                     ; 5 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next.i
  store i8 %i.l, ptr %i.m, align 1, !tbaa !10
  %i.n = trunc i64 %indvars.iv.next.i to i8
  %i.o = zext i8 %i.l to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.o
  store i8 %i.n, ptr %i.p, align 1, !tbaa !10
  %i.q = shl i8 %i.l, 1
  %.not86.inv.i.1 = icmp slt i8 %i.l, 0
  %i.r = select i1 %.not86.inv.i.1, i8 27, i8 0
  %i.s = xor i8 %i.q, %i.r
  %i.t = xor i8 %i.s, %i.l
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %.preheader95.preheader.i, label %bb.f, !llvm.loop !11

.preheader95.preheader.i:                         ; preds = %bb.f
  store <4 x i32> <i32 1, i32 2, i32 4, i32 8>, ptr @_ZL15round_constants, align 16, !tbaa !3
  store <4 x i32> <i32 16, i32 32, i32 64, i32 128>, ptr getelementptr inbounds nuw (i8, ptr @_ZL15round_constants, i64 16), align 16, !tbaa !3
  store i32 27, ptr getelementptr inbounds nuw (i8, ptr @_ZL15round_constants, i64 32), align 16, !tbaa !3
  store i32 54, ptr getelementptr inbounds nuw (i8, ptr @_ZL15round_constants, i64 36), align 4, !tbaa !3
  store i8 99, ptr @_ZL3FSb, align 16, !tbaa !10
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL3RSb, i64 99), align 1, !tbaa !10
  br label %bb.g

.preheader.i:                                     ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %3 = load i8, ptr %i.u, align 2
  %4 = zext i8 %3 to i16
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.w = load i8, ptr %i.v, align 1
  %5 = zext i8 %i.w to i16
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i16
  br label %bb.h

bb.g:                                             ; preds = %bb.g, %.preheader95.preheader.i
  %indvars.iv106.i = phi i64 [ 1, %.preheader95.preheader.i ], [ %indvars.iv.next107.i, %bb.g ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv106.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !10
  %i.af = xor i8 %i.ae, -1
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !10  ; 9 uses
  %i.aj = tail call i8 @llvm.fshl.i8(i8 %i.ai, i8 %i.ai, i8 1)
  %i.ak = tail call i8 @llvm.fshl.i8(i8 %i.ai, i8 %i.ai, i8 2)
  %i.al = tail call i8 @llvm.fshl.i8(i8 %i.ai, i8 %i.ai, i8 3)
  %i.am = tail call i8 @llvm.fshl.i8(i8 %i.ai, i8 %i.ai, i8 4)
  %i.an = xor i8 %i.aj, %i.ak
  %i.ao = xor i8 %i.an, %i.al
  %i.ap = xor i8 %i.ao, %i.am
  %i.aq = xor i8 %i.ap, %i.ai
  %i.ar = xor i8 %i.aq, 99                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %indvars.iv106.i
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !10
  %i.at = trunc i64 %indvars.iv106.i to i8
  %i.au = zext i8 %i.ar to i64
  %i.av = getelementptr inbounds nuw i8, ptr @_ZL3RSb, i64 %i.au
  store i8 %i.at, ptr %i.av, align 1, !tbaa !10
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1 ; 2 uses
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next107.i, 256
  br i1 %exitcond109.not.i, label %.preheader.i, label %bb.g, !llvm.loop !13

bb.h:                                             ; preds = %.thread88.i, %.preheader.i
  %indvars.iv110.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next111.i, %.thread88.i ] ; 11 uses
  %i.aw = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %indvars.iv110.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !10  ; 4 uses
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  %i.az = shl i8 %i.ax, 1
  %.not.inv.i = icmp slt i8 %i.ax, 0
  %i.ba = select i1 %.not.inv.i, i8 27, i8 0
  %i.bb = xor i8 %i.ba, %i.az                     ; 2 uses
  %i.bc = zext i8 %i.bb to i32
  %i.bd = xor i8 %i.bb, %i.ax
  %i.be = shl nuw nsw i32 %i.ay, 8
  %i.bf = or disjoint i32 %i.be, %i.bc
  %i.bg = shl nuw nsw i32 %i.ay, 16
  %i.bh = or disjoint i32 %i.bf, %i.bg            ; 2 uses
  %i.bi = zext i8 %i.bd to i32                    ; 2 uses
  %i.bj = shl nuw i32 %i.bi, 24
  %i.bk = or disjoint i32 %i.bh, %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @_ZL3FT0, i64 %indvars.iv110.i
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !3
  %i.bm = shl nuw i32 %i.bh, 8
  %i.bn = or disjoint i32 %i.bm, %i.bi            ; 5 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @_ZL3FT1, i64 %indvars.iv110.i
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !3
  %i.bp = tail call i32 @llvm.fshl.i32(i32 %i.bn, i32 %i.bn, i32 8)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr @_ZL3FT2, i64 %indvars.iv110.i
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !3
  %i.br = tail call i32 @llvm.fshl.i32(i32 %i.bn, i32 %i.bn, i32 16)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr @_ZL3FT3, i64 %indvars.iv110.i
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw i8, ptr @_ZL3RSb, i64 %indvars.iv110.i
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !10  ; 2 uses
  %.not.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i, label %.thread88.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !10
  %i.by = zext i8 %i.bx to i16                    ; 4 uses
  %.lhs.trunc.i = add nuw nsw i16 %i.by, %4
  %6 = urem i16 %.lhs.trunc.i, 255
  %i.bz = zext nneg i16 %6 to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !10
  %i.cc = zext i8 %i.cb to i32
  %.lhs.trunc89.i = add nuw nsw i16 %i.by, %5
  %7 = urem i16 %.lhs.trunc89.i, 255
  %i.cd = zext nneg i16 %7 to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !10
  %i.cg = zext i8 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 8
  %i.ci = or disjoint i32 %i.ch, %i.cc
  %.lhs.trunc91.i = add nuw nsw i16 %i.by, %i.z
  %i.cj = urem i16 %.lhs.trunc91.i, 255
  %i.ck = zext nneg i16 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !10
  %i.cn = zext i8 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 16
  %i.cp = or disjoint i32 %i.ci, %i.co
  %.lhs.trunc93.i = add nuw nsw i16 %i.by, %i.ac
  %i.cq = urem i16 %.lhs.trunc93.i, 255
  %i.cr = zext nneg i16 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !10
  %i.cu = zext i8 %i.ct to i32
  %i.cv = shl nuw i32 %i.cu, 24
  %i.cw = or disjoint i32 %i.cp, %i.cv
  br label %.thread88.i

.thread88.i:                                      ; preds = %bb.i, %bb.h
  %i.cx = phi i32 [ %i.cw, %bb.i ], [ 0, %bb.h ]  ; 7 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @_ZL3RT0, i64 %indvars.iv110.i
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !3
  %i.cz = tail call i32 @llvm.fshl.i32(i32 %i.cx, i32 %i.cx, i32 8)
  %i.da = getelementptr inbounds nuw [4 x i8], ptr @_ZL3RT1, i64 %indvars.iv110.i
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !3
  %i.db = tail call i32 @llvm.fshl.i32(i32 %i.cx, i32 %i.cx, i32 16)
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr @_ZL3RT2, i64 %indvars.iv110.i
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !3
  %i.dd = tail call i32 @llvm.fshl.i32(i32 %i.cx, i32 %i.cx, i32 24)
  %i.de = getelementptr inbounds nuw [4 x i8], ptr @_ZL3RT3, i64 %indvars.iv110.i
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !3
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1 ; 2 uses
  %exitcond113.not.i = icmp eq i64 %indvars.iv.next111.i, 256
  br i1 %exitcond113.not.i, label %_ZL14aes_gen_tablesv.exit, label %bb.h, !llvm.loop !14

_ZL14aes_gen_tablesv.exit:                        ; preds = %.thread88.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  store i1 true, ptr @_ZL13aes_init_done, align 4
  br label %bb.j

bb.j:                                             ; preds = %_ZL14aes_gen_tablesv.exit, %bb.d
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.dg, align 8, !tbaa !15
  %i.dh = lshr i32 %2, 5                          ; 2 uses
  %.not = icmp eq i32 %i.dh, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %wide.trip.count = zext nneg i32 %i.dh to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %2, 256
  br i1 %min.iters.check, label %.lr.ph.preheader130, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.di = sub i64 %i.b, %i.a
  %i.dj = add i64 %i.di, 15
  %diff.check = icmp ult i64 %i.dj, 31
  br i1 %diff.check, label %.lr.ph.preheader130, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 134217720    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dk = shl nuw nsw i64 %index, 2
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load = load <4 x i32>, ptr %i.dl, align 1
  %wide.load129 = load <4 x i32>, ptr %i.dm, align 1
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <4 x i32> %wide.load, ptr %i.dn, align 4, !tbaa !3
  store <4 x i32> %wide.load129, ptr %i.do, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader130

.lr.ph.preheader130:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader130, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader130 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader130 ]
  %i.dq = shl nuw nsw i64 %indvars.iv.prol, 2
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 %i.dq
  %.0.copyload.i.prol = load i32, ptr %i.dr, align 1
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.prol
  store i32 %.0.copyload.i.prol, ptr %i.ds, align 4, !tbaa !3
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !19

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader130
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader130 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.dt = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.du = icmp ugt i64 %i.dt, -4
  br i1 %i.du, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.j
  %i.dv = load i32, ptr %i.df, align 8, !tbaa !3  ; 3 uses
  switch i32 %.sink, label %._crit_edge.unreachabledefault [
    i32 10, label %.preheader.preheader
    i32 12, label %.preheader99.preheader
    i32 14, label %.preheader101
  ]

.preheader99.preheader:                           ; preds = %._crit_edge
  %i.dw = load i32, ptr @_ZL15round_constants, align 16, !tbaa !3
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3  ; 6 uses
  %i.dz = lshr i32 %i.dy, 8
  %i.ea = and i32 %i.dz, 255
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !10
  %i.ee = zext i8 %i.ed to i32
  %i.ef = xor i32 %i.dw, %i.ee
  %i.eg = lshr i32 %i.dy, 16
  %i.eh = and i32 %i.eg, 255
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !10
  %i.el = zext i8 %i.ek to i32
  %i.em = shl nuw nsw i32 %i.el, 8
  %i.en = xor i32 %i.ef, %i.em
  %i.eo = lshr i32 %i.dy, 24
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !10
  %i.es = zext i8 %i.er to i32
  %i.et = shl nuw nsw i32 %i.es, 16
  %i.eu = xor i32 %i.en, %i.et
  %i.ev = and i32 %i.dy, 255
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !10
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl nuw i32 %i.ez, 24
  %i.fb = xor i32 %i.eu, %i.fa
  %i.fc = xor i32 %i.fb, %i.dv                    ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.fc, ptr %i.fd, align 8, !tbaa !3
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3  ; 2 uses
  %i.fg = xor i32 %i.fc, %i.ff                    ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !3
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !3
  %i.fk = xor i32 %i.fj, %i.fg                    ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.fk, ptr %i.fl, align 8, !tbaa !3
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3  ; 3 uses
  %i.fo = xor i32 %i.fn, %i.fk                    ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !3
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !3
  %i.fs = xor i32 %i.fr, %i.fo                    ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.fs, ptr %i.ft, align 8, !tbaa !3
  %i.fu = xor i32 %i.fs, %i.dy                    ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !3
  %i.fw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL15round_constants, i64 4), align 4, !tbaa !3
  %i.fx = lshr i32 %i.fu, 8
  %i.fy = and i32 %i.fx, 255
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !10
  %i.gc = zext i8 %i.gb to i32
  %i.gd = xor i32 %i.fw, %i.gc
  %i.ge = lshr i32 %i.fu, 16
  %i.gf = and i32 %i.ge, 255
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !10
  %i.gj = zext i8 %i.gi to i32
  %i.gk = shl nuw nsw i32 %i.gj, 8
  %i.gl = xor i32 %i.gd, %i.gk
  %i.gm = lshr i32 %i.fu, 24
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !10
end_hunk_0
