loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@cpmx_ribosum:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.04253, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(148) %i.l, i8 0, i64 148, i1 false), !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %.04253, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(148) %i.n, i8 0, i64 148, i1 false), !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %.04253, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(148) %i.p, i8 0, i64 148, i1 false), !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %.04253, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(148) %i.r, i8 0, i64 148, i1 false), !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %.04253, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(148) %i.t, i8 0, i64 148, i1 false), !tbaa !31
  %i.u = add nsw i32 %.in, -8                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.04253, i64 64
  %.not.7 = icmp eq i32 %i.u, 0
  br i1 %.not.7, label %.preheader.thread, label %.lr.ph, !llvm.loop !44

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph59.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.x = load double, ptr %i.w, align 8, !tbaa !14
  %i.y = fptrunc double %i.x to float
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph59, %bb.g
  %.in63 = phi i32 [ %5, %.lr.ph59 ], [ %i.ad, %bb.g ]
  %.03858 = phi ptr [ %2, %.lr.ph59 ], [ %i.ax, %bb.g ] ; 2 uses
  %.03957 = phi ptr [ %i.ac, %.lr.ph59 ], [ %i.aw, %bb.g ] ; 2 uses
  %.04056 = phi ptr [ %i.aa, %.lr.ph59 ], [ %i.av, %bb.g ] ; 2 uses
  %.14355 = phi ptr [ %3, %.lr.ph59 ], [ %i.ay, %bb.g ] ; 2 uses
  %i.ad = add nsw i32 %.in63, -1                  ; 2 uses
  %i.ae = load i8, ptr %.04056, align 1, !tbaa !11
  %i.af = sext i8 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4  ; 5 uses
  %i.ai = load i8, ptr %.03957, align 1, !tbaa !11
  %i.aj = sext i8 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4  ; 3 uses
  %i.am = icmp sgt i32 %i.ah, 3
  br i1 %i.am, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = icmp sgt i32 %i.al, 3
  br i1 %i.an, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = load i8, ptr %.03858, align 1, !tbaa !11
  switch i8 %i.ao, label %bb.g [
    i8 53, label %bb.e
    i8 51, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.ap = shl nsw i32 %i.al, 2
  %i.aq = add nsw i32 %i.ah, 4
  %i.ar = add i32 %i.aq, %i.ap
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.as = shl nsw i32 %i.al, 2
  %i.at = add nsw i32 %i.ah, 20
  %i.au = add i32 %i.at, %i.as
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.f, %bb.e
  %.037 = phi i32 [ %i.ah, %bb.c ], [ 36, %bb.b ], [ %i.ar, %bb.e ], [ %i.au, %bb.f ], [ %i.ah, %bb.d ]
  %i.av = getelementptr inbounds nuw i8, ptr %.04056, i64 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.03957, i64 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.03858, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.14355, i64 8
  %i.az = load ptr, ptr %.14355, align 8, !tbaa !29
  %i.ba = sext i32 %.037 to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ba ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !31
  %i.bd = fadd float %i.bc, %i.y
  store float %i.bd, ptr %i.bb, align 4, !tbaa !31
  %.not48 = icmp eq i32 %i.ad, 0
  br i1 %.not48, label %._crit_edge, label %bb.b, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge62.split, label %.lr.ph59, !llvm.loop !46

._crit_edge62.split:                              ; preds = %._crit_edge, %bb.a, %.preheader.thread
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @mseqcat(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = icmp sgt i32 %8, 0                       ; 3 uses
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader93

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = sext i32 %7 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %8 to i64      ; 5 uses
  %invariant.gep = getelementptr [8 x i8], ptr %0, i64 %i.d ; 6 uses
  %min.iters.check = icmp ult i32 %8, 14
  br i1 %min.iters.check, label %.lr.ph.preheader260, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.e = shl nsw i64 %i.d, 3
  %i.f = add i64 %i.e, %i.b
  %i.g = sub i64 %i.a, %i.f
  %diff.check = icmp ugt i64 %i.g, -32
  br i1 %diff.check, label %.lr.ph.preheader260, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <2 x ptr>, ptr %i.h, align 8, !tbaa !8
  %wide.load161 = load <2 x ptr>, ptr %i.i, align 8, !tbaa !8
  %i.j = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16
  store <2 x ptr> %wide.load, ptr %i.j, align 8, !tbaa !8
  store <2 x ptr> %wide.load161, ptr %i.k, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph97.preheader, label %.lr.ph.preheader260

.lr.ph.preheader260:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader260, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader260 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader260 ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.prol
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  store ptr %i.n, ptr %gep.prol, align 8, !tbaa !8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !50

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader260
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader260 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.o = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.p = icmp ugt i64 %i.o, -4
  br i1 %i.p, label %.lr.ph97.preheader, label %.lr.ph

.lr.ph97.preheader:                               ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %i.q = sext i32 %7 to i64
  %wide.trip.count118 = zext nneg i32 %8 to i64
  %invariant.gep159 = getelementptr [256 x i8], ptr %5, i64 %i.q
  br label %.lr.ph97

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  store ptr %i.s, ptr %gep, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  store ptr %i.u, ptr %gep.1, align 8, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  store ptr %i.w, ptr %gep.2, align 8, !tbaa !8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !8
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  store ptr %i.y, ptr %gep.3, align 8, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.lr.ph97.preheader, label %.lr.ph, !llvm.loop !51

.preheader93:                                     ; preds = %.lr.ph97, %bb.a
  %i.z = icmp sgt i32 %7, 0
  br i1 %i.z, label %.preheader92.preheader, label %.preheader91..preheader89_crit_edge

.preheader92.preheader:                           ; preds = %.preheader93
  %wide.trip.count128 = zext nneg i32 %7 to i64   ; 16 uses
  %i.aa = shl nuw nsw i64 %wide.trip.count128, 3  ; 2 uses
  %scevgep163 = getelementptr i8, ptr %3, i64 %i.aa
  %min.iters.check168 = icmp ult i32 %7, 6
  %n.vec171 = and i64 %wide.trip.count128, 2147483644 ; 3 uses
  %cmp.n178 = icmp eq i64 %n.vec171, %wide.trip.count128
  %xtraiter261 = and i64 %wide.trip.count128, 3   ; 2 uses
  %lcmp.mod262.not = icmp eq i64 %xtraiter261, 0
  br label %.preheader92

.lr.ph97:                                         ; preds = %.lr.ph97.preheader, %.lr.ph97
  %indvars.iv115 = phi i64 [ 0, %.lr.ph97.preheader ], [ %indvars.iv.next116, %.lr.ph97 ] ; 3 uses
  %gep160 = getelementptr [256 x i8], ptr %invariant.gep159, i64 %indvars.iv115
  %i.ab = getelementptr inbounds nuw [256 x i8], ptr %6, i64 %indvars.iv115
  %i.ac = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %gep160, ptr noundef nonnull dereferenceable(1) %i.ab) #19 ; 0 uses
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count118
  br i1 %exitcond119.not, label %.preheader93, label %.lr.ph97, !llvm.loop !52

.preheader92:                                     ; preds = %.preheader92.preheader, %._crit_edge
  %indvars.iv125 = phi i64 [ 0, %.preheader92.preheader ], [ %indvars.iv.next126, %._crit_edge ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv125 ; 6 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv125
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !12 ; 8 uses
  br i1 %min.iters.check168, label %scalar.ph167.preheader, label %vector.memcheck162

vector.memcheck162:                               ; preds = %.preheader92
  %scevgep = getelementptr i8, ptr %i.af, i64 %i.aa
  %bound0 = icmp ult ptr %i.af, %scevgep163
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph167.preheader, label %vector.ph169

vector.ph169:                                     ; preds = %vector.memcheck162
  %i.ag = load double, ptr %i.ad, align 8, !tbaa !14, !alias.scope !53
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ag, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph169
  %index173 = phi i64 [ 0, %vector.ph169 ], [ %index.next176, %vector.body172 ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index173 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load174 = load <2 x double>, ptr %i.ah, align 8, !tbaa !14, !alias.scope !56
  %wide.load175 = load <2 x double>, ptr %i.ai, align 8, !tbaa !14, !alias.scope !56
  %i.aj = fmul <2 x double> %broadcast.splat, %wide.load174
  %i.ak = fmul <2 x double> %broadcast.splat, %wide.load175
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index173 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x double> %i.aj, ptr %i.al, align 8, !tbaa !14, !alias.scope !58, !noalias !60
  store <2 x double> %i.ak, ptr %i.am, align 8, !tbaa !14, !alias.scope !58, !noalias !60
  %index.next176 = add nuw i64 %index173, 4       ; 2 uses
  %i.an = icmp eq i64 %index.next176, %n.vec171
  br i1 %i.an, label %middle.block177, label %vector.body172, !llvm.loop !61

middle.block177:                                  ; preds = %vector.body172
  br i1 %cmp.n178, label %._crit_edge, label %scalar.ph167.preheader

scalar.ph167.preheader:                           ; preds = %vector.memcheck162, %.preheader92, %middle.block177
  %indvars.iv120.ph = phi i64 [ 0, %vector.memcheck162 ], [ 0, %.preheader92 ], [ %n.vec171, %middle.block177 ] ; 3 uses
  br i1 %lcmp.mod262.not, label %scalar.ph167.prol.loopexit, label %scalar.ph167.prol

scalar.ph167.prol:                                ; preds = %scalar.ph167.preheader, %scalar.ph167.prol
  %indvars.iv120.prol = phi i64 [ %indvars.iv.next121.prol, %scalar.ph167.prol ], [ %indvars.iv120.ph, %scalar.ph167.preheader ] ; 3 uses
  %prol.iter263 = phi i64 [ %prol.iter263.next, %scalar.ph167.prol ], [ 0, %scalar.ph167.preheader ]
  %i.ao = load double, ptr %i.ad, align 8, !tbaa !14
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv120.prol
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !14
  %i.ar = fmul double %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv120.prol
  store double %i.ar, ptr %i.as, align 8, !tbaa !14
  %indvars.iv.next121.prol = add nuw nsw i64 %indvars.iv120.prol, 1 ; 2 uses
  %prol.iter263.next = add i64 %prol.iter263, 1   ; 2 uses
  %prol.iter263.cmp.not = icmp eq i64 %prol.iter263.next, %xtraiter261
  br i1 %prol.iter263.cmp.not, label %scalar.ph167.prol.loopexit, label %scalar.ph167.prol, !llvm.loop !62

scalar.ph167.prol.loopexit:                       ; preds = %scalar.ph167.prol, %scalar.ph167.preheader
  %indvars.iv120.unr = phi i64 [ %indvars.iv120.ph, %scalar.ph167.preheader ], [ %indvars.iv.next121.prol, %scalar.ph167.prol ]
  %i.at = sub nsw i64 %indvars.iv120.ph, %wide.trip.count128
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %._crit_edge, label %scalar.ph167

.preheader91..preheader89_crit_edge:              ; preds = %.preheader93
  %.pre = add nsw i32 %8, %7
  br label %.preheader87

.preheader90.lr.ph:                               ; preds = %._crit_edge
  %i.av = add nsw i32 %8, %7                      ; 3 uses
  br i1 %i.c, label %.preheader90.preheader, label %._crit_edge113.split

.preheader90.preheader:                           ; preds = %.preheader90.lr.ph
  %i.aw = zext nneg i32 %7 to i64                 ; 5 uses
  %i.ax = zext nneg i32 %i.av to i64              ; 4 uses
  %wide.trip.count136 = zext nneg i32 %7 to i64
  %i.ay = shl nuw nsw i64 %wide.trip.count128, 3  ; 3 uses
  %i.az = add nuw nsw i64 %wide.trip.count128, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.az, i64 %i.ax)
  %i.ba = shl nuw nsw i64 %umax, 3                ; 2 uses
  %scevgep183 = getelementptr i8, ptr %3, i64 %i.ay
  %i.bb = sub nsw i64 %i.ba, %i.ay
  %scevgep184 = getelementptr i8, ptr %4, i64 %i.bb
  %9 = add nuw nsw i64 %wide.trip.count128, 1
  %umax191 = tail call i64 @llvm.umax.i64(i64 %9, i64 %i.ax)
  %i.bc = sub nsw i64 %umax191, %wide.trip.count128 ; 3 uses
  %min.iters.check193 = icmp ult i64 %i.bc, 4
  %n.vec196 = and i64 %i.bc, -4                   ; 3 uses
  %i.bd = add nsw i64 %n.vec196, %i.aw
  %cmp.n205 = icmp eq i64 %i.bc, %n.vec196
  br label %.preheader90

scalar.ph167:                                     ; preds = %scalar.ph167.prol.loopexit, %scalar.ph167
  %indvars.iv120 = phi i64 [ %indvars.iv.next121.3, %scalar.ph167 ], [ %indvars.iv120.unr, %scalar.ph167.prol.loopexit ] ; 6 uses
  %i.be = load double, ptr %i.ad, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv120
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !14
  %i.bh = fmul double %i.be, %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv120
  store double %i.bh, ptr %i.bi, align 8, !tbaa !14
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %i.bj = load double, ptr %i.ad, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next121
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !14
  %i.bm = fmul double %i.bj, %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next121
  store double %i.bm, ptr %i.bn, align 8, !tbaa !14
  %indvars.iv.next121.1 = add nuw nsw i64 %indvars.iv120, 2 ; 2 uses
  %i.bo = load double, ptr %i.ad, align 8, !tbaa !14
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next121.1
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !14
  %i.br = fmul double %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next121.1
  store double %i.br, ptr %i.bs, align 8, !tbaa !14
  %indvars.iv.next121.2 = add nuw nsw i64 %indvars.iv120, 3 ; 2 uses
  %i.bt = load double, ptr %i.ad, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next121.2
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !14
  %i.bw = fmul double %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next121.2
  store double %i.bw, ptr %i.bx, align 8, !tbaa !14
  %indvars.iv.next121.3 = add nuw nsw i64 %indvars.iv120, 4 ; 2 uses
  %exitcond124.not.3 = icmp eq i64 %indvars.iv.next121.3, %wide.trip.count128
  br i1 %exitcond124.not.3, label %._crit_edge, label %scalar.ph167, !llvm.loop !63

._crit_edge:                                      ; preds = %scalar.ph167.prol.loopexit, %scalar.ph167, %middle.block177
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %.preheader90.lr.ph, label %.preheader92, !llvm.loop !64

.preheader90:                                     ; preds = %.preheader90.preheader, %._crit_edge103
  %indvars.iv133 = phi i64 [ 0, %.preheader90.preheader ], [ %indvars.iv.next134, %._crit_edge103 ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv133 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv133
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !12 ; 4 uses
  br i1 %min.iters.check193, label %scalar.ph192.preheader, label %vector.memcheck180

vector.memcheck180:                               ; preds = %.preheader90
  %scevgep181 = getelementptr nuw i8, ptr %i.ca, i64 %i.ay ; 2 uses
  %scevgep182 = getelementptr i8, ptr %i.ca, i64 %i.ba ; 2 uses
  %bound0185 = icmp ult ptr %scevgep181, %scevgep183
  %bound1186 = icmp ult ptr %3, %scevgep182
  %found.conflict187 = and i1 %bound0185, %bound1186
  %bound0188 = icmp ult ptr %scevgep181, %scevgep184
  %bound1189 = icmp ult ptr %4, %scevgep182
  %found.conflict190 = and i1 %bound0188, %bound1189
  %conflict.rdx = or i1 %found.conflict187, %found.conflict190
  br i1 %conflict.rdx, label %scalar.ph192.preheader, label %vector.ph194

vector.ph194:                                     ; preds = %vector.memcheck180
  %i.cb = load double, ptr %i.by, align 8, !tbaa !14, !alias.scope !65
  %broadcast.splatinsert201 = insertelement <2 x double> poison, double %i.cb, i64 0
  %broadcast.splat202 = shufflevector <2 x double> %broadcast.splatinsert201, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep267.a = getelementptr [8 x i8], ptr %i.ca, i64 %i.aw
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph194
  %index198 = phi i64 [ 0, %vector.ph194 ], [ %index.next203, %vector.body197 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index198 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load199.a = load <2 x double>, ptr %i.cc, align 8, !tbaa !14, !alias.scope !68
  %wide.load200 = load <2 x double>, ptr %i.cd, align 8, !tbaa !14, !alias.scope !68
  %i.ce = fmul <2 x double> %broadcast.splat202, %wide.load199.a
  %i.cf = fmul <2 x double> %broadcast.splat202, %wide.load200
  %gep268.a = getelementptr [8 x i8], ptr %invariant.gep267.a, i64 %index198 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %gep268.a, i64 16
  store <2 x double> %i.ce, ptr %gep268.a, align 8, !tbaa !14, !alias.scope !70, !noalias !72
  store <2 x double> %i.cf, ptr %i.cg, align 8, !tbaa !14, !alias.scope !70, !noalias !72
  %index.next203 = add nuw i64 %index198, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next203, %n.vec196
  br i1 %i.ch, label %middle.block204, label %vector.body197, !llvm.loop !73

middle.block204:                                  ; preds = %vector.body197
  br i1 %cmp.n205, label %._crit_edge103, label %scalar.ph192.preheader

scalar.ph192.preheader:                           ; preds = %vector.memcheck180, %.preheader90, %middle.block204
  %indvars.iv130.ph = phi i64 [ %i.aw, %vector.memcheck180 ], [ %i.aw, %.preheader90 ], [ %i.bd, %middle.block204 ]
  br label %scalar.ph192

.preheader88.preheader:                           ; preds = %._crit_edge103
  %i.ci = zext nneg i32 %7 to i64                 ; 4 uses
  %i.cj = zext nneg i32 %i.av to i64
  %wide.trip.count141 = zext nneg i32 %7 to i64
  %i.ck = shl nuw nsw i64 %wide.trip.count128, 3  ; 2 uses
  %i.cl = add nuw nsw i64 %wide.trip.count128, 1
  %umax209 = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 %i.ax)
  %i.cm = sub nsw i64 %umax209, %wide.trip.count128
  %i.cn = shl nsw i64 %i.cm, 3
  %scevgep210.a = getelementptr i8, ptr %4, i64 %i.cn
  %scevgep211 = getelementptr i8, ptr %3, i64 %i.ck
  %min.iters.check220 = icmp ult i32 %7, 6
  %n.vec223 = and i64 %wide.trip.count128, 2147483644 ; 3 uses
  %cmp.n232 = icmp eq i64 %n.vec223, %wide.trip.count128
  %xtraiter264 = and i64 %i.ci, 3                 ; 2 uses
  %lcmp.mod265.not = icmp eq i64 %xtraiter264, 0
  br label %.preheader88

scalar.ph192:                                     ; preds = %scalar.ph192.preheader, %scalar.ph192
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %scalar.ph192 ], [ %indvars.iv130.ph, %scalar.ph192.preheader ] ; 3 uses
  %i.co = load double, ptr %i.by, align 8, !tbaa !14
  %i.cp = sub nuw nsw i64 %indvars.iv130, %i.aw
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !14
  %i.cs = fmul double %i.co, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv130
  store double %i.cs, ptr %i.ct, align 8, !tbaa !14
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.cu = icmp samesign ult i64 %indvars.iv.next131, %i.ax
  br i1 %i.cu, label %scalar.ph192, label %._crit_edge103, !llvm.loop !74

._crit_edge103:                                   ; preds = %scalar.ph192, %middle.block204
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %.preheader88.preheader, label %.preheader90, !llvm.loop !75

.preheader88:                                     ; preds = %.preheader88.preheader, %._crit_edge107
  %indvars.iv143 = phi i64 [ %i.ci, %.preheader88.preheader ], [ %indvars.iv.next144, %._crit_edge107 ] ; 3 uses
  %i.cv = sub nsw i64 %indvars.iv143, %i.ci
  %i.cw = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cv ; 6 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv143
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !12 ; 9 uses
  br i1 %min.iters.check220, label %scalar.ph219.preheader, label %vector.memcheck207

vector.memcheck207:                               ; preds = %.preheader88
  %scevgep208 = getelementptr i8, ptr %i.cy, i64 %i.ck ; 2 uses
  %bound0212 = icmp ult ptr %i.cy, %scevgep210.a
  %bound1213 = icmp ult ptr %4, %scevgep208
  %found.conflict214 = and i1 %bound0212, %bound1213
  %bound0215 = icmp ult ptr %i.cy, %scevgep211
  %bound1216 = icmp ult ptr %3, %scevgep208
  %found.conflict217 = and i1 %bound0215, %bound1216
  %conflict.rdx218 = or i1 %found.conflict214, %found.conflict217
  br i1 %conflict.rdx218, label %scalar.ph219.preheader, label %vector.ph221

vector.ph221:                                     ; preds = %vector.memcheck207
  %i.cz = load double, ptr %i.cw, align 8, !tbaa !14, !alias.scope !76
  %broadcast.splatinsert228 = insertelement <2 x double> poison, double %i.cz, i64 0
  %broadcast.splat229 = shufflevector <2 x double> %broadcast.splatinsert228, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph221
  %index225 = phi i64 [ 0, %vector.ph221 ], [ %index.next230, %vector.body224 ] ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index225 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load226.a = load <2 x double>, ptr %i.da, align 8, !tbaa !14, !alias.scope !79
  %wide.load227 = load <2 x double>, ptr %i.db, align 8, !tbaa !14, !alias.scope !79
  %i.dc = fmul <2 x double> %broadcast.splat229, %wide.load226.a
  %i.dd = fmul <2 x double> %broadcast.splat229, %wide.load227
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %index225 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <2 x double> %i.dc, ptr %i.de, align 8, !tbaa !14, !alias.scope !81, !noalias !83
  store <2 x double> %i.dd, ptr %i.df, align 8, !tbaa !14, !alias.scope !81, !noalias !83
  %index.next230 = add nuw i64 %index225, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next230, %n.vec223
  br i1 %i.dg, label %middle.block231, label %vector.body224, !llvm.loop !84

middle.block231:                                  ; preds = %vector.body224
  br i1 %cmp.n232, label %._crit_edge107, label %scalar.ph219.preheader

scalar.ph219.preheader:                           ; preds = %vector.memcheck207, %.preheader88, %middle.block231
  %indvars.iv138.ph = phi i64 [ 0, %vector.memcheck207 ], [ 0, %.preheader88 ], [ %n.vec223, %middle.block231 ] ; 3 uses
  br i1 %lcmp.mod265.not, label %scalar.ph219.prol.loopexit, label %scalar.ph219.prol

scalar.ph219.prol:                                ; preds = %scalar.ph219.preheader, %scalar.ph219.prol
  %indvars.iv138.prol = phi i64 [ %indvars.iv.next139.prol, %scalar.ph219.prol ], [ %indvars.iv138.ph, %scalar.ph219.preheader ] ; 3 uses
  %prol.iter266 = phi i64 [ %prol.iter266.next, %scalar.ph219.prol ], [ 0, %scalar.ph219.preheader ]
  %i.dh = load double, ptr %i.cw, align 8, !tbaa !14
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv138.prol
  %i.dj = load double, ptr %i.di, align 8, !tbaa !14
  %i.dk = fmul double %i.dh, %i.dj
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv138.prol
  store double %i.dk, ptr %i.dl, align 8, !tbaa !14
  %indvars.iv.next139.prol = add nuw nsw i64 %indvars.iv138.prol, 1 ; 2 uses
  %prol.iter266.next = add i64 %prol.iter266, 1   ; 2 uses
  %prol.iter266.cmp.not = icmp eq i64 %prol.iter266.next, %xtraiter264
  br i1 %prol.iter266.cmp.not, label %scalar.ph219.prol.loopexit, label %scalar.ph219.prol, !llvm.loop !85

scalar.ph219.prol.loopexit:                       ; preds = %scalar.ph219.prol, %scalar.ph219.preheader
  %indvars.iv138.unr = phi i64 [ %indvars.iv138.ph, %scalar.ph219.preheader ], [ %indvars.iv.next139.prol, %scalar.ph219.prol ]
  %i.dm = sub nsw i64 %indvars.iv138.ph, %i.ci
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %._crit_edge107, label %scalar.ph219

.preheader87:                                     ; preds = %._crit_edge107, %.preheader91..preheader89_crit_edge
  %.pre-phi157 = phi i32 [ %.pre, %.preheader91..preheader89_crit_edge ], [ %i.av, %._crit_edge107 ]
  br i1 %i.c, label %.preheader.preheader, label %._crit_edge113.split

.preheader.preheader:                             ; preds = %.preheader87
  %i.do = sext i32 %7 to i64                      ; 11 uses
  %i.dp = sext i32 %.pre-phi157 to i64            ; 4 uses
  %i.dq = shl nsw i64 %i.do, 3                    ; 2 uses
  %i.dr = add nsw i64 %i.do, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.dr, i64 %i.dp)
  %i.ds = shl nsw i64 %smax, 3                    ; 2 uses
  %i.dt = sub i64 %i.ds, %i.dq
  %scevgep237 = getelementptr i8, ptr %4, i64 %i.dt
  %10 = add nsw i64 %i.do, 1
  %smax244 = tail call i64 @llvm.smax.i64(i64 %10, i64 %i.dp)
  %i.du = sub i64 %smax244, %i.do                 ; 3 uses
  %min.iters.check246 = icmp ult i64 %i.du, 4
  %n.vec249 = and i64 %i.du, -4                   ; 3 uses
  %i.dv = add i64 %n.vec249, %i.do
  %cmp.n258 = icmp eq i64 %i.du, %n.vec249
  br label %.preheader

scalar.ph219:                                     ; preds = %scalar.ph219.prol.loopexit, %scalar.ph219
  %indvars.iv138 = phi i64 [ %indvars.iv.next139.3, %scalar.ph219 ], [ %indvars.iv138.unr, %scalar.ph219.prol.loopexit ] ; 6 uses
  %i.dw = load double, ptr %i.cw, align 8, !tbaa !14
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv138
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !14
  %i.dz = fmul double %i.dw, %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv138
  store double %i.dz, ptr %i.ea, align 8, !tbaa !14
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %i.eb = load double, ptr %i.cw, align 8, !tbaa !14
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next139
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !14
  %i.ee = fmul double %i.eb, %i.ed
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next139
  store double %i.ee, ptr %i.ef, align 8, !tbaa !14
  %indvars.iv.next139.1 = add nuw nsw i64 %indvars.iv138, 2 ; 2 uses
  %i.eg = load double, ptr %i.cw, align 8, !tbaa !14
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next139.1
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !14
  %i.ej = fmul double %i.eg, %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next139.1
  store double %i.ej, ptr %i.ek, align 8, !tbaa !14
  %indvars.iv.next139.2 = add nuw nsw i64 %indvars.iv138, 3 ; 2 uses
  %i.el = load double, ptr %i.cw, align 8, !tbaa !14
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next139.2
  %i.en = load double, ptr %i.em, align 8, !tbaa !14
  %i.eo = fmul double %i.el, %i.en
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next139.2
  store double %i.eo, ptr %i.ep, align 8, !tbaa !14
  %indvars.iv.next139.3 = add nuw nsw i64 %indvars.iv138, 4 ; 2 uses
  %exitcond142.not.3 = icmp eq i64 %indvars.iv.next139.3, %wide.trip.count141
  br i1 %exitcond142.not.3, label %._crit_edge107, label %scalar.ph219, !llvm.loop !86

._crit_edge107:                                   ; preds = %scalar.ph219.prol.loopexit, %scalar.ph219, %middle.block231
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.eq = icmp samesign ult i64 %indvars.iv.next144, %i.cj
  br i1 %i.eq, label %.preheader88, label %.preheader87, !llvm.loop !87

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge111
  %indvars.iv149 = phi i64 [ %i.do, %.preheader.preheader ], [ %indvars.iv.next150, %._crit_edge111 ] ; 3 uses
  %i.er = sub nsw i64 %indvars.iv149, %i.do
  %i.es = getelementptr inbounds [8 x i8], ptr %4, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv149
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !12 ; 4 uses
  br i1 %min.iters.check246, label %scalar.ph245.preheader, label %vector.memcheck234

vector.memcheck234:                               ; preds = %.preheader
  %scevgep235.a = getelementptr i8, ptr %i.eu, i64 %i.dq
  %scevgep236 = getelementptr i8, ptr %i.eu, i64 %i.ds
  %bound0238 = icmp ult ptr %scevgep235.a, %scevgep237
  %bound1239 = icmp ult ptr %4, %scevgep236
  %found.conflict240 = and i1 %bound0238, %bound1239
  br i1 %found.conflict240, label %scalar.ph245.preheader, label %vector.ph247

vector.ph247:                                     ; preds = %vector.memcheck234
  %i.ev = load double, ptr %i.es, align 8, !tbaa !14, !alias.scope !88
  %broadcast.splatinsert254 = insertelement <2 x double> poison, double %i.ev, i64 0
  %broadcast.splat255 = shufflevector <2 x double> %broadcast.splatinsert254, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep269 = getelementptr [8 x i8], ptr %i.eu, i64 %i.do
  br label %vector.body250

vector.body250:                                   ; preds = %vector.body250, %vector.ph247
  %index251 = phi i64 [ 0, %vector.ph247 ], [ %index.next256, %vector.body250 ] ; 3 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %4, i64 %index251 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load252 = load <2 x double>, ptr %i.ew, align 8, !tbaa !14, !alias.scope !91
  %wide.load253 = load <2 x double>, ptr %i.ex, align 8, !tbaa !14, !alias.scope !91
  %i.ey = fmul <2 x double> %broadcast.splat255, %wide.load252
  %i.ez = fmul <2 x double> %broadcast.splat255, %wide.load253
  %gep270 = getelementptr [8 x i8], ptr %invariant.gep269, i64 %index251 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %gep270, i64 16
  store <2 x double> %i.ey, ptr %gep270, align 8, !tbaa !14, !alias.scope !93, !noalias !95
  store <2 x double> %i.ez, ptr %i.fa, align 8, !tbaa !14, !alias.scope !93, !noalias !95
  %index.next256 = add nuw i64 %index251, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next256, %n.vec249
  br i1 %i.fb, label %middle.block257, label %vector.body250, !llvm.loop !96

middle.block257:                                  ; preds = %vector.body250
  br i1 %cmp.n258, label %._crit_edge111, label %scalar.ph245.preheader

scalar.ph245.preheader:                           ; preds = %vector.memcheck234, %.preheader, %middle.block257
  %indvars.iv146.ph = phi i64 [ %i.do, %vector.memcheck234 ], [ %i.do, %.preheader ], [ %i.dv, %middle.block257 ]
  br label %scalar.ph245

scalar.ph245:                                     ; preds = %scalar.ph245.preheader, %scalar.ph245
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %scalar.ph245 ], [ %indvars.iv146.ph, %scalar.ph245.preheader ] ; 3 uses
  %i.fc = load double, ptr %i.es, align 8, !tbaa !14
  %i.fd = sub nsw i64 %indvars.iv146, %i.do
  %i.fe = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fd
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !14
  %i.fg = fmul double %i.fc, %i.ff
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %indvars.iv146
  store double %i.fg, ptr %i.fh, align 8, !tbaa !14
  %indvars.iv.next147 = add nsw i64 %indvars.iv146, 1 ; 2 uses
  %i.fi = icmp slt i64 %indvars.iv.next147, %i.dp
  br i1 %i.fi, label %scalar.ph245, label %._crit_edge111, !llvm.loop !97

