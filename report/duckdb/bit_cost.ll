Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/bit_cost?download=true
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN13duckdb_brotli16kBrotliLog2TableE = external local_unnamed_addr constant [256 x double], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define hidden noundef double @_ZN13duckdb_brotli27BrotliPopulationCostLiteralEPKNS_16HistogramLiteralE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x i64], align 16               ; 11 uses
  %.sroa.0 = alloca [16 x i32], align 16          ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.c = load i64, ptr %i.b, align 8, !tbaa !7    ; 5 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.bc, label %.preheader118

.preheader118:                                    ; preds = %bb.a, %bb.d
  %.091120 = phi i32 [ %.192.1, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %.097119 = phi i64 [ %i.r, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.097119
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.preheader118.1, label %bb.b

bb.b:                                             ; preds = %.preheader118
  %i.g = sext i32 %.091120 to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.g
  store i64 %.097119, ptr %i.h, align 8, !tbaa !11
  %i.i = add nsw i32 %.091120, 1                  ; 2 uses
  %i.j = icmp sgt i32 %.091120, 3
  br i1 %i.j, label %bb.e, label %.preheader118.1

.preheader118.1:                                  ; preds = %.preheader118, %bb.b
  %.192 = phi i32 [ %i.i, %bb.b ], [ %.091120, %.preheader118 ] ; 4 uses
  %i.k = or disjoint i64 %.097119, 1              ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %.not.1 = icmp eq i32 %i.m, 0
  br i1 %.not.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader118.1
  %i.n = sext i32 %.192 to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.n
  store i64 %i.k, ptr %i.o, align 8, !tbaa !11
  %i.p = add nsw i32 %.192, 1                     ; 2 uses
  %i.q = icmp sgt i32 %.192, 3
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader118.1
  %.192.1 = phi i32 [ %i.p, %bb.c ], [ %.192, %.preheader118.1 ] ; 2 uses
  %i.r = add nuw nsw i64 %.097119, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.r, 256
  br i1 %exitcond.not.1, label %bb.e, label %.preheader118, !llvm.loop !12

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.293 = phi i32 [ %i.i, %bb.b ], [ %.192.1, %bb.d ], [ %i.p, %bb.c ]
  switch i32 %.293, label %bb.h [
    i32 1, label %bb.bc
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %.lr.ph
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = uitofp i64 %i.c to double
  %i.t = fadd double %i.s, 2.000000e+01
  br label %bb.bc

bb.g:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.a, align 16, !tbaa !11
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ac = load i64, ptr %i.ab, align 16, !tbaa !11
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3  ; 2 uses
  %i.af = tail call noundef i32 @llvm.umax.i32(i32 %i.aa, i32 %i.ae)
  %i.ag = tail call noundef i32 @llvm.umax.i32(i32 %i.w, i32 %i.af)
  %i.ah = add i32 %i.aa, %i.w
  %i.ai = add i32 %i.ah, %i.ae
  %i.aj = shl i32 %i.ai, 1
  %i.ak = uitofp i32 %i.aj to double
  %i.al = fadd double %i.ak, 2.800000e+01
  %i.am = uitofp i32 %i.ag to double
  %i.an = fsub double %i.al, %i.am
  br label %bb.bc

.lr.ph:                                           ; preds = %bb.e
  %i.ao = load i64, ptr %i.a, align 16, !tbaa !11
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !11
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aw = load i64, ptr %i.av, align 16, !tbaa !11
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !11
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3  ; 2 uses
  %spec.select221 = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.aq) ; 2 uses
  %spec.select222 = tail call i32 @llvm.umax.i32(i32 %i.au, i32 %i.aq) ; 2 uses
  %.sroa.18.5 = tail call i32 @llvm.umin.i32(i32 %i.ay, i32 %spec.select222) ; 2 uses
  %.sroa.0.2 = tail call i32 @llvm.umax.i32(i32 %i.ay, i32 %spec.select222) ; 2 uses
  %.sroa.26.5 = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 %.sroa.0.2) ; 2 uses
  %.sroa.0.3 = tail call i32 @llvm.umax.i32(i32 %i.bc, i32 %.sroa.0.2) ; 2 uses
  %.sroa.18.1 = tail call i32 @llvm.umin.i32(i32 %.sroa.18.5, i32 %spec.select221)
  %.sroa.10.2 = tail call i32 @llvm.umax.i32(i32 %.sroa.18.5, i32 %spec.select221) ; 2 uses
  %.sroa.26.4 = tail call i32 @llvm.umin.i32(i32 %.sroa.26.5, i32 %.sroa.10.2)
  %.sroa.10.4 = tail call i32 @llvm.umax.i32(i32 %.sroa.26.5, i32 %.sroa.10.2)
  %i.bd = add i32 %.sroa.18.1, %.sroa.26.4        ; 2 uses
  %i.be = tail call noundef i32 @llvm.umax.i32(i32 %i.bd, i32 %.sroa.0.3)
  %i.bf = mul i32 %i.bd, 3
  %i.bg = uitofp i32 %i.bf to double
  %i.bh = fadd double %i.bg, 3.700000e+01
  %i.bi = add i32 %.sroa.10.4, %.sroa.0.3
  %i.bj = shl i32 %i.bi, 1
  %i.bk = uitofp i32 %i.bj to double
  %i.bl = fadd double %i.bh, %i.bk
  %i.bm = uitofp i32 %i.be to double
  %i.bn = fsub double %i.bl, %i.bm
  br label %bb.bc

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0, i8 0, i64 64, i1 false)
  %i.bo = icmp ult i64 %i.c, 256
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.c
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit112

bb.j:                                             ; preds = %bb.h
  %i.br = uitofp i64 %i.c to double
  %i.bs = tail call double @log2(double noundef %i.br) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit112

_ZN13duckdb_brotliL8FastLog2Em.exit112:           ; preds = %bb.i, %bb.j
  %.0.i111 = phi double [ %i.bq, %bb.i ], [ %i.bs, %bb.j ]
  br label %bb.k

bb.k:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit112, %.thread
  %.lcssa141 = phi i32 [ 0, %_ZN13duckdb_brotliL8FastLog2Em.exit112 ], [ %.lcssa139, %.thread ] ; 5 uses
  %.087137 = phi i64 [ 1, %_ZN13duckdb_brotliL8FastLog2Em.exit112 ], [ %.2, %.thread ] ; 5 uses
  %.094136 = phi double [ 0.000000e+00, %_ZN13duckdb_brotliL8FastLog2Em.exit112 ], [ %.4, %.thread ] ; 5 uses
  %.3100135 = phi i64 [ 0, %_ZN13duckdb_brotliL8FastLog2Em.exit112 ], [ %.4101, %.thread ] ; 5 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3100135 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3  ; 5 uses
  %.not109 = icmp eq i32 %i.bu, 0
  br i1 %.not109, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.k
  %.not146 = icmp eq i64 %.3100135, 255
  br i1 %.not146, label %.critedge.thread, label %.lr.ph127

bb.l:                                             ; preds = %bb.k
  %i.bv = icmp ult i32 %i.bu, 256
  br i1 %i.bv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bw = zext nneg i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit

bb.n:                                             ; preds = %bb.l
  %i.bz = uitofp i32 %i.bu to double
  %i.ca = tail call double @log2(double noundef %i.bz) #5, !tbaa !3
  %.pre = load i32, ptr %i.bt, align 4, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit

_ZN13duckdb_brotliL8FastLog2Em.exit:              ; preds = %bb.m, %bb.n
  %i.cb = phi i32 [ %i.bu, %bb.m ], [ %.pre, %bb.n ]
  %.0.i = phi double [ %i.by, %bb.m ], [ %i.ca, %bb.n ]
  %i.cc = fsub double %.0.i111, %.0.i             ; 2 uses
  %i.cd = fadd double %i.cc, 5.000000e-01
  %i.ce = fptoui double %i.cd to i64
  %i.cf = uitofp i32 %i.cb to double
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.cc, double %.094136)
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.ce, i64 15) ; 2 uses
  %spec.select = tail call i64 @llvm.umax.i64(i64 %spec.store.select, i64 %.087137)
  %.sroa.0.0..sroa_stride154 = shl nuw nsw i64 %spec.store.select, 2
  %.sroa.0.0..sroa_idx156 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 %.sroa.0.0..sroa_stride154 ; 2 uses
  %i.ch = load i32, ptr %.sroa.0.0..sroa_idx156, align 4, !tbaa !3
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %.sroa.0.0..sroa_idx156, align 4, !tbaa !3
  %i.cj = add nuw nsw i64 %.3100135, 1
  br label %.thread

.lr.ph127:                                        ; preds = %.preheader, %bb.o
  %.0126.in = phi i64 [ %.0126, %bb.o ], [ %.3100135, %.preheader ]
  %.086125 = phi i32 [ %i.cn, %bb.o ], [ 1, %.preheader ] ; 2 uses
  %.0126 = add nuw nsw i64 %.0126.in, 1           ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0126
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.o, label %.critedge

bb.o:                                             ; preds = %.lr.ph127
  %i.cn = add nuw nsw i32 %.086125, 1             ; 2 uses
  %exitcond153.not = icmp eq i64 %.0126, 255
  br i1 %exitcond153.not, label %.critedge, label %.lr.ph127, !llvm.loop !15

.critedge:                                        ; preds = %.lr.ph127, %bb.o
  %.086.lcssa = phi i32 [ %i.cn, %bb.o ], [ %.086125, %.lr.ph127 ] ; 4 uses
  %i.co = zext i32 %.086.lcssa to i64
  %i.cp = add nuw nsw i64 %.3100135, %i.co        ; 3 uses
  %i.cq = icmp eq i64 %i.cp, 256
  br i1 %i.cq, label %.critedge.thread, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.cr = icmp ult i32 %.086.lcssa, 3
  br i1 %i.cr, label %bb.q, label %.lr.ph133.preheader

bb.q:                                             ; preds = %bb.p
  %i.cs = load i32, ptr %.sroa.0, align 16, !tbaa !3
  %i.ct = add i32 %i.cs, %.086.lcssa
  store i32 %i.ct, ptr %.sroa.0, align 16, !tbaa !3
  br label %.thread

.lr.ph133.preheader:                              ; preds = %bb.p
  %i.cu = add i32 %.086.lcssa, -2
  br label %.lr.ph133

.lr.ph133:                                        ; preds = %.lr.ph133.preheader, %.lr.ph133
  %i.cv = phi i32 [ %i.cw, %.lr.ph133 ], [ %.lcssa141, %.lr.ph133.preheader ]
  %.1132 = phi i32 [ %i.cy, %.lr.ph133 ], [ %i.cu, %.lr.ph133.preheader ]
  %.195131 = phi double [ %i.cx, %.lr.ph133 ], [ %.094136, %.lr.ph133.preheader ]
  %i.cw = add i32 %i.cv, 1                        ; 2 uses
  %i.cx = fadd double %.195131, 3.000000e+00      ; 2 uses
  %i.cy = lshr i32 %.1132, 3                      ; 2 uses
  %.not110 = icmp eq i32 %i.cy, 0
  br i1 %.not110, label %.thread, label %.lr.ph133, !llvm.loop !16

.thread:                                          ; preds = %.lr.ph133, %bb.q, %_ZN13duckdb_brotliL8FastLog2Em.exit
  %.lcssa139 = phi i32 [ %.lcssa141, %_ZN13duckdb_brotliL8FastLog2Em.exit ], [ %.lcssa141, %bb.q ], [ %i.cw, %.lr.ph133 ] ; 2 uses
  %.4101 = phi i64 [ %i.cj, %_ZN13duckdb_brotliL8FastLog2Em.exit ], [ %i.cp, %bb.q ], [ %i.cp, %.lr.ph133 ] ; 2 uses
  %.4 = phi double [ %i.cg, %_ZN13duckdb_brotliL8FastLog2Em.exit ], [ %.094136, %bb.q ], [ %i.cx, %.lr.ph133 ] ; 2 uses
  %.2 = phi i64 [ %spec.select, %_ZN13duckdb_brotliL8FastLog2Em.exit ], [ %.087137, %bb.q ], [ %.087137, %.lr.ph133 ] ; 2 uses
  %i.cz = icmp ult i64 %.4101, 256
  br i1 %i.cz, label %bb.k, label %.critedge.thread, !llvm.loop !17

