inline.NumInlined: 136
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN14arrow_vendored17double_conversion6Bignum15AssignHexStringENS0_6VectorIKcEE:bb.a
  %i.i = load i8, ptr %i.h, align 1, !tbaa !19
  %i.j = sext i8 %i.i to i32                      ; 4 uses
  %i.k = add nsw i32 %i.j, -48                    ; 2 uses
  %or.cond.i = icmp ult i32 %i.k, 10
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = zext nneg i32 %i.k to i64
  br label %_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit

bb.e:                                             ; preds = %bb.c
  %i.m = add nsw i32 %i.j, -97
  %or.cond3.i = icmp ult i32 %i.m, 6
  br i1 %or.cond3.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i32 %i.j, -87
  %i.o = zext nneg i32 %i.n to i64
  br label %_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit

bb.g:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.j, -55
  %i.q = sext i32 %i.p to i64
  br label %_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit

_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.l, %bb.d ], [ %i.o, %bb.f ], [ %i.q, %bb.g ]
  %i.r = zext nneg i32 %.017 to i64
  %i.s = shl i64 %.0.i, %i.r
  %i.t = or i64 %i.s, %.0816                      ; 3 uses
  %i.u = add nsw i32 %.017, 4
  %i.v = icmp sgt i32 %.017, 23
  br i1 %i.v, label %bb.h, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit

bb.h:                                             ; preds = %_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit
  %i.w = trunc i64 %i.t to i32
  %i.x = and i32 %i.w, 268435455
  %i.y = add i16 %i.f, 1                          ; 2 uses
  store i16 %i.y, ptr %0, align 4, !tbaa !7
  %i.z = sext i16 %i.f to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.z
  store i32 %i.x, ptr %i.aa, align 4, !tbaa !3
  %i.ab = add nsw i32 %.017, -24
  %i.ac = lshr i64 %i.t, 28
  br label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit, %bb.h
  %i.ad = phi i16 [ %i.y, %bb.h ], [ %i.f, %_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit ] ; 4 uses
  %.19 = phi i64 [ %i.ac, %bb.h ], [ %i.t, %_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit ] ; 3 uses
  %.1 = phi i32 [ %i.ab, %bb.h ], [ %i.u, %_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ae = icmp eq i64 %indvars.iv.next, 0
  br i1 %i.ae, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge, label %bb.c, !llvm.loop !31

bb.i:                                             ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge
  %i.af = trunc i64 %.19 to i32
  %i.ag = and i32 %i.af, 268435455
  %i.ah = add i16 %i.ad, 1                        ; 2 uses
  store i16 %i.ah, ptr %0, align 4, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = sext i16 %i.ad to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.aj
  store i32 %i.ag, ptr %i.ak, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge
  %.pr.i = phi i16 [ %i.ah, %bb.i ], [ %i.ad, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge ] ; 3 uses
  %i.al = icmp sgt i16 %.pr.i, 0
  br i1 %i.al, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i
  %i.an = phi i16 [ %.pr.i, %.lr.ph.i ], [ %i.au, %bb.l ] ; 3 uses
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = add nuw nsw i64 %i.ao, 4294967295
  %i.aq = and i64 %i.ap, 4294967295
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.l, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

bb.l:                                             ; preds = %bb.k
  %i.au = add nsw i16 %i.an, -1                   ; 2 uses
  store i16 %i.au, ptr %0, align 4, !tbaa !7
  %i.av = icmp sgt i16 %i.an, 1
  br i1 %i.av, label %bb.k, label %.critedge.thread3.i, !llvm.loop !22

.critedge.i:                                      ; preds = %bb.j
  %i.aw = icmp eq i16 %.pr.i, 0
  br i1 %i.aw, label %.critedge.thread3.i, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.l, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader, %.critedge.i
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
  %min.iters.check = icmp ult i16 %.pre, 16
  br i1 %min.iters.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.o = sext i16 %i.d to i64
  %i.p = sext i16 %i.b to i64
  %i.q = sub nsw i64 %i.o, %i.p
  %i.r = shl nsw i64 %i.q, 2
  %i.s = add nsw i64 %i.r, -1
  %diff.check = icmp ult i64 %i.s, 31
  br i1 %diff.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 32760                    ; 2 uses
  %i.t = and i64 %i.m, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = sub i64 %i.m, %index                     ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %0, i64 %i.u ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -12
  %i.x = getelementptr i8, ptr %i.v, i64 -28
  %wide.load = load <4 x i32>, ptr %i.w, align 4, !tbaa !3
  %wide.load74 = load <4 x i32>, ptr %i.x, align 4, !tbaa !3
  %i.y = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.u ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -12
  %i.aa = getelementptr i8, ptr %i.y, i64 -28
  store <4 x i32> %wide.load, ptr %i.z, align 4, !tbaa !3
  store <4 x i32> %wide.load74, ptr %i.aa, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.m
  br i1 %cmp.n, label %.lr.ph20.i, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader: ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i ], [ %i.t, %middle.block ]
  br label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #14
  unreachable

