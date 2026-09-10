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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3
  %i.g = add nsw i64 %i.f, -3
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 36), align 4, !tbaa !25
  %i.i = tail call ptr (i64, i32, ...) @sf_new(i64 noundef %i.g, i32 noundef %i.h) #11 ; 6 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !24
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
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.u = load i32, ptr @cube, align 8, !tbaa !18  ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph45, label %._crit_edge46

.lr.ph45:                                         ; preds = %.preheader
  %i.w = load ptr, ptr @cdata, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.039 = phi i32 [ 0, %.lr.ph ], [ %i.ae, %bb.b ]
  %.03638 = phi ptr [ %i.s, %.lr.ph ], [ %i.ad, %bb.b ] ; 2 uses
  %i.z = load i32, ptr %i.t, align 4, !tbaa !19
  %i.aa = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %.03638, i32 noundef %i.z) #11 ; 0 uses
  %i.ab = load i32, ptr %i.i, align 8, !tbaa !20
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
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.al = trunc nuw nsw i64 %indvars.iv to i32
  %i.am = and i32 %i.al, 31
  %i.an = shl nuw i32 1, %i.am
  %i.ao = and i32 %.03243, 31
  %i.ap = shl nuw i32 1, %i.ao
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !24  ; 2 uses
  %.not40 = icmp eq ptr %i.aq, null
  br i1 %.not40, label %._crit_edge, label %.lr.ph42

.lr.ph42:                                         ; preds = %bb.d
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !14
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
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !7
  %i.bc = and i32 %i.bb, %i.an
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.03541, i64 %i.aw ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !7
  %i.bg = or i32 %i.bf, %i.ap
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bh = load i32, ptr %i.i, align 8, !tbaa !20
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %.03541, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bl = load ptr, ptr %i.ay, align 8, !tbaa !24 ; 2 uses
  %.not = icmp eq ptr %i.bl, null
  br i1 %.not, label %._crit_edge.loopexit, label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre.pre = load i32, ptr @cube, align 8, !tbaa !18
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
  %i.c = load i32, ptr @cube, align 8, !tbaa !18
  %i.d = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.b, i32 noundef %i.c) #11 ; 5 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.e, ptr %i.f, align 4, !tbaa !13
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !27 ; 5 uses
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #12 ; 6 uses
  %i.k = icmp sgt i32 %i.g, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 24), align 8, !tbaa !28 ; 3 uses
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
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %.not57 = icmp eq i32 %i.o, 0
  br i1 %.not57, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = add nsw i32 %.04759, 1
  %i.q = sext i32 %.04759 to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.q
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.s, ptr %i.r, align 4, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.p, %bb.c ], [ %.04759, %bb.b ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %.not57.1 = icmp eq i32 %i.u, 0
  br i1 %.not57.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = add nsw i32 %.1, 1
  %i.w = sext i32 %.1 to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.w
  %i.y = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.y, ptr %i.x, align 4, !tbaa !7
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
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7
  %.not57.epil = icmp eq i32 %i.aa, 0
  br i1 %.not57.epil, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.epil.preheader
  %i.ab = add nsw i32 %.04759.epil.init, 1
  %i.ac = sext i32 %.04759.epil.init to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ac
  %i.ae = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.g, %.epil.preheader, %bb.a
  %.047.lcssa = phi i32 [ 0, %bb.a ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ab, %bb.g ], [ %.04759.epil.init, %.epil.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !14 ; 3 uses
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !13
  %i.ai = load i32, ptr %0, align 8, !tbaa !20
  %i.aj = mul nsw i32 %i.ai, %i.ah                ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %.idx = shl nsw i64 %i.ak, 2
  %i.al = getelementptr inbounds i8, ptr %i.ag, i64 %.idx ; 2 uses
  %i.am = icmp sgt i32 %i.aj, 0
  br i1 %i.am, label %.lr.ph73, label %._crit_edge74

.lr.ph73:                                         ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !14 ; 2 uses
  %i.ap = icmp sgt i32 %.047.lcssa, 0
  br i1 %i.ap, label %.lr.ph73.split.us.preheader, label %.lr.ph73.split

.lr.ph73.split.us.preheader:                      ; preds = %.lr.ph73
  %wide.trip.count91 = zext nneg i32 %.047.lcssa to i64
  br label %.lr.ph73.split.us

.lr.ph73.split.us:                                ; preds = %.lr.ph73.split.us.preheader, %._crit_edge69.us
  %.04971.us = phi ptr [ %i.dr, %._crit_edge69.us ], [ %i.ao, %.lr.ph73.split.us.preheader ] ; 7 uses
  %.05070.us = phi ptr [ %i.du, %._crit_edge69.us ], [ %i.ag, %.lr.ph73.split.us.preheader ] ; 2 uses
  %i.aq = load i32, ptr @cube, align 8, !tbaa !18 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 33
  %i.as = add nsw i32 %i.aq, -1
  %i.at = ashr i32 %i.as, 5
  %i.au = add nsw i32 %i.at, 1
  %i.av = select i1 %i.ar, i32 1, i32 %i.au       ; 5 uses
  store i32 %i.av, ptr %.04971.us, align 4, !tbaa !7
  %i.aw = shl nsw i32 %i.av, 5
  %i.ax = load i32, ptr @cube, align 8, !tbaa !18
  %i.ay = sub nsw i32 %i.aw, %i.ax
  %i.az = lshr i32 -1, %i.ay
  %i.ba = sext i32 %i.av to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %.04971.us, i64 %i.ba
  store i32 %i.az, ptr %i.bb, align 4, !tbaa !7
  %i.bc = icmp sgt i32 %i.av, 1
  br i1 %i.bc, label %.lr.ph62.us.preheader, label %.preheader.us

.lr.ph62.us.preheader:                            ; preds = %.lr.ph73.split.us
  %i.bd = add nsw i32 %i.av, -1
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 2
  %scevgep80 = getelementptr i8, ptr %.04971.us, i64 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep80, i8 -1, i64 %i.bf, i1 false), !tbaa !7
  br label %.preheader.us

bb.h:                                             ; preds = %.preheader.us, %.loopexit.us
  %indvars.iv88 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next89, %.loopexit.us ] ; 4 uses
  %i.bg = trunc nuw nsw i64 %indvars.iv88 to i32
  %i.bh = lshr i64 %indvars.iv88, 5
  %i.bi = and i64 %i.bh, 134217727
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.05070.us, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !7
  %i.bm = and i32 %i.bg, 31
  %i.bn = shl nuw i32 1, %i.bm
  %i.bo = and i32 %i.bl, %i.bn
  %.not55.us = icmp eq i32 %i.bo, 0
  br i1 %.not55.us, label %.loopexit.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv88
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !7  ; 3 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.br
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !7  ; 6 uses
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
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !7
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
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !7
  %i.ck = and i32 %i.cj, %i.ce
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !7
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
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !7
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
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !7
  %i.cy = and i32 %i.cx, %i.cs
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !7
  br label %.lr.ph66.us.1

.lr.ph66.us.1:                                    ; preds = %bb.k, %.lr.ph66.us
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1 ; 2 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.do, i64 %indvars.iv.next85
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !7
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
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !7
  %i.dl = and i32 %i.dk, %i.df
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !7
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
  %i.dp = load i32, ptr %i.d, align 8, !tbaa !20
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %.04971.us, i64 %i.dq
  %i.ds = load i32, ptr %0, align 8, !tbaa !20
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %.05070.us, i64 %i.dt ; 2 uses
  %i.dv = icmp ult ptr %i.du, %i.al
  br i1 %i.dv, label %.lr.ph73.split.us, label %._crit_edge74

.lr.ph73.split:                                   ; preds = %.lr.ph73, %.preheader
  %.04971 = phi ptr [ %i.eo, %.preheader ], [ %i.ao, %.lr.ph73 ] ; 4 uses
  %.05070 = phi ptr [ %i.er, %.preheader ], [ %i.ag, %.lr.ph73 ]
  %i.dw = load i32, ptr @cube, align 8, !tbaa !18 ; 2 uses
  %i.dx = icmp slt i32 %i.dw, 33
  %i.dy = add nsw i32 %i.dw, -1
  %i.dz = ashr i32 %i.dy, 5
  %i.ea = add nsw i32 %i.dz, 1
  %i.eb = select i1 %i.dx, i32 1, i32 %i.ea       ; 5 uses
  store i32 %i.eb, ptr %.04971, align 4, !tbaa !7
  %i.ec = shl nsw i32 %i.eb, 5
  %i.ed = load i32, ptr @cube, align 8, !tbaa !18
  %i.ee = sub nsw i32 %i.ec, %i.ed
  %i.ef = lshr i32 -1, %i.ee
  %i.eg = sext i32 %i.eb to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %.04971, i64 %i.eg
  store i32 %i.ef, ptr %i.eh, align 4, !tbaa !7
  %i.ei = icmp sgt i32 %i.eb, 1
  br i1 %i.ei, label %.lr.ph62.preheader, label %.preheader

.lr.ph62.preheader:                               ; preds = %.lr.ph73.split
  %i.ej = add nsw i32 %i.eb, -1
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = shl nuw nsw i64 %i.ek, 2
  %scevgep = getelementptr i8, ptr %.04971, i64 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 -1, i64 %i.el, i1 false), !tbaa !7
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph62.preheader, %.lr.ph73.split
  %i.em = load i32, ptr %i.d, align 8, !tbaa !20
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %.04971, i64 %i.en
  %i.ep = load i32, ptr %0, align 8, !tbaa !20
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %.05070, i64 %i.eq ; 2 uses
  %i.es = icmp ult ptr %i.er, %i.al
  br i1 %i.es, label %.lr.ph73.split, label %._crit_edge74