.critedge.thread:                                 ; preds = %.critedge, %.thread, %.preheader
  %i.da = phi i32 [ %.lcssa141, %.preheader ], [ %.lcssa139, %.thread ], [ %.lcssa141, %.critedge ] ; 3 uses
  %.094.lcssa = phi double [ %.094136, %.preheader ], [ %.4, %.thread ], [ %.094136, %.critedge ]
  %.087.lcssa = phi i64 [ %.087137, %.preheader ], [ %.2, %.thread ], [ %.087137, %.critedge ]
  %i.db = load i32, ptr %.sroa.0, align 16, !tbaa !3 ; 4 uses
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = icmp ult i32 %i.db, 256
  br i1 %i.dd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.critedge.thread
  %i.de = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.dc
  %i.df = load double, ptr %i.de, align 8, !tbaa !14
  %.pre166 = uitofp nneg i32 %i.db to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i

bb.s:                                             ; preds = %.critedge.thread
  %i.dg = uitofp i32 %i.db to double              ; 2 uses
  %i.dh = tail call double @log2(double noundef %i.dg) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i

_ZN13duckdb_brotliL8FastLog2Em.exit31.i:          ; preds = %bb.s, %bb.r
  %.pre-phi = phi double [ %i.dg, %bb.s ], [ %.pre166, %bb.r ]
  %.0.i30.i = phi double [ %i.dh, %bb.s ], [ %i.df, %bb.r ]
  %i.di = fneg double %.pre-phi
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.di, double %.0.i30.i, double 0.000000e+00)
  %.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %i.dk = load i32, ptr %.ptr.i, align 4, !tbaa !3 ; 3 uses
  %i.dl = zext i32 %i.dk to i64                   ; 2 uses
  %i.dm = add nuw nsw i64 %i.dc, %i.dl
  %i.dn = uitofp i32 %i.dk to double              ; 2 uses
  %i.do = icmp ult i32 %i.dk, 256
  br i1 %i.do, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.dl
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i

bb.u:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i
  %i.dr = tail call double @log2(double noundef %i.dn) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i

_ZN13duckdb_brotliL8FastLog2Em.exit29.i:          ; preds = %bb.u, %bb.t
  %.0.i28.i = phi double [ %i.dq, %bb.t ], [ %i.dr, %bb.u ]
  %i.ds = fneg double %i.dn
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.ds, double %.0.i28.i, double %i.dj)
  %.025.ptr.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %i.du = load i32, ptr %.025.ptr.i.1, align 8, !tbaa !3 ; 4 uses
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %i.dw = icmp ult i32 %i.du, 256
  br i1 %i.dw, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i
  %i.dx = uitofp i32 %i.du to double              ; 2 uses
  %i.dy = tail call double @log2(double noundef %i.dx) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.1

bb.w:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.dv
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !14
  %.pre167 = uitofp nneg i32 %i.du to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.1

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.1:        ; preds = %bb.w, %bb.v
  %.pre-phi168 = phi double [ %.pre167, %bb.w ], [ %i.dx, %bb.v ]
  %.0.i30.i.1 = phi double [ %i.ea, %bb.w ], [ %i.dy, %bb.v ]
  %i.eb = fneg double %.pre-phi168
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.eb, double %.0.i30.i.1, double %i.dt)
  %i.ed = add nuw nsw i64 %i.dm, %i.dv
  %.ptr.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 12
  %i.ee = load i32, ptr %.ptr.i.1, align 4, !tbaa !3 ; 3 uses
  %i.ef = zext i32 %i.ee to i64                   ; 2 uses
  %i.eg = add nuw nsw i64 %i.ed, %i.ef
  %i.eh = uitofp i32 %i.ee to double              ; 2 uses
  %i.ei = icmp ult i32 %i.ee, 256
  br i1 %i.ei, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.1
  %i.ej = tail call double @log2(double noundef %i.eh) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.1

bb.y:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.1
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.ef
  %i.el = load double, ptr %i.ek, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.1

_ZN13duckdb_brotliL8FastLog2Em.exit29.i.1:        ; preds = %bb.y, %bb.x
  %.0.i28.i.1 = phi double [ %i.el, %bb.y ], [ %i.ej, %bb.x ]
  %i.em = fneg double %i.eh
  %i.en = tail call double @llvm.fmuladd.f64(double %i.em, double %.0.i28.i.1, double %i.ec)
  %.025.ptr.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %i.eo = load i32, ptr %.025.ptr.i.2, align 16, !tbaa !3 ; 4 uses
  %i.ep = zext i32 %i.eo to i64                   ; 2 uses
  %i.eq = icmp ult i32 %i.eo, 256
  br i1 %i.eq, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.1
  %i.er = uitofp i32 %i.eo to double              ; 2 uses
  %i.es = tail call double @log2(double noundef %i.er) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.2

bb.aa:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.1
  %i.et = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.ep
  %i.eu = load double, ptr %i.et, align 8, !tbaa !14
  %.pre169 = uitofp nneg i32 %i.eo to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.2

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.2:        ; preds = %bb.aa, %bb.z
  %.pre-phi170 = phi double [ %.pre169, %bb.aa ], [ %i.er, %bb.z ]
  %.0.i30.i.2 = phi double [ %i.eu, %bb.aa ], [ %i.es, %bb.z ]
  %i.ev = fneg double %.pre-phi170
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.ev, double %.0.i30.i.2, double %i.en)
  %i.ex = add nuw nsw i64 %i.eg, %i.ep
  %.ptr.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 20
  %i.ey = load i32, ptr %.ptr.i.2, align 4, !tbaa !3 ; 3 uses
  %i.ez = zext i32 %i.ey to i64                   ; 2 uses
  %i.fa = add nuw nsw i64 %i.ex, %i.ez
  %i.fb = uitofp i32 %i.ey to double              ; 2 uses
  %i.fc = icmp ult i32 %i.ey, 256
  br i1 %i.fc, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.2
  %i.fd = tail call double @log2(double noundef %i.fb) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.2

bb.ac:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.2
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.ez
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.2

_ZN13duckdb_brotliL8FastLog2Em.exit29.i.2:        ; preds = %bb.ac, %bb.ab
  %.0.i28.i.2 = phi double [ %i.ff, %bb.ac ], [ %i.fd, %bb.ab ]
  %i.fg = fneg double %i.fb
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.fg, double %.0.i28.i.2, double %i.ew)
  %.025.ptr.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %i.fi = load i32, ptr %.025.ptr.i.3, align 8, !tbaa !3 ; 4 uses
  %i.fj = zext i32 %i.fi to i64                   ; 2 uses
  %i.fk = icmp ult i32 %i.fi, 256
  br i1 %i.fk, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.2
  %i.fl = uitofp i32 %i.fi to double              ; 2 uses
  %i.fm = tail call double @log2(double noundef %i.fl) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.3

bb.ae:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.2
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.fj
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !14
  %.pre171 = uitofp nneg i32 %i.fi to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.3

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.3:        ; preds = %bb.ae, %bb.ad
  %.pre-phi172 = phi double [ %.pre171, %bb.ae ], [ %i.fl, %bb.ad ]
  %.0.i30.i.3 = phi double [ %i.fo, %bb.ae ], [ %i.fm, %bb.ad ]
  %i.fp = fneg double %.pre-phi172
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.fp, double %.0.i30.i.3, double %i.fh)
  %i.fr = add nuw nsw i64 %i.fa, %i.fj
  %.ptr.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 28
  %i.fs = load i32, ptr %.ptr.i.3, align 4, !tbaa !3 ; 3 uses
  %i.ft = zext i32 %i.fs to i64                   ; 2 uses
  %i.fu = add nuw nsw i64 %i.fr, %i.ft
  %i.fv = uitofp i32 %i.fs to double              ; 2 uses
  %i.fw = icmp ult i32 %i.fs, 256
  br i1 %i.fw, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.3
  %i.fx = tail call double @log2(double noundef %i.fv) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.3

bb.ag:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.3
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.ft
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.3

_ZN13duckdb_brotliL8FastLog2Em.exit29.i.3:        ; preds = %bb.ag, %bb.af
  %.0.i28.i.3 = phi double [ %i.fz, %bb.ag ], [ %i.fx, %bb.af ]
  %i.ga = fneg double %i.fv
  %i.gb = tail call double @llvm.fmuladd.f64(double %i.ga, double %.0.i28.i.3, double %i.fq)
  %.025.ptr.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  %i.gc = load i32, ptr %.025.ptr.i.4, align 16, !tbaa !3 ; 4 uses
  %i.gd = zext i32 %i.gc to i64                   ; 2 uses
  %i.ge = icmp ult i32 %i.gc, 256
  br i1 %i.ge, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.3
  %i.gf = uitofp i32 %i.gc to double              ; 2 uses
  %i.gg = tail call double @log2(double noundef %i.gf) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.4

bb.ai:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.3
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.gd
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !14
  %.pre173 = uitofp nneg i32 %i.gc to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.4

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.4:        ; preds = %bb.ai, %bb.ah
  %.pre-phi174 = phi double [ %.pre173, %bb.ai ], [ %i.gf, %bb.ah ]
  %.0.i30.i.4 = phi double [ %i.gi, %bb.ai ], [ %i.gg, %bb.ah ]
  %i.gj = fneg double %.pre-phi174
  %i.gk = tail call double @llvm.fmuladd.f64(double %i.gj, double %.0.i30.i.4, double %i.gb)
  %i.gl = add nuw nsw i64 %i.fu, %i.gd
  %.ptr.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 36
  %i.gm = load i32, ptr %.ptr.i.4, align 4, !tbaa !3 ; 3 uses
  %i.gn = zext i32 %i.gm to i64                   ; 2 uses
  %i.go = add nuw nsw i64 %i.gl, %i.gn
  %i.gp = uitofp i32 %i.gm to double              ; 2 uses
  %i.gq = icmp ult i32 %i.gm, 256
  br i1 %i.gq, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.4
  %i.gr = tail call double @log2(double noundef %i.gp) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.4

bb.ak:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.4
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.gn
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.4

_ZN13duckdb_brotliL8FastLog2Em.exit29.i.4:        ; preds = %bb.ak, %bb.aj
  %.0.i28.i.4 = phi double [ %i.gt, %bb.ak ], [ %i.gr, %bb.aj ]
  %i.gu = fneg double %i.gp
  %i.gv = tail call double @llvm.fmuladd.f64(double %i.gu, double %.0.i28.i.4, double %i.gk)
  %.025.ptr.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 40
  %i.gw = load i32, ptr %.025.ptr.i.5, align 8, !tbaa !3 ; 4 uses
  %i.gx = zext i32 %i.gw to i64                   ; 2 uses
  %i.gy = icmp ult i32 %i.gw, 256
  br i1 %i.gy, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.4
  %i.gz = uitofp i32 %i.gw to double              ; 2 uses
  %i.ha = tail call double @log2(double noundef %i.gz) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.5

bb.am:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.4
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.gx
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !14
  %.pre175 = uitofp nneg i32 %i.gw to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.5

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.5:        ; preds = %bb.am, %bb.al
  %.pre-phi176 = phi double [ %.pre175, %bb.am ], [ %i.gz, %bb.al ]
  %.0.i30.i.5 = phi double [ %i.hc, %bb.am ], [ %i.ha, %bb.al ]
  %i.hd = fneg double %.pre-phi176
  %i.he = tail call double @llvm.fmuladd.f64(double %i.hd, double %.0.i30.i.5, double %i.gv)
  %i.hf = add nuw nsw i64 %i.go, %i.gx
  %.ptr.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 44
  %i.hg = load i32, ptr %.ptr.i.5, align 4, !tbaa !3 ; 3 uses
  %i.hh = zext i32 %i.hg to i64                   ; 2 uses
  %i.hi = add nuw nsw i64 %i.hf, %i.hh
  %i.hj = uitofp i32 %i.hg to double              ; 2 uses
  %i.hk = icmp ult i32 %i.hg, 256
  br i1 %i.hk, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.5
  %i.hl = tail call double @log2(double noundef %i.hj) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.5

bb.ao:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.5
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.hh
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.5

