inline.NumInlined: 17
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mbedtls_ct_memcmp:bb.a
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
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %0) #4, !srcloc !18
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
  %i.k = add i64 %.027.lcssa, %index              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %i.k
  %wide.load = load <16 x i8>, ptr %i.l, align 1, !tbaa !8
  %i.m = zext <16 x i8> %wide.load to <16 x i64>
  %i.n = and <16 x i64> %broadcast.splat, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.k
  %wide.load39 = load <16 x i8>, ptr %i.o, align 1, !tbaa !8
  %i.p = zext <16 x i8> %wide.load39 to <16 x i64>
  %i.q = and <16 x i64> %broadcast.splat38, %i.p
  %i.r = or <16 x i64> %i.q, %i.n
  %i.s = trunc nuw <16 x i64> %i.r to <16 x i8>
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  store <16 x i8> %i.s, ptr %i.t, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !19

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
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8
  %i.y = zext i8 %i.x to i64
  %i.z = and i64 %0, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.133.ph
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = zext i8 %i.ab to i64
  %i.ad = and i64 %i.ac, %i.d
  %i.ae = or i64 %i.ad, %i.z
  %i.af = trunc nuw i64 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.133.ph
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !8
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
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !22

.lr.ph34:                                         ; preds = %.lr.ph34.prol.loopexit, %.lr.ph34
  %.133 = phi i64 [ %i.bo, %.lr.ph34 ], [ %.133.unr, %.lr.ph34.prol.loopexit ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %.133
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8
  %i.at = zext i8 %i.as to i64
  %i.au = and i64 %0, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.133
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !8
  %i.ax = zext i8 %i.aw to i64
  %i.ay = and i64 %i.ax, %i.d
  %i.az = or i64 %i.ay, %i.au
  %i.ba = trunc nuw i64 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %.133
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !8
  %i.bc = add nuw i64 %.133, 1                    ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !8
  %i.bf = zext i8 %i.be to i64
  %i.bg = and i64 %0, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.bc
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.bj = zext i8 %i.bi to i64
  %i.bk = and i64 %i.bj, %i.d
  %i.bl = or i64 %i.bk, %i.bg
  %i.bm = trunc nuw i64 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bc
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !8
  %i.bo = add nuw i64 %.133, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bo, %4
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph34, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph34.prol.loopexit, %.lr.ph34, %middle.block, %.preheader
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
  %i.m = tail call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %i.l) #4, !srcloc !24
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
  br i1 %.not.us.us, label %._crit_edge, label %.preheader.i.us.us, !llvm.loop !25

.preheader.i.us:                                  ; preds = %.lr.ph.split.us, %.preheader.i.us
  %.010.us = phi i64 [ %i.ci, %.preheader.i.us ], [ %3, %.lr.ph.split.us ] ; 2 uses
  %i.cc = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.010.us) #4, !srcloc !18
  %i.cd = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %2) #4, !srcloc !18
  %i.ce = xor i64 %i.cd, %i.cc
  %i.cf = tail call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %i.ce) #4, !srcloc !24
  %i.cg = xor i64 %i.cf, -1
  %i.ch = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.cg) #4, !srcloc !18 ; 0 uses
  %i.ci = add i64 %.010.us, 1                     ; 2 uses
  %.not.us = icmp ugt i64 %i.ci, %4
  br i1 %.not.us, label %._crit_edge, label %.preheader.i.us, !llvm.loop !25

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %mbedtls_ct_memcpy_if.exit
  %indvar = phi i64 [ 0, %.lr.ph.i.preheader.preheader ], [ %indvar.next, %mbedtls_ct_memcpy_if.exit ] ; 3 uses
  %.010 = phi i64 [ %3, %.lr.ph.i.preheader.preheader ], [ %i.ev, %mbedtls_ct_memcpy_if.exit ] ; 3 uses
  %scevgep25 = getelementptr i8, ptr %i.c, i64 %indvar
  %i.cj = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.010) #4, !srcloc !18
  %i.ck = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %2) #4, !srcloc !18
  %i.cl = xor i64 %i.ck, %i.cj
  %i.cm = tail call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %i.cl) #4, !srcloc !24
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
  %i.cv = add i64 %i.ds, %index                   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cv
  %wide.load = load <16 x i8>, ptr %i.cw, align 1, !tbaa !8, !alias.scope !26
  %i.cx = zext <16 x i8> %wide.load to <16 x i64>
  %i.cy = and <16 x i64> %broadcast.splat, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %i.cv ; 2 uses
  %wide.load30 = load <16 x i8>, ptr %i.cz, align 1, !tbaa !8, !alias.scope !29, !noalias !26
  %i.da = zext <16 x i8> %wide.load30 to <16 x i64>
  %i.db = and <16 x i64> %broadcast.splat29, %i.da
  %i.dc = or <16 x i64> %i.db, %i.cy
  %i.dd = trunc nuw <16 x i64> %i.dc to <16 x i8>
  store <16 x i8> %i.dd, ptr %i.cz, align 1, !tbaa !8, !alias.scope !29, !noalias !26
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !31

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
  br i1 %.not.i, label %.preheader.i.loopexit, label %.lr.ph.i, !llvm.loop !22

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
  br i1 %exitcond.not.i.1, label %mbedtls_ct_memcpy_if.exit, label %.lr.ph34.i, !llvm.loop !32

