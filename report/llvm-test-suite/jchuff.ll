inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.working_state = type { ptr, i64, %struct.savable_state, ptr }
%struct.savable_state = type { i64, i32, [4 x i32] }

@jpeg_natural_order = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_make_c_derived_tbl(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [257 x i8], align 16              ; 25 uses
  %i.b = alloca [257 x i32], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = load ptr, ptr %2, align 8, !tbaa !8      ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %.preheader40

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = tail call ptr %i.g(ptr noundef %0, i32 noundef 1, i64 noundef 1280) #8 ; 2 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !8
  br label %.preheader40

.preheader40:                                     ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.a ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !30    ; 3 uses
  %.not3941 = icmp eq i8 %i.k, 0
  br i1 %.not3941, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader40
  %i.l = zext i8 %i.k to i32
  %i.m = zext i8 %i.k to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 1, i64 %i.m, i1 false), !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader40
  %.136.lcssa = phi i32 [ 0, %.preheader40 ], [ %i.l, %.lr.ph ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !30    ; 3 uses
  %.not3941.1 = icmp eq i8 %i.o, 0
  br i1 %.not3941.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %._crit_edge
  %i.p = zext i8 %i.o to i32
  %i.q = zext nneg i32 %.136.lcssa to i64
  %scevgep.1 = getelementptr i8, ptr %i.a, i64 %i.q
  %i.r = zext i8 %i.o to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.1, i8 2, i64 %i.r, i1 false), !tbaa !30
  %i.s = add nuw nsw i32 %.136.lcssa, %i.p
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %.lr.ph.1, %._crit_edge
  %.136.lcssa.1 = phi i32 [ %.136.lcssa, %._crit_edge ], [ %i.s, %.lr.ph.1 ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !30    ; 3 uses
  %.not3941.2 = icmp eq i8 %i.u, 0
  br i1 %.not3941.2, label %._crit_edge.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %._crit_edge.1
  %i.v = zext i8 %i.u to i32
  %i.w = zext nneg i32 %.136.lcssa.1 to i64
  %scevgep.2 = getelementptr i8, ptr %i.a, i64 %i.w
  %i.x = zext i8 %i.u to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.2, i8 3, i64 %i.x, i1 false), !tbaa !30
  %i.y = add nuw nsw i32 %.136.lcssa.1, %i.v
  br label %._crit_edge.2

._crit_edge.2:                                    ; preds = %.lr.ph.2, %._crit_edge.1
  %.136.lcssa.2 = phi i32 [ %.136.lcssa.1, %._crit_edge.1 ], [ %i.y, %.lr.ph.2 ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !30   ; 3 uses
  %.not3941.3 = icmp eq i8 %i.aa, 0
  br i1 %.not3941.3, label %._crit_edge.3, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %._crit_edge.2
  %i.ab = zext i8 %i.aa to i32
  %i.ac = zext nneg i32 %.136.lcssa.2 to i64
  %scevgep.3 = getelementptr i8, ptr %i.a, i64 %i.ac
  %i.ad = zext i8 %i.aa to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.3, i8 4, i64 %i.ad, i1 false), !tbaa !30
  %i.ae = add nuw nsw i32 %.136.lcssa.2, %i.ab
  br label %._crit_edge.3

._crit_edge.3:                                    ; preds = %.lr.ph.3, %._crit_edge.2
  %.136.lcssa.3 = phi i32 [ %.136.lcssa.2, %._crit_edge.2 ], [ %i.ae, %.lr.ph.3 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !30  ; 3 uses
  %.not3941.4 = icmp eq i8 %i.ag, 0
  br i1 %.not3941.4, label %._crit_edge.4, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %._crit_edge.3
  %i.ah = zext i8 %i.ag to i32
  %i.ai = zext nneg i32 %.136.lcssa.3 to i64
  %scevgep.4 = getelementptr i8, ptr %i.a, i64 %i.ai
  %i.aj = zext i8 %i.ag to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.4, i8 5, i64 %i.aj, i1 false), !tbaa !30
  %i.ak = add nuw nsw i32 %.136.lcssa.3, %i.ah
  br label %._crit_edge.4