_ZN13duckdb_brotliL8FastLog2Em.exit29.i.5:        ; preds = %bb.ao, %bb.an
  %.0.i28.i.5 = phi double [ %i.hn, %bb.ao ], [ %i.hl, %bb.an ]
  %i.ho = fneg double %i.hj
  %i.hp = tail call double @llvm.fmuladd.f64(double %i.ho, double %.0.i28.i.5, double %i.he)
  %.025.ptr.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  %i.hq = load i32, ptr %.025.ptr.i.6, align 16, !tbaa !3 ; 4 uses
  %i.hr = zext i32 %i.hq to i64                   ; 2 uses
  %i.hs = icmp ult i32 %i.hq, 256
  br i1 %i.hs, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.5
  %i.ht = uitofp i32 %i.hq to double              ; 2 uses
  %i.hu = tail call double @log2(double noundef %i.ht) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.6

bb.aq:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.5
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.hr
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !14
  %.pre177 = uitofp nneg i32 %i.hq to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.6

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.6:        ; preds = %bb.aq, %bb.ap
  %.pre-phi178 = phi double [ %.pre177, %bb.aq ], [ %i.ht, %bb.ap ]
  %.0.i30.i.6 = phi double [ %i.hw, %bb.aq ], [ %i.hu, %bb.ap ]
  %i.hx = fneg double %.pre-phi178
  %i.hy = tail call double @llvm.fmuladd.f64(double %i.hx, double %.0.i30.i.6, double %i.hp)
  %i.hz = add nuw nsw i64 %i.hi, %i.hr
  %.ptr.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 52
  %i.ia = load i32, ptr %.ptr.i.6, align 4, !tbaa !3 ; 3 uses
  %i.ib = zext i32 %i.ia to i64                   ; 2 uses
  %i.ic = add nuw nsw i64 %i.hz, %i.ib
  %i.id = uitofp i32 %i.ia to double              ; 2 uses
  %i.ie = icmp ult i32 %i.ia, 256
  br i1 %i.ie, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.6
  %i.if = tail call double @log2(double noundef %i.id) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.6

bb.as:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.6
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.ib
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.6

_ZN13duckdb_brotliL8FastLog2Em.exit29.i.6:        ; preds = %bb.as, %bb.ar
  %.0.i28.i.6 = phi double [ %i.ih, %bb.as ], [ %i.if, %bb.ar ]
  %i.ii = fneg double %i.id
  %i.ij = tail call double @llvm.fmuladd.f64(double %i.ii, double %.0.i28.i.6, double %i.hy)
  %.025.ptr.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 56
  %i.ik = load i32, ptr %.025.ptr.i.7, align 8, !tbaa !3 ; 4 uses
  %i.il = zext i32 %i.ik to i64                   ; 2 uses
  %i.im = icmp ult i32 %i.ik, 256
  br i1 %i.im, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.6
  %i.in = uitofp i32 %i.ik to double              ; 2 uses
  %i.io = tail call double @log2(double noundef %i.in) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.7

bb.au:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.6
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.il
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !14
  %.pre179 = uitofp nneg i32 %i.ik to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.7

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.7:        ; preds = %bb.au, %bb.at
  %.pre-phi180 = phi double [ %.pre179, %bb.au ], [ %i.in, %bb.at ]
  %.0.i30.i.7 = phi double [ %i.iq, %bb.au ], [ %i.io, %bb.at ]
  %i.ir = fneg double %.pre-phi180
  %i.is = tail call double @llvm.fmuladd.f64(double %i.ir, double %.0.i30.i.7, double %i.ij)
  %i.it = add nuw nsw i64 %i.ic, %i.il
  %.ptr.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 60
  %i.iu = load i32, ptr %.ptr.i.7, align 4, !tbaa !3 ; 3 uses
  %i.iv = zext i32 %i.iu to i64                   ; 2 uses
  %i.iw = add nuw nsw i64 %i.it, %i.iv
  %i.ix = uitofp i32 %i.iu to double              ; 2 uses
  %i.iy = icmp ult i32 %i.iu, 256
  br i1 %i.iy, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.7
  %i.iz = tail call double @log2(double noundef %i.ix) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.8

bb.aw:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.7
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.iv
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.8

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.8:        ; preds = %bb.aw, %bb.av
  %.0.i28.i.7 = phi double [ %i.jb, %bb.aw ], [ %i.iz, %bb.av ]
  %i.jc = fneg double %i.ix
  %i.jd = tail call double @llvm.fmuladd.f64(double %i.jc, double %.0.i28.i.7, double %i.is)
  %i.je = load double, ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, align 16, !tbaa !14
  %i.jf = tail call double @llvm.fmuladd.f64(double %i.je, double -0.000000e+00, double %i.jd)
  %i.jg = zext i32 %i.da to i64                   ; 2 uses
  %i.jh = add nuw nsw i64 %i.iw, %i.jg            ; 4 uses
  %i.ji = uitofp i32 %i.da to double              ; 2 uses
  %i.jj = icmp ult i32 %i.da, 256
  br i1 %i.jj, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.8
  %i.jk = tail call double @log2(double noundef %i.ji) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.8

bb.ay:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.8
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.jg
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.8

_ZN13duckdb_brotliL8FastLog2Em.exit29.i.8:        ; preds = %bb.ay, %bb.ax
  %.0.i28.i.8 = phi double [ %i.jm, %bb.ay ], [ %i.jk, %bb.ax ]
  %i.jn = fneg double %i.ji
  %i.jo = tail call double @llvm.fmuladd.f64(double %i.jn, double %.0.i28.i.8, double %i.jf) ; 2 uses
  %i.jp = shl nuw nsw i64 %.087.lcssa, 1
  %i.jq = add nuw nsw i64 %i.jp, 18
  %i.jr = uitofp nneg i64 %i.jq to double
  %i.js = fadd double %.094.lcssa, %i.jr
  %.not.i = icmp eq i64 %i.jh, 0
  br i1 %.not.i, label %_ZN13duckdb_brotliL14ShannonEntropyEPKjmPm.exit, label %bb.az

bb.az:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.8
  %i.jt = uitofp nneg i64 %i.jh to double         ; 3 uses
  %i.ju = icmp samesign ult i64 %i.jh, 256
  br i1 %i.ju, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.jh
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i

bb.bb:                                            ; preds = %bb.az
  %i.jx = tail call double @log2(double noundef %i.jt) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i

_ZN13duckdb_brotliL8FastLog2Em.exit.i:            ; preds = %bb.bb, %bb.ba
  %.0.i.i = phi double [ %i.jw, %bb.ba ], [ %i.jx, %bb.bb ]
  %i.jy = tail call double @llvm.fmuladd.f64(double %i.jt, double %.0.i.i, double %i.jo)
  br label %_ZN13duckdb_brotliL14ShannonEntropyEPKjmPm.exit

_ZN13duckdb_brotliL14ShannonEntropyEPKjmPm.exit:  ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.8, %_ZN13duckdb_brotliL8FastLog2Em.exit.i
  %.pre-phi182 = phi double [ %i.jt, %_ZN13duckdb_brotliL8FastLog2Em.exit.i ], [ 0.000000e+00, %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.8 ] ; 2 uses
  %.2.i = phi double [ %i.jy, %_ZN13duckdb_brotliL8FastLog2Em.exit.i ], [ %i.jo, %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.8 ] ; 2 uses
  %i.jz = fcmp olt double %.2.i, %.pre-phi182
  %.0.i113 = select i1 %i.jz, double %.pre-phi182, double %.2.i
  %i.ka = fadd double %i.js, %.0.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.e, %bb.a, %_ZN13duckdb_brotliL14ShannonEntropyEPKjmPm.exit, %.lr.ph, %bb.g, %bb.f
  %.089 = phi double [ %i.ka, %_ZN13duckdb_brotliL14ShannonEntropyEPKjmPm.exit ], [ 1.200000e+01, %bb.a ], [ %i.t, %bb.f ], [ %i.an, %bb.g ], [ %i.bn, %.lr.ph ], [ 1.200000e+01, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret double %.089
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define hidden noundef double @_ZN13duckdb_brotli27BrotliPopulationCostCommandEPKNS_16HistogramCommandE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x i64], align 16               ; 11 uses
  %.sroa.0 = alloca [16 x i32], align 16          ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18   ; 5 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.bc, label %.preheader118

.preheader118:                                    ; preds = %bb.a, %bb.d
  %.091120 = phi i32 [ %.192.1, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %.097119 = phi i64 [ %i.r, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.097119
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.preheader118.1, label %bb.b

bb.b:                                             ; preds = %.preheader118
  %i.g = sext i32 %.091120 to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.g
  store i64 %.097119, ptr %i.h, align 8, !tbaa !11
  %i.i = add nsw i32 %.091120, 1                  ; 2 uses
  %i.j = icmp sgt i32 %.091120, 3
  br i1 %i.j, label %bb.e, label %.preheader118.1

.preheader118.1:                                  ; preds = %.preheader118, %bb.b
  %.192 = phi i32 [ %i.i, %bb.b ], [ %.091120, %.preheader118 ] ; 4 uses
  %i.k = or disjoint i64 %.097119, 1              ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %.not.1 = icmp eq i32 %i.m, 0
  br i1 %.not.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader118.1
  %i.n = sext i32 %.192 to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.n
  store i64 %i.k, ptr %i.o, align 8, !tbaa !11
  %i.p = add nsw i32 %.192, 1                     ; 2 uses
  %i.q = icmp sgt i32 %.192, 3
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader118.1
  %.192.1 = phi i32 [ %i.p, %bb.c ], [ %.192, %.preheader118.1 ] ; 2 uses
  %i.r = add nuw nsw i64 %.097119, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.r, 704
  br i1 %exitcond.not.1, label %bb.e, label %.preheader118, !llvm.loop !20

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.293 = phi i32 [ %i.i, %bb.b ], [ %.192.1, %bb.d ], [ %i.p, %bb.c ]
  switch i32 %.293, label %bb.h [
    i32 1, label %bb.bc
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %.lr.ph
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = uitofp i64 %i.c to double
  %i.t = fadd double %i.s, 2.000000e+01
  br label %bb.bc

bb.g:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.a, align 16, !tbaa !11
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ac = load i64, ptr %i.ab, align 16, !tbaa !11
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3  ; 2 uses
  %i.af = tail call noundef i32 @llvm.umax.i32(i32 %i.aa, i32 %i.ae)
  %i.ag = tail call noundef i32 @llvm.umax.i32(i32 %i.w, i32 %i.af)
  %i.ah = add i32 %i.aa, %i.w
  %i.ai = add i32 %i.ah, %i.ae
  %i.aj = shl i32 %i.ai, 1
  %i.ak = uitofp i32 %i.aj to double
  %i.al = fadd double %i.ak, 2.800000e+01
  %i.am = uitofp i32 %i.ag to double
  %i.an = fsub double %i.al, %i.am
  br label %bb.bc

.lr.ph:                                           ; preds = %bb.e
  %i.ao = load i64, ptr %i.a, align 16, !tbaa !11
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !11
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aw = load i64, ptr %i.av, align 16, !tbaa !11
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !11
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3  ; 2 uses
  %spec.select217 = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.aq) ; 2 uses
  %spec.select218 = tail call i32 @llvm.umax.i32(i32 %i.au, i32 %i.aq) ; 2 uses
  %.sroa.18.5 = tail call i32 @llvm.umin.i32(i32 %i.ay, i32 %spec.select218) ; 2 uses
  %.sroa.0.2 = tail call i32 @llvm.umax.i32(i32 %i.ay, i32 %spec.select218) ; 2 uses
  %.sroa.26.5 = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 %.sroa.0.2) ; 2 uses
  %.sroa.0.3 = tail call i32 @llvm.umax.i32(i32 %i.bc, i32 %.sroa.0.2) ; 2 uses
  %.sroa.18.1 = tail call i32 @llvm.umin.i32(i32 %.sroa.18.5, i32 %spec.select217)
  %.sroa.10.2 = tail call i32 @llvm.umax.i32(i32 %.sroa.18.5, i32 %spec.select217) ; 2 uses
  %.sroa.26.4 = tail call i32 @llvm.umin.i32(i32 %.sroa.26.5, i32 %.sroa.10.2)
  %.sroa.10.4 = tail call i32 @llvm.umax.i32(i32 %.sroa.26.5, i32 %.sroa.10.2)
  %i.bd = add i32 %.sroa.18.1, %.sroa.26.4        ; 2 uses
  %i.be = tail call noundef i32 @llvm.umax.i32(i32 %i.bd, i32 %.sroa.0.3)
  %i.bf = mul i32 %i.bd, 3
  %i.bg = uitofp i32 %i.bf to double
  %i.bh = fadd double %i.bg, 3.700000e+01
  %i.bi = add i32 %.sroa.10.4, %.sroa.0.3
  %i.bj = shl i32 %i.bi, 1
  %i.bk = uitofp i32 %i.bj to double
  %i.bl = fadd double %i.bh, %i.bk
  %i.bm = uitofp i32 %i.be to double
  %i.bn = fsub double %i.bl, %i.bm
  br label %bb.bc

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0, i8 0, i64 64, i1 false)
  %i.bo = icmp ult i64 %i.c, 256
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.c
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit112

