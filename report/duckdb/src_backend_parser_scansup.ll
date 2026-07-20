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
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = add nsw i32 %1, 1
  %i.c = sext i32 %i.b to i64
  %i.d = tail call noundef ptr @_ZN17duckdb_libpgquery6pallocEm(i64 noundef %i.c) ; 16 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 2 uses
  %i.f = tail call noundef i32 @_ZN17duckdb_libpgquery31pg_database_encoding_max_lengthEv()
  %.not29 = icmp eq i32 %i.f, 1
  %i.g = icmp sgt i32 %1, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN17duckdb_libpgqueryL27pg_preserve_identifier_caseE)
  %i.i = load i8, ptr %i.h, align 1, !tbaa !7, !range !9, !noundef !10
  %i.j = trunc nuw i8 %i.i to i1
  %wide.trip.count43 = zext nneg i32 %1 to i64    ; 16 uses
  br i1 %i.j, label %iter.check75, label %.lr.ph.split

iter.check75:                                     ; preds = %.lr.ph
  %min.iters.check61 = icmp ult i32 %1, 4
  %i.k = sub i64 %i.a, %i.e
  %diff.check60 = icmp ugt i64 %i.k, -32
  %or.cond89 = or i1 %min.iters.check61, %diff.check60
  br i1 %or.cond89, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check62

vector.main.loop.iter.check62:                    ; preds = %iter.check75
  %min.iters.check63 = icmp ult i32 %1, 32
  br i1 %min.iters.check63, label %vec.epilog.ph79, label %vector.ph64

