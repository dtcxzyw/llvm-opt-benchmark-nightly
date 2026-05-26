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
  %i.l = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.k, i1 true)
  %i.m = sub nuw nsw i32 32, %i.l
  %i.n = shl nuw i32 1, %i.m
  %.inv.i.i = icmp sgt i32 %i.e, 1
  %i.o = select i1 %.inv.i.i, i32 %i.n, i32 1     ; 2 uses
  store i32 %i.o, ptr %i.g, align 4, !tbaa !16
  %i.p = shl i32 %i.o, 3
  %i.q = sext i32 %i.j to i64
  %i.r = sext i32 %i.p to i64
  %i.s = load ptr, ptr @upb_alloc_global, align 8, !tbaa !18
  %i.t = tail call ptr %i.s(ptr noundef nonnull @upb_alloc_global, ptr noundef %.pre, i64 noundef range(i64 -2147483648, 2147483648) %i.q, i64 noundef range(i64 -2147483648, 2147483648) %i.r, ptr noundef null) #8, !inline_history !20 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !17
  %.not.not.i = icmp eq ptr %i.t, null
  br i1 %.not.not.i, label %_upb_mapsorter_resize.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !15
  %.pre38 = load i32, ptr %3, align 4, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge.i
  %i.u = phi i32 [ %.pre38, %._crit_edge.i ], [ %i.c, %bb.a ]
  %i.v = phi ptr [ %i.t, %._crit_edge.i ], [ %.pre, %bb.a ] ; 2 uses
  %i.w = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.e, %bb.a ]
  store i32 %i.w, ptr %i.b, align 8, !tbaa !8
  %i.x = sext i32 %i.u to i64                     ; 2 uses
  %i.y = load i8, ptr %i.a, align 1, !tbaa !21, !range !24, !noundef !25
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !7  ; 2 uses
  %i.ac = getelementptr i8, ptr %2, i64 20
  %.val32 = load i32, ptr %i.ac, align 4, !tbaa !26
  %i.ad = add i32 %.val32, 1                      ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %.idx = mul nuw nsw i64 %i.ae, 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.x
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.137 = phi ptr [ %i.ak, %bb.e ], [ %i.ab, %.lr.ph.preheader ] ; 3 uses
  %.02836 = phi ptr [ %.129, %bb.e ], [ %i.ag, %.lr.ph.preheader ] ; 3 uses
  %i.ah = getelementptr i8, ptr %.137, i64 8
  %.1.val = load i64, ptr %i.ah, align 8, !tbaa !7
  %i.ai = icmp eq i64 %.1.val, 0
  br i1 %i.ai, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  store ptr %.137, ptr %.02836, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %.02836, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.129 = phi ptr [ %.02836, %.lr.ph ], [ %i.aj, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.137, i64 24 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %i.af
  br i1 %i.al, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !30

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre39 = load ptr, ptr %0, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.am = phi ptr [ %.pre39, %._crit_edge.loopexit ], [ %i.v, %bb.c ]
  %i.an = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.x
  %i.ao = sext i32 %.030 to i64
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.ap = zext i32 %1 to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr @compar, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.as = phi ptr [ %i.ar, %bb.f ], [ @_upb_mapsorter_intkeys, %._crit_edge ]
  tail call void @qsort(ptr noundef %i.an, i64 noundef %i.ao, i64 noundef 8, ptr noundef %i.as) #8
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
  %.025.lcssa = phi i64 [ 0, %bb.a ], [ %i.k, %middle.block ], [ %i.al, %scalar.ph ] ; 3 uses
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
  %i.w = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.v, i1 true)
  %i.x = sub nuw nsw i32 32, %i.w
  %i.y = shl nuw i32 1, %i.x
  %.inv.i.i = icmp sgt i32 %i.p, 1
  %i.z = select i1 %.inv.i.i, i32 %i.y, i32 1     ; 2 uses
  store i32 %i.z, ptr %i.r, align 4, !tbaa !16
  %i.aa = shl i32 %i.z, 3
  %i.ab = load ptr, ptr %0, align 8, !tbaa !17
  %i.ac = sext i32 %i.u to i64
  %i.ad = sext i32 %i.aa to i64
  %i.ae = load ptr, ptr @upb_alloc_global, align 8, !tbaa !18
  %i.af = tail call ptr %i.ae(ptr noundef nonnull @upb_alloc_global, ptr noundef %i.ab, i64 noundef range(i64 -2147483648, 2147483648) %i.ac, i64 noundef range(i64 -2147483648, 2147483648) %i.ad, ptr noundef null) #8, !inline_history !20 ; 2 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !17
  %.not.not.i = icmp eq ptr %i.af, null
  br i1 %.not.not.i, label %_upb_mapsorter_resize.exit.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b
  %.pre.i = load i32, ptr %i.q, align 4, !tbaa !15
  br label %_upb_mapsorter_resize.exit

