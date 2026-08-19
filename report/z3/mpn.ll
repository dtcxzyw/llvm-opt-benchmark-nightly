inline.NumInlined: 115
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK11mpn_manager13div_normalizeEPKjjS1_jR7sbufferIjLj16EES4_:bb.a
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 -12
  %i.hk = getelementptr inbounds i8, ptr %i.hi, i64 -28
  %wide.load194 = load <4 x i32>, ptr %i.hj, align 4, !tbaa !8
  %wide.load195 = load <4 x i32>, ptr %i.hk, align 4, !tbaa !8
  %i.hl = lshr <4 x i32> %wide.load194, %broadcast.splat189
  %i.hm = lshr <4 x i32> %wide.load195, %broadcast.splat189
  %i.hn = or disjoint <4 x i32> %i.hl, %i.he
  %i.ho = or disjoint <4 x i32> %i.hm, %i.hf
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.gy ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %i.hp, i64 -12
  %i.hr = getelementptr inbounds i8, ptr %i.hp, i64 -28
  store <4 x i32> %i.hn, ptr %i.hq, align 4, !tbaa !8
  store <4 x i32> %i.ho, ptr %i.hr, align 4, !tbaa !8
  %index.next196 = add nuw i64 %index191, 8       ; 2 uses
  %i.hs = icmp eq i64 %index.next196, %n.vec185
  br i1 %i.hs, label %middle.block197, label %vector.body190, !llvm.loop !61

middle.block197:                                  ; preds = %vector.body190
  %cmp.n198 = icmp eq i64 %n.vec185, %i.gm
  br i1 %cmp.n198, label %._crit_edge106, label %scalar.ph182.preheader

scalar.ph182.preheader:                           ; preds = %vector.memcheck178, %.lr.ph105, %middle.block197
  %indvars.iv115.ph = phi i64 [ %i.gm, %vector.memcheck178 ], [ %i.gm, %.lr.ph105 ], [ %i.gv, %middle.block197 ] ; 7 uses
  %.0.in102.ph = phi i32 [ %4, %vector.memcheck178 ], [ %4, %.lr.ph105 ], [ %i.gx, %middle.block197 ] ; 2 uses
  %i.ht = trunc nuw i64 %indvars.iv115.ph to i32
  %xtraiter241 = and i32 %i.ht, 1
  %lcmp.mod242.not = icmp eq i32 %xtraiter241, 0
  br i1 %lcmp.mod242.not, label %scalar.ph182.prol.loopexit, label %scalar.ph182.prol

scalar.ph182.prol:                                ; preds = %scalar.ph182.preheader
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv115.ph
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !8
  %i.hw = shl i32 %i.hv, %.064.lcssa
  %i.hx = add i32 %.0.in102.ph, -2
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.hy
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !8
  %i.ib = lshr i32 %i.ia, %i.fb
  %i.ic = or disjoint i32 %i.ib, %i.hw
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv115.ph
  store i32 %i.ic, ptr %i.id, align 4, !tbaa !8
  %indvars.iv.next116.prol = add nsw i64 %indvars.iv115.ph, -1
  %i.ie = trunc nuw i64 %indvars.iv115.ph to i32
  br label %scalar.ph182.prol.loopexit

scalar.ph182.prol.loopexit:                       ; preds = %scalar.ph182.prol, %scalar.ph182.preheader
  %indvars.iv115.unr = phi i64 [ %indvars.iv115.ph, %scalar.ph182.preheader ], [ %indvars.iv.next116.prol, %scalar.ph182.prol ]
  %.0.in102.unr = phi i32 [ %.0.in102.ph, %scalar.ph182.preheader ], [ %i.ie, %scalar.ph182.prol ]
  %i.if = icmp eq i64 %indvars.iv115.ph, 1
  br i1 %i.if, label %._crit_edge106, label %scalar.ph182

.lr.ph99:                                         ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99
  %indvars.iv = phi i64 [ %i.is, %.lr.ph99 ], [ %indvars.iv.unr, %.lr.ph99.prol.loopexit ] ; 4 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !8
  %i.ii = shl i32 %i.ih, %.064.lcssa
  %i.ij = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !8
  %i.im = lshr i32 %i.il, %i.fb
  %i.in = or disjoint i32 %i.im, %i.ii
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv
  store i32 %i.in, ptr %i.io, align 4, !tbaa !8
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ij
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !8
  %i.ir = shl i32 %i.iq, %.064.lcssa
  %i.is = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !8
  %i.iv = lshr i32 %i.iu, %i.fb
  %i.iw = or disjoint i32 %i.iv, %i.ir
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.ij
  store i32 %i.iw, ptr %i.ix, align 4, !tbaa !8
  %.not68.wide.1 = icmp eq i64 %i.is, 0
  br i1 %.not68.wide.1, label %._crit_edge, label %.lr.ph99, !llvm.loop !62

._crit_edge106:                                   ; preds = %scalar.ph182.prol.loopexit, %scalar.ph182, %middle.block197, %._crit_edge
  %i.iy = load i32, ptr %3, align 4, !tbaa !8
  %i.iz = shl i32 %i.iy, %.064.lcssa
  store i32 %i.iz, ptr %.pre, align 4, !tbaa !8
  br label %.loopexit

