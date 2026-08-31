Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/constant_time?download=true
inline.NumInlined: 17
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define range(i32 0, 256) i32 @mbedtls_ct_memcmp(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.a = icmp ult i64 %2, 4
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.015 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ag, %.lr.ph ] ; 6 uses
  %.01314 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.af, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  %i.c = load volatile i8, ptr %i.b, align 1, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.015
  %i.e = load volatile i8, ptr %i.d, align 1, !tbaa !8
  %i.f = xor i8 %i.e, %i.c
  %i.g = zext i8 %i.f to i32
  %i.h = or i32 %.01314, %i.g
  %i.i = or disjoint i64 %.015, 1                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %i.k = load volatile i8, ptr %i.j, align 1, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.m = load volatile i8, ptr %i.l, align 1, !tbaa !8
  %i.n = xor i8 %i.m, %i.k
  %i.o = zext i8 %i.n to i32
  %i.p = or i32 %i.h, %i.o
  %i.q = or disjoint i64 %.015, 2                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.s = load volatile i8, ptr %i.r, align 1, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.u = load volatile i8, ptr %i.t, align 1, !tbaa !8
  %i.v = xor i8 %i.u, %i.s
  %i.w = zext i8 %i.v to i32
  %i.x = or i32 %i.p, %i.w
  %i.y = or disjoint i64 %.015, 3                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.aa = load volatile i8, ptr %i.z, align 1, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %i.ac = load volatile i8, ptr %i.ab, align 1, !tbaa !8
  %i.ad = xor i8 %i.ac, %i.aa
  %i.ae = zext i8 %i.ad to i32
  %i.af = or i32 %i.x, %i.ae                      ; 3 uses
  %i.ag = add nuw i64 %.015, 4                    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !9

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.015.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ]
  %.01314.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.015.epil = phi i64 [ %i.ao, %.lr.ph.epil ], [ %.015.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.01314.epil = phi i32 [ %i.an, %.lr.ph.epil ], [ %.01314.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.015.epil
  %i.ai = load volatile i8, ptr %i.ah, align 1, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.015.epil
  %i.ak = load volatile i8, ptr %i.aj, align 1, !tbaa !8
  %i.al = xor i8 %i.ak, %i.ai
  %i.am = zext i8 %i.al to i32
  %i.an = or i32 %.01314.epil, %i.am              ; 2 uses
  %i.ao = add nuw i64 %.015.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !11

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.013.lcssa = phi i32 [ 0, %bb.a ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.epil ]
  ret i32 %.013.lcssa
}

; Function Attrs: nounwind uwtable
define range(i32 0, 256) i32 @mbedtls_ct_memcmp_partial(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = sub i64 %2, %4
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.p, %.lr.ph ]
  ret i32 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.022 = phi i32 [ %i.p, %.lr.ph ], [ 0, %bb.a ]
  %.02021 = phi i64 [ %i.q, %.lr.ph ], [ 0, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.02021
  %i.c = load volatile i8, ptr %i.b, align 1, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.02021
  %i.e = load volatile i8, ptr %i.d, align 1, !tbaa !8
  %i.f = xor i8 %i.e, %i.c
  %i.g = zext i8 %i.f to i32
  %i.h = tail call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %.02021, i64 %3) #4, !srcloc !13
  %i.i = extractvalue { i64, i64, i64 } %i.h, 1
  %i.j = xor i64 %i.i, -1
  %i.k = tail call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %.02021, i64 %i.a) #4, !srcloc !13
  %i.l = extractvalue { i64, i64, i64 } %i.k, 1
  %i.m = and i64 %i.l, %i.j
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, %i.g
  %i.p = or i32 %i.o, %.022                       ; 2 uses
  %i.q = add nuw i64 %.02021, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14
}

