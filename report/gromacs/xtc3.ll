Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/xtc3?download=true
inline.NumInlined: 116
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xtc3_context = type { ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, [3 x i32], [3 x i32], i32, [3072 x i32], [1024 x i32], i32 }

@.str = private unnamed_addr constant [75 x i8] c"/opt-bench/work/gromacs/gromacs/src/external/tng_io/src/compression/xtc3.c\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"TRAJNG: BUG! ntriplets_left<0!\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"TRAJNG XTC3: A bug has been found. At end ntriplets_left<0\0A\00", align 1
@.str.10 = private unnamed_addr constant [221 x i8] c"Read a larger maxbasevals value from the file than I can handle. Fix by increasing MAXMAXBASEVALS to at least %d. Although, this is probably a bug in TRAJNG, since MAXMAXBASEVALS should already be insanely large enough.\0A\00", align 1

; Function Attrs: nounwind uwtable
define ptr @Ptngc_pack_array_xtc3(ptr nofree noundef readonly %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [39 x i32], align 16              ; 42 uses
  %i.b = alloca i32, align 4                      ; 38 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %4 = alloca %struct.xtc3_context, align 8       ; 72 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !8      ; 5 uses
  %i.e = sdiv i32 %i.d, 3                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16508 ; 3 uses
  store i32 0, ptr %i.g, align 4, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i64 96, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 108 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false)
  %i.j = icmp slt i32 %i.d, 48
  br i1 %i.j, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.k = shl nsw i32 %i.d, 3
  %i.l = zext nneg i32 %i.k to i64
  %i.m = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.l, ptr noundef nonnull @.str, i32 noundef 948) #12
  %.pre10831196 = load i32, ptr %i.h, align 4, !tbaa !8
  br label %.preheader896.preheader

bb.b:                                             ; preds = %bb.a
  %i.n = tail call ptr @Ptngc_warnmalloc_x(i64 noundef 384, ptr noundef nonnull @.str, i32 noundef 944) #12 ; 2 uses
  %i.o = icmp sgt i32 %i.d, 5
  %.pre1083 = load i32, ptr %i.h, align 4, !tbaa !8 ; 2 uses
  br i1 %i.o, label %.preheader896.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.b
  %.pre = load i32, ptr %i.i, align 8, !tbaa !8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 112
  %.pre1084 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !8
  %.phi.trans.insert1085 = getelementptr inbounds nuw i8, ptr %4, i64 100
  %.pre1086 = load i32, ptr %.phi.trans.insert1085, align 4, !tbaa !8
  %.phi.trans.insert1087 = getelementptr inbounds nuw i8, ptr %4, i64 116
  %.pre1088 = load i32, ptr %.phi.trans.insert1087, align 4, !tbaa !8
  %.phi.trans.insert1089 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %.pre1090 = load i32, ptr %.phi.trans.insert1089, align 8, !tbaa !8
  br label %._crit_edge

.preheader896.preheader:                          ; preds = %.thread, %bb.b
  %.pre10831203 = phi i32 [ %.pre10831196, %.thread ], [ %.pre1083, %bb.b ]
  %.04381198 = phi ptr [ %i.m, %.thread ], [ %i.n, %bb.b ]
  %smax = tail call i32 @llvm.smax.i32(i32 %i.e, i32 2)
  %wide.trip.count = zext nneg i32 %smax to i64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 100 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 116 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %.promoted1254 = load i32, ptr %i.i, align 8, !tbaa !8
  %.promoted1255 = load i32, ptr %i.p, align 8, !tbaa !8
  %.promoted1256 = load i32, ptr %i.q, align 4, !tbaa !8
  %.promoted1257 = load i32, ptr %i.r, align 4, !tbaa !8
  %.promoted1258 = load i32, ptr %i.s, align 8, !tbaa !8
  br label %.preheader896

