Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/constant_time?download=true
inline.NumInlined: 17
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden range(i32 0, 256) i32 @mbedtls_ct_memcmp(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, i64 noundef %2) local_unnamed_addr #0 {
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
  %i.c = load volatile i8, ptr %i.b, align 1, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.015
  %i.e = load volatile i8, ptr %i.d, align 1, !tbaa !9
  %i.f = xor i8 %i.e, %i.c
  %i.g = zext i8 %i.f to i32
  %i.h = or i32 %.01314, %i.g
  %i.i = or disjoint i64 %.015, 1                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %i.k = load volatile i8, ptr %i.j, align 1, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.m = load volatile i8, ptr %i.l, align 1, !tbaa !9
  %i.n = xor i8 %i.m, %i.k
  %i.o = zext i8 %i.n to i32
  %i.p = or i32 %i.h, %i.o
  %i.q = or disjoint i64 %.015, 2                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.s = load volatile i8, ptr %i.r, align 1, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.u = load volatile i8, ptr %i.t, align 1, !tbaa !9
  %i.v = xor i8 %i.u, %i.s
  %i.w = zext i8 %i.v to i32
  %i.x = or i32 %i.p, %i.w
  %i.y = or disjoint i64 %.015, 3                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.aa = load volatile i8, ptr %i.z, align 1, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %i.ac = load volatile i8, ptr %i.ab, align 1, !tbaa !9
  %i.ad = xor i8 %i.ac, %i.aa
  %i.ae = zext i8 %i.ad to i32
  %i.af = or i32 %i.x, %i.ae                      ; 3 uses
  %i.ag = add nuw i64 %.015, 4                    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !15

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
  %i.ai = load volatile i8, ptr %i.ah, align 1, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.015.epil
  %i.ak = load volatile i8, ptr %i.aj, align 1, !tbaa !9
  %i.al = xor i8 %i.ak, %i.ai
  %i.am = zext i8 %i.al to i32
  %i.an = or i32 %.01314.epil, %i.am              ; 2 uses
  %i.ao = add nuw i64 %.015.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !16

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.013.lcssa = phi i32 [ 0, %bb.a ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.epil ]
  ret i32 %.013.lcssa
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 256) i32 @mbedtls_ct_memcmp_partial(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 {
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
  %i.c = load volatile i8, ptr %i.b, align 1, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.02021
  %i.e = load volatile i8, ptr %i.d, align 1, !tbaa !9
  %i.f = xor i8 %i.e, %i.c
  %i.g = zext i8 %i.f to i32
  %i.h = tail call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %.02021, i64 %3) #4, !srcloc !11
  %i.i = extractvalue { i64, i64, i64 } %i.h, 1
  %i.j = xor i64 %i.i, -1
  %i.k = tail call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %.02021, i64 %i.a) #4, !srcloc !11
  %i.l = extractvalue { i64, i64, i64 } %i.k, 1
  %i.m = and i64 %i.l, %i.j
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, %i.g
  %i.p = or i32 %i.o, %.022                       ; 2 uses
  %i.q = add nuw i64 %.02021, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18
}

; Function Attrs: nounwind uwtable
define hidden void @mbedtls_ct_memmove_left(ptr nofree noundef captures(address) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge30, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.a
  %i.a = sub i64 %1, %2                           ; 2 uses
  %i.b = add i64 %1, -1                           ; 3 uses
  %.not31 = icmp eq i64 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 4 uses
  br i1 %.not31, label %.lr.ph29.split.preheader, label %.lr.ph.us

.lr.ph29.split.preheader:                         ; preds = %.lr.ph29
  %3 = tail call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 0, i64 %i.a) #4, !srcloc !11
  %4 = extractvalue { i64, i64, i64 } %3, 1
  %5 = load volatile i8, ptr %i.c, align 1, !tbaa !9
  %6 = trunc i64 %4 to i8
  %7 = and i8 %5, %6
  store volatile i8 %7, ptr %i.c, align 1, !tbaa !9
  br label %._crit_edge30