._crit_edge74:                                    ; preds = %.preheader, %._crit_edge69.us, %._crit_edge
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge74
  tail call void @free(ptr noundef nonnull %i.j) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge74
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @unate_compl(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13
  %i.e = load i32, ptr %0, align 8, !tbaa !20
  %i.f = mul nsw i32 %i.e, %i.d                   ; 2 uses
  %i.g = sext i32 %i.f to i64
  %.idx = shl nuw nsw i64 %i.g, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi ptr [ %i.r, %.lr.ph ], [ %i.b, %bb.a ] ; 6 uses
  %i.j = load i32, ptr %.014, align 4, !tbaa !7
  %i.k = and i32 %i.j, 65535
  store i32 %i.k, ptr %.014, align 4, !tbaa !7
  %i.l = tail call i32 (ptr, ...) @set_ord(ptr noundef nonnull %.014) #11
  %i.m = shl i32 %i.l, 16
  %i.n = load i32, ptr %.014, align 4, !tbaa !7
  %i.o = or i32 %i.n, %i.m
  store i32 %i.o, ptr %.014, align 4, !tbaa !7
  %i.p = load i32, ptr %0, align 8, !tbaa !20
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %.014, i64 %i.q ; 2 uses
  %i.s = icmp ult ptr %i.r, %i.h
  br i1 %i.s, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.t = tail call ptr @unate_complement(ptr noundef nonnull %0)
  %i.u = tail call ptr (ptr, ...) @sf_rev_contain(ptr noundef %i.t) #11
  ret ptr %i.u
}

declare i32 @set_ord(...) local_unnamed_addr #2

declare ptr @sf_rev_contain(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @unate_complement(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 9 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  switch i32 %i.b, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %0) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !19
  %i.e = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.d) #11 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = load i32, ptr %i.e, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !13   ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !13
  %i.l = mul nsw i32 %i.j, %i.h
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.m
  %i.o = load i32, ptr %i.c, align 4, !tbaa !19
  %i.p = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.n, i32 noundef %i.o) #11 ; 0 uses
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !19   ; 2 uses
  %i.u = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.t, i32 noundef %i.t) #11 ; 4 uses
  %i.v = load i32, ptr %i.s, align 4, !tbaa !19   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.z = phi i32 [ %i.v, %.lr.ph ], [ %i.at, %bb.f ] ; 2 uses
  %.094119 = phi i32 [ 0, %.lr.ph ], [ %i.au, %bb.f ] ; 3 uses
  %i.aa = lshr i32 %.094119, 5
  %i.ab = add nuw nsw i32 %i.aa, 1
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.af = and i32 %.094119, 31
  %i.ag = shl nuw i32 1, %i.af                    ; 2 uses
  %i.ah = and i32 %i.ae, %i.ag
  %.not107 = icmp eq i32 %i.ah, 0
  br i1 %.not107, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !14
  %i.aj = load i32, ptr %i.u, align 8, !tbaa !20
  %i.ak = load i32, ptr %i.y, align 4, !tbaa !13  ; 2 uses
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.y, align 4, !tbaa !13
  %i.am = mul nsw i32 %i.ak, %i.aj
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.an
  %i.ap = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.ao, i32 noundef %i.z) #11
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ac ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = or i32 %i.ar, %i.ag
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !7
  %.pre = load i32, ptr %i.s, align 4, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.at = phi i32 [ %i.z, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %i.au = add nuw nsw i32 %.094119, 1             ; 2 uses
  %i.av = icmp slt i32 %i.au, %i.at
  br i1 %i.av, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.c
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %0) #11
  br label %bb.z

bb.g:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !19 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 33
  %i.az = add nsw i32 %i.ax, -1
  %i.ba = lshr i32 %i.az, 3
  %i.bb = and i32 %i.ba, 536870908
  %i.bc = add nuw nsw i32 %i.bb, 8
  %narrow = select i1 %i.ay, i32 8, i32 %i.bc
  %i.bd = zext nneg i32 %narrow to i64
  %i.be = tail call noalias ptr @malloc(i64 noundef %i.bd) #12
  %i.bf = load i32, ptr %i.aw, align 4, !tbaa !19
  %i.bg = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.be, i32 noundef %i.bf) #11 ; 8 uses
  %i.bh = load i32, ptr %i.aw, align 4, !tbaa !19
  %i.bi = add nsw i32 %i.bh, 1                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !13  ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph124.preheader, label %._crit_edge125

.lr.ph124.preheader:                              ; preds = %bb.g
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !14
  br label %.lr.ph124

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %bb.k
  %.0122 = phi i32 [ %.1, %bb.k ], [ %i.bi, %.lr.ph124.preheader ] ; 4 uses
  %.195121 = phi i32 [ %i.by, %bb.k ], [ 0, %.lr.ph124.preheader ]
  %.096120 = phi ptr [ %i.bx, %bb.k ], [ %i.bm, %.lr.ph124.preheader ] ; 5 uses
  %i.bn = load i32, ptr %.096120, align 4, !tbaa !7
  %i.bo = lshr i32 %i.bn, 16                      ; 2 uses
  %i.bp = icmp ult i32 %i.bo, %.0122
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph124
  %i.bq = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.bg, ptr noundef nonnull %.096120) #11 ; 0 uses
  %i.br = load i32, ptr %.096120, align 4, !tbaa !7
  %i.bs = lshr i32 %i.br, 16
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph124
  %i.bt = icmp eq i32 %i.bo, %.0122
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bu = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.bg, ptr noundef %i.bg, ptr noundef nonnull %.096120) #11 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i
  %.1 = phi i32 [ %i.bs, %bb.h ], [ %.0122, %bb.j ], [ %.0122, %bb.i ] ; 2 uses
  %i.bv = load i32, ptr %0, align 8, !tbaa !20
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %.096120, i64 %i.bw
  %i.by = add nuw nsw i32 %.195121, 1             ; 2 uses
  %i.bz = load i32, ptr %i.a, align 4, !tbaa !13  ; 2 uses
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %.lr.ph124, label %._crit_edge125

._crit_edge125:                                   ; preds = %bb.k, %bb.g
  %.0.lcssa = phi i32 [ %i.bi, %bb.g ], [ %.1, %bb.k ]
  %.lcssa = phi i32 [ %i.bk, %bb.g ], [ %i.bz, %bb.k ]
  switch i32 %.0.lcssa, label %bb.q [
    i32 0, label %bb.l
    i32 1, label %bb.m
  ]

bb.l:                                             ; preds = %._crit_edge125
  store i32 0, ptr %i.a, align 4, !tbaa !13
  br label %.loopexit

bb.m:                                             ; preds = %._crit_edge125
  %i.cb = load i32, ptr %i.aw, align 4, !tbaa !19
  %i.cc = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %.lcssa, i32 noundef %i.cb) #11 ; 4 uses
  %i.cd = load ptr, ptr %i.bj, align 8, !tbaa !14 ; 2 uses
  %i.ce = load i32, ptr %i.a, align 4, !tbaa !13
  %i.cf = load i32, ptr %0, align 8, !tbaa !20
  %i.cg = mul nsw i32 %i.cf, %i.ce                ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %.idx.i = shl nsw i64 %i.ch, 2
  %i.ci = getelementptr inbounds i8, ptr %i.cd, i64 %.idx.i
  %i.cj = icmp sgt i32 %i.cg, 0
  br i1 %i.cj, label %.lr.ph.i, label %abs_covered_many.exit

.lr.ph.i:                                         ; preds = %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !14
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 12 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.i
  %.02226.i = phi ptr [ %i.cl, %.lr.ph.i ], [ %.1.i, %bb.p ] ; 9 uses
  %.02325.i = phi ptr [ %i.cd, %.lr.ph.i ], [ %i.ea, %bb.p ] ; 10 uses
  %i.cn = tail call i32 (ptr, ptr, ...) @setp_disjoint(ptr noundef %.02325.i, ptr noundef %i.bg) #11
  %.not.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.02226.i158 = ptrtoaddr ptr %.02226.i to i64
  %.02325.i157 = ptrtoaddr ptr %.02325.i to i64
  %i.co = load i32, ptr %.02325.i, align 4, !tbaa !7
  %i.cp = and i32 %i.co, 1023                     ; 2 uses
  %i.cq = zext nneg i32 %i.cp to i64              ; 4 uses
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.cp, 7
  %i.cs = sub i64 %.02226.i158, %.02325.i157
  %diff.check = icmp ugt i64 %i.cs, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.o
  %n.vec = and i64 %i.cr, 2040                    ; 3 uses
  %i.ct = sub nsw i64 %i.cq, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cu = sub i64 %i.cq, %index                   ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.02325.i, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -12
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 -28
  %wide.load = load <4 x i32>, ptr %i.cw, align 4, !tbaa !7
  %wide.load159 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !7
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.02226.i, i64 %i.cu ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -12
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 -28
  store <4 x i32> %wide.load, ptr %i.cz, align 4, !tbaa !7
  store <4 x i32> %wide.load159, ptr %i.da, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %.loopexit177, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.o, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.cq, %bb.o ], [ %i.ct, %middle.block ] ; 4 uses
  %i.dc = add nsw i64 %indvars.iv.i.ph, 1
  %xtraiter = and i64 %i.dc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.02325.i, i64 %indvars.iv.i.prol
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !7
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.02226.i, i64 %indvars.iv.i.prol
  store i32 %i.de, ptr %i.df, align 4, !tbaa !7
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !30

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.dg = icmp ult i64 %indvars.iv.i.ph, 3
  br i1 %i.dg, label %.loopexit177, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.02325.i, i64 %indvars.iv.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !7
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.02226.i, i64 %indvars.iv.i
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !7
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.02325.i, i64 %indvars.iv.next.i
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !7
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.02226.i, i64 %indvars.iv.next.i
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !7
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.02325.i, i64 %indvars.iv.next.i.1
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !7
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.02226.i, i64 %indvars.iv.next.i.1
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !7
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.02325.i, i64 %indvars.iv.next.i.2
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !7
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.02226.i, i64 %indvars.iv.next.i.2
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !7
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4
  %.not24.i.3 = icmp eq i64 %indvars.iv.next.i.2, 0
  br i1 %.not24.i.3, label %.loopexit177, label %scalar.ph, !llvm.loop !31

.loopexit177:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dt = load i32, ptr %i.cm, align 4, !tbaa !13
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.cm, align 4, !tbaa !13
  %i.dv = load i32, ptr %i.cc, align 8, !tbaa !20
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %.02226.i, i64 %i.dw
  br label %bb.p

bb.p:                                             ; preds = %.loopexit177, %bb.n
  %.1.i = phi ptr [ %i.dx, %.loopexit177 ], [ %.02226.i, %bb.n ]
  %i.dy = load i32, ptr %0, align 8, !tbaa !20
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %.02325.i, i64 %i.dz ; 2 uses
  %i.eb = icmp ult ptr %i.ea, %i.ci
  br i1 %i.eb, label %bb.n, label %abs_covered_many.exit

