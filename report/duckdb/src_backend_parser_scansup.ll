Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/src_backend_parser_scansup?download=true
inline.NumInlined: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN17duckdb_libpgqueryL27pg_preserve_identifier_caseE = internal thread_local unnamed_addr global i8 0, align 1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN17duckdb_libpgquery28downcase_truncate_identifierEPKcib(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN17duckdb_libpgquery19downcase_identifierEPKcibb(ptr noundef %0, i32 noundef %1, i1 zeroext poison, i1 zeroext poison)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN17duckdb_libpgquery19downcase_identifierEPKcibb(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i1 zeroext %2, i1 zeroext %3) local_unnamed_addr #0 {
bb.a:
  %4 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  %i.a = add nsw i32 %1, 1
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noundef ptr @_ZN17duckdb_libpgquery6pallocEm(i64 noundef %i.b) ; 16 uses
  %5 = ptrtoaddr ptr %i.c to i64                  ; 2 uses
  %i.d = tail call noundef i32 @_ZN17duckdb_libpgquery31pg_database_encoding_max_lengthEv()
  %.not29 = icmp eq i32 %i.d, 1
  %i.e = icmp sgt i32 %1, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN17duckdb_libpgqueryL27pg_preserve_identifier_caseE)
  %i.g = load i8, ptr %i.f, align 1, !tbaa !8, !range !9, !noundef !10
  %i.h = trunc nuw i8 %i.g to i1
  %wide.trip.count43 = zext nneg i32 %1 to i64    ; 17 uses
  br i1 %i.h, label %iter.check73, label %.lr.ph.split

iter.check73:                                     ; preds = %.lr.ph
  %min.iters.check60 = icmp ult i32 %1, 4
  %i.i = sub i64 %4, %5
  %diff.check59 = icmp ugt i64 %i.i, -32
  %or.cond86 = or i1 %min.iters.check60, %diff.check59
  br i1 %or.cond86, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check61

vector.main.loop.iter.check61:                    ; preds = %iter.check73
  %min.iters.check62 = icmp ult i32 %1, 32
  br i1 %min.iters.check62, label %vec.epilog.ph77, label %vector.ph63

vector.ph63:                                      ; preds = %vector.main.loop.iter.check61
  %i.j = and i64 %wide.trip.count43, 28
  %n.vec64 = and i64 %wide.trip.count43, 2147483616 ; 4 uses
  br label %vector.body65

