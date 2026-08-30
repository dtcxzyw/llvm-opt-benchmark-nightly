Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/bit_cost?download=true
inline.NumInlined: 3
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kBrotliLog2Table = external hidden local_unnamed_addr constant [256 x double], code_model "small", align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define hidden double @BrotliBitsEntropy(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.b = and i64 %1, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a, %FastLog2.exit31
  %.026 = phi ptr [ %i.o, %FastLog2.exit31 ], [ %0, %bb.a ] ; 3 uses
  %.024 = phi i64 [ %i.r, %FastLog2.exit31 ], [ 0, %bb.a ] ; 5 uses
  %.0 = phi double [ %i.y, %FastLog2.exit31 ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.c = icmp ult ptr %.026, %i.a
  br i1 %i.c, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.026, i64 4
  %i.e = load i32, ptr %.026, align 4, !tbaa !8   ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = add i64 %.024, %i.f
  %i.h = uitofp i32 %i.e to double                ; 2 uses
  %i.i = icmp ult i32 %i.e, 256
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.f
  %i.k = load double, ptr %i.j, align 8, !tbaa !9
  br label %FastLog2.exit33

bb.e:                                             ; preds = %bb.c
  %i.l = tail call double @log2(double noundef %i.h) #5
  br label %FastLog2.exit33

FastLog2.exit33:                                  ; preds = %bb.d, %bb.e
  %.0.i32 = phi double [ %i.k, %bb.d ], [ %i.l, %bb.e ]
  %i.m = fneg double %i.h
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %.0.i32, double %.0)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %FastLog2.exit33
  %.127 = phi ptr [ %0, %bb.a ], [ %i.d, %FastLog2.exit33 ] ; 2 uses
  %.127.a = phi i64 [ 0, %bb.a ], [ %i.g, %FastLog2.exit33 ]
  %.125 = phi double [ 0.000000e+00, %bb.a ], [ %i.n, %FastLog2.exit33 ]
  %i.o = getelementptr inbounds nuw i8, ptr %.127, i64 4
  %i.p = load i32, ptr %.127, align 4, !tbaa !8   ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = add i64 %.127.a, %i.q
  %i.s = uitofp i32 %i.p to double                ; 2 uses
  %i.t = icmp ult i32 %i.p, 256
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.q
  %i.v = load double, ptr %i.u, align 8, !tbaa !9
  br label %FastLog2.exit31

bb.h:                                             ; preds = %bb.f
  %i.w = tail call double @log2(double noundef %i.s) #5
  br label %FastLog2.exit31

FastLog2.exit31:                                  ; preds = %bb.g, %bb.h
  %.0.i30 = phi double [ %i.v, %bb.g ], [ %i.w, %bb.h ]
  %i.x = fneg double %i.s
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double %.0.i30, double %.125)
  br label %bb.b, !llvm.loop !11

bb.i:                                             ; preds = %bb.b
  %.not29 = icmp eq i64 %.024, 0
  br i1 %.not29, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = uitofp i64 %.024 to double               ; 3 uses
  %i.aa = icmp ult i64 %.024, 256
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %.024
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !9
  br label %FastLog2.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = tail call double @log2(double noundef %i.z) #5
  br label %FastLog2.exit