abs_covered_many.exit:                            ; preds = %bb.p, %bb.m
  %i.ec = tail call ptr @unate_complement(ptr noundef %i.cc) ; 5 uses
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %0) #11
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 12 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !13
  %i.ef = icmp sgt i32 %i.ee, 0
  br i1 %i.ef, label %.lr.ph129.preheader, label %.loopexit

.lr.ph129.preheader:                              ; preds = %abs_covered_many.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !14
  br label %.lr.ph129

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %.lr.ph129
  %.2128 = phi i32 [ %i.em, %.lr.ph129 ], [ 0, %.lr.ph129.preheader ]
  %.197127 = phi ptr [ %i.el, %.lr.ph129 ], [ %i.eh, %.lr.ph129.preheader ] ; 3 uses
  %i.ei = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %.197127, ptr noundef %.197127, ptr noundef %i.bg) #11 ; 0 uses
  %i.ej = load i32, ptr %i.ec, align 8, !tbaa !20
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %.197127, i64 %i.ek
  %i.em = add nuw nsw i32 %.2128, 1               ; 2 uses
  %i.en = load i32, ptr %i.ed, align 4, !tbaa !13
  %i.eo = icmp slt i32 %i.em, %i.en
  br i1 %i.eo, label %.lr.ph129, label %.loopexit

bb.q:                                             ; preds = %._crit_edge125
  %i.ep = tail call ptr (ptr, ptr, ...) @sf_count_restricted(ptr noundef nonnull %0, ptr noundef %i.bg) #11 ; 8 uses
  %i.eq = load i32, ptr %i.aw, align 4, !tbaa !19 ; 3 uses
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.q
  %wide.trip.count.i = zext nneg i32 %i.eq to i64 ; 2 uses
  %xtraiter180 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.es = icmp ult i32 %i.eq, 4
  br i1 %i.es, label %.lr.ph.i109.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %.lr.ph.i109, %.lr.ph.preheader.i.new
  %indvars.iv.i110 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i111.3, %.lr.ph.i109 ] ; 6 uses
  %.022.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %spec.select19.i.3, %.lr.ph.i109 ] ; 2 uses
  %.01421.i = phi i32 [ -1, %.lr.ph.preheader.i.new ], [ %spec.select.i.3, %.lr.ph.i109 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i109 ]
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv.i110
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !7  ; 2 uses
  %i.ev = icmp sgt i32 %i.eu, %.022.i
  %i.ew = trunc nuw nsw i64 %indvars.iv.i110 to i32
  %spec.select.i = select i1 %i.ev, i32 %i.ew, i32 %.01421.i
  %spec.select19.i = tail call i32 @llvm.smax.i32(i32 %i.eu, i32 %.022.i) ; 2 uses
  %indvars.iv.next.i111 = or disjoint i64 %indvars.iv.i110, 1 ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv.next.i111
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !7  ; 2 uses
  %i.ez = icmp sgt i32 %i.ey, %spec.select19.i
  %i.fa = trunc nuw nsw i64 %indvars.iv.next.i111 to i32
  %spec.select.i.1 = select i1 %i.ez, i32 %i.fa, i32 %spec.select.i
  %spec.select19.i.1 = tail call i32 @llvm.smax.i32(i32 %i.ey, i32 %spec.select19.i) ; 2 uses
  %indvars.iv.next.i111.1 = or disjoint i64 %indvars.iv.i110, 2 ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv.next.i111.1
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !7  ; 2 uses
  %i.fd = icmp sgt i32 %i.fc, %spec.select19.i.1
  %i.fe = trunc nuw nsw i64 %indvars.iv.next.i111.1 to i32
  %spec.select.i.2 = select i1 %i.fd, i32 %i.fe, i32 %spec.select.i.1
  %spec.select19.i.2 = tail call i32 @llvm.smax.i32(i32 %i.fc, i32 %spec.select19.i.1) ; 2 uses
  %indvars.iv.next.i111.2 = or disjoint i64 %indvars.iv.i110, 3 ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv.next.i111.2
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !7  ; 2 uses
  %i.fh = icmp sgt i32 %i.fg, %spec.select19.i.2
  %i.fi = trunc nuw nsw i64 %indvars.iv.next.i111.2 to i32
  %spec.select.i.3 = select i1 %i.fh, i32 %i.fi, i32 %spec.select.i.2 ; 3 uses
  %spec.select19.i.3 = tail call i32 @llvm.smax.i32(i32 %i.fg, i32 %spec.select19.i.2) ; 2 uses
  %indvars.iv.next.i111.3 = add nuw nsw i64 %indvars.iv.i110, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.lr.ph.i109

._crit_edge.i:                                    ; preds = %bb.q
  %.not.i108 = icmp eq ptr %i.ep, null
  br i1 %.not.i108, label %.thread.i, label %.thread32.i

.thread32.i:                                      ; preds = %._crit_edge.i
  tail call void @free(ptr noundef nonnull %i.ep) #11
  br label %.thread.i

.unr-lcssa:                                       ; preds = %.lr.ph.i109
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %.epilog-lcssa, label %.lr.ph.i109.epil.preheader

.lr.ph.i109.epil.preheader:                       ; preds = %.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i110.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i111.3, %.unr-lcssa ]
  %.022.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %spec.select19.i.3, %.unr-lcssa ]
  %.01421.i.epil.init = phi i32 [ -1, %.lr.ph.preheader.i ], [ %spec.select.i.3, %.unr-lcssa ]
  %lcmp.mod183 = icmp ne i64 %xtraiter180, 0
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %.lr.ph.i109.epil

.lr.ph.i109.epil:                                 ; preds = %.lr.ph.i109.epil, %.lr.ph.i109.epil.preheader
  %indvars.iv.i110.epil = phi i64 [ %indvars.iv.i110.epil.init, %.lr.ph.i109.epil.preheader ], [ %indvars.iv.next.i111.epil, %.lr.ph.i109.epil ] ; 3 uses
  %.022.i.epil = phi i32 [ %.022.i.epil.init, %.lr.ph.i109.epil.preheader ], [ %spec.select19.i.epil, %.lr.ph.i109.epil ] ; 2 uses
  %.01421.i.epil = phi i32 [ %.01421.i.epil.init, %.lr.ph.i109.epil.preheader ], [ %spec.select.i.epil, %.lr.ph.i109.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i109.epil.preheader ], [ %epil.iter.next, %.lr.ph.i109.epil ]
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv.i110.epil
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !7  ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, %.022.i.epil
  %i.fm = trunc nuw nsw i64 %indvars.iv.i110.epil to i32
  %spec.select.i.epil = select i1 %i.fl, i32 %i.fm, i32 %.01421.i.epil ; 2 uses
  %spec.select19.i.epil = tail call i32 @llvm.smax.i32(i32 %i.fk, i32 %.022.i.epil)
  %indvars.iv.next.i111.epil = add nuw nsw i64 %indvars.iv.i110.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter180
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.lr.ph.i109.epil, !llvm.loop !32

.epilog-lcssa:                                    ; preds = %.lr.ph.i109.epil, %.unr-lcssa
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.3, %.unr-lcssa ], [ %spec.select.i.epil, %.lr.ph.i109.epil ] ; 2 uses
  tail call void @free(ptr noundef nonnull %i.ep) #11
  %i.fn = icmp eq i32 %spec.select.i.lcssa, -1
  br i1 %i.fn, label %.thread.i, label %abs_select_restricted.exit

.thread.i:                                        ; preds = %.epilog-lcssa, %.thread32.i, %._crit_edge.i
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.2) #11
  br label %abs_select_restricted.exit

abs_select_restricted.exit:                       ; preds = %.epilog-lcssa, %.thread.i
  %.014.lcssa2830.i = phi i32 [ -1, %.thread.i ], [ %spec.select.i.lcssa, %.epilog-lcssa ] ; 6 uses
  %i.fo = load i32, ptr %i.a, align 4, !tbaa !13
  %i.fp = load i32, ptr %i.aw, align 4, !tbaa !19
  %i.fq = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.fo, i32 noundef %i.fp) #11 ; 4 uses
  %i.fr = load ptr, ptr %i.bj, align 8, !tbaa !14 ; 2 uses
  %i.fs = load i32, ptr %i.a, align 4, !tbaa !13
  %i.ft = load i32, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.fu = mul nsw i32 %i.ft, %i.fs                ; 2 uses
  %i.fv = sext i32 %i.fu to i64
  %.idx.i112 = shl nsw i64 %i.fv, 2
  %i.fw = getelementptr inbounds i8, ptr %i.fr, i64 %.idx.i112
  %i.fx = icmp sgt i32 %i.fu, 0
  br i1 %i.fx, label %.lr.ph.i114, label %abs_covered.exit

.lr.ph.i114:                                      ; preds = %abs_select_restricted.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !14
  %i.ga = ashr i32 %.014.lcssa2830.i, 5
  %i.gb = sext i32 %i.ga to i64
  %i.gc = and i32 %.014.lcssa2830.i, 31
  %i.gd = shl nuw i32 1, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fq, i64 12 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph.i114
  %i.gf = phi i32 [ %i.ft, %.lr.ph.i114 ], [ %i.hu, %bb.t ]
  %.02327.i = phi ptr [ %i.fz, %.lr.ph.i114 ], [ %.1.i116, %bb.t ] ; 9 uses
  %.02426.i = phi ptr [ %i.fr, %.lr.ph.i114 ], [ %i.hw, %bb.t ] ; 10 uses
  %i.gg = getelementptr [4 x i8], ptr %.02426.i, i64 %i.gb
  %i.gh = getelementptr i8, ptr %i.gg, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !7
  %i.gj = and i32 %i.gi, %i.gd
  %.not.i115 = icmp eq i32 %i.gj, 0
  br i1 %.not.i115, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.02327.i162 = ptrtoaddr ptr %.02327.i to i64
  %.02426.i161 = ptrtoaddr ptr %.02426.i to i64
  %i.gk = load i32, ptr %.02426.i, align 4, !tbaa !7
  %i.gl = and i32 %i.gk, 1023                     ; 2 uses
  %i.gm = zext nneg i32 %i.gl to i64              ; 4 uses
  %i.gn = add nuw nsw i64 %i.gm, 1                ; 2 uses
  %min.iters.check165 = icmp samesign ult i32 %i.gl, 7
  %i.go = sub i64 %.02327.i162, %.02426.i161
  %diff.check163 = icmp ugt i64 %i.go, -32
  %or.cond178 = select i1 %min.iters.check165, i1 true, i1 %diff.check163
  br i1 %or.cond178, label %scalar.ph164.preheader, label %vector.ph166

