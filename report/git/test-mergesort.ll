inline.NumInlined: 41
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@mode_dither:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader8, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader8 ] ; 3 uses
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  %i.j = urem i32 %i.i, 5
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !22
  %i.m = add nsw i32 %i.l, %i.j
  store i32 %i.m, ptr %i.k, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !69

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mode_unriffle(ptr nofree noundef captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.b, label %st_mult.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.12, i64 noundef 4, i64 noundef %i.a) #21
  unreachable

st_mult.exit:                                     ; preds = %bb.a
  %i.c = shl nuw nsw i64 %i.a, 2
  %i.d = tail call ptr @xmalloc(i64 noundef %i.c) #20 ; 2 uses
  tail call fastcc void @unriffle_recursively(ptr noundef %0, i32 noundef %1, ptr noundef %i.d)
  tail call void @free(ptr noundef %i.d) #20
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mode_unriffle_skewed(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.b, label %st_mult.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.12, i64 noundef 4, i64 noundef %i.a) #21
  unreachable

st_mult.exit:                                     ; preds = %bb.a
  %i.c = shl nuw nsw i64 %i.a, 2
  %i.d = tail call ptr @xmalloc(i64 noundef %i.c) #20 ; 2 uses
  tail call fastcc void @unriffle_recursively_skewed(ptr noundef %0, i32 noundef %1, ptr noundef %i.d)
  tail call void @free(ptr noundef %i.d) #20
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @unriffle_recursively(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #15 {
bb.a:
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %.lr.ph.preheader.i.preheader, label %tailrecurse._crit_edge

.lr.ph.preheader.i.preheader:                     ; preds = %bb.a
  %scevgep20 = getelementptr i8, ptr %2, i64 4
  %scevgep21 = getelementptr i8, ptr %2, i64 8
  %scevgep29 = getelementptr i8, ptr %2, i64 4
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %unriffle.exit
  %.tr1215 = phi i32 [ %i.cc, %unriffle.exit ], [ %1, %.lr.ph.preheader.i.preheader ] ; 5 uses
  %.tr14 = phi ptr [ %i.cb, %unriffle.exit ], [ %0, %.lr.ph.preheader.i.preheader ] ; 15 uses
  %i.b = zext nneg i32 %.tr1215 to i64            ; 4 uses
  %i.c = shl nuw nsw i64 %i.b, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull readonly align 1 dereferenceable(1) %.tr14, i64 %i.c, i1 false)
  %i.d = add nsw i32 %.tr1215, -1                 ; 4 uses
  %i.e = lshr i32 %i.d, 1
  %i.f = add nuw nsw i32 %i.e, 1
  %wide.trip.count.i = zext nneg i32 %i.f to i64  ; 7 uses
  %min.iters.check35 = icmp ult i32 %.tr1215, 17
  br i1 %min.iters.check35, label %.lr.ph.i.preheader, label %vector.memcheck26

vector.memcheck26:                                ; preds = %.lr.ph.preheader.i
  %scevgep27 = getelementptr i8, ptr %.tr14, i64 4
  %i.g = lshr i32 %i.d, 1
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = shl nuw nsw i64 %i.h, 2
  %scevgep28 = getelementptr i8, ptr %scevgep27, i64 %i.i
  %i.j = shl nuw nsw i64 %i.h, 3
  %scevgep30 = getelementptr i8, ptr %scevgep29, i64 %i.j
  %bound031 = icmp ult ptr %.tr14, %scevgep30
  %bound132 = icmp ult ptr %2, %scevgep28
  %found.conflict33 = and i1 %bound031, %bound132
  br i1 %found.conflict33, label %.lr.ph.i.preheader, label %vector.ph36

vector.ph36:                                      ; preds = %vector.memcheck26
  %i.k = and i64 %wide.trip.count.i, 7            ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 8, i64 %i.k
  %n.vec37 = sub nsw i64 %wide.trip.count.i, %i.m ; 3 uses
  %i.n = shl nsw i64 %n.vec37, 1
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph36
  %index39 = phi i64 [ 0, %vector.ph36 ], [ %index.next44, %vector.body38 ] ; 3 uses
  %i.o = shl nuw i64 %index39, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %wide.vec40 = load <8 x i32>, ptr %i.p, align 4, !tbaa !22, !alias.scope !70
  %strided.vec41 = shufflevector <8 x i32> %wide.vec40, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec42 = load <8 x i32>, ptr %i.r, align 4, !tbaa !22, !alias.scope !70
  %strided.vec43 = shufflevector <8 x i32> %wide.vec42, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %index39 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x i32> %strided.vec41, ptr %i.s, align 4, !tbaa !22, !alias.scope !73, !noalias !70
  store <4 x i32> %strided.vec43, ptr %i.t, align 4, !tbaa !22, !alias.scope !73, !noalias !70
  %index.next44 = add nuw i64 %index39, 8         ; 2 uses
  %i.u = icmp eq i64 %index.next44, %n.vec37
  br i1 %i.u, label %.lr.ph.i.preheader, label %vector.body38, !llvm.loop !75