_upb_mapsorter_resize.exit:                       ; preds = %._crit_edge, %._crit_edge.i
  %i.ag = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.p, %._crit_edge ]
  store i32 %i.ag, ptr %i.m, align 8, !tbaa !8
  %i.ah = icmp eq i64 %.025.lcssa, 0
  br i1 %i.ah, label %_upb_mapsorter_resize.exit.thread, label %bb.c

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.02431 = phi i64 [ %i.am, %scalar.ph ], [ %.02431.ph, %scalar.ph.preheader ] ; 2 uses
  %.02530 = phi i64 [ %i.al, %scalar.ph ], [ %.02530.ph, %scalar.ph.preheader ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.02431
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = and i64 %i.aj, 1
  %i.al = add i64 %i.ak, %.02530                  ; 2 uses
  %i.am = add nuw nsw i64 %.02431, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !36

bb.c:                                             ; preds = %_upb_mapsorter_resize.exit
  %i.an = load i32, ptr %2, align 4, !tbaa !12
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = load i32, ptr %1, align 8, !tbaa !3     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %.not37 = icmp eq i32 %i.ap, 0
  %.pre39 = load ptr, ptr %0, align 8, !tbaa !17  ; 2 uses
  br i1 %.not37, label %._crit_edge36, label %.lr.ph35

.lr.ph35:                                         ; preds = %bb.c
  %i.ar = getelementptr inbounds [8 x i8], ptr %.pre39, i64 %i.ao ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %xtraiter = and i64 %i.aq, 3                    ; 3 uses
  %i.at = icmp ult i32 %i.ap, 4
  br i1 %i.at, label %.epil.preheader, label %.lr.ph35.new

.lr.ph35.new:                                     ; preds = %.lr.ph35
  %unroll_iter = and i64 %i.aq, 4294967292
  br label %bb.g

._crit_edge36.loopexit.unr-lcssa:                 ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge36.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge36.loopexit.unr-lcssa, %.lr.ph35
  %.02233.epil.init = phi i64 [ 0, %.lr.ph35 ], [ %i.bz, %._crit_edge36.loopexit.unr-lcssa ]
  %.02332.epil.init = phi ptr [ %i.ar, %.lr.ph35 ], [ %.1.3, %._crit_edge36.loopexit.unr-lcssa ]
  %lcmp.mod47 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.epil.preheader
  %.02233.epil = phi i64 [ %.02233.epil.init, %.epil.preheader ], [ %i.az, %bb.f ] ; 2 uses
  %.02332.epil = phi ptr [ %.02332.epil.init, %.epil.preheader ], [ %.1.epil, %bb.f ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.02233.epil
  %.sroa.0.0.copyload.epil = load i64, ptr %i.au, align 8, !tbaa !37 ; 2 uses
  %i.av = trunc i64 %.sroa.0.0.copyload.epil to i1
  br i1 %i.av, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aw = and i64 %.sroa.0.0.copyload.epil, -4
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %.02332.epil, i64 8
  store ptr %i.ax, ptr %.02332.epil, align 8, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.epil = phi ptr [ %i.ay, %bb.e ], [ %.02332.epil, %bb.d ]
  %i.az = add nuw nsw i64 %.02233.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge36.loopexit, label %bb.d, !llvm.loop !39

._crit_edge36.loopexit:                           ; preds = %bb.f, %._crit_edge36.loopexit.unr-lcssa
  %.pre = load ptr, ptr %0, align 8, !tbaa !17
  br label %._crit_edge36

._crit_edge36:                                    ; preds = %._crit_edge36.loopexit, %bb.c
  %i.ba = phi ptr [ %.pre, %._crit_edge36.loopexit ], [ %.pre39, %bb.c ]
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.ao
  tail call void @qsort(ptr noundef %i.bb, i64 noundef %.025.lcssa, i64 noundef 8, ptr noundef nonnull @_upb_mapsorter_cmpext) #8
  br label %_upb_mapsorter_resize.exit.thread

bb.g:                                             ; preds = %bb.o, %.lr.ph35.new
  %.02233 = phi i64 [ 0, %.lr.ph35.new ], [ %i.bz, %bb.o ] ; 5 uses
  %.02332 = phi ptr [ %i.ar, %.lr.ph35.new ], [ %.1.3, %bb.o ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph35.new ], [ %niter.next.3, %bb.o ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.02233
  %.sroa.0.0.copyload = load i64, ptr %i.bc, align 8, !tbaa !37 ; 2 uses
  %i.bd = trunc i64 %.sroa.0.0.copyload to i1
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.be = and i64 %.sroa.0.0.copyload, -4
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = getelementptr inbounds nuw i8, ptr %.02332, i64 8
  store ptr %i.bf, ptr %.02332, align 8, !tbaa !29
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1 = phi ptr [ %i.bg, %bb.h ], [ %.02332, %bb.g ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.02233
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.0.0.copyload.1 = load i64, ptr %i.bi, align 8, !tbaa !37 ; 2 uses
  %i.bj = trunc i64 %.sroa.0.0.copyload.1 to i1
  br i1 %i.bj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bk = and i64 %.sroa.0.0.copyload.1, -4
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store ptr %i.bl, ptr %.1, align 8, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.1 = phi ptr [ %i.bm, %bb.j ], [ %.1, %bb.i ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.02233
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.0.0.copyload.2 = load i64, ptr %i.bo, align 8, !tbaa !37 ; 2 uses
  %i.bp = trunc i64 %.sroa.0.0.copyload.2 to i1
  br i1 %i.bp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bq = and i64 %.sroa.0.0.copyload.2, -4
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = getelementptr inbounds nuw i8, ptr %.1.1, i64 8
  store ptr %i.br, ptr %.1.1, align 8, !tbaa !29
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.2 = phi ptr [ %i.bs, %bb.l ], [ %.1.1, %bb.k ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.02233
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %.sroa.0.0.copyload.3 = load i64, ptr %i.bu, align 8, !tbaa !37 ; 2 uses
  %i.bv = trunc i64 %.sroa.0.0.copyload.3 to i1
  br i1 %i.bv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bw = and i64 %.sroa.0.0.copyload.3, -4
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds nuw i8, ptr %.1.2, i64 8
  store ptr %i.bx, ptr %.1.2, align 8, !tbaa !29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.3 = phi ptr [ %i.by, %bb.n ], [ %.1.2, %bb.m ] ; 2 uses
  %i.bz = add nuw nsw i64 %.02233, 4              ; 2 uses
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
  %.0.copyload = load i64, ptr %i.f, align 1
  %i.g = tail call i32 @llvm.scmp.i32.i64(i64 %.0.copyload4, i64 %.0.copyload)
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_upb_mapsorter_cmpu64(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #2 {
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
  %.0.copyload = load i64, ptr %i.f, align 1
  %i.g = tail call i32 @llvm.ucmp.i32.i64(i64 %.0.copyload4, i64 %.0.copyload)
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_upb_mapsorter_cmpi32(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #2 {
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
  %.0.copyload4 = load i32, ptr %i.d, align 1
  %.0.copyload = load i32, ptr %i.f, align 1
  %i.g = tail call i32 @llvm.scmp.i32.i32(i32 %.0.copyload4, i32 %.0.copyload)
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_upb_mapsorter_cmpu32(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #2 {
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
  %.0.copyload4 = load i32, ptr %i.d, align 1
  %.0.copyload = load i32, ptr %i.f, align 1
  %i.g = tail call i32 @llvm.ucmp.i32.i32(i32 %.0.copyload4, i32 %.0.copyload)
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_upb_mapsorter_cmpbool(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !32
  %.val3 = load ptr, ptr %1, align 8, !tbaa !32
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load i64, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val3, i64 8
  %.val3.val = load i64, ptr %i.b, align 8
  %i.c = inttoptr i64 %.val.val to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = inttoptr i64 %.val3.val to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.0.copyload5 = load i8, ptr %i.d, align 1
  %.0.copyload = load i8, ptr %i.f, align 1
  %i.g = tail call i32 @llvm.ucmp.i32.i8(i8 %.0.copyload5, i8 %.0.copyload)
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -2147483647, -2147483648) i32 @_upb_mapsorter_cmpstr(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !32
  %.val6 = load ptr, ptr %1, align 8, !tbaa !32
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load i64, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val6, i64 8
  %.val6.val = load i64, ptr %i.b, align 8
  %i.c = inttoptr i64 %.val.val to ptr            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = inttoptr i64 %.val6.val to ptr           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !3
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.h)
  %i.l = tail call i32 @memcmp(ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, i64 noundef %i.k) #9 ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sub nsw i32 0, %i.l
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = tail call i32 @llvm.ucmp.i32.i64(i64 %i.j, i64 %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.m, %bb.b ], [ %i.n, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i8(i8, i8) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !4, i64 8}
!9 = !{!"", !10, i64 0, !4, i64 8, !4, i64 12}
!10 = !{!"any p2 pointer", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!13, !4, i64 0}
!13 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8}
!14 = !{!13, !4, i64 4}
!15 = !{!13, !4, i64 8}
!16 = !{!9, !4, i64 12}
!17 = !{!9, !10, i64 0}
!18 = !{!19, !11, i64 0}
!19 = !{!"upb_alloc", !11, i64 0}
!20 = distinct !{null, null, null}
!21 = !{!22, !23, i64 3}
!22 = !{!"upb_Map", !5, i64 0, !5, i64 1, !23, i64 2, !23, i64 3, !5, i64 8}
!23 = !{!"_Bool", !5, i64 0}
!24 = !{i8 0, i8 2}
!25 = !{}
!26 = !{!27, !4, i64 12}
!27 = !{!"", !28, i64 0, !4, i64 8, !4, i64 12}
!28 = !{!"p1 _ZTS11_upb_tabent", !11, i64 0}
!29 = !{!11, !11, i64 0}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!28, !28, i64 0}
!33 = distinct !{!33, !31, !34, !35}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = distinct !{!36, !31, !35, !34}
!37 = !{!38, !38, i64 0}
!38 = !{!"long", !5, i64 0}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !31}
!42 = !{!43, !44, i64 0}
!43 = !{!"", !44, i64 0, !5, i64 8}
!44 = !{!"p1 _ZTS22upb_MiniTableExtension", !11, i64 0}
!45 = !{!46, !4, i64 0}
!46 = !{!"upb_MiniTableExtension", !47, i64 0, !5, i64 16, !49, i64 24}
!47 = !{!"upb_MiniTableField", !4, i64 0, !48, i64 4, !48, i64 6, !48, i64 8, !5, i64 10, !5, i64 11}
!48 = !{!"short", !5, i64 0}
!49 = !{!"p1 _ZTS13upb_MiniTable", !11, i64 0}
end_hunk_0
