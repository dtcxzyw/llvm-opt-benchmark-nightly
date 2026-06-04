inline.NumInlined: 19
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@mbedtls_ct_zero = hidden global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden noundef range(i32 0, 256) i32 @_Z17mbedtls_ct_memcmpPKvS0_m(ptr noundef captures(address) %0, ptr noundef captures(address) %1, i64 noundef %2) local_unnamed_addr #0 {
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
  %i.c = load volatile i8, ptr %i.b, align 1, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.015
  %i.e = load volatile i8, ptr %i.d, align 1, !tbaa !7
  %i.f = xor i8 %i.e, %i.c
  %i.g = zext i8 %i.f to i32
  %i.h = or i32 %.01314, %i.g
  %i.i = or disjoint i64 %.015, 1                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %i.k = load volatile i8, ptr %i.j, align 1, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.m = load volatile i8, ptr %i.l, align 1, !tbaa !7
  %i.n = xor i8 %i.m, %i.k
  %i.o = zext i8 %i.n to i32
  %i.p = or i32 %i.h, %i.o
  %i.q = or disjoint i64 %.015, 2                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.s = load volatile i8, ptr %i.r, align 1, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.u = load volatile i8, ptr %i.t, align 1, !tbaa !7
  %i.v = xor i8 %i.u, %i.s
  %i.w = zext i8 %i.v to i32
  %i.x = or i32 %i.p, %i.w
  %i.y = or disjoint i64 %.015, 3                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.aa = load volatile i8, ptr %i.z, align 1, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %i.ac = load volatile i8, ptr %i.ab, align 1, !tbaa !7
  %i.ad = xor i8 %i.ac, %i.aa
  %i.ae = zext i8 %i.ad to i32
  %i.af = or i32 %i.x, %i.ae                      ; 3 uses
  %i.ag = add nuw i64 %.015, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
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
  %min.iters.check = icmp ult i64 %i.h, 32
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
end_hunk_0
