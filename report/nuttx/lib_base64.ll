Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_base64?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@g_base64 = internal constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nofree norecurse noredzone nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local i32 @b64_ntop(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i64 %1, 2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.051 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %.03550 = phi ptr [ %i.aj, %bb.b ], [ %2, %bb.a ] ; 5 uses
  %.03749 = phi i64 [ %i.al, %bb.b ], [ %1, %bb.a ]
  %.03848 = phi ptr [ %i.ak, %bb.b ], [ %0, %bb.a ] ; 5 uses
  %i.b = add i64 %.051, 4                         ; 3 uses
  %.not43 = icmp ult i64 %i.b, %3
  br i1 %.not43, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.c = load i8, ptr %.03848, align 1
  %i.d = lshr i8 %i.c, 2
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr @g_base64, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %.03550, i64 1
  store i8 %i.g, ptr %.03550, align 1
  %i.i = load i8, ptr %.03848, align 1
  %i.j = shl i8 %i.i, 4
  %i.k = and i8 %i.j, 48
  %i.l = getelementptr inbounds nuw i8, ptr %.03848, i64 1 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1
  %i.n = lshr i8 %i.m, 4
  %i.o = or disjoint i8 %i.k, %i.n
  %i.p = zext nneg i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @g_base64, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %.03550, i64 2
  store i8 %i.r, ptr %i.h, align 1
  %i.t = load i8, ptr %i.l, align 1
  %i.u = shl i8 %i.t, 2
  %i.v = and i8 %i.u, 60
  %i.w = getelementptr inbounds nuw i8, ptr %.03848, i64 2 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1
  %i.y = lshr i8 %i.x, 6
  %i.z = or disjoint i8 %i.v, %i.y
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @g_base64, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.03550, i64 3
  store i8 %i.ac, ptr %i.s, align 1
  %i.ae = load i8, ptr %i.w, align 1
  %i.af = and i8 %i.ae, 63
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @g_base64, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.03550, i64 4 ; 2 uses
  store i8 %i.ai, ptr %i.ad, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.03848, i64 3 ; 2 uses
  %i.al = add i64 %.03749, -3                     ; 3 uses
  %i.am = icmp ugt i64 %i.al, 2
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.038.lcssa = phi ptr [ %0, %bb.a ], [ %i.ak, %bb.b ] ; 3 uses
  %.037.lcssa = phi i64 [ %1, %bb.a ], [ %i.al, %bb.b ] ; 2 uses
  %.035.lcssa = phi ptr [ %2, %bb.a ], [ %i.aj, %bb.b ] ; 6 uses
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.b, %bb.b ] ; 2 uses
  %.not = icmp eq i64 %.037.lcssa, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.an = add i64 %.0.lcssa, 4                    ; 2 uses
  %.not41 = icmp ult i64 %i.an, %3
  br i1 %.not41, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.ao = load i8, ptr %.038.lcssa, align 1
  %i.ap = lshr i8 %i.ao, 2
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @g_base64, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.035.lcssa, i64 1 ; 2 uses
  store i8 %i.as, ptr %.035.lcssa, align 1
  %i.au = icmp eq i64 %.037.lcssa, 1
  %i.av = load i8, ptr %.038.lcssa, align 1
  %i.aw = shl i8 %i.av, 4
  %i.ax = and i8 %i.aw, 48                        ; 2 uses
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @g_base64, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 16
  store i8 %i.ba, ptr %i.at, align 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %.038.lcssa, i64 1 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = lshr i8 %i.bc, 4
  %i.be = or disjoint i8 %i.ax, %i.bd
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @g_base64, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1
  store i8 %i.bh, ptr %i.at, align 1
  %i.bi = load i8, ptr %i.bb, align 1
  %i.bj = shl i8 %i.bi, 2
  %i.bk = and i8 %i.bj, 60
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @g_base64, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi i8 [ 61, %bb.e ], [ %i.bn, %bb.f ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.035.lcssa, i64 2
  store i8 %.sink, ptr %i.bo, align 1
  %.136 = getelementptr inbounds nuw i8, ptr %.035.lcssa, i64 3
  %i.bp = getelementptr inbounds nuw i8, ptr %.035.lcssa, i64 4
  store i8 61, ptr %.136, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.2 = phi ptr [ %i.bp, %bb.g ], [ %.035.lcssa, %._crit_edge ]
  %.1 = phi i64 [ %i.an, %bb.g ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %.not42 = icmp ult i64 %.1, %3
  br i1 %.not42, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %.2, align 1
  %i.bq = trunc i64 %.1 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.h, %bb.c, %bb.i
  %.034 = phi i32 [ %i.bq, %bb.i ], [ -1, %bb.h ], [ -1, %bb.c ], [ -1, %.lr.ph ]
  ret i32 %.034
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i32 @b64_pton(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  br label %.outer.outer.outer

.outer.outer.outer:                               ; preds = %.outer.outer.outer.backedge, %bb.a
  %.054.ph.ph.ph = phi ptr [ %0, %bb.a ], [ %i.c, %.outer.outer.outer.backedge ]
  %.050.ph.ph.ph = phi ptr [ %1, %bb.a ], [ %.050.ph.ph.ph.be, %.outer.outer.outer.backedge ]
  %.046.ph.ph.ph = phi i64 [ 0, %bb.a ], [ %.046.ph.ph.ph.be, %.outer.outer.outer.backedge ] ; 5 uses
  %.not72.ph.ph = phi i1 [ true, %bb.a ], [ %.not72.ph.ph.be, %.outer.outer.outer.backedge ]
  %.044.ph.ph.ph = phi i32 [ 0, %bb.a ], [ %.044.ph.ph.ph.be, %.outer.outer.outer.backedge ]
  %.not70 = icmp ult i64 %.046.ph.ph.ph, %2
  br label %.outer.outer

.outer.outer:                                     ; preds = %.outer.outer.backedge, %.outer.outer.outer
  %.054.ph.ph = phi ptr [ %.054.ph.ph.ph, %.outer.outer.outer ], [ %i.c, %.outer.outer.backedge ]
  %.050.ph.ph = phi ptr [ %.050.ph.ph.ph, %.outer.outer.outer ], [ null, %.outer.outer.backedge ] ; 13 uses
  %.not72.ph = phi i1 [ %.not72.ph.ph, %.outer.outer.outer ], [ false, %.outer.outer.backedge ]
  %.044.ph.ph = phi i32 [ %.044.ph.ph.ph, %.outer.outer.outer ], [ %.044.ph.ph.be, %.outer.outer.backedge ]
  %.not69 = icmp eq ptr %.050.ph.ph, null         ; 4 uses
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %bb.i
  %.054.ph = phi ptr [ %i.c, %bb.i ], [ %.054.ph.ph, %.outer.outer ]
  %.not72 = phi i1 [ false, %bb.i ], [ %.not72.ph, %.outer.outer ]
  %.044.ph = phi i32 [ 1, %bb.i ], [ %.044.ph.ph, %.outer.outer ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.c
  %.054 = phi ptr [ %i.c, %bb.c ], [ %.054.ph, %.outer ] ; 3 uses
  %i.a = load i8, ptr %.054, align 1              ; 3 uses
  %cond = icmp eq i8 %i.a, 0
  br i1 %cond, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = sext i8 %i.a to i32                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.054, i64 1 ; 5 uses
  %i.d = tail call i32 @isspace(i32 noundef %i.b) #6
  %.not62 = icmp eq i32 %i.d, 0
  br i1 %.not62, label %bb.d, label %bb.b, !llvm.loop !9

bb.d:                                             ; preds = %bb.c
  %cond81 = icmp eq i8 %i.a, 61
  br i1 %cond81, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr @strchr(ptr noundef nonnull @g_base64, i32 noundef range(i32 -128, 128) %i.b) #7 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %.044.ph, label %.unreachabledefault [
    i32 0, label %bb.g
    i32 1, label %bb.j
    i32 2, label %bb.m
    i32 3, label %bb.p
  ]

bb.g:                                             ; preds = %bb.f
  br i1 %.not69, label %.outer.outer.backedge, label %bb.h, !llvm.loop !9

bb.h:                                             ; preds = %bb.g
  br i1 %.not70, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = trunc i64 %i.g to i8
  %.tr71 = sub i8 %i.h, ptrtoint (ptr @g_base64 to i8)
  %i.i = shl i8 %.tr71, 2
  store i8 %i.i, ptr %.050.ph.ph, align 1
  br label %.outer, !llvm.loop !9

bb.j:                                             ; preds = %bb.f
  br i1 %.not69, label %.outer.outer.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.j = add i64 %.046.ph.ph.ph, 1                ; 2 uses
  %.not67 = icmp ult i64 %i.j, %2
  br i1 %.not67, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.k = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.l = sub i64 %i.k, ptrtoint (ptr @g_base64 to i64)
  %i.m = lshr i64 %i.l, 4
  %i.n = getelementptr inbounds nuw i8, ptr %.050.ph.ph, i64 1 ; 2 uses
  %i.o = load i8, ptr %.050.ph.ph, align 1
  %i.p = trunc i64 %i.m to i8
  %i.q = or i8 %i.o, %i.p
  store i8 %i.q, ptr %.050.ph.ph, align 1
  %.tr68 = trunc i64 %i.k to i8
  %i.r = shl i8 %.tr68, 4
  store i8 %i.r, ptr %i.n, align 1
  br label %.outer.outer.outer.backedge

bb.m:                                             ; preds = %bb.f
  br i1 %.not69, label %.outer.outer.backedge, label %bb.n

.outer.outer.backedge:                            ; preds = %bb.g, %bb.m, %bb.j
  %.044.ph.ph.be = phi i32 [ 2, %bb.j ], [ 3, %bb.m ], [ 1, %bb.g ]
  br label %.outer.outer, !llvm.loop !9

bb.n:                                             ; preds = %bb.m
  %i.s = add i64 %.046.ph.ph.ph, 1                ; 2 uses
  %.not65 = icmp ult i64 %i.s, %2
  br i1 %.not65, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.t = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.u = sub i64 %i.t, ptrtoint (ptr @g_base64 to i64)
  %i.v = lshr i64 %i.u, 2
  %i.w = getelementptr inbounds nuw i8, ptr %.050.ph.ph, i64 1 ; 2 uses
  %i.x = load i8, ptr %.050.ph.ph, align 1
  %i.y = trunc i64 %i.v to i8
  %i.z = or i8 %i.x, %i.y
  store i8 %i.z, ptr %.050.ph.ph, align 1
  %.tr = trunc i64 %i.t to i8
  %i.aa = shl i8 %.tr, 6
  store i8 %i.aa, ptr %i.w, align 1
  br label %.outer.outer.outer.backedge

bb.p:                                             ; preds = %bb.f
  br i1 %.not69, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = ptrtoint ptr %i.e to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.050.ph.ph, i64 1
  %i.ad = load i8, ptr %.050.ph.ph, align 1
  %i.ae = trunc i64 %i.ab to i8
  %i.af = sub i8 %i.ae, ptrtoint (ptr @g_base64 to i8)
end_hunk_0