mbedtls_ct_memcpy_if.exit:                        ; preds = %.lr.ph34.i.prol.loopexit, %.lr.ph34.i, %middle.block, %.preheader.i.loopexit
  %i.ev = add i64 %.010, 1                        ; 2 uses
  %.not = icmp ugt i64 %i.ev, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !25

._crit_edge:                                      ; preds = %mbedtls_ct_memcpy_if.exit, %mbedtls_ct_memcpy_if.exit.loopexit.us.us, %.preheader.i.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @mbedtls_ct_zeroize_if(i64 noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %0 to i32
  %i.b = xor i32 %i.a, -1                         ; 2 uses
  %.not18 = icmp ult i64 %2, 4
  br i1 %.not18, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.r, %.lr.ph ] ; 7 uses
  %i.c = icmp ult i64 %.0.lcssa, %2
  br i1 %i.c, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.d = trunc i32 %i.b to i8                     ; 3 uses
  %i.e = sub nuw i64 %2, %.0.lcssa                ; 7 uses
  %min.iters.check = icmp ult i64 %i.e, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check22 = icmp ult i64 %i.e, 32
  br i1 %min.iters.check22, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.e, 24
  %n.vec = and i64 %i.e, -32                      ; 4 uses
  %i.f = add i64 %.0.lcssa, %n.vec
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.d, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 %.0.lcssa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 %index   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.h, align 1, !tbaa !8
  %wide.load23 = load <16 x i8>, ptr %i.i, align 1, !tbaa !8
  %i.j = and <16 x i8> %wide.load, %broadcast.splat
  %i.k = and <16 x i8> %wide.load23, %broadcast.splat
  store <16 x i8> %i.j, ptr %i.h, align 1, !tbaa !8
  store <16 x i8> %i.k, ptr %i.i, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec25 = and i64 %i.e, -8                     ; 3 uses
  %i.m = add i64 %.0.lcssa, %n.vec25
  %broadcast.splatinsert26 = insertelement <8 x i8> poison, i8 %i.d, i64 0
  %broadcast.splat27 = shufflevector <8 x i8> %broadcast.splatinsert26, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.n = getelementptr i8, ptr %1, i64 %.0.lcssa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 %index28 ; 2 uses
  %wide.load29 = load <8 x i8>, ptr %i.o, align 1, !tbaa !8
  %i.p = and <8 x i8> %wide.load29, %broadcast.splat27
  store <8 x i8> %i.p, ptr %i.o, align 1, !tbaa !8
  %index.next30 = add nuw i64 %index28, 8         ; 2 uses
  %i.q = icmp eq i64 %index.next30, %n.vec25
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n31 = icmp eq i64 %i.e, %n.vec25
  br i1 %cmp.n31, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.120.ph = phi i64 [ %.0.lcssa, %iter.check ], [ %i.f, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.r = phi i64 [ %i.u, %.lr.ph ], [ 4, %bb.a ]  ; 3 uses
  %.019 = phi i64 [ %i.r, %.lr.ph ], [ 0, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.019 ; 2 uses
  %.0.copyload.i = load i32, ptr %i.s, align 1
  %i.t = and i32 %.0.copyload.i, %i.b
  store i32 %i.t, ptr %i.s, align 1
  %i.u = add i64 %i.r, 4                          ; 2 uses
  %.not = icmp ugt i64 %i.u, %2
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !36

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.120 = phi i64 [ %i.y, %vec.epilog.scalar.ph ], [ %.120.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.120 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  %i.x = and i8 %i.w, %i.d
  store i8 %i.x, ptr %i.v, align 1, !tbaa !8
  %i.y = add nuw i64 %.120, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %2
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader
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
!19 = distinct !{!19, !10, !20, !21}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10, !20}
!24 = !{i64 938193, i64 938243, i64 938315, i64 938387, i64 938459}
!25 = distinct !{!25, !10}
!26 = !{!27}
!27 = distinct !{!27, !28}
!28 = distinct !{!28, !"LVerDomain"}
!29 = !{!30}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !10, !20, !21}
!32 = distinct !{!32, !10, !20}
!33 = distinct !{!33, !10, !20, !21}
!34 = !{!"branch_weights", i32 8, i32 24}
!35 = distinct !{!35, !10, !20, !21}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !10, !21, !20}
end_hunk_0