; Function Attrs: nounwind uwtable
define void @mbedtls_ct_memmove_left(ptr nofree noundef captures(address) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge30, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.a
  %i.a = sub i64 %1, %2                           ; 2 uses
  %i.b = add i64 %1, -1                           ; 3 uses
  %.not31 = icmp eq i64 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 4 uses
  br i1 %.not31, label %.lr.ph29.split, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph29, %._crit_edge.us
  %.027.us = phi i64 [ %i.s, %._crit_edge.us ], [ 0, %.lr.ph29 ] ; 2 uses
  %i.d = tail call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %.027.us, i64 %i.a) #4, !srcloc !13
  %i.e = extractvalue { i64, i64, i64 } %i.d, 1   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %.02326.us = phi i64 [ 0, %.lr.ph.us ], [ %i.h, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.02326.us ; 2 uses
  %i.g = load volatile i8, ptr %i.f, align 1, !tbaa !8
  %i.h = add nuw i64 %.02326.us, 1                ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.j = load volatile i8, ptr %i.i, align 1, !tbaa !8
  %i.k = zext i8 %i.g to i64
  %i.l = zext i8 %i.j to i64
  %i.m = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.e, i64 range(i64 0, 256) %i.k, i64 range(i64 0, 256) %i.l) #4, !srcloc !15
  %i.n = extractvalue { i64, i64, i64 } %i.m, 2
  %i.o = trunc i64 %i.n to i8
  store volatile i8 %i.o, ptr %i.f, align 1, !tbaa !8
  %exitcond.not = icmp eq i64 %i.h, %i.b
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !16

._crit_edge.us:                                   ; preds = %bb.b
  %i.p = load volatile i8, ptr %i.c, align 1, !tbaa !8
  %i.q = trunc i64 %i.e to i8
  %i.r = and i8 %i.p, %i.q
  store volatile i8 %i.r, ptr %i.c, align 1, !tbaa !8
  %i.s = add nuw i64 %.027.us, 1                  ; 2 uses
  %exitcond33.not = icmp eq i64 %i.s, %1
  br i1 %exitcond33.not, label %._crit_edge30, label %.lr.ph.us, !llvm.loop !17

._crit_edge30:                                    ; preds = %._crit_edge.us, %.lr.ph29.split, %bb.a
  ret void

.lr.ph29.split:                                   ; preds = %.lr.ph29
  %i.t = tail call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 0, i64 %i.a) #4, !srcloc !13
  %i.u = extractvalue { i64, i64, i64 } %i.t, 1
  %i.v = load volatile i8, ptr %i.c, align 1, !tbaa !8
  %i.w = trunc i64 %i.u to i8
  %i.x = and i8 %i.v, %i.w
  store volatile i8 %i.x, ptr %i.c, align 1, !tbaa !8
  br label %._crit_edge30
}

; Function Attrs: nounwind uwtable
define void @mbedtls_ct_memcpy_if(i64 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %0) #4, !srcloc !18
  %i.b = xor i64 %i.a, -1                         ; 8 uses
  %i.c = icmp eq ptr %3, null
  %spec.select = select i1 %i.c, ptr %1, ptr %3   ; 8 uses
  %.not31 = icmp ult i64 %4, 8
  br i1 %.not31, label %.preheader, label %vector.memcheck

.preheader:                                       ; preds = %vector.memcheck, %bb.a
  %.027.lcssa = phi i64 [ 0, %bb.a ], [ %5, %vector.memcheck ] ; 10 uses
  %i.d = icmp ult i64 %.027.lcssa, %4
  br i1 %i.d, label %vector.ph, label %._crit_edge

vector.memcheck:                                  ; preds = %bb.a, %vector.memcheck
  %5 = phi i64 [ %12, %vector.memcheck ], [ 8, %bb.a ] ; 3 uses
  %.02732 = phi i64 [ %5, %vector.memcheck ], [ 0, %bb.a ] ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 %.02732
  %.0.copyload.i30 = load i64, ptr %6, align 1
  %7 = and i64 %.0.copyload.i30, %0
  %8 = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.02732
  %.0.copyload.i = load i64, ptr %8, align 1
  %9 = and i64 %.0.copyload.i, %i.b
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 %.02732
  %11 = or i64 %9, %7
  store i64 %11, ptr %10, align 1
  %12 = add i64 %5, 8                             ; 2 uses
  %.not = icmp ugt i64 %12, %4
  br i1 %.not, label %.preheader, label %vector.memcheck, !llvm.loop !19

