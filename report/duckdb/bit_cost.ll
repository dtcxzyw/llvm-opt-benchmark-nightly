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
  %i.b = alloca [18 x i32], align 16              ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17   ; 5 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.bc, label %.preheader118

.preheader118:                                    ; preds = %bb.a, %bb.d
  %.091120 = phi i32 [ %.192.1, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %.097119 = phi i64 [ %i.s, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.097119
  %i.g = load i32, ptr %i.f, align 4, !tbaa !6
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.preheader118.1, label %bb.b

bb.b:                                             ; preds = %.preheader118
  %i.h = sext i32 %.091120 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.h
  store i64 %.097119, ptr %i.i, align 8, !tbaa !9
  %i.j = add nsw i32 %.091120, 1                  ; 2 uses
  %i.k = icmp sgt i32 %.091120, 3
  br i1 %i.k, label %bb.e, label %.preheader118.1

.preheader118.1:                                  ; preds = %.preheader118, %bb.b
  %.192 = phi i32 [ %i.j, %bb.b ], [ %.091120, %.preheader118 ] ; 4 uses
  %i.l = or disjoint i64 %.097119, 1              ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !6
  %.not.1 = icmp eq i32 %i.n, 0
  br i1 %.not.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader118.1
  %i.o = sext i32 %.192 to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.o
  store i64 %i.l, ptr %i.p, align 8, !tbaa !9
  %i.q = add nsw i32 %.192, 1                     ; 2 uses
  %i.r = icmp sgt i32 %.192, 3
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader118.1
  %.192.1 = phi i32 [ %i.q, %bb.c ], [ %.192, %.preheader118.1 ] ; 2 uses
  %i.s = add nuw nsw i64 %.097119, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.s, 256
  br i1 %exitcond.not.1, label %bb.e, label %.preheader118, !llvm.loop !12

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.293 = phi i32 [ %i.j, %bb.b ], [ %.192.1, %bb.d ], [ %i.q, %bb.c ]
  switch i32 %.293, label %bb.h [
    i32 1, label %bb.bc
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %.lr.ph
  ]

bb.f:                                             ; preds = %bb.e
  %i.t = uitofp i64 %i.d to double
  %i.u = fadd double %i.t, 2.000000e+01
  br label %bb.bc

bb.g:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.a, align 16, !tbaa !9
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !6    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !6  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !9
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !6  ; 2 uses
  %i.ag = tail call noundef i32 @llvm.umax.i32(i32 %i.ab, i32 %i.af)
  %i.ah = tail call noundef i32 @llvm.umax.i32(i32 %i.x, i32 %i.ag)
  %i.ai = add i32 %i.ab, %i.x
  %i.aj = add i32 %i.ai, %i.af
  %i.ak = shl i32 %i.aj, 1
  %i.al = uitofp i32 %i.ak to double
  %i.am = fadd double %i.al, 2.800000e+01
  %i.an = uitofp i32 %i.ah to double
  %i.ao = fsub double %i.am, %i.an
  br label %bb.bc

.lr.ph:                                           ; preds = %bb.e
  %i.ap = load i64, ptr %i.a, align 16, !tbaa !9
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !6  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !9
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !6  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ax = load i64, ptr %i.aw, align 16, !tbaa !9
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !6  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !9
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !6  ; 2 uses
  %spec.select221 = tail call i32 @llvm.umin.i32(i32 %i.av, i32 %i.ar) ; 2 uses
  %spec.select222 = tail call i32 @llvm.umax.i32(i32 %i.av, i32 %i.ar) ; 2 uses
  %.sroa.18.5 = tail call i32 @llvm.umin.i32(i32 %i.az, i32 %spec.select222) ; 2 uses
  %.sroa.0.2 = tail call i32 @llvm.umax.i32(i32 %i.az, i32 %spec.select222) ; 2 uses
  %.sroa.26.5 = tail call i32 @llvm.umin.i32(i32 %i.bd, i32 %.sroa.0.2) ; 2 uses
  %.sroa.0.3 = tail call i32 @llvm.umax.i32(i32 %i.bd, i32 %.sroa.0.2) ; 2 uses
  %.sroa.18.1 = tail call i32 @llvm.umin.i32(i32 %.sroa.18.5, i32 %spec.select221)
  %.sroa.10.2 = tail call i32 @llvm.umax.i32(i32 %.sroa.18.5, i32 %spec.select221) ; 2 uses
  %.sroa.26.4 = tail call i32 @llvm.umin.i32(i32 %.sroa.26.5, i32 %.sroa.10.2)
  %.sroa.10.4 = tail call i32 @llvm.umax.i32(i32 %.sroa.26.5, i32 %.sroa.10.2)
  %i.be = add i32 %.sroa.18.1, %.sroa.26.4        ; 2 uses
  %i.bf = tail call noundef i32 @llvm.umax.i32(i32 %i.be, i32 %.sroa.0.3)
  %i.bg = mul i32 %i.be, 3
  %i.bh = uitofp i32 %i.bg to double
  %i.bi = fadd double %i.bh, 3.700000e+01
  %i.bj = add i32 %.sroa.10.4, %.sroa.0.3
  %i.bk = shl i32 %i.bj, 1
  %i.bl = uitofp i32 %i.bk to double
  %i.bm = fadd double %i.bi, %i.bl
  %i.bn = uitofp i32 %i.bf to double
  %i.bo = fsub double %i.bm, %i.bn
  br label %bb.bc

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  %i.bp = icmp ult i64 %i.d, 256
  br i1 %i.bp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.d
  %i.br = load double, ptr %i.bq, align 8, !tbaa !11
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit112

bb.j:                                             ; preds = %bb.h
  %i.bs = uitofp i64 %i.d to double
  %i.bt = tail call double @log2(double noundef %i.bs) #5, !tbaa !6
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit112

_ZN13duckdb_brotliL8FastLog2Em.exit112:           ; preds = %bb.i, %bb.j
  %.0.i111 = phi double [ %i.br, %bb.i ], [ %i.bt, %bb.j ]
  br label %bb.k

bb.k:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit112, %.thread
  %.lcssa141 = phi i32 [ 0, %_ZN13duckdb_brotliL8FastLog2Em.exit112 ], [ %.lcssa139, %.thread ] ; 5 uses
  %.087137 = phi i64 [ 1, %_ZN13duckdb_brotliL8FastLog2Em.exit112 ], [ %.2, %.thread ] ; 5 uses
  %.094136 = phi double [ 0.000000e+00, %_ZN13duckdb_brotliL8FastLog2Em.exit112 ], [ %.4, %.thread ] ; 5 uses
  %.3100135 = phi i64 [ 0, %_ZN13duckdb_brotliL8FastLog2Em.exit112 ], [ %.4101, %.thread ] ; 6 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3100135 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !6  ; 5 uses
  %.not109 = icmp eq i32 %i.bv, 0
  br i1 %.not109, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.k
  %.not146 = icmp eq i64 %.3100135, 255
  br i1 %.not146, label %.critedge.thread, label %.lr.ph127.preheader

.lr.ph127.preheader:                              ; preds = %.preheader
  %1 = trunc nuw nsw i64 %.3100135 to i32
  %2 = sub nuw nsw i32 256, %1
  br label %.lr.ph127

bb.l:                                             ; preds = %bb.k
  %i.bw = icmp ult i32 %i.bv, 256
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = zext nneg i32 %i.bv to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.bx
  %i.bz = load double, ptr %i.by, align 8, !tbaa !11
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit

bb.n:                                             ; preds = %bb.l
  %i.ca = uitofp i32 %i.bv to double
  %i.cb = tail call double @log2(double noundef %i.ca) #5, !tbaa !6
  %.pre = load i32, ptr %i.bu, align 4, !tbaa !6
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit

_ZN13duckdb_brotliL8FastLog2Em.exit:              ; preds = %bb.m, %bb.n
  %i.cc = phi i32 [ %i.bv, %bb.m ], [ %.pre, %bb.n ]
  %.0.i = phi double [ %i.bz, %bb.m ], [ %i.cb, %bb.n ]
  %i.cd = fsub double %.0.i111, %.0.i             ; 2 uses
  %i.ce = fadd double %i.cd, 5.000000e-01
  %i.cf = fptoui double %i.ce to i64
  %i.cg = uitofp i32 %i.cc to double
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.cd, double %.094136)
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 15) ; 2 uses
  %spec.select = tail call i64 @llvm.umax.i64(i64 %spec.store.select, i64 %.087137)
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %spec.store.select ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !6
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !6
  %i.cl = add nuw nsw i64 %.3100135, 1
  br label %.thread

