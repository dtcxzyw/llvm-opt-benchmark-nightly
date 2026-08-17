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
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i16
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  %6 = load i8, ptr %i.u, align 2
  %i.w = load i8, ptr %i.v, align 1
  %7 = zext i8 %6 to i16
  %8 = zext i8 %i.w to i16
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i16
  %9 = insertelement <4 x i16> poison, i16 %7, i64 0
  %10 = insertelement <4 x i16> %9, i16 %5, i64 1
  %11 = insertelement <4 x i16> %10, i16 %8, i64 2
  %12 = insertelement <4 x i16> %11, i16 %i.z, i64 3
  br label %bb.h

bb.g:                                             ; preds = %bb.g, %.preheader95.preheader.i
  %indvars.iv106.i = phi i64 [ 1, %.preheader95.preheader.i ], [ %indvars.iv.next107.i, %bb.g ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv106.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !10
  %i.ac = xor i8 %i.ab, -1
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !10  ; 9 uses
  %i.ag = tail call i8 @llvm.fshl.i8(i8 %i.af, i8 %i.af, i8 1)
  %i.ah = tail call i8 @llvm.fshl.i8(i8 %i.af, i8 %i.af, i8 2)
  %i.ai = tail call i8 @llvm.fshl.i8(i8 %i.af, i8 %i.af, i8 3)
  %i.aj = tail call i8 @llvm.fshl.i8(i8 %i.af, i8 %i.af, i8 4)
  %i.ak = xor i8 %i.ag, %i.ah
  %i.al = xor i8 %i.ak, %i.ai
  %i.am = xor i8 %i.al, %i.aj
  %i.an = xor i8 %i.am, %i.af
  %i.ao = xor i8 %i.an, 99                        ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %indvars.iv106.i
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !10
  %i.aq = trunc i64 %indvars.iv106.i to i8
  %i.ar = zext i8 %i.ao to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZL3RSb, i64 %i.ar
  store i8 %i.aq, ptr %i.as, align 1, !tbaa !10
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1 ; 2 uses
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next107.i, 256
  br i1 %exitcond109.not.i, label %.preheader.i, label %bb.g, !llvm.loop !13

bb.h:                                             ; preds = %.thread88.i, %.preheader.i
  %indvars.iv110.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next111.i, %.thread88.i ] ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %indvars.iv110.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !10  ; 4 uses
  %i.av = zext i8 %i.au to i32                    ; 2 uses
  %i.aw = shl i8 %i.au, 1
  %.not.inv.i = icmp slt i8 %i.au, 0
  %i.ax = select i1 %.not.inv.i, i8 27, i8 0
  %i.ay = xor i8 %i.ax, %i.aw                     ; 2 uses
  %i.az = zext i8 %i.ay to i32
  %i.ba = xor i8 %i.ay, %i.au
  %i.bb = shl nuw nsw i32 %i.av, 8
  %i.bc = or disjoint i32 %i.bb, %i.az
  %i.bd = shl nuw nsw i32 %i.av, 16
  %i.be = or disjoint i32 %i.bc, %i.bd            ; 2 uses
  %i.bf = zext i8 %i.ba to i32                    ; 2 uses
  %i.bg = shl nuw i32 %i.bf, 24
  %i.bh = or disjoint i32 %i.be, %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @_ZL3FT0, i64 %indvars.iv110.i
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !3
  %i.bj = shl nuw i32 %i.be, 8
  %i.bk = or disjoint i32 %i.bj, %i.bf            ; 5 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @_ZL3FT1, i64 %indvars.iv110.i
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !3
  %i.bm = tail call i32 @llvm.fshl.i32(i32 %i.bk, i32 %i.bk, i32 8)
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr @_ZL3FT2, i64 %indvars.iv110.i
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !3
  %i.bo = tail call i32 @llvm.fshl.i32(i32 %i.bk, i32 %i.bk, i32 16)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr @_ZL3FT3, i64 %indvars.iv110.i
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !3
  %i.bq = getelementptr inbounds nuw i8, ptr @_ZL3RSb, i64 %indvars.iv110.i
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !10  ; 2 uses
  %.not.i = icmp eq i8 %i.br, 0
  br i1 %.not.i, label %.thread88.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !10
  %i.bv = zext i8 %i.bu to i16
  %13 = insertelement <4 x i16> poison, i16 %i.bv, i64 0
  %14 = shufflevector <4 x i16> %13, <4 x i16> poison, <4 x i32> zeroinitializer
  %15 = add nuw nsw <4 x i16> %14, %12
  %16 = urem <4 x i16> %15, splat (i16 255)
  %17 = trunc nuw <4 x i16> %16 to <4 x i8>       ; 4 uses
  %18 = extractelement <4 x i8> %17, i64 0
  %i.bw = zext i8 %18 to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !10
  %i.bz = zext i8 %i.by to i32
  %19 = extractelement <4 x i8> %17, i64 1
  %i.ca = zext i8 %19 to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !10
  %i.cd = zext i8 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 8
  %i.cf = or disjoint i32 %i.ce, %i.bz
  %20 = extractelement <4 x i8> %17, i64 2
  %i.cg = zext i8 %20 to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !10
  %i.cj = zext i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 16
  %i.cl = or disjoint i32 %i.cf, %i.ck
  %21 = extractelement <4 x i8> %17, i64 3
  %i.cm = zext i8 %21 to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !10
  %i.cp = zext i8 %i.co to i32
  %i.cq = shl nuw i32 %i.cp, 24
  %i.cr = or disjoint i32 %i.cl, %i.cq
  br label %.thread88.i