vector.ph:                                        ; preds = %.preheader
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 %.027.lcssa
  %14 = load i8, ptr %13, align 1, !tbaa !8
  %15 = zext i8 %14 to i64
  %16 = and i64 %0, %15
  %17 = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.027.lcssa
  %18 = load i8, ptr %17, align 1, !tbaa !8
  %19 = zext i8 %18 to i64
  %n.vec = and i64 %19, %i.b
  %20 = or i64 %n.vec, %16
  %21 = trunc nuw i64 %20 to i8
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 %.027.lcssa
  store i8 %21, ptr %22, align 1, !tbaa !8
  %23 = or disjoint i64 %.027.lcssa, 1            ; 4 uses
  %exitcond.not = icmp eq i64 %23, %4
  br i1 %exitcond.not, label %._crit_edge, label %vector.body

vector.body:                                      ; preds = %vector.ph
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %23
  %24 = load i8, ptr %i.e, align 1, !tbaa !8
  %25 = zext i8 %24 to i64
  %26 = and i64 %0, %25
  %i.f = getelementptr inbounds nuw i8, ptr %spec.select, i64 %23
  %27 = load i8, ptr %i.f, align 1, !tbaa !8
  %28 = zext i8 %27 to i64
  %29 = and i64 %28, %i.b
  %30 = or i64 %29, %26
  %31 = trunc nuw i64 %30 to i8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %23
  store i8 %31, ptr %i.g, align 1, !tbaa !8
  %32 = or disjoint i64 %.027.lcssa, 2            ; 4 uses
  %i.h = icmp eq i64 %32, %4
  br i1 %i.h, label %._crit_edge, label %.lr.ph34.preheader40

.lr.ph34.preheader40:                             ; preds = %vector.body
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !8
  %35 = zext i8 %34 to i64
  %36 = and i64 %0, %35
  %37 = getelementptr inbounds nuw i8, ptr %spec.select, i64 %32
  %38 = load i8, ptr %37, align 1, !tbaa !8
  %39 = zext i8 %38 to i64
  %xtraiter = and i64 %39, %i.b
  %40 = or i64 %xtraiter, %36
  %41 = trunc nuw i64 %40 to i8
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 %32
  store i8 %41, ptr %42, align 1, !tbaa !8
  %43 = or disjoint i64 %.027.lcssa, 3            ; 4 uses
  %lcmp.mod.not = icmp eq i64 %43, %4
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph34.prol

.lr.ph34.prol:                                    ; preds = %.lr.ph34.preheader40
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %43
  %i.j = load i8, ptr %i.i, align 1, !tbaa !8
  %i.k = zext i8 %i.j to i64
  %i.l = and i64 %0, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select, i64 %43
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = zext i8 %i.n to i64
  %i.p = and i64 %i.o, %i.b
  %i.q = or i64 %i.p, %i.l
  %i.r = trunc nuw i64 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %43
  store i8 %i.r, ptr %i.s, align 1, !tbaa !8
  %44 = or disjoint i64 %.027.lcssa, 4            ; 4 uses
  %exitcond.not.3 = icmp eq i64 %44, %4
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph34.prol.loopexit

.lr.ph34.prol.loopexit:                           ; preds = %.lr.ph34.prol
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !8
  %47 = zext i8 %46 to i64
  %48 = and i64 %0, %47
  %49 = getelementptr inbounds nuw i8, ptr %spec.select, i64 %44
  %50 = load i8, ptr %49, align 1, !tbaa !8
  %51 = zext i8 %50 to i64
  %52 = and i64 %51, %i.b
  %53 = or i64 %52, %48
  %54 = trunc nuw i64 %53 to i8
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 %44
  store i8 %54, ptr %55, align 1, !tbaa !8
  %56 = or disjoint i64 %.027.lcssa, 5            ; 4 uses
  %i.t = icmp eq i64 %56, %4
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph34.prol.loopexit
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !8
  %59 = zext i8 %58 to i64
  %60 = and i64 %0, %59
  %61 = getelementptr inbounds nuw i8, ptr %spec.select, i64 %56
  %62 = load i8, ptr %61, align 1, !tbaa !8
  %63 = zext i8 %62 to i64
  %i.u = and i64 %63, %i.b
  %64 = or i64 %i.u, %60
  %65 = trunc nuw i64 %64 to i8
  %66 = getelementptr inbounds nuw i8, ptr %1, i64 %56
  store i8 %65, ptr %66, align 1, !tbaa !8
  %67 = or disjoint i64 %.027.lcssa, 6            ; 4 uses
  %exitcond.not.5 = icmp eq i64 %67, %4
  br i1 %exitcond.not.5, label %._crit_edge, label %.lr.ph34

