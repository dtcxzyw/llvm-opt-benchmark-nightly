inline.NumInlined: 136
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6icu_7817double_conversion6Bignum15AssignHexStringENS0_6VectorIKcEE:bb.a
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
  %i.r = shl nsw i64 %i.q, 2
  %i.s = add nsw i64 %i.r, -1
  %diff.check = icmp ult i64 %i.s, 31
  br i1 %diff.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.ph

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
  %wide.load = load <4 x i32>, ptr %i.w, align 4
  %wide.load77 = load <4 x i32>, ptr %i.x, align 4
  %i.y = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.u ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -12
  %i.aa = getelementptr i8, ptr %i.y, i64 -28
  store <4 x i32> %wide.load, ptr %i.z, align 4
  store <4 x i32> %wide.load77, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.m
  br i1 %cmp.n, label %.lr.ph20.i.loopexit, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader: ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i ], [ %i.t, %middle.block ]
  br label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #14
  unreachable

.lr.ph20.i.loopexit:                              ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i, %middle.block
  %.pre = load i16, ptr %0, align 4
  %.pre66 = load i16, ptr %i.a, align 2
  br label %.lr.ph20.i

.lr.ph20.i:                                       ; preds = %.lr.ph20.i.loopexit, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.ac = phi i16 [ %.pre66, %.lr.ph20.i.loopexit ], [ %i.b, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i ]
  %i.ad = phi i16 [ %.pre, %.lr.ph20.i.loopexit ], [ %.pre67, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = zext nneg i32 %i.h to i64
  %i.ag = shl nuw nsw i64 %i.af, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ag, i1 false)
  %i.ah = trunc i32 %i.h to i16                   ; 2 uses
  %i.ai = add i16 %i.ad, %i.ah                    ; 2 uses
  store i16 %i.ai, ptr %0, align 4
  %i.aj = sub i16 %i.ac, %i.ah                    ; 2 uses
  store i16 %i.aj, ptr %i.a, align 2
  %.pre68 = load i16, ptr %i.c, align 2
  br label %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i ], [ %indvars.iv.i.ph, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ak = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.al = load i32, ptr %i.ak, align 4
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i32 %i.al, ptr %gep.i, align 4
  %i.am = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.am, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i, label %.lr.ph20.i.loopexit, !llvm.loop !24

_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit: ; preds = %bb.a, %.lr.ph20.i
  %i.an = phi i16 [ %i.d, %bb.a ], [ %.pre68, %.lr.ph20.i ]
  %i.ao = phi i16 [ %i.b, %bb.a ], [ %i.aj, %.lr.ph20.i ]
  %i.ap = phi i16 [ %.pre67, %bb.a ], [ %i.ai, %.lr.ph20.i ] ; 2 uses
  %i.aq = sext i16 %i.ap to i32                   ; 3 uses
  %i.ar = sext i16 %i.ao to i32                   ; 4 uses
  %i.as = add nsw i32 %i.ar, %i.aq
  %i.at = load i16, ptr %1, align 4               ; 2 uses
  %i.au = sext i16 %i.at to i32
  %i.av = sext i16 %i.an to i32                   ; 3 uses
  %i.aw = add nsw i32 %i.av, %i.au
  %.sroa.speculated35 = tail call i32 @llvm.smax.i32(i32 %i.as, i32 %i.aw)
  %reass.sub = sub nsw i32 %.sroa.speculated35, %i.ar
  %i.ax = icmp sgt i32 %reass.sub, 127
  br i1 %i.ax, label %bb.d, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit

bb.d:                                             ; preds = %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit
  %i.ay = sub nsw i32 %i.av, %i.ar                ; 3 uses
  %i.az = icmp sgt i32 %i.ay, %i.aq
  br i1 %i.az, label %.lr.ph, label %.preheader42

.lr.ph:                                           ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %i.ba = sext i16 %i.ap to i64
  %i.bb = shl nsw i64 %i.ba, 2
  %i.bc = getelementptr i8, ptr %0, i64 %i.bb
  %scevgep = getelementptr i8, ptr %i.bc, i64 4
  %i.bd = xor i32 %i.ar, -1
  %i.be = add nsw i32 %i.bd, %i.av
  %i.bf = sub nsw i32 %i.be, %i.aq
  %i.bg = zext i32 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bi, i1 false)
  %.pre69 = load i16, ptr %1, align 4
  br label %.preheader42

.preheader42:                                     ; preds = %.lr.ph, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %i.bj = phi i16 [ %.pre69, %.lr.ph ], [ %i.at, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit ]
  %i.bk = icmp sgt i16 %i.bj, 0
  br i1 %i.bk, label %.lr.ph47, label %._crit_edge

.lr.ph47:                                         ; preds = %.preheader42
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bn = sext i32 %i.ay to i64
  br label %bb.e