FastLog2.exit:                                    ; preds = %bb.k, %bb.l
  %.0.i = phi double [ %i.ac, %bb.k ], [ %i.ad, %bb.l ]
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.z, double %.0.i, double %.0)
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %FastLog2.exit
  %.pre-phi = phi double [ %i.z, %FastLog2.exit ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %.2 = phi double [ %i.ae, %FastLog2.exit ], [ %.0, %bb.i ] ; 2 uses
  %i.af = fcmp olt double %.2, %.pre-phi
  %.3 = select i1 %i.af, double %.pre-phi, double %.2
  ret double %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define hidden double @BrotliPopulationCostLiteral(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x i64], align 16               ; 11 uses
  %i.b = alloca [18 x i32], align 16              ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 5 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.bc, label %.preheader118

.preheader118:                                    ; preds = %bb.a, %bb.d
  %.088120 = phi i32 [ %.189.1, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %.097119 = phi i64 [ %i.s, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.097119
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.preheader118.1, label %bb.b

bb.b:                                             ; preds = %.preheader118
  %i.h = sext i32 %.088120 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.h
  store i64 %.097119, ptr %i.i, align 8, !tbaa !16
  %i.j = add nsw i32 %.088120, 1                  ; 2 uses
  %i.k = icmp sgt i32 %.088120, 3
  br i1 %i.k, label %bb.e, label %.preheader118.1

.preheader118.1:                                  ; preds = %.preheader118, %bb.b
  %.189 = phi i32 [ %i.j, %bb.b ], [ %.088120, %.preheader118 ] ; 4 uses
  %i.l = or disjoint i64 %.097119, 1              ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !8
  %.not.1 = icmp eq i32 %i.n, 0
  br i1 %.not.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader118.1
  %i.o = sext i32 %.189 to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.o
  store i64 %i.l, ptr %i.p, align 8, !tbaa !16
  %i.q = add nsw i32 %.189, 1                     ; 2 uses
  %i.r = icmp sgt i32 %.189, 3
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader118.1
  %.189.1 = phi i32 [ %i.q, %bb.c ], [ %.189, %.preheader118.1 ] ; 2 uses
  %i.s = add nuw nsw i64 %.097119, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.s, 256
  br i1 %exitcond.not.1, label %bb.e, label %.preheader118, !llvm.loop !17

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.2.a = phi i32 [ %i.j, %bb.b ], [ %.189.1, %bb.d ], [ %i.q, %bb.c ]
  switch i32 %.2.a, label %bb.h [
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
  %i.v = load i64, ptr %i.a, align 16, !tbaa !16
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !8  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !16
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8  ; 2 uses
  %i.ag = tail call i32 @llvm.umax.i32(i32 %i.ab, i32 %i.af)
  %i.ah = tail call i32 @llvm.umax.i32(i32 %i.x, i32 %i.ag)
  %i.ai = add i32 %i.ab, %i.x
  %i.aj = add i32 %i.ai, %i.af
  %i.ak = shl i32 %i.aj, 1
  %i.al = uitofp i32 %i.ak to double
  %i.am = fadd double %i.al, 2.800000e+01
  %i.an = uitofp i32 %i.ah to double
  %i.ao = fsub double %i.am, %i.an
  br label %bb.bc

.lr.ph:                                           ; preds = %bb.e
  %i.ap = load i64, ptr %i.a, align 16, !tbaa !16
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ax = load i64, ptr %i.aw, align 16, !tbaa !16
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !8  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !16
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !8  ; 2 uses
  %spec.select187 = tail call i32 @llvm.umin.i32(i32 %i.av, i32 %i.ar) ; 2 uses
  %spec.select188 = tail call i32 @llvm.umax.i32(i32 %i.av, i32 %i.ar) ; 2 uses
  %.sroa.18.5 = tail call i32 @llvm.umin.i32(i32 %i.az, i32 %spec.select188) ; 2 uses
  %.sroa.0.2 = tail call i32 @llvm.umax.i32(i32 %i.az, i32 %spec.select188) ; 2 uses
  %.sroa.26.5 = tail call i32 @llvm.umin.i32(i32 %i.bd, i32 %.sroa.0.2) ; 2 uses
  %.sroa.0.3 = tail call i32 @llvm.umax.i32(i32 %i.bd, i32 %.sroa.0.2) ; 2 uses
  %.sroa.18.1 = tail call i32 @llvm.umin.i32(i32 %.sroa.18.5, i32 %spec.select187)
  %.sroa.10.2 = tail call i32 @llvm.umax.i32(i32 %.sroa.18.5, i32 %spec.select187) ; 2 uses
  %.sroa.26.4 = tail call i32 @llvm.umin.i32(i32 %.sroa.26.5, i32 %.sroa.10.2)
  %.sroa.10.4 = tail call i32 @llvm.umax.i32(i32 %.sroa.26.5, i32 %.sroa.10.2)
  %i.be = add i32 %.sroa.18.1, %.sroa.26.4        ; 2 uses
  %i.bf = tail call i32 @llvm.umax.i32(i32 %i.be, i32 %.sroa.0.3)
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
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.d
  %i.br = load double, ptr %i.bq, align 8, !tbaa !9
  br label %FastLog2.exit112

bb.j:                                             ; preds = %bb.h
  %i.bs = uitofp i64 %i.d to double
  %i.bt = tail call double @log2(double noundef %i.bs) #5
  br label %FastLog2.exit112

FastLog2.exit112:                                 ; preds = %bb.i, %bb.j
  %.0.i111 = phi double [ %i.br, %bb.i ], [ %i.bt, %bb.j ]
  br label %bb.k

bb.k:                                             ; preds = %FastLog2.exit112, %.thread
  %.lcssa141 = phi i32 [ 0, %FastLog2.exit112 ], [ %.lcssa139, %.thread ] ; 5 uses
  %.090137 = phi i64 [ 1, %FastLog2.exit112 ], [ %.292, %.thread ] ; 5 uses
  %.093136 = phi double [ 0.000000e+00, %FastLog2.exit112 ], [ %.4, %.thread ] ; 5 uses
  %.3100135 = phi i64 [ 0, %FastLog2.exit112 ], [ %.4101, %.thread ] ; 5 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3100135 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !8  ; 5 uses
  %.not109 = icmp eq i32 %i.bv, 0
  br i1 %.not109, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.k
  %.not146 = icmp eq i64 %.3100135, 255
  br i1 %.not146, label %.critedge.thread, label %.lr.ph127

bb.l:                                             ; preds = %bb.k
  %i.bw = icmp ult i32 %i.bv, 256
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = zext nneg i32 %i.bv to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.bx
  %i.bz = load double, ptr %i.by, align 8, !tbaa !9
  br label %FastLog2.exit

bb.n:                                             ; preds = %bb.l
  %i.ca = uitofp i32 %i.bv to double
  %i.cb = tail call double @log2(double noundef %i.ca) #5
  %.pre = load i32, ptr %i.bu, align 4, !tbaa !8
  br label %FastLog2.exit

FastLog2.exit:                                    ; preds = %bb.m, %bb.n
  %i.cc = phi i32 [ %i.bv, %bb.m ], [ %.pre, %bb.n ]
  %.0.i = phi double [ %i.bz, %bb.m ], [ %i.cb, %bb.n ]
  %i.cd = fsub double %.0.i111, %.0.i             ; 2 uses
  %i.ce = fadd double %i.cd, 5.000000e-01
  %i.cf = fptoui double %i.ce to i64
  %i.cg = uitofp i32 %i.cc to double
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.cd, double %.093136)
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 15) ; 2 uses
  %spec.select = tail call i64 @llvm.umax.i64(i64 %spec.store.select, i64 %.090137)
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %spec.store.select ; 2 uses
end_hunk_0
