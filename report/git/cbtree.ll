Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/cbtree?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"!((uintptr_t)node & 1)\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"cbtree.c\00", align 1
@__PRETTY_FUNCTION__.cb_insert = private unnamed_addr constant [70 x i8] c"struct cb_node *cb_insert(struct cb_tree *, struct cb_node *, size_t)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @cb_insert(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.cb_insert) #4
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %.not74 = icmp eq ptr %i.c, null
  br i1 %.not74, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %1, ptr %0, align 8, !tbaa !17
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val77 = load i64, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %1, i64 %.val77 ; 3 uses
  %i.f = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.g = and i64 %i.f, 1
  %.not11.i = icmp eq i64 %i.g, 0
  br i1 %.not11.i, label %cb_internal_best_match.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %i.h = phi i64 [ %i.aa, %bb.g ], [ %i.f, %bb.e ]
  %i.i = add nsw i64 %i.h, -1
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !20
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = icmp ugt i64 %2, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !tbaa !21
  %i.q = zext i8 %i.p to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %i.r = phi i64 [ %i.q, %bb.f ], [ 0, %.lr.ph.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.t = load i8, ptr %i.s, align 4, !tbaa !22
  %i.u = zext i8 %i.t to i64
  %i.v = or i64 %i.r, %i.u
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = lshr i64 %i.w, 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !23   ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ab = and i64 %i.aa, 1
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %cb_internal_best_match.exit, label %.lr.ph.i, !llvm.loop !0

cb_internal_best_match.exit:                      ; preds = %bb.g, %bb.e
  %.0.lcssa.i = phi ptr [ %i.c, %bb.e ], [ %i.z, %bb.g ] ; 3 uses
  %i.ac = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 %.val77
  %.not92 = icmp eq i64 %2, 0
  br i1 %.not92, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %cb_internal_best_match.exit, %bb.h
  %.06784 = phi i64 [ %i.ah, %bb.h ], [ 0, %cb_internal_best_match.exit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.06784
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !21  ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 %.06784
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !21  ; 2 uses
  %.not75 = icmp eq i8 %i.ae, %i.ag
  br i1 %.not75, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.ah = add nuw i64 %.06784, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !25

bb.i:                                             ; preds = %.lr.ph
  %i.ai = xor i8 %i.ag, %i.ae
  %i.aj = zext i8 %i.ai to i64                    ; 2 uses
  %i.ak = lshr i64 %i.aj, 1
  %i.al = or i64 %i.ak, %i.aj                     ; 2 uses
  %i.am = lshr i64 %i.al, 2
  %i.an = or i64 %i.am, %i.al                     ; 2 uses
  %i.ao = lshr i64 %i.an, 4
  %i.ap = or i64 %i.ao, %i.an                     ; 2 uses
  %i.aq = lshr i64 %i.ap, 1
  %i.ar = xor i64 %i.aq, -1
  %i.as = and i64 %i.ap, %i.ar
  %i.at = xor i64 %i.as, 255                      ; 3 uses
  %i.au = zext i8 %i.ae to i64
  %i.av = or i64 %i.at, %i.au
  %i.aw = add nuw nsw i64 %i.av, 1
  %i.ax = lshr i64 %i.aw, 8                       ; 2 uses
  %i.ay = trunc i64 %.06784 to i32
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !20
  %i.ba = trunc nuw i64 %i.at to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 %i.ba, ptr %i.bb, align 4, !tbaa !22
  %i.bc = sub nuw nsw i64 1, %i.ax
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bc
  store ptr %1, ptr %i.bd, align 8, !tbaa !23
  %i.be = load ptr, ptr %0, align 8, !tbaa !23    ; 5 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = and i64 %i.bf, 1
  %.not7685 = icmp eq i64 %i.bg, 0
  br i1 %.not7685, label %._crit_edge, label %.lr.ph87.preheader

.lr.ph87.preheader:                               ; preds = %bb.i
  %3 = ptrtoint ptr %i.be to i64
  %i.bh = add nsw i64 %3, -1
  %i.bi = inttoptr i64 %i.bh to ptr               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !20
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = icmp ult i64 %.06784, %i.bl
  br i1 %i.bm, label %._crit_edge, label %.lr.ph117

.lr.ph87:                                         ; preds = %._crit_edge98
  %4 = ptrtoint ptr %i.ci to i64
  %i.bn = add nsw i64 %4, -1
  %i.bo = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !20
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = icmp ult i64 %.06784, %i.br
  br i1 %i.bs, label %._crit_edge, label %.lr.ph117

.lr.ph117:                                        ; preds = %.lr.ph87.preheader, %.lr.ph87
  %i.bt = phi i64 [ %i.br, %.lr.ph87 ], [ %i.bl, %.lr.ph87.preheader ] ; 2 uses
  %i.bu = phi ptr [ %i.bo, %.lr.ph87 ], [ %i.bi, %.lr.ph87.preheader ] ; 2 uses
  %.06686116 = phi ptr [ %i.ch, %.lr.ph87 ], [ %0, %.lr.ph87.preheader ]
  %i.bv = phi ptr [ %i.ci, %.lr.ph87 ], [ %i.be, %.lr.ph87.preheader ]
  %i.bw = icmp eq i64 %.06784, %i.bt
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !22  ; 2 uses
  %i.bz = zext i8 %i.by to i64
  %i.ca = icmp samesign ult i64 %i.at, %i.bz
  %or.cond = select i1 %i.bw, i1 %i.ca, i1 false
  br i1 %or.cond, label %._crit_edge, label %._crit_edge98

._crit_edge98:                                    ; preds = %.lr.ph117
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bt
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !21
  %i.cd = or i8 %i.by, %i.cc
  %i.ce = zext i8 %i.cd to i64
  %i.cf = add nuw nsw i64 %i.ce, 1
  %i.cg = lshr i64 %i.cf, 8
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.cg ; 4 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !23 ; 5 uses
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = and i64 %i.cj, 1
  %.not76 = icmp eq i64 %i.ck, 0
  br i1 %.not76, label %._crit_edge, label %.lr.ph87

._crit_edge:                                      ; preds = %.lr.ph117, %._crit_edge98, %.lr.ph87, %.lr.ph87.preheader, %bb.i
  %i.cl = phi ptr [ %i.be, %bb.i ], [ %i.be, %.lr.ph87.preheader ], [ %i.ci, %.lr.ph87 ], [ %i.bv, %.lr.ph117 ], [ %i.ci, %._crit_edge98 ]
  %.066.lcssa = phi ptr [ %0, %bb.i ], [ %0, %.lr.ph87.preheader ], [ %i.ch, %.lr.ph87 ], [ %.06686116, %.lr.ph117 ], [ %i.ch, %._crit_edge98 ]
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ax
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !23
  %i.cn = or disjoint i64 %i.a, 1
  %i.co = inttoptr i64 %i.cn to ptr
  store ptr %i.co, ptr %.066.lcssa, align 8, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %cb_internal_best_match.exit, %._crit_edge, %bb.d
  %.068 = phi ptr [ null, %._crit_edge ], [ null, %bb.d ], [ %.0.lcssa.i, %cb_internal_best_match.exit ], [ %.0.lcssa.i, %bb.h ]
  ret ptr %.068
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @cb_lookup(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not11.i = icmp eq i64 %i.c, 0
  br i1 %.not11.i, label %cb_internal_best_match.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %i.d = phi i64 [ %i.w, %bb.c ], [ %i.b, %bb.a ]
  %i.e = add nsw i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !20
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = icmp ugt i64 %2, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !21
  %i.m = zext i8 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.n = phi i64 [ %i.m, %bb.b ], [ 0, %.lr.ph.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.p = load i8, ptr %i.o, align 4, !tbaa !22
  %i.q = zext i8 %i.p to i64
  %i.r = or i64 %i.n, %i.q
  %i.s = add nuw nsw i64 %i.r, 1
  %i.t = lshr i64 %i.s, 8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = and i64 %i.w, 1
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %cb_internal_best_match.exit, label %.lr.ph.i, !llvm.loop !0

cb_internal_best_match.exit:                      ; preds = %bb.c, %bb.a
  %.0.lcssa.i = phi ptr [ %i.a, %bb.a ], [ %i.v, %bb.c ] ; 3 uses
  %.not = icmp eq ptr %.0.lcssa.i, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %cb_internal_best_match.exit
  %i.y = getelementptr i8, ptr %0, i64 8
  %.val = load i64, ptr %i.y, align 8, !tbaa !18
  %i.z = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 %.val
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.z, ptr %1, i64 %2)
  %.not8 = icmp eq i32 %bcmp, 0
  %spec.select = select i1 %.not8, ptr %.0.lcssa.i, ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %cb_internal_best_match.exit
  %i.aa = phi ptr [ null, %cb_internal_best_match.exit ], [ %spec.select, %bb.d ]
  ret ptr %i.aa
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cb_each(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not3335 = icmp eq i64 %i.c, 0
  br i1 %.not3335, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.d = phi i64 [ %i.w, %bb.c ], [ %i.b, %.preheader ]
  %.02836 = phi ptr [ %spec.select, %bb.c ], [ %i.a, %.preheader ]
  %i.e = add nsw i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !20
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = icmp ugt i64 %2, %i.i                    ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !21
  %i.m = zext i8 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.n = phi i64 [ %i.m, %bb.b ], [ 0, %.lr.ph ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.p = load i8, ptr %i.o, align 4, !tbaa !22
  %i.q = zext i8 %i.p to i64
  %i.r = or i64 %i.n, %i.q
  %i.s = add nuw nsw i64 %i.r, 1
  %i.t = lshr i64 %i.s, 8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23   ; 3 uses
  %spec.select = select i1 %i.j, ptr %i.v, ptr %.02836 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = and i64 %i.w, 1
  %.not33 = icmp eq i64 %i.x, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %.029.lcssa = phi ptr [ %i.a, %.preheader ], [ %i.v, %bb.c ]
  %.028.lcssa = phi ptr [ %i.a, %.preheader ], [ %spec.select, %bb.c ]
  %i.y = getelementptr i8, ptr %0, i64 8
  %.val = load i64, ptr %i.y, align 8, !tbaa !18
  %i.z = getelementptr inbounds i8, ptr %.029.lcssa, i64 %.val
  %.not42 = icmp eq i64 %2, 0
  br i1 %.not42, label %._crit_edge41, label %.lr.ph40

bb.d:                                             ; preds = %.lr.ph40
  %i.aa = add nuw i64 %.038, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %2
  br i1 %exitcond.not, label %._crit_edge41, label %.lr.ph40, !llvm.loop !27

.lr.ph40:                                         ; preds = %._crit_edge, %bb.d
  %.038 = phi i64 [ %i.aa, %bb.d ], [ 0, %._crit_edge ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %.038
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.038
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !21
  %.not34 = icmp eq i8 %i.ac, %i.ae
  br i1 %.not34, label %bb.d, label %.loopexit

._crit_edge41:                                    ; preds = %bb.d, %._crit_edge
  %i.af = tail call fastcc i32 @cb_descend(ptr noundef %.028.lcssa, ptr noundef %3, ptr noundef %4)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph40, %bb.a, %._crit_edge41
  %.030 = phi i32 [ 0, %bb.a ], [ %i.af, %._crit_edge41 ], [ 0, %.lr.ph40 ]
  ret i32 %.030
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cb_descend(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not18 = icmp eq i64 %i.b, 0
  br i1 %.not18, label %tailrecurse._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.c = phi i64 [ %i.j, %tailrecurse ], [ %i.a, %bb.a ]
  %i.d = add nsw i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.g = tail call fastcc i32 @cb_descend(ptr noundef %i.f, ptr noundef %1, ptr noundef %2) ; 2 uses
  %.not14 = icmp eq i32 %i.g, 0
  br i1 %.not14, label %tailrecurse, label %.loopexit

tailrecurse:                                      ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = and i64 %i.j, 1
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %tailrecurse ]
  %i.l = tail call i32 %1(ptr noundef %.tr.lcssa, ptr noundef %2) #5
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %tailrecurse._crit_edge
  %.1 = phi i32 [ %i.l, %tailrecurse._crit_edge ], [ %i.g, %.lr.ph ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
