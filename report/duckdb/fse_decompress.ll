Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/fse_decompress?download=true
inline.NumInlined: 83
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.duckdb_zstd::BIT_DStream_t" = type { i64, i32, ptr, ptr, ptr }
%"struct.duckdb_zstd::FSE_DState_t" = type { i64, ptr }

@_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled = internal constant i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i64 -46, 1) i64 @_ZN11duckdb_zstd20FSE_buildDTable_wkspEPjPKsjjPvm(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN11duckdb_zstdL24FSE_buildDTable_internalEPjPKsjjPvm(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i64 -46, 1) i64 @_ZN11duckdb_zstdL24FSE_buildDTable_internalEPjPKsjjPvm(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 9 uses
  %i.b = zext i32 %2 to i64
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.e = add i32 %2, 1                            ; 2 uses
  %i.f = shl nuw i32 1, %3                        ; 7 uses
  %i.g = add i32 %i.f, -1                         ; 7 uses
  %i.h = zext i32 %i.e to i64                     ; 5 uses
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
  %.sroa.4.0140 = phi i16 [ 1, %.lr.ph.new ], [ %.sroa.4.2.1, %bb.i ] ; 2 uses
  %.0127139 = phi i32 [ %i.g, %.lr.ph.new ], [ %.1128.1, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.i ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.u = load i16, ptr %i.t, align 2, !tbaa !10   ; 3 uses
  %i.v = icmp eq i16 %i.u, -1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = trunc i64 %indvars.iv to i8
  %i.x = add i32 %.0127139, -1
  %i.y = zext i32 %.0127139 to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  store i8 %i.w, ptr %i.aa, align 2, !tbaa !38
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ab = sext i16 %i.u to i32
  %.not135 = icmp sgt i32 %i.r, %i.ab
  %spec.select = select i1 %.not135, i16 %.sroa.4.0140, i16 0
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink = phi i16 [ 1, %bb.d ], [ %i.u, %bb.e ]
  %.1128 = phi i32 [ %i.x, %bb.d ], [ %.0127139, %bb.e ] ; 3 uses
  %.sroa.4.2 = phi i16 [ %.sroa.4.0140, %bb.d ], [ %spec.select, %bb.e ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv
  store i16 %.sink, ptr %i.ac, align 2, !tbaa !10
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !10 ; 3 uses
  %i.af = icmp eq i16 %i.ae, -1
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = sext i16 %i.ae to i32
  %.not135.1 = icmp sgt i32 %i.r, %i.ag
  %spec.select.1 = select i1 %.not135.1, i16 %.sroa.4.2, i16 0
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ah = trunc i64 %indvars.iv.next to i8
  %i.ai = add i32 %.1128, -1
  %i.aj = zext i32 %.1128 to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store i8 %i.ah, ptr %i.al, align 2, !tbaa !38
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink.1 = phi i16 [ 1, %bb.h ], [ %i.ae, %bb.g ]
  %.1128.1 = phi i32 [ %i.ai, %bb.h ], [ %.1128, %bb.g ] ; 3 uses
  %.sroa.4.2.1 = phi i16 [ %.sroa.4.2, %bb.h ], [ %spec.select.1, %bb.g ] ; 3 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next
  store i16 %.sink.1, ptr %i.am, align 2, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.c, !llvm.loop !28

._crit_edge.unr-lcssa:                            ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %.sroa.4.0140.epil.init = phi i16 [ 1, %.lr.ph ], [ %.sroa.4.2.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.0127139.epil.init = phi i32 [ %i.g, %.lr.ph ], [ %.1128.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod193 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod193)
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !10 ; 3 uses
  %i.ap = icmp eq i16 %i.ao, -1
  br i1 %i.ap, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.epil.preheader
  %i.aq = sext i16 %i.ao to i32
  %.not135.epil = icmp sgt i32 %i.r, %i.aq
  %spec.select.epil = select i1 %.not135.epil, i16 %.sroa.4.0140.epil.init, i16 0
  br label %._crit_edge.epilog-lcssa

bb.k:                                             ; preds = %.epil.preheader
  %i.ar = trunc i64 %indvars.iv.epil.init to i8
  %i.as = add i32 %.0127139.epil.init, -1
  %i.at = zext i32 %.0127139.epil.init to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store i8 %i.ar, ptr %i.av, align 2, !tbaa !38
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %bb.k, %bb.j
  %.sink.epil = phi i16 [ 1, %bb.k ], [ %i.ao, %bb.j ]
  %.1128.epil = phi i32 [ %i.as, %bb.k ], [ %.0127139.epil.init, %bb.j ]
  %.sroa.4.2.epil = phi i16 [ %.sroa.4.0140.epil.init, %bb.k ], [ %spec.select.epil, %bb.j ]
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.epil.init
  store i16 %.sink.epil, ptr %i.aw, align 2, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  %.1128.lcssa = phi i32 [ %.1128.1, %._crit_edge.unr-lcssa ], [ %.1128.epil, %._crit_edge.epilog-lcssa ] ; 4 uses
  %.sroa.4.2.lcssa = phi i16 [ %.sroa.4.2.1, %._crit_edge.unr-lcssa ], [ %.sroa.4.2.epil, %._crit_edge.epilog-lcssa ]
  store i16 %i.q, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.4.2.lcssa, ptr %.sroa.4.0..sroa_idx, align 2
  %i.ax = icmp eq i32 %.1128.lcssa, %i.g
  %i.ay = lshr i32 %i.f, 1                        ; 2 uses
  br i1 %i.ax, label %.lr.ph160.preheader, label %.preheader138.lr.ph

.lr.ph160.preheader:                              ; preds = %._crit_edge
  %i.az = zext nneg i32 %i.g to i64               ; 3 uses
  %i.ba = lshr i32 %i.f, 3
  %i.bb = add nuw nsw i32 %i.ba, 3
  %i.bc = add nuw nsw i32 %i.bb, %i.ay
  %wide.trip.count178 = zext nneg i32 %i.bc to i64 ; 2 uses
  br label %.lr.ph160

.preheader136:                                    ; preds = %._crit_edge155
  %i.bd = zext nneg i32 %i.f to i64               ; 2 uses
  %i.be = shl nuw nsw i64 %wide.trip.count178, 1
  br label %.preheader

.lr.ph160:                                        ; preds = %.lr.ph160.preheader, %._crit_edge155
  %indvars.iv174 = phi i64 [ 0, %.lr.ph160.preheader ], [ %indvars.iv.next175, %._crit_edge155 ] ; 2 uses
  %.0123157 = phi i64 [ 0, %.lr.ph160.preheader ], [ %i.bz, %._crit_edge155 ] ; 4 uses
  %.0124156 = phi i64 [ 0, %.lr.ph160.preheader ], [ %i.by, %._crit_edge155 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv174
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !10 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0124156 ; 3 uses
  store i64 %.0123157, ptr %i.bh, align 1, !tbaa !13
  %i.bi = icmp sgt i16 %i.bg, 8
  br i1 %i.bi, label %.lr.ph154.preheader, label %._crit_edge155

.lr.ph154.preheader:                              ; preds = %.lr.ph160
  %i.bj = zext nneg i16 %i.bg to i64              ; 2 uses
  %i.bk = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 16)
  %i.bl = add nsw i64 %i.bk, -9                   ; 2 uses
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bl, 24
  br i1 %min.iters.check, label %.lr.ph154.preheader190, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph154.preheader
  %n.vec = and i64 %i.bn, 4611686018427387900     ; 3 uses
  %i.bo = shl i64 %n.vec, 3
  %i.bp = or disjoint i64 %i.bo, 8
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.0123157, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl nuw i64 %index, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store <2 x i64> %broadcast.splat, ptr %i.bs, align 1, !tbaa !13
  store <2 x i64> %broadcast.splat, ptr %i.bt, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %._crit_edge155, label %.lr.ph154.preheader190

.lr.ph154.preheader190:                           ; preds = %.lr.ph154.preheader, %middle.block
  %indvars.iv171.ph = phi i64 [ 8, %.lr.ph154.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph154

.lr.ph154:                                        ; preds = %.lr.ph154.preheader190, %.lr.ph154
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %.lr.ph154 ], [ %indvars.iv171.ph, %.lr.ph154.preheader190 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv171
  store i64 %.0123157, ptr %i.bv, align 1, !tbaa !13
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 8 ; 2 uses
  %i.bw = icmp samesign ult i64 %indvars.iv.next172, %i.bj
  br i1 %i.bw, label %.lr.ph154, label %._crit_edge155, !llvm.loop !30

._crit_edge155:                                   ; preds = %.lr.ph154, %middle.block, %.lr.ph160
  %i.bx = sext i16 %i.bg to i64
  %i.by = add i64 %.0124156, %i.bx
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %i.bz = add i64 %.0123157, 72340172838076673
  %exitcond179.not = icmp eq i64 %indvars.iv.next175, %i.h
  br i1 %exitcond179.not, label %.preheader136, label %.lr.ph160, !llvm.loop !31

.preheader:                                       ; preds = %.preheader136, %.preheader
  %.0119163 = phi i64 [ 0, %.preheader136 ], [ %i.cn, %.preheader ] ; 2 uses
  %.0120162 = phi i64 [ 0, %.preheader136 ], [ %i.cm, %.preheader ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0119163 ; 2 uses
  %i.cb = and i64 %.0120162, %i.az
  %i.cc = load i8, ptr %i.ca, align 1, !tbaa !14
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cb
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  store i8 %i.cc, ptr %i.ce, align 2, !tbaa !38
  %i.cf = add nuw nsw i64 %.0120162, %wide.trip.count178
  %i.cg = and i64 %i.cf, %i.az
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !14
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cg
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  store i8 %i.ci, ptr %i.ck, align 2, !tbaa !38
  %i.cl = add nuw nsw i64 %.0120162, %i.be
  %i.cm = and i64 %i.cl, %i.az
  %i.cn = add nuw nsw i64 %.0119163, 2            ; 2 uses
  %i.co = icmp samesign ult i64 %i.cn, %i.bd
  br i1 %i.co, label %.preheader, label %.loopexit137, !llvm.loop !32

.preheader138.lr.ph:                              ; preds = %._crit_edge
  %i.cp = lshr i32 %i.f, 3
  %i.cq = add nuw nsw i32 %i.cp, 3
  %i.cr = add nuw nsw i32 %i.cq, %i.ay            ; 3 uses
  br label %.preheader138

.preheader138:                                    ; preds = %.preheader138.lr.ph, %._crit_edge146
  %indvars.iv166 = phi i64 [ 0, %.preheader138.lr.ph ], [ %indvars.iv.next167, %._crit_edge146 ] ; 3 uses
  %.0115149 = phi i32 [ 0, %.preheader138.lr.ph ], [ %.1116.lcssa, %._crit_edge146 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv166
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !10 ; 5 uses
  %i.cu = icmp sgt i16 %i.ct, 0
  br i1 %i.cu, label %.lr.ph145, label %._crit_edge146

.lr.ph145:                                        ; preds = %.preheader138
  %i.cv = trunc i64 %indvars.iv166 to i8          ; 3 uses
  %i.cw = icmp eq i16 %i.ct, 1
  br i1 %i.cw, label %.epil.preheader194, label %.lr.ph145.new

.lr.ph145.new:                                    ; preds = %.lr.ph145
  %i.cx = and i16 %i.ct, 32766
  %unroll_iter199 = zext nneg i16 %i.cx to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph145.new
  %.1116143 = phi i32 [ %.0115149, %.lr.ph145.new ], [ %.2.1, %bb.p ] ; 2 uses
  %niter200 = phi i32 [ 0, %.lr.ph145.new ], [ %niter200.next.1, %bb.p ]
  %i.cy = zext nneg i32 %.1116143 to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  store i8 %i.cv, ptr %i.da, align 2, !tbaa !38
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.1116.pn = phi i32 [ %.1116143, %bb.l ], [ %.2, %bb.m ]
  %.pn = add nuw i32 %i.cr, %.1116.pn
  %.2 = and i32 %.pn, %i.g                        ; 4 uses
  %i.db = icmp ugt i32 %.2, %.1128.lcssa
  br i1 %i.db, label %bb.m, label %bb.n, !llvm.loop !33

bb.n:                                             ; preds = %bb.m
  %i.dc = zext nneg i32 %.2 to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 2
  store i8 %i.cv, ptr %i.de, align 2, !tbaa !38
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.1116.pn.1 = phi i32 [ %.2, %bb.n ], [ %.2.1, %bb.o ]
  %.pn.1 = add nuw i32 %i.cr, %.1116.pn.1
  %.2.1 = and i32 %.pn.1, %i.g                    ; 5 uses
  %i.df = icmp ugt i32 %.2.1, %.1128.lcssa
  br i1 %i.df, label %bb.o, label %bb.p, !llvm.loop !33

bb.p:                                             ; preds = %bb.o
  %niter200.next.1 = add i32 %niter200, 2         ; 2 uses
  %niter200.ncmp.1 = icmp eq i32 %niter200.next.1, %unroll_iter199
  br i1 %niter200.ncmp.1, label %._crit_edge146.loopexit.unr-lcssa, label %bb.l, !llvm.loop !34

._crit_edge146.loopexit.unr-lcssa:                ; preds = %bb.p
  %i.dg = and i16 %i.ct, 1
  %lcmp.mod196.not = icmp eq i16 %i.dg, 0
  br i1 %lcmp.mod196.not, label %._crit_edge146, label %.epil.preheader194

.epil.preheader194:                               ; preds = %._crit_edge146.loopexit.unr-lcssa, %.lr.ph145
  %.1116143.epil.init = phi i32 [ %.0115149, %.lr.ph145 ], [ %.2.1, %._crit_edge146.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod198 = trunc i16 %i.ct to i1
  tail call void @llvm.assume(i1 %lcmp.mod198)
  %i.dh = zext nneg i32 %.1116143.epil.init to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  store i8 %i.cv, ptr %i.dj, align 2, !tbaa !38
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader194
  %.1116.pn.epil = phi i32 [ %.1116143.epil.init, %.epil.preheader194 ], [ %.2.epil, %bb.q ]
  %.pn.epil = add nuw i32 %i.cr, %.1116.pn.epil
  %.2.epil = and i32 %.pn.epil, %i.g              ; 3 uses
  %i.dk = icmp ugt i32 %.2.epil, %.1128.lcssa
  br i1 %i.dk, label %bb.q, label %._crit_edge146, !llvm.loop !33

._crit_edge146:                                   ; preds = %._crit_edge146.loopexit.unr-lcssa, %bb.q, %.preheader138
  %.1116.lcssa = phi i32 [ %.0115149, %.preheader138 ], [ %.2.1, %._crit_edge146.loopexit.unr-lcssa ], [ %.2.epil, %bb.q ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %i.h
  br i1 %exitcond170.not, label %._crit_edge150, label %.preheader138, !llvm.loop !35

._crit_edge150:                                   ; preds = %._crit_edge146
  %.not = icmp eq i32 %.1116.lcssa, 0
  br i1 %.not, label %._crit_edge150..loopexit137_crit_edge, label %.loopexit

._crit_edge150..loopexit137_crit_edge:            ; preds = %._crit_edge150
  %.pre = zext nneg i32 %i.f to i64
  br label %.loopexit137

.loopexit137:                                     ; preds = %.preheader, %._crit_edge150..loopexit137_crit_edge
  %wide.trip.count183.pre-phi = phi i64 [ %.pre, %._crit_edge150..loopexit137_crit_edge ], [ %i.bd, %.preheader ]
  br label %bb.r

bb.r:                                             ; preds = %.loopexit137, %bb.r
  %indvars.iv180 = phi i64 [ 0, %.loopexit137 ], [ %indvars.iv.next181, %bb.r ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv180 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %i.dn = load i8, ptr %i.dm, align 2, !tbaa !38
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.do ; 2 uses
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !10 ; 2 uses
  %i.dr = add i16 %i.dq, 1
  store i16 %i.dr, ptr %i.dp, align 2, !tbaa !10
  %i.ds = zext i16 %i.dq to i32                   ; 2 uses
  %i.dt = tail call noundef range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.ds, i1 true)
  %i.du = xor i32 %i.dt, 31
  %i.dv = sub nsw i32 %3, %i.du                   ; 2 uses
  %i.dw = trunc nsw i32 %i.dv to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 3
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !41
  %i.dy = and i32 %i.dv, 255
  %i.dz = shl i32 %i.ds, %i.dy
  %i.ea = sub i32 %i.dz, %i.f
  %i.eb = trunc i32 %i.ea to i16
  store i16 %i.eb, ptr %i.dl, align 2, !tbaa !42
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count183.pre-phi
  br i1 %exitcond184.not, label %.loopexit, label %bb.r, !llvm.loop !36

.loopexit:                                        ; preds = %bb.r, %bb.b, %bb.a, %._crit_edge150
  %.1 = phi i64 [ -1, %._crit_edge150 ], [ -46, %bb.a ], [ -44, %bb.b ], [ 0, %bb.r ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd24FSE_decompress_wksp_bmi2EPvmPKvmjS0_mi(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #1 {
bb.a:
  %8 = alloca %"struct.duckdb_zstd::BIT_DStream_t", align 8 ; 17 uses
  %9 = alloca %"struct.duckdb_zstd::FSE_DState_t", align 8 ; 6 uses
  %10 = alloca %"struct.duckdb_zstd::FSE_DState_t", align 8 ; 6 uses
  %11 = alloca %"struct.duckdb_zstd::BIT_DStream_t", align 8 ; 11 uses
  %12 = alloca %"struct.duckdb_zstd::FSE_DState_t", align 8 ; 6 uses
  %13 = alloca %"struct.duckdb_zstd::FSE_DState_t", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef i64 @_ZN11duckdb_zstdL29FSE_decompress_wksp_body_bmi2EPvmPKvmjS0_m(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6)
  br label %bb.be

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 255, ptr %i.b, align 4, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 512 ; 6 uses
  %i.e = icmp ult i64 %6, 512
  br i1 %i.e, label %_ZN11duckdb_zstdL32FSE_decompress_wksp_body_defaultEPvmPKvmjS0_m.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call noundef i64 @_ZN11duckdb_zstd19FSE_readNCount_bmi2EPsPjS1_PKvmi(ptr noundef %5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %3, i32 noundef 0) ; 4 uses
  %i.g = icmp ult i64 %i.f, -119
  br i1 %i.g, label %bb.e, label %_ZN11duckdb_zstdL32FSE_decompress_wksp_body_defaultEPvmPKvmjS0_m.exit

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %i.a, align 4, !tbaa !8    ; 4 uses
  %i.i = icmp ugt i32 %i.h, %4
  br i1 %i.i, label %_ZN11duckdb_zstdL32FSE_decompress_wksp_body_defaultEPvmPKvmjS0_m.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.f ; 11 uses
  %i.k = sub i64 %3, %i.f                         ; 7 uses
  %i.l = shl nuw i32 1, %i.h                      ; 2 uses
  %i.m = add nuw nsw i32 %i.l, 2
  %i.n = sext i32 %i.m to i64
  %i.o = load i32, ptr %i.b, align 4, !tbaa !8    ; 2 uses
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
  br i1 %i.aa, label %_ZN11duckdb_zstdL32FSE_decompress_wksp_body_defaultEPvmPKvmjS0_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = add nuw nsw i32 %i.l, 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 2                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ad
  %.neg171.i = add i64 %6, -512
  %i.af = sub i64 %.neg171.i, %i.ad
  %i.ag = call fastcc noundef i64 @_ZN11duckdb_zstdL24FSE_buildDTable_internalEPjPKsjjPvm(ptr noundef nonnull %i.d, ptr noundef %5, i32 noundef %i.o, i32 noundef %i.h, ptr noundef nonnull %i.ae, i64 noundef %i.af) ; 2 uses
  %i.ah = icmp ult i64 %i.ag, -119
  br i1 %i.ah, label %bb.h, label %_ZN11duckdb_zstdL32FSE_decompress_wksp_body_defaultEPvmPKvmjS0_m.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 514
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !16
  %.not48.i.i = icmp eq i16 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -3 ; 2 uses
  br i1 %.not48.i.i, label %bb.al, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.am = icmp eq i64 %i.k, 0
  br i1 %i.am, label %_ZN11duckdb_zstdL34FSE_decompress_usingDTable_genericEPvmPKvmPKjj.exit12.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.an, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !21
  %i.aq = icmp ugt i64 %i.k, 7
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.as, ptr %i.at, align 8, !tbaa !22
  %.val.i.i = load i64, ptr %i.as, align 1        ; 2 uses
  store i64 %.val.i.i, ptr %8, align 8, !tbaa !23
  %i.au = lshr i64 %.val.i.i, 56                  ; 2 uses
  %.not51.i.i = icmp eq i64 %i.au, 0
  br i1 %.not51.i.i, label %_ZN11duckdb_zstdL34FSE_decompress_usingDTable_genericEPvmPKvmPKjj.exit12.i, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i

bb.l:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.j, ptr %i.av, align 8, !tbaa !22
  %i.aw = load i8, ptr %i.j, align 1, !tbaa !14
  %i.ax = zext i8 %i.aw to i64                    ; 7 uses
  store i64 %i.ax, ptr %8, align 8, !tbaa !23
  switch i64 %i.k, label %bb.s [
    i64 7, label %bb.m
    i64 6, label %bb.n
    i64 5, label %bb.o
    i64 4, label %bb.p
    i64 3, label %bb.q
    i64 2, label %bb.r
  ]

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !14
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 48
  %i.bc = or disjoint i64 %i.bb, %i.ax
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bd = phi i64 [ %i.bc, %bb.m ], [ %i.ax, %bb.l ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !14
  %i.bg = zext i8 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 40
  %i.bi = add nuw nsw i64 %i.bh, %i.bd
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.bj = phi i64 [ %i.bi, %bb.n ], [ %i.ax, %bb.l ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !14
  %i.bm = zext i8 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 32
  %i.bo = add nuw nsw i64 %i.bn, %i.bj
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.bp = phi i64 [ %i.bo, %bb.o ], [ %i.ax, %bb.l ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !14
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 24
  %i.bu = add nuw nsw i64 %i.bt, %i.bp
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %i.bv = phi i64 [ %i.bu, %bb.p ], [ %i.ax, %bb.l ]
end_hunk_0
