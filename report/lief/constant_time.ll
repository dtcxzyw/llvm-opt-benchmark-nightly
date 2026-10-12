Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/constant_time?download=true
inline.NumInlined: 17
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mbedtls_ct_memmove_left:bb.a

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

._crit_edge30:                                    ; preds = %._crit_edge.us, %.lr.ph29.split, %bb.a
  ret void

.lr.ph29.split:                                   ; preds = %.lr.ph29
  %i.t = tail call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 0, i64 %i.a) #4, !srcloc !11
  %i.u = extractvalue { i64, i64, i64 } %i.t, 1
  %i.v = load volatile i8, ptr %i.c, align 1, !tbaa !9
  %i.w = trunc i64 %i.u to i8
  %i.x = and i8 %i.v, %i.w
  store volatile i8 %i.x, ptr %i.c, align 1, !tbaa !9
  br label %._crit_edge30
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
  %6 = add i64 %5, -8
  %i.a = getelementptr i8, ptr %1, i64 %5
  %7 = getelementptr i8, ptr %i.a, i64 %3
  %invariant.gep = getelementptr i8, ptr %1, i64 %3
  br label %.lr.ph.i.preheader

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.not11 = icmp eq i64 %5, 0
  br i1 %.not11, label %.preheader.i.us, label %.preheader.i.us.us.preheader

.preheader.i.us.us.preheader:                     ; preds = %.lr.ph.split.us
  %exitcond.not.i.us.us = icmp eq i64 %5, 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %exitcond.not.i.us.us.1 = icmp eq i64 %5, 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %exitcond.not.i.us.us.2 = icmp eq i64 %5, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %exitcond.not.i.us.us.3 = icmp eq i64 %5, 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %exitcond.not.i.us.us.4 = icmp eq i64 %5, 5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %exitcond.not.i.us.us.5 = icmp eq i64 %5, 6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  br label %.preheader.i.us.us

.preheader.i.us.us:                               ; preds = %.preheader.i.us.us.preheader, %mbedtls_ct_memcpy_if.exit.loopexit.us.us
  %.010.us.us = phi i64 [ %i.bz, %mbedtls_ct_memcpy_if.exit.loopexit.us.us ], [ %3, %.preheader.i.us.us.preheader ] ; 3 uses
  %i.h = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.010.us.us) #4, !srcloc !12
  %i.i = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %2) #4, !srcloc !12
  %i.j = xor i64 %i.i, %i.h
  %i.k = tail call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %i.j) #4, !srcloc !30
  %i.l = xor i64 %i.k, -1                         ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.010.us.us ; 7 uses
  %i.n = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.l) #4, !srcloc !12
  %i.o = xor i64 %i.n, -1                         ; 7 uses
  %i.p = load i8, ptr %i.m, align 1, !tbaa !9
  %i.q = zext i8 %i.p to i64
  %i.r = and i64 %i.q, %i.l
  %i.s = load i8, ptr %0, align 1, !tbaa !9
  %i.t = zext i8 %i.s to i64
  %i.u = and i64 %i.t, %i.o
  %i.v = or i64 %i.u, %i.r
  %i.w = trunc nuw i64 %i.v to i8
  store i8 %i.w, ptr %0, align 1, !tbaa !9
  br i1 %exitcond.not.i.us.us, label %mbedtls_ct_memcpy_if.exit.loopexit.us.us, label %.lr.ph34.i.us.us.1

.lr.ph34.i.us.us.1:                               ; preds = %.preheader.i.us.us
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !9
  %i.z = zext i8 %i.y to i64
  %i.aa = and i64 %i.z, %i.l
  %i.ab = load i8, ptr %i.b, align 1, !tbaa !9
  %i.ac = zext i8 %i.ab to i64
  %i.ad = and i64 %i.ac, %i.o
  %i.ae = or i64 %i.ad, %i.aa
  %i.af = trunc nuw i64 %i.ae to i8
  store i8 %i.af, ptr %i.b, align 1, !tbaa !9
  br i1 %exitcond.not.i.us.us.1, label %mbedtls_ct_memcpy_if.exit.loopexit.us.us, label %.lr.ph34.i.us.us.2

.lr.ph34.i.us.us.2:                               ; preds = %.lr.ph34.i.us.us.1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9
  %i.ai = zext i8 %i.ah to i64
  %i.aj = and i64 %i.ai, %i.l
  %i.ak = load i8, ptr %i.c, align 1, !tbaa !9
  %i.al = zext i8 %i.ak to i64
  %i.am = and i64 %i.al, %i.o
  %i.an = or i64 %i.am, %i.aj
  %i.ao = trunc nuw i64 %i.an to i8
  store i8 %i.ao, ptr %i.c, align 1, !tbaa !9
  br i1 %exitcond.not.i.us.us.2, label %mbedtls_ct_memcpy_if.exit.loopexit.us.us, label %.lr.ph34.i.us.us.3

