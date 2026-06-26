inline.NumInlined: 136
inline.NumDeleted: 16
begin_hunk_0_@_ZN14arrow_vendored17double_conversion6Bignum15AssignHexStringENS0_6VectorIKcEE:bb.a
  store i16 0, ptr %i.a, align 2, !tbaa !10
  br label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit: ; preds = %bb.k, %.critedge.i, %.critedge.thread3.i
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum9AddBignumERKS1_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !10   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !10   ; 4 uses
  %i.e = icmp sgt i16 %i.b, %i.d
  %.pre = load i16, ptr %0, align 4, !tbaa !7     ; 6 uses
  br i1 %i.e, label %bb.b, label %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = sext i16 %i.d to i32
  %i.g = sext i16 %i.b to i32
  %i.h = sub nsw i32 %i.g, %i.f                   ; 4 uses
  %i.i = sext i16 %.pre to i32
  %i.j = add nsw i32 %i.h, %i.i
  %i.k = icmp sgt i32 %i.j, 128
  br i1 %i.k, label %bb.c, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i: ; preds = %bb.b
  %i.l = icmp sgt i16 %.pre, 0
  br i1 %i.l, label %.lr.ph.i, label %.lr.ph20.i

.lr.ph.i:                                         ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.m = zext nneg i16 %.pre to i64               ; 6 uses
  %i.n = sext i32 %i.h to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %0, i64 %i.n ; 2 uses
  %min.iters.check = icmp ult i16 %.pre, 12
  br i1 %min.iters.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.o = sext i16 %i.d to i64
  %i.p = sext i16 %i.b to i64
  %i.q = sub nsw i64 %i.o, %i.p
  %i.r = and i64 %i.q, 4611686018427387896
  %diff.check = icmp eq i64 %i.r, 0
  br i1 %diff.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 32760                    ; 2 uses
  %i.s = and i64 %i.m, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = sub i64 %i.m, %index                     ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -12
  %i.w = getelementptr i8, ptr %i.u, i64 -28
  %wide.load = load <4 x i32>, ptr %i.v, align 4, !tbaa !3
  %wide.load74 = load <4 x i32>, ptr %i.w, align 4, !tbaa !3
  %i.x = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.t ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -12
  %i.z = getelementptr i8, ptr %i.x, i64 -28
  store <4 x i32> %wide.load, ptr %i.y, align 4, !tbaa !3
  store <4 x i32> %wide.load74, ptr %i.z, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.m
  br i1 %cmp.n, label %.lr.ph20.i, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader: ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i ], [ %i.s, %middle.block ]
  br label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #14
  unreachable

.lr.ph20.i:                                       ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i, %middle.block, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = zext nneg i32 %i.h to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ab, i8 0, i64 %i.ad, i1 false), !tbaa !3
  %i.ae = trunc i32 %i.h to i16                   ; 2 uses
  %i.af = add i16 %.pre, %i.ae                    ; 2 uses
  store i16 %i.af, ptr %0, align 4, !tbaa !7
  %i.ag = sub i16 %i.b, %i.ae                     ; 2 uses
  store i16 %i.ag, ptr %i.a, align 2, !tbaa !10
  %.pre66 = load i16, ptr %i.c, align 2, !tbaa !10
  br label %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i ], [ %indvars.iv.i.ph, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ah = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i32 %i.ai, ptr %gep.i, align 4, !tbaa !3
  %i.aj = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.aj, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i, label %.lr.ph20.i, !llvm.loop !33

_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit: ; preds = %bb.a, %.lr.ph20.i
  %i.ak = phi i16 [ %i.d, %bb.a ], [ %.pre66, %.lr.ph20.i ]
  %i.al = phi i16 [ %i.b, %bb.a ], [ %i.ag, %.lr.ph20.i ]
  %i.am = phi i16 [ %.pre, %bb.a ], [ %i.af, %.lr.ph20.i ] ; 4 uses
  %i.an = sext i16 %i.am to i32                   ; 4 uses
  %i.ao = sext i16 %i.al to i32                   ; 4 uses
  %i.ap = add nsw i32 %i.ao, %i.an
  %i.aq = load i16, ptr %1, align 4, !tbaa !7     ; 4 uses
  %i.ar = sext i16 %i.aq to i32                   ; 2 uses
  %i.as = sext i16 %i.ak to i32                   ; 3 uses
  %i.at = add nsw i32 %i.as, %i.ar
  %.sroa.speculated35 = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 %i.at)
  %reass.sub = sub nsw i32 %.sroa.speculated35, %i.ao
  %i.au = icmp sgt i32 %reass.sub, 127
  br i1 %i.au, label %bb.d, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit

bb.d:                                             ; preds = %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit
  tail call void @abort() #14
  unreachable

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit
  %i.av = sub nsw i32 %i.as, %i.ao                ; 3 uses
  %i.aw = icmp sgt i32 %i.av, %i.an
  br i1 %i.aw, label %.lr.ph, label %.preheader42

.lr.ph:                                           ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
  %i.ax = sext i16 %i.am to i64
  %i.ay = shl nsw i64 %i.ax, 2
  %i.az = getelementptr i8, ptr %0, i64 %i.ay
  %scevgep = getelementptr i8, ptr %i.az, i64 4
  %i.ba = xor i32 %i.ao, -1
  %i.bb = add nsw i32 %i.ba, %i.as
  %i.bc = sub nsw i32 %i.bb, %i.an
  %i.bd = zext i32 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 2
  %i.bf = add nuw nsw i64 %i.be, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bf, i1 false), !tbaa !3
  br label %.preheader42

.preheader42:                                     ; preds = %.lr.ph, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
  %i.bg = icmp sgt i16 %i.aq, 0
  br i1 %i.bg, label %.lr.ph47, label %._crit_edge

.lr.ph47:                                         ; preds = %.preheader42
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.bj = sext i32 %i.av to i64                   ; 2 uses
  %i.bk = sext i16 %i.am to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ar to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bl = icmp eq i16 %i.aq, 1
  br i1 %i.bl, label %.epil.preheader, label %.lr.ph47.new

.lr.ph47.new:                                     ; preds = %.lr.ph47
  %unroll_iter = and i64 %wide.trip.count, 32766
  br label %bb.f

.preheader.unr-lcssa:                             ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.unr-lcssa, %.lr.ph47
  %indvars.iv58.epil.init = phi i64 [ %i.bj, %.lr.ph47 ], [ %indvars.iv.next59.1, %.preheader.unr-lcssa ] ; 4 uses
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next.1, %.preheader.unr-lcssa ]
  %.046.epil.init = phi i32 [ 0, %.lr.ph47 ], [ %i.cw, %.preheader.unr-lcssa ]
  %lcmp.mod77 = trunc i16 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod77)
  %i.bm = icmp slt i64 %indvars.iv58.epil.init, %i.bk
  br i1 %i.bm, label %bb.e, label %.preheader.epilog-lcssa

bb.e:                                             ; preds = %.epil.preheader
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %indvars.iv58.epil.init
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  br label %.preheader.epilog-lcssa

