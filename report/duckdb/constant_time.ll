inline.NumInlined: 19
inline.NumDeleted: 9
begin_hunk_0_@_Z17mbedtls_ct_memcmpPKvS0_m:bb.a
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
define hidden void @_Z23mbedtls_ct_memmove_leftPvmm(ptr noundef captures(address) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
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
define hidden void @_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m(i64 noundef %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %i.d = xor i64 %0, %i.c
  %i.e = xor i64 %i.d, -1                         ; 5 uses
  %i.f = icmp eq ptr %3, null
  %spec.select = select i1 %i.f, ptr %1, ptr %3   ; 6 uses
  %spec.select35 = ptrtoaddr ptr %spec.select to i64
  %.not31 = icmp ult i64 %4, 8
  br i1 %.not31, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.027.lcssa = phi i64 [ 0, %bb.a ], [ %i.ak, %.lr.ph ] ; 6 uses
  %i.g = icmp ult i64 %.027.lcssa, %4
  br i1 %i.g, label %.lr.ph34.preheader, label %._crit_edge

.lr.ph34.preheader:                               ; preds = %.preheader
  %i.h = sub nuw i64 %4, %.027.lcssa              ; 3 uses
  %min.iters.check = icmp ult i64 %i.h, 48
  br i1 %min.iters.check, label %.lr.ph34.preheader40, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph34.preheader
  %i.i = sub i64 %i.b, %i.a
  %diff.check = icmp ult i64 %i.i, 16
  %i.j = sub i64 %i.b, %spec.select35
  %diff.check36 = icmp ult i64 %i.j, 16
  %conflict.rdx = or i1 %diff.check, %diff.check36
  br i1 %conflict.rdx, label %.lr.ph34.preheader40, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, -16                      ; 3 uses
  %i.k = add i64 %.027.lcssa, %n.vec
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %0, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert37 = insertelement <16 x i64> poison, i64 %i.e, i64 0
  %broadcast.splat38 = shufflevector <16 x i64> %broadcast.splatinsert37, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = add i64 %.027.lcssa, %index              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %i.l
  %wide.load = load <16 x i8>, ptr %i.m, align 1, !tbaa !7
  %i.n = zext <16 x i8> %wide.load to <16 x i64>
  %i.o = and <16 x i64> %broadcast.splat, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.l
  %wide.load39 = load <16 x i8>, ptr %i.p, align 1, !tbaa !7
  %i.q = zext <16 x i8> %wide.load39 to <16 x i64>
  %i.r = and <16 x i64> %broadcast.splat38, %i.q
  %i.s = or <16 x i64> %i.r, %i.o
  %i.t = trunc nuw <16 x i64> %i.s to <16 x i8>
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  store <16 x i8> %i.t, ptr %i.u, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph34.preheader40

.lr.ph34.preheader40:                             ; preds = %vector.memcheck, %.lr.ph34.preheader, %middle.block
  %.133.ph = phi i64 [ %.027.lcssa, %vector.memcheck ], [ %.027.lcssa, %.lr.ph34.preheader ], [ %i.k, %middle.block ] ; 7 uses
  %i.w = sub i64 %4, %.133.ph
  %.neg = add i64 %.133.ph, 1
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph34.prol.loopexit, label %.lr.ph34.prol

.lr.ph34.prol:                                    ; preds = %.lr.ph34.preheader40
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %.133.ph
  %i.y = load i8, ptr %i.x, align 1, !tbaa !7
  %i.z = zext i8 %i.y to i64
  %i.aa = and i64 %0, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.133.ph
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !7
  %i.ad = zext i8 %i.ac to i64
  %i.ae = and i64 %i.ad, %i.e
  %i.af = or i64 %i.ae, %i.aa
  %i.ag = trunc nuw i64 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.133.ph
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !7
  %i.ai = add nuw i64 %.133.ph, 1
  br label %.lr.ph34.prol.loopexit

.lr.ph34.prol.loopexit:                           ; preds = %.lr.ph34.prol, %.lr.ph34.preheader40
  %.133.unr = phi i64 [ %.133.ph, %.lr.ph34.preheader40 ], [ %i.ai, %.lr.ph34.prol ]
  %i.aj = icmp eq i64 %4, %.neg
  br i1 %i.aj, label %._crit_edge, label %.lr.ph34

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.ak = phi i64 [ %i.ar, %.lr.ph ], [ 8, %bb.a ] ; 3 uses
  %.02732 = phi i64 [ %i.ak, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.02732
  %.0.copyload.i30 = load i64, ptr %i.al, align 1
  %i.am = and i64 %.0.copyload.i30, %0
  %i.an = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.02732
  %.0.copyload.i = load i64, ptr %i.an, align 1
  %i.ao = and i64 %.0.copyload.i, %i.e
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %.02732
  %i.aq = or i64 %i.ao, %i.am
  store i64 %i.aq, ptr %i.ap, align 1
  %i.ar = add i64 %i.ak, 8                        ; 2 uses
  %.not = icmp ugt i64 %i.ar, %4
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !19

.lr.ph34:                                         ; preds = %.lr.ph34.prol.loopexit, %.lr.ph34
  %.133 = phi i64 [ %i.bp, %.lr.ph34 ], [ %.133.unr, %.lr.ph34.prol.loopexit ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %.133
  %i.at = load i8, ptr %i.as, align 1, !tbaa !7
  %i.au = zext i8 %i.at to i64
  %i.av = and i64 %0, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.133
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !7
  %i.ay = zext i8 %i.ax to i64
  %i.az = and i64 %i.ay, %i.e
  %i.ba = or i64 %i.az, %i.av
  %i.bb = trunc nuw i64 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %.133
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !7
  %i.bd = add nuw i64 %.133, 1                    ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !7
  %i.bg = zext i8 %i.bf to i64
  %i.bh = and i64 %0, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.bd
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !7
  %i.bk = zext i8 %i.bj to i64
  %i.bl = and i64 %i.bk, %i.e
  %i.bm = or i64 %i.bl, %i.bh
  %i.bn = trunc nuw i64 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 %i.bd
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !7
  %i.bp = add nuw i64 %.133, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bp, %4
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph34, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph34.prol.loopexit, %.lr.ph34, %middle.block, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_Z24mbedtls_ct_memcpy_offsetPhPKhmmmm(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #1 {
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
  %n.mod.vf88 = and i64 %5, 7                     ; 2 uses
  %cmp.n97 = icmp eq i64 %n.mod.vf88, 0
  %invariant.gep = getelementptr i8, ptr %1, i64 %3
  %n.mod.vf55 = and i64 %5, 7                     ; 2 uses
  %cmp.n63 = icmp eq i64 %n.mod.vf55, 0
  br label %.lr.ph.i.preheader

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.not17 = icmp eq i64 %5, 0
  br i1 %.not17, label %.preheader.i.us, label %.preheader.i.us.us.preheader

.preheader.i.us.us.preheader:                     ; preds = %.lr.ph.split.us
  %exitcond.not.i.us14.us = icmp eq i64 %5, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %exitcond.not.i.us14.us.1 = icmp eq i64 %5, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %exitcond.not.i.us14.us.2 = icmp eq i64 %5, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %exitcond.not.i.us14.us.3 = icmp eq i64 %5, 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %exitcond.not.i.us14.us.4 = icmp eq i64 %5, 5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %exitcond.not.i.us14.us.5 = icmp eq i64 %5, 6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %exitcond.not.i.us.us.us = icmp eq i64 %5, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %exitcond.not.i.us.us.us.1 = icmp eq i64 %5, 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %exitcond.not.i.us.us.us.2 = icmp eq i64 %5, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %exitcond.not.i.us.us.us.3 = icmp eq i64 %5, 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %exitcond.not.i.us.us.us.4 = icmp eq i64 %5, 5
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %exitcond.not.i.us.us.us.5 = icmp eq i64 %5, 6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  br label %.preheader.i.us.us

.preheader.i.us.us:                               ; preds = %.preheader.i.us.us.preheader, %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us
  %.011.us.us = phi i64 [ %i.au, %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us ], [ %3, %.preheader.i.us.us.preheader ] ; 3 uses
  %i.p = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %i.q = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %i.r = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %i.s = xor i64 %i.p, %i.q
  %i.t = xor i64 %i.s, %i.r
  %i.u = xor i64 %i.t, %2
  %i.v = xor i64 %i.u, %.011.us.us                ; 2 uses
  %i.w = sub i64 0, %i.v
  %i.x = lshr i64 %i.v, 1
  %i.y = sub nsw i64 0, %i.x
  %i.z = or i64 %i.y, %i.w
  %.fr18 = freeze i64 %i.z
  %isnotneg.i.us.us = icmp sgt i64 %.fr18, -1     ; 2 uses
  %i.aa = sext i1 %isnotneg.i.us.us to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.011.us.us ; 7 uses
  %i.ac = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %i.ad = xor i64 %i.ac, %i.aa
  %i.ae = trunc i64 %i.ad to i8
  %i.af = xor i8 %i.ae, -1                        ; 14 uses
  br i1 %isnotneg.i.us.us, label %.lr.ph34.i.us.us.us, label %.lr.ph34.i.us12.us

.lr.ph34.i.us12.us:                               ; preds = %.preheader.i.us.us
  %i.ag = load i8, ptr %0, align 1, !tbaa !7
  %i.ah = and i8 %i.ag, %i.af
  store i8 %i.ah, ptr %0, align 1, !tbaa !7
  br i1 %exitcond.not.i.us14.us, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, label %.lr.ph34.i.us12.us.1

.lr.ph34.i.us12.us.1:                             ; preds = %.lr.ph34.i.us12.us
  %i.ai = load i8, ptr %i.d, align 1, !tbaa !7
  %i.aj = and i8 %i.ai, %i.af
  store i8 %i.aj, ptr %i.d, align 1, !tbaa !7
  br i1 %exitcond.not.i.us14.us.1, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, label %.lr.ph34.i.us12.us.2

.lr.ph34.i.us12.us.2:                             ; preds = %.lr.ph34.i.us12.us.1
  %i.ak = load i8, ptr %i.e, align 1, !tbaa !7
  %i.al = and i8 %i.ak, %i.af
  store i8 %i.al, ptr %i.e, align 1, !tbaa !7
  br i1 %exitcond.not.i.us14.us.2, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, label %.lr.ph34.i.us12.us.3

.lr.ph34.i.us12.us.3:                             ; preds = %.lr.ph34.i.us12.us.2
  %i.am = load i8, ptr %i.f, align 1, !tbaa !7
  %i.an = and i8 %i.am, %i.af
  store i8 %i.an, ptr %i.f, align 1, !tbaa !7
  br i1 %exitcond.not.i.us14.us.3, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, label %.lr.ph34.i.us12.us.4

.lr.ph34.i.us12.us.4:                             ; preds = %.lr.ph34.i.us12.us.3
  %i.ao = load i8, ptr %i.g, align 1, !tbaa !7
  %i.ap = and i8 %i.ao, %i.af
  store i8 %i.ap, ptr %i.g, align 1, !tbaa !7
  br i1 %exitcond.not.i.us14.us.4, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, label %.lr.ph34.i.us12.us.5

.lr.ph34.i.us12.us.5:                             ; preds = %.lr.ph34.i.us12.us.4
  %i.aq = load i8, ptr %i.h, align 1, !tbaa !7
  %i.ar = and i8 %i.aq, %i.af
  store i8 %i.ar, ptr %i.h, align 1, !tbaa !7
  br i1 %exitcond.not.i.us14.us.5, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, label %.lr.ph34.i.us12.us.6

.lr.ph34.i.us12.us.6:                             ; preds = %.lr.ph34.i.us12.us.5
  %i.as = load i8, ptr %i.i, align 1, !tbaa !7
  %i.at = and i8 %i.as, %i.af
  store i8 %i.at, ptr %i.i, align 1, !tbaa !7
  br label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us

_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us: ; preds = %.lr.ph34.i.us12.us, %.lr.ph34.i.us12.us.1, %.lr.ph34.i.us12.us.2, %.lr.ph34.i.us12.us.3, %.lr.ph34.i.us12.us.4, %.lr.ph34.i.us12.us.5, %.lr.ph34.i.us12.us.6, %.lr.ph34.i.us.us.us, %.lr.ph34.i.us.us.us.1, %.lr.ph34.i.us.us.us.2, %.lr.ph34.i.us.us.us.3, %.lr.ph34.i.us.us.us.4, %.lr.ph34.i.us.us.us.5, %.lr.ph34.i.us.us.us.6
  %i.au = add i64 %.011.us.us, 1                  ; 2 uses
  %.not.us.us = icmp ugt i64 %i.au, %4
  br i1 %.not.us.us, label %._crit_edge, label %.preheader.i.us.us, !llvm.loop !21

.lr.ph34.i.us.us.us:                              ; preds = %.preheader.i.us.us
  %i.av = load i8, ptr %i.ab, align 1, !tbaa !7
  %i.aw = load i8, ptr %0, align 1, !tbaa !7
  %i.ax = and i8 %i.aw, %i.af
  %i.ay = or i8 %i.ax, %i.av
  store i8 %i.ay, ptr %0, align 1, !tbaa !7
  br i1 %exitcond.not.i.us.us.us, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, label %.lr.ph34.i.us.us.us.1

.lr.ph34.i.us.us.us.1:                            ; preds = %.lr.ph34.i.us.us.us
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !7
  %i.bb = load i8, ptr %i.j, align 1, !tbaa !7
  %i.bc = and i8 %i.bb, %i.af
  %i.bd = or i8 %i.bc, %i.ba
  store i8 %i.bd, ptr %i.j, align 1, !tbaa !7
  br i1 %exitcond.not.i.us.us.us.1, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, label %.lr.ph34.i.us.us.us.2

.lr.ph34.i.us.us.us.2:                            ; preds = %.lr.ph34.i.us.us.us.1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !7
  %i.bg = load i8, ptr %i.k, align 1, !tbaa !7
  %i.bh = and i8 %i.bg, %i.af
  %i.bi = or i8 %i.bh, %i.bf
  store i8 %i.bi, ptr %i.k, align 1, !tbaa !7
  br i1 %exitcond.not.i.us.us.us.2, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, label %.lr.ph34.i.us.us.us.3

.lr.ph34.i.us.us.us.3:                            ; preds = %.lr.ph34.i.us.us.us.2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !7
  %i.bl = load i8, ptr %i.l, align 1, !tbaa !7
  %i.bm = and i8 %i.bl, %i.af
  %i.bn = or i8 %i.bm, %i.bk
  store i8 %i.bn, ptr %i.l, align 1, !tbaa !7
  br i1 %exitcond.not.i.us.us.us.3, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, label %.lr.ph34.i.us.us.us.4

.lr.ph34.i.us.us.us.4:                            ; preds = %.lr.ph34.i.us.us.us.3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !7
  %i.bq = load i8, ptr %i.m, align 1, !tbaa !7
  %i.br = and i8 %i.bq, %i.af
  %i.bs = or i8 %i.br, %i.bp
  store i8 %i.bs, ptr %i.m, align 1, !tbaa !7
  br i1 %exitcond.not.i.us.us.us.4, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, label %.lr.ph34.i.us.us.us.5

.lr.ph34.i.us.us.us.5:                            ; preds = %.lr.ph34.i.us.us.us.4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 5
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !7
  %i.bv = load i8, ptr %i.n, align 1, !tbaa !7
  %i.bw = and i8 %i.bv, %i.af
  %i.bx = or i8 %i.bw, %i.bu
  store i8 %i.bx, ptr %i.n, align 1, !tbaa !7
  br i1 %exitcond.not.i.us.us.us.5, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, label %.lr.ph34.i.us.us.us.6

.lr.ph34.i.us.us.us.6:                            ; preds = %.lr.ph34.i.us.us.us.5
  %i.by = getelementptr inbounds nuw i8, ptr %i.ab, i64 6
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !7
  %i.ca = load i8, ptr %i.o, align 1, !tbaa !7
  %i.cb = and i8 %i.ca, %i.af
  %i.cc = or i8 %i.cb, %i.bz
  store i8 %i.cc, ptr %i.o, align 1, !tbaa !7
  br label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us

.preheader.i.us:                                  ; preds = %.lr.ph.split.us, %.preheader.i.us
  %.011.us = phi i64 [ %i.ch, %.preheader.i.us ], [ %3, %.lr.ph.split.us ]
  %i.cd = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12 ; 0 uses
  %i.ce = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12 ; 0 uses
  %i.cf = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12 ; 0 uses
  %i.cg = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12 ; 0 uses
  %i.ch = add i64 %.011.us, 1                     ; 2 uses
  %.not.us = icmp ugt i64 %i.ch, %4
  br i1 %.not.us, label %._crit_edge, label %.preheader.i.us, !llvm.loop !21

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit
  %indvar = phi i64 [ 0, %.lr.ph.i.preheader.preheader ], [ %indvar.next, %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit ] ; 3 uses
  %.011 = phi i64 [ %3, %.lr.ph.i.preheader.preheader ], [ %i.fs, %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit ] ; 3 uses
  %scevgep48 = getelementptr i8, ptr %i.c, i64 %indvar
  %i.ci = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %i.cj = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %i.ck = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %i.cl = xor i64 %i.ci, %i.cj
  %i.cm = xor i64 %i.cl, %i.ck
  %i.cn = xor i64 %i.cm, %2
  %i.co = xor i64 %i.cn, %.011                    ; 2 uses
  %i.cp = sub i64 0, %i.co
  %i.cq = lshr i64 %i.co, 1
  %i.cr = sub nsw i64 0, %i.cq
  %i.cs = or i64 %i.cr, %i.cp
  %.fr = freeze i64 %i.cs
  %isnotneg.i = icmp sgt i64 %.fr, -1             ; 2 uses
  %i.ct = sext i1 %isnotneg.i to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 %.011 ; 6 uses
  %i.cv = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !12
  %i.cw = xor i64 %i.cv, %i.ct
  %i.cx = xor i64 %i.cw, -1                       ; 4 uses
  br i1 %isnotneg.i, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader, %.lr.ph.i.us
  %indvar49 = phi i64 [ %indvar.next50, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.cy = phi i64 [ %i.dd, %.lr.ph.i.us ], [ 8, %.lr.ph.i.preheader ] ; 11 uses
  %.02732.i.us = phi i64 [ %i.cy, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.02732.i.us
  %.0.copyload.i30.i.us = load i64, ptr %i.cz, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 %.02732.i.us ; 2 uses
  %.0.copyload.i.i.us = load i64, ptr %i.da, align 1
  %i.db = and i64 %.0.copyload.i.i.us, %i.cx
  %i.dc = or i64 %i.db, %.0.copyload.i30.i.us
  store i64 %i.dc, ptr %i.da, align 1
  %i.dd = add i64 %i.cy, 8                        ; 2 uses
  %.not.i.us = icmp ugt i64 %i.dd, %5
  %indvar.next50 = add i64 %indvar49, 1
  br i1 %.not.i.us, label %.preheader.i.loopexit, label %.lr.ph.i.us, !llvm.loop !19

.preheader.i.loopexit:                            ; preds = %.lr.ph.i.us
  %i.de = icmp ult i64 %i.cy, %5
  br i1 %i.de, label %iter.check, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit

.preheader.i.loopexit.thread:                     ; preds = %.lr.ph.i
  %i.df = icmp ult i64 %i.fk, %5
  br i1 %i.df, label %iter.check83, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit

iter.check83:                                     ; preds = %.preheader.i.loopexit.thread
  %i.dg = trunc i64 %i.cx to i8                   ; 3 uses
  %i.dh = shl i64 %indvar65, 3
  %i.di = sub i64 %i.a, %i.dh                     ; 6 uses
  %min.iters.check67 = icmp ult i64 %i.di, 8
  br i1 %min.iters.check67, label %.lr.ph34.i.preheader, label %vector.main.loop.iter.check68

vector.main.loop.iter.check68:                    ; preds = %iter.check83
  %min.iters.check69 = icmp ult i64 %i.di, 32
  br i1 %min.iters.check69, label %vec.epilog.ph87, label %vector.ph70

vector.ph70:                                      ; preds = %vector.main.loop.iter.check68
  %n.mod.vf71 = and i64 %i.di, 24
  %n.vec72 = and i64 %i.di, -32                   ; 4 uses
  %i.dj = add i64 %i.fk, %n.vec72
  %broadcast.splatinsert73 = insertelement <16 x i8> poison, i8 %i.dg, i64 0
  %broadcast.splat74 = shufflevector <16 x i8> %broadcast.splatinsert73, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dk = getelementptr i8, ptr %0, i64 %i.fk
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph70
  %index76 = phi i64 [ 0, %vector.ph70 ], [ %index.next79, %vector.body75 ] ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 %index76 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %wide.load77 = load <16 x i8>, ptr %i.dl, align 1, !tbaa !7
  %wide.load78 = load <16 x i8>, ptr %i.dm, align 1, !tbaa !7
  %i.dn = and <16 x i8> %wide.load77, %broadcast.splat74
  %i.do = and <16 x i8> %wide.load78, %broadcast.splat74
  store <16 x i8> %i.dn, ptr %i.dl, align 1, !tbaa !7
  store <16 x i8> %i.do, ptr %i.dm, align 1, !tbaa !7
  %index.next79 = add nuw i64 %index76, 32        ; 2 uses
  %i.dp = icmp eq i64 %index.next79, %n.vec72
  br i1 %i.dp, label %middle.block80, label %vector.body75, !llvm.loop !22

middle.block80:                                   ; preds = %vector.body75
  %cmp.n81 = icmp eq i64 %i.di, %n.vec72
  br i1 %cmp.n81, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit, label %vec.epilog.iter.check85

vec.epilog.iter.check85:                          ; preds = %middle.block80
  %min.epilog.iters.check86 = icmp eq i64 %n.mod.vf71, 0
  br i1 %min.epilog.iters.check86, label %.lr.ph34.i.preheader, label %vec.epilog.ph87, !prof !23

vec.epilog.ph87:                                  ; preds = %vector.main.loop.iter.check68, %vec.epilog.iter.check85
  %vec.epilog.resume.val82 = phi i64 [ %n.vec72, %vec.epilog.iter.check85 ], [ 0, %vector.main.loop.iter.check68 ]
  %n.vec89 = sub i64 %i.di, %n.mod.vf88           ; 2 uses
  %i.dq = add i64 %i.fk, %n.vec89
  %broadcast.splatinsert90 = insertelement <8 x i8> poison, i8 %i.dg, i64 0
  %broadcast.splat91 = shufflevector <8 x i8> %broadcast.splatinsert90, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.dr = getelementptr i8, ptr %0, i64 %i.fk
  br label %vec.epilog.vector.body92

vec.epilog.vector.body92:                         ; preds = %vec.epilog.vector.body92, %vec.epilog.ph87
  %index93 = phi i64 [ %vec.epilog.resume.val82, %vec.epilog.ph87 ], [ %index.next95, %vec.epilog.vector.body92 ] ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 %index93 ; 2 uses
  %wide.load94 = load <8 x i8>, ptr %i.ds, align 1, !tbaa !7
  %6 = and <8 x i8> %wide.load94, %broadcast.splat91
  store <8 x i8> %6, ptr %i.ds, align 1, !tbaa !7
  %index.next95 = add nuw i64 %index93, 8         ; 2 uses
  %i.dt = icmp eq i64 %index.next95, %n.vec89
  br i1 %i.dt, label %vec.epilog.middle.block96, label %vec.epilog.vector.body92, !llvm.loop !24

vec.epilog.middle.block96:                        ; preds = %vec.epilog.vector.body92
  br i1 %cmp.n97, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit, label %.lr.ph34.i.preheader

.lr.ph34.i.preheader:                             ; preds = %iter.check83, %vec.epilog.iter.check85, %vec.epilog.middle.block96
  %.133.i.ph = phi i64 [ %i.fk, %iter.check83 ], [ %i.dj, %vec.epilog.iter.check85 ], [ %i.dq, %vec.epilog.middle.block96 ]
  br label %.lr.ph34.i

iter.check:                                       ; preds = %.preheader.i.loopexit
  %i.du = trunc i64 %i.cx to i8                   ; 5 uses
  %i.dv = shl i64 %indvar49, 3
  %i.dw = sub i64 %i.a, %i.dv                     ; 6 uses
  %min.iters.check = icmp ult i64 %i.dw, 8
  br i1 %min.iters.check, label %.lr.ph34.i.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %0, i64 %i.cy
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.cy
  %scevgep47 = getelementptr i8, ptr %gep, i64 %indvar
  %bound0 = icmp ult ptr %scevgep, %scevgep48
  %bound1 = icmp ult ptr %scevgep47, %scevgep46
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph34.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check51 = icmp ult i64 %i.dw, 32
  br i1 %min.iters.check51, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.dw, 24
  %n.vec = and i64 %i.dw, -32                     ; 4 uses
  %i.dx = add i64 %i.cy, %n.vec
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.du, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dy = add i64 %i.cy, %index                   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %wide.load = load <16 x i8>, ptr %i.dz, align 1, !tbaa !7, !alias.scope !25
  %wide.load52 = load <16 x i8>, ptr %i.ea, align 1, !tbaa !7, !alias.scope !25
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 %i.dy ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %wide.load53 = load <16 x i8>, ptr %i.eb, align 1, !tbaa !7, !alias.scope !28, !noalias !25
  %wide.load54 = load <16 x i8>, ptr %i.ec, align 1, !tbaa !7, !alias.scope !28, !noalias !25
  %i.ed = and <16 x i8> %wide.load53, %broadcast.splat
  %i.ee = and <16 x i8> %wide.load54, %broadcast.splat
  %i.ef = or <16 x i8> %i.ed, %wide.load
  %i.eg = or <16 x i8> %i.ee, %wide.load52
  store <16 x i8> %i.ef, ptr %i.eb, align 1, !tbaa !7, !alias.scope !28, !noalias !25
  store <16 x i8> %i.eg, ptr %i.ec, align 1, !tbaa !7, !alias.scope !28, !noalias !25
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dw, %n.vec
  br i1 %cmp.n, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph34.i.us.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec56 = sub i64 %i.dw, %n.mod.vf55           ; 2 uses
  %i.ei = add i64 %i.cy, %n.vec56
  %broadcast.splatinsert57 = insertelement <8 x i8> poison, i8 %i.du, i64 0
  %broadcast.splat58 = shufflevector <8 x i8> %broadcast.splatinsert57, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index59 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next62, %vec.epilog.vector.body ] ; 2 uses
  %i.ej = add i64 %i.cy, %index59                 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ej
  %wide.load60 = load <8 x i8>, ptr %i.ek, align 1, !tbaa !7, !alias.scope !25
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 %i.ej ; 2 uses
  %wide.load61 = load <8 x i8>, ptr %i.el, align 1, !tbaa !7, !alias.scope !28, !noalias !25
  %7 = and <8 x i8> %wide.load61, %broadcast.splat58
  %8 = or <8 x i8> %7, %wide.load60
  store <8 x i8> %8, ptr %i.el, align 1, !tbaa !7, !alias.scope !28, !noalias !25
  %index.next62 = add nuw i64 %index59, 8         ; 2 uses
  %i.em = icmp eq i64 %index.next62, %n.vec56
  br i1 %i.em, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n63, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit, label %.lr.ph34.i.us.preheader

.lr.ph34.i.us.preheader:                          ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.133.i.us.ph = phi i64 [ %i.cy, %iter.check ], [ %i.cy, %vector.memcheck ], [ %i.dx, %vec.epilog.iter.check ], [ %i.ei, %vec.epilog.middle.block ] ; 6 uses
  %i.en = sub i64 %5, %.133.i.us.ph
  %.neg = add i64 %.133.i.us.ph, 1
  %xtraiter = and i64 %i.en, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph34.i.us.prol.loopexit, label %.lr.ph34.i.us.prol

.lr.ph34.i.us.prol:                               ; preds = %.lr.ph34.i.us.preheader
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.133.i.us.ph
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !7
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 %.133.i.us.ph ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !7
  %i.es = and i8 %i.er, %i.du
  %i.et = or i8 %i.es, %i.ep
  store i8 %i.et, ptr %i.eq, align 1, !tbaa !7
  %i.eu = add nuw i64 %.133.i.us.ph, 1
  br label %.lr.ph34.i.us.prol.loopexit

.lr.ph34.i.us.prol.loopexit:                      ; preds = %.lr.ph34.i.us.prol, %.lr.ph34.i.us.preheader
  %.133.i.us.unr = phi i64 [ %.133.i.us.ph, %.lr.ph34.i.us.preheader ], [ %i.eu, %.lr.ph34.i.us.prol ]
  %i.ev = icmp eq i64 %5, %.neg
  br i1 %i.ev, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit, label %.lr.ph34.i.us

.lr.ph34.i.us:                                    ; preds = %.lr.ph34.i.us.prol.loopexit, %.lr.ph34.i.us
  %.133.i.us = phi i64 [ %i.fj, %.lr.ph34.i.us ], [ %.133.i.us.unr, %.lr.ph34.i.us.prol.loopexit ] ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.133.i.us
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !7
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 %.133.i.us ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !7
  %i.fa = and i8 %i.ez, %i.du
  %i.fb = or i8 %i.fa, %i.ex
  store i8 %i.fb, ptr %i.ey, align 1, !tbaa !7
  %i.fc = add nuw i64 %.133.i.us, 1               ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !7
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 %i.fc ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !7
  %i.fh = and i8 %i.fg, %i.du
  %i.fi = or i8 %i.fh, %i.fe
  store i8 %i.fi, ptr %i.ff, align 1, !tbaa !7
  %i.fj = add nuw i64 %.133.i.us, 2               ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i64 %i.fj, %5
  br i1 %exitcond.not.i.us.1, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit, label %.lr.ph34.i.us, !llvm.loop !32

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvar65 = phi i64 [ %indvar.next66, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.fk = phi i64 [ %i.fn, %.lr.ph.i ], [ 8, %.lr.ph.i.preheader ] ; 8 uses
  %.02732.i = phi i64 [ %i.fk, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 %.02732.i ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.fl, align 1
  %i.fm = and i64 %.0.copyload.i.i, %i.cx
  store i64 %i.fm, ptr %i.fl, align 1
  %i.fn = add i64 %i.fk, 8                        ; 2 uses
  %.not.i = icmp ugt i64 %i.fn, %5
  %indvar.next66 = add i64 %indvar65, 1
  br i1 %.not.i, label %.preheader.i.loopexit.thread, label %.lr.ph.i, !llvm.loop !19

.lr.ph34.i:                                       ; preds = %.lr.ph34.i.preheader, %.lr.ph34.i
  %.133.i = phi i64 [ %i.fr, %.lr.ph34.i ], [ %.133.i.ph, %.lr.ph34.i.preheader ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 %.133.i ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !7
  %i.fq = and i8 %i.fp, %i.dg
  store i8 %i.fq, ptr %i.fo, align 1, !tbaa !7
  %i.fr = add nuw i64 %.133.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fr, %5
  br i1 %exitcond.not.i, label %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit, label %.lr.ph34.i, !llvm.loop !33

_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit:          ; preds = %.lr.ph34.i, %.lr.ph34.i.us.prol.loopexit, %.lr.ph34.i.us, %middle.block80, %vec.epilog.middle.block96, %middle.block, %vec.epilog.middle.block, %.preheader.i.loopexit.thread, %.preheader.i.loopexit
  %i.fs = add i64 %.011, 1                        ; 2 uses
  %.not = icmp ugt i64 %i.fs, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !21

._crit_edge:                                      ; preds = %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit, %_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m.exit.loopexit.us.us, %.preheader.i.us, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Z21mbedtls_ct_zeroize_ifmPvm(i64 noundef %0, ptr noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %0 to i32
  %i.b = xor i32 %i.a, -1                         ; 2 uses
  %.not18 = icmp ult i64 %2, 4
  br i1 %.not18, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.q, %.lr.ph ] ; 7 uses
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
  %wide.load = load <16 x i8>, ptr %i.h, align 1, !tbaa !7
  %wide.load23 = load <16 x i8>, ptr %i.i, align 1, !tbaa !7
  %i.j = and <16 x i8> %wide.load, %broadcast.splat
  %i.k = and <16 x i8> %wide.load23, %broadcast.splat
  store <16 x i8> %i.j, ptr %i.h, align 1, !tbaa !7
  store <16 x i8> %i.k, ptr %i.i, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf24 = and i64 %i.e, -8                  ; 3 uses
  %i.m = add i64 %.0.lcssa, %n.mod.vf24
  %broadcast.splatinsert26 = insertelement <8 x i8> poison, i8 %i.d, i64 0
  %broadcast.splat27 = shufflevector <8 x i8> %broadcast.splatinsert26, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.n = getelementptr i8, ptr %1, i64 %.0.lcssa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 %index28 ; 2 uses
  %wide.load29 = load <8 x i8>, ptr %i.o, align 1, !tbaa !7
  %3 = and <8 x i8> %wide.load29, %broadcast.splat27
  store <8 x i8> %3, ptr %i.o, align 1, !tbaa !7
  %index.next30 = add nuw i64 %index28, 8         ; 2 uses
  %i.p = icmp eq i64 %index.next30, %n.mod.vf24
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n31 = icmp eq i64 %i.e, %n.mod.vf24
  br i1 %cmp.n31, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.120.ph = phi i64 [ %.0.lcssa, %iter.check ], [ %i.f, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.q = phi i64 [ %i.t, %.lr.ph ], [ 4, %bb.a ]  ; 3 uses
  %.019 = phi i64 [ %i.q, %.lr.ph ], [ 0, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.019 ; 2 uses
  %.0.copyload.i = load i32, ptr %i.r, align 1
  %i.s = and i32 %.0.copyload.i, %i.b
  store i32 %i.s, ptr %i.r, align 1
  %i.t = add i64 %i.q, 4                          ; 2 uses
  %.not = icmp ugt i64 %i.t, %2
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !36

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.120 = phi i64 [ %i.x, %vec.epilog.scalar.ph ], [ %.120.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.120 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !7
  %i.w = and i8 %i.v, %i.d
  store i8 %i.w, ptr %i.u, align 1, !tbaa !7
  %i.x = add nuw i64 %.120, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %2
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader
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
!16 = distinct !{!16, !9, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9, !17}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9, !17, !18}
!23 = !{!"branch_weights", i32 8, i32 24}
!24 = distinct !{!24, !9, !17, !18}
!25 = !{!26}
!26 = distinct !{!26, !27}
!27 = distinct !{!27, !"LVerDomain"}
!28 = !{!29}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !9, !17, !18}
!31 = distinct !{!31, !9, !17, !18}
!32 = distinct !{!32, !9, !17}
!33 = distinct !{!33, !9, !18, !17}
!34 = distinct !{!34, !9, !17, !18}
!35 = distinct !{!35, !9, !17, !18}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9, !18, !17}
end_hunk_0
