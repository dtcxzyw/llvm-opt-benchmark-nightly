Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dynamic_hdr_vivid?download=true
inline.NumInlined: 43
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -1094995529, 1) i32 @ff_parse_itu_t_t35_to_dynamic_hdr_vivid(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread321, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond.i = icmp ugt i32 %2, 268435455
  %i.a = shl nuw nsw i32 %2, 3
  %i.b = select i1 %or.cond.i, i32 -8, i32 %i.a   ; 2 uses
  %or.cond.i.i = icmp ugt i32 %i.b, 2147483134
  %i.c = icmp eq ptr %1, null
  %or.cond3.i.i.not = or i1 %i.c, %or.cond.i.i    ; 2 uses
  %.013.i.i = select i1 %or.cond3.i.i.not, i32 0, i32 %i.b ; 11 uses
  %i.d = add nuw nsw i32 %.013.i.i, 8             ; 34 uses
  %i.e = icmp eq i32 %.013.i.i, 0
  %or.cond324 = or i1 %or.cond3.i.i.not, %i.e
  br i1 %or.cond324, label %.thread321, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %1, align 1, !tbaa !10     ; 2 uses
  %i.g = and i32 %i.f, 255
  %i.h = trunc i32 %i.f to i8
  store i8 %i.h, ptr %0, align 4, !tbaa !12
  %i.i = add nsw i32 %i.g, -1
  %or.cond = icmp ult i32 %i.i, 7
  br i1 %or.cond, label %bb.d, label %.thread321

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.j, align 1, !tbaa !13
  %i.k = icmp samesign ult i32 %.013.i.i, 56
  br i1 %i.k, label %.thread321, label %.preheader331

.preheader331:                                    ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.n = load i32, ptr %i.m, align 1, !tbaa !10
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  %i.p = lshr i32 %i.o, 20
  store i32 %i.p, ptr %i.l, align 4, !tbaa !14
  %.sroa.286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 4095, ptr %.sroa.286.0..sroa_idx, align 4, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.s = load i32, ptr %i.r, align 1, !tbaa !10
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.s)
  %i.u = lshr i32 %i.t, 16
  %i.v = and i32 %i.u, 4095
  store i32 %i.v, ptr %i.q, align 4, !tbaa !14
  %.sroa.284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 4095, ptr %.sroa.284.0..sroa_idx, align 4, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i32, ptr %i.x, align 1, !tbaa !10
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  %i.aa = lshr i32 %i.z, 20
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !14
  %.sroa.282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 4095, ptr %.sroa.282.0..sroa_idx, align 4, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ad = load i32, ptr %i.ac, align 1, !tbaa !10
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad)
  %i.af = lshr i32 %i.ae, 16
  %i.ag = and i32 %i.af, 4095
  store i32 %i.ag, ptr %i.ab, align 4, !tbaa !14
  %.sroa.280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 4095, ptr %.sroa.280.0..sroa_idx, align 4, !tbaa !14
  %i.ah = icmp eq i32 %.013.i.i, 56
  br i1 %i.ah, label %.thread321, label %.preheader

.preheader:                                       ; preds = %.preheader331
  %invariant.op340 = add nsw i32 %.013.i.i, -13
  %invariant.op341 = add nsw i32 %.013.i.i, -64
  %invariant.op = add nsw i32 %.013.i.i, -8       ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.aj = load i32, ptr %i.ai, align 1, !tbaa !10
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %i.aj) ; 2 uses
  %i.al = lshr i32 %i.ak, 31
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.al, ptr %i.am, align 4, !tbaa !17
  %.not173 = icmp sgt i32 %i.ak, -1
  br i1 %.not173, label %.thread312, label %bb.e

bb.e:                                             ; preds = %.preheader
  %.not326 = icmp samesign ugt i32 %.013.i.i, 57
  br i1 %.not326, label %.lr.ph344, label %.thread321

