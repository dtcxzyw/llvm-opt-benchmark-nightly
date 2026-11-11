Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/block_splitter?download=true
inline.NumInlined: 26
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 41
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kBrotliLog2Table = external hidden local_unnamed_addr constant [256 x double], code_model "small", align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @BrotliInitBlockSplit(ptr nofree noundef writeonly captures(none) initializes((0, 48)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @BrotliDestroyBlockSplit(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.b) #8
  store ptr null, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.d) #8
  store ptr null, ptr %i.c, align 8, !tbaa !14
  ret void
}

declare hidden void @BrotliFree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @BrotliSplitBlock(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef captures(none) %8, ptr nofree noundef captures(none) %9) local_unnamed_addr #1 {
bb.a:
  %.not.i = icmp eq i64 %2, 0                     ; 3 uses
  br i1 %.not.i, label %.thread473, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.a = add i64 %2, -1
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.b = icmp ult i64 %i.a, 3
  br i1 %i.b, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %2, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.v, %.lr.ph.i ] ; 5 uses
  %.067.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.u, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.08.i
  %i.d = load i32, ptr %i.c, align 4, !tbaa !160
  %.fr = freeze i32 %i.d
  %i.e = zext i32 %.fr to i64
  %i.f = add i64 %.067.i, %i.e
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.08.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !160
  %.fr.1 = freeze i32 %i.i
  %i.j = zext i32 %.fr.1 to i64
  %i.k = add i64 %i.f, %i.j
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.08.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !160
  %.fr.2 = freeze i32 %i.n
  %i.o = zext i32 %.fr.2 to i64
  %i.p = add i64 %i.k, %i.o
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.08.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load i32, ptr %i.r, align 4, !tbaa !160
  %.fr.3 = freeze i32 %i.s
  %i.t = zext i32 %.fr.3 to i64
  %i.u = add i64 %i.p, %i.t                       ; 3 uses
  %i.v = add nuw i64 %.08.i, 4                    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %CountLiterals.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !15

CountLiterals.exit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %CountLiterals.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %CountLiterals.exit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.v, %CountLiterals.exit.unr-lcssa ]
  %.067.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.u, %CountLiterals.exit.unr-lcssa ]
  %lcmp.mod898 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod898)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.aa, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.067.i.epil = phi i64 [ %i.z, %.lr.ph.i.epil ], [ %.067.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.08.i.epil
  %i.x = load i32, ptr %i.w, align 4, !tbaa !160
  %.fr.epil = freeze i32 %i.x
  %i.y = zext i32 %.fr.epil to i64
  %i.z = add i64 %.067.i.epil, %i.y               ; 2 uses
  %i.aa = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %CountLiterals.exit, label %.lr.ph.i.epil, !llvm.loop !16

CountLiterals.exit:                               ; preds = %.lr.ph.i.epil, %CountLiterals.exit.unr-lcssa
  %.lcssa896 = phi i64 [ %i.u, %CountLiterals.exit.unr-lcssa ], [ %i.z, %.lr.ph.i.epil ] ; 26 uses
  %.not = icmp eq i64 %.lcssa896, 0               ; 2 uses
  br i1 %.not, label %.lr.ph.i61, label %bb.b

bb.b:                                             ; preds = %CountLiterals.exit
  %i.ab = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %.lcssa896) #8
  br label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %CountLiterals.exit, %bb.b
  %.ph = phi ptr [ null, %CountLiterals.exit ], [ %i.ab, %bb.b ] ; 15 uses
  %i.ac = add nuw i64 %5, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i61
  %.pn.i = phi i64 [ %4, %.lr.ph.i61 ], [ %i.av, %bb.g ]
  %.040.i = phi i64 [ 0, %.lr.ph.i61 ], [ %.2.i, %bb.g ] ; 3 uses
  %.03439.i = phi i64 [ 0, %.lr.ph.i61 ], [ %i.aw, %bb.g ] ; 2 uses
  %.03541.i = and i64 %.pn.i, %5                  ; 4 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.03439.i ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !160
  %i.af = zext i32 %i.ae to i64                   ; 3 uses
  %i.ag = add i64 %.03541.i, %i.af
  %i.ah = icmp ugt i64 %i.ag, %5
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = sub i64 %i.ac, %.03541.i                ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.ph, i64 %.040.i
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 %.03541.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr readonly align 1 %i.ak, i64 %i.ai, i1 false)
  %i.al = add i64 %i.ai, %.040.i
  %i.am = sub i64 %i.af, %i.ai
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.136.i = phi i64 [ 0, %bb.d ], [ %.03541.i, %bb.c ] ; 2 uses
  %.033.i = phi i64 [ %i.am, %bb.d ], [ %i.af, %bb.c ] ; 4 uses
  %.1.i = phi i64 [ %i.al, %bb.d ], [ %.040.i, %bb.c ] ; 3 uses
  %.not.i62 = icmp eq i64 %.033.i, 0
  br i1 %.not.i62, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.ph, i64 %.1.i
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 %.136.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr readonly align 1 %i.ao, i64 %.033.i, i1 false)
  %i.ap = add i64 %.1.i, %.033.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2.i = phi i64 [ %i.ap, %bb.f ], [ %.1.i, %bb.e ]
  %i.aq = add i64 %.033.i, %.136.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !163
  %i.at = and i32 %i.as, 33554431
  %i.au = zext nneg i32 %i.at to i64
  %i.av = add i64 %i.aq, %i.au
  %i.aw = add nuw i64 %.03439.i, 1                ; 2 uses
  %exitcond.not.i63 = icmp eq i64 %i.aw, %2
  br i1 %exitcond.not.i63, label %CopyLiteralsToByteArray.exit, label %bb.c, !llvm.loop !17

CopyLiteralsToByteArray.exit:                     ; preds = %bb.g
  %.lhs.trunc.i = trunc nuw i64 %.lcssa896 to i16
  %i.ax = udiv i16 %.lhs.trunc.i, 544
  %narrow.i = add nuw nsw i16 %i.ax, 1
  %i.ay = zext nneg i16 %narrow.i to i64
  %i.az = icmp ugt i64 %.lcssa896, 54399
  %. = select i1 %i.az, i64 100, i64 %i.ay        ; 17 uses
  br i1 %.not, label %.thread473, label %bb.h

.thread473:                                       ; preds = %CopyLiteralsToByteArray.exit, %bb.a
  %i.ba = phi ptr [ %.ph, %CopyLiteralsToByteArray.exit ], [ null, %bb.a ]
  store i64 1, ptr %7, align 8, !tbaa !164
  br label %SplitByteVectorLiteral.exit

bb.h:                                             ; preds = %CopyLiteralsToByteArray.exit
  %i.bb = icmp ult i64 %.lcssa896, 128
  br i1 %i.bb, label %bb.i, label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !165 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !166 ; 2 uses
  %i.bg = add i64 %i.bf, 1                        ; 4 uses
  %i.bh = icmp ult i64 %i.bd, %i.bg
  br i1 %i.bh, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.bi = icmp eq i64 %i.bd, 0
  %..i = select i1 %i.bi, i64 %i.bg, i64 %i.bd
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.0136.i = phi i64 [ %..i, %bb.j ], [ %i.bk, %bb.k ] ; 4 uses
  %i.bj = icmp ult i64 %.0136.i, %i.bg
  %i.bk = shl i64 %.0136.i, 1
  br i1 %i.bj, label %bb.k, label %bb.l, !llvm.loop !18

