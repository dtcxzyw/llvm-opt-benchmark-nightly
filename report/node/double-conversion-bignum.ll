inline.NumInlined: 136
inline.NumDeleted: 16
begin_hunk_0_@_ZN6icu_7817double_conversion6Bignum15AssignHexStringENS0_6VectorIKcEE:bb.a
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
  %min.iters.check = icmp ult i16 %.pre67, 12
  br i1 %min.iters.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.o = sext i16 %i.d to i64
  %i.p = sext i16 %i.b to i64
  %i.q = sub nsw i64 %i.o, %i.p
  %i.r = and i64 %i.q, 4611686018427387896
  %diff.check = icmp eq i64 %i.r, 0
  br i1 %diff.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.ph

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
  %wide.load = load <4 x i32>, ptr %i.v, align 4
  %wide.load77 = load <4 x i32>, ptr %i.w, align 4
  %i.x = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.t ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -12
  %i.z = getelementptr i8, ptr %i.x, i64 -28
  store <4 x i32> %wide.load, ptr %i.y, align 4
  store <4 x i32> %wide.load77, ptr %i.z, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.m
  br i1 %cmp.n, label %.lr.ph20.i.loopexit, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader: ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i ], [ %i.s, %middle.block ]
  br label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #14
  unreachable

.lr.ph20.i.loopexit:                              ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i, %middle.block
  %.pre = load i16, ptr %0, align 4
  %.pre66 = load i16, ptr %i.a, align 2
  br label %.lr.ph20.i

.lr.ph20.i:                                       ; preds = %.lr.ph20.i.loopexit, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.ab = phi i16 [ %.pre66, %.lr.ph20.i.loopexit ], [ %i.b, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i ]
  %i.ac = phi i16 [ %.pre, %.lr.ph20.i.loopexit ], [ %.pre67, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ae = zext nneg i32 %i.h to i64
  %i.af = shl nuw nsw i64 %i.ae, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ad, i8 0, i64 %i.af, i1 false)
  %i.ag = trunc i32 %i.h to i16                   ; 2 uses
  %i.ah = add i16 %i.ac, %i.ag                    ; 2 uses
  store i16 %i.ah, ptr %0, align 4
  %i.ai = sub i16 %i.ab, %i.ag                    ; 2 uses
  store i16 %i.ai, ptr %i.a, align 2
  %.pre68 = load i16, ptr %i.c, align 2
  br label %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i ], [ %indvars.iv.i.ph, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.aj = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.ak = load i32, ptr %i.aj, align 4
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i32 %i.ak, ptr %gep.i, align 4
  %i.al = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.al, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i, label %.lr.ph20.i.loopexit, !llvm.loop !24

_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit: ; preds = %bb.a, %.lr.ph20.i
  %i.am = phi i16 [ %i.d, %bb.a ], [ %.pre68, %.lr.ph20.i ]
  %i.an = phi i16 [ %i.b, %bb.a ], [ %i.ai, %.lr.ph20.i ]
  %i.ao = phi i16 [ %.pre67, %bb.a ], [ %i.ah, %.lr.ph20.i ] ; 2 uses
  %i.ap = sext i16 %i.ao to i32                   ; 3 uses
  %i.aq = sext i16 %i.an to i32                   ; 4 uses
  %i.ar = add nsw i32 %i.aq, %i.ap
  %i.as = load i16, ptr %1, align 4               ; 2 uses
  %i.at = sext i16 %i.as to i32
  %i.au = sext i16 %i.am to i32                   ; 3 uses
  %i.av = add nsw i32 %i.au, %i.at
  %.sroa.speculated35 = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 %i.av)
  %reass.sub = sub nsw i32 %.sroa.speculated35, %i.aq
  %i.aw = icmp sgt i32 %reass.sub, 127
  br i1 %i.aw, label %bb.d, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit

bb.d:                                             ; preds = %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit
  %i.ax = sub nsw i32 %i.au, %i.aq                ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, %i.ap
  br i1 %i.ay, label %.lr.ph, label %.preheader42

