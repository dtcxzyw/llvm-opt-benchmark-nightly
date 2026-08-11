inline.NumInlined: 136
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN14arrow_vendored17double_conversion6Bignum13SubtractTimesERKS1_i:bb.a
.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 32766
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.03545.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod72 = trunc i16 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod72)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.epil.init
  %i.t = load i32, ptr %i.s, align 4, !tbaa !12
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, %i.n
  %i.w = zext i32 %.03545.epil.init to i64
  %i.x = add nuw nsw i64 %i.v, %i.w               ; 2 uses
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.y = load i32, ptr %gep.epil, align 4, !tbaa !12
  %i.z = trunc i64 %i.x to i32
  %i.aa = and i32 %i.z, 268435455
  %i.ab = sub i32 %i.y, %i.aa                     ; 2 uses
  %i.ac = and i32 %i.ab, 268435455
  store i32 %i.ac, ptr %gep.epil, align 4, !tbaa !12
  %i.ad = lshr i32 %i.ab, 31
  %i.ae = lshr i64 %i.x, 28
  %i.af = trunc i64 %i.ae to i32
  %i.ag = add i32 %i.ad, %i.af
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.b
  %.035.lcssa = phi i32 [ 0, %bb.b ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ], [ %i.ag, %.epil.preheader ]
  %i.ah = add nsw i32 %i.j, %i.l                  ; 2 uses
  %i.ai = load i16, ptr %0, align 4, !tbaa !8     ; 5 uses
  %i.aj = sext i16 %i.ai to i32
  %.not47 = icmp slt i32 %i.ah, %i.aj
  br i1 %.not47, label %.lr.ph51, label %.critedge