bb.l:                                             ; preds = %bb.k
  %i.bl = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %.0136.i) #8 ; 2 uses
  %i.bm = load i64, ptr %i.bc, align 8, !tbaa !165 ; 2 uses
  %.not151.i = icmp eq i64 %i.bm, 0
  br i1 %.not151.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %i.bo, i64 %i.bm, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !13
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.bq) #8
  store ptr %i.bl, ptr %i.bp, align 8, !tbaa !13
  store i64 %.0136.i, ptr %i.bc, align 8, !tbaa !165
  %.pre.i = load i64, ptr %i.be, align 8, !tbaa !166 ; 2 uses
  %.pre187.i = add i64 %.pre.i, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %.pre-phi.i = phi i64 [ %.pre187.i, %bb.n ], [ %i.bg, %bb.i ] ; 3 uses
  %i.br = phi i64 [ %.pre.i, %bb.n ], [ %i.bf, %bb.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !167 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, %.pre-phi.i
  br i1 %i.bu, label %bb.p, label %SplitByteVectorLiteral.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bv = icmp eq i64 %i.bt, 0
  %.154.i = select i1 %i.bv, i64 %.pre-phi.i, i64 %i.bt
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.0135.i = phi i64 [ %.154.i, %bb.p ], [ %i.bx, %bb.q ] ; 4 uses
  %i.bw = icmp ult i64 %.0135.i, %.pre-phi.i
  %i.bx = shl i64 %.0135.i, 1
  br i1 %i.bw, label %bb.q, label %bb.r, !llvm.loop !19

bb.r:                                             ; preds = %bb.q
  %i.by = shl i64 %.0135.i, 2
  %i.bz = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.by) #8 ; 2 uses
  %i.ca = load i64, ptr %i.bs, align 8, !tbaa !167 ; 2 uses
  %.not153.i = icmp eq i64 %i.ca, 0
  br i1 %.not153.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !14
  %i.cd = shl i64 %i.ca, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bz, ptr align 4 %i.cc, i64 %i.cd, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !14
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.cf) #8
  store ptr %i.bz, ptr %i.ce, align 8, !tbaa !14
  store i64 %.0135.i, ptr %i.bs, align 8, !tbaa !167
  %.pre186.i = load i64, ptr %i.be, align 8, !tbaa !166
  br label %SplitByteVectorLiteral.exit.thread

SplitByteVectorLiteral.exit.thread:               ; preds = %bb.o, %bb.t
  %i.cg = phi i64 [ %.pre186.i, %bb.t ], [ %i.br, %bb.o ]
  store i64 1, ptr %7, align 8, !tbaa !164
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !13
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg
  store i8 0, ptr %i.cj, align 1, !tbaa !168
  %i.ck = trunc nuw nsw i64 %.lcssa896 to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !14
  %i.cn = load i64, ptr %i.be, align 8, !tbaa !166 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cn
  store i32 %i.ck, ptr %i.co, align 4, !tbaa !169
  %i.cp = add i64 %i.cn, 1
  store i64 %i.cp, ptr %i.be, align 8, !tbaa !166
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %.ph) #8
  br label %.lr.ph.preheader

bb.u:                                             ; preds = %bb.h
  %i.cq = mul nuw nsw i64 %., 1040
  %i.cr = add nuw nsw i64 %i.cq, 1040
  %i.cs = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.cr) #8 ; 20 uses
  %xtraiter899 = and i64 %., 3                    ; 3 uses
  %i.ct = icmp samesign ult i64 %., 4
  br i1 %i.ct, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.u
  %unroll_iter903 = and i64 %., 252
  br label %bb.w

ClearHistogramsLiteral.exit.preheader.i.i.unr-lcssa: ; preds = %bb.w
  %lcmp.mod901.not = icmp eq i64 %xtraiter899, 0
  br i1 %lcmp.mod901.not, label %ClearHistogramsLiteral.exit.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %ClearHistogramsLiteral.exit.preheader.i.i.unr-lcssa, %bb.u
  %.0.i28.i.i.epil.init = phi i64 [ 0, %bb.u ], [ %i.dk, %ClearHistogramsLiteral.exit.preheader.i.i.unr-lcssa ]
  %lcmp.mod902 = icmp ne i64 %xtraiter899, 0
  tail call void @llvm.assume(i1 %lcmp.mod902)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %.0.i28.i.i.epil = phi i64 [ %.0.i28.i.i.epil.init, %.epil.preheader ], [ %i.cw, %bb.v ] ; 2 uses
  %epil.iter900 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter900.next, %bb.v ]
  %i.cu = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.0.i28.i.i.epil ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cu, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.cv, align 8, !tbaa !172
  %i.cw = add nuw nsw i64 %.0.i28.i.i.epil, 1
  %epil.iter900.next = add i64 %epil.iter900, 1   ; 2 uses
  %epil.iter900.cmp.not = icmp eq i64 %epil.iter900.next, %xtraiter899
  br i1 %epil.iter900.cmp.not, label %ClearHistogramsLiteral.exit.preheader.i.i, label %bb.v, !llvm.loop !20

ClearHistogramsLiteral.exit.preheader.i.i:        ; preds = %bb.v, %ClearHistogramsLiteral.exit.preheader.i.i.unr-lcssa
  %i.cx = udiv i64 %.lcssa896, %.
  %i.cy = add i64 %.lcssa896, -71
  br label %bb.x

bb.w:                                             ; preds = %bb.w, %.new
  %.0.i28.i.i = phi i64 [ 0, %.new ], [ %i.dk, %bb.w ] ; 5 uses
  %niter904 = phi i64 [ 0, %.new ], [ %niter904.next.3, %bb.w ]
  %i.cz = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.0.i28.i.i ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cz, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.da, align 8, !tbaa !172
  %i.db = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.0.i28.i.i ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1040
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.dc, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.dd, align 8, !tbaa !172
  %i.de = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.0.i28.i.i ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 2080
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.df, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.dg, align 8, !tbaa !172
  %i.dh = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.0.i28.i.i ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 3120
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.di, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.dj, align 8, !tbaa !172
  %i.dk = add nuw nsw i64 %.0.i28.i.i, 4          ; 2 uses
  %niter904.next.3 = add i64 %niter904, 4         ; 2 uses
  %niter904.ncmp.3 = icmp eq i64 %niter904.next.3, %unroll_iter903
  br i1 %niter904.ncmp.3, label %ClearHistogramsLiteral.exit.preheader.i.i.unr-lcssa, label %bb.w, !llvm.loop !21

bb.x:                                             ; preds = %HistogramAddVectorLiteral.exit.i.i, %ClearHistogramsLiteral.exit.preheader.i.i
  %.02231.i.i = phi i64 [ 0, %ClearHistogramsLiteral.exit.preheader.i.i ], [ %i.el, %HistogramAddVectorLiteral.exit.i.i ] ; 4 uses
  %.02730.i.i = phi i32 [ 7, %ClearHistogramsLiteral.exit.preheader.i.i ], [ %.1.i.i, %HistogramAddVectorLiteral.exit.i.i ] ; 2 uses
  %i.dl = mul i64 %.02231.i.i, %.lcssa896
  %i.dm = udiv i64 %i.dl, %.                      ; 2 uses
  %.not.i.i = icmp eq i64 %.02231.i.i, 0
  br i1 %.not.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = mul i32 %.02730.i.i, 16807              ; 2 uses
  %i.do = zext i32 %i.dn to i64
  %i.dp = urem i64 %i.do, %i.cx
  %i.dq = add i64 %i.dp, %i.dm
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
end_hunk_0
begin_hunk_1_@BrotliSplitBlock:bb.a
  store i8 %i.abo, ptr %i.abq, align 1, !tbaa !168
  %i.abr = load ptr, ptr %i.abe, align 8, !tbaa !14
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.abr, i64 %.0326477.i.i
  store i32 %i.abi, ptr %i.abs, align 4, !tbaa !169
  %i.abt = tail call i8 @llvm.umax.i8(i8 %.0478.i.i, i8 %i.abo)
  %i.abu = add i64 %.0326477.i.i, 1
  br label %bb.cr

bb.cr:                                            ; preds = %._crit_edge516.i.i, %bb.cq
  %.1329.i.i = phi i32 [ 0, %._crit_edge516.i.i ], [ %i.abi, %bb.cq ] ; 2 uses
  %.1327.i.i = phi i64 [ %i.abu, %._crit_edge516.i.i ], [ %.0326477.i.i, %bb.cq ] ; 2 uses
  %.1.i173.i = phi i8 [ %i.abt, %._crit_edge516.i.i ], [ %.0478.i.i, %bb.cq ] ; 2 uses
  %exitcond508.not.i.i = icmp eq i64 %.5475.i.i, %i.abf
  br i1 %exitcond508.not.i.i, label %._crit_edge481.loopexit.peel.begin.i.i, label %bb.cq, !llvm.loop !62