._crit_edge111:                                   ; preds = %scalar.ph245, %middle.block257
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, 1 ; 2 uses
  %i.fj = icmp slt i64 %indvars.iv.next150, %i.dp
  br i1 %i.fj, label %.preheader, label %._crit_edge113.split, !llvm.loop !98

._crit_edge113.split:                             ; preds = %._crit_edge111, %.preheader90.lr.ph, %.preheader87
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @strnbcat(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = tail call ptr @strncpy(ptr noundef nonnull @strnbcat.b, ptr noundef %0, i64 noundef %i.a) #19 ; 0 uses
  %i.c = getelementptr inbounds i8, ptr @strnbcat.b, i64 %i.a
  store i8 0, ptr %i.c, align 1, !tbaa !11
  %i.d = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @strnbcat.b, ptr noundef nonnull dereferenceable(1) %1) #19 ; 0 uses
  %i.e = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @strnbcat.b) #19 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @conjuctionforgaln(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readnone captures(none) %6, ptr nofree noundef readnone captures(none) %7, ptr noundef initializes((0, 1)) %8) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i8 0, ptr %8, align 1, !tbaa !11
  %i.b = icmp slt i32 %0, %1
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = sext i32 %0 to i64
  %i.d = sub i32 %1, %0                           ; 6 uses
  %wide.trip.count = zext i32 %i.d to i64         ; 3 uses
  br label %.lr.ph

.preheader:                                       ; preds = %bb.c
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph33.preheader

.lr.ph33.preheader:                               ; preds = %.preheader
  %wide.trip.count43 = zext i32 %i.d to i64
  %min.iters.check = icmp eq i32 %i.d, 1
  br i1 %min.iters.check, label %.lr.ph33.preheader50, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph33.preheader
  %n.vec = and i64 %wide.trip.count, 4294967294   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.s, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.e, align 8, !tbaa !14
  %i.f = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.f, ptr %i.e, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph33.preheader50

.lr.ph33.preheader50:                             ; preds = %.lr.ph33.preheader, %middle.block
  %indvars.iv40.ph = phi i64 [ 0, %.lr.ph33.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph33

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv35 = phi i64 [ %i.c, %.lr.ph.preheader ], [ %indvars.iv.next36, %bb.c ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.030 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.s, %bb.c ]
  %indvars.iv.next36 = add nsw i64 %indvars.iv35, 1 ; 2 uses
  %i.h = trunc nsw i64 %indvars.iv.next36 to i32
  %i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.h) #19 ; 0 uses
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #17
  %i.k = icmp ult i64 %i.j, 100
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.l = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %i.a) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.m = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv35
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8
end_hunk_0