bb.j:                                             ; preds = %bb.h
  %i.br = uitofp i64 %i.c to double
  %i.bs = tail call double @log2(double noundef %i.br) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit112

_ZN13duckdb_brotliL8FastLog2Em.exit112:           ; preds = %bb.i, %bb.j
  %.0.i111 = phi double [ %i.bq, %bb.i ], [ %i.bs, %bb.j ]
  br label %bb.k

bb.k:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit112, %.thread
  %.lcssa141 = phi i32 [ 0, %_ZN13duckdb_brotliL8FastLog2Em.exit112 ], [ %.lcssa139, %.thread ] ; 5 uses
  %.087137 = phi i64 [ 1, %_ZN13duckdb_brotliL8FastLog2Em.exit112 ], [ %.2, %.thread ] ; 5 uses
  %.094136 = phi double [ 0.000000e+00, %_ZN13duckdb_brotliL8FastLog2Em.exit112 ], [ %.4, %.thread ] ; 5 uses
  %.3100135 = phi i64 [ 0, %_ZN13duckdb_brotliL8FastLog2Em.exit112 ], [ %.4101, %.thread ] ; 7 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3100135 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3  ; 5 uses
  %.not109 = icmp eq i32 %i.bu, 0
  br i1 %.not109, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.k
  %i.bv = icmp samesign ult i64 %.3100135, 703
  br i1 %i.bv, label %.lr.ph127.preheader, label %.critedge.thread

.lr.ph127.preheader:                              ; preds = %.preheader
  %i.bw = trunc nuw nsw i64 %.3100135 to i32
  %i.bx = sub nuw nsw i32 704, %i.bw
  br label %.lr.ph127

bb.l:                                             ; preds = %bb.k
  %i.by = icmp ult i32 %i.bu, 256
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bz = zext nneg i32 %i.bu to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit

bb.n:                                             ; preds = %bb.l
  %i.cc = uitofp i32 %i.bu to double
  %i.cd = tail call double @log2(double noundef %i.cc) #5, !tbaa !3
  %.pre = load i32, ptr %i.bt, align 4, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit

_ZN13duckdb_brotliL8FastLog2Em.exit:              ; preds = %bb.m, %bb.n
  %i.ce = phi i32 [ %i.bu, %bb.m ], [ %.pre, %bb.n ]
  %.0.i = phi double [ %i.cb, %bb.m ], [ %i.cd, %bb.n ]
  %i.cf = fsub double %.0.i111, %.0.i             ; 2 uses
  %i.cg = fadd double %i.cf, 5.000000e-01
  %i.ch = fptoui double %i.cg to i64
  %i.ci = uitofp i32 %i.ce to double
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.cf, double %.094136)
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 15) ; 2 uses
  %spec.select = tail call i64 @llvm.umax.i64(i64 %spec.store.select, i64 %.087137)
  %.sroa.0.0..sroa_stride153 = shl nuw nsw i64 %spec.store.select, 2
  %.sroa.0.0..sroa_idx155 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 %.sroa.0.0..sroa_stride153 ; 2 uses
  %i.ck = load i32, ptr %.sroa.0.0..sroa_idx155, align 4, !tbaa !3
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %.sroa.0.0..sroa_idx155, align 4, !tbaa !3
  %i.cm = add nuw nsw i64 %.3100135, 1
  br label %.thread

.lr.ph127:                                        ; preds = %.lr.ph127.preheader, %bb.o
  %.0126.in = phi i64 [ %.0126, %bb.o ], [ %.3100135, %.lr.ph127.preheader ]
  %.086125 = phi i32 [ %i.cq, %bb.o ], [ 1, %.lr.ph127.preheader ] ; 2 uses
  %.0126 = add nuw nsw i64 %.0126.in, 1           ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0126
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.o, label %.critedge

bb.o:                                             ; preds = %.lr.ph127
  %i.cq = add nuw nsw i32 %.086125, 1
  %exitcond152.not = icmp eq i64 %.0126, 703
  br i1 %exitcond152.not, label %.critedge, label %.lr.ph127, !llvm.loop !21

.critedge:                                        ; preds = %.lr.ph127, %bb.o
  %.086.lcssa = phi i32 [ %i.bx, %bb.o ], [ %.086125, %.lr.ph127 ] ; 4 uses
  %i.cr = zext nneg i32 %.086.lcssa to i64
  %i.cs = add nuw nsw i64 %.3100135, %i.cr        ; 3 uses
  %i.ct = icmp eq i64 %i.cs, 704
  br i1 %i.ct, label %bb.q, label %bb.p

.critedge.thread:                                 ; preds = %.preheader
  %i.cu = add nuw nsw i64 %.3100135, 1            ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 704
  br i1 %i.cv, label %bb.q, label %.thread213

bb.p:                                             ; preds = %.critedge
  %i.cw = icmp samesign ult i32 %.086.lcssa, 3
  br i1 %i.cw, label %.thread213, label %.lr.ph133.preheader

.thread213:                                       ; preds = %.critedge.thread, %bb.p
  %.086.lcssa212215 = phi i32 [ %.086.lcssa, %bb.p ], [ 1, %.critedge.thread ]
  %i.cx = phi i64 [ %i.cs, %bb.p ], [ %i.cu, %.critedge.thread ]
  %i.cy = load i32, ptr %.sroa.0, align 16, !tbaa !3
  %i.cz = add i32 %i.cy, %.086.lcssa212215
  store i32 %i.cz, ptr %.sroa.0, align 16, !tbaa !3
  br label %.thread

.lr.ph133.preheader:                              ; preds = %bb.p
  %i.da = add nsw i32 %.086.lcssa, -2
  br label %.lr.ph133

.lr.ph133:                                        ; preds = %.lr.ph133.preheader, %.lr.ph133
  %i.db = phi i32 [ %i.dc, %.lr.ph133 ], [ %.lcssa141, %.lr.ph133.preheader ]
  %.1132 = phi i32 [ %i.de, %.lr.ph133 ], [ %i.da, %.lr.ph133.preheader ]
  %.195131 = phi double [ %i.dd, %.lr.ph133 ], [ %.094136, %.lr.ph133.preheader ]
  %i.dc = add i32 %i.db, 1                        ; 2 uses
  %i.dd = fadd double %.195131, 3.000000e+00      ; 2 uses
  %i.de = lshr i32 %.1132, 3                      ; 2 uses
  %.not110 = icmp eq i32 %i.de, 0
  br i1 %.not110, label %.thread, label %.lr.ph133, !llvm.loop !22

.thread:                                          ; preds = %.lr.ph133, %.thread213, %_ZN13duckdb_brotliL8FastLog2Em.exit
  %.lcssa139 = phi i32 [ %.lcssa141, %_ZN13duckdb_brotliL8FastLog2Em.exit ], [ %.lcssa141, %.thread213 ], [ %i.dc, %.lr.ph133 ] ; 2 uses
  %.4101 = phi i64 [ %i.cm, %_ZN13duckdb_brotliL8FastLog2Em.exit ], [ %i.cx, %.thread213 ], [ %i.cs, %.lr.ph133 ] ; 2 uses
  %.4 = phi double [ %i.cj, %_ZN13duckdb_brotliL8FastLog2Em.exit ], [ %.094136, %.thread213 ], [ %i.dd, %.lr.ph133 ] ; 2 uses
  %.2 = phi i64 [ %spec.select, %_ZN13duckdb_brotliL8FastLog2Em.exit ], [ %.087137, %.thread213 ], [ %.087137, %.lr.ph133 ] ; 2 uses
  %i.df = icmp ult i64 %.4101, 704
  br i1 %i.df, label %bb.k, label %bb.q, !llvm.loop !23

bb.q:                                             ; preds = %.critedge.thread, %.critedge, %.thread
  %i.dg = phi i32 [ %.lcssa141, %.critedge ], [ %.lcssa139, %.thread ], [ %.lcssa141, %.critedge.thread ] ; 3 uses
  %.094.lcssa = phi double [ %.094136, %.critedge ], [ %.4, %.thread ], [ %.094136, %.critedge.thread ]
  %.087.lcssa = phi i64 [ %.087137, %.critedge ], [ %.2, %.thread ], [ %.087137, %.critedge.thread ]
  %i.dh = load i32, ptr %.sroa.0, align 16, !tbaa !3 ; 4 uses
  %i.di = zext i32 %i.dh to i64                   ; 2 uses
  %i.dj = icmp ult i32 %i.dh, 256
  br i1 %i.dj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.di
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !14
  %.pre165 = uitofp nneg i32 %i.dh to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i

bb.s:                                             ; preds = %bb.q
  %i.dm = uitofp i32 %i.dh to double              ; 2 uses
  %i.dn = tail call double @log2(double noundef %i.dm) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i

_ZN13duckdb_brotliL8FastLog2Em.exit31.i:          ; preds = %bb.s, %bb.r
  %.pre-phi = phi double [ %i.dm, %bb.s ], [ %.pre165, %bb.r ]
  %.0.i30.i = phi double [ %i.dn, %bb.s ], [ %i.dl, %bb.r ]
  %i.do = fneg double %.pre-phi
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.do, double %.0.i30.i, double 0.000000e+00)
  %.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %i.dq = load i32, ptr %.ptr.i, align 4, !tbaa !3 ; 3 uses
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %i.ds = add nuw nsw i64 %i.di, %i.dr
  %i.dt = uitofp i32 %i.dq to double              ; 2 uses
  %i.du = icmp ult i32 %i.dq, 256
  br i1 %i.du, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.dr
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i

bb.u:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i
  %i.dx = tail call double @log2(double noundef %i.dt) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i

_ZN13duckdb_brotliL8FastLog2Em.exit29.i:          ; preds = %bb.u, %bb.t
  %.0.i28.i = phi double [ %i.dw, %bb.t ], [ %i.dx, %bb.u ]
  %i.dy = fneg double %i.dt
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.dy, double %.0.i28.i, double %i.dp)
  %.025.ptr.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %i.ea = load i32, ptr %.025.ptr.i.1, align 8, !tbaa !3 ; 4 uses
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %i.ec = icmp ult i32 %i.ea, 256
  br i1 %i.ec, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i
  %i.ed = uitofp i32 %i.ea to double              ; 2 uses
  %i.ee = tail call double @log2(double noundef %i.ed) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.1

bb.w:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.eb
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !14
  %.pre166 = uitofp nneg i32 %i.ea to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.1

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.1:        ; preds = %bb.w, %bb.v
  %.pre-phi167 = phi double [ %.pre166, %bb.w ], [ %i.ed, %bb.v ]
  %.0.i30.i.1 = phi double [ %i.eg, %bb.w ], [ %i.ee, %bb.v ]
  %i.eh = fneg double %.pre-phi167
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.eh, double %.0.i30.i.1, double %i.dz)
  %i.ej = add nuw nsw i64 %i.ds, %i.eb
  %.ptr.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 12
  %i.ek = load i32, ptr %.ptr.i.1, align 4, !tbaa !3 ; 3 uses
  %i.el = zext i32 %i.ek to i64                   ; 2 uses
  %i.em = add nuw nsw i64 %i.ej, %i.el
  %i.en = uitofp i32 %i.ek to double              ; 2 uses
  %i.eo = icmp ult i32 %i.ek, 256
  br i1 %i.eo, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.1
  %i.ep = tail call double @log2(double noundef %i.en) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.1

bb.y:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.1
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.el
  %i.er = load double, ptr %i.eq, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.1