._crit_edge481.loopexit.peel.begin.i.i:           ; preds = %bb.cr, %.lr.ph480.i.i
  %i.abv = phi i8 [ 0, %.lr.ph480.i.i ], [ %.1.i173.i, %bb.cr ] ; 2 uses
  %i.abw = phi i64 [ 0, %.lr.ph480.i.i ], [ %.1327.i.i, %bb.cr ] ; 4 uses
  %i.abx = phi i32 [ 0, %.lr.ph480.i.i ], [ %.1329.i.i, %bb.cr ]
  %i.aby = phi i64 [ 0, %.lr.ph480.i.i ], [ %i.abj, %bb.cr ] ; 3 uses
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %i.aby
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !169
  %i.acb = add i32 %i.aca, %i.abx
  %i.acc = add nuw i64 %i.aby, 1                  ; 2 uses
  %i.acd = icmp eq i64 %i.acc, %.0108.i.i
  %.phi.trans.insert520.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.aby
  %.pre521.i.i = load i32, ptr %.phi.trans.insert520.i.i, align 4, !tbaa !169 ; 2 uses
  br i1 %i.acd, label %._crit_edge481.loopexit.peel.begin._crit_edge.i.i, label %bb.cs

bb.cs:                                            ; preds = %._crit_edge481.loopexit.peel.begin.i.i
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.acc
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !169
  %.not397.peel.i.i = icmp eq i32 %.pre521.i.i, %i.acf
  br i1 %.not397.peel.i.i, label %._crit_edge481.loopexit.peel.next.i.i, label %._crit_edge481.loopexit.peel.begin._crit_edge.i.i

._crit_edge481.loopexit.peel.begin._crit_edge.i.i: ; preds = %bb.cs, %._crit_edge481.loopexit.peel.begin.i.i
  %i.acg = zext i32 %.pre521.i.i to i64
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %i.acg
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !169
  %i.acj = trunc i32 %i.aci to i8                 ; 2 uses
  %i.ack = load ptr, ptr %i.abd, align 8, !tbaa !13
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 %i.abw
  store i8 %i.acj, ptr %i.acl, align 1, !tbaa !168
  %i.acm = load ptr, ptr %i.abe, align 8, !tbaa !14
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.acm, i64 %i.abw
  store i32 %i.acb, ptr %i.acn, align 4, !tbaa !169
  %i.aco = tail call i8 @llvm.umax.i8(i8 %i.abv, i8 %i.acj)
  %i.acp = add i64 %i.abw, 1
  br label %._crit_edge481.loopexit.peel.next.i.i

._crit_edge481.loopexit.peel.next.i.i:            ; preds = %._crit_edge481.loopexit.peel.begin._crit_edge.i.i, %bb.cs
  %.1327.peel.i.i = phi i64 [ %i.acp, %._crit_edge481.loopexit.peel.begin._crit_edge.i.i ], [ %i.abw, %bb.cs ]
  %.1.peel.i.i = phi i8 [ %i.aco, %._crit_edge481.loopexit.peel.begin._crit_edge.i.i ], [ %i.abv, %bb.cs ]
  %i.acq = zext i8 %.1.peel.i.i to i64
  %i.acr = add nuw nsw i64 %i.acq, 1
  br label %ClusterBlocksLiteral.exit.i

ClusterBlocksLiteral.exit.i:                      ; preds = %._crit_edge481.loopexit.peel.next.i.i, %bb.cp
  %.0326.lcssa.i.i = phi i64 [ 0, %bb.cp ], [ %.1327.peel.i.i, %._crit_edge481.loopexit.peel.next.i.i ]
  %.0.lcssa.i.i = phi i64 [ 1, %bb.cp ], [ %i.acr, %._crit_edge481.loopexit.peel.next.i.i ]
  %i.acs = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.0326.lcssa.i.i, ptr %i.acs, align 8, !tbaa !166
  store i64 %.0.lcssa.i.i, ptr %7, align 8, !tbaa !164
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.yr) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.rk) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.rj) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.hi) #8
  br label %SplitByteVectorLiteral.exit

SplitByteVectorLiteral.exit:                      ; preds = %.thread473, %ClusterBlocksLiteral.exit.i
  %i.act = phi ptr [ %i.ba, %.thread473 ], [ %.ph, %ClusterBlocksLiteral.exit.i ]
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.act) #8
  br i1 %.not.i, label %.thread659, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %SplitByteVectorLiteral.exit.thread, %SplitByteVectorLiteral.exit
  %i.acu = shl i64 %2, 1                          ; 2 uses
  %i.acv = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.acu) #8 ; 20 uses
  %min.iters.check742 = icmp ult i64 %2, 17
  br i1 %min.iters.check742, label %.lr.ph.preheader888, label %vector.memcheck743

vector.memcheck743:                               ; preds = %.lr.ph.preheader
  %i.acw = getelementptr i8, ptr %i.acv, i64 %i.acu
  %i.acx = getelementptr i8, ptr %1, i64 12
  %i.acy = shl i64 %2, 4
  %i.acz = getelementptr i8, ptr %1, i64 %i.acy
  %i.ada = getelementptr i8, ptr %i.acz, i64 -2
  %bound0744 = icmp ult ptr %i.acv, %i.ada
  %bound1745 = icmp ult ptr %i.acx, %i.acw
  %found.conflict746 = and i1 %bound0744, %bound1745
  br i1 %found.conflict746, label %.lr.ph.preheader888, label %vector.ph747

vector.ph747:                                     ; preds = %vector.memcheck743
  %i.adb = and i64 %2, 7                          ; 2 uses
  %i.adc = icmp eq i64 %i.adb, 0
  %i.add = select i1 %i.adc, i64 8, i64 %i.adb
  %n.vec748 = sub i64 %2, %i.add                  ; 2 uses
  br label %vector.body749

vector.body749:                                   ; preds = %vector.body749, %vector.ph747
  %index750 = phi i64 [ 0, %vector.ph747 ], [ %index.next751, %vector.body749 ] ; 10 uses
  %i.ade = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index750
  %i.adf = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index750
  %i.adg = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index750
  %i.adh = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index750
  %i.adi = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index750
  %i.adj = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index750
  %i.adk = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index750
  %i.adl = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index750
  %i.adm = getelementptr inbounds nuw i8, ptr %i.ade, i64 12
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adf, i64 28
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adg, i64 44
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adh, i64 60
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adi, i64 76
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adj, i64 92
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adk, i64 108
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adl, i64 124
  %i.adu = load i16, ptr %i.adm, align 4, !tbaa !200, !alias.scope !201
  %i.adv = load i16, ptr %i.adn, align 4, !tbaa !200, !alias.scope !201
  %i.adw = load i16, ptr %i.ado, align 4, !tbaa !200, !alias.scope !201
  %i.adx = load i16, ptr %i.adp, align 4, !tbaa !200, !alias.scope !201
  %i.ady = load i16, ptr %i.adq, align 4, !tbaa !200, !alias.scope !201
  %i.adz = load i16, ptr %i.adr, align 4, !tbaa !200, !alias.scope !201
  %i.aea = load i16, ptr %i.ads, align 4, !tbaa !200, !alias.scope !201
  %i.aeb = load i16, ptr %i.adt, align 4, !tbaa !200, !alias.scope !201
  %i.aec = insertelement <8 x i16> poison, i16 %i.adu, i64 0
  %i.aed = insertelement <8 x i16> %i.aec, i16 %i.adv, i64 1
  %i.aee = insertelement <8 x i16> %i.aed, i16 %i.adw, i64 2
  %i.aef = insertelement <8 x i16> %i.aee, i16 %i.adx, i64 3
  %i.aeg = insertelement <8 x i16> %i.aef, i16 %i.ady, i64 4
  %i.aeh = insertelement <8 x i16> %i.aeg, i16 %i.adz, i64 5
  %i.aei = insertelement <8 x i16> %i.aeh, i16 %i.aea, i64 6
  %i.aej = insertelement <8 x i16> %i.aei, i16 %i.aeb, i64 7
  %i.aek = getelementptr inbounds nuw [2 x i8], ptr %i.acv, i64 %index750
  store <8 x i16> %i.aej, ptr %i.aek, align 2, !tbaa !195, !alias.scope !202, !noalias !201
  %index.next751 = add nuw i64 %index750, 8       ; 2 uses
  %i.ael = icmp eq i64 %index.next751, %n.vec748
  br i1 %i.ael, label %.lr.ph.preheader888, label %vector.body749, !llvm.loop !66