.lr.ph20.i:                                       ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i, %middle.block, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = zext nneg i32 %i.h to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ae, i1 false), !tbaa !3
  %i.af = trunc i32 %i.h to i16                   ; 2 uses
  %i.ag = add i16 %.pre, %i.af                    ; 2 uses
  store i16 %i.ag, ptr %0, align 4, !tbaa !7
  %i.ah = sub i16 %i.b, %i.af                     ; 2 uses
  store i16 %i.ah, ptr %i.a, align 2, !tbaa !10
  %.pre66 = load i16, ptr %i.c, align 2, !tbaa !10
  br label %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i ], [ %indvars.iv.i.ph, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ai = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i32 %i.aj, ptr %gep.i, align 4, !tbaa !3
  %i.ak = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ak, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i, label %.lr.ph20.i, !llvm.loop !33

_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit: ; preds = %bb.a, %.lr.ph20.i
  %i.al = phi i16 [ %i.d, %bb.a ], [ %.pre66, %.lr.ph20.i ]
  %i.am = phi i16 [ %i.b, %bb.a ], [ %i.ah, %.lr.ph20.i ]
  %i.an = phi i16 [ %.pre, %bb.a ], [ %i.ag, %.lr.ph20.i ] ; 4 uses
  %i.ao = sext i16 %i.an to i32                   ; 4 uses
  %i.ap = sext i16 %i.am to i32                   ; 4 uses
  %i.aq = add nsw i32 %i.ap, %i.ao
  %i.ar = load i16, ptr %1, align 4, !tbaa !7     ; 4 uses
  %i.as = sext i16 %i.ar to i32                   ; 2 uses
  %i.at = sext i16 %i.al to i32                   ; 3 uses
  %i.au = add nsw i32 %i.at, %i.as
  %.sroa.speculated35 = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 %i.au)
  %reass.sub = sub nsw i32 %.sroa.speculated35, %i.ap
  %i.av = icmp sgt i32 %reass.sub, 127
  br i1 %i.av, label %bb.d, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit

bb.d:                                             ; preds = %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit
  tail call void @abort() #14
  unreachable

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit
  %i.aw = sub nsw i32 %i.at, %i.ap                ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, %i.ao
  br i1 %i.ax, label %.lr.ph, label %.preheader42

.lr.ph:                                           ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
  %i.ay = sext i16 %i.an to i64
  %i.az = shl nsw i64 %i.ay, 2
  %i.ba = getelementptr i8, ptr %0, i64 %i.az
  %scevgep = getelementptr i8, ptr %i.ba, i64 4
  %i.bb = xor i32 %i.ap, -1
  %i.bc = add nsw i32 %i.bb, %i.at
  %i.bd = sub nsw i32 %i.bc, %i.ao
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bg, i1 false), !tbaa !3
  br label %.preheader42

.preheader42:                                     ; preds = %.lr.ph, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
  %i.bh = icmp sgt i16 %i.ar, 0
  br i1 %i.bh, label %.lr.ph47, label %._crit_edge

