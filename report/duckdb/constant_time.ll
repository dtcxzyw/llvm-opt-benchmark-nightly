Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/constant_time?download=true
inline.NumInlined: 19
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_Z17mbedtls_ct_memcmpPKvS0_m:bb.a
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !8

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
  %i.ai = load volatile i8, ptr %i.ah, align 1, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.015.epil
  %i.ak = load volatile i8, ptr %i.aj, align 1, !tbaa !7
  %i.al = xor i8 %i.ak, %i.ai
  %i.am = zext i8 %i.al to i32
  %i.an = or i32 %.01314.epil, %i.am              ; 2 uses
  %i.ao = add nuw i64 %.015.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !10

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.013.lcssa = phi i32 [ 0, %bb.a ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.epil ]
  ret i32 %.013.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_Z23mbedtls_ct_memmove_leftPvmm(ptr nofree noundef captures(address) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge30, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.a
  %i.a = sub i64 %1, %2                           ; 2 uses
  %i.b = add i64 %1, -1                           ; 5 uses
  %.not31 = icmp eq i64 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 4 uses
  br i1 %.not31, label %.lr.ph29.split, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph29
  %xtraiter = and i64 %i.b, 1
  %i.d = icmp eq i64 %1, 2
  %unroll_iter = and i64 %i.b, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod39 = trunc i64 %i.b to i1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.027.us = phi i64 [ %i.bs, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 2 uses
  %i.e = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %i.f = xor i64 %i.e, %.027.us                   ; 2 uses
  %i.g = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %i.h = xor i64 %i.g, %i.a                       ; 3 uses
  %i.i = xor i64 %i.h, %i.f
  %i.j = lshr i64 %i.i, 63
  %i.k = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12 ; 2 uses
  %i.l = xor i64 %i.j, %i.k
  %i.m = sub i64 0, %i.l
  %i.n = lshr i64 %i.k, 1
  %i.o = sub nsw i64 0, %i.n
  %i.p = or i64 %i.m, %i.o
  %.neg.i.i.i.us = ashr i64 %i.p, 63              ; 2 uses
  %i.q = sub i64 %i.f, %i.h
  %i.r = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %i.s = xor i64 %i.r, %.neg.i.i.i.us
  %i.t = xor i64 %i.s, -1
  %i.u = and i64 %.neg.i.i.i.us, %i.h
  %i.v = and i64 %i.q, %i.t
  %i.w = or i64 %i.v, %i.u
  %i.x = lshr i64 %i.w, 63
  %i.y = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12 ; 2 uses
  %i.z = xor i64 %i.x, %i.y
  %i.aa = sub i64 0, %i.z
  %i.ab = lshr i64 %i.y, 1
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = or i64 %i.aa, %i.ac
  %.neg.i10.i.i.us = ashr i64 %i.ad, 63           ; 7 uses
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us
  %invariant.op = xor i64 %.neg.i10.i.i.us, -1
  %invariant.op40 = xor i64 %.neg.i10.i.i.us, -1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.new
  %.02326.us = phi i64 [ 0, %.lr.ph.us.new ], [ %i.as, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.us.new ], [ %niter.next.1, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.02326.us ; 2 uses
  %i.af = load volatile i8, ptr %i.ae, align 1, !tbaa !7
  %i.ag = or disjoint i64 %.02326.us, 1           ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  %i.ai = load volatile i8, ptr %i.ah, align 1, !tbaa !7
  %i.aj = zext i8 %i.af to i64
  %i.ak = zext i8 %i.ai to i64
  %i.al = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %.reass.reass = xor i64 %i.al, %invariant.op
  %i.am = and i64 %.neg.i10.i.i.us, %i.aj
  %i.an = and i64 %.reass.reass, %i.ak
  %i.ao = or i64 %i.an, %i.am
  %i.ap = trunc nuw i64 %i.ao to i8
  store volatile i8 %i.ap, ptr %i.ae, align 1, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag ; 2 uses
  %i.ar = load volatile i8, ptr %i.aq, align 1, !tbaa !7
  %i.as = add nuw i64 %.02326.us, 2               ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  %i.au = load volatile i8, ptr %i.at, align 1, !tbaa !7
  %i.av = zext i8 %i.ar to i64
  %i.aw = zext i8 %i.au to i64
  %i.ax = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %.reass.1.reass = xor i64 %i.ax, %invariant.op40
  %i.ay = and i64 %.neg.i10.i.i.us, %i.av
  %i.az = and i64 %.reass.1.reass, %i.aw
  %i.ba = or i64 %i.az, %i.ay
  %i.bb = trunc nuw i64 %i.ba to i8
  store volatile i8 %i.bb, ptr %i.aq, align 1, !tbaa !7
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %bb.b, !llvm.loop !14

._crit_edge.us.unr-lcssa:                         ; preds = %bb.b
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %.02326.us.epil.init = phi i64 [ 0, %.lr.ph.us ], [ %i.as, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod39)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %.02326.us.epil.init ; 2 uses
  %i.bd = load volatile i8, ptr %i.bc, align 1, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.02326.us.epil.init
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = load volatile i8, ptr %i.bf, align 1, !tbaa !7
  %i.bh = zext i8 %i.bd to i64
  %i.bi = zext i8 %i.bg to i64
  %i.bj = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %i.bk = xor i64 %.neg.i10.i.i.us, %i.bj
  %.reass.epil = xor i64 %i.bk, -1
  %i.bl = and i64 %.neg.i10.i.i.us, %i.bh
  %i.bm = and i64 %.reass.epil, %i.bi
  %i.bn = or i64 %i.bm, %i.bl
  %i.bo = trunc nuw i64 %i.bn to i8
  store volatile i8 %i.bo, ptr %i.bc, align 1, !tbaa !7
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %i.bp = load volatile i8, ptr %i.c, align 1, !tbaa !7
  %i.bq = trunc nsw i64 %.neg.i10.i.i.us to i8
  %i.br = and i8 %i.bp, %i.bq
  store volatile i8 %i.br, ptr %i.c, align 1, !tbaa !7
  %i.bs = add nuw i64 %.027.us, 1                 ; 2 uses
  %exitcond33.not = icmp eq i64 %i.bs, %1
  br i1 %exitcond33.not, label %._crit_edge30, label %.lr.ph.us, !llvm.loop !15

._crit_edge30:                                    ; preds = %._crit_edge.us, %.lr.ph29.split, %bb.a
  ret void

.lr.ph29.split:                                   ; preds = %.lr.ph29
  %i.bt = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12 ; 2 uses
  %i.bu = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %i.bv = xor i64 %i.bu, %i.a                     ; 3 uses
  %i.bw = xor i64 %i.bv, %i.bt
  %i.bx = lshr i64 %i.bw, 63
  %i.by = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12 ; 2 uses
  %i.bz = xor i64 %i.bx, %i.by
  %i.ca = sub i64 0, %i.bz
  %i.cb = lshr i64 %i.by, 1
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = or i64 %i.ca, %i.cc
  %.neg.i.i.i = ashr i64 %i.cd, 63                ; 2 uses
  %i.ce = sub i64 %i.bt, %i.bv
  %i.cf = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %i.cg = xor i64 %i.cf, %.neg.i.i.i
  %i.ch = xor i64 %i.cg, -1
  %i.ci = and i64 %.neg.i.i.i, %i.bv
  %i.cj = and i64 %i.ce, %i.ch
  %i.ck = or i64 %i.cj, %i.ci
  %i.cl = lshr i64 %i.ck, 63
  %i.cm = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12 ; 2 uses
  %i.cn = xor i64 %i.cl, %i.cm
  %i.co = sub i64 0, %i.cn
  %i.cp = lshr i64 %i.cm, 1
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = or i64 %i.co, %i.cq
  %.neg.i10.i.i = ashr i64 %i.cr, 63
  %i.cs = load volatile i8, ptr %i.c, align 1, !tbaa !7
  %i.ct = trunc nsw i64 %.neg.i10.i.i to i8
  %i.cu = and i8 %i.cs, %i.ct
  store volatile i8 %i.cu, ptr %i.c, align 1, !tbaa !7
  br label %._crit_edge30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m(i64 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %i.b = xor i64 %0, %i.a
  %i.c = xor i64 %i.b, -1                         ; 8 uses
  %i.d = icmp eq ptr %3, null
  %spec.select = select i1 %i.d, ptr %1, ptr %3   ; 8 uses
  %.not31 = icmp ult i64 %4, 8
  br i1 %.not31, label %.preheader, label %vector.memcheck

.preheader:                                       ; preds = %vector.memcheck, %bb.a
  %.027.lcssa = phi i64 [ 0, %bb.a ], [ %5, %vector.memcheck ] ; 10 uses
  %i.e = icmp ult i64 %.027.lcssa, %4
  br i1 %i.e, label %vector.ph, label %._crit_edge

vector.memcheck:                                  ; preds = %bb.a, %vector.memcheck
  %5 = phi i64 [ %12, %vector.memcheck ], [ 8, %bb.a ] ; 3 uses
  %.02732 = phi i64 [ %5, %vector.memcheck ], [ 0, %bb.a ] ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 %.02732
  %.0.copyload.i30 = load i64, ptr %6, align 1
  %7 = and i64 %.0.copyload.i30, %0
  %8 = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.02732
  %.0.copyload.i = load i64, ptr %8, align 1
  %9 = and i64 %.0.copyload.i, %i.c
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 %.02732
  %11 = or i64 %9, %7
  store i64 %11, ptr %10, align 1
  %12 = add i64 %5, 8                             ; 2 uses
  %.not = icmp ugt i64 %12, %4
  br i1 %.not, label %.preheader, label %vector.memcheck, !llvm.loop !16

vector.ph:                                        ; preds = %.preheader
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 %.027.lcssa
  %14 = load i8, ptr %13, align 1, !tbaa !7
  %15 = zext i8 %14 to i64
  %16 = and i64 %0, %15
  %17 = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.027.lcssa
  %18 = load i8, ptr %17, align 1, !tbaa !7
  %19 = zext i8 %18 to i64
  %n.vec = and i64 %19, %i.c
  %20 = or i64 %n.vec, %16
  %21 = trunc nuw i64 %20 to i8
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 %.027.lcssa
  store i8 %21, ptr %22, align 1, !tbaa !7
  %23 = or disjoint i64 %.027.lcssa, 1            ; 4 uses
  %exitcond.not = icmp eq i64 %23, %4
  br i1 %exitcond.not, label %._crit_edge, label %vector.body

vector.body:                                      ; preds = %vector.ph
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %23
  %24 = load i8, ptr %i.f, align 1, !tbaa !7
  %25 = zext i8 %24 to i64
  %26 = and i64 %0, %25
  %i.g = getelementptr inbounds nuw i8, ptr %spec.select, i64 %23
  %27 = load i8, ptr %i.g, align 1, !tbaa !7
  %28 = zext i8 %27 to i64
  %29 = and i64 %28, %i.c
  %30 = or i64 %29, %26
  %31 = trunc nuw i64 %30 to i8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %23
  store i8 %31, ptr %i.h, align 1, !tbaa !7
  %32 = or disjoint i64 %.027.lcssa, 2            ; 4 uses
  %i.i = icmp eq i64 %32, %4
  br i1 %i.i, label %._crit_edge, label %.lr.ph34.preheader40

.lr.ph34.preheader40:                             ; preds = %vector.body
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !7
  %35 = zext i8 %34 to i64
  %36 = and i64 %0, %35
  %37 = getelementptr inbounds nuw i8, ptr %spec.select, i64 %32
  %38 = load i8, ptr %37, align 1, !tbaa !7
  %39 = zext i8 %38 to i64
  %xtraiter = and i64 %39, %i.c
  %40 = or i64 %xtraiter, %36
  %41 = trunc nuw i64 %40 to i8
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 %32
  store i8 %41, ptr %42, align 1, !tbaa !7
  %43 = or disjoint i64 %.027.lcssa, 3            ; 4 uses
  %lcmp.mod.not = icmp eq i64 %43, %4
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph34.prol

.lr.ph34.prol:                                    ; preds = %.lr.ph34.preheader40
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %43
  %i.k = load i8, ptr %i.j, align 1, !tbaa !7
  %i.l = zext i8 %i.k to i64
  %i.m = and i64 %0, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select, i64 %43
  %i.o = load i8, ptr %i.n, align 1, !tbaa !7
  %i.p = zext i8 %i.o to i64
  %i.q = and i64 %i.p, %i.c
  %i.r = or i64 %i.q, %i.m
  %i.s = trunc nuw i64 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %43
  store i8 %i.s, ptr %i.t, align 1, !tbaa !7
  %44 = or disjoint i64 %.027.lcssa, 4            ; 4 uses
  %exitcond.not.3 = icmp eq i64 %44, %4
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph34.prol.loopexit

.lr.ph34.prol.loopexit:                           ; preds = %.lr.ph34.prol
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !7
  %47 = zext i8 %46 to i64
  %48 = and i64 %0, %47
  %49 = getelementptr inbounds nuw i8, ptr %spec.select, i64 %44
  %50 = load i8, ptr %49, align 1, !tbaa !7
  %51 = zext i8 %50 to i64
  %52 = and i64 %51, %i.c
  %53 = or i64 %52, %48
  %54 = trunc nuw i64 %53 to i8
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 %44
  store i8 %54, ptr %55, align 1, !tbaa !7
  %56 = or disjoint i64 %.027.lcssa, 5            ; 4 uses
  %i.u = icmp eq i64 %56, %4
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph34.prol.loopexit
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !7
  %59 = zext i8 %58 to i64
  %60 = and i64 %0, %59
  %61 = getelementptr inbounds nuw i8, ptr %spec.select, i64 %56
  %62 = load i8, ptr %61, align 1, !tbaa !7
  %63 = zext i8 %62 to i64
  %i.v = and i64 %63, %i.c
  %64 = or i64 %i.v, %60
  %65 = trunc nuw i64 %64 to i8
  %66 = getelementptr inbounds nuw i8, ptr %1, i64 %56
  store i8 %65, ptr %66, align 1, !tbaa !7
  %67 = or disjoint i64 %.027.lcssa, 6            ; 4 uses
  %exitcond.not.5 = icmp eq i64 %67, %4
  br i1 %exitcond.not.5, label %._crit_edge, label %.lr.ph34

.lr.ph34:                                         ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %67
  %i.x = load i8, ptr %i.w, align 1, !tbaa !7
  %i.y = zext i8 %i.x to i64
  %i.z = and i64 %0, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select, i64 %67
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !7
  %i.ac = zext i8 %i.ab to i64
  %i.ad = and i64 %i.ac, %i.c
  %i.ae = or i64 %i.ad, %i.z
  %i.af = trunc nuw i64 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %67
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %vector.ph, %vector.body, %.lr.ph34.preheader40, %.lr.ph34.prol, %.lr.ph34.prol.loopexit, %.lr.ph, %.lr.ph34, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_Z24mbedtls_ct_memcpy_offsetPhPKhmmmm(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  %.not10 = icmp ugt i64 %3, %4
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not31.i = icmp ult i64 %5, 8
  br i1 %.not31.i, label %.lr.ph.split.us, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %scevgep46 = getelementptr i8, ptr %0, i64 %5
  %i.a = add i64 %5, -8                           ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 %5
  %i.c = getelementptr i8, ptr %i.b, i64 %3
  %i.d = and i64 %5, 7                            ; 2 uses
  %cmp.n94 = icmp eq i64 %i.d, 0
  %invariant.gep = getelementptr i8, ptr %1, i64 %3
  %i.e = and i64 %5, 7                            ; 2 uses
  %cmp.n62 = icmp eq i64 %i.e, 0
  br label %.lr.ph.i.preheader

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.not17 = icmp eq i64 %5, 0
  br i1 %.not17, label %.preheader.i.us, label %.preheader.i.us.us.preheader

.preheader.i.us.us.preheader:                     ; preds = %.lr.ph.split.us
  %exitcond.not.i.us14.us = icmp eq i64 %5, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %exitcond.not.i.us14.us.1 = icmp eq i64 %5, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %exitcond.not.i.us14.us.2 = icmp eq i64 %5, 3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %exitcond.not.i.us14.us.3 = icmp eq i64 %5, 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %exitcond.not.i.us14.us.4 = icmp eq i64 %5, 5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %exitcond.not.i.us14.us.5 = icmp eq i64 %5, 6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %exitcond.not.i.us.us.us = icmp eq i64 %5, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %exitcond.not.i.us.us.us.1 = icmp eq i64 %5, 2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %exitcond.not.i.us.us.us.2 = icmp eq i64 %5, 3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %exitcond.not.i.us.us.us.3 = icmp eq i64 %5, 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %exitcond.not.i.us.us.us.4 = icmp eq i64 %5, 5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %exitcond.not.i.us.us.us.5 = icmp eq i64 %5, 6
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  br label %.preheader.i.us.us

.preheader.i.us.us:                               ; preds = %.preheader.i.us.us.preheader, %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us
  %.011.us.us = phi i64 [ %i.aw, %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us ], [ %3, %.preheader.i.us.us.preheader ] ; 3 uses
  %i.r = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %i.s = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %i.t = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %i.u = xor i64 %i.r, %i.s
  %i.v = xor i64 %i.u, %i.t
  %i.w = xor i64 %i.v, %2
  %i.x = xor i64 %i.w, %.011.us.us                ; 2 uses
  %i.y = sub i64 0, %i.x
  %i.z = lshr i64 %i.x, 1
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = or i64 %i.aa, %i.y
  %.fr18 = freeze i64 %i.ab
  %isnotneg.i.us.us = icmp sgt i64 %.fr18, -1     ; 2 uses
  %i.ac = sext i1 %isnotneg.i.us.us to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.011.us.us ; 7 uses
  %i.ae = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %i.af = xor i64 %i.ae, %i.ac
  %i.ag = trunc i64 %i.af to i8
  %i.ah = xor i8 %i.ag, -1                        ; 14 uses
  br i1 %isnotneg.i.us.us, label %.lr.ph34.i.us.us.us, label %.lr.ph34.i.us12.us

.lr.ph34.i.us12.us:                               ; preds = %.preheader.i.us.us
  %i.ai = load i8, ptr %0, align 1, !tbaa !7
  %i.aj = and i8 %i.ai, %i.ah
  store i8 %i.aj, ptr %0, align 1, !tbaa !7
  br i1 %exitcond.not.i.us14.us, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, label %.lr.ph34.i.us12.us.1

.lr.ph34.i.us12.us.1:                             ; preds = %.lr.ph34.i.us12.us
  %i.ak = load i8, ptr %i.f, align 1, !tbaa !7
  %i.al = and i8 %i.ak, %i.ah
  store i8 %i.al, ptr %i.f, align 1, !tbaa !7
  br i1 %exitcond.not.i.us14.us.1, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, label %.lr.ph34.i.us12.us.2

.lr.ph34.i.us12.us.2:                             ; preds = %.lr.ph34.i.us12.us.1
  %i.am = load i8, ptr %i.g, align 1, !tbaa !7
  %i.an = and i8 %i.am, %i.ah
  store i8 %i.an, ptr %i.g, align 1, !tbaa !7
  br i1 %exitcond.not.i.us14.us.2, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, label %.lr.ph34.i.us12.us.3

.lr.ph34.i.us12.us.3:                             ; preds = %.lr.ph34.i.us12.us.2
  %i.ao = load i8, ptr %i.h, align 1, !tbaa !7
  %i.ap = and i8 %i.ao, %i.ah
  store i8 %i.ap, ptr %i.h, align 1, !tbaa !7
  br i1 %exitcond.not.i.us14.us.3, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, label %.lr.ph34.i.us12.us.4

.lr.ph34.i.us12.us.4:                             ; preds = %.lr.ph34.i.us12.us.3
  %i.aq = load i8, ptr %i.i, align 1, !tbaa !7
  %i.ar = and i8 %i.aq, %i.ah
  store i8 %i.ar, ptr %i.i, align 1, !tbaa !7
  br i1 %exitcond.not.i.us14.us.4, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, label %.lr.ph34.i.us12.us.5

.lr.ph34.i.us12.us.5:                             ; preds = %.lr.ph34.i.us12.us.4
  %i.as = load i8, ptr %i.j, align 1, !tbaa !7
  %i.at = and i8 %i.as, %i.ah
  store i8 %i.at, ptr %i.j, align 1, !tbaa !7
  br i1 %exitcond.not.i.us14.us.5, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, label %.lr.ph34.i.us12.us.6

.lr.ph34.i.us12.us.6:                             ; preds = %.lr.ph34.i.us12.us.5
  %i.au = load i8, ptr %i.k, align 1, !tbaa !7
  %i.av = and i8 %i.au, %i.ah
  store i8 %i.av, ptr %i.k, align 1, !tbaa !7
  br label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us

_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us: ; preds = %.lr.ph34.i.us12.us, %.lr.ph34.i.us12.us.1, %.lr.ph34.i.us12.us.2, %.lr.ph34.i.us12.us.3, %.lr.ph34.i.us12.us.4, %.lr.ph34.i.us12.us.5, %.lr.ph34.i.us12.us.6, %.lr.ph34.i.us.us.us, %.lr.ph34.i.us.us.us.1, %.lr.ph34.i.us.us.us.2, %.lr.ph34.i.us.us.us.3, %.lr.ph34.i.us.us.us.4, %.lr.ph34.i.us.us.us.5, %.lr.ph34.i.us.us.us.6
  %i.aw = add i64 %.011.us.us, 1                  ; 2 uses
  %.not.us.us = icmp ugt i64 %i.aw, %4
  br i1 %.not.us.us, label %._crit_edge, label %.preheader.i.us.us, !llvm.loop !17

.lr.ph34.i.us.us.us:                              ; preds = %.preheader.i.us.us
  %i.ax = load i8, ptr %i.ad, align 1, !tbaa !7
  %i.ay = load i8, ptr %0, align 1, !tbaa !7
  %i.az = and i8 %i.ay, %i.ah
  %i.ba = or i8 %i.az, %i.ax
  store i8 %i.ba, ptr %0, align 1, !tbaa !7
  br i1 %exitcond.not.i.us.us.us, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, label %.lr.ph34.i.us.us.us.1

.lr.ph34.i.us.us.us.1:                            ; preds = %.lr.ph34.i.us.us.us
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !7
  %i.bd = load i8, ptr %i.l, align 1, !tbaa !7
  %i.be = and i8 %i.bd, %i.ah
  %i.bf = or i8 %i.be, %i.bc
  store i8 %i.bf, ptr %i.l, align 1, !tbaa !7
  br i1 %exitcond.not.i.us.us.us.1, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, label %.lr.ph34.i.us.us.us.2

.lr.ph34.i.us.us.us.2:                            ; preds = %.lr.ph34.i.us.us.us.1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !7
  %i.bi = load i8, ptr %i.m, align 1, !tbaa !7
  %i.bj = and i8 %i.bi, %i.ah
  %i.bk = or i8 %i.bj, %i.bh
  store i8 %i.bk, ptr %i.m, align 1, !tbaa !7
  br i1 %exitcond.not.i.us.us.us.2, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, label %.lr.ph34.i.us.us.us.3

.lr.ph34.i.us.us.us.3:                            ; preds = %.lr.ph34.i.us.us.us.2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !7
  %i.bn = load i8, ptr %i.n, align 1, !tbaa !7
  %i.bo = and i8 %i.bn, %i.ah
  %i.bp = or i8 %i.bo, %i.bm
  store i8 %i.bp, ptr %i.n, align 1, !tbaa !7
  br i1 %exitcond.not.i.us.us.us.3, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, label %.lr.ph34.i.us.us.us.4

.lr.ph34.i.us.us.us.4:                            ; preds = %.lr.ph34.i.us.us.us.3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !7
  %i.bs = load i8, ptr %i.o, align 1, !tbaa !7
  %i.bt = and i8 %i.bs, %i.ah
  %i.bu = or i8 %i.bt, %i.br
  store i8 %i.bu, ptr %i.o, align 1, !tbaa !7
  br i1 %exitcond.not.i.us.us.us.4, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, label %.lr.ph34.i.us.us.us.5

.lr.ph34.i.us.us.us.5:                            ; preds = %.lr.ph34.i.us.us.us.4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ad, i64 5
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !7
  %i.bx = load i8, ptr %i.p, align 1, !tbaa !7
  %i.by = and i8 %i.bx, %i.ah
  %i.bz = or i8 %i.by, %i.bw
  store i8 %i.bz, ptr %i.p, align 1, !tbaa !7
  br i1 %exitcond.not.i.us.us.us.5, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, label %.lr.ph34.i.us.us.us.6

.lr.ph34.i.us.us.us.6:                            ; preds = %.lr.ph34.i.us.us.us.5
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ad, i64 6
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !7
  %i.cc = load i8, ptr %i.q, align 1, !tbaa !7
  %i.cd = and i8 %i.cc, %i.ah
  %i.ce = or i8 %i.cd, %i.cb
  store i8 %i.ce, ptr %i.q, align 1, !tbaa !7
  br label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us

.preheader.i.us:                                  ; preds = %.lr.ph.split.us, %.preheader.i.us
  %.011.us = phi i64 [ %i.cj, %.preheader.i.us ], [ %3, %.lr.ph.split.us ]
  %i.cf = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12 ; 0 uses
  %i.cg = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12 ; 0 uses
  %i.ch = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12 ; 0 uses
  %i.ci = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12 ; 0 uses
  %i.cj = add i64 %.011.us, 1                     ; 2 uses
  %.not.us = icmp ugt i64 %i.cj, %4
  br i1 %.not.us, label %._crit_edge, label %.preheader.i.us, !llvm.loop !17

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit
  %indvar = phi i64 [ 0, %.lr.ph.i.preheader.preheader ], [ %indvar.next, %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit ] ; 3 uses
  %.011 = phi i64 [ %3, %.lr.ph.i.preheader.preheader ], [ %i.fz, %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit ] ; 3 uses
  %scevgep48 = getelementptr i8, ptr %i.c, i64 %indvar
  %i.ck = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %i.cl = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %i.cm = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %i.cn = xor i64 %i.ck, %i.cl
  %i.co = xor i64 %i.cn, %i.cm
  %i.cp = xor i64 %i.co, %2
  %i.cq = xor i64 %i.cp, %.011                    ; 2 uses
  %i.cr = sub i64 0, %i.cq
  %i.cs = lshr i64 %i.cq, 1
  %i.ct = sub nsw i64 0, %i.cs
  %i.cu = or i64 %i.ct, %i.cr
  %.fr = freeze i64 %i.cu
  %isnotneg.i = icmp sgt i64 %.fr, -1             ; 2 uses
  %i.cv = sext i1 %isnotneg.i to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %.011 ; 6 uses
  %i.cx = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %i.cy = xor i64 %i.cx, %i.cv
  %i.cz = xor i64 %i.cy, -1                       ; 4 uses
  br i1 %isnotneg.i, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader, %.lr.ph.i.us
  %indvar49 = phi i64 [ %indvar.next50, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.da = phi i64 [ %i.df, %.lr.ph.i.us ], [ 8, %.lr.ph.i.preheader ] ; 11 uses
  %.02732.i.us = phi i64 [ %i.da, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.02732.i.us
  %.0.copyload.i30.i.us = load i64, ptr %i.db, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 %.02732.i.us ; 2 uses
  %.0.copyload.i.i.us = load i64, ptr %i.dc, align 1
  %i.dd = and i64 %.0.copyload.i.i.us, %i.cz
  %i.de = or i64 %i.dd, %.0.copyload.i30.i.us
  store i64 %i.de, ptr %i.dc, align 1
  %i.df = add i64 %i.da, 8                        ; 2 uses
  %.not.i.us = icmp ugt i64 %i.df, %5
  %indvar.next50 = add i64 %indvar49, 1
  br i1 %.not.i.us, label %.preheader.i.loopexit, label %.lr.ph.i.us, !llvm.loop !16

.preheader.i.loopexit:                            ; preds = %.lr.ph.i.us
  %i.dg = icmp ult i64 %i.da, %5
  br i1 %i.dg, label %iter.check, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit

.preheader.i.loopexit.thread:                     ; preds = %.lr.ph.i
  %i.dh = icmp ult i64 %i.fr, %5
  br i1 %i.dh, label %iter.check81, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit

iter.check81:                                     ; preds = %.preheader.i.loopexit.thread
  %i.di = trunc i64 %i.cz to i8                   ; 3 uses
  %i.dj = shl i64 %indvar64, 3
  %i.dk = sub i64 %i.a, %i.dj                     ; 6 uses
  %min.iters.check66 = icmp ult i64 %i.dk, 8
  br i1 %min.iters.check66, label %.lr.ph34.i.preheader, label %vector.main.loop.iter.check67

vector.main.loop.iter.check67:                    ; preds = %iter.check81
  %min.iters.check68 = icmp ult i64 %i.dk, 32
  br i1 %min.iters.check68, label %vec.epilog.ph85, label %vector.ph69

vector.ph69:                                      ; preds = %vector.main.loop.iter.check67
  %i.dl = and i64 %i.dk, 24
  %n.vec70 = and i64 %i.dk, -32                   ; 4 uses
  %i.dm = add i64 %i.fr, %n.vec70
  %broadcast.splatinsert71 = insertelement <16 x i8> poison, i8 %i.di, i64 0
  %broadcast.splat72 = shufflevector <16 x i8> %broadcast.splatinsert71, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %i.fr
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph69
  %index74 = phi i64 [ 0, %vector.ph69 ], [ %index.next77, %vector.body73 ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %index74 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %wide.load75 = load <16 x i8>, ptr %i.do, align 1, !tbaa !7
  %wide.load76 = load <16 x i8>, ptr %i.dp, align 1, !tbaa !7
  %i.dq = and <16 x i8> %wide.load75, %broadcast.splat72
  %i.dr = and <16 x i8> %wide.load76, %broadcast.splat72
  store <16 x i8> %i.dq, ptr %i.do, align 1, !tbaa !7
  store <16 x i8> %i.dr, ptr %i.dp, align 1, !tbaa !7
  %index.next77 = add nuw i64 %index74, 32        ; 2 uses
  %i.ds = icmp eq i64 %index.next77, %n.vec70
  br i1 %i.ds, label %middle.block78, label %vector.body73, !llvm.loop !18

middle.block78:                                   ; preds = %vector.body73
  %cmp.n79 = icmp eq i64 %i.dk, %n.vec70
  br i1 %cmp.n79, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit, label %vec.epilog.iter.check83

vec.epilog.iter.check83:                          ; preds = %middle.block78
  %min.epilog.iters.check84 = icmp eq i64 %i.dl, 0
  br i1 %min.epilog.iters.check84, label %.lr.ph34.i.preheader, label %vec.epilog.ph85, !prof !21

vec.epilog.ph85:                                  ; preds = %vector.main.loop.iter.check67, %vec.epilog.iter.check83
  %vec.epilog.resume.val80 = phi i64 [ %n.vec70, %vec.epilog.iter.check83 ], [ 0, %vector.main.loop.iter.check67 ]
  %n.vec86 = sub i64 %i.dk, %i.d                  ; 2 uses
  %i.dt = add i64 %i.fr, %n.vec86
  %broadcast.splatinsert87 = insertelement <8 x i8> poison, i8 %i.di, i64 0
  %broadcast.splat88 = shufflevector <8 x i8> %broadcast.splatinsert87, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 %i.fr
  br label %vec.epilog.vector.body89

vec.epilog.vector.body89:                         ; preds = %vec.epilog.vector.body89, %vec.epilog.ph85
  %index90 = phi i64 [ %vec.epilog.resume.val80, %vec.epilog.ph85 ], [ %index.next92, %vec.epilog.vector.body89 ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %index90 ; 2 uses
  %wide.load91 = load <8 x i8>, ptr %i.dv, align 1, !tbaa !7
  %i.dw = and <8 x i8> %wide.load91, %broadcast.splat88
  store <8 x i8> %i.dw, ptr %i.dv, align 1, !tbaa !7
  %index.next92 = add nuw i64 %index90, 8         ; 2 uses
  %i.dx = icmp eq i64 %index.next92, %n.vec86
  br i1 %i.dx, label %vec.epilog.middle.block93, label %vec.epilog.vector.body89, !llvm.loop !22

vec.epilog.middle.block93:                        ; preds = %vec.epilog.vector.body89
  br i1 %cmp.n94, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit, label %.lr.ph34.i.preheader

.lr.ph34.i.preheader:                             ; preds = %iter.check81, %vec.epilog.iter.check83, %vec.epilog.middle.block93
  %.133.i.ph = phi i64 [ %i.fr, %iter.check81 ], [ %i.dm, %vec.epilog.iter.check83 ], [ %i.dt, %vec.epilog.middle.block93 ]
  br label %.lr.ph34.i

iter.check:                                       ; preds = %.preheader.i.loopexit
  %i.dy = trunc i64 %i.cz to i8                   ; 5 uses
  %i.dz = shl i64 %indvar49, 3
  %i.ea = sub i64 %i.a, %i.dz                     ; 6 uses
  %min.iters.check = icmp ult i64 %i.ea, 8
  br i1 %min.iters.check, label %.lr.ph34.i.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %0, i64 %i.da
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.da
  %scevgep47 = getelementptr i8, ptr %gep, i64 %indvar
  %bound0 = icmp ult ptr %scevgep, %scevgep48
  %bound1 = icmp ult ptr %scevgep47, %scevgep46
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph34.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check51 = icmp ult i64 %i.ea, 32
  br i1 %min.iters.check51, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.eb = and i64 %i.ea, 24
  %n.vec = and i64 %i.ea, -32                     ; 4 uses
  %i.ec = add i64 %i.da, %n.vec
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.dy, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ed = add nuw i64 %i.da, %index               ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %wide.load = load <16 x i8>, ptr %i.ee, align 1, !tbaa !7, !alias.scope !23
  %wide.load52 = load <16 x i8>, ptr %i.ef, align 1, !tbaa !7, !alias.scope !23
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 %i.ed ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %wide.load53 = load <16 x i8>, ptr %i.eg, align 1, !tbaa !7, !alias.scope !26, !noalias !23
  %wide.load54 = load <16 x i8>, ptr %i.eh, align 1, !tbaa !7, !alias.scope !26, !noalias !23
  %i.ei = and <16 x i8> %wide.load53, %broadcast.splat
  %i.ej = and <16 x i8> %wide.load54, %broadcast.splat
  %i.ek = or <16 x i8> %i.ei, %wide.load
  %i.el = or <16 x i8> %i.ej, %wide.load52
  store <16 x i8> %i.ek, ptr %i.eg, align 1, !tbaa !7, !alias.scope !26, !noalias !23
  store <16 x i8> %i.el, ptr %i.eh, align 1, !tbaa !7, !alias.scope !26, !noalias !23
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.em = icmp eq i64 %index.next, %n.vec
  br i1 %i.em, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ea, %n.vec
  br i1 %cmp.n, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.eb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph34.i.us.preheader, label %vec.epilog.ph, !prof !21

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec55 = sub i64 %i.ea, %i.e                  ; 2 uses
  %i.en = add i64 %i.da, %n.vec55
  %broadcast.splatinsert56 = insertelement <8 x i8> poison, i8 %i.dy, i64 0
  %broadcast.splat57 = shufflevector <8 x i8> %broadcast.splatinsert56, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index58 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next61, %vec.epilog.vector.body ] ; 2 uses
  %i.eo = add nuw i64 %i.da, %index58             ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.eo
  %wide.load59 = load <8 x i8>, ptr %i.ep, align 1, !tbaa !7, !alias.scope !23
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 %i.eo ; 2 uses
  %wide.load60 = load <8 x i8>, ptr %i.eq, align 1, !tbaa !7, !alias.scope !26, !noalias !23
  %i.er = and <8 x i8> %wide.load60, %broadcast.splat57
  %i.es = or <8 x i8> %i.er, %wide.load59
  store <8 x i8> %i.es, ptr %i.eq, align 1, !tbaa !7, !alias.scope !26, !noalias !23
  %index.next61 = add nuw i64 %index58, 8         ; 2 uses
  %i.et = icmp eq i64 %index.next61, %n.vec55
  br i1 %i.et, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n62, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit, label %.lr.ph34.i.us.preheader

.lr.ph34.i.us.preheader:                          ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.133.i.us.ph = phi i64 [ %i.da, %iter.check ], [ %i.da, %vector.memcheck ], [ %i.ec, %vec.epilog.iter.check ], [ %i.en, %vec.epilog.middle.block ] ; 6 uses
  %i.eu = sub i64 %5, %.133.i.us.ph
  %.neg = add i64 %.133.i.us.ph, 1
  %xtraiter = and i64 %i.eu, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph34.i.us.prol.loopexit, label %.lr.ph34.i.us.prol

.lr.ph34.i.us.prol:                               ; preds = %.lr.ph34.i.us.preheader
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.133.i.us.ph
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !7
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 %.133.i.us.ph ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !7
  %i.ez = and i8 %i.ey, %i.dy
  %i.fa = or i8 %i.ez, %i.ew
  store i8 %i.fa, ptr %i.ex, align 1, !tbaa !7
  %i.fb = add nuw i64 %.133.i.us.ph, 1
  br label %.lr.ph34.i.us.prol.loopexit

.lr.ph34.i.us.prol.loopexit:                      ; preds = %.lr.ph34.i.us.prol, %.lr.ph34.i.us.preheader
  %.133.i.us.unr = phi i64 [ %.133.i.us.ph, %.lr.ph34.i.us.preheader ], [ %i.fb, %.lr.ph34.i.us.prol ]
  %i.fc = icmp eq i64 %5, %.neg
  br i1 %i.fc, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit, label %.lr.ph34.i.us

.lr.ph34.i.us:                                    ; preds = %.lr.ph34.i.us.prol.loopexit, %.lr.ph34.i.us
  %.133.i.us = phi i64 [ %i.fq, %.lr.ph34.i.us ], [ %.133.i.us.unr, %.lr.ph34.i.us.prol.loopexit ] ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.133.i.us
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !7
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 %.133.i.us ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !7
  %i.fh = and i8 %i.fg, %i.dy
  %i.fi = or i8 %i.fh, %i.fe
  store i8 %i.fi, ptr %i.ff, align 1, !tbaa !7
  %i.fj = add nuw i64 %.133.i.us, 1               ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !7
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 %i.fj ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !7
  %i.fo = and i8 %i.fn, %i.dy
  %i.fp = or i8 %i.fo, %i.fl
  store i8 %i.fp, ptr %i.fm, align 1, !tbaa !7
  %i.fq = add nuw i64 %.133.i.us, 2               ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i64 %i.fq, %5
  br i1 %exitcond.not.i.us.1, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit, label %.lr.ph34.i.us, !llvm.loop !30

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvar64 = phi i64 [ %indvar.next65, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.fr = phi i64 [ %i.fu, %.lr.ph.i ], [ 8, %.lr.ph.i.preheader ] ; 8 uses
  %.02732.i = phi i64 [ %i.fr, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 %.02732.i ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.fs, align 1
  %i.ft = and i64 %.0.copyload.i.i, %i.cz
  store i64 %i.ft, ptr %i.fs, align 1
  %i.fu = add i64 %i.fr, 8                        ; 2 uses
  %.not.i = icmp ugt i64 %i.fu, %5
  %indvar.next65 = add i64 %indvar64, 1
  br i1 %.not.i, label %.preheader.i.loopexit.thread, label %.lr.ph.i, !llvm.loop !16

.lr.ph34.i:                                       ; preds = %.lr.ph34.i.preheader, %.lr.ph34.i
  %.133.i = phi i64 [ %i.fy, %.lr.ph34.i ], [ %.133.i.ph, %.lr.ph34.i.preheader ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 %.133.i ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !7
  %i.fx = and i8 %i.fw, %i.di
  store i8 %i.fx, ptr %i.fv, align 1, !tbaa !7
  %i.fy = add nuw i64 %.133.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fy, %5
  br i1 %exitcond.not.i, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit, label %.lr.ph34.i, !llvm.loop !31

_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit:          ; preds = %.lr.ph34.i, %.lr.ph34.i.us.prol.loopexit, %.lr.ph34.i.us, %middle.block78, %vec.epilog.middle.block93, %middle.block, %vec.epilog.middle.block, %.preheader.i.loopexit.thread, %.preheader.i.loopexit
  %i.fz = add i64 %.011, 1                        ; 2 uses
  %.not = icmp ugt i64 %i.fz, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !17

._crit_edge:                                      ; preds = %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit, %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, %.preheader.i.us, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Z21mbedtls_ct_zeroize_ifmPvm(i64 noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
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
  %4 = load i8, ptr %i.d, align 1, !tbaa !7
  %5 = and i8 %4, %3
  store i8 %5, ptr %i.d, align 1, !tbaa !7
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
  br i1 %.not, label %.preheader, label %vec.epilog.vector.body, !llvm.loop !32

.lr.ph:                                           ; preds = %vector.body
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %6 ; 2 uses
  %9 = load i8, ptr %i.g, align 1, !tbaa !7
  %10 = and i8 %9, %3
  store i8 %10, ptr %i.g, align 1, !tbaa !7
  %11 = or disjoint i64 %.0.lcssa, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %11, %2
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %11 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !7
  %i.j = and i8 %i.i, %3
  store i8 %i.j, ptr %i.h, align 1, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %vector.body, %.lr.ph, %vec.epilog.scalar.ph, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9, !19, !20}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = !{!"branch_weights", i32 8, i32 24}
!22 = distinct !{!22, !9, !19, !20}
!23 = !{!24}
!24 = distinct !{!24, !25}
!25 = distinct !{!25, !"LVerDomain"}
!26 = !{!27}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !9, !19, !20}
!29 = distinct !{!29, !9, !19, !20}
!30 = distinct !{!30, !9, !19}
!31 = distinct !{!31, !9, !20, !19}
!32 = distinct !{!32, !9}
end_hunk_0