.lr.ph.i.preheader:                               ; preds = %vector.body38, %vector.memcheck26, %.lr.ph.preheader.i
  %indvars.iv24.i.ph = phi i64 [ 0, %vector.memcheck26 ], [ 0, %.lr.ph.preheader.i ], [ %i.n, %vector.body38 ] ; 2 uses
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck26 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec37, %vector.body38 ] ; 4 uses
  %i.v = lshr i32 %i.d, 1
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = add nuw nsw i64 %i.w, 1
  %i.y = sub nsw i64 %i.x, %indvars.iv.i.ph
  %i.z = sub nsw i64 %i.w, %indvars.iv.i.ph
  %xtraiter = and i64 %i.y, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv24.i.prol = phi i64 [ %indvars.iv.next25.i.prol, %.lr.ph.i.prol ], [ %indvars.iv24.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i.prol
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !22
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %indvars.iv.i.prol
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !22
  %indvars.iv.next25.i.prol = add nuw nsw i64 %indvars.iv24.i.prol, 2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !76

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv24.i.unr = phi i64 [ %indvars.iv24.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next25.i.prol, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ad = icmp ult i64 %i.z, 3
  br i1 %i.ad, label %.lr.ph23.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i.3, %.lr.ph.i ], [ %indvars.iv24.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !22
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %indvars.iv.i
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !22
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !22
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %indvars.iv.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 %i.aj, ptr %i.al, align 4, !tbaa !22
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !22
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %indvars.iv.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !22
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load i32, ptr %i.as, align 4, !tbaa !22
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %indvars.iv.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 %i.at, ptr %i.av, align 4, !tbaa !22
  %indvars.iv.next25.i.3 = add nuw nsw i64 %indvars.iv24.i, 8
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.lr.ph23.i.preheader, label %.lr.ph.i, !llvm.loop !78

.lr.ph23.i.preheader:                             ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %i.aw = tail call i64 @llvm.umax.i64(i64 %i.b, i64 3)
  %i.ax = add nsw i64 %i.aw, -2                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 1
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ax, 24
  br i1 %min.iters.check, label %.lr.ph23.i.preheader48, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph23.i.preheader
  %scevgep = getelementptr i8, ptr %.tr14, i64 4
  %i.ba = lshr i32 %i.d, 1
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = shl nuw nsw i64 %i.bb, 2
  %scevgep17 = getelementptr i8, ptr %scevgep, i64 %i.bc
  %scevgep18 = getelementptr i8, ptr %.tr14, i64 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.b, i64 3)
  %i.bd = add nsw i64 %umax, -2
  %i.be = lshr i64 %i.bd, 1                       ; 2 uses
  %i.bf = add nuw i64 %i.be, %i.bb
  %i.bg = shl i64 %i.bf, 2
  %scevgep19 = getelementptr i8, ptr %scevgep18, i64 %i.bg
  %i.bh = shl nuw nsw i64 %i.be, 3
  %scevgep22 = getelementptr i8, ptr %scevgep21, i64 %i.bh
  %bound0 = icmp ult ptr %scevgep17, %scevgep22
  %bound1 = icmp ult ptr %scevgep20, %scevgep19
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph23.i.preheader48, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bi = and i64 %i.az, 7                        ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  %i.bk = select i1 %i.bj, i64 8, i64 %i.bi
  %n.vec = sub nsw i64 %i.az, %i.bk               ; 3 uses
  %i.bl = shl i64 %n.vec, 1
  %i.bm = or disjoint i64 %i.bl, 1
  %i.bn = add i64 %n.vec, %wide.trip.count.i
  %invariant.gep = getelementptr [4 x i8], ptr %.tr14, i64 %wide.trip.count.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bo = shl nuw i64 %index, 1                   ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 36
  %wide.vec = load <8 x i32>, ptr %i.bq, align 4, !tbaa !22, !alias.scope !79
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec23 = load <8 x i32>, ptr %i.bs, align 4, !tbaa !22, !alias.scope !79
  %strided.vec24 = shufflevector <8 x i32> %wide.vec23, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %strided.vec, ptr %gep, align 4, !tbaa !22, !alias.scope !82, !noalias !79
  store <4 x i32> %strided.vec24, ptr %i.bt, align 4, !tbaa !22, !alias.scope !82, !noalias !79
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %.lr.ph23.i.preheader48, label %vector.body, !llvm.loop !84

.lr.ph23.i.preheader48:                           ; preds = %vector.body, %vector.memcheck, %.lr.ph23.i.preheader
  %indvars.iv31.i.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph23.i.preheader ], [ %i.bm, %vector.body ]
  %indvars.iv29.i.ph = phi i64 [ %wide.trip.count.i, %vector.memcheck ], [ %wide.trip.count.i, %.lr.ph23.i.preheader ], [ %i.bn, %vector.body ]
  br label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %.lr.ph23.i.preheader48, %.lr.ph23.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %.lr.ph23.i ], [ %indvars.iv31.i.ph, %.lr.ph23.i.preheader48 ] ; 2 uses
  %indvars.iv29.i = phi i64 [ %indvars.iv.next30.i, %.lr.ph23.i ], [ %indvars.iv29.i.ph, %.lr.ph23.i.preheader48 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !22
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %indvars.iv29.i
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !22
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 2 ; 2 uses
  %i.by = icmp samesign ult i64 %indvars.iv.next32.i, %i.b
  br i1 %i.by, label %.lr.ph23.i, label %unriffle.exit, !llvm.loop !85

unriffle.exit:                                    ; preds = %.lr.ph23.i
  %i.bz = lshr i32 %.tr1215, 1                    ; 3 uses
  tail call fastcc void @unriffle_recursively(ptr noundef nonnull %.tr14, i32 noundef %i.bz, ptr noundef nonnull %2)
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %i.ca
  %i.cc = sub nsw i32 %.tr1215, %i.bz             ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %.lr.ph.preheader.i, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %unriffle.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @unriffle_recursively_skewed(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %prev_pow2.exit, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr17, %prev_pow2.exit ]
  %.tr81 = phi i32 [ %1, %bb.a ], [ %.0.i, %prev_pow2.exit ] ; 2 uses
  %i.a = icmp sgt i32 %.tr81, 1
  br i1 %i.a, label %.preheader.preheader, label %tailrecurse._crit_edge

.preheader.preheader:                             ; preds = %tailrecurse
  %scevgep38 = getelementptr i8, ptr %2, i64 4
  %scevgep39 = getelementptr i8, ptr %2, i64 8
  %scevgep48 = getelementptr i8, ptr %2, i64 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %unriffle.exit
  %.tr1518 = phi i32 [ %i.d, %unriffle.exit ], [ %.tr81, %.preheader.preheader ] ; 5 uses
  %.tr17 = phi ptr [ %i.f, %unriffle.exit ], [ %.tr, %.preheader.preheader ] ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %.0.i = phi i32 [ %i.b, %bb.b ], [ 1, %.preheader ] ; 8 uses
  %i.b = shl nuw i32 %.0.i, 1                     ; 2 uses
  %i.c = icmp ult i32 %i.b, %.tr1518
  br i1 %i.c, label %bb.b, label %prev_pow2.exit, !llvm.loop !86

prev_pow2.exit:                                   ; preds = %bb.b
  %i.d = sub i32 %.tr1518, %.0.i                  ; 5 uses
  %i.e = zext i32 %.0.i to i64                    ; 3 uses
  %i.f = getelementptr [4 x i8], ptr %.tr17, i64 %i.e ; 2 uses
  %i.g = sext i32 %i.d to i64
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr [4 x i8], ptr %i.f, i64 %i.h ; 10 uses
  %i.j = shl i32 %i.d, 1                          ; 3 uses
  %i.k = sext i32 %i.j to i64                     ; 5 uses
  %.not.i.i = icmp eq i32 %.tr1518, %.0.i
  br i1 %.not.i.i, label %tailrecurse, label %bb.c

bb.c:                                             ; preds = %prev_pow2.exit
  %i.l = icmp slt i32 %i.d, 0
  br i1 %i.l, label %bb.d, label %.lr.ph.preheader.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.12, i64 noundef 4, i64 noundef range(i64 -2147483648, 2147483648) %i.k) #21
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.m = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull readonly align 1 %i.i, i64 %i.m, i1 false)
  %i.n = add nsw i32 %i.j, -2                     ; 5 uses
  %i.o = lshr exact i32 %i.n, 1
  %i.p = add nuw nsw i32 %i.o, 1
  %wide.trip.count.i = zext nneg i32 %i.p to i64  ; 7 uses
  %min.iters.check54 = icmp ult i32 %i.n, 32
  br i1 %min.iters.check54, label %.lr.ph.i.preheader, label %vector.memcheck44