.lr.ph51:                                         ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = sext i32 %i.ah to i64
  %i.am = sext i16 %i.ai to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %.03545 = phi i32 [ 0, %.lr.ph.new ], [ %i.bq, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !12
  %i.ap = zext i32 %i.ao to i64
  %i.aq = mul nuw nsw i64 %i.ap, %i.n
  %i.ar = zext i32 %.03545 to i64
  %i.as = add nuw nsw i64 %i.aq, %i.ar            ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.at = load i32, ptr %gep, align 4, !tbaa !12
  %i.au = trunc i64 %i.as to i32
  %i.av = and i32 %i.au, 268435455
  %i.aw = sub i32 %i.at, %i.av                    ; 2 uses
  %i.ax = and i32 %i.aw, 268435455
  store i32 %i.ax, ptr %gep, align 4, !tbaa !12
  %i.ay = lshr i32 %i.aw, 31
  %i.az = lshr i64 %i.as, 28
  %i.ba = trunc i64 %i.az to i32
  %i.bb = add i32 %i.ay, %i.ba
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !12
  %i.be = zext i32 %i.bd to i64
  %i.bf = mul nuw nsw i64 %i.be, %i.n
  %i.bg = zext i32 %i.bb to i64
  %i.bh = add nuw nsw i64 %i.bf, %i.bg            ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.bi = load i32, ptr %gep.1, align 4, !tbaa !12
  %i.bj = trunc i64 %i.bh to i32
  %i.bk = and i32 %i.bj, 268435455
  %i.bl = sub i32 %i.bi, %i.bk                    ; 2 uses
  %i.bm = and i32 %i.bl, 268435455
  store i32 %i.bm, ptr %gep.1, align 4, !tbaa !12
  %i.bn = lshr i32 %i.bl, 31
  %i.bo = lshr i64 %i.bh, 28
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = add i32 %i.bn, %i.bp                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !67

bb.d:                                             ; preds = %.lr.ph51, %bb.e
  %indvars.iv58 = phi i64 [ %i.al, %.lr.ph51 ], [ %indvars.iv.next59, %bb.e ] ; 2 uses
  %.148 = phi i32 [ %.035.lcssa, %.lr.ph51 ], [ %i.bw, %bb.e ] ; 2 uses
  %i.br = icmp eq i32 %.148, 0
  br i1 %i.br, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %indvars.iv58 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !12
  %i.bu = sub i32 %i.bt, %.148                    ; 2 uses
  %i.bv = and i32 %i.bu, 268435455
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !12
  %i.bw = lshr i32 %i.bu, 31
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, 1 ; 2 uses
  %.not = icmp slt i64 %indvars.iv.next59, %i.am
  br i1 %.not, label %bb.d, label %.critedge, !llvm.loop !68

.critedge:                                        ; preds = %bb.e, %._crit_edge
  %i.bx = icmp sgt i16 %i.ai, 0
  br i1 %i.bx, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.critedge
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %i.bz = phi i16 [ %i.ai, %.lr.ph.i ], [ %i.cg, %bb.g ] ; 3 uses
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = add nuw nsw i64 %i.ca, 4294967295
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !12
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.g, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

bb.g:                                             ; preds = %bb.f
  %i.cg = add nsw i16 %i.bz, -1                   ; 2 uses
  store i16 %i.cg, ptr %0, align 4, !tbaa !8
  %i.ch = icmp sgt i16 %i.bz, 1
  br i1 %i.ch, label %bb.f, label %.critedge.thread3.i, !llvm.loop !24

.critedge.i:                                      ; preds = %.critedge
  %i.ci = icmp eq i16 %i.ai, 0
  br i1 %i.ci, label %.critedge.thread3.i, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.g, %.critedge.i
  store i16 0, ptr %i.g, align 2, !tbaa !11
  br label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit: ; preds = %bb.d, %bb.f, %.lr.ph54, %.preheader, %.critedge.thread3.i, %.critedge.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZNK14arrow_vendored17double_conversion6Bignum11ToHexStringEPci(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4, !tbaa !8      ; 3 uses
  %i.b = icmp eq i16 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %2, 2
  br i1 %i.c, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 48, ptr %1, align 1, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.d, align 1, !tbaa !21
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.e = sext i16 %i.a to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !11
  %i.h = sext i16 %i.g to i32
  %i.i = add nsw i32 %i.h, %i.e
  %i.j = mul nsw i32 %i.i, 7
  %i.k = add nsw i32 %i.j, -7
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.m = sext i16 %i.a to i64
  %i.n = getelementptr [4 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !12   ; 2 uses
  %.not5.i = icmp eq i32 %i.p, 0
  br i1 %.not5.i, label %_ZN14arrow_vendored17double_conversionL14SizeInHexCharsIjEEiT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi i32 [ %i.r, %.lr.ph.i ], [ 0, %bb.d ]
  %.046.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.p, %bb.d ]
  %i.q = lshr i32 %.046.i, 4                      ; 2 uses
  %i.r = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZN14arrow_vendored17double_conversionL14SizeInHexCharsIjEEiT_.exit, label %.lr.ph.i, !llvm.loop !69

_ZN14arrow_vendored17double_conversionL14SizeInHexCharsIjEEiT_.exit: ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.r, %.lr.ph.i ]
  %i.s = add nsw i32 %i.k, %.0.lcssa.i            ; 3 uses
  %.not = icmp slt i32 %i.s, %2
  br i1 %.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %_ZN14arrow_vendored17double_conversionL14SizeInHexCharsIjEEiT_.exit
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  store i8 0, ptr %i.v, align 1, !tbaa !21
  %i.w = load i16, ptr %i.f, align 2, !tbaa !11
  %i.x = icmp sgt i16 %i.w, 0
  br i1 %i.x, label %.preheader40.preheader, label %.preheader

.preheader40.preheader:                           ; preds = %bb.e
  %3 = sext i32 %i.t to i64                       ; 2 uses
  %scevgep.a = getelementptr i8, ptr %1, i64 %3
  %4 = getelementptr i8, ptr %scevgep.a, i64 -6
  br label %.preheader40

.preheader40:                                     ; preds = %.preheader40.preheader, %.preheader40
  %indvars.iv64.in = phi i64 [ %3, %.preheader40.preheader ], [ %indvars.iv64, %.preheader40 ]
  %indvars.iv.a = phi i64 [ 0, %.preheader40.preheader ], [ %indvars.iv.next, %.preheader40 ] ; 2 uses
  %indvars.iv64 = add nsw i64 %indvars.iv64.in, -7 ; 2 uses
  %5 = mul nsw i64 %indvars.iv.a, -7
  %scevgep62 = getelementptr i8, ptr %4, i64 %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep62, i8 48, i64 7, i1 false), !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %i.y = load i16, ptr %i.f, align 2, !tbaa !11
  %i.z = sext i16 %i.y to i32
  %i.aa = icmp slt i32 %indvars, %i.z
  br i1 %i.aa, label %.preheader40, label %.preheader.loopexit, !llvm.loop !70