scalar.ph182:                                     ; preds = %scalar.ph182.prol.loopexit, %scalar.ph182
  %indvars.iv115 = phi i64 [ %indvars.iv.next116.1, %scalar.ph182 ], [ %indvars.iv115.unr, %scalar.ph182.prol.loopexit ] ; 5 uses
  %.0.in102 = phi i32 [ %i.jv, %scalar.ph182 ], [ %.0.in102.unr, %scalar.ph182.prol.loopexit ]
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv115
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !8
  %i.jc = shl i32 %i.jb, %.064.lcssa
  %i.jd = add i32 %.0.in102, -2
  %i.je = zext i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !8
  %i.jh = lshr i32 %i.jg, %i.fb
  %i.ji = or disjoint i32 %i.jh, %i.jc
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv115
  store i32 %i.ji, ptr %i.jj, align 4, !tbaa !8
  %indvars.iv.next116 = add nsw i64 %indvars.iv115, -1 ; 3 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next116
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !8
  %i.jm = shl i32 %i.jl, %.064.lcssa
  %i.jn = add i64 %indvars.iv115, 4294967294
  %i.jo = and i64 %i.jn, 4294967295
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !8
  %i.jr = lshr i32 %i.jq, %i.fb
  %i.js = or disjoint i32 %i.jr, %i.jm
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.next116
  store i32 %i.js, ptr %i.jt, align 4, !tbaa !8
  %indvars.iv.next116.1 = add nsw i64 %indvars.iv115, -2 ; 2 uses
  %i.ju = and i64 %indvars.iv.next116.1, 4294967295
  %.not69.1 = icmp eq i64 %i.ju, 0
  %i.jv = trunc nuw i64 %indvars.iv.next116 to i32
  br i1 %.not69.1, label %._crit_edge106, label %scalar.ph182, !llvm.loop !63

.loopexit:                                        ; preds = %scalar.ph217.prol.loopexit, %scalar.ph217, %middle.block226, %.preheader, %bb.l, %._crit_edge106
  %.1 = phi i32 [ 0, %bb.l ], [ %.064.lcssa, %._crit_edge106 ], [ 0, %.preheader ], [ 0, %middle.block226 ], [ 0, %scalar.ph217 ], [ 0, %scalar.ph217.prol.loopexit ]
  ret i32 %.1
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK11mpn_manager5div_1ER7sbufferIjLj16EEjPj(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.031 = add i32 %i.b, -1                        ; 2 uses
  %.not32 = icmp eq i32 %.031, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = zext i32 %2 to i64                       ; 3 uses
  %i.d = zext i32 %.031 to i64
  %.pre = load ptr, ptr %1, align 8, !tbaa !25
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret i1 true

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.r, %bb.f ] ; 3 uses
  %indvars.iv = phi i64 [ %i.d, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %.0.in33 = phi i32 [ %i.b, %.lr.ph ], [ %i.af, %bb.f ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw i64 %i.h, 32
  %i.j = add i32 %.0.in33, -2
  %i.k = zext i32 %i.j to i64                     ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8
  %i.n = zext i32 %i.m to i64
  %i.o = or disjoint i64 %i.i, %i.n               ; 3 uses
  %i.p = udiv i64 %i.o, %i.c                      ; 3 uses
  %.recomposed = urem i64 %i.o, %i.c              ; 2 uses
  %i.q = icmp ugt i64 %i.p, 4294967295
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.5, i32 noundef 260, ptr noundef nonnull @.str.6)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  %.pre36 = load ptr, ptr %1, align 8, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi ptr [ %.pre36, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.s = mul i64 %i.p, %i.c
  %i.t = icmp ugt i64 %i.s, %i.o
  %i.u = trunc i64 %.recomposed to i32
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.k ; 2 uses
  store i32 %i.u, ptr %i.v, align 4, !tbaa !8
  %i.w = lshr i64 %.recomposed, 32
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  store i32 %i.x, ptr %i.y, align 4, !tbaa !8
  %i.z = trunc i64 %i.p to i32                    ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.k ; 2 uses
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !8
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = add i32 %i.z, -1
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !8
  %i.ac = load i32, ptr %i.v, align 4, !tbaa !8
  %i.ad = add i32 %i.ac, %2
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ae = and i64 %indvars.iv.next, 4294967295
  %.not = icmp eq i64 %i.ae, 0
  %i.af = trunc nuw i64 %indvars.iv to i32
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !31
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK11mpn_manager5div_nER7sbufferIjLj16EERKS1_PjS5_S2_S2_(ptr nofree nonnull readnone align 1 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(80) %5, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(80) %6) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29   ; 14 uses
  %i.e = add i32 %i.d, 1                          ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !29   ; 4 uses
  %i.h = icmp ugt i32 %i.e, %i.g
  br i1 %i.h, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i, %.preheader.i
  %i.k = phi i32 [ %i.g, %.preheader.i ], [ %i.av, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i ] ; 2 uses
  %.01320.i = phi i32 [ %i.g, %.preheader.i ], [ %i.aw, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i ] ; 2 uses
  %i.l = load i32, ptr %i.i, align 4, !tbaa !30   ; 2 uses
  %.not.i.i = icmp ult i32 %i.k, %i.l
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !25
  br label %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = shl i32 %i.l, 1                          ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 2
  %i.p = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.o) ; 9 uses
  %i.q = load i32, ptr %i.f, align 8, !tbaa !29   ; 4 uses
  %.not.i.i.i = icmp eq i32 %i.q, 0
  %.pre.i.i.i = load ptr, ptr %5, align 8, !tbaa !25 ; 10 uses
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %.pre.i.i.i140 = ptrtoaddr ptr %.pre.i.i.i to i64
  %i.r = ptrtoaddr ptr %i.p to i64
  %wide.trip.count.i.i.i = zext i32 %i.q to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  %i.s = sub i64 %.pre.i.i.i140, %i.r
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <4 x i32>, ptr %i.u, align 4, !tbaa !8
  %wide.load141 = load <4 x i32>, ptr %i.v, align 4, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %wide.load, ptr %i.t, align 4, !tbaa !8
  store <4 x i32> %wide.load141, ptr %i.w, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.i.i.prol
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !8
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !8
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !65

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge.i.i.i, label %scalar.ph

._crit_edge.i.i.i:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.c
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i.i, %i.j
  %i.ad = icmp eq ptr %.pre.i.i.i, null
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i, %i.ad
  br i1 %or.cond.i.i.i.i, label %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i)
  %.pre2.pre.i.i = load i32, ptr %i.f, align 8, !tbaa !29
  br label %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !8
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !8
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.i.i.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !8
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.i.i.i.1
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.am = load i32, ptr %i.al, align 4, !tbaa !8
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !8
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.i.i.i.2
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !8
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !8
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.i.i.i, label %scalar.ph, !llvm.loop !66