.lr.ph34:                                         ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %67
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  %i.x = zext i8 %i.w to i64
  %i.y = and i64 %0, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select, i64 %67
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8
  %i.ab = zext i8 %i.aa to i64
  %i.ac = and i64 %i.ab, %i.b
  %i.ad = or i64 %i.ac, %i.y
  %i.ae = trunc nuw i64 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %67
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %vector.ph, %vector.body, %.lr.ph34.preheader40, %.lr.ph34.prol, %.lr.ph34.prol.loopexit, %.lr.ph, %.lr.ph34, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define void @mbedtls_ct_memcpy_offset(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  %.not9 = icmp ugt i64 %3, %4
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not31.i = icmp ult i64 %5, 8
  br i1 %.not31.i, label %.lr.ph.split.us, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %scevgep23 = getelementptr i8, ptr %0, i64 %5
  %i.a = add i64 %5, -8
  %i.b = getelementptr i8, ptr %1, i64 %5
  %i.c = getelementptr i8, ptr %i.b, i64 %3
  %invariant.gep = getelementptr i8, ptr %1, i64 %3
  br label %.lr.ph.i.preheader

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.not11 = icmp eq i64 %5, 0
  br i1 %.not11, label %.preheader.i.us, label %.preheader.i.us.us.preheader

.preheader.i.us.us.preheader:                     ; preds = %.lr.ph.split.us
  %exitcond.not.i.us.us = icmp eq i64 %5, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %exitcond.not.i.us.us.1 = icmp eq i64 %5, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %exitcond.not.i.us.us.2 = icmp eq i64 %5, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %exitcond.not.i.us.us.3 = icmp eq i64 %5, 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %exitcond.not.i.us.us.4 = icmp eq i64 %5, 5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %exitcond.not.i.us.us.5 = icmp eq i64 %5, 6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  br label %.preheader.i.us.us

.preheader.i.us.us:                               ; preds = %.preheader.i.us.us.preheader, %mbedtls_ct_memcpy_if.exit.loopexit.us.us
  %.010.us.us = phi i64 [ %i.cb, %mbedtls_ct_memcpy_if.exit.loopexit.us.us ], [ %3, %.preheader.i.us.us.preheader ] ; 3 uses
  %i.j = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.010.us.us) #4, !srcloc !18
  %i.k = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %2) #4, !srcloc !18
  %i.l = xor i64 %i.k, %i.j
  %i.m = tail call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %i.l) #4, !srcloc !20
  %i.n = xor i64 %i.m, -1                         ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.010.us.us ; 7 uses
  %i.p = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.n) #4, !srcloc !18
  %i.q = xor i64 %i.p, -1                         ; 7 uses
  %i.r = load i8, ptr %i.o, align 1, !tbaa !8
  %i.s = zext i8 %i.r to i64
  %i.t = and i64 %i.s, %i.n
  %i.u = load i8, ptr %0, align 1, !tbaa !8
  %i.v = zext i8 %i.u to i64
  %i.w = and i64 %i.v, %i.q
  %i.x = or i64 %i.w, %i.t
  %i.y = trunc nuw i64 %i.x to i8
  store i8 %i.y, ptr %0, align 1, !tbaa !8
  br i1 %exitcond.not.i.us.us, label %mbedtls_ct_memcpy_if.exit.loopexit.us.us, label %.lr.ph34.i.us.us.1