.thread88.i:                                      ; preds = %bb.i, %bb.h
  %i.cs = phi i32 [ %i.cr, %bb.i ], [ 0, %bb.h ]  ; 7 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr @_ZL3RT0, i64 %indvars.iv110.i
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !3
  %i.cu = tail call i32 @llvm.fshl.i32(i32 %i.cs, i32 %i.cs, i32 8)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr @_ZL3RT1, i64 %indvars.iv110.i
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !3
  %i.cw = tail call i32 @llvm.fshl.i32(i32 %i.cs, i32 %i.cs, i32 16)
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr @_ZL3RT2, i64 %indvars.iv110.i
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !3
  %i.cy = tail call i32 @llvm.fshl.i32(i32 %i.cs, i32 %i.cs, i32 24)
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr @_ZL3RT3, i64 %indvars.iv110.i
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !3
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1 ; 2 uses
  %exitcond113.not.i = icmp eq i64 %indvars.iv.next111.i, 256
  br i1 %exitcond113.not.i, label %_ZL14aes_gen_tablesv.exit, label %bb.h, !llvm.loop !14

_ZL14aes_gen_tablesv.exit:                        ; preds = %.thread88.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  store i1 true, ptr @_ZL13aes_init_done, align 4
  br label %bb.j

bb.j:                                             ; preds = %_ZL14aes_gen_tablesv.exit, %bb.d
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.db, align 8, !tbaa !15
  %i.dc = lshr i32 %2, 5                          ; 2 uses
  %.not = icmp eq i32 %i.dc, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %wide.trip.count = zext nneg i32 %i.dc to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %2, 256
  br i1 %min.iters.check, label %.lr.ph.preheader130, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.dd = sub i64 %i.b, %i.a
  %i.de = add i64 %i.dd, 15
  %diff.check = icmp ult i64 %i.de, 31
  br i1 %diff.check, label %.lr.ph.preheader130, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 134217720    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.df = shl nuw nsw i64 %index, 2
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load = load <4 x i32>, ptr %i.dg, align 1
  %wide.load129 = load <4 x i32>, ptr %i.dh, align 1
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %index ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <4 x i32> %wide.load, ptr %i.di, align 4, !tbaa !3
  store <4 x i32> %wide.load129, ptr %i.dj, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !16

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
  %i.dl = shl nuw nsw i64 %indvars.iv.prol, 2
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 %i.dl
  %.0.copyload.i.prol = load i32, ptr %i.dm, align 1
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.prol
  store i32 %.0.copyload.i.prol, ptr %i.dn, align 4, !tbaa !3
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !19

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader130
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader130 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.do = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.dp = icmp ugt i64 %i.do, -4
  br i1 %i.dp, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.j
  %i.dq = load i32, ptr %i.da, align 8, !tbaa !3  ; 3 uses
  switch i32 %.sink, label %._crit_edge.unreachabledefault [
    i32 10, label %.preheader.preheader
    i32 12, label %.preheader99.preheader
    i32 14, label %.preheader101
  ]