_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i:         ; preds = %bb.d, %._crit_edge.i.i.i
  %.pre2.i.i = phi i32 [ %i.q, %._crit_edge.i.i.i ], [ %.pre2.pre.i.i, %bb.d ]
  store ptr %i.p, ptr %5, align 8, !tbaa !25
  store i32 %i.m, ptr %i.i, align 4, !tbaa !30
  br label %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i

_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i:      ; preds = %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i, %._crit_edge.i.i
  %i.aq = phi i32 [ %i.k, %._crit_edge.i.i ], [ %.pre2.i.i, %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i ]
  %i.ar = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.p, %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i ]
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.as
  store i32 0, ptr %i.at, align 4, !tbaa !8
  %i.au = load i32, ptr %i.f, align 8, !tbaa !29
  %i.av = add i32 %i.au, 1                        ; 2 uses
  store i32 %i.av, ptr %i.f, align 8, !tbaa !29
  %i.aw = add i32 %.01320.i, 1
  %exitcond.not.i = icmp eq i32 %.01320.i, %i.d
  br i1 %exitcond.not.i, label %_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit, label %bb.b, !llvm.loop !45

bb.e:                                             ; preds = %bb.a
  %i.ax = icmp ult i32 %i.e, %i.g
  br i1 %i.ax, label %.preheader17.i, label %_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit

.preheader17.i:                                   ; preds = %bb.e
  store i32 %i.e, ptr %i.f, align 8, !tbaa !29
  br label %_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit

_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit:          ; preds = %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i, %bb.e, %.preheader17.i
  %.not111 = icmp eq i32 %i.b, %i.d
  br i1 %.not111, label %._crit_edge, label %.lr.ph112

.lr.ph112:                                        ; preds = %_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit
  %i.ay = xor i32 %i.d, -1
  %i.az = add i32 %i.b, %i.ay                     ; 2 uses
  %i.ba = add i32 %i.d, -1
  %i.bb = zext i32 %i.ba to i64
  %i.bc = add i32 %i.d, -2
  %i.bd = zext i32 %i.bc to i64
  %.not5572.i = icmp eq i32 %i.d, 0
  %wide.trip.count63.i = zext i32 %i.d to i64     ; 3 uses
  %.not.i = icmp eq i32 %i.e, 0                   ; 2 uses
  %i.be = zext i32 %i.e to i64                    ; 9 uses
  %i.bf = add i32 %i.d, 2                         ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.d, i32 %i.e)
  %wide.trip.count.i97 = zext i32 %.sroa.speculated.i to i64 ; 2 uses
  %i.bj = zext i32 %i.az to i64
  %i.bk = add nsw i64 %i.be, -1                   ; 2 uses
  %xtraiter174 = and i64 %wide.trip.count63.i, 1
  %i.bl = icmp eq i32 %i.d, 1
  %unroll_iter = and i64 %wide.trip.count63.i, 4294967294
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  %lcmp.mod176 = trunc i32 %i.d to i1
  %min.iters.check145 = icmp ult i32 %i.e, 12
  %i.bm = trunc i64 %i.bk to i32
  %7 = sub i32 %i.d, %i.b
  %i.bn = icmp ugt i64 %i.bk, 4294967295
  %n.vec147 = and i64 %i.be, 4294967288           ; 3 uses
  %cmp.n154 = icmp eq i64 %n.vec147, %i.be
  %xtraiter180 = and i64 %i.be, 3                 ; 2 uses
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  br label %bb.f

._crit_edge:                                      ; preds = %.loopexit, %_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit
  ret i1 true

