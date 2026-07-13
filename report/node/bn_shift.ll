inline.NumInlined: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [48 x i8] c"../../deps/openssl/openssl/crypto/bn/bn_shift.c\00", align 1
@__func__.BN_lshift = private unnamed_addr constant [10 x i8] c"BN_lshift\00", align 1
@__func__.BN_rshift = private unnamed_addr constant [10 x i8] c"BN_rshift\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @BN_lshift1(ptr noundef %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.b, ptr %i.c, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !13
  %i.f = add nsw i32 %i.e, 1
  %i.g = tail call ptr @bn_wexpand(ptr noundef %0, i32 noundef %i.f) #5
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.i, ptr %i.j, align 8, !tbaa !13
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !13
  %i.m = add nsw i32 %i.l, 1
  %i.n = tail call ptr @bn_wexpand(ptr noundef %0, i32 noundef %i.m) #5
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %._crit_edge37

._crit_edge37:                                    ; preds = %bb.d
  %.pre = load i32, ptr %i.k, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge37, %bb.c
  %i.p = phi i32 [ %.pre, %._crit_edge37 ], [ %i.i, %bb.c ] ; 4 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.r = icmp sgt i32 %i.p, 0
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.s = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %xtraiter = and i32 %i.p, 3                     ; 3 uses
  %i.t = icmp ult i32 %i.p, 4
  br i1 %i.t, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.p, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.02433 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.al, %.lr.ph ]
  %.02632 = phi ptr [ %i.q, %.lr.ph.preheader.new ], [ %i.ak, %.lr.ph ] ; 5 uses
  %.02731 = phi ptr [ %i.s, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.u = getelementptr inbounds nuw i8, ptr %.02731, i64 8
  %i.v = load i64, ptr %.02731, align 8, !tbaa !15 ; 2 uses
  %i.w = shl i64 %i.v, 1
  %i.x = or disjoint i64 %i.w, %.02433
  %i.y = getelementptr inbounds nuw i8, ptr %.02632, i64 8
  store i64 %i.x, ptr %.02632, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %.02731, i64 16
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !15  ; 2 uses
  %i.ab = tail call i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.v, i64 1)
  %i.ac = getelementptr inbounds nuw i8, ptr %.02632, i64 16
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %.02731, i64 24
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !15  ; 2 uses
  %i.af = tail call i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.aa, i64 1)
  %i.ag = getelementptr inbounds nuw i8, ptr %.02632, i64 24
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %.02731, i64 32 ; 2 uses
  %i.ai = load i64, ptr %i.ad, align 8, !tbaa !15 ; 2 uses
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ae, i64 1)
  %i.ak = getelementptr inbounds nuw i8, ptr %.02632, i64 32 ; 3 uses
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !15
  %i.al = lshr i64 %i.ai, 63                      ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !17

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.02433.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.al, %._crit_edge.loopexit.unr-lcssa ]
  %.02632.epil.init = phi ptr [ %i.q, %.lr.ph.preheader ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ]
  %.02731.epil.init = phi ptr [ %i.s, %.lr.ph.preheader ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod46 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.02433.epil = phi i64 [ %i.ar, %.lr.ph.epil ], [ %.02433.epil.init, %.lr.ph.epil.preheader ]
  %.02632.epil = phi ptr [ %i.aq, %.lr.ph.epil ], [ %.02632.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.02731.epil = phi ptr [ %i.am, %.lr.ph.epil ], [ %.02731.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.am = getelementptr inbounds nuw i8, ptr %.02731.epil, i64 8
  %i.an = load i64, ptr %.02731.epil, align 8, !tbaa !15 ; 2 uses
  %i.ao = shl i64 %i.an, 1
  %i.ap = or disjoint i64 %i.ao, %.02433.epil
  %i.aq = getelementptr inbounds nuw i8, ptr %.02632.epil, i64 8 ; 2 uses
  store i64 %i.ap, ptr %.02632.epil, align 8, !tbaa !15
  %i.ar = lshr i64 %i.an, 63                      ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !19

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.e
  %.026.lcssa = phi ptr [ %i.q, %bb.e ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ], [ %i.aq, %.lr.ph.epil ]
  %.024.lcssa = phi i64 [ 0, %bb.e ], [ %i.al, %._crit_edge.loopexit.unr-lcssa ], [ %i.ar, %.lr.ph.epil ] ; 2 uses
  store i64 %.024.lcssa, ptr %.026.lcssa, align 8, !tbaa !15
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !13
  %i.au = trunc nuw nsw i64 %.024.lcssa to i32
  %i.av = add i32 %i.at, %i.au
  store i32 %i.av, ptr %i.as, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %._crit_edge
  %.025 = phi i32 [ 0, %bb.b ], [ 1, %._crit_edge ], [ 0, %bb.d ]
  ret i32 %.025
}

declare ptr @bn_wexpand(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @BN_rshift1(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BN_is_zero(ptr noundef %1) #5
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @BN_zero_ex(ptr noundef %0) #5
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !13   ; 5 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !14     ; 4 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %.not35 = icmp eq ptr %1, %0
  br i1 %.not35, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @bn_wexpand(ptr noundef %0, i32 noundef %i.c) #5
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.i, ptr %i.j, align 8, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !14     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = add nsw i32 %i.c, -1                     ; 3 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !15   ; 4 uses
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.n
  store i64 %i.q, ptr %i.r, align 8, !tbaa !15
  %i.s = icmp eq i64 %i.p, 1
  %.neg = sext i1 %i.s to i32
  %i.t = add i32 %i.c, %.neg                      ; 2 uses
  store i32 %i.t, ptr %i.l, align 8, !tbaa !13
  %i.u = icmp sgt i32 %i.c, 1
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.v = ptrtoaddr ptr %i.k to i64
  %i.w = zext i32 %i.m to i64                     ; 3 uses
  %2 = zext nneg i32 %i.c to i64
  %i.x = icmp ne i32 %i.m, 0
  %umin.neg = sext i1 %i.x to i64
  %i.y = add nsw i64 %umin.neg, %2                ; 3 uses
  %min.iters.check = icmp ult i64 %i.y, 4
  %i.z = sub i64 %i.v, %i.e
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader45, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.y, -4                       ; 3 uses
  %i.aa = sub nsw i64 %i.w, %n.vec
  %vector.recur.init = insertelement <2 x i64> poison, i64 %i.p, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %reverse42, %vector.body ]
  %i.ab = xor i64 %index, -1
  %i.ac = add i64 %i.ab, %i.w                     ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -24
  %wide.load = load <2 x i64>, ptr %i.ae, align 8, !tbaa !15 ; 3 uses
  %wide.load41 = load <2 x i64>, ptr %i.af, align 8, !tbaa !15 ; 3 uses
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse42 = shufflevector <2 x i64> %wide.load41, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ag = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 3>
  %i.ah = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load41, <2 x i32> <i32 0, i32 3>
  %i.ai = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.ag, <2 x i64> %reverse, <2 x i64> splat (i64 63))
  %i.aj = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.ah, <2 x i64> %reverse42, <2 x i64> splat (i64 63))
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ac ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -24
  %reverse43 = shufflevector <2 x i64> %i.ai, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse44 = shufflevector <2 x i64> %i.aj, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse43, ptr %i.al, align 8, !tbaa !15
  store <2 x i64> %reverse44, ptr %i.am, align 8, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load41, i64 0
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader45

.lr.ph.preheader45:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.w, %.lr.ph.preheader ], [ %i.aa, %middle.block ]
  %.031.in37.ph = phi i64 [ %i.p, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader45, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader45 ] ; 2 uses
  %.031.in37 = phi i64 [ %i.ap, %.lr.ph ], [ %.031.in37.ph, %.lr.ph.preheader45 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !15 ; 2 uses
  %i.aq = tail call i64 @llvm.fshl.i64(i64 %.031.in37, i64 %i.ap, i64 63)
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !15
  %i.as = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.f
  %.not36 = icmp eq i32 %i.t, 0
  br i1 %.not36, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.at, align 8, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.d, %bb.b
  %.032 = phi i32 [ 1, %bb.b ], [ 0, %bb.d ], [ 1, %bb.g ], [ 1, %._crit_edge ]
  ret i32 %.032
}