.preheader896:                                    ; preds = %.preheader896.preheader, %bb.n
  %i.t = phi i32 [ %.promoted1258, %.preheader896.preheader ], [ %i.at, %bb.n ] ; 2 uses
  %i.u = phi i32 [ %.promoted1257, %.preheader896.preheader ], [ %i.ar, %bb.n ] ; 2 uses
  %i.v = phi i32 [ %.promoted1256, %.preheader896.preheader ], [ %i.am, %bb.n ] ; 2 uses
  %i.w = phi i32 [ %.promoted1255, %.preheader896.preheader ], [ %i.ak, %bb.n ] ; 2 uses
  %i.x = phi i32 [ %.promoted1254, %.preheader896.preheader ], [ %i.af, %bb.n ] ; 2 uses
  %i.y = phi i32 [ %.pre10831203, %.preheader896.preheader ], [ %i.ad, %bb.n ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.preheader896.preheader ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %i.z = mul nuw nsw i64 %indvars.iv, 3           ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !8  ; 6 uses
  %i.ac = icmp sgt i32 %i.ab, %i.y
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader896
  store i32 %i.ab, ptr %i.h, align 4, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader896
  %i.ad = phi i32 [ %i.ab, %bb.c ], [ %i.y, %.preheader896 ] ; 2 uses
  %i.ae = icmp slt i32 %i.ab, %i.x
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.ab, ptr %i.i, align 8, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.af = phi i32 [ %i.x, %bb.d ], [ %i.ab, %bb.e ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !8  ; 6 uses
  %i.aj = icmp sgt i32 %i.ai, %i.w
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.ai, ptr %i.p, align 8, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = phi i32 [ %i.ai, %bb.g ], [ %i.w, %bb.f ] ; 2 uses
  %i.al = icmp slt i32 %i.ai, %i.v
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.ai, ptr %i.q, align 4, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = phi i32 [ %i.ai, %bb.i ], [ %i.v, %bb.h ] ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !8  ; 6 uses
  %i.aq = icmp sgt i32 %i.ap, %i.u
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.ap, ptr %i.r, align 4, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ar = phi i32 [ %i.ap, %bb.k ], [ %i.u, %bb.j ] ; 2 uses
  %i.as = icmp slt i32 %i.ap, %i.t
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.ap, ptr %i.s, align 8, !tbaa !8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.at = phi i32 [ %i.ap, %bb.m ], [ %i.t, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader896, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.n, %.._crit_edge_crit_edge
  %.04381197 = phi ptr [ %i.n, %.._crit_edge_crit_edge ], [ %.04381198, %bb.n ] ; 26 uses
  %i.au = phi i32 [ %.pre1090, %.._crit_edge_crit_edge ], [ %i.at, %bb.n ]
  %i.av = phi i32 [ %.pre1088, %.._crit_edge_crit_edge ], [ %i.ar, %bb.n ]
  %i.aw = phi i32 [ %.pre1086, %.._crit_edge_crit_edge ], [ %i.am, %bb.n ]
  %i.ax = phi i32 [ %.pre1084, %.._crit_edge_crit_edge ], [ %i.ak, %bb.n ]
  %i.ay = phi i32 [ %.pre, %.._crit_edge_crit_edge ], [ %i.af, %bb.n ] ; 5 uses
  %i.az = phi i32 [ %.pre1083, %.._crit_edge_crit_edge ], [ %i.ad, %bb.n ]
  %i.ba = add i32 %i.az, 1
  %i.bb = sub i32 %i.ba, %i.ay
  %i.bc = tail call i32 @Ptngc_find_magic_index(i32 noundef %i.bb) #12
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 100
  %i.be = add i32 %i.ax, 1
  %i.bf = sub i32 %i.be, %i.aw
  %i.bg = tail call i32 @Ptngc_find_magic_index(i32 noundef %i.bf) #12
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.bi = add i32 %i.av, 1
  %i.bj = sub i32 %i.bi, %i.au
  %i.bk = tail call i32 @Ptngc_find_magic_index(i32 noundef %i.bj) #12
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 %i.bc)
  %.1488 = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 %spec.select) ; 6 uses
  %i.bl = sdiv i32 %.1488, 2
  %i.bm = tail call i32 @Ptngc_magic(i32 noundef %i.bl) #12 ; 3 uses
  %i.bn = load i32, ptr %1, align 4, !tbaa !8     ; 4 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.preheader, label %._crit_edge905

.lr.ph.preheader:                                 ; preds = %._crit_edge
  %wide.trip.count1000 = zext nneg i32 %i.bn to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count1000, 1
  %i.bp = icmp eq i32 %i.bn, 1
  br i1 %i.bp, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count1000, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %positive_int.exit.1, %.lr.ph.preheader.new
  %indvars.iv997 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next998.1, %positive_int.exit.1 ] ; 3 uses
  %.0494903 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1495.1, %positive_int.exit.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %positive_int.exit.1 ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv997
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !8  ; 4 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph
  %i.bt = shl nuw i32 %i.br, 1
  %i.bu = add i32 %i.bt, -1
  br label %positive_int.exit