.lr.ph127:                                        ; preds = %.lr.ph127.preheader, %bb.o
  %.0126.in = phi i64 [ %.0126, %bb.o ], [ %.3100135, %.lr.ph127.preheader ]
  %.086125 = phi i32 [ %i.cp, %bb.o ], [ 1, %.lr.ph127.preheader ] ; 2 uses
  %.0126 = add nuw nsw i64 %.0126.in, 1           ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0126
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !6
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.o, label %.critedge

bb.o:                                             ; preds = %.lr.ph127
  %i.cp = add nuw nsw i32 %.086125, 1
  %exitcond153.not = icmp eq i64 %.0126, 255
  br i1 %exitcond153.not, label %.critedge, label %.lr.ph127, !llvm.loop !13

.critedge:                                        ; preds = %.lr.ph127, %bb.o
  %.086.lcssa = phi i32 [ %2, %bb.o ], [ %.086125, %.lr.ph127 ] ; 4 uses
  %i.cq = zext nneg i32 %.086.lcssa to i64
  %i.cr = add nuw nsw i64 %.3100135, %i.cq        ; 3 uses
  %i.cs = icmp eq i64 %i.cr, 256
  br i1 %i.cs, label %.critedge.thread, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.ct = icmp samesign ult i32 %.086.lcssa, 3
  br i1 %i.ct, label %bb.q, label %.lr.ph133.preheader