.preheader.epilog-lcssa:                          ; preds = %bb.e, %.epil.preheader
  %i.bp = phi i32 [ %i.bo, %bb.e ], [ 0, %.epil.preheader ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.epil.init
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  %i.bs = add i32 %i.bp, %.046.epil.init
  %i.bt = add i32 %i.bs, %i.br                    ; 2 uses
  %i.bu = and i32 %i.bt, 268435455
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %indvars.iv58.epil.init
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !3
  %i.bw = lshr i32 %i.bt, 28
  %indvars.iv.next59.epil = add nsw i64 %indvars.iv58.epil.init, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.unr-lcssa, %.preheader.epilog-lcssa
  %.lcssa = phi i32 [ %i.cw, %.preheader.unr-lcssa ], [ %i.bw, %.preheader.epilog-lcssa ] ; 2 uses
  %indvars.iv.next59.lcssa = phi i64 [ %indvars.iv.next59.1, %.preheader.unr-lcssa ], [ %indvars.iv.next59.epil, %.preheader.epilog-lcssa ] ; 2 uses
  %i.bx = trunc nsw i64 %indvars.iv.next59.lcssa to i32
  %.not49 = icmp eq i32 %.lcssa, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph52

.lr.ph52:                                         ; preds = %.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bz = sext i16 %i.am to i64
  br label %bb.k

bb.f:                                             ; preds = %bb.j, %.lr.ph47.new
  %indvars.iv58 = phi i64 [ %i.bj, %.lr.ph47.new ], [ %indvars.iv.next59.1, %bb.j ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph47.new ], [ %indvars.iv.next.1, %bb.j ] ; 3 uses
  %.046 = phi i32 [ 0, %.lr.ph47.new ], [ %i.cw, %bb.j ]
  %niter = phi i64 [ 0, %.lr.ph47.new ], [ %niter.next.1, %bb.j ]
  %i.ca = icmp slt i64 %indvars.iv58, %i.bk
  br i1 %i.ca, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %indvars.iv58
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.cd = phi i32 [ %i.cc, %bb.g ], [ 0, %bb.f ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = add i32 %i.cd, %.046
  %i.ch = add i32 %i.cg, %i.cf                    ; 2 uses
  %i.ci = and i32 %i.ch, 268435455
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %indvars.iv58
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !3
  %i.ck = lshr i32 %i.ch, 28
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, 1 ; 3 uses
  %i.cl = icmp slt i64 %indvars.iv.next59, %i.bk
  br i1 %i.cl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %indvars.iv.next59
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.co = phi i32 [ %i.cn, %bb.i ], [ 0, %bb.h ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = add i32 %i.co, %i.ck
  %i.ct = add i32 %i.cs, %i.cr                    ; 2 uses
  %i.cu = and i32 %i.ct, 268435455
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %indvars.iv.next59
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !3
  %i.cw = lshr i32 %i.ct, 28                      ; 3 uses
  %indvars.iv.next59.1 = add nsw i64 %indvars.iv58, 2 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.unr-lcssa, label %bb.f, !llvm.loop !34

bb.k:                                             ; preds = %.lr.ph52, %bb.m
  %indvars.iv63 = phi i64 [ %indvars.iv.next59.lcssa, %.lr.ph52 ], [ %indvars.iv.next64, %bb.m ] ; 4 uses
  %.151 = phi i32 [ %.lcssa, %.lr.ph52 ], [ %i.de, %bb.m ]
  %i.cx = icmp slt i64 %indvars.iv63, %i.bz
  br i1 %i.cx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.by, i64 %indvars.iv63
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.da = phi i32 [ %i.cz, %bb.l ], [ 0, %bb.k ]
  %i.db = add i32 %i.da, %.151                    ; 2 uses
  %i.dc = and i32 %i.db, 268435455
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.by, i64 %indvars.iv63
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !3
  %i.de = lshr i32 %i.db, 28                      ; 2 uses
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, 1 ; 2 uses
  %.not = icmp eq i32 %i.de, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.k, !llvm.loop !35

._crit_edge.loopexit:                             ; preds = %bb.m
  %i.df = trunc nsw i64 %indvars.iv.next64 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader42, %._crit_edge.loopexit, %.preheader
  %.141.lcssa = phi i32 [ %i.bx, %.preheader ], [ %i.df, %._crit_edge.loopexit ], [ %i.av, %.preheader42 ]
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.141.lcssa, i32 %i.an)
  %i.dg = trunc i32 %.sroa.speculated to i16
  store i16 %i.dg, ptr %0, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !10   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !10   ; 3 uses
  %i.e = icmp sgt i16 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = sext i16 %i.d to i32
  %i.g = sext i16 %i.b to i32
  %i.h = sub nsw i32 %i.g, %i.f                   ; 5 uses
  %i.i = load i16, ptr %0, align 4, !tbaa !7      ; 5 uses
  %i.j = sext i16 %i.i to i32
  %i.k = add nsw i32 %i.h, %i.j
  %i.l = icmp sgt i32 %i.k, 128
  br i1 %i.l, label %bb.c, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader: ; preds = %bb.b
  %i.m = icmp sgt i16 %i.i, 0
  br i1 %i.m, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader
  %i.n = zext nneg i16 %i.i to i64                ; 6 uses
  %i.o = sext i32 %i.h to i64
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.o ; 2 uses
  %min.iters.check = icmp ult i16 %i.i, 12
  br i1 %min.iters.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader29, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.p = sext i16 %i.d to i64
  %i.q = sext i16 %i.b to i64
  %i.r = sub nsw i64 %i.p, %i.q
  %i.s = and i64 %i.r, 4611686018427387896
  %diff.check = icmp eq i64 %i.s, 0
  br i1 %diff.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader29, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.n, 32760                    ; 2 uses
  %i.t = and i64 %i.n, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = sub i64 %i.n, %index                     ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %0, i64 %i.u ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -12
  %i.x = getelementptr i8, ptr %i.v, i64 -28
  %wide.load = load <4 x i32>, ptr %i.w, align 4, !tbaa !3
  %wide.load28 = load <4 x i32>, ptr %i.x, align 4, !tbaa !3
  %i.y = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.u ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -12
  %i.aa = getelementptr i8, ptr %i.y, i64 -28
  store <4 x i32> %wide.load, ptr %i.z, align 4, !tbaa !3
  store <4 x i32> %wide.load28, ptr %i.aa, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.n
  br i1 %cmp.n, label %.preheader, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader29

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader29: ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph ], [ %i.t, %middle.block ]
  br label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #14
  unreachable

.preheader:                                       ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit, %middle.block, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader
  %i.ac = icmp sgt i32 %i.h, 0
  br i1 %i.ac, label %.lr.ph20, label %._crit_edge

.lr.ph20:                                         ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ae = zext nneg i32 %i.h to i64
  %i.af = shl nuw nsw i64 %i.ae, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ad, i8 0, i64 %i.af, i1 false), !tbaa !3
  br label %._crit_edge

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader29, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit ], [ %indvars.iv.ph, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader29 ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ag = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.ah, ptr %gep, align 4, !tbaa !3
  %i.ai = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ai, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit, label %.preheader, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph20, %.preheader
  %i.aj = trunc i32 %i.h to i16                   ; 2 uses
  %i.ak = add i16 %i.i, %i.aj
  store i16 %i.ak, ptr %0, align 4, !tbaa !7
  %i.al = sub i16 %i.b, %i.aj
  store i16 %i.al, ptr %i.a, align 2, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum14SubtractBignumERKS1_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !10   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !10   ; 4 uses
  %i.e = icmp sgt i16 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = sext i16 %i.d to i32
  %i.g = sext i16 %i.b to i32
  %i.h = sub nsw i32 %i.g, %i.f                   ; 4 uses
  %i.i = load i16, ptr %0, align 4, !tbaa !7      ; 5 uses
  %i.j = sext i16 %i.i to i32
  %i.k = add nsw i32 %i.h, %i.j
  %i.l = icmp sgt i32 %i.k, 128
  br i1 %i.l, label %bb.c, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i: ; preds = %bb.b
  %i.m = icmp sgt i16 %i.i, 0
  br i1 %i.m, label %.lr.ph.i, label %.lr.ph20.i

.lr.ph.i:                                         ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.n = zext nneg i16 %i.i to i64                ; 6 uses
  %i.o = sext i32 %i.h to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %0, i64 %i.o ; 2 uses
  %min.iters.check = icmp ult i16 %i.i, 12
  br i1 %min.iters.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.p = sext i16 %i.d to i64
  %i.q = sext i16 %i.b to i64
  %i.r = sub nsw i64 %i.p, %i.q
  %i.s = and i64 %i.r, 4611686018427387896
  %diff.check = icmp eq i64 %i.s, 0
  br i1 %diff.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.n, 32760                    ; 2 uses
  %i.t = and i64 %i.n, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = sub i64 %i.n, %index                     ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %0, i64 %i.u ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -12
  %i.x = getelementptr i8, ptr %i.v, i64 -28
  %wide.load = load <4 x i32>, ptr %i.w, align 4, !tbaa !3
  %wide.load46 = load <4 x i32>, ptr %i.x, align 4, !tbaa !3
  %i.y = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.u ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -12
  %i.aa = getelementptr i8, ptr %i.y, i64 -28
  store <4 x i32> %wide.load, ptr %i.z, align 4, !tbaa !3
  store <4 x i32> %wide.load46, ptr %i.aa, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
end_hunk_0
