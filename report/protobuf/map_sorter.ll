inline.NumInlined: 26
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.upb_alloc = type { ptr }

@compar = internal unnamed_addr constant [19 x ptr] [ptr null, ptr null, ptr null, ptr @_upb_mapsorter_cmpi64, ptr @_upb_mapsorter_cmpu64, ptr @_upb_mapsorter_cmpi32, ptr @_upb_mapsorter_cmpu64, ptr @_upb_mapsorter_cmpu32, ptr @_upb_mapsorter_cmpbool, ptr @_upb_mapsorter_cmpstr, ptr null, ptr null, ptr @_upb_mapsorter_cmpstr, ptr @_upb_mapsorter_cmpu32, ptr @_upb_mapsorter_cmpi32, ptr @_upb_mapsorter_cmpi32, ptr @_upb_mapsorter_cmpi64, ptr @_upb_mapsorter_cmpi32, ptr @_upb_mapsorter_cmpi64], align 16
@upb_alloc_global = external global %struct.upb_alloc, align 8

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @_upb_mapsorter_pushmap(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef captures(none) initializes((0, 12)) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.030.in = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.030 = load i32, ptr %.030.in, align 8, !tbaa !7 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !8    ; 4 uses
  store i32 %i.c, ptr %3, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.c, ptr %i.d, align 4, !tbaa !14
  %i.e = add nsw i32 %i.c, %.030                  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %i.e, ptr %i.f, align 4, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16   ; 2 uses
  %i.i = icmp sgt i32 %i.e, %i.h
  %.pre = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %i.h, 3
  %i.k = add nsw i32 %i.e, -1
  %i.l = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.k, i1 false)
  %i.m = sub nuw nsw i32 32, %i.l
  %.narrow.inv.narrow.i.i.i = icmp sgt i32 %i.e, 1
  %4 = shl nuw i32 1, %i.m
  %i.n = select i1 %.narrow.inv.narrow.i.i.i, i32 %4, i32 1 ; 2 uses
  store i32 %i.n, ptr %i.g, align 4, !tbaa !16
  %i.o = shl i32 %i.n, 3
  %i.p = sext i32 %i.j to i64
  %i.q = sext i32 %i.o to i64
  %i.r = load ptr, ptr @upb_alloc_global, align 8, !tbaa !18
  %i.s = tail call ptr %i.r(ptr noundef nonnull @upb_alloc_global, ptr noundef %.pre, i64 noundef range(i64 -2147483648, 2147483648) %i.p, i64 noundef range(i64 -2147483648, 2147483648) %i.q, ptr noundef null) #8, !inline_history !20 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !17
  %.not.not.i = icmp eq ptr %i.s, null
  br i1 %.not.not.i, label %_upb_mapsorter_resize.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !15
  %.pre38 = load i32, ptr %3, align 4, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge.i
  %i.t = phi i32 [ %.pre38, %._crit_edge.i ], [ %i.c, %bb.a ]
  %i.u = phi ptr [ %i.s, %._crit_edge.i ], [ %.pre, %bb.a ] ; 2 uses
  %i.v = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.e, %bb.a ]
  store i32 %i.v, ptr %i.b, align 8, !tbaa !8
  %i.w = sext i32 %i.t to i64                     ; 2 uses
  %i.x = load i8, ptr %i.a, align 1, !tbaa !21, !range !24, !noundef !25
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !7   ; 2 uses
  %i.ab = getelementptr i8, ptr %2, i64 20
  %.val32 = load i32, ptr %i.ab, align 4, !tbaa !26
  %i.ac = add i32 %.val32, 1                      ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %.idx = mul nuw nsw i64 %i.ad, 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.af = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.w
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.137 = phi ptr [ %i.aj, %bb.e ], [ %i.aa, %.lr.ph.preheader ] ; 3 uses
  %.02836 = phi ptr [ %.129, %bb.e ], [ %i.af, %.lr.ph.preheader ] ; 3 uses
  %i.ag = getelementptr i8, ptr %.137, i64 8
  %.1.val = load i64, ptr %i.ag, align 8, !tbaa !7
  %i.ah = icmp eq i64 %.1.val, 0
  br i1 %i.ah, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  store ptr %.137, ptr %.02836, align 8, !tbaa !29
  %i.ai = getelementptr inbounds nuw i8, ptr %.02836, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.129 = phi ptr [ %.02836, %.lr.ph ], [ %i.ai, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.137, i64 24 ; 2 uses
  %i.ak = icmp ult ptr %i.aj, %i.ae
  br i1 %i.ak, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !30

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre39 = load ptr, ptr %0, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.al = phi ptr [ %.pre39, %._crit_edge.loopexit ], [ %i.u, %bb.c ]
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.w
  %i.an = sext i32 %.030 to i64
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.ao = zext i32 %1 to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @compar, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ar = phi ptr [ %i.aq, %bb.f ], [ @_upb_mapsorter_intkeys, %._crit_edge ]
  tail call void @qsort(ptr noundef %i.am, i64 noundef %i.an, i64 noundef 8, ptr noundef %i.ar) #8
  br label %_upb_mapsorter_resize.exit

_upb_mapsorter_resize.exit:                       ; preds = %bb.b, %bb.g
  %.1.i34 = phi i1 [ true, %bb.g ], [ false, %bb.b ]
  ret i1 %.1.i34
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_upb_mapsorter_intkeys(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !7
  %i.d = load ptr, ptr %1, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !7
  %i.g = tail call i32 @llvm.ucmp.i32.i64(i64 %i.c, i64 %i.f)
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @_upb_mapsorter_pushexts(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !3      ; 3 uses
  %i.b = zext i32 %i.a to i64                     ; 3 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.b, 4294967292               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi43 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <2 x i64>, ptr %i.d, align 8
  %wide.load44 = load <2 x i64>, ptr %i.e, align 8
  %i.f = and <2 x i64> %wide.load, splat (i64 1)
  %i.g = and <2 x i64> %wide.load44, splat (i64 1)
  %i.h = add <2 x i64> %i.f, %vec.phi             ; 2 uses
  %i.i = add <2 x i64> %i.g, %vec.phi43           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.i, %i.h
  %i.k = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.b
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.02431.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.02530.ph = phi i64 [ 0, %.lr.ph ], [ %i.k, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %.025.lcssa = phi i64 [ 0, %bb.a ], [ %i.k, %middle.block ], [ %i.ak, %scalar.ph ] ; 3 uses
  %i.l = trunc i64 %.025.lcssa to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !8    ; 3 uses
  store i32 %i.n, ptr %2, align 4, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.n, ptr %i.o, align 4, !tbaa !14
  %i.p = add nsw i32 %i.n, %i.l                   ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 %i.p, ptr %i.q, align 4, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16   ; 2 uses
  %i.t = icmp sgt i32 %i.p, %i.s
  br i1 %i.t, label %bb.b, label %_upb_mapsorter_resize.exit

bb.b:                                             ; preds = %._crit_edge
  %i.u = shl i32 %i.s, 3
  %i.v = add nsw i32 %i.p, -1
  %i.w = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.v, i1 false)
  %i.x = sub nuw nsw i32 32, %i.w
  %.narrow.inv.narrow.i.i.i = icmp sgt i32 %i.p, 1
  %3 = shl nuw i32 1, %i.x
  %i.y = select i1 %.narrow.inv.narrow.i.i.i, i32 %3, i32 1 ; 2 uses
  store i32 %i.y, ptr %i.r, align 4, !tbaa !16
  %i.z = shl i32 %i.y, 3
  %i.aa = load ptr, ptr %0, align 8, !tbaa !17
  %i.ab = sext i32 %i.u to i64
  %i.ac = sext i32 %i.z to i64
  %i.ad = load ptr, ptr @upb_alloc_global, align 8, !tbaa !18
  %i.ae = tail call ptr %i.ad(ptr noundef nonnull @upb_alloc_global, ptr noundef %i.aa, i64 noundef range(i64 -2147483648, 2147483648) %i.ab, i64 noundef range(i64 -2147483648, 2147483648) %i.ac, ptr noundef null) #8, !inline_history !20 ; 2 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !17
  %.not.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.not.i, label %_upb_mapsorter_resize.exit.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b
  %.pre.i = load i32, ptr %i.q, align 4, !tbaa !15
  br label %_upb_mapsorter_resize.exit

_upb_mapsorter_resize.exit:                       ; preds = %._crit_edge, %._crit_edge.i
  %i.af = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.p, %._crit_edge ]
  store i32 %i.af, ptr %i.m, align 8, !tbaa !8
  %i.ag = icmp eq i64 %.025.lcssa, 0
  br i1 %i.ag, label %_upb_mapsorter_resize.exit.thread, label %bb.c

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.02431 = phi i64 [ %i.al, %scalar.ph ], [ %.02431.ph, %scalar.ph.preheader ] ; 2 uses
  %.02530 = phi i64 [ %i.ak, %scalar.ph ], [ %.02530.ph, %scalar.ph.preheader ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.02431
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = and i64 %i.ai, 1
  %i.ak = add i64 %i.aj, %.02530                  ; 2 uses
  %i.al = add nuw nsw i64 %.02431, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !36

bb.c:                                             ; preds = %_upb_mapsorter_resize.exit
  %i.am = load i32, ptr %2, align 4, !tbaa !12
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = load i32, ptr %1, align 8, !tbaa !3     ; 3 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %.not37 = icmp eq i32 %i.ao, 0
  %.pre39 = load ptr, ptr %0, align 8, !tbaa !17  ; 2 uses
  br i1 %.not37, label %._crit_edge36, label %.lr.ph35

.lr.ph35:                                         ; preds = %bb.c
  %i.aq = getelementptr inbounds [8 x i8], ptr %.pre39, i64 %i.an ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %xtraiter = and i64 %i.ap, 3                    ; 3 uses
  %i.as = icmp ult i32 %i.ao, 4
  br i1 %i.as, label %.epil.preheader, label %.lr.ph35.new

.lr.ph35.new:                                     ; preds = %.lr.ph35
  %unroll_iter = and i64 %i.ap, 4294967292
  br label %bb.g

._crit_edge36.loopexit.unr-lcssa:                 ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge36.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge36.loopexit.unr-lcssa, %.lr.ph35
  %.02233.epil.init = phi i64 [ 0, %.lr.ph35 ], [ %i.by, %._crit_edge36.loopexit.unr-lcssa ]
  %.02332.epil.init = phi ptr [ %i.aq, %.lr.ph35 ], [ %.1.3, %._crit_edge36.loopexit.unr-lcssa ]
  %lcmp.mod47 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.epil.preheader
  %.02233.epil = phi i64 [ %.02233.epil.init, %.epil.preheader ], [ %i.ay, %bb.f ] ; 2 uses
  %.02332.epil = phi ptr [ %.02332.epil.init, %.epil.preheader ], [ %.1.epil, %bb.f ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.02233.epil
  %.sroa.0.0.copyload.epil = load i64, ptr %i.at, align 8, !tbaa !37 ; 2 uses
  %i.au = trunc i64 %.sroa.0.0.copyload.epil to i1
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = and i64 %.sroa.0.0.copyload.epil, -4
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %.02332.epil, i64 8
  store ptr %i.aw, ptr %.02332.epil, align 8, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.epil = phi ptr [ %i.ax, %bb.e ], [ %.02332.epil, %bb.d ]
  %i.ay = add nuw nsw i64 %.02233.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge36.loopexit, label %bb.d, !llvm.loop !39

._crit_edge36.loopexit:                           ; preds = %bb.f, %._crit_edge36.loopexit.unr-lcssa
  %.pre = load ptr, ptr %0, align 8, !tbaa !17
  br label %._crit_edge36

._crit_edge36:                                    ; preds = %._crit_edge36.loopexit, %bb.c
  %i.az = phi ptr [ %.pre, %._crit_edge36.loopexit ], [ %.pre39, %bb.c ]
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.an
  tail call void @qsort(ptr noundef %i.ba, i64 noundef %.025.lcssa, i64 noundef 8, ptr noundef nonnull @_upb_mapsorter_cmpext) #8
  br label %_upb_mapsorter_resize.exit.thread

bb.g:                                             ; preds = %bb.o, %.lr.ph35.new
  %.02233 = phi i64 [ 0, %.lr.ph35.new ], [ %i.by, %bb.o ] ; 5 uses
  %.02332 = phi ptr [ %i.aq, %.lr.ph35.new ], [ %.1.3, %bb.o ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph35.new ], [ %niter.next.3, %bb.o ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.02233
  %.sroa.0.0.copyload = load i64, ptr %i.bb, align 8, !tbaa !37 ; 2 uses
  %i.bc = trunc i64 %.sroa.0.0.copyload to i1
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bd = and i64 %.sroa.0.0.copyload, -4
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %.02332, i64 8
  store ptr %i.be, ptr %.02332, align 8, !tbaa !29
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1 = phi ptr [ %i.bf, %bb.h ], [ %.02332, %bb.g ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.02233
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.0.0.copyload.1 = load i64, ptr %i.bh, align 8, !tbaa !37 ; 2 uses
  %i.bi = trunc i64 %.sroa.0.0.copyload.1 to i1
  br i1 %i.bi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bj = and i64 %.sroa.0.0.copyload.1, -4
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store ptr %i.bk, ptr %.1, align 8, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.1 = phi ptr [ %i.bl, %bb.j ], [ %.1, %bb.i ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.02233
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.0.0.copyload.2 = load i64, ptr %i.bn, align 8, !tbaa !37 ; 2 uses
  %i.bo = trunc i64 %.sroa.0.0.copyload.2 to i1
  br i1 %i.bo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bp = and i64 %.sroa.0.0.copyload.2, -4
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr inbounds nuw i8, ptr %.1.1, i64 8
  store ptr %i.bq, ptr %.1.1, align 8, !tbaa !29
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.2 = phi ptr [ %i.br, %bb.l ], [ %.1.1, %bb.k ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.02233
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %.sroa.0.0.copyload.3 = load i64, ptr %i.bt, align 8, !tbaa !37 ; 2 uses
  %i.bu = trunc i64 %.sroa.0.0.copyload.3 to i1
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bv = and i64 %.sroa.0.0.copyload.3, -4
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds nuw i8, ptr %.1.2, i64 8
  store ptr %i.bw, ptr %.1.2, align 8, !tbaa !29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.3 = phi ptr [ %i.bx, %bb.n ], [ %.1.2, %bb.m ] ; 2 uses
  %i.by = add nuw nsw i64 %.02233, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge36.loopexit.unr-lcssa, label %bb.g, !llvm.loop !41

_upb_mapsorter_resize.exit.thread:                ; preds = %bb.b, %_upb_mapsorter_resize.exit, %._crit_edge36
  %.1.i29 = phi i1 [ true, %._crit_edge36 ], [ true, %_upb_mapsorter_resize.exit ], [ false, %bb.b ]
  ret i1 %.1.i29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_upb_mapsorter_cmpext(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %.val5 = load i32, ptr %i.b, align 8, !tbaa !45
  %i.c = load ptr, ptr %1, align 8, !tbaa !29
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %.val = load i32, ptr %i.d, align 8, !tbaa !45
  %i.e = icmp ult i32 %.val5, %.val
  %i.f = select i1 %i.e, i32 -1, i32 1
  ret i32 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_upb_mapsorter_cmpi64(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !32
  %.val2 = load ptr, ptr %1, align 8, !tbaa !32
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load i64, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val2, i64 8
  %.val2.val = load i64, ptr %i.b, align 8
  %i.c = inttoptr i64 %.val.val to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = inttoptr i64 %.val2.val to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.0.copyload4 = load i64, ptr %i.d, align 1
end_hunk_0