.preheader:                                       ; preds = %bb.g
  %i.bo = trunc nsw i64 %indvars.iv.next59 to i32
  %.not49 = icmp eq i32 %i.cc, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph52

.lr.ph52:                                         ; preds = %.preheader
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph47, %bb.g
  %indvars.iv58 = phi i64 [ %i.bn, %.lr.ph47 ], [ %indvars.iv.next59, %bb.g ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.046 = phi i32 [ 0, %.lr.ph47 ], [ %i.cc, %bb.g ]
  %i.bq = load i16, ptr %0, align 4
  %i.br = sext i16 %i.bq to i64
  %i.bs = icmp slt i64 %indvars.iv58, %i.br
  br i1 %i.bs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %indvars.iv58
  %i.bu = load i32, ptr %i.bt, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bv = phi i32 [ %i.bu, %bb.f ], [ 0, %bb.e ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = add i32 %i.bv, %.046
  %i.bz = add i32 %i.by, %i.bx                    ; 2 uses
  %i.ca = and i32 %i.bz, 268435455
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %indvars.iv58
  store i32 %i.ca, ptr %i.cb, align 4
  %i.cc = lshr i32 %i.bz, 28                      ; 3 uses
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, 1 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cd = load i16, ptr %1, align 4
  %i.ce = sext i16 %i.cd to i64
  %i.cf = icmp slt i64 %indvars.iv.next, %i.ce
  br i1 %i.cf, label %bb.e, label %.preheader, !llvm.loop !25

bb.h:                                             ; preds = %.lr.ph52, %bb.j
  %indvars.iv63 = phi i64 [ %indvars.iv.next59, %.lr.ph52 ], [ %indvars.iv.next64, %bb.j ] ; 4 uses
  %.151 = phi i32 [ %i.cc, %.lr.ph52 ], [ %i.cp, %bb.j ]
  %i.cg = load i16, ptr %0, align 4
  %i.ch = sext i16 %i.cg to i64
  %i.ci = icmp slt i64 %indvars.iv63, %i.ch
  br i1 %i.ci, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv63
  %i.ck = load i32, ptr %i.cj, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.cl = phi i32 [ %i.ck, %bb.i ], [ 0, %bb.h ]
  %i.cm = add i32 %i.cl, %.151                    ; 2 uses
  %i.cn = and i32 %i.cm, 268435455
  %i.co = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv63
  store i32 %i.cn, ptr %i.co, align 4
  %i.cp = lshr i32 %i.cm, 28                      ; 2 uses
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, 1 ; 2 uses
  %.not = icmp eq i32 %i.cp, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.h, !llvm.loop !26

._crit_edge.loopexit:                             ; preds = %bb.j
  %i.cq = trunc nsw i64 %indvars.iv.next64 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader42, %._crit_edge.loopexit, %.preheader
  %.141.lcssa = phi i32 [ %i.bo, %.preheader ], [ %i.cq, %._crit_edge.loopexit ], [ %i.ay, %.preheader42 ]
  %i.cr = load i16, ptr %0, align 4
  %i.cs = sext i16 %i.cr to i32
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.141.lcssa, i32 %i.cs)
  %i.ct = trunc i32 %.sroa.speculated to i16
  store i16 %i.ct, ptr %0, align 4
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
  %i.s = shl nsw i64 %i.r, 2
  %i.t = add nsw i64 %i.s, -1
  %diff.check = icmp ult i64 %i.t, 31
  br i1 %diff.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader29, label %vector.ph

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
  %wide.load = load <4 x i32>, ptr %i.x, align 4
  %wide.load28 = load <4 x i32>, ptr %i.y, align 4
  %i.z = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.v ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -12
  %i.ab = getelementptr i8, ptr %i.z, i64 -28
  store <4 x i32> %wide.load, ptr %i.aa, align 4
  store <4 x i32> %wide.load28, ptr %i.ab, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.n
  br i1 %cmp.n, label %.preheader, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader29

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader29: ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph ], [ %i.u, %middle.block ]
  br label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #14
  unreachable

.preheader:                                       ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit, %middle.block, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader
  %i.ad = icmp sgt i32 %i.h, 0
  br i1 %i.ad, label %.lr.ph20, label %._crit_edge

