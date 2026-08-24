Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/unate?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cdata_struct = type { ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.cube_struct = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.anon = type { ptr, i32 }

@cdata = external local_unnamed_addr global %struct.cdata_struct, align 8
@cube = external local_unnamed_addr global %struct.cube_struct, align 8
@debug = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [48 x i8] c"# EXACT_MINCOV[%d]: %4d = %4d x %4d, time = %s\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"abs_select_restricted: should not have best_var == -1\00", align 1
@str = private unnamed_addr constant [43 x i8] c"MINCOV: family of all minimal coverings is\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @map_cover_to_unate(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3
  %i.g = add nsw i64 %i.f, -3
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 36), align 4, !tbaa !11
  %i.i = tail call ptr (i64, i32, ...) @sf_new(i64 noundef %i.g, i32 noundef %i.h) #10 ; 6 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.d
  %i.m = lshr exact i64 %i.l, 3
  %i.n = trunc i64 %i.m to i32
  %i.o = add i32 %i.n, -3                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  store i32 %i.o, ptr %i.p, align 4, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.r = icmp sgt i32 %i.o, 0
  br i1 %i.r, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.u = load i32, ptr @cube, align 8, !tbaa !17  ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph45, label %._crit_edge46

.lr.ph45:                                         ; preds = %.preheader
  %i.w = load ptr, ptr @cdata, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.039 = phi i32 [ 0, %.lr.ph ], [ %i.ae, %bb.b ]
  %.03638 = phi ptr [ %i.s, %.lr.ph ], [ %i.ad, %bb.b ] ; 2 uses
  %i.z = load i32, ptr %i.t, align 4, !tbaa !22
  %i.aa = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %.03638, i32 noundef %i.z) #10 ; 0 uses
  %i.ab = load i32, ptr %i.i, align 8, !tbaa !23
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %.03638, i64 %i.ac
  %i.ae = add nuw nsw i32 %.039, 1                ; 2 uses
  %i.af = load i32, ptr %i.p, align 4, !tbaa !13
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.b, label %.preheader

