Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/lstring?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @luaS_resize(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  %i.d = load i8, ptr %i.c, align 1, !tbaa !36
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %1, -2
  br i1 %i.f, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.g = tail call ptr @luaM_toobig(ptr noundef nonnull %0) #5
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !19
  br label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.i = sext i32 %1 to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = tail call ptr @luaM_realloc_(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i64 noundef %i.j) #5 ; 3 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.m = icmp sgt i32 %1, 0
  br i1 %i.m, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.n = zext nneg i32 %1 to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.o, i1 false), !tbaa !28
  br label %.preheader

.preheader:                                       ; preds = %.thread, %.lr.ph.preheader, %bb.c
  %i.p = phi ptr [ %i.h, %.thread ], [ %i.l, %.lr.ph.preheader ], [ %i.l, %bb.c ] ; 4 uses
  %i.q = phi ptr [ %i.g, %.thread ], [ %i.k, %.lr.ph.preheader ], [ %i.k, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 12 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !29   ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph43, label %.preheader.._crit_edge44_crit_edge

.preheader.._crit_edge44_crit_edge:               ; preds = %.preheader
  %.pre48 = sext i32 %i.s to i64
  br label %._crit_edge44

.lr.ph43:                                         ; preds = %.preheader
  %i.u = add nsw i32 %1, -1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph43, %._crit_edge
  %i.v = phi i32 [ %i.s, %.lr.ph43 ], [ %i.af, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %2 = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28   ; 2 uses
  %.not39 = icmp eq ptr %i.x, null
  br i1 %.not39, label %._crit_edge, label %.lr.ph41

.lr.ph41:                                         ; preds = %bb.d, %.lr.ph41
  %.03440 = phi ptr [ %i.y, %.lr.ph41 ], [ %i.x, %bb.d ] ; 4 uses
  %i.y = load ptr, ptr %.03440, align 8, !tbaa !31 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.03440, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !31
  %i.ab = and i32 %i.aa, %i.u
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ac ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !28
  store ptr %i.ae, ptr %.03440, align 8, !tbaa !31
  store ptr %.03440, ptr %i.ad, align 8, !tbaa !28
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph41, !llvm.loop !34

._crit_edge.loopexit:                             ; preds = %.lr.ph41
  %.pre.a = load i32, ptr %i.r, align 4, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.af = phi i32 [ %.pre.a, %._crit_edge.loopexit ], [ %i.v, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = icmp slt i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %bb.d, label %._crit_edge44, !llvm.loop !35

._crit_edge44:                                    ; preds = %._crit_edge, %.preheader.._crit_edge44_crit_edge
  %.pre-phi = phi i64 [ %.pre48, %.preheader.._crit_edge44_crit_edge ], [ %i.ag, %._crit_edge ]
  %3 = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.ai = shl nsw i64 %.pre-phi, 3
  %i.aj = tail call ptr @luaM_realloc_(ptr noundef %0, ptr noundef %3, i64 noundef %i.ai, i64 noundef 0) #5 ; 0 uses
  store i32 %1, ptr %i.r, align 4, !tbaa !29
  store ptr %i.q, ptr %i.p, align 8, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge44
  ret void
}

declare hidden ptr @luaM_realloc_(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare hidden ptr @luaM_toobig(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden ptr @luaS_newlstr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not41 = icmp eq i64 %2, 0
  br i1 %.not41, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = trunc i64 %2 to i32                      ; 4 uses
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.b = shl i32 %i.a, 5
  %i.c = lshr i32 %i.a, 2
  %i.d = add i32 %i.b, %i.c
  %i.e = add nsw i64 %2, -1                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !31
  %i.h = zext i8 %i.g to i32
  %i.i = add i32 %i.d, %i.h
  %i.j = xor i32 %i.i, %i.a                       ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.j, %.lr.ph.prol ]
  %.03143.unr = phi i64 [ %2, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %.03242.unr = phi i32 [ %i.a, %.lr.ph.preheader ], [ %i.j, %.lr.ph.prol ]
  %i.k = icmp eq i64 %2, 1
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03143 = phi i64 [ %i.x, %.lr.ph ], [ %.03143.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.03242 = phi i32 [ %i.ac, %.lr.ph ], [ %.03242.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.l = shl i32 %.03242, 5
  %i.m = lshr i32 %.03242, 2
  %i.n = add i32 %i.l, %i.m
  %i.o = getelementptr i8, ptr %1, i64 %.03143
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !31
  %i.r = zext i8 %i.q to i32
  %i.s = add i32 %i.n, %i.r
  %i.t = xor i32 %i.s, %.03242                    ; 3 uses
  %i.u = shl i32 %i.t, 5
  %i.v = lshr i32 %i.t, 2
  %i.w = add i32 %i.u, %i.v
  %i.x = add i64 %.03143, -2                      ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !31
  %i.aa = zext i8 %i.z to i32
  %i.ab = add i32 %i.w, %i.aa
  %i.ac = xor i32 %i.ab, %i.t                     ; 2 uses
  %.not.1 = icmp eq i64 %i.x, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %.032.lcssa = phi i32 [ 0, %bb.a ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.ac, %.lr.ph ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !39
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !40
  %i.ai = add nsw i32 %i.ah, -1
  %i.aj = and i32 %i.ai, %.032.lcssa
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %.03344 = load ptr, ptr %i.al, align 8, !tbaa !31 ; 2 uses
  %.not3645 = icmp eq ptr %.03344, null
  br i1 %.not3645, label %._crit_edge49, label %.lr.ph48

.lr.ph48:                                         ; preds = %._crit_edge, %bb.e
  %.03346 = phi ptr [ %.033, %bb.e ], [ %.03344, %._crit_edge ] ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.03346, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !31
  %i.ao = icmp eq i64 %i.an, %2
  br i1 %i.ao, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph48
  %i.ap = getelementptr inbounds nuw i8, ptr %.03346, i64 24
  %bcmp = tail call i32 @bcmp(ptr %1, ptr nonnull %i.ap, i64 %2)
  %i.aq = icmp eq i32 %bcmp, 0
  br i1 %i.aq, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %.03346, i64 9 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !31  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.au = load i8, ptr %i.at, align 8, !tbaa !33
  %i.av = xor i8 %i.au, -1
  %i.aw = and i8 %i.as, 3
  %i.ax = and i8 %i.aw, %i.av
  %.not37 = icmp eq i8 %i.ax, 0
  br i1 %.not37, label %newlstr.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = xor i8 %i.as, 3
  store i8 %i.ay, ptr %i.ar, align 1, !tbaa !31
  br label %newlstr.exit

bb.e:                                             ; preds = %.lr.ph48, %bb.b
  %.033 = load ptr, ptr %.03346, align 8, !tbaa !31 ; 2 uses
  %.not36 = icmp eq ptr %.033, null
  br i1 %.not36, label %._crit_edge49, label %.lr.ph48, !llvm.loop !38

._crit_edge49:                                    ; preds = %bb.e, %._crit_edge
  %i.az = add i64 %2, 27
  %i.ba = icmp ult i64 %i.az, 26
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge49
  %i.bb = tail call ptr @luaM_toobig(ptr noundef %0) #5 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge49
  %i.bc = add i64 %2, 25
  %i.bd = tail call ptr @luaM_realloc_(ptr noundef %0, ptr noundef null, i64 noundef 0, i64 noundef %i.bc) #5 ; 10 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %2, ptr %i.be, align 8, !tbaa !31
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 %.032.lcssa, ptr %i.bf, align 4, !tbaa !31
  %i.bg = load ptr, ptr %i.ad, align 8, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !33
  %i.bj = and i8 %i.bi, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 9
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i8 4, ptr %i.bl, align 8, !tbaa !31
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 10
  store i8 0, ptr %i.bm, align 2, !tbaa !31
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bn, ptr readonly align 1 %1, i64 %2, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %2
  store i8 0, ptr %i.bo, align 1, !tbaa !31
  %i.bp = load ptr, ptr %i.ad, align 8, !tbaa !19 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !29
  %i.bs = add nsw i32 %i.br, -1
  %i.bt = and i32 %i.bs, %.032.lcssa
  %i.bu = load ptr, ptr %i.bp, align 8, !tbaa !30
  %i.bv = zext i32 %i.bt to i64                   ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !28
  store ptr %i.bx, ptr %i.bd, align 8, !tbaa !31
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !30
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bv
  store ptr %i.bd, ptr %i.bz, align 8, !tbaa !28
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !41
  %i.cc = add i32 %i.cb, 1                        ; 2 uses
  store i32 %i.cc, ptr %i.ca, align 8, !tbaa !41
  %i.cd = load i32, ptr %i.bq, align 4, !tbaa !29 ; 3 uses
  %i.ce = icmp ugt i32 %i.cc, %i.cd
  %i.cf = icmp slt i32 %i.cd, 1073741823
  %or.cond.i = and i1 %i.ce, %i.cf
  br i1 %or.cond.i, label %bb.h, label %newlstr.exit

bb.h:                                             ; preds = %bb.g
  %i.cg = shl nsw i32 %i.cd, 1
  tail call void @luaS_resize(ptr noundef nonnull %0, i32 noundef %i.cg)
  br label %newlstr.exit

newlstr.exit:                                     ; preds = %bb.d, %bb.c, %bb.h, %bb.g
  %.2 = phi ptr [ %i.bd, %bb.h ], [ %i.bd, %bb.g ], [ %.03346, %bb.c ], [ %.03346, %bb.d ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @luaS_newudata(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %1, -43
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @luaM_toobig(ptr noundef %0) #5 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = add i64 %1, 40
  %i.d = tail call ptr @luaM_realloc_(ptr noundef %0, ptr noundef null, i64 noundef 0, i64 noundef %i.c) #5 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !33
  %i.i = and i8 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 %i.i, ptr %i.j, align 1, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
end_hunk_0