_ZN13duckdb_brotliL8FastLog2Em.exit29.i.1:        ; preds = %bb.y, %bb.x
  %.0.i28.i.1 = phi double [ %i.er, %bb.y ], [ %i.ep, %bb.x ]
  %i.es = fneg double %i.en
  %i.et = tail call double @llvm.fmuladd.f64(double %i.es, double %.0.i28.i.1, double %i.ei)
  %.025.ptr.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %i.eu = load i32, ptr %.025.ptr.i.2, align 16, !tbaa !3 ; 4 uses
  %i.ev = zext i32 %i.eu to i64                   ; 2 uses
  %i.ew = icmp ult i32 %i.eu, 256
  br i1 %i.ew, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.1
  %i.ex = uitofp i32 %i.eu to double              ; 2 uses
  %i.ey = tail call double @log2(double noundef %i.ex) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.2

bb.aa:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.1
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.ev
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !14
  %.pre168 = uitofp nneg i32 %i.eu to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.2

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.2:        ; preds = %bb.aa, %bb.z
  %.pre-phi169 = phi double [ %.pre168, %bb.aa ], [ %i.ex, %bb.z ]
  %.0.i30.i.2 = phi double [ %i.fa, %bb.aa ], [ %i.ey, %bb.z ]
  %i.fb = fneg double %.pre-phi169
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.fb, double %.0.i30.i.2, double %i.et)
  %i.fd = add nuw nsw i64 %i.em, %i.ev
  %.ptr.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 20
  %i.fe = load i32, ptr %.ptr.i.2, align 4, !tbaa !3 ; 3 uses
  %i.ff = zext i32 %i.fe to i64                   ; 2 uses
  %i.fg = add nuw nsw i64 %i.fd, %i.ff
  %i.fh = uitofp i32 %i.fe to double              ; 2 uses
  %i.fi = icmp ult i32 %i.fe, 256
  br i1 %i.fi, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.2
  %i.fj = tail call double @log2(double noundef %i.fh) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.2

bb.ac:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.2
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.ff
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.2

_ZN13duckdb_brotliL8FastLog2Em.exit29.i.2:        ; preds = %bb.ac, %bb.ab
  %.0.i28.i.2 = phi double [ %i.fl, %bb.ac ], [ %i.fj, %bb.ab ]
  %i.fm = fneg double %i.fh
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.fm, double %.0.i28.i.2, double %i.fc)
  %.025.ptr.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %i.fo = load i32, ptr %.025.ptr.i.3, align 8, !tbaa !3 ; 4 uses
  %i.fp = zext i32 %i.fo to i64                   ; 2 uses
  %i.fq = icmp ult i32 %i.fo, 256
  br i1 %i.fq, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.2
  %i.fr = uitofp i32 %i.fo to double              ; 2 uses
  %i.fs = tail call double @log2(double noundef %i.fr) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.3

bb.ae:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.2
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.fp
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !14
  %.pre170 = uitofp nneg i32 %i.fo to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.3

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.3:        ; preds = %bb.ae, %bb.ad
  %.pre-phi171 = phi double [ %.pre170, %bb.ae ], [ %i.fr, %bb.ad ]
  %.0.i30.i.3 = phi double [ %i.fu, %bb.ae ], [ %i.fs, %bb.ad ]
  %i.fv = fneg double %.pre-phi171
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.fv, double %.0.i30.i.3, double %i.fn)
  %i.fx = add nuw nsw i64 %i.fg, %i.fp
  %.ptr.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 28
  %i.fy = load i32, ptr %.ptr.i.3, align 4, !tbaa !3 ; 3 uses
  %i.fz = zext i32 %i.fy to i64                   ; 2 uses
  %i.ga = add nuw nsw i64 %i.fx, %i.fz
  %i.gb = uitofp i32 %i.fy to double              ; 2 uses
  %i.gc = icmp ult i32 %i.fy, 256
  br i1 %i.gc, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.3
  %i.gd = tail call double @log2(double noundef %i.gb) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.3

bb.ag:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.3
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.fz
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.3

_ZN13duckdb_brotliL8FastLog2Em.exit29.i.3:        ; preds = %bb.ag, %bb.af
  %.0.i28.i.3 = phi double [ %i.gf, %bb.ag ], [ %i.gd, %bb.af ]
  %i.gg = fneg double %i.gb
  %i.gh = tail call double @llvm.fmuladd.f64(double %i.gg, double %.0.i28.i.3, double %i.fw)
  %.025.ptr.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  %i.gi = load i32, ptr %.025.ptr.i.4, align 16, !tbaa !3 ; 4 uses
  %i.gj = zext i32 %i.gi to i64                   ; 2 uses
  %i.gk = icmp ult i32 %i.gi, 256
  br i1 %i.gk, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.3
  %i.gl = uitofp i32 %i.gi to double              ; 2 uses
  %i.gm = tail call double @log2(double noundef %i.gl) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.4

bb.ai:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.3
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.gj
  %i.go = load double, ptr %i.gn, align 8, !tbaa !14
  %.pre172 = uitofp nneg i32 %i.gi to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.4

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.4:        ; preds = %bb.ai, %bb.ah
  %.pre-phi173 = phi double [ %.pre172, %bb.ai ], [ %i.gl, %bb.ah ]
  %.0.i30.i.4 = phi double [ %i.go, %bb.ai ], [ %i.gm, %bb.ah ]
  %i.gp = fneg double %.pre-phi173
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.gp, double %.0.i30.i.4, double %i.gh)
  %i.gr = add nuw nsw i64 %i.ga, %i.gj
  %.ptr.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 36
  %i.gs = load i32, ptr %.ptr.i.4, align 4, !tbaa !3 ; 3 uses
  %i.gt = zext i32 %i.gs to i64                   ; 2 uses
  %i.gu = add nuw nsw i64 %i.gr, %i.gt
  %i.gv = uitofp i32 %i.gs to double              ; 2 uses
  %i.gw = icmp ult i32 %i.gs, 256
  br i1 %i.gw, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.4
  %i.gx = tail call double @log2(double noundef %i.gv) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.4

bb.ak:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.4
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.gt
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.4

_ZN13duckdb_brotliL8FastLog2Em.exit29.i.4:        ; preds = %bb.ak, %bb.aj
  %.0.i28.i.4 = phi double [ %i.gz, %bb.ak ], [ %i.gx, %bb.aj ]
  %i.ha = fneg double %i.gv
  %i.hb = tail call double @llvm.fmuladd.f64(double %i.ha, double %.0.i28.i.4, double %i.gq)
  %.025.ptr.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 40
  %i.hc = load i32, ptr %.025.ptr.i.5, align 8, !tbaa !3 ; 4 uses
  %i.hd = zext i32 %i.hc to i64                   ; 2 uses
  %i.he = icmp ult i32 %i.hc, 256
  br i1 %i.he, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.4
  %i.hf = uitofp i32 %i.hc to double              ; 2 uses
  %i.hg = tail call double @log2(double noundef %i.hf) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.5

bb.am:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.4
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.hd
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !14
  %.pre174 = uitofp nneg i32 %i.hc to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.5

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.5:        ; preds = %bb.am, %bb.al
  %.pre-phi175 = phi double [ %.pre174, %bb.am ], [ %i.hf, %bb.al ]
  %.0.i30.i.5 = phi double [ %i.hi, %bb.am ], [ %i.hg, %bb.al ]
  %i.hj = fneg double %.pre-phi175
  %i.hk = tail call double @llvm.fmuladd.f64(double %i.hj, double %.0.i30.i.5, double %i.hb)
  %i.hl = add nuw nsw i64 %i.gu, %i.hd
  %.ptr.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 44
  %i.hm = load i32, ptr %.ptr.i.5, align 4, !tbaa !3 ; 3 uses
  %i.hn = zext i32 %i.hm to i64                   ; 2 uses
  %i.ho = add nuw nsw i64 %i.hl, %i.hn
  %i.hp = uitofp i32 %i.hm to double              ; 2 uses
  %i.hq = icmp ult i32 %i.hm, 256
  br i1 %i.hq, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.5
  %i.hr = tail call double @log2(double noundef %i.hp) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.5

bb.ao:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.5
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.hn
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.5

_ZN13duckdb_brotliL8FastLog2Em.exit29.i.5:        ; preds = %bb.ao, %bb.an
  %.0.i28.i.5 = phi double [ %i.ht, %bb.ao ], [ %i.hr, %bb.an ]
  %i.hu = fneg double %i.hp
  %i.hv = tail call double @llvm.fmuladd.f64(double %i.hu, double %.0.i28.i.5, double %i.hk)
  %.025.ptr.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  %i.hw = load i32, ptr %.025.ptr.i.6, align 16, !tbaa !3 ; 4 uses
  %i.hx = zext i32 %i.hw to i64                   ; 2 uses
  %i.hy = icmp ult i32 %i.hw, 256
  br i1 %i.hy, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.5
  %i.hz = uitofp i32 %i.hw to double              ; 2 uses
  %i.ia = tail call double @log2(double noundef %i.hz) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.6

bb.aq:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.5
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.hx
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !14
  %.pre176 = uitofp nneg i32 %i.hw to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.6

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.6:        ; preds = %bb.aq, %bb.ap
  %.pre-phi177 = phi double [ %.pre176, %bb.aq ], [ %i.hz, %bb.ap ]
  %.0.i30.i.6 = phi double [ %i.ic, %bb.aq ], [ %i.ia, %bb.ap ]
  %i.id = fneg double %.pre-phi177
  %i.ie = tail call double @llvm.fmuladd.f64(double %i.id, double %.0.i30.i.6, double %i.hv)
  %i.if = add nuw nsw i64 %i.ho, %i.hx
  %.ptr.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 52
  %i.ig = load i32, ptr %.ptr.i.6, align 4, !tbaa !3 ; 3 uses
  %i.ih = zext i32 %i.ig to i64                   ; 2 uses
  %i.ii = add nuw nsw i64 %i.if, %i.ih
  %i.ij = uitofp i32 %i.ig to double              ; 2 uses
  %i.ik = icmp ult i32 %i.ig, 256
  br i1 %i.ik, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.6
  %i.il = tail call double @log2(double noundef %i.ij) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.6

bb.as:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.6
  %i.im = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.ih
  %i.in = load double, ptr %i.im, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.6

_ZN13duckdb_brotliL8FastLog2Em.exit29.i.6:        ; preds = %bb.as, %bb.ar
  %.0.i28.i.6 = phi double [ %i.in, %bb.as ], [ %i.il, %bb.ar ]
  %i.io = fneg double %i.ij
  %i.ip = tail call double @llvm.fmuladd.f64(double %i.io, double %.0.i28.i.6, double %i.ie)
  %.025.ptr.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 56
  %i.iq = load i32, ptr %.025.ptr.i.7, align 8, !tbaa !3 ; 4 uses
  %i.ir = zext i32 %i.iq to i64                   ; 2 uses
  %i.is = icmp ult i32 %i.iq, 256
  br i1 %i.is, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.6
  %i.it = uitofp i32 %i.iq to double              ; 2 uses
  %i.iu = tail call double @log2(double noundef %i.it) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.7

bb.au:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.6
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.ir
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !14
  %.pre178 = uitofp nneg i32 %i.iq to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.7

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.7:        ; preds = %bb.au, %bb.at
  %.pre-phi179 = phi double [ %.pre178, %bb.au ], [ %i.it, %bb.at ]
  %.0.i30.i.7 = phi double [ %i.iw, %bb.au ], [ %i.iu, %bb.at ]
  %i.ix = fneg double %.pre-phi179
  %i.iy = tail call double @llvm.fmuladd.f64(double %i.ix, double %.0.i30.i.7, double %i.ip)
  %i.iz = add nuw nsw i64 %i.ii, %i.ir
  %.ptr.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 60
  %i.ja = load i32, ptr %.ptr.i.7, align 4, !tbaa !3 ; 3 uses
  %i.jb = zext i32 %i.ja to i64                   ; 2 uses
  %i.jc = add nuw nsw i64 %i.iz, %i.jb
  %i.jd = uitofp i32 %i.ja to double              ; 2 uses
  %i.je = icmp ult i32 %i.ja, 256
  br i1 %i.je, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.7
  %i.jf = tail call double @log2(double noundef %i.jd) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.8

bb.aw:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.7
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.jb
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.8

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.8:        ; preds = %bb.aw, %bb.av
  %.0.i28.i.7 = phi double [ %i.jh, %bb.aw ], [ %i.jf, %bb.av ]
  %i.ji = fneg double %i.jd
  %i.jj = tail call double @llvm.fmuladd.f64(double %i.ji, double %.0.i28.i.7, double %i.iy)
  %i.jk = load double, ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, align 16, !tbaa !14
  %i.jl = tail call double @llvm.fmuladd.f64(double %i.jk, double -0.000000e+00, double %i.jj)
  %i.jm = zext i32 %i.dg to i64                   ; 2 uses
  %i.jn = add nuw nsw i64 %i.jc, %i.jm            ; 4 uses
  %i.jo = uitofp i32 %i.dg to double              ; 2 uses
  %i.jp = icmp ult i32 %i.dg, 256
  br i1 %i.jp, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.8
  %i.jq = tail call double @log2(double noundef %i.jo) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.8