bb.f:                                             ; preds = %.lr.ph112, %.loopexit
  %indvar = phi i32 [ 0, %.lr.ph112 ], [ %indvar.next, %.loopexit ] ; 3 uses
  %indvars.iv117 = phi i64 [ %i.bj, %.lr.ph112 ], [ %indvars.iv.next118, %.loopexit ] ; 13 uses
  %i.bo = sub i32 %i.az, %indvar
  %i.bp = zext i32 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 2
  %i.br = trunc nuw i64 %indvars.iv117 to i32
  %i.bs = add i32 %i.d, %i.br                     ; 3 uses
  %i.bt = load ptr, ptr %1, align 8, !tbaa !25    ; 4 uses
  %i.bu = zext i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !8
  %i.bx = zext i32 %i.bw to i64
  %i.by = shl nuw i64 %i.bx, 32
  %i.bz = add i32 %i.bs, -1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !8
  %i.cd = zext i32 %i.cc to i64
  %i.ce = or disjoint i64 %i.by, %i.cd            ; 2 uses
  %i.cf = load ptr, ptr %2, align 8, !tbaa !25    ; 5 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.bb
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !8
  %i.ci = zext i32 %i.ch to i64                   ; 3 uses
  %i.cj = udiv i64 %i.ce, %i.ci
  %i.ck = urem i64 %i.ce, %i.ci
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.bd
  %i.cm = add i32 %i.bs, -2
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.cn
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.066 = phi i64 [ %i.cj, %bb.f ], [ %i.cy, %bb.i ] ; 4 uses
  %.065 = phi i64 [ %i.ck, %bb.f ], [ %i.cz, %bb.i ] ; 2 uses
  %i.cp = icmp ugt i64 %.066, 4294967295
  br i1 %i.cp, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cq = load i32, ptr %i.cl, align 4, !tbaa !8
  %i.cr = zext i32 %i.cq to i64
  %i.cs = mul nuw i64 %.066, %i.cr
  %i.ct = shl nuw i64 %.065, 32
  %i.cu = load i32, ptr %i.co, align 4, !tbaa !8
  %i.cv = zext i32 %i.cu to i64
  %i.cw = or disjoint i64 %i.ct, %i.cv
  %i.cx = icmp ugt i64 %i.cs, %i.cw
  br i1 %i.cx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cy = add i64 %.066, -1                       ; 2 uses
  %i.cz = add nuw nsw i64 %.065, %i.ci            ; 2 uses
  %i.da = icmp samesign ult i64 %i.cz, 4294967296
  br i1 %i.da, label %bb.g, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1 = phi i64 [ %i.cy, %bb.i ], [ %.066, %bb.h ] ; 2 uses
  %i.db = trunc i64 %.1 to i32                    ; 3 uses
  %i.dc = load ptr, ptr %5, align 8, !tbaa !25    ; 8 uses
  store i32 0, ptr %i.dc, align 4
  br i1 %.not5572.i, label %.lr.ph.preheader.i, label %.lr.ph53.split.us.preheader.i

.lr.ph53.split.us.preheader.i:                    ; preds = %bb.j
  %i.dd = and i64 %.1, 4294967295                 ; 3 uses
  br i1 %i.bl, label %.lr.ph53.split.us.i.epil.preheader, label %.lr.ph53.split.us.i

