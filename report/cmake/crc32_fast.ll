Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/crc32_fast?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@lzma_crc32_table = external local_unnamed_addr constant [8 x [256 x i32]], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @lzma_crc32(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = xor i32 %2, -1                           ; 3 uses
  %i.b = icmp ugt i64 %1, 8
  br i1 %i.b, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %i.d = and i64 %i.c, 7
  %.not40.i = icmp eq i64 %i.d, 0
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %.preheader.i, %.lr.ph.i.6
  %.043.i = phi ptr [ %i.e, %.lr.ph.i.6 ], [ %0, %.preheader.i ] ; 2 uses
  %.03042.i = phi i32 [ %i.n, %.lr.ph.i.6 ], [ %i.a, %.preheader.i ] ; 2 uses
  %.03441.i = phi i64 [ %i.o, %.lr.ph.i.6 ], [ %1, %.preheader.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %.043.i, i64 1 ; 3 uses
  %i.f = load i8, ptr %.043.i, align 1, !tbaa !9
  %i.g = zext i8 %i.f to i32
  %i.h = and i32 %.03042.i, 255
  %i.i = xor i32 %i.h, %i.g
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @lzma_crc32_table, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !10
  %i.m = lshr i32 %.03042.i, 8
  %i.n = xor i32 %i.l, %i.m                       ; 2 uses
  %i.o = add i64 %.03441.i, -1                    ; 2 uses
  %i.p = ptrtoint ptr %i.e to i64
  %i.q = and i64 %i.p, 7
  %.not.i.6 = icmp eq i64 %i.q, 0
  br i1 %.not.i.6, label %._crit_edge.i, label %.lr.ph.i.6, !llvm.loop !11

._crit_edge.i:                                    ; preds = %.lr.ph.i.6, %.preheader.i
  %.034.lcssa.i = phi i64 [ %1, %.preheader.i ], [ %i.o, %.lr.ph.i.6 ] ; 2 uses
  %.030.lcssa.i = phi i32 [ %i.a, %.preheader.i ], [ %i.n, %.lr.ph.i.6 ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %i.e, %.lr.ph.i.6 ] ; 3 uses
  %i.r = and i64 %.034.lcssa.i, -8                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %i.r
  %i.t = and i64 %.034.lcssa.i, 7                 ; 2 uses
  %.not60.i = icmp eq i64 %i.r, 0
  br i1 %.not60.i, label %.loopexit.i, label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %._crit_edge.i, %.lr.ph49.i
  %.147.i = phi ptr [ %i.ao, %.lr.ph49.i ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.13146.i = phi i32 [ %i.bn, %.lr.ph49.i ], [ %.030.lcssa.i, %._crit_edge.i ]
  %.1.val.i = load i32, ptr %.147.i, align 1
  %i.u = xor i32 %.1.val.i, %.13146.i             ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.147.i, i64 4
  %i.w = and i32 %i.u, 255
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @lzma_crc32_table, i64 7168), i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !10
  %i.aa = lshr i32 %i.u, 8
  %i.ab = and i32 %i.aa, 255
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @lzma_crc32_table, i64 6144), i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !10
  %i.af = lshr i32 %i.u, 16
  %i.ag = and i32 %i.af, 255
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @lzma_crc32_table, i64 5120), i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !10
  %i.ak = lshr i32 %i.u, 24
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @lzma_crc32_table, i64 4096), i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !10
  %.val.i = load i32, ptr %i.v, align 1           ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.147.i, i64 8 ; 3 uses
  %i.ap = and i32 %.val.i, 255
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @lzma_crc32_table, i64 3072), i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !10
  %i.at = lshr i32 %.val.i, 8
  %i.au = and i32 %i.at, 255
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @lzma_crc32_table, i64 2048), i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !10
  %i.ay = lshr i32 %.val.i, 16
  %i.az = and i32 %i.ay, 255
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @lzma_crc32_table, i64 1024), i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !10
  %i.bd = lshr i32 %.val.i, 24
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr @lzma_crc32_table, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !10
  %i.bh = xor i32 %i.ae, %i.z
  %i.bi = xor i32 %i.bh, %i.aj
  %i.bj = xor i32 %i.bi, %i.an
  %i.bk = xor i32 %i.bj, %i.as
  %i.bl = xor i32 %i.bk, %i.ax
  %i.bm = xor i32 %i.bl, %i.bc
  %i.bn = xor i32 %i.bm, %i.bg                    ; 2 uses
  %i.bo = icmp ult ptr %i.ao, %i.s
  br i1 %i.bo, label %.lr.ph49.i, label %.loopexit.i, !llvm.loop !13