bb.ay:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.8
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.jm
  %i.js = load double, ptr %i.jr, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.8

_ZN13duckdb_brotliL8FastLog2Em.exit29.i.8:        ; preds = %bb.ay, %bb.ax
  %.0.i28.i.8 = phi double [ %i.js, %bb.ay ], [ %i.jq, %bb.ax ]
  %i.jt = fneg double %i.jo
  %i.ju = tail call double @llvm.fmuladd.f64(double %i.jt, double %.0.i28.i.8, double %i.jl) ; 2 uses
  %i.jv = shl nuw nsw i64 %.087.lcssa, 1
  %i.jw = add nuw nsw i64 %i.jv, 18
  %i.jx = uitofp nneg i64 %i.jw to double
  %i.jy = fadd double %.094.lcssa, %i.jx
  %.not.i = icmp eq i64 %i.jn, 0
  br i1 %.not.i, label %_ZN13duckdb_brotliL14ShannonEntropyEPKjmPm.exit, label %bb.az

bb.az:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.8
  %i.jz = uitofp nneg i64 %i.jn to double         ; 3 uses
  %i.ka = icmp samesign ult i64 %i.jn, 256
  br i1 %i.ka, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.jn
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i

bb.bb:                                            ; preds = %bb.az
  %i.kd = tail call double @log2(double noundef %i.jz) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i

_ZN13duckdb_brotliL8FastLog2Em.exit.i:            ; preds = %bb.bb, %bb.ba
  %.0.i.i = phi double [ %i.kc, %bb.ba ], [ %i.kd, %bb.bb ]
  %i.ke = tail call double @llvm.fmuladd.f64(double %i.jz, double %.0.i.i, double %i.ju)
  br label %_ZN13duckdb_brotliL14ShannonEntropyEPKjmPm.exit

_ZN13duckdb_brotliL14ShannonEntropyEPKjmPm.exit:  ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.8, %_ZN13duckdb_brotliL8FastLog2Em.exit.i
  %.pre-phi181 = phi double [ %i.jz, %_ZN13duckdb_brotliL8FastLog2Em.exit.i ], [ 0.000000e+00, %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.8 ] ; 2 uses
  %.2.i = phi double [ %i.ke, %_ZN13duckdb_brotliL8FastLog2Em.exit.i ], [ %i.ju, %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.8 ] ; 2 uses
  %i.kf = fcmp olt double %.2.i, %.pre-phi181
  %.0.i113 = select i1 %i.kf, double %.pre-phi181, double %.2.i
  %i.kg = fadd double %i.jy, %.0.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.e, %bb.a, %_ZN13duckdb_brotliL14ShannonEntropyEPKjmPm.exit, %.lr.ph, %bb.g, %bb.f
  %.089 = phi double [ %i.kg, %_ZN13duckdb_brotliL14ShannonEntropyEPKjmPm.exit ], [ 1.200000e+01, %bb.a ], [ %i.t, %bb.f ], [ %i.an, %bb.g ], [ %i.bn, %.lr.ph ], [ 1.200000e+01, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret double %.089
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define hidden noundef double @_ZN13duckdb_brotli28BrotliPopulationCostDistanceEPKNS_17HistogramDistanceE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x i64], align 16               ; 11 uses
  %.sroa.0 = alloca [16 x i32], align 16          ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24   ; 5 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.bc, label %.preheader118

.preheader118:                                    ; preds = %bb.a, %bb.d
  %.091120 = phi i32 [ %.192.1, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %.097119 = phi i64 [ %i.r, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.097119
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.preheader118.1, label %bb.b

bb.b:                                             ; preds = %.preheader118
  %i.g = sext i32 %.091120 to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.g
  store i64 %.097119, ptr %i.h, align 8, !tbaa !11
  %i.i = add nsw i32 %.091120, 1                  ; 2 uses
  %i.j = icmp sgt i32 %.091120, 3
  br i1 %i.j, label %bb.e, label %.preheader118.1

.preheader118.1:                                  ; preds = %.preheader118, %bb.b
  %.192 = phi i32 [ %i.i, %bb.b ], [ %.091120, %.preheader118 ] ; 4 uses
  %i.k = or disjoint i64 %.097119, 1              ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %.not.1 = icmp eq i32 %i.m, 0
  br i1 %.not.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader118.1
  %i.n = sext i32 %.192 to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.n
  store i64 %i.k, ptr %i.o, align 8, !tbaa !11
  %i.p = add nsw i32 %.192, 1                     ; 2 uses
  %i.q = icmp sgt i32 %.192, 3
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader118.1
  %.192.1 = phi i32 [ %i.p, %bb.c ], [ %.192, %.preheader118.1 ] ; 2 uses
  %i.r = add nuw nsw i64 %.097119, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.r, 544
  br i1 %exitcond.not.1, label %bb.e, label %.preheader118, !llvm.loop !26

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.293 = phi i32 [ %i.i, %bb.b ], [ %.192.1, %bb.d ], [ %i.p, %bb.c ]
  switch i32 %.293, label %bb.h [
    i32 1, label %bb.bc
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %.lr.ph
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = uitofp i64 %i.c to double
  %i.t = fadd double %i.s, 2.000000e+01
  br label %bb.bc

bb.g:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.a, align 16, !tbaa !11
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ac = load i64, ptr %i.ab, align 16, !tbaa !11
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3  ; 2 uses
  %i.af = tail call noundef i32 @llvm.umax.i32(i32 %i.aa, i32 %i.ae)
  %i.ag = tail call noundef i32 @llvm.umax.i32(i32 %i.w, i32 %i.af)
  %i.ah = add i32 %i.aa, %i.w
  %i.ai = add i32 %i.ah, %i.ae
  %i.aj = shl i32 %i.ai, 1
  %i.ak = uitofp i32 %i.aj to double
  %i.al = fadd double %i.ak, 2.800000e+01
  %i.am = uitofp i32 %i.ag to double
  %i.an = fsub double %i.al, %i.am
  br label %bb.bc

.lr.ph:                                           ; preds = %bb.e
  %i.ao = load i64, ptr %i.a, align 16, !tbaa !11
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !11
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aw = load i64, ptr %i.av, align 16, !tbaa !11
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !11
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3  ; 2 uses
  %spec.select217 = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.aq) ; 2 uses
  %spec.select218 = tail call i32 @llvm.umax.i32(i32 %i.au, i32 %i.aq) ; 2 uses
  %.sroa.18.5 = tail call i32 @llvm.umin.i32(i32 %i.ay, i32 %spec.select218) ; 2 uses
  %.sroa.0.2 = tail call i32 @llvm.umax.i32(i32 %i.ay, i32 %spec.select218) ; 2 uses
  %.sroa.26.5 = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 %.sroa.0.2) ; 2 uses
  %.sroa.0.3 = tail call i32 @llvm.umax.i32(i32 %i.bc, i32 %.sroa.0.2) ; 2 uses
  %.sroa.18.1 = tail call i32 @llvm.umin.i32(i32 %.sroa.18.5, i32 %spec.select217)
  %.sroa.10.2 = tail call i32 @llvm.umax.i32(i32 %.sroa.18.5, i32 %spec.select217) ; 2 uses
  %.sroa.26.4 = tail call i32 @llvm.umin.i32(i32 %.sroa.26.5, i32 %.sroa.10.2)
  %.sroa.10.4 = tail call i32 @llvm.umax.i32(i32 %.sroa.26.5, i32 %.sroa.10.2)
  %i.bd = add i32 %.sroa.18.1, %.sroa.26.4        ; 2 uses
  %i.be = tail call noundef i32 @llvm.umax.i32(i32 %i.bd, i32 %.sroa.0.3)
  %i.bf = mul i32 %i.bd, 3
  %i.bg = uitofp i32 %i.bf to double
  %i.bh = fadd double %i.bg, 3.700000e+01
  %i.bi = add i32 %.sroa.10.4, %.sroa.0.3
  %i.bj = shl i32 %i.bi, 1
  %i.bk = uitofp i32 %i.bj to double
  %i.bl = fadd double %i.bh, %i.bk
  %i.bm = uitofp i32 %i.be to double
  %i.bn = fsub double %i.bl, %i.bm
  br label %bb.bc

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0, i8 0, i64 64, i1 false)
  %i.bo = icmp ult i64 %i.c, 256
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.c
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit112

bb.j:                                             ; preds = %bb.h
  %i.br = uitofp i64 %i.c to double
  %i.bs = tail call double @log2(double noundef %i.br) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit112

_ZN13duckdb_brotliL8FastLog2Em.exit112:           ; preds = %bb.i, %bb.j
  %.0.i111 = phi double [ %i.bq, %bb.i ], [ %i.bs, %bb.j ]
  br label %bb.k

bb.k:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit112, %.thread
  %.lcssa141 = phi i32 [ 0, %_ZN13duckdb_brotliL8FastLog2Em.exit112 ], [ %.lcssa139, %.thread ] ; 5 uses
  %.087137 = phi i64 [ 1, %_ZN13duckdb_brotliL8FastLog2Em.exit112 ], [ %.2, %.thread ] ; 5 uses
  %.094136 = phi double [ 0.000000e+00, %_ZN13duckdb_brotliL8FastLog2Em.exit112 ], [ %.4, %.thread ] ; 5 uses
  %.3100135 = phi i64 [ 0, %_ZN13duckdb_brotliL8FastLog2Em.exit112 ], [ %.4101, %.thread ] ; 7 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3100135 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3  ; 5 uses
  %.not109 = icmp eq i32 %i.bu, 0
  br i1 %.not109, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.k
  %i.bv = icmp samesign ult i64 %.3100135, 543
  br i1 %i.bv, label %.lr.ph127.preheader, label %.critedge.thread

.lr.ph127.preheader:                              ; preds = %.preheader
  %i.bw = trunc nuw nsw i64 %.3100135 to i32
  %i.bx = sub nuw nsw i32 544, %i.bw
  br label %.lr.ph127

bb.l:                                             ; preds = %bb.k
  %i.by = icmp ult i32 %i.bu, 256
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bz = zext nneg i32 %i.bu to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit

bb.n:                                             ; preds = %bb.l
  %i.cc = uitofp i32 %i.bu to double
  %i.cd = tail call double @log2(double noundef %i.cc) #5, !tbaa !3
  %.pre = load i32, ptr %i.bt, align 4, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit

_ZN13duckdb_brotliL8FastLog2Em.exit:              ; preds = %bb.m, %bb.n
  %i.ce = phi i32 [ %i.bu, %bb.m ], [ %.pre, %bb.n ]
  %.0.i = phi double [ %i.cb, %bb.m ], [ %i.cd, %bb.n ]
  %i.cf = fsub double %.0.i111, %.0.i             ; 2 uses
  %i.cg = fadd double %i.cf, 5.000000e-01
  %i.ch = fptoui double %i.cg to i64
  %i.ci = uitofp i32 %i.ce to double
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.cf, double %.094136)
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 15) ; 2 uses
  %spec.select = tail call i64 @llvm.umax.i64(i64 %spec.store.select, i64 %.087137)
  %.sroa.0.0..sroa_stride153 = shl nuw nsw i64 %spec.store.select, 2
  %.sroa.0.0..sroa_idx155 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 %.sroa.0.0..sroa_stride153 ; 2 uses
  %i.ck = load i32, ptr %.sroa.0.0..sroa_idx155, align 4, !tbaa !3
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %.sroa.0.0..sroa_idx155, align 4, !tbaa !3
  %i.cm = add nuw nsw i64 %.3100135, 1
  br label %.thread

.lr.ph127:                                        ; preds = %.lr.ph127.preheader, %bb.o
  %.0126.in = phi i64 [ %.0126, %bb.o ], [ %.3100135, %.lr.ph127.preheader ]
  %.086125 = phi i32 [ %i.cq, %bb.o ], [ 1, %.lr.ph127.preheader ] ; 2 uses
  %.0126 = add nuw nsw i64 %.0126.in, 1           ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0126
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.o, label %.critedge