.preheader.loopexit:                              ; preds = %.preheader40
  %indvars.a = trunc nsw i64 %indvars.iv64 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.e
  %.034.lcssa = phi i32 [ %i.t, %bb.e ], [ %indvars.a, %.preheader.loopexit ] ; 2 uses
  %i.ab = load i16, ptr %0, align 4, !tbaa !8     ; 2 uses
  %i.ac = icmp sgt i16 %i.ab, 1
  br i1 %i.ac, label %.lr.ph.preheader, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %i.ad = sext i16 %i.ab to i64
  %.pre = add nsw i64 %i.ad, -1
  %6 = sext i32 %.034.lcssa to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ae = sext i32 %.034.lcssa to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.bx, %.lr.ph ]
  %.2.lcssa = phi i64 [ %6, %.preheader.._crit_edge_crit_edge ], [ %indvars.iv.next69.6, %.lr.ph ]
  %i.af = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.pre-phi
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !12 ; 2 uses
  %.not3853 = icmp eq i32 %i.ag, 0
  br i1 %.not3853, label %.loopexit, label %.lr.ph57

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv71 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next70, %.lr.ph ] ; 2 uses
  %indvars.iv69 = phi i64 [ %i.ae, %.lr.ph.preheader ], [ %indvars.iv.next69.6, %.lr.ph ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv71
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !12 ; 7 uses
  %i.aj = and i32 %i.ai, 15                       ; 2 uses
  %i.ak = icmp samesign ult i32 %i.aj, 10
  %i.al = trunc nuw nsw i32 %i.aj to i8           ; 2 uses
  %i.am = or disjoint i8 %i.al, 48
  %i.an = add nuw nsw i8 %i.al, 55
  %.0.i = select i1 %i.ak, i8 %i.am, i8 %i.an
  %i.ao = getelementptr inbounds i8, ptr %1, i64 %indvars.iv69
  store i8 %.0.i, ptr %i.ao, align 1, !tbaa !21
  %i.ap = lshr i32 %i.ai, 4
  %i.aq = and i32 %i.ap, 15                       ; 2 uses
  %i.ar = icmp samesign ult i32 %i.aq, 10
  %i.as = trunc nuw nsw i32 %i.aq to i8           ; 2 uses
  %i.at = or disjoint i8 %i.as, 48
  %i.au = add nuw nsw i8 %i.as, 55
  %.0.i.1 = select i1 %i.ar, i8 %i.at, i8 %i.au
  %i.av = getelementptr i8, ptr %1, i64 %indvars.iv69
  %i.aw = getelementptr i8, ptr %i.av, i64 -1
  store i8 %.0.i.1, ptr %i.aw, align 1, !tbaa !21
  %i.ax = lshr i32 %i.ai, 8
  %i.ay = and i32 %i.ax, 15                       ; 2 uses
  %i.az = icmp samesign ult i32 %i.ay, 10
  %i.ba = trunc nuw nsw i32 %i.ay to i8           ; 2 uses
  %i.bb = or disjoint i8 %i.ba, 48
  %i.bc = add nuw nsw i8 %i.ba, 55
  %.0.i.2 = select i1 %i.az, i8 %i.bb, i8 %i.bc
  %i.bd = getelementptr i8, ptr %1, i64 %indvars.iv69
  %i.be = getelementptr i8, ptr %i.bd, i64 -2
  store i8 %.0.i.2, ptr %i.be, align 1, !tbaa !21
  %indvars.iv.next69.6 = add nsw i64 %indvars.iv69, -7 ; 2 uses
  %i.bf = getelementptr i8, ptr %1, i64 %indvars.iv69
  %i.bg = getelementptr i8, ptr %i.bf, i64 -6
  %i.bh = lshr i32 %i.ai, 12
  %i.bi = lshr i32 %i.ai, 16
  %i.bj = lshr i32 %i.ai, 20
  %i.bk = lshr i32 %i.ai, 24
  %i.bl = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %i.bm = insertelement <4 x i32> %i.bl, i32 %i.bj, i64 1
  %i.bn = insertelement <4 x i32> %i.bm, i32 %i.bi, i64 2
  %i.bo = insertelement <4 x i32> %i.bn, i32 %i.bh, i64 3
  %i.bp = and <4 x i32> %i.bo, splat (i32 15)     ; 2 uses
  %i.bq = icmp samesign ult <4 x i32> %i.bp, splat (i32 10)
  %i.br = trunc nuw nsw <4 x i32> %i.bp to <4 x i8> ; 2 uses
  %i.bs = or disjoint <4 x i8> %i.br, splat (i8 48)
  %i.bt = add nuw nsw <4 x i8> %i.br, splat (i8 55)
  %i.bu = select <4 x i1> %i.bq, <4 x i8> %i.bs, <4 x i8> %i.bt
  store <4 x i8> %i.bu, ptr %i.bg, align 1, !tbaa !21
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %i.bv = load i16, ptr %0, align 4, !tbaa !8
  %i.bw = sext i16 %i.bv to i64
  %i.bx = add nsw i64 %i.bw, -1                   ; 2 uses
  %i.by = icmp slt i64 %indvars.iv.next70, %i.bx
  br i1 %i.by, label %.lr.ph, label %._crit_edge, !llvm.loop !71

.lr.ph57:                                         ; preds = %._crit_edge, %.lr.ph57
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %.lr.ph57 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.055 = phi i32 [ %i.cf, %.lr.ph57 ], [ %i.ag, %._crit_edge ] ; 2 uses
  %i.bz = and i32 %.055, 15                       ; 2 uses
  %i.ca = icmp samesign ult i32 %i.bz, 10
  %i.cb = trunc nuw nsw i32 %i.bz to i8           ; 2 uses
  %i.cc = or disjoint i8 %i.cb, 48
  %i.cd = add nuw nsw i8 %i.cb, 55
  %.0.i39 = select i1 %i.ca, i8 %i.cc, i8 %i.cd
  %indvars.iv.next78 = add nsw i64 %indvars.iv77, -1
  %i.ce = getelementptr inbounds i8, ptr %1, i64 %indvars.iv77
  store i8 %.0.i39, ptr %i.ce, align 1, !tbaa !21
  %i.cf = lshr i32 %.055, 4                       ; 2 uses
  %.not38 = icmp eq i32 %i.cf, 0
  br i1 %.not38, label %.loopexit, label %.lr.ph57, !llvm.loop !72

.loopexit:                                        ; preds = %.lr.ph57, %._crit_edge, %_ZN14arrow_vendored17double_conversionL14SizeInHexCharsIjEEiT_.exit, %bb.b, %bb.c
  %.136 = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %_ZN14arrow_vendored17double_conversionL14SizeInHexCharsIjEEiT_.exit ], [ true, %._crit_edge ], [ true, %.lr.ph57 ]
  ret i1 %.136
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4, !tbaa !8
  %i.b = sext i16 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !11
  %i.e = sext i16 %i.d to i32                     ; 3 uses
  %i.f = add nsw i32 %i.e, %i.b
  %.not = icmp sge i32 %1, %i.f
  %i.g = icmp slt i32 %1, %i.e
  %or.cond = or i1 %i.g, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sub nsw i32 %1, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = zext nneg i32 %i.h to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum7CompareERKS1_S3_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4, !tbaa !8
  %i.b = sext i16 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !11   ; 2 uses
  %i.e = sext i16 %i.d to i32                     ; 3 uses
  %i.f = add nsw i32 %i.e, %i.b                   ; 5 uses
  %i.g = load i16, ptr %1, align 4, !tbaa !8
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !11   ; 2 uses
  %i.k = sext i16 %i.j to i32                     ; 3 uses
  %i.l = add nsw i32 %i.k, %i.h                   ; 3 uses
  %i.m = icmp slt i32 %i.f, %i.l
  br i1 %i.m, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp sgt i32 %i.f, %i.l
  br i1 %i.n, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.o = tail call i16 @llvm.smin.i16(i16 %i.j, i16 %i.d)
  %i.p = sext i16 %i.o to i32                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.not.not.not40 = icmp sgt i32 %i.f, %i.p
  br i1 %.not.not.not40, label %.lr.ph, label %.loopexit

