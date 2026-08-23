Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/fixed_dsp?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@vector_fmul_c:bb.a
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader13

.lr.ph.preheader13:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader13
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %i.r = load i32, ptr %i.q, align 4, !tbaa !18
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph
  %i.u = load i32, ptr %i.t, align 4, !tbaa !18
  %i.v = sext i32 %i.u to i64
  %i.w = mul nsw i64 %i.v, %i.s
  %i.x = add nsw i64 %i.w, 1073741824
  %i.y = lshr i64 %i.x, 31
  %i.z = trunc i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.ph
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !18
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader13
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader13 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ab = add nsw i64 %wide.trip.count, -1
  %i.ac = icmp eq i64 %indvars.iv.ph, %i.ab
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !18
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !18
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul nsw i64 %i.ai, %i.af
  %i.ak = add nsw i64 %i.aj, 1073741824
  %i.al = lshr i64 %i.ak, 31
  %i.am = trunc i64 %i.al to i32
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.am, ptr %i.an, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !18
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !18
  %i.at = sext i32 %i.as to i64
  %i.au = mul nsw i64 %i.at, %i.aq
  %i.av = add nsw i64 %i.au, 1073741824
  %i.aw = lshr i64 %i.av, 31
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @vector_fmul_add_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %4, 12
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.f = sub i64 %i.c, %i.d
  %diff.check = icmp ugt i64 %i.f, -16
  %i.g = sub i64 %i.b, %i.d
  %diff.check13 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check13
  %i.h = sub i64 %i.a, %i.d
  %diff.check14 = icmp ugt i64 %i.h, -16
  %conflict.rdx15 = or i1 %conflict.rdx, %diff.check14
  br i1 %conflict.rdx15, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <4 x i32>, ptr %i.i, align 4, !tbaa !18
  %i.j = sext <4 x i32> %wide.load to <4 x i64>
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  %wide.load16 = load <4 x i32>, ptr %i.k, align 4, !tbaa !18
  %i.l = sext <4 x i32> %wide.load16 to <4 x i64>
  %i.m = mul nsw <4 x i64> %i.l, %i.j
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load17 = load <4 x i32>, ptr %i.n, align 4, !tbaa !18
  %i.o = add nsw <4 x i64> %i.m, splat (i64 1073741824)
  %i.p = lshr <4 x i64> %i.o, splat (i64 31)
  %i.q = trunc <4 x i64> %i.p to <4 x i32>
  %i.r = add nsw <4 x i32> %wide.load17, %i.q
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  store <4 x i32> %i.r, ptr %i.s, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader18
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %i.v = load i32, ptr %i.u, align 4, !tbaa !18
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph
  %i.y = load i32, ptr %i.x, align 4, !tbaa !18
  %i.z = sext i32 %i.y to i64
  %i.aa = mul nsw i64 %i.z, %i.w
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.ph
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !18
  %i.ad = add nsw i64 %i.aa, 1073741824
  %i.ae = lshr i64 %i.ad, 31
  %i.af = trunc i64 %i.ae to i32
  %i.ag = add nsw i32 %i.ac, %i.af
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.ph
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !18
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader18
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader18 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ai = add nsw i64 %wide.trip.count, -1
  %i.aj = icmp eq i64 %indvars.iv.ph, %i.ai
  br i1 %i.aj, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !18
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !18
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %i.ap, %i.am
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !18
  %i.at = add nsw i64 %i.aq, 1073741824
  %i.au = lshr i64 %i.at, 31
  %i.av = trunc i64 %i.au to i32
  %i.aw = add nsw i32 %i.as, %i.av
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !18
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !18
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul nsw i64 %i.bd, %i.ba
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !18
  %i.bh = add nsw i64 %i.be, 1073741824
  %i.bi = lshr i64 %i.bh, 31
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = add nsw i32 %i.bg, %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @vector_fmul_reverse_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = getelementptr [4 x i8], ptr %2, i64 %i.a ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -4       ; 5 uses
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %3, 12
  br i1 %min.iters.check, label %.lr.ph.preheader17, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.e = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %scevgep.a = getelementptr i8, ptr %0, i64 %i.e ; 2 uses
  %scevgep13 = getelementptr i8, ptr %1, i64 %i.e
  %bound0 = icmp ult ptr %0, %scevgep13
  %bound1 = icmp ult ptr %1, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  %bound014 = icmp ult ptr %0, %i.b
  %bound115 = icmp ult ptr %i.c, %scevgep.a
  %found.conflict16 = and i1 %bound014, %bound115
  %conflict.rdx = or i1 %found.conflict, %found.conflict16
  br i1 %conflict.rdx, label %.lr.ph.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %4 = load i32, ptr %i.c, align 4, !tbaa !18, !alias.scope !30
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %4, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %5 = sext <4 x i32> %broadcast.splat to <4 x i64>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load.a = load <4 x i32>, ptr %i.f, align 4, !tbaa !18, !alias.scope !33
  %i.g = sext <4 x i32> %wide.load.a to <4 x i64>
  %i.h = mul nsw <4 x i64> %5, %i.g
  %i.i = add nsw <4 x i64> %i.h, splat (i64 1073741824)
  %i.j = lshr <4 x i64> %i.i, splat (i64 31)
  %i.k = trunc <4 x i64> %i.j to <4 x i32>
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  store <4 x i32> %i.k, ptr %i.l, align 4, !tbaa !18, !alias.scope !35, !noalias !37
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader17