.lr.ph20:                                         ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = zext nneg i32 %i.h to i64
  %i.ag = shl nuw nsw i64 %i.af, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ag, i1 false)
  br label %._crit_edge

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader29, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit ], [ %indvars.iv.ph, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader29 ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ah = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.ai, ptr %gep, align 4
  %i.aj = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.aj, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit, label %.preheader, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph20, %.preheader
  %i.ak = load i16, ptr %0, align 4
  %i.al = trunc i32 %i.h to i16                   ; 2 uses
  %i.am = add i16 %i.ak, %i.al
  store i16 %i.am, ptr %0, align 4
  %i.an = load i16, ptr %i.a, align 2
  %i.ao = sub i16 %i.an, %i.al
  store i16 %i.ao, ptr %i.a, align 2
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

end_hunk_0
begin_hunk_1_@_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.e ] ; 3 uses
  %.023 = phi i64 [ 0, %.lr.ph.new ], [ %i.ax, %bb.e ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.e ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = mul nuw i64 %i.d, %i.z
  %i.ab = and i64 %.023, 268435455
  %i.ac = add nuw i64 %i.aa, %i.ab                ; 2 uses
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 268435455
  store i32 %i.ae, ptr %i.x, align 4
  %i.af = lshr i64 %.023, 28
  %i.ag = lshr i64 %i.ac, 28
  %i.ah = mul i64 %i.h, %i.z
  %i.ai = add i64 %i.ah, %i.af
  %i.aj = add i64 %i.ai, %i.ag                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = mul nuw i64 %i.d, %i.an
  %i.ap = and i64 %i.aj, 268435455
  %i.aq = add nuw i64 %i.ao, %i.ap                ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 268435455
  store i32 %i.as, ptr %i.al, align 4
  %i.at = lshr i64 %i.aj, 28
  %i.au = lshr i64 %i.aq, 28
  %i.av = mul i64 %i.h, %i.an
  %i.aw = add i64 %i.av, %i.at
  %i.ax = add i64 %i.aw, %i.au                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.unr-lcssa, label %bb.e, !llvm.loop !11

bb.f:                                             ; preds = %.lr.ph26, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %i.ay = phi i16 [ %i.b, %.lr.ph26 ], [ %i.bf, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit ] ; 2 uses
  %.125 = phi i64 [ %.lcssa, %.lr.ph26 ], [ %i.bg, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit ] ; 2 uses
  %i.az = icmp sgt i16 %i.ay, 127
  br i1 %i.az, label %bb.g, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit

bb.g:                                             ; preds = %bb.f
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %bb.f
  %i.ba = trunc i64 %.125 to i32
  %i.bb = and i32 %i.ba, 268435455
  %i.bc = sext i16 %i.ay to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.bc
  store i32 %i.bb, ptr %i.bd, align 4
  %i.be = load i16, ptr %0, align 4
  %i.bf = add i16 %i.be, 1                        ; 2 uses
  store i16 %i.bf, ptr %0, align 4
  %i.bg = lshr i64 %.125, 28                      ; 2 uses
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !12

.loopexit:                                        ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit, %bb.d, %.preheader, %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN6icu_7817double_conversion6Bignum6SquareEv(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4                ; 7 uses
  %i.b = sext i16 %i.a to i32                     ; 2 uses
  %i.c = shl nsw i32 %i.b, 1                      ; 3 uses
  %i.d = icmp sgt i16 %i.a, 64
  br i1 %i.d, label %bb.b, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader: ; preds = %bb.a
  %i.e = icmp sgt i16 %i.a, 0
  br i1 %i.e, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = zext nneg i16 %i.a to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.h = load i16, ptr %0, align 4                ; 4 uses
  %i.i = sext i16 %i.h to i64                     ; 2 uses
  %i.j = tail call i64 @llvm.smax.i64(i64 %i.i, i64 1) ; 2 uses
  %min.iters.check = icmp slt i16 %i.h, 8
  %diff.check = icmp ult i16 %i.a, 8
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader169, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.j, 32760                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x i32>, ptr %i.k, align 4
  %wide.load123 = load <4 x i32>, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <4 x i32> %wide.load, ptr %i.m, align 4
  store <4 x i32> %wide.load123, ptr %i.n, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.preheader52, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader169

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader169: ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #14
  unreachable

.preheader52:                                     ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit, %middle.block
  %i.p = sext i16 %i.h to i32                     ; 3 uses
  %i.q = icmp sgt i16 %i.h, 0
  br i1 %i.q, label %.preheader51.lr.ph, label %.preheader

.preheader51.lr.ph:                               ; preds = %.preheader52
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.s = zext nneg i16 %i.a to i64                ; 2 uses
  %wide.trip.count90 = zext nneg i32 %i.p to i64
  %invariant.gep113 = getelementptr [4 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %invariant.gep115 = getelementptr [4 x i8], ptr %i.r, i64 %i.s ; 2 uses
  br label %.preheader51

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader169, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit ], [ %indvars.iv.ph, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader169 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.u, ptr %gep, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = icmp slt i64 %indvars.iv.next, %i.i
  br i1 %i.v, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit, label %.preheader52, !llvm.loop !38

.preheader51:                                     ; preds = %.preheader51.lr.ph, %.loopexit
  %indvars.iv85 = phi i64 [ 1, %.preheader51.lr.ph ], [ %indvars.iv.next86, %.loopexit ] ; 5 uses
  %indvars.iv76 = phi i64 [ 0, %.preheader51.lr.ph ], [ %indvars.iv.next77, %.loopexit ] ; 5 uses
  %.058 = phi i64 [ 0, %.preheader51.lr.ph ], [ %i.bb, %.loopexit ] ; 2 uses
  %min.iters.check125 = icmp samesign ult i64 %indvars.iv85, 4
  br i1 %min.iters.check125, label %scalar.ph124.preheader, label %vector.ph126

vector.ph126:                                     ; preds = %.preheader51
  %n.vec127 = and i64 %indvars.iv85, 9223372036854775804 ; 4 uses
  %i.w = sub nsw i64 %indvars.iv76, %n.vec127
  %i.x = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.058, i64 0
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next136, %vector.body128 ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.x, %vector.ph126 ], [ %i.ak, %vector.body128 ]
  %vec.phi130 = phi <2 x i64> [ zeroinitializer, %vector.ph126 ], [ %i.al, %vector.body128 ]
  %i.y = sub i64 %indvars.iv76, %index129
  %i.z = getelementptr [4 x i8], ptr %invariant.gep113, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -4
  %i.ab = getelementptr i8, ptr %i.z, i64 -12
  %wide.load131 = load <2 x i32>, ptr %i.aa, align 4
  %wide.load132 = load <2 x i32>, ptr %i.ab, align 4
  %reverse = shufflevector <2 x i32> %wide.load131, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %reverse133 = shufflevector <2 x i32> %wide.load132, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.ac = getelementptr [4 x i8], ptr %invariant.gep115, i64 %index129 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %wide.load134 = load <2 x i32>, ptr %i.ac, align 4
  %wide.load135 = load <2 x i32>, ptr %i.ad, align 4
  %i.ae = zext <2 x i32> %reverse to <2 x i64>
  %i.af = zext <2 x i32> %reverse133 to <2 x i64>
  %i.ag = zext <2 x i32> %wide.load134 to <2 x i64>
  %i.ah = zext <2 x i32> %wide.load135 to <2 x i64>
  %i.ai = mul nuw <2 x i64> %i.ag, %i.ae
  %i.aj = mul nuw <2 x i64> %i.ah, %i.af
  %i.ak = add <2 x i64> %i.ai, %vec.phi           ; 2 uses
  %i.al = add <2 x i64> %i.aj, %vec.phi130        ; 2 uses
  %index.next136 = add nuw i64 %index129, 4       ; 2 uses
  %i.am = icmp eq i64 %index.next136, %n.vec127
  br i1 %i.am, label %middle.block137, label %vector.body128, !llvm.loop !39

middle.block137:                                  ; preds = %vector.body128
  %bin.rdx = add <2 x i64> %i.al, %i.ak
  %i.an = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n138 = icmp eq i64 %indvars.iv85, %n.vec127
  br i1 %cmp.n138, label %.loopexit, label %scalar.ph124.preheader

scalar.ph124.preheader:                           ; preds = %.preheader51, %middle.block137
  %indvars.iv78.ph = phi i64 [ %indvars.iv76, %.preheader51 ], [ %i.w, %middle.block137 ]
  %indvars.iv74.ph = phi i64 [ 0, %.preheader51 ], [ %n.vec127, %middle.block137 ]
  %.156.ph = phi i64 [ %.058, %.preheader51 ], [ %i.an, %middle.block137 ]
  br label %scalar.ph124

.preheader:                                       ; preds = %.loopexit, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader, %.preheader52
  %.lcssa109 = phi i32 [ %i.p, %.preheader52 ], [ %i.b, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader ], [ %i.p, %.loopexit ] ; 3 uses
  %.0.lcssa = phi i64 [ 0, %.preheader52 ], [ 0, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader ], [ %i.bb, %.loopexit ]
  %i.ao = icmp slt i32 %.lcssa109, %i.c
  br i1 %i.ao, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.aq = sext i16 %i.a to i64                    ; 2 uses
  %i.ar = sext i32 %.lcssa109 to i64
  %wide.trip.count = sext i32 %i.c to i64
  %invariant.gep117 = getelementptr [4 x i8], ptr %0, i64 %i.aq ; 2 uses
  %invariant.gep119 = getelementptr [4 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  br label %bb.f

scalar.ph124:                                     ; preds = %scalar.ph124.preheader, %scalar.ph124
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %scalar.ph124 ], [ %indvars.iv78.ph, %scalar.ph124.preheader ] ; 2 uses
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %scalar.ph124 ], [ %indvars.iv74.ph, %scalar.ph124.preheader ] ; 2 uses
  %.156 = phi i64 [ %i.ax, %scalar.ph124 ], [ %.156.ph, %scalar.ph124.preheader ]
  %gep114 = getelementptr [4 x i8], ptr %invariant.gep113, i64 %indvars.iv78
  %i.as = load i32, ptr %gep114, align 4
  %gep116 = getelementptr [4 x i8], ptr %invariant.gep115, i64 %indvars.iv74
  %i.at = load i32, ptr %gep116, align 4
  %i.au = zext i32 %i.as to i64
  %i.av = zext i32 %i.at to i64
  %i.aw = mul nuw i64 %i.av, %i.au
  %i.ax = add i64 %i.aw, %.156                    ; 2 uses
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, -1
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next75, %indvars.iv85
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph124, !llvm.loop !40

.loopexit:                                        ; preds = %scalar.ph124, %middle.block137
  %.lcssa121 = phi i64 [ %i.an, %middle.block137 ], [ %i.ax, %scalar.ph124 ] ; 2 uses
  %i.ay = trunc i64 %.lcssa121 to i32
  %i.az = and i32 %i.ay, 268435455
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv76
  store i32 %i.az, ptr %i.ba, align 4
  %i.bb = lshr i64 %.lcssa121, 28                 ; 2 uses
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count90
  br i1 %exitcond91.not, label %.preheader, label %.preheader51, !llvm.loop !41

._crit_edge68:                                    ; preds = %._crit_edge, %.preheader
  %i.bc = trunc i32 %i.c to i16                   ; 4 uses
  store i16 %i.bc, ptr %0, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = shl i16 %i.be, 1
  store i16 %i.bf, ptr %i.bd, align 2
  %i.bg = icmp sgt i16 %i.bc, 0
  br i1 %i.bg, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %._crit_edge68
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %i.bi = phi i16 [ %i.bc, %.lr.ph.i ], [ %i.bw, %bb.e ] ; 5 uses
  %i.bj = zext nneg i16 %i.bi to i64
  %i.bk = add nuw nsw i64 %i.bj, 4294967295
  %i.bl = and i64 %i.bk, 4294967295
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.d, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

bb.d:                                             ; preds = %bb.c
  %i.bp = add nsw i16 %i.bi, -1
  store i16 %i.bp, ptr %0, align 4
  %i.bq = sext i16 %i.bi to i64
  %i.br = add nsw i64 %i.bq, 4294967294
  %i.bs = and i64 %i.br, 4294967294
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.e, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

bb.e:                                             ; preds = %bb.d
  %i.bw = add nsw i16 %i.bi, -2                   ; 2 uses
  store i16 %i.bw, ptr %0, align 4
  %i.bx = icmp sgt i16 %i.bi, 2
  br i1 %i.bx, label %bb.c, label %.critedge.thread3.i, !llvm.loop !10

.critedge.i:                                      ; preds = %._crit_edge68
  %i.by = icmp eq i16 %i.bc, 0
  br i1 %i.by, label %.critedge.thread3.i, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.e, %.critedge.i
  store i16 0, ptr %i.bd, align 2
  br label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

_ZN6icu_7817double_conversion6Bignum5ClampEv.exit: ; preds = %bb.c, %bb.d, %.critedge.i, %.critedge.thread3.i
  ret void

bb.f:                                             ; preds = %.lr.ph67, %._crit_edge
  %indvars.iv101 = phi i64 [ %i.ar, %.lr.ph67 ], [ %indvars.iv.next102, %._crit_edge ] ; 3 uses
  %indvars.iv92.in = phi i32 [ %.lcssa109, %.lr.ph67 ], [ %indvars.iv92, %._crit_edge ]
  %.266 = phi i64 [ %.0.lcssa, %.lr.ph67 ], [ %i.dl, %._crit_edge ] ; 3 uses
  %indvars.iv92 = add i32 %indvars.iv92.in, 1     ; 2 uses
  %indvars103 = trunc i64 %indvars.iv101 to i32
  %i.bz = load i16, ptr %0, align 4               ; 3 uses
  %i.ca = sext i16 %i.bz to i32                   ; 3 uses
  %i.cb = add nsw i32 %i.ca, -1
  %i.cc = sub nsw i32 %indvars103, %i.cb
  %i.cd = icmp slt i32 %i.cc, %i.ca
  br i1 %i.cd, label %.lr.ph63.preheader, label %._crit_edge

.lr.ph63.preheader:                               ; preds = %bb.f
  %i.ce = sub i32 %indvars.iv92, %i.ca
  %i.cf = sext i32 %i.ce to i64                   ; 4 uses
  %i.cg = sext i16 %i.bz to i64                   ; 2 uses
  %i.ch = sext i16 %i.bz to i64                   ; 3 uses
  %i.ci = sub nsw i64 %i.cg, %i.cf                ; 3 uses
  %min.iters.check142 = icmp ult i64 %i.ci, 4
  br i1 %min.iters.check142, label %.lr.ph63.preheader162, label %vector.ph143

vector.ph143:                                     ; preds = %.lr.ph63.preheader
  %n.vec144 = and i64 %i.ci, -4                   ; 4 uses
  %i.cj = sub nsw i64 %i.ch, %n.vec144
  %i.ck = add nsw i64 %n.vec144, %i.cf
  %i.cl = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.266, i64 0
  %invariant.gep176 = getelementptr [4 x i8], ptr %invariant.gep119, i64 %i.cf
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph143
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next155, %vector.body145 ] ; 3 uses
  %vec.phi147 = phi <2 x i64> [ %i.cl, %vector.ph143 ], [ %i.cx, %vector.body145 ]
  %vec.phi148 = phi <2 x i64> [ zeroinitializer, %vector.ph143 ], [ %i.cy, %vector.body145 ]
  %i.cm = sub i64 %i.ch, %index146
  %i.cn = getelementptr [4 x i8], ptr %invariant.gep117, i64 %i.cm ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 -4
  %i.cp = getelementptr i8, ptr %i.cn, i64 -12
  %wide.load149 = load <2 x i32>, ptr %i.co, align 4
  %wide.load150 = load <2 x i32>, ptr %i.cp, align 4
  %reverse151 = shufflevector <2 x i32> %wide.load149, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %reverse152 = shufflevector <2 x i32> %wide.load150, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %gep177 = getelementptr [4 x i8], ptr %invariant.gep176, i64 %index146 ; 2 uses
  %i.cq = getelementptr i8, ptr %gep177, i64 8
  %wide.load153 = load <2 x i32>, ptr %gep177, align 4
  %wide.load154 = load <2 x i32>, ptr %i.cq, align 4
  %i.cr = zext <2 x i32> %reverse151 to <2 x i64>
  %i.cs = zext <2 x i32> %reverse152 to <2 x i64>
  %i.ct = zext <2 x i32> %wide.load153 to <2 x i64>
  %i.cu = zext <2 x i32> %wide.load154 to <2 x i64>
  %i.cv = mul nuw <2 x i64> %i.ct, %i.cr
  %i.cw = mul nuw <2 x i64> %i.cu, %i.cs
  %i.cx = add <2 x i64> %i.cv, %vec.phi147        ; 2 uses
  %i.cy = add <2 x i64> %i.cw, %vec.phi148        ; 2 uses
  %index.next155 = add nuw i64 %index146, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next155, %n.vec144
  br i1 %i.cz, label %middle.block156, label %vector.body145, !llvm.loop !42