._crit_edge.4:                                    ; preds = %.lr.ph.4, %._crit_edge.3
  %.136.lcssa.4 = phi i32 [ %.136.lcssa.3, %._crit_edge.3 ], [ %i.ak, %.lr.ph.4 ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.am = load i8, ptr %i.al, align 1, !tbaa !30  ; 3 uses
  %.not3941.5 = icmp eq i8 %i.am, 0
  br i1 %.not3941.5, label %._crit_edge.5, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %._crit_edge.4
  %i.an = zext i8 %i.am to i32
  %i.ao = zext nneg i32 %.136.lcssa.4 to i64
  %scevgep.5 = getelementptr i8, ptr %i.a, i64 %i.ao
  %i.ap = zext i8 %i.am to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.5, i8 6, i64 %i.ap, i1 false), !tbaa !30
  %i.aq = add nuw nsw i32 %.136.lcssa.4, %i.an
  br label %._crit_edge.5

._crit_edge.5:                                    ; preds = %.lr.ph.5, %._crit_edge.4
  %.136.lcssa.5 = phi i32 [ %.136.lcssa.4, %._crit_edge.4 ], [ %i.aq, %.lr.ph.5 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !30  ; 3 uses
  %.not3941.6 = icmp eq i8 %i.as, 0
  br i1 %.not3941.6, label %._crit_edge.6, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %._crit_edge.5
  %i.at = zext i8 %i.as to i32
  %i.au = zext nneg i32 %.136.lcssa.5 to i64
  %scevgep.6 = getelementptr i8, ptr %i.a, i64 %i.au
  %i.av = zext i8 %i.as to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.6, i8 7, i64 %i.av, i1 false), !tbaa !30
  %i.aw = add nuw nsw i32 %.136.lcssa.5, %i.at
  br label %._crit_edge.6

._crit_edge.6:                                    ; preds = %.lr.ph.6, %._crit_edge.5
  %.136.lcssa.6 = phi i32 [ %.136.lcssa.5, %._crit_edge.5 ], [ %i.aw, %.lr.ph.6 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !30  ; 3 uses
  %.not3941.7 = icmp eq i8 %i.ay, 0
  br i1 %.not3941.7, label %._crit_edge.7, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %._crit_edge.6
  %i.az = zext i8 %i.ay to i32
  %i.ba = zext nneg i32 %.136.lcssa.6 to i64
  %scevgep.7 = getelementptr i8, ptr %i.a, i64 %i.ba
  %i.bb = zext i8 %i.ay to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.7, i8 8, i64 %i.bb, i1 false), !tbaa !30
  %i.bc = add nuw nsw i32 %.136.lcssa.6, %i.az
  br label %._crit_edge.7

._crit_edge.7:                                    ; preds = %.lr.ph.7, %._crit_edge.6
  %.136.lcssa.7 = phi i32 [ %.136.lcssa.6, %._crit_edge.6 ], [ %i.bc, %.lr.ph.7 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !30  ; 3 uses
  %.not3941.8 = icmp eq i8 %i.be, 0
  br i1 %.not3941.8, label %._crit_edge.8, label %.lr.ph.8

.lr.ph.8:                                         ; preds = %._crit_edge.7
  %i.bf = zext i8 %i.be to i32
  %i.bg = zext nneg i32 %.136.lcssa.7 to i64
  %scevgep.8 = getelementptr i8, ptr %i.a, i64 %i.bg
  %i.bh = zext i8 %i.be to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.8, i8 9, i64 %i.bh, i1 false), !tbaa !30
  %i.bi = add nuw nsw i32 %.136.lcssa.7, %i.bf
  br label %._crit_edge.8

._crit_edge.8:                                    ; preds = %.lr.ph.8, %._crit_edge.7
  %.136.lcssa.8 = phi i32 [ %.136.lcssa.7, %._crit_edge.7 ], [ %i.bi, %.lr.ph.8 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !30  ; 3 uses
  %.not3941.9 = icmp eq i8 %i.bk, 0
  br i1 %.not3941.9, label %._crit_edge.9, label %.lr.ph.9

.lr.ph.9:                                         ; preds = %._crit_edge.8
  %i.bl = zext i8 %i.bk to i32
  %i.bm = zext nneg i32 %.136.lcssa.8 to i64
  %scevgep.9 = getelementptr i8, ptr %i.a, i64 %i.bm
  %i.bn = zext i8 %i.bk to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.9, i8 10, i64 %i.bn, i1 false), !tbaa !30
  %i.bo = add nuw nsw i32 %.136.lcssa.8, %i.bl
  br label %._crit_edge.9

