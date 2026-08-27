Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pg_crc32c_sse42?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@pg_comp_crc32c = local_unnamed_addr global ptr @pg_comp_crc32c_choose, align 8
@X86Features = external local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @pg_comp_crc32c_sse42(i32 noundef %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %.not25 = icmp samesign ult i64 %2, 8
  br i1 %.not25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = zext i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.e = phi ptr [ %i.h, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %.027 = phi ptr [ %i.e, %.lr.ph ], [ %1, %.lr.ph.preheader ]
  %.01826 = phi i64 [ %i.g, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %i.f = load i64, ptr %.027, align 8
  %i.g = tail call i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %.01826, i64 %i.f) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.not = icmp ugt ptr %i.h, %i.b
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !3

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.i = trunc nuw i64 %i.g to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.018.lcssa = phi i32 [ %0, %bb.a ], [ %i.i, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.e, %._crit_edge.loopexit ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4 ; 2 uses
  %.not24 = icmp ugt ptr %i.j, %i.b
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = load i32, ptr %.0.lcssa, align 4
  %i.l = tail call i32 @llvm.x86.sse42.crc32.32.32(i32 %.018.lcssa, i32 %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.119 = phi i32 [ %i.l, %bb.b ], [ %.018.lcssa, %._crit_edge ] ; 3 uses
  %.1 = phi ptr [ %i.j, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.m = icmp ult ptr %.1, %i.b
  br i1 %i.m, label %.lr.ph32.preheader, label %._crit_edge33

.lr.ph32.preheader:                               ; preds = %bb.c
  %.137 = ptrtoaddr ptr %.1 to i64                ; 2 uses
  %i.n = add i64 %2, %i.a                         ; 2 uses
  %i.o = sub i64 %i.n, %.137                      ; 2 uses
  %scevgep = getelementptr i8, ptr %.1, i64 %i.o
  %xtraiter = and i64 %i.o, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph32.prol.loopexit, label %.lr.ph32.prol

.lr.ph32.prol:                                    ; preds = %.lr.ph32.preheader, %.lr.ph32.prol
  %.230.prol = phi ptr [ %i.r, %.lr.ph32.prol ], [ %.1, %.lr.ph32.preheader ] ; 2 uses
  %.22029.prol = phi i32 [ %i.q, %.lr.ph32.prol ], [ %.119, %.lr.ph32.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph32.prol ], [ 0, %.lr.ph32.preheader ]
  %i.p = load i8, ptr %.230.prol, align 1
  %i.q = tail call i32 @llvm.x86.sse42.crc32.32.8(i32 %.22029.prol, i8 %i.p) ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.230.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph32.prol.loopexit, label %.lr.ph32.prol, !llvm.loop !5

.lr.ph32.prol.loopexit:                           ; preds = %.lr.ph32.prol, %.lr.ph32.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph32.preheader ], [ %i.q, %.lr.ph32.prol ]
  %.230.unr = phi ptr [ %.1, %.lr.ph32.preheader ], [ %i.r, %.lr.ph32.prol ]
  %.22029.unr = phi i32 [ %.119, %.lr.ph32.preheader ], [ %i.q, %.lr.ph32.prol ]
  %i.s = sub i64 %.137, %i.n
  %i.t = icmp ugt i64 %i.s, -8
  br i1 %i.t, label %._crit_edge33, label %.lr.ph32

.lr.ph32:                                         ; preds = %.lr.ph32.prol.loopexit, %.lr.ph32
  %.230 = phi ptr [ %i.ar, %.lr.ph32 ], [ %.230.unr, %.lr.ph32.prol.loopexit ] ; 9 uses
  %.22029 = phi i32 [ %i.aq, %.lr.ph32 ], [ %.22029.unr, %.lr.ph32.prol.loopexit ]
  %i.u = load i8, ptr %.230, align 1
  %i.v = tail call i32 @llvm.x86.sse42.crc32.32.8(i32 %.22029, i8 %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %.230, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %i.y = tail call i32 @llvm.x86.sse42.crc32.32.8(i32 %i.v, i8 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %.230, i64 2
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = tail call i32 @llvm.x86.sse42.crc32.32.8(i32 %i.y, i8 %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %.230, i64 3
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = tail call i32 @llvm.x86.sse42.crc32.32.8(i32 %i.ab, i8 %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %.230, i64 4
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = tail call i32 @llvm.x86.sse42.crc32.32.8(i32 %i.ae, i8 %i.ag)
  %i.ai = getelementptr inbounds nuw i8, ptr %.230, i64 5
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = tail call i32 @llvm.x86.sse42.crc32.32.8(i32 %i.ah, i8 %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %.230, i64 6
  %i.am = load i8, ptr %i.al, align 1
  %i.an = tail call i32 @llvm.x86.sse42.crc32.32.8(i32 %i.ak, i8 %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %.230, i64 7
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = tail call i32 @llvm.x86.sse42.crc32.32.8(i32 %i.an, i8 %i.ap) ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.230, i64 8 ; 2 uses
  %exitcond.not.7 = icmp eq ptr %i.ar, %scevgep
  br i1 %exitcond.not.7, label %._crit_edge33, label %.lr.ph32, !llvm.loop !7

._crit_edge33:                                    ; preds = %.lr.ph32.prol.loopexit, %.lr.ph32, %bb.c
  %.220.lcssa = phi i32 [ %.119, %bb.c ], [ %.lcssa.unr, %.lr.ph32.prol.loopexit ], [ %i.aq, %.lr.ph32 ]
  ret i32 %.220.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @pg_comp_crc32c_avx512(i32 noundef %0, ptr noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = icmp ugt i64 %2, 256
  br i1 %i.a, label %.preheader62, label %.loopexit, !prof !8

.preheader62:                                     ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = and i64 %i.b, 7
  %.not84 = icmp eq i64 %i.c, 0
  br i1 %.not84, label %.preheader, label %.lr.ph.6

.preheader:                                       ; preds = %.lr.ph.6, %.preheader62
  %.pre-phi = phi i64 [ %i.b, %.preheader62 ], [ %i.n, %.lr.ph.6 ]
  %.056.lcssa = phi i64 [ %2, %.preheader62 ], [ %i.l, %.lr.ph.6 ] ; 3 uses
  %.052.lcssa = phi i32 [ %0, %.preheader62 ], [ %i.k, %.lr.ph.6 ] ; 2 uses
  %.051.lcssa = phi ptr [ %1, %.preheader62 ], [ %i.i, %.lr.ph.6 ] ; 2 uses
  %i.d = and i64 %.pre-phi, 56
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ugt i64 %.056.lcssa, 7
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %.lr.ph73.preheader, label %.loopexit

.lr.ph73.preheader:                               ; preds = %.preheader
  %i.h = zext i32 %.052.lcssa to i64
  br label %.lr.ph73

.lr.ph.6:                                         ; preds = %.preheader62, %.lr.ph.6
  %.05167 = phi ptr [ %i.i, %.lr.ph.6 ], [ %1, %.preheader62 ] ; 2 uses
  %.05266 = phi i32 [ %i.k, %.lr.ph.6 ], [ %0, %.preheader62 ]
  %.05665 = phi i64 [ %i.l, %.lr.ph.6 ], [ %2, %.preheader62 ]
  %i.i = getelementptr inbounds nuw i8, ptr %.05167, i64 1 ; 3 uses
  %i.j = load i8, ptr %.05167, align 1
  %i.k = tail call i32 @llvm.x86.sse42.crc32.32.8(i32 %.05266, i8 %i.j) ; 2 uses
  %i.l = add i64 %.05665, -1                      ; 3 uses
  %i.m = icmp ne i64 %i.l, 0
  %i.n = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.o = and i64 %i.n, 7
  %i.p = icmp ne i64 %i.o, 0
  %i.q = select i1 %i.m, i1 %i.p, i1 false
  br i1 %i.q, label %.lr.ph.6, label %.preheader, !llvm.loop !9

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %.lr.ph73
  %.172 = phi ptr [ %i.t, %.lr.ph73 ], [ %.051.lcssa, %.lr.ph73.preheader ] ; 2 uses
  %.15371 = phi i64 [ %i.s, %.lr.ph73 ], [ %i.h, %.lr.ph73.preheader ]
  %.15770 = phi i64 [ %i.u, %.lr.ph73 ], [ %.056.lcssa, %.lr.ph73.preheader ]
  %i.r = load i64, ptr %.172, align 8
  %i.s = tail call i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %.15371, i64 %i.r) ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.172, i64 8 ; 3 uses
  %i.u = add i64 %.15770, -8                      ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = and i64 %i.v, 56
  %i.x = icmp ne i64 %i.w, 0
  %i.y = icmp ugt i64 %i.u, 7
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br i1 %i.z, label %.lr.ph73, label %.loopexit.loopexit, !llvm.loop !10

.loopexit.loopexit:                               ; preds = %.lr.ph73
  %i.aa = trunc nuw i64 %i.s to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.a
  %.258 = phi i64 [ %2, %bb.a ], [ %.056.lcssa, %.preheader ], [ %i.u, %.loopexit.loopexit ] ; 4 uses
  %.254 = phi i32 [ %0, %bb.a ], [ %.052.lcssa, %.preheader ], [ %i.aa, %.loopexit.loopexit ] ; 2 uses
  %.2 = phi ptr [ %1, %bb.a ], [ %.051.lcssa, %.preheader ], [ %i.t, %.loopexit.loopexit ] ; 4 uses
  %i.ab = icmp ugt i64 %.258, 63
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.ac = getelementptr inbounds nuw i8, ptr %.2, i64 %.258 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -64
  %i.ae = load <8 x i64>, ptr %.2, align 1
  %i.af = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.254, i64 0
  %i.ag = bitcast <4 x i32> %i.af to <2 x i64>
  %i.ah = shufflevector <2 x i64> %i.ag, <2 x i64> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.ai = xor <8 x i64> %i.ae, %i.ah              ; 2 uses
  %.377 = getelementptr inbounds nuw i8, ptr %.2, i64 64 ; 2 uses
  %.not78 = icmp slt i64 %.258, 128
  br i1 %.not78, label %._crit_edge, label %.lr.ph81

.lr.ph81:                                         ; preds = %bb.b, %.lr.ph81
  %.380 = phi ptr [ %.3, %.lr.ph81 ], [ %.377, %bb.b ] ; 2 uses
  %.079 = phi <8 x i64> [ %i.am, %.lr.ph81 ], [ %i.ai, %bb.b ] ; 2 uses
  %i.aj = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.079, <8 x i64> <i64 1947135746, i64 poison, i64 1947135746, i64 poison, i64 1947135746, i64 poison, i64 1947135746, i64 poison>, i8 0)
  %i.ak = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.079, <8 x i64> <i64 poison, i64 2655706616, i64 poison, i64 2655706616, i64 poison, i64 2655706616, i64 poison, i64 2655706616>, i8 17)
  %i.al = load <8 x i64>, ptr %.380, align 1
  %i.am = tail call <8 x i64> @llvm.x86.avx512.pternlog.q.512(<8 x i64> %i.ak, <8 x i64> %i.aj, <8 x i64> %i.al, i32 150) ; 2 uses
  %.3 = getelementptr inbounds nuw i8, ptr %.380, i64 64 ; 3 uses
  %.not = icmp ugt ptr %.3, %i.ad
  br i1 %.not, label %._crit_edge, label %.lr.ph81, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph81, %bb.b
  %.0.lcssa = phi <8 x i64> [ %i.ai, %bb.b ], [ %i.am, %.lr.ph81 ] ; 3 uses
  %.3.lcssa = phi ptr [ %.377, %bb.b ], [ %.3, %.lr.ph81 ] ; 2 uses
  %i.an = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0.lcssa, <8 x i64> <i64 472456452, i64 poison, i64 1034342603, i64 poison, i64 4060876286, i64 poison, i64 0, i64 poison>, i8 0)
  %i.ao = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0.lcssa, <8 x i64> <i64 poison, i64 3720353067, i64 poison, i64 3125789326, i64 poison, i64 1228700967, i64 poison, i64 0>, i8 17)
  %i.ap = xor <8 x i64> %i.ao, %i.an              ; 3 uses
  %i.aq = shufflevector <8 x i64> %i.ap, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.ar = shufflevector <8 x i64> %i.ap, <8 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.as = shufflevector <8 x i64> %i.ap, <8 x i64> poison, <2 x i32> <i32 4, i32 5>
  %i.at = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.aq, <2 x i64> %i.ar, <2 x i64> %i.as, i32 150)
  %i.au = shufflevector <8 x i64> %.0.lcssa, <8 x i64> poison, <2 x i32> <i32 6, i32 7>
  %i.av = xor <2 x i64> %i.at, %i.au              ; 2 uses
  %i.aw = extractelement <2 x i64> %i.av, i64 0
  %i.ax = tail call i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.aw)
  %i.ay = extractelement <2 x i64> %i.av, i64 1
  %i.az = tail call i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.ax, i64 %i.ay)
  %i.ba = trunc nuw i64 %i.az to i32
  %i.bb = ptrtoint ptr %i.ac to i64
  %i.bc = ptrtoint ptr %.3.lcssa to i64
  %i.bd = sub i64 %i.bb, %i.bc
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %.loopexit
  %.359 = phi i64 [ %i.bd, %._crit_edge ], [ %.258, %.loopexit ] ; 3 uses
  %.355 = phi i32 [ %i.ba, %._crit_edge ], [ %.254, %.loopexit ] ; 2 uses
  %.4 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %.2, %.loopexit ] ; 5 uses
  %i.be = ptrtoaddr ptr %.4 to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %.4, i64 %.359 ; 3 uses
  %.not25.i = icmp samesign ult i64 %.359, 8
  br i1 %.not25.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %.4, i64 8
  %i.bh = zext i32 %.355 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.bi = phi ptr [ %i.bl, %.lr.ph.i ], [ %i.bg, %.lr.ph.preheader.i ] ; 3 uses
  %.027.i = phi ptr [ %i.bi, %.lr.ph.i ], [ %.4, %.lr.ph.preheader.i ]
  %.01826.i = phi i64 [ %i.bk, %.lr.ph.i ], [ %i.bh, %.lr.ph.preheader.i ]
  %i.bj = load i64, ptr %.027.i, align 8
  %i.bk = tail call i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %.01826.i, i64 %i.bj) ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %.not.i = icmp ugt ptr %i.bl, %i.bf
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !3

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.bm = trunc nuw i64 %i.bk to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %.018.lcssa.i = phi i32 [ %.355, %bb.c ], [ %i.bm, %._crit_edge.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.4, %bb.c ], [ %i.bi, %._crit_edge.loopexit.i ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %.not24.i = icmp ugt ptr %i.bn, %i.bf
  br i1 %.not24.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.bo = load i32, ptr %.0.lcssa.i, align 4
  %i.bp = tail call i32 @llvm.x86.sse42.crc32.32.32(i32 %.018.lcssa.i, i32 %i.bo)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.119.i = phi i32 [ %i.bp, %bb.d ], [ %.018.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.1.i = phi ptr [ %i.bn, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 5 uses
  %i.bq = icmp ult ptr %.1.i, %i.bf
  br i1 %i.bq, label %.lr.ph32.preheader.i, label %pg_comp_crc32c_sse42.exit

.lr.ph32.preheader.i:                             ; preds = %bb.e
  %.137.i = ptrtoaddr ptr %.1.i to i64            ; 2 uses
  %i.br = add i64 %.359, %i.be                    ; 2 uses
  %i.bs = sub i64 %i.br, %.137.i                  ; 2 uses
  %scevgep.i = getelementptr i8, ptr %.1.i, i64 %i.bs
  %xtraiter = and i64 %i.bs, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol

.lr.ph32.i.prol:                                  ; preds = %.lr.ph32.preheader.i, %.lr.ph32.i.prol
  %.230.i.prol = phi ptr [ %i.bv, %.lr.ph32.i.prol ], [ %.1.i, %.lr.ph32.preheader.i ] ; 2 uses
  %.22029.i.prol = phi i32 [ %i.bu, %.lr.ph32.i.prol ], [ %.119.i, %.lr.ph32.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph32.i.prol ], [ 0, %.lr.ph32.preheader.i ]
  %i.bt = load i8, ptr %.230.i.prol, align 1
  %i.bu = tail call i32 @llvm.x86.sse42.crc32.32.8(i32 %.22029.i.prol, i8 %i.bt) ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.230.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol, !llvm.loop !12

.lr.ph32.i.prol.loopexit:                         ; preds = %.lr.ph32.i.prol, %.lr.ph32.preheader.i
  %.lcssa.unr = phi i32 [ poison, %.lr.ph32.preheader.i ], [ %i.bu, %.lr.ph32.i.prol ]
  %.230.i.unr = phi ptr [ %.1.i, %.lr.ph32.preheader.i ], [ %i.bv, %.lr.ph32.i.prol ]
  %.22029.i.unr = phi i32 [ %.119.i, %.lr.ph32.preheader.i ], [ %i.bu, %.lr.ph32.i.prol ]
  %i.bw = sub i64 %.137.i, %i.br
  %i.bx = icmp ugt i64 %i.bw, -8
  br i1 %i.bx, label %pg_comp_crc32c_sse42.exit, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.prol.loopexit, %.lr.ph32.i
  %.230.i = phi ptr [ %i.cv, %.lr.ph32.i ], [ %.230.i.unr, %.lr.ph32.i.prol.loopexit ] ; 9 uses
  %.22029.i = phi i32 [ %i.cu, %.lr.ph32.i ], [ %.22029.i.unr, %.lr.ph32.i.prol.loopexit ]
  %i.by = load i8, ptr %.230.i, align 1
  %i.bz = tail call i32 @llvm.x86.sse42.crc32.32.8(i32 %.22029.i, i8 %i.by)
  %i.ca = getelementptr inbounds nuw i8, ptr %.230.i, i64 1
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = tail call i32 @llvm.x86.sse42.crc32.32.8(i32 %i.bz, i8 %i.cb)
  %i.cd = getelementptr inbounds nuw i8, ptr %.230.i, i64 2
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = tail call i32 @llvm.x86.sse42.crc32.32.8(i32 %i.cc, i8 %i.ce)
  %i.cg = getelementptr inbounds nuw i8, ptr %.230.i, i64 3
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = tail call i32 @llvm.x86.sse42.crc32.32.8(i32 %i.cf, i8 %i.ch)
  %i.cj = getelementptr inbounds nuw i8, ptr %.230.i, i64 4
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = tail call i32 @llvm.x86.sse42.crc32.32.8(i32 %i.ci, i8 %i.ck)
  %i.cm = getelementptr inbounds nuw i8, ptr %.230.i, i64 5
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = tail call i32 @llvm.x86.sse42.crc32.32.8(i32 %i.cl, i8 %i.cn)
  %i.cp = getelementptr inbounds nuw i8, ptr %.230.i, i64 6
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = tail call i32 @llvm.x86.sse42.crc32.32.8(i32 %i.co, i8 %i.cq)
  %i.cs = getelementptr inbounds nuw i8, ptr %.230.i, i64 7
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = tail call i32 @llvm.x86.sse42.crc32.32.8(i32 %i.cr, i8 %i.ct) ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.230.i, i64 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq ptr %i.cv, %scevgep.i
  br i1 %exitcond.not.i.7, label %pg_comp_crc32c_sse42.exit, label %.lr.ph32.i, !llvm.loop !7

pg_comp_crc32c_sse42.exit:                        ; preds = %.lr.ph32.i.prol.loopexit, %.lr.ph32.i, %bb.e
  %.220.lcssa.i = phi i32 [ %.119.i, %bb.e ], [ %.lcssa.unr, %.lr.ph32.i.prol.loopexit ], [ %i.cu, %.lr.ph32.i ]
  ret i32 %.220.lcssa.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64>, <8 x i64>, i8 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i64> @llvm.x86.avx512.pternlog.q.512(<8 x i64>, <8 x i64>, <8 x i64>, i32 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64>, <2 x i64>, <2 x i64>, i32 immarg) #2

; Function Attrs: nounwind uwtable
define internal i32 @pg_comp_crc32c_choose(i32 noundef %0, ptr noundef %1, i64 noundef %2) #3 {
bb.a:
  store ptr @pg_comp_crc32c_sb8, ptr @pg_comp_crc32c, align 8
  %i.a = load i8, ptr @X86Features, align 1, !range !13, !noundef !14
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %x86_feature_available.exit

bb.b:                                             ; preds = %bb.a
  tail call void @set_x86_features() #5
  br label %x86_feature_available.exit

x86_feature_available.exit:                       ; preds = %bb.a, %bb.b
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @X86Features, i64 1), align 1, !range !13, !noundef !14
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %x86_feature_available.exit
  store ptr @pg_comp_crc32c_sse42, ptr @pg_comp_crc32c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %x86_feature_available.exit
  %i.e = load i8, ptr @X86Features, align 1, !range !13, !noundef !14
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.e, label %x86_feature_available.exit2

bb.e:                                             ; preds = %bb.d
  tail call void @set_x86_features() #5
  br label %x86_feature_available.exit2

x86_feature_available.exit2:                      ; preds = %bb.d, %bb.e
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @X86Features, i64 5), align 1, !range !13, !noundef !14
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.f, label %bb.i

bb.f:                                             ; preds = %x86_feature_available.exit2
  %i.i = load i8, ptr @X86Features, align 1, !range !13, !noundef !14
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.g, label %x86_feature_available.exit3

bb.g:                                             ; preds = %bb.f
  tail call void @set_x86_features() #5
  br label %x86_feature_available.exit3

x86_feature_available.exit3:                      ; preds = %bb.f, %bb.g
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @X86Features, i64 6), align 1, !range !13, !noundef !14
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %x86_feature_available.exit3
  store ptr @pg_comp_crc32c_avx512, ptr @pg_comp_crc32c, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %x86_feature_available.exit3, %x86_feature_available.exit2
  %i.m = load ptr, ptr @pg_comp_crc32c, align 8
  %i.n = tail call i32 %i.m(i32 noundef %0, ptr noundef %1, i64 noundef %2) #5
  ret i32 %i.n
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.sse42.crc32.64.64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse42.crc32.32.32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse42.crc32.32.8(i32, i8) #2

declare i32 @pg_comp_crc32c_sb8(i32 noundef, ptr noundef, i64 noundef) #4

declare void @set_x86_features() local_unnamed_addr #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vpclmulqdq,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !4}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !6}
!13 = !{i8 0, i8 2}
!14 = !{}
end_hunk_0