vector.ph64:                                      ; preds = %vector.main.loop.iter.check62
  %n.mod.vf65 = and i64 %wide.trip.count43, 28
  %n.vec66 = and i64 %wide.trip.count43, 2147483616 ; 4 uses
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph64
  %index68 = phi i64 [ 0, %vector.ph64 ], [ %index.next71, %vector.body67 ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index68 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load69 = load <16 x i8>, ptr %i.l, align 1, !tbaa !11
  %wide.load70 = load <16 x i8>, ptr %i.m, align 1, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %index68 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <16 x i8> %wide.load69, ptr %i.n, align 1, !tbaa !11
  store <16 x i8> %wide.load70, ptr %i.o, align 1, !tbaa !11
  %index.next71 = add nuw i64 %index68, 32        ; 2 uses
  %i.p = icmp eq i64 %index.next71, %n.vec66
  br i1 %i.p, label %middle.block72, label %vector.body67, !llvm.loop !12

middle.block72:                                   ; preds = %vector.body67
  %cmp.n73 = icmp eq i64 %n.vec66, %wide.trip.count43
  br i1 %cmp.n73, label %._crit_edge, label %vec.epilog.iter.check77

vec.epilog.iter.check77:                          ; preds = %middle.block72
  %min.epilog.iters.check78 = icmp eq i64 %n.mod.vf65, 0
  br i1 %min.epilog.iters.check78, label %.lr.ph.split.us.preheader, label %vec.epilog.ph79, !prof !16

vec.epilog.ph79:                                  ; preds = %vector.main.loop.iter.check62, %vec.epilog.iter.check77
  %vec.epilog.resume.val74 = phi i64 [ %n.vec66, %vec.epilog.iter.check77 ], [ 0, %vector.main.loop.iter.check62 ]
  %n.vec81 = and i64 %wide.trip.count43, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body82

vec.epilog.vector.body82:                         ; preds = %vec.epilog.vector.body82, %vec.epilog.ph79
  %index83 = phi i64 [ %vec.epilog.resume.val74, %vec.epilog.ph79 ], [ %index.next85, %vec.epilog.vector.body82 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %index83
  %wide.load84 = load <4 x i8>, ptr %i.q, align 1, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 %index83
  store <4 x i8> %wide.load84, ptr %i.r, align 1, !tbaa !11
  %index.next85 = add nuw i64 %index83, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next85, %n.vec81
  br i1 %i.s, label %vec.epilog.middle.block86, label %vec.epilog.vector.body82, !llvm.loop !17

vec.epilog.middle.block86:                        ; preds = %vec.epilog.vector.body82
  %cmp.n87 = icmp eq i64 %n.vec81, %wide.trip.count43
  br i1 %cmp.n87, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check75, %vec.epilog.iter.check77, %vec.epilog.middle.block86
  %indvars.iv40.ph = phi i64 [ 0, %iter.check75 ], [ %n.vec66, %vec.epilog.iter.check77 ], [ %n.vec81, %vec.epilog.middle.block86 ] ; 3 uses
  %xtraiter93 = and i64 %wide.trip.count43, 3     ; 2 uses
  %lcmp.mod94.not = icmp eq i64 %xtraiter93, 0
  br i1 %lcmp.mod94.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %indvars.iv40.prol = phi i64 [ %indvars.iv.next41.prol, %.lr.ph.split.us.prol ], [ %indvars.iv40.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv40.prol
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv40.prol
  store i8 %i.u, ptr %i.v, align 1, !tbaa !11
  %indvars.iv.next41.prol = add nuw nsw i64 %indvars.iv40.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter93
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !18

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %indvars.iv40.unr = phi i64 [ %indvars.iv40.ph, %.lr.ph.split.us.preheader ], [ %indvars.iv.next41.prol, %.lr.ph.split.us.prol ]
  %i.w = sub nsw i64 %indvars.iv40.ph, %wide.trip.count43
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %indvars.iv40 = phi i64 [ %indvars.iv.next41.3, %.lr.ph.split.us ], [ %indvars.iv40.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv40
  %i.z = load i8, ptr %i.y, align 1, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv40
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !11
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next41
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next41
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !11
  %indvars.iv.next41.1 = add nuw nsw i64 %indvars.iv40, 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next41.1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next41.1
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !11
  %indvars.iv.next41.2 = add nuw nsw i64 %indvars.iv40, 3 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next41.2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next41.2
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !11
  %indvars.iv.next41.3 = add nuw nsw i64 %indvars.iv40, 4 ; 2 uses
  %exitcond44.not.3 = icmp eq i64 %indvars.iv.next41.3, %wide.trip.count43
  br i1 %exitcond44.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !20

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not29, label %.lr.ph.split.split, label %iter.check

iter.check:                                       ; preds = %.lr.ph.split
  %min.iters.check = icmp ult i32 %1, 8
  %i.ak = sub i64 %i.a, %i.e
  %diff.check = icmp ugt i64 %i.ak, -32
  %or.cond90 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond90, label %.lr.ph.split.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check51 = icmp ult i32 %1, 32
  br i1 %min.iters.check51, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count43, 24
  %n.vec = and i64 %wide.trip.count43, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <16 x i8>, ptr %i.al, align 1, !tbaa !11 ; 3 uses
  %wide.load52 = load <16 x i8>, ptr %i.am, align 1, !tbaa !11 ; 3 uses
  %i.an = add <16 x i8> %wide.load, splat (i8 -65)
  %i.ao = add <16 x i8> %wide.load52, splat (i8 -65)
  %i.ap = icmp ult <16 x i8> %i.an, splat (i8 26)
  %i.aq = icmp ult <16 x i8> %i.ao, splat (i8 26)
  %i.ar = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.as = or disjoint <16 x i8> %wide.load52, splat (i8 32)
  %i.at = select <16 x i1> %i.ap, <16 x i8> %i.ar, <16 x i8> %wide.load
  %i.au = select <16 x i1> %i.aq, <16 x i8> %i.as, <16 x i8> %wide.load52
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <16 x i8> %i.at, ptr %i.av, align 1, !tbaa !11
  store <16 x i8> %i.au, ptr %i.aw, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count43
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.split.us.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %wide.trip.count43, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %index55
  %wide.load56 = load <8 x i8>, ptr %i.ay, align 1, !tbaa !11 ; 3 uses
  %i.az = add <8 x i8> %wide.load56, splat (i8 -65)
  %i.ba = icmp ult <8 x i8> %i.az, splat (i8 26)
  %i.bb = or disjoint <8 x i8> %wide.load56, splat (i8 32)
  %i.bc = select <8 x i1> %i.ba, <8 x i8> %i.bb, <8 x i8> %wide.load56
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 %index55
  store <8 x i8> %i.bc, ptr %i.bd, align 1, !tbaa !11
  %index.next57 = add nuw i64 %index55, 8         ; 2 uses
  %i.be = icmp eq i64 %index.next57, %n.vec54
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %n.vec54, %wide.trip.count43
  br i1 %cmp.n58, label %._crit_edge, label %.lr.ph.split.split.us.preheader

.lr.ph.split.split.us.preheader:                  ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec54, %vec.epilog.middle.block ] ; 5 uses
  %lcmp.mod.not = trunc i32 %1 to i1
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.us.prol, label %.lr.ph.split.split.us.prol.loopexit

.lr.ph.split.split.us.prol:                       ; preds = %.lr.ph.split.split.us.preheader
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.ph
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !11  ; 3 uses
  %i.bh = add i8 %i.bg, -65
  %or.cond.us.prol = icmp ult i8 %i.bh, 26
  %i.bi = or disjoint i8 %i.bg, 32
  %.0.us26.prol = select i1 %or.cond.us.prol, i8 %i.bi, i8 %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.ph
  store i8 %.0.us26.prol, ptr %i.bj, align 1, !tbaa !11
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
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !11  ; 3 uses
  %i.bo = add i8 %i.bn, -65
  %or.cond.us = icmp ult i8 %i.bo, 26
  %i.bp = or disjoint i8 %i.bn, 32
  %.0.us26 = select i1 %or.cond.us, i8 %i.bp, i8 %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  store i8 %.0.us26, ptr %i.bq, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !11  ; 3 uses
  %i.bt = add i8 %i.bs, -65
  %or.cond.us.1 = icmp ult i8 %i.bt, 26
  %i.bu = or disjoint i8 %i.bs, 32
  %.0.us26.1 = select i1 %or.cond.us.1, i8 %i.bu, i8 %i.bs
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next
  store i8 %.0.us26.1, ptr %i.bv, align 1, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count43
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !24

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.f
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %bb.f ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv35
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !11  ; 6 uses
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
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv35
  store i8 %.0, ptr %i.ce, align 1, !tbaa !11
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count43
  br i1 %exitcond39.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph.split.split.us.prol.loopexit, %.lr.ph.split.split.us, %bb.f, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block, %vec.epilog.middle.block, %middle.block72, %vec.epilog.middle.block86, %bb.a
  %.020.lcssa = phi i32 [ %1, %bb.f ], [ 0, %bb.a ], [ %1, %middle.block72 ], [ %1, %middle.block ], [ %1, %vec.epilog.middle.block86 ], [ %1, %.lr.ph.split.us.prol.loopexit ], [ %1, %vec.epilog.middle.block ], [ %1, %.lr.ph.split.us ], [ %1, %.lr.ph.split.split.us ], [ %1, %.lr.ph.split.split.us.prol.loopexit ]
  %i.cf = zext nneg i32 %.020.lcssa to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cf
  store i8 0, ptr %i.cg, align 1, !tbaa !11
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN17duckdb_libpgquery28set_preserve_identifier_caseEb(i1 noundef zeroext %0) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i1 %0 to i8
  %i.b = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN17duckdb_libpgqueryL27pg_preserve_identifier_caseE)
  store i8 %i.a, ptr %i.b, align 1, !tbaa !7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN17duckdb_libpgquery28get_preserve_identifier_caseEv() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN17duckdb_libpgqueryL27pg_preserve_identifier_caseE)
  %i.b = load i8, ptr %i.a, align 1, !tbaa !7, !range !9, !noundef !10
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

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"bool", !5, i64 0}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = !{!5, !5, i64 0}
!12 = distinct !{!12, !13, !14, !15}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!"branch_weights", i32 4, i32 28}
!17 = distinct !{!17, !13, !14, !15}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !13, !14}
!21 = distinct !{!21, !13, !14, !15}
!22 = !{!"branch_weights", i32 8, i32 24}
!23 = distinct !{!23, !13, !14, !15}
!24 = distinct !{!24, !13, !14}
!25 = distinct !{!25, !13}
end_hunk_0