.lr.ph.us:                                        ; preds = %.lr.ph29, %._crit_edge.us
  %.027.us = phi i64 [ %i.s, %._crit_edge.us ], [ 0, %.lr.ph29 ] ; 2 uses
  %i.d = tail call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %.027.us, i64 %i.a) #4, !srcloc !11
  %i.e = extractvalue { i64, i64, i64 } %i.d, 1   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %.02326.us = phi i64 [ 0, %.lr.ph.us ], [ %i.h, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.02326.us ; 2 uses
  %i.g = load volatile i8, ptr %i.f, align 1, !tbaa !9
  %i.h = add nuw i64 %.02326.us, 1                ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.j = load volatile i8, ptr %i.i, align 1, !tbaa !9
  %i.k = zext i8 %i.g to i64
  %i.l = zext i8 %i.j to i64
  %i.m = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.e, i64 range(i64 0, 256) %i.k, i64 range(i64 0, 256) %i.l) #4, !srcloc !21
  %i.n = extractvalue { i64, i64, i64 } %i.m, 2
  %i.o = trunc i64 %i.n to i8
  store volatile i8 %i.o, ptr %i.f, align 1, !tbaa !9
  %exitcond.not = icmp eq i64 %i.h, %i.b
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !19

._crit_edge.us:                                   ; preds = %bb.b
  %i.p = load volatile i8, ptr %i.c, align 1, !tbaa !9
  %i.q = trunc i64 %i.e to i8
  %i.r = and i8 %i.p, %i.q
  store volatile i8 %i.r, ptr %i.c, align 1, !tbaa !9
  %i.s = add nuw i64 %.027.us, 1                  ; 2 uses
  %exitcond33.not = icmp eq i64 %i.s, %1
  br i1 %exitcond33.not, label %._crit_edge30, label %.lr.ph.us, !llvm.loop !20

._crit_edge30:                                    ; preds = %._crit_edge.us, %.lr.ph29.split.preheader, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mbedtls_ct_memcpy_if(i64 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %0) #4, !srcloc !12
  %i.d = xor i64 %i.c, -1                         ; 5 uses
  %i.e = icmp eq ptr %3, null
  %spec.select = select i1 %i.e, ptr %1, ptr %3   ; 6 uses
  %spec.select35 = ptrtoaddr ptr %spec.select to i64
  %.not31 = icmp ult i64 %4, 8
  br i1 %.not31, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.027.lcssa = phi i64 [ 0, %bb.a ], [ %i.aj, %.lr.ph ] ; 6 uses
  %i.f = icmp ult i64 %.027.lcssa, %4
  br i1 %i.f, label %.lr.ph34.preheader, label %._crit_edge

.lr.ph34.preheader:                               ; preds = %.preheader
  %i.g = sub nuw i64 %4, %.027.lcssa              ; 3 uses
  %min.iters.check = icmp ult i64 %i.g, 64
  br i1 %min.iters.check, label %.lr.ph34.preheader40, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph34.preheader
  %i.h = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.h, -16
  %i.i = sub i64 %spec.select35, %i.b
  %diff.check36 = icmp ugt i64 %i.i, -16
  %conflict.rdx = or i1 %diff.check, %diff.check36
  br i1 %conflict.rdx, label %.lr.ph34.preheader40, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -16                      ; 3 uses
  %i.j = add i64 %.027.lcssa, %n.vec
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %0, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert37 = insertelement <16 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat38 = shufflevector <16 x i64> %broadcast.splatinsert37, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = add nuw i64 %.027.lcssa, %index          ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %i.k
  %wide.load = load <16 x i8>, ptr %i.l, align 1, !tbaa !9
  %i.m = zext <16 x i8> %wide.load to <16 x i64>
  %i.n = and <16 x i64> %broadcast.splat, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.k
  %wide.load39 = load <16 x i8>, ptr %i.o, align 1, !tbaa !9
  %i.p = zext <16 x i8> %wide.load39 to <16 x i64>
  %i.q = and <16 x i64> %broadcast.splat38, %i.p
  %i.r = or <16 x i64> %i.q, %i.n
  %i.s = trunc nuw <16 x i64> %i.r to <16 x i8>
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  store <16 x i8> %i.s, ptr %i.t, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph34.preheader40