middle.block156:                                  ; preds = %vector.body145
  %bin.rdx157 = add <2 x i64> %i.cy, %i.cx
  %i.da = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx157) ; 2 uses
  %cmp.n158 = icmp eq i64 %i.ci, %n.vec144
  br i1 %cmp.n158, label %._crit_edge, label %.lr.ph63.preheader162

.lr.ph63.preheader162:                            ; preds = %.lr.ph63.preheader, %middle.block156
  %indvars.iv96.in.ph = phi i64 [ %i.ch, %.lr.ph63.preheader ], [ %i.cj, %middle.block156 ]
  %indvars.iv94.ph = phi i64 [ %i.cf, %.lr.ph63.preheader ], [ %i.ck, %middle.block156 ]
  %.362.ph = phi i64 [ %.266, %.lr.ph63.preheader ], [ %i.da, %middle.block156 ]
  br label %.lr.ph63

.lr.ph63:                                         ; preds = %.lr.ph63.preheader162, %.lr.ph63
  %indvars.iv96.in = phi i64 [ %indvars.iv96, %.lr.ph63 ], [ %indvars.iv96.in.ph, %.lr.ph63.preheader162 ] ; 2 uses
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %.lr.ph63 ], [ %indvars.iv94.ph, %.lr.ph63.preheader162 ] ; 2 uses
  %.362 = phi i64 [ %i.dg, %.lr.ph63 ], [ %.362.ph, %.lr.ph63.preheader162 ]
  %indvars.iv96 = add nsw i64 %indvars.iv96.in, -1
  %gep118 = getelementptr [4 x i8], ptr %invariant.gep117, i64 %indvars.iv96.in
  %i.db = load i32, ptr %gep118, align 4
  %gep120 = getelementptr [4 x i8], ptr %invariant.gep119, i64 %indvars.iv94
  %i.dc = load i32, ptr %gep120, align 4
  %i.dd = zext i32 %i.db to i64
  %i.de = zext i32 %i.dc to i64
  %i.df = mul nuw i64 %i.de, %i.dd
  %i.dg = add i64 %i.df, %.362                    ; 2 uses
  %indvars.iv.next95 = add nsw i64 %indvars.iv94, 1 ; 2 uses
  %i.dh = icmp slt i64 %indvars.iv.next95, %i.cg
  br i1 %i.dh, label %.lr.ph63, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph63, %middle.block156, %bb.f
  %.3.lcssa = phi i64 [ %.266, %bb.f ], [ %i.da, %middle.block156 ], [ %i.dg, %.lr.ph63 ] ; 2 uses
  %i.di = trunc i64 %.3.lcssa to i32
  %i.dj = and i32 %i.di, 268435455
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv101
  store i32 %i.dj, ptr %i.dk, align 4
  %i.dl = lshr i64 %.3.lcssa, 28
  %indvars.iv.next102 = add nsw i64 %indvars.iv101, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count
  br i1 %exitcond104.not, label %._crit_edge68, label %bb.f, !llvm.loop !44
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN6icu_7817double_conversion6Bignum17AssignPowerUInt16Eti(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) initializes((0, 4)) %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.b, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.c, align 4
  br label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit.sink.split