._crit_edge.9:                                    ; preds = %.lr.ph.9, %._crit_edge.8
  %.136.lcssa.9 = phi i32 [ %.136.lcssa.8, %._crit_edge.8 ], [ %i.bo, %.lr.ph.9 ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !30  ; 3 uses
  %.not3941.10 = icmp eq i8 %i.bq, 0
  br i1 %.not3941.10, label %._crit_edge.10, label %.lr.ph.10

.lr.ph.10:                                        ; preds = %._crit_edge.9
  %i.br = zext i8 %i.bq to i32
  %i.bs = zext nneg i32 %.136.lcssa.9 to i64
  %scevgep.10 = getelementptr i8, ptr %i.a, i64 %i.bs
  %i.bt = zext i8 %i.bq to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.10, i8 11, i64 %i.bt, i1 false), !tbaa !30
  %i.bu = add nuw nsw i32 %.136.lcssa.9, %i.br
  br label %._crit_edge.10

._crit_edge.10:                                   ; preds = %.lr.ph.10, %._crit_edge.9
  %.136.lcssa.10 = phi i32 [ %.136.lcssa.9, %._crit_edge.9 ], [ %i.bu, %.lr.ph.10 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !30  ; 3 uses
  %.not3941.11 = icmp eq i8 %i.bw, 0
  br i1 %.not3941.11, label %._crit_edge.11, label %.lr.ph.11

.lr.ph.11:                                        ; preds = %._crit_edge.10
  %i.bx = zext i8 %i.bw to i32
  %i.by = zext nneg i32 %.136.lcssa.10 to i64
  %scevgep.11 = getelementptr i8, ptr %i.a, i64 %i.by
  %i.bz = zext i8 %i.bw to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.11, i8 12, i64 %i.bz, i1 false), !tbaa !30
  %i.ca = add nuw nsw i32 %.136.lcssa.10, %i.bx
  br label %._crit_edge.11

._crit_edge.11:                                   ; preds = %.lr.ph.11, %._crit_edge.10
  %.136.lcssa.11 = phi i32 [ %.136.lcssa.10, %._crit_edge.10 ], [ %i.ca, %.lr.ph.11 ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !30  ; 3 uses
  %.not3941.12 = icmp eq i8 %i.cc, 0
  br i1 %.not3941.12, label %._crit_edge.12, label %.lr.ph.12

.lr.ph.12:                                        ; preds = %._crit_edge.11
  %i.cd = zext i8 %i.cc to i32
  %i.ce = zext nneg i32 %.136.lcssa.11 to i64
  %scevgep.12 = getelementptr i8, ptr %i.a, i64 %i.ce
  %i.cf = zext i8 %i.cc to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.12, i8 13, i64 %i.cf, i1 false), !tbaa !30
  %i.cg = add nuw nsw i32 %.136.lcssa.11, %i.cd
  br label %._crit_edge.12

._crit_edge.12:                                   ; preds = %.lr.ph.12, %._crit_edge.11
  %.136.lcssa.12 = phi i32 [ %.136.lcssa.11, %._crit_edge.11 ], [ %i.cg, %.lr.ph.12 ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !30  ; 3 uses
  %.not3941.13 = icmp eq i8 %i.ci, 0
  br i1 %.not3941.13, label %._crit_edge.13, label %.lr.ph.13

.lr.ph.13:                                        ; preds = %._crit_edge.12
  %i.cj = zext i8 %i.ci to i32
  %i.ck = zext nneg i32 %.136.lcssa.12 to i64
  %scevgep.13 = getelementptr i8, ptr %i.a, i64 %i.ck
  %i.cl = zext i8 %i.ci to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.13, i8 14, i64 %i.cl, i1 false), !tbaa !30
  %i.cm = add nuw nsw i32 %.136.lcssa.12, %i.cj
  br label %._crit_edge.13

