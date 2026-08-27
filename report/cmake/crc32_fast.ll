Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/crc32_fast?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@lzma_crc32_table = external local_unnamed_addr constant [8 x [256 x i32]], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @lzma_crc32(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = xor i32 %2, -1                           ; 4 uses
  %i.b = icmp ugt i64 %1, 8
  br i1 %i.b, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %i.d = and i64 %i.c, 7
  %.not40.i = icmp eq i64 %i.d, 0
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %4 = load i8, ptr %0, align 1, !tbaa !9
  %5 = zext i8 %4 to i32
  %6 = and i32 %i.a, 255
  %7 = xor i32 %6, %5
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr @lzma_crc32_table, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !10
  %11 = lshr i32 %i.a, 8
  %12 = xor i32 %10, %11                          ; 3 uses
  %13 = add i64 %1, -1
  %14 = ptrtoint ptr %3 to i64
  %15 = and i64 %14, 7
  %.not.i = icmp eq i64 %15, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %17 = load i8, ptr %3, align 1, !tbaa !9
  %18 = zext i8 %17 to i32
  %19 = and i32 %12, 255
  %20 = xor i32 %19, %18
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds nuw [4 x i8], ptr @lzma_crc32_table, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !10
  %24 = lshr i32 %12, 8
  %25 = xor i32 %23, %24                          ; 3 uses
  %26 = add i64 %1, -2
  %27 = ptrtoint ptr %16 to i64
  %28 = and i64 %27, 7
  %.not.i.1 = icmp eq i64 %28, 0
  br i1 %.not.i.1, label %._crit_edge.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %30 = load i8, ptr %16, align 1, !tbaa !9
  %31 = zext i8 %30 to i32
  %32 = and i32 %25, 255
  %33 = xor i32 %32, %31
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds nuw [4 x i8], ptr @lzma_crc32_table, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !10
  %37 = lshr i32 %25, 8
  %38 = xor i32 %36, %37                          ; 3 uses
  %39 = add i64 %1, -3
  %40 = ptrtoint ptr %29 to i64
  %41 = and i64 %40, 7
  %.not.i.2 = icmp eq i64 %41, 0
  br i1 %.not.i.2, label %._crit_edge.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %43 = load i8, ptr %29, align 1, !tbaa !9
  %44 = zext i8 %43 to i32
  %45 = and i32 %38, 255
  %46 = xor i32 %45, %44
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds nuw [4 x i8], ptr @lzma_crc32_table, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !10
  %50 = lshr i32 %38, 8
  %51 = xor i32 %49, %50                          ; 3 uses
  %52 = add i64 %1, -4
  %53 = ptrtoint ptr %42 to i64
  %54 = and i64 %53, 7
  %.not.i.3 = icmp eq i64 %54, 0
  br i1 %.not.i.3, label %._crit_edge.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 3 uses
  %56 = load i8, ptr %42, align 1, !tbaa !9
  %57 = zext i8 %56 to i32
  %58 = and i32 %51, 255
  %59 = xor i32 %58, %57
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds nuw [4 x i8], ptr @lzma_crc32_table, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !10
  %63 = lshr i32 %51, 8
  %64 = xor i32 %62, %63                          ; 3 uses
  %65 = add i64 %1, -5
  %66 = ptrtoint ptr %55 to i64
  %67 = and i64 %66, 7
  %.not.i.4 = icmp eq i64 %67, 0
  br i1 %.not.i.4, label %._crit_edge.i, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %69 = load i8, ptr %55, align 1, !tbaa !9
  %70 = zext i8 %69 to i32
  %71 = and i32 %64, 255
  %72 = xor i32 %71, %70
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds nuw [4 x i8], ptr @lzma_crc32_table, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !10
  %76 = lshr i32 %64, 8
  %77 = xor i32 %75, %76                          ; 3 uses
  %78 = add i64 %1, -6
  %79 = ptrtoint ptr %68 to i64
  %80 = and i64 %79, 7
  %.not.i.5 = icmp eq i64 %80, 0
  br i1 %.not.i.5, label %._crit_edge.i, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 7 ; 3 uses
  %i.f = load i8, ptr %68, align 1, !tbaa !9
  %i.g = zext i8 %i.f to i32
  %i.h = and i32 %77, 255
  %i.i = xor i32 %i.h, %i.g
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @lzma_crc32_table, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !10
  %i.m = lshr i32 %77, 8
  %i.n = xor i32 %i.l, %i.m                       ; 3 uses
  %i.o = add i64 %1, -7
  %i.p = ptrtoint ptr %i.e to i64
  %i.q = and i64 %i.p, 7
  %.not.i.6 = icmp eq i64 %i.q, 0
  br i1 %.not.i.6, label %._crit_edge.i, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %.lr.ph.i.6
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %82 = load i8, ptr %i.e, align 1, !tbaa !9
  %83 = zext i8 %82 to i32
  %84 = and i32 %i.n, 255
  %85 = xor i32 %84, %83
  %86 = zext nneg i32 %85 to i64
  %87 = getelementptr inbounds nuw [4 x i8], ptr @lzma_crc32_table, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !10
  %89 = lshr i32 %i.n, 8
  %90 = xor i32 %88, %89
  %91 = add i64 %1, -8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.7, %.preheader.i
  %.034.lcssa.i = phi i64 [ %1, %.preheader.i ], [ %13, %.lr.ph.i ], [ %26, %.lr.ph.i.1 ], [ %39, %.lr.ph.i.2 ], [ %52, %.lr.ph.i.3 ], [ %65, %.lr.ph.i.4 ], [ %78, %.lr.ph.i.5 ], [ %i.o, %.lr.ph.i.6 ], [ %91, %.lr.ph.i.7 ] ; 2 uses
  %.030.lcssa.i = phi i32 [ %i.a, %.preheader.i ], [ %12, %.lr.ph.i ], [ %25, %.lr.ph.i.1 ], [ %38, %.lr.ph.i.2 ], [ %51, %.lr.ph.i.3 ], [ %64, %.lr.ph.i.4 ], [ %77, %.lr.ph.i.5 ], [ %i.n, %.lr.ph.i.6 ], [ %90, %.lr.ph.i.7 ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %3, %.lr.ph.i ], [ %16, %.lr.ph.i.1 ], [ %29, %.lr.ph.i.2 ], [ %42, %.lr.ph.i.3 ], [ %55, %.lr.ph.i.4 ], [ %68, %.lr.ph.i.5 ], [ %i.e, %.lr.ph.i.6 ], [ %81, %.lr.ph.i.7 ] ; 3 uses
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
  br i1 %i.bo, label %.lr.ph49.i, label %.loopexit.i, !llvm.loop !11

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
  br i1 %.not39.i.1, label %crc32_generic.exit, label %.lr.ph57.i, !llvm.loop !13

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
end_hunk_0