bb.c:                                             ; preds = %bb.a
  store i16 0, ptr %0, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 5 uses
  store i16 0, ptr %i.d, align 2
  %i.e = zext i16 %1 to i32                       ; 2 uses
  %i.f = and i32 %i.e, 1
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.h = mul nsw i32 %i.j, %2
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.04777 = phi i32 [ %i.j, %.lr.ph ], [ 0, %bb.c ]
  %.04876 = phi i16 [ %i.i, %.lr.ph ], [ %1, %bb.c ]
  %i.i = lshr exact i16 %.04876, 1                ; 3 uses
  %i.j = add nuw nsw i32 %.04777, 1               ; 2 uses
  %i.k = zext nneg i16 %i.i to i32                ; 2 uses
  %i.l = and i32 %i.k, 1
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !45

._crit_edge:                                      ; preds = %.preheader.loopexit, %bb.c
  %.048.lcssa = phi i16 [ %1, %bb.c ], [ %i.i, %.preheader.loopexit ] ; 3 uses
  %.047.lcssa = phi i32 [ 0, %bb.c ], [ %i.h, %.preheader.loopexit ] ; 2 uses
  %.lcssa75 = phi i32 [ %i.e, %bb.c ], [ %i.k, %.preheader.loopexit ]
  %i.n = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %.lcssa75, i1 true) ; 2 uses
  %i.o = sub nuw nsw i32 32, %i.n
  %i.p = mul nsw i32 %i.o, %2
  %i.q = icmp sgt i32 %i.p, 3555
  br i1 %i.q, label %bb.d, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit

bb.d:                                             ; preds = %._crit_edge
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %._crit_edge, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %.042 = phi i32 [ %i.r, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit ], [ 1, %._crit_edge ] ; 3 uses
  %.not50 = icmp slt i32 %2, %.042
  %i.r = shl i32 %.042, 1
  br i1 %.not50, label %bb.e, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit, !llvm.loop !46

bb.e:                                             ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %i.s = ashr i32 %.042, 2                        ; 2 uses
  %i.t = zext i16 %.048.lcssa to i64              ; 9 uses
  %.not98 = icmp eq i32 %i.s, 0
  br i1 %.not98, label %._crit_edge90, label %.lr.ph89

.lr.ph89:                                         ; preds = %bb.e
  %i.u = or disjoint i32 %i.n, 32
  %i.v = zext nneg i32 %i.u to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph89, %bb.h
  %.087 = phi i1 [ false, %.lr.ph89 ], [ %.2, %bb.h ] ; 2 uses
  %.03986 = phi i64 [ %i.t, %.lr.ph89 ], [ %.241, %bb.h ] ; 2 uses
  %.14385 = phi i32 [ %i.s, %.lr.ph89 ], [ %i.ab, %bb.h ] ; 2 uses
  %i.w = mul nuw i64 %.03986, %.03986             ; 3 uses
  %i.x = and i32 %.14385, %2
  %.not53 = icmp eq i32 %i.x, 0
  br i1 %.not53, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = lshr i64 %i.w, %i.v
  %i.z = icmp ne i64 %i.y, 0                      ; 2 uses
  %i.aa = select i1 %i.z, i64 1, i64 %i.t
  %.140 = mul i64 %i.aa, %i.w
  %.1 = select i1 %i.z, i1 true, i1 %.087
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.241 = phi i64 [ %.140, %bb.g ], [ %i.w, %bb.f ] ; 3 uses
  %.2 = phi i1 [ %.1, %bb.g ], [ %.087, %bb.f ]   ; 2 uses
  %i.ab = ashr i32 %.14385, 1                     ; 3 uses
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = icmp ult i64 %.241, 4294967296
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %bb.f, label %._crit_edge90, !llvm.loop !47