bb.q:                                             ; preds = %bb.p
  %i.cu = load i32, ptr %i.b, align 16, !tbaa !6
  %i.cv = add i32 %i.cu, %.086.lcssa
  store i32 %i.cv, ptr %i.b, align 16, !tbaa !6
  br label %.thread

.lr.ph133.preheader:                              ; preds = %bb.p
  %i.cw = add nsw i32 %.086.lcssa, -2
  br label %.lr.ph133

.lr.ph133:                                        ; preds = %.lr.ph133.preheader, %.lr.ph133
  %i.cx = phi i32 [ %i.cy, %.lr.ph133 ], [ %.lcssa141, %.lr.ph133.preheader ]
  %.1132 = phi i32 [ %i.da, %.lr.ph133 ], [ %i.cw, %.lr.ph133.preheader ]
  %.195131 = phi double [ %i.cz, %.lr.ph133 ], [ %.094136, %.lr.ph133.preheader ]
  %i.cy = add i32 %i.cx, 1                        ; 2 uses
  %i.cz = fadd double %.195131, 3.000000e+00      ; 2 uses
  %i.da = lshr i32 %.1132, 3                      ; 2 uses
  %.not110 = icmp eq i32 %i.da, 0
  br i1 %.not110, label %.thread, label %.lr.ph133, !llvm.loop !14

.thread:                                          ; preds = %.lr.ph133, %bb.q, %_ZN13duckdb_brotliL8FastLog2Em.exit
  %.lcssa139 = phi i32 [ %.lcssa141, %_ZN13duckdb_brotliL8FastLog2Em.exit ], [ %.lcssa141, %bb.q ], [ %i.cy, %.lr.ph133 ] ; 2 uses
  %.4101 = phi i64 [ %i.cl, %_ZN13duckdb_brotliL8FastLog2Em.exit ], [ %i.cr, %bb.q ], [ %i.cr, %.lr.ph133 ] ; 2 uses
  %.4 = phi double [ %i.ch, %_ZN13duckdb_brotliL8FastLog2Em.exit ], [ %.094136, %bb.q ], [ %i.cz, %.lr.ph133 ] ; 2 uses
  %.2 = phi i64 [ %spec.select, %_ZN13duckdb_brotliL8FastLog2Em.exit ], [ %.087137, %bb.q ], [ %.087137, %.lr.ph133 ] ; 2 uses
  %i.db = icmp ult i64 %.4101, 256
  br i1 %i.db, label %bb.k, label %.critedge.thread, !llvm.loop !15