.lr.ph53.split.us.i:                              ; preds = %.lr.ph53.split.us.preheader.i, %bb.k
  %i.de = phi i32 [ %.sink.i.1, %bb.k ], [ 0, %.lr.ph53.split.us.preheader.i ]
  %indvars.iv60.i = phi i64 [ %i.dv, %bb.k ], [ 0, %.lr.ph53.split.us.preheader.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.k ], [ 0, %.lr.ph53.split.us.preheader.i ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv60.i
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !8  ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph53.split.us.i.1, label %.preheader.us.i

.lr.ph53.split.us.i.1:                            ; preds = %.lr.ph53.split.us.i, %.preheader.us.i
  %.sink.i = phi i32 [ %i.ee, %.preheader.us.i ], [ 0, %.lr.ph53.split.us.i ] ; 2 uses
  %i.di = or disjoint i64 %indvars.iv60.i, 1      ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.di
  store i32 %.sink.i, ptr %i.dj, align 4, !tbaa !8
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.di
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !8  ; 2 uses
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.k, label %.preheader.us.i.1

.preheader.us.i.1:                                ; preds = %.lr.ph53.split.us.i.1
  %i.dn = zext i32 %i.dl to i64
  %i.do = mul nuw i64 %i.dd, %i.dn
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.di
  %i.dq = zext i32 %.sink.i to i64
  %i.dr = add nuw i64 %i.do, %i.dq                ; 2 uses
  %i.ds = trunc i64 %i.dr to i32
  store i32 %i.ds, ptr %i.dp, align 4, !tbaa !8
  %i.dt = lshr i64 %i.dr, 32
  %i.du = trunc nuw i64 %i.dt to i32
  br label %bb.k

bb.k:                                             ; preds = %.preheader.us.i.1, %.lr.ph53.split.us.i.1
  %.sink.i.1 = phi i32 [ %i.du, %.preheader.us.i.1 ], [ 0, %.lr.ph53.split.us.i.1 ] ; 3 uses
  %i.dv = add nuw nsw i64 %indvars.iv60.i, 2      ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dv
  store i32 %.sink.i.1, ptr %i.dw, align 4, !tbaa !8
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK11mpn_manager3mulEPKjjS1_jPj.exit.unr-lcssa, label %.lr.ph53.split.us.i, !llvm.loop !18

.preheader.us.i:                                  ; preds = %.lr.ph53.split.us.i
  %i.dx = zext i32 %i.dg to i64
  %i.dy = mul nuw i64 %i.dd, %i.dx
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv60.i
  %i.ea = zext i32 %i.de to i64
  %i.eb = add nuw i64 %i.dy, %i.ea                ; 2 uses
  %i.ec = trunc i64 %i.eb to i32
  store i32 %i.ec, ptr %i.dz, align 4, !tbaa !8
  %i.ed = lshr i64 %i.eb, 32
  %i.ee = trunc nuw i64 %i.ed to i32
  br label %.lr.ph53.split.us.i.1

_ZNK11mpn_manager3mulEPKjjS1_jPj.exit.unr-lcssa:  ; preds = %bb.k
  br i1 %lcmp.mod175.not, label %_ZNK11mpn_manager3mulEPKjjS1_jPj.exit, label %.lr.ph53.split.us.i.epil.preheader

.lr.ph53.split.us.i.epil.preheader:               ; preds = %_ZNK11mpn_manager3mulEPKjjS1_jPj.exit.unr-lcssa, %.lr.ph53.split.us.preheader.i
  %.epil.init = phi i32 [ 0, %.lr.ph53.split.us.preheader.i ], [ %.sink.i.1, %_ZNK11mpn_manager3mulEPKjjS1_jPj.exit.unr-lcssa ]
  %indvars.iv60.i.epil.init = phi i64 [ 0, %.lr.ph53.split.us.preheader.i ], [ %i.dv, %_ZNK11mpn_manager3mulEPKjjS1_jPj.exit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod176)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv60.i.epil.init
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !8  ; 2 uses
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %_ZNK11mpn_manager3mulEPKjjS1_jPj.exit.epilog-lcssa, label %.preheader.us.i.epil

.preheader.us.i.epil:                             ; preds = %.lr.ph53.split.us.i.epil.preheader
  %i.ei = zext i32 %i.eg to i64
  %i.ej = mul nuw i64 %i.dd, %i.ei
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv60.i.epil.init
  %i.el = zext i32 %.epil.init to i64
  %i.em = add nuw i64 %i.ej, %i.el                ; 2 uses
  %i.en = trunc i64 %i.em to i32
  store i32 %i.en, ptr %i.ek, align 4, !tbaa !8
  %i.eo = lshr i64 %i.em, 32
  %i.ep = trunc nuw i64 %i.eo to i32
  br label %_ZNK11mpn_manager3mulEPKjjS1_jPj.exit.epilog-lcssa

_ZNK11mpn_manager3mulEPKjjS1_jPj.exit.epilog-lcssa: ; preds = %.preheader.us.i.epil, %.lr.ph53.split.us.i.epil.preheader
  %.sink.i.epil = phi i32 [ %i.ep, %.preheader.us.i.epil ], [ 0, %.lr.ph53.split.us.i.epil.preheader ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv60.i.epil.init
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  store i32 %.sink.i.epil, ptr %i.er, align 4, !tbaa !8
  br label %_ZNK11mpn_manager3mulEPKjjS1_jPj.exit

_ZNK11mpn_manager3mulEPKjjS1_jPj.exit:            ; preds = %_ZNK11mpn_manager3mulEPKjjS1_jPj.exit.unr-lcssa, %_ZNK11mpn_manager3mulEPKjjS1_jPj.exit.epilog-lcssa
  br i1 %.not.i, label %_ZNK11mpn_manager3subEPKjjS1_jPjS2_.exit.thread, label %.lr.ph.preheader.i

_ZNK11mpn_manager3subEPKjjS1_jPjS2_.exit.thread:  ; preds = %_ZNK11mpn_manager3mulEPKjjS1_jPj.exit
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv117
  store i32 %i.db, ptr %i.es, align 4, !tbaa !8
  br label %.loopexit

.lr.ph.preheader.i:                               ; preds = %bb.j, %_ZNK11mpn_manager3mulEPKjjS1_jPj.exit
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv117 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.preheader.i
  %i.eu = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.fi, %bb.m ] ; 2 uses
  %indvars.iv.i70 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i71, %bb.m ] ; 5 uses
  %i.ev = icmp samesign ult i64 %indvars.iv.i70, %i.be
  br i1 %i.ev, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.i70
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !8
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.i70
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph.i, %bb.l
  %i.fa = phi i32 [ %i.ex, %bb.l ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.fb = phi i32 [ %i.ez, %bb.l ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.fc = sub i32 %i.fa, %i.fb                    ; 2 uses
  %i.fd = icmp ugt i32 %i.fb, %i.fa
  %i.fe = sub i32 %i.fc, %i.eu
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.i70
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !8
  %i.fg = icmp ugt i32 %i.eu, %i.fc
  %i.fh = or i1 %i.fd, %i.fg                      ; 2 uses
  %i.fi = zext i1 %i.fh to i32
  %indvars.iv.next.i71 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %exitcond.not.i72 = icmp eq i64 %indvars.iv.next.i71, %i.be
  br i1 %exitcond.not.i72, label %_ZNK11mpn_manager3subEPKjjS1_jPjS2_.exit, label %.lr.ph.i, !llvm.loop !13

_ZNK11mpn_manager3subEPKjjS1_jPjS2_.exit:         ; preds = %bb.m
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv117 ; 2 uses
  store i32 %i.db, ptr %i.fj, align 4, !tbaa !8
  br i1 %i.fh, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %_ZNK11mpn_manager3subEPKjjS1_jPjS2_.exit
  %i.fk = add i32 %i.db, -1
  store i32 %i.fk, ptr %i.fj, align 4, !tbaa !8
  %i.fl = load i32, ptr %i.bg, align 8, !tbaa !29 ; 4 uses
  %i.fm = icmp ugt i32 %i.bf, %i.fl
  br i1 %i.fm, label %.preheader.i74, label %bb.q

.preheader.i74:                                   ; preds = %bb.n, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i90
  %i.fn = phi i32 [ %i.gy, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i90 ], [ %i.fl, %bb.n ] ; 2 uses
  %.01320.i75 = phi i32 [ %i.gz, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i90 ], [ %i.fl, %bb.n ]
  %i.fo = load i32, ptr %i.bh, align 4, !tbaa !30 ; 2 uses
  %.not.i.i76 = icmp ult i32 %i.fn, %i.fo
  br i1 %.not.i.i76, label %._crit_edge.i.i92, label %bb.o

._crit_edge.i.i92:                                ; preds = %.preheader.i74
  %.pre.i.i93 = load ptr, ptr %6, align 8, !tbaa !25
  br label %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i90

bb.o:                                             ; preds = %.preheader.i74
  %i.fp = shl i32 %i.fo, 1                        ; 2 uses
  %i.fq = zext i32 %i.fp to i64
  %i.fr = shl nuw nsw i64 %i.fq, 2
  %i.fs = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.fr) ; 9 uses
  %i.ft = load i32, ptr %i.bg, align 8, !tbaa !29 ; 4 uses
  %.not.i.i.i77 = icmp eq i32 %i.ft, 0
  %.pre.i.i.i78 = load ptr, ptr %6, align 8, !tbaa !25 ; 10 uses
  br i1 %.not.i.i.i77, label %._crit_edge.i.i.i84, label %.lr.ph.i.i.i79

.lr.ph.i.i.i79:                                   ; preds = %bb.o
  %.pre.i.i.i78157 = ptrtoaddr ptr %.pre.i.i.i78 to i64
  %i.fu = ptrtoaddr ptr %i.fs to i64
  %wide.trip.count.i.i.i80 = zext i32 %i.ft to i64 ; 5 uses
  %min.iters.check160 = icmp ult i32 %i.ft, 8
  %i.fv = sub i64 %.pre.i.i.i78157, %i.fu
  %diff.check158 = icmp ugt i64 %i.fv, -32
  %or.cond171 = select i1 %min.iters.check160, i1 true, i1 %diff.check158
  br i1 %or.cond171, label %scalar.ph159.preheader, label %vector.ph161

vector.ph161:                                     ; preds = %.lr.ph.i.i.i79
  %n.vec162 = and i64 %wide.trip.count.i.i.i80, 4294967288 ; 3 uses
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph161
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next167, %vector.body163 ] ; 3 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %index164 ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i78, i64 %index164 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %wide.load165 = load <4 x i32>, ptr %i.fx, align 4, !tbaa !8
  %wide.load166 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store <4 x i32> %wide.load165, ptr %i.fw, align 4, !tbaa !8
  store <4 x i32> %wide.load166, ptr %i.fz, align 4, !tbaa !8
  %index.next167 = add nuw i64 %index164, 8       ; 2 uses
  %i.ga = icmp eq i64 %index.next167, %n.vec162
  br i1 %i.ga, label %middle.block168, label %vector.body163, !llvm.loop !67