.lr.ph34.i.us.us.1:                               ; preds = %.preheader.i.us.us
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8
  %i.ab = zext i8 %i.aa to i64
  %i.ac = and i64 %i.ab, %i.n
  %i.ad = load i8, ptr %i.d, align 1, !tbaa !8
  %i.ae = zext i8 %i.ad to i64
  %i.af = and i64 %i.ae, %i.q
  %i.ag = or i64 %i.af, %i.ac
  %i.ah = trunc nuw i64 %i.ag to i8
  store i8 %i.ah, ptr %i.d, align 1, !tbaa !8
  br i1 %exitcond.not.i.us.us.1, label %mbedtls_ct_memcpy_if.exit.loopexit.us.us, label %.lr.ph34.i.us.us.2

.lr.ph34.i.us.us.2:                               ; preds = %.lr.ph34.i.us.us.1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !8
  %i.ak = zext i8 %i.aj to i64
  %i.al = and i64 %i.ak, %i.n
  %i.am = load i8, ptr %i.e, align 1, !tbaa !8
  %i.an = zext i8 %i.am to i64
  %i.ao = and i64 %i.an, %i.q
  %i.ap = or i64 %i.ao, %i.al
  %i.aq = trunc nuw i64 %i.ap to i8
  store i8 %i.aq, ptr %i.e, align 1, !tbaa !8
  br i1 %exitcond.not.i.us.us.2, label %mbedtls_ct_memcpy_if.exit.loopexit.us.us, label %.lr.ph34.i.us.us.3

.lr.ph34.i.us.us.3:                               ; preds = %.lr.ph34.i.us.us.2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8
  %i.at = zext i8 %i.as to i64
  %i.au = and i64 %i.at, %i.n
  %i.av = load i8, ptr %i.f, align 1, !tbaa !8
  %i.aw = zext i8 %i.av to i64
  %i.ax = and i64 %i.aw, %i.q
  %i.ay = or i64 %i.ax, %i.au
  %i.az = trunc nuw i64 %i.ay to i8
  store i8 %i.az, ptr %i.f, align 1, !tbaa !8
  br i1 %exitcond.not.i.us.us.3, label %mbedtls_ct_memcpy_if.exit.loopexit.us.us, label %.lr.ph34.i.us.us.4

.lr.ph34.i.us.us.4:                               ; preds = %.lr.ph34.i.us.us.3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !8
  %i.bc = zext i8 %i.bb to i64
  %i.bd = and i64 %i.bc, %i.n
  %i.be = load i8, ptr %i.g, align 1, !tbaa !8
  %i.bf = zext i8 %i.be to i64
  %i.bg = and i64 %i.bf, %i.q
  %i.bh = or i64 %i.bg, %i.bd
  %i.bi = trunc nuw i64 %i.bh to i8
  store i8 %i.bi, ptr %i.g, align 1, !tbaa !8
  br i1 %exitcond.not.i.us.us.4, label %mbedtls_ct_memcpy_if.exit.loopexit.us.us, label %.lr.ph34.i.us.us.5

.lr.ph34.i.us.us.5:                               ; preds = %.lr.ph34.i.us.us.4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 5
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !8
  %i.bl = zext i8 %i.bk to i64
  %i.bm = and i64 %i.bl, %i.n
  %i.bn = load i8, ptr %i.h, align 1, !tbaa !8
  %i.bo = zext i8 %i.bn to i64
  %i.bp = and i64 %i.bo, %i.q
  %i.bq = or i64 %i.bp, %i.bm
  %i.br = trunc nuw i64 %i.bq to i8
  store i8 %i.br, ptr %i.h, align 1, !tbaa !8
  br i1 %exitcond.not.i.us.us.5, label %mbedtls_ct_memcpy_if.exit.loopexit.us.us, label %.lr.ph34.i.us.us.6

.lr.ph34.i.us.us.6:                               ; preds = %.lr.ph34.i.us.us.5
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !8
  %i.bu = zext i8 %i.bt to i64
  %i.bv = and i64 %i.bu, %i.n
  %i.bw = load i8, ptr %i.i, align 1, !tbaa !8
  %i.bx = zext i8 %i.bw to i64
  %i.by = and i64 %i.bx, %i.q
  %i.bz = or i64 %i.by, %i.bv
  %i.ca = trunc nuw i64 %i.bz to i8
  store i8 %i.ca, ptr %i.i, align 1, !tbaa !8
  br label %mbedtls_ct_memcpy_if.exit.loopexit.us.us