.lr.ph.preheader888:                              ; preds = %vector.body749, %vector.memcheck743, %.lr.ph.preheader
  %.055500.ph = phi i64 [ 0, %vector.memcheck743 ], [ 0, %.lr.ph.preheader ], [ %n.vec748, %vector.body749 ] ; 4 uses
  %i.aem = sub i64 %2, %.055500.ph
  %i.aen = add i64 %2, -1                         ; 7 uses
  %i.aeo = sub i64 %i.aen, %.055500.ph
  %xtraiter962 = and i64 %i.aem, 3                ; 2 uses
  %lcmp.mod963.not = icmp eq i64 %xtraiter962, 0
  br i1 %lcmp.mod963.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader888, %.lr.ph.prol
  %.055500.prol = phi i64 [ %i.aet, %.lr.ph.prol ], [ %.055500.ph, %.lr.ph.preheader888 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader888 ]
  %i.aep = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.055500.prol
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 12
  %i.aer = load i16, ptr %i.aeq, align 4, !tbaa !200
  %i.aes = getelementptr inbounds nuw [2 x i8], ptr %i.acv, i64 %.055500.prol
  store i16 %i.aer, ptr %i.aes, align 2, !tbaa !195
  %i.aet = add nuw i64 %.055500.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter962
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !67

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader888
  %.055500.unr = phi i64 [ %.055500.ph, %.lr.ph.preheader888 ], [ %i.aet, %.lr.ph.prol ]
  %i.aeu = icmp ult i64 %i.aeo, 3
  br i1 %i.aeu, label %.unr-lcssa964, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.055500 = phi i64 [ %i.afo, %.lr.ph ], [ %.055500.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.aev = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.055500
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 12
  %i.aex = load i16, ptr %i.aew, align 4, !tbaa !200
  %i.aey = getelementptr inbounds nuw [2 x i8], ptr %i.acv, i64 %.055500
  store i16 %i.aex, ptr %i.aey, align 2, !tbaa !195
  %i.aez = add nuw i64 %.055500, 1                ; 2 uses
  %i.afa = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.aez
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 12
  %i.afc = load i16, ptr %i.afb, align 4, !tbaa !200
  %i.afd = getelementptr inbounds nuw [2 x i8], ptr %i.acv, i64 %i.aez
  store i16 %i.afc, ptr %i.afd, align 2, !tbaa !195
  %i.afe = add nuw i64 %.055500, 2                ; 2 uses
  %i.aff = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.afe
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 12
  %i.afh = load i16, ptr %i.afg, align 4, !tbaa !200
  %i.afi = getelementptr inbounds nuw [2 x i8], ptr %i.acv, i64 %i.afe
  store i16 %i.afh, ptr %i.afi, align 2, !tbaa !195
  %i.afj = add nuw i64 %.055500, 3                ; 2 uses
  %i.afk = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.afj
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 12
  %i.afm = load i16, ptr %i.afl, align 4, !tbaa !200
  %i.afn = getelementptr inbounds nuw [2 x i8], ptr %i.acv, i64 %i.afj
  store i16 %i.afm, ptr %i.afn, align 2, !tbaa !195
  %i.afo = add nuw i64 %.055500, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.afo, %2
  br i1 %exitcond.not.3, label %.unr-lcssa964, label %.lr.ph, !llvm.loop !68

.thread659:                                       ; preds = %SplitByteVectorLiteral.exit
  store i64 1, ptr %8, align 8, !tbaa !164
  tail call void @BrotliFree(ptr noundef %0, ptr noundef null) #8
  br label %.thread668

.unr-lcssa964:                                    ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.lhs.trunc.i66 = trunc nuw nsw i64 %2 to i16
  %i.afp = udiv i16 %.lhs.trunc.i66, 530
  %narrow.i67 = add nuw nsw i16 %i.afp, 1
  %i.afq = zext nneg i16 %narrow.i67 to i64
  %i.afr = icmp ugt i64 %2, 26499
  %spec.select.i68 = select i1 %i.afr, i64 50, i64 %i.afq ; 17 uses
  %i.afs = icmp ult i64 %2, 128
  br i1 %i.afs, label %bb.ct, label %bb.df

bb.ct:                                            ; preds = %.unr-lcssa964
  %i.aft = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.afu = load i64, ptr %i.aft, align 8, !tbaa !165 ; 3 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.afw = load i64, ptr %i.afv, align 8, !tbaa !166 ; 2 uses
  %i.afx = add i64 %i.afw, 1                      ; 4 uses
  %i.afy = icmp ult i64 %i.afu, %i.afx
  br i1 %i.afy, label %bb.cu, label %bb.cz

bb.cu:                                            ; preds = %bb.ct
  %i.afz = icmp eq i64 %i.afu, 0
  %..i236 = select i1 %i.afz, i64 %i.afx, i64 %i.afu
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %bb.cu
  %.0136.i237 = phi i64 [ %..i236, %bb.cu ], [ %i.agb, %bb.cv ] ; 4 uses
  %i.aga = icmp ult i64 %.0136.i237, %i.afx
  %i.agb = shl i64 %.0136.i237, 1
  br i1 %i.aga, label %bb.cv, label %bb.cw, !llvm.loop !69

bb.cw:                                            ; preds = %bb.cv
  %i.agc = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %.0136.i237) #8 ; 2 uses
  %i.agd = load i64, ptr %i.aft, align 8, !tbaa !165 ; 2 uses
  %.not151.i238 = icmp eq i64 %i.agd, 0
  br i1 %.not151.i238, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.age = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.agc, ptr align 1 %i.agf, i64 %i.agd, i1 false)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.agg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !13
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.agh) #8
  store ptr %i.agc, ptr %i.agg, align 8, !tbaa !13
  store i64 %.0136.i237, ptr %i.aft, align 8, !tbaa !165
  %.pre.i239 = load i64, ptr %i.afv, align 8, !tbaa !166 ; 2 uses
  %.pre189.i = add i64 %.pre.i239, 1
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.ct
  %.pre-phi.i232 = phi i64 [ %.pre189.i, %bb.cy ], [ %i.afx, %bb.ct ] ; 3 uses
  %i.agi = phi i64 [ %.pre.i239, %bb.cy ], [ %i.afw, %bb.ct ]
  %i.agj = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  %i.agk = load i64, ptr %i.agj, align 8, !tbaa !167 ; 3 uses
  %i.agl = icmp ult i64 %i.agk, %.pre-phi.i232
  br i1 %i.agl, label %bb.da, label %.thread660

bb.da:                                            ; preds = %bb.cz
  %i.agm = icmp eq i64 %i.agk, 0
  %.154.i233 = select i1 %i.agm, i64 %.pre-phi.i232, i64 %i.agk
  br label %bb.db

bb.db:                                            ; preds = %bb.db, %bb.da
  %.0135.i234 = phi i64 [ %.154.i233, %bb.da ], [ %i.ago, %bb.db ] ; 4 uses
  %i.agn = icmp ult i64 %.0135.i234, %.pre-phi.i232
  %i.ago = shl i64 %.0135.i234, 1
  br i1 %i.agn, label %bb.db, label %bb.dc, !llvm.loop !70

bb.dc:                                            ; preds = %bb.db
  %i.agp = shl i64 %.0135.i234, 2
  %i.agq = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.agp) #8 ; 2 uses
  %i.agr = load i64, ptr %i.agj, align 8, !tbaa !167 ; 2 uses
  %.not153.i235 = icmp eq i64 %i.agr, 0
  br i1 %.not153.i235, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ags = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !14
  %i.agu = shl i64 %i.agr, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.agq, ptr align 4 %i.agt, i64 %i.agu, i1 false)
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.agv = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !14
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.agw) #8
  store ptr %i.agq, ptr %i.agv, align 8, !tbaa !14
  store i64 %.0135.i234, ptr %i.agj, align 8, !tbaa !167
  %.pre188.i = load i64, ptr %i.afv, align 8, !tbaa !166
  br label %.thread660

.thread660:                                       ; preds = %bb.de, %bb.cz
  %i.agx = phi i64 [ %.pre188.i, %bb.de ], [ %i.agi, %bb.cz ]
  store i64 1, ptr %8, align 8, !tbaa !164
  %i.agy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !13
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 %i.agx
  store i8 0, ptr %i.aha, align 1, !tbaa !168
  %i.ahb = trunc nuw nsw i64 %2 to i32
  %i.ahc = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !14
  %i.ahe = load i64, ptr %i.afv, align 8, !tbaa !166 ; 2 uses
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %i.ahd, i64 %i.ahe
  store i32 %i.ahb, ptr %i.ahf, align 4, !tbaa !169
  %i.ahg = add i64 %i.ahe, 1
  store i64 %i.ahg, ptr %i.afv, align 8, !tbaa !166
  tail call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %i.acv) #8
  %.pre = shl nuw nsw i64 %2, 1
  %i.ahh = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %.pre) #8
  br label %.lr.ph504.preheader