.lr.ph47:                                         ; preds = %.preheader42
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.bk = sext i32 %i.aw to i64                   ; 2 uses
  %i.bl = sext i16 %i.an to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.as to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bm = icmp eq i16 %i.ar, 1
  br i1 %i.bm, label %.epil.preheader, label %.lr.ph47.new

.lr.ph47.new:                                     ; preds = %.lr.ph47
  %unroll_iter = and i64 %wide.trip.count, 32766
  br label %bb.f

.preheader.unr-lcssa:                             ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.unr-lcssa, %.lr.ph47
  %indvars.iv58.epil.init = phi i64 [ %i.bk, %.lr.ph47 ], [ %indvars.iv.next59.1, %.preheader.unr-lcssa ] ; 4 uses
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next.1, %.preheader.unr-lcssa ]
  %.046.epil.init = phi i32 [ 0, %.lr.ph47 ], [ %i.cx, %.preheader.unr-lcssa ]
  %lcmp.mod77 = trunc i16 %i.ar to i1
  tail call void @llvm.assume(i1 %lcmp.mod77)
  %i.bn = icmp slt i64 %indvars.iv58.epil.init, %i.bl
  br i1 %i.bn, label %bb.e, label %.preheader.epilog-lcssa

bb.e:                                             ; preds = %.epil.preheader
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %indvars.iv58.epil.init
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  br label %.preheader.epilog-lcssa