mbedtls_ct_memcpy_if.exit.loopexit.us.us:         ; preds = %.lr.ph34.i.us.us.6, %.lr.ph34.i.us.us.5, %.lr.ph34.i.us.us.4, %.lr.ph34.i.us.us.3, %.lr.ph34.i.us.us.2, %.lr.ph34.i.us.us.1, %.preheader.i.us.us
  %i.cb = add i64 %.010.us.us, 1                  ; 2 uses
  %.not.us.us = icmp ugt i64 %i.cb, %4
  br i1 %.not.us.us, label %._crit_edge, label %.preheader.i.us.us, !llvm.loop !21

.preheader.i.us:                                  ; preds = %.lr.ph.split.us, %.preheader.i.us
  %.010.us = phi i64 [ %i.ci, %.preheader.i.us ], [ %3, %.lr.ph.split.us ] ; 2 uses
  %i.cc = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.010.us) #4, !srcloc !18
  %i.cd = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %2) #4, !srcloc !18
  %i.ce = xor i64 %i.cd, %i.cc
  %i.cf = tail call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %i.ce) #4, !srcloc !20
  %i.cg = xor i64 %i.cf, -1
  %i.ch = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.cg) #4, !srcloc !18 ; 0 uses
  %i.ci = add i64 %.010.us, 1                     ; 2 uses
  %.not.us = icmp ugt i64 %i.ci, %4
  br i1 %.not.us, label %._crit_edge, label %.preheader.i.us, !llvm.loop !21

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %mbedtls_ct_memcpy_if.exit
  %indvar = phi i64 [ 0, %.lr.ph.i.preheader.preheader ], [ %indvar.next, %mbedtls_ct_memcpy_if.exit ] ; 3 uses
  %.010 = phi i64 [ %3, %.lr.ph.i.preheader.preheader ], [ %i.ev, %mbedtls_ct_memcpy_if.exit ] ; 3 uses
  %scevgep25 = getelementptr i8, ptr %i.c, i64 %indvar
  %i.cj = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.010) #4, !srcloc !18
  %i.ck = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %2) #4, !srcloc !18
  %i.cl = xor i64 %i.ck, %i.cj
  %i.cm = tail call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %i.cl) #4, !srcloc !20
  %i.cn = xor i64 %i.cm, -1                       ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %.010 ; 5 uses
  %i.cp = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.cn) #4, !srcloc !18
  %i.cq = xor i64 %i.cp, -1                       ; 5 uses
  br label %.lr.ph.i

.preheader.i.loopexit:                            ; preds = %.lr.ph.i
  %i.cr = icmp ult i64 %i.ds, %5
  br i1 %i.cr, label %.lr.ph34.i.preheader, label %mbedtls_ct_memcpy_if.exit

.lr.ph34.i.preheader:                             ; preds = %.preheader.i.loopexit
  %i.cs = shl i64 %indvar26, 3
  %i.ct = sub i64 %i.a, %i.cs                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ct, 32
  br i1 %min.iters.check, label %.lr.ph34.i.preheader32, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph34.i.preheader
  %scevgep = getelementptr i8, ptr %0, i64 %i.ds
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ds
  %scevgep24 = getelementptr i8, ptr %gep, i64 %indvar
  %bound0 = icmp ult ptr %scevgep, %scevgep25
  %bound1 = icmp ult ptr %scevgep24, %scevgep23
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph34.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ct, -16                     ; 3 uses
  %i.cu = add i64 %i.ds, %n.vec
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.cn, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert28 = insertelement <16 x i64> poison, i64 %i.cq, i64 0
  %broadcast.splat29 = shufflevector <16 x i64> %broadcast.splatinsert28, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cv = add nuw i64 %i.ds, %index               ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cv
  %wide.load = load <16 x i8>, ptr %i.cw, align 1, !tbaa !8, !alias.scope !22
  %i.cx = zext <16 x i8> %wide.load to <16 x i64>
  %i.cy = and <16 x i64> %broadcast.splat, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %i.cv ; 2 uses
  %wide.load30 = load <16 x i8>, ptr %i.cz, align 1, !tbaa !8, !alias.scope !25, !noalias !22
  %i.da = zext <16 x i8> %wide.load30 to <16 x i64>
  %i.db = and <16 x i64> %broadcast.splat29, %i.da
  %i.dc = or <16 x i64> %i.db, %i.cy
  %i.dd = trunc nuw <16 x i64> %i.dc to <16 x i8>
  store <16 x i8> %i.dd, ptr %i.cz, align 1, !tbaa !8, !alias.scope !25, !noalias !22
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br i1 %cmp.n, label %mbedtls_ct_memcpy_if.exit, label %.lr.ph34.i.preheader32