.loopexit.i:                                      ; preds = %.lr.ph49.i, %._crit_edge.i, %bb.a
  %.135.i = phi i64 [ %1, %bb.a ], [ %i.t, %._crit_edge.i ], [ %i.t, %.lr.ph49.i ] ; 5 uses
  %.232.i = phi i32 [ %i.a, %bb.a ], [ %.030.lcssa.i, %._crit_edge.i ], [ %i.bn, %.lr.ph49.i ] ; 4 uses
  %.2.i = phi ptr [ %0, %bb.a ], [ %.0.lcssa.i, %._crit_edge.i ], [ %i.ao, %.lr.ph49.i ] ; 3 uses
  %.not3952.i = icmp eq i64 %.135.i, 0
  br i1 %.not3952.i, label %crc32_generic.exit, label %.lr.ph57.i.preheader

.lr.ph57.i.preheader:                             ; preds = %.loopexit.i
  %xtraiter = and i64 %.135.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph57.i.prol.loopexit, label %.lr.ph57.i.prol

.lr.ph57.i.prol:                                  ; preds = %.lr.ph57.i.preheader
  %i.bp = add nsw i64 %.135.i, -1
  %i.bq = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  %i.br = load i8, ptr %.2.i, align 1, !tbaa !9
  %i.bs = zext i8 %i.br to i32
  %i.bt = and i32 %.232.i, 255
  %i.bu = xor i32 %i.bt, %i.bs
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr @lzma_crc32_table, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !10
  %i.by = lshr i32 %.232.i, 8
  %i.bz = xor i32 %i.bx, %i.by                    ; 2 uses
  br label %.lr.ph57.i.prol.loopexit

.lr.ph57.i.prol.loopexit:                         ; preds = %.lr.ph57.i.prol, %.lr.ph57.i.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph57.i.preheader ], [ %i.bz, %.lr.ph57.i.prol ]
  %.355.i.unr = phi ptr [ %.2.i, %.lr.ph57.i.preheader ], [ %i.bq, %.lr.ph57.i.prol ]
  %.33354.i.unr = phi i32 [ %.232.i, %.lr.ph57.i.preheader ], [ %i.bz, %.lr.ph57.i.prol ]
  %.23653.i.unr = phi i64 [ %.135.i, %.lr.ph57.i.preheader ], [ %i.bp, %.lr.ph57.i.prol ]
  %i.ca = icmp eq i64 %.135.i, 1
  br i1 %i.ca, label %crc32_generic.exit, label %.lr.ph57.i

.lr.ph57.i:                                       ; preds = %.lr.ph57.i.prol.loopexit, %.lr.ph57.i
  %.355.i = phi ptr [ %i.cm, %.lr.ph57.i ], [ %.355.i.unr, %.lr.ph57.i.prol.loopexit ] ; 3 uses
  %.33354.i = phi i32 [ %i.cv, %.lr.ph57.i ], [ %.33354.i.unr, %.lr.ph57.i.prol.loopexit ] ; 2 uses
  %.23653.i = phi i64 [ %i.cl, %.lr.ph57.i ], [ %.23653.i.unr, %.lr.ph57.i.prol.loopexit ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.355.i, i64 1
  %i.cc = load i8, ptr %.355.i, align 1, !tbaa !9
  %i.cd = zext i8 %i.cc to i32
  %i.ce = and i32 %.33354.i, 255
  %i.cf = xor i32 %i.ce, %i.cd
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr @lzma_crc32_table, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !10
  %i.cj = lshr i32 %.33354.i, 8
  %i.ck = xor i32 %i.ci, %i.cj                    ; 2 uses
  %i.cl = add nsw i64 %.23653.i, -2               ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.355.i, i64 2
  %i.cn = load i8, ptr %i.cb, align 1, !tbaa !9
  %i.co = zext i8 %i.cn to i32
  %i.cp = and i32 %i.ck, 255
  %i.cq = xor i32 %i.cp, %i.co
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr @lzma_crc32_table, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !10
  %i.cu = lshr i32 %i.ck, 8
  %i.cv = xor i32 %i.ct, %i.cu                    ; 2 uses
  %.not39.i.1 = icmp eq i64 %i.cl, 0
  br i1 %.not39.i.1, label %crc32_generic.exit, label %.lr.ph57.i, !llvm.loop !14

crc32_generic.exit:                               ; preds = %.lr.ph57.i.prol.loopexit, %.lr.ph57.i, %.loopexit.i
  %.333.lcssa.i = phi i32 [ %.232.i, %.loopexit.i ], [ %.lcssa.unr, %.lr.ph57.i.prol.loopexit ], [ %i.cv, %.lr.ph57.i ]
  %i.cw = xor i32 %.333.lcssa.i, -1
  ret i32 %i.cw
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
end_hunk_0