bb.o:                                             ; preds = %.lr.ph127
  %i.cq = add nuw nsw i32 %.086125, 1
  %exitcond152.not = icmp eq i64 %.0126, 543
  br i1 %exitcond152.not, label %.critedge, label %.lr.ph127, !llvm.loop !27

.critedge:                                        ; preds = %.lr.ph127, %bb.o
  %.086.lcssa = phi i32 [ %i.bx, %bb.o ], [ %.086125, %.lr.ph127 ] ; 4 uses
  %i.cr = zext nneg i32 %.086.lcssa to i64
  %i.cs = add nuw nsw i64 %.3100135, %i.cr        ; 3 uses
  %i.ct = icmp eq i64 %i.cs, 544
  br i1 %i.ct, label %bb.q, label %bb.p

.critedge.thread:                                 ; preds = %.preheader
  %i.cu = add nuw nsw i64 %.3100135, 1            ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 544
  br i1 %i.cv, label %bb.q, label %.thread213

bb.p:                                             ; preds = %.critedge
  %i.cw = icmp samesign ult i32 %.086.lcssa, 3
  br i1 %i.cw, label %.thread213, label %.lr.ph133.preheader

.thread213:                                       ; preds = %.critedge.thread, %bb.p
  %.086.lcssa212215 = phi i32 [ %.086.lcssa, %bb.p ], [ 1, %.critedge.thread ]
  %i.cx = phi i64 [ %i.cs, %bb.p ], [ %i.cu, %.critedge.thread ]
  %i.cy = load i32, ptr %.sroa.0, align 16, !tbaa !3
  %i.cz = add i32 %i.cy, %.086.lcssa212215
  store i32 %i.cz, ptr %.sroa.0, align 16, !tbaa !3
  br label %.thread

.lr.ph133.preheader:                              ; preds = %bb.p
  %i.da = add nsw i32 %.086.lcssa, -2
  br label %.lr.ph133

.lr.ph133:                                        ; preds = %.lr.ph133.preheader, %.lr.ph133
  %i.db = phi i32 [ %i.dc, %.lr.ph133 ], [ %.lcssa141, %.lr.ph133.preheader ]
  %.1132 = phi i32 [ %i.de, %.lr.ph133 ], [ %i.da, %.lr.ph133.preheader ]
  %.195131 = phi double [ %i.dd, %.lr.ph133 ], [ %.094136, %.lr.ph133.preheader ]
  %i.dc = add i32 %i.db, 1                        ; 2 uses
  %i.dd = fadd double %.195131, 3.000000e+00      ; 2 uses
  %i.de = lshr i32 %.1132, 3                      ; 2 uses
  %.not110 = icmp eq i32 %i.de, 0
  br i1 %.not110, label %.thread, label %.lr.ph133, !llvm.loop !28

.thread:                                          ; preds = %.lr.ph133, %.thread213, %_ZN13duckdb_brotliL8FastLog2Em.exit
  %.lcssa139 = phi i32 [ %.lcssa141, %_ZN13duckdb_brotliL8FastLog2Em.exit ], [ %.lcssa141, %.thread213 ], [ %i.dc, %.lr.ph133 ] ; 2 uses
  %.4101 = phi i64 [ %i.cm, %_ZN13duckdb_brotliL8FastLog2Em.exit ], [ %i.cx, %.thread213 ], [ %i.cs, %.lr.ph133 ] ; 2 uses
  %.4 = phi double [ %i.cj, %_ZN13duckdb_brotliL8FastLog2Em.exit ], [ %.094136, %.thread213 ], [ %i.dd, %.lr.ph133 ] ; 2 uses
  %.2 = phi i64 [ %spec.select, %_ZN13duckdb_brotliL8FastLog2Em.exit ], [ %.087137, %.thread213 ], [ %.087137, %.lr.ph133 ] ; 2 uses
  %i.df = icmp ult i64 %.4101, 544
  br i1 %i.df, label %bb.k, label %bb.q, !llvm.loop !29

bb.q:                                             ; preds = %.critedge.thread, %.critedge, %.thread
  %i.dg = phi i32 [ %.lcssa141, %.critedge ], [ %.lcssa139, %.thread ], [ %.lcssa141, %.critedge.thread ] ; 3 uses
  %.094.lcssa = phi double [ %.094136, %.critedge ], [ %.4, %.thread ], [ %.094136, %.critedge.thread ]
  %.087.lcssa = phi i64 [ %.087137, %.critedge ], [ %.2, %.thread ], [ %.087137, %.critedge.thread ]
  %i.dh = load i32, ptr %.sroa.0, align 16, !tbaa !3 ; 4 uses
  %i.di = zext i32 %i.dh to i64                   ; 2 uses
  %i.dj = icmp ult i32 %i.dh, 256
  br i1 %i.dj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.di
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !14
  %.pre165 = uitofp nneg i32 %i.dh to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i

bb.s:                                             ; preds = %bb.q
  %i.dm = uitofp i32 %i.dh to double              ; 2 uses
  %i.dn = tail call double @log2(double noundef %i.dm) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i

_ZN13duckdb_brotliL8FastLog2Em.exit31.i:          ; preds = %bb.s, %bb.r
  %.pre-phi = phi double [ %i.dm, %bb.s ], [ %.pre165, %bb.r ]
  %.0.i30.i = phi double [ %i.dn, %bb.s ], [ %i.dl, %bb.r ]
  %i.do = fneg double %.pre-phi
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.do, double %.0.i30.i, double 0.000000e+00)
  %.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %i.dq = load i32, ptr %.ptr.i, align 4, !tbaa !3 ; 3 uses
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %i.ds = add nuw nsw i64 %i.di, %i.dr
  %i.dt = uitofp i32 %i.dq to double              ; 2 uses
  %i.du = icmp ult i32 %i.dq, 256
  br i1 %i.du, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.dr
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i

bb.u:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i
  %i.dx = tail call double @log2(double noundef %i.dt) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i

_ZN13duckdb_brotliL8FastLog2Em.exit29.i:          ; preds = %bb.u, %bb.t
  %.0.i28.i = phi double [ %i.dw, %bb.t ], [ %i.dx, %bb.u ]
  %i.dy = fneg double %i.dt
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.dy, double %.0.i28.i, double %i.dp)
  %.025.ptr.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %i.ea = load i32, ptr %.025.ptr.i.1, align 8, !tbaa !3 ; 4 uses
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %i.ec = icmp ult i32 %i.ea, 256
  br i1 %i.ec, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i
  %i.ed = uitofp i32 %i.ea to double              ; 2 uses
  %i.ee = tail call double @log2(double noundef %i.ed) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.1

bb.w:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.eb
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !14
  %.pre166 = uitofp nneg i32 %i.ea to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.1

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.1:        ; preds = %bb.w, %bb.v
  %.pre-phi167 = phi double [ %.pre166, %bb.w ], [ %i.ed, %bb.v ]
  %.0.i30.i.1 = phi double [ %i.eg, %bb.w ], [ %i.ee, %bb.v ]
  %i.eh = fneg double %.pre-phi167
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.eh, double %.0.i30.i.1, double %i.dz)
  %i.ej = add nuw nsw i64 %i.ds, %i.eb
  %.ptr.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 12
  %i.ek = load i32, ptr %.ptr.i.1, align 4, !tbaa !3 ; 3 uses
  %i.el = zext i32 %i.ek to i64                   ; 2 uses
  %i.em = add nuw nsw i64 %i.ej, %i.el
  %i.en = uitofp i32 %i.ek to double              ; 2 uses
  %i.eo = icmp ult i32 %i.ek, 256
  br i1 %i.eo, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.1
  %i.ep = tail call double @log2(double noundef %i.en) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.1

bb.y:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.1
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.el
  %i.er = load double, ptr %i.eq, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.1

_ZN13duckdb_brotliL8FastLog2Em.exit29.i.1:        ; preds = %bb.y, %bb.x
  %.0.i28.i.1 = phi double [ %i.er, %bb.y ], [ %i.ep, %bb.x ]
  %i.es = fneg double %i.en
  %i.et = tail call double @llvm.fmuladd.f64(double %i.es, double %.0.i28.i.1, double %i.ei)
  %.025.ptr.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %i.eu = load i32, ptr %.025.ptr.i.2, align 16, !tbaa !3 ; 4 uses
  %i.ev = zext i32 %i.eu to i64                   ; 2 uses
  %i.ew = icmp ult i32 %i.eu, 256
  br i1 %i.ew, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.1
  %i.ex = uitofp i32 %i.eu to double              ; 2 uses
  %i.ey = tail call double @log2(double noundef %i.ex) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.2

bb.aa:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.1
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.ev
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !14
  %.pre168 = uitofp nneg i32 %i.eu to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.2

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.2:        ; preds = %bb.aa, %bb.z
  %.pre-phi169 = phi double [ %.pre168, %bb.aa ], [ %i.ex, %bb.z ]
  %.0.i30.i.2 = phi double [ %i.fa, %bb.aa ], [ %i.ey, %bb.z ]
  %i.fb = fneg double %.pre-phi169
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.fb, double %.0.i30.i.2, double %i.et)
  %i.fd = add nuw nsw i64 %i.em, %i.ev
  %.ptr.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 20
  %i.fe = load i32, ptr %.ptr.i.2, align 4, !tbaa !3 ; 3 uses
  %i.ff = zext i32 %i.fe to i64                   ; 2 uses
  %i.fg = add nuw nsw i64 %i.fd, %i.ff
  %i.fh = uitofp i32 %i.fe to double              ; 2 uses
  %i.fi = icmp ult i32 %i.fe, 256
  br i1 %i.fi, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.2
  %i.fj = tail call double @log2(double noundef %i.fh) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.2

bb.ac:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.2
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.ff
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.2

_ZN13duckdb_brotliL8FastLog2Em.exit29.i.2:        ; preds = %bb.ac, %bb.ab
  %.0.i28.i.2 = phi double [ %i.fl, %bb.ac ], [ %i.fj, %bb.ab ]
  %i.fm = fneg double %i.fh
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.fm, double %.0.i28.i.2, double %i.fc)
  %.025.ptr.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %i.fo = load i32, ptr %.025.ptr.i.3, align 8, !tbaa !3 ; 4 uses
  %i.fp = zext i32 %i.fo to i64                   ; 2 uses
  %i.fq = icmp ult i32 %i.fo, 256
  br i1 %i.fq, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.2
  %i.fr = uitofp i32 %i.fo to double              ; 2 uses
  %i.fs = tail call double @log2(double noundef %i.fr) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.3

bb.ae:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.2
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.fp
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !14
  %.pre170 = uitofp nneg i32 %i.fo to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.3

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.3:        ; preds = %bb.ae, %bb.ad
  %.pre-phi171 = phi double [ %.pre170, %bb.ae ], [ %i.fr, %bb.ad ]
  %.0.i30.i.3 = phi double [ %i.fu, %bb.ae ], [ %i.fs, %bb.ad ]
  %i.fv = fneg double %.pre-phi171
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.fv, double %.0.i30.i.3, double %i.fn)
  %i.fx = add nuw nsw i64 %i.fg, %i.fp
  %.ptr.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 28
  %i.fy = load i32, ptr %.ptr.i.3, align 4, !tbaa !3 ; 3 uses
  %i.fz = zext i32 %i.fy to i64                   ; 2 uses
  %i.ga = add nuw nsw i64 %i.fx, %i.fz
  %i.gb = uitofp i32 %i.fy to double              ; 2 uses
  %i.gc = icmp ult i32 %i.fy, 256
  br i1 %i.gc, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.3
  %i.gd = tail call double @log2(double noundef %i.gb) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.3

bb.ag:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.3
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.fz
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.3

_ZN13duckdb_brotliL8FastLog2Em.exit29.i.3:        ; preds = %bb.ag, %bb.af
  %.0.i28.i.3 = phi double [ %i.gf, %bb.ag ], [ %i.gd, %bb.af ]
  %i.gg = fneg double %i.gb
  %i.gh = tail call double @llvm.fmuladd.f64(double %i.gg, double %.0.i28.i.3, double %i.fw)
  %.025.ptr.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  %i.gi = load i32, ptr %.025.ptr.i.4, align 16, !tbaa !3 ; 4 uses
  %i.gj = zext i32 %i.gi to i64                   ; 2 uses
  %i.gk = icmp ult i32 %i.gi, 256
  br i1 %i.gk, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.3
  %i.gl = uitofp i32 %i.gi to double              ; 2 uses
  %i.gm = tail call double @log2(double noundef %i.gl) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.4