.lr.ph:                                           ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %i.az = sext i16 %i.ao to i64
  %i.ba = shl nsw i64 %i.az, 2
  %i.bb = getelementptr i8, ptr %0, i64 %i.ba
  %scevgep = getelementptr i8, ptr %i.bb, i64 4
  %i.bc = xor i32 %i.aq, -1
  %i.bd = add nsw i32 %i.bc, %i.au
  %i.be = sub nsw i32 %i.bd, %i.ap
  %i.bf = zext i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = add nuw nsw i64 %i.bg, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bh, i1 false)
  %.pre69 = load i16, ptr %1, align 4
  br label %.preheader42

.preheader42:                                     ; preds = %.lr.ph, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %i.bi = phi i16 [ %.pre69, %.lr.ph ], [ %i.as, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit ]
  %i.bj = icmp sgt i16 %i.bi, 0
  br i1 %i.bj, label %.lr.ph47, label %._crit_edge

.lr.ph47:                                         ; preds = %.preheader42
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bm = sext i32 %i.ax to i64
  br label %bb.e

.preheader:                                       ; preds = %bb.g
  %i.bn = trunc nsw i64 %indvars.iv.next59 to i32
  %.not49 = icmp eq i32 %i.cb, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph52

.lr.ph52:                                         ; preds = %.preheader
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %sext = shl i64 %indvars.iv.next59, 32
  %2 = ashr exact i64 %sext, 32
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph47, %bb.g
  %indvars.iv58 = phi i64 [ %i.bm, %.lr.ph47 ], [ %indvars.iv.next59, %bb.g ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.046 = phi i32 [ 0, %.lr.ph47 ], [ %i.cb, %bb.g ]
  %i.bp = load i16, ptr %0, align 4
  %i.bq = sext i16 %i.bp to i64
  %i.br = icmp slt i64 %indvars.iv58, %i.bq
  br i1 %i.br, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %indvars.iv58
  %i.bt = load i32, ptr %i.bs, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bu = phi i32 [ %i.bt, %bb.f ], [ 0, %bb.e ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = add i32 %i.bu, %.046
  %i.by = add i32 %i.bx, %i.bw                    ; 2 uses
  %i.bz = and i32 %i.by, 268435455
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %indvars.iv58
  store i32 %i.bz, ptr %i.ca, align 4
  %i.cb = lshr i32 %i.by, 28                      ; 3 uses
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, 1 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cc = load i16, ptr %1, align 4
  %i.cd = sext i16 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next, %i.cd
  br i1 %i.ce, label %bb.e, label %.preheader, !llvm.loop !25

bb.h:                                             ; preds = %.lr.ph52, %bb.j
  %indvars.iv63 = phi i64 [ %2, %.lr.ph52 ], [ %indvars.iv.next64, %bb.j ] ; 4 uses
  %.151 = phi i32 [ %i.cb, %.lr.ph52 ], [ %i.co, %bb.j ]
  %i.cf = load i16, ptr %0, align 4
  %i.cg = sext i16 %i.cf to i64
  %i.ch = icmp slt i64 %indvars.iv63, %i.cg
  br i1 %i.ch, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %indvars.iv63
  %i.cj = load i32, ptr %i.ci, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ck = phi i32 [ %i.cj, %bb.i ], [ 0, %bb.h ]
  %i.cl = add i32 %i.ck, %.151                    ; 2 uses
  %i.cm = and i32 %i.cl, 268435455
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %indvars.iv63
  store i32 %i.cm, ptr %i.cn, align 4
  %i.co = lshr i32 %i.cl, 28                      ; 2 uses
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, 1 ; 2 uses
  %.not = icmp eq i32 %i.co, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.h, !llvm.loop !26

._crit_edge.loopexit:                             ; preds = %bb.j
  %i.cp = trunc nsw i64 %indvars.iv.next64 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader42, %._crit_edge.loopexit, %.preheader
  %.141.lcssa = phi i32 [ %i.bn, %.preheader ], [ %i.cp, %._crit_edge.loopexit ], [ %i.ax, %.preheader42 ]
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
  %min.iters.check = icmp ult i16 %i.i, 12
  br i1 %min.iters.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader29, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.p = sext i16 %i.d to i64
  %i.q = sext i16 %i.b to i64
  %i.r = sub nsw i64 %i.p, %i.q
  %i.s = and i64 %i.r, 4611686018427387896
  %diff.check = icmp eq i64 %i.s, 0
  br i1 %diff.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader29, label %vector.ph

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
  %wide.load = load <4 x i32>, ptr %i.w, align 4
  %wide.load28 = load <4 x i32>, ptr %i.x, align 4
  %i.y = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.u ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -12
  %i.aa = getelementptr i8, ptr %i.y, i64 -28
  store <4 x i32> %wide.load, ptr %i.z, align 4
  store <4 x i32> %wide.load28, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.n
  br i1 %cmp.n, label %.preheader, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader29

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader29: ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph ], [ %i.t, %middle.block ]
  br label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #14
  unreachable

.preheader:                                       ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit, %middle.block, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader
  %i.ac = icmp sgt i32 %i.h, 0
  br i1 %i.ac, label %.lr.ph20, label %._crit_edge

.lr.ph20:                                         ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ae = zext nneg i32 %i.h to i64
  %i.af = shl nuw nsw i64 %i.ae, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ad, i8 0, i64 %i.af, i1 false)
  br label %._crit_edge

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader29, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit ], [ %indvars.iv.ph, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader29 ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ag = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.ah, ptr %gep, align 4
  %i.ai = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ai, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit, label %.preheader, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph20, %.preheader
  %i.aj = load i16, ptr %0, align 4
  %i.ak = trunc i32 %i.h to i16                   ; 2 uses
  %i.al = add i16 %i.aj, %i.ak
  store i16 %i.al, ptr %0, align 4
  %i.am = load i16, ptr %i.a, align 2
  %i.an = sub i16 %i.am, %i.ak
  store i16 %i.an, ptr %i.a, align 2
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
  %min.iters.check = icmp ult i16 %i.i, 12
  br i1 %min.iters.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.p = sext i16 %i.d to i64
  %i.q = sext i16 %i.b to i64
  %i.r = sub nsw i64 %i.p, %i.q
  %i.s = and i64 %i.r, 4611686018427387896
  %diff.check = icmp eq i64 %i.s, 0
  br i1 %diff.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.ph

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
  %wide.load = load <4 x i32>, ptr %i.w, align 4
  %wide.load49 = load <4 x i32>, ptr %i.x, align 4
  %i.y = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.u ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -12
  %i.aa = getelementptr i8, ptr %i.y, i64 -28
  store <4 x i32> %wide.load, ptr %i.z, align 4
  store <4 x i32> %wide.load49, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.n
  br i1 %cmp.n, label %.lr.ph20.i.loopexit, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader: ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i ], [ %i.t, %middle.block ]
  br label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #14
  unreachable