vector.ph166:                                     ; preds = %bb.s
  %n.vec167 = and i64 %i.gn, 2040                 ; 3 uses
  %i.gp = sub nsw i64 %i.gm, %n.vec167
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph166
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next172, %vector.body168 ] ; 2 uses
  %i.gq = sub i64 %i.gm, %index169                ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.02426.i, i64 %i.gq ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 -12
  %i.gt = getelementptr inbounds i8, ptr %i.gr, i64 -28
  %wide.load170 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !7
  %wide.load171 = load <4 x i32>, ptr %i.gt, align 4, !tbaa !7
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.02327.i, i64 %i.gq ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %i.gu, i64 -12
  %i.gw = getelementptr inbounds i8, ptr %i.gu, i64 -28
  store <4 x i32> %wide.load170, ptr %i.gv, align 4, !tbaa !7
  store <4 x i32> %wide.load171, ptr %i.gw, align 4, !tbaa !7
  %index.next172 = add nuw i64 %index169, 8       ; 2 uses
  %i.gx = icmp eq i64 %index.next172, %n.vec167
  br i1 %i.gx, label %middle.block173, label %vector.body168, !llvm.loop !33

middle.block173:                                  ; preds = %vector.body168
  %cmp.n174 = icmp eq i64 %i.gn, %n.vec167
  br i1 %cmp.n174, label %.loopexit176, label %scalar.ph164.preheader

scalar.ph164.preheader:                           ; preds = %bb.s, %middle.block173
  %indvars.iv.i117.ph = phi i64 [ %i.gm, %bb.s ], [ %i.gp, %middle.block173 ] ; 4 uses
  %i.gy = add nsw i64 %indvars.iv.i117.ph, 1
  %xtraiter184 = and i64 %i.gy, 3                 ; 2 uses
  %lcmp.mod185.not = icmp eq i64 %xtraiter184, 0
  br i1 %lcmp.mod185.not, label %scalar.ph164.prol.loopexit, label %scalar.ph164.prol

scalar.ph164.prol:                                ; preds = %scalar.ph164.preheader, %scalar.ph164.prol
  %indvars.iv.i117.prol = phi i64 [ %indvars.iv.next.i118.prol, %scalar.ph164.prol ], [ %indvars.iv.i117.ph, %scalar.ph164.preheader ] ; 3 uses
  %prol.iter186 = phi i64 [ %prol.iter186.next, %scalar.ph164.prol ], [ 0, %scalar.ph164.preheader ]
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.02426.i, i64 %indvars.iv.i117.prol
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !7
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.02327.i, i64 %indvars.iv.i117.prol
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !7
  %indvars.iv.next.i118.prol = add nsw i64 %indvars.iv.i117.prol, -1 ; 2 uses
  %prol.iter186.next = add i64 %prol.iter186, 1   ; 2 uses
  %prol.iter186.cmp.not = icmp eq i64 %prol.iter186.next, %xtraiter184
  br i1 %prol.iter186.cmp.not, label %scalar.ph164.prol.loopexit, label %scalar.ph164.prol, !llvm.loop !34

scalar.ph164.prol.loopexit:                       ; preds = %scalar.ph164.prol, %scalar.ph164.preheader
  %indvars.iv.i117.unr = phi i64 [ %indvars.iv.i117.ph, %scalar.ph164.preheader ], [ %indvars.iv.next.i118.prol, %scalar.ph164.prol ]
  %i.hc = icmp ult i64 %indvars.iv.i117.ph, 3
  br i1 %i.hc, label %.loopexit176, label %scalar.ph164

scalar.ph164:                                     ; preds = %scalar.ph164.prol.loopexit, %scalar.ph164
  %indvars.iv.i117 = phi i64 [ %indvars.iv.next.i118.3, %scalar.ph164 ], [ %indvars.iv.i117.unr, %scalar.ph164.prol.loopexit ] ; 6 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.02426.i, i64 %indvars.iv.i117
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !7
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.02327.i, i64 %indvars.iv.i117
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !7
  %indvars.iv.next.i118 = add nsw i64 %indvars.iv.i117, -1 ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.02426.i, i64 %indvars.iv.next.i118
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !7
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.02327.i, i64 %indvars.iv.next.i118
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !7
  %indvars.iv.next.i118.1 = add nsw i64 %indvars.iv.i117, -2 ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.02426.i, i64 %indvars.iv.next.i118.1
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !7
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.02327.i, i64 %indvars.iv.next.i118.1
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !7
  %indvars.iv.next.i118.2 = add nsw i64 %indvars.iv.i117, -3 ; 3 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.02426.i, i64 %indvars.iv.next.i118.2
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !7
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.02327.i, i64 %indvars.iv.next.i118.2
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !7
  %indvars.iv.next.i118.3 = add nsw i64 %indvars.iv.i117, -4
  %.not25.i.3 = icmp eq i64 %indvars.iv.next.i118.2, 0
  br i1 %.not25.i.3, label %.loopexit176, label %scalar.ph164, !llvm.loop !35

.loopexit176:                                     ; preds = %scalar.ph164.prol.loopexit, %scalar.ph164, %middle.block173
  %i.hp = load i32, ptr %i.ge, align 4, !tbaa !13
  %i.hq = add nsw i32 %i.hp, 1
  store i32 %i.hq, ptr %i.ge, align 4, !tbaa !13
  %i.hr = load i32, ptr %i.fq, align 8, !tbaa !20
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [4 x i8], ptr %.02327.i, i64 %i.hs
  %.pre.i = load i32, ptr %0, align 8, !tbaa !20
  br label %bb.t

bb.t:                                             ; preds = %.loopexit176, %bb.r
  %i.hu = phi i32 [ %i.gf, %bb.r ], [ %.pre.i, %.loopexit176 ] ; 2 uses
  %.1.i116 = phi ptr [ %.02327.i, %bb.r ], [ %i.ht, %.loopexit176 ]
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [4 x i8], ptr %.02426.i, i64 %i.hv ; 2 uses
  %i.hx = icmp ult ptr %i.hw, %i.fw
  br i1 %i.hx, label %bb.r, label %abs_covered.exit

abs_covered.exit:                                 ; preds = %bb.t, %abs_select_restricted.exit
  %i.hy = tail call ptr @unate_complement(ptr noundef %i.fq) ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 12 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !13
  %i.ib = icmp sgt i32 %i.ia, 0
  br i1 %i.ib, label %.lr.ph132, label %._crit_edge133

.lr.ph132:                                        ; preds = %abs_covered.exit
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !14
  %i.ie = and i32 %.014.lcssa2830.i, 31
  %i.if = shl nuw i32 1, %i.ie
  %i.ig = ashr i32 %.014.lcssa2830.i, 5
  %i.ih = sext i32 %i.ig to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph132, %bb.u
  %.3131 = phi i32 [ 0, %.lr.ph132 ], [ %i.ip, %bb.u ]
  %.298130 = phi ptr [ %i.id, %.lr.ph132 ], [ %i.io, %bb.u ] ; 2 uses
  %i.ii = getelementptr [4 x i8], ptr %.298130, i64 %i.ih
  %i.ij = getelementptr i8, ptr %i.ii, i64 4      ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !7
  %i.il = or i32 %i.ik, %i.if
  store i32 %i.il, ptr %i.ij, align 4, !tbaa !7
  %i.im = load i32, ptr %i.hy, align 8, !tbaa !20
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [4 x i8], ptr %.298130, i64 %i.in
  %i.ip = add nuw nsw i32 %.3131, 1               ; 2 uses
  %i.iq = load i32, ptr %i.hz, align 4, !tbaa !13
  %i.ir = icmp slt i32 %i.ip, %i.iq
  br i1 %i.ir, label %bb.u, label %._crit_edge133

._crit_edge133:                                   ; preds = %bb.u, %abs_covered.exit
  %i.is = load i32, ptr %i.a, align 4, !tbaa !13  ; 2 uses
  %i.it = icmp sgt i32 %i.is, 0
  br i1 %i.it, label %.lr.ph137, label %._crit_edge138

.lr.ph137:                                        ; preds = %._crit_edge133
  %i.iu = load ptr, ptr %i.bj, align 8, !tbaa !14
  %i.iv = ashr i32 %.014.lcssa2830.i, 5
  %i.iw = sext i32 %i.iv to i64
  %i.ix = and i32 %.014.lcssa2830.i, 31
  %i.iy = shl nuw i32 1, %i.ix                    ; 2 uses
  %i.iz = xor i32 %i.iy, -1
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph137, %bb.x
  %i.ja = phi i32 [ %i.is, %.lr.ph137 ], [ %i.ji, %bb.x ]
  %.4135 = phi i32 [ 0, %.lr.ph137 ], [ %i.jm, %bb.x ]
  %.399134 = phi ptr [ %i.iu, %.lr.ph137 ], [ %i.jl, %bb.x ] ; 4 uses
  %i.jb = getelementptr [4 x i8], ptr %.399134, i64 %i.iw
  %i.jc = getelementptr i8, ptr %i.jb, i64 4      ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !7  ; 2 uses
  %i.je = and i32 %i.jd, %i.iy
  %.not = icmp eq i32 %i.je, 0
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.jf = and i32 %i.jd, %i.iz
  store i32 %i.jf, ptr %i.jc, align 4, !tbaa !7
  %i.jg = load i32, ptr %.399134, align 4, !tbaa !7
  %i.jh = add i32 %i.jg, -65536
  store i32 %i.jh, ptr %.399134, align 4, !tbaa !7
  %.pre140 = load i32, ptr %i.a, align 4, !tbaa !13
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ji = phi i32 [ %i.ja, %bb.v ], [ %.pre140, %bb.w ] ; 2 uses
  %i.jj = load i32, ptr %0, align 8, !tbaa !20
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %.399134, i64 %i.jk
  %i.jm = add nuw nsw i32 %.4135, 1               ; 2 uses
  %i.jn = icmp slt i32 %i.jm, %i.ji
  br i1 %i.jn, label %bb.v, label %._crit_edge138