bb.p:                                             ; preds = %.lr.ph
  %i.bv = icmp slt i32 %i.br, 0
  br i1 %i.bv, label %bb.q, label %positive_int.exit

bb.q:                                             ; preds = %bb.p
  %i.bw = xor i32 %i.br, -1
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = add nuw nsw i32 %i.bx, 2
  br label %positive_int.exit

positive_int.exit:                                ; preds = %bb.o, %bb.p, %bb.q
  %.0.i = phi i32 [ %i.bu, %bb.o ], [ %i.by, %bb.q ], [ 0, %bb.p ] ; 3 uses
  %i.bz = icmp sgt i32 %.0.i, %.0494903
  %i.ca = icmp slt i32 %.0.i, %i.bm
  %or.cond560 = select i1 %i.bz, i1 %i.ca, i1 false
  %.1495 = select i1 %or.cond560, i32 %.0.i, i32 %.0494903 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv997
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !8  ; 4 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %bb.t, label %bb.r

bb.r:                                             ; preds = %positive_int.exit
  %i.cf = icmp slt i32 %i.cd, 0
  br i1 %i.cf, label %bb.s, label %positive_int.exit.1

bb.s:                                             ; preds = %bb.r
  %i.cg = xor i32 %i.cd, -1
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = add nuw nsw i32 %i.ch, 2
  br label %positive_int.exit.1

bb.t:                                             ; preds = %positive_int.exit
  %i.cj = shl nuw i32 %i.cd, 1
  %i.ck = add i32 %i.cj, -1
  br label %positive_int.exit.1

positive_int.exit.1:                              ; preds = %bb.t, %bb.s, %bb.r
  %.0.i.1 = phi i32 [ %i.ck, %bb.t ], [ %i.ci, %bb.s ], [ 0, %bb.r ] ; 3 uses
  %i.cl = icmp sgt i32 %.0.i.1, %.1495
  %i.cm = icmp slt i32 %.0.i.1, %i.bm
  %or.cond560.1 = select i1 %i.cl, i1 %i.cm, i1 false
  %.1495.1 = select i1 %or.cond560.1, i32 %.0.i.1, i32 %.1495 ; 3 uses
  %indvars.iv.next998.1 = add nuw nsw i64 %indvars.iv997, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge905.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !16

._crit_edge905.loopexit.unr-lcssa:                ; preds = %positive_int.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge905, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge905.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv997.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next998.1, %._crit_edge905.loopexit.unr-lcssa ]
  %.0494903.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1495.1, %._crit_edge905.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1822 = trunc i32 %i.bn to i1
  tail call void @llvm.assume(i1 %lcmp.mod1822)
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv997.epil.init
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !8  ; 4 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.lr.ph.epil.preheader
end_hunk_0