.critedge.thread:                                 ; preds = %.critedge, %.thread, %.preheader
  %i.dc = phi i32 [ %.lcssa141, %.preheader ], [ %.lcssa139, %.thread ], [ %.lcssa141, %.critedge ] ; 3 uses
  %.094.lcssa = phi double [ %.094136, %.preheader ], [ %.4, %.thread ], [ %.094136, %.critedge ]
  %.087.lcssa = phi i64 [ %.087137, %.preheader ], [ %.2, %.thread ], [ %.087137, %.critedge ]
  %i.dd = load i32, ptr %i.b, align 16, !tbaa !6  ; 4 uses
  %i.de = zext i32 %i.dd to i64                   ; 2 uses
  %i.df = icmp ult i32 %i.dd, 256
  br i1 %i.df, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.critedge.thread
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.de
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !11
  %.pre166 = uitofp nneg i32 %i.dd to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i

bb.s:                                             ; preds = %.critedge.thread
  %i.di = uitofp i32 %i.dd to double              ; 2 uses
  %i.dj = tail call double @log2(double noundef %i.di) #5, !tbaa !6
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i

_ZN13duckdb_brotliL8FastLog2Em.exit31.i:          ; preds = %bb.s, %bb.r
  %.pre-phi = phi double [ %i.di, %bb.s ], [ %.pre166, %bb.r ]
  %.0.i30.i = phi double [ %i.dj, %bb.s ], [ %i.dh, %bb.r ]
  %i.dk = fneg double %.pre-phi
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.dk, double %.0.i30.i, double 0.000000e+00)
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.dm = load i32, ptr %.ptr.i, align 4, !tbaa !6 ; 3 uses
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = add nuw nsw i64 %i.de, %i.dn
  %i.dp = uitofp i32 %i.dm to double              ; 2 uses
  %i.dq = icmp ult i32 %i.dm, 256
  br i1 %i.dq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.dn
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !11
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i

bb.u:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i
  %i.dt = tail call double @log2(double noundef %i.dp) #5, !tbaa !6
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i

_ZN13duckdb_brotliL8FastLog2Em.exit29.i:          ; preds = %bb.u, %bb.t
  %.0.i28.i = phi double [ %i.ds, %bb.t ], [ %i.dt, %bb.u ]
  %i.du = fneg double %i.dp
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.du, double %.0.i28.i, double %i.dl)
  %.025.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dw = load i32, ptr %.025.ptr.i.1, align 8, !tbaa !6 ; 4 uses
  %i.dx = zext i32 %i.dw to i64                   ; 2 uses
  %i.dy = icmp ult i32 %i.dw, 256
  br i1 %i.dy, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i
  %i.dz = uitofp i32 %i.dw to double              ; 2 uses
  %i.ea = tail call double @log2(double noundef %i.dz) #5, !tbaa !6
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.1

bb.w:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.dx
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !11
  %.pre167 = uitofp nneg i32 %i.dw to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.1

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.1:        ; preds = %bb.w, %bb.v
  %.pre-phi168 = phi double [ %.pre167, %bb.w ], [ %i.dz, %bb.v ]
  %.0.i30.i.1 = phi double [ %i.ec, %bb.w ], [ %i.ea, %bb.v ]
  %i.ed = fneg double %.pre-phi168
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.ed, double %.0.i30.i.1, double %i.dv)
  %i.ef = add nuw nsw i64 %i.do, %i.dx
  %.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.eg = load i32, ptr %.ptr.i.1, align 4, !tbaa !6 ; 3 uses
  %i.eh = zext i32 %i.eg to i64                   ; 2 uses
  %i.ei = add nuw nsw i64 %i.ef, %i.eh
  %i.ej = uitofp i32 %i.eg to double              ; 2 uses
  %i.ek = icmp ult i32 %i.eg, 256
  br i1 %i.ek, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.1
  %i.el = tail call double @log2(double noundef %i.ej) #5, !tbaa !6
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.1

bb.y:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.1
  %i.em = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.eh
  %i.en = load double, ptr %i.em, align 8, !tbaa !11
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.1

