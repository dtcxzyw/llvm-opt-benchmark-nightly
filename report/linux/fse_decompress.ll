Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/fse_decompress?download=true
inline.NumInlined: 90
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BIT_DStream_t = type { i64, i32, ptr, ptr, ptr }
%struct.FSE_DState_t = type { i64, ptr }

@BIT_reloadDStream.zeroFilled = internal constant i64 0, align 8

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite)
define dso_local range(i64 -46, 1) i64 @FSE_buildDTable_wksp(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, i64 noundef %5) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i64 @FSE_buildDTable_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5) #10, !srcloc !10
  ret i64 %i.a
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite)
define internal fastcc range(i64 -46, 1) i64 @FSE_buildDTable_internal(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, i64 noundef %5) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 11 uses
  %i.b = zext i32 %2 to i64
  %i.c = getelementptr [2 x i8], ptr %4, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 2        ; 4 uses
  %i.e = add i32 %2, 1                            ; 4 uses
  %i.f = shl nuw i32 1, %3                        ; 7 uses
  %i.g = add i32 %i.f, -1                         ; 5 uses
  %i.h = zext i32 %i.e to i64                     ; 3 uses
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = zext nneg i32 %3 to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = add nuw i64 %i.k, 8
  %i.m = add nuw i64 %i.l, %i.i
  %i.n = icmp ugt i64 %i.m, %5
  %i.o = icmp ugt i32 %2, 255
  %or.cond = or i1 %i.o, %i.n
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = icmp ugt i32 %3, 12
  br i1 %i.p, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = trunc nuw nsw i32 %3 to i16
  %sext = shl nuw nsw i32 32768, %3
  %i.r = lshr exact i32 %sext, 16                 ; 3 uses
  %xtraiter = and i64 %i.h, 1
  %i.s = icmp eq i32 %2, 0
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.h, 510
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.i ] ; 5 uses
  %.sroa.5.0140 = phi i16 [ 1, %.lr.ph.new ], [ %.sroa.5.2.1, %bb.i ] ; 2 uses
  %.0127139 = phi i32 [ %i.g, %.lr.ph.new ], [ %.1128.1, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.i ]
  %i.t = getelementptr [2 x i8], ptr %1, i64 %indvars.iv
  %i.u = load i16, ptr %i.t, align 2              ; 3 uses
  %i.v = icmp eq i16 %i.u, -1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = trunc i64 %indvars.iv to i8
  %i.x = add i32 %.0127139, -1
  %i.y = zext i32 %.0127139 to i64
  %i.z = getelementptr [4 x i8], ptr %i.a, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 2
  store i8 %i.w, ptr %i.aa, align 2
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ab = sext i16 %i.u to i32
  %.not135 = icmp sgt i32 %i.r, %i.ab
  %spec.select = select i1 %.not135, i16 %.sroa.5.0140, i16 0
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink = phi i16 [ 1, %bb.d ], [ %i.u, %bb.e ]
  %.1128 = phi i32 [ %i.x, %bb.d ], [ %.0127139, %bb.e ] ; 3 uses
  %.sroa.5.2 = phi i16 [ %.sroa.5.0140, %bb.d ], [ %spec.select, %bb.e ] ; 2 uses
  %i.ac = getelementptr [2 x i8], ptr %4, i64 %indvars.iv
  store i16 %.sink, ptr %i.ac, align 2
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ad = getelementptr [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.ae = load i16, ptr %i.ad, align 2            ; 3 uses
  %i.af = icmp eq i16 %i.ae, -1
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = sext i16 %i.ae to i32
  %.not135.1 = icmp sgt i32 %i.r, %i.ag
  %spec.select.1 = select i1 %.not135.1, i16 %.sroa.5.2, i16 0
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ah = trunc i64 %indvars.iv.next to i8
  %i.ai = add i32 %.1128, -1
  %i.aj = zext i32 %.1128 to i64
  %i.ak = getelementptr [4 x i8], ptr %i.a, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 2
  store i8 %i.ah, ptr %i.al, align 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink.1 = phi i16 [ 1, %bb.h ], [ %i.ae, %bb.g ]
  %.1128.1 = phi i32 [ %i.ai, %bb.h ], [ %.1128, %bb.g ] ; 3 uses
  %.sroa.5.2.1 = phi i16 [ %.sroa.5.2, %bb.h ], [ %spec.select.1, %bb.g ] ; 3 uses
  %i.am = getelementptr [2 x i8], ptr %4, i64 %indvars.iv.next
  store i16 %.sink.1, ptr %i.am, align 2
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.c, !llvm.loop !11

._crit_edge.unr-lcssa:                            ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %.sroa.5.0140.epil.init = phi i16 [ 1, %.lr.ph ], [ %.sroa.5.2.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.0127139.epil.init = phi i32 [ %i.g, %.lr.ph ], [ %.1128.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod191 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod191)
  %i.an = getelementptr [2 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.ao = load i16, ptr %i.an, align 2            ; 3 uses
  %i.ap = icmp eq i16 %i.ao, -1
  br i1 %i.ap, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.epil.preheader
  %i.aq = sext i16 %i.ao to i32
  %.not135.epil = icmp sgt i32 %i.r, %i.aq
  %spec.select.epil = select i1 %.not135.epil, i16 %.sroa.5.0140.epil.init, i16 0
  br label %._crit_edge.epilog-lcssa

bb.k:                                             ; preds = %.epil.preheader
  %i.ar = trunc i64 %indvars.iv.epil.init to i8
  %i.as = add i32 %.0127139.epil.init, -1
  %i.at = zext i32 %.0127139.epil.init to i64
  %i.au = getelementptr [4 x i8], ptr %i.a, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 2
  store i8 %i.ar, ptr %i.av, align 2
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %bb.k, %bb.j
  %.sink.epil = phi i16 [ 1, %bb.k ], [ %i.ao, %bb.j ]
  %.1128.epil = phi i32 [ %i.as, %bb.k ], [ %.0127139.epil.init, %bb.j ]
  %.sroa.5.2.epil = phi i16 [ %.sroa.5.0140.epil.init, %bb.k ], [ %spec.select.epil, %bb.j ]
  %i.aw = getelementptr [2 x i8], ptr %4, i64 %indvars.iv.epil.init
  store i16 %.sink.epil, ptr %i.aw, align 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  %.1128.lcssa = phi i32 [ %.1128.1, %._crit_edge.unr-lcssa ], [ %.1128.epil, %._crit_edge.epilog-lcssa ] ; 2 uses
  %.sroa.5.2.lcssa = phi i16 [ %.sroa.5.2.1, %._crit_edge.unr-lcssa ], [ %.sroa.5.2.epil, %._crit_edge.epilog-lcssa ]
  store i16 %i.q, ptr %0, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.5.2.lcssa, ptr %.sroa.5.0..sroa_idx, align 2
  %i.ax = icmp eq i32 %.1128.lcssa, %i.g
  %i.ay = lshr i32 %i.f, 1                        ; 2 uses
  br i1 %i.ax, label %.lr.ph160.preheader, label %.preheader138.lr.ph

.lr.ph160.preheader:                              ; preds = %._crit_edge
  %i.az = zext i32 %i.g to i64                    ; 7 uses
  %i.ba = lshr i32 %i.f, 3
  %i.bb = add nuw nsw i32 %i.ba, 3
  %i.bc = add nuw nsw i32 %i.bb, %i.ay
  %i.bd = zext nneg i32 %i.bc to i64              ; 4 uses
  %wide.trip.count177 = zext nneg i32 %i.e to i64
  br label %.lr.ph160

.preheader136:                                    ; preds = %._crit_edge155
  %i.be = zext nneg i32 %i.f to i64               ; 3 uses
  %i.bf = shl nuw nsw i64 %i.bd, 1                ; 2 uses
  %6 = add nsw i64 %i.be, -1                      ; 2 uses
  %7 = lshr i64 %6, 1                             ; 2 uses
  %8 = add nuw nsw i64 %7, 1                      ; 2 uses
  %9 = icmp eq i64 %7, 0
  br i1 %9, label %.loopexit137.a, label %.preheader136.new

.preheader136.new:                                ; preds = %.preheader136
  %unroll_iter195 = and i64 %8, 9223372036854775806
  br label %.preheader

.lr.ph160:                                        ; preds = %.lr.ph160.preheader, %._crit_edge155
  %indvars.iv173 = phi i64 [ 0, %.lr.ph160.preheader ], [ %indvars.iv.next174, %._crit_edge155 ] ; 2 uses
  %.0123157 = phi i64 [ 0, %.lr.ph160.preheader ], [ %i.bp, %._crit_edge155 ] ; 3 uses
  %.0124156 = phi i64 [ 0, %.lr.ph160.preheader ], [ %i.bo, %._crit_edge155 ] ; 2 uses
  %i.bg = getelementptr [2 x i8], ptr %1, i64 %indvars.iv173
  %i.bh = load i16, ptr %i.bg, align 2            ; 3 uses
  %i.bi = getelementptr i8, ptr %i.d, i64 %.0124156 ; 2 uses
  store i64 %.0123157, ptr %i.bi, align 1
  %i.bj = icmp sgt i16 %i.bh, 8
  br i1 %i.bj, label %.lr.ph154.preheader, label %._crit_edge155

.lr.ph154.preheader:                              ; preds = %.lr.ph160
  %i.bk = zext nneg i16 %i.bh to i64
  br label %.lr.ph154

.lr.ph154:                                        ; preds = %.lr.ph154.preheader, %.lr.ph154
  %indvars.iv170 = phi i64 [ 8, %.lr.ph154.preheader ], [ %indvars.iv.next171, %.lr.ph154 ] ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bi, i64 %indvars.iv170
  store i64 %.0123157, ptr %i.bl, align 1
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 8 ; 2 uses
  %i.bm = icmp samesign ult i64 %indvars.iv.next171, %i.bk
  br i1 %i.bm, label %.lr.ph154, label %._crit_edge155, !llvm.loop !13

._crit_edge155:                                   ; preds = %.lr.ph154, %.lr.ph160
  %i.bn = sext i16 %i.bh to i64
  %i.bo = add i64 %.0124156, %i.bn
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %i.bp = add i64 %.0123157, 72340172838076673
  %exitcond178.not = icmp eq i64 %indvars.iv.next174, %wide.trip.count177
  br i1 %exitcond178.not, label %.preheader136, label %.lr.ph160, !llvm.loop !14

.preheader:                                       ; preds = %.preheader, %.preheader136.new
  %.0119163 = phi i64 [ 0, %.preheader136.new ], [ %23, %.preheader ] ; 3 uses
  %.0119163.a = phi i64 [ 0, %.preheader136.new ], [ %i.cc, %.preheader ] ; 3 uses
  %.0120162 = phi i64 [ 0, %.preheader136.new ], [ %i.cd, %.preheader ]
  %10 = getelementptr i8, ptr %i.d, i64 %.0119163 ; 2 uses
  %11 = and i64 %.0119163.a, %i.az
  %12 = load i8, ptr %10, align 1
  %13 = getelementptr [4 x i8], ptr %i.a, i64 %11
  %14 = getelementptr i8, ptr %13, i64 2
  store i8 %12, ptr %14, align 2
  %15 = add nuw nsw i64 %.0119163.a, %i.bd
  %16 = and i64 %15, %i.az
  %17 = getelementptr i8, ptr %10, i64 1
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr [4 x i8], ptr %i.a, i64 %16
  %i.bq = getelementptr i8, ptr %19, i64 2
  store i8 %18, ptr %i.bq, align 2
  %20 = add nuw nsw i64 %.0119163.a, %i.bf
  %i.br = and i64 %20, %i.az                      ; 3 uses
  %21 = getelementptr i8, ptr %i.d, i64 %.0119163 ; 2 uses
  %22 = getelementptr i8, ptr %21, i64 2
  %i.bs = load i8, ptr %22, align 1
  %i.bt = getelementptr [4 x i8], ptr %i.a, i64 %i.br
  %i.bu = getelementptr i8, ptr %i.bt, i64 2
  store i8 %i.bs, ptr %i.bu, align 2
  %i.bv = add nuw nsw i64 %i.br, %i.bd
  %i.bw = and i64 %i.bv, %i.az
  %i.bx = getelementptr i8, ptr %21, i64 3
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = getelementptr [4 x i8], ptr %i.a, i64 %i.bw
  %i.ca = getelementptr i8, ptr %i.bz, i64 2
  store i8 %i.by, ptr %i.ca, align 2
  %i.cb = add nuw nsw i64 %i.br, %i.bf
  %i.cc = and i64 %i.cb, %i.az                    ; 2 uses
  %23 = add nuw nsw i64 %.0119163, 4              ; 2 uses
  %i.cd = add nuw nsw i64 %.0120162, 2            ; 2 uses
  %niter196.ncmp.1.not = icmp eq i64 %i.cd, %unroll_iter195
  br i1 %niter196.ncmp.1.not, label %.loopexit137.loopexit.unr-lcssa, label %.preheader, !llvm.loop !15

.preheader138.lr.ph:                              ; preds = %._crit_edge
  %i.ce = lshr i32 %i.f, 3
  %i.cf = add nuw nsw i32 %i.ce, 3
  %i.cg = add nuw nsw i32 %i.cf, %i.ay
  %wide.trip.count168 = zext nneg i32 %i.e to i64
  br label %.preheader138

.preheader138:                                    ; preds = %.preheader138.lr.ph, %._crit_edge146
  %indvars.iv165 = phi i64 [ 0, %.preheader138.lr.ph ], [ %indvars.iv.next166, %._crit_edge146 ] ; 3 uses
  %.0115149 = phi i32 [ 0, %.preheader138.lr.ph ], [ %.1116.lcssa, %._crit_edge146 ] ; 2 uses
  %i.ch = getelementptr [2 x i8], ptr %1, i64 %indvars.iv165 ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = icmp sgt i16 %i.ci, 0
  br i1 %i.cj, label %.lr.ph145, label %._crit_edge146

.lr.ph145:                                        ; preds = %.preheader138
  %i.ck = trunc i64 %indvars.iv165 to i8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph145, %bb.n
  %.0114144 = phi i32 [ 0, %.lr.ph145 ], [ %i.cp, %bb.n ]
  %.1116143 = phi i32 [ %.0115149, %.lr.ph145 ], [ %.2, %bb.n ] ; 2 uses
  %i.cl = zext i32 %.1116143 to i64
  %i.cm = getelementptr [4 x i8], ptr %i.a, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 2
  store i8 %i.ck, ptr %i.cn, align 2
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.1116.pn = phi i32 [ %.1116143, %bb.l ], [ %.2, %bb.m ]
  %.pn = add i32 %i.cg, %.1116.pn
  %.2 = and i32 %.pn, %i.g                        ; 4 uses
  %i.co = icmp ugt i32 %.2, %.1128.lcssa
  br i1 %i.co, label %bb.m, label %bb.n, !llvm.loop !16

bb.n:                                             ; preds = %bb.m
  %i.cp = add nuw nsw i32 %.0114144, 1            ; 2 uses
  %i.cq = load i16, ptr %i.ch, align 2
  %i.cr = sext i16 %i.cq to i32
  %i.cs = icmp slt i32 %i.cp, %i.cr
  br i1 %i.cs, label %bb.l, label %._crit_edge146, !llvm.loop !17

._crit_edge146:                                   ; preds = %bb.n, %.preheader138
  %.1116.lcssa = phi i32 [ %.0115149, %.preheader138 ], [ %.2, %bb.n ] ; 2 uses
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next166, %wide.trip.count168
  br i1 %exitcond169.not, label %._crit_edge150, label %.preheader138, !llvm.loop !18

._crit_edge150:                                   ; preds = %._crit_edge146
  %.not = icmp eq i32 %.1116.lcssa, 0
  br i1 %.not, label %._crit_edge150..loopexit137_crit_edge, label %.loopexit

._crit_edge150..loopexit137_crit_edge:            ; preds = %._crit_edge150
  %.pre = zext nneg i32 %i.f to i64
  br label %.loopexit137

.loopexit137.loopexit.unr-lcssa:                  ; preds = %.preheader
  %24 = and i64 %6, 2
  %lcmp.mod193.not.not = icmp eq i64 %24, 0
  br i1 %lcmp.mod193.not.not, label %.loopexit137.a, label %.loopexit137

.loopexit137.a:                                   ; preds = %.loopexit137.loopexit.unr-lcssa, %.preheader136
  %.0119163.epil.init = phi i64 [ 0, %.preheader136 ], [ %23, %.loopexit137.loopexit.unr-lcssa ]
  %wide.trip.count182.pre-phi.a = phi i64 [ 0, %.preheader136 ], [ %i.cc, %.loopexit137.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod194 = trunc i64 %8 to i1
  tail call void @llvm.assume(i1 %lcmp.mod194)
  %25 = getelementptr i8, ptr %i.d, i64 %.0119163.epil.init ; 2 uses
  %26 = and i64 %wide.trip.count182.pre-phi.a, %i.az
  %27 = load i8, ptr %25, align 1
  %28 = getelementptr [4 x i8], ptr %i.a, i64 %26
  %29 = getelementptr i8, ptr %28, i64 2
  store i8 %27, ptr %29, align 2
  %30 = add nuw nsw i64 %wide.trip.count182.pre-phi.a, %i.bd
  %31 = and i64 %30, %i.az
  %32 = getelementptr i8, ptr %25, i64 1
  %33 = load i8, ptr %32, align 1
  %34 = getelementptr [4 x i8], ptr %i.a, i64 %31
  %35 = getelementptr i8, ptr %34, i64 2
  store i8 %33, ptr %35, align 2
  br label %.loopexit137

.loopexit137:                                     ; preds = %.loopexit137.a, %.loopexit137.loopexit.unr-lcssa, %._crit_edge150..loopexit137_crit_edge
  %wide.trip.count182.pre-phi = phi i64 [ %.pre, %._crit_edge150..loopexit137_crit_edge ], [ %i.be, %.loopexit137.loopexit.unr-lcssa ], [ %i.be, %.loopexit137.a ]
  br label %bb.o

bb.o:                                             ; preds = %.loopexit137, %bb.o
  %indvars.iv179 = phi i64 [ 0, %.loopexit137 ], [ %indvars.iv.next180, %bb.o ] ; 2 uses
  %i.ct = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv179 ; 3 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 2
  %i.cv = load i8, ptr %i.cu, align 2
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr [2 x i8], ptr %4, i64 %i.cw ; 2 uses
  %i.cy = load i16, ptr %i.cx, align 2            ; 2 uses
  %i.cz = add i16 %i.cy, 1
  store i16 %i.cz, ptr %i.cx, align 2
  %i.da = zext i16 %i.cy to i32                   ; 2 uses
  %i.db = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.da, i1 true)
  %i.dc = xor i32 %i.db, 31
  %i.dd = sub nsw i32 %3, %i.dc                   ; 2 uses
  %i.de = trunc nsw i32 %i.dd to i8
  %i.df = getelementptr i8, ptr %i.ct, i64 3
  store i8 %i.de, ptr %i.df, align 1
  %i.dg = and i32 %i.dd, 255
  %i.dh = shl i32 %i.da, %i.dg
  %i.di = sub i32 %i.dh, %i.f
  %i.dj = trunc i32 %i.di to i16
  store i16 %i.dj, ptr %i.ct, align 2
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond183.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count182.pre-phi
  br i1 %exitcond183.not, label %.loopexit, label %bb.o, !llvm.loop !19

.loopexit:                                        ; preds = %bb.o, %bb.b, %bb.a, %._crit_edge150
  %.1 = phi i64 [ -1, %._crit_edge150 ], [ -46, %bb.a ], [ -44, %bb.b ], [ 0, %bb.o ]
  ret i64 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @FSE_decompress_wksp_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %8 = alloca %struct.BIT_DStream_t, align 8      ; 22 uses
  %9 = alloca %struct.FSE_DState_t, align 8       ; 8 uses
  %10 = alloca %struct.FSE_DState_t, align 8      ; 8 uses
  %11 = alloca %struct.BIT_DStream_t, align 8     ; 14 uses
  %12 = alloca %struct.FSE_DState_t, align 8      ; 8 uses
  %13 = alloca %struct.FSE_DState_t, align 8      ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i64 @FSE_decompress_wksp_body_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6) #10, !srcloc !20
  br label %bb.bk

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 255, ptr %i.b, align 4
  %i.d = getelementptr i8, ptr %5, i64 512        ; 6 uses
  %i.e = icmp ult i64 %6, 512
  br i1 %i.e, label %FSE_decompress_wksp_body_default.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.a, align 4, !annotation !21
  %i.f = call i64 @FSE_readNCount_bmi2(ptr noundef %5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %3, i32 noundef 0) #12 ; 4 uses
  %i.g = icmp ult i64 %i.f, -119
  br i1 %i.g, label %bb.e, label %FSE_decompress_wksp_body_default.exit

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %i.a, align 4              ; 4 uses
  %i.i = icmp ugt i32 %i.h, %4
  br i1 %i.i, label %FSE_decompress_wksp_body_default.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %2, i64 %i.f       ; 11 uses
  %i.k = sub i64 %3, %i.f                         ; 7 uses
  %i.l = shl nuw i32 1, %i.h                      ; 2 uses
  %i.m = add nuw i32 %i.l, 2
  %i.n = sext i32 %i.m to i64
  %i.o = load i32, ptr %i.b, align 4              ; 2 uses
  %i.p = add i32 %i.o, 1
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 1
  %i.s = zext nneg i32 %i.h to i64
  %i.t = shl nuw i64 1, %i.s
  %i.u = shl nsw i64 %i.n, 2
  %i.v = add nuw i64 %i.t, 11
  %i.w = add i64 %i.v, %i.u
  %i.x = add i64 %i.w, %i.r
  %i.y = and i64 %i.x, -4
  %i.z = add i64 %i.y, 516
  %i.aa = icmp ugt i64 %i.z, %6
  br i1 %i.aa, label %FSE_decompress_wksp_body_default.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = add nuw i32 %i.l, 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 2                    ; 2 uses
  %i.ae = getelementptr i8, ptr %i.d, i64 %i.ad
  %.neg191.i = add i64 %6, -512
  %i.af = sub i64 %.neg191.i, %i.ad
  %i.ag = call fastcc i64 @FSE_buildDTable_internal(ptr noundef %i.d, ptr noundef %5, i32 noundef %i.o, i32 noundef %i.h, ptr noundef %i.ae, i64 noundef %i.af) #10, !srcloc !22 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, -119
  br i1 %i.ah, label %bb.h, label %FSE_decompress_wksp_body_default.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr i8, ptr %5, i64 514
  %i.aj = load i16, ptr %i.ai, align 2
  %.not48.i.i = icmp eq i16 %i.aj, 0
  %i.ak = getelementptr i8, ptr %0, i64 %1        ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -3     ; 2 uses
  br i1 %.not48.i.i, label %bb.ao, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 24, i1 false), !annotation !21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.am = icmp eq i64 %i.k, 0
  br i1 %i.am, label %FSE_decompress_usingDTable_generic.exit12.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store ptr %i.j, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %i.j, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = icmp ugt i64 %i.k, 7
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr i8, ptr %2, i64 %3
  %i.as = getelementptr i8, ptr %i.ar, i64 -8     ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.as, ptr %i.at, align 8
  %.val.i.i = load i64, ptr %i.as, align 1        ; 2 uses
  store i64 %.val.i.i, ptr %8, align 8
  %i.au = lshr i64 %.val.i.i, 56                  ; 2 uses
  %.not51.i.i = icmp eq i64 %i.au, 0
  br i1 %.not51.i.i, label %FSE_decompress_usingDTable_generic.exit12.i, label %BIT_initDStream.exit.i

bb.l:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.j, ptr %i.av, align 8
  %i.aw = load i8, ptr %i.j, align 1
  %i.ax = zext i8 %i.aw to i64                    ; 7 uses
  store i64 %i.ax, ptr %8, align 8
  switch i64 %i.k, label %bb.s [
    i64 7, label %bb.m
    i64 6, label %bb.n
    i64 5, label %bb.o
    i64 4, label %bb.p
    i64 3, label %bb.q
    i64 2, label %bb.r
  ]

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr i8, ptr %i.j, i64 6
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 48
  %i.bc = or disjoint i64 %i.bb, %i.ax
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bd = phi i64 [ %i.bc, %bb.m ], [ %i.ax, %bb.l ]
  %i.be = getelementptr i8, ptr %i.j, i64 5
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 40
  %i.bi = add nuw nsw i64 %i.bh, %i.bd
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.bj = phi i64 [ %i.bi, %bb.n ], [ %i.ax, %bb.l ]
  %i.bk = getelementptr i8, ptr %i.j, i64 4
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 32
  %i.bo = add nuw nsw i64 %i.bn, %i.bj
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.bp = phi i64 [ %i.bo, %bb.o ], [ %i.ax, %bb.l ]
  %i.bq = getelementptr i8, ptr %i.j, i64 3
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 24
  %i.bu = add nuw nsw i64 %i.bt, %i.bp
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %i.bv = phi i64 [ %i.bu, %bb.p ], [ %i.ax, %bb.l ]
  %i.bw = getelementptr i8, ptr %i.j, i64 2
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = zext i8 %i.bx to i64
  %i.bz = shl nuw nsw i64 %i.by, 16
  %i.ca = add nuw nsw i64 %i.bz, %i.bv
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %i.cb = phi i64 [ %i.ca, %bb.q ], [ %i.ax, %bb.l ]
  %i.cc = getelementptr i8, ptr %i.j, i64 1
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = zext i8 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 8
  %i.cg = add nuw nsw i64 %i.cf, %i.cb
  store i64 %i.cg, ptr %8, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.l
  %i.ch = getelementptr i8, ptr %2, i64 %3
  %i.ci = getelementptr i8, ptr %i.ch, i64 -1
  %i.cj = load i8, ptr %i.ci, align 1             ; 2 uses
  %.not.i70.i = icmp eq i8 %i.cj, 0
  br i1 %.not.i70.i, label %FSE_decompress_usingDTable_generic.exit12.i, label %BIT_initDStream.exit.thread182.i

BIT_initDStream.exit.thread182.i:                 ; preds = %bb.s
  %i.ck = zext i8 %i.cj to i32
  %i.cl = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.ck, i1 true)
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cn = trunc nuw nsw i64 %i.k to i32
  %i.co = shl nuw nsw i32 %i.cn, 3
  %reass.sub = sub nsw i32 %i.cl, %i.co
  %i.cp = add nsw i32 %reass.sub, 41
  store i32 %i.cp, ptr %i.cm, align 8
  br label %bb.t

BIT_initDStream.exit.i:                           ; preds = %bb.k
end_hunk_0