.lr.ph344:                                        ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ao = load i32, ptr %i.an, align 1, !tbaa !10
  %i.ap = lshr i32 %i.ao, 6
  %i.aq = and i32 %i.ap, 1
  %i.ar = add nuw nsw i32 %i.aq, 1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 44
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph344, %.loopexit
  %indvars.iv356 = phi i64 [ 0, %.lr.ph344 ], [ %indvars.iv.next357, %.loopexit ] ; 2 uses
  %.sroa.33.2342 = phi i32 [ 58, %.lr.ph344 ], [ %.sroa.33.8, %.loopexit ] ; 4 uses
  %i.au = getelementptr inbounds nuw [172 x i8], ptr %i.at, i64 %indvars.iv356 ; 43 uses
  %i.av = icmp sgt i32 %.sroa.33.2342, %invariant.op340
  br i1 %i.av, label %.thread321, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = lshr i32 %.sroa.33.2342, 3
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 1, !tbaa !10
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.az)
  %i.bb = and i32 %.sroa.33.2342, 7
  %i.bc = shl i32 %i.ba, %i.bb
  %i.bd = lshr i32 %i.bc, 20
  %i.be = add nsw i32 %.sroa.33.2342, 12
  %i.bf = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.be) ; 3 uses
  store i32 %i.bd, ptr %i.au, align 4, !tbaa !14
  %.sroa.241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 4095, ptr %.sroa.241.0..sroa_idx, align 4, !tbaa !14
  %i.bg = lshr i32 %i.bf, 3
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 1, !tbaa !10
  %i.bk = tail call i32 @llvm.bswap.i32(i32 %i.bj)
  %i.bl = and i32 %i.bf, 7
  %i.bm = shl i32 %i.bk, %i.bl                    ; 2 uses
  %i.bn = lshr i32 %i.bm, 31
  %i.bo = add nuw i32 %i.bf, 1
  %i.bp = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.bo) ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %i.bn, ptr %i.bq, align 4, !tbaa !20
  %.not174 = icmp sgt i32 %i.bm, -1
  br i1 %.not174, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = icmp sgt i32 %i.bp, %invariant.op341
  br i1 %i.br, label %.thread321, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.bt = lshr i32 %i.bp, 3
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 1, !tbaa !10
  %i.bx = tail call i32 @llvm.bswap.i32(i32 %i.bw)
  %i.by = and i32 %i.bp, 7
  %i.bz = shl i32 %i.bx, %i.by
  %i.ca = lshr i32 %i.bz, 18
  %i.cb = add nuw i32 %i.bp, 14
  %i.cc = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.cb) ; 3 uses
  store i32 %i.ca, ptr %i.bs, align 4, !tbaa !14
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i32 16383, ptr %.sroa.239.0..sroa_idx, align 4, !tbaa !14
  %i.cd = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.ce = lshr i32 %i.cc, 3
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 1, !tbaa !10
  %i.ci = tail call i32 @llvm.bswap.i32(i32 %i.ch)
  %i.cj = and i32 %i.cc, 7
  %i.ck = shl i32 %i.ci, %i.cj
  %i.cl = lshr i32 %i.ck, 26
  %i.cm = add nuw i32 %i.cc, 6
  %i.cn = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.cm) ; 3 uses
  store i32 %i.cl, ptr %i.cd, align 4, !tbaa !14
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i32 10, ptr %.sroa.237.0..sroa_idx, align 4, !tbaa !14
  %i.co = getelementptr inbounds nuw i8, ptr %i.au, i64 28
  %i.cp = lshr i32 %i.cn, 3
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 1, !tbaa !10
  %i.ct = tail call i32 @llvm.bswap.i32(i32 %i.cs)
  %i.cu = and i32 %i.cn, 7
  %i.cv = shl i32 %i.ct, %i.cu
  %i.cw = lshr i32 %i.cv, 22
  %i.cx = add nuw i32 %i.cn, 10
  %i.cy = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.cx) ; 3 uses
  store i32 %i.cw, ptr %i.co, align 4, !tbaa !14
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i32 1023, ptr %.sroa.235.0..sroa_idx, align 4, !tbaa !14
  %i.cz = getelementptr inbounds nuw i8, ptr %i.au, i64 36
  %i.da = lshr i32 %i.cy, 3
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 1, !tbaa !10
  %i.de = tail call i32 @llvm.bswap.i32(i32 %i.dd)
  %i.df = and i32 %i.cy, 7
  %i.dg = shl i32 %i.de, %i.df
  %i.dh = lshr i32 %i.dg, 22
  %i.di = add nuw i32 %i.cy, 10
  %i.dj = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.di) ; 3 uses
  store i32 %i.dh, ptr %i.cz, align 4, !tbaa !14
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store i32 1023, ptr %.sroa.233.0..sroa_idx, align 4, !tbaa !14
  %i.dk = getelementptr inbounds nuw i8, ptr %i.au, i64 44
  %i.dl = lshr i32 %i.dj, 3
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 1, !tbaa !10
  %i.dp = tail call i32 @llvm.bswap.i32(i32 %i.do)
  %i.dq = and i32 %i.dj, 7
  %i.dr = shl i32 %i.dp, %i.dq
  %i.ds = lshr i32 %i.dr, 26
  %i.dt = add nuw i32 %i.dj, 6
  %i.du = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.dt) ; 3 uses
  store i32 %i.ds, ptr %i.dk, align 4, !tbaa !14
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  store i32 10, ptr %.sroa.231.0..sroa_idx, align 4, !tbaa !14
  %i.dv = lshr i32 %i.du, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 1, !tbaa !10
  %i.dz = tail call i32 @llvm.bswap.i32(i32 %i.dy)
  %i.ea = and i32 %i.du, 7
end_hunk_0