bb.c:                                             ; preds = %.lr.ph45, %bb.h
  %.pre48 = phi i32 [ %i.u, %.lr.ph45 ], [ %.pre49, %bb.h ] ; 2 uses
  %i.ah = phi i32 [ %i.u, %.lr.ph45 ], [ %i.bn, %bb.h ]
  %indvars.iv = phi i64 [ 0, %.lr.ph45 ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %.03243 = phi i32 [ 0, %.lr.ph45 ], [ %.133, %bb.h ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.al = trunc nuw nsw i64 %indvars.iv to i32
  %i.am = and i32 %i.al, 31
  %i.an = shl nuw i32 1, %i.am
  %i.ao = and i32 %.03243, 31
  %i.ap = shl nuw i32 1, %i.ao
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !8   ; 2 uses
  %.not40 = icmp eq ptr %i.aq, null
  br i1 %.not40, label %._crit_edge, label %.lr.ph42

.lr.ph42:                                         ; preds = %bb.d
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.as = ashr i32 %.03243, 5
  %i.at = add nsw i32 %i.as, 1
  %i.au = lshr i64 %indvars.iv, 5
  %i.av = and i64 %i.au, 134217727
  %i.aw = zext i32 %i.at to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph42, %bb.g
  %i.ax = phi ptr [ %i.aq, %.lr.ph42 ], [ %i.bl, %bb.g ]
  %i.ay = phi ptr [ %i.y, %.lr.ph42 ], [ %i.bk, %bb.g ] ; 2 uses
  %.03541 = phi ptr [ %i.ar, %.lr.ph42 ], [ %i.bj, %bb.g ] ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.av
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bc = and i32 %i.bb, %i.an
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.03541, i64 %i.aw ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = or i32 %i.bf, %i.ap
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bh = load i32, ptr %i.i, align 8, !tbaa !23
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %.03541, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bl = load ptr, ptr %i.ay, align 8, !tbaa !8  ; 2 uses
  %.not = icmp eq ptr %i.bl, null
  br i1 %.not, label %._crit_edge.loopexit, label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre.pre = load i32, ptr @cube, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %.pre = phi i32 [ %.pre.pre, %._crit_edge.loopexit ], [ %.pre48, %bb.d ] ; 2 uses
  %i.bm = add nsw i32 %.03243, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %._crit_edge
  %.pre49 = phi i32 [ %.pre, %._crit_edge ], [ %.pre48, %bb.c ]
  %i.bn = phi i32 [ %.pre, %._crit_edge ], [ %i.ah, %bb.c ] ; 2 uses
  %.133 = phi i32 [ %i.bm, %._crit_edge ], [ %.03243, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp slt i64 %indvars.iv.next, %i.bo
  br i1 %i.bp, label %bb.c, label %._crit_edge46

._crit_edge46:                                    ; preds = %bb.h, %.preheader
  ret ptr %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @sf_new(...) local_unnamed_addr #2

declare ptr @set_clear(...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @map_unate_to_cover(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = load i32, ptr @cube, align 8, !tbaa !17
  %i.d = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.b, i32 noundef %i.c) #10 ; 5 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.e, ptr %i.f, align 4, !tbaa !13
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !24 ; 5 uses
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #11 ; 6 uses
  %i.k = icmp sgt i32 %i.g, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 24), align 8, !tbaa !25 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.g to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.m = icmp eq i32 %i.g, 1
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 4 uses
  %.04759 = phi i32 [ 0, %.lr.ph.new ], [ %.1.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %.not57 = icmp eq i32 %i.o, 0
  br i1 %.not57, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = add nsw i32 %.04759, 1
  %i.q = sext i32 %.04759 to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.q
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.s, ptr %i.r, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.p, %bb.c ], [ %.04759, %bb.b ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %.not57.1 = icmp eq i32 %i.u, 0
  br i1 %.not57.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = add nsw i32 %.1, 1
  %i.w = sext i32 %.1 to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.w
  %i.y = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.y, ptr %i.x, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.1 = phi i32 [ %i.v, %bb.e ], [ %.1, %bb.d ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.04759.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod104 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod104)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.epil.init
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %.not57.epil = icmp eq i32 %i.aa, 0
  br i1 %.not57.epil, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.epil.preheader
  %i.ab = add nsw i32 %.04759.epil.init, 1
  %i.ac = sext i32 %.04759.epil.init to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ac
  %i.ae = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.g, %.epil.preheader, %bb.a
  %.047.lcssa = phi i32 [ 0, %bb.a ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ab, %bb.g ], [ %.04759.epil.init, %.epil.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16 ; 3 uses
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !13
  %i.ai = load i32, ptr %0, align 8, !tbaa !23
  %i.aj = mul nsw i32 %i.ai, %i.ah                ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %.idx = shl nsw i64 %i.ak, 2
  %i.al = getelementptr inbounds i8, ptr %i.ag, i64 %.idx ; 2 uses
  %i.am = icmp sgt i32 %i.aj, 0
  br i1 %i.am, label %.lr.ph73, label %._crit_edge74

.lr.ph73:                                         ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !16 ; 2 uses
  %i.ap = icmp sgt i32 %.047.lcssa, 0
  br i1 %i.ap, label %.lr.ph73.split.us.preheader, label %.lr.ph73.split

.lr.ph73.split.us.preheader:                      ; preds = %.lr.ph73
  %wide.trip.count91 = zext nneg i32 %.047.lcssa to i64
  br label %.lr.ph73.split.us

.lr.ph73.split.us:                                ; preds = %.lr.ph73.split.us.preheader, %._crit_edge69.us
  %.04971.us = phi ptr [ %i.dr, %._crit_edge69.us ], [ %i.ao, %.lr.ph73.split.us.preheader ] ; 7 uses
  %.05070.us = phi ptr [ %i.du, %._crit_edge69.us ], [ %i.ag, %.lr.ph73.split.us.preheader ] ; 2 uses
  %i.aq = load i32, ptr @cube, align 8, !tbaa !17 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 33
  %i.as = add nsw i32 %i.aq, -1
  %i.at = ashr i32 %i.as, 5
  %i.au = add nsw i32 %i.at, 1
  %i.av = select i1 %i.ar, i32 1, i32 %i.au       ; 5 uses
  store i32 %i.av, ptr %.04971.us, align 4, !tbaa !4
  %i.aw = shl nsw i32 %i.av, 5
  %i.ax = load i32, ptr @cube, align 8, !tbaa !17
  %i.ay = sub nsw i32 %i.aw, %i.ax
  %i.az = lshr i32 -1, %i.ay
  %i.ba = sext i32 %i.av to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %.04971.us, i64 %i.ba
  store i32 %i.az, ptr %i.bb, align 4, !tbaa !4
  %i.bc = icmp sgt i32 %i.av, 1
  br i1 %i.bc, label %.lr.ph62.us.preheader, label %.preheader.us

.lr.ph62.us.preheader:                            ; preds = %.lr.ph73.split.us
  %i.bd = add nsw i32 %i.av, -1
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 2
  %scevgep80 = getelementptr i8, ptr %.04971.us, i64 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep80, i8 -1, i64 %i.bf, i1 false), !tbaa !4
  br label %.preheader.us

bb.h:                                             ; preds = %.preheader.us, %.loopexit.us
  %indvars.iv88 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next89, %.loopexit.us ] ; 4 uses
  %i.bg = trunc nuw nsw i64 %indvars.iv88 to i32
  %i.bh = lshr i64 %indvars.iv88, 5
  %i.bi = and i64 %i.bh, 134217727
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.05070.us, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.bm = and i32 %i.bg, 31
  %i.bn = shl nuw i32 1, %i.bm
  %i.bo = and i32 %i.bl, %i.bn
  %.not55.us = icmp eq i32 %i.bo, 0
  br i1 %.not55.us, label %.loopexit.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv88
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4  ; 3 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.br
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4  ; 6 uses
  %.not5663.us = icmp sgt i32 %i.bv, %i.bt
  br i1 %.not5663.us, label %.loopexit.us, label %.lr.ph66.us.preheader

.lr.ph66.us.preheader:                            ; preds = %bb.i
  %i.bw = sext i32 %i.bv to i64                   ; 3 uses
  %i.bx = add i32 %i.bt, 1                        ; 2 uses
  %i.by = sub i32 %i.bx, %i.bv
  %xtraiter105 = and i32 %i.by, 1
  %lcmp.mod106.not = icmp eq i32 %xtraiter105, 0
  br i1 %lcmp.mod106.not, label %.lr.ph66.us.prol.loopexit, label %.lr.ph66.us.prol

.lr.ph66.us.prol:                                 ; preds = %.lr.ph66.us.preheader
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.bw
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.j, label %.lr.ph66.us.prol.loopexit.unr-lcssa

bb.j:                                             ; preds = %.lr.ph66.us.prol
  %i.cc = and i32 %i.bv, 31
  %i.cd = shl nuw i32 1, %i.cc
  %i.ce = xor i32 %i.cd, -1
  %i.cf = ashr i32 %i.bv, 5
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr [4 x i8], ptr %.04971.us, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 4      ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4
  %i.ck = and i32 %i.cj, %i.ce
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !4
  br label %.lr.ph66.us.prol.loopexit.unr-lcssa

.lr.ph66.us.prol.loopexit.unr-lcssa:              ; preds = %bb.j, %.lr.ph66.us.prol
  %indvars.iv.next85.prol = add nsw i64 %i.bw, 1
  br label %.lr.ph66.us.prol.loopexit

.lr.ph66.us.prol.loopexit:                        ; preds = %.lr.ph66.us.prol.loopexit.unr-lcssa, %.lr.ph66.us.preheader
  %indvars.iv84.unr = phi i64 [ %i.bw, %.lr.ph66.us.preheader ], [ %indvars.iv.next85.prol, %.lr.ph66.us.prol.loopexit.unr-lcssa ]
  %i.cl = icmp eq i32 %i.bt, %i.bv
  br i1 %i.cl, label %.loopexit.us, label %.lr.ph66.us

.lr.ph66.us:                                      ; preds = %.lr.ph66.us.prol.loopexit, %bb.m
  %indvars.iv84 = phi i64 [ %indvars.iv.next85.1, %bb.m ], [ %indvars.iv84.unr, %.lr.ph66.us.prol.loopexit ] ; 4 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.do, i64 %indvars.iv84
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.k, label %.lr.ph66.us.1

bb.k:                                             ; preds = %.lr.ph66.us
  %i.cp = trunc nsw i64 %indvars.iv84 to i32      ; 2 uses
  %i.cq = and i32 %i.cp, 31
  %i.cr = shl nuw i32 1, %i.cq
  %i.cs = xor i32 %i.cr, -1
  %i.ct = ashr i32 %i.cp, 5
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr [4 x i8], ptr %.04971.us, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 4      ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !4
  %i.cy = and i32 %i.cx, %i.cs
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !4
  br label %.lr.ph66.us.1

.lr.ph66.us.1:                                    ; preds = %bb.k, %.lr.ph66.us
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1 ; 2 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.do, i64 %indvars.iv.next85
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph66.us.1
  %i.dc = trunc nsw i64 %indvars.iv.next85 to i32 ; 2 uses
  %i.dd = and i32 %i.dc, 31
  %i.de = shl nuw i32 1, %i.dd
  %i.df = xor i32 %i.de, -1
  %i.dg = ashr i32 %i.dc, 5
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr [4 x i8], ptr %.04971.us, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 4      ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !4
  %i.dl = and i32 %i.dk, %i.df
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph66.us.1
  %indvars.iv.next85.1 = add nsw i64 %indvars.iv84, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next85.1 to i32
  %exitcond87.not.1 = icmp eq i32 %i.bx, %lftr.wideiv.1
  br i1 %exitcond87.not.1, label %.loopexit.us, label %.lr.ph66.us

.loopexit.us:                                     ; preds = %.lr.ph66.us.prol.loopexit, %bb.m, %bb.i, %bb.h
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count91
  br i1 %exitcond92.not, label %._crit_edge69.us, label %bb.h

.preheader.us:                                    ; preds = %.lr.ph62.us.preheader, %.lr.ph73.split.us
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8
  %i.do = load ptr, ptr @cdata, align 8           ; 3 uses
  br label %bb.h

._crit_edge69.us:                                 ; preds = %.loopexit.us
  %i.dp = load i32, ptr %i.d, align 8, !tbaa !23
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %.04971.us, i64 %i.dq
  %i.ds = load i32, ptr %0, align 8, !tbaa !23
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %.05070.us, i64 %i.dt ; 2 uses
  %i.dv = icmp ult ptr %i.du, %i.al
  br i1 %i.dv, label %.lr.ph73.split.us, label %._crit_edge74

.lr.ph73.split:                                   ; preds = %.lr.ph73, %.preheader
  %.04971 = phi ptr [ %i.eo, %.preheader ], [ %i.ao, %.lr.ph73 ] ; 4 uses
  %.05070 = phi ptr [ %i.er, %.preheader ], [ %i.ag, %.lr.ph73 ]
  %i.dw = load i32, ptr @cube, align 8, !tbaa !17 ; 2 uses
  %i.dx = icmp slt i32 %i.dw, 33
end_hunk_0