bb.df:                                            ; preds = %.unr-lcssa964
  %i.ahi = mul nuw nsw i64 %spec.select.i68, 2832
  %i.ahj = add nuw nsw i64 %i.ahi, 2832
  %i.ahk = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.ahj) #8 ; 20 uses
  %xtraiter967 = and i64 %spec.select.i68, 3      ; 3 uses
  %i.ahl = icmp samesign ult i64 %spec.select.i68, 4
  br i1 %i.ahl, label %.epil.preheader966, label %.new965

.new965:                                          ; preds = %bb.df
  %unroll_iter971 = and i64 %spec.select.i68, 252
  br label %bb.dh

ClearHistogramsCommand.exit.preheader.i.i.unr-lcssa: ; preds = %bb.dh
  %lcmp.mod969.not = icmp eq i64 %xtraiter967, 0
  br i1 %lcmp.mod969.not, label %ClearHistogramsCommand.exit.preheader.i.i, label %.epil.preheader966

.epil.preheader966:                               ; preds = %ClearHistogramsCommand.exit.preheader.i.i.unr-lcssa, %bb.df
  %.0.i28.i.i69.epil.init = phi i64 [ 0, %bb.df ], [ %i.aic, %ClearHistogramsCommand.exit.preheader.i.i.unr-lcssa ]
  %lcmp.mod970 = icmp ne i64 %xtraiter967, 0
  tail call void @llvm.assume(i1 %lcmp.mod970)
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dg, %.epil.preheader966
  %.0.i28.i.i69.epil = phi i64 [ %.0.i28.i.i69.epil.init, %.epil.preheader966 ], [ %i.aho, %bb.dg ] ; 2 uses
  %epil.iter968 = phi i64 [ 0, %.epil.preheader966 ], [ %epil.iter968.next, %bb.dg ]
  %i.ahm = getelementptr inbounds nuw [2832 x i8], ptr %i.ahk, i64 %.0.i28.i.i69.epil ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ahm, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.ahn, align 8, !tbaa !204
  %i.aho = add nuw nsw i64 %.0.i28.i.i69.epil, 1
  %epil.iter968.next = add i64 %epil.iter968, 1   ; 2 uses
  %epil.iter968.cmp.not = icmp eq i64 %epil.iter968.next, %xtraiter967
  br i1 %epil.iter968.cmp.not, label %ClearHistogramsCommand.exit.preheader.i.i, label %bb.dg, !llvm.loop !71

ClearHistogramsCommand.exit.preheader.i.i:        ; preds = %bb.dg, %ClearHistogramsCommand.exit.preheader.i.i.unr-lcssa
  %i.ahp = udiv i64 %2, %spec.select.i68
  %i.ahq = add i64 %2, -41
  br label %bb.di

bb.dh:                                            ; preds = %bb.dh, %.new965
  %.0.i28.i.i69 = phi i64 [ 0, %.new965 ], [ %i.aic, %bb.dh ] ; 5 uses
  %niter972 = phi i64 [ 0, %.new965 ], [ %niter972.next.3, %bb.dh ]
  %i.ahr = getelementptr inbounds nuw [2832 x i8], ptr %i.ahk, i64 %.0.i28.i.i69 ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ahr, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.ahs, align 8, !tbaa !204
  %i.aht = getelementptr inbounds nuw [2832 x i8], ptr %i.ahk, i64 %.0.i28.i.i69 ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 2832
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.aht, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ahu, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.ahv, align 8, !tbaa !204
  %i.ahw = getelementptr inbounds nuw [2832 x i8], ptr %i.ahk, i64 %.0.i28.i.i69 ; 2 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 5664
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahw, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ahx, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.ahy, align 8, !tbaa !204
  %i.ahz = getelementptr inbounds nuw [2832 x i8], ptr %i.ahk, i64 %.0.i28.i.i69 ; 2 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 8496
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahz, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.aia, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.aib, align 8, !tbaa !204
  %i.aic = add nuw nsw i64 %.0.i28.i.i69, 4       ; 2 uses
  %niter972.next.3 = add i64 %niter972, 4         ; 2 uses
  %niter972.ncmp.3 = icmp eq i64 %niter972.next.3, %unroll_iter971
  br i1 %niter972.ncmp.3, label %ClearHistogramsCommand.exit.preheader.i.i.unr-lcssa, label %bb.dh, !llvm.loop !72

bb.di:                                            ; preds = %HistogramAddVectorCommand.exit.i.i, %ClearHistogramsCommand.exit.preheader.i.i
  %.02231.i.i71 = phi i64 [ 0, %ClearHistogramsCommand.exit.preheader.i.i ], [ %i.aru, %HistogramAddVectorCommand.exit.i.i ] ; 4 uses
  %.02730.i.i72 = phi i32 [ 7, %ClearHistogramsCommand.exit.preheader.i.i ], [ %.1.i.i74, %HistogramAddVectorCommand.exit.i.i ] ; 2 uses
  %i.aid = mul i64 %.02231.i.i71, %2
  %i.aie = udiv i64 %i.aid, %spec.select.i68      ; 2 uses
  %.not.i.i73 = icmp eq i64 %.02231.i.i71, 0
  br i1 %.not.i.i73, label %HistogramAddVectorCommand.exit.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.aif = mul i32 %.02730.i.i72, 16807           ; 2 uses
  %i.aig = zext i32 %i.aif to i64
  %i.aih = urem i64 %i.aig, %i.ahp
  %i.aii = add i64 %i.aih, %i.aie
  br label %HistogramAddVectorCommand.exit.i.i

HistogramAddVectorCommand.exit.i.i:               ; preds = %bb.dj, %bb.di
  %.1.i.i74 = phi i32 [ %.02730.i.i72, %bb.di ], [ %i.aif, %bb.dj ]
  %.0.i.i75 = phi i64 [ %i.aie, %bb.di ], [ %i.aii, %bb.dj ] ; 2 uses
  %i.aij = add i64 %.0.i.i75, 40
  %.not25.i.i76 = icmp ult i64 %i.aij, %2
  %spec.select.i.i77 = select i1 %.not25.i.i76, i64 %.0.i.i75, i64 %i.ahq
  %i.aik = getelementptr inbounds nuw [2832 x i8], ptr %i.ahk, i64 %.02231.i.i71 ; 41 uses
end_hunk_1
begin_hunk_2_@BrotliSplitBlock:bb.a
  %i.bwh = load i64, ptr %i.bwa, align 8, !tbaa !165 ; 2 uses
  %.not394.i.i228 = icmp eq i64 %i.bwh, 0
  br i1 %.not394.i.i228, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.bwi = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bwj = load ptr, ptr %i.bwi, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bwg, ptr align 1 %i.bwj, i64 %i.bwh, i1 false)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.bwk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bwl = load ptr, ptr %i.bwk, align 8, !tbaa !13
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.bwl) #8
  store ptr %i.bwg, ptr %i.bwk, align 8, !tbaa !13
  store i64 %.0331.i.i227, ptr %i.bwa, align 8, !tbaa !165
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %._crit_edge475.i.i
  %i.bwm = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  %i.bwn = load i64, ptr %i.bwm, align 8, !tbaa !167 ; 3 uses
  %i.bwo = icmp ult i64 %i.bwn, %.0108.i.i120
  br i1 %i.bwo, label %bb.fu, label %bb.fy

bb.fu:                                            ; preds = %bb.ft
  %i.bwp = icmp eq i64 %i.bwn, 0
  %.403.i.i223 = select i1 %i.bwp, i64 %.0108.i.i120, i64 %i.bwn
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fv, %bb.fu
  %.0330.i.i224 = phi i64 [ %.403.i.i223, %bb.fu ], [ %i.bwr, %bb.fv ] ; 4 uses
  %i.bwq = icmp ult i64 %.0330.i.i224, %.0108.i.i120
  %i.bwr = shl i64 %.0330.i.i224, 1
  br i1 %i.bwq, label %bb.fv, label %bb.fw, !llvm.loop !111