middle.block168:                                  ; preds = %vector.body163
  %cmp.n169 = icmp eq i64 %n.vec162, %wide.trip.count.i.i.i80
  br i1 %cmp.n169, label %._crit_edge.i.i.i84, label %scalar.ph159.preheader

scalar.ph159.preheader:                           ; preds = %.lr.ph.i.i.i79, %middle.block168
  %indvars.iv.i.i.i81.ph = phi i64 [ 0, %.lr.ph.i.i.i79 ], [ %n.vec162, %middle.block168 ] ; 3 uses
  %xtraiter177 = and i64 %wide.trip.count.i.i.i80, 3 ; 2 uses
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %scalar.ph159.prol.loopexit, label %scalar.ph159.prol

scalar.ph159.prol:                                ; preds = %scalar.ph159.preheader, %scalar.ph159.prol
  %indvars.iv.i.i.i81.prol = phi i64 [ %indvars.iv.next.i.i.i82.prol, %scalar.ph159.prol ], [ %indvars.iv.i.i.i81.ph, %scalar.ph159.preheader ] ; 3 uses
  %prol.iter179 = phi i64 [ %prol.iter179.next, %scalar.ph159.prol ], [ 0, %scalar.ph159.preheader ]
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.i.i.i81.prol
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i78, i64 %indvars.iv.i.i.i81.prol
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !8
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !8
  %indvars.iv.next.i.i.i82.prol = add nuw nsw i64 %indvars.iv.i.i.i81.prol, 1 ; 2 uses
  %prol.iter179.next = add i64 %prol.iter179, 1   ; 2 uses
  %prol.iter179.cmp.not = icmp eq i64 %prol.iter179.next, %xtraiter177
  br i1 %prol.iter179.cmp.not, label %scalar.ph159.prol.loopexit, label %scalar.ph159.prol, !llvm.loop !68

scalar.ph159.prol.loopexit:                       ; preds = %scalar.ph159.prol, %scalar.ph159.preheader
  %indvars.iv.i.i.i81.unr = phi i64 [ %indvars.iv.i.i.i81.ph, %scalar.ph159.preheader ], [ %indvars.iv.next.i.i.i82.prol, %scalar.ph159.prol ]
  %i.ge = sub nsw i64 %indvars.iv.i.i.i81.ph, %wide.trip.count.i.i.i80
  %i.gf = icmp ugt i64 %i.ge, -4
  br i1 %i.gf, label %._crit_edge.i.i.i84, label %scalar.ph159

._crit_edge.i.i.i84:                              ; preds = %scalar.ph159.prol.loopexit, %scalar.ph159, %middle.block168, %bb.o
  %.not.i.i.i.i85 = icmp eq ptr %.pre.i.i.i78, %i.bi
  %i.gg = icmp eq ptr %.pre.i.i.i78, null
  %or.cond.i.i.i.i86 = or i1 %.not.i.i.i.i85, %i.gg
  br i1 %or.cond.i.i.i.i86, label %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i88, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i.i.i84
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i78)
  %.pre2.pre.i.i87 = load i32, ptr %i.bg, align 8, !tbaa !29
  br label %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i88

