Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/bitmap?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@slow_bitmap_xor:bb.a
.lr.ph.prol:                                      ; preds = %.lr.ph.preheader15, %.lr.ph.prol
  %.09.prol = phi i64 [ %i.w, %.lr.ph.prol ], [ %.09.ph, %.lr.ph.preheader15 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader15 ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.09.prol
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.09.prol
  %i.t = load i64, ptr %i.s, align 8
  %i.u = xor i64 %i.t, %i.r
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.prol
  store i64 %i.u, ptr %i.v, align 8
  %i.w = add nuw nsw i64 %.09.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !24

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader15
  %.09.unr = phi i64 [ %.09.ph, %.lr.ph.preheader15 ], [ %i.w, %.lr.ph.prol ]
  %i.x = sub nsw i64 %.09.ph, %i.e
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.09 = phi i64 [ %i.ba, %.lr.ph ], [ %.09.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.09
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.09
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = xor i64 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09
  store i64 %i.ad, ptr %i.ae, align 8
  %i.af = add nuw nsw i64 %.09, 1                 ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.af
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = xor i64 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.af
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = add nuw nsw i64 %.09, 2                 ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.am
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = xor i64 %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.am
  store i64 %i.ar, ptr %i.as, align 8
  %i.at = add nuw nsw i64 %.09, 3                 ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.at
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = xor i64 %i.ax, %i.av
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.at
  store i64 %i.ay, ptr %i.az, align 8
  %i.ba = add nuw nsw i64 %.09, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ba, %i.e
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @slow_bitmap_andnot(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = add i64 %3, 63                           ; 3 uses
  %i.e = lshr i64 %i.d, 6                         ; 5 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.d, 640
  br i1 %min.iters.check, label %.lr.ph.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.f = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.f, -32
  %i.g = sub i64 %i.a, %i.c
  %diff.check15 = icmp ugt i64 %i.g, -32
  %conflict.rdx = or i1 %diff.check, %diff.check15
  br i1 %conflict.rdx, label %.lr.ph.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 288230376151711740       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %vec.phi16 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <2 x i64>, ptr %i.h, align 8
  %wide.load17 = load <2 x i64>, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load18 = load <2 x i64>, ptr %i.j, align 8
  %wide.load19 = load <2 x i64>, ptr %i.k, align 8
  %i.l = xor <2 x i64> %wide.load18, splat (i64 -1)
  %i.m = xor <2 x i64> %wide.load19, splat (i64 -1)
  %i.n = and <2 x i64> %wide.load, %i.l           ; 2 uses
  %i.o = and <2 x i64> %wide.load17, %i.m         ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <2 x i64> %i.n, ptr %i.p, align 8
  store <2 x i64> %i.o, ptr %i.q, align 8
  %i.r = or <2 x i64> %i.n, %vec.phi              ; 2 uses
  %i.s = or <2 x i64> %i.o, %vec.phi16            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.s, %i.r
  %i.u = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader20

.lr.ph.preheader20:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.013.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.u, %middle.block ] ; 2 uses
  %.01112.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.01112.ph, 1
  %i.v = and i64 %i.d, 64
  %lcmp.mod.not = icmp eq i64 %i.v, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader20
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.01112.ph
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.01112.ph
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = xor i64 %i.z, -1
  %i.ab = and i64 %i.x, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01112.ph
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = or i64 %i.ab, %.013.ph                  ; 2 uses
  %i.ae = or disjoint i64 %.01112.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader20
  %.lcssa21.unr = phi i64 [ poison, %.lr.ph.preheader20 ], [ %i.ad, %.lr.ph.prol ]
  %.013.unr = phi i64 [ %.013.ph, %.lr.ph.preheader20 ], [ %i.ad, %.lr.ph.prol ]
  %.01112.unr = phi i64 [ %.01112.ph, %.lr.ph.preheader20 ], [ %i.ae, %.lr.ph.prol ]
  %i.af = icmp eq i64 %i.e, %.neg
  br i1 %i.af, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.013 = phi i64 [ %i.aw, %.lr.ph ], [ %.013.unr, %.lr.ph.prol.loopexit ]
  %.01112 = phi i64 [ %i.ax, %.lr.ph ], [ %.01112.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.01112
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.01112
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = xor i64 %i.aj, -1
  %i.al = and i64 %i.ah, %i.ak                    ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01112
  store i64 %i.al, ptr %i.am, align 8
  %i.an = or i64 %i.al, %.013
  %i.ao = add nuw nsw i64 %.01112, 1              ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ao
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = xor i64 %i.as, -1
  %i.au = and i64 %i.aq, %i.at                    ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ao
  store i64 %i.au, ptr %i.av, align 8
  %i.aw = or i64 %i.au, %i.an                     ; 2 uses
  %i.ax = add nuw nsw i64 %.01112, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ax, %i.e
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !27

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %.lcssa = phi i64 [ %i.u, %middle.block ], [ %.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %i.aw, %.lr.ph ]
  %i.ay = icmp ne i64 %.lcssa, 0
  %i.az = zext i1 %i.ay to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.az, %._crit_edge.loopexit ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @bitmap_set(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %1, %2
  %i.b = or i64 %2, %1
  %or.cond = icmp sgt i64 %i.b, -1
  br i1 %or.cond, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.c = and i64 %1, 63
  %i.d = shl nsw i64 -1, %i.c                     ; 2 uses
  %.neg = or i64 %1, -64                          ; 2 uses
  %i.e = lshr i64 %1, 6
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e ; 4 uses
  %i.g = add i64 %.neg, %2                        ; 6 uses
  %i.h = icmp sgt i64 %i.g, -1
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.i = load i64, ptr %i.f, align 8
  %i.j = or i64 %i.i, %i.d
  store i64 %i.j, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.l = icmp samesign ugt i64 %i.g, 63
  br i1 %i.l, label %.lr.ph.preheader33, label %._crit_edge

.lr.ph.preheader33:                               ; preds = %.lr.ph.preheader
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.g, i64 127)
  %i.n = add i64 %.neg, %2
  %i.o = add i64 %i.n, 63
  %i.p = sub i64 %i.o, %i.m                       ; 2 uses
  %i.q = lshr i64 %i.p, 6
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 192
  br i1 %min.iters.check, label %.lr.ph.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader33
  %n.vec = and i64 %i.r, 576460752303423484       ; 4 uses
  %i.s = shl i64 %n.vec, 6
  %i.t = sub i64 %i.g, %i.s                       ; 2 uses
  %i.u = shl nuw nsw i64 %n.vec, 3
  %i.v = getelementptr i8, ptr %i.k, i64 %i.u     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 -1), ptr %next.gep, align 8
  store <2 x i64> splat (i64 -1), ptr %i.x, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader36

.lr.ph.preheader36:                               ; preds = %.lr.ph.preheader33, %middle.block
  %.in.ph = phi i64 [ %i.g, %.lr.ph.preheader33 ], [ %i.t, %middle.block ]
  %.02125.ph = phi ptr [ %i.k, %.lr.ph.preheader33 ], [ %i.v, %middle.block ]
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 168, ptr noundef nonnull @__PRETTY_FUNCTION__.bitmap_set) #9
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader36, %.lr.ph
  %.in = phi i64 [ %i.z, %.lr.ph ], [ %.in.ph, %.lr.ph.preheader36 ] ; 2 uses
  %.02125 = phi ptr [ %i.aa, %.lr.ph ], [ %.02125.ph, %.lr.ph.preheader36 ] ; 2 uses
  %i.z = add nsw i64 %.in, -64                    ; 2 uses
  store i64 -1, ptr %.02125, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.02125, i64 8 ; 2 uses
  %i.ab = icmp samesign ugt i64 %.in, 127
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.lr.ph.preheader, %.preheader
  %.022.lcssa = phi i64 [ %2, %.preheader ], [ %i.g, %.lr.ph.preheader ], [ %i.t, %middle.block ], [ %i.z, %.lr.ph ]
  %.021.lcssa = phi ptr [ %i.f, %.preheader ], [ %i.k, %.lr.ph.preheader ], [ %i.v, %middle.block ], [ %i.aa, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i64 [ %i.d, %.preheader ], [ -1, %.lr.ph.preheader ], [ -1, %middle.block ], [ -1, %.lr.ph ]
  %.not = icmp eq i64 %.022.lcssa, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ac = sub i64 0, %i.a
  %i.ad = and i64 %i.ac, 63
  %i.ae = lshr i64 -1, %i.ad
  %i.af = and i64 %.0.lcssa, %i.ae
  %i.ag = load i64, ptr %.021.lcssa, align 8
  %i.ah = or i64 %i.ag, %i.af
  store i64 %i.ah, ptr %.021.lcssa, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @bitmap_set_atomic(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i64 %1, 6
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.a ; 3 uses
  %i.c = add i64 %1, %2
  %i.d = and i64 %1, 63
  %i.e = shl nsw i64 -1, %i.d                     ; 2 uses
  %i.f = or i64 %2, %1
  %or.cond = icmp sgt i64 %i.f, -1
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 190, ptr noundef nonnull @__PRETTY_FUNCTION__.bitmap_set_atomic) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = trunc i64 %1 to i32
  %i.h = and i32 %i.g, 63
  %i.i = sub nuw nsw i32 64, %i.h                 ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = sub i64 %2, %i.j                         ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = atomicrmw or ptr %i.b, i64 %i.e seq_cst, align 8 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.034 = phi i64 [ -1, %bb.d ], [ %i.e, %bb.c ]
  %.033 = phi i32 [ 64, %bb.d ], [ %i.i, %bb.c ]
  %.030 = phi ptr [ %i.n, %bb.d ], [ %i.b, %bb.c ] ; 3 uses
  %.0 = phi i64 [ %i.k, %bb.d ], [ %2, %bb.c ]    ; 4 uses
  %i.o = icmp eq i32 %.033, 64
  %i.p = icmp ugt i64 %.0, 63
  %or.cond3 = and i1 %i.o, %i.p
  br i1 %or.cond3, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.e
  %i.q = add i64 %.0, -64
  %i.r = lshr i64 %i.q, 3
  %i.s = and i64 %i.r, 2305843009213693944
  %i.t = add nuw nsw i64 %i.s, 8                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.030, i8 -1, i64 %i.t, i1 false)
  %i.u = and i64 %.0, 63
  %scevgep = getelementptr i8, ptr %.030, i64 %i.t
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.e
  %.232 = phi ptr [ %.030, %bb.e ], [ %scevgep, %.preheader.preheader ]
  %.2 = phi i64 [ %.0, %bb.e ], [ %i.u, %.preheader.preheader ]
  %.not = icmp eq i64 %.2, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.v = sub i64 0, %i.c
  %i.w = and i64 %i.v, 63
  %i.x = lshr i64 -1, %i.w
  %i.y = and i64 %.034, %i.x
  %i.z = atomicrmw or ptr %.232, i64 %i.y seq_cst, align 8 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %.loopexit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !30
  fence seq_cst
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @bitmap_clear(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %1, %2
  %i.b = or i64 %2, %1
  %or.cond = icmp sgt i64 %i.b, -1
  br i1 %or.cond, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.c = and i64 %1, 63
  %i.d = shl nsw i64 -1, %i.c                     ; 2 uses
  %.neg = or i64 %1, -64                          ; 2 uses
  %i.e = lshr i64 %1, 6
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e ; 4 uses
  %i.g = add i64 %.neg, %2                        ; 6 uses
  %i.h = icmp sgt i64 %i.g, -1
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.i = xor i64 %i.d, -1
  %i.j = load i64, ptr %i.f, align 8
  %i.k = and i64 %i.j, %i.i
  store i64 %i.k, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.m = icmp samesign ugt i64 %i.g, 63
  br i1 %i.m, label %.lr.ph.preheader33, label %._crit_edge

.lr.ph.preheader33:                               ; preds = %.lr.ph.preheader
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.g, i64 127)
  %i.o = add i64 %.neg, %2
  %i.p = add i64 %i.o, 63
  %i.q = sub i64 %i.p, %i.n                       ; 2 uses
  %i.r = lshr i64 %i.q, 6
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 192
  br i1 %min.iters.check, label %.lr.ph.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader33
  %n.vec = and i64 %i.s, 576460752303423484       ; 4 uses
  %i.t = shl i64 %n.vec, 6
  %i.u = sub i64 %i.g, %i.t                       ; 2 uses
  %i.v = shl nuw nsw i64 %n.vec, 3
  %i.w = getelementptr i8, ptr %i.l, i64 %i.v     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> zeroinitializer, ptr %next.gep, align 8
  store <2 x i64> zeroinitializer, ptr %i.y, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader36

.lr.ph.preheader36:                               ; preds = %.lr.ph.preheader33, %middle.block
  %.in.ph = phi i64 [ %i.g, %.lr.ph.preheader33 ], [ %i.u, %middle.block ]
  %.02125.ph = phi ptr [ %i.l, %.lr.ph.preheader33 ], [ %i.w, %middle.block ]
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 229, ptr noundef nonnull @__PRETTY_FUNCTION__.bitmap_clear) #9
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader36, %.lr.ph
  %.in = phi i64 [ %i.aa, %.lr.ph ], [ %.in.ph, %.lr.ph.preheader36 ] ; 2 uses
  %.02125 = phi ptr [ %i.ab, %.lr.ph ], [ %.02125.ph, %.lr.ph.preheader36 ] ; 2 uses
  %i.aa = add nsw i64 %.in, -64                   ; 2 uses
  store i64 0, ptr %.02125, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.02125, i64 8 ; 2 uses
  %i.ac = icmp samesign ugt i64 %.in, 127
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.lr.ph.preheader, %.preheader
  %.022.lcssa = phi i64 [ %2, %.preheader ], [ %i.g, %.lr.ph.preheader ], [ %i.u, %middle.block ], [ %i.aa, %.lr.ph ]
  %.021.lcssa = phi ptr [ %i.f, %.preheader ], [ %i.l, %.lr.ph.preheader ], [ %i.w, %middle.block ], [ %i.ab, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i64 [ %i.d, %.preheader ], [ -1, %.lr.ph.preheader ], [ -1, %middle.block ], [ -1, %.lr.ph ]
  %.not = icmp eq i64 %.022.lcssa, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ad = sub i64 0, %i.a
  %i.ae = and i64 %i.ad, 63
  %i.af = lshr i64 -1, %i.ae
  %i.ag = and i64 %.0.lcssa, %i.af
  %i.ah = xor i64 %i.ag, -1
  %i.ai = load i64, ptr %.021.lcssa, align 8
  %i.aj = and i64 %i.ai, %i.ah
  store i64 %i.aj, ptr %.021.lcssa, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @bitmap_test_and_clear(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i64 %1, 6
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.a ; 4 uses
  %i.c = add i64 %1, %2
  %i.d = and i64 %1, 63
  %i.e = shl nsw i64 -1, %i.d                     ; 3 uses
  %i.f = or i64 %2, %1
  %or.cond = icmp sgt i64 %i.f, -1
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 252, ptr noundef nonnull @__PRETTY_FUNCTION__.bitmap_test_and_clear) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = trunc i64 %1 to i32
  %i.h = and i32 %i.g, 63
  %i.i = sub nuw nsw i32 64, %i.h                 ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = sub i64 %2, %i.j                         ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.b, align 8              ; 2 uses
  %i.n = and i64 %i.m, %i.e
  %.not = icmp ne i64 %i.n, 0
  %i.o = xor i64 %i.e, -1
  %i.p = and i64 %i.m, %i.o
  store i64 %i.p, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.038 = phi i64 [ %i.k, %bb.d ], [ %2, %bb.c ]  ; 5 uses
  %.035 = phi ptr [ %i.q, %bb.d ], [ %i.b, %bb.c ] ; 3 uses
  %.034 = phi i32 [ 64, %bb.d ], [ %i.i, %bb.c ]
  %.1 = phi i1 [ %.not, %bb.d ], [ false, %bb.c ] ; 3 uses
  %i.r = icmp eq i32 %.034, 64
  %i.s = icmp ugt i64 %.038, 63
  %or.cond3 = and i1 %i.s, %i.r
  br i1 %or.cond3, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.e
  %i.t = add i64 %.038, -64                       ; 2 uses
  %i.u = lshr i64 %i.t, 6
  %i.v = add nuw nsw i64 %i.u, 1
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %bb.g
  %.139.prol = phi i64 [ %i.x, %bb.g ], [ %.038, %.preheader.preheader ]
  %.136.prol = phi ptr [ %i.y, %bb.g ], [ %.035, %.preheader.preheader ] ; 3 uses
  %.2.prol = phi i1 [ %.3.prol, %bb.g ], [ %.1, %.preheader.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %bb.g ], [ 0, %.preheader.preheader ]
  %i.w = load i64, ptr %.136.prol, align 8
  %.not45.prol = icmp eq i64 %i.w, 0
  br i1 %.not45.prol, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader.prol
  store i64 0, ptr %.136.prol, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader.prol
  %.3.prol = phi i1 [ true, %bb.f ], [ %.2.prol, %.preheader.prol ] ; 3 uses
  %i.x = add nsw i64 %.139.prol, -64              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.136.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !33

.preheader.prol.loopexit:                         ; preds = %bb.g, %.preheader.preheader
  %.139.unr = phi i64 [ %.038, %.preheader.preheader ], [ %i.x, %bb.g ]
  %.136.unr = phi ptr [ %.035, %.preheader.preheader ], [ %i.y, %bb.g ]
  %.2.unr = phi i1 [ %.1, %.preheader.preheader ], [ %.3.prol, %bb.g ]
  %.3.lcssa.unr = phi i1 [ poison, %.preheader.preheader ], [ %.3.prol, %bb.g ]
  %.lcssa55.unr = phi i64 [ poison, %.preheader.preheader ], [ %i.x, %bb.g ]
  %.lcssa.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.y, %bb.g ]
  %i.z = icmp ult i64 %i.t, 192
  br i1 %i.z, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %bb.l
  %.139 = phi i64 [ %i.ah, %bb.l ], [ %.139.unr, %.preheader.prol.loopexit ]
  %.136 = phi ptr [ %i.ai, %bb.l ], [ %.136.unr, %.preheader.prol.loopexit ] ; 6 uses
  %.2 = phi i1 [ %.3.3, %bb.l ], [ %.2.unr, %.preheader.prol.loopexit ]
  %i.aa = load i64, ptr %.136, align 8
  %.not45 = icmp eq i64 %i.aa, 0
  br i1 %.not45, label %.preheader.1, label %bb.h