.lr.ph.preheader17:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader17
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %i.o = load i32, ptr %i.n, align 4, !tbaa !18
  %i.p = sext i32 %i.o to i64
  %i.q = load i32, ptr %i.c, align 4, !tbaa !18
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %i.r, %i.p
  %i.t = add nsw i64 %i.s, 1073741824
  %i.u = lshr i64 %i.t, 31
  %i.v = trunc i64 %i.u to i32
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.ph
  store i32 %i.v, ptr %i.w, align 4, !tbaa !18
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader17
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader17 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.x = add nsw i64 %wide.trip.count, -1
  %i.y = icmp eq i64 %indvars.iv.ph, %i.x
  br i1 %i.y, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !18
  %i.ab = sext i32 %i.aa to i64
  %i.ac = load i32, ptr %i.c, align 4, !tbaa !18
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i64 %i.ad, %i.ab
  %i.af = add nsw i64 %i.ae, 1073741824
  %i.ag = lshr i64 %i.af, 31
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !18
  %i.al = sext i32 %i.ak to i64
  %i.am = load i32, ptr %i.c, align 4, !tbaa !18
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %i.an, %i.al
  %i.ap = add nsw i64 %i.ao, 1073741824
  %i.aq = lshr i64 %i.ap, 31
  %i.ar = trunc i64 %i.aq to i32
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @butterflies_fixed_c(ptr noalias nofree noundef captures(none) %0, ptr noalias nofree noundef captures(none) %1, i32 noundef %2) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.b, align 4, !tbaa !18 ; 2 uses
  %wide.load16 = load <4 x i32>, ptr %i.c, align 4, !tbaa !18 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %wide.load17 = load <4 x i32>, ptr %i.d, align 4, !tbaa !18 ; 2 uses
  %wide.load18 = load <4 x i32>, ptr %i.e, align 4, !tbaa !18 ; 2 uses
  %i.f = sub <4 x i32> %wide.load, %wide.load17
  %i.g = sub <4 x i32> %wide.load16, %wide.load18
  %i.h = add <4 x i32> %wide.load17, %wide.load
  %i.i = add <4 x i32> %wide.load18, %wide.load16
  store <4 x i32> %i.h, ptr %i.b, align 4, !tbaa !18
  store <4 x i32> %i.i, ptr %i.c, align 4, !tbaa !18
  store <4 x i32> %i.f, ptr %i.d, align 4, !tbaa !18
  store <4 x i32> %i.g, ptr %i.e, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader19, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader19 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !18   ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !18   ; 2 uses
  %i.o = sub i32 %i.l, %i.n
  %i.p = add i32 %i.n, %i.l
  store i32 %i.p, ptr %i.k, align 4, !tbaa !18
  store i32 %i.o, ptr %i.m, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !41

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @scalarproduct_fixed_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.b = icmp ult i32 %2, 4
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %.089 = phi i64 [ 1073741824, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !18
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, %i.e
  %i.j = add nsw i64 %i.i, %.089
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.l = load i32, ptr %i.k, align 4, !tbaa !18
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.o = load i32, ptr %i.n, align 4, !tbaa !18
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.p, %i.m
  %i.r = add nsw i64 %i.q, %i.j
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.t = load i32, ptr %i.s, align 4, !tbaa !18
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.w = load i32, ptr %i.v, align 4, !tbaa !18
  %i.x = sext i32 %i.w to i64
  %i.y = mul nsw i64 %i.x, %i.u
  %i.z = add nsw i64 %i.y, %i.r
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !18
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !18
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i64 %i.af, %i.ac
  %i.ah = add nsw i64 %i.ag, %i.z                 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !42

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.089.epil.init = phi i64 [ 1073741824, %.lr.ph.preheader ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.089.epil = phi i64 [ %.089.epil.init, %.lr.ph.epil.preheader ], [ %i.ap, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !18
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil
  %i.am = load i32, ptr %i.al, align 4, !tbaa !18
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %i.an, %i.ak
  %i.ap = add nsw i64 %i.ao, %.089.epil           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !43

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.lcssa = phi i64 [ %i.ah, %._crit_edge.loopexit.unr-lcssa ], [ %i.ap, %.lr.ph.epil ]
  %i.aq = lshr i64 %.lcssa, 31
  %i.ar = trunc i64 %i.aq to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.08.lcssa = phi i32 [ 0, %bb.a ], [ %i.ar, %._crit_edge.loopexit ]
  ret i32 %.08.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"AVFixedDSPContext", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!10, !11, i64 8}
!13 = !{!10, !11, i64 16}
!14 = !{!10, !11, i64 32}
!15 = !{!10, !11, i64 24}
!16 = !{!10, !11, i64 48}
!17 = !{!10, !11, i64 40}
!18 = !{!6, !6, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"short", !7, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22, !25, !26}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = distinct !{!27, !22, !25}
!28 = distinct !{!28, !22, !25, !26}
!29 = distinct !{!29, !22, !25}
!30 = !{!31}
!31 = distinct !{!31, !32}
!32 = distinct !{!32, !"LVerDomain"}
!33 = !{!34}
!34 = distinct !{!34, !32}
!35 = !{!36}
!36 = distinct !{!36, !32}
!37 = !{!34, !31}
!38 = distinct !{!38, !22, !25, !26}
!39 = distinct !{!39, !22, !25}
!40 = distinct !{!40, !22, !25, !26}
!41 = distinct !{!41, !22, !26, !25}
!42 = distinct !{!42, !22}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