.preheader99.preheader:                           ; preds = %._crit_edge
  %i.dr = load i32, ptr @_ZL15round_constants, align 16, !tbaa !3
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !3  ; 6 uses
  %i.du = lshr i32 %i.dt, 8
  %i.dv = and i32 %i.du, 255
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !10
  %i.dz = zext i8 %i.dy to i32
  %i.ea = xor i32 %i.dr, %i.dz
  %i.eb = lshr i32 %i.dt, 16
  %i.ec = and i32 %i.eb, 255
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !10
  %i.eg = zext i8 %i.ef to i32
  %i.eh = shl nuw nsw i32 %i.eg, 8
  %i.ei = xor i32 %i.ea, %i.eh
  %i.ej = lshr i32 %i.dt, 24
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !10
  %i.en = zext i8 %i.em to i32
  %i.eo = shl nuw nsw i32 %i.en, 16
  %i.ep = xor i32 %i.ei, %i.eo
  %i.eq = and i32 %i.dt, 255
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !10
  %i.eu = zext i8 %i.et to i32
  %i.ev = shl nuw i32 %i.eu, 24
  %i.ew = xor i32 %i.ep, %i.ev
  %i.ex = xor i32 %i.ew, %i.dq                    ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ex, ptr %i.ey, align 8, !tbaa !3
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !3  ; 2 uses
  %i.fb = xor i32 %i.ex, %i.fa                    ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !3
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !3
  %i.ff = xor i32 %i.fe, %i.fb                    ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.ff, ptr %i.fg, align 8, !tbaa !3
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !3  ; 3 uses
  %i.fj = xor i32 %i.fi, %i.ff                    ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !3
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !3
  %i.fn = xor i32 %i.fm, %i.fj                    ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.fn, ptr %i.fo, align 8, !tbaa !3
  %i.fp = xor i32 %i.fn, %i.dt                    ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !3
  %i.fr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL15round_constants, i64 4), align 4, !tbaa !3
  %i.fs = lshr i32 %i.fp, 8
  %i.ft = and i32 %i.fs, 255
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !10
  %i.fx = zext i8 %i.fw to i32
  %i.fy = xor i32 %i.fr, %i.fx
  %i.fz = lshr i32 %i.fp, 16
  %i.ga = and i32 %i.fz, 255
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !10
  %i.ge = zext i8 %i.gd to i32
  %i.gf = shl nuw nsw i32 %i.ge, 8
  %i.gg = xor i32 %i.fy, %i.gf
  %i.gh = lshr i32 %i.fp, 24
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !10
  %i.gl = zext i8 %i.gk to i32
  %i.gm = shl nuw nsw i32 %i.gl, 16
  %i.gn = xor i32 %i.gg, %i.gm
  %i.go = and i32 %i.fp, 255
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !10
  %i.gs = zext i8 %i.gr to i32
  %i.gt = shl nuw i32 %i.gs, 24
  %i.gu = xor i32 %i.gn, %i.gt                    ; 2 uses
  %i.gv = xor i32 %i.gu, %i.ex                    ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.gv, ptr %i.gw, align 8, !tbaa !3
  %i.gx = xor i32 %i.gu, %i.fa                    ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.gx, ptr %i.gy, align 4, !tbaa !3
end_hunk_0