bb.h:                                             ; preds = %.preheader
  store i64 0, ptr %.136, align 8
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.h, %.preheader
  %.3 = phi i1 [ true, %bb.h ], [ %.2, %.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.136, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %.not45.1 = icmp eq i64 %i.ac, 0
  br i1 %.not45.1, label %.preheader.2, label %bb.i

bb.i:                                             ; preds = %.preheader.1
  store i64 0, ptr %i.ab, align 8
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.i, %.preheader.1
  %.3.1 = phi i1 [ true, %bb.i ], [ %.3, %.preheader.1 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.136, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %.not45.2 = icmp eq i64 %i.ae, 0
  br i1 %.not45.2, label %.preheader.3, label %bb.j

bb.j:                                             ; preds = %.preheader.2
  store i64 0, ptr %i.ad, align 8
  br label %.preheader.3

.preheader.3:                                     ; preds = %bb.j, %.preheader.2
  %.3.2 = phi i1 [ true, %bb.j ], [ %.3.1, %.preheader.2 ]
  %i.af = getelementptr inbounds nuw i8, ptr %.136, i64 24 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %.not45.3 = icmp eq i64 %i.ag, 0
  br i1 %.not45.3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader.3
  store i64 0, ptr %i.af, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader.3
  %.3.3 = phi i1 [ true, %bb.k ], [ %.3.2, %.preheader.3 ] ; 2 uses
  %i.ah = add nsw i64 %.139, -256                 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.136, i64 32 ; 2 uses
  %.old2.3 = icmp ugt i64 %i.ah, 63
  br i1 %.old2.3, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %bb.l, %bb.e
  %.240 = phi i64 [ %.038, %bb.e ], [ %.lcssa55.unr, %.preheader.prol.loopexit ], [ %i.ah, %bb.l ]
  %.237 = phi ptr [ %.035, %bb.e ], [ %.lcssa.unr, %.preheader.prol.loopexit ], [ %i.ai, %bb.l ] ; 2 uses
  %.4 = phi i1 [ %.1, %bb.e ], [ %.3.lcssa.unr, %.preheader.prol.loopexit ], [ %.3.3, %bb.l ] ; 2 uses
  %.not46 = icmp eq i64 %.240, 0
  br i1 %.not46, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %i.aj = sub i64 0, %i.c
  %i.ak = and i64 %i.aj, 63
  %i.al = lshr i64 -1, %i.ak
  %i.am = and i64 %i.al, %i.e                     ; 2 uses
  %i.an = load i64, ptr %.237, align 8            ; 2 uses
  %i.ao = and i64 %i.an, %i.am
  %.not47 = icmp ne i64 %i.ao, 0
  %spec.select48 = select i1 %.not47, i1 true, i1 %.4
  %i.ap = xor i64 %i.am, -1
  %i.aq = and i64 %i.an, %i.ap
  store i64 %i.aq, ptr %.237, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit
  %.6 = phi i1 [ %spec.select48, %bb.m ], [ %.4, %.loopexit ]
  ret i1 %.6
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @bitmap_test_and_clear_atomic(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i64 %1, 6
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.a ; 3 uses
  %i.c = add i64 %1, %2
  %i.d = and i64 %1, 63
  %i.e = shl nsw i64 -1, %i.d                     ; 3 uses
  %i.f = or i64 %2, %1
  %or.cond = icmp sgt i64 %i.f, -1
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 298, ptr noundef nonnull @__PRETTY_FUNCTION__.bitmap_test_and_clear_atomic) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = trunc i64 %1 to i32
  %i.h = and i32 %i.g, 63
  %i.i = sub nuw nsw i32 64, %i.h                 ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = sub i64 %2, %i.j                         ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = xor i64 %i.e, -1
  %i.n = atomicrmw and ptr %i.b, i64 %i.m seq_cst, align 8
  %i.o = and i64 %i.n, %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.052 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.c ]   ; 4 uses
  %.051 = phi i64 [ -1, %bb.d ], [ %i.e, %bb.c ]
  %.050 = phi i32 [ 64, %bb.d ], [ %i.i, %bb.c ]
  %.047 = phi ptr [ %i.p, %bb.d ], [ %i.b, %bb.c ] ; 5 uses
  %.0 = phi i64 [ %i.k, %bb.d ], [ %2, %bb.c ]    ; 5 uses
  %i.q = icmp eq i32 %.050, 64
  %i.r = icmp ugt i64 %.0, 63
  %or.cond3 = and i1 %i.q, %i.r
  br i1 %or.cond3, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.e
  %i.s = add i64 %.0, -64                         ; 2 uses
  %i.t = and i64 %i.s, 64
  %lcmp.mod.not.not = icmp eq i64 %i.t, 0
  br i1 %lcmp.mod.not.not, label %.preheader.prol, label %.preheader.prol.loopexit

.preheader.prol:                                  ; preds = %.preheader.preheader
  %i.u = load i64, ptr %.047, align 8
  %.not.prol = icmp eq i64 %i.u, 0
  br i1 %.not.prol, label %.preheader.prol.loopexit.unr-lcssa, label %bb.f

bb.f:                                             ; preds = %.preheader.prol
  %i.v = atomicrmw xchg ptr %.047, i64 0 seq_cst, align 8
  %i.w = or i64 %i.v, %.052
  br label %.preheader.prol.loopexit.unr-lcssa

.preheader.prol.loopexit.unr-lcssa:               ; preds = %bb.f, %.preheader.prol
  %.254.prol = phi i64 [ %i.w, %bb.f ], [ %.052, %.preheader.prol ] ; 2 uses
  %i.x = add nsw i64 %.0, -64                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.047, i64 8 ; 2 uses
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol.loopexit.unr-lcssa, %.preheader.preheader
  %.153.unr = phi i64 [ %.052, %.preheader.preheader ], [ %.254.prol, %.preheader.prol.loopexit.unr-lcssa ]
  %.148.unr = phi ptr [ %.047, %.preheader.preheader ], [ %i.y, %.preheader.prol.loopexit.unr-lcssa ]
  %.1.unr = phi i64 [ %.0, %.preheader.preheader ], [ %i.x, %.preheader.prol.loopexit.unr-lcssa ]
  %.254.lcssa.unr = phi i64 [ poison, %.preheader.preheader ], [ %.254.prol, %.preheader.prol.loopexit.unr-lcssa ]
  %.lcssa68.unr = phi i64 [ poison, %.preheader.preheader ], [ %i.x, %.preheader.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.y, %.preheader.prol.loopexit.unr-lcssa ]
  %i.z = icmp ult i64 %i.s, 64
  br i1 %i.z, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %bb.i
  %.153 = phi i64 [ %.254.1, %bb.i ], [ %.153.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.148 = phi ptr [ %i.ai, %bb.i ], [ %.148.unr, %.preheader.prol.loopexit ] ; 4 uses
  %.1 = phi i64 [ %i.ah, %bb.i ], [ %.1.unr, %.preheader.prol.loopexit ]
  %i.aa = load i64, ptr %.148, align 8
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %.preheader.1, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.ab = atomicrmw xchg ptr %.148, i64 0 seq_cst, align 8
  %i.ac = or i64 %i.ab, %.153
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.g, %.preheader
  %.254 = phi i64 [ %i.ac, %bb.g ], [ %.153, %.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.148, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %.not.1 = icmp eq i64 %i.ae, 0
  br i1 %.not.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader.1
  %i.af = atomicrmw xchg ptr %i.ad, i64 0 seq_cst, align 8
  %i.ag = or i64 %i.af, %.254
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader.1
  %.254.1 = phi i64 [ %i.ag, %bb.h ], [ %.254, %.preheader.1 ] ; 2 uses
  %i.ah = add nsw i64 %.1, -128                   ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.148, i64 16 ; 2 uses
  %.old2.1 = icmp ugt i64 %i.ah, 63
  br i1 %.old2.1, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %bb.i, %bb.e
  %.3 = phi i64 [ %.052, %bb.e ], [ %.254.lcssa.unr, %.preheader.prol.loopexit ], [ %.254.1, %bb.i ] ; 2 uses
  %.249 = phi ptr [ %.047, %bb.e ], [ %.lcssa.unr, %.preheader.prol.loopexit ], [ %i.ai, %bb.i ]
  %.2 = phi i64 [ %.0, %bb.e ], [ %.lcssa68.unr, %.preheader.prol.loopexit ], [ %i.ah, %bb.i ]
  %.not59 = icmp eq i64 %.2, 0
  br i1 %.not59, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.aj = sub i64 0, %i.c
  %i.ak = and i64 %i.aj, 63
  %i.al = lshr i64 -1, %i.ak
  %i.am = and i64 %.051, %i.al                    ; 2 uses
  %i.an = xor i64 %i.am, -1
  %i.ao = atomicrmw and ptr %.249, i64 %i.an seq_cst, align 8
  %i.ap = and i64 %i.ao, %i.am
  %i.aq = or i64 %i.ap, %.3
  %i.ar = icmp ne i64 %i.aq, 0
  br label %bb.m

bb.k:                                             ; preds = %.loopexit
  %.not60 = icmp eq i64 %.3, 0
  br i1 %.not60, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !34
  fence seq_cst
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.4 = phi i1 [ %i.ar, %bb.j ], [ true, %bb.k ], [ false, %bb.l ]
  ret i1 %.4
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define dso_local void @bitmap_copy_and_clear_atomic(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add nsw i64 %2, -1
  %i.c = lshr i64 %i.b, 6
  %i.d = add nuw nsw i64 %i.c, 1
  %xtraiter = and i64 %i.d, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.013.prol = phi ptr [ %i.f, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.0912.prol = phi ptr [ %i.g, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.01011.prol = phi i64 [ %i.h, %.lr.ph.prol ], [ %2, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.e = atomicrmw xchg ptr %.0912.prol, i64 0 seq_cst, align 8
  store i64 %i.e, ptr %.013.prol, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %.013.prol, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0912.prol, i64 8 ; 2 uses
  %i.h = add nsw i64 %.01011.prol, -64            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !35

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.013.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.f, %.lr.ph.prol ]
  %.0912.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.g, %.lr.ph.prol ]
  %.01011.unr = phi i64 [ %2, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %i.i = icmp ult i64 %2, 449
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.013 = phi ptr [ %i.af, %.lr.ph ], [ %.013.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.0912 = phi ptr [ %i.ag, %.lr.ph ], [ %.0912.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.01011 = phi i64 [ %i.ah, %.lr.ph ], [ %.01011.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.j = atomicrmw xchg ptr %.0912, i64 0 seq_cst, align 8
  store i64 %i.j, ptr %.013, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.013, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.0912, i64 8
  %i.m = atomicrmw xchg ptr %i.l, i64 0 seq_cst, align 8
  store i64 %i.m, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.013, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %.0912, i64 16
  %i.p = atomicrmw xchg ptr %i.o, i64 0 seq_cst, align 8
  store i64 %i.p, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.013, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %.0912, i64 24
  %i.s = atomicrmw xchg ptr %i.r, i64 0 seq_cst, align 8
  store i64 %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.013, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.0912, i64 32
  %i.v = atomicrmw xchg ptr %i.u, i64 0 seq_cst, align 8
  store i64 %i.v, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.013, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %.0912, i64 40
  %i.y = atomicrmw xchg ptr %i.x, i64 0 seq_cst, align 8
  store i64 %i.y, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.013, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %.0912, i64 48
  %i.ab = atomicrmw xchg ptr %i.aa, i64 0 seq_cst, align 8
  store i64 %i.ab, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.013, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %.0912, i64 56
  %i.ae = atomicrmw xchg ptr %i.ad, i64 0 seq_cst, align 8
  store i64 %i.ae, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.013, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %.0912, i64 64
  %i.ah = add nsw i64 %.01011, -512
  %i.ai = icmp sgt i64 %.01011, 512
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @bitmap_find_next_zero_area(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @find_next_zero_bit(ptr noundef %0, i64 noundef %1, i64 noundef %2) #10
  %i.b = add i64 %i.a, %4
  %i.c = xor i64 %4, -1                           ; 2 uses
  %i.d = and i64 %i.b, %i.c                       ; 2 uses
  %i.e = add i64 %i.d, %3                         ; 3 uses
  %i.f = icmp ugt i64 %i.e, %1
  br i1 %i.f, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nuw i64 %i.o, 1
  %i.h = tail call i64 @find_next_zero_bit(ptr noundef %0, i64 noundef %1, i64 noundef %i.g) #10
  %i.i = add i64 %i.h, %4
  %i.j = and i64 %i.i, %i.c                       ; 2 uses
  %i.k = add i64 %i.j, %3                         ; 3 uses
  %i.l = icmp ugt i64 %i.k, %1
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.m = phi i64 [ %i.k, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.n = phi i64 [ %i.j, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.o = tail call i64 @find_next_bit(ptr noundef %0, i64 noundef %i.m, i64 noundef %i.n) #10 ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.m
  br i1 %i.p, label %bb.b, label %._crit_edge
end_hunk_0