declare i32 @BN_is_zero(ptr noundef) local_unnamed_addr #1

declare void @BN_zero_ex(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @BN_lshift(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 86, ptr noundef nonnull @__func__.BN_lshift) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 119, ptr noundef null) #5
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = lshr i32 %2, 6                           ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13
  %i.e = add nuw nsw i32 %i.b, 1                  ; 2 uses
  %i.f = add i32 %i.d, %i.e
  %i.g = tail call ptr @bn_wexpand(ptr noundef %0, i32 noundef %i.f) #5
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bn_lshift_fixed_top.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.c, align 8, !tbaa !13   ; 6 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = and i32 %2, 63
  %i.k = sub nsw i32 0, %2
  %i.l = and i32 %i.k, 63
  %i.m = zext nneg i32 %i.l to i64                ; 4 uses
  %i.n = sub nsw i64 0, %i.m                      ; 2 uses
  %i.o = lshr i64 %i.n, 8
  %i.p = or i64 %i.o, %i.n                        ; 3 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !14     ; 4 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = load ptr, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = zext nneg i32 %i.b to i64                ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.u ; 4 uses
  %i.w = sext i32 %i.i to i64                     ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.q, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !15   ; 5 uses
  %i.aa = lshr i64 %i.z, %i.m
  %i.ab = and i64 %i.aa, %i.p
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !15
  %i.ad = icmp sgt i32 %i.i, 1
  %i.ae = zext nneg i32 %i.j to i64               ; 3 uses
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.af = zext nneg i32 %i.i to i64               ; 5 uses
  %i.ag = add nsw i64 %i.af, -1                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.i, 13
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.ah = shl nuw nsw i64 %i.u, 3
  %i.ai = add i64 %i.ah, %i.t
  %i.aj = sub i64 %i.r, %i.ai
  %i.ak = add i64 %i.aj, -9
  %diff.check = icmp ult i64 %i.ak, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, -4                      ; 3 uses
  %i.al = sub nsw i64 %i.af, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ae, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert9 = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %broadcast.splat10 = shufflevector <2 x i64> %broadcast.splatinsert9, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert11 = insertelement <2 x i64> poison, i64 %i.p, i64 0
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %vector.recur.init = insertelement <2 x i64> poison, i64 %i.z, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %reverse14, %vector.body ]
  %i.am = sub i64 %i.af, %index                   ; 2 uses
  %i.an = getelementptr [8 x i8], ptr %i.q, i64 %i.am ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = getelementptr i8, ptr %i.an, i64 -40
  %wide.load = load <2 x i64>, ptr %i.ao, align 8, !tbaa !15 ; 3 uses
  %wide.load13 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !15 ; 3 uses
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse14 = shufflevector <2 x i64> %wide.load13, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aq = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 3>
  %i.ar = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load13, <2 x i32> <i32 0, i32 3>
  %i.as = shl <2 x i64> %i.aq, %broadcast.splat
  %i.at = shl <2 x i64> %i.ar, %broadcast.splat
  %i.au = lshr <2 x i64> %reverse, %broadcast.splat10
  %i.av = lshr <2 x i64> %reverse14, %broadcast.splat10
  %i.aw = and <2 x i64> %i.au, %broadcast.splat12
  %i.ax = and <2 x i64> %i.av, %broadcast.splat12
  %i.ay = or <2 x i64> %i.aw, %i.as
  %i.az = or <2 x i64> %i.ax, %i.at
  %i.ba = getelementptr [8 x i8], ptr %i.v, i64 %i.am ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 -16
  %i.bc = getelementptr i8, ptr %i.ba, i64 -32
  %reverse15 = shufflevector <2 x i64> %i.ay, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse16 = shufflevector <2 x i64> %i.az, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse15, ptr %i.bb, align 8, !tbaa !15
  store <2 x i64> %reverse16, ptr %i.bc, align 8, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load13, i64 0 ; 2 uses
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i ], [ %i.al, %middle.block ]
  %.04854.i.ph = phi i64 [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

end_hunk_0
