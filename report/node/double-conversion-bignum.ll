inline.NumInlined: 136
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6icu_7817double_conversion6Bignum5ClampEv:bb.a
  %i.a = icmp sgt i16 %.pr, 0
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.c = phi i16 [ %.pr, %.lr.ph ], [ %i.j, %bb.c ] ; 3 uses
  %i.d = zext nneg i16 %i.c to i64
  %i.e = add nuw nsw i64 %i.d, 4294967295
  %i.f = and i64 %i.e, 4294967295
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i16 %i.c, -1                     ; 2 uses
  store i16 %i.j, ptr %0, align 4
  %i.k = icmp sgt i16 %i.c, 1
  br i1 %i.k, label %bb.b, label %.critedge.thread3, !llvm.loop !10

.critedge:                                        ; preds = %bb.a
  %i.l = icmp eq i16 %.pr, 0
  br i1 %i.l, label %.critedge.thread3, label %.critedge.thread

.critedge.thread3:                                ; preds = %bb.c, %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.m, align 2
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.b, %.critedge.thread3, %.critedge
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN6icu_7817double_conversion6Bignum15AssignHexStringENS0_6VectorIKcEE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) initializes((0, 4)) %0, ptr nofree readonly captures(none) %1, i32 %2) local_unnamed_addr #5 align 2 {
bb.a:
  store i16 0, ptr %0, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  store i16 0, ptr %i.a, align 2
  %i.b = icmp sgt i32 %2, 896
  br i1 %i.b, label %bb.b, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader: ; preds = %bb.a
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %.critedge.thread3.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = sext i32 %2 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %.pr.i.pre19.pre = load i16, ptr %0, align 4    ; 3 uses
  %.not = icmp eq i64 %.19, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.c:                                             ; preds = %.lr.ph, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %indvars.iv = phi i64 [ %i.e, %.lr.ph ], [ %indvars.iv.next, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit ] ; 2 uses
  %.017 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit ] ; 4 uses
  %.0816 = phi i64 [ 0, %.lr.ph ], [ %.19, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit ]
  %i.f = getelementptr i8, ptr %1, i64 %indvars.iv
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1
  %i.i = sext i8 %i.h to i32                      ; 4 uses
  %i.j = add nsw i32 %i.i, -48                    ; 2 uses
  %or.cond.i = icmp ult i32 %i.j, 10
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.j to i64
  br label %_ZN6icu_7817double_conversionL12HexCharValueEi.exit

bb.e:                                             ; preds = %bb.c
  %i.l = add nsw i32 %i.i, -97
  %or.cond3.i = icmp ult i32 %i.l, 6
  br i1 %or.cond3.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = add nsw i32 %i.i, -87
  %i.n = zext nneg i32 %i.m to i64
  br label %_ZN6icu_7817double_conversionL12HexCharValueEi.exit

bb.g:                                             ; preds = %bb.e
  %i.o = add nsw i32 %i.i, -55
  %i.p = sext i32 %i.o to i64
  br label %_ZN6icu_7817double_conversionL12HexCharValueEi.exit

_ZN6icu_7817double_conversionL12HexCharValueEi.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.k, %bb.d ], [ %i.n, %bb.f ], [ %i.p, %bb.g ]
  %i.q = zext nneg i32 %.017 to i64
  %i.r = shl i64 %.0.i, %i.q
  %i.s = or i64 %i.r, %.0816                      ; 3 uses
  %i.t = add nsw i32 %.017, 4
  %i.u = icmp sgt i32 %.017, 23
  br i1 %i.u, label %bb.h, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit

bb.h:                                             ; preds = %_ZN6icu_7817double_conversionL12HexCharValueEi.exit
  %i.v = trunc i64 %i.s to i32
  %i.w = and i32 %i.v, 268435455
  %i.x = load i16, ptr %0, align 4                ; 2 uses
  %i.y = add i16 %i.x, 1
  store i16 %i.y, ptr %0, align 4
  %i.z = sext i16 %i.x to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.z
  store i32 %i.w, ptr %i.aa, align 4
  %i.ab = add nsw i32 %.017, -24
  %i.ac = lshr i64 %i.s, 28
  br label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN6icu_7817double_conversionL12HexCharValueEi.exit, %bb.h
  %.19 = phi i64 [ %i.ac, %bb.h ], [ %i.s, %_ZN6icu_7817double_conversionL12HexCharValueEi.exit ] ; 3 uses
  %.1 = phi i32 [ %i.ab, %bb.h ], [ %i.t, %_ZN6icu_7817double_conversionL12HexCharValueEi.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ad = icmp eq i64 %indvars.iv.next, 0
  br i1 %i.ad, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge, label %bb.c, !llvm.loop !22

bb.i:                                             ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge
  %i.ae = trunc i64 %.19 to i32
  %i.af = and i32 %i.ae, 268435455
  %i.ag = add i16 %.pr.i.pre19.pre, 1
  store i16 %i.ag, ptr %0, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ai = sext i16 %.pr.i.pre19.pre to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ai
  store i32 %i.af, ptr %i.aj, align 4
  %.pr.i.pre = load i16, ptr %0, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge
  %.pr.i = phi i16 [ %.pr.i.pre, %bb.i ], [ %.pr.i.pre19.pre, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge ] ; 3 uses
  %i.ak = icmp sgt i16 %.pr.i, 0
  br i1 %i.ak, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i
  %i.am = phi i16 [ %.pr.i, %.lr.ph.i ], [ %i.at, %bb.l ] ; 3 uses
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = add nuw nsw i64 %i.an, 4294967295
  %i.ap = and i64 %i.ao, 4294967295
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.l, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

bb.l:                                             ; preds = %bb.k
  %i.at = add nsw i16 %i.am, -1                   ; 2 uses
  store i16 %i.at, ptr %0, align 4
  %i.au = icmp sgt i16 %i.am, 1
  br i1 %i.au, label %bb.k, label %.critedge.thread3.i, !llvm.loop !10

.critedge.i:                                      ; preds = %bb.j
  %i.av = icmp eq i16 %.pr.i, 0
  br i1 %i.av, label %.critedge.thread3.i, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.l, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader, %.critedge.i
  store i16 0, ptr %i.a, align 2
  br label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

_ZN6icu_7817double_conversion6Bignum5ClampEv.exit: ; preds = %bb.k, %.critedge.i, %.critedge.thread3.i
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN6icu_7817double_conversion6Bignum9AddBignumERKS1_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.b = load i16, ptr %i.a, align 2              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2              ; 4 uses
  %i.e = icmp sgt i16 %i.b, %i.d
  %.pre67 = load i16, ptr %0, align 4             ; 6 uses
  br i1 %i.e, label %bb.b, label %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = sext i16 %i.d to i32
  %i.g = sext i16 %i.b to i32
  %i.h = sub nsw i32 %i.g, %i.f                   ; 4 uses
  %i.i = sext i16 %.pre67 to i32
  %i.j = add nsw i32 %i.h, %i.i
  %i.k = icmp sgt i32 %i.j, 128
  br i1 %i.k, label %bb.c, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i: ; preds = %bb.b
  %i.l = icmp sgt i16 %.pre67, 0
  br i1 %i.l, label %.lr.ph.i, label %.lr.ph20.i

.lr.ph.i:                                         ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.m = zext nneg i16 %.pre67 to i64             ; 6 uses
  %i.n = sext i32 %i.h to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %0, i64 %i.n ; 2 uses
  %min.iters.check = icmp ult i16 %.pre67, 16
  br i1 %min.iters.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.o = sext i16 %i.d to i64
  %i.p = sext i16 %i.b to i64
  %i.q = sub nsw i64 %i.o, %i.p
  %2 = shl nsw i64 %i.q, 2
  %3 = add nsw i64 %2, -1
  %diff.check = icmp ult i64 %3, 31
  br i1 %diff.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 32760                    ; 2 uses
  %i.r = and i64 %i.m, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = sub i64 %i.m, %index                     ; 2 uses
  %i.t = getelementptr [4 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -12
  %i.v = getelementptr i8, ptr %i.t, i64 -28
  %wide.load = load <4 x i32>, ptr %i.u, align 4
  %wide.load77 = load <4 x i32>, ptr %i.v, align 4
  %i.w = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.s ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -12
  %i.y = getelementptr i8, ptr %i.w, i64 -28
  store <4 x i32> %wide.load, ptr %i.x, align 4
  store <4 x i32> %wide.load77, ptr %i.y, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.m
  br i1 %cmp.n, label %.lr.ph20.i.loopexit, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader: ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i ], [ %i.r, %middle.block ]
  br label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #14
  unreachable

.lr.ph20.i.loopexit:                              ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i, %middle.block
  %.pre = load i16, ptr %0, align 4
  %.pre66 = load i16, ptr %i.a, align 2
  br label %.lr.ph20.i

.lr.ph20.i:                                       ; preds = %.lr.ph20.i.loopexit, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.aa = phi i16 [ %.pre66, %.lr.ph20.i.loopexit ], [ %i.b, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i ]
  %i.ab = phi i16 [ %.pre, %.lr.ph20.i.loopexit ], [ %.pre67, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = zext nneg i32 %i.h to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ae, i1 false)
  %i.af = trunc i32 %i.h to i16                   ; 2 uses
  %i.ag = add i16 %i.ab, %i.af                    ; 2 uses
  store i16 %i.ag, ptr %0, align 4
  %i.ah = sub i16 %i.aa, %i.af                    ; 2 uses
  store i16 %i.ah, ptr %i.a, align 2
  %.pre68 = load i16, ptr %i.c, align 2
  br label %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i ], [ %indvars.iv.i.ph, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ai = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.aj = load i32, ptr %i.ai, align 4
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i32 %i.aj, ptr %gep.i, align 4
  %i.ak = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ak, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i, label %.lr.ph20.i.loopexit, !llvm.loop !24

_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit: ; preds = %bb.a, %.lr.ph20.i
  %i.al = phi i16 [ %i.d, %bb.a ], [ %.pre68, %.lr.ph20.i ]
  %i.am = phi i16 [ %i.b, %bb.a ], [ %i.ah, %.lr.ph20.i ]
  %i.an = phi i16 [ %.pre67, %bb.a ], [ %i.ag, %.lr.ph20.i ] ; 2 uses
  %i.ao = sext i16 %i.an to i32                   ; 3 uses
  %i.ap = sext i16 %i.am to i32                   ; 4 uses
  %i.aq = add nsw i32 %i.ap, %i.ao
  %i.ar = load i16, ptr %1, align 4               ; 2 uses
  %i.as = sext i16 %i.ar to i32
  %i.at = sext i16 %i.al to i32                   ; 3 uses
  %i.au = add nsw i32 %i.at, %i.as
  %.sroa.speculated35 = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 %i.au)
  %reass.sub = sub nsw i32 %.sroa.speculated35, %i.ap
  %i.av = icmp sgt i32 %reass.sub, 127
  br i1 %i.av, label %bb.d, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit

bb.d:                                             ; preds = %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit
  %i.aw = sub nsw i32 %i.at, %i.ap                ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, %i.ao
  br i1 %i.ax, label %.lr.ph, label %.preheader42