.lr.ph34.i.us.us.3:                               ; preds = %.lr.ph34.i.us.us.2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !9
  %i.ar = zext i8 %i.aq to i64
  %i.as = and i64 %i.ar, %i.l
  %i.at = load i8, ptr %i.d, align 1, !tbaa !9
  %i.au = zext i8 %i.at to i64
  %i.av = and i64 %i.au, %i.o
  %i.aw = or i64 %i.av, %i.as
  %i.ax = trunc nuw i64 %i.aw to i8
  store i8 %i.ax, ptr %i.d, align 1, !tbaa !9
  br i1 %exitcond.not.i.us.us.3, label %mbedtls_ct_memcpy_if.exit.loopexit.us.us, label %.lr.ph34.i.us.us.4

.lr.ph34.i.us.us.4:                               ; preds = %.lr.ph34.i.us.us.3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.ba = zext i8 %i.az to i64
  %i.bb = and i64 %i.ba, %i.l
  %i.bc = load i8, ptr %i.e, align 1, !tbaa !9
  %i.bd = zext i8 %i.bc to i64
  %i.be = and i64 %i.bd, %i.o
  %i.bf = or i64 %i.be, %i.bb
  %i.bg = trunc nuw i64 %i.bf to i8
  store i8 %i.bg, ptr %i.e, align 1, !tbaa !9
  br i1 %exitcond.not.i.us.us.4, label %mbedtls_ct_memcpy_if.exit.loopexit.us.us, label %.lr.ph34.i.us.us.5

.lr.ph34.i.us.us.5:                               ; preds = %.lr.ph34.i.us.us.4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !9
  %i.bj = zext i8 %i.bi to i64
  %i.bk = and i64 %i.bj, %i.l
  %i.bl = load i8, ptr %i.f, align 1, !tbaa !9
  %i.bm = zext i8 %i.bl to i64
  %i.bn = and i64 %i.bm, %i.o
  %i.bo = or i64 %i.bn, %i.bk
  %i.bp = trunc nuw i64 %i.bo to i8
  store i8 %i.bp, ptr %i.f, align 1, !tbaa !9
  br i1 %exitcond.not.i.us.us.5, label %mbedtls_ct_memcpy_if.exit.loopexit.us.us, label %.lr.ph34.i.us.us.6

.lr.ph34.i.us.us.6:                               ; preds = %.lr.ph34.i.us.us.5
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !9
  %i.bs = zext i8 %i.br to i64
  %i.bt = and i64 %i.bs, %i.l
  %i.bu = load i8, ptr %i.g, align 1, !tbaa !9
  %i.bv = zext i8 %i.bu to i64
  %i.bw = and i64 %i.bv, %i.o
  %i.bx = or i64 %i.bw, %i.bt
  %i.by = trunc nuw i64 %i.bx to i8
  store i8 %i.by, ptr %i.g, align 1, !tbaa !9
  br label %mbedtls_ct_memcpy_if.exit.loopexit.us.us

mbedtls_ct_memcpy_if.exit.loopexit.us.us:         ; preds = %.lr.ph34.i.us.us.6, %.lr.ph34.i.us.us.5, %.lr.ph34.i.us.us.4, %.lr.ph34.i.us.us.3, %.lr.ph34.i.us.us.2, %.lr.ph34.i.us.us.1, %.preheader.i.us.us
  %i.bz = add i64 %.010.us.us, 1                  ; 2 uses
  %.not.us.us = icmp ugt i64 %i.bz, %4
  br i1 %.not.us.us, label %._crit_edge, label %.preheader.i.us.us, !llvm.loop !24

.preheader.i.us:                                  ; preds = %.lr.ph.split.us, %.preheader.i.us
  %.010.us = phi i64 [ %i.cg, %.preheader.i.us ], [ %3, %.lr.ph.split.us ] ; 2 uses
  %i.ca = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.010.us) #4, !srcloc !12
  %i.cb = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %2) #4, !srcloc !12
  %i.cc = xor i64 %i.cb, %i.ca
  %i.cd = tail call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %i.cc) #4, !srcloc !30
  %i.ce = xor i64 %i.cd, -1
  %i.cf = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ce) #4, !srcloc !12 ; 0 uses
  %i.cg = add i64 %.010.us, 1                     ; 2 uses
  %.not.us = icmp ugt i64 %i.cg, %4
  br i1 %.not.us, label %._crit_edge, label %.preheader.i.us, !llvm.loop !24

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %mbedtls_ct_memcpy_if.exit
  %indvar = phi i64 [ 0, %.lr.ph.i.preheader.preheader ], [ %indvar.next, %mbedtls_ct_memcpy_if.exit ] ; 3 uses
  %.010 = phi i64 [ %3, %.lr.ph.i.preheader.preheader ], [ %i.et, %mbedtls_ct_memcpy_if.exit ] ; 3 uses
  %scevgep25 = getelementptr i8, ptr %7, i64 %indvar
  %i.ch = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.010) #4, !srcloc !12
  %i.ci = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %2) #4, !srcloc !12
  %i.cj = xor i64 %i.ci, %i.ch
  %i.ck = tail call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %i.cj) #4, !srcloc !30
  %i.cl = xor i64 %i.ck, -1                       ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %.010 ; 5 uses
  %i.cn = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.cl) #4, !srcloc !12
  %i.co = xor i64 %i.cn, -1                       ; 5 uses
  br label %.lr.ph.i