._crit_edge138:                                   ; preds = %bb.x, %._crit_edge133
  %i.jo = tail call ptr @unate_complement(ptr noundef nonnull %0)
  %i.jp = tail call ptr (ptr, ptr, ...) @sf_append(ptr noundef %i.hy, ptr noundef %i.jo) #11
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph129, %abs_covered_many.exit, %._crit_edge138, %bb.l
  %.0100 = phi ptr [ %0, %bb.l ], [ %i.jp, %._crit_edge138 ], [ %i.ec, %abs_covered_many.exit ], [ %i.ec, %.lr.ph129 ] ; 2 uses
  %.not106 = icmp eq ptr %i.bg, null
  br i1 %.not106, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.loopexit
  tail call void @free(ptr noundef nonnull %i.bg) #11
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %bb.y, %.loopexit, %bb.b
  %.1101 = phi ptr [ %i.e, %bb.b ], [ %i.u, %._crit_edge ], [ %.0100, %bb.y ], [ %.0100, %.loopexit ]
  ret ptr %.1101
}

declare void @sf_free(...) local_unnamed_addr #2

declare ptr @set_copy(...) local_unnamed_addr #2

declare ptr @set_or(...) local_unnamed_addr #2

declare ptr @sf_append(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @exact_minimum_cover(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [32 x %struct.anon], align 16       ; 7 uses
  %i.a = tail call i64 (...) @util_cpu_time() #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !13   ; 2 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 true)
  %3 = sub nuw nsw i32 32, %2                     ; 2 uses
  %i.e = tail call ptr (ptr, ...) @sf_save(ptr noundef nonnull %0) #11
  %i.f = tail call ptr (ptr, ...) @lex_sort(ptr noundef %i.e) #11 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 8 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19
  %i.i = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.h) #11 ; 5 uses
  store ptr %i.i, ptr %1, align 16, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %3, ptr %i.j, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.m = load i32, ptr %i.i, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !13   ; 2 uses
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !13
  %i.q = mul nsw i32 %i.o, %i.m
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.r
  %i.t = load i32, ptr %i.g, align 4, !tbaa !19
  %i.u = tail call ptr (ptr, i32, ...) @set_fill(ptr noundef %i.s, i32 noundef %i.t) #11 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !14   ; 3 uses
  %i.x = load i32, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !13   ; 2 uses
  %i.aa = add nsw i32 %i.z, -1
  %i.ab = mul nsw i32 %i.aa, %i.x
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ac
  %i.ae = mul nsw i32 %i.z, %i.x                  ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %.idx = shl nsw i64 %i.af, 2
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 %.idx
  %i.ah = icmp sgt i32 %i.ae, 0
  br i1 %i.ah, label %.lr.ph119, label %._crit_edge120

4:                                                ; preds = %bb.a
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4, !tbaa !19
  %7 = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %6) #11
  br label %bb.r

.lr.ph119:                                        ; preds = %bb.b, %.critedge
  %.1117 = phi i32 [ %.2.lcssa, %.critedge ], [ 1, %bb.b ] ; 3 uses
  %.096116 = phi ptr [ %i.fc, %.critedge ], [ %i.w, %bb.b ] ; 4 uses
  %i.ai = tail call i32 (ptr, ...) @set_ord(ptr noundef %.096116) #11
  %i.aj = load i32, ptr %i.g, align 4, !tbaa !19
  %i.ak = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.ai, i32 noundef %i.aj) #11 ; 4 uses
  %i.al = load i32, ptr %i.g, align 4, !tbaa !19  ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph119
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %i.ap = phi i32 [ %i.al, %.lr.ph ], [ %i.bk, %bb.e ] ; 2 uses
  %.095110 = phi i32 [ 0, %.lr.ph ], [ %i.bl, %bb.e ] ; 3 uses
  %i.aq = lshr i32 %.095110, 5
  %i.ar = add nuw nsw i32 %i.aq, 1
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.096116, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = and i32 %.095110, 31
  %i.aw = shl nuw i32 1, %i.av                    ; 2 uses
  %i.ax = and i32 %i.au, %i.aw
  %.not107 = icmp eq i32 %i.ax, 0
  br i1 %.not107, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !14
  %i.az = load i32, ptr %i.ak, align 8, !tbaa !20
  %i.ba = load i32, ptr %i.ao, align 4, !tbaa !13 ; 2 uses
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.ao, align 4, !tbaa !13
  %i.bc = mul nsw i32 %i.ba, %i.az
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.bd
  %i.bf = tail call ptr (ptr, i32, ...) @set_fill(ptr noundef %i.be, i32 noundef %i.ap) #11
  %i.bg = xor i32 %i.aw, -1
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.as ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !7
  %i.bj = and i32 %i.bi, %i.bg
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !7
  %.pre = load i32, ptr %i.g, align 4, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bk = phi i32 [ %i.ap, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.bl = add nuw nsw i32 %.095110, 1             ; 2 uses
  %i.bm = icmp slt i32 %i.bl, %i.bk
  br i1 %i.bm, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %.lr.ph119
  %i.bn = sext i32 %.1117 to i64
  %i.bo = getelementptr inbounds [16 x i8], ptr %1, i64 %i.bn ; 2 uses
  store ptr %i.ak, ptr %i.bo, align 16, !tbaa !43
  %i.bp = add nsw i32 %.1117, 1                   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 %3, ptr %i.bq, align 8, !tbaa !44
  %i.br = icmp sgt i32 %.1117, 0
  br i1 %i.br, label %.lr.ph113, label %.critedge

.lr.ph113:                                        ; preds = %._crit_edge
  %i.bs = icmp eq ptr %.096116, %i.ad
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph113, %bb.n
  %.2111 = phi i32 [ %i.bp, %.lr.ph113 ], [ %i.ey, %bb.n ] ; 4 uses
  %i.bt = zext nneg i32 %.2111 to i64
  %i.bu = getelementptr [16 x i8], ptr %1, i64 %i.bt ; 4 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 -8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !44 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bu, i64 -32    ; 2 uses
  %i.by = getelementptr i8, ptr %i.bu, i64 -24    ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !44 ; 2 uses
  %i.ca = icmp eq i32 %i.bw, %i.bz
  %i.cb = select i1 %i.ca, i1 true, i1 %i.bs
  br i1 %i.cb, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.cc = getelementptr i8, ptr %i.bu, i64 -16
  %i.cd = load ptr, ptr %i.cc, align 16, !tbaa !43 ; 6 uses
  %i.ce = load ptr, ptr %i.bx, align 16, !tbaa !43 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !19
  %i.ch = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 500, i32 noundef %i.cg) #11 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !14 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 12 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !13
  %i.cm = load i32, ptr %i.cd, align 8, !tbaa !20 ; 2 uses
  %i.cn = mul nsw i32 %i.cm, %i.cl                ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %.idx.i = shl nsw i64 %i.co, 2
  %i.cp = getelementptr inbounds i8, ptr %i.cj, i64 %.idx.i
  %i.cq = icmp sgt i32 %i.cn, 0
  br i1 %i.cq, label %.lr.ph104.i, label %._crit_edge105.thread.i

._crit_edge105.thread.i:                          ; preds = %bb.g
  %i.cr = tail call ptr (ptr, ...) @sf_contain(ptr noundef %i.ch) #11
  br label %unate_intersect.exit

.lr.ph104.i:                                      ; preds = %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !14
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %.pre130.i = load i32, ptr %i.ce, align 8, !tbaa !20
  br label %.lr.ph104.split.i

.lr.ph104.split.i:                                ; preds = %._crit_edge.split.us.i, %.lr.ph104.i
  %i.cw = phi i32 [ %i.dz, %._crit_edge.split.us.i ], [ %i.cm, %.lr.ph104.i ]
  %i.cx = phi i32 [ %i.ea, %._crit_edge.split.us.i ], [ %.pre130.i, %.lr.ph104.i ] ; 2 uses
  %.054101.i = phi ptr [ %.155.lcssa.i, %._crit_edge.split.us.i ], [ null, %.lr.ph104.i ] ; 2 uses
  %.057100.i = phi ptr [ %.158.lcssa.i, %._crit_edge.split.us.i ], [ %i.ch, %.lr.ph104.i ] ; 2 uses
  %.06099.i = phi ptr [ %.161.lcssa.i, %._crit_edge.split.us.i ], [ %i.ct, %.lr.ph104.i ] ; 2 uses
  %.06597.i = phi ptr [ %i.ec, %._crit_edge.split.us.i ], [ %i.cj, %.lr.ph104.i ] ; 2 uses
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !14 ; 2 uses
  %i.cz = load i32, ptr %i.cv, align 4, !tbaa !13
  %i.da = mul nsw i32 %i.cz, %i.cx                ; 2 uses
  %i.db = sext i32 %i.da to i64
  %.idx125.i = shl nsw i64 %i.db, 2
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 %.idx125.i
  %i.dd = icmp sgt i32 %i.da, 0
  br i1 %i.dd, label %.lr.ph.i, label %._crit_edge.split.us.i

.lr.ph.i:                                         ; preds = %.lr.ph104.split.i, %.thread80.us.i
  %.15589.us.i = phi ptr [ %.4.us.i, %.thread80.us.i ], [ %.054101.i, %.lr.ph104.split.i ] ; 4 uses
  %.15888.us.i = phi ptr [ %.259.us.i, %.thread80.us.i ], [ %.057100.i, %.lr.ph104.split.i ] ; 6 uses
  %.16187.us.i = phi ptr [ %.363.us.i, %.thread80.us.i ], [ %.06099.i, %.lr.ph104.split.i ] ; 3 uses
  %.06486.us.i = phi ptr [ %i.dx, %.thread80.us.i ], [ %i.cy, %.lr.ph104.split.i ] ; 2 uses
  %i.de = tail call i32 (ptr, ptr, ptr, ...) @set_andp(ptr noundef %.16187.us.i, ptr noundef %.06597.i, ptr noundef %.06486.us.i) #11
  %.not69.us.i = icmp eq i32 %i.de, 0
  br i1 %.not69.us.i, label %.thread80.us.i, label %.thread.us.i