.lr.ph:                                           ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bg, i1 false)
  %.pre69 = load i16, ptr %1, align 4
  br label %.preheader42

.preheader42:                                     ; preds = %.lr.ph, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %i.bh = phi i16 [ %.pre69, %.lr.ph ], [ %i.ar, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit ]
  %i.bi = icmp sgt i16 %i.bh, 0
  br i1 %i.bi, label %.lr.ph47, label %._crit_edge

.lr.ph47:                                         ; preds = %.preheader42
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bl = sext i32 %i.aw to i64
  br label %bb.e

.preheader:                                       ; preds = %bb.g
  %i.bm = trunc nsw i64 %indvars.iv.next59 to i32
  %.not49 = icmp eq i32 %i.cb, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph52

.lr.ph52:                                         ; preds = %.preheader
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %sext = shl i64 %indvars.iv.next59, 32
  %i.bo = ashr exact i64 %sext, 32
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph47, %bb.g
  %indvars.iv58 = phi i64 [ %i.bl, %.lr.ph47 ], [ %indvars.iv.next59, %bb.g ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.046 = phi i32 [ 0, %.lr.ph47 ], [ %i.cb, %bb.g ]
  %i.bp = load i16, ptr %0, align 4
  %i.bq = sext i16 %i.bp to i64
  %i.br = icmp slt i64 %indvars.iv58, %i.bq
  br i1 %i.br, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %indvars.iv58
  %i.bt = load i32, ptr %i.bs, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bu = phi i32 [ %i.bt, %bb.f ], [ 0, %bb.e ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = add i32 %i.bu, %.046
  %i.by = add i32 %i.bx, %i.bw                    ; 2 uses
  %i.bz = and i32 %i.by, 268435455
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %indvars.iv58
  store i32 %i.bz, ptr %i.ca, align 4
  %i.cb = lshr i32 %i.by, 28                      ; 3 uses
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, 1 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cc = load i16, ptr %1, align 4
  %i.cd = sext i16 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next, %i.cd
  br i1 %i.ce, label %bb.e, label %.preheader, !llvm.loop !25

bb.h:                                             ; preds = %.lr.ph52, %bb.j
  %indvars.iv63 = phi i64 [ %i.bo, %.lr.ph52 ], [ %indvars.iv.next64, %bb.j ] ; 4 uses
  %.151 = phi i32 [ %i.cb, %.lr.ph52 ], [ %i.co, %bb.j ]
  %i.cf = load i16, ptr %0, align 4
  %i.cg = sext i16 %i.cf to i64
  %i.ch = icmp slt i64 %indvars.iv63, %i.cg
  br i1 %i.ch, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %indvars.iv63
  %i.cj = load i32, ptr %i.ci, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ck = phi i32 [ %i.cj, %bb.i ], [ 0, %bb.h ]
  %i.cl = add i32 %i.ck, %.151                    ; 2 uses
  %i.cm = and i32 %i.cl, 268435455
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %indvars.iv63
  store i32 %i.cm, ptr %i.cn, align 4
  %i.co = lshr i32 %i.cl, 28                      ; 2 uses
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, 1 ; 2 uses
  %.not = icmp eq i32 %i.co, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.h, !llvm.loop !26

._crit_edge.loopexit:                             ; preds = %bb.j
  %i.cp = trunc nsw i64 %indvars.iv.next64 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader42, %._crit_edge.loopexit, %.preheader
  %.141.lcssa = phi i32 [ %i.bm, %.preheader ], [ %i.cp, %._crit_edge.loopexit ], [ %i.aw, %.preheader42 ]
  %i.cq = load i16, ptr %0, align 4
  %i.cr = sext i16 %i.cq to i32
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.141.lcssa, i32 %i.cr)
  %i.cs = trunc i32 %.sroa.speculated to i16
  store i16 %i.cs, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN6icu_7817double_conversion6Bignum5AlignERKS1_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.b = load i16, ptr %i.a, align 2              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i16, ptr %i.c, align 2              ; 3 uses
  %i.e = icmp sgt i16 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = sext i16 %i.d to i32
  %i.g = sext i16 %i.b to i32
  %i.h = sub nsw i32 %i.g, %i.f                   ; 5 uses
  %i.i = load i16, ptr %0, align 4                ; 4 uses
  %i.j = sext i16 %i.i to i32
  %i.k = add nsw i32 %i.h, %i.j
  %i.l = icmp sgt i32 %i.k, 128
  br i1 %i.l, label %bb.c, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader: ; preds = %bb.b
  %i.m = icmp sgt i16 %i.i, 0
  br i1 %i.m, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader
  %i.n = zext nneg i16 %i.i to i64                ; 6 uses
  %i.o = sext i32 %i.h to i64
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.o ; 2 uses
  %min.iters.check = icmp ult i16 %i.i, 16
  br i1 %min.iters.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader29, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.p = sext i16 %i.d to i64
  %i.q = sext i16 %i.b to i64
  %i.r = sub nsw i64 %i.p, %i.q
  %2 = shl nsw i64 %i.r, 2
  %3 = add nsw i64 %2, -1
  %diff.check = icmp ult i64 %3, 31
  br i1 %diff.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader29, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.n, 32760                    ; 2 uses
  %i.s = and i64 %i.n, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = sub i64 %i.n, %index                     ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -12
  %i.w = getelementptr i8, ptr %i.u, i64 -28
  %wide.load = load <4 x i32>, ptr %i.v, align 4
  %wide.load28 = load <4 x i32>, ptr %i.w, align 4
  %i.x = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.t ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -12
  %i.z = getelementptr i8, ptr %i.x, i64 -28
  store <4 x i32> %wide.load, ptr %i.y, align 4
  store <4 x i32> %wide.load28, ptr %i.z, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.n
  br i1 %cmp.n, label %.preheader, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader29

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader29: ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph ], [ %i.s, %middle.block ]
  br label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #14
  unreachable