._crit_edge.13:                                   ; preds = %.lr.ph.13, %._crit_edge.12
  %.136.lcssa.13 = phi i32 [ %.136.lcssa.12, %._crit_edge.12 ], [ %i.cm, %.lr.ph.13 ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !30  ; 3 uses
  %.not3941.14 = icmp eq i8 %i.co, 0
  br i1 %.not3941.14, label %._crit_edge.14, label %.lr.ph.14

.lr.ph.14:                                        ; preds = %._crit_edge.13
  %i.cp = zext i8 %i.co to i32
  %i.cq = zext nneg i32 %.136.lcssa.13 to i64
  %scevgep.14 = getelementptr i8, ptr %i.a, i64 %i.cq
  %i.cr = zext i8 %i.co to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.14, i8 15, i64 %i.cr, i1 false), !tbaa !30
  %i.cs = add nuw nsw i32 %.136.lcssa.13, %i.cp
  br label %._crit_edge.14

._crit_edge.14:                                   ; preds = %.lr.ph.14, %._crit_edge.13
  %.136.lcssa.14 = phi i32 [ %.136.lcssa.13, %._crit_edge.13 ], [ %i.cs, %.lr.ph.14 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !30  ; 3 uses
  %.not3941.15 = icmp eq i8 %i.cu, 0
  br i1 %.not3941.15, label %._crit_edge.15, label %.lr.ph.15

.lr.ph.15:                                        ; preds = %._crit_edge.14
  %i.cv = zext i8 %i.cu to i32
  %i.cw = zext nneg i32 %.136.lcssa.14 to i64
  %scevgep.15 = getelementptr i8, ptr %i.a, i64 %i.cw
  %i.cx = zext i8 %i.cu to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.15, i8 16, i64 %i.cx, i1 false), !tbaa !30
  %i.cy = add nuw nsw i32 %.136.lcssa.14, %i.cv
  br label %._crit_edge.15