bb.c:                                             ; preds = %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit32
  %.not.not.not = icmp sgt i32 %.02443, %i.p
  br i1 %.not.not.not, label %.lr.ph, label %.loopexit, !llvm.loop !64

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.042 = phi i32 [ %.1, %bb.c ], [ undef, %.preheader ]
  %.024.in41 = phi i32 [ %.02443, %bb.c ], [ %i.f, %.preheader ] ; 5 uses
  %.02443 = add nsw i32 %.024.in41, -1            ; 4 uses
  %.not.i = icmp sgt i32 %.024.in41, %i.f
  %i.s = icmp sle i32 %.024.in41, %i.e
  %or.cond.i = or i1 %i.s, %.not.i
  br i1 %or.cond.i, label %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.t = sub nsw i32 %.02443, %i.e
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !12
  br label %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit

_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit: ; preds = %.lr.ph, %bb.d
  %.0.i = phi i32 [ %i.w, %bb.d ], [ 0, %.lr.ph ] ; 3 uses
  %.not.i29 = icmp sgt i32 %.024.in41, %i.l
  %i.x = icmp sle i32 %.024.in41, %i.k
  %or.cond.i30 = or i1 %i.x, %.not.i29
  br i1 %or.cond.i30, label %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit32, label %bb.e

bb.e:                                             ; preds = %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit
  %i.y = sub nsw i32 %.02443, %i.k
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !12
  br label %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit32