vector.memcheck44:                                ; preds = %.lr.ph.preheader.i
  %scevgep45 = getelementptr i8, ptr %.tr17, i64 4
  %i.q = zext nneg i32 %.tr1518 to i64
  %i.r = mul nsw i64 %i.q, -4
  %scevgep46 = getelementptr i8, ptr %scevgep45, i64 %i.r
  %i.s = lshr exact i32 %i.n, 1
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = sext i32 %.0.i to i64
  %i.v = add nsw i64 %i.t, %i.u
  %i.w = add nsw i64 %i.v, %i.e
  %i.x = shl nsw i64 %i.w, 2
  %scevgep47 = getelementptr i8, ptr %scevgep46, i64 %i.x
  %i.y = shl nuw nsw i64 %i.t, 3
  %scevgep49 = getelementptr i8, ptr %scevgep48, i64 %i.y
  %bound050 = icmp ult ptr %i.i, %scevgep49
  %bound151 = icmp ult ptr %2, %scevgep47
  %found.conflict52 = and i1 %bound050, %bound151
  br i1 %found.conflict52, label %.lr.ph.i.preheader, label %vector.ph55

vector.ph55:                                      ; preds = %vector.memcheck44
  %i.z = and i64 %wide.trip.count.i, 7            ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = select i1 %i.aa, i64 8, i64 %i.z
  %n.vec56 = sub nsw i64 %wide.trip.count.i, %i.ab ; 3 uses
  %i.ac = shl nsw i64 %n.vec56, 1
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph55
  %index58 = phi i64 [ 0, %vector.ph55 ], [ %index.next63, %vector.body57 ] ; 3 uses
  %i.ad = shl nuw i64 %index58, 1                 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %wide.vec59 = load <8 x i32>, ptr %i.ae, align 4, !tbaa !22, !alias.scope !87
  %strided.vec60 = shufflevector <8 x i32> %wide.vec59, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec61 = load <8 x i32>, ptr %i.ag, align 4, !tbaa !22, !alias.scope !87
  %strided.vec62 = shufflevector <8 x i32> %wide.vec61, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index58 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <4 x i32> %strided.vec60, ptr %i.ah, align 4, !tbaa !22, !alias.scope !90, !noalias !87
  store <4 x i32> %strided.vec62, ptr %i.ai, align 4, !tbaa !22, !alias.scope !90, !noalias !87
  %index.next63 = add nuw i64 %index58, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next63, %n.vec56
  br i1 %i.aj, label %.lr.ph.i.preheader, label %vector.body57, !llvm.loop !92

.lr.ph.i.preheader:                               ; preds = %vector.body57, %vector.memcheck44, %.lr.ph.preheader.i
  %indvars.iv24.i.ph = phi i64 [ 0, %vector.memcheck44 ], [ 0, %.lr.ph.preheader.i ], [ %i.ac, %vector.body57 ] ; 2 uses
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck44 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec56, %vector.body57 ] ; 4 uses
  %i.ak = lshr exact i32 %i.n, 1
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %reass.sub = sub nsw i64 %i.al, %indvars.iv.i.ph
  %i.am = add nsw i64 %reass.sub, 1
  %i.an = sub nsw i64 %i.al, %indvars.iv.i.ph
  %xtraiter = and i64 %i.am, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv24.i.prol = phi i64 [ %indvars.iv.next25.i.prol, %.lr.ph.i.prol ], [ %indvars.iv24.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i.prol
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !22
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i.prol
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !22
  %indvars.iv.next25.i.prol = add nuw nsw i64 %indvars.iv24.i.prol, 2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !93

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv24.i.unr = phi i64 [ %indvars.iv24.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next25.i.prol, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
end_hunk_0