.thread.us.i:                                     ; preds = %.lr.ph.i
  %i.df = getelementptr inbounds nuw i8, ptr %.15888.us.i, i64 12 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !13
  %i.dh = add nsw i32 %i.dg, 1                    ; 2 uses
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !13
  %i.di = getelementptr inbounds nuw i8, ptr %.15888.us.i, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !23
  %.not70.us.i = icmp slt i32 %i.dh, %i.dj
  br i1 %.not70.us.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.thread.us.i
  %i.dk = tail call ptr (ptr, ...) @sf_contain(ptr noundef nonnull %.15888.us.i) #11 ; 2 uses
  %i.dl = icmp eq ptr %.15589.us.i, null
  br i1 %i.dl, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dm = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef nonnull %.15589.us.i, ptr noundef %i.dk) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dn = phi ptr [ %i.dm, %bb.i ], [ %i.dk, %bb.h ]
  %i.do = load i32, ptr %i.cf, align 4, !tbaa !19
  %i.dp = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 500, i32 noundef %i.do) #11 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !14
  br label %.thread80.us.i

bb.k:                                             ; preds = %.thread.us.i
  %i.ds = load i32, ptr %.15888.us.i, align 8, !tbaa !20
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %.16187.us.i, i64 %i.dt
  br label %.thread80.us.i

.thread80.us.i:                                   ; preds = %bb.k, %bb.j, %.lr.ph.i
  %.363.us.i = phi ptr [ %i.dr, %bb.j ], [ %i.du, %bb.k ], [ %.16187.us.i, %.lr.ph.i ] ; 2 uses
  %.259.us.i = phi ptr [ %i.dp, %bb.j ], [ %.15888.us.i, %bb.k ], [ %.15888.us.i, %.lr.ph.i ] ; 2 uses
  %.4.us.i = phi ptr [ %i.dn, %bb.j ], [ %.15589.us.i, %bb.k ], [ %.15589.us.i, %.lr.ph.i ] ; 2 uses
  %i.dv = load i32, ptr %i.ce, align 8, !tbaa !20 ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %.06486.us.i, i64 %i.dw ; 2 uses
  %i.dy = icmp ult ptr %i.dx, %i.dc
  br i1 %i.dy, label %.lr.ph.i, label %._crit_edge.split.us.loopexit.i

._crit_edge.split.us.loopexit.i:                  ; preds = %.thread80.us.i
  %.pre131.i = load i32, ptr %i.cd, align 8, !tbaa !20
  br label %._crit_edge.split.us.i

._crit_edge.split.us.i:                           ; preds = %._crit_edge.split.us.loopexit.i, %.lr.ph104.split.i
  %i.dz = phi i32 [ %i.cw, %.lr.ph104.split.i ], [ %.pre131.i, %._crit_edge.split.us.loopexit.i ] ; 2 uses
  %i.ea = phi i32 [ %i.cx, %.lr.ph104.split.i ], [ %i.dv, %._crit_edge.split.us.loopexit.i ]
  %.161.lcssa.i = phi ptr [ %.06099.i, %.lr.ph104.split.i ], [ %.363.us.i, %._crit_edge.split.us.loopexit.i ]
  %.158.lcssa.i = phi ptr [ %.057100.i, %.lr.ph104.split.i ], [ %.259.us.i, %._crit_edge.split.us.loopexit.i ] ; 2 uses
  %.155.lcssa.i = phi ptr [ %.054101.i, %.lr.ph104.split.i ], [ %.4.us.i, %._crit_edge.split.us.loopexit.i ] ; 3 uses
  %i.eb = sext i32 %i.dz to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %.06597.i, i64 %i.eb ; 2 uses
  %i.ed = icmp ult ptr %i.ec, %i.cp
  br i1 %i.ed, label %.lr.ph104.split.i, label %._crit_edge105.i

._crit_edge105.i:                                 ; preds = %._crit_edge.split.us.i
  %i.ee = tail call ptr (ptr, ...) @sf_contain(ptr noundef %.158.lcssa.i) #11 ; 2 uses
  %i.ef = icmp eq ptr %.155.lcssa.i, null
  br i1 %i.ef, label %unate_intersect.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge105.i
  %i.eg = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef nonnull %.155.lcssa.i, ptr noundef %i.ee) #11
  br label %unate_intersect.exit

unate_intersect.exit:                             ; preds = %._crit_edge105.thread.i, %._crit_edge105.i, %bb.l
  %i.eh = phi ptr [ %i.eg, %bb.l ], [ %i.ee, %._crit_edge105.i ], [ %i.cr, %._crit_edge105.thread.i ] ; 2 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.bw, i32 %i.bz) ; 2 uses
  %i.ei = add nsw i32 %., -1                      ; 2 uses
  %i.ej = load i32, ptr @debug, align 4, !tbaa !7
  %i.ek = and i32 %i.ej, 2048
  %i.el = icmp ne i32 %i.ek, 0
  %i.em = icmp slt i32 %., 11
  %or.cond = and i1 %i.em, %i.el
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %unate_intersect.exit
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !13
  %i.ep = load i32, ptr %i.ck, align 4, !tbaa !13
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !13
  %i.es = tail call i64 (...) @util_cpu_time() #11
  %i.et = sub nsw i64 %i.es, %i.a
  %i.eu = tail call ptr @util_print_time(i64 noundef %i.et) #11
  %i.ev = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.ei, i32 noundef %i.eo, i32 noundef %i.ep, i32 noundef %i.er, ptr noundef %i.eu) ; 0 uses
  %i.ew = load ptr, ptr @stdout, align 8, !tbaa !46
  %i.ex = tail call i32 @fflush(ptr noundef %i.ew) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %unate_intersect.exit
  tail call void (ptr, ...) @sf_free(ptr noundef %i.ce) #11
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.cd) #11
  store ptr %i.eh, ptr %i.bx, align 16, !tbaa !43
  store i32 %i.ei, ptr %i.by, align 8, !tbaa !44
  %i.ey = add nsw i32 %.2111, -1                  ; 2 uses
  %i.ez = icmp sgt i32 %.2111, 2
  br i1 %i.ez, label %bb.f, label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.f, %._crit_edge
  %.2.lcssa = phi i32 [ %i.bp, %._crit_edge ], [ %.2111, %bb.f ], [ %i.ey, %bb.n ]
  %i.fa = load i32, ptr %i.f, align 8, !tbaa !20
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %.096116, i64 %i.fb ; 2 uses
  %i.fd = icmp ult ptr %i.fc, %i.ag
  br i1 %i.fd, label %.lr.ph119, label %._crit_edge120.loopexit

._crit_edge120.loopexit:                          ; preds = %.critedge
  %.pre128 = load ptr, ptr %1, align 16, !tbaa !43
  br label %._crit_edge120

._crit_edge120:                                   ; preds = %._crit_edge120.loopexit, %bb.b
  %i.fe = phi ptr [ %.pre128, %._crit_edge120.loopexit ], [ %i.i, %bb.b ] ; 6 uses
  %i.ff = load i32, ptr %i.g, align 4, !tbaa !19  ; 2 uses
  %i.fg = icmp slt i32 %i.ff, 33
  %i.fh = add nsw i32 %i.ff, -1
  %i.fi = lshr i32 %i.fh, 3
  %i.fj = and i32 %i.fi, 536870908
  %i.fk = add nuw nsw i32 %i.fj, 8
  %narrow = select i1 %i.fg, i32 8, i32 %i.fk
  %i.fl = zext nneg i32 %narrow to i64
  %i.fm = tail call noalias ptr @malloc(i64 noundef %i.fl) #12
  %i.fn = load i32, ptr %i.g, align 4, !tbaa !19
  %i.fo = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.fm, i32 noundef %i.fn) #11
  %i.fp = load i32, ptr %i.g, align 4, !tbaa !19
  %i.fq = tail call ptr (ptr, i32, ...) @set_fill(ptr noundef %i.fo, i32 noundef %i.fp) #11 ; 7 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !14 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !13
  %i.fv = load i32, ptr %i.fe, align 8, !tbaa !20
  %i.fw = mul nsw i32 %i.fv, %i.fu                ; 2 uses
  %i.fx = sext i32 %i.fw to i64
  %.idx125 = shl nsw i64 %i.fx, 2
  %i.fy = getelementptr inbounds i8, ptr %i.fs, i64 %.idx125
  %i.fz = icmp sgt i32 %i.fw, 0
  br i1 %i.fz, label %.lr.ph123.preheader, label %._crit_edge124