_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit32: ; preds = %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit, %bb.e
  %.0.i31 = phi i32 [ %i.ab, %bb.e ], [ 0, %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit ] ; 3 uses
  %.not = icmp ult i32 %.0.i, %.0.i31
  %.not33 = icmp ugt i32 %.0.i, %.0.i31
  %..0 = select i1 %.not33, i32 1, i32 %.042
  %cond1 = icmp eq i32 %.0.i, %.0.i31
  %.1 = select i1 %.not, i32 -1, i32 %..0         ; 2 uses
  br i1 %cond1, label %bb.c, label %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit32..loopexit.loopexit_crit_edge, !llvm.loop !64

_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit32..loopexit.loopexit_crit_edge: ; preds = %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit32
  br label %.loopexit, !llvm.loop !64

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit32..loopexit.loopexit_crit_edge, %bb.b, %bb.a
  %.3 = phi i32 [ 1, %bb.b ], [ -1, %bb.a ], [ %.1, %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit32..loopexit.loopexit_crit_edge ], [ 0, %.preheader ], [ 0, %bb.c ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 -1, 2) i32 @_ZN14arrow_vendored17double_conversion6Bignum11PlusCompareERKS1_S3_S3_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %2) local_unnamed_addr #8 align 2 {
bb.a:
  %.pre = load i16, ptr %0, align 4, !tbaa !8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.pre96 = load i16, ptr %.phi.trans.insert, align 2, !tbaa !11
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %i.a = phi i16 [ %.pre96, %bb.a ], [ %i.i, %tailrecurse ] ; 2 uses
  %i.b = phi i16 [ %.pre, %bb.a ], [ %i.f, %tailrecurse ]
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr65, %tailrecurse ] ; 3 uses
  %.tr65 = phi ptr [ %1, %bb.a ], [ %.tr, %tailrecurse ] ; 4 uses
  %i.c = sext i16 %i.b to i32
  %i.d = sext i16 %i.a to i32                     ; 4 uses
  %i.e = add nsw i32 %i.d, %i.c                   ; 5 uses
  %i.f = load i16, ptr %.tr65, align 4, !tbaa !8  ; 2 uses
  %i.g = sext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %.tr65, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !11   ; 4 uses
  %i.j = sext i16 %i.i to i32                     ; 3 uses
  %i.k = add nsw i32 %i.j, %i.g                   ; 3 uses
  %i.l = icmp slt i32 %i.e, %i.k
  br i1 %i.l, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.m = getelementptr inbounds nuw i8, ptr %.tr, i64 2
  %i.n = add nsw i32 %i.e, 1
  %i.o = load i16, ptr %2, align 4, !tbaa !8
  %i.p = sext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !11   ; 2 uses
  %i.s = sext i16 %i.r to i32                     ; 3 uses
  %i.t = add nsw i32 %i.s, %i.p                   ; 6 uses
  %i.u = icmp slt i32 %i.n, %i.t
  br i1 %i.u, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = icmp sgt i32 %i.e, %i.t
  br i1 %i.v, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp sle i32 %i.k, %i.d
  %i.w = icmp slt i32 %i.e, %i.t
  %or.cond = and i1 %.not, %i.w
  br i1 %or.cond, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp slt i16 %i.i, %i.a
  %.val64 = load i16, ptr %i.m, align 2
  %i.y = select i1 %i.x, i16 %i.i, i16 %.val64
  %i.z = tail call i16 @llvm.smin.i16(i16 %i.r, i16 %i.y)
  %i.aa = sext i16 %i.z to i32                    ; 2 uses
  %.not50.not.not77 = icmp sgt i32 %i.t, %i.aa
  br i1 %.not50.not.not77, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr65, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.k
  %.04079 = phi i32 [ 0, %.lr.ph ], [ %i.ay, %bb.k ]
  %.043.in78 = phi i32 [ %i.t, %.lr.ph ], [ %.04380, %bb.k ] ; 7 uses
  %.04380 = add nsw i32 %.043.in78, -1            ; 5 uses
  %.not.i = icmp sgt i32 %.043.in78, %i.e
  %i.ae = icmp sle i32 %.043.in78, %i.d
  %or.cond.i = or i1 %i.ae, %.not.i
  br i1 %or.cond.i, label %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = sub nsw i32 %.04380, %i.d
  %i.ag = zext nneg i32 %i.af to i64
end_hunk_0