.lr.ph34.preheader40:                             ; preds = %vector.memcheck, %.lr.ph34.preheader, %middle.block
  %.133.ph = phi i64 [ %.027.lcssa, %vector.memcheck ], [ %.027.lcssa, %.lr.ph34.preheader ], [ %i.j, %middle.block ] ; 7 uses
  %i.v = sub i64 %4, %.133.ph
  %.neg = add i64 %.133.ph, 1
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph34.prol.loopexit, label %.lr.ph34.prol

.lr.ph34.prol:                                    ; preds = %.lr.ph34.preheader40
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %.133.ph
  %i.x = load i8, ptr %i.w, align 1, !tbaa !9
  %i.y = zext i8 %i.x to i64
  %i.z = and i64 %0, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.133.ph
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  %i.ac = zext i8 %i.ab to i64
  %i.ad = and i64 %i.ac, %i.d
  %i.ae = or i64 %i.ad, %i.z
  %i.af = trunc nuw i64 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.133.ph
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !9
  %i.ah = add nuw i64 %.133.ph, 1
  br label %.lr.ph34.prol.loopexit

.lr.ph34.prol.loopexit:                           ; preds = %.lr.ph34.prol, %.lr.ph34.preheader40
  %.133.unr = phi i64 [ %.133.ph, %.lr.ph34.preheader40 ], [ %i.ah, %.lr.ph34.prol ]
  %i.ai = icmp eq i64 %4, %.neg
  br i1 %i.ai, label %._crit_edge, label %.lr.ph34

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.aj = phi i64 [ %i.aq, %.lr.ph ], [ 8, %bb.a ] ; 3 uses
  %.02732 = phi i64 [ %i.aj, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.02732
  %.0.copyload.i30 = load i64, ptr %i.ak, align 1
  %i.al = and i64 %.0.copyload.i30, %0
  %i.am = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.02732
  %.0.copyload.i = load i64, ptr %i.am, align 1
  %i.an = and i64 %.0.copyload.i, %i.d
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %.02732
  %i.ap = or i64 %i.an, %i.al
  store i64 %i.ap, ptr %i.ao, align 1
  %i.aq = add i64 %i.aj, 8                        ; 2 uses
  %.not = icmp ugt i64 %i.aq, %4
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !0

.lr.ph34:                                         ; preds = %.lr.ph34.prol.loopexit, %.lr.ph34
  %.133 = phi i64 [ %i.bo, %.lr.ph34 ], [ %.133.unr, %.lr.ph34.prol.loopexit ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %.133
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !9
  %i.at = zext i8 %i.as to i64
  %i.au = and i64 %0, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.133
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9
  %i.ax = zext i8 %i.aw to i64
  %i.ay = and i64 %i.ax, %i.d
  %i.az = or i64 %i.ay, %i.au
  %i.ba = trunc nuw i64 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %.133
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !9
  %i.bc = add nuw i64 %.133, 1                    ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !9
  %i.bf = zext i8 %i.be to i64
  %i.bg = and i64 %0, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.bc
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !9
  %i.bj = zext i8 %i.bi to i64
  %i.bk = and i64 %i.bj, %i.d
  %i.bl = or i64 %i.bk, %i.bg
  %i.bm = trunc nuw i64 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bc
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !9
  %i.bo = add nuw i64 %.133, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bo, %4
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph34, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph34.prol.loopexit, %.lr.ph34, %middle.block, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mbedtls_ct_memcpy_offset(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #1 {
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
  %i.j = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.010.us.us) #4, !srcloc !12
  %i.k = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %2) #4, !srcloc !12
  %i.l = xor i64 %i.k, %i.j
  %i.m = tail call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %i.l) #4, !srcloc !30
  %i.n = xor i64 %i.m, -1                         ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.010.us.us ; 7 uses
  %i.p = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.n) #4, !srcloc !12
  %i.q = xor i64 %i.p, -1                         ; 7 uses
  %i.r = load i8, ptr %i.o, align 1, !tbaa !9
  %i.s = zext i8 %i.r to i64
  %i.t = and i64 %i.s, %i.n
  %i.u = load i8, ptr %0, align 1, !tbaa !9
  %i.v = zext i8 %i.u to i64
  %i.w = and i64 %i.v, %i.q
  %i.x = or i64 %i.w, %i.t
  %i.y = trunc nuw i64 %i.x to i8
end_hunk_0