.preheader:                                       ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit, %middle.block, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader
  %i.ab = icmp sgt i32 %i.h, 0
  br i1 %i.ab, label %.lr.ph20, label %._crit_edge

.lr.ph20:                                         ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = zext nneg i32 %i.h to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ae, i1 false)
  br label %._crit_edge

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader29, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit ], [ %indvars.iv.ph, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader29 ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.af = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.ag, ptr %gep, align 4
  %i.ah = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ah, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit, label %.preheader, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph20, %.preheader
  %i.ai = load i16, ptr %0, align 4
  %i.aj = trunc i32 %i.h to i16                   ; 2 uses
  %i.ak = add i16 %i.ai, %i.aj
  store i16 %i.ak, ptr %0, align 4
  %i.al = load i16, ptr %i.a, align 2
  %i.am = sub i16 %i.al, %i.aj
  store i16 %i.am, ptr %i.a, align 2
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN6icu_7817double_conversion6Bignum14SubtractBignumERKS1_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.b = load i16, ptr %i.a, align 2              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2              ; 4 uses
  %i.e = icmp sgt i16 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = sext i16 %i.d to i32
  %i.g = sext i16 %i.b to i32
  %i.h = sub nsw i32 %i.g, %i.f                   ; 4 uses
  %i.i = load i16, ptr %0, align 4                ; 5 uses
  %i.j = sext i16 %i.i to i32
  %i.k = add nsw i32 %i.h, %i.j
  %i.l = icmp sgt i32 %i.k, 128
  br i1 %i.l, label %bb.c, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i: ; preds = %bb.b
  %i.m = icmp sgt i16 %i.i, 0
  br i1 %i.m, label %.lr.ph.i, label %.lr.ph20.i

.lr.ph.i:                                         ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.n = zext nneg i16 %i.i to i64                ; 6 uses
  %i.o = sext i32 %i.h to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %0, i64 %i.o ; 2 uses
  %min.iters.check = icmp ult i16 %i.i, 16
  br i1 %min.iters.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.p = sext i16 %i.d to i64
  %i.q = sext i16 %i.b to i64
  %i.r = sub nsw i64 %i.p, %i.q
  %2 = shl nsw i64 %i.r, 2
  %3 = add nsw i64 %2, -1
  %diff.check = icmp ult i64 %3, 31
  br i1 %diff.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.n, 32760                    ; 2 uses
  %i.s = and i64 %i.n, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = sub i64 %i.n, %index                     ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -12
  %i.w = getelementptr i8, ptr %i.u, i64 -28
  %wide.load = load <4 x i32>, ptr %i.v, align 4
  %wide.load49 = load <4 x i32>, ptr %i.w, align 4
  %i.x = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.t ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -12
  %i.z = getelementptr i8, ptr %i.x, i64 -28
  store <4 x i32> %wide.load, ptr %i.y, align 4
  store <4 x i32> %wide.load49, ptr %i.z, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.n
  br i1 %cmp.n, label %.lr.ph20.i.loopexit, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader: ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i ], [ %i.s, %middle.block ]
  br label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #14
  unreachable

.lr.ph20.i.loopexit:                              ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i, %middle.block
  %.pre = load i16, ptr %0, align 4
  %.pre39 = load i16, ptr %i.a, align 2
  br label %.lr.ph20.i