vector.body65:                                    ; preds = %vector.ph63, %vector.body65
  %index66 = phi i64 [ 0, %vector.ph63 ], [ %index.next69, %vector.body65 ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index66 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load67 = load <16 x i8>, ptr %i.k, align 1, !tbaa !19
  %wide.load68 = load <16 x i8>, ptr %i.l, align 1, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %index66 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <16 x i8> %wide.load67, ptr %i.m, align 1, !tbaa !19
  store <16 x i8> %wide.load68, ptr %i.n, align 1, !tbaa !19
  %index.next69 = add nuw i64 %index66, 32        ; 2 uses
  %i.o = icmp eq i64 %index.next69, %n.vec64
  br i1 %i.o, label %middle.block70, label %vector.body65, !llvm.loop !11

middle.block70:                                   ; preds = %vector.body65
  %cmp.n71 = icmp eq i64 %n.vec64, %wide.trip.count43
  br i1 %cmp.n71, label %._crit_edge, label %vec.epilog.iter.check75

vec.epilog.iter.check75:                          ; preds = %middle.block70
  %min.epilog.iters.check76 = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check76, label %.lr.ph.split.us.preheader, label %vec.epilog.ph77, !prof !23

vec.epilog.ph77:                                  ; preds = %vector.main.loop.iter.check61, %vec.epilog.iter.check75
  %vec.epilog.resume.val72 = phi i64 [ %n.vec64, %vec.epilog.iter.check75 ], [ 0, %vector.main.loop.iter.check61 ]
  %n.vec78 = and i64 %wide.trip.count43, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body79

vec.epilog.vector.body79:                         ; preds = %vec.epilog.vector.body79, %vec.epilog.ph77
  %index80 = phi i64 [ %vec.epilog.resume.val72, %vec.epilog.ph77 ], [ %index.next82, %vec.epilog.vector.body79 ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %index80
  %wide.load81 = load <4 x i8>, ptr %i.p, align 1, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 %index80
  store <4 x i8> %wide.load81, ptr %i.q, align 1, !tbaa !19
  %index.next82 = add nuw i64 %index80, 4         ; 2 uses
  %i.r = icmp eq i64 %index.next82, %n.vec78
  br i1 %i.r, label %vec.epilog.middle.block83, label %vec.epilog.vector.body79, !llvm.loop !12

vec.epilog.middle.block83:                        ; preds = %vec.epilog.vector.body79
  %cmp.n84 = icmp eq i64 %n.vec78, %wide.trip.count43
  br i1 %cmp.n84, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check73, %vec.epilog.iter.check75, %vec.epilog.middle.block83
  %indvars.iv40.ph = phi i64 [ 0, %iter.check73 ], [ %n.vec64, %vec.epilog.iter.check75 ], [ %n.vec78, %vec.epilog.middle.block83 ] ; 3 uses
  %xtraiter90 = and i64 %wide.trip.count43, 3     ; 2 uses
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %indvars.iv40.prol = phi i64 [ %indvars.iv.next41.prol, %.lr.ph.split.us.prol ], [ %indvars.iv40.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv40.prol
  %i.t = load i8, ptr %i.s, align 1, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv40.prol
  store i8 %i.t, ptr %i.u, align 1, !tbaa !19
  %indvars.iv.next41.prol = add nuw nsw i64 %indvars.iv40.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter90
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !13

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %indvars.iv40.unr = phi i64 [ %indvars.iv40.ph, %.lr.ph.split.us.preheader ], [ %indvars.iv.next41.prol, %.lr.ph.split.us.prol ]
  %i.v = sub nsw i64 %indvars.iv40.ph, %wide.trip.count43
  %i.w = icmp ugt i64 %i.v, -4
  br i1 %i.w, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %indvars.iv40 = phi i64 [ %indvars.iv.next41.3, %.lr.ph.split.us ], [ %indvars.iv40.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv40
  %i.y = load i8, ptr %i.x, align 1, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv40
  store i8 %i.y, ptr %i.z, align 1, !tbaa !19
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next41
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next41
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !19
  %indvars.iv.next41.1 = add nuw nsw i64 %indvars.iv40, 2 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next41.1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next41.1
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !19
  %indvars.iv.next41.2 = add nuw nsw i64 %indvars.iv40, 3 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next41.2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next41.2
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !19
  %indvars.iv.next41.3 = add nuw nsw i64 %indvars.iv40, 4 ; 2 uses
  %exitcond44.not.3 = icmp eq i64 %indvars.iv.next41.3, %wide.trip.count43
  br i1 %exitcond44.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !14

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not29, label %.lr.ph.split.split, label %iter.check

iter.check:                                       ; preds = %.lr.ph.split
  %min.iters.check = icmp ult i32 %1, 8
  %i.aj = sub i64 %4, %5
  %diff.check = icmp ugt i64 %i.aj, -32
  %or.cond87 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond87, label %.lr.ph.split.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check51 = icmp ult i32 %1, 32
  br i1 %min.iters.check51, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ak = and i64 %wide.trip.count43, 24
  %n.vec = and i64 %wide.trip.count43, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <16 x i8>, ptr %i.al, align 1, !tbaa !19 ; 3 uses
  %wide.load52 = load <16 x i8>, ptr %i.am, align 1, !tbaa !19 ; 3 uses
  %i.an = add <16 x i8> %wide.load, splat (i8 -65)
  %i.ao = add <16 x i8> %wide.load52, splat (i8 -65)
  %i.ap = icmp ult <16 x i8> %i.an, splat (i8 26)
  %i.aq = icmp ult <16 x i8> %i.ao, splat (i8 26)
  %i.ar = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.as = or disjoint <16 x i8> %wide.load52, splat (i8 32)
  %i.at = select <16 x i1> %i.ap, <16 x i8> %i.ar, <16 x i8> %wide.load
  %i.au = select <16 x i1> %i.aq, <16 x i8> %i.as, <16 x i8> %wide.load52
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <16 x i8> %i.at, ptr %i.av, align 1, !tbaa !19
  store <16 x i8> %i.au, ptr %i.aw, align 1, !tbaa !19
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count43
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.split.us.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec53 = and i64 %wide.trip.count43, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index54 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next56, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %index54
  %wide.load55 = load <8 x i8>, ptr %i.ay, align 1, !tbaa !19 ; 3 uses
  %i.az = add <8 x i8> %wide.load55, splat (i8 -65)
  %i.ba = icmp ult <8 x i8> %i.az, splat (i8 26)
  %i.bb = or disjoint <8 x i8> %wide.load55, splat (i8 32)
  %i.bc = select <8 x i1> %i.ba, <8 x i8> %i.bb, <8 x i8> %wide.load55
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 %index54
  store <8 x i8> %i.bc, ptr %i.bd, align 1, !tbaa !19
  %index.next56 = add nuw i64 %index54, 8         ; 2 uses
  %i.be = icmp eq i64 %index.next56, %n.vec53
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n57 = icmp eq i64 %n.vec53, %wide.trip.count43
  br i1 %cmp.n57, label %._crit_edge, label %.lr.ph.split.split.us.preheader

.lr.ph.split.split.us.preheader:                  ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec53, %vec.epilog.middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count43, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.us.prol.loopexit, label %.lr.ph.split.split.us.prol

.lr.ph.split.split.us.prol:                       ; preds = %.lr.ph.split.split.us.preheader
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.ph
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !19  ; 3 uses
  %i.bh = add i8 %i.bg, -65
  %or.cond.us.prol = icmp ult i8 %i.bh, 26
  %i.bi = or disjoint i8 %i.bg, 32
  %.0.us26.prol = select i1 %or.cond.us.prol, i8 %i.bi, i8 %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.ph
  store i8 %.0.us26.prol, ptr %i.bj, align 1, !tbaa !19
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.split.split.us.prol.loopexit

.lr.ph.split.split.us.prol.loopexit:              ; preds = %.lr.ph.split.split.us.prol, %.lr.ph.split.split.us.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next.prol, %.lr.ph.split.split.us.prol ]
  %i.bk = add nsw i64 %wide.trip.count43, -1
  %i.bl = icmp eq i64 %indvars.iv.ph, %i.bk
  br i1 %i.bl, label %._crit_edge, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.prol.loopexit, %.lr.ph.split.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.split.split.us ], [ %indvars.iv.unr, %.lr.ph.split.split.us.prol.loopexit ] ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !19  ; 3 uses
  %i.bo = add i8 %i.bn, -65
  %or.cond.us = icmp ult i8 %i.bo, 26
  %i.bp = or disjoint i8 %i.bn, 32
  %.0.us26 = select i1 %or.cond.us, i8 %i.bp, i8 %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  store i8 %.0.us26, ptr %i.bq, align 1, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !19  ; 3 uses
  %i.bt = add i8 %i.bs, -65
  %or.cond.us.1 = icmp ult i8 %i.bt, 26
  %i.bu = or disjoint i8 %i.bs, 32
  %.0.us26.1 = select i1 %or.cond.us.1, i8 %i.bu, i8 %i.bs
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next
  store i8 %.0.us26.1, ptr %i.bv, align 1, !tbaa !19
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count43
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !17

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.f
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %bb.f ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv35
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !19  ; 6 uses
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = add i8 %i.bx, -65
  %or.cond = icmp ult i8 %i.bz, 26
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.split
  %i.ca = or disjoint i8 %i.bx, 32
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph.split.split
  %.not = icmp sgt i8 %i.bx, -1
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cb = tail call i32 @isupper(i32 noundef %i.by) #7
  %.not22 = icmp eq i32 %i.cb, 0
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cc = tail call i32 @tolower(i32 noundef %i.by) #7
  %i.cd = trunc i32 %i.cc to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.c
  %.0 = phi i8 [ %i.bx, %bb.c ], [ %i.ca, %bb.b ], [ %i.cd, %bb.e ], [ %i.bx, %bb.d ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv35
  store i8 %.0, ptr %i.ce, align 1, !tbaa !19
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count43
  br i1 %exitcond39.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph.split.split.us.prol.loopexit, %.lr.ph.split.split.us, %bb.f, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block, %vec.epilog.middle.block, %middle.block70, %vec.epilog.middle.block83, %bb.a
  %.020.lcssa = phi i32 [ %1, %bb.f ], [ 0, %bb.a ], [ %1, %middle.block70 ], [ %1, %middle.block ], [ %1, %vec.epilog.middle.block83 ], [ %1, %.lr.ph.split.us.prol.loopexit ], [ %1, %vec.epilog.middle.block ], [ %1, %.lr.ph.split.us ], [ %1, %.lr.ph.split.split.us ], [ %1, %.lr.ph.split.split.us.prol.loopexit ]
  %i.cf = zext nneg i32 %.020.lcssa to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cf
  store i8 0, ptr %i.cg, align 1, !tbaa !19
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN17duckdb_libpgquery28set_preserve_identifier_caseEb(i1 noundef zeroext %0) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i1 %0 to i8
  %i.b = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN17duckdb_libpgqueryL27pg_preserve_identifier_caseE)
  store i8 %i.a, ptr %i.b, align 1, !tbaa !8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN17duckdb_libpgquery28get_preserve_identifier_caseEv() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN17duckdb_libpgqueryL27pg_preserve_identifier_caseE)
  %i.b = load i8, ptr %i.a, align 1, !tbaa !8, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

declare noundef ptr @_ZN17duckdb_libpgquery6pallocEm(i64 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN17duckdb_libpgquery31pg_database_encoding_max_lengthEv() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isupper(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN17duckdb_libpgquery15scanner_isspaceEc(i8 noundef signext %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i8 %0, 32
  %i.b = add i8 %0, -9
  %i.c = icmp ult i8 %i.b, 2
  %or.cond5 = or i1 %i.a, %i.c
  %i.d = and i8 %0, -2
  %i.e = icmp eq i8 %i.d, 12
  %or.cond11 = or i1 %i.e, %or.cond5
  ret i1 %or.cond11
}

end_hunk_0