bb.fw:                                            ; preds = %bb.fv
  %i.bws = shl i64 %.0330.i.i224, 2
  %i.bwt = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.bws) #8 ; 2 uses
  %i.bwu = load i64, ptr %i.bwm, align 8, !tbaa !167 ; 2 uses
  %.not396.i.i225 = icmp eq i64 %i.bwu, 0
  br i1 %.not396.i.i225, label %.thread558.i.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.bwv = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bww = load ptr, ptr %i.bwv, align 8, !tbaa !14
  %i.bwx = shl i64 %i.bwu, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bwt, ptr align 4 %i.bww, i64 %i.bwx, i1 false)
  br label %.thread558.i.i

.thread558.i.i:                                   ; preds = %bb.fx, %bb.fw
  %i.bwy = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.bwz = load ptr, ptr %i.bwy, align 8, !tbaa !14
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.bwz) #8
  store ptr %i.bwt, ptr %i.bwy, align 8, !tbaa !14
  store i64 %.0330.i.i224, ptr %i.bwm, align 8, !tbaa !167
  br label %.lr.ph481.i.i

bb.fy:                                            ; preds = %bb.ft
  br i1 %.not.i168.i141, label %bb.gc, label %.lr.ph481.i.i

.lr.ph481.i.i:                                    ; preds = %bb.fy, %.thread558.i.i
  %i.bxa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bxb = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %.not555.i.i = icmp eq i64 %.0108.i.i120, 1
  br i1 %.not555.i.i, label %._crit_edge482.loopexit.peel.begin.i.i, label %.lr.ph481.split.i.i

.lr.ph481.split.i.i:                              ; preds = %.lr.ph481.i.i
  %i.bxc = add i64 %.0108.i.i120, -2
  br label %bb.fz

bb.fz:                                            ; preds = %bb.ga, %.lr.ph481.split.i.i
  %.0479.i.i = phi i8 [ 0, %.lr.ph481.split.i.i ], [ %.1.i173.i216, %bb.ga ] ; 2 uses
  %.0326478.i.i = phi i64 [ 0, %.lr.ph481.split.i.i ], [ %.1327.i.i215, %bb.ga ] ; 4 uses
  %.0328477.i.i = phi i32 [ 0, %.lr.ph481.split.i.i ], [ %.1329.i.i214, %bb.ga ]
  %.5476.i.i = phi i64 [ 0, %.lr.ph481.split.i.i ], [ %i.bxg, %bb.ga ] ; 4 uses
  %i.bxd = getelementptr inbounds nuw [4 x i8], ptr %i.bnt, i64 %.5476.i.i
  %i.bxe = load i32, ptr %i.bxd, align 4, !tbaa !169
  %i.bxf = add i32 %i.bxe, %.0328477.i.i          ; 2 uses
  %i.bxg = add nuw i64 %.5476.i.i, 1              ; 3 uses
  %i.bxh = getelementptr inbounds nuw [4 x i8], ptr %i.bnk, i64 %.5476.i.i
  %i.bxi = load i32, ptr %i.bxh, align 4, !tbaa !169 ; 2 uses
  %i.bxj = getelementptr inbounds nuw [4 x i8], ptr %i.bnk, i64 %i.bxg
  %i.bxk = load i32, ptr %i.bxj, align 4, !tbaa !169
  %.not397.i.i212 = icmp eq i32 %i.bxi, %i.bxk
  br i1 %.not397.i.i212, label %bb.ga, label %._crit_edge519.i.i

._crit_edge519.i.i:                               ; preds = %bb.fz
  %.phi.trans.insert520.i.i213 = zext i32 %i.bxi to i64
  %.phi.trans.insert521.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.buo, i64 %.phi.trans.insert520.i.i213
  %.pre522.i.i = load i32, ptr %.phi.trans.insert521.i.i, align 4, !tbaa !169
  %i.bxl = trunc i32 %.pre522.i.i to i8           ; 2 uses
  %i.bxm = load ptr, ptr %i.bxa, align 8, !tbaa !13
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bxm, i64 %.0326478.i.i
  store i8 %i.bxl, ptr %i.bxn, align 1, !tbaa !168
  %i.bxo = load ptr, ptr %i.bxb, align 8, !tbaa !14
  %i.bxp = getelementptr inbounds nuw [4 x i8], ptr %i.bxo, i64 %.0326478.i.i
  store i32 %i.bxf, ptr %i.bxp, align 4, !tbaa !169
  %i.bxq = tail call i8 @llvm.umax.i8(i8 %.0479.i.i, i8 %i.bxl)
  %i.bxr = add i64 %.0326478.i.i, 1
  br label %bb.ga

bb.ga:                                            ; preds = %._crit_edge519.i.i, %bb.fz
  %.1329.i.i214 = phi i32 [ 0, %._crit_edge519.i.i ], [ %i.bxf, %bb.fz ] ; 2 uses
  %.1327.i.i215 = phi i64 [ %i.bxr, %._crit_edge519.i.i ], [ %.0326478.i.i, %bb.fz ] ; 2 uses
  %.1.i173.i216 = phi i8 [ %i.bxq, %._crit_edge519.i.i ], [ %.0479.i.i, %bb.fz ] ; 2 uses
  %exitcond511.not.i.i = icmp eq i64 %.5476.i.i, %i.bxc
  br i1 %exitcond511.not.i.i, label %._crit_edge482.loopexit.peel.begin.i.i, label %bb.fz, !llvm.loop !112

._crit_edge482.loopexit.peel.begin.i.i:           ; preds = %bb.ga, %.lr.ph481.i.i
  %i.bxs = phi i8 [ 0, %.lr.ph481.i.i ], [ %.1.i173.i216, %bb.ga ] ; 2 uses
  %i.bxt = phi i64 [ 0, %.lr.ph481.i.i ], [ %.1327.i.i215, %bb.ga ] ; 4 uses
  %i.bxu = phi i32 [ 0, %.lr.ph481.i.i ], [ %.1329.i.i214, %bb.ga ]
  %i.bxv = phi i64 [ 0, %.lr.ph481.i.i ], [ %i.bxg, %bb.ga ] ; 3 uses
  %i.bxw = getelementptr inbounds nuw [4 x i8], ptr %i.bnt, i64 %i.bxv
  %i.bxx = load i32, ptr %i.bxw, align 4, !tbaa !169
  %i.bxy = add i32 %i.bxx, %i.bxu
  %i.bxz = add nuw i64 %i.bxv, 1                  ; 2 uses
  %i.bya = icmp eq i64 %i.bxz, %.0108.i.i120
  %.phi.trans.insert523.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.bnk, i64 %i.bxv
  %.pre524.i.i217 = load i32, ptr %.phi.trans.insert523.i.i, align 4, !tbaa !169 ; 2 uses
  br i1 %i.bya, label %._crit_edge482.loopexit.peel.begin._crit_edge.i.i, label %bb.gb

bb.gb:                                            ; preds = %._crit_edge482.loopexit.peel.begin.i.i
  %i.byb = getelementptr inbounds nuw [4 x i8], ptr %i.bnk, i64 %i.bxz
  %i.byc = load i32, ptr %i.byb, align 4, !tbaa !169
  %.not397.peel.i.i218 = icmp eq i32 %.pre524.i.i217, %i.byc
  br i1 %.not397.peel.i.i218, label %._crit_edge482.loopexit.peel.next.i.i, label %._crit_edge482.loopexit.peel.begin._crit_edge.i.i

._crit_edge482.loopexit.peel.begin._crit_edge.i.i: ; preds = %bb.gb, %._crit_edge482.loopexit.peel.begin.i.i
  %i.byd = zext i32 %.pre524.i.i217 to i64
  %i.bye = getelementptr inbounds nuw [4 x i8], ptr %i.buo, i64 %i.byd
  %i.byf = load i32, ptr %i.bye, align 4, !tbaa !169
  %i.byg = trunc i32 %i.byf to i8                 ; 2 uses
  %i.byh = load ptr, ptr %i.bxa, align 8, !tbaa !13
  %i.byi = getelementptr inbounds nuw i8, ptr %i.byh, i64 %i.bxt
  store i8 %i.byg, ptr %i.byi, align 1, !tbaa !168
  %i.byj = load ptr, ptr %i.bxb, align 8, !tbaa !14
  %i.byk = getelementptr inbounds nuw [4 x i8], ptr %i.byj, i64 %i.bxt
  store i32 %i.bxy, ptr %i.byk, align 4, !tbaa !169
  %i.byl = tail call i8 @llvm.umax.i8(i8 %i.bxs, i8 %i.byg)
  %i.bym = add i64 %i.bxt, 1
  br label %._crit_edge482.loopexit.peel.next.i.i