.lr.ph20.i:                                       ; preds = %.lr.ph20.i.loopexit, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.ab = phi i16 [ %.pre39, %.lr.ph20.i.loopexit ], [ %i.b, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i ]
  %i.ac = phi i16 [ %.pre, %.lr.ph20.i.loopexit ], [ %i.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ae = zext nneg i32 %i.h to i64
  %i.af = shl nuw nsw i64 %i.ae, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ad, i8 0, i64 %i.af, i1 false)
  %i.ag = trunc i32 %i.h to i16                   ; 2 uses
  %i.ah = add i16 %i.ac, %i.ag
  store i16 %i.ah, ptr %0, align 4
  %i.ai = sub i16 %i.ab, %i.ag                    ; 2 uses
  store i16 %i.ai, ptr %i.a, align 2
  %.pre40 = load i16, ptr %i.c, align 2
  br label %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i ], [ %indvars.iv.i.ph, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.aj = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.ak = load i32, ptr %i.aj, align 4
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i32 %i.ak, ptr %gep.i, align 4
  %i.al = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.al, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i, label %.lr.ph20.i.loopexit, !llvm.loop !30

_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit: ; preds = %bb.a, %.lr.ph20.i
  %i.am = phi i16 [ %i.b, %bb.a ], [ %i.ai, %.lr.ph20.i ]
  %i.an = phi i16 [ %i.d, %bb.a ], [ %.pre40, %.lr.ph20.i ]
  %i.ao = sext i16 %i.an to i32
  %i.ap = sext i16 %i.am to i32
  %i.aq = sub nsw i32 %i.ao, %i.ap                ; 2 uses
  %i.ar = load i16, ptr %1, align 4
  %i.as = icmp sgt i16 %i.ar, 0
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.av = sext i32 %i.aq to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.at, i64 %i.av
  br label %bb.d

.preheader:                                       ; preds = %bb.d
  %i.aw = icmp sgt i32 %i.be, -1
  br i1 %i.aw, label %._crit_edge, label %.lr.ph32

.lr.ph32:                                         ; preds = %.preheader
  %i.ax = and i64 %indvars.iv.next, 4294967295
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.az = sext i32 %i.aq to i64
  %invariant.gep47 = getelementptr [4 x i8], ptr %i.ay, i64 %i.az
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.028 = phi i32 [ 0, %.lr.ph ], [ %i.bg, %bb.d ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.ba = load i32, ptr %gep, align 4
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = add i32 %.028, %i.bc
  %i.be = sub i32 %i.ba, %i.bd                    ; 3 uses
  %i.bf = and i32 %i.be, 268435455
  store i32 %i.bf, ptr %gep, align 4
  %i.bg = lshr i32 %i.be, 31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bh = load i16, ptr %1, align 4
  %i.bi = sext i16 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %bb.d, label %.preheader, !llvm.loop !31

bb.e:                                             ; preds = %.lr.ph32, %bb.e
  %indvars.iv36 = phi i64 [ %i.ax, %.lr.ph32 ], [ %indvars.iv.next37, %bb.e ] ; 2 uses
  %gep48 = getelementptr [4 x i8], ptr %invariant.gep47, i64 %indvars.iv36 ; 2 uses
  %i.bk = load i32, ptr %gep48, align 4
  %i.bl = add i32 %i.bk, -1                       ; 2 uses
  %i.bm = and i32 %i.bl, 268435455
  store i32 %i.bm, ptr %gep48, align 4
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %.not = icmp sgt i32 %i.bl, -1
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.e, %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit, %.preheader
  %.pr.i = load i16, ptr %0, align 4              ; 3 uses
  %i.bn = icmp sgt i16 %.pr.i, 0
  br i1 %i.bn, label %.lr.ph.i25, label %.critedge.i

.lr.ph.i25:                                       ; preds = %._crit_edge
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i25
  %i.bp = phi i16 [ %.pr.i, %.lr.ph.i25 ], [ %i.bw, %bb.g ] ; 3 uses
  %i.bq = zext nneg i16 %i.bp to i64
  %i.br = add nuw nsw i64 %i.bq, 4294967295
  %i.bs = and i64 %i.br, 4294967295
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.g, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

bb.g:                                             ; preds = %bb.f
  %i.bw = add nsw i16 %i.bp, -1                   ; 2 uses
  store i16 %i.bw, ptr %0, align 4
  %i.bx = icmp sgt i16 %i.bp, 1
  br i1 %i.bx, label %bb.f, label %.critedge.thread3.i, !llvm.loop !10

.critedge.i:                                      ; preds = %._crit_edge
  %i.by = icmp eq i16 %.pr.i, 0
  br i1 %i.by, label %.critedge.thread3.i, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.g, %.critedge.i
  store i16 0, ptr %i.a, align 2
  br label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

_ZN6icu_7817double_conversion6Bignum5ClampEv.exit: ; preds = %bb.f, %.critedge.i, %.critedge.thread3.i
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4                ; 6 uses
  %i.b = icmp eq i16 %i.a, 0
  br i1 %i.b, label %_ZN6icu_7817double_conversion6Bignum15BigitsShiftLeftEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i32 %1, 28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2
  %i.f = trunc i32 %i.c to i16
  %i.g = add i16 %i.e, %i.f
  store i16 %i.g, ptr %i.d, align 2
  %i.h = srem i32 %1, 28                          ; 3 uses
  %i.i = icmp sgt i16 %i.a, 127
  br i1 %i.i, label %bb.c, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %bb.b
  %i.j = icmp sgt i16 %i.a, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZN6icu_7817double_conversion6Bignum15BigitsShiftLeftEi.exit

.lr.ph.i:                                         ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %wide.trip.count.i = zext nneg i16 %i.a to i64  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.l = sub nsw i32 28, %i.h                     ; 2 uses
  %min.iters.check = icmp ult i16 %i.a, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 32760      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert4 = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat5 = shufflevector <4 x i32> %broadcast.splatinsert4, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body
end_hunk_0
begin_hunk_1_@_ZN6icu_7817double_conversion6Bignum17AssignPowerUInt16Eti:bb.a

.preheader.i64:                                   ; preds = %.preheader.i64.unr-lcssa, %.epil.preheader143
  %.lcssa135 = phi i64 [ %i.cv, %.preheader.i64.unr-lcssa ], [ %i.ce, %.epil.preheader143 ] ; 2 uses
  %.not18.i65 = icmp eq i64 %.lcssa135, 0
  br i1 %.not18.i65, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit70, label %.lr.ph20.i66

bb.s:                                             ; preds = %bb.s, %.lr.ph.i58.new
  %indvars.iv.i60 = phi i64 [ 0, %.lr.ph.i58.new ], [ %indvars.iv.next.i62.1, %bb.s ] ; 3 uses
  %.017.i61 = phi i64 [ 0, %.lr.ph.i58.new ], [ %i.cv, %bb.s ]
  %niter149 = phi i64 [ 0, %.lr.ph.i58.new ], [ %niter149.next.1, %bb.s ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.i60 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = zext i32 %i.cg to i64
  %i.ci = mul nuw nsw i64 %i.ch, %i.t
  %i.cj = add nuw nsw i64 %i.ci, %.017.i61        ; 2 uses
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = and i32 %i.ck, 268435455
  store i32 %i.cl, ptr %i.cf, align 4
  %i.cm = lshr i64 %i.cj, 28
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.i60
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = zext i32 %i.cp to i64
  %i.cr = mul nuw nsw i64 %i.cq, %i.t
  %i.cs = add nuw nsw i64 %i.cr, %i.cm            ; 2 uses
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = and i32 %i.ct, 268435455
  store i32 %i.cu, ptr %i.co, align 4
  %i.cv = lshr i64 %i.cs, 28                      ; 3 uses
  %indvars.iv.next.i62.1 = add nuw nsw i64 %indvars.iv.i60, 2 ; 2 uses
  %niter149.next.1 = add i64 %niter149, 2         ; 2 uses
  %niter149.ncmp.1 = icmp eq i64 %niter149.next.1, %unroll_iter148
  br i1 %niter149.ncmp.1, label %.preheader.i64.unr-lcssa, label %bb.s, !llvm.loop !15

.lr.ph20.i66:                                     ; preds = %.preheader.i64
  %i.cw = icmp samesign ugt i16 %i.bu, 127
  br i1 %i.cw, label %bb.t, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i68

bb.t:                                             ; preds = %.lr.ph20.i66
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i68: ; preds = %.lr.ph20.i66
  %i.cx = trunc nuw nsw i64 %.lcssa135 to i32
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %wide.trip.count.i59
  store i32 %i.cx, ptr %i.cy, align 4
  %i.cz = add nuw nsw i16 %i.bu, 1
  store i16 %i.cz, ptr %0, align 4
  br label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit70, !llvm.loop !16

_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit70: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i68, %.preheader.i64, %bb.r, %bb.q, %bb.p, %bb.o
  %i.da = ashr i32 %.24795, 1                     ; 2 uses
  %.not51 = icmp eq i32 %i.da, 0
  br i1 %.not51, label %._crit_edge97.loopexit, label %bb.o, !llvm.loop !48

._crit_edge97.loopexit:                           ; preds = %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit70
  %.pre = load i16, ptr %0, align 4
  br label %._crit_edge97

._crit_edge97:                                    ; preds = %._crit_edge97.loopexit, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit
  %i.db = phi i16 [ %.pre, %._crit_edge97.loopexit ], [ %i.br, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit ] ; 6 uses
  %i.dc = icmp eq i16 %i.db, 0
  br i1 %i.dc, label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge97
  %i.dd = sdiv i32 %.039.lcssa, 28
  %i.de = load i16, ptr %i.d, align 2
  %i.df = trunc i32 %i.dd to i16
  %i.dg = add i16 %i.de, %i.df
  store i16 %i.dg, ptr %i.d, align 2
  %i.dh = srem i32 %.039.lcssa, 28                ; 3 uses
  %i.di = icmp sgt i16 %i.db, 127
  br i1 %i.di, label %bb.v, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i71

bb.v:                                             ; preds = %bb.u
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i71: ; preds = %bb.u
  %i.dj = icmp sgt i16 %i.db, 0
  br i1 %i.dj, label %.lr.ph.i.i, label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit

.lr.ph.i.i:                                       ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i71
  %wide.trip.count.i.i = zext nneg i16 %i.db to i64 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.dl = sub nsw i32 28, %i.dh                   ; 2 uses
  %min.iters.check = icmp ult i16 %i.db, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 32760    ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dl, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert130 = insertelement <4 x i32> poison, i32 %i.dh, i64 0
  %broadcast.splat131 = shufflevector <4 x i32> %broadcast.splatinsert130, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.dp, %vector.body ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %index ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dm, align 4 ; 2 uses
  %wide.load132 = load <4 x i32>, ptr %i.dn, align 4 ; 2 uses
  %i.do = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.dp = lshr <4 x i32> %wide.load132, %broadcast.splat ; 3 uses
  %i.dq = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.do, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dr = shufflevector <4 x i32> %i.do, <4 x i32> %i.dp, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ds = shl <4 x i32> %wide.load, %broadcast.splat131
  %i.dt = shl <4 x i32> %wide.load132, %broadcast.splat131
  %i.du = add <4 x i32> %i.ds, %i.dq
  %i.dv = add <4 x i32> %i.dt, %i.dr
  %i.dw = and <4 x i32> %i.du, splat (i32 268435455)
  %i.dx = and <4 x i32> %i.dv, splat (i32 268435455)
  store <4 x i32> %i.dw, ptr %i.dm, align 4
  store <4 x i32> %i.dx, ptr %i.dn, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.dp, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  %.014.i.i.ph = phi i32 [ 0, %.lr.ph.i.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.eb, %scalar.ph ] ; 2 uses
  %.not.i.i = icmp eq i32 %.lcssa, 0
  br i1 %.not.i.i, label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit, label %bb.w

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.014.i.i = phi i32 [ %i.eb, %scalar.ph ], [ %.014.i.i.ph, %scalar.ph.preheader ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.i.i ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4            ; 2 uses
  %i.eb = lshr i32 %i.ea, %i.dl                   ; 2 uses
  %i.ec = shl i32 %i.ea, %i.dh
  %i.ed = add i32 %i.ec, %.014.i.i
  %i.ee = and i32 %i.ed, 268435455
  store i32 %i.ee, ptr %i.dz, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !50

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %wide.trip.count.i.i
  store i32 %.lcssa, ptr %i.ef, align 4
  %i.eg = add nuw nsw i16 %i.db, 1
  br label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit.sink.split

_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit.sink.split: ; preds = %bb.b, %bb.w
  %.sink = phi i16 [ %i.eg, %bb.w ], [ 1, %bb.b ]
  store i16 %.sink, ptr %0, align 4
  br label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit

_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit: ; preds = %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit.sink.split, %._crit_edge.i.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i71, %._crit_edge97
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef zeroext i16 @_ZN6icu_7817double_conversion6Bignum21DivideModuloIntBignumERKS1_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4                ; 6 uses
  %i.b = sext i16 %i.a to i32                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 6 uses
  %i.d = load i16, ptr %i.c, align 2              ; 4 uses
  %i.e = sext i16 %i.d to i32                     ; 2 uses
  %i.f = add nsw i32 %i.e, %i.b                   ; 2 uses
  %i.g = load i16, ptr %1, align 4                ; 2 uses
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 4 uses
  %i.j = load i16, ptr %i.i, align 2              ; 3 uses
  %i.k = sext i16 %i.j to i32                     ; 2 uses
  %i.l = add nsw i32 %i.k, %i.h                   ; 2 uses
  %i.m = icmp slt i32 %i.f, %i.l
  br i1 %i.m, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp sgt i16 %i.d, %i.j
  br i1 %i.n, label %bb.c, label %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.o = sub nsw i32 %i.e, %i.k                   ; 4 uses
  %i.p = add nsw i32 %i.o, %i.b
  %i.q = icmp sgt i32 %i.p, 128
  br i1 %i.q, label %bb.d, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i: ; preds = %bb.c
  %i.r = icmp sgt i16 %i.a, 0
  br i1 %i.r, label %.lr.ph.i, label %.lr.ph20.i

.lr.ph.i:                                         ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.s = zext nneg i16 %i.a to i64                ; 6 uses
  %i.t = sext i32 %i.o to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %0, i64 %i.t ; 2 uses
  %min.iters.check = icmp ult i16 %i.a, 16
  br i1 %min.iters.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.u = sext i16 %i.j to i64
  %i.v = sext i16 %i.d to i64
  %i.w = sub nsw i64 %i.u, %i.v
  %2 = shl nsw i64 %i.w, 2
  %3 = add nsw i64 %2, -1
  %diff.check = icmp ult i64 %3, 31
  br i1 %diff.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, 32760                    ; 2 uses
  %i.x = and i64 %i.s, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = sub i64 %i.s, %index                     ; 2 uses
  %i.z = getelementptr [4 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -12
  %i.ab = getelementptr i8, ptr %i.z, i64 -28
  %wide.load = load <4 x i32>, ptr %i.aa, align 4
  %wide.load86 = load <4 x i32>, ptr %i.ab, align 4
  %i.ac = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.y ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 -12
  %i.ae = getelementptr i8, ptr %i.ac, i64 -28
  store <4 x i32> %wide.load, ptr %i.ad, align 4
  store <4 x i32> %wide.load86, ptr %i.ae, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.s
  br i1 %cmp.n, label %.lr.ph20.i.loopexit, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader: ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i ], [ %i.x, %middle.block ]
  br label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #14
  unreachable

.lr.ph20.i.loopexit:                              ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i, %middle.block
  %.pre = load i16, ptr %0, align 4
  %.pre49 = load i16, ptr %i.c, align 2
  br label %.lr.ph20.i

.lr.ph20.i:                                       ; preds = %.lr.ph20.i.loopexit, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.ag = phi i16 [ %.pre49, %.lr.ph20.i.loopexit ], [ %i.d, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i ]
  %i.ah = phi i16 [ %.pre, %.lr.ph20.i.loopexit ], [ %i.a, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = zext nneg i32 %i.o to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ai, i8 0, i64 %i.ak, i1 false)
  %i.al = trunc i32 %i.o to i16                   ; 2 uses
  %i.am = add i16 %i.ah, %i.al                    ; 3 uses
  store i16 %i.am, ptr %0, align 4
  %i.an = sub i16 %i.ag, %i.al                    ; 2 uses
  store i16 %i.an, ptr %i.c, align 2
  %.pre50 = load i16, ptr %1, align 4             ; 2 uses
  %.pre51 = load i16, ptr %i.i, align 2
  %.pre52 = sext i16 %i.am to i32
  %.pre53 = sext i16 %i.an to i32
  %.pre55 = add nsw i32 %.pre53, %.pre52
  %.pre57 = sext i16 %.pre50 to i32
  %.pre59 = sext i16 %.pre51 to i32
  %.pre61 = add nsw i32 %.pre59, %.pre57
  br label %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i ], [ %indvars.iv.i.ph, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ao = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.ap = load i32, ptr %i.ao, align 4
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i32 %i.ap, ptr %gep.i, align 4
  %i.aq = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.aq, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i, label %.lr.ph20.i.loopexit, !llvm.loop !52

_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit: ; preds = %bb.b, %.lr.ph20.i
  %.pre-phi62 = phi i32 [ %i.l, %bb.b ], [ %.pre61, %.lr.ph20.i ]
  %.pre-phi56 = phi i32 [ %i.f, %bb.b ], [ %.pre55, %.lr.ph20.i ]
  %i.ar = phi i16 [ %i.g, %bb.b ], [ %.pre50, %.lr.ph20.i ]
  %i.as = phi i16 [ %i.a, %bb.b ], [ %i.am, %.lr.ph20.i ] ; 2 uses
  %i.at = icmp sgt i32 %.pre-phi56, %.pre-phi62
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit, %.lr.ph
  %i.au = phi i16 [ %i.ba, %.lr.ph ], [ %i.as, %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit ]
  %.03141 = phi i16 [ %i.az, %.lr.ph ], [ 0, %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit ]
  %i.av = sext i16 %i.au to i64
  %i.aw = getelementptr [4 x i8], ptr %0, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4            ; 2 uses
  %i.ay = trunc i32 %i.ax to i16
  %i.az = add i16 %.03141, %i.ay                  ; 2 uses
  tail call void @_ZN6icu_7817double_conversion6Bignum13SubtractTimesERKS1_i(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %1, i32 noundef %i.ax)
  %i.ba = load i16, ptr %0, align 4               ; 3 uses
  %i.bb = sext i16 %i.ba to i32
  %i.bc = load i16, ptr %i.c, align 2
  %i.bd = sext i16 %i.bc to i32
  %i.be = add nsw i32 %i.bd, %i.bb
  %i.bf = load i16, ptr %1, align 4               ; 2 uses
  %i.bg = sext i16 %i.bf to i32
  %i.bh = load i16, ptr %i.i, align 2
  %i.bi = sext i16 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, %i.bg
  %i.bk = icmp sgt i32 %i.be, %i.bj
  br i1 %i.bk, label %.lr.ph, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph, %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit
  %.031.lcssa = phi i16 [ 0, %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit ], [ %i.az, %.lr.ph ] ; 2 uses
  %.lcssa40 = phi i16 [ %i.as, %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit ], [ %i.ba, %.lr.ph ]
  %.lcssa = phi i16 [ %i.ar, %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit ], [ %i.bf, %.lr.ph ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.bm = sext i16 %.lcssa40 to i64
  %i.bn = getelementptr [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 -4     ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4            ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.br = sext i16 %.lcssa to i64
  %i.bs = getelementptr [4 x i8], ptr %i.bq, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4            ; 5 uses
  %i.bv = icmp eq i16 %.lcssa, 1
  br i1 %i.bv, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.bw = udiv i32 %i.bp, %i.bu                   ; 2 uses
  %i.bx = mul i32 %i.bw, %i.bu                    ; 0 uses
  %.recomposed = urem i32 %i.bp, %i.bu
  store i32 %.recomposed, ptr %i.bo, align 4
  %i.by = trunc i32 %i.bw to i16
  %i.bz = add i16 %.031.lcssa, %i.by              ; 3 uses
  %.pr.i = load i16, ptr %0, align 4              ; 3 uses
  %i.ca = icmp sgt i16 %.pr.i, 0
  br i1 %i.ca, label %.lr.ph.i33, label %.critedge.i

.lr.ph.i33:                                       ; preds = %bb.e, %bb.f
  %i.cb = phi i16 [ %i.ci, %bb.f ], [ %.pr.i, %bb.e ] ; 3 uses
  %i.cc = zext nneg i16 %i.cb to i64
  %i.cd = add nuw nsw i64 %i.cc, 4294967295
  %i.ce = and i64 %i.cd, 4294967295
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.f, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

bb.f:                                             ; preds = %.lr.ph.i33
  %i.ci = add nsw i16 %i.cb, -1                   ; 2 uses
  store i16 %i.ci, ptr %0, align 4
  %i.cj = icmp sgt i16 %i.cb, 1
  br i1 %i.cj, label %.lr.ph.i33, label %.critedge.thread3.i, !llvm.loop !10

.critedge.i:                                      ; preds = %bb.e
  %i.ck = icmp eq i16 %.pr.i, 0
  br i1 %i.ck, label %.critedge.thread3.i, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.f, %.critedge.i
  store i16 0, ptr %i.c, align 2
  br label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

bb.g:                                             ; preds = %._crit_edge
  %i.cl = add i32 %i.bu, 1
  %i.cm = udiv i32 %i.bp, %i.cl                   ; 3 uses
  %i.cn = trunc i32 %i.cm to i16
  %i.co = add i16 %.031.lcssa, %i.cn              ; 2 uses
  tail call void @_ZN6icu_7817double_conversion6Bignum13SubtractTimesERKS1_i(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %1, i32 noundef %i.cm)
  %i.cp = add nsw i32 %i.cm, 1
  %i.cq = mul i32 %i.cp, %i.bu
  %i.cr = icmp ugt i32 %i.cq, %i.bp
  br i1 %i.cr, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit, label %.preheader

.preheader:                                       ; preds = %bb.g, %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread
  %.132 = phi i16 [ %i.dr, %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread ], [ %i.co, %bb.g ] ; 3 uses
  %i.cs = load i16, ptr %1, align 4
  %i.ct = sext i16 %i.cs to i32
  %i.cu = load i16, ptr %i.i, align 2             ; 2 uses
  %i.cv = sext i16 %i.cu to i32                   ; 3 uses
  %i.cw = add nsw i32 %i.cv, %i.ct                ; 5 uses
  %i.cx = load i16, ptr %0, align 4
  %i.cy = sext i16 %i.cx to i32
  %i.cz = load i16, ptr %i.c, align 2             ; 2 uses
  %i.da = sext i16 %i.cz to i32                   ; 3 uses
  %i.db = add nsw i32 %i.da, %i.cy                ; 3 uses
  %i.dc = icmp slt i32 %i.cw, %i.db
  br i1 %i.dc, label %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread, label %bb.h

bb.h:                                             ; preds = %.preheader
  %i.dd = icmp sgt i32 %i.cw, %i.db
  br i1 %i.dd, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.h
  %i.de = tail call i16 @llvm.smin.i16(i16 %i.cz, i16 %i.cu)
  %i.df = sext i16 %i.de to i32                   ; 2 uses
  %.not.not.not.i.i81 = icmp sgt i32 %i.cw, %i.df
  br i1 %.not.not.not.i.i81, label %.lr.ph85, label %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread

bb.i:                                             ; preds = %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit32.i.i
  %.not.not.not.i.i = icmp sgt i32 %.024.i.i84, %i.df
  br i1 %.not.not.not.i.i, label %.lr.ph85, label %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread, !llvm.loop !54

.lr.ph85:                                         ; preds = %.preheader.i.i, %bb.i
  %.0.i.i83 = phi i32 [ %.1.i.i, %bb.i ], [ undef, %.preheader.i.i ]
  %.024.in.i.i82 = phi i32 [ %.024.i.i84, %bb.i ], [ %i.cw, %.preheader.i.i ] ; 5 uses
  %.024.i.i84 = add nsw i32 %.024.in.i.i82, -1    ; 4 uses
  %.not.i.i.i = icmp sgt i32 %.024.in.i.i82, %i.cw
end_hunk_1