.lr.ph34.i.preheader32:                           ; preds = %vector.memcheck, %.lr.ph34.i.preheader, %middle.block
  %.133.i.ph = phi i64 [ %i.ds, %vector.memcheck ], [ %i.ds, %.lr.ph34.i.preheader ], [ %i.cu, %middle.block ] ; 6 uses
  %i.df = sub i64 %5, %.133.i.ph
  %.neg = add i64 %.133.i.ph, 1
  %xtraiter = and i64 %i.df, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph34.i.prol.loopexit, label %.lr.ph34.i.prol

.lr.ph34.i.prol:                                  ; preds = %.lr.ph34.i.preheader32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.co, i64 %.133.i.ph
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !8
  %i.di = zext i8 %i.dh to i64
  %i.dj = and i64 %i.di, %i.cn
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 %.133.i.ph ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !8
  %i.dm = zext i8 %i.dl to i64
  %i.dn = and i64 %i.dm, %i.cq
  %i.do = or i64 %i.dn, %i.dj
  %i.dp = trunc nuw i64 %i.do to i8
  store i8 %i.dp, ptr %i.dk, align 1, !tbaa !8
  %i.dq = add nuw i64 %.133.i.ph, 1
  br label %.lr.ph34.i.prol.loopexit

.lr.ph34.i.prol.loopexit:                         ; preds = %.lr.ph34.i.prol, %.lr.ph34.i.preheader32
  %.133.i.unr = phi i64 [ %.133.i.ph, %.lr.ph34.i.preheader32 ], [ %i.dq, %.lr.ph34.i.prol ]
  %i.dr = icmp eq i64 %5, %.neg
  br i1 %i.dr, label %mbedtls_ct_memcpy_if.exit, label %.lr.ph34.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvar26 = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvar.next27, %.lr.ph.i ] ; 2 uses
  %i.ds = phi i64 [ 8, %.lr.ph.i.preheader ], [ %i.dy, %.lr.ph.i ] ; 9 uses
  %.02732.i = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ds, %.lr.ph.i ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.co, i64 %.02732.i
  %.0.copyload.i30.i = load i64, ptr %i.dt, align 1
  %i.du = and i64 %.0.copyload.i30.i, %i.cn
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 %.02732.i ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.dv, align 1
  %i.dw = and i64 %.0.copyload.i.i, %i.cq
  %i.dx = or i64 %i.dw, %i.du
  store i64 %i.dx, ptr %i.dv, align 1
  %i.dy = add i64 %i.ds, 8                        ; 2 uses
  %.not.i = icmp ugt i64 %i.dy, %5
  %indvar.next27 = add i64 %indvar26, 1
  br i1 %.not.i, label %.preheader.i.loopexit, label %.lr.ph.i, !llvm.loop !19

.lr.ph34.i:                                       ; preds = %.lr.ph34.i.prol.loopexit, %.lr.ph34.i
  %.133.i = phi i64 [ %i.eu, %.lr.ph34.i ], [ %.133.i.unr, %.lr.ph34.i.prol.loopexit ] ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.co, i64 %.133.i
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !8
  %i.eb = zext i8 %i.ea to i64
  %i.ec = and i64 %i.eb, %i.cn
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 %.133.i ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !8
  %i.ef = zext i8 %i.ee to i64
  %i.eg = and i64 %i.ef, %i.cq
  %i.eh = or i64 %i.eg, %i.ec
  %i.ei = trunc nuw i64 %i.eh to i8
  store i8 %i.ei, ptr %i.ed, align 1, !tbaa !8
  %i.ej = add nuw i64 %.133.i, 1                  ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !8
  %i.em = zext i8 %i.el to i64
  %i.en = and i64 %i.em, %i.cn
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 %i.ej ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !8
  %i.eq = zext i8 %i.ep to i64
  %i.er = and i64 %i.eq, %i.cq
  %i.es = or i64 %i.er, %i.en
  %i.et = trunc nuw i64 %i.es to i8
  store i8 %i.et, ptr %i.eo, align 1, !tbaa !8
  %i.eu = add nuw i64 %.133.i, 2                  ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.eu, %5
  br i1 %exitcond.not.i.1, label %mbedtls_ct_memcpy_if.exit, label %.lr.ph34.i, !llvm.loop !30