scalar.ph159:                                     ; preds = %scalar.ph159.prol.loopexit, %scalar.ph159
  %indvars.iv.i.i.i81 = phi i64 [ %indvars.iv.next.i.i.i82.3, %scalar.ph159 ], [ %indvars.iv.i.i.i81.unr, %scalar.ph159.prol.loopexit ] ; 6 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.i.i.i81
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i78, i64 %indvars.iv.i.i.i81
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !8
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !8
  %indvars.iv.next.i.i.i82 = add nuw nsw i64 %indvars.iv.i.i.i81, 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.next.i.i.i82
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i78, i64 %indvars.iv.next.i.i.i82
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !8
  store i32 %i.gm, ptr %i.gk, align 4, !tbaa !8
  %indvars.iv.next.i.i.i82.1 = add nuw nsw i64 %indvars.iv.i.i.i81, 2 ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.next.i.i.i82.1
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i78, i64 %indvars.iv.next.i.i.i82.1
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !8
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !8
  %indvars.iv.next.i.i.i82.2 = add nuw nsw i64 %indvars.iv.i.i.i81, 3 ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.next.i.i.i82.2
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i78, i64 %indvars.iv.next.i.i.i82.2
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !8
  store i32 %i.gs, ptr %i.gq, align 4, !tbaa !8
  %indvars.iv.next.i.i.i82.3 = add nuw nsw i64 %indvars.iv.i.i.i81, 4 ; 2 uses
  %exitcond.not.i.i.i83.3 = icmp eq i64 %indvars.iv.next.i.i.i82.3, %wide.trip.count.i.i.i80
  br i1 %exitcond.not.i.i.i83.3, label %._crit_edge.i.i.i84, label %scalar.ph159, !llvm.loop !69

_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i88:       ; preds = %bb.p, %._crit_edge.i.i.i84
  %.pre2.i.i89 = phi i32 [ %i.ft, %._crit_edge.i.i.i84 ], [ %.pre2.pre.i.i87, %bb.p ]
  store ptr %i.fs, ptr %6, align 8, !tbaa !25
  store i32 %i.fp, ptr %i.bh, align 4, !tbaa !30
  br label %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i90

_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i90:    ; preds = %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i88, %._crit_edge.i.i92
  %i.gt = phi i32 [ %i.fn, %._crit_edge.i.i92 ], [ %.pre2.i.i89, %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i88 ]
  %i.gu = phi ptr [ %.pre.i.i93, %._crit_edge.i.i92 ], [ %i.fs, %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i88 ]
  %i.gv = zext i32 %i.gt to i64
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.gv
  store i32 0, ptr %i.gw, align 4, !tbaa !8
  %i.gx = load i32, ptr %i.bg, align 8, !tbaa !29
  %i.gy = add i32 %i.gx, 1                        ; 2 uses
  store i32 %i.gy, ptr %i.bg, align 8, !tbaa !29
  %i.gz = add i32 %.01320.i75, 1                  ; 2 uses
  %exitcond.not.i91 = icmp eq i32 %i.gz, %i.bf
  br i1 %exitcond.not.i91, label %_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit94, label %.preheader.i74, !llvm.loop !45

bb.q:                                             ; preds = %bb.n
  %i.ha = icmp ult i32 %i.bf, %i.fl
  br i1 %i.ha, label %.preheader17.i73, label %_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit94

.preheader17.i73:                                 ; preds = %bb.q
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !29
  br label %_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit94

_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit94:        ; preds = %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i90, %bb.q, %.preheader17.i73
  %i.hb = load ptr, ptr %2, align 8, !tbaa !25
  %i.hc = load ptr, ptr %1, align 8, !tbaa !25    ; 8 uses
  %i.hd = ptrtoaddr ptr %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv117
  %i.hf = load ptr, ptr %6, align 8, !tbaa !25    ; 9 uses
  %i.hg = ptrtoaddr ptr %i.hf to i64
  br label %.lr.ph.i98

._crit_edge.i.loopexit:                           ; preds = %bb.u
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %wide.trip.count.i97
  store i32 %i.io, ptr %i.hh, align 4, !tbaa !8
  br i1 %.not.i, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %._crit_edge.i.loopexit
  br i1 %min.iters.check145, label %.lr.ph.preheader172, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %8 = add i32 %7, %indvar
  %i.hi = icmp ult i32 %8, %i.bm
  %i.hj = or i1 %i.hi, %i.bn
  br i1 %i.hj, label %.lr.ph.preheader172, label %vector.memcheck142

vector.memcheck142:                               ; preds = %vector.scevcheck
  %i.hk = add i64 %i.bq, %i.hd
  %i.hl = sub i64 %i.hg, %i.hk
  %diff.check143 = icmp ugt i64 %i.hl, -32
  br i1 %diff.check143, label %.lr.ph.preheader172, label %vector.body148

vector.body148:                                   ; preds = %vector.memcheck142, %vector.body148
  %index149 = phi i64 [ %index.next152, %vector.body148 ], [ 0, %vector.memcheck142 ] ; 3 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %index149 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %wide.load150 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !8
  %wide.load151 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !8
  %i.ho = add i64 %index149, %indvars.iv117
  %i.hp = and i64 %i.ho, 4294967295
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.hp ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store <4 x i32> %wide.load150, ptr %i.hq, align 4, !tbaa !8
  store <4 x i32> %wide.load151, ptr %i.hr, align 4, !tbaa !8
  %index.next152 = add nuw i64 %index149, 8       ; 2 uses
  %i.hs = icmp eq i64 %index.next152, %n.vec147
  br i1 %i.hs, label %middle.block153, label %vector.body148, !llvm.loop !70

middle.block153:                                  ; preds = %vector.body148
  br i1 %cmp.n154, label %.loopexit, label %.lr.ph.preheader172

