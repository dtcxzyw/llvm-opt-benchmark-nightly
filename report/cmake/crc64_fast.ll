Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/crc64_fast?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@lzma_crc64_table = external local_unnamed_addr constant [4 x [256 x i64]], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_crc64(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = xor i64 %2, -1                           ; 3 uses
  %i.b = icmp ugt i64 %1, 4
  br i1 %i.b, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %i.d = and i64 %i.c, 3
  %.not34.i = icmp eq i64 %i.d, 0
  br i1 %.not34.i, label %._crit_edge.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.preheader.i, %.lr.ph.i.2
  %.037.i = phi ptr [ %i.e, %.lr.ph.i.2 ], [ %0, %.preheader.i ] ; 2 uses
  %.02436.i = phi i64 [ %i.m, %.lr.ph.i.2 ], [ %i.a, %.preheader.i ] ; 2 uses
  %.02835.i = phi i64 [ %i.n, %.lr.ph.i.2 ], [ %1, %.preheader.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %.037.i, i64 1 ; 3 uses
  %i.f = load i8, ptr %.037.i, align 1, !tbaa !9
  %i.g = zext i8 %i.f to i64
  %i.h = and i64 %.02436.i, 255
  %i.i = xor i64 %i.h, %i.g
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @lzma_crc64_table, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10
  %i.l = lshr i64 %.02436.i, 8
  %i.m = xor i64 %i.k, %i.l                       ; 2 uses
  %i.n = add i64 %.02835.i, -1                    ; 2 uses
  %i.o = ptrtoint ptr %i.e to i64
  %i.p = and i64 %i.o, 3
  %.not.i.2 = icmp eq i64 %i.p, 0
  br i1 %.not.i.2, label %._crit_edge.i, label %.lr.ph.i.2, !llvm.loop !12

._crit_edge.i:                                    ; preds = %.lr.ph.i.2, %.preheader.i
  %.028.lcssa.i = phi i64 [ %1, %.preheader.i ], [ %i.n, %.lr.ph.i.2 ] ; 2 uses
  %.024.lcssa.i = phi i64 [ %i.a, %.preheader.i ], [ %i.m, %.lr.ph.i.2 ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %i.e, %.lr.ph.i.2 ] ; 3 uses
  %i.q = and i64 %.028.lcssa.i, -4                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %i.q
  %i.s = and i64 %.028.lcssa.i, 3                 ; 2 uses
  %.not54.i = icmp eq i64 %i.q, 0
  br i1 %.not54.i, label %.loopexit.i, label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %._crit_edge.i, %.lr.ph43.i
  %.141.i = phi ptr [ %i.v, %.lr.ph43.i ], [ %.0.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.12540.i = phi i64 [ %i.as, %.lr.ph43.i ], [ %.024.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.t = trunc i64 %.12540.i to i32
  %.1.val.i = load i32, ptr %.141.i, align 1
  %i.u = xor i32 %.1.val.i, %i.t                  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.141.i, i64 4 ; 3 uses
  %i.w = and i32 %i.u, 255
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @lzma_crc64_table, i64 6144), i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !10
  %i.aa = lshr i32 %i.u, 8
  %i.ab = and i32 %i.aa, 255
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @lzma_crc64_table, i64 4096), i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !10
  %i.af = lshr i64 %.12540.i, 32
  %i.ag = lshr i32 %i.u, 16
  %i.ah = and i32 %i.ag, 255
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @lzma_crc64_table, i64 2048), i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !10
  %i.al = lshr i32 %i.u, 24
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @lzma_crc64_table, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10
  %i.ap = xor i64 %i.z, %i.af
  %i.aq = xor i64 %i.ap, %i.ae
  %i.ar = xor i64 %i.aq, %i.ak
  %i.as = xor i64 %i.ar, %i.ao                    ; 2 uses
  %i.at = icmp ult ptr %i.v, %i.r
  br i1 %i.at, label %.lr.ph43.i, label %.loopexit.i, !llvm.loop !14

.loopexit.i:                                      ; preds = %.lr.ph43.i, %._crit_edge.i, %bb.a
  %.129.i = phi i64 [ %1, %bb.a ], [ %i.s, %._crit_edge.i ], [ %i.s, %.lr.ph43.i ] ; 7 uses
  %.226.i = phi i64 [ %i.a, %bb.a ], [ %.024.lcssa.i, %._crit_edge.i ], [ %i.as, %.lr.ph43.i ] ; 3 uses
  %.2.i = phi ptr [ %0, %bb.a ], [ %.0.lcssa.i, %._crit_edge.i ], [ %i.v, %.lr.ph43.i ] ; 7 uses
  %.not3346.i = icmp eq i64 %.129.i, 0
  br i1 %.not3346.i, label %crc64_generic.exit, label %.lr.ph51.i

.lr.ph51.i:                                       ; preds = %.loopexit.i
  %i.au = load i8, ptr %.2.i, align 1, !tbaa !9
  %i.av = zext i8 %i.au to i64
  %i.aw = and i64 %.226.i, 255
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @lzma_crc64_table, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !10
  %i.ba = lshr i64 %.226.i, 8
  %i.bb = xor i64 %i.az, %i.ba                    ; 3 uses
  %.not33.i = icmp eq i64 %.129.i, 1
  br i1 %.not33.i, label %crc64_generic.exit, label %.lr.ph51.i.1

.lr.ph51.i.1:                                     ; preds = %.lr.ph51.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !9
  %i.be = zext i8 %i.bd to i64
  %i.bf = and i64 %i.bb, 255
  %i.bg = xor i64 %i.bf, %i.be
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @lzma_crc64_table, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !10
  %i.bj = lshr i64 %i.bb, 8
  %i.bk = xor i64 %i.bi, %i.bj                    ; 3 uses
  %.not33.i.1 = icmp eq i64 %.129.i, 2
  br i1 %.not33.i.1, label %crc64_generic.exit, label %.lr.ph51.i.2

.lr.ph51.i.2:                                     ; preds = %.lr.ph51.i.1
  %i.bl = getelementptr inbounds nuw i8, ptr %.2.i, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !9
  %i.bn = zext i8 %i.bm to i64
  %i.bo = and i64 %i.bk, 255
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr @lzma_crc64_table, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !10
  %i.bs = lshr i64 %i.bk, 8
  %i.bt = xor i64 %i.br, %i.bs                    ; 3 uses
  %.not33.i.2 = icmp eq i64 %.129.i, 3
  br i1 %.not33.i.2, label %crc64_generic.exit, label %.lr.ph51.i.3

.lr.ph51.i.3:                                     ; preds = %.lr.ph51.i.2
  %i.bu = getelementptr inbounds nuw i8, ptr %.2.i, i64 3
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !9
  %i.bw = zext i8 %i.bv to i64
  %i.bx = and i64 %i.bt, 255
  %i.by = xor i64 %i.bx, %i.bw
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr @lzma_crc64_table, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !10
  %i.cb = lshr i64 %i.bt, 8
  %i.cc = xor i64 %i.ca, %i.cb                    ; 3 uses
  %.not33.i.3 = icmp eq i64 %.129.i, 4
  br i1 %.not33.i.3, label %crc64_generic.exit, label %.lr.ph51.i.4

.lr.ph51.i.4:                                     ; preds = %.lr.ph51.i.3
  %i.cd = getelementptr inbounds nuw i8, ptr %.2.i, i64 4
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !9
  %i.cf = zext i8 %i.ce to i64
  %i.cg = and i64 %i.cc, 255
  %i.ch = xor i64 %i.cg, %i.cf
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr @lzma_crc64_table, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !10
  %i.ck = lshr i64 %i.cc, 8
  %i.cl = xor i64 %i.cj, %i.ck                    ; 3 uses
  %.not33.i.4 = icmp eq i64 %.129.i, 5
  br i1 %.not33.i.4, label %crc64_generic.exit, label %.lr.ph51.i.5

.lr.ph51.i.5:                                     ; preds = %.lr.ph51.i.4
  %i.cm = getelementptr inbounds nuw i8, ptr %.2.i, i64 5
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !9
  %i.co = zext i8 %i.cn to i64
  %i.cp = and i64 %i.cl, 255
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr @lzma_crc64_table, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !10
  %i.ct = lshr i64 %i.cl, 8
  %i.cu = xor i64 %i.cs, %i.ct                    ; 3 uses
  %.not33.i.5 = icmp eq i64 %.129.i, 6
  br i1 %.not33.i.5, label %crc64_generic.exit, label %.lr.ph51.i.6

.lr.ph51.i.6:                                     ; preds = %.lr.ph51.i.5
  %i.cv = getelementptr inbounds nuw i8, ptr %.2.i, i64 6
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !9
  %i.cx = zext i8 %i.cw to i64
  %i.cy = and i64 %i.cu, 255
  %i.cz = xor i64 %i.cy, %i.cx
  %i.da = getelementptr inbounds nuw [8 x i8], ptr @lzma_crc64_table, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !10
  %i.dc = lshr i64 %i.cu, 8
  %i.dd = xor i64 %i.db, %i.dc
  br label %crc64_generic.exit

crc64_generic.exit:                               ; preds = %.lr.ph51.i, %.lr.ph51.i.1, %.lr.ph51.i.2, %.lr.ph51.i.3, %.lr.ph51.i.4, %.lr.ph51.i.5, %.lr.ph51.i.6, %.loopexit.i
  %.327.lcssa.i = phi i64 [ %.226.i, %.loopexit.i ], [ %i.bb, %.lr.ph51.i ], [ %i.bk, %.lr.ph51.i.1 ], [ %i.bt, %.lr.ph51.i.2 ], [ %i.cc, %.lr.ph51.i.3 ], [ %i.cl, %.lr.ph51.i.4 ], [ %i.cu, %.lr.ph51.i.5 ], [ %i.dd, %.lr.ph51.i.6 ]
  %i.de = xor i64 %.327.lcssa.i, -1
  ret i64 %i.de
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
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
end_hunk_0