.lr.ph20.i.loopexit:                              ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i, %middle.block
  %.pre = load i16, ptr %0, align 4
  %.pre39 = load i16, ptr %i.a, align 2
  br label %.lr.ph20.i

.lr.ph20.i:                                       ; preds = %.lr.ph20.i.loopexit, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.ac = phi i16 [ %.pre39, %.lr.ph20.i.loopexit ], [ %i.b, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i ]
  %i.ad = phi i16 [ %.pre, %.lr.ph20.i.loopexit ], [ %i.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = zext nneg i32 %i.h to i64
  %i.ag = shl nuw nsw i64 %i.af, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ag, i1 false)
  %i.ah = trunc i32 %i.h to i16                   ; 2 uses
  %i.ai = add i16 %i.ad, %i.ah
  store i16 %i.ai, ptr %0, align 4
  %i.aj = sub i16 %i.ac, %i.ah                    ; 2 uses
  store i16 %i.aj, ptr %i.a, align 2
  %.pre40 = load i16, ptr %i.c, align 2
  br label %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i ], [ %indvars.iv.i.ph, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ak = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.al = load i32, ptr %i.ak, align 4
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i32 %i.al, ptr %gep.i, align 4
  %i.am = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.am, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i, label %.lr.ph20.i.loopexit, !llvm.loop !30

_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit: ; preds = %bb.a, %.lr.ph20.i
  %i.an = phi i16 [ %i.b, %bb.a ], [ %i.aj, %.lr.ph20.i ]
  %i.ao = phi i16 [ %i.d, %bb.a ], [ %.pre40, %.lr.ph20.i ]
  %i.ap = sext i16 %i.ao to i32
  %i.aq = sext i16 %i.an to i32
  %i.ar = sub nsw i32 %i.ap, %i.aq                ; 2 uses
  %i.as = load i16, ptr %1, align 4
  %i.at = icmp sgt i16 %i.as, 0
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aw = sext i32 %i.ar to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.au, i64 %i.aw
  br label %bb.d

.preheader:                                       ; preds = %bb.d
  %i.ax = icmp sgt i32 %i.be, -1
  br i1 %i.ax, label %._crit_edge, label %.lr.ph32

.lr.ph32:                                         ; preds = %.preheader
  %2 = and i64 %indvars.iv.next, 4294967295
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.az = sext i32 %i.ar to i64
  %invariant.gep47 = getelementptr [4 x i8], ptr %i.ay, i64 %i.az
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.028 = phi i32 [ 0, %.lr.ph ], [ %i.bg, %bb.d ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.ba = load i32, ptr %gep, align 4
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
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
  %indvars.iv36 = phi i64 [ %2, %.lr.ph32 ], [ %indvars.iv.next37, %bb.e ] ; 2 uses
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

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.p, %vector.body ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.m, align 4  ; 2 uses
  %wide.load6 = load <4 x i32>, ptr %i.n, align 4 ; 2 uses
  %i.o = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.p = lshr <4 x i32> %wide.load6, %broadcast.splat ; 3 uses
  %i.q = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.o, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.r = shufflevector <4 x i32> %i.o, <4 x i32> %i.p, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.s = shl <4 x i32> %wide.load, %broadcast.splat5
  %i.t = shl <4 x i32> %wide.load6, %broadcast.splat5
  %i.u = add <4 x i32> %i.s, %i.q
  %i.v = add <4 x i32> %i.t, %i.r
  %i.w = and <4 x i32> %i.u, splat (i32 268435455)
  %i.x = and <4 x i32> %i.v, splat (i32 268435455)
  store <4 x i32> %i.w, ptr %i.m, align 4
  store <4 x i32> %i.x, ptr %i.n, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.p, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.014.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.ab, %scalar.ph ] ; 2 uses
  %.not.i = icmp eq i32 %.lcssa, 0
  br i1 %.not.i, label %_ZN6icu_7817double_conversion6Bignum15BigitsShiftLeftEi.exit, label %bb.d

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.014.i = phi i32 [ %i.ab, %scalar.ph ], [ %.014.i.ph, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %i.ab = lshr i32 %i.aa, %i.l                    ; 2 uses
  %i.ac = shl i32 %i.aa, %i.h
  %i.ad = add i32 %i.ac, %.014.i
  %i.ae = and i32 %i.ad, 268435455
  store i32 %i.ae, ptr %i.z, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !34

bb.d:                                             ; preds = %._crit_edge.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %wide.trip.count.i
  store i32 %.lcssa, ptr %i.af, align 4
  %i.ag = add nuw nsw i16 %i.a, 1
  store i16 %i.ag, ptr %0, align 4
  br label %_ZN6icu_7817double_conversion6Bignum15BigitsShiftLeftEi.exit

_ZN6icu_7817double_conversion6Bignum15BigitsShiftLeftEi.exit: ; preds = %bb.d, %._crit_edge.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_7817double_conversion6Bignum15BigitsShiftLeftEi(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4                ; 4 uses
  %i.b = icmp sgt i16 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i16 %i.a to i64    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = sub nsw i32 28, %1                       ; 2 uses
  %min.iters.check = icmp ult i16 %i.a, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 32760        ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert19 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat20 = shufflevector <4 x i32> %broadcast.splatinsert19, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.h, %vector.body ]
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.e, align 4  ; 2 uses
  %wide.load21 = load <4 x i32>, ptr %i.f, align 4 ; 2 uses
  %i.g = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.h = lshr <4 x i32> %wide.load21, %broadcast.splat ; 3 uses
  %i.i = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.g, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.j = shufflevector <4 x i32> %i.g, <4 x i32> %i.h, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.k = shl <4 x i32> %wide.load, %broadcast.splat20
  %i.l = shl <4 x i32> %wide.load21, %broadcast.splat20
  %i.m = add <4 x i32> %i.k, %i.i
  %i.n = add <4 x i32> %i.l, %i.j
  %i.o = and <4 x i32> %i.m, splat (i32 268435455)
  %i.p = and <4 x i32> %i.n, splat (i32 268435455)
  store <4 x i32> %i.o, ptr %i.e, align 4
  store <4 x i32> %i.p, ptr %i.f, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.h, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

end_hunk_0