._crit_edge90:                                    ; preds = %bb.h, %bb.e
  %.143.lcssa = phi i32 [ 0, %bb.e ], [ %i.ab, %bb.h ] ; 2 uses
  %.039.lcssa = phi i64 [ %i.t, %bb.e ], [ %.241, %bb.h ] ; 2 uses
  %.0.lcssa = phi i1 [ false, %bb.e ], [ %.2, %bb.h ]
  %.not6.i = icmp eq i64 %.039.lcssa, 0
  br i1 %.not6.i, label %_ZN6icu_7817double_conversion6Bignum12AssignUInt64Em.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge90
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.i

._crit_edge.i:                                    ; preds = %bb.i
  %indvars = trunc i64 %indvars.iv.next.i to i16  ; 2 uses
  store i16 %indvars, ptr %0, align 4
  br label %_ZN6icu_7817double_conversion6Bignum12AssignUInt64Em.exit

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %.057.i = phi i64 [ %.039.lcssa, %.lr.ph.i ], [ %i.aj, %bb.i ] ; 2 uses
  %i.ag = trunc i64 %.057.i to i32
  %i.ah = and i32 %i.ag, 268435455
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.i
  store i32 %i.ah, ptr %i.ai, align 4
  %i.aj = lshr i64 %.057.i, 28                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.i, !llvm.loop !5