.lr.ph123.preheader:                              ; preds = %._crit_edge120
  %scevgep143 = getelementptr i8, ptr %i.fq, i64 4
  br label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %.loopexit
  %.197121 = phi ptr [ %i.hi, %.loopexit ], [ %i.fs, %.lr.ph123.preheader ] ; 7 uses
  %i.ga = load i32, ptr %i.fq, align 4, !tbaa !7  ; 2 uses
  %i.gb = and i32 %i.ga, 1023
  %i.gc = load i32, ptr %.197121, align 4, !tbaa !7
  %i.gd = and i32 %i.gc, -1024
  %i.ge = or disjoint i32 %i.gd, %i.gb
  store i32 %i.ge, ptr %.197121, align 4, !tbaa !7
  %i.gf = and i32 %i.ga, 1023                     ; 3 uses
  %i.gg = zext nneg i32 %i.gf to i64              ; 6 uses
  %i.gh = icmp ne i32 %i.gf, 0
  %.neg = sext i1 %i.gh to i64
  %i.gi = add nuw nsw i64 %i.gg, 1
  %i.gj = add nsw i64 %i.gi, %.neg                ; 3 uses
  %min.iters.check = icmp ult i64 %i.gj, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph123
  %.not148 = icmp eq i32 %i.gf, 0
  %i.gk = select i1 %.not148, i64 0, i64 4        ; 2 uses
  %scevgep = getelementptr i8, ptr %.197121, i64 %i.gk
  %scevgep140.a = getelementptr i8, ptr %.197121, i64 4
  %i.gl = shl nuw nsw i64 %i.gg, 2                ; 2 uses
  %scevgep141 = getelementptr i8, ptr %scevgep140.a, i64 %i.gl
  %scevgep142.a = getelementptr i8, ptr %i.fq, i64 %i.gk
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.gl
  %bound0 = icmp ult ptr %scevgep, %scevgep144
  %bound1 = icmp ult ptr %scevgep142.a, %scevgep141
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gj, -8                      ; 3 uses
  %i.gm = sub nsw i64 %i.gg, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gn = sub i64 %i.gg, %index                   ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -12
  %i.gq = getelementptr inbounds i8, ptr %i.go, i64 -28
  %wide.load = load <4 x i32>, ptr %i.gp, align 4, !tbaa !7, !alias.scope !47
  %wide.load145.a = load <4 x i32>, ptr %i.gq, align 4, !tbaa !7, !alias.scope !47
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.197121, i64 %i.gn ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 -12 ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gr, i64 -28 ; 2 uses
  %wide.load146 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !7, !alias.scope !48, !noalias !47
  %wide.load147 = load <4 x i32>, ptr %i.gt, align 4, !tbaa !7, !alias.scope !48, !noalias !47
  %i.gu = xor <4 x i32> %wide.load146, splat (i32 -1)
  %i.gv = xor <4 x i32> %wide.load147, splat (i32 -1)
  %i.gw = and <4 x i32> %wide.load, %i.gu
  %i.gx = and <4 x i32> %wide.load145.a, %i.gv
  store <4 x i32> %i.gw, ptr %i.gs, align 4, !tbaa !7, !alias.scope !48, !noalias !47
  store <4 x i32> %i.gx, ptr %i.gt, align 4, !tbaa !7, !alias.scope !48, !noalias !47
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gy = icmp eq i64 %index.next, %n.vec
  br i1 %i.gy, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gj, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph123, %middle.block
  %indvars.iv.ph = phi i64 [ %i.gg, %vector.memcheck ], [ %i.gg, %.lr.ph123 ], [ %i.gm, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !7
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.197121, i64 %indvars.iv ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !7
  %i.hd = xor i32 %i.hc, -1
  %i.he = and i32 %i.ha, %i.hd
  store i32 %i.he, ptr %i.hb, align 4, !tbaa !7
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.hf = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.hf, label %scalar.ph, label %.loopexit, !llvm.loop !41

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.hg = load i32, ptr %i.fe, align 8, !tbaa !20
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %.197121, i64 %i.hh ; 2 uses
  %i.hj = icmp ult ptr %i.hi, %i.fy
  br i1 %i.hj, label %.lr.ph123, label %._crit_edge124.thread

._crit_edge124:                                   ; preds = %._crit_edge120
  %.not105 = icmp eq ptr %i.fq, null
  br i1 %.not105, label %bb.o, label %._crit_edge124.thread

._crit_edge124.thread:                            ; preds = %.loopexit, %._crit_edge124
  tail call void @free(ptr noundef nonnull %i.fq) #11
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge124.thread, %._crit_edge124
  %i.hk = load i32, ptr @debug, align 4, !tbaa !7
  %i.hl = and i32 %i.hk, 4096
  %.not106 = icmp eq i32 %i.hl, 0
  br i1 %.not106, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void (ptr, ...) @sf_print(ptr noundef nonnull %i.fe) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.f) #11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %4
  %.098 = phi ptr [ %7, %4 ], [ %i.fe, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret ptr %.098
}

declare i64 @util_cpu_time(...) local_unnamed_addr #2

declare ptr @lex_sort(...) local_unnamed_addr #2

declare ptr @sf_save(...) local_unnamed_addr #2

declare ptr @set_fill(...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare ptr @util_print_time(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #5

declare void @sf_print(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @unate_intersect(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19
  %i.c = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 500, i32 noundef %i.b) #11 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13
  %i.h = load i32, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.i = mul nsw i32 %i.h, %i.g                   ; 2 uses
  %i.j = sext i32 %i.i to i64
  %.idx = shl nsw i64 %i.j, 2
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %.idx ; 2 uses
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %.lr.ph104, label %._crit_edge105.thread

._crit_edge105.thread:                            ; preds = %bb.a
  %i.m = tail call ptr (ptr, ...) @sf_contain(ptr noundef %i.c) #11
  br label %bb.p

.lr.ph104:                                        ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.not = icmp eq i32 %2, 0
  %.pre130 = load i32, ptr %1, align 8, !tbaa !20 ; 2 uses
  br i1 %.not, label %.lr.ph104.split, label %.lr.ph104.split.us

.lr.ph104.split.us:                               ; preds = %.lr.ph104, %._crit_edge.split.us119
  %i.r = phi i32 [ %i.bb, %._crit_edge.split.us119 ], [ %i.h, %.lr.ph104 ]
  %i.s = phi i32 [ %i.bc, %._crit_edge.split.us119 ], [ %.pre130, %.lr.ph104 ] ; 2 uses
  %.0102.us = phi i32 [ %.1.lcssa.us, %._crit_edge.split.us119 ], [ 0, %.lr.ph104 ] ; 2 uses
  %.054101.us = phi ptr [ %.155.lcssa.us, %._crit_edge.split.us119 ], [ null, %.lr.ph104 ] ; 2 uses
  %.057100.us = phi ptr [ %.158.lcssa.us, %._crit_edge.split.us119 ], [ %i.c, %.lr.ph104 ] ; 2 uses
  %.06099.us = phi ptr [ %.161.lcssa.us, %._crit_edge.split.us119 ], [ %i.o, %.lr.ph104 ] ; 2 uses
  %.06597.us = phi ptr [ %i.be, %._crit_edge.split.us119 ], [ %i.e, %.lr.ph104 ] ; 3 uses
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !14   ; 2 uses
  %i.u = load i32, ptr %i.q, align 4, !tbaa !13
  %i.v = mul nsw i32 %i.s, %i.u                   ; 2 uses
  %i.w = sext i32 %i.v to i64
  %.idx126 = shl nsw i64 %i.w, 2
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 %.idx126
  %i.y = icmp sgt i32 %i.v, 0
  br i1 %i.y, label %.lr.ph.us, label %._crit_edge.split.us119

.lr.ph.us:                                        ; preds = %.lr.ph104.split.us, %.thread80.us115
  %.190.us = phi i32 [ %.279.us, %.thread80.us115 ], [ %.0102.us, %.lr.ph104.split.us ] ; 5 uses
  %.15589.us109 = phi ptr [ %.4.us118, %.thread80.us115 ], [ %.054101.us, %.lr.ph104.split.us ] ; 5 uses
  %.15888.us110 = phi ptr [ %.259.us117, %.thread80.us115 ], [ %.057100.us, %.lr.ph104.split.us ] ; 9 uses
  %.16187.us111 = phi ptr [ %.363.us116, %.thread80.us115 ], [ %.06099.us, %.lr.ph104.split.us ] ; 5 uses
  %.06486.us112 = phi ptr [ %i.az, %.thread80.us115 ], [ %i.t, %.lr.ph104.split.us ] ; 3 uses
  %i.z = tail call i32 (ptr, ptr, ptr, ...) @set_andp(ptr noundef %.16187.us111, ptr noundef %.06597.us, ptr noundef %.06486.us112) #11
  %.not127 = icmp eq i32 %i.z, 0
  br i1 %.not127, label %.thread80.us115, label %bb.b

bb.b:                                             ; preds = %.lr.ph.us
  %i.aa = tail call i32 (ptr, ...) @set_ord(ptr noundef %.16187.us111) #11 ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, %.190.us
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = icmp slt i32 %i.aa, %.190.us
  br i1 %i.ac, label %.thread80.us115, label %.thread.us113

bb.d:                                             ; preds = %bb.b
  %.not.us = icmp eq ptr %.15589.us109, null
  br i1 %.not.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %.15589.us109) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.15888.us110, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !14 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.15888.us110, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !13
  %i.ag = tail call ptr (ptr, ptr, ptr, ...) @set_and(ptr noundef %i.ae, ptr noundef %.06597.us, ptr noundef %.06486.us112) #11 ; 0 uses
  br label %.thread.us113

.thread.us113:                                    ; preds = %bb.f, %bb.c
  %.278.us = phi i32 [ %i.aa, %bb.f ], [ %.190.us, %bb.c ] ; 2 uses
  %.377.us = phi ptr [ null, %bb.f ], [ %.15589.us109, %bb.c ] ; 3 uses
  %.26276.us = phi ptr [ %i.ae, %bb.f ], [ %.16187.us111, %bb.c ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.15888.us110, i64 12 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !13
  %i.aj = add nsw i32 %i.ai, 1                    ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.15888.us110, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !23
  %.not70.us114 = icmp slt i32 %i.aj, %i.al
  br i1 %.not70.us114, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.thread.us113
  %i.am = tail call ptr (ptr, ...) @sf_contain(ptr noundef nonnull %.15888.us110) #11 ; 2 uses
  %i.an = icmp eq ptr %.377.us, null
  br i1 %i.an, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef nonnull %.377.us, ptr noundef %i.am) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ap = phi ptr [ %i.ao, %bb.h ], [ %i.am, %bb.g ]
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !19
  %i.ar = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 500, i32 noundef %i.aq) #11 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !14
  br label %.thread80.us115

bb.j:                                             ; preds = %.thread.us113
  %i.au = load i32, ptr %.15888.us110, align 8, !tbaa !20
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %.26276.us, i64 %i.av
  br label %.thread80.us115

.thread80.us115:                                  ; preds = %.lr.ph.us, %bb.j, %bb.i, %bb.c
  %.279.us = phi i32 [ %.278.us, %bb.i ], [ %.278.us, %bb.j ], [ %.190.us, %bb.c ], [ %.190.us, %.lr.ph.us ] ; 2 uses
  %.363.us116 = phi ptr [ %i.at, %bb.i ], [ %i.aw, %bb.j ], [ %.16187.us111, %bb.c ], [ %.16187.us111, %.lr.ph.us ] ; 2 uses
  %.259.us117 = phi ptr [ %i.ar, %bb.i ], [ %.15888.us110, %bb.j ], [ %.15888.us110, %bb.c ], [ %.15888.us110, %.lr.ph.us ] ; 2 uses
  %.4.us118 = phi ptr [ %i.ap, %bb.i ], [ %.377.us, %bb.j ], [ %.15589.us109, %bb.c ], [ %.15589.us109, %.lr.ph.us ] ; 2 uses
  %i.ax = load i32, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %.06486.us112, i64 %i.ay ; 2 uses
  %i.ba = icmp ult ptr %i.az, %i.x
  br i1 %i.ba, label %.lr.ph.us, label %._crit_edge.split.us119.loopexit

._crit_edge.split.us119.loopexit:                 ; preds = %.thread80.us115
  %.pre129 = load i32, ptr %0, align 8, !tbaa !20
  br label %._crit_edge.split.us119

._crit_edge.split.us119:                          ; preds = %._crit_edge.split.us119.loopexit, %.lr.ph104.split.us
  %i.bb = phi i32 [ %i.r, %.lr.ph104.split.us ], [ %.pre129, %._crit_edge.split.us119.loopexit ] ; 2 uses
  %i.bc = phi i32 [ %i.s, %.lr.ph104.split.us ], [ %i.ax, %._crit_edge.split.us119.loopexit ]
  %.161.lcssa.us = phi ptr [ %.06099.us, %.lr.ph104.split.us ], [ %.363.us116, %._crit_edge.split.us119.loopexit ]
  %.158.lcssa.us = phi ptr [ %.057100.us, %.lr.ph104.split.us ], [ %.259.us117, %._crit_edge.split.us119.loopexit ] ; 2 uses
  %.155.lcssa.us = phi ptr [ %.054101.us, %.lr.ph104.split.us ], [ %.4.us118, %._crit_edge.split.us119.loopexit ] ; 2 uses
  %.1.lcssa.us = phi i32 [ %.0102.us, %.lr.ph104.split.us ], [ %.279.us, %._crit_edge.split.us119.loopexit ]
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %.06597.us, i64 %i.bd ; 2 uses
  %i.bf = icmp ult ptr %i.be, %i.k
  br i1 %i.bf, label %.lr.ph104.split.us, label %._crit_edge105

.lr.ph104.split:                                  ; preds = %.lr.ph104, %._crit_edge.split.us
  %i.bg = phi i32 [ %i.cj, %._crit_edge.split.us ], [ %i.h, %.lr.ph104 ]
  %i.bh = phi i32 [ %i.ck, %._crit_edge.split.us ], [ %.pre130, %.lr.ph104 ] ; 2 uses
  %.054101 = phi ptr [ %.155.lcssa, %._crit_edge.split.us ], [ null, %.lr.ph104 ] ; 2 uses
  %.057100 = phi ptr [ %.158.lcssa, %._crit_edge.split.us ], [ %i.c, %.lr.ph104 ] ; 2 uses
  %.06099 = phi ptr [ %.161.lcssa, %._crit_edge.split.us ], [ %i.o, %.lr.ph104 ] ; 2 uses
  %.06597 = phi ptr [ %i.cm, %._crit_edge.split.us ], [ %i.e, %.lr.ph104 ] ; 2 uses
  %i.bi = load ptr, ptr %i.p, align 8, !tbaa !14  ; 2 uses
  %i.bj = load i32, ptr %i.q, align 4, !tbaa !13
  %i.bk = mul nsw i32 %i.bh, %i.bj                ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %.idx125 = shl nsw i64 %i.bl, 2
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 %.idx125
  %i.bn = icmp sgt i32 %i.bk, 0
  br i1 %i.bn, label %.lr.ph, label %._crit_edge.split.us

.lr.ph:                                           ; preds = %.lr.ph104.split, %.thread80.us
  %.15589.us = phi ptr [ %.4.us, %.thread80.us ], [ %.054101, %.lr.ph104.split ] ; 4 uses
  %.15888.us = phi ptr [ %.259.us, %.thread80.us ], [ %.057100, %.lr.ph104.split ] ; 6 uses
  %.16187.us = phi ptr [ %.363.us, %.thread80.us ], [ %.06099, %.lr.ph104.split ] ; 3 uses
  %.06486.us = phi ptr [ %i.ch, %.thread80.us ], [ %i.bi, %.lr.ph104.split ] ; 2 uses
  %i.bo = tail call i32 (ptr, ptr, ptr, ...) @set_andp(ptr noundef %.16187.us, ptr noundef %.06597, ptr noundef %.06486.us) #11
  %.not69.us = icmp eq i32 %i.bo, 0
  br i1 %.not69.us, label %.thread80.us, label %.thread.us

.thread.us:                                       ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %.15888.us, i64 12 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !13
  %i.br = add nsw i32 %i.bq, 1                    ; 2 uses
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.15888.us, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !23
  %.not70.us = icmp slt i32 %i.br, %i.bt
  br i1 %.not70.us, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.thread.us
  %i.bu = tail call ptr (ptr, ...) @sf_contain(ptr noundef nonnull %.15888.us) #11 ; 2 uses
  %i.bv = icmp eq ptr %.15589.us, null
  br i1 %i.bv, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef nonnull %.15589.us, ptr noundef %i.bu) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bx = phi ptr [ %i.bw, %bb.l ], [ %i.bu, %bb.k ]
  %i.by = load i32, ptr %i.a, align 4, !tbaa !19
  %i.bz = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 500, i32 noundef %i.by) #11 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !14
  br label %.thread80.us