._crit_edge.15:                                   ; preds = %.lr.ph.15, %._crit_edge.14
  %.136.lcssa.15 = phi i32 [ %.136.lcssa.14, %._crit_edge.14 ], [ %i.cy, %.lr.ph.15 ] ; 5 uses
  %i.cz = zext nneg i32 %.136.lcssa.15 to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cz
  store i8 0, ptr %i.da, align 1, !tbaa !30
  %i.db = load i8, ptr %i.a, align 16, !tbaa !30  ; 3 uses
  %.not52 = icmp eq i8 %i.db, 0
  br i1 %.not52, label %._crit_edge56, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge.15
  %i.dc = sext i8 %i.db to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge49
  %i.dd = phi i8 [ %i.do, %._crit_edge49 ], [ %i.db, %.preheader.preheader ] ; 2 uses
  %.055 = phi i32 [ %i.dp, %._crit_edge49 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.03454 = phi i32 [ %i.dq, %._crit_edge49 ], [ %i.dc, %.preheader.preheader ] ; 3 uses
  %.253 = phi i32 [ %.3.lcssa, %._crit_edge49 ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.de = sext i8 %i.dd to i32
  %i.df = icmp eq i32 %.03454, %i.de
  br i1 %i.df, label %.lr.ph48.preheader, label %._crit_edge49

.lr.ph48.preheader:                               ; preds = %.preheader
  %i.dg = sext i32 %.253 to i64
  br label %.lr.ph48

.lr.ph48:                                         ; preds = %.lr.ph48.preheader, %.lr.ph48
  %indvars.iv = phi i64 [ %i.dg, %.lr.ph48.preheader ], [ %indvars.iv.next, %.lr.ph48 ] ; 2 uses
  %.147 = phi i32 [ %.055, %.lr.ph48.preheader ], [ %i.di, %.lr.ph48 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 4 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %.147, ptr %i.dh, align 4, !tbaa !4
  %i.di = add i32 %.147, 1                        ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !30
  %i.dl = sext i8 %i.dk to i32
  %i.dm = icmp eq i32 %.03454, %i.dl
  br i1 %i.dm, label %.lr.ph48, label %._crit_edge49.loopexit, !llvm.loop !31

._crit_edge49.loopexit:                           ; preds = %.lr.ph48
  %i.dn = trunc nsw i64 %indvars.iv.next to i32
  %sext = shl i64 %indvars.iv.next, 32
  %.pre = ashr exact i64 %sext, 32
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.a, i64 %.pre
  %.pre69 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !30
  br label %._crit_edge49

._crit_edge49:                                    ; preds = %._crit_edge49.loopexit, %.preheader
  %i.do = phi i8 [ %.pre69, %._crit_edge49.loopexit ], [ %i.dd, %.preheader ] ; 2 uses
  %.3.lcssa = phi i32 [ %i.dn, %._crit_edge49.loopexit ], [ %.253, %.preheader ]
  %.1.lcssa = phi i32 [ %i.di, %._crit_edge49.loopexit ], [ %.055, %.preheader ]
  %i.dp = shl i32 %.1.lcssa, 1
  %i.dq = add nsw i32 %.03454, 1
  %.not = icmp eq i8 %i.do, 0
  br i1 %.not, label %._crit_edge56, label %.preheader, !llvm.loop !33

._crit_edge56:                                    ; preds = %._crit_edge49, %._crit_edge.15
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 1024 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.dr, i8 0, i64 256, i1 false)
  %i.ds = icmp sgt i32 %.136.lcssa.15, 0
  br i1 %i.ds, label %.lr.ph59, label %._crit_edge60

.lr.ph59:                                         ; preds = %._crit_edge56
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 3 uses
  %i.du = zext nneg i32 %.136.lcssa.15 to i64     ; 2 uses
  %xtraiter = and i64 %i.du, 1
  %i.dv = icmp eq i32 %.136.lcssa.15, 1
  br i1 %i.dv, label %.epil.preheader, label %.lr.ph59.new

.lr.ph59.new:                                     ; preds = %.lr.ph59
  %unroll_iter = and i64 %i.du, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph59.new
  %indvars.iv66 = phi i64 [ 0, %.lr.ph59.new ], [ %indvars.iv.next67.1, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph59.new ], [ %niter.next.1, %bb.c ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv66
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv66 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !30
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ea
  store i32 %i.dx, ptr %i.eb, align 4, !tbaa !4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv66
  %i.ed = load i8, ptr %i.ec, align 2, !tbaa !30
  %i.ee = load i8, ptr %i.dy, align 1, !tbaa !30
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ef
  store i8 %i.ed, ptr %i.eg, align 1, !tbaa !30
  %indvars.iv.next67 = or disjoint i64 %indvars.iv66, 1 ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next67
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv.next67 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !30
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.el
  store i32 %i.ei, ptr %i.em, align 4, !tbaa !4
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next67
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !30
  %i.ep = load i8, ptr %i.ej, align 1, !tbaa !30
  %i.eq = zext i8 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.eq
  store i8 %i.eo, ptr %i.er, align 1, !tbaa !30
  %indvars.iv.next67.1 = add nuw nsw i64 %indvars.iv66, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge60.loopexit.unr-lcssa, label %bb.c, !llvm.loop !34

._crit_edge60.loopexit.unr-lcssa:                 ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge60, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge60.loopexit.unr-lcssa, %.lr.ph59
  %indvars.iv66.epil.init = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next67.1, %._crit_edge60.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod88 = trunc i32 %.136.lcssa.15 to i1
  tail call void @llvm.assume(i1 %lcmp.mod88)
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv66.epil.init
  %i.et = load i32, ptr %i.es, align 4, !tbaa !4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv66.epil.init ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !30
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ew
  store i32 %i.et, ptr %i.ex, align 4, !tbaa !4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv66.epil.init
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !30
  %i.fa = load i8, ptr %i.eu, align 1, !tbaa !30
  %i.fb = zext i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.fb
  store i8 %i.ez, ptr %i.fc, align 1, !tbaa !30
  br label %._crit_edge60

._crit_edge60:                                    ; preds = %.epil.preheader, %._crit_edge60.loopexit.unr-lcssa, %._crit_edge56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_gen_optimal_table(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) initializes((2048, 2056)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 10 uses
  %i.b = alloca [257 x i32], align 16             ; 10 uses
  %i.c = alloca [257 x i32], align 16             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) %i.a, i8 0, i64 33, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1028) %i.b, i8 0, i64 1028, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1028) %i.c, i8 -1, i64 1028, i1 false), !tbaa !4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 2048
  store i64 1, ptr %i.d, align 8, !tbaa !35
  br label %.loopexit