_ZN6icu_7817double_conversion6Bignum12AssignUInt64Em.exit: ; preds = %._crit_edge90, %._crit_edge.i
  %i.ak = phi i16 [ 0, %._crit_edge90 ], [ %indvars, %._crit_edge.i ] ; 10 uses
  br i1 %.0.lcssa, label %bb.j, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit

bb.j:                                             ; preds = %_ZN6icu_7817double_conversion6Bignum12AssignUInt64Em.exit
  switch i16 %.048.lcssa, label %bb.l [
    i16 1, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit
    i16 0, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  store i16 0, ptr %0, align 4
  store i16 0, ptr %i.d, align 2
  br label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit

bb.l:                                             ; preds = %bb.j
  %i.al = icmp sgt i16 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i54, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit

.lr.ph.i54:                                       ; preds = %bb.l
  %wide.trip.count.i = zext nneg i16 %i.ak to i64 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.an = icmp eq i16 %i.ak, 1
  br i1 %i.an, label %.epil.preheader, label %.lr.ph.i54.new

.lr.ph.i54.new:                                   ; preds = %.lr.ph.i54
  %unroll_iter = and i64 %wide.trip.count.i, 32766
  br label %bb.m

.preheader.i.unr-lcssa:                           ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i54
  %indvars.iv.i55.epil.init = phi i64 [ 0, %.lr.ph.i54 ], [ %indvars.iv.next.i56.1, %.preheader.i.unr-lcssa ]
  %.017.i.epil.init = phi i64 [ 0, %.lr.ph.i54 ], [ %i.bm, %.preheader.i.unr-lcssa ]
  %lcmp.mod142 = trunc i16 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod142)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i55.epil.init ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = zext i32 %i.ap to i64
  %i.ar = mul nuw nsw i64 %i.aq, %i.t
  %i.as = add nuw nsw i64 %i.ar, %.017.i.epil.init ; 2 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = and i32 %i.at, 268435455
  store i32 %i.au, ptr %i.ao, align 4
  %i.av = lshr i64 %i.as, 28
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.lcssa136 = phi i64 [ %i.bm, %.preheader.i.unr-lcssa ], [ %i.av, %.epil.preheader ] ; 2 uses
  %.not18.i = icmp eq i64 %.lcssa136, 0
  br i1 %.not18.i, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit, label %.lr.ph20.i

bb.m:                                             ; preds = %bb.m, %.lr.ph.i54.new
  %indvars.iv.i55 = phi i64 [ 0, %.lr.ph.i54.new ], [ %indvars.iv.next.i56.1, %bb.m ] ; 3 uses
  %.017.i = phi i64 [ 0, %.lr.ph.i54.new ], [ %i.bm, %bb.m ]
  %niter = phi i64 [ 0, %.lr.ph.i54.new ], [ %niter.next.1, %bb.m ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i55 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = zext i32 %i.ax to i64
  %i.az = mul nuw nsw i64 %i.ay, %i.t
  %i.ba = add nuw nsw i64 %i.az, %.017.i          ; 2 uses
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 268435455
  store i32 %i.bc, ptr %i.aw, align 4
  %i.bd = lshr i64 %i.ba, 28
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i55
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = zext i32 %i.bg to i64
  %i.bi = mul nuw nsw i64 %i.bh, %i.t
end_hunk_1