.preheader.i.loopexit:                            ; preds = %.lr.ph.i
  %i.cp = icmp ult i64 %i.dq, %5
  br i1 %i.cp, label %.lr.ph34.i.preheader, label %mbedtls_ct_memcpy_if.exit

.lr.ph34.i.preheader:                             ; preds = %.preheader.i.loopexit
  %i.cq = shl i64 %indvar26, 3
  %i.cr = sub i64 %6, %i.cq                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.cr, 32
  br i1 %min.iters.check, label %.lr.ph34.i.preheader32, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph34.i.preheader
  %scevgep = getelementptr i8, ptr %0, i64 %i.dq
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.dq
  %scevgep24 = getelementptr i8, ptr %gep, i64 %indvar
  %bound0 = icmp ult ptr %scevgep, %scevgep25
  %bound1 = icmp ult ptr %scevgep24, %scevgep23
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph34.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cr, -16                     ; 3 uses
  %i.cs = add i64 %i.dq, %n.vec
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.cl, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert28 = insertelement <16 x i64> poison, i64 %i.co, i64 0
  %broadcast.splat29 = shufflevector <16 x i64> %broadcast.splatinsert28, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ct = add nuw i64 %i.dq, %index               ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ct
  %wide.load = load <16 x i8>, ptr %i.cu, align 1, !tbaa !9, !alias.scope !31
  %i.cv = zext <16 x i8> %wide.load to <16 x i64>
  %i.cw = and <16 x i64> %broadcast.splat, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %i.ct ; 2 uses
  %wide.load30 = load <16 x i8>, ptr %i.cx, align 1, !tbaa !9, !alias.scope !32, !noalias !31
  %i.cy = zext <16 x i8> %wide.load30 to <16 x i64>
  %i.cz = and <16 x i64> %broadcast.splat29, %i.cy
  %i.da = or <16 x i64> %i.cz, %i.cw
  %i.db = trunc nuw <16 x i64> %i.da to <16 x i8>
  store <16 x i8> %i.db, ptr %i.cx, align 1, !tbaa !9, !alias.scope !32, !noalias !31
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %mbedtls_ct_memcpy_if.exit, label %.lr.ph34.i.preheader32

.lr.ph34.i.preheader32:                           ; preds = %vector.memcheck, %.lr.ph34.i.preheader, %middle.block
  %.133.i.ph = phi i64 [ %i.dq, %vector.memcheck ], [ %i.dq, %.lr.ph34.i.preheader ], [ %i.cs, %middle.block ] ; 6 uses
  %i.dd = sub i64 %5, %.133.i.ph
  %.neg = add i64 %.133.i.ph, 1
  %xtraiter = and i64 %i.dd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph34.i.prol.loopexit, label %.lr.ph34.i.prol

.lr.ph34.i.prol:                                  ; preds = %.lr.ph34.i.preheader32
  %i.de = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.133.i.ph
  %i.df = load i8, ptr %i.de, align 1, !tbaa !9
  %i.dg = zext i8 %i.df to i64
  %i.dh = and i64 %i.dg, %i.cl
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 %.133.i.ph ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !9
  %i.dk = zext i8 %i.dj to i64
  %i.dl = and i64 %i.dk, %i.co
  %i.dm = or i64 %i.dl, %i.dh
  %i.dn = trunc nuw i64 %i.dm to i8
  store i8 %i.dn, ptr %i.di, align 1, !tbaa !9
  %i.do = add nuw i64 %.133.i.ph, 1
  br label %.lr.ph34.i.prol.loopexit