._crit_edge482.loopexit.peel.next.i.i:            ; preds = %._crit_edge482.loopexit.peel.begin._crit_edge.i.i, %bb.gb
  %.1327.peel.i.i219 = phi i64 [ %i.bym, %._crit_edge482.loopexit.peel.begin._crit_edge.i.i ], [ %i.bxt, %bb.gb ]
  %.1.peel.i.i220 = phi i8 [ %i.byl, %._crit_edge482.loopexit.peel.begin._crit_edge.i.i ], [ %i.bxs, %bb.gb ]
  %i.byn = zext i8 %.1.peel.i.i220 to i64
  %i.byo = add nuw nsw i64 %i.byn, 1
  br label %bb.gc

bb.gc:                                            ; preds = %._crit_edge482.loopexit.peel.next.i.i, %bb.fy
  %.0326.lcssa.i.i221 = phi i64 [ 0, %bb.fy ], [ %.1327.peel.i.i219, %._crit_edge482.loopexit.peel.next.i.i ]
  %.0.lcssa.i.i222 = phi i64 [ 1, %bb.fy ], [ %i.byo, %._crit_edge482.loopexit.peel.next.i.i ]
  %i.byp = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.0326.lcssa.i.i221, ptr %i.byp, align 8, !tbaa !166
  store i64 %.0.lcssa.i.i222, ptr %8, align 8, !tbaa !164
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.buo) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.bnl) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.bnk) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.bdi) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.acv) #8
  %i.byq = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.arw) #8 ; 2 uses
  br i1 %.not.i, label %.thread668, label %.lr.ph504.preheader

.lr.ph504.preheader:                              ; preds = %.thread660, %bb.gc
  %i.byr = phi ptr [ %i.ahh, %.thread660 ], [ %i.byq, %bb.gc ] ; 14 uses
  br label %.lr.ph504

.lr.ph504:                                        ; preds = %.lr.ph504.preheader, %bb.gf
  %.0502 = phi i64 [ %i.bze, %bb.gf ], [ 0, %.lr.ph504.preheader ] ; 2 uses
  %.054501 = phi i64 [ %.1, %bb.gf ], [ 0, %.lr.ph504.preheader ] ; 4 uses
  %i.bys = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.0502 ; 3 uses
  %i.byt = getelementptr inbounds nuw i8, ptr %i.bys, i64 4
  %i.byu = load i32, ptr %i.byt, align 4, !tbaa !163
  %i.byv = and i32 %i.byu, 33554431
  %.not60 = icmp eq i32 %i.byv, 0
  br i1 %.not60, label %bb.gf, label %bb.gd

bb.gd:                                            ; preds = %.lr.ph504
  %i.byw = getelementptr inbounds nuw i8, ptr %i.bys, i64 12
  %i.byx = load i16, ptr %i.byw, align 4, !tbaa !200
  %i.byy = icmp ugt i16 %i.byx, 127
  br i1 %i.byy, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.byz = getelementptr inbounds nuw i8, ptr %i.bys, i64 14
  %i.bza = load i16, ptr %i.byz, align 2, !tbaa !209
  %i.bzb = and i16 %i.bza, 1023
  %i.bzc = add i64 %.054501, 1
  %i.bzd = getelementptr inbounds nuw [2 x i8], ptr %i.byr, i64 %.054501
  store i16 %i.bzb, ptr %i.bzd, align 2, !tbaa !195
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd, %.lr.ph504
  %.1 = phi i64 [ %i.bzc, %bb.ge ], [ %.054501, %bb.gd ], [ %.054501, %.lr.ph504 ] ; 26 uses
  %i.bze = add nuw i64 %.0502, 1                  ; 2 uses
  %exitcond528.not = icmp eq i64 %i.bze, %2
  br i1 %exitcond528.not, label %._crit_edge505, label %.lr.ph504, !llvm.loop !113

._crit_edge505:                                   ; preds = %bb.gf
  %.lhs.trunc.i240 = trunc nuw nsw i64 %.1 to i16
  %i.bzf = udiv i16 %.lhs.trunc.i240, 544
  %narrow.i241 = add nuw nsw i16 %i.bzf, 1
  %i.bzg = zext nneg i16 %narrow.i241 to i64
  %i.bzh = icmp ugt i64 %.1, 27199
  %spec.select = select i1 %i.bzh, i64 50, i64 %i.bzg ; 17 uses
  %i.bzi = icmp eq i64 %.1, 0
  br i1 %i.bzi, label %.thread668, label %bb.gg

.thread668:                                       ; preds = %bb.gc, %.thread659, %._crit_edge505
  %i.bzj = phi ptr [ %i.byr, %._crit_edge505 ], [ null, %.thread659 ], [ %i.byq, %bb.gc ]
  store i64 1, ptr %9, align 8, !tbaa !164
  br label %SplitByteVectorDistance.exit

bb.gg:                                            ; preds = %._crit_edge505
  %i.bzk = icmp ult i64 %.1, 128
  br i1 %i.bzk, label %bb.gh, label %bb.gu

bb.gh:                                            ; preds = %bb.gg
  %i.bzl = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.bzm = load i64, ptr %i.bzl, align 8, !tbaa !165 ; 3 uses
  %i.bzn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.bzo = load i64, ptr %i.bzn, align 8, !tbaa !166 ; 2 uses
  %i.bzp = add i64 %i.bzo, 1                      ; 4 uses
  %i.bzq = icmp ult i64 %i.bzm, %i.bzp
  br i1 %i.bzq, label %bb.gi, label %bb.gn

bb.gi:                                            ; preds = %bb.gh
  %i.bzr = icmp eq i64 %i.bzm, 0
  %..i451 = select i1 %i.bzr, i64 %i.bzp, i64 %i.bzm
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gj, %bb.gi
  %.0136.i452 = phi i64 [ %..i451, %bb.gi ], [ %i.bzt, %bb.gj ] ; 4 uses
  %i.bzs = icmp ult i64 %.0136.i452, %i.bzp
  %i.bzt = shl i64 %.0136.i452, 1
  br i1 %i.bzs, label %bb.gj, label %bb.gk, !llvm.loop !114

bb.gk:                                            ; preds = %bb.gj
  %i.bzu = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %.0136.i452) #8 ; 2 uses
  %i.bzv = load i64, ptr %i.bzl, align 8, !tbaa !165 ; 2 uses
  %.not151.i453 = icmp eq i64 %i.bzv, 0
  br i1 %.not151.i453, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.bzw = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bzx = load ptr, ptr %i.bzw, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bzu, ptr align 1 %i.bzx, i64 %i.bzv, i1 false)
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %i.bzy = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bzz = load ptr, ptr %i.bzy, align 8, !tbaa !13
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.bzz) #8
  store ptr %i.bzu, ptr %i.bzy, align 8, !tbaa !13
  store i64 %.0136.i452, ptr %i.bzl, align 8, !tbaa !165
  %.pre.i454 = load i64, ptr %i.bzn, align 8, !tbaa !166 ; 2 uses
  %.pre189.i455 = add i64 %.pre.i454, 1
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gh
  %.pre-phi.i446 = phi i64 [ %.pre189.i455, %bb.gm ], [ %i.bzp, %bb.gh ] ; 3 uses
  %i.caa = phi i64 [ %.pre.i454, %bb.gm ], [ %i.bzo, %bb.gh ]
  %i.cab = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.cac = load i64, ptr %i.cab, align 8, !tbaa !167 ; 3 uses
  %i.cad = icmp ult i64 %i.cac, %.pre-phi.i446
  br i1 %i.cad, label %bb.go, label %bb.gt

bb.go:                                            ; preds = %bb.gn
  %i.cae = icmp eq i64 %i.cac, 0
  %.154.i447 = select i1 %i.cae, i64 %.pre-phi.i446, i64 %i.cac
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gp, %bb.go
  %.0135.i448 = phi i64 [ %.154.i447, %bb.go ], [ %i.cag, %bb.gp ] ; 4 uses
  %i.caf = icmp ult i64 %.0135.i448, %.pre-phi.i446
  %i.cag = shl i64 %.0135.i448, 1
  br i1 %i.caf, label %bb.gp, label %bb.gq, !llvm.loop !115