.preheader107:                                    ; preds = %.loopexit
  %i.e = zext i32 %.188 to i64                    ; 2 uses
  br label %bb.b

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.be, %.loopexit.backedge ] ; 3 uses
  %.0114 = phi i64 [ 1000000000, %bb.a ], [ %.0114.be, %.loopexit.backedge ] ; 2 uses
  %.087112 = phi i32 [ -1, %bb.a ], [ %.087112.be, %.loopexit.backedge ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.g = load i64, ptr %i.f, align 8, !tbaa !35   ; 3 uses
  %.not99 = icmp eq i64 %i.g, 0
  %.not100 = icmp sgt i64 %i.g, %.0114
  %or.cond = select i1 %.not99, i1 true, i1 %.not100 ; 2 uses
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
  %.188 = select i1 %or.cond, i32 %.087112, i32 %i.h ; 3 uses
  %.1 = select i1 %or.cond, i64 %.0114, i64 %i.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 257
  br i1 %exitcond.not, label %.preheader107, label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %.lr.ph120, %.loopexit, %._crit_edge
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %.loopexit ], [ 0, %._crit_edge ], [ 0, %.lr.ph120 ]
  %.0114.be = phi i64 [ %.1, %.loopexit ], [ 1000000000, %._crit_edge ], [ 1000000000, %.lr.ph120 ]
  %.087112.be = phi i32 [ %.188, %.loopexit ], [ -1, %._crit_edge ], [ -1, %.lr.ph120 ]
  br label %.loopexit, !llvm.loop !36

bb.b:                                             ; preds = %bb.c, %.preheader107
  %indvars.iv138 = phi i64 [ 0, %.preheader107 ], [ %indvars.iv.next139.1, %bb.c ] ; 6 uses
  %.2117 = phi i64 [ 1000000000, %.preheader107 ], [ %.3.1, %bb.c ] ; 2 uses
  %.084115 = phi i32 [ -1, %.preheader107 ], [ %.185.1, %bb.c ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv138
  %i.j = load i64, ptr %i.i, align 8, !tbaa !35   ; 3 uses
  %.not96 = icmp eq i64 %i.j, 0
  %.not97 = icmp sgt i64 %i.j, %.2117
  %or.cond101 = select i1 %.not96, i1 true, i1 %.not97
  %.not98 = icmp eq i64 %indvars.iv138, %i.e
  %or.cond102 = select i1 %or.cond101, i1 true, i1 %.not98 ; 2 uses
  %i.k = trunc nuw nsw i64 %indvars.iv138 to i32
  %.185 = select i1 %or.cond102, i32 %.084115, i32 %i.k ; 4 uses
  %exitcond141.not = icmp eq i64 %indvars.iv138, 256
  br i1 %exitcond141.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next139 = or disjoint i64 %indvars.iv138, 1 ; 3 uses
  %.3 = select i1 %or.cond102, i64 %.2117, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next139
  %i.m = load i64, ptr %i.l, align 8, !tbaa !35   ; 3 uses
  %.not96.1 = icmp eq i64 %i.m, 0
  %.not97.1 = icmp sgt i64 %i.m, %.3
  %or.cond101.1 = select i1 %.not96.1, i1 true, i1 %.not97.1
  %.not98.1 = icmp eq i64 %indvars.iv.next139, %i.e
  %or.cond102.1 = select i1 %or.cond101.1, i1 true, i1 %.not98.1 ; 2 uses
  %i.n = trunc nuw nsw i64 %indvars.iv.next139 to i32
  %.185.1 = select i1 %or.cond102.1, i32 %.185, i32 %i.n
  %.3.1 = select i1 %or.cond102.1, i64 %.3, i64 %i.m
  %indvars.iv.next139.1 = add nuw nsw i64 %indvars.iv138, 2
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.o = icmp slt i32 %.185, 0
  br i1 %i.o, label %.preheader106, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = zext nneg i32 %.185 to i64               ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.p ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !35
  %i.s = sext i32 %.188 to i64                    ; 4 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %2, i64 %i.s ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !35
  %i.v = add nsw i64 %i.u, %i.r
  store i64 %i.v, ptr %i.t, align 8, !tbaa !35
  store i64 0, ptr %i.q, align 8, !tbaa !35
  %i.w = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.s ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !4
  %i.z = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.s
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4   ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %i.ac = phi i32 [ %i.ai, %.lr.ph ], [ %i.aa, %bb.e ]
  %i.ad = zext nneg i32 %i.ac to i64              ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = add nsw i32 %i.af, 1
end_hunk_0