bb.ai:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.3
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.gj
  %i.go = load double, ptr %i.gn, align 8, !tbaa !14
  %.pre172 = uitofp nneg i32 %i.gi to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.4

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.4:        ; preds = %bb.ai, %bb.ah
  %.pre-phi173 = phi double [ %.pre172, %bb.ai ], [ %i.gl, %bb.ah ]
  %.0.i30.i.4 = phi double [ %i.go, %bb.ai ], [ %i.gm, %bb.ah ]
  %i.gp = fneg double %.pre-phi173
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.gp, double %.0.i30.i.4, double %i.gh)
  %i.gr = add nuw nsw i64 %i.ga, %i.gj
  %.ptr.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 36
  %i.gs = load i32, ptr %.ptr.i.4, align 4, !tbaa !3 ; 3 uses
  %i.gt = zext i32 %i.gs to i64                   ; 2 uses
  %i.gu = add nuw nsw i64 %i.gr, %i.gt
  %i.gv = uitofp i32 %i.gs to double              ; 2 uses
  %i.gw = icmp ult i32 %i.gs, 256
  br i1 %i.gw, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.4
  %i.gx = tail call double @log2(double noundef %i.gv) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.4

bb.ak:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.4
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.gt
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.4

_ZN13duckdb_brotliL8FastLog2Em.exit29.i.4:        ; preds = %bb.ak, %bb.aj
  %.0.i28.i.4 = phi double [ %i.gz, %bb.ak ], [ %i.gx, %bb.aj ]
  %i.ha = fneg double %i.gv
  %i.hb = tail call double @llvm.fmuladd.f64(double %i.ha, double %.0.i28.i.4, double %i.gq)
  %.025.ptr.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 40
  %i.hc = load i32, ptr %.025.ptr.i.5, align 8, !tbaa !3 ; 4 uses
  %i.hd = zext i32 %i.hc to i64                   ; 2 uses
  %i.he = icmp ult i32 %i.hc, 256
  br i1 %i.he, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.4
  %i.hf = uitofp i32 %i.hc to double              ; 2 uses
  %i.hg = tail call double @log2(double noundef %i.hf) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.5

bb.am:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.4
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.hd
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !14
  %.pre174 = uitofp nneg i32 %i.hc to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.5

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.5:        ; preds = %bb.am, %bb.al
  %.pre-phi175 = phi double [ %.pre174, %bb.am ], [ %i.hf, %bb.al ]
  %.0.i30.i.5 = phi double [ %i.hi, %bb.am ], [ %i.hg, %bb.al ]
  %i.hj = fneg double %.pre-phi175
  %i.hk = tail call double @llvm.fmuladd.f64(double %i.hj, double %.0.i30.i.5, double %i.hb)
  %i.hl = add nuw nsw i64 %i.gu, %i.hd
  %.ptr.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 44
  %i.hm = load i32, ptr %.ptr.i.5, align 4, !tbaa !3 ; 3 uses
  %i.hn = zext i32 %i.hm to i64                   ; 2 uses
  %i.ho = add nuw nsw i64 %i.hl, %i.hn
  %i.hp = uitofp i32 %i.hm to double              ; 2 uses
  %i.hq = icmp ult i32 %i.hm, 256
  br i1 %i.hq, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.5
  %i.hr = tail call double @log2(double noundef %i.hp) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.5

bb.ao:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.5
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.hn
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.5

_ZN13duckdb_brotliL8FastLog2Em.exit29.i.5:        ; preds = %bb.ao, %bb.an
  %.0.i28.i.5 = phi double [ %i.ht, %bb.ao ], [ %i.hr, %bb.an ]
  %i.hu = fneg double %i.hp
  %i.hv = tail call double @llvm.fmuladd.f64(double %i.hu, double %.0.i28.i.5, double %i.hk)
  %.025.ptr.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  %i.hw = load i32, ptr %.025.ptr.i.6, align 16, !tbaa !3 ; 4 uses
  %i.hx = zext i32 %i.hw to i64                   ; 2 uses
  %i.hy = icmp ult i32 %i.hw, 256
  br i1 %i.hy, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.5
  %i.hz = uitofp i32 %i.hw to double              ; 2 uses
  %i.ia = tail call double @log2(double noundef %i.hz) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.6

bb.aq:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.5
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.hx
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !14
  %.pre176 = uitofp nneg i32 %i.hw to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.6

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.6:        ; preds = %bb.aq, %bb.ap
  %.pre-phi177 = phi double [ %.pre176, %bb.aq ], [ %i.hz, %bb.ap ]
  %.0.i30.i.6 = phi double [ %i.ic, %bb.aq ], [ %i.ia, %bb.ap ]
  %i.id = fneg double %.pre-phi177
  %i.ie = tail call double @llvm.fmuladd.f64(double %i.id, double %.0.i30.i.6, double %i.hv)
  %i.if = add nuw nsw i64 %i.ho, %i.hx
  %.ptr.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 52
  %i.ig = load i32, ptr %.ptr.i.6, align 4, !tbaa !3 ; 3 uses
  %i.ih = zext i32 %i.ig to i64                   ; 2 uses
  %i.ii = add nuw nsw i64 %i.if, %i.ih
  %i.ij = uitofp i32 %i.ig to double              ; 2 uses
  %i.ik = icmp ult i32 %i.ig, 256
  br i1 %i.ik, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.6
  %i.il = tail call double @log2(double noundef %i.ij) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.6

bb.as:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.6
  %i.im = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.ih
  %i.in = load double, ptr %i.im, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.6

_ZN13duckdb_brotliL8FastLog2Em.exit29.i.6:        ; preds = %bb.as, %bb.ar
  %.0.i28.i.6 = phi double [ %i.in, %bb.as ], [ %i.il, %bb.ar ]
  %i.io = fneg double %i.ij
  %i.ip = tail call double @llvm.fmuladd.f64(double %i.io, double %.0.i28.i.6, double %i.ie)
  %.025.ptr.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 56
  %i.iq = load i32, ptr %.025.ptr.i.7, align 8, !tbaa !3 ; 4 uses
  %i.ir = zext i32 %i.iq to i64                   ; 2 uses
  %i.is = icmp ult i32 %i.iq, 256
  br i1 %i.is, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.6
  %i.it = uitofp i32 %i.iq to double              ; 2 uses
  %i.iu = tail call double @log2(double noundef %i.it) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.7

bb.au:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.6
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.ir
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !14
  %.pre178 = uitofp nneg i32 %i.iq to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.7

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.7:        ; preds = %bb.au, %bb.at
  %.pre-phi179 = phi double [ %.pre178, %bb.au ], [ %i.it, %bb.at ]
  %.0.i30.i.7 = phi double [ %i.iw, %bb.au ], [ %i.iu, %bb.at ]
  %i.ix = fneg double %.pre-phi179
  %i.iy = tail call double @llvm.fmuladd.f64(double %i.ix, double %.0.i30.i.7, double %i.ip)
  %i.iz = add nuw nsw i64 %i.ii, %i.ir
  %.ptr.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 60
  %i.ja = load i32, ptr %.ptr.i.7, align 4, !tbaa !3 ; 3 uses
  %i.jb = zext i32 %i.ja to i64                   ; 2 uses
  %i.jc = add nuw nsw i64 %i.iz, %i.jb
  %i.jd = uitofp i32 %i.ja to double              ; 2 uses
  %i.je = icmp ult i32 %i.ja, 256
  br i1 %i.je, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.7
  %i.jf = tail call double @log2(double noundef %i.jd) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.8

bb.aw:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.7
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.jb
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.8

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.8:        ; preds = %bb.aw, %bb.av
  %.0.i28.i.7 = phi double [ %i.jh, %bb.aw ], [ %i.jf, %bb.av ]
  %i.ji = fneg double %i.jd
  %i.jj = tail call double @llvm.fmuladd.f64(double %i.ji, double %.0.i28.i.7, double %i.iy)
  %i.jk = load double, ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, align 16, !tbaa !14
  %i.jl = tail call double @llvm.fmuladd.f64(double %i.jk, double -0.000000e+00, double %i.jj)
  %i.jm = zext i32 %i.dg to i64                   ; 2 uses
  %i.jn = add nuw nsw i64 %i.jc, %i.jm            ; 4 uses
  %i.jo = uitofp i32 %i.dg to double              ; 2 uses
  %i.jp = icmp ult i32 %i.dg, 256
  br i1 %i.jp, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.8
  %i.jq = tail call double @log2(double noundef %i.jo) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.8

bb.ay:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.8
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.jm
  %i.js = load double, ptr %i.jr, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.8

_ZN13duckdb_brotliL8FastLog2Em.exit29.i.8:        ; preds = %bb.ay, %bb.ax
  %.0.i28.i.8 = phi double [ %i.js, %bb.ay ], [ %i.jq, %bb.ax ]
  %i.jt = fneg double %i.jo
  %i.ju = tail call double @llvm.fmuladd.f64(double %i.jt, double %.0.i28.i.8, double %i.jl) ; 2 uses
  %i.jv = shl nuw nsw i64 %.087.lcssa, 1
  %i.jw = add nuw nsw i64 %i.jv, 18
  %i.jx = uitofp nneg i64 %i.jw to double
  %i.jy = fadd double %.094.lcssa, %i.jx
  %.not.i = icmp eq i64 %i.jn, 0
  br i1 %.not.i, label %_ZN13duckdb_brotliL14ShannonEntropyEPKjmPm.exit, label %bb.az

bb.az:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.8
  %i.jz = uitofp nneg i64 %i.jn to double         ; 3 uses
  %i.ka = icmp samesign ult i64 %i.jn, 256
  br i1 %i.ka, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.jn
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !14
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i

bb.bb:                                            ; preds = %bb.az
  %i.kd = tail call double @log2(double noundef %i.jz) #5, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i

_ZN13duckdb_brotliL8FastLog2Em.exit.i:            ; preds = %bb.bb, %bb.ba
  %.0.i.i = phi double [ %i.kc, %bb.ba ], [ %i.kd, %bb.bb ]
  %i.ke = tail call double @llvm.fmuladd.f64(double %i.jz, double %.0.i.i, double %i.ju)
  br label %_ZN13duckdb_brotliL14ShannonEntropyEPKjmPm.exit

_ZN13duckdb_brotliL14ShannonEntropyEPKjmPm.exit:  ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.8, %_ZN13duckdb_brotliL8FastLog2Em.exit.i
  %.pre-phi181 = phi double [ %i.jz, %_ZN13duckdb_brotliL8FastLog2Em.exit.i ], [ 0.000000e+00, %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.8 ] ; 2 uses
  %.2.i = phi double [ %i.ke, %_ZN13duckdb_brotliL8FastLog2Em.exit.i ], [ %i.ju, %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.8 ] ; 2 uses
  %i.kf = fcmp olt double %.2.i, %.pre-phi181
  %.0.i113 = select i1 %i.kf, double %.pre-phi181, double %.2.i
  %i.kg = fadd double %i.jy, %.0.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.e, %bb.a, %_ZN13duckdb_brotliL14ShannonEntropyEPKjmPm.exit, %.lr.ph, %bb.g, %bb.f
  %.089 = phi double [ %i.kg, %_ZN13duckdb_brotliL14ShannonEntropyEPKjmPm.exit ], [ 1.200000e+01, %bb.a ], [ %i.t, %bb.f ], [ %i.an, %bb.g ], [ %i.bn, %.lr.ph ], [ 1.200000e+01, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret double %.089
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 1024}
!8 = !{!"_ZTSN13duckdb_brotli16HistogramLiteralE", !5, i64 0, !9, i64 1024, !10, i64 1032}
!9 = !{!"long", !5, i64 0}
!10 = !{!"double", !5, i64 0}
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!10, !10, i64 0}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = !{!19, !9, i64 2816}
!19 = !{!"_ZTSN13duckdb_brotli16HistogramCommandE", !5, i64 0, !9, i64 2816, !10, i64 2824}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = !{!25, !9, i64 2176}
!25 = !{!"_ZTSN13duckdb_brotli17HistogramDistanceE", !5, i64 0, !9, i64 2176, !10, i64 2184}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !13}
end_hunk_0