bb.gq:                                            ; preds = %bb.gp
  %i.cah = shl i64 %.0135.i448, 2
  %i.cai = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.cah) #8 ; 2 uses
  %i.caj = load i64, ptr %i.cab, align 8, !tbaa !167 ; 2 uses
  %.not153.i449 = icmp eq i64 %i.caj, 0
  br i1 %.not153.i449, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.cak = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.cal = load ptr, ptr %i.cak, align 8, !tbaa !14
  %i.cam = shl i64 %i.caj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cai, ptr align 4 %i.cal, i64 %i.cam, i1 false)
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %i.can = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.cao = load ptr, ptr %i.can, align 8, !tbaa !14
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.cao) #8
  store ptr %i.cai, ptr %i.can, align 8, !tbaa !14
  store i64 %.0135.i448, ptr %i.cab, align 8, !tbaa !167
  %.pre188.i450 = load i64, ptr %i.bzn, align 8, !tbaa !166
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gn
  %i.cap = phi i64 [ %.pre188.i450, %bb.gs ], [ %i.caa, %bb.gn ]
  store i64 1, ptr %9, align 8, !tbaa !164
  %i.caq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.car = load ptr, ptr %i.caq, align 8, !tbaa !13
  %i.cas = getelementptr inbounds nuw i8, ptr %i.car, i64 %i.cap
  store i8 0, ptr %i.cas, align 1, !tbaa !168
  %i.cat = trunc nuw nsw i64 %.1 to i32
  %i.cau = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.cav = load ptr, ptr %i.cau, align 8, !tbaa !14
  %i.caw = load i64, ptr %i.bzn, align 8, !tbaa !166 ; 2 uses
  %i.cax = getelementptr inbounds nuw [4 x i8], ptr %i.cav, i64 %i.caw
  store i32 %i.cat, ptr %i.cax, align 4, !tbaa !169
  %i.cay = add i64 %i.caw, 1
  store i64 %i.cay, ptr %i.bzn, align 8, !tbaa !166
  br label %SplitByteVectorDistance.exit

bb.gu:                                            ; preds = %bb.gg
  %i.caz = mul nuw nsw i64 %spec.select, 2192
  %i.cba = add nuw nsw i64 %i.caz, 2192
  %i.cbb = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.cba) #8 ; 20 uses
  %xtraiter1036 = and i64 %spec.select, 3         ; 3 uses
  %i.cbc = icmp samesign ult i64 %spec.select, 4
  br i1 %i.cbc, label %.epil.preheader1035, label %.new1034

.new1034:                                         ; preds = %bb.gu
  %unroll_iter1040 = and i64 %spec.select, 252
  br label %bb.gw

ClearHistogramsDistance.exit.preheader.i.i.unr-lcssa: ; preds = %bb.gw
  %lcmp.mod1038.not = icmp eq i64 %xtraiter1036, 0
  br i1 %lcmp.mod1038.not, label %ClearHistogramsDistance.exit.preheader.i.i, label %.epil.preheader1035

.epil.preheader1035:                              ; preds = %ClearHistogramsDistance.exit.preheader.i.i.unr-lcssa, %bb.gu
  %.0.i28.i.i243.epil.init = phi i64 [ 0, %bb.gu ], [ %i.cbt, %ClearHistogramsDistance.exit.preheader.i.i.unr-lcssa ]
  %lcmp.mod1039 = icmp ne i64 %xtraiter1036, 0
  tail call void @llvm.assume(i1 %lcmp.mod1039)
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gv, %.epil.preheader1035
  %.0.i28.i.i243.epil = phi i64 [ %.0.i28.i.i243.epil.init, %.epil.preheader1035 ], [ %i.cbf, %bb.gv ] ; 2 uses
  %epil.iter1037 = phi i64 [ 0, %.epil.preheader1035 ], [ %epil.iter1037.next, %bb.gv ]
  %i.cbd = getelementptr inbounds nuw [2192 x i8], ptr %i.cbb, i64 %.0.i28.i.i243.epil ; 2 uses
  %i.cbe = getelementptr inbounds nuw i8, ptr %i.cbd, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cbd, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.cbe, align 8, !tbaa !211
  %i.cbf = add nuw nsw i64 %.0.i28.i.i243.epil, 1
  %epil.iter1037.next = add i64 %epil.iter1037, 1 ; 2 uses
  %epil.iter1037.cmp.not = icmp eq i64 %epil.iter1037.next, %xtraiter1036
  br i1 %epil.iter1037.cmp.not, label %ClearHistogramsDistance.exit.preheader.i.i, label %bb.gv, !llvm.loop !116

ClearHistogramsDistance.exit.preheader.i.i:       ; preds = %bb.gv, %ClearHistogramsDistance.exit.preheader.i.i.unr-lcssa
  %i.cbg = udiv i64 %.1, %spec.select
  %i.cbh = add i64 %.1, -41
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gw, %.new1034
  %.0.i28.i.i243 = phi i64 [ 0, %.new1034 ], [ %i.cbt, %bb.gw ] ; 5 uses
  %niter1041 = phi i64 [ 0, %.new1034 ], [ %niter1041.next.3, %bb.gw ]
  %i.cbi = getelementptr inbounds nuw [2192 x i8], ptr %i.cbb, i64 %.0.i28.i.i243 ; 2 uses
  %i.cbj = getelementptr inbounds nuw i8, ptr %i.cbi, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cbi, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.cbj, align 8, !tbaa !211
  %i.cbk = getelementptr inbounds nuw [2192 x i8], ptr %i.cbb, i64 %.0.i28.i.i243 ; 2 uses
  %i.cbl = getelementptr inbounds nuw i8, ptr %i.cbk, i64 2192
  %i.cbm = getelementptr inbounds nuw i8, ptr %i.cbk, i64 4376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cbl, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.cbm, align 8, !tbaa !211
  %i.cbn = getelementptr inbounds nuw [2192 x i8], ptr %i.cbb, i64 %.0.i28.i.i243 ; 2 uses
  %i.cbo = getelementptr inbounds nuw i8, ptr %i.cbn, i64 4384
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.cbn, i64 6568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cbo, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.cbp, align 8, !tbaa !211
  %i.cbq = getelementptr inbounds nuw [2192 x i8], ptr %i.cbb, i64 %.0.i28.i.i243 ; 2 uses
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.cbq, i64 6576
  %i.cbs = getelementptr inbounds nuw i8, ptr %i.cbq, i64 8760
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cbr, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.cbs, align 8, !tbaa !211
  %i.cbt = add nuw nsw i64 %.0.i28.i.i243, 4      ; 2 uses
  %niter1041.next.3 = add i64 %niter1041, 4       ; 2 uses
  %niter1041.ncmp.3 = icmp eq i64 %niter1041.next.3, %unroll_iter1040
  br i1 %niter1041.ncmp.3, label %ClearHistogramsDistance.exit.preheader.i.i.unr-lcssa, label %bb.gw, !llvm.loop !117

bb.gx:                                            ; preds = %HistogramAddVectorDistance.exit.i.i, %ClearHistogramsDistance.exit.preheader.i.i
  %.02231.i.i245 = phi i64 [ 0, %ClearHistogramsDistance.exit.preheader.i.i ], [ %i.cll, %HistogramAddVectorDistance.exit.i.i ] ; 4 uses
  %.02730.i.i246 = phi i32 [ 7, %ClearHistogramsDistance.exit.preheader.i.i ], [ %.1.i.i248, %HistogramAddVectorDistance.exit.i.i ] ; 2 uses
  %i.cbu = mul i64 %.02231.i.i245, %.1
  %i.cbv = udiv i64 %i.cbu, %spec.select          ; 2 uses
  %.not.i.i247 = icmp eq i64 %.02231.i.i245, 0
  br i1 %.not.i.i247, label %HistogramAddVectorDistance.exit.i.i, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.cbw = mul i32 %.02730.i.i246, 16807          ; 2 uses
  %i.cbx = zext i32 %i.cbw to i64
  %i.cby = urem i64 %i.cbx, %i.cbg
  %i.cbz = add i64 %i.cby, %i.cbv
  br label %HistogramAddVectorDistance.exit.i.i

HistogramAddVectorDistance.exit.i.i:              ; preds = %bb.gy, %bb.gx
end_hunk_2