.lr.ph34.i.prol.loopexit:                         ; preds = %.lr.ph34.i.prol, %.lr.ph34.i.preheader32
  %.133.i.unr = phi i64 [ %.133.i.ph, %.lr.ph34.i.preheader32 ], [ %i.do, %.lr.ph34.i.prol ]
  %i.dp = icmp eq i64 %5, %.neg
  br i1 %i.dp, label %mbedtls_ct_memcpy_if.exit, label %.lr.ph34.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvar26 = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvar.next27, %.lr.ph.i ] ; 2 uses
  %i.dq = phi i64 [ 8, %.lr.ph.i.preheader ], [ %i.dw, %.lr.ph.i ] ; 9 uses
  %.02732.i = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.dq, %.lr.ph.i ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.02732.i
  %.0.copyload.i30.i = load i64, ptr %i.dr, align 1
  %i.ds = and i64 %.0.copyload.i30.i, %i.cl
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 %.02732.i ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.dt, align 1
  %i.du = and i64 %.0.copyload.i.i, %i.co
  %i.dv = or i64 %i.du, %i.ds
  store i64 %i.dv, ptr %i.dt, align 1
  %i.dw = add i64 %i.dq, 8                        ; 2 uses
  %.not.i = icmp ugt i64 %i.dw, %5
  %indvar.next27 = add i64 %indvar26, 1
  br i1 %.not.i, label %.preheader.i.loopexit, label %.lr.ph.i, !llvm.loop !0

.lr.ph34.i:                                       ; preds = %.lr.ph34.i.prol.loopexit, %.lr.ph34.i
  %.133.i = phi i64 [ %i.es, %.lr.ph34.i ], [ %.133.i.unr, %.lr.ph34.i.prol.loopexit ] ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.133.i
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !9
  %i.dz = zext i8 %i.dy to i64
  %i.ea = and i64 %i.dz, %i.cl
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 %.133.i ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !9
  %i.ed = zext i8 %i.ec to i64
  %i.ee = and i64 %i.ed, %i.co
  %i.ef = or i64 %i.ee, %i.ea
  %i.eg = trunc nuw i64 %i.ef to i8
  store i8 %i.eg, ptr %i.eb, align 1, !tbaa !9
  %i.eh = add nuw i64 %.133.i, 1                  ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !9
  %i.ek = zext i8 %i.ej to i64
  %i.el = and i64 %i.ek, %i.cl
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 %i.eh ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !9
  %i.eo = zext i8 %i.en to i64
  %i.ep = and i64 %i.eo, %i.co
  %i.eq = or i64 %i.ep, %i.el
  %i.er = trunc nuw i64 %i.eq to i8
  store i8 %i.er, ptr %i.em, align 1, !tbaa !9
  %i.es = add nuw i64 %.133.i, 2                  ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.es, %5
  br i1 %exitcond.not.i.1, label %mbedtls_ct_memcpy_if.exit, label %.lr.ph34.i, !llvm.loop !29

mbedtls_ct_memcpy_if.exit:                        ; preds = %.lr.ph34.i.prol.loopexit, %.lr.ph34.i, %middle.block, %.preheader.i.loopexit
  %i.et = add i64 %.010, 1                        ; 2 uses
  %.not = icmp ugt i64 %i.et, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !24

._crit_edge:                                      ; preds = %mbedtls_ct_memcpy_if.exit, %mbedtls_ct_memcpy_if.exit.loopexit.us.us, %.preheader.i.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @mbedtls_ct_zeroize_if(i64 noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %0 to i32
  %i.b = xor i32 %i.a, -1                         ; 2 uses
  %.not18 = icmp ult i64 %2, 4
  br i1 %.not18, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.s, %.lr.ph ] ; 7 uses
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
  %i.f = and i64 %i.e, 24
  %n.vec = and i64 %i.e, -32                      ; 4 uses
  %i.g = add i64 %.0.lcssa, %n.vec
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.d, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %index ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.i, align 1, !tbaa !9
  %wide.load23 = load <16 x i8>, ptr %i.j, align 1, !tbaa !9
  %i.k = and <16 x i8> %wide.load, %broadcast.splat
  %i.l = and <16 x i8> %wide.load23, %broadcast.splat
  store <16 x i8> %i.k, ptr %i.i, align 1, !tbaa !9
  store <16 x i8> %i.l, ptr %i.j, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec24 = and i64 %i.e, -8                     ; 3 uses
  %i.n = add i64 %.0.lcssa, %n.vec24
  %broadcast.splatinsert25 = insertelement <8 x i8> poison, i8 %i.d, i64 0
  %broadcast.splat26 = shufflevector <8 x i8> %broadcast.splatinsert25, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %index27 ; 2 uses
  %wide.load28 = load <8 x i8>, ptr %i.p, align 1, !tbaa !9
  %i.q = and <8 x i8> %wide.load28, %broadcast.splat26
  store <8 x i8> %i.q, ptr %i.p, align 1, !tbaa !9
  %index.next29 = add nuw i64 %index27, 8         ; 2 uses
  %i.r = icmp eq i64 %index.next29, %n.vec24
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

end_hunk_0
