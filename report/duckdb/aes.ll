Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/aes?download=true
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
@_ZL15round_constants = internal unnamed_addr global [10 x i32] zeroinitializer, align 16, !guid !7
@_ZL3FSb = internal unnamed_addr global [256 x i8] zeroinitializer, align 16, !guid !8
@_ZL3RT0 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16, !guid !9
@_ZL3RT1 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16, !guid !10
@_ZL3RT2 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16, !guid !11
@_ZL3RT3 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16, !guid !12
@_ZL3FT0 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16, !guid !13
@_ZL3FT1 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16, !guid !14
@_ZL3FT2 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16, !guid !15
@_ZL3FT3 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16, !guid !16
@_ZL3RSb = internal unnamed_addr global [256 x i8] zeroinitializer, align 16, !guid !17

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @mbedtls_aes_init(ptr nofree noundef writeonly captures(none) initializes((0, 288)) %0) local_unnamed_addr #0 !guid !27 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %0, i8 0, i64 288, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @mbedtls_aes_free(ptr noundef %0) local_unnamed_addr #2 !guid !28 {
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
define hidden range(i32 -32, 1) i32 @mbedtls_aes_setkey_enc(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 !guid !36 {
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
  store i32 %.sink, ptr %0, align 8, !tbaa !20
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
  store i8 %.097.i, ptr %i.e, align 2, !tbaa !21
  %i.f = trunc i64 %indvars.iv.i to i8
  %i.g = zext i8 %.097.i to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  store i8 %i.f, ptr %i.h, align 1, !tbaa !21
  %i.i = shl i8 %.097.i, 1
  %.not86.inv.i = icmp slt i8 %.097.i, 0
  %i.j = select i1 %.not86.inv.i, i8 27, i8 0
  %i.k = xor i8 %i.i, %i.j
  %i.l = xor i8 %i.k, %.097.i                     ; 5 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next.i
  store i8 %i.l, ptr %i.m, align 1, !tbaa !21
  %i.n = trunc i64 %indvars.iv.next.i to i8
  %i.o = zext i8 %i.l to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.o
  store i8 %i.n, ptr %i.p, align 1, !tbaa !21
  %i.q = shl i8 %i.l, 1
  %.not86.inv.i.1 = icmp slt i8 %i.l, 0
  %i.r = select i1 %.not86.inv.i.1, i8 27, i8 0
  %i.s = xor i8 %i.q, %i.r
  %i.t = xor i8 %i.s, %i.l
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %.preheader95.preheader.i, label %bb.f, !llvm.loop !29

.preheader95.preheader.i:                         ; preds = %bb.f
  store i64 8589934593, ptr @_ZL15round_constants, align 16
  store i64 34359738372, ptr getelementptr inbounds nuw (i8, ptr @_ZL15round_constants, i64 8), align 8
  store i64 137438953488, ptr getelementptr inbounds nuw (i8, ptr @_ZL15round_constants, i64 16), align 16
  store i64 549755813952, ptr getelementptr inbounds nuw (i8, ptr @_ZL15round_constants, i64 24), align 8
  store i64 231928234011, ptr getelementptr inbounds nuw (i8, ptr @_ZL15round_constants, i64 32), align 16
  store i8 99, ptr @_ZL3FSb, align 16, !tbaa !21
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL3RSb, i64 99), align 1, !tbaa !21
  br label %bb.g

.preheader.i:                                     ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  %i.y = load i8, ptr %i.u, align 2
  %i.z = zext i8 %i.y to i16
  %i.aa = load i8, ptr %i.v, align 1
  %i.ab = zext i8 %i.aa to i16
  %i.ac = load i8, ptr %i.w, align 1
  %i.ad = zext i8 %i.ac to i16
  %i.ae = load i8, ptr %i.x, align 1
  %i.af = zext i8 %i.ae to i16
  %i.ag = insertelement <4 x i16> poison, i16 %i.ab, i64 0
  %i.ah = insertelement <4 x i16> %i.ag, i16 %i.af, i64 1
  %i.ai = insertelement <4 x i16> %i.ah, i16 %i.ad, i64 2
  %i.aj = insertelement <4 x i16> %i.ai, i16 %i.z, i64 3
  br label %bb.h

bb.g:                                             ; preds = %bb.g, %.preheader95.preheader.i
  %indvars.iv106.i = phi i64 [ 1, %.preheader95.preheader.i ], [ %indvars.iv.next107.i, %bb.g ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv106.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !21
  %i.am = xor i8 %i.al, -1
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !21  ; 9 uses
  %i.aq = tail call i8 @llvm.fshl.i8(i8 %i.ap, i8 %i.ap, i8 1)
  %i.ar = tail call i8 @llvm.fshl.i8(i8 %i.ap, i8 %i.ap, i8 2)
  %i.as = tail call i8 @llvm.fshl.i8(i8 %i.ap, i8 %i.ap, i8 3)
  %i.at = tail call i8 @llvm.fshl.i8(i8 %i.ap, i8 %i.ap, i8 4)
  %i.au = xor i8 %i.aq, %i.ar
  %i.av = xor i8 %i.au, %i.as
  %i.aw = xor i8 %i.av, %i.at
  %i.ax = xor i8 %i.aw, %i.ap
  %i.ay = xor i8 %i.ax, 99                        ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %indvars.iv106.i
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !21
  %i.ba = trunc i64 %indvars.iv106.i to i8
  %i.bb = zext i8 %i.ay to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZL3RSb, i64 %i.bb
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !21
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1 ; 2 uses
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next107.i, 256
  br i1 %exitcond109.not.i, label %.preheader.i, label %bb.g, !llvm.loop !30

bb.h:                                             ; preds = %.thread88.i, %.preheader.i
  %indvars.iv110.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next111.i, %.thread88.i ] ; 11 uses
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %indvars.iv110.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !21  ; 4 uses
  %i.bf = zext i8 %i.be to i32                    ; 2 uses
  %i.bg = shl i8 %i.be, 1
  %.not.inv.i = icmp slt i8 %i.be, 0
  %i.bh = select i1 %.not.inv.i, i8 27, i8 0
  %i.bi = xor i8 %i.bh, %i.bg                     ; 2 uses
  %i.bj = zext i8 %i.bi to i32
  %i.bk = xor i8 %i.bi, %i.be
  %i.bl = shl nuw nsw i32 %i.bf, 8
  %i.bm = or disjoint i32 %i.bl, %i.bj
  %i.bn = shl nuw nsw i32 %i.bf, 16
  %i.bo = or disjoint i32 %i.bm, %i.bn            ; 2 uses
  %i.bp = zext i8 %i.bk to i32                    ; 2 uses
  %i.bq = shl nuw i32 %i.bp, 24
  %i.br = or disjoint i32 %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr @_ZL3FT0, i64 %indvars.iv110.i
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !6
  %i.bt = shl nuw i32 %i.bo, 8
  %i.bu = or disjoint i32 %i.bt, %i.bp            ; 5 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @_ZL3FT1, i64 %indvars.iv110.i
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !6
  %i.bw = tail call i32 @llvm.fshl.i32(i32 %i.bu, i32 %i.bu, i32 8)
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @_ZL3FT2, i64 %indvars.iv110.i
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !6
  %i.by = tail call i32 @llvm.fshl.i32(i32 %i.bu, i32 %i.bu, i32 16)
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr @_ZL3FT3, i64 %indvars.iv110.i
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !6
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZL3RSb, i64 %indvars.iv110.i
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !21  ; 2 uses
  %.not.i = icmp eq i8 %i.cb, 0
  br i1 %.not.i, label %.thread88.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !21
  %i.cf = zext i8 %i.ce to i16
  %i.cg = insertelement <4 x i16> poison, i16 %i.cf, i64 0
  %i.ch = shufflevector <4 x i16> %i.cg, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.ci = add nuw nsw <4 x i16> %i.ch, %i.aj
  %i.cj = urem <4 x i16> %i.ci, splat (i16 255)   ; 4 uses
  %i.ck = extractelement <4 x i16> %i.cj, i64 3
  %i.cl = zext nneg i16 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !21
  %i.co = zext i8 %i.cn to i32
  %i.cp = extractelement <4 x i16> %i.cj, i64 0
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !21
  %i.ct = zext i8 %i.cs to i32
  %i.cu = shl nuw nsw i32 %i.ct, 8
  %i.cv = or disjoint i32 %i.cu, %i.co
  %i.cw = extractelement <4 x i16> %i.cj, i64 2
  %i.cx = zext nneg i16 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !21
  %i.da = zext i8 %i.cz to i32
  %i.db = shl nuw nsw i32 %i.da, 16
  %i.dc = or disjoint i32 %i.cv, %i.db
  %i.dd = extractelement <4 x i16> %i.cj, i64 1
  %i.de = zext nneg i16 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !21
  %i.dh = zext i8 %i.dg to i32
  %i.di = shl nuw i32 %i.dh, 24
  %i.dj = or disjoint i32 %i.dc, %i.di
  br label %.thread88.i

.thread88.i:                                      ; preds = %bb.i, %bb.h
  %i.dk = phi i32 [ %i.dj, %bb.i ], [ 0, %bb.h ]  ; 7 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr @_ZL3RT0, i64 %indvars.iv110.i
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !6
  %i.dm = tail call i32 @llvm.fshl.i32(i32 %i.dk, i32 %i.dk, i32 8)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr @_ZL3RT1, i64 %indvars.iv110.i
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !6
  %i.do = tail call i32 @llvm.fshl.i32(i32 %i.dk, i32 %i.dk, i32 16)
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr @_ZL3RT2, i64 %indvars.iv110.i
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !6
  %i.dq = tail call i32 @llvm.fshl.i32(i32 %i.dk, i32 %i.dk, i32 24)
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr @_ZL3RT3, i64 %indvars.iv110.i
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !6
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1 ; 2 uses
  %exitcond113.not.i = icmp eq i64 %indvars.iv.next111.i, 256
  br i1 %exitcond113.not.i, label %_ZL14aes_gen_tablesv.exit, label %bb.h, !llvm.loop !31

_ZL14aes_gen_tablesv.exit:                        ; preds = %.thread88.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  store i1 true, ptr @_ZL13aes_init_done, align 4
  br label %bb.j

bb.j:                                             ; preds = %_ZL14aes_gen_tablesv.exit, %bb.d
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.dt, align 8, !tbaa !23
  %i.du = lshr i32 %2, 5                          ; 2 uses
  %.not = icmp eq i32 %i.du, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %wide.trip.count = zext nneg i32 %i.du to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %2, 256
  br i1 %min.iters.check, label %.lr.ph.preheader130, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.dv = sub i64 %i.b, %i.a
  %i.dw = add i64 %i.dv, 15
  %diff.check = icmp ult i64 %i.dw, 31
  br i1 %diff.check, label %.lr.ph.preheader130, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 134217720    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dx = shl nuw nsw i64 %index, 2
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %wide.load = load <4 x i32>, ptr %i.dy, align 1
  %wide.load129 = load <4 x i32>, ptr %i.dz, align 1
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %index ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store <4 x i32> %wide.load, ptr %i.ea, align 4, !tbaa !6
  store <4 x i32> %wide.load129, ptr %i.eb, align 4, !tbaa !6
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !32

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
  %i.ed = shl nuw nsw i64 %indvars.iv.prol, 2
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 %i.ed
  %.0.copyload.i.prol = load i32, ptr %i.ee, align 1
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.prol
end_hunk_0