.preheader.epilog-lcssa:                          ; preds = %bb.e, %.epil.preheader
  %i.bq = phi i32 [ %i.bp, %bb.e ], [ 0, %.epil.preheader ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.epil.init
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = add i32 %i.bq, %.046.epil.init
  %i.bu = add i32 %i.bt, %i.bs                    ; 2 uses
  %i.bv = and i32 %i.bu, 268435455
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %indvars.iv58.epil.init
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !3
  %i.bx = lshr i32 %i.bu, 28
  %indvars.iv.next59.epil = add nsw i64 %indvars.iv58.epil.init, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.unr-lcssa, %.preheader.epilog-lcssa
  %.lcssa = phi i32 [ %i.cx, %.preheader.unr-lcssa ], [ %i.bx, %.preheader.epilog-lcssa ] ; 2 uses
  %indvars.iv.next59.lcssa = phi i64 [ %indvars.iv.next59.1, %.preheader.unr-lcssa ], [ %indvars.iv.next59.epil, %.preheader.epilog-lcssa ] ; 2 uses
  %i.by = trunc nsw i64 %indvars.iv.next59.lcssa to i32
  %.not49 = icmp eq i32 %.lcssa, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph52

.lr.ph52:                                         ; preds = %.preheader
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ca = sext i16 %i.an to i64
  br label %bb.k

bb.f:                                             ; preds = %bb.j, %.lr.ph47.new
  %indvars.iv58 = phi i64 [ %i.bk, %.lr.ph47.new ], [ %indvars.iv.next59.1, %bb.j ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph47.new ], [ %indvars.iv.next.1, %bb.j ] ; 3 uses
  %.046 = phi i32 [ 0, %.lr.ph47.new ], [ %i.cx, %bb.j ]
  %niter = phi i64 [ 0, %.lr.ph47.new ], [ %niter.next.1, %bb.j ]
  %i.cb = icmp slt i64 %indvars.iv58, %i.bl
  br i1 %i.cb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %indvars.iv58
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ce = phi i32 [ %i.cd, %bb.g ], [ 0, %bb.f ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ch = add i32 %i.ce, %.046
  %i.ci = add i32 %i.ch, %i.cg                    ; 2 uses
  %i.cj = and i32 %i.ci, 268435455
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %indvars.iv58
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !3
  %i.cl = lshr i32 %i.ci, 28
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, 1 ; 3 uses
  %i.cm = icmp slt i64 %indvars.iv.next59, %i.bl
  br i1 %i.cm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %indvars.iv.next59
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cp = phi i32 [ %i.co, %bb.i ], [ 0, %bb.h ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = add i32 %i.cp, %i.cl
  %i.cu = add i32 %i.ct, %i.cs                    ; 2 uses
  %i.cv = and i32 %i.cu, 268435455
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %indvars.iv.next59
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !3
  %i.cx = lshr i32 %i.cu, 28                      ; 3 uses
  %indvars.iv.next59.1 = add nsw i64 %indvars.iv58, 2 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.unr-lcssa, label %bb.f, !llvm.loop !34

bb.k:                                             ; preds = %.lr.ph52, %bb.m
  %indvars.iv63 = phi i64 [ %indvars.iv.next59.lcssa, %.lr.ph52 ], [ %indvars.iv.next64, %bb.m ] ; 4 uses
  %.151 = phi i32 [ %.lcssa, %.lr.ph52 ], [ %i.df, %bb.m ]
  %i.cy = icmp slt i64 %indvars.iv63, %i.ca
  br i1 %i.cy, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %indvars.iv63
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.db = phi i32 [ %i.da, %bb.l ], [ 0, %bb.k ]
  %i.dc = add i32 %i.db, %.151                    ; 2 uses
  %i.dd = and i32 %i.dc, 268435455
  %i.de = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %indvars.iv63
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !3
  %i.df = lshr i32 %i.dc, 28                      ; 2 uses
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, 1 ; 2 uses
  %.not = icmp eq i32 %i.df, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.k, !llvm.loop !35

._crit_edge.loopexit:                             ; preds = %bb.m
  %i.dg = trunc nsw i64 %indvars.iv.next64 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader42, %._crit_edge.loopexit, %.preheader
  %.141.lcssa = phi i32 [ %i.by, %.preheader ], [ %i.dg, %._crit_edge.loopexit ], [ %i.aw, %.preheader42 ]
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.141.lcssa, i32 %i.ao)
  %i.dh = trunc i32 %.sroa.speculated to i16
  store i16 %i.dh, ptr %0, align 4, !tbaa !7
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
  %min.iters.check = icmp ult i16 %i.i, 16
  br i1 %min.iters.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader29, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.p = sext i16 %i.d to i64
  %i.q = sext i16 %i.b to i64
  %i.r = sub nsw i64 %i.p, %i.q
  %i.s = shl nsw i64 %i.r, 2
  %i.t = add nsw i64 %i.s, -1
  %diff.check = icmp ult i64 %i.t, 31
  br i1 %diff.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader29, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.n, 32760                    ; 2 uses
  %i.u = and i64 %i.n, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = sub i64 %i.n, %index                     ; 2 uses
  %i.w = getelementptr [4 x i8], ptr %0, i64 %i.v ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -12
  %i.y = getelementptr i8, ptr %i.w, i64 -28
  %wide.load = load <4 x i32>, ptr %i.x, align 4, !tbaa !3
  %wide.load28 = load <4 x i32>, ptr %i.y, align 4, !tbaa !3
  %i.z = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.v ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -12
  %i.ab = getelementptr i8, ptr %i.z, i64 -28
  store <4 x i32> %wide.load, ptr %i.aa, align 4, !tbaa !3
  store <4 x i32> %wide.load28, ptr %i.ab, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.n
  br i1 %cmp.n, label %.preheader, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader29

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader29: ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph ], [ %i.u, %middle.block ]
  br label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #14
  unreachable

.preheader:                                       ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit, %middle.block, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader
  %i.ad = icmp sgt i32 %i.h, 0
  br i1 %i.ad, label %.lr.ph20, label %._crit_edge

.lr.ph20:                                         ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = zext nneg i32 %i.h to i64
  %i.ag = shl nuw nsw i64 %i.af, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ag, i1 false), !tbaa !3
  br label %._crit_edge

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader29, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit ], [ %indvars.iv.ph, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader29 ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ah = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.ai, ptr %gep, align 4, !tbaa !3
  %i.aj = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.aj, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit, label %.preheader, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph20, %.preheader
  %i.ak = trunc i32 %i.h to i16                   ; 2 uses
  %i.al = add i16 %i.i, %i.ak
  store i16 %i.al, ptr %0, align 4, !tbaa !7
  %i.am = sub i16 %i.b, %i.ak
  store i16 %i.am, ptr %i.a, align 2, !tbaa !10
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
end_hunk_0