bb.n:                                             ; preds = %.thread.us
  %i.cc = load i32, ptr %.15888.us, align 8, !tbaa !20
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %.16187.us, i64 %i.cd
  br label %.thread80.us

.thread80.us:                                     ; preds = %bb.n, %bb.m, %.lr.ph
  %.363.us = phi ptr [ %i.cb, %bb.m ], [ %i.ce, %bb.n ], [ %.16187.us, %.lr.ph ] ; 2 uses
  %.259.us = phi ptr [ %i.bz, %bb.m ], [ %.15888.us, %bb.n ], [ %.15888.us, %.lr.ph ] ; 2 uses
  %.4.us = phi ptr [ %i.bx, %bb.m ], [ %.15589.us, %bb.n ], [ %.15589.us, %.lr.ph ] ; 2 uses
  %i.cf = load i32, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %.06486.us, i64 %i.cg ; 2 uses
  %i.ci = icmp ult ptr %i.ch, %i.bm
  br i1 %i.ci, label %.lr.ph, label %._crit_edge.split.us.loopexit

._crit_edge.split.us.loopexit:                    ; preds = %.thread80.us
  %.pre131 = load i32, ptr %0, align 8, !tbaa !20
  br label %._crit_edge.split.us

._crit_edge.split.us:                             ; preds = %._crit_edge.split.us.loopexit, %.lr.ph104.split
  %i.cj = phi i32 [ %i.bg, %.lr.ph104.split ], [ %.pre131, %._crit_edge.split.us.loopexit ] ; 2 uses
  %i.ck = phi i32 [ %i.bh, %.lr.ph104.split ], [ %i.cf, %._crit_edge.split.us.loopexit ]
  %.161.lcssa = phi ptr [ %.06099, %.lr.ph104.split ], [ %.363.us, %._crit_edge.split.us.loopexit ]
  %.158.lcssa = phi ptr [ %.057100, %.lr.ph104.split ], [ %.259.us, %._crit_edge.split.us.loopexit ] ; 2 uses
  %.155.lcssa = phi ptr [ %.054101, %.lr.ph104.split ], [ %.4.us, %._crit_edge.split.us.loopexit ] ; 2 uses
  %i.cl = sext i32 %i.cj to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %.06597, i64 %i.cl ; 2 uses
  %i.cn = icmp ult ptr %i.cm, %i.k
  br i1 %i.cn, label %.lr.ph104.split, label %._crit_edge105

._crit_edge105:                                   ; preds = %._crit_edge.split.us119, %._crit_edge.split.us
  %.057.lcssa = phi ptr [ %.158.lcssa, %._crit_edge.split.us ], [ %.158.lcssa.us, %._crit_edge.split.us119 ]
  %.054.lcssa = phi ptr [ %.155.lcssa, %._crit_edge.split.us ], [ %.155.lcssa.us, %._crit_edge.split.us119 ] ; 2 uses
  %i.co = tail call ptr (ptr, ...) @sf_contain(ptr noundef %.057.lcssa) #11 ; 2 uses
  %i.cp = icmp eq ptr %.054.lcssa, null
  br i1 %i.cp, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge105
  %i.cq = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef nonnull %.054.lcssa, ptr noundef %i.co) #11
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge105.thread, %._crit_edge105, %bb.o
  %i.cr = phi ptr [ %i.cq, %bb.o ], [ %i.co, %._crit_edge105 ], [ %i.m, %._crit_edge105.thread ]
  ret ptr %i.cr
}

declare i32 @set_andp(...) local_unnamed_addr #2

declare ptr @set_and(...) local_unnamed_addr #2

declare ptr @sf_contain(...) local_unnamed_addr #2

declare ptr @sf_union(...) local_unnamed_addr #2

declare i32 @setp_disjoint(...) local_unnamed_addr #2

declare ptr @sf_count_restricted(...) local_unnamed_addr #2

declare void @fatal(...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 int", !8, i64 0}
!10 = !{!"cdata_struct", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !6, i64 36, !6, i64 40}
!11 = !{!"p1 _ZTS10set_family", !8, i64 0}
!12 = !{!"set_family", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !9, i64 24, !11, i64 32}
!13 = !{!12, !6, i64 12}
!14 = !{!12, !9, i64 24}
!15 = !{!"any p2 pointer", !8, i64 0}
!16 = !{!"p2 int", !15, i64 0}
!17 = !{!"cube_struct", !6, i64 0, !6, i64 4, !6, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !16, i64 72, !16, i64 80, !9, i64 88, !9, i64 96, !6, i64 104, !6, i64 108, !9, i64 112, !6, i64 120, !6, i64 124}
!18 = !{!17, !6, i64 0}
!19 = !{!12, !6, i64 4}
!20 = !{!12, !6, i64 0}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = !{!12, !6, i64 8}
!24 = !{!9, !9, i64 0}
!25 = !{!10, !6, i64 36}
!26 = !{!10, !9, i64 0}
!27 = !{!17, !6, i64 4}
!28 = !{!10, !9, i64 24}
!29 = distinct !{!29, !21, !22}
!30 = distinct !{!30, !36}
!31 = distinct !{!31, !21}
!32 = distinct !{!32, !36}
!33 = distinct !{!33, !21, !22}
!34 = distinct !{!34, !36}
!35 = distinct !{!35, !21}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = distinct !{!37, !"LVerDomain"}
!38 = distinct !{!38, !37}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !21, !22}
!41 = distinct !{!41, !21}
!42 = !{!"", !11, i64 0, !6, i64 8}
!43 = !{!42, !11, i64 0}
!44 = !{!42, !6, i64 8}
!45 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!38}
!48 = !{!39}
end_hunk_0
