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
  %.07996.i = phi i8 [ 1, %bb.e ], [ %i.t, %bb.f ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  store i8 %.07996.i, ptr %i.e, align 2, !tbaa !10
  %i.f = trunc i64 %indvars.iv.i to i8
  %i.g = zext i8 %.07996.i to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  store i8 %i.f, ptr %i.h, align 1, !tbaa !10
  %i.i = shl i8 %.07996.i, 1
  %.not86.inv.i = icmp slt i8 %.07996.i, 0
  %i.j = select i1 %.not86.inv.i, i8 27, i8 0
  %i.k = xor i8 %i.i, %i.j
  %i.l = xor i8 %i.k, %.07996.i                   ; 5 uses
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
  %i.v = load i8, ptr %i.u, align 2
  %i.w = zext i8 %i.v to i16
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i16
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i16
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
  %.lhs.trunc.i = add nuw nsw i16 %i.by, %i.w
  %6 = urem i16 %.lhs.trunc.i, 255
  %i.bz = zext nneg i16 %6 to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !10
  %i.cc = zext i8 %i.cb to i32
  %.lhs.trunc89.i = add nuw nsw i16 %i.by, %i.z
  %7 = urem i16 %.lhs.trunc89.i, 255
  %i.cd = zext nneg i16 %7 to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !10
  %i.cg = zext i8 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 8
  %i.ci = or disjoint i32 %i.ch, %i.cc
  %.lhs.trunc91.i = add nuw nsw i16 %i.by, %i.ac
  %8 = urem i16 %.lhs.trunc91.i, 255
  %i.cj = zext nneg i16 %8 to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !10
  %i.cm = zext i8 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 16
  %i.co = or disjoint i32 %i.ci, %i.cn
  %.lhs.trunc93.i = add nuw nsw i16 %i.by, %5
  %9 = urem i16 %.lhs.trunc93.i, 255
  %i.cp = zext nneg i16 %9 to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !10
  %i.cs = zext i8 %i.cr to i32
  %i.ct = shl nuw i32 %i.cs, 24
  %i.cu = or disjoint i32 %i.co, %i.ct
  br label %.thread88.i

.thread88.i:                                      ; preds = %bb.i, %bb.h
  %i.cv = phi i32 [ %i.cu, %bb.i ], [ 0, %bb.h ]  ; 7 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr @_ZL3RT0, i64 %indvars.iv110.i
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !3
  %i.cx = tail call i32 @llvm.fshl.i32(i32 %i.cv, i32 %i.cv, i32 8)
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @_ZL3RT1, i64 %indvars.iv110.i
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !3
  %i.cz = tail call i32 @llvm.fshl.i32(i32 %i.cv, i32 %i.cv, i32 16)
  %i.da = getelementptr inbounds nuw [4 x i8], ptr @_ZL3RT2, i64 %indvars.iv110.i
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !3
  %i.db = tail call i32 @llvm.fshl.i32(i32 %i.cv, i32 %i.cv, i32 24)
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr @_ZL3RT3, i64 %indvars.iv110.i
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !3
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1 ; 2 uses
  %exitcond113.not.i = icmp eq i64 %indvars.iv.next111.i, 256
  br i1 %exitcond113.not.i, label %_ZL14aes_gen_tablesv.exit, label %bb.h, !llvm.loop !14

_ZL14aes_gen_tablesv.exit:                        ; preds = %.thread88.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  store i1 true, ptr @_ZL13aes_init_done, align 4
  br label %bb.j

bb.j:                                             ; preds = %_ZL14aes_gen_tablesv.exit, %bb.d
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.de, align 8, !tbaa !15
  %i.df = lshr i32 %2, 5                          ; 2 uses
  %.not = icmp eq i32 %i.df, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %wide.trip.count = zext nneg i32 %i.df to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %2, 256
  br i1 %min.iters.check, label %.lr.ph.preheader130, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.dg = sub i64 %i.b, %i.a
  %i.dh = add i64 %i.dg, 15
  %diff.check = icmp ult i64 %i.dh, 31
  br i1 %diff.check, label %.lr.ph.preheader130, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 134217720    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.di = shl nuw nsw i64 %index, 2
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %wide.load = load <4 x i32>, ptr %i.dj, align 1
  %wide.load129 = load <4 x i32>, ptr %i.dk, align 1
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store <4 x i32> %wide.load, ptr %i.dl, align 4, !tbaa !3
  store <4 x i32> %wide.load129, ptr %i.dm, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !16

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
  %i.do = shl nuw nsw i64 %indvars.iv.prol, 2
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %i.do
  %.0.copyload.i.prol = load i32, ptr %i.dp, align 1
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.prol
  store i32 %.0.copyload.i.prol, ptr %i.dq, align 4, !tbaa !3
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !19

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader130
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader130 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.dr = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ds = icmp ugt i64 %i.dr, -4
  br i1 %i.ds, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.j
  %i.dt = load i32, ptr %i.dd, align 8, !tbaa !3  ; 3 uses
  switch i32 %.sink, label %._crit_edge.unreachabledefault [
    i32 10, label %.preheader.preheader
    i32 12, label %.preheader99.preheader
    i32 14, label %.preheader101
  ]

.preheader99.preheader:                           ; preds = %._crit_edge
  %i.du = load i32, ptr @_ZL15round_constants, align 16, !tbaa !3
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3  ; 6 uses
  %i.dx = lshr i32 %i.dw, 8
  %i.dy = and i32 %i.dx, 255
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !10
  %i.ec = zext i8 %i.eb to i32
  %i.ed = xor i32 %i.du, %i.ec
  %i.ee = lshr i32 %i.dw, 16
  %i.ef = and i32 %i.ee, 255
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !10
  %i.ej = zext i8 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 8
  %i.el = xor i32 %i.ed, %i.ek
  %i.em = lshr i32 %i.dw, 24
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !10
  %i.eq = zext i8 %i.ep to i32
  %i.er = shl nuw nsw i32 %i.eq, 16
  %i.es = xor i32 %i.el, %i.er
  %i.et = and i32 %i.dw, 255
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !10
  %i.ex = zext i8 %i.ew to i32
  %i.ey = shl nuw i32 %i.ex, 24
  %i.ez = xor i32 %i.es, %i.ey
  %i.fa = xor i32 %i.ez, %i.dt                    ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.fa, ptr %i.fb, align 8, !tbaa !3
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !3  ; 2 uses
  %i.fe = xor i32 %i.fa, %i.fd                    ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !3
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !3
  %i.fi = xor i32 %i.fh, %i.fe                    ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.fi, ptr %i.fj, align 8, !tbaa !3
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3  ; 3 uses
  %i.fm = xor i32 %i.fl, %i.fi                    ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !3
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !3
  %i.fq = xor i32 %i.fp, %i.fm                    ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.fq, ptr %i.fr, align 8, !tbaa !3
  %i.fs = xor i32 %i.fq, %i.dw                    ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !3
  %i.fu = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL15round_constants, i64 4), align 4, !tbaa !3
  %i.fv = lshr i32 %i.fs, 8
  %i.fw = and i32 %i.fv, 255
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !10
  %i.ga = zext i8 %i.fz to i32
  %i.gb = xor i32 %i.fu, %i.ga
  %i.gc = lshr i32 %i.fs, 16
  %i.gd = and i32 %i.gc, 255
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !10
  %i.gh = zext i8 %i.gg to i32
  %i.gi = shl nuw nsw i32 %i.gh, 8
  %i.gj = xor i32 %i.gb, %i.gi
  %i.gk = lshr i32 %i.fs, 24
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !10
  %i.go = zext i8 %i.gn to i32
  %i.gp = shl nuw nsw i32 %i.go, 16
  %i.gq = xor i32 %i.gj, %i.gp
  %i.gr = and i32 %i.fs, 255
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !10
  %i.gv = zext i8 %i.gu to i32
  %i.gw = shl nuw i32 %i.gv, 24
  %i.gx = xor i32 %i.gq, %i.gw                    ; 2 uses
  %i.gy = xor i32 %i.gx, %i.fa                    ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.gy, ptr %i.gz, align 8, !tbaa !3
  %i.ha = xor i32 %i.gx, %i.fd                    ; 5 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !3
end_hunk_0