.lr.ph.preheader172:                              ; preds = %vector.memcheck142, %vector.scevcheck, %.lr.ph.preheader, %middle.block153
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck142 ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec147, %middle.block153 ] ; 3 uses
  br i1 %lcmp.mod181.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader172, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader172 ] ; 3 uses
  %prol.iter182 = phi i64 [ %prol.iter182.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader172 ]
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.prol
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !8
  %i.hv = add i64 %indvars.iv.prol, %indvars.iv117
  %i.hw = and i64 %i.hv, 4294967295
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.hw
  store i32 %i.hu, ptr %i.hx, align 4, !tbaa !8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter182.next = add i64 %prol.iter182, 1   ; 2 uses
  %prol.iter182.cmp.not = icmp eq i64 %prol.iter182.next, %xtraiter180
  br i1 %prol.iter182.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !71

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader172
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader172 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.hy = sub nsw i64 %indvars.iv.ph, %i.be
  %i.hz = icmp ugt i64 %i.hy, -4
  br i1 %i.hz, label %.loopexit, label %.lr.ph

.lr.ph.i98:                                       ; preds = %bb.u, %_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit94
  %indvars.iv.i99 = phi i64 [ 0, %_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit94 ], [ %indvars.iv.next.i100, %bb.u ] ; 6 uses
  %.03645.i = phi i32 [ 0, %_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit94 ], [ %i.io, %bb.u ]
  %i.ia = icmp samesign ult i64 %indvars.iv.i99, %wide.trip.count63.i
  br i1 %i.ia, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i98
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv.i99
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i98
  %i.id = phi i32 [ %i.ic, %bb.r ], [ 0, %.lr.ph.i98 ] ; 2 uses
  %i.ie = icmp samesign ult i64 %indvars.iv.i99, %i.be
  br i1 %i.ie, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.i99
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ih = phi i32 [ %i.ig, %bb.t ], [ 0, %bb.s ]
  %i.ii = add i32 %i.ih, %i.id                    ; 3 uses
  %i.ij = icmp ult i32 %i.ii, %i.id
  %i.ik = add i32 %i.ii, %.03645.i                ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.i99
  store i32 %i.ik, ptr %i.il, align 4, !tbaa !8
  %i.im = icmp ult i32 %i.ik, %i.ii
  %i.in = or i1 %i.ij, %i.im
  %i.io = zext i1 %i.in to i32                    ; 2 uses
  %indvars.iv.next.i100 = add nuw nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %exitcond.not.i101 = icmp eq i64 %indvars.iv.next.i100, %wide.trip.count.i97
  br i1 %exitcond.not.i101, label %._crit_edge.i.loopexit, label %.lr.ph.i98, !llvm.loop !11

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !8
  %i.ir = add i64 %indvars.iv, %indvars.iv117
  %i.is = and i64 %i.ir, 4294967295
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.is
  store i32 %i.iq, ptr %i.it, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !8
  %i.iw = add i64 %indvars.iv.next, %indvars.iv117
  %i.ix = and i64 %i.iw, 4294967295
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.ix
  store i32 %i.iv, ptr %i.iy, align 4, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next.1
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !8
  %i.jb = add i64 %indvars.iv.next.1, %indvars.iv117
  %i.jc = and i64 %i.jb, 4294967295
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.jc
  store i32 %i.ja, ptr %i.jd, align 4, !tbaa !8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next.2
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !8
  %i.jg = add i64 %indvars.iv.next.2, %indvars.iv117
  %i.jh = and i64 %i.jg, 4294967295
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.jh
  store i32 %i.jf, ptr %i.ji, align 4, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.be
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !72

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block153, %._crit_edge.i.loopexit, %_ZNK11mpn_manager3subEPKjjS1_jPjS2_.exit.thread, %_ZNK11mpn_manager3subEPKjjS1_jPjS2_.exit
  %indvars.iv.next118 = add nsw i64 %indvars.iv117, -1
  %.not = icmp eq i64 %indvars.iv117, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.f, !llvm.loop !73
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK11mpn_manager15div_unnormalizeER7sbufferIjLj16EES2_jPj(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  br i1 %i.a, label %.preheader, label %.preheader27

.preheader27:                                     ; preds = %bb.a
  %.not = icmp eq i32 %i.c, 1
  %.pre = load ptr, ptr %1, align 8, !tbaa !25    ; 3 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader27
  %i.d = sub i32 32, %3
  br label %bb.c

.preheader:                                       ; preds = %bb.a
  %.not31 = icmp eq i32 %i.c, 0
  br i1 %.not31, label %.loopexit, label %.lr.ph30

.lr.ph30:                                         ; preds = %.preheader
  %i.e = load ptr, ptr %1, align 8, !tbaa !25
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph30, %bb.b
  %indvars.iv34 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next35, %bb.b ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv34
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv34
  store i32 %i.g, ptr %i.h, align 4, !tbaa !8
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %i.i = load i32, ptr %i.b, align 8, !tbaa !29
  %i.j = zext i32 %i.i to i64
  %i.k = icmp samesign ult i64 %indvars.iv.next35, %i.j
  br i1 %i.k, label %bb.b, label %.loopexit, !llvm.loop !74

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.l = zext i32 %i.z to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader27, %._crit_edge.loopexit
  %.lcssa = phi i64 [ %i.l, %._crit_edge.loopexit ], [ 0, %.preheader27 ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.lcssa
  %i.n = load i32, ptr %i.m, align 4, !tbaa !8
  %i.o = lshr i32 %i.n, %3
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.lcssa
  store i32 %i.o, ptr %i.p, align 4, !tbaa !8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !8
  %i.s = lshr i32 %i.r, %3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.next
  %i.u = load i32, ptr %i.t, align 4, !tbaa !8
  %i.v = shl i32 %i.u, %i.d
  %i.w = or disjoint i32 %i.v, %i.s
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store i32 %i.w, ptr %i.x, align 4, !tbaa !8
  %i.y = load i32, ptr %i.b, align 8, !tbaa !29
  %i.z = add i32 %i.y, -1                         ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = icmp samesign ult i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !75

.loopexit:                                        ; preds = %bb.b, %.preheader, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