mbedtls_ct_memcpy_if.exit:                        ; preds = %.lr.ph34.i.prol.loopexit, %.lr.ph34.i, %middle.block, %.preheader.i.loopexit
  %i.ev = add i64 %.010, 1                        ; 2 uses
  %.not = icmp ugt i64 %i.ev, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !21

._crit_edge:                                      ; preds = %mbedtls_ct_memcpy_if.exit, %mbedtls_ct_memcpy_if.exit.loopexit.us.us, %.preheader.i.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @mbedtls_ct_zeroize_if(i64 noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %0 to i32
  %i.b = xor i32 %i.a, -1                         ; 2 uses
  %.not18 = icmp ult i64 %2, 4
  br i1 %.not18, label %.preheader, label %vec.epilog.vector.body

.preheader:                                       ; preds = %vec.epilog.vector.body, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %7, %vec.epilog.vector.body ] ; 4 uses
  %i.c = icmp ult i64 %.0.lcssa, %2
  br i1 %i.c, label %vector.body, label %._crit_edge

vector.body:                                      ; preds = %.preheader
  %3 = trunc i32 %i.b to i8                       ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa ; 2 uses
  %4 = load i8, ptr %i.d, align 1, !tbaa !8
  %5 = and i8 %4, %3
  store i8 %5, ptr %i.d, align 1, !tbaa !8
  %6 = or disjoint i64 %.0.lcssa, 1               ; 2 uses
  %i.e = icmp eq i64 %6, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

vec.epilog.vector.body:                           ; preds = %bb.a, %vec.epilog.vector.body
  %7 = phi i64 [ %index.next29, %vec.epilog.vector.body ], [ 4, %bb.a ] ; 3 uses
  %index27 = phi i64 [ %7, %vec.epilog.vector.body ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %index27 ; 2 uses
  %.0.copyload.i = load i32, ptr %i.f, align 1
  %8 = and i32 %.0.copyload.i, %i.b
  store i32 %8, ptr %i.f, align 1
  %index.next29 = add i64 %7, 4                   ; 2 uses
  %.not = icmp ugt i64 %index.next29, %2
  br i1 %.not, label %.preheader, label %vec.epilog.vector.body, !llvm.loop !31

.lr.ph:                                           ; preds = %vector.body
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %6 ; 2 uses
  %9 = load i8, ptr %i.g, align 1, !tbaa !8
  %10 = and i8 %9, %3
  store i8 %10, ptr %i.g, align 1, !tbaa !8
  %11 = or disjoint i64 %.0.lcssa, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %11, %2
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %11 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8
  %i.j = and i8 %i.i, %3
  store i8 %i.j, ptr %i.h, align 1, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %vector.body, %.lr.ph, %vec.epilog.scalar.ph, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{i64 944846, i64 944896, i64 944968, i64 945040, i64 945112, i64 945184, i64 945256, i64 945328, i64 945400}
!14 = distinct !{!14, !10}
!15 = !{i64 941614, i64 941664, i64 941736, i64 941808, i64 941880}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = !{i64 935315}
!19 = distinct !{!19, !10}
!20 = !{i64 938193, i64 938243, i64 938315, i64 938387, i64 938459}
!21 = distinct !{!21, !10}
!22 = !{!23}
!23 = distinct !{!23, !24}
!24 = distinct !{!24, !"LVerDomain"}
!25 = !{!26}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !10, !28, !29}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = distinct !{!30, !10, !28}
!31 = distinct !{!31, !10}
end_hunk_0
