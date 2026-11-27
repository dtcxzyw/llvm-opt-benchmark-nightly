Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/xdiffi?download=true
inline.NumInlined: 44
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.s_xdalgoenv = type { i64, i64, i64 }
%struct.split_measurement = type { i32, i32, i32, i32, i32, i32 }
%struct.s_xpparam = type { i64, ptr, i64, ptr, i64 }
%struct.s_xdfenv = type { %struct.s_xdfile, %struct.s_xdfile }
%struct.s_xdfile = type { ptr, i64, i64, i64, ptr, ptr, i64 }
%struct.regmatch_t = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"xdiff/xdiffi.c\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"group sync broken sliding up\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"group sync broken sliding down\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"match disappeared\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"group sync broken sliding to match\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"best shift unreached\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"group sync broken sliding to blank line\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"group sync broken moving to next group\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"group sync broken at end of file\00", align 1
@sane_ctype = external local_unnamed_addr constant [256 x i8], align 16

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 -1, 1) i32 @xdl_recs_cmp(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %.loopexit, %bb.a
  %.tr341 = phi i64 [ %1, %bb.a ], [ %.sroa.0.8, %.loopexit ] ; 3 uses
  %.tr342 = phi i64 [ %2, %bb.a ], [ %.066.lcssa, %.loopexit ] ; 5 uses
  %.tr344 = phi i64 [ %4, %bb.a ], [ %.sroa.11.8, %.loopexit ] ; 3 uses
  %.tr345 = phi i64 [ %5, %bb.a ], [ %.069.lcssa, %.loopexit ] ; 5 uses
  %.tr348 = phi i32 [ %8, %bb.a ], [ %.sroa.20.20.extract.trunc, %.loopexit ]
  %ret.tr = phi i32 [ poison, %bb.a ], [ %current.ret.tr, %.loopexit ] ; 2 uses
  %ret.known.tr = phi i1 [ false, %bb.a ], [ true, %.loopexit ] ; 2 uses
  %i.a = icmp slt i64 %.tr341, %.tr342
  %i.b = icmp slt i64 %.tr344, %.tr345
  %or.cond109 = and i1 %i.a, %i.b
  br i1 %or.cond109, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %tailrecurse
  %.val76 = load ptr, ptr %0, align 8, !tbaa !22
  %i.c = getelementptr i8, ptr %0, i64 40
  %.val77 = load ptr, ptr %i.c, align 8, !tbaa !84
  %.val74 = load ptr, ptr %3, align 8, !tbaa !22
  %i.d = getelementptr i8, ptr %3, i64 40
  %.val75 = load ptr, ptr %i.d, align 8, !tbaa !84
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.064111 = phi i64 [ %.tr341, %.lr.ph ], [ %i.p, %bb.c ] ; 3 uses
  %.067110 = phi i64 [ %.tr344, %.lr.ph ], [ %i.q, %bb.c ] ; 3 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %.val77, i64 %.064111
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %.val76, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26
  %i.j = getelementptr inbounds [8 x i8], ptr %.val75, i64 %.067110
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.val74, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !26
  %i.o = icmp eq i64 %i.i, %i.n
  br i1 %i.o, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.p = add nsw i64 %.064111, 1                  ; 3 uses
  %i.q = add nsw i64 %.067110, 1                  ; 3 uses
  %i.r = icmp slt i64 %i.p, %.tr342
  %i.s = icmp slt i64 %i.q, %.tr345
  %or.cond = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.b, label %.critedge, !llvm.loop !68

.critedge:                                        ; preds = %bb.b, %bb.c, %tailrecurse
  %.067.lcssa = phi i64 [ %.tr344, %tailrecurse ], [ %i.q, %bb.c ], [ %.067110, %bb.b ] ; 18 uses
  %.064.lcssa = phi i64 [ %.tr341, %tailrecurse ], [ %i.p, %bb.c ], [ %.064111, %bb.b ] ; 17 uses
  %i.t = getelementptr i8, ptr %0, i64 40         ; 6 uses
  %i.u = getelementptr i8, ptr %3, i64 40         ; 6 uses
  %i.v = icmp slt i64 %.064.lcssa, %.tr342        ; 3 uses
  %i.w = icmp slt i64 %.067.lcssa, %.tr345        ; 3 uses
  %or.cond70215 = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond70215, label %.lr.ph218.preheader, label %.critedge2

.lr.ph218.preheader:                              ; preds = %.critedge
  %.val72 = load ptr, ptr %0, align 8, !tbaa !22
  %.val73 = load ptr, ptr %i.t, align 8, !tbaa !84
  %.val = load ptr, ptr %3, align 8, !tbaa !22
  %.val71 = load ptr, ptr %i.u, align 8, !tbaa !84
  br label %.lr.ph218

bb.d:                                             ; preds = %.lr.ph218
  %i.x = icmp slt i64 %.064.lcssa, %i.ab          ; 3 uses
  %i.y = icmp slt i64 %.067.lcssa, %i.ah          ; 3 uses
  %or.cond70 = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond70, label %.lr.ph218, label %.critedge2, !llvm.loop !69

.lr.ph218:                                        ; preds = %.lr.ph218.preheader, %bb.d
  %i.z = phi i1 [ %i.y, %bb.d ], [ %i.w, %.lr.ph218.preheader ]
  %i.aa = phi i1 [ %i.x, %bb.d ], [ %i.v, %.lr.ph218.preheader ]
  %.066217 = phi i64 [ %i.ab, %bb.d ], [ %.tr342, %.lr.ph218.preheader ] ; 2 uses
  %.069216 = phi i64 [ %i.ah, %bb.d ], [ %.tr345, %.lr.ph218.preheader ] ; 2 uses
  %i.ab = add nsw i64 %.066217, -1                ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %.val73, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %.val72, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !26
  %i.ah = add nsw i64 %.069216, -1                ; 4 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %.val71, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !26
  %i.an = icmp eq i64 %i.ag, %i.am
  br i1 %i.an, label %bb.d, label %..critedge2_crit_edge222, !llvm.loop !69

..critedge2_crit_edge222:                         ; preds = %.lr.ph218
  br label %.critedge2, !llvm.loop !69

.critedge2:                                       ; preds = %bb.d, %..critedge2_crit_edge222, %.critedge
  %.069.lcssa = phi i64 [ %.tr345, %.critedge ], [ %.069216, %..critedge2_crit_edge222 ], [ %i.ah, %bb.d ] ; 15 uses
  %.066.lcssa = phi i64 [ %.tr342, %.critedge ], [ %.066217, %..critedge2_crit_edge222 ], [ %i.ab, %bb.d ] ; 14 uses
  %.lcssa214 = phi i1 [ %i.v, %.critedge ], [ %i.aa, %..critedge2_crit_edge222 ], [ %i.x, %bb.d ]
  %.lcssa = phi i1 [ %i.w, %.critedge ], [ %i.z, %..critedge2_crit_edge222 ], [ %i.y, %bb.d ]
  %i.ao = icmp eq i64 %.064.lcssa, %.066.lcssa
  br i1 %i.ao, label %.preheader, label %bb.e

.preheader:                                       ; preds = %.critedge2
  br i1 %.lcssa, label %.lr.ph119, label %.thread

.lr.ph119:                                        ; preds = %.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !28 ; 5 uses
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !84  ; 5 uses
  %i.as = sub i64 %.069.lcssa, %.067.lcssa
  %xtraiter297 = and i64 %i.as, 3                 ; 2 uses
  %lcmp.mod298.not = icmp eq i64 %xtraiter297, 0
  br i1 %lcmp.mod298.not, label %.prol.loopexit296, label %.prol.preheader295

.prol.preheader295:                               ; preds = %.lr.ph119, %.prol.preheader295
  %.168118.prol = phi i64 [ %i.aw, %.prol.preheader295 ], [ %.067.lcssa, %.lr.ph119 ] ; 2 uses
  %prol.iter299 = phi i64 [ %prol.iter299.next, %.prol.preheader295 ], [ 0, %.lr.ph119 ]
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %.168118.prol
  %i.au = load i64, ptr %i.at, align 8, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.au
  store i8 1, ptr %i.av, align 1, !tbaa !30
  %i.aw = add nsw i64 %.168118.prol, 1            ; 2 uses
  %prol.iter299.next = add i64 %prol.iter299, 1   ; 2 uses
  %prol.iter299.cmp.not = icmp eq i64 %prol.iter299.next, %xtraiter297
  br i1 %prol.iter299.cmp.not, label %.prol.loopexit296, label %.prol.preheader295, !llvm.loop !70

.prol.loopexit296:                                ; preds = %.prol.preheader295, %.lr.ph119
  %.168118.unr = phi i64 [ %.067.lcssa, %.lr.ph119 ], [ %i.aw, %.prol.preheader295 ]
  %i.ax = sub i64 %.067.lcssa, %.069.lcssa
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %.thread, label %.lr.ph119.new

.lr.ph119.new:                                    ; preds = %.prol.loopexit296, %.lr.ph119.new
  %.168118 = phi i64 [ %i.bo, %.lr.ph119.new ], [ %.168118.unr, %.prol.loopexit296 ] ; 5 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %.168118
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ba
  store i8 1, ptr %i.bb, align 1, !tbaa !30
  %i.bc = getelementptr [8 x i8], ptr %i.ar, i64 %.168118
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.be
  store i8 1, ptr %i.bf, align 1, !tbaa !30
  %i.bg = getelementptr [8 x i8], ptr %i.ar, i64 %.168118
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !23
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bi
  store i8 1, ptr %i.bj, align 1, !tbaa !30
  %i.bk = getelementptr [8 x i8], ptr %i.ar, i64 %.168118
  %i.bl = getelementptr i8, ptr %i.bk, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !23
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bm
  store i8 1, ptr %i.bn, align 1, !tbaa !30
  %i.bo = add nsw i64 %.168118, 4                 ; 2 uses
  %exitcond146.not.3 = icmp eq i64 %i.bo, %.069.lcssa
  br i1 %exitcond146.not.3, label %.thread, label %.lr.ph119.new, !llvm.loop !71

bb.e:                                             ; preds = %.critedge2
  %i.bp = icmp eq i64 %.067.lcssa, %.069.lcssa
  br i1 %i.bp, label %.preheader84, label %bb.f

.preheader84:                                     ; preds = %bb.e
  br i1 %.lcssa214, label %.lr.ph117, label %.thread

.lr.ph117:                                        ; preds = %.preheader84
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !28 ; 5 uses
  %i.bs = load ptr, ptr %i.t, align 8, !tbaa !84  ; 5 uses
  %i.bt = sub i64 %.066.lcssa, %.064.lcssa
  %xtraiter = and i64 %i.bt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph117, %.prol.preheader
  %.165116.prol = phi i64 [ %i.bx, %.prol.preheader ], [ %.064.lcssa, %.lr.ph117 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph117 ]
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %.165116.prol
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !23
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bv
  store i8 1, ptr %i.bw, align 1, !tbaa !30
  %i.bx = add nsw i64 %.165116.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !72

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph117
  %.165116.unr = phi i64 [ %.064.lcssa, %.lr.ph117 ], [ %i.bx, %.prol.preheader ]
  %i.by = sub i64 %.064.lcssa, %.066.lcssa
  %i.bz = icmp ugt i64 %i.by, -4
  br i1 %i.bz, label %.thread, label %.lr.ph117.new

.lr.ph117.new:                                    ; preds = %.prol.loopexit, %.lr.ph117.new
  %.165116 = phi i64 [ %i.cp, %.lr.ph117.new ], [ %.165116.unr, %.prol.loopexit ] ; 5 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %.165116
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !23
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cb
  store i8 1, ptr %i.cc, align 1, !tbaa !30
  %i.cd = getelementptr [8 x i8], ptr %i.bs, i64 %.165116
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !23
  %i.cg = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cf
  store i8 1, ptr %i.cg, align 1, !tbaa !30
  %i.ch = getelementptr [8 x i8], ptr %i.bs, i64 %.165116
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !23
  %i.ck = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cj
  store i8 1, ptr %i.ck, align 1, !tbaa !30
  %i.cl = getelementptr [8 x i8], ptr %i.bs, i64 %.165116
end_hunk_0
begin_hunk_1_@xdl_recs_cmp:bb.a
  %i.hw = icmp eq i64 %i.hp, %i.hv
  br i1 %i.hw, label %.lr.ph497.i, label %..loopexit453.i.loopexit_crit_edge, !llvm.loop !78

.lr.ph497.i:                                      ; preds = %.lr.ph237
  %i.hx = icmp eq i64 %i.hj, %i.gq
  br i1 %i.hx, label %.loopexit453.i, label %.lr.ph237, !llvm.loop !78

..loopexit453.i.loopexit_crit_edge:               ; preds = %.lr.ph237
  br label %.loopexit453.i, !llvm.loop !78

.loopexit453.i:                                   ; preds = %.lr.ph497.i, %.lr.ph497.i.preheader, %..loopexit453.i.loopexit_crit_edge, %.preheader452.i, %bb.ad, %bb.ac
  %.sroa.11.4 = phi i64 [ %.sroa.11.3, %bb.ac ], [ %.sroa.11.3, %bb.ad ], [ %.sroa.11.3, %.preheader452.i ], [ %.sroa.11.3, %..loopexit453.i.loopexit_crit_edge ], [ %i.gk, %.lr.ph497.i.preheader ], [ %i.gk, %.lr.ph497.i ] ; 3 uses
  %.sroa.0.4 = phi i64 [ %.sroa.0.3, %bb.ac ], [ %.sroa.0.3, %bb.ad ], [ %.sroa.0.3, %.preheader452.i ], [ %.sroa.0.3, %..loopexit453.i.loopexit_crit_edge ], [ %i.gj, %.lr.ph497.i.preheader ], [ %i.gj, %.lr.ph497.i ] ; 3 uses
  %.1323.i = phi i64 [ %.0322500.i, %bb.ac ], [ %.0322500.i, %bb.ad ], [ %.0322500.i, %.preheader452.i ], [ %.0322500.i, %..loopexit453.i.loopexit_crit_edge ], [ %i.gn, %.lr.ph497.i.preheader ], [ %i.gn, %.lr.ph497.i ] ; 2 uses
  %i.hy = add nsw i64 %.2336499.i, -2             ; 2 uses
  %.not380.i = icmp slt i64 %i.hy, %.1350.i
  br i1 %.not380.i, label %._crit_edge502.i, label %bb.ac, !llvm.loop !79

._crit_edge502.i:                                 ; preds = %.loopexit453.i
  %i.hz = icmp sgt i64 %.1323.i, 0
  br i1 %i.hz, label %.loopexit, label %.preheader454.i

.preheader454.i:                                  ; preds = %._crit_edge502.i, %.preheader455.i
  %.sroa.11.5 = phi i64 [ %.sroa.11.0, %.preheader455.i ], [ %.sroa.11.4, %._crit_edge502.i ] ; 2 uses
  %.sroa.0.5 = phi i64 [ %.sroa.0.0, %.preheader455.i ], [ %.sroa.0.4, %._crit_edge502.i ] ; 2 uses
  br i1 %.not377489.i, label %._crit_edge510.thread.i, label %.lr.ph509.i

.lr.ph509.i:                                      ; preds = %.preheader454.i
  %i.ia = shl nuw nsw i64 %.0340.i, 2
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.i, %.lr.ph509.i
  %.sroa.11.6 = phi i64 [ %.sroa.11.5, %.lr.ph509.i ], [ %.sroa.11.7, %.loopexit.i ] ; 4 uses
  %.sroa.0.6 = phi i64 [ %.sroa.0.5, %.lr.ph509.i ], [ %.sroa.0.7, %.loopexit.i ] ; 4 uses
  %.2324508.i = phi i64 [ 0, %.lr.ph509.i ], [ %.3325.i, %.loopexit.i ] ; 5 uses
  %.3337507.i = phi i64 [ %.1342.i, %.lr.ph509.i ], [ %i.jp, %.loopexit.i ] ; 6 uses
  %i.ib = icmp sgt i64 %.3337507.i, %i.ct
  %.neg.i = sub i64 %i.ct, %.3337507.i
  %.neg385.i = sub i64 %.3337507.i, %i.ct
  %.neg386.i = select i1 %i.ib, i64 %.neg.i, i64 %.neg385.i
  %i.ic = getelementptr inbounds [8 x i8], ptr %7, i64 %.3337507.i
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !23 ; 7 uses
  %i.ie = sub nsw i64 %i.id, %.3337507.i          ; 6 uses
  %i.if = add i64 %i.db, %.neg386.i
  %i.ig = add i64 %i.id, %i.ie
  %i.ih = sub i64 %i.if, %i.ig                    ; 4 uses
  %i.ii = icmp sgt i64 %i.ih, %i.ia
  %i.ij = icmp sgt i64 %i.ih, %.2324508.i
  %or.cond413.i = select i1 %i.ii, i1 %i.ij, i1 false
  %i.ik = icmp slt i64 %.064.lcssa, %i.id
  %or.cond414.i = and i1 %i.ik, %or.cond413.i
  br i1 %or.cond414.i, label %bb.af, label %.loopexit.i

bb.af:                                            ; preds = %bb.ae
  %i.il = load i64, ptr %i.cy, align 8, !tbaa !32 ; 3 uses
  %i.im = sub nsw i64 %.066.lcssa, %i.il
  %.not387.i = icmp sgt i64 %i.id, %i.im
  %i.in = icmp sge i64 %.067.lcssa, %i.ie
  %or.cond415.not444.i = or i1 %i.in, %.not387.i
  %i.io = sub nsw i64 %.069.lcssa, %i.il
  %.not388.i = icmp sgt i64 %i.ie, %i.io
  %or.cond416.i = select i1 %or.cond415.not444.i, i1 true, i1 %.not388.i
  br i1 %or.cond416.i, label %.loopexit.i, label %.preheader451.i

.preheader451.i:                                  ; preds = %bb.af
  %.val419.i = load ptr, ptr %0, align 8, !tbaa !22 ; 2 uses
  %.val420.i = load ptr, ptr %i.t, align 8, !tbaa !84
  %i.ip = getelementptr [8 x i8], ptr %.val420.i, i64 %i.id ; 2 uses
  %.val.i = load ptr, ptr %3, align 8, !tbaa !22  ; 2 uses
  %.val418.i = load ptr, ptr %i.u, align 8, !tbaa !84
  %i.iq = getelementptr [8 x i8], ptr %.val418.i, i64 %i.ie ; 2 uses
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !23
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %.val419.i, i64 %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !26
  %i.iv = load i64, ptr %i.iq, align 8, !tbaa !23
  %i.iw = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !26
  %i.iz = icmp eq i64 %i.iu, %i.iy
  br i1 %i.iz, label %.lr.ph505.i, label %.loopexit.i

.lr.ph505.i:                                      ; preds = %.preheader451.i
  %i.ja = add nsw i64 %i.il, -1                   ; 2 uses
  %i.jb = icmp eq i64 %i.ja, 0
  br i1 %i.jb, label %.loopexit.i, label %.lr.ph245

.lr.ph245:                                        ; preds = %.lr.ph505.i, %bb.ag
  %.1321504.i244 = phi i64 [ %i.jc, %bb.ag ], [ 0, %.lr.ph505.i ]
  %i.jc = add nuw nsw i64 %.1321504.i244, 1       ; 4 uses
  %i.jd = getelementptr [8 x i8], ptr %i.ip, i64 %i.jc
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !23
  %i.jf = getelementptr inbounds nuw [24 x i8], ptr %.val419.i, i64 %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !26
  %i.ji = getelementptr [8 x i8], ptr %i.iq, i64 %i.jc
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !23
  %i.jk = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !26
  %i.jn = icmp eq i64 %i.jh, %i.jm
  br i1 %i.jn, label %bb.ag, label %..loopexit.i.loopexit_crit_edge, !llvm.loop !80

bb.ag:                                            ; preds = %.lr.ph245
  %i.jo = icmp eq i64 %i.jc, %i.ja
  br i1 %i.jo, label %.loopexit.i, label %.lr.ph245, !llvm.loop !80

..loopexit.i.loopexit_crit_edge:                  ; preds = %.lr.ph245
  br label %.loopexit.i, !llvm.loop !80

.loopexit.i:                                      ; preds = %bb.ag, %.lr.ph505.i, %..loopexit.i.loopexit_crit_edge, %.preheader451.i, %bb.af, %bb.ae
  %.sroa.11.7 = phi i64 [ %.sroa.11.6, %bb.af ], [ %.sroa.11.6, %bb.ae ], [ %.sroa.11.6, %.preheader451.i ], [ %.sroa.11.6, %..loopexit.i.loopexit_crit_edge ], [ %i.ie, %.lr.ph505.i ], [ %i.ie, %bb.ag ] ; 3 uses
  %.sroa.0.7 = phi i64 [ %.sroa.0.6, %bb.af ], [ %.sroa.0.6, %bb.ae ], [ %.sroa.0.6, %.preheader451.i ], [ %.sroa.0.6, %..loopexit.i.loopexit_crit_edge ], [ %i.id, %.lr.ph505.i ], [ %i.id, %bb.ag ] ; 3 uses
  %.3325.i = phi i64 [ %.2324508.i, %bb.af ], [ %.2324508.i, %bb.ae ], [ %.2324508.i, %.preheader451.i ], [ %.2324508.i, %..loopexit.i.loopexit_crit_edge ], [ %i.ih, %.lr.ph505.i ], [ %i.ih, %bb.ag ] ; 2 uses
  %i.jp = add nsw i64 %.3337507.i, -2             ; 2 uses
  %.not381.i = icmp slt i64 %i.jp, %.1345.i
  br i1 %.not381.i, label %._crit_edge510.i, label %bb.ae, !llvm.loop !81

._crit_edge510.i:                                 ; preds = %.loopexit.i
  %i.jq = icmp sgt i64 %.3325.i, 0
  br i1 %i.jq, label %.loopexit, label %._crit_edge510.thread.i

._crit_edge510.thread.i:                          ; preds = %._crit_edge510.i, %.preheader454.i, %bb.ab, %bb.aa
  %.sroa.11.2 = phi i64 [ %.sroa.11.0, %bb.aa ], [ %.sroa.11.5, %.preheader454.i ], [ %.sroa.11.7, %._crit_edge510.i ], [ %.sroa.11.0, %bb.ab ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.aa ], [ %.sroa.0.5, %.preheader454.i ], [ %.sroa.0.7, %._crit_edge510.i ], [ %.sroa.0.0, %bb.ab ]
  %i.jr = load i64, ptr %9, align 8, !tbaa !34
  %.not382.i = icmp slt i64 %.0340.i, %i.jr
  br i1 %.not382.i, label %bb.aj, label %.preheader450.i

.preheader450.i:                                  ; preds = %._crit_edge510.thread.i
  br i1 %.not484.i, label %.preheader.i, label %.lr.ph516.i

.preheader.i:                                     ; preds = %.lr.ph516.i, %.preheader450.i
  %.0315.lcssa.i = phi i64 [ -1, %.preheader450.i ], [ %.1316.i, %.lr.ph516.i ] ; 2 uses
  %.0313.lcssa.i = phi i64 [ -1, %.preheader450.i ], [ %.1314.i, %.lr.ph516.i ] ; 2 uses
  br i1 %.not377489.i, label %._crit_edge524.i, label %.lr.ph523.i

.lr.ph516.i:                                      ; preds = %.preheader450.i, %.lr.ph516.i
  %.0313515.i = phi i64 [ %.1314.i, %.lr.ph516.i ], [ -1, %.preheader450.i ]
  %.0315514.i = phi i64 [ %.1316.i, %.lr.ph516.i ], [ -1, %.preheader450.i ] ; 2 uses
  %.4338513.i = phi i64 [ %i.jz, %.lr.ph516.i ], [ %.1348.i, %.preheader450.i ] ; 4 uses
  %i.js = getelementptr inbounds [8 x i8], ptr %6, i64 %.4338513.i
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !23
  %..i = tail call i64 @llvm.smin.i64(i64 %i.jt, i64 %.066.lcssa) ; 2 uses
  %i.ju = sub nsw i64 %..i, %.4338513.i           ; 2 uses
  %i.jv = icmp slt i64 %.069.lcssa, %i.ju
  %i.jw = add nsw i64 %.4338513.i, %.069.lcssa
  %.4.i = select i1 %i.jv, i64 %i.jw, i64 %..i    ; 2 uses
  %.2328.i = tail call i64 @llvm.smin.i64(i64 %.069.lcssa, i64 %i.ju)
  %i.jx = add nsw i64 %.4.i, %.2328.i             ; 2 uses
  %i.jy = icmp slt i64 %.0315514.i, %i.jx
  %.1316.i = tail call i64 @llvm.smax.i64(i64 %.0315514.i, i64 %i.jx) ; 2 uses
  %.1314.i = select i1 %i.jy, i64 %.4.i, i64 %.0313515.i ; 2 uses
  %i.jz = add nsw i64 %.4338513.i, -2             ; 2 uses
  %.not383.i = icmp slt i64 %i.jz, %.1350.i
  br i1 %.not383.i, label %.preheader.i, label %.lr.ph516.i, !llvm.loop !82

.lr.ph523.i:                                      ; preds = %.preheader.i, %.lr.ph523.i
  %.0522.i = phi i64 [ %.1.i, %.lr.ph523.i ], [ 9223372036854775807, %.preheader.i ]
  %.0311521.i = phi i64 [ %.1312.i, %.lr.ph523.i ], [ 9223372036854775807, %.preheader.i ] ; 2 uses
  %.5339520.i = phi i64 [ %i.kh, %.lr.ph523.i ], [ %.1342.i, %.preheader.i ] ; 4 uses
  %i.ka = getelementptr inbounds [8 x i8], ptr %7, i64 %.5339520.i
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !23
  %.417.i = tail call i64 @llvm.smax.i64(i64 %.064.lcssa, i64 %i.kb) ; 2 uses
  %i.kc = sub nsw i64 %.417.i, %.5339520.i        ; 2 uses
  %i.kd = icmp slt i64 %i.kc, %.067.lcssa
  %i.ke = add nsw i64 %.5339520.i, %.067.lcssa
  %.5.i = select i1 %i.kd, i64 %i.ke, i64 %.417.i ; 2 uses
  %.3329.i = tail call i64 @llvm.smax.i64(i64 %i.kc, i64 %.067.lcssa)
  %i.kf = add nsw i64 %.5.i, %.3329.i             ; 2 uses
  %i.kg = icmp slt i64 %i.kf, %.0311521.i
  %.1312.i = tail call i64 @llvm.smin.i64(i64 %i.kf, i64 %.0311521.i) ; 2 uses
  %.1.i = select i1 %i.kg, i64 %.5.i, i64 %.0522.i ; 2 uses
  %i.kh = add nsw i64 %.5339520.i, -2             ; 2 uses
  %.not384.i = icmp slt i64 %i.kh, %.1345.i
  br i1 %.not384.i, label %._crit_edge524.i, label %.lr.ph523.i, !llvm.loop !83

._crit_edge524.i:                                 ; preds = %.lr.ph523.i, %.preheader.i
  %.0311.lcssa.i = phi i64 [ 9223372036854775807, %.preheader.i ], [ %.1312.i, %.lr.ph523.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 9223372036854775807, %.preheader.i ], [ %.1.i, %.lr.ph523.i ] ; 2 uses
  %i.ki = sub i64 %i.db, %.0311.lcssa.i
  %i.kj = sub i64 %.0315.lcssa.i, %i.da
  %i.kk = icmp slt i64 %i.ki, %i.kj
  br i1 %i.kk, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge524.i
  %i.kl = sub nsw i64 %.0315.lcssa.i, %.0313.lcssa.i
  br label %.loopexit

bb.ai:                                            ; preds = %._crit_edge524.i
  %i.km = sub nsw i64 %.0311.lcssa.i, %.0.lcssa.i
  br label %.loopexit

bb.aj:                                            ; preds = %._crit_edge510.thread.i, %._crit_edge494.i
  %.sroa.11.1 = phi i64 [ %.sroa.11.2, %._crit_edge510.thread.i ], [ %.sroa.11.0, %._crit_edge494.i ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.2, %._crit_edge510.thread.i ], [ %.sroa.0.0, %._crit_edge494.i ]
  %i.kn = add nuw nsw i64 %.0340.i, 1
  br label %bb.g

.loopexit:                                        ; preds = %._crit_edge510.i, %._crit_edge502.i, %bb.p, %bb.y, %bb.ah, %bb.ai
  %.sroa.20.0 = phi i64 [ 1, %bb.ah ], [ 4294967296, %bb.ai ], [ 4294967297, %bb.p ], [ 4294967297, %bb.y ], [ 4294967296, %._crit_edge510.i ], [ 1, %._crit_edge502.i ] ; 2 uses
  %.sroa.11.8 = phi i64 [ %i.kl, %bb.ah ], [ %i.km, %bb.ai ], [ %.0326.lcssa.i, %bb.p ], [ %.1327.i.lcssa, %bb.y ], [ %.sroa.11.7, %._crit_edge510.i ], [ %.sroa.11.4, %._crit_edge502.i ] ; 2 uses
  %.sroa.0.8 = phi i64 [ %.0313.lcssa.i, %bb.ah ], [ %.0.lcssa.i, %bb.ai ], [ %.1331.lcssa.i, %bb.p ], [ %.3333.i.lcssa, %bb.y ], [ %.sroa.0.7, %._crit_edge510.i ], [ %.sroa.0.4, %._crit_edge502.i ] ; 2 uses
  %.sroa.20.16.extract.trunc = trunc i64 %.sroa.20.0 to i32
  %i.ko = tail call i32 @xdl_recs_cmp(ptr noundef %0, i64 noundef %.064.lcssa, i64 noundef %.sroa.0.8, ptr noundef %3, i64 noundef %.067.lcssa, i64 noundef %.sroa.11.8, ptr noundef %6, ptr noundef %7, i32 noundef %.sroa.20.16.extract.trunc, ptr noundef %9) ; 0 uses
  %.sroa.20.20.extract.shift = lshr i64 %.sroa.20.0, 32
  %.sroa.20.20.extract.trunc = trunc nuw nsw i64 %.sroa.20.20.extract.shift to i32
  %current.ret.tr = select i1 %ret.known.tr, i32 %ret.tr, i32 0
  br label %tailrecurse

.thread:                                          ; preds = %.prol.loopexit, %.lr.ph117.new, %.prol.loopexit296, %.lr.ph119.new, %.preheader, %.preheader84
  %current.ret.tr350 = select i1 %ret.known.tr, i32 %ret.tr, i32 0
  ret i32 %current.ret.tr350
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @xdl_do_diff(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.s_xdalgoenv, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.a = tail call i32 @xdl_prepare_env(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #10
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8, !tbaa !39
  %i.d = trunc i64 %i.c to i16
  %trunc = and i16 %i.d, -16383
  switch i16 %trunc, label %bb.e [
    i16 16384, label %bb.c
    i16 -32768, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @xdl_do_patience_diff(ptr noundef nonnull %2, ptr noundef %3) #10
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.f = tail call i32 @xdl_do_histogram_diff(ptr noundef nonnull %2, ptr noundef %3) #10
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !87
  %i.l = add i64 %i.h, 3
  %i.m = add i64 %i.l, %i.k                       ; 3 uses
  %i.n = shl nsw i64 %i.m, 1
  %i.o = add nsw i64 %i.n, 2                      ; 2 uses
  %i.p = icmp ult i64 %i.o, 2305843009213693952
  br i1 %i.p, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.q = shl nuw i64 %i.o, 3
  %i.r = tail call ptr @xmalloc(i64 noundef %i.q) #10 ; 4 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.e, %bb.f
  tail call void @xdl_free_env(ptr noundef nonnull %3) #10
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.m
  %i.t = load i64, ptr %i.j, align 8, !tbaa !87
  %i.u = add i64 %i.t, 1                          ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.u
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.u
  %i.x = tail call i64 @xdl_bogosqrt(i64 noundef %i.m) #10
  %spec.select = tail call i64 @llvm.smax.i64(i64 %i.x, i64 256)
  store i64 %spec.select, ptr %4, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 20, ptr %i.y, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 256, ptr %i.z, align 8, !tbaa !33
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !86
  %i.ab = load i64, ptr %i.j, align 8, !tbaa !87
  %i.ac = load i64, ptr %2, align 8, !tbaa !39
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 1
  %i.af = call i32 @xdl_recs_cmp(ptr noundef nonnull %3, i64 noundef 0, i64 noundef %i.aa, ptr noundef nonnull %i.i, i64 noundef 0, i64 noundef %i.ab, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, i32 noundef %i.ae, ptr noundef nonnull %4)
  call void @free(ptr noundef nonnull %i.r) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.c
  %.0 = phi i32 [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.af, %bb.g ] ; 3 uses
  %i.ag = icmp slt i32 %.0, 0
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @xdl_free_env(ptr noundef %3) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.a, %.thread
  %.034 = phi i32 [ -1, %.thread ], [ -1, %bb.a ], [ %.0, %bb.i ], [ %.0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.034
}

declare i32 @xdl_prepare_env(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @xdl_do_patience_diff(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @xdl_do_histogram_diff(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare void @xdl_free_env(ptr noundef) local_unnamed_addr #3

declare i64 @xdl_bogosqrt(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @xdl_change_compact(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.split_measurement, align 4  ; 11 uses
  %4 = alloca %struct.s_xpparam, align 8          ; 5 uses
  %5 = alloca %struct.s_xdfenv, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !30, !range !41, !noundef !42
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %.lr.ph.i, label %group_init.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.e = phi i64 [ %i.f, %.lr.ph.i ], [ 0, %bb.a ]
  %i.f = add nuw nsw i64 %i.e, 1                  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !30, !range !41, !noundef !42
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.lr.ph.i, label %group_init.exit, !llvm.loop !88

group_init.exit:                                  ; preds = %.lr.ph.i, %bb.a
  %.sroa.20.8 = phi i64 [ 0, %bb.a ], [ %i.f, %.lr.ph.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !30, !range !41, !noundef !42
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.lr.ph.i77, label %group_init.exit79

.lr.ph.i77:                                       ; preds = %group_init.exit, %.lr.ph.i77
  %i.n = phi i64 [ %i.o, %.lr.ph.i77 ], [ 0, %group_init.exit ]
  %i.o = add nuw nsw i64 %i.n, 1                  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !30, !range !41, !noundef !42
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %.lr.ph.i77, label %group_init.exit79, !llvm.loop !88

group_init.exit79:                                ; preds = %.lr.ph.i77, %group_init.exit
  %.sroa.17.8 = phi i64 [ 0, %group_init.exit ], [ %i.o, %.lr.ph.i77 ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.u = and i64 %2, 8388608
  %.not56 = icmp eq i64 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.aa = and i64 %2, 49153
  %i.ab = icmp eq i64 %i.aa, 32768
  %i.ac = and i64 %2, -49154
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %group_next.exit132

group_next.exit132.loopexit:                      ; preds = %bb.ax
  br label %group_next.exit132, !llvm.loop !89

group_next.exit132:                               ; preds = %group_next.exit132.loopexit, %group_init.exit79
  %i.af = phi ptr [ %i.k, %group_init.exit79 ], [ %i.iq, %group_next.exit132.loopexit ] ; 4 uses
  %i.ag = phi ptr [ %i.b, %group_init.exit79 ], [ %i.ii, %group_next.exit132.loopexit ] ; 13 uses
  %.sroa.0170.0 = phi i64 [ 0, %group_init.exit79 ], [ %i.ih, %group_next.exit132.loopexit ] ; 4 uses
  %.sroa.20.0 = phi i64 [ %.sroa.20.8, %group_init.exit79 ], [ %storemerge.i125, %group_next.exit132.loopexit ] ; 4 uses
  %.sroa.0148.0 = phi i64 [ 0, %group_init.exit79 ], [ %i.ip, %group_next.exit132.loopexit ]
  %.sroa.17.0 = phi i64 [ %.sroa.17.8, %group_init.exit79 ], [ %storemerge.i129, %group_next.exit132.loopexit ] ; 2 uses
  %i.ah = icmp eq i64 %.sroa.20.0, %.sroa.0170.0
  br i1 %i.ah, label %bb.as, label %.preheader268

.preheader268:                                    ; preds = %group_next.exit132, %group_slide_down.exit
  %.sroa.0170.1 = phi i64 [ %.sroa.0170.3.lcssa, %group_slide_down.exit ], [ %.sroa.0170.0, %group_next.exit132 ] ; 6 uses
  %.sroa.20.1 = phi i64 [ %.sroa.20.3.lcssa, %group_slide_down.exit ], [ %.sroa.20.0, %group_next.exit132 ] ; 5 uses
  %.sroa.0148.1 = phi i64 [ %.sroa.0148.3.lcssa, %group_slide_down.exit ], [ %.sroa.0148.0, %group_next.exit132 ] ; 3 uses
  %.sroa.17.1 = phi i64 [ %.sroa.17.3.lcssa, %group_slide_down.exit ], [ %.sroa.17.0, %group_next.exit132 ] ; 2 uses
  %i.ai = sub nsw i64 %.sroa.20.1, %.sroa.0170.1  ; 3 uses
  %i.aj = icmp sgt i64 %.sroa.0170.1, 0
  br i1 %i.aj, label %.lr.ph, label %group_slide_up.exit

.lr.ph:                                           ; preds = %.preheader268
  %i.ak = load ptr, ptr %0, align 8, !tbaa !22    ; 4 uses
  %i.al = getelementptr [24 x i8], ptr %i.ak, i64 %.sroa.0170.1
  %i.am = getelementptr [24 x i8], ptr %i.ak, i64 %.sroa.20.1
  %i.an = getelementptr i8, ptr %i.al, i64 -8
  %.val.i419 = load i64, ptr %i.an, align 8, !tbaa !26
  %i.ao = getelementptr i8, ptr %i.am, i64 -8
  %.val13.i420 = load i64, ptr %i.ao, align 8, !tbaa !26
  %.not.i421 = icmp eq i64 %.val.i419, %.val13.i420
end_hunk_1