_ZN13duckdb_brotliL8FastLog2Em.exit29.i.1:        ; preds = %bb.y, %bb.x
  %.0.i28.i.1 = phi double [ %i.en, %bb.y ], [ %i.el, %bb.x ]
  %i.eo = fneg double %i.ej
  %i.ep = tail call double @llvm.fmuladd.f64(double %i.eo, double %.0.i28.i.1, double %i.ee)
  %.025.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.eq = load i32, ptr %.025.ptr.i.2, align 16, !tbaa !6 ; 4 uses
  %i.er = zext i32 %i.eq to i64                   ; 2 uses
  %i.es = icmp ult i32 %i.eq, 256
  br i1 %i.es, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.1
  %i.et = uitofp i32 %i.eq to double              ; 2 uses
  %i.eu = tail call double @log2(double noundef %i.et) #5, !tbaa !6
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.2

bb.aa:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.1
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.er
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !11
  %.pre169 = uitofp nneg i32 %i.eq to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.2

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.2:        ; preds = %bb.aa, %bb.z
  %.pre-phi170 = phi double [ %.pre169, %bb.aa ], [ %i.et, %bb.z ]
  %.0.i30.i.2 = phi double [ %i.ew, %bb.aa ], [ %i.eu, %bb.z ]
  %i.ex = fneg double %.pre-phi170
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.ex, double %.0.i30.i.2, double %i.ep)
  %i.ez = add nuw nsw i64 %i.ei, %i.er
  %.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.fa = load i32, ptr %.ptr.i.2, align 4, !tbaa !6 ; 3 uses
  %i.fb = zext i32 %i.fa to i64                   ; 2 uses
  %i.fc = add nuw nsw i64 %i.ez, %i.fb
  %i.fd = uitofp i32 %i.fa to double              ; 2 uses
  %i.fe = icmp ult i32 %i.fa, 256
  br i1 %i.fe, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.2
  %i.ff = tail call double @log2(double noundef %i.fd) #5, !tbaa !6
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.2

bb.ac:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.2
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.fb
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !11
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.2

_ZN13duckdb_brotliL8FastLog2Em.exit29.i.2:        ; preds = %bb.ac, %bb.ab
  %.0.i28.i.2 = phi double [ %i.fh, %bb.ac ], [ %i.ff, %bb.ab ]
  %i.fi = fneg double %i.fd
  %i.fj = tail call double @llvm.fmuladd.f64(double %i.fi, double %.0.i28.i.2, double %i.ey)
  %.025.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.fk = load i32, ptr %.025.ptr.i.3, align 8, !tbaa !6 ; 4 uses
  %i.fl = zext i32 %i.fk to i64                   ; 2 uses
  %i.fm = icmp ult i32 %i.fk, 256
  br i1 %i.fm, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.2
  %i.fn = uitofp i32 %i.fk to double              ; 2 uses
  %i.fo = tail call double @log2(double noundef %i.fn) #5, !tbaa !6
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.3

bb.ae:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.2
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.fl
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !11
  %.pre171 = uitofp nneg i32 %i.fk to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.3

_ZN13duckdb_brotliL8FastLog2Em.exit31.i.3:        ; preds = %bb.ae, %bb.ad
  %.pre-phi172 = phi double [ %.pre171, %bb.ae ], [ %i.fn, %bb.ad ]
  %.0.i30.i.3 = phi double [ %i.fq, %bb.ae ], [ %i.fo, %bb.ad ]
  %i.fr = fneg double %.pre-phi172
  %i.fs = tail call double @llvm.fmuladd.f64(double %i.fr, double %.0.i30.i.3, double %i.fj)
  %i.ft = add nuw nsw i64 %i.fc, %i.fl
  %.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.fu = load i32, ptr %.ptr.i.3, align 4, !tbaa !6 ; 3 uses
  %i.fv = zext i32 %i.fu to i64                   ; 2 uses
  %i.fw = add nuw nsw i64 %i.ft, %i.fv
  %i.fx = uitofp i32 %i.fu to double              ; 2 uses
  %i.fy = icmp ult i32 %i.fu, 256
  br i1 %i.fy, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.3
  %i.fz = tail call double @log2(double noundef %i.fx) #5, !tbaa !6
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit29.i.3

bb.ag:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit31.i.3
end_hunk_0
